// Queens Move
class NQueens;

  parameter N = 8;
  rand int queen_col[N];

  constraint c_range {
    foreach (queen_col[i])
      queen_col[i] inside {[0:N-1]};
  }

  constraint c_unique {
    unique {queen_col};
  }

  constraint c_diag {
    foreach (queen_col[i])
      foreach (queen_col[j])
        if (i != j)
          (i-j)*(i-j) != (queen_col[i]-queen_col[j])*(queen_col[i]-queen_col[j]);
  }

endclass

// testbench
module Move;

  initial begin
    NQueens q = new();

    repeat (5) begin
      if (q.randomize()) begin
        $display("\nQueen positions (row -> column):");
        foreach (q.queen_col[i])
          $display("Row %0d -> Column %0d", i, q.queen_col[i]);
      end
      else
        $display("Randomization failed!");
    end
  end

endmodule
