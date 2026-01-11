// if else constraint
  class Packet;
  randc int size;
  randc bit is_small;

  constraint size_c {
    if (is_small)
      size < 64;
    else
      size >= 64 && size <= 1500;}

  function void display();
    $display("is_small=%0b size=%0d", is_small, size);
  endfunction
endclass

module if_else;
  initial begin
    Packet p = new();
    repeat (5) begin
      p.randomize();
      p.display();
    end
  end
endmodule
