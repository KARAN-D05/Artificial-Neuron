// Artificial Neuron Node
// Sums two binary inputs and fires if the result meets or exceeds the threshold
module neuronode(input x, input y, input[1:0] Threshold, output reg fire);

   wire [1:0] sum;
   assign sum = x + y; // Add both input signals to get activation sum

  always@(*) begin   // Re-evaluate whenever inputs change
    if ( sum >= Threshold ) begin
        fire = 1'b1; // Activation threshold met - neuron fires
    end else begin
        fire = 1'b0; // Activation too low - neuron remains silent
    end
  end       

endmodule
