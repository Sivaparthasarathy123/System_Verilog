// Square pass value
module square_pass_value;
  int a = 4;

  task square(input int x);
    x = x * x;
    $display("Inside task: x = %0d", x);
  endtask

  initial begin
    square(a);
    $display("Outside task: a = %0d", a);
  end
endmodule
