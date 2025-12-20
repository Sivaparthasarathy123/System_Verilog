// Scope resolution operator
class scope;
  static function int square(int x);
    return x * x;
  endfunction
endclass

module scope_op;
  initial begin
    $display("Square = %0d", scope::square(5));
  end
endmodule
