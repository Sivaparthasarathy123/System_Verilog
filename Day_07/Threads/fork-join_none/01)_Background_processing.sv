// Background Operation using fork-join_none
module background_operation;
  process on;

  initial begin
    $display("System Start at %0t", $time);

    fork
      // Thread 1 - Logging
      begin
        //forever begin
          #5 $display("logging at %0t", $time);
       // end
      end

      // Thread 2 - Processing 
      begin : processing_thread
        on = process::self();
        //forever begin
          #7 $display("processing data at %0t", $time);
        //end
      end

      // Thread 3 - Monitoring
      begin
        //forever begin
          #9 $display("monitoring system at %0t", $time);
        //end
      end
    join_none

    $display("System Running main continues at %0t", $time);

    // Main continues without waiting
    #30;
    $display("Main: Killing processing thread at %0t", $time);
    on.kill;

    #10;
    $display("Main End at %0t", $time);
  end
endmodule
