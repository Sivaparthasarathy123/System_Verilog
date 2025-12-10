// Wait fork timer
module waitfork_timer;
  initial begin
    fork
      begin
        #20; 
        $display("%0t : Timer finished", $time);
      end
    join_none

    $display("%0t : Main doing tasks", $time);
    #5  $display("%0t : Step 1 done", $time);
    #5  $display("%0t : Step 2 done", $time);

    wait fork;
    $display("%0t : Main waited, all done", $time);
  end
endmodule
