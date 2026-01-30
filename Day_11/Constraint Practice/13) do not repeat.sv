//  Write a constraint to generate values between 1000 and 2000 such that values do not repeat.  

class not_repeat;
  rand int storage;
  
  constraint c1{
    storage inside {[1000:2000]};}
  
  constraint c2{
    unique{storage};}
  
endclass

module not_repeat_tb;
  
  initial begin
    not_repeat n;
    
    repeat (10) begin
      n = new();
      n.randomize();
      $display("Storage values = %d",n.storage);
    end
  end
endmodule
