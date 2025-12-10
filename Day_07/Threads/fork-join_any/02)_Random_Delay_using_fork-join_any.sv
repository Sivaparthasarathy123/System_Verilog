// Random Delay
module random_delay;
  int d1, d2, d3;
  bit t1_done = 0, t2_done = 0, t3_done = 0;

  initial begin
    // Generate random delays
    d1 = $urandom_range(1,10);
    d2 = $urandom_range(1,10);
    d3 = $urandom_range(1,10);

    $display("Thread delays: d1=%0d d2=%0d d3=%0d", d1, d2, d3);

    fork
      begin : T1
        #d1; t1_done = 1;
        $display("T1 done at %0t", $time);
      end

      begin : T2
        #d2; t2_done = 1;
        $display("T2 done at %0t", $time);
      end

      begin : T3
        #d3; t3_done = 1;
        $display("T3 done at %0t", $time);
      end
    join_any

    if (t1_done)
      $display("Winner: T1 at %0t", $time);
    else if (t2_done)
      $display("Winner: T2 at %0t", $time);
    else if (t3_done)
      $display("Winner: T3 at %0t", $time);
  end
endmodule
