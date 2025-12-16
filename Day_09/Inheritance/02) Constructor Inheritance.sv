// Constructor Inheritance
class Parent;
  int a;

  function new(int x);
    a = x;
  endfunction
endclass

class Child extends Parent;
  int b;

  function new(int x, int y);
    super.new(x);  
    b = y;
  endfunction
endclass

module constructor_tb;
  Child c;
  
  initial begin
    c = new(6, 7);

    $display("Parent value a = %0d", c.a);
    $display("Child  value b = %0d", c.b);
  end
endmodule
