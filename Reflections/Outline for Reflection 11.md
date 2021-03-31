# Outline for Reflection 10

## Memory Hierarchy

Principled organizational technique to get fast, cheap, and large memory.

One of the eight great ideas.

Ideal memory - get closer to this

- Speed of SRAM
- Price and size of Hard disk

### Principle of Locality

- At any given time, if we want a memory word at an address, it is likely that we want the addresses in near proximity.
- Clustering
- Cache
- Just get a whole block because the memory bus is designed for 32 bits anyways.

The slower the access time the bigger chunk you bring back to cache.

Put fast memory close the the processor

Hit ratio/miss penalty

Another organizational trick:

- **Interleaved memory**
  - Spread subsequent memory words across multiple chips so that no two consecutive requests go to the same chip
  - Allow time for chip to settle so that the memory read speed is not affected by overall cycle time but only by access time
  - Analogous to pipelining in the processor - decrease average latency, increase throughput
- This exploitation of the memory hierarchy crystallizes to one major idea: distributed, modular systems where workload is shared between multiple units are the way to gain efficiency when the maximum potential of the individual components has been reached.
  - This is like the move to muliple issue pipelines
    - the clock rate couldn't be turned up any further, so just add more workers
  - In multiple-issue pipelining, this also allows the workers to be specialized for individual tasks, like having one pipeline to handle R-format instructions and one to handle I-format.
    - This works the same way in the the memory hierarchy  - put a small amount of fast expensive memory near the processor and other blocks of slower and larger memory further away and get the benefits of both worlds.
  - In engineering, this specialization of systems to gain efficiency is one major source of complexity, but it is the only way to harvest the benefits of three conflicting concerns:
    - performance (access time in the memory example)
    - scale (number of bits we can store in this case)
    - economy

## System on a Package

- Beyond the **memory hierarchy** and **instruction level parallelism**, we see this integration of distributed, specialized components at the core of processor design.
- At Intel Unleashed 2021, Pat G. introduced the Ponte Vecchio, a high-performance processor that can spin up 1 petaflop per second, all in a palm sized package of 100 billion transistors.
  - This is not a traditional processor.
  - It is a package made up of 40 tiles that are each highly specialized for given tasks, combining FPGA's, GPU's and CPU's in one package, leveraging the concepts of distributed specialization discussed above.
  - Further, Intel indicated that customers will be able to customize this package, using different tiles to gain more performance, power efficiency, or whatever metric they are optimizing for.
- All of this reflects a trend in computing as the industry moves from System-on-Chip (SoC) to System-in-Package
  - SiP allows engineers to take advantage of highly specialized systems without having to integrate the individual components like CPU, GPU, and RAM on a printed circuit board
  - These things are stacked vertically in a package







