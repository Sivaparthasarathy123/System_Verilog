// Constructor example
class Counter;
  int count;

  // Constructor
  function new(int c);
    count = c; 
  endfunction
endclass

module test;
  Counter c1;

  initial begin
    c1 = new(10);
    $display("Initial Count = %0d", c1.count);
  end
endmodule
