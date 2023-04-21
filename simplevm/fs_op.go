package simplevm

import (
	"fmt"
	"io"
	"os"
)

type IFileOperation interface {
	ReadFile(path string) ([]byte, error)
	ReadFileAt(path string, offset int, size int) (int, []byte, error)
	WriteFile(path string, data []byte) error
	DeleteFile(path string) error
}

var _ IFileOperation = (*FileOperation)(nil)

type FileOperation struct{}

func NewFileOperation() *FileOperation {
	return &FileOperation{}
}

func (f *FileOperation) ReadFile(path string) ([]byte, error) {
	return os.ReadFile(path)
}

func (f *FileOperation) ReadFileAt(path string, offset int, size int) (int, []byte, error) {
	fs, err := os.Open(path)
	if err != nil {
		return 0, nil, err
	}
	buf := make([]byte, size)
	readNum, err := fs.ReadAt(buf, int64(offset))
	if err != nil && err != io.EOF {
		return 0, nil, err
	}
	return readNum, buf, nil
}

func (f *FileOperation) WriteFile(path string, data []byte) error {
	fs, err := os.OpenFile(path, os.O_RDWR|os.O_CREATE|os.O_TRUNC, 0x777)
	if err != nil {
		return err
	}
	_, err = fs.Write(data)
	if err1 := fs.Close(); err1 != nil && err == nil {
		err = err1
	}
	return err
}

func (f *FileOperation) DeleteFile(path string) error {
	stat, err := os.Stat(path)
	if err != nil {
		return err
	}
	if stat.IsDir() {
		return fmt.Errorf("%s is directory expect file", path)
	}
	return os.RemoveAll(path)
}
