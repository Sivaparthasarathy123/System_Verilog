// Parallel operations
module waitfork_time;
  time start, finish; 

  initial begin
    start = $time;

    fork
      begin #8  $display("Op1 done at %0t",$time); end
      begin #12 $display("Op2 done at %0t",$time); end
      begin #5  $display("Op3 done at %0t",$time); end
    join_none

    wait fork;

    finish = $time;
    $display("Total time = %0t", finish - start);
  end
endmodule
