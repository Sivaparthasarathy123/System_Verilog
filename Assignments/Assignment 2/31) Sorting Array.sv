// Sorting Array
class sort_array;
  rand int arr[];

  // Array Size
  constraint size_c {
    arr.size() == 5;
  }

  // ascending order sorting
  constraint sort_c {
    foreach (arr[i]) {
      if (i > 0)
        arr[i] >= arr[i-1];
    }
  }
endclass

module sort_array_tb;
  initial begin
    sort_array sa = new();
    sa.randomize();
    $display("Sorted array = %p", sa.arr);
  end
endmodule
