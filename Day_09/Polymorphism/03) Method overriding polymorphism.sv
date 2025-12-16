// Method overriding polymorphism
class Parent;
  virtual function int get_value();
    return 10;
  endfunction
endclass

class Child extends Parent;
  function int get_value();
    return 20;
  endfunction
endclass

module override;
  initial begin
    Parent p;
    Child d = new();
    p = d;
    $display("Value = %0d", p.get_value());
  end
endmodule
