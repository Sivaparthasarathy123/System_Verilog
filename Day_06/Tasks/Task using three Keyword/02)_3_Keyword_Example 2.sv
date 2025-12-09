// Three Keyword example 2
module task_example;

  int x = 5;
  int y = 10;
  int z;

  task compute(input int a, inout int b, output int result);
    b = b + a;         
    result = a * b;   
  endtask

  initial begin
    compute(x, y, z);
    $display("x=%0d y=%0d z=%0d", x, y, z);
  end
endmodule
