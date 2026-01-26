// Q1.1 Range Constraints
// Create a class with:

// rand bit [7:0] data (0-255)

// Constraint: data must be between 50 and 150 inclusive

// Constraint: data must be divisible by 4

// Constraint: data must not be 100

class range;
  rand bit [7:0] data;
  
  // 50 to 150
  constraint ci{ data inside {[50:150]};}
  
  // data % 4
  constraint cd{ data % 4 == 0;}
  
  // data != 100
  constraint cn{ data != 100;}
endclass

module range_tb;
  
  initial begin
    range r = new();
    
    repeat (5) begin
      r.randomize();
      $display("Range value = %0d",r.data);
    end
  end
endmodule
  
