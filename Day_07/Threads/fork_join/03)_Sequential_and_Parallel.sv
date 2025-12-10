// Sequential Execution
module sequential_execution;
  initial begin
    $display("Sequential Start at %0t", $time);

    // Process 1
    #10 $display("Seq: Process 1 Completed at %0t", $time);

    // Process 2
    #20 $display("Seq: Process 2 Completed at %0t", $time);

    $display("Sequential End at %0t", $time);
  end
endmodule

// Parallel Execution using fork-join
module parallel_execution;
  initial begin
    $display("Parallel Start at %0t", $time);

    fork
      #10 $display("Par: Process 1 Completed at %0t", $time);
      #20 $display("Par: Process 2 Completed at %0t", $time);
    join

    $display("Parallel End at %0t", $time);
  end
endmodule

