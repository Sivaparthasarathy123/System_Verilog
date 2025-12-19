// What happens when a nested object is modified after a shallow copy?
class Header;
  int addr;
endclass

class Packet;
  int id;
  Header h;

  function new();
    h = new();
  endfunction

  function void shallow_copy(Packet p);
    id = p.id;
    h  = p.h;   
  endfunction
endclass

module nested_object;
  Packet p1, p2;

  initial begin
    p1 = new();
    p2 = new();

    p1.h.addr = 100;
    p2.shallow_copy(p1);

    p2.h.addr = 200;

    $display("p1 addr = %0d", p1.h.addr); 
    $display("p2 addr = %0d", p2.h.addr); 
  end
endmodule
