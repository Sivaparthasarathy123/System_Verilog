`timescale 1ns/1ps
module packed_2D_array;
  logic [3:0][3:0] data = '{ 4'b1101,
                             4'b0110,
                             4'b0011,
                             4'b1010 };

  initial begin
    logic [3:0] row1 = data[1];        
    logic [3:0] col2;                
   
    for (int i = 0; i < 4; i++)
      col2[i] = data[i][2];

    $display("Row 1 = %b", row1);
    $display("Column 2 = %b", col2);
  end
endmodule
