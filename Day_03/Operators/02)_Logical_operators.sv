// Logical operators
module logical_operators;
  logic a, b, c;
  logic log_and, log_or, log_not;

  initial begin

    a = 4'b1100;
    b = 4'b1111;
    c = 4'b11xx;

    log_and = a && b && c;
    $display("Logical AND = %0d", log_and);

    log_or = a || b || c;
    $display("Logical OR = %0d", log_or);

    log_not = !b;
    $display("Logical NOT = %0d", log_not);
  end
endmodule
