// Constraint mode
class Packet;
  rand int size;

  constraint size_c1 { size inside {[64:512]}; }
  constraint size_c2 { size inside {[1024:1500]}; }

  function void display(string tag);
    $display("[%s] size = %0d", tag, size);
  endfunction
endclass

module constraint_mode;
  Packet p;

  initial begin
    p = new();

    p.size_c2.constraint_mode(0); 
    p.size_c1.constraint_mode(1); 

    assert(p.randomize());
    p.display("Normal Packet");

    p.size_c1.constraint_mode(0); 
    p.size_c2.constraint_mode(1); 

    assert(p.randomize());
    p.display("Large Packet");

    p.size_c1.constraint_mode(1);
    p.size_c2.constraint_mode(1);

    if (!p.randomize())
      $display("Randomization failed");

  end
endmodule
