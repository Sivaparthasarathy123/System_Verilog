// wait fork - waiting for three threads
module wait_fork_waiting;
  
  initial begin
    fork
      #5 $display(" 1st Thread process at %0t", $time);
      #10 $display(" 2nd Thread process at %0t", $time);
      #15 $display(" 3rd Thread process at %0t", $time);
    join_none
    
    $display("All Threads completed at %0t",$time);
    
    wait fork;
      $display("Simulation Ended at %0t", $time);
  end
endmodule
      
    
