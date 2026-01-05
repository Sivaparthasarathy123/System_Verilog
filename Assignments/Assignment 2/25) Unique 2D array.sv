// Unique 2D array
class unique_2d;
  rand int arr[3][3];

  constraint c_range {
    foreach (arr[i,j])
      arr[i][j] inside {[1:100]};
  }

  constraint c_unique {
    foreach (arr[i,j])
      foreach (arr[x,y])
        if (!(i == x && j == y))
          arr[i][j] != arr[x][y];
  }
endclass

module unique_array;
  initial begin
    unique_2d u = new();
    u.randomize();
    foreach (u.arr[i,j])
      $display("arr[%0d][%0d] = %0d", i, j, u.arr[i][j]);
  end
endmodule
