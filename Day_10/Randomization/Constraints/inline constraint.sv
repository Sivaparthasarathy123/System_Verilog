// inline constraint
class packet;
  rand int size1;
  rand int size2;

  constraint size1_c { size1 inside {[100:200]}; }
  constraint size2_c { size2 inside {[10:80]}; }
endclass


module inline_constraint;
  packet p;

  initial begin
    p = new();

    repeat (5) begin
      p.randomize();
      $display("Before inline constraint : size1=%0d size2=%0d", p.size1, p.size2);

      // Inline constraint on val1
      p.randomize() with {size1 inside {[150:160]};};
      $display("After inline constraint (size1) : size1=%0d size2=%0d", p.size1, p.size2);

      // Inline constraint on val2
      p.randomize() with {size2 inside {[20:30]};};
      $display("After inline constraint (size2) : size1=%0d size2=%0d", p.size1, p.size2);
    end
  end
endmodule
