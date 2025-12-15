//implicit constructor with counter
class Counter;
  static int total;
  int id;
endclass

module tb;
  Counter c1, c2;

  initial begin
    c1 = new();        // implicit constructor
    c1.id = 1;
    Counter::total++;

    c2 = new();        // implicit constructor
    c2.id = 2;
    Counter::total++;

    $display("c1 id = %0d", c1.id);
    $display("c2 id = %0d", c2.id);
    $display("Total objects = %0d", Counter::total);
  end
endmodule
