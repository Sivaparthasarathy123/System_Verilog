//static packed array,Bit slicing & Part select
`timescale 1ns/1ps
module packed_array_example;
  logic [7:0] data = 8'b1101_0110;

  initial begin
    $display("Packed Array = %b", data);
    $display("Bit Slice data[0] = %b", data[0]);
    $display("Part Select data[7:4] = %b", data[7:4]);
    $display("Concatenation {data[3:0], data[7:4]} = %b", {data[3:0], data[7:4]});
  end
endmodule
