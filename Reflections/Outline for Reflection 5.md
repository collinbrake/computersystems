# Outline for Reflection 5

## Char Reps

- ASCII - created when one byte registers were used
- Unicode
- Latin-1

## Procedures

### We Use Procedures All the time, should understand how they work!!!

### How Procedures work:

- Steps of executing a procedure
  - Give procedure access to parameters
  - Transfer control to procedure
  - Acquire the storage resources needed for procedure
  - Perform the task
  - Put the result value in a place where the calling program can access it
  - Return control to the point of origin
    - A procedure can be called from multiple points in a program
- Step 1
  - Argument registers `$a0 - $a3`
- Step 2
  - `jal` jumps to address where procedure starts
  - Saves instruction (address) after calling location (PC + 4) in a register
- Step 5
  - Value registers `$v0 - $v1`
- Step 6
  - Return address register `$ra`
  - Unconditional jump to register: `jr $ra`

### Transition: what if we need more registers?

### -> Stack and Heap

### Cover tracks - Restore registers

- Any registers needed by caller must be restored to original contents before the procedure was invoked
- Spill registers to memory
  - Ideal data structure is the STACK
    - LIFO queue
    - Stack pointer
      - Stored at reg $sp
      - Where the next procedure dumps register values
      - Where old rg values found
      - SP is adjusted by one word every time a reg is saved or restored
    - To stack: PUSH
      - sub from sp
    - from stack: POP
      - add to sp
    - Because, sp starts from high addresses and moves to low addresses
  - Just use sw to spill to stack (PUSH) and lw to restore register values from stack (POP)

### Recursion

- PUSH, PUSH, PUSH
- POP, POP, POP

### Procedure frame/Activation Record

- To store variables that do not fit in registers: local arrays/structures
  - Step 3 above in procedure call
- Frame pointer
  - points to 

### Programmers use stack and heap directly, and understanding how the compiler utilizes them in scenarios like procedures helps us understand them 

## Bit packing

- programming microcontrollers in assembly
- you have a 32 bit word and want to put two 16 bit integers in it
  - `or`/`sll`
- Strings
- Networking protocol like CAN bus
- Bit Packing
  - Handling 32 bit constant
    - lui $s0, constant
      - copies 16-bit constant to the left 16 bits of rt
      - clears right 16 bits of rt to 0
    - ori $s0, $s0, 2304
      - puts zeros in upper 16 bits and ors
    - Either the compiler or the assembler must do this
    - The programmer needs to be aware

## Addressing Modes 

- How to get the operands

- Branch addressing - I-format
  - PC-relative addressing
  - coolness of word adding two bits
- Jump addressing - J-format
- 

