// Scope of static variable vs instance variable in a class
class Counter;
  static int total_count;
  int id;

  function new(int i);
    id = i;
    total_count++;
  endfunction
endclass

module tb;
  Counter c1, c2;
  initial begin
    c1 = new(1);
    c2 = new(2);
    $display("Total objects = %0d", Counter::total_count);
    $display("c1 id = %0d", c1.id);
    $display("c2 id = %0d", c2.id);
  end
endmodule
