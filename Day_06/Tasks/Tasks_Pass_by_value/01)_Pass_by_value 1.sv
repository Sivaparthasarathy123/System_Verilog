// Simple pass by value
module pass_by_value;
  int a = 10;

  task pass_value(input int x);
    x = x + 5;
    $display("Inside task: x = %0d", x);
  endtask

  initial begin
    pass_value(a);
    $display("Outside task: a = %0d", a);
  end
endmodule
