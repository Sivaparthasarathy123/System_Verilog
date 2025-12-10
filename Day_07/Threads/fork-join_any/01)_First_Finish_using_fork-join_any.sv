// First Finish
module first_finisher;
  bit t1_done = 0, t2_done = 0, t3_done = 0;

  initial begin
    $display("Start at %0t", $time);
    
    fork
      begin : T1
        #10; 
        t1_done = 1;
        $display("T1 done at %0t", $time);
      end

      begin : T2
        #5; 
        t2_done = 1;
        $display("T2 done at %0t", $time);
      end

      begin : T3
        #20; 
        t3_done = 1;
        $display("T3 done at %0t", $time);
      end
    join_any


    if (t1_done)
      $display("Winner Found: T1 at %0t", $time);
    else if (t2_done)
      $display("Winner Found: T2 at %0t", $time);
    else if (t3_done)
      $display("Winner Found: T3 at %0t", $time);
  end
endmodule
