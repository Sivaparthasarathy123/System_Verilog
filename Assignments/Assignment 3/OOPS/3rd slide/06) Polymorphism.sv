// Polymorphism
class Parent;
  virtual function void display();
    $display("Parent display");
  endfunction
endclass

class Child extends Parent;
  function void display();
    $display("Child display");
  endfunction
endclass

module polymorphism;
  Parent p;  
  Child c;
  initial begin
    c = new;   
    c.display();     
  end
endmodule
