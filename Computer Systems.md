# Computer Systems

## Introduction - 2021-01-11

- Information transformation

  - Input information, computer programs swish it around and output new information that we use to make decisions

- Computer vs Computing

  - Computing is information transformation
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

- ![image-20210226071932600](/home/collin/.config/Typora/typora-user-images/image-20210226071932600.png)

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
      - Why does it need 12 bits?
      - The op code fields are not just being used to say what op code
      - The first six bits say what format of instruction it is
      - Most of the time these design decisions are made based on the rest of the circuitry
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
  - ![image-20210226070944388](/home/collin/.config/Typora/typora-user-images/image-20210226070944388.png)
  - **[Op code reference sheet](https://www.assemblylanguagetuts.com/mips-instruction-set-opcodes-reference-sheet/)**
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

- **Always hold the address of the next instruction that the processor must execute** (it is a register)

  - This address is in memory

- ```assem
  jal #instruction saves PC + 4 in $ra
  ```

- jump/return

- We add four because the next instruction is 4 bytes away from the current

- How does the program counter know where the next instruction is at?

  - The program counter (a register) is a dumb device that is there to hold the address of the next instruction
  - It is up to the rest of the hardware to make sure that nothing but the next instruction is in there

- All the instructions are in order - why do we need the program counter

  - how does the hardware know what the address is?
  - It turns out that most of the time the address of the next instruction is 4 bytes away
    - What if you branch, or use a function?
    - Then you will need to jump

### Instruction Register

- There is a very special register called the instruction register that holds the next instruction as it comes in from the memory

## 2.6 Logical Operators

- **Logical Instructions** (good tie in)

  - `sll` and `slr`
  - `shamt`
    - `sll` shift left and fill with zeros
    - `sll` is a R-format instruction with 0 in the op code and the funct extension

## 2.7 Instructions for Making Decisions

- High-level languages offer constructs like

  - if-then
  - if-then-else
  - Loops
  - Switch-case

- Instructions for conditional statements

  - ```assembly
    beq rs, rt, L1 # Branch on Equal
    
    bne rs, rt, L1 # Branch Not Equal
    
    J L1		   # Unconditional jump
    ```

  - Branch is a jump - check equality if the boxes are equal and then jump

  - bne

    - Only jump if the registers are not equal

  - The program counter holds the address of where it should go before it goes

  - ```cpp
    if (i == j) f = g + h;
    else f = g - h;
    ```

    - ![image-20210208132724546](/home/collin/.config/Typora/typora-user-images/image-20210208132724546.png)

    - How does the compiler branch it?

    - ```assembly
      bne $s3, $s4, LE
      add $s0, $s1, $s2
      j LN
      LE: sub ...
      LN: ...
      ```

      - LE and LN are addresses of memory addresses and are calculated by the assembler
  
    - It's saying, if not equal, jump over next guy and do a sub

      - If equal, do next and jump over LE to address LN

    - These addresses are memory addresses calculated ...
    
  - ```cpp
    while (save[i] == k) i += 1;
    ```

    - Variables I and k are mapped to $s3 and $s5

    - Base address of save is mapped to $s6

    - First need to load save[i] to a temporary register

    - ![image-20210208133257994](/home/collin/.config/Typora/typora-user-images/image-20210208133257994.png)
  
    - ```assembly
    j L1 # This is the loop back instruction
      ```

    - What does the shift logical left do? It always multiples by two. We do it twice which multiples by four
  
      - `00010` -> `00100` -> `01000`
      - 2 -> 4 ->8
    - `00101` -> `01010` -> `10100`
    
  - 5 -> 10 -> 20
    
  - Why are we multiplying by four?
  
    - to get the byte address
  
  - Add the four multiplied by zero to the base address
  
  - Always multiply by four to get to the offset of an array
  
    - Study this!!!!
  
  - **Basic Block**
  
    - A sequence of instructions that end in a branch instruction
    - *There are no branches in the middle*
      - No ingress or outgress
    - The compiler identifies basic blocks for optimization
    - An advanced processor can accelerate execution of basic blocks
    - We can't make the electronics go faster, but can increase the average execution time by organizing the execution in a certain way
    
  - beq/bne
  
    - equality testing
  
  - slt/slti
  
    - often necessary to check if the value of a variable is less than or equal to
  
    - slt # set on less than
  
    - slti # uses immediate operand, 16 bit constant
  
    - ```assembly
      slt rd, rs, rt
      # if (rs < rt) rd = 1; else rd = 0;
      
      slti rt, rs, constant
      # if (rs < constant) rt = 1; else rt = 0;
      ```
  
    - Often used in combination with beq, bne
  
      - if less than branch to <address>
  
  - All instructions that compare two values must know if they are dealing with signed or unsigned numbers
  
    - signed
      - if the left most bit is a one, it must be smaller than anything with a zero in the most significant
    - unsigned
      - if the left most bit is a one it must be larger than anything with a zero
    - sltu
    - sltiu
  
  - MSB (most significant bit) dual meaning
  
    - What does this check:
  
    - ```assembly
      sltu $t0, $s0, $s1
      # certainly $s0 < $s1
      # also that 0 <= $s0
      ```
  
    - Compilers exploit dual meaning of MSB to check array bounds

## The class goes on in two different ways

- Practice the individual pieces so that they can come together

## 2.8 Supporting Procedures

- Function

  - Call (invoke action)

    - pass the control (program counter) to an instruction somewhere else in memory
    - update the program counter

  - Return

    - give the control back to the calling routine
    - Set the program counter back

  - Pass parameters

    - You leave the parameters in a known register (say 4) and let the procedure know that it has to go to register 4 to pick it up

  - Six steps

    - pass parameters to the procedure
    - transfer control to the procedure
    - allocate storage for procedure
    - perform operations of the procedure
      - now that we have the program counter pointing here
    - place results in registers for calling program
    - return control to calling program
      - not the place where control was transfered to procedure but the one after that

  - Registers

    - <img src="/home/collin/.config/Typora/typora-user-images/image-20210210132432639.png" alt="image-20210210132432639" style="zoom: 50%;" />

    - We use registers to exchange data between the calling function and the called function

      - This data is stored in registers `$a0` through `$a3` by **convention**
      - If you insist on sticking it in `t4` no one will object
      - Make the common case fast

    - We need a place to store the values returned from the function

      - `$v0` through `$v1` to store result values

    - Wait a minute, I wrote a piece of code with more than four parameters, what happens?

      - Well, other things are going on.
      - But, they are trying to make the common case fast

    - They return values to handle the case where an error and a value is returned from a function

    - The last three registers are also useful

      - Before you call a function, the p counter is in the main program

      - Say its an r format instruction

      - then you have to get back to PC + 4 for an r format instruction

      - this PC + 4 address gets copied into `$ra` when the control is transfered to the procedure

      - The last statement (the `return` statement) triggers a 

        - ```assembly
          J $ra # jump back to PC + 4, location after function call
          ```

      - What happens if we have nested function call

        - When some guy calls the second function `f2` he will overwrite!!! no good!!!
        - Stack - last in first out
        - the stack pointer tells us where we have to pop or push
        - if you have a nested call, push all the stuff on stack
          - recover in last order first
        - manages spilling
          - 18 parameters to pass
          - the 14 values get pushed on stack and popped from stack
        - recursive calls

      - Frame pointer

        - every time there is procedure, it pushes a bunch of stuff to stack, called a frame
        - frame pointer lets you know where the frame ends

- Instruction for making a function call: `jal`

  - Jump and link
  - Jump to address
  - link the PC + 4 to `$ra`

- Instruction for returning from procedure

  - ```assembly
    jr $ra
    ```

  - can also be used for computed jumps in a case/switch statement
  
- Supporting Recursion

  - Push stuff on stack and pop back in that order to handle nested function calls

- Conventions

  - Preserved
    - Saved registers: `$s0-$sy`
      - If you are a function you need to save and restore these registers
      - in the example above, they also saved and restored temp registers
  - Not preserved
    - temp
    - arg
    - return val
    - stack below the stack pointer
      - It's ok to clobber these

- Local variables

  - goes on stack or heap
    - part of the same memory, used in different ways

- $fp points to the first word of the frame, often a saved argument register, and the stack pointer $sp points to the top of teh stack

- Register 1 is used by the compiler for a specific purpose - store large constants

- Memory Allocation Convention

  - Stack ->
  - <- Dynamic data
  - Static data
    - Global variables
    - Two pointers
      - Stack pointer
      - Heap pointer
        - new
        - malloc
  - Text
  - Reserved

- Convention #keyword

  - As programmers, if we use good coding conventions we will write better code, better organized and more readable/reproducable

### Main Ideas of Procedures

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
  - Value registers `$v0 - $v3`
- Step 6
  - Return address register `$ra`
  - Unconditional jump to register: `jr $ra`

## 2.9 Communicating With People

- Handling characters - extrememly importnat for communicating with humans
- American Standard Code for Information Interchange (ASCII)
  - 128 characters (7 bit representation)
    - 95 graphic
    - 33 control
      - newline, ring a bell
  - Popular when we had one-byte character
- Unicode
- Latin-1

### Byte and Half-word Instructions

- lb rt, offset (rs)
- lbu rt, offset(rs)
- lh rt
- Immediates
  - lui

### Strings

- Strings

  - first bit in ascii is always zero
    - A word has four bytes - don't want to waste
  - 3 options
  - Packing
    - pack, shift, or
    - Application: encoding for CAN bus

- String copy

  - ```assembly
    addi $sp, $sp, -4
    sw $s0, 0($sp)
    add $s0, $zero, $zero // initial condition
    L1: 
    ```

## 2.10 MIPS Addressing for 32-bit Immediates and Addresses

### Bit Packing

- Handling 32 bit constant
  - lui $s0, constant
    - copies 16-bit constant to the left 16 bits of rt
    - clears right 16 bits of rt to 0
  - ori $s0, $s0, 2304
    - puts zeros in upper 16 bits and ors
  - Either the compiler or the assembler must do this
  - The programmer needs to be aware

### Addressing Modes

The way by which MIPS can get to the operands it has to work with

Names for accessing nodes

#### Branch Addressing - I-Format

- op code, two registers, target address **I-Format**
  - target address can be positive or negative
  - That is why we need a signed number to represent target address
- PC-relative addressing
  - Take the current value of program counter and add 16-bit offset x 4 because that is a word address
  - PC serves as anchor
  - Is already implemented by four
  - By the time the program is executed, the PC has already been incremented by four
    - If we branch somewhere else, account for that
    - common case fast
- bne / beq
  - can be rewritten

#### Jump-Addressing or J-Format instructions

- op, 6 bits

- address, 26 bits

  - treat it as a word address to get two extra bits!!!

- Jump j and jal can be anywhere in text segment

- ```assembly
  Loop: sll $t1, $s3, 2
        ...
        j Loop
  
  ```
  
- You only have 26 bits left after op code for address

  - We do a trick here
  - treat these bits as a word address
  - sneak in another two bits

- You will always have a jump when you are in a loop

  - words are four bytes apart in a 32-bit machine

### Everything is an Address

- Once we have an address, we can get the instruction stored there or the operand there

### Addressing Modes

- Immediate addressing

  - ```assembly
    op rs rt <immediate>
    ```

- Register addressing

  - ```assembly
    op rs rt rd ... funct # rs -> Register
    ```

  - which of the 32 registers should the source come from?

  - also target and destination

- Base addressing

  - ```assembly
    op rs rt <address>
    ```

  - base address of the array and the offset value (immediate operand)

  - byte, halfword, or word

- PC-relative addressing

  - ```assembly
    op rs rt <address>
    ```

  - offset from PC

- Pseudodirect addressing

  - ```assembly
    op <address>
    ```

- ![image-20210215132935808](/home/collin/.config/Typora/typora-user-images/image-20210215132935808.png)

- The first three guys are all about getting operands

- The last two are instruction addressing modes

  - takes immediate value. Adds to PC to get instruction
  - Jump
    - more bits for the address - 26 word address that looks like 28 for a byte address. Add four of PC to get 32

- Memory mapped

  - I/O mapped I/O is the alternate scheme
    - 2K or so of memory designated for IO

## Parallelism and Instructions: Synchronization

- Race condition:

  - Two processors sharing an area of memory
  - P1 writes, then P2 reads
  - Data race if they don't synchronize
  - Result is variable based on the order of access

- Hardware support to solve data races

  - Atomic read/write memory operation
  - No other access to the location allowed between the read and write
  - If I am going to do it, do the whole thing properly, otherwise cancel the whole thing
  - Instructions for atomic operations - synchronization

- Load linked

  - ```assembly
    ll rt, offset(rs)
    ```

- Store conditional

  - ```assembly
    sc rt, offset(rs)
    ```

- Example

  - ```assembly
    try: add $t0, $zero, $s4
         ll 
    ```


## Design Principles

- Simplicity favors regularity
- Smaller is faster
- Make the common case fast
- Good design demands good compromises

## 3: Arithmetic and Exceptions

- Fetch-decode-execute

  - Instruction register

- Overflow

  - If you add a negative number to a positive, overflow CANNOT happen
  - If you add a positive with a positive and get a negative OVERFLOW HAPPENED
    - This is an all-in-one test for overflow, because the next-to-most significant bits of the operands will always be one and result in a one in the most significant bit of the result if overflow happens.
    - This is because each must be at least half of the range for overflow to happen, so the next-most sig will always hold a one because range doubles with each bit
  - If you add a negative with a negative and get a positive OVERFLOW HAPPENED
  - Exceptions on MIPS
    - Exception program counter
    - Its a program counter (holds the address of an instruction)
      - An instruction that caused an exception to occur
      - Jump to a predefined handler address
      - mfc0 (move from coprocessor reg) instruction can retrieve EPC value, to return after corrective action
  - Exceptions in ARM
    - CPSR (processor status register)
    - has a flag that indicates overflow
    - interrupt disable bits I and F

- Arithmetic for Multimedia

  - Graphics data is often 8 or 16 bit
  - Have a 64 bit adder with partitioned carry chain
    - operate on 8x8 bit or 4x16 bit or 2x32 vectors
  - SIMD (single instruction, multiple data)
  - When an overflow happens, WE DONT CARE
    - just saturate the thing and be over with it!!!
    - It will just be a little blip in the video rendering
    - This is specific to the multimedia domain

- Multiplication

  - ```assembly
    1000 # multiplicand
    1001 # multiplier
    1001000 # product
    ```

  - Length of product is the sum of the operand lengths

  - 32-bit number and 32-bit number will create 64 bits

  - Where do we store it???

    - 64-bit adder (ALU)

    - shifters (left and right)

    - control test (are you a one or a zero?)

    - shift and add to the product until now

    - <img src="/home/collin/.config/Typora/typora-user-images/image-20210219132717058.png" alt="image-20210219132717058" style="zoom: 80%;" />

    - ![image-20210219132740605](/home/collin/.config/Typora/typora-user-images/image-20210219132740605.png)

    - Why is multiplication expensive?

      - We have to wait for this thing to go tick, tick, tick 32 times and do the partial product and add
      - There are other tricks to organize bits in tree structure and do stuff in parallel, **pipelining**

    - Multiply instruction

      - ```assembly
        mult rs, rt # two 32-bit numbers
        ```

      - MIPS has two 32 bit registers called HI and LO

      - HI: stores most sig 32 bits of product

      - LO: least sig 32 bits

      - ```assembly
        mfhi rd / mflo rd
        ```

      - Move from HI/LO to rd

      - can test HI value to see if product overflows 32 bits

      - Just give 32

    - MUL is different than MULT

      - It is R-format

      - only gives 32 bits

      - ```assembly
        mul rd, rs, rt
        ```

  - Division

    - Restoring division
      - if the sign of the remainder is negative, pretend we didn't do the last one
    - Non-restoring division
      - look ahead to make sure we don't get a negative remainder
    - **We are stuck with two answers again, but for a different reasons!!!!**
      - MIPS uses HI/LO again!!!!
      - Again, this is a sequential circuit, not a /// circuit

### Floating Point Numbers

- Why did they call it floating point?
  - Because the point can actually move!!!
  - If you have a fixed number of bits, you can only represent numbers in fixed point up to some accuracy
  - If you have a finite number of bits, there are infinite numbers in between that you cannot represent
  - Processor designers recognized early on that our computers need to represent numbers that are very very tiny, and also very very large numbers (like Avogadro's number)
- Do something unusual before you write your reflections
  - Go to The Power of Ten on Youtube
- Non-integer numbers, real numbers
  - Scientific notation
    - Normalized/Not normalized
      - Normalized: one non-zero digit in front of the decimal point (base 10)
      - You have to know if a number is normalized and then have a process to make it normalized
      - ![image-20210222132323999](/home/collin/.config/Typora/typora-user-images/image-20210222132323999.png)
      - save bits by leaving off leading one
      - types float and double in c
      - Advantages
        - simplifies exchange of floating point data
          - only need to send accuracy and power
        - simplifies floating point arithmetic operations
        - increases accuracy of the numbers that can be stored in a word
    - Bits
      - Sign bit
        - **We are going to use sign magnitude in this case because it is simpler**
      - Exponent
        - We technically need a sign bit for this.
        - Use biasing instead
      - Fraction
    - There is a complex trade-off between range and precision
      - more bits for precision improves precision
      - more bits for exponent improves range
      - if you increase one, the other must decrease
        - cannot get around this by adding 
    - IEEE
      - Institute for Electrical and Electronic Engineers
      - Standard 754-1985 for floating point
      - Portability for scientific code
      - Single-precision - 32 bits
        - Use 8 bits for exponent.
        - Use 23 bits for fraction
      - Double precision - 64 bits
        - Use 11 bits for exponent
        - Use 52 bits for fraction
    - Bias for negative exponent representation
      - excess representation
      - for single precision, it says
        - to represent 2^0, do 2^127
        - to rep.            2^1, do 2^128
        - Single: Bias = 127; Double: Bias = 1023
    - Question
      - Why don't they use bias for 
    - Floating point operations are performed on a co-processor, not the main processor.
      - If you are doing machine learning on a GPU designed for rendering, you will most likely be using floating point operations
      - Then, exceptions would occur at saturation (???) if the co-processor is designed for it
    - Normalized Significand
      - 1.0 < significand < 2.0
    - Reserved exponents (both single and double precision)
      - all zeros
      - all ones
      - what are they used for? reserved for processor
        - when the exponent is all ones and the fraction is all zeros, +/- infinity
          - can be used in subsequent calculations, avoiding need for overflow check
        - NAN
          - exponent is all ones and fraction is not all zeros
        - When exponent is all zeros
          - denormal numbers
          - allow for gradual underflow, with diminishing precision
    - Smallest value
      - exponent: 000...001
      - actual exponent = 1-127 = -126
    - Largest value
      - exponent: 111...110
      - actual exponent = 254-127 = 127
    - Variable precision arithmetic - build data types that give you more precision than standard single or double data types
      - If you need accuracy more than 6 decimal places, don't use float
        - 23xlog10(2) = 23*0.3 = 6
      - double goes to 16
    - Example: -0.75
      - -0.75 = (-1)^1 * 1.1(bin) * 2^-1
        - 0.75 = `1*1/2` + `1*1/4`
        - 0.11 (bin)
      - exponent = -1 + bias
        - single: -1 + 127 = -126 = 01111110 (bin)
        - double: -1 + 1023 = 1022 = 01111111110
      - <img src="/home/collin/.config/Typora/typora-user-images/image-20210224130533029.png" alt="image-20210224130533029" style="zoom:67%;" />
    - Example: 11000000101000...00
      - sign = 1
      - fraction = 01000...00
      - exponent = 10000001
      - x = (-1)^1 * (1+0.01) * 2^(129-127)
        - = -5.0
- Floating point operations
  - Addition
    - cannot do the carry method as with two's compliment
    - implemented in hardware
      - make sure that the exponents match
      - re-normalize results at end
      - check for overflow underflow
    - ![image-20210224131828284](/home/collin/.config/Typora/typora-user-images/image-20210224131828284.png)
  - Multiplication
    - almost as hard as addition
- RISC processors do not support floating operations
  - They use a co-processor
  - Share a subset of registers for data exchange
  - Extends the ISA
  - Original MIPS had 32 single-precision registers
  - 16 double precision pairs
  - `$f0 - $f31`
  - Floating point instructions work only on the floating point registers
    - `lwc1, ldc1, swc1, sdc1`
      - load word co-processor 1, store double co-processor 1
  - Specify at the instruction level whether you want single or double precision
    - div.s
    - sub.s
    - mul.s
- IEEE 754 offers four modes for rounding to let programmer pick desired approximation
  - Two extra guard bits: GUARD and ROUND
  - Four rounding modes
    - Always round up
    - Always round down
    - Round to nearest even number
    - Truncate
    - ...
- Go to "What every computer scientist should know about floating point numbers."
- Left/right shift can replace integer divide by power of 2
- Floating point is not associative
  - (A+B) + C != A + (B + C)
- Multi-threaded programming
  - Parallel programming may interleave operations in unexpected orders
- `addiu`
- Intel Pentium FDIV bug
  - Colwell, the Pentium Chronicles

### Conclusions

- Bits have no inherent meaning
  - things fall into the right place at the right time
- Computer reps of numbers
  - finite range and precision
  - need to account for this in programs

## Chapter 4: The Processor

This is where we learn how processors can execute millions of instructions per minute. ISA and compiler determine instruction count. CPI and cycle time determined by hardware.

In this chapter, we study two implementations in MIPS:

1. Simple one
2. Realistic one (with pipelining)

### Simple MIPS implementation

- Focus on a small subset of instructions
  - Memory access: `lw, sw`
  - Arithmetic, logical: `add, sub, and, or, slt`
  - Control/transfer: `beq, j`
  - Shows most aspects
- Magic words for this chapter
  - Datapath
  - Control
  - We are trying to understand the Fetch-Decode-Execute cycle
    - ![image-20210224134151987](/home/collin/.config/Typora/typora-user-images/image-20210224134151987.png)
- Logic Design Basics
  - Information encoded in binary
    - Low voltage = 0, high = 1
    - One wire per bit
    - Multi-bit data encoded on multi-wire buses
  - Life starts with logic gates
    - Combinational Elements (AND, OR, XOR, NAND)
      - Adder
      - ALU (Artihmetic and Logic Unit)
        - Seems to have a control bit F like multiplexer
      - A multiplexer
        - Y = F(A, B)
        - the control (selector) bit F tells whether Y should follow A or B
    - Register
      - use clock signal to determine when to update the stored value
      - Used when stored value is needed later
      - Edge-triggered
- Clocking
  - When the clock rises, there are signals switching from zero to one and vice versa
    - Settling time
    - Q is sent out of the registers
  - When the clock falls, the data is written into the registers (D)
    - Data is latched to the registers
- Combinational logic transforms data during clock cycles
  - Between clock edges
  - input from state elements
  - output to state elements
  - longest delay determines the clock period
- Fetch/Decode/Execute
  - This is the old picture
    - ![image-20210226131308670](/home/collin/.config/Typora/typora-user-images/image-20210226131308670.png)
  - This is the new picture
    - ![image-20210226131352671](/home/collin/.config/Typora/typora-user-images/image-20210226131352671.png)
  - We are diving into the processor to see what actually happens in the FDE cycle
- FDE
  - Fetch
    - Take the address in the program counter (register) go to memory (stored program) and fetch encoded instruction (R/I/J format)
    - It sits in the instruction register
  - Decode
    - Register numbers - register file, read registers
    - cloak rack
      - here is the register number, give me the content
  - Execute
    - Depends on instruction
      - typical R-format uses ALU unit
        - arithmetic result
        - memory address for load/store
        - branch target address
      - Access data memory
  - ![image-20210226131710816](/home/collin/.config/Typora/typora-user-images/image-20210226131710816.png)
- Key Principles
  - ![image-20210226132152542](/home/collin/.config/Typora/typora-user-images/image-20210226132152542.png)
  - I Format instruction execution
    - The ALU does the PC relative addressing
  - We can't just join wires
    - we don't want a logical OR at each junction
    - We need multiplexers
      - The ALU uses an operand either from the immediate operand or the instruction
      - The control unit is a multiplexer that takes the instruction op code to tell whether it should mux the instruction data to the ALU or the output of reading the rd register to the ALU
        - The control unit is a full state machine that turns the instruction op code into an output signal
  - ![image-20210226133640496](/home/collin/.config/Typora/typora-user-images/image-20210226133640496.png)
  - Control instructions
  - **The boxes and lines in black are the *data path***
    - This is where the execution was happening
    - Each of these lines is 32 lines of binary signal
  - **The stuff in blue is the *contro*l**
    - It is like pushing buttons to store in registers on breadboard
    - Each of these lines is just one bit

### Data path

- All the areas that an instruction and the data (read from memory based on address stored in instruction) flows through before it is finished
- You cannot talk about the data path without discussing control
- Registers, ALU, mux's, memories
- Every line you see is actually 32 lines in parallel
- Build the data path (FDE)
  - What are the abstractions in a data path?
    - Instruction memory
      - An address comes in
    - PC
      - Registers
      - Signals to poke stuff in and out
    - ALU
      - This thing never gets called more than once
- PC
  - Sends out an address
  - Gets updated by the Adding unit that can only add four
  - Put the PC+4 back in the PC
  - ![image-20210226134227688](/home/collin/.config/Typora/typora-user-images/image-20210226134227688.png)
- This part of the processor is responsible for **fetch**
- **Instruction register**
  - ![image-20210301131615250](/home/collin/.config/Typora/typora-user-images/image-20210301131615250.png)
- It takes in 32 bits of address to memory and puts out 32 bits of content
- The common case is to add 4, so it does that and sticks it back in PC. 

#### Multiplexers

- When you have two sets of 32-bits coming in and only one going out, you need a multiplexer, because just joining the wires would result in a logical OR

#### Path ways

- You need at least three pathways in the data path to have one path for each instruction format

#### Decode

- Takes in an instruction
- The op code tells us what format the instruction is in
- R/I/J format instructions may follow the same path for a while, but will have to find separate paths eventually
- Let's pretend we have an `add` instruction
  - Pull the operands out of the register file based on `rs` and `rt`
  - Feed them to an add circuit in the ALU
  - Store the result to `rd`
- Register file
  - ![image-20210301132740694](/home/collin/.config/Typora/typora-user-images/image-20210301132740694.png)
  - We have our 32 32-bit registers
  - have a lot of logic to read these registers
  - Simplify the job - a black box around the register file
  - What is the most you need? An R-format instruction reads two registers
    - Read data 1 and Read data 2
    - For jump, you don't need any registers
  - RegWrite
    - A control line that controls when you write
    - You have to supply a 32-bit value
    - Comes from the loop-back
- ALU
  - ![image-20210301133232440](/home/collin/.config/Typora/typora-user-images/image-20210301133232440.png)
  - The 6 function bits tell the ALU what to do
  - The 6 bit op code tells that this is an R-format instruction (that will use the ALU)
- Data-memory abstraction
  - Give it an address (result from the ALU)
  - MUX
    - memtoReg as selector bit
  - Loop-back to RegWrite
    - Also pulls from original instruciont6 to get destination register
    - ![image-20210301133621434](/home/collin/.config/Typora/typora-user-images/image-20210301133621434.png)
  - The data memory unit is between the register file and memory
  - The **data memory** *accesses memory* for the processor to get **operands**
    - The **instruction memory** *accesses memory* to pull out i**nstructions**
- I-Format Decoding
  - Read reg operands
  - Calc address using 16-bit offset
    - Use ALU but sign-extend offset
      - This is used to calculate a memory address by adding the offset (immediate value) to the base address (`rt`)
      - **Branch instruction**
  - Do sign extension
- The ALU has a four bit selector
  - Because it must select between many different operations

### There are Three Paths in the Processor Interstate System

- One for each instruction format
- R-format
  - The RegWrite control signal tells which register to write back to
- I-format
  - Two kinds:
    - **lw/sw**
      - ![image-20210303131807901](/home/collin/.config/Typora/typora-user-images/image-20210303131807901.png)
    - **bne/beq**
      - Need sign extension as for lw/sw
      - It is looking for a word address, not a byte address, so multiply by four
      - ![image-20210303132012359](/home/collin/.config/Typora/typora-user-images/image-20210303132012359.png)
      - ALU Zero signal
        - bne/beq - if the two data registers are equal or not, branch to branch calculated by

### The Main Control

- Signals
  - <img src="/home/collin/.config/Typora/typora-user-images/image-20210303133618752.png" alt="image-20210303133618752" style="zoom:150%;" />
  - Spend some time with this and the main zoomed out picture
  - **There is a truth table that says, if this instruction comes in, here are the signals we assert**
  - <img src="/home/collin/.config/Typora/typora-user-images/image-20210303134008703.png" alt="image-20210303134008703" style="zoom:150%;" />
  - **The setting of the control lines is completely determined by the opcodes fields of instruction**

### Jump

- Jump uses the four most significant bits from PC to fill out the last four bits

## Pipelining

- In our current understanding of the processor as a sequential flow chart, we have a few performance problems
  - The slowest instruction (load word) throttles the clock cycle
  - Most instructions use only a small part of the data path
- We have looked at an ideal, single-cycle processor implementation
- In pipelined implimentations,
  - Multiple instructions are overlapped in execution
  - The fde cycle changes to five steps
- Henry Ford pipelined in factories

### **The laundry example**

- In pipelining, the response time does not change!!!!!
- Throughput increases
- It reduces **average response time**
  - t1: beginning of first instruction
  - t2 :end of last instruction
  - average response time = (t1 - t2) / # of instructions completed
- The pipeline is loaded when all the units are working
- Exploiting concurrency
  - Every clock cycle, an instruction finishes in pipelined and non-pipelined implimentations
  - You speed up the clock by almost 5x with pipelining
- Time between instructions = time(nonpipe)/number of stages
- **Hardware designers are way ahead of where software designers are**
  - **Software guys for 30-40 years have not been able to keep up with the advances in hardware**
  - Can we write sequential code and the compiler turns it into a parallel program?
  - We can do this with GPU's, but not with arbitrary algorithms

### Staging

- They tried a 3-stage pipeline initially
- Then, they tried to balance the loads better with a five stage pipeline
  - ![image-20210305133455487](/home/collin/.config/Typora/typora-user-images/image-20210305133455487.png)
  - ![image-20210305133648781](/home/collin/.config/Typora/typora-user-images/image-20210305133648781.png)

### Hazards with Pipelining

- We will need to change the data path to address these problems
- All instructions are 32-bits
  - Easy to fetch-decode-execute
    - decode and read registers in one step
    - Alignment of memory operands
      - mem is only one step
  - Intel processors are 1-17 byte instructions
- Hazards
  - I went and fetched something, but have complications
  - Three kinds
    - Structure hazard
      - Bad design
      - A required resource is busy
      - 2 instructions need to use ALU or sign extension unit at the same time
    - Data hazards
      - Need to wait for previous instruction to complete its read/write
      - I need some operand, but the instruction ahead of me is providing it. Only writes back to register at the last step
      - <img src="/home/collin/.config/Typora/typora-user-images/image-20210310132248819.png" alt="image-20210310132248819" style="zoom:67%;" />
    - Control hazards
      - Deciding on control action depends on previous instruction
      - The branch instruction cannot tell the rest of the processor which way to go until it completes the ALU
  - At the end of the day, processor designers want good performance
    - They are not willing to compromise the accuracy of the outcomes for speed, though
    - **They have to stall the pipeline when one of these hazards happens**
      - Insert no-op instructions in the stream
      - ![image-20210310132406587](/home/collin/.config/Typora/typora-user-images/image-20210310132406587.png)
      - Sub depends on add
      - **The bubbles are inserted by the compiler**
        - It tries to avoid no-ops, but inserts them when absolutely no other option
        - **Forwarding**/**Bypassing**
          - ![image-20210310132701762](/home/collin/.config/Typora/typora-user-images/image-20210310132701762.png)
          - Cannot forward backwards in time - **Load-Use Hazard**
            - ![image-20210310133001652](/home/collin/.config/Typora/typora-user-images/image-20210310133001652.png)

### Code scheduling

- Group all load word instructions at the beginning
- *Without compromising programmer intent*

### Control Hazards

- Branch determines flow of control - which instruction should I load next?
- Flush pipeline - let the pipeline go, because we selected the wrong instruction
- Add hardware to do this in the ID stage
  - Tell result of compare in decode stage itself instead of waiting one more stage to end of EX step - saves one no-op instruction
- When we have a long pipeline (34 stages)
  - Stall penalty becomes unnacceptable (flush time)
- Branch prediction
  - Only stall if prediction is wrong
    - Looping - always take the loop - only wrong once

### Ways To Deal with Pipelining Hazards

- Introduce bubbles - **no op instructions**
- **Forwarding** - The ALU passes the result to itself to finish the job
  - A dependency between two R-format instructions
- Load-use hazard - **Code scheduling**
  - We have a lw
  - Use it as an operand in the next op
  - Forwarding does not help
  - At least one no-op instruction
- Branch prediction for control hazards
  - When the prediction is wrong, we have to flush the register
  - The same amount of loss as if we had inserted no-ops

### Branch Prediction

- Static branch prediction
  - Based on typical branch behavior
  - For example in a loop, predict backwards branch taken, not forward branch taken
  - If you have a `if: return` statement, assume it will not be taken
- Dynamic branch prediction
  - Requires hardware to measure branch decision statistics
  - Finite state machine
    - It is a hardware model
    - Out front with the instruction fetch
    - Attaches a prediction tag to each branch instruction

### RISC vs CISC with Pipelining

- With Intel architectures, it is very hard to do branch prediction
- With RISC, it is much easier to manage, so pipelining can be performed easier
- This was a big factor in the RISC/CISC 



![image-20210312132642729](/home/collin/.config/Typora/typora-user-images/image-20210312132642729.png)



### Interstage Buffers (Registers)

- We need these buffers to store, for example, the write back register number from an R-format instruction 5 stages ago so that we know where to put that value 4 stages later
  - We only need these registers to be 5 deep

- ![image-20210312133128007](/home/collin/.config/Typora/typora-user-images/image-20210312133128007.png)

![image-20210312133150337](/home/collin/.config/Typora/typora-user-images/image-20210312133150337.png)



- Interstage buffers are used for forwarding
  - Between R-format instructions, we can generally just forward and avoid NOPs

### Multiple Stage Execution

![image-20210317130640404](/home/collin/.config/Typora/typora-user-images/image-20210317130640404.png)

- The right side of the register file is shaded in the instruction decode stage and the left side is shaded in the writeback stage
- ![image-20210317131222979](/home/collin/.config/Typora/typora-user-images/image-20210317131222979.png)
  - Control signals are stored in the interstage buffers as well as the data

## Project

- AND Conditions
  - Midterm grade >= 90%
  - Quiz >= 88%
  - Reflections >= 85%

## Hazards

- Pass register numbers backwards
- Forwarding
  - The stage writes to a previous stage so the next instruction can access it
  - We have a set of rules to determine when to forward: EX/MEM.RegisterRd == ID/EXE.RegisterRs
- ![image-20210317133552082](/home/collin/Documents/College/2021-S1 Computer Systems/image-20210317133552082.png)

## Control Hazards and Branching

- Early solution to handle control hazards and avoid branch delay
  - Hardware to move branch instruction upstairs - page 318-320
- Special cases
  - ![image-20210319130401382](/home/collin/.config/Typora/typora-user-images/image-20210319130401382.png)
  - If the last add was only one or two ahead of beq, use forwarding to deal iwth
  - This is just a typical data hazard, not a control hazard
- On deeper and super-scalar pipelines, branch penalty becomes more significant (what happens when branch prediction fails)
- Enter, Dynamic Prediction
  - Prediction buffer is a branch history table
  - indexed by recent branch instruction address
  - stores outcomes
  - To execute a branch
    - check the table, expect same outcome
    - start fetching
    - update table if wrong, and only if wrong
      - state change/transition
      - We have four spots, two for not taken last time and two for taken last time
        - for each, we have a inner-most and outer most
        - takes two fails to get from an inner most to the different category
  - tags on certian instructions that are being executed over and over
    - single isolated branches typically don't matter
    - repeated instructions have context and matter more
  - The table is indexed by instruction address because we only predict for repeated branches
- Even with a predictor, we have a one-cycle penalty for taken branch
- Branch target buffer
  - cache
  - indexed by PC when instruction fetched
  - In this context, if I just computed target address, next time in the same context I don't have to recompute
- Assume all branches have zero penalty for correctly taken and 2 cycle for incorrect
  - Assume that dynamic predictor is correct only 90% of the time
    - branch instruction is only taken 5% of the time
      - static will be correct 95% of the time, dynamic only 10%
    - 95% of the time 
      - static will be correct 95% of the time, dynamic only 10%
    - 70% taken
      - this might be an application for a dynamic predictor

## Exception Handling

- A hacker inserted an unknown op code
- overflow
- interrupt from IO subsystem
- Anything that requires the processor to go outside of normal flow
  - We have to maintain performance
- Exceptions are pretty common
  - Every single operating system function is triggered by an exception
- MIPS System Control Coprocessor
  - Special register
  - Exception Program Counter register (EPC)
  - Hardware detects exceptions
    - It doesn't know what the programmer wants it to do on an exception
    - It just saves the offending address to EPC
    - Saves offending cause to cause register:
      - 1-bit, say
      - 0 for undefined op code
      - 1 for overflow
  - Jump to handler at 8000 00180
    - If the program wants to continue on and ignore, just branch back from handler address to old PC
      - `j $ra`
    - Otherwise, could jump to another address to fire, for example, the blue screen of death
  - Some of the exceptions we write in a higher level language are hardware exceptions
    - Like divide by zero
  - All user exceptions are handled by the runtime of the language
  - Vectorized interrupts
    - Depending where it showed up, you konw what went wrong
    - You have the option to jump fro mthis 20 bit location to a real handler or to return address
  - Restartable instruction
- Exceptions are a kind of control hazard
  - same cost as mis-predicted` branch

## Interrupts

- Handling mechanisms are similar, but control flow is a little different
  - Jump to a handler
  - No exception program counter usage for interrupt

## Exceptions and Pipelining

- Pipelining overlaps multiple instructions
- Simple approach: deal with exception from earliest instruction
  - flush subsequent instructions
  - **precise exceptions** - like inserting nops or flushing for control hazards
- In **complex pipelines**
  - greater performance but more complexity
  - Multiple instructions issued per cycle
  - out-of-order completion
  - maintaining precise exceptions is difficult
- Similar to HAZARDS

## Instruction-level Parallelism

- Pipelining was the simplest way to do this
- To increase ILP
  - make deeper pipeline
    - less work per stage => shorter clock cycles
  - **Multiple issue pipeline**
    - It's like a car manufacturer starting another assembly line instead of trying to shorten the time at each stage in the existing one
      - Already highly optimized
    - replicate pipeline stages => multiple pipelines
    - Promise
      - CPI < 1, so use instructions per cycle
        - How many instruction finish in a clock cycle
      - EG 4GHZ 4-way muliple issue pipeline (4 pipelines)
        - 
      - Dependecies reduce this in practice
      - after 2012 they realized that we can't just increase
  - static multiple issue - compiler
    - compiler groups instructions to be issued together
    - packages them into "issue slots"
    - compiler detects and avoids hazards
  - dynamic multiple issue
    - CPU examines instruction stream and chooses instructions to issue to each cycle
      - like predicting which interstage toll line will be the fastest to go into
    - compiler can help by code scheduling (reordering instructions)
    - CPU resolves hazards using advanced techniques at runtime, forwarding, predicting, etc.

- Speculative execution
  - Start instruction as soon as possible
  - check whether guess was right
    - if so, complete
    - If not, do not write back or commit, just roll back and do the right thing
    - You have to be able to do three things: flush, rollback, restart
  - Common to static and dynamic multiple issue
    - Generally this is a result of compiler and hardware working together
  - Hardware
    - Fetch unit can "look ahead"
      - Buffer results until it determines they are actually needed
      - Flush buffers on incorrect speculation
      - Instructions are executed for performance - out of order execution
  - What happens if exceptions occur on speculative execution?
- Very Long Instruction Word
  - Specifies multiple concurrent operations
  - We saw a precursor in multimedia operations
    - Most of these ops are 8 or 16 bit, we can do several in one 32 bit word
  - The whole point is to overlap the execution of multiple instructions
    - avoid dependencies
    - balance the stages
- ![image-20210322133626790](/home/collin/.config/Typora/typora-user-images/image-20210322133626790.png)
  - We might specialize one pipeline of a dual-issue pipeline for I-format (bottom in image above) and the top one for R-format (notice we don't have data mem access in top issue)
- ![image-20210322133836298](/home/collin/.config/Typora/typora-user-images/image-20210322133836298.png)
  - We can't resolve this data hazard with forwarding as in a single-issue pipeline
  - We have to insert stalls
    - We cannot take an arbitrary program and extract the greatest performance
    - software hasn't caught up with hardware
  - Loop unrolling
    - Repeat the code
    - Now we don't have branch prediction
    - Better performance but at cost of registers and code size

## Static Versus Dynamic Instruction-Level Parallelism

- Static
  - compiler does a lot of scheduling and loop unrolling
  - how many instructions to a issue package
- Dynamic

## Reservation Stations

<img src="/home/collin/.config/Typora/typora-user-images/image-20210324125921946.png" alt="image-20210324125921946" style="zoom:50%;" />

- In order issue means in program order, the way the programmer intended, the way they will be fetched
- Multi-issue processors will execute out of order instructions
  - Commit unit fixes up the issues that arise from out-of-order execution
- To the extent possible, the processor uses out-of-order execution
  - **In-order execution requires lots of stalls**
- Also speculative
- Does the commit unit slow it down?
  - The number of stalls avoided by OOO execution is high -> performance gains

## Speculative Execution

- Predict effective address
- Don't commit until branch outcome is determined
- avoid load and cache miss delays
  - predict effective address
  - predict loaded value
  - load before completing outstanding stores
  - bypass stored values to load units
- Don't commit load until speculation is cleared
- Why bother with dynamic scheduling?
  - Not all stalls are predictable
    - cache misses
  - Can't always schedule around branches
    - branch outcome is dynamically predicted - needed on processor
  - Pointer aliasing

## Porting what we have learned to other architectures

- Intel Core i7 Pipeline
  - Reservation stations
  - Reorder buffer
  - fetch
  - decode
- The fundamental performance question is, how many stalls did we use.

## Fallacies

- Pipelining is easy
  - The laundry example is easy to understand
  - The details are really hard
- Pipelining is independent of technology
  - Pipelining in a processor is not like assembly line design
  - More transistors make more advanced techniques feasible

## Pitfalls

- Poor ISA design can make pipelining harder
  - The fate of DEC
    - VAX, IA-32
    - They couldn't catch up
  - complex addressing modes
    - The MIPS only has 5
    - It was designed for pipelining from the get-go

## Conclusions

- Pipelining does not affect latency
- Datapath and control influence ISA
- Pipelining increases throughput
- Introduces hazards
- Multiple issue and dynamic scheduling (ILP)
  - Dependencies limit achievable parallellism
  - Complexity leads to the power wall
  - Dynamically packing issue slots
- When discussing multiple issue pipelining, dynamic branch prediction is one tool we can use for speculative execution

## Intel CEO Talk

- Meteor lake - cloud cpu's
  - x86 architecture
  - XPU
- Larger industry transmittion
  - System on a chip to system on a package
  - Foveros
    - 3d packaging - stack tiles - AI processors, graphics, cpus vertically
    - Power efficiency
  - Ponte Veceo
    - 40 tiles
    - Single package
    - 100 billion transistors
    - Pettaflop AI computer
    - Argon national laboratories
    - High roi
    - swap out tiles for performance or lower power or cost
  - Manufacturing
    - IDM 2.0
    - foundery - 80% in asia now
  - Radical change in compute architecture
  - Andy Grove - critical inflection point
    - Intelligent edge/AI
- SiP Advantages
  - Decreased wire length
  - Decrease propogation delay
    - This can be significant
  - Error correction
    - The longer the wire the more potential for noise
    - Antenna effects
  - Disadvantage - thermals
    - DMM also need memory
    - Carbon nano tube - no cooling issues

# Chapter 5 - Exploiting the Memory Hierarchy

We have only seen the inside of the processor, have not looked at memory much.

Memory is not a single thing, like the few chips that form RAM.

The computer system does not look at it that way - it sees the memory as a hierarchy

- Registers
- Cache
- RAM
- Hard disk

Large and fast memory is expensive.

**The magic of memory is that it gives you a large amount of fast memory for cheap!!!** All three of the desired parameters.

Two parts of memory

1. **Access time**
   1. Latency to get an instruction or word (fetch)
   2. Memory technology
      1. CMOS is fast
      2. DRAM is slow
2. **Cycle time**
   1. Memory organization
   2. Just gave a request and got the word - now, can I tell you to get another one right away or do I need to wait for the system to settle down.
      1. You can improve this by spreading subsequent memory requests across separate chips
      2. Interleaved memory

<img src="/home/collin/.config/Typora/typora-user-images/image-20210326125921202.png" alt="image-20210326125921202" style="zoom:80%;" />

### Static RAM

- Fast memory is more expensive
- SRAM (CMOS usually)
  - 0.5 ns is $5000
  - 2.5 ns is $2000
  - This was in 2012, has decreased a lot since then
  - In one CMOS bit there are 6 transistors
- DRAM
  - 50 ns to 70 ns access time
  - $75 to $20 per GB (2012)
- <img src="/home/collin/.config/Typora/typora-user-images/image-20210326130908868.png" alt="image-20210326130908868" style="zoom: 67%;" />
- Magnetic Disk
  - 5 ms to 20 ms access time
  - $2 to $0.2 per GB (2012)
  - Disk scheduling
  - Seek times - spinning disk and moving head
- SSD
  - 5 to 50 us $1 to $0.75 per GB (2012)
- Ideal Memory
  - access time like SRAM
  - costs like Magnetic Disk
  - terrabyte size like Magnetic Disk
- Organizational tricks get the Memory Hierarchy as close as possible to ideal memory
  - **This is one of the 8 great ideas**
- ![image-20210326131925893](/home/collin/.config/Typora/typora-user-images/image-20210326131925893.png)
  - Use a demultiplexer to use a multi-bit address to get the bit at a particular latch
  - All data transfer happens on clock edges
  - DDR means double data rate - stuff happening on rising and falling edges
- **Principle of Locality**
  - Temporal - time
  - Spatial - space
  - Example
    - We have a one gigabyte program stored in memory
    - temporal/spatial locality means:
      - If a program at a given time accesses word 2 of this memory
      - next couple accesses will likely be 3 and 4
  - In time and space, these memory accesses will be clustered
- **Memory Hierarchy**
  - <img src="/home/collin/.config/Typora/typora-user-images/image-20210326133111073.png" alt="image-20210326133111073" style="zoom:80%;" />
  - Principled way to organize memory
  - Put fast memory close to the processor
- Memory Blocks
  - The slower the access time, the bigger the chunk you bring back
  - Programs access data without knowing where it is physically located using memory address
  - HIT
    - accessed data is present in upper level
    - hit ratio is number of hits/access
  - MISS
    - accessed data is absent in upper level and must be transfered from lower level
  - Cache reduces average access time kind of like pipelining decreased average latency
- The PC bus was designed to clock out 32 words

### RAM Model

- Both the Von Neumann and the Harvard architecture implement this model

### Cache

Cache is the star of the memory hierarchy story. It is the closest memory in the hierarchy to the processor. It is typically CMOS technology. It may be a few kilowords on the processor for Level 1 cache in the Intel scheme.

- Cache controller
  - Hardware logic that controls the blocks that come in and out of cache
  - The processor generates an address
  - The controller takes that and determines whether it is a hit or a miss
    - Yep, it's in my temp store, can give it to you in one cycle time
    - Nope, its going to have to go out to memory (RAM) and get another block
- The programmer should not know where stuff is in memory
  - The system's job is to make sure that what you need now is transfered close to the processor just before you need it
- Right now, the model is that only a miss will trigger memory being moved around
  - machine learning is being used to preemptively move memory around in modern processors
- Questions
  - How do we know if the data is present? Is this a hit or a miss?
  - Where do we look?
    - Linear search on every instruction (two or three memory accesses per instruction) would take way to long with a thousand words
- Set Associative Cache
  - We will start with a simpler model
  - Direct-Mapped Cache
  - Associative Cache
  - A SAC is a combination of these

#### Direct-Mapped Cache

- Block size: **#Blocks**
  - That many words are moved by the cache controller every time it moves

  - Location determined by this address, in direct-mapping, only one choice:

    - ```cpp
      block address mod #Blocks
      ```

- ![image-20210329133049770](/home/collin/.config/Typora/typora-user-images/image-20210329133049770.png)
  - There are only 8 seats in cache
  - The seat number in cache is part of the memory address of the word
    - If i know that I have 8 seats in cache, only look at the 3 right most bits of the memory address to find it in cache
  - There may be many unfilled seats in cache
  - In direct mapped cache, there will never be duplicate addresses based on last three numbers

- How do I know which particular block is stored in a cache location

  - have to store address as well
  - valid bit - this memory is updated and current

- Validity bit starts out as zero

- The tag is the prefix of the seat number in the memory address
  
- This is how we tell which memory address is actually in the seat
  
- ![image-20210329134119459](/home/collin/.config/Typora/typora-user-images/image-20210329134119459.png)
  
  - This table is maintained by the cache controller
  
- Collision
  - There was valid memory there, but it needs to be overwritten
  - The cache controller has to save the current data to RAM before bringng in the new value
  
- **Important ideas**

  - Cache is more than the words stored
  - Memory addresses must be mapped to cache block
    - The processor just generates an address like usual
  - Transfer of block from RAM takes multiple cycles
    - the processor must stall for some cycles
  - cache misses increase CPI

- RAM/cache synchronization - a main issue in parallel programming

- Cache size problems

  - 16 KB cache **direct-mapped**, **write through**
  - 4 words per block
  - 32-bit address
  - 16 KB => 4096 words => 1024
  - <img src="/home/collin/.config/Typora/typora-user-images/image-20210402130504425.png" alt="image-20210402130504425" style="zoom:67%;" />
  - 
  - Each block needs 147 bits
  - 128 data bits for 4 words
  - Tag field needs 18 bits: 32 - 10 from (log2(1024)) - 2 - 2
    - bit zero and bit 1 tells me which byte in word
    - bits two and 3 tell me which word per block
    - 10 bits to tell me which block I am at in cache
    - 32 - 10 -2 -2 = 18 => tag
      - which word in memroy is currently occupying the block in cache
  - Add 1 to tag for valid bit => 19 bits
  - 19 + 128 = 147
  - Total cache size = 147 * 4096

- Memory address mapping problem

  - Get block of cache from memory address
  - address 1200, 64 blocks, 16 bytes per block
  - floor ( 1200 / 16 ) = 75 -> block in memory
  - block number = 75 modulo 64 = 11

- The Memory controller has a bus clock

  - We get the address to the MC - 1 bus cycle
  - 15 bus cycles per DRAM access by MC
  - 1 bus cycle per data transfer from MC to processor
  - The bus is typically 1 GHz
  - Miss penalty
    - 4 word block, 1 word wide DRAM
    - miss penalty = 1 + 4x15 + 4x1 = 65 bus cycles per miss
    - bandwidth  =16 bytes / 65 cycles - 0.25 B / cycle

- Components of CPU time

  - program execution cycles
    - includes time for cache hits
  - memory stall cycles
    - mainly from cache misses

- <img src="/home/collin/.config/Typora/typora-user-images/image-20210402132836937.png" alt="image-20210402132836937" style="zoom:67%;" />

- given

  - 100 cycle miss cycle
  - I-cache miss rate = 2% -> better locality than D-cache
  - D-cache miss rate = 4%
  - Bace CPI ( ideal cache) = 2
  - load and stores are 36% of instructions
  - Miss cycles per instruction
    - I-cache 0.02 (misses / instruction) x 100 (cycles / miss) = 2
    - D-cache: 0.36 (loads / instruction) x 0.04 x 100 = 1.44
  - Actual CPI = 2 + 2 + 1.44 = 5.44
  - Ideal processor is 5.44/2 = 2.72 times faster

- **Average Memory Access Time**

  - AMAT
  - miss penalty is 20 cycles
  - hit time is 1 cycle (1 ns from spec)
  - Instruction miss rate is 5%
  - AMAT = 1 + 0.05 x 20 = 2 ns
    - 2 cycles per instruction

- When CPU performance increases, memory penalty becomes more significant

  - Decreasing base CPI: greater proportion of time spent on memory stalls

  - Increasing clock rate

    - memory stalls account for more CPU cycles

### System Bus

The system memory bus is typically 3-4x times slower than the processor bus because there are many devices on the bus so if one is busy the other will keep the processor busy.

### Cache Summary

- Think about cache as a performance improving mechanism, not just a bucket to store stuff.

- Cache is more than the words stored
- Memory address must be mapped to a cache block
- Transfer of Block from RAM takes multiple cycles
- Cache misses increase CPI
- Ideal cache is baseline CPI, with no misses, only due to processor performance internals
- Main variables
  - words per block
  - bytes per word
  - bus width (words)
  - blocks in cache
- Tuning cache is not trivial
  - When you make your CPU faster, the miss penalty becomes more significant
  - Decreasing the base CPI makes you spend a greater proportion of time on memory stalls
  - increasing clock rate makes memory stalls account for more CPU cycles
  - Can't neglect cache behavior when evaluating performance

### Associative Cache

- Direct-mapped cache was very good because we knew exactly what seat a given memory word would sit at.
- The problem was that if three addresses come in and all want the same seat, cannot use other empty seats.
- We are looking at fully associative cache
  - Allow a given block to go in any cache entry
  - Requires all entries to be searched at once
  - Comparator per entry (expensive)
- Associative search hardware
  - At the same time check all the blocks
  - You have to pay for extra hardware
  - The main limitation to this is finances
  - **Only one processor cycle per cache search**
- Couldn't you make a look-up table that would take a address and return the seat number
- The **replacement policy** is very important in associative cache - if the cache is full and we need a new block to come in, which block do we replace?

### Set-associative cache

- Problem: the complexity/cost of the search hardware **increases as a polynomial** as the number of blocks to search increases - its a high polynomial
- Keep n down by increasing number of sets

- n-way associative cache
  - each set contains n entries
  - block number determines which set
    - block number % # sets in cache
  - search all entries in a given set at once
  - n comparators
- This turns the growth factor to linear instead of exponential
- Increasing n follows **the law of diminishing returns**
- A 1-way set associative is direct mapped
- As n increases, the complexity of search hardware increases exponentially
- As n decreases, the efficiency of the cache decreases exponentially
- Many processors have have a 4-way set associative cache

### Evaluating Cache

In a full cache, miss penalty is double, we have to store out the previous block and bring in a new one

```pseudocode
Miss penalty = 2 blocks * (words per block) / (words per bus) / (bus cycle frequency) * processor cycles/bus cycle => processor cycles
```

- Associative cache is better not only because it does not need to clear out blocks every time it loads a new word, but because the old words persist and may be reused

### Replacement Policy

If we have 8G of ram, and 16 K cache, the cache will get full. How will we replace

- Replace invalid ones if present
- Replace least recently used (LRU) otherwise
  - Easily implimented in hardware for a 2-way cache, managalble for 4-way, impossible for higher
- If you have 16 blocks, it will have to store 16^2 bits to keep a timestamp to determine LRU

### Memory Hierarchy Review

- The processor is asking for memory words by address.
- The processor manages the register files - fastest memory in the hierarchy

### LRU Algorithm

- For an n-block algorithm, maintaines and nxn bit matrix in hardware
- Algorithm: zero the ith row and fill ones in the ith column when block i is accessed
- The row holding the least binary value will be the most recently accessed, and the row holding the largest value is the LRU
- Intuition:
  - For an n-block cache, we have n blocks and n positions that each could posibly hold in terms of time

### Multi-level Cache

- Problem:
  - Evaluate just the L1 cache first
    - Miss rate is 2%
    - Miss penalty is 100 ns
    - Base cpi is 1
    - Processor clock rate is 4Ghz
    - Redo the problem for two cases, increased CPI for miss from L1, increased CPI for miss from L2
    - **Performance Ratio** = (CPI for L1 only) / (CPI for L2 and L1)
- When designing L1 cache
  - Focus on minimal hit time
- When designing L2 or L3 (last cache before RAM, depending if this is a 2 or 3 level cache)
  - Focus on a large enough cache so that we don't get a miss and have to go to memory
  - If we are a little slow on the hit time, that is OK

### Dependability

- Mean failure rate

### Questions for After Spring Break

- Clarification on direct-mapped cache
  - How large must the tag really be?
  - Can we really subtract the 2 bits for byte address and  the log2(words/block)?
  - So the cache controller just knows that if the memory address requested was 4096,
    - If we have a byte addressable machine, and 4 words per cache block 1 block in cache, we would divide this number by 2^4 to get the value 512.
      - It accesses the 
- Clarification on set-associative
  - We only need one tag per set.
  - The bits specifying the byte address, word address for block, and block address for set are all in the offset part of the memory address correct?
  - Are validity bits still assigned per block? they must be

### DRAM VS SRAM

- Dynamic ram uses only one transistor with a capacitor
- Sram uses six transistors for one bit

### Multi-level Cache

- In the Intel 3-level scheme, L1 cache is on the processor
  - L2 is private to the processor, but may be outside
  - L3 is shared between cores

## Dependability

In general, systems can be in one of two states:

1. Service accomplishment - service delivered as specified
2. Service interruption - deviation from specified service
   1. You must recognize this failure and remove from service for repair

- Failure metrics

  - Mean Time to Failure (MTTF)
    - In reality this is a bell curve, where a small minority will fail much sooner and a small minority will last much longer
  - Say the MTTF for a hard disk is 114 years or 1000000 hours
    - a warehouse scale computer has 50000 servers. Each server has 2 disks
    - annual failure rate = 114 years -> 8760 so it is 8760/1000000
    - two disks failing per day

- Reliability: MTTF

- Service interruption: mean time to repair (MTTR)

- Mean time between failures

  - MTBF = MTTF + MTTR

- **Availability** = MTTF / MTBF

  - goal is to improve the availability of systems
  - increase MTTF: fault avoidance, fault tolerance, fault forecasting
  - reduce MTTR: improve tools and diagnosis

- Dependability of storage system

  - When I store something in disk and then read it back, I'd better get the same data

  - **Hamming distance**

    - number of bits that are different between two bit patterns

    - ```assembly
      0110101
      0010100 
      -------
      0100001 # flag different bits in two above bit patterns
      
      # hamming distance between the two bit patterns is 2
      ```

    - 

  - You code the bits so that when you read it you immediately know if something went wrong

  - You have to have a certain hamming distance before you can make these guarantees

    - Minimum distance of 2 provides single bit **error detection**
      - parity code
    - Minimum distance of 3 provides *single bit error correction*, *2 bit error detection*
      - This is binary - if something is wrong, we can just flip it

  - I want to store a 32-bit word

    - **add bits** to my 32 bit pattern to make a **code**
    - hamming distance between two code words: `d_h(c_i - c_j)`

- Coding 

  - Repetition code (3) repeat by 3
  - want to store is: 1011 ->111000111111
  - Thus we can detect if either two or 1 bits are wrong
  
- Voyager probes

  - Both outside of our solar system
  - in interstellar space
  - The voyager has three computers - only if at least two agree, will it take an action

### Hamming Code

- Parity
  - Odd or even
  - I look at a bit sequence and I count the number of ones and say it is odd or even parity
  - 100110111 -> 6, even parity
  - 1011 -> 3 1's, odd parity
- 101011001
  - count bits from bit 1 at left
- **Single error correction and double error detection are features of the Hamming code**
  - it can tell you where an error is located, at least with single errors
- We add four **parity bits** to each byte to get these features
  - ![image-20210423130820352](/home/collin/.config/Typora/typora-user-images/image-20210423130820352.png)
  - **Rules**
    - p1: check for even parity in odd bits
      - a zero when there is even parity in the odd data bits
      - this is checking its own position, so it compensates with a one if there was originally odd parity
    - p2: check for even parity in every other pair: (2, 3), (6, 7), (10, 11), ....
    - p3: check for even parity in groups of four (4, 5, 6, 7), (12, 13, 14, 15), ...
  - ![image-20210423132444192](/home/collin/.config/Typora/typora-user-images/image-20210423132444192.png)
    - recheck the parity bits and read in reverse order to get the bit position that went bad
      - You recheck or recalculate the parity bits at the end and the pattern they form is the index of the bit that went bad, in **reverse**
      - You do not recalculate the parity bits based on the data bits only but based on themselves as well
        - i.e., for no corruption, the parity bits should all be zero
    - The number of parity bits needed to protect n bits seems to be log2(n) + 1, except that we need 8 bits to protect 64

## Virtual Memory

Memory hierarchy gets us close to ideal memory.

- Use main memory as a cache for secondary disk storage
  - managed jointly by CPU hardware and the OS
  - **address translation** a virtual address gets turned into a physical address in RAM 
  - MMU (memory management unit) translates
    - has its own private cache for storing addresses that have been recently translated
    - translation look-aside buffer















