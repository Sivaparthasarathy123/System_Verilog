// wait fork download
module waitfork_download;
  initial begin
    fork
      begin #10 $display("Download A completed"); end
      begin #15 $display("Download B completed"); end
      begin #8  $display("Download C completed"); end
    join_none
    
    $display("Main: Processing downloads");
    
    wait fork;
    $display("Main: All downloads completed");
  end
endmodule
