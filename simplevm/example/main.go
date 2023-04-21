package main

import (
	"fmt"
	"reflect"
	"unsafe"
)

// not support non-main wasm in tinygo at present
func main() {}

//go:wasm-module fs
//export write
func fs_write(pathPtr uintptr, pathSize int32, dataPtr uintptr, dataSize int32) uint32

//go:wasm-module fs
//export read
func fs_read(ret uintptr, ptr int32, length int32, offset int32, readNum uintptr) uint32

//go:wasm-module fs
//export delete
func fs_delete(ptr uintptr, length int32) uint32

//go:wasm-module log
//export println
func log(offset uintptr, length int32) uint32

func Log(msg string) {
	ptr, size := getStringPointerAndLen(msg)
	log(ptr, int32(size))
}

func Read(path string) ([]byte, error) {
	pathPtr, pathSize := getStringPointerAndLen(path)

	all := []byte{}
	var offset int32 = 0
	var readOnce int32 = 1024
	result := make([]byte, readOnce) //1kib
	slicePtr, _ := getSlicePointerAndLen(result)
	for {
		var readNum int32 = 0
		code := fs_read(slicePtr, int32(pathPtr), pathSize, offset, uintptr(unsafe.Pointer(&readNum)))
		if code != 0 {
			return nil, fmt.Errorf("code not correct %d", code)
		}

		if readNum == readOnce {
			all = append(all, result...)
			offset += readOnce
			continue
		}

		all = append(all, result[:readNum]...)
		break
	}
	return all, nil
}

func Write(path string, content []byte) error {
	pathPtr, pathSize := getStringPointerAndLen(path)
	dataPtr, dataSize := getSlicePointerAndLen(content)
	code := fs_write(pathPtr, pathSize, dataPtr, dataSize)
	if code != 0 {
		return fmt.Errorf("code not correct %d", code)
	}
	return nil
}

func Delete(path string) error {
	pathPtr, pathSize := getStringPointerAndLen(path)
	code := fs_delete(pathPtr, pathSize)
	if code != 0 {
		return fmt.Errorf("code not correct %d", code)
	}
	return nil
}

//go:export invoke
func Invoke() {
	Log("start")
	path := "./fs_test.dat"

	{

		err := Write(path, []byte("星际文件系统是一种点对点的分布式文件系统， 旨在连接所有有相同的文件系统的计算机设备。在某些方面， IPFS类似于web, 但web 是中心化的，而IPFS是一个单一的Bittorrent 群集， 用git 仓库分布式存储。换句话说， IPFS 提供了高吞吐量的内容寻址块存储模型， 具有内容寻址的超链接。这形成了一个广义的Merkle DAG 数据结构，可以用这个数据结构构建版本文件系统，区块链，甚至是永久性网站。。IPFS 结合了分布式哈希表， 带有激励机制的块交换和自我认证命名空间。IPFS 没有单故障点， 节点不需要相互信任。"))
		if err != nil {
			Log(fmt.Sprintf("write fail %s", err))
		}
		Log(fmt.Sprintf("write success"))
	}

	{
		data, err := Read(path)
		if err != nil {
			Log(fmt.Sprintf("read fail %s", err))
		}
		Log(fmt.Sprintf("read success %s", string(data)))
	}

	{
		err := Delete(path)
		if err != nil {
			Log(fmt.Sprintf("read fail %s", err))
		}
		Log(fmt.Sprintf("read success"))
	}
}

type emptyInterface struct {
	_    uintptr
	word unsafe.Pointer
}

func getSlicePointerAndLen(data interface{}) (uintptr, int32) {
	eface := (*emptyInterface)(unsafe.Pointer(&data))
	s := (*reflect.SliceHeader)(eface.word)
	return s.Data, int32(s.Len)
}

func getStringPointerAndLen(str string) (uintptr, int32) {
	s := (*reflect.StringHeader)(unsafe.Pointer(&str))
	return s.Data, int32(s.Len)
}
