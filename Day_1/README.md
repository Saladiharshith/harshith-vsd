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
```
---
TEST BENCH
---
    `timescale 1ns/1ps
    module counter_tb;

    reg clk, reset;
    wire [3:0] count;

    // Instantiate counter
    counter uut (
        .clk(clk),
        .reset(reset),
        .count(count)
    );

    // Clock generation
    always #5 clk = ~clk;

    initial begin
        $dumpfile("counter.vcd");
        $dumpvars(0, counter_tb);

        // Initialize
        clk = 0; reset = 1;
        #10 reset = 0;

        // Run simulation
        #100 $finish;
    end
    endmodule
    
SIMULATION STEPS
---
Compile and run with Icarus Verilog
```
iverilog -o counter.out counter.v counter_tb.v
vvp counter.out
```
View waveform in GTKWave
```
gtkwave counter.vcd
```




