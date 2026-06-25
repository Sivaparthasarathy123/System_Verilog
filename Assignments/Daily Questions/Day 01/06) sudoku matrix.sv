// sudoku matrix
class sudoku_optimized;
  rand int grid[9][9];
  
  int col_values[9];
  int box_values[9];
  int idx;
  
  constraint row_unique {
    foreach (grid[i]) 
      unique { grid[i] };  
  }
  
  constraint col_unique {
    foreach (grid[i]) {
      foreach (grid[j]) 
        col_values[j] = grid[j][i];
      unique { col_values };  
    }
  }
  
  constraint box_unique {
    foreach (grid[br, bc]) {  
      idx = 0;
      foreach (grid[i, j]) {
        if (i/3 == br && j/3 == bc) {
          box_values[idx++] = grid[i][j];
        }
      }
      unique { box_values };
    }
  }
  
  function void print_all();
    $display("\n---------------------------");
    $display("      SUDOKU GRID");
    
    for (int i = 0; i < 9; i++) begin
      if (i % 3 == 0) $display("+-----+-----+-----+");
      
      for (int j = 0; j < 9; j++) begin
        if (j % 3 == 0)
          $write("| ");
        $write("%0d ", grid[i][j]);
        if (j == 8) 
          $write("|");
      end
      $display("");
    end
    $display("+-----+-----+-----+");
  endfunction
endclass

// Testbench
module sudoku_tb;
  sudoku_optimized s;
  
  initial begin
    s = new();
    $display("------ COMBINED RANDOMIZATION TEST ------");

    repeat (3) begin
      if (s.randomize()) begin
        s.print_all();
      end else begin
        $error("Combined randomization failed");
      end
    end
  end
endmodule
