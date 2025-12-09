// Faactorial task
module factorial_task;
  task factorial(input int n, output int result);
    int i;
    result = 1;
    for(i = 1; i <= n; i++)
      result *= i;
  endtask

  int fact;
  initial begin
    factorial(5, fact);
    $display("Factorial = %0d", fact);
  end
endmodule
