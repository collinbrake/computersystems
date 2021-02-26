package main

import "fmt"

func main() {
	var int1 uint8 = 255
	var int2 uint8 = 1
	var int3 uint8 = 256
	var sum uint8

	sum = int1 + int2
	fmt.Println("I overflowed... ", sum)
	sum = int2 + int3
	fmt.Println("I didn't overflow... ", sum)
}
