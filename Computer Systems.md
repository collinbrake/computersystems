

# Computer Systems

## Introduction - 2021-01-11

- Information transformation

  - Input information, computer programs swish it around and output new information that we use to make decisions

- Computer vs Computing

  - Computing is infomormation transformation
  - Most electrical engineers 60 years ago built boxes
  - Most people in the field today do *computing*

- Computers, “The Box”

  - Electronics
    - Centralized
    - Embedded
    - Concurrent
  - Chemical
  - Biological

- Computing

  - Most people in this scene want to  **improve performance**.
  - We don’t want to understand the box for the purpose of building more.
    - We want to use the box in the most efficient way possible.

- Personal computers

  - General purpose, variety of software
  - Subject to cost/performance

- Servers

- Supercomputers

- Embedded computers

  - Hidden as compents of systems
  - BMW has 80-95 microcontrollers
  - Stringent power/performance/const constraints
  - There are more embedded computers in the world than other types

- Common units

  - terabyte = 10^12
  - tebibyte = 2^x

- We are in the post PC era

  - PMD world no
  - Battery life is the main thing

- How programs are translated to machine language

  - How the machine executes
  - Hardware/software interface

- The CPU (processor) can only execute one instruction at a time

  - About 4 billion components on a CPU

- What is performance and how can it be improved

  - How hardware designers improve performance
  - What parallel processing is

- Acronyms

  - BIOS
  - RAM
  - ROM
  - CPU
  - DIMM
  - SRAM
  - DRAM
  - PCIe
  - SATA

- Understanding performance

  - Museum of computing, San Fransisco
  - Memory was a critical bottleneck in the 70’s and 60’s
    - Data structures and classes used today are affected by that
  - Today memory is cheap (Memory Heirarchy)
    - Now we are more concerned with processing – parallel execution
    - Hierarchy of memories
    - Energy efficiency
    - Cybersecurity

- Improving performance

  - Change the algorithm – decrease number of executions
  - Programming language, compiler, architecture – also decrease executions
  - Processor and memory system
    - How fast instructions are executed
  - IO system (including OS)
    - Determines how fast I/O operations are executed
    - How to get data into the system efficiently

- Data-level parallelism

  - Subword parallelism via C intrinsics
  - See 3.8x performance improvement

- Instruction-level parallelism

  - Loop unrolling ot exploit multiple instruction issue and out-of-order execution
  - 2.3x

- Memory hierarchy optimization

  - Cache blocking
  - 2.5x

- Thread-level parallelism

  - Parallel for loops
  - 14x

- The four of these concepts applied to a 100s program turns it into a 149ms program

  - 305.4x performance improvement

  

## Reflections

- Every week
- Opens Friday @ 1:45 pm / Closes Saturday @ 7:30 pm
- They are focused on the lectures
- 1 - 1 1/2 pages
- Requirements
  - Submit **only** txt files
- What did *you* learn
- Why is it important to you
  - Write a narrative that tells us what did you learn about this class
- Have a small section that says, "Here is a question I have."
  - He makes a point to answer each question on Mondays
- Relate this to your own experience, like a project you worked on.

### Comments after first reflection

- The expectation in the class is that the weekly reflection you submit is your own work and your own understanding of the material in the class.
- Writing assembly: Qt mips
- We are interested into a general high-level language like C
  - Compiler instruction is a well-oiled machine, we have been doing it for a long time
  - The programming language choice impacts the number of instructions that are required to solve a problem
  - toibe
  - How do engineers live beyond the edge of current technology?
    - Reading about what's coming out.

## 1.2 Eight Great Ideas - 2021-01-13

- **Design for Moore's Law**
  - Anticipate where technology will be when design is done
  - Question: since Moore's law has "slowed down" or more properly ceased to apply as a quantitative projection, what laws and technologies should we watch and pay attention to as engineers designing products?
  - A part of this class is to make us think like great processor designers.
    - 10s of thousands of engineers worked for 70 years to bring digital tech to where it is today
  - Moore's law: Every 18 months, the density of transistors in silicon would double
  - i7 processor has 4.3 billion transistors
  - If you start designing a processor today, it's going to take a couple years. If you design based on current technology, your design will be obsolete.
    - Look at what you know, be able to anticipate the future, and build for the future.
  - Using AI to project this to build GPU's
