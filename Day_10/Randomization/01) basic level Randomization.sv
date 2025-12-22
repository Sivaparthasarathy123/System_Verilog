// Basic level Randomization
class Packet;
  rand int value;

  function void display();
    $display("Random Value = %0d", value);
  endfunction
endclass

module random_tb;
  Packet p;

  initial begin
    p = new();
    repeat (5) begin
      p.randomize();
      p.display();
    end
  end
endmodule
