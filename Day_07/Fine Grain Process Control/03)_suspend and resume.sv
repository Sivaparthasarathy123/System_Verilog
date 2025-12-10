// suspend and resume
module suspend_resume;
  process p;
  int count = 0;

  initial begin
    fork
      // Thread doing work
      begin
        p = process::self();
        repeat(5) begin
          #5 count++;
          $display("Worker: count = %0d at %0t", count, $time);
        end
        $display("Worker: Finished at %0t", $time);
      end
    join_none

    #7;
    $display("Main: Suspending worker at %0t", $time);
    p.suspend();   // pause thread

    #10;
    $display("Main: Resuming worker at %0t", $time);
    p.resume();    // continue
  end
endmodule
