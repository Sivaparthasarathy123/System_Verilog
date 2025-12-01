//Declare a 1D array of 10 elements. Use foreach
module foreach_square;
  int arr[10];

  initial begin
    foreach(arr[i])begin
      arr[i] = i*i;
      $display("arr[%0d] = %0d", i, arr[i]);
    end
  end
endmodule
