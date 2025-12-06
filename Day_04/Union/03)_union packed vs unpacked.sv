//union packed vs unpacked
module packed_vs_unpacked;

  typedef union packed {
    logic [31:0] a;
    logic [31:0] b;
  } packed_u;

  typedef union {
    int a;
    byte b[4];
  } unpacked_u;

  packed_u   p;
  unpacked_u u;

  initial begin
    p.a = 32'hAABBCCDD;
    u.a = 32'h11223344;

    $display("Packed Union:   %b", p);
    $display("Unpacked bytes: %h %h %h %h",
               u.b[0], u.b[1], u.b[2], u.b[3]);
  end

endmodule
