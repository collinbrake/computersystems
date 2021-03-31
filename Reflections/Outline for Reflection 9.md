# Outline for Reflection 9

## Intro - Pipelining and Staging

## Data Hazards and Forwarding

- Load-use hazard
  - obvious way to deal with is inserting no-ops
  - Code scheduling
- Add then sub
  - forwarding
  - Alu provides its own input

## Control Hazards and Branch Prediction

- Issue and flushing
- Add hardware after the instruction fetch to tell which branch to take
- Static branch prediction
- Dynamic branch prediction
  - finite state machine

## RISC/CISC with Pipelining - Important in choosing architectures (RISC V vs ARM even)

- Intel architectures make branch prediction harder
- More specialized hardware for forwarding