// Arithmetic operators
module arithmetic_operators;
  int a = 10;
  int b = 20;
  int sum, diff, mul, div, mod, power;
  
  initial begin
    
    sum = a + b;
    $display("Addition = %0d", sum);
    
    diff = a - b;
    $display("Subtraction = %0d", diff);
    
    mul = a * b;
    $display("Product = %0d", mul);
    
    div = a / b;
    $display("Division = %0d", div);
    
    mod = a % b;
    $display("Modulo = %0d", mod);
    
    power = a ** b;
    $display("power = %0d", power);
    
  end
endmodule
             
