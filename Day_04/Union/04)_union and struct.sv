//union and struct
module union_multi;

  typedef union packed {
    shortint full;    
    shortint bytes; 
    struct packed {   
      bit [3:0] low;
      bit [11:0] high;
    } parts;
  } u16_t;

  u16_t u;

  initial begin
    u.full = 16'hABCD;

    $display("Full   = %h", u.full);
    $display("Bytes  = %h %h", u.bytes[0], u.bytes[1]);
    $display("low=%h high=%h", u.parts.low, u.parts.high);
  end

endmodule
