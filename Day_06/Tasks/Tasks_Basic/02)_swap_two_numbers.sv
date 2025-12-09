// Swap two numbers
module swap_variables;
  task swap(inout int x, inout int y);
    int temp;
    temp = x;
    x = y;
    y = temp;
  endtask

  int a = 5, b = 9;

  initial begin
    $display("Before: a=%0d b=%0d", a, b);
    swap(a, b);
    $display("After : a=%0d b=%0d", a, b);
  end
endmodule
