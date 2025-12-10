//Random delay threads
module disable_random;
  int d1, d2, d3;
  initial begin
    d1 = $urandom_range(1,10);
    d2 = $urandom_range(1,10);
    d3 = $urandom_range(1,10);

    fork
      begin #d1 $display("T1 finished in %0d",d1); disable fork; end
      begin #d2 $display("T2 finished in %0d",d2); disable fork; end
      begin #d3 $display("T3 finished in %0d",d3); disable fork; end
    join_any

    $display("Winner at %0t",$time);
  end
endmodule
