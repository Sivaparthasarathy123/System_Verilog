// What is wrong with the below code? What is the correct process to write the constraint?

class const_level;
  rand bit [7:0] low, mid, high;
  
  constraint Const_1 {      // Corrected
    low < mid; 
    mid < high;}
  
  constraint c2{
    low  inside {[1:255]};
    mid  inside {[1:255]};
    high inside {[1:255]};}
  
endclass

module level;
  
  initial begin
    const_level c;
    
    repeat (5) begin
      c = new();
      c.randomize();
      $display("low = %0p | mid = %0p | high = %0p",c.low,c.mid,c.high);
    end
  end
endmodule
