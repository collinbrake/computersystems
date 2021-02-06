# Outline for Reflection 4

## *Programmer's must work directly with machine code at times*

- Example?? Core dump, networking, bitwise operations in code
  - Networking - hexadecimal
  - Core dump - instruction formats
  - bitwise operations - logical operations are exactly what the processor will perform
    - C++/Java/
  - Writing in assembly - some high level languages allow programmers to add .s files to a package to specify functions in assembly for performance
    - C always outputs .s files during a build in the step before .o files (binary) understanding this will make us better programmers
  - Some languages, like Go provide intrinsics for low-level operations like one's count https://dave.cheney.net/2019/08/20/go-compiler-intrinsics
    - these functions are recognized by the compiler which then turns a function call directly into a machine-native instruction, producing 4x performance gains for low-level and useful operations like one's count, (compression, cryptography)

- Register formats - know what to expect in the following bits, know how it is structured and get op code
- Hexadecimal
- Sign
- Endianness
- Address - offset - byte addressable vs word addressable

## Hexadecimal Notation

- Makes it much easier to read, write, and remember long strings of bits when we need to interact directly with binary code
- Better than decimal, because binary representations of numbers are always in multiples of four, and four bits turn into one hexadecimal symbol, making the transition to and from binary perfectly alligned.

## Sign Extension

- Stuffing 32 bit registers with 16 bit values - register formats

## Overflow/Underflow

- The range of signed versus two's compliment values
- Registers

## Adding Two's Compliment

- For sign magnitude, many special circuits are required for subtraction to handle the sign
- For two's compliment, the circuitry is simplified because the operation to convert to a negative number is simple: flip the bits and add one, and the addition then works out

## Logical operations

- `>>` in C++, Java turns into srl (shift right logical), also sll
- and
- and immediate
- or
- or immediate

## *Register Formats*

### General

- Design principle 4
- 3 instruction formats, focusing on r/i
  - Still kept things a ssimple as possible
- Look at op code to know format - each op code corresponds to an instruction format
  - Then the processor, and us if we are analyzing a core dump) know what format to expect them in next

### Specific

- Byte Addressable versus Word Addressable Machines

- Register op codes
- Immediate values - constants directly in register

- Address - offset - byte addressable vs word addressable
- shamt field

## 