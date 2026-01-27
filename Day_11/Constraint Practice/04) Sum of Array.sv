// Sum of Array
class ArraySum;
  rand bit [7:0] data[8];
  
  // All values are between 0-100
  constraint ci{ 
    foreach (data[i])
      if (i != 0 && i != 7)
        data[i] inside {[0:100]};}
  
  // Sum of all elements = 500
  constraint ce{ 
    data.sum() with (int'(item)) == 500;}
  
  // First element = 0xAA
  constraint cf{ data[0] == 8'hAA;}
  
  // Last element = 0x55
  constraint ch{ data[7] == 8'h55;}
  
endclass

module ArraySum_tb;
  
  initial begin
    ArraySum a;
    repeat (5) begin
      a = new();
      a.randomize();
      $display("Data = %0p",a.data);
      $display("Sum   = %0d\n", a.data.sum());
    end
  end
endmodule
