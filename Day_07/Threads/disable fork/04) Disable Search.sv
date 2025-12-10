// Disable search
module disable_search;
  bit found;

  initial begin
    fork
      begin
        #35 $display("Search A found match");
        found = 1;
        disable fork;
      end

      begin
        #25 $display("Search B found match");
        found = 1;
        disable fork;
      end
    join_any

    $display("Search completed at %0t, found=%0d",$time,found);
  end
endmodule
