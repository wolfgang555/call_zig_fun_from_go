package main

/*
#cgo CFLAGS: -I.
#include "zig_lib.h"
*/
import "C"
import "fmt"

func main() {
	fmt.Println("starting Golang program")
	defer fmt.Println("done")

	C.greeting_from_zig()
	fmt.Printf("%d\n", C.zig_add(5, 6))
}
