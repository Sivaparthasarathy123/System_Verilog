// Function reference for swap numbers
module swap_reference;
  int a = 4;
  int b = 5;

  // Pass-by-reference function
  function void swap(ref int x, ref int y);
    int temp;
    temp = x;
    x = y;
    y = temp;
    $display("Inside function: x = %0d, y = %0d", x, y);
  endfunction

  initial begin
    $display("Before calling: a = %0d, b = %0d", a, b);

    swap(a, b);

    $display("After calling : a = %0d, b = %0d", a, b);
  end
endmodule
