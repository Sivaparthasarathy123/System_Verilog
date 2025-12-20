// Declaring a static property or method inside a class
class Counter;
  static int count = 0;

  static function void increment();
    count++;
  endfunction
endclass

module tb;
  initial begin
    Counter::increment();
    Counter::increment();
    $display("Count = %0d", Counter::count);
  end
endmodule
