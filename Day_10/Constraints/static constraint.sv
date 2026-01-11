//static constraint
class Packet;
  randc static int id;

  static constraint static_id_c {
    id inside {[1:100]};}

  function void display(string name);
    $display("%s : id = %0d", name, id);
  endfunction
endclass


module static_constraint;
  Packet p1, p2;

  initial begin
    p1 = new();
    p2 = new();

    // Randomize p1
    p1.randomize();
    p1.display("p1");

    // Randomize p2
    p2.randomize();
    p2.display("p2");

    // Disable static constraint
    p1.static_id_c.constraint_mode(0);
    p2.static_id_c.constraint_mode(0);

    $display("\nStatic constraint disabled");

    p1.randomize();
    p2.randomize();

    p1.display("p1");
    p2.display("p2");
  end
endmodule
