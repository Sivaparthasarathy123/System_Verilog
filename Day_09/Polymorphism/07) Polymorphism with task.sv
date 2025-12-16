// Polymorphism with task
class Base;
  virtual task run();
    $display("Base run");
  endtask
endclass

class Derived extends Base;
  task run();
    $display("Derived run");
  endtask
endclass

module task_polymorphism;
  initial begin
    Base b;
    Derived d = new();
    b = d;
    b.run();
  end
endmodule
