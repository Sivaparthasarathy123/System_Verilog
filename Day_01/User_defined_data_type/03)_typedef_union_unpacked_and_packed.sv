// typedef_union_unpacked_and_packed
// union unpacked
module unpacked_union;

typedef union {
    int   number;     
    byte  value;      
    real  fraction;   
  } data;

  initial begin
   
    data.fraction = 7.89;
    $display("Fraction stored = %f", data.fraction);

    data.number = 100;
    $display("Integer stored  = %0d", data.number);

    data.value = 8'hFF;
    $display("Byte stored     = %0h", data.small);
  end

endmodule

// union packed

module packed_union;

  typedef union packed {
    logic [7:0] byte_val;
    logic [3:0] nibbles [1:0];  
    struct packed {
      logic [3:0] low;
      logic [3:0] high;
    } parts;
  } ubyte;

  ubyte data;

  initial begin
 
    data.byte_val = 8'hAB;

    $display("Byte value     = %h", data.byte_val);
    $display("Nibble         = %h %h", data.nibbles[1], data.nibbles[0]);
    $display("Low part       = %h", data.parts.low);
    $display("High part      = %h", data.parts.high);
  end

endmodule

