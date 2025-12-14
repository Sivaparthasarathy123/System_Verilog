// How are constructors defined in SystemVerilog classes and their purpose
class Packet;
  int size;

  function new(int s);
    size = s;
  endfunction
endclass

module initialize;
  Packet p;
  initial begin
    p = new(64);
    $display("Packet size = %0d", p.size);
  end
endmodule
