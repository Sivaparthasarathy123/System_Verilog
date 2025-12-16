// Parent Handling Child object
class Parent;
  function void show();
    $display("Parent show");
  endfunction
endclass

class Child extends Parent;
  function void show();
    $display("Child show");
  endfunction
endclass

module parent_handle;
  initial begin
    Parent p;
    Child c;
    c = new();
    p = c;  
    p.show();
  end
endmodule
