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

