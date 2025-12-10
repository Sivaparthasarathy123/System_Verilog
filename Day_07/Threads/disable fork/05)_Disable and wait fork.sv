// Disable and wait fork
module disable_waitfork;
  initial begin
    time start = $time;

    fork
      begin
        #5  $display("Task A finished");
        disable fork;     
      end
      begin #20 $display("Task B finished"); end
      begin #15 $display("Task C finished"); end
    join_any

    wait fork; 

    $display("Early exit happened at %0t", $time - start);
  end
endmodule
