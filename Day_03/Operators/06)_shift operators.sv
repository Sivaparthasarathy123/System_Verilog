//Shift operators
module shift_ops;
  logic [4:0] a = 5'b10110;

  initial begin
    $display("Left Shift      = %b", a << 1);
    $display("Right Shift     = %b", a >> 1);
    $display("Arith Left      = %b", a <<< 2);
    $display("Arith Right     = %b", a >>> 2);
  end
endmodule
