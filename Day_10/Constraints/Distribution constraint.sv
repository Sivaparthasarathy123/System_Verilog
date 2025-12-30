// Distribution Constraint 
class Packet;
  rand int value;  

  constraint dist_c {
    value dist {0 := 70, 1 := 20, 2 := 10};}

  function void display();
    $display("value = %0d", value);
  endfunction
endclass

module distribution;
  initial begin
    Packet p = new();

    repeat (10) begin
      if (!p.randomize())
        $display("Randomization Failed");
      else
        p.display();
    end
  end
endmodule
