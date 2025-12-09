// Maximum of three numbers
module max_three;
  task max3(input int a, b, c, output int max);
    max = a;
    if(b > max) max = b;
    if(c > max) max = c;
  endtask

  int m;
  initial begin
    max3(10, 7, 15, m);
    $display("Max = %0d", m);
  end
endmodule
