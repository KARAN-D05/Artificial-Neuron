// Testbench for neuronode
// Verifies neuron firing behavior across two threshold settings
`include "neuronode.v"
module neuronode_tb;

    // Inputs driven by testbench
    reg x_in;
    reg y_in;
    reg [1:0] thresh_in;

    // Output observed from the neuron
    wire fire_out;

    // Instantiate the neuron under test
    neuronode dut (
        .x(x_in),
        .y(y_in),
        .Threshold(thresh_in),
        .fire(fire_out)
    );

    initial begin
        $dumpfile("neuronode.vcd");          // Waveform output file
        $dumpvars(0, neuronode_tb);          // Dump all signals in this module
        $monitor("t = %0t | x_in = %b | y_in = %b | fire_out = %b", $time, x_in, y_in, fire_out);

        // Test 1: Threshold = 2 (behaves like AND gate, both inputs must be 1)
        $display("Testing Threshold = 2 (AND Logic)");
        thresh_in = 2; 
        
        x_in = 0; y_in = 0; #10; // sum = 0, no fire
        x_in = 0; y_in = 1; #10; // sum = 1, no fire
        x_in = 1; y_in = 0; #10; // sum = 1, no fire
        x_in = 1; y_in = 1; #10; // sum = 2, fires

        // Test 2: Threshold = 1 (behaves like OR gate, either input triggers fire)
        $display("Testing Threshold = 1 (OR Logic)");
        thresh_in = 1;
        x_in = 0; y_in = 0; #10; // sum = 0, no fire
        x_in = 0; y_in = 1; #10; // sum = 1, fires
        x_in = 1; y_in = 0; #10; // sum = 1, fires
        x_in = 1; y_in = 1; #10; // sum = 2, fires

        $finish; // End simulation
    end

endmodule
