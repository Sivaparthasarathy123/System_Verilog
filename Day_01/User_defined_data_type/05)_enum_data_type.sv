// enum data type
module enum_datatype;
  
  typedef enum {
    RED,       
    YELLOW,     
    GREEN    
  } light_state;

  light_state state;   

  initial begin
 
    state = RED;
    $display("State = %s, Value = %0d", state.name(), state);

    state = YELLOW;
    $display("State = %s, Value = %0d", state.name(), state);

    state = GREEN;
    $display("State = %s, Value = %0d", state.name(), state);
  end

endmodule
