// Inheritance with super
class Employee;
  int id;

  function new(int i);
    id = i;
  endfunction
endclass

class Engineer extends Employee;
  string level;

  function new(int i, string l);
    super.new(i);   // calling parent constructor
    level = l;
  endfunction

  function void display();
    $display("ID = %0d, Level = %s", id, level);
  endfunction
endclass

module constructor_inheritance;
  initial begin
    Engineer e = new(102, "Junior");
    e.display();
  end
endmodule
