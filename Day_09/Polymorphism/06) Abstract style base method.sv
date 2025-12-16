// Abstract style base method
class Base;
  virtual function void execute();
  endfunction
endclass

class Various extends Base;
  function void execute();
    $display("Implementation execute");
  endfunction
endclass

module abstract_style;
  initial begin
    Base b; 
    Various v = new();
    b = v;
    b.execute();
  end
endmodule
