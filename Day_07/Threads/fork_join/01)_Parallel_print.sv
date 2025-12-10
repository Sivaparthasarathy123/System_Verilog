// Parallel Printing using fork-join
module parallel_print;
  initial begin
    $display("Simulation Start at %0t", $time);

    fork
      // Task A
      begin : task_A
        for (int i = 1; i <= 5; i++) begin
          #1 $display("Task A: %0d at %0t", i, $time);
        end
      end

      // Task B
      begin : task_B
        for (int j = 1; j <= 3; j++) begin
          #2 $display("Task B: %0d at %0t", j, $time);
        end
      end

      // Task C
      begin : task_C
        for (int k = 1; k <= 2; k++) begin
          #3 $display("Task C: Hello at %0t", $time);
        end
      end
    join

    $display("All Tasks Completed at %0t", $time);
  end
endmodule
