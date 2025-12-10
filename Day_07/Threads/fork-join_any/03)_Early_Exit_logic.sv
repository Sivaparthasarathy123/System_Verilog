// Early Exit Logic
module early_exit;
  bit ready = 0;
  bit thread1_done = 0;

  initial begin
    $display("Start at %0t", $time);

    fork
      // Thread 1
      begin : thread_1
        while (!ready) begin
          #1; 
          $display("Polling: ready=%0b at %0t", ready, $time);
        end
        thread1_done = 1;
        $display("Thread1 detects ready at %0t", $time);
      end

      // Thread 2
      begin : set_thread
        #15;
        ready = 1;
        $display("Thread2 sets ready at %0t", $time);
      end
    join_any

    // Main exits early
    if (thread1_done)
      $display("Main: Early Exit, ready detected at %0t", $time);
  end
endmodule
