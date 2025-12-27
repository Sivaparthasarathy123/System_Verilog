// soft constraint
class Packet;
  rand int size;

  constraint soft_c {
    soft size == 64;}
endclass

module soft_constraint;
  initial begin
    Packet p = new();

    p.randomize();
    $display("Default size=%0d", p.size);
    
    repeat (5) begin
      p.randomize() with { size inside {[100:128]};};
      $display("Overridden size=%0d", p.size);
    end
  end
endmodule
