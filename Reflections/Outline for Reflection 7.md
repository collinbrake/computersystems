# Outline for Reflection 7

## Floating Point Representations

### Basic Format

- Sign-magnitude
- Exponent
  - Bias for negative
- Accuracy
  - Normalization
  - Save bits
  - Simplicity

### IEEE 754

- Double/Single
- Why is it important?
  - It guarantees that floating point operations will produce the exact same bit patterns between two machines that support IEEE

### Computer Scientists Should Know

- Floating point addition not associative
  - Because of rounding
- Error does accumulate
  - Since floating point numbers are approximations of the real numbers they represent
  - Especially important in near subtraction when many digits will cancel, possibly resulting in only digits that are insignificant due to rounding
  - Rearranging to avoid catastrophic cancellation
    - Using (x-y)*(x+y) instead of (xx +yy) replaces catastrophic cancellation with benign cancellation which is less harmful
- Four rounding modes in IEEE 754
  - The rounding mode used is especially important in areas like interval arithmetic

## Processor

FDE

Understanding processors as modular systems is important

Humans cannot design complex systems like a computer processor as one piece - they have to split it up into managable chunks

The cleaner the interface between these pieces, the better the result, and this is true of processors

That is why it is important for us as computer engineers to understand computers as modular systems.

### Clocking

### Datapath/FDE Parts

Muxing

### Instruction Memory

- Increment program counter
- Fetch

Decode

### Registers

- Will it come from an immediate operand or from memory?

ALU

- calculate address or perform calculation

Execute

### Data Memory

## Sources

- David Goldberg, https://docs.oracle.com/cd/E19957-01/806-3568/ncg_goldberg.html
- 

