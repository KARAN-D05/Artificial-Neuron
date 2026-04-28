module neuronode_not(
    input x,
    input signed [1:0] thresh,
    output signed [1:0] sum,
    output reg fire
);
 
  assign sum = -x;

  always@(*) begin
        if ( sum >= thresh ) begin
            fire = 1'b1;
        end else begin
            fire = 1'b0;
        end
     end
endmodule