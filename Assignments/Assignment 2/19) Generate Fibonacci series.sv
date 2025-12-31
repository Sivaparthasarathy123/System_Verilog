// Generate Fibonacci series 
class fib_gen;
  rand int unsigned n0, n1;  
    int unsigned fib[10];       

    constraint first_two_c {
      n0 inside {[0:10]};
      n1 inside {[0:10]};
    }
    task compute_fib();
      fib[0] = n0;
      fib[1] = n1;
      for (int i = 2; i < 10; i++)
        fib[i] = fib[i-1] + fib[i-2];
    endtask

endclass

module fibonacci_tb;
  fib_gen f;

  initial begin
    f = new();

    if (f.randomize()) begin
      f.compute_fib();
      $display("Fibonacci series:");
      for (int i = 0; i < 10; i++)
        $display("%0d ", f.fib[i]);
    end 
    else
      $display("Randomization failed!");
  end

endmodule
