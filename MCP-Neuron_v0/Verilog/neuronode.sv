module neuronode (
  input logic x,
  input logic y,
  input logic [1:0] Threshold,
  output logic fire
  );

  logic [1:0] sum;
  assign sum = x + y;

  always_comb begin
    if ( sum >= Threshold ) begin
        fire = 1'b1;
    end else begin
        fire = 1'b0;
    end
  end       
endmodule
