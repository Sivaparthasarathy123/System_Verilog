// Write a single constraint to generate a random value for bit [8:0] var1 in the ranges:

class range;
  rand bit [7:0]var1; 
  rand bit [7:0]var2;
  rand bit [7:0]var3;
  rand bit [7:0]var4;
  
  constraint c1{
    var1 inside {[1:34],127,[129:156],[192:202],[257:260]};}
  
endclass

module range_tb;
  
  initial begin
    range r;
    
    r = new();
    r.c1.constraint_mode(1);
    r.var2.rand_mode(1);
    r.var3.rand_mode(0);
    r.var4.rand_mode(1);
    r.randomize();
    
    $display("var1 = %0d | var2 = %0d | var3 = %0d | var4 = %0d",r.var1, r.var2, r.var3, r.var4);
  end
endmodule
    
    
    
  
  
 
