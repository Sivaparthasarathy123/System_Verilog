// unique constraint
class Packet;
  rand int data[4];

  constraint unique_c {
    unique {data};}
endclass

module unique_cons;
  initial begin
    Packet p = new();
    p.randomize();
    $display("data=%p", p.data);
  end
endmodule
