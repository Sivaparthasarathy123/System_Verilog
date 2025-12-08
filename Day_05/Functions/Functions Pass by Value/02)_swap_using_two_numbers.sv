// Swap numbers using pass-by-value (swap fails)
module swap_numbers;
  int a, b;

  // Pass-by-value function
  function void swap(int a, int b);
    int temp;
    
    // swap copies
    temp = a;
    a = b;
    b = temp;
    
    $display("Inside function: a = %0d, b = %0d", a, b);
  endfunction
  
  initial begin
    a = 2;
    b = 3;
    
    $display("Before calling function: a = %0d, b = %0d", a, b);
    
    swap(a, b); // swap fails
    
    $display("After calling function:  a = %0d, b = %0d", a, b);
  end
endmodule
