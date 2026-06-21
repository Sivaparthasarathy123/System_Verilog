// 1) The constraint a < c is redundant mathematically (since a=5, c=7). The solver solves constraints bidirectionally. If I change the constraint to solve a before b before c, will the solver fail or behave differently? Why is solve...before generally discouraged?

class tricky;
  rand bit [3:0] a, b, c;
  constraint con {
    a == 5;
    b == a + 1;
    c == b + 1;
    a < c;
  }
endclass

module tricky_tb;
  initial begin
    tricky t = new(); 

    if (t.randomize()) begin
      $display("a = %0d (binary %b), b = %0d (binary %b), c = %0d (binary %b)", t.a, t.a, t.b, t.b, t.c, t.c);
    end 
    else begin
      $display("Randomization failed!");
    end
  end
endmodule
