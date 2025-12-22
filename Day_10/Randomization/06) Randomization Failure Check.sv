// Randomization Failure Check
class Packet;
  rand int x;

  // Conflicting constraints
  constraint c1 { x > 50; }
  constraint c2 { x < 10; }

  function void display();
    $display("x = %0d", x);
  endfunction
endclass

module random_fail;
  Packet p;

  initial begin
    p = new();
    p.c1.constraint_mode(0);

    if (p.randomize()) begin
      $display("Randomization Failed");
    end
    else begin
      p.display();
    end
  end
endmodule
