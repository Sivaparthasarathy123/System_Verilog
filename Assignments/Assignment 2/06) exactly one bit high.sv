// 32-bit number where exactly one bit is high
class one_hot;
  rand bit [31:0] data;

  constraint one_hot_c {
    $countones(data) == 1;}
endclass

module one_hot_tb;
  one_hot o;
  
  initial begin 
    o = new();
    o.randomize();
    $display("Data (decimal) = %0d", o.data);
    $display("Data (binary) = %032b", o.data);
  end
endmodule
