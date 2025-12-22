// Constraint Control
class control;
  rand int x;

  constraint c1 { x > 10; }
endclass

module control_tb;
  control c = new();

  initial begin
    c.c1.constraint_mode(0); 
    c.randomize();
    $display("x = %0d", c.x);
  end
endmodule
