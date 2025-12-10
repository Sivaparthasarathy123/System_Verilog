// Kill specific thread
module q2_kill_specific;
  process p_t1;

  initial begin
    $display("Kill a specific thread");
    fork
      begin : T1
        p_t1 = process::self();
        forever begin
          #2 $display("T1: Task Active at %0t (status=%0d)", $time, p_t1.status());
        end
      end

      begin : T2
        #10;
        $display("T2: killing T1 at %0t", $time);
        p_t1.kill();
      end
    join
    $display("Done");
  end
endmodule
