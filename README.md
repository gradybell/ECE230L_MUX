# Multiplexers and Demultiplexers

In this lab you have learned about multiplexers and demultiplexers.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Lab Summary
In this lab we created a multiplexer to select one of four possible 4-bit data sources and a demultiplexer to select one of the four possible receivers of the 4-bit data, essentially building a selector to connect one of four sources to one of four receivers.

## Lab Questions

### In plain English describe the function and use of a multiplexer.
A multiplexer uses a selector signal to determine which one of its multiple inputs will be passed to its single output. This multiplexer has four unique inputs which are chosen based on a particular signal from a 2-bit selector (00, 01, 10, or 11).

### In plain English describe the function and use of a demultiplexer.
A demultiplexer uses a selector signal to determine which one of its multiple outputs will pass its single input. This demultiplexer can send its single input to one of four outputs which is determined by a 2-bit selector signal (00, 01, 10, or 11).

### What other uses might these circuits have? (Think Shannon’s)
These multiplexer could be used in sequences to represent a decomposition of any boolean function to its basic components. If you imagine a truth table with inputs A and B and output F, you could use a multiplexer with A as the selector signal that passes the behavior of that truth table when A == 0 or conversely when A == 1. You could then decompose both of those input behaviors using another multiplexer (for each input of A) with B as the selector signal that passes the value of F when B == 0 or conversely when B == 1 relative to A's value depending on which input of the A-selected multiplexer the B-selected multiplexer is connected to.

This can be used at any scale and, while efficiency will suffer, it will *always* be a valid implementation of any function.

Regarding demultiplexers, they could be used as decoders (although it would be entirely contrived because decoders already exist and would do a better job at being a decoder than a demultiplexer trying to act as a decoder).
