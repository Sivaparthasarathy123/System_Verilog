// Cast failing in polymorphism
class Parent;
  virtual function void display();
    $display("Parent display");
  endfunction
endclass

// Child class
class Child extends Parent;
  function void child_only();
    $display("Child only method");
  endfunction
endclass

class Child2 extends Parent;
  function void bark();
    $display("Child2 sounds");
  endfunction
endclass

module cast_fail;
  Parent p;
  Child  c;

  initial begin
    Child2 d = new();
    p = d;

    if ($cast(c, p)) begin
      c.child_only();  
    end else begin
      $display("Cast failed safely!");  
    end
  end
endmodule