- **Use Abstractions to Simplify Designs**
  - <u>Abstraction</u>: the purposeful suppression of certain details so as to emphasize other details.
    - A class in object oriented programming is an abstraction
      - The interface is emphasized while the variables and functions are hidden
    - Abstraction is the single greatest tool computer scientists and engineers have.
- **Make the Common Case Fast**
  - Don't keep tweaking performance of features that are rarely used
  - You will never finish
  - Adding four is a very common case in digital add circuits
    - Why do I need a general purpose adder that adds any two numbers
    - Just make a blazing fast processor that can **only** add four and another number
- **Performance via Parallelism**
  - The whole must be greater than the sum of the parts
  - Multiple plane engines
    - Redundancy
    - Reduced complexity of single components
- **Performance via Pipelining**
  - Bucket brigade
  - Processors execute instructions in the same fashion
  - A very special kind of parallelism
- **Performance via Prediction**
  - Guess and start working instead of waiting to find out
  - The processor has to predict what will happen 20-30 cycles in the future
  - Hardware logic that does predictions
    - It needs to know in a `for` loop whether it will loop again or if it will be done
    - It needs to know if it will be an `if` or a `then`
- **Hierarchy of Memories**
  - fast, large memory for cheap
  - 50 years ago, processor designers said that one memory unit doesn't cut it
  - The Principle of Locality enables this
- **Dependability via Redundancy**
  - An 18-wheeler with a flat is just fine
  - If you don't pay, you're not going to get dependability
    - You have to pay for all 18 wheels, not try to run on 10
    - Overcome inherent errors
- Students that earn an A in this class will be expected to provide concrete examples of these abstract ideas

## 1.3 Below your Programs

- what do processors do to your programs?
- Levels
  - Applications software
  - Systems software (Op system)
    - I/O operations on behalf of programs
    - Allocate storage and memory
    - Protect sharing of computer among multiple applications
    - Concurrent execution of processes and threads
      - Run hundreds of processes on one thread
    - Contains the compiler
      - High level language (**Statements**)
      - Compiler ->
      - Assembly code for MIPS-32 processor (**Instructions**)
        - Human readable instructions
        - Registers
          - Small amounts of memory (32, 64)
          - Named
      - Assembler ->
      - Binary (**Words**)
  - Hardware
    - Processor
- **Using numbers to represent instructions *and* data is a cornerstone of computing.**
- Instructions
  - lw
    - load word
    - 100011
  - sw
    - store word
    - 101011
  - On mips-32 the instruction is a combination of the first six bits and a few other bits from the rest of the 32 bits

## 1.4 Inside a Computer

- 5 Parts of a computer
  - Input
  - Output
  - Memory
  - Datapath
  - Control
  - The processor is composed of the datapath and the control
- Instruction Set Architecture
  - Here is the set of instructions I can understand, here are the registers you can use
  - Details of electronics layout is hidden
- Application Binary Interface
  - Architecture + System services (OS)
  - Software that 

## 1.6 Performance - 2021-01-19

- Need
  - Ways to measure performance
  - Metrics to evaluate performance
    - A good metric for measuring airplane performance is passenger throughput, passengers x mph
  - Processor performance equation
    - plug in the big metrics
- Performance is just performance, a raw measure of capability
  - How many words can you type per minute?
- Efficiency is improvement in performance per unit cost.
- What are some key metrics of processor performance (speed, capacity for airplanes)
- There is a difference in how users and designers view performance
  - What is that difference for processors?

### Metrics

- Response time
  - How long it takes to perform a task
  - hours per task
  - Driving to campus - start time minus arrival time
    - Function of how fast your vehicle is
    - Response time would not accurately measure the performance of parallel processors?
