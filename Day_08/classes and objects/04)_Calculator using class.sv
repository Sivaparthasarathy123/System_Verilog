// Calculator using class
class Calculator;
  function int add(int a, b);
    return a + b;
  endfunction

  function int mul(int a, b);
    return a * b;
  endfunction
endclass

module test;
  Calculator c;

  initial begin
    c = new();
    $display("Add = %0d", c.add(16, 11));
    $display("Mul = %0d", c.mul(12, 12));
  end
endmodule
