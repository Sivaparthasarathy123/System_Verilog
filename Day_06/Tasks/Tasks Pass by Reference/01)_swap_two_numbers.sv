//swap two numbers
module swap_ref;
  int a = 10;
  int b = 20;

  task automatic swap(ref int x, ref int y);
    int temp;
    temp = x;
    x = y;
    y = temp;
  endtask

  initial begin
    $display("Before Swap: a = %0d, b = %0d", a, b);
    swap(a, b);
    $display("After Swap : a = %0d, b = %0d", a, b);
  end
endmodule
