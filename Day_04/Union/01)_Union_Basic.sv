//Union Basic
module union_basic;
union {
    int a;
    byte b[4];
  } u;

  initial begin
    u.a = 32'h44332211;
    $display("value = %0p", u);
  end

endmodule
