// Method overriding
class Employee;
  function void display();
    $display("Employee Display");
  endfunction
endclass

class Engineer extends Employee;
  function void display(); // overridden method
    $display("Engineer Display");
  endfunction
endclass

module tb_method_override;
  initial begin
    Engineer e = new();
    e.display(); // calls Engineer display
  end
endmodule
