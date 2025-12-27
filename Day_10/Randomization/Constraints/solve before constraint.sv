// solve before constraint
class Packet;
  rand int size;
  rand int payload;

  constraint size_c {
    size inside {[10:20]};}

  constraint order_c {
    solve size before payload;
    payload == size * 2;}
endclass

module solve_before;
  initial begin
    Packet p = new();

    repeat (5) begin
      assert(p.randomize());
      $display("size=%0d payload=%0d", p.size, p.payload);
    end
  end
endmodule
