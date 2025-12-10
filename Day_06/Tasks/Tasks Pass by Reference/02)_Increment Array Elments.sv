// Increment Array Elements
module increment_array;
  int arr[] = '{1, 2, 3, 4, 5};

  task automatic inc_array(ref int a[]);
    foreach(a[i])
      a[i] = a[i] + 1;
  endtask

  initial begin
    $display("Before: %p", arr);
    inc_array(arr);
    $display("After : %p", arr);
  end
endmodule
