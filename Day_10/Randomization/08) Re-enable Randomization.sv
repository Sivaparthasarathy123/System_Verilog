// Re-enable Randomization using rand_mode(1)
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
    p.randomize();
    $display("After disable: addr = %0d, data = %0d", p.addr, p.data);

    p.addr.rand_mode(1);
    p.randomize();
    $display("After enable : addr=%0d, data = %0d", p.addr, p.data);
  end

endmodule
