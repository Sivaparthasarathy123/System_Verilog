// Add integer using pass by value
module add_integer_pass_value;
  int a = 20;

  task add10(input int x);
    x = x + 10;
    $display("Inside task: x = %0d", x);
  endtask

  initial begin
    add10(a);
    $display("Outside task: a = %0d", a);
  end
endmodule
