// Simple Inheritance without super
class Vehicle;
  int speed;

  function void set_speed(int s);
    speed = s;
  endfunction

  function void display();
    $display("Speed = %0d", speed);
  endfunction
endclass

class Car extends Vehicle;
  string model;

  function void set_model(string m);
    model = m;
  endfunction

  function void show();
    display(); // parent method
    $display("Model = %s", model);
  endfunction
endclass

module tb;
  initial begin
    Car c = new();
    c.set_speed(120);
    c.set_model("Ford");
    c.show();
  end
endmodule
