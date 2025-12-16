// Cast in polymorphism
class Parent;
  virtual function void show();
    $display("Parent show");
  endfunction
endclass

class Child extends Parent;
  function void show();
    $display("Child show");
  endfunction

  function void child_only();
    $display("Child specific method");
  endfunction
endclass

module cast;
  initial begin
    Parent p; 
    Child c = new();
    p = c;

    if ($cast(c, p)) begin
      c.child_only();
    end
  end
endmodule