- Throughput
  - Total work done per unit time
  - tasks per hour
  - Moving 20,000 students from cuyahoga falls from Campus
    - How long until everybody gets to campus
    - 5000 students per hour
    - Function of how many resources you have, how many tasks can you do at once
    - Processors are a one-trick pony, can only execute instructions
    - Do parallel processors have a better throughput
- Two ways to improve
  - Replace the processor with a faster version
  - Add more processors
- Response time and throughput are related very tightly, but it is a complex relationship
- Why do you care about throughput?
  - Can compute average response time
  - Response time is only for one instruction
  - If you know that you did 10000 inst/sec, you can invert it to get average response time
- What happens if you make a faster processor?
  - The response time goes down
  - What if you duplicate it?
    - Throughput increases
    - **Response time stays the same**

### Throughput vs Response Time

- For processing lots of data, throughput should be the metric
- For developing real-time control or notification, response time is more important

### Measurement you can trust

- Define performance = 1/Execution time
  - execution time is slightly different than response time
- X is n time faster than Y
  - PerformanceX / PerformanceY = timeY / timeX = n
  - N is relative performance

### Total Performance of Systems

- How to measure execution time?
  - **Elapsed time** (System performance)
    - Total response time, including all aspects
      - Processing, I/O, OS overhead, idle time
  - **CPU time**
    - Time spent processing a given job
    - Time spent processing a given job
      - Discounts I/O time, other job's shares
    - Comprises user CPU time and system CPU time
  - In the cloud, they don't charge you for total time, just CPU time
    - Elapsed time for a doctor's appt. would take into account waiting room time and nurse exam time

### Understanding Performance

- Different applications are sensitive to different aspects of performance
- In real systems, performance is a complex combination of throughput and response time
  - Max throughput in a worst-case response time

### Clocking

- Operation of digital hardware governed by a constant-rate clock
- Clock period
  - Example, 250 ps
- Clock frequency
- Cycles per instruction, CPI's

- The clock is a periodic electrical signal
- CPU Time = Clock cycles (CPI) x clock cycle time
- Performance improved by decreasing CPU time for an instruction
  - Reducing number of clock cycles
  - Increase clock rate
  - Hardware designers must often trade off clock rate against cycle count
  - Physical devices have limitations, can't just increase clock rate **Physics Bottlenecks**
    - Things get hot
    - Power wall
- Example
  - 2 GHz clock
  - 10s CPU time
  - Designing another processor
    - aim for 6s CPU time
    - can do faster clock, but causes 1.2 x clock cycles
      - Clock rate increase causes cycle count increase, almost always
- How many clock cycles for executing a program?
  - CPI x Instruction Count for program
  - Go to the data sheet to get the number of cycles for each kind of instruction
  - Divide this IPP number by clock rate to get program time
- Average cycles per instruction - get from instruction count and program run time
- Difference between average cycles per instruction and cycles per instruction
  - Get first from program run time and second from processor data sheet
- Have to know the cycles per instruction, not just clock rate, to evaluate processor performance
- Classes of instructions
  - Load and Store
  - Adds
  - <img src="/home/collin/.config/Typora/typora-user-images/image-20210122132622445.png" alt="image-20210122132622445" style="zoom: 33%;" />
  - <img src="/home/collin/.config/Typora/typora-user-images/image-20210122132927168.png" alt="image-20210122132927168" style="zoom:33%;" />
- CMOS IC Technology
  - Power Wall
    - The steep part of the power curve
    - <img src="/home/collin/.config/Typora/typora-user-images/image-20210122133239547.png" alt="image-20210122133239547" style="zoom:33%;" />
    - Performance related to power consumption
      - Increasing the clock rate does not only increase CPI but also power consumption
- When processor designers stopped increasing clock rate, they went to parallel processors
  - Forget the response time thing, and go to throughput
- Parallel programming
  - Task breakdown
  - Load balancing
  - Optimizing communication and reducing synchronization overhead
  - Some problems are not possible to parallelize
- Instructions use by multicore processors
- Wider arithmetic units
  - 32 bit wide processors but 64 bit wide arithmetic units
- Pipelining
  - Fetching and executing multiple instructions simultaneously
  - Mechanisms to keep data in all caches consistent
  - RAIDs to improve IO throughput and dependability
