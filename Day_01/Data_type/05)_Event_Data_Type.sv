// Event Data Type

module event_datatype;

  event start_event;   
  int count = 0;

  initial begin
    $display("waiting for event");
    @start_event;   
    $display("Event received");
  end

  initial begin
    #5;  
    $display("triggering event.");
    -> start_event;  
  end

endmodule
