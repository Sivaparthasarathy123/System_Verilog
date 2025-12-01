//check max element
module max_in_2D;
  int mat[3][3] = '{ '{5,1,9}, '{4,8,2}, '{3,6,7} };
  int max = 0;
  int maxq [$];

  initial begin
//     foreach(mat[i,j])
//       if(mat[i][j] > max)
//         max = mat[i][j];
//     $display("Max = %0d", max);
//     end
    maxq = mat.max;
    $display("Max = %0p", maxq);
  end
  
endmodule
