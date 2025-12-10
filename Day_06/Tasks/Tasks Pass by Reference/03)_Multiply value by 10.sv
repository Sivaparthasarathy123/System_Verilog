// Multiply value by 10
module multiply_value;
  int value = 7;

  task automatic multiply(ref int v);
    v = v * 10;
  endtask

  initial begin
    $display("Before: value = %0d", value);
    multiply(value);
    $display("After : value = %0d", value);
  end
endmodule
