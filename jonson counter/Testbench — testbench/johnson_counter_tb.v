`timescale 1ns/1ps

module johnson_counter_tb;

    reg clk;
    reg reset;

    wire [3:0] q;

    // Instantiate the Johnson Counter
    johnson_counter dut (
        .clk(clk),
        .reset(reset),
        .q(q)
    );

    // Clock generation
    always #5 clk = ~clk;

    initial begin

        // Initialize signals
        clk = 0;
        reset = 1;

        // Apply reset
        #10;
        reset = 0;

        // Run counter
        #100;

        $finish;
    end

    // Display output
    initial begin
        $monitor("Time = %0t | Reset = %b | Q = %b",
                 $time, reset, q);
    end

    // Generate waveform
    initial begin
        $dumpfile("johnson_counter.vcd");
        $dumpvars(0, johnson_counter_tb);
    end

endmodule