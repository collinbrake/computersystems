# Outline for Reflection 13

## Intro

- Just as the memory hierarchy makes many compromises between size, speed, and cost, cache, as a member of the memory hierarchy makes compromises between two different architectures that each offer their own benefits.
- Understanding the rational behind these compromises not only provides a low-level understanding of how cache works, but provides a great example of how we as computer engineers and scientists should make design compromises that place a design in the sweet spot between economy and functionality.
- Compromises like these must be made in purchasing components for a computer system, as well as in choosing software architectures, since the more functional the software application the more design hours required and the more expensive the application becomes.
- Studying the compromises that have led to optimal systems like modern cache will allow us to find that balance between cost and functionality in our work.

## Associative Cache

- Modern cache systems are a combination between the direct mapped cache discussed in the last reflection, and another kind of cache called Associative cache. Fully associative caches work as follows....
- Search hardware that searches all blocks in one cycle
- Complexity and thus cost increases as a high-order polynomial of the number of blocks to search
- Advantage is full usage of all seats in cache, minimize replacements

## Set-Associative Cache

- Prevent number of locations from reaching the steep part of the polynomial, keep complexity and cost down
- n-way set associative, a n-block associative set
- Each set is direct mapped
- Still gain most of the advantage of fully associative
  - as n increases, the efficiency follows the law of diminishing returns
  - choose n so that the complexity is somewhere at the inflection point of the complexity curve
  - and at the inflection point of the performance curve

## Replacement Policies

- Even with associative cache, since cache size is much smaller than RAM size, it will fill up and replacements will have to be made within sets whenever a new block needs brought in to a full set
- Combination of validity bit and LRU
- LRU hardware

## Conclusion



