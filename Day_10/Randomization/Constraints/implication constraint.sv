// implication constraint
class Packet;
  randc bit is_control;
  randc int size;

  constraint imp_c {
    is_control -> size inside {[1:64]};}

  function void display();
    $display("is_control=%0b size=%0d", is_control, size);
  endfunction
endclass

module implication;
  initial begin
    Packet p = new();
    repeat (5) begin
      p.randomize();
      p.display();
    end
  end
endmodule
