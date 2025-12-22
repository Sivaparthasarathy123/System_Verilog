// Multiple Constraint
class Packet;
  rand int a, b;

  constraint c1 { a inside {[1:10]}; }
  constraint c2 { b == a * 2; }

  function void display();
    $display("a=%0d b=%0d", a, b);
  endfunction
endclass

module random_tb;
  Packet p;
  
  initial begin
    p = new();
    p.randomize();
    p.display();
  end
  
endmodule
