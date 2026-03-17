// ============================================================
// Module  : neuronode
// Purpose : Models a simple artificial neuron with two binary
//           inputs. The neuron computes the sum of its inputs
//           and compares it against a programmable threshold.
//           If the sum meets or exceeds the threshold, the
//           neuron fires (output goes HIGH), otherwise it
//           remains silent (output stays LOW).
//
// Inputs:
//   x         [1-bit] - First binary input signal (0 or 1)
//   y         [1-bit] - Second binary input signal (0 or 1)
//   Threshold [2-bit] - Programmable firing threshold (0 to 3)
//
// Output:
//   fire      [1-bit] - Neuron output, HIGH when sum >= Threshold
//
// Truth Table (for reference):
//   x | y | sum | Threshold=1 | Threshold=2
//   0 | 0 |  0  |      0      |      0
//   0 | 1 |  1  |      1      |      0
//   1 | 0 |  1  |      1      |      0
//   1 | 1 |  2  |      1      |      1
//
// Notes:
//   - Threshold=1 mimics OR gate behavior
//   - Threshold=2 mimics AND gate behavior
// ============================================================

module neuronode(input x, input y, input[1:0] Threshold, output reg fire);

   // ----------------------------------------------------------
   // Summation Wire
   // ----------------------------------------------------------
   // Holds the result of adding both input signals.
   // Since x and y are each 1-bit, their sum ranges from 0 to 2,
   // requiring 2 bits to represent without overflow.
   wire [1:0] sum;
   assign sum = x + y; // Compute activation sum of both inputs

  // ----------------------------------------------------------
  // Firing Logic
  // ----------------------------------------------------------
  // Combinational block, re-evaluates whenever x, y, or
  // Threshold changes. Compares the activation sum against
  // the threshold and sets the fire output accordingly.
  always@(*) begin
    if ( sum >= Threshold ) begin
        fire = 1'b1; // Activation threshold met or exceeded, neuron fires
    end else begin
        fire = 1'b0; // Activation too low, neuron remains silent
    end
  end       

endmodule
