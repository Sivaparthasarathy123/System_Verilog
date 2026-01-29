// Represent 1
class fixed_val;
  rand bit [60:0] val;

  constraint fixed_bits {
    val == {32'hFFFFFFFF, 29'h0};
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
