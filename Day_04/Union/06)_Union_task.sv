//union task
module union_task;

  typedef union {
    int a;
    byte b[4];
  } unit_t;

  task print_union(unit_t u);
    $display("a=%h b=%h %h %h %h",u.a, u.b[0], u.b[1], u.b[2], u.b[3]);
  endtask

  unit_t u;

  initial begin
    u.a = 32'hAABBCCDD;
    print_union(u);

    u.b[0] = 8'h11;
    print_union(u);
  end

endmodule
