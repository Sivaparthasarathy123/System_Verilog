// Sum of dynamic array elements
module sum_array_fn;
  int arr[] = '{10, 20, 30, 40};
  int result;

  function automatic int sum_array(int a[]);
    int total = 0;
    foreach(a[i])
      total += a[i];
    return total;
  endfunction

  initial begin
    result = sum_array(arr);
    $display("Sum = %0d", result);
  end
endmodule
