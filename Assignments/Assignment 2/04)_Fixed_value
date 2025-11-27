// Represent 1
class fixed_val;
  rand bit [60:0] val;

  constraint fixed_bits {
    val == {29'h0, 32'hFFFFFFFF};
}
 
  function void print();
    $display("val = %b", val);   
  endfunction
endclass
//Testbench
module fixed_val_tb;

  fixed_val x;   

  initial begin
    x = new();
    
    x.randomize(); 
    x.print();      

  end

endmodule
