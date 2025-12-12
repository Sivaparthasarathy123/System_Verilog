// Parameterized constructor
class Employee;
  string name;
  int salary;

  function new(string n, int s);
    name = n;
    salary = s;
  endfunction
endclass

module test;
  Employee e1, e2, e3;

  initial begin
    e1 = new("saron", 30000);
    e2 = new("siva", 45000);
    e3 = new("Nive", 50000);

    $display("%s earns %0d", e1.name, e1.salary);
    $display("%s earns %0d", e2.name, e2.salary);
    $display("%s earns %0d", e3.name, e3.salary);
  end
endmodule
