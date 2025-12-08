// Power function using pass-by-value
module power_function;
  int a = 2;
  int b = 4;
  int result;

  // Pass-by-value function
  function int power(int base, int exp);
    int i;
    int res = 1;

    $display("Inside function: base = %0d, exp = %0d", base, exp);

    for (i = 0; i < exp; i++)
      res = res * base;

    return res;
  endfunction

  initial begin
    $display("Before calling function: a = %0d, b = %0d", a, b);

    result = power(a, b);

    $display("After calling function : a = %0d, b = %0d", a, b);
    $display("Result a power of b: %0d", result);
  end
endmodule
