// Deep Copy Nested Class
class Header;
  int addr;

  function void copy(Header h);
    addr = h.addr;
  endfunction
endclass

class Packet;
  int id;
  Header h;

  function new();
    h = new();
  endfunction

  function void copy(Packet p);
    id = p.id;
    h.copy(p.h);
  endfunction
endclass

module tb;
  Packet p1, p2;

  initial begin
    p1 = new();
    p1.id = 1;
    p1.h.addr = 100;

    p2 = new();
    p2.copy(p1);

    p2.h.addr = 200;

    $display("p1 addr = %0d", p1.h.addr);
    $display("p2 addr = %0d", p2.h.addr);
  end
endmodule