- Performance measuring
  - SPEC CINT2006
    - Standard set of programs to measure performance against

## Quiz 1 - Response time versus Throughput

Determine whether response time or throughput is more important for each of the following:

- Engine ECU - collect tens of parameters that indicate performance of engine
- Head Unit - Show maps and updates of traffic conditions and alerts various sensors in car
- Instrument cluster - gather data from multiple subsystems in the car for processing
- Body ECU - monitor and process functionality and response of the vehicle body
- Driver Seat Control - Allow driver to change position and angle of seat
- Rear View Control - show driver a view of what is behind the car when reversing
- Data Link - Communicate car performance to central monitoring station for long-term performance info
- Driver Door Control - check if door is closed and notify
- Side Obstacle Detection - notify driver of obsticals
- Keyless Entry ECU
- Parking Aid Module - The controller must gather data from multiple sensors and present notifications
- TPMS ECU - monitor tire pressure and notify
- Restraint Control ECU - monitor seat belts and alert driver
- Telematics Box - gather tens of parameters from the car and periodically communicate with the central monitoring station

## QA from Reflections - 2021-01-25

- Parallel processing wall
  - We ran into a wall with parallel processing like the power wall for single processing
  - **We don't know how to write software that can fully exploit the capabilities of parallel processing**

- Unifying Themes of Different Types of Processors
  - Execute stored program
  - Program count holds the address of the next execution
- Single core is a special case of multiple core
  - 1 is a special case of N
- How important is it to specialize a processor for response time or throughput
  - We can't design the processor
  - We can chose it, however
  - We focus on benchmarks, not response time or throughput
- Real-time systems vs data processing systems
  - The processor is generally the same
  - The OS is different
- Can we apply the principles of CPU's to GPU's?
  - GPU's have a very peculiar kind of parallelism
  - Single instruction, multiple data stream
  - They don't use pipelining

## 1.7 Fallacies

- Quartet
  - You must really interpret the results of your benchmarking in the context of computation
  - Just looking at mean, median, mode will put you in a world of trouble
- For benchmarking quiz: **You won't get CPI. Just take execution time.**
- Amdahl's Law
  - Improving an aspect of a computer and expection a proportional improvement in overall performance
  - 20 = 80/n + 20
- Low power at idle - not true
- MIPS as Performance Metric
  - Doesn't account for differences in ISA's between computers
- CPI varies between programs on a given CPU

## 2.1 Introduction - Instructions: Language of the Computer

- How does an instruction appear to the hardware?
- Simple operations and Endianness
- Representing Signed and Unsigned Numbers
- Representing Instructions (Encoding/Packing)
- Logical Operations
- Instructions for Decision Making
- Supporting Procedures in Hardware
- Addressing Modes
- Supporting Parallelism
- Translating and Starting your Programs
- Real Stuff (ARM/Intel)

## 2.2 Instruction Set

- Every processor manufacturer has a different instruction set

- Compilers follow a top-down path to connect a high-level language to a set of processor instructions

- We are focused on MIPS 32 architecture

  - We will look at similarities of MIPS to ARM and Intel x86

- Instruction sets follow the 8 great ideas

- **Instruction Set**

  - The finite collection of instructions that a given processor can execute
  - Translate high-level statements to processor instructions

- **Execution of Stored Program** The secret of computing

  - The secret of computing is that processors execute a program that is stored in memory
  - Execute a stored program
    - Stored in memory
    - Executed in processor from register one instruction a time

- Hardware/Software interface

  - Instruction set architecture
    - Instructions specify both **operators** (what must be executed) and the **operands** (data that must be executed on)

- Where are operands stored?

  - Registers - on processor
    - Special memory locations that have names
  - Memory - outside of processor
  - Immediate Values - on processor and part of instruction, in packed form
    - Stored in the instruction
    - ADD 4, x

