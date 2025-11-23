// Static Array unpacked

`timescale 1ns/1ps
module static_unpacked_array;
  int arr[8] = '{1,2,3,4,5,6,7,8};
 initial begin
    $display("Static Unpacked Array:");
    foreach(arr[i])
      $display("arr[%0d] = %0d", i, arr[i]);
  end
endmodule
