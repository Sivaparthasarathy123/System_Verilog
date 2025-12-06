//union nested
module union_nested;

  union {
    int a;
    union {
      shortint s;
      byte c[2];
    } inner;
  } top;

  initial begin
    top.a = 32'h11223344; 

    $display("Full = %h", top.a);
    $display("Short= %h", top.inner.s);
    $display("Bytes= %h %h", top.inner.c[0], top.inner.c[1]);
  end

endmodule
