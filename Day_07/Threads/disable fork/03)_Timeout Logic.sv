// Time out logic
module disable_timeout;
  event got_event;

  initial begin
    fork
      begin
        @got_event;
        $display("%0t : Event received",$time);
        disable fork;
      end
      begin
        #10;
        $display("%0t : Timeout occurred",$time);
        disable fork;
      end
    join_any
  end

  initial begin
    #7 ->got_event;
  end
endmodule
