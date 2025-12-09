//task simple
module addition;
  int a, b;
  int out;
  
  task sum(input int a, input int b, output int out);
    out = a + b;
  endtask
  
  initial begin
    a = 5;
    b = 6;
    sum(a, b, out);
    $display("Result: a=%0d, b=%0d, out=%0d", a, b, out);
  end
endmodule
