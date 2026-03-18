// Hard vs Soft Constraints
class hard_soft;
  rand bit [7:0] data;

  // Hard
  constraint hard_c {data >= 255;}

  // Soft
  constraint soft_c {soft data < 200;}
endclass

// Testbench
module hard_soft_tb;
  
  initial begin
    hard_soft hs = new();
    if(hs.randomize())
      $display("Randomized data = %0d", hs.data);
    else
      $display("Randomization failed");
  end
endmodule 
