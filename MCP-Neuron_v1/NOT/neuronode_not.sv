module neuronode_not(
    input logic x,
    input logic signed [1:0] thresh,
    output logic signed [1:0] sum,
    output logic fire
);
 
  assign sum = -x;

  always_comb begin
        if ( sum >= thresh ) begin
            fire = 1'b1;
        end else begin
            fire = 1'b0;
        end
     end
endmodule
