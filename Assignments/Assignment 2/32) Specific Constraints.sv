// Specific Constraints
class array_2d_c;
  rand int arr[][];
  
  // Creating Size Constraint
  constraint size_c {
    arr.size() == 3;
    foreach (arr[i])
      arr[i].size() == 4;
  }

  // Element range constraint
  constraint range_c {
    foreach (arr[i, j])
      arr[i][j] inside {[10:99]};
  }

  // Row-wise sorting constraint
  constraint row_sort_c {
    foreach (arr[i, j]) {
      if (j > 0)
        arr[i][j] >= arr[i][j-1];
    }
  }
endclass

module specific_constraint_tb;
  initial begin
    array_2d_c a = new();
    a.randomize();
    $display("Sorted array = %p", a.arr);
  end
endmodule
