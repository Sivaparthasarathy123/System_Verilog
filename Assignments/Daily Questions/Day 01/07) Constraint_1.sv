// 1st Constraint
// rand bit [3:0] a;

// Write constraints so that

// a is even
// a is greater than 3
// a is less than 14
// Number of 1's should be exactly 2
class constraint_1;
  
  rand bit [3:0]a;
  
  constraint c1 {
    a inside {[4:13]};
    a % 2 == 0;
    $countones(a) == 2;
  }
  
endclass

module constraint1_tb;
  
  reg [3:0]a;
  
  initial begin
    constraint_1 c1;
    
    c1 = new();
    if(c1.randomize)
      $display("a = %b",c1.a);
    else
      $display("Randomization Failed");
  end
endmodule
