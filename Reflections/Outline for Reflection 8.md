# Outline for Reflection 8

## Motivation

- Technical knowledge
  - Understanding the processor allows us to understand the OS and other high-level structures built on top of it, including our programs
- Design concepts
  - Can be applied to any engineering endeavor
  - #2: Use Abstractions to Simplify Design
  - #5: Performance via Pipelining
- Let's look at the abstractions in the processor, the paths (like highways in an interstate system) through these abstractions that different instructions take, and how pipelining can be used to drastically increase throughput in this processor interstate system.

## Abstractions

- PC keeps incrementing itself by four and occasionally gets incremented by more than this in a branch or jump
- Instruction memory - interfaces with memory to pull out the next instruction, found at the address stored in PC
- Register file handles all logic involved with reading and writing to registers, which happens in between the decode and execute steps but also after the execute steps when information is written back in from a loop-back path
- ALU - calculates arithmetic operations, new addresses based on offset in immediate operands, equality in a beq instruction
- Data memory
  - Reading and writing operands and results from memory in lw and sw operations
- All the paths between these abstractions are 32 bits wide in a MIPS 32 architecture
- How does the register file know whether it is reading out two operands (R-format) or one (I-format)?
- Orchestrating all of this is the control, which is a network of one-bit or multi-bit lines connecting the control logic to the data path, often intersecting with the data path at multiplexers, where a control signal determines, for example, whether an input to the ALU comes from a the register file read or from the instruction immediate value.

## Data paths

- Instruction memory reads in the address at PC + 4 and feeds the op code to control. What happens in these scenarios?

- R-format add instruction
  - The control tells the register file to read operands out of the source and target registers
  - It sets its control bits so that these operands are properly muxed to the two inputs of the ALU, and the control tells the ALU to add them.
  - The result is looped-back to the register file which stores it in the destination register
- I-format lw instruction
  - control tells the register file to get the base address from the source register
  - Feeds the immediate operand through a sign-extender to get a 32-bit offset
  - adds the offset to the base address in the ALU and feeds result to the data memory, which gives the word which loops back and is stored in the destination register
- In this model, the clock fires once for every instruction that is executed - the entire fetch/decode/execute cycle happens once per clock tick, and instructions per cycle is one.

## Pipelining

- What is the problem? We have most of the machinery in the data path sitting idle, with only one process happening at a time.
- Pipelining addresses this
- The laundry example best illustrates:
  - We don't wait until we have put away the first load of clothes to put the next load in the washer. As soon as the first load is drying, we fill the washer again. Once the first load is done drying, we move the second load to the dryer and start a third in the washer while folding and putting away the first load. At this point the laundry process has a full pipeline - all functional units are busy.
- To accomplish, split instruction consumption into five steps
  - Every time the clock ticks, instruction moves to another step
  - The instruction right behind it moves to the unit that our instruction vacated
  - In this way, the data memory, instruction memory, PC, and ALU are kept busy for most of the time

## Conclusion

- Three design principles

