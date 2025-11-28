// Equality operators
module Equality_operators;
  logic a, b;
  logic case_eq, case_ineq, log_eq, log_ineq;
  
  initial begin
    a = 4'b10x1; 
    b = 4'b01x0;
    
    case_eq = a===b;
    $display("Case equality = %0d", case_eq);
    
    case_ineq = a!==b;
    $display("Case inequality = %0d", case_ineq);
    
    log_eq = a == b;
    $display("logical equality = %0d", log_eq);
    
    log_ineq = a != b;
    $display("logical inequality = %0d", log_ineq);
    
  end
endmodule
