// Access Specifiers
class Base;
  int a;              // public
  protected int b;    // protected
  local int c;        // local

  function new();
    a = 10;
    b = 20;
    c = 30;
  endfunction
endclass

class Derived extends Base;
  function void display();
    $display("a = %0d", a); // accessible
    $display("b = %0d", b); // accessible
    // $display("c = %0d", c); // NOT accessible
  endfunction
endclass

module access_specifier;
  initial begin
    Derived d = new();
    d.display();
  end
endmodule
