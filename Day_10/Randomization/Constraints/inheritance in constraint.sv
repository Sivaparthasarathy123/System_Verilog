// Inheritance in constraint
class Base;
  rand int size;

  constraint base_c {
    size inside {[64:420]};}
endclass

class SmallPacket extends Base;

  constraint small_c {
    size < 128;}
endclass

module inheritance;
  Base b;
  SmallPacket p;

  initial begin
    b = new();
    p = new();

    if (b.randomize())
      $display("Base size = %0d", b.size);

    if (p.randomize())
      $display("SmallPacket size = %0d", p.size);
  end
endmodule
