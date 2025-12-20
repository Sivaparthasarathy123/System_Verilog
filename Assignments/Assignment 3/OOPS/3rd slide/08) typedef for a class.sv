// typedef for a class

class Packet;
  int id;
  string data;
endclass

typedef Packet pkt;

module typedef_tb;
  pkt p1, p2;  

  initial begin
    p1 = new();
    p1.id = 101;
    p1.data = "siva";

    p2 = new();
    p2.id = 102;
    p2.data = "nive";

    $display("Packet1: id=%0d, data=%s", p1.id, p1.data);
    $display("Packet2: id=%0d, data=%s", p2.id, p2.data);
  end
endmodule
