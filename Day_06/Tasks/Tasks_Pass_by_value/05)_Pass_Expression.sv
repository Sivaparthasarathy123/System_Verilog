// Pass expression
module pass_expression;
  int a = 10;

  task pass_value(input int x);
    x = x + 20;
    $display("Inside task: x = %0d", x);
  endtask

  initial begin
    // Passing expression a+5
    pass_value(a + 5);

    $display("Outside task: a = %0d", a);
  end

endmodule
