// Write code to randomize a variable without using the rand keyword.  
class without_rand;
  bit [7:0] value;
  
  constraint c1{
    foreach(value[i])
      value[i] -> value[i+1];
  }

  
endclass

module wt_rand;
  
  initial begin
    without_rand w;
    repeat (10) begin
      w = new();
      std::randomize(w.value);
      $display("value = %0d",w.value);
    end
  end
endmodule
    
