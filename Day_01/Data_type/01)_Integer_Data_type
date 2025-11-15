//Integer_Data_type

module integer_data_type;
  int          a;  // 2 state, 32 bit
  integer      b;  // 4 state, 32 bit
  shortint     c;  // 2 state, 16 bit
  longint      d;  // 2 state, 64 bit
  bit          e;  // 2 state, unsigned, user defined  
  byte         f;  // 2 state, 8-bit signed
  logic        g;  // 4 state, unsigned, user-defined
  reg          h;  // 4 state, unsigned, user-defined
  time         i;  // 4 state, 64-bit unsigned
 
  initial begin
    a = 32'd100;        // int
    b = 32'hFF;         // integer (4-state)
    c = -10;            // shortint
    d = 64'd123456789;  // longint
    e = 1'b1;           // bit
    f = -8'd20;         // byte (signed)
    g = 1'bZ;           // logic 
    h = 1'bX;           // reg
    i = 64'd500;        // time 
  
    $display("\n--- Integer Datatype Example ---");
    $display("int a        = %0d", a);
    $display("integer b    = %0d", b);
    $display("shortint c   = %0d", c);
    $display("longint d    = %0d", d);
    $display("bit e        = %0b", e);
    $display("byte f       = %0d", f);
    $display("logic g      = %0b", g);
    $display("reg h        = %0b", h);
    $display("time i       = %0t", i);
    $display("--------------------------------\n");
  end

endmodule
