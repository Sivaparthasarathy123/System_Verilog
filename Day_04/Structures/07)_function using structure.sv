//function using structure
module struct_function;

  typedef struct {
    int m1;
    int m2;
    int m3;
  } mark_t;

  function int total(mark_t m);
    return m.m1 + m.m2 + m.m3;
  endfunction

  mark_t m;

  initial begin
    m = '{90, 85, 88};
    $display("Total = %0d", total(m));
  end

endmodule
