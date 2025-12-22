// Constraint Randomization
class Packet;
  rand int addr;

  constraint addr_range {
    addr >= 10;
    addr <= 50;}

  function void display();
    $display("Addr = %0d", addr);
  endfunction
endclass

module constraint_tb;
  Packet p;
  
  initial begin
    p = new();
    p.randomize();
    p.display();
  end
endmodule
