// Super keyword
class Employee;
  function void display();
    $display("Employee Information");
  endfunction
endclass

class Engineer extends Employee;
  function void display();
    super.display(); // call parent method
    $display("Engineer Information");
  endfunction
endclass

module super_keyword;
  initial begin
    Engineer e = new();
    e.display();
  end
endmodule
