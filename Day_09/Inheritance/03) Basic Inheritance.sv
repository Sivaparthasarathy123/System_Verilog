// Basic Inheritance
class Employee;
  string name;

  function void set_name(string n);
    name = n;
  endfunction

  function void display();
    $display("Employee Name = %s", name);
  endfunction
endclass

class Engineer extends Employee;
  string domain;

  function void set_domain(string d);
    domain = d;
  endfunction

  function void show();
    display(); // reused parent method
    $display("Engineer Domain = %s", domain);
  endfunction
endclass

module tb_basic_inheritance;
  initial begin
    Engineer e = new();
    e.set_name("Siva");
    e.set_domain("VLSI Verification");
    e.show();
  end
endmodule
