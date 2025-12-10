// Sequential and Asynchronous with join_none
module asynchronous_operation;
  process p_progress;

  initial begin
    $display("Start Download at %0t", $time);

    fork
      // Progress display in background
      begin : progress_thread
        p_progress = process::self();
        forever begin
          #2 $display("Progress -> time=%0t", $time);
        end
      end
    join_none

    #30;
    $display("Download Done at %0t", $time);

    #10;
    $display("Decompress Done at %0t", $time);

    // Stop progress 
    p_progress.kill;
    $display("Stopped Progress Display at %0t", $time);

    $display("All Tasks Done at %0t", $time);
  end
endmodule
