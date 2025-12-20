// Inheritance and Polymorphism

class Parent; // Inheritance
  int marks = 90;

  function void display();
    $display("Marks = %0d", marks);
  endfunction
endclass

class Child extends Parent;
  // Reusing Parents property and method
endclass

module inheritance_tb;
  initial begin
    Child c = new();
    c.display();   // uses Parents method
  end
endmodule

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

  initial begin
    p = new Child();   
    p.display();     
  end
endmodule
