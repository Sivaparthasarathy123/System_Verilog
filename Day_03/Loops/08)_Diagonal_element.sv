//diagonal element print
module diagonal_print;
  int mat[4][4];

  initial begin
    foreach (mat[i,j]) begin
      mat[i][j] = i + j;
      if(i == j)
        $display("Diagonal: mat[%0d][%0d] = %0d", i, j, mat[i][j]);
    end
  end
endmodule
