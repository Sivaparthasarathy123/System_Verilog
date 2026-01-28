// Magic Square
class Magic_square; 
  rand int m[3][3];
  
  // Limit 1 to 9
  constraint magic_square {
    foreach(m[i,j]) 
      m[i][j] inside {[1:9]};}
    
    constraint u{
      unique {m};}
    
    // Row sums = 15
    constraint row {
    m[0][0] + m[0][1] + m[0][2] == 15;
    m[1][0] + m[1][1] + m[1][2] == 15;
    m[2][0] + m[2][1] + m[2][2] == 15;
    }
    
    // Column sums = 15
    constraint col {
    m[0][0] + m[1][0] + m[2][0] == 15;
    m[0][1] + m[1][1] + m[2][1] == 15;
    m[0][2] + m[1][2] + m[2][2] == 15;
    }
    // Diagonal sums = 15
    constraint diag{
    m[0][0] + m[1][1] + m[2][2] == 15;
    m[0][2] + m[1][1] + m[2][0] == 15;
  }
  
endclass
    
module magic_square_tb;
  
  initial begin
    Magic_square d;
    repeat (5) begin
      d = new();
      d.randomize();
      $display("matrix  = %0p",d.m);
    end
  end
endmodule
    
// Magic Square (Another Method)
// class Magic_square;
//   rand int val[9];  
//   int m[3][3];      

//   // Unique values 1..9
//   constraint val_range {
//     foreach(val[i])
//       val[i] inside {[1:9]};
//   }

//   constraint val_unique {
//     unique {val};
//   }

//   // Using post_randomize to fill the matrix
//   function void post_randomize();
//     int idx = 0;
//     for (int i = 0; i < 3; i++) begin
//       for (int j = 0; j < 3; j++) begin
//         m[i][j] = val[idx];
//         idx++;
//       end
//     end
//   endfunction

// endclass

// module magic_tb;
//   initial begin
//     Magic_square m = new();
//     repeat(5) begin
//       if (m.randomize()) begin
//         $display("Magic Square:");
//         for (int i = 0; i < 3; i++) begin
//           for (int j = 0; j < 3; j++)
//             $write("%0d ", m.m[i][j]);
//           $display("");
//         end
//         $display("");
//       end
//     end
//   end
// endmodule
