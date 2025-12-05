//Relational operators
module Relational_operators;
  int a = 10;
  int b = 20;
  int greater, lesser, greater_equal, lesser_equal;
  
  initial begin
    
    greater = a > b;
    $display("Greater = %0d", greater);
    
    lesser = a < b;
    $display("Lesser = %0d", lesser);
    
    greater_equal = a >= b;
    $display("Greater_equal = %0d", greater_equal);
    
    lesser_equal = a <= b;
    $display("Lesser_equal = %0d", lesser_equal);

    
  end
endmodule
