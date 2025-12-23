// Disable Randomization of a Variable
class Packet;
  rand int addr;
  rand int data;

  function void display();
    $display("addr = %0d, data = %0d", addr, data);
  endfunction
endclass

module rand_mode;
  Packet p;

  initial begin
    p = new();

    p.addr.rand_mode(0);

    repeat (3) begin
      p.randomize();
      p.display();
    end
  end
endmodule
