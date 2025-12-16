// Super keyword in polymorphism
class Parent;
  virtual function void display();
    $display("Parent display");
  endfunction
endclass

class Child extends Parent;
  function void display();
    super.display();
    $display("Child display");
  endfunction
endclass

module super_Keyword;
  initial begin
    Parent p; 
    Child c = new();
    p = c;
    p.display();
  end
endmodule
