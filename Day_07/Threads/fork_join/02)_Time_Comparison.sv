// Time Comparison using fork-join
module time_comparison;
  initial begin
    $display("Start at %0t", $time);

    fork
      begin : p1
        #10 $display("Process 1 Completed at %0t", $time);
      end

      begin : p2
        #20 $display("Process 2 Completed at %0t", $time);
      end
    join

    $display("All Process Done at %0t", $time);
  end
endmodule
