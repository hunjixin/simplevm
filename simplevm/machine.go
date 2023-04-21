package simplevm

import (
	"fmt"
	"github.com/bytecodealliance/wasmtime-go/v8"
	"log"
	"reflect"
	"unsafe"
)

type Machine struct {
	fileOp IFileOperation

	store  *MyStore
	engine *wasmtime.Engine
	linker *wasmtime.Linker
}

func NewMachine() *Machine {
	fsOp := NewFileOperation()
	engine := wasmtime.NewEngine()
	return &Machine{
		fileOp: NewFileOperation(),
		engine: engine,
		linker: wasmtime.NewLinker(engine),
		store:  NewMyStore(fsOp, engine),
	}
}

func (m *Machine) Bind() error {
	err := m.linker.DefineFunc(m.store, "log", "println", func(c *wasmtime.Caller, offset, size int32) (int32, *wasmtime.Trap) {
		mp := uintptr(c.GetExport("memory").Memory().Data(m.store)) + uintptr(offset)
		str := reflect.StringHeader{
			Data: mp,
			Len:  int(size),
		}
		msg := *(*string)(unsafe.Pointer(&str))
		log.Println(msg)
		return 0, nil
	})
	if err != nil {
		return err
	}

	err = m.linker.DefineFunc(m.store, "fs", "delete", func(c *wasmtime.Caller, pathPtr, pathSize int32) (int32, *wasmtime.Trap) {
		memoryOp := memoryOp{
			store:  m.store.Store,
			memory: c.GetExport("memory").Memory(),
		}

		path, err := memoryOp.readString(uintptr(pathPtr), pathSize)
		if err != nil {
			return 1, wasmtime.NewTrap(err.Error())
		}

		err = m.store.fsOp.DeleteFile(path)
		if err != nil {
			return 1, wasmtime.NewTrap(err.Error())
		}
		return 0, nil
	})

	err = m.linker.DefineFunc(m.store, "fs", "write", func(c *wasmtime.Caller, pathPtr, pathSize int32, dataPtr, dataSize int32) (int32, *wasmtime.Trap) {
		memoryOp := memoryOp{
			store:  m.store.Store,
			memory: c.GetExport("memory").Memory(),
		}

		path, err := memoryOp.readString(uintptr(pathPtr), pathSize)
		if err != nil {
			return 1, wasmtime.NewTrap(err.Error())
		}

		content, err := memoryOp.readSlice(uintptr(dataPtr), dataSize)
		if err != nil {
			return 1, wasmtime.NewTrap(err.Error())
		}

		err = m.store.fsOp.WriteFile(path, content)
		if err != nil {
			return 1, wasmtime.NewTrap(err.Error())
		}
		return 0, nil
	})

	err = m.linker.DefineFunc(m.store, "fs", "read", func(c *wasmtime.Caller, ret int32, pathPtr, pathSize int32, readOffset int32, readNumPtr int32) (int32, *wasmtime.Trap) {
		memoryOp := memoryOp{
			store:  m.store.Store,
			memory: c.GetExport("memory").Memory(),
		}

		path, err := memoryOp.readString(uintptr(pathPtr), pathSize)
		if err != nil {
			return 1, wasmtime.NewTrap(err.Error())
		}

		readNum, content, err := m.store.fsOp.ReadFileAt(path, int(readOffset), 1024)
		if err != nil {
			return 1, wasmtime.NewTrap(err.Error())
		}
		memoryOp.writeInt32(uintptr(readNumPtr), int32(readNum))

		err = memoryOp.writeSlice(uintptr(ret), content)
		if err != nil {
			return 1, wasmtime.NewTrap(err.Error())
		}
		return 0, nil
	})

	return err
}

func (m *Machine) Exec(code []byte, params []byte) ([]byte, error) {
	// Once we have our binary `wasm` we can compile that into a `*Module`
	// which represents compiled JIT code.
	module, err := wasmtime.NewModule(m.store.Engine, code)
	if err != nil {
		return nil, err
	}

	instance, err := m.linker.Instantiate(m.store, module)
	if err != nil {
		return nil, err
	}

	run := instance.GetFunc(m.store, "invoke")
	if run == nil {
		return nil, fmt.Errorf("found not found")
	}
	_, err = run.Call(m.store)
	return nil, err
}

type memoryOp struct {
	store  *wasmtime.Store
	memory *wasmtime.Memory
}

func (op *memoryOp) readString(ptr uintptr, size int32) (string, error) {
	mp := uintptr(op.memory.Data(op.store))
	str := reflect.StringHeader{
		Data: mp + ptr,
		Len:  int(size),
	}

	return *(*string)(unsafe.Pointer(&str)), nil
}

func (op *memoryOp) readSlice(ptr uintptr, size int32) ([]byte, error) {
	mp := uintptr(op.memory.Data(op.store))
	str := reflect.SliceHeader{
		Data: mp + ptr,
		Len:  int(size),
		Cap:  int(size),
	}

	return *(*[]byte)(unsafe.Pointer(&str)), nil
}

func (op *memoryOp) writeInt32(ptr uintptr, val int32) error {
	mp := uintptr(op.memory.Data(op.store))
	*(*int32)(unsafe.Pointer(mp + ptr)) = val
	return nil
}

func (op *memoryOp) writeSlice(ptr uintptr, data []byte) error {
	mp := uintptr(op.memory.Data(op.store))
	buf := (*[1024]byte)(unsafe.Pointer(mp + ptr))
	copy(buf[:], data)
	return nil
}
