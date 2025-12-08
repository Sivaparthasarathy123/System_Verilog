// Increment a value by pass by value
module increment_value;
  int n = 10;
  int result;
  
  // Pass-by-value function
  function void increment(int x);
    x = x + 1;
    $display("Inside function: x = %0d", x);
  endfunction
  
  initial begin
    $display("Before calling function: n = %0d", n);
    
    increment(n);
    
    $display("After calling function : n = %0d", n);
  end
endmodule
