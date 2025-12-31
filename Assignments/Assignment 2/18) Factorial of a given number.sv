// Factorial of a given number
class factorial_gen;
  rand int unsigned n;     
    int unsigned fact;      

    constraint n_range_c { n inside {[0:10]}; }

    function int unsigned compute_fact(int unsigned x);
      int unsigned res = 1;
      for (int i = 1; i <= x; i++)
        res *= i;
      return res;
    endfunction

    task compute();
      fact = compute_fact(n);
    endtask

endclass

module factorial_tb;
  factorial_gen f;

  initial begin
    f = new();

    repeat (10) begin
      if (f.randomize()) begin
        f.compute();
        $display("n = %0d, factorial = %0d", f.n, f.fact);
      end else
        $display("Randomization failed!");
    end
  end

endmodule
