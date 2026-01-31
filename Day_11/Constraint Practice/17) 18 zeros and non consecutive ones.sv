// Write a constraint to generate 18 zeros and no consecutive ones in a 32-bit variable. 

class zero;
  rand bit [31:0] value;
  
  constraint c1{
    $countones(value) == 14;
  }
  
  constraint c2{
    foreach(value[i])
      if (i > 0)
        !(value[i] && value[i-1]);  }
  
endclass

module zero_tb;
  
  initial begin
    zero z;
      z = new();
      z.randomize();
      $display("value = %b",z.value);
  end
endmodule
