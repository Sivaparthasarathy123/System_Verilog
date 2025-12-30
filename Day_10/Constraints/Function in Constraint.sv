// Function in constraint
class Packet;
  randc int size;

  function int max_size();
    return 512;
  endfunction

  constraint func_c {
    size inside {[200 : max_size()]};}
endclass

module func_constraint_tb;
  initial begin
    Packet p = new();
    repeat (3) begin
      p.randomize();
      $display("size = %0d", p.size);
    end
    $display("Maximum allowed size = %0d", p.max_size());
  end
endmodule
