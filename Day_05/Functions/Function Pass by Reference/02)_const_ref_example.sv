// const ref usage
module const_ref_example;
  int a = 10;
  int result;

  // Pass-by-reference
  function int add_five(const ref int x);
    return x + 5; 
  endfunction

  initial begin
    result = add_five(a);
    $display("Original a   = %0d", a);
    $display("Result (a+5) = %0d", result);
  end
endmodule