- High level assignment to low-level ADD

  - ```cpp
    a = b + c; // C++ statement
    ```

  - ```pseudocode
    add a, b, c
    ```

    - The instruction says that we add b and c and store the result in a.

  - ```cpp
    a = b + c + d + e;
    ```

  - ```pseudocode
    add a, b, c
    add a, a, d
    add a, a, e
    ```

  - Sequences of instructions must be executed in a given order. The compiler follows the order of operations for the specific language (mostly standard between languages) to write out the instructions.

- High level assignment to low-level SUB

  - ```cpp
    a = b + c;
    d = a - e;
    ```

  - ```pseudocode
    add a, b, c
    sub d, a, e
    ```

- The instruction sets are very rigid so that the hardware can be *simple*

- ```cpp
  f = (g+h) - (i+j);
  ```

  - ```pseudocode
    add t0, g, h
    add t1, i, j
    sub f, t0, t1
    ```

- If I want my designs to be simple, the language should be regular.

  - **Design Principle #1: *Simplicity favors regularity***
  - Is this the reason that RISC won out over CISC?

- Unlike variables in programs, the operands of arithmetic instructions are restricted by the ISA

  - We can't just declare as many variables of whatever type we want

- We can only have 1-3 operands per instruction line

- Processors have a small number of registers

  - Registers have names, not addresses
  - It's super fast because it's *on the processor*

- Computer System

  - ![image-20210127131457790](/home/collin/.config/Typora/typora-user-images/image-20210127131457790.png)
  - Memory
    - Every memory word (32 or 64 bits wide) has an address
    - There is a memory controller between the processor and the RAM
      - The processor gives the controller an address and then the controller fetches the content at that memory to hand back to the processor

- Operands in Registers

  - MIPS has a 32x32 bit register file (all the registers)
    - 32 words
    - Numbered from 0 to 31
    - 32-bit data called a word
  - Assembler names
    - $t0, $t1, ..., $t9 for temporary values - These registers are numbers 8 through 17
      - The temporary values are stored in the 10 **temporary registers**
    - $s0, ..., $s7 for saved values are stored in the - These registers are numbers 18 through 25
    - <img src="/home/collin/.config/Typora/typora-user-images/image-20210127132534950.png" style="zoom: 50%;" />

- **Design Principle 2: *Smaller is Faster***

- Data structures are brought in to the processor on an as-needed basis, not stored on registers

- The stored program sits in memory and is executed in the processor

- Operands in Memory
  - Main memory used for composite data
    - Arrays, structures, dynamic data
  - **Load/Store Architecture** **(RISC)**
    - To apply arithmetic or logical operations on these data:
      - Load values from memory into registers
      - Store result from register to memory
    - The processor only works on stuff in memory with most operators, like arithmetic or logical operators
      - lw and sw are the only? operators that deal with the memory in this architecture
    - The memory controller has to do the load store stuff
  - CISC (Intel)
    - Allows you to fiddle with stuff in memory
    - 900 instructions vs 55 for RISC
  - RISC vs CISC
    - You have to have more instructions with RISC!!!
    - You have to load stuff and store stuff, because you can't work in memory
  - Data transfer instructions
    - Load word: **lw**
    - Store word: **sw**
  - Copies are kept on memory
  
- Bytes
  - Memory is byte addressed, i.e., each address identifies an 8-bit **byte**
  - Words are aligned in memory, i.e., addresses must be a multiple of 4

## Programming to Exploit Processors

- New area of research: **cache sensitive algorithms**
- In general though, **do not change your programs!!**
  - Processors have been designed around programs!!

## Words

- You cannot tell if a word holds instructions, words, signed, unsigned numbers
- A pointer is just a programming process
- the pointer registers hold addresses, but they are just more binary values

## 2.4 Signed and Unsigned Memory

- Every group of 8 bits is a byte
  
- Each 32 bit word on a MIPS processor stores 4 bytes
  
- Endianess

  - Byte ordering direction

- Byte Addressable

  - Means that when it sends an address of a byte to memory, it can reference an individual byte of the word to get it

- Word Addressable means that the processor can only access the word

- Little Endian

  - Largest byte address is left most

- Big Endian (MIPS)

  - Largest byte is right most

