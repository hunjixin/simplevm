package main

import (
	"fvm_quick/simplevm"
	"log"
	"os"
)

func main() {
	machine := simplevm.NewMachine()
	err := machine.Bind()
	if err != nil {
		log.Fatal(err)
	}

	content, err := os.ReadFile("./simplevm/example/example.wasm")
	if err != nil {
		log.Fatal(err)
	}
	_, err = machine.Exec(content, nil)
	if err != nil {
		log.Fatal(err)
	}
}

func check(e error) {
	if e != nil {
		panic(e)
	}
}
