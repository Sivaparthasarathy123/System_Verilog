// Background increment, kill and status
module counter_kill;
  int counter = 0;
  process p_counter;

  initial begin
    $display("Start at %0t", $time);

    fork
      begin : counter_thread
        p_counter = process::self();
        forever begin
          #1 counter++;
        end
      end
    join_none

    // Main thread continues
    #10;
    $display("Counter after 10 units = %0d", counter);

    // Kill background thread
    p_counter.kill;
    $display("Thread killed at %0t", $time);
    $display("Process status = %0d (0=dead)", p_counter.status());
  end
endmodule
