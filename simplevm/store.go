package simplevm

import "github.com/bytecodealliance/wasmtime-go/v8"

var _ wasmtime.Storelike = (*MyStore)(nil)

type MyStore struct {
	fsOp IFileOperation
	*wasmtime.Store
}

func NewMyStore(fsOp IFileOperation, engine *wasmtime.Engine) *MyStore {
	return &MyStore{
		fsOp:  fsOp,
		Store: wasmtime.NewStore(engine),
	}
}
