// Virtual class Polymorphism
class Base;
  virtual function void display();
    $display("Base display");
  endfunction
endclass

class Derived extends Base;
  function void display();
    $display("Derived display");
  endfunction
endclass

module virtual_class;
  initial begin
    Base b;
    Derived d = new();
    b = d;
    b.display();
  end
endmodule
