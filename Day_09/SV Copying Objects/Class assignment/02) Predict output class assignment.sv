// Predict output class assignment
class Item;
  int x, y;
endclass

module predict;
  Item i1, i2;

  initial begin
    i1 = new();
    i1.x = 5; i1.y = 10;

    i2 = i1;
    $display("Before: i1=%0d %0d", i1.x, i1.y);

    i2.x = 100;
    $display("After:  i1=%0d %0d", i1.x, i1.y);
  end
endmodule
