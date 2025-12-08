//const ref array
module const_ref_array;
  int data[5] = '{1,2,3,4,5};
  int total;

  function automatic int sum_array(const ref int arr[5]);
    int i, s = 0;
    foreach(arr[i])
      s += arr[i];
    return s;
  endfunction

  initial begin
    total = sum_array(data);
    $display("Array sum = %0d", total);
    $display("Original array[0] = %0d", data[0]);
  end
endmodule