- In the early days of computing, IBM, Intel, and other companies like DEC

  - DEC was big endian

- Simple Operations

  - Operations in registers are faster to access because we don't have to go through the memory bus
  - Extra instructions to be executed is the cost of simplicity of design and speed of operations
  - Compilers must use registers for variables as much as possible

- Immediate Operands

  - *Programs OFTEN use small constants*

    - Multiply by 4, increment by 10, check if less than 5, etc.

  - **Make the common case fast**

  - Only spill to memory for less frequently used variables

  - Let's modify the ADD operand in MIPS to accept a small constant as the third argument: add-immediate, even faster than register fetching

    - ```pseudocode
      addi $s3, $s3, 4
      ```

    - Just add negative numbers, get rid of sub

  - 

  - $zero

    - Can use this to move data between registers

    - ```pseudocode
      add $s2, $s3, $zero
      ```

    - This is a move, so MIPS does not have a move instruction

    - Why use zero register instead of immediate zero

- You have to specify whether the bit string (word) is a number, unsigned number, or instruction, character, etc.

  - Instruction = op code

- Range

  - `limits.h`
  - a 32 bit number can represent unsigned numbers in the range 0 to +4,294,967,295
  - Overflow, underflow handled in hardware

- Use one bit for Sign

  - MSB 1 means number is negative and 0 means number is positive

- Possible representation

  - Sign-Magnitude rep
  - One's complement - dead
  - Two's Complement - the way to go

- Range for signed numbers

  - -2^n to +2^n - 1

- Numbers have the same representation for 2's compliment signed and unsigned

- Binary representation is preferred because it relies on the states of the underlying digital circuits

### Two's Complement

- In two's compliment, when looking at a number, if the leading bit is one, it is negative.

  - Then flip the bits and add one to get the value

- In two's compliment you don't need subtraction circuits, can just use addition circuits!!

- No double zero problem, **slightly larger range**

  - In two's compliment, if the answer is in the range (n-bits), it will be correct. If not, you are out luck!!

  - ```cpp
    -9 - 9 = -18; // Not in 5-bit range for two's compliment [-16, 15]
    
    01001 (9) => 10111 (-9);
    10111 + 10111 = 101110; // why is the answer is wrong? it is positive!!!
    ```

  - If you are out of range, it is bad

  - This is why we have overflow, underflow circuits

- Sign Extension

  - Representing a number using more bits

  - Preserve the numeric value

  - ```cpp
    -7;
    
    11001;
    
    // Cannot just add zeros to expand size
    
    ```

  - When you take a smaller number in the two's compliment and put it in a larger one,

    - Stuff negative numbers with 1
    - Stuff positive numbers with 0

- Simple Operations

  - ```cpp
    g = h + A[8];
    ```

  - g is in register $s1

  - h is in register $s2

  - A is an array stored in memory and the base address is stored in register $s3

  - The compiler recognizes the...

  - ```cpp
    lw $t0, 32($s3) // here we are bringing the operand to a temporary register: load base address array at offset 32, because we are a byte addressable machine - have to multiply by number of bytes per word, we must be in byte 4
    add $s1, $s2, $t0
    ```

  - A[12] = h + A[8];

  - ```assembly
    lw $t0, 32($s3)
    add $s1, $s2, $t0
    sw $t0, 48($s3)
    ```

  - ```assembly
    $t0 - $t7 # reg's 8 - 15
    $t8 - $t9 # reg's 16 - 17
    ```


### Range

- Pretend we have a 4-bit word machine
- Unsigned numbers
  - [0000, 1111]
  - [0, 15]
- Signed numbers
  - Sign Magnitude
    - keep the value as it is and use first bit for sign
  - Two's compliment
    - binary 5: 1011

## Summary

- High level statements -> language of computer
  - encoding
- Instruction = operators + operands
- MIPS-32 is a load/store architecture
  - lw/sw transfer from RAM to registers
- Digressions
  - Endianness - Byte ordering
  - Signed/Unsigned numbers
    - Everything is a binary pattern
    - You have to interpret
    - Sign magnitude
    - 2's compliment
