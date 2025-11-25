// 2D unpacked array-sum of diagonal elements 
`timescale 1ns/1ps
module diag_anti_diag_sum;
  int mat[3][3] = '{ '{1, 2, 3},
                     '{4, 5, 6},
                     '{7, 8, 9} };

  int sum = 0;
  int anti_sum = 0;

  initial begin
    for (int i = 0; i < 3; i++)
      sum += mat[i][i];
    for (int i = 0; i < 3; i++)
      anti_sum += mat[i][2-i];

    $display("Matrix:");
    foreach(mat[i, j])
      $display("mat[%0d][%0d] = %0d", i, j, mat[i][j]);

    $display("Diagonal Sum = %0d", sum);
    $display("Antidiagonal sum = %0d", anti_sum);
  end
endmodule
