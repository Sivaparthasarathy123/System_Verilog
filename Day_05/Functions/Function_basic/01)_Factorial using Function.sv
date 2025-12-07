//factorial using function
module factorial_fn;
  int result;

  function automatic int fact(int n);
    if (n <= 1)
      return 1;
    else
      return n * fact(n-1);
  endfunction

  initial begin
    result = fact(5);
    $display("Factorial of 5 = %0d", result);
  end
endmodule
