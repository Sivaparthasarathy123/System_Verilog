// Polymorphism using Inheritance
class Employee;
  virtual function void role();
    $display("Employee Role");
  endfunction
endclass

class Engineer extends Employee;
  function void role();
    $display("Engineer Role");
  endfunction
endclass

module polymorphism_tb;
  initial begin
    Employee e;
    Engineer eng = new();

    e = eng;      // parent handle using child object
    e.role();     // Displays Engineer role()
  end
endmodule
