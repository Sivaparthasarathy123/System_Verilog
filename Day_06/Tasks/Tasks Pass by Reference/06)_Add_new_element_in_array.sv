// Add new element in the array
module dynamic_add;
  int d_arr[];  

  task automatic add_random(ref int arr[]);
    arr = {arr, $urandom_range(1,99)};
  endtask

  initial begin
    
    d_arr = new[3];
    d_arr = '{10, 20, 30};

    $display("Before: %p", d_arr);
    add_random(d_arr);
    $display("After : %p", d_arr);
  end
endmodule
