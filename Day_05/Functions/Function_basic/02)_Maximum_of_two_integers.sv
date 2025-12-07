// Maximum of two integers
module max_fn;
  int result;

  function automatic int max2(int a, int b);
    if(a > b)
      return a;
    else
      return b;
  endfunction

  initial begin
    result = max2(10, 20);
    $display("Max = %0d", result);
  end
endmodule
