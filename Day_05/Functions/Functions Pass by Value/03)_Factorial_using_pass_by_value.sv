// Factorial using pass-by-value
module factorial_pass_value;
  int n = 5;
  int result;
  int temp;
  // Recursive factorial function (pass-by-value)
  function int factorial(int x);
    $display("Entering factorial(%0d)", x);
 
    if (x <= 1) begin
      $display("Base case reached with x=%0d, returning 1", x);
      return 1;
    end
    
    // recursive call
    temp = x * factorial(x - 1);
    
    $display("Returning from factorial(%0d): %0d", x, temp);
    
    return temp;
  endfunction
  
  initial begin
    $display("Original n before call: %0d", n);
    
    result = factorial(n);
    
    $display("Original n after call : %0d", n);
    $display("Factorial result : %0d", result);
  end
endmodule

