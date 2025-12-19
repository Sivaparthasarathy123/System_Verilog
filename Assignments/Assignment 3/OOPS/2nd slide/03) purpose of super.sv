// Purpose of super in SystemVerilog inheritance
class Base;
  function void display();
    $display("Base display");
  endfunction
endclass

class Derived extends Base;
  function void display();
    super.display();   
    $display("Derived display");
  endfunction
endclass
