// Add two numbers using pass-by-value
module add_two_numbers;
  int a, b;
  int result;
  
  // Pass-by-value function
  function int sum(int a, int b);
    return a + b; 
  endfunction
  
  initial begin
    a = 10;
    b = 10;
    
    result = sum(a, b);
    
    $display("Inside main: a = %0d, b = %0d", a, b);
    $display("Result from function = %0d", result);
  end
endmodule
