// Nested objects
class Engine;
  int power;

  function new(int p);
    power = p;
  endfunction
endclass

class Car;
  string model;
  Engine e;

  function new(string m, int p);
    model = m;
    e = new(p); 
  endfunction
endclass

module test;
  Car c1;

  initial begin
    c1 = new("Toyota", 120);

    $display("Car Model: %s", c1.model);
    $display("Engine Power: %0d HP", c1.e.power);
  end
endmodule
