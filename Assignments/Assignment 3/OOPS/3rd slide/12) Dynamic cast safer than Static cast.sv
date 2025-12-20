// Why dynamic_cast is safer than static_cast
class Parent;
endclass

class Child extends Parent;
  function void child_task();
    $display("Child task");
  endfunction
endclass

module safer_cast;
  Parent p;
  Child c;

  initial begin
    p = new();
    
    if ($cast(c, p))
      c.child_task();
    else
      $display("Safe cast failed");
  end
endmodule
