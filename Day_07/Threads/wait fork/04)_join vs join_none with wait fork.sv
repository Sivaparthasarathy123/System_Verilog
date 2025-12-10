// join vs join_none with wait fork
module join_vs_waitfork;
  time t1, t2;
  
  initial begin
    $display("Using join");
    t1 = $time;
    fork
      #5; #10; #3;
    join
    $display("Time join  = %0t", $time - t1);

    $display("Using join_none and wait fork");
    t2 = $time;
    fork
      #5; #10; #3;
    join_none
    wait fork;
    $display("Time wait fork = %0t", $time - t2);
  end
endmodule
