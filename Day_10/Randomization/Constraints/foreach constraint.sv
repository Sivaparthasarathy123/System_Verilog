// foreach constraint
class Packet;
  randc int data[5];

  constraint foreach_c {
    foreach (data[i])
      data[i] inside {[0:255]};}

  function void display();
    $display("data=%p", data);
  endfunction
endclass

module foreach_constraint;
  initial begin
    Packet p = new();
    p.randomize();
    p.display();
  end
endmodule