- Instructions have to be encoded in specific ways so the processor can interpret and execute them
- MIPS 32 has 3 instruction formats for about 40 instructions
- Compiler translates high-level statements to encoded instructions
- Hexadecimal notation is convenient

## Practice

- Example 1 (Unsigned)

  - ```cpp
    // Decimal
    5 + 2 = 7
    
    // 5-bit binary
    00101 + 00010 = 00111
    ```

- Example 2 (Two's Compliment)

  - ```cpp
    10 + -7 = 3
    
    // Two's compliment for negative 7:
    // +7 => 00111
    // Flip the bits:
    //    11000
    // Add one:
    //    11001
    01010 + 11001 = 100011 // ignore carry in two's compliment => 00011 => 3
    ```

- Example 3 (Sign Magnitude)

  - ```cpp
    10 + -7 = 3;
    
    // Sign magnitude
    01010 + 10111 = 100001 // telling me it is a positive number, but 1 magnitude: not right!!!
    ```

- Example 4 (Two's)

  - ```cpp
    3 - 7 = -4;
    
    00011 - 00111 => 00011 + 11001 = 11100; // go to circle, and go to four counterclockwise from the top
    // Or flip the bits: 00011 + 1 = 00100
    ```


## 2.5 Instruction Formats

- **R-Format** (1)
  - Register format
  - Processor went and fetched a word, it will get 32 bits
  - `op rs rt rd shamt funct`
  - The first 6 bits store the op code

    - What am I supposed to do?
    - op: operation code
    - funct: function code (extends op code), 6 bits clear at the end
  - Ignore shamt (shift amount)
    - Only used for logical instructions in r format, not addition or others
  - r -> register
  - rs

    - source register **number**
    - where do I get things from
  - rt

    - second source register **number**
  - rd

    - destination register **number**
  - The register file has 32 locations
    - 2^5 is 32
    - Since we have five bits available to us in each register number in R format instructions, we can access all registers
  - ![image-20210203134116971](/home/collin/.config/Typora/typora-user-images/image-20210203134116971.png)
- **I-Format** (2)

  - Immediate-value format
  - ![image-20210205131545299](/home/collin/.config/Typora/typora-user-images/image-20210205131545299.png)
  - **Design Principle 3: Good design demands good compromises**
    - The MIPS designers were torn between the desire to have a single instruction format and keeping all instructions or words the same length of 32 bits.
      - Design Principle 1, "simplicity favors regularity"
      - They compromised and created 3 instruction formats in order to keep all instructions the same length
  - 16 bit values are immediate values
  - Must be signed values
  - Sign extension
  - lw, sw
  - Is this how things get to the register in the first place? R format just specifies register numbers.
    - This seems like a mush of instructions and registers
    - Some registers must store the actual values that R format rs, etc. point to
- Processor interpritation

  - Looks at value of op code field to know what format it is in
  - It knows whether to look for an address or an immediate value for an I format
  - ![image-20210205131955949](/home/collin/.config/Typora/typora-user-images/image-20210205131955949.png)
  - Then, the processor knows what to expect in the address field
    - After the processor recognizes the op code and thus the format, it is hardcoded on what to do next: Boom.
    - The processor data sheet specifies what op codes correspond to
  - There are `addu` to tell the processor to expect unsigned values
  - We have `sh` to store half of a word.
  - We have `lhu` to load half of a word unsigned
    - This says it doesn't have to do sign extension to fit 16 bits into a 32 bit register
  - `lb`
    - Load byte
  - Implicit in the stored program idea is the need to have a special register

### Program Counter (PC)

- **Always hold the address of the next instruction that the processor must execute**

  - This address is in memory

- ```assem
  jal #instruction saves PC + 4 in $ra
  ```

- jump/return

- We add four because the next instruction is 4 bytes away from the current

## 2.6 Logical Operators

- **Logical Instructions** (good tie in)

  - `sll` and `slr`
  - `shamt`
    - `sll` shift left and fill with zeros
    - `sll` is a R-format instruction with 0 in the op code and the funct extension
- 

