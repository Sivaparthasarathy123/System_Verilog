// Difference between extends and super in SystemVerilog
class Parent;
  int x;

  function new();
    x = 10;
  endfunction
endclass

class Child extends Parent; //defines inheritance
  function new();
    super.new();  // accesses parent implementation
  endfunction
endclass

