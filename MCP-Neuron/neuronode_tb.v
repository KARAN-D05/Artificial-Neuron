`include "neuronode.v"

module neuronode_tb;
    reg x_in;
    reg y_in;
    reg [1:0] thresh_in;
    wire fire_out;

    neuronode dut (
        .x(x_in),
        .y(y_in),
        .Threshold(thresh_in),
        .fire(fire_out)
    );

    initial begin
        $dumpfile("neuronode.vcd");
        $dumpvars(0, neuronode_tb);

        $display("Testing Threshold = 2 (AND Logic)");
        thresh_in = 2; 
        
        x_in = 0; y_in = 0; #10;
        x_in = 0; y_in = 1; #10;
        x_in = 1; y_in = 0; #10;
        x_in = 1; y_in = 1; #10; 

        $display("Testing Threshold = 1 (OR Logic)");
        thresh_in = 1;

        x_in = 0; y_in = 0; #10;
        x_in = 0; y_in = 1; #10;
        x_in = 1; y_in = 0; #10;
        x_in = 1; y_in = 1; #10;

        $finish;
    end

endmodule
