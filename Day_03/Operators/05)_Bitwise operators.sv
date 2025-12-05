//Bitwise operators
module bitwise_operators;
  logic [3:0] a = 4'b1100;
  logic [3:0] b = 4'b1010;

  logic [3:0] and_r, or_r, xor_r, not_r;

  initial begin
    
    and_r = a & b;
    $display("AND  = %b", and_r);
    
    or_r  = a | b;
    $display("OR   = %b", or_r);
    
    xor_r = a ^ b;
    $display("XOR  = %b", xor_r);
    
    not_r = ~a;
    $display("NOT  = %b", not_r);
    
  end
endmodule
