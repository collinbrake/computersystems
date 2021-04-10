# Reflection 12

## Intro

- large amounts of fast memory for cheap is what the memory hierarchy offers
- To do this it implements different types of mem at diff levels, closer to processor -> faster
- Cache is the star
  - closest and fastest

## Cache Controller

Principle of locality

Blocks

- multiword chunks

The questions it has to answer

- For a given address request, it must know if the data is in the cache (hit) or if RAM access is needed (miss)
- If it is a hit, where does it find the data?
  - Linear search is expensive

## Direct Mapped Cache

How it answers those questions

- The block number for each word in memory is equal to the memory address modulo #blocks
  - get block address by dividing word address by number of words per block
- **Collisions**
- **Write through versus write buffer**

## Cache Performance

Two examples

## Summary

Increasing the processor clock rate has tradeoffs