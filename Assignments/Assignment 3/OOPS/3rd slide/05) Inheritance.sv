// Inheritance
class Parent;
  int a = 10;
endclass

class Child extends Parent;
  function void display();
    $display("a = %0d", a);
  endfunction
endclass

module inheritance_tb;
  Child c;
  
  initial begin
    c = new();
    c.display();
  end
  
endmodule
