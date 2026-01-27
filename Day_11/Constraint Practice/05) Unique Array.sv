class UniqueArray;
  rand int values[6];
  
  // All values are between 1-49
 constraint vi{
   foreach (values[i])
     values[i] inside {[1:49]};}
  
  // All values are unique
  constraint unique_c{
    unique {values};}
  
  constraint v2{
    foreach(values[i])
      if(i > 0)
        values[i] > values[i-1];} 

  constraint v3{
    values.sum() with (int'(item))==150;}

endclass

module UnAr_tb;
  
  initial begin
    UniqueArray u;
    
    repeat (5) begin
      u = new();
      u.randomize();
      $display(" Vlaues = %0p\n Sum = %0d",u.values,u.values.sum);
    end
  end
endmodule
    
