package main

import (
	"fmt"
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

	ret, err := machine.Exec(content, []byte("Filecoin介绍"))
	if err != nil {
		log.Fatal(err)
	}
	fmt.Println(string(ret))
}
