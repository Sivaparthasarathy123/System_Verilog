// Randomizing the 12th bit
module Randomizing_12th_bit;
  reg [15:0] data;

  initial begin
    data = 16'hA5A5;  
    $display("Before randomizing 12th bit: %b", data);

    // Randomize only 12th bit
    data[12] = $urandom_range(0,1);

    $display("After randomizing 12th bit:  %b", data);
  end
endmodule
