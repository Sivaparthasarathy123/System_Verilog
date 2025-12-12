// Packet array
class Packet;
  int id;

  function new(int i);
    id = i;
  endfunction
endclass

module test;
  Packet p[5];

  initial begin
    foreach(p[i]) begin
      p[i] = new(i*10);
      $display("Packet[%0d].id = %0d", i, p[i].id);
    end
  end
endmodule
