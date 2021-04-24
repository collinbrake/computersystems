# Outline for Reflection 14

## Multi-level Cache

Understanding multi-level cache is important because it is in virtually every modern computer system, for example Intel's three-layer cache

Cache performance calculation problem

## Dependability Metrics

- Failure rates typically appear small, but at scale they have large effects.

- MTTF
- MTTR
- MTBR
- Dependability via redundancy
  - MTTF is a bell curve - a few units will fail much sooner
  - Can gain the stable average with redundant systems, whereas a warehouse relying on one mainframe processor and a huge magnetic disk would be completely down if they happened to get one component that was on the left side of the bell curve for life expectancy
- Availability
  - Can be used to calculate the margin of safety in redundant systems - how many extra units you need to compensate for down units

## Hamming Code

Another aspect of dependability in computer systems is the preservation of data and the consistency of results. Especially in storage systems, where bits do become corrupted at times between writing and reading

- Hamming Distance
- Parity
- Example

