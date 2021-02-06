# Computer Systems - Outline for Reflection 3

## Execution of a Stored Program

### *Computer Architecture Overview*

### 3 Storage Locations

1. Memory - off processor
2. Registers - on processor
   1. 32x32 for MIPS
3. In Instruction - on processor

### Package Operands with Operators

- Instructions package both the data (operands) and the operators in binary form

### *ISA*

### Simplicity Favors Regularity

- Instruction sets are very rigid
- One line of high-level code will translates into many lines of assembly

### Smaller is Faster

- The smaller designs lead to faster execution time

### Load/Store Architecture

- No data is operated on in memory, except to load it onto the processor and store it back, with load word and store word

### RISC vs CISC

- Intel's ISA includes 900 some instructions that can work with data on RAM

### Common Case Fast

- Some RISC processors like the MIPS we are studying in class have more optimizations
  - Immediate operands
  - Simple operations

### M1 Chip

- Using ARM processor (RISC architecture) for the Macbook, while most other popular computers use the Intel processors

### *Packaging/Encoding*

### Endianess

- Specifies byte ordering:
  - Big Endian: most significant bit to the right
  - Little Endian: least significant bit to the right

### Signed/Unsigned Representations

- Unsigned representations of n-bits can hold integers from 0 to 2^n-1
- Signed representations in 2's compliment form have the same range, but it is centered around zero so the absolute value is of the unsigned number in n-bits is twice that of the signed, since one bit is used to specify positive/negative

### Importance for Networks

- CAN bus example
- Programmers don't deal with these low level details much, the compiler generally marshals data very well, but when two computers are talking, it becomes very important because they are transmitting raw bits
- CAN allows many ECU's to talk on one bus, and and allows device address and parameter group numbers to be transmitted as bits











#### 

