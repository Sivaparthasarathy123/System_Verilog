// 3 Distribution
// Create a class with:

// rand int mode

// Constraint: mode distribution: 0 with 40%, 1 with 30%, 2 with 20%, 3 with 10%

// Constraint: when mode=0, value must be < 100

// Constraint: when mode=1, value must be between 100-200

class distribution;
  rand int value;
  
  constraint ci {
    value dist {0 := 40, 1 := 30, 2 := 20, 3 := 10};}
  
  constraint value_c1 {
    value < 100;}
  
  constraint value_c2 {
    value inside {[100:200]};}
  
endclass

module dist_tb;
  
  initial begin
    distribution d;
    
    repeat (5) begin
      d = new();
      
      d.value_c1.constraint_mode(0);
      d.value_c2.constraint_mode(0);
      
      d.randomize();
      $display("Value = %0d",d.value);
    end
  end
endmodule
  
