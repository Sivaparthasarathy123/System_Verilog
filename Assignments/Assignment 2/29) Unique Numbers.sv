// Unique Numbers
module Unique_numbers;
  int unique_nums[10]; 
  int i;

  initial begin
    for (i = 0; i < 10; i++) begin
      unique_nums[i] = i;
      $display("unique_nums[%0d] = %0d", i, unique_nums[i]);
    end
  end
endmodule
