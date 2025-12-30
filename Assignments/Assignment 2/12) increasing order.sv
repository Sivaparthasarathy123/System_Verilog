// increasing order
module increasing_order;

  class inc_value;
    randc int arr[5]; 

    constraint increasing_c {
  foreach(arr[i])
    if (i > 0)
      arr[i-1] < arr[i];}

  endclass

  inc_value inc;

  initial begin
    inc = new();

    if (inc.randomize()) begin
      $display("Generated increasing array: %p", inc.arr);
    end else begin
      $display("Randomization failed!");
    end
  end
endmodule
