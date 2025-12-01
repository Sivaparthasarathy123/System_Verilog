//2D array (4×4) and print it using foreach(i,j) loops.
module foreach_2D_array;
  int arr[4][4];
  
  initial begin
    foreach(arr[i,j])begin
      arr[i][j] = i + j;
      $display("Printing the numbers = %0p", i, j, arr);
    end
    
    foreach(arr[i,j])begin
      $write("%0d ", arr[i][j]);
       if(j == 3) $write("\n");
    end
  end
endmodule

