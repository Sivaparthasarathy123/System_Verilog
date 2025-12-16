// Runtime binding in polymorphism
class Animal;
  virtual function void sound();
    $display("Animal sound");
  endfunction
endclass

class Dog extends Animal;
  function void sound();
    $display("Dog barks");
  endfunction
endclass

class Cat extends Animal;
  function void sound();
    $display("Cat meows");
  endfunction
endclass

module runtime_binding;
  Animal a;
  Dog d;
  Cat c;
  
  initial begin
    d = new();
    a = d;
    a.sound();

    c = new();
    a = c;
    a.sound();
  end
endmodule
