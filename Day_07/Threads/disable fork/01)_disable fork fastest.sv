// disable fork fastest
module disable_fastest;
  initial begin
    fork
      begin #10 $display("T1 done"); disable fork; end
      begin #5  $display("T2 done"); disable fork; end
      begin #15 $display("T3 done"); disable fork; end
    join_any

        $display("1st passed found at %0t", $time);
  end
endmodule
