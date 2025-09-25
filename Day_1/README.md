# Day 1: Introduction to Verilog

## Objectives
- Learn the basics of Verilog HDL.
- Understand the structure of a simple Verilog module.
- Write and simulate a basic RTL design.

## Topics Covered
1. Introduction to Verilog
2. Structure of a Verilog Program
3. Writing a simple combinational circuit
4. Simulation using Icarus Verilog & GTKWave

## Example: 2-to-1 Multiplexer

### Code (mux.v)
```verilog
module mux (
    input wire a,
    input wire b,
    input wire sel,
    output wire y
);
    assign y = sel ? b : a;
endmodule
