// Shallow copy usage
class Header;
  int addr;
endclass

class Packet;
  Header h;
  
  function new(); 
    h = new(); 
  endfunction

  function void copy(Packet p);
    h = p.h;   
  endfunction
endclass

module tb;
  Packet p1, p2;

  initial begin
    p1 = new(); 
    p1.h.addr = 97;
    p2 = new(); 
    p2.copy(p1);

    p2.h.addr = 102;
    $display("p1 addr = %0d", p1.h.addr);
  end
endmodule
