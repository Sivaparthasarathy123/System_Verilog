//Packed vs Unpacked
module packed_vs_unpacked;

  typedef struct packed {
    logic [3:0] a;
    logic [7:0] b;
  } packed_s;

  typedef struct {
    logic [3:0] a;
    logic [7:0] b;
  } unpacked_s;

  packed_s   p;
  unpacked_s u;

  initial begin
    p = '{a:4'hA, b:8'h55};
    u = '{a:4'hB, b:8'h66};

    $display("Packed = %b", p);
    $display("Unpacked = a=%h b=%h", u.a, u.b);
  end

endmodule
