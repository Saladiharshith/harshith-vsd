# Day 1 — RTL Workshop

## 📝 Topics Covered
- Basics of RTL design using Verilog
- Writing a simple counter module
- Creating a testbench
- Simulation and verification flow

---

## 📘 Example RTL Code

### Counter Module (`counter.v`)
```verilog
module counter (
    input wire clk,
    input wire reset,
    output reg [3:0] count
);
    always @(posedge clk or posedge reset) begin
        if (reset)
            count <= 4'b0000;
        else
            count <= count + 1;
    end
endmodule

