// Allowed values
class gen_values;
  randc int x;

  constraint allowed_values {
    x inside {25, 27, 30, 36, 40, 45};
  }

  function void print();
    $display("Randomized value = %0d", x);
  endfunction
endclass

//Testbench
module gen_values_tb;
  gen_values g;

  initial begin
    g = new();

    repeat (10) begin
      g.randomize();
      g.print();
    end
  end
endmodule
