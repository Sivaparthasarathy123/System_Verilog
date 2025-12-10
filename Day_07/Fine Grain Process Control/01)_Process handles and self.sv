// Process handles and self
module q1_process_handles;
  process ph1, ph2, ph3;

  initial begin
    $display("Process handles and status()");
    fork
      begin : T1
        ph1 = process::self();
        $display("T1 handle=%p status=%0d at %0t", ph1, ph1.status(), $time);
        #5;
        $display("T1 finishing status=%0d at %0t", ph1.status(), $time);
      end

      begin : T2
        ph2 = process::self();
        $display("T2 handle=%p status=%0d at %0t", ph2, ph2.status(), $time);
        #6;
        $display("T2 finishing status=%0d at %0t", ph2.status(), $time);
      end

      begin : T3
        ph3 = process::self();
        $display("T3 handle=%p status=%0d at %0t", ph3, ph3.status(), $time);
        #7;
        $display("T3 finishing status=%0d at %0t", ph3.status(), $time);
      end
    join

    $display("Done");
  end
endmodule
