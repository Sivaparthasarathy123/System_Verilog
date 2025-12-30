// Bidirectional constraint
class Packet;
  randc int a;
  randc int b;

  constraint range_c {
    a inside {[0:10]};
    b inside {[0:10]};}

  constraint sum_c {
    a + b == 10;}

  function void display();
    $display("a=%0d b=%0d sum=%0d", a, b, a+b);
  endfunction
endclass

module Bidirectional;
  initial begin
    Packet p = new();
    repeat (5) begin
      p.randomize();
      p.display();
    end
  end
endmodule
