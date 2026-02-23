// Abstract Class and Pure Virtual
virtual class Vehicle;
  string brand;

  function void set_brand(string name);
    brand = name;
  endfunction

  pure virtual function void drive(); 
endclass

class Car extends Vehicle;
  
  virtual function void drive();
    $display("%s Car is driving on the road.", brand);
  endfunction
endclass

class Boat extends Vehicle;
  
  virtual function void drive();
    $display("%s Boat is sailing on water.", brand);
  endfunction
endclass

module Vehicle_tb;
  initial begin
    Vehicle v_h; 
    
    Car my_car = new();
    Boat my_boat = new();

    my_car.set_brand("Tesla");
    my_boat.set_brand("Yamaha");
    
    v_h = my_car; 
    v_h.drive(); 

    v_h = my_boat;
    v_h.drive(); 
  end
endmodule
