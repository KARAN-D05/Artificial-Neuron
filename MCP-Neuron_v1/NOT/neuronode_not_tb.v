`include "neuronode_not.sv"

module testbench;

  logic x;
  logic signed [1:0] thresh;
  logic signed [1:0] sum;
  logic fire;

  neuronode_not dut(
    .x(x),
    .thresh(thresh),
    .sum(sum),
    .fire(fire)
  );

  initial begin

    $monitor("t = %0t | x = %b | thresh = %d | sum = %d | fire = %b", $time, x, thresh, sum, fire);
    $dumpfile("sim.vcd");
    $dumpvars(0, testbench);

    x = 0;
    thresh = 1'b0;
    #10;

    x = 1;
    thresh = 1'b0;
    #10

    $display("Simulation Complete");
    $finish;

  end

endmodule
