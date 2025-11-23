//bit reversing
`timescale 1ns/1ps
module reverse_packed_array;
  bit [7:0] data = 8'b1011_0010;
  bit [7:0] rev;

  integer i;

  initial begin
    for(i = 0; i < 8; i++)
      rev[i] = data[7-i];

    $display("Given Data = %b", data);
    $display("Reversed Data = %b", rev);
  end
endmodule
