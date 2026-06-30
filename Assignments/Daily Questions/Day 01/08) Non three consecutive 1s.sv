// 2) rand bit [7:0] data;
// Constraint:
// data should never contain three consecutive 1's.
// Examples
// Valid
// 10101010
// 11011010
// Invalid
// 11100000
// 00111100
// Non three consecutive 1's
class constraint_2;
  
  rand bit [7:0] data;
  
  constraint c2 {
    
    foreach (data[i]){
      if(i < 6){
        !(data[i] && data[i+1] && data[i+2]);
      }
      }
  }
        
endclass  

module constraint2_tb;
  
  reg [7:0]data;
  
  initial begin
    constraint_2 c2;
    
    repeat (5) begin 
      c2 = new();
      if(c2.randomize)
        $display("a = %b",c2.data);
      else
        $display("Randomization Failed");
    end
  end
endmodule
