# Reflection 6

## Intro

- Need for computers to handle the numbers in our universe
- Avogadro's number is used when dealing with molecular weights, but also cand describe a number of meters that spans many galaxies around our own
- need 10^-13 to describe 

## Floating Point

- Infinite real numbers between every representable number
- Need really big and really small numbers
  - Powers of Ten video
  - Avogadro's number or the 
- We need the point to be floating to get the most possible accuracy for our bits
  - This fits with the rules of Sig Figs that all engineers and scientists use
  - We need to realize the limitations so we don't get round off error

## Arithmetic in MIPS

- Simplicity favors regularity
  - both mult and div use the HI/LO registers
- mult and div are sequential circuits
  - However, they use pipelining to gain performance
  - one of the 8 great principles

## Overflow

- Simple rules for detection
- Simplicity favors regularity - only three tests
- This is one of many examples where using binary makes systems much simpler
  - If overflow happens when adding two positive numbers, there is guaranteed to be a one in the most significant place, since each number would have had to be half or more of the range and thus have a one in the second most significant place and create a one in the most significant place when the carry is performed.

## Exceptions in MIPS/ARM

- Also called interrupts, although interupts is generally used to refer to exceptions that come from an I/O request from outside the processor
  - They are events other than regular branching that break the sequential execution of instructions
- In MIPS
  - The address of the offending instruction is stored in the EPC
  - Use a jump instruction (similar to as in a function) to unconditionally branch to a predefined handler address
  - At this point, control is transfered to the OS which decides whether to exit the program or resume
    - if it does resume, uses EPC to know where to pickup
- Programmers need to know about interupts since they are a way for the IO system to interact with the processor.
  - there are vectorized interupts that can define a specific handler address for different exceptions
- Exception Program Counter in MIPS / CPSR in ARM

## Exception handling in Graphics cards

- Question

