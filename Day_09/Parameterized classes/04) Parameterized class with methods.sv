// Parameterized class with methods
class Calculator #(type T);
  T a, b;

  function new(T x, T y);
    a = x;
    b = y;
  endfunction

  function T add();
    return a + b;
  endfunction
endclass

module tb;
  initial begin
    Calculator #(int)  c1 = new(10, 20);
    Calculator #(real) c2 = new(1.5, 2.5);

    $display("Int sum  = %0d", c1.add());
    $display("Real sum = %0f", c2.add());
  end
endmodule
