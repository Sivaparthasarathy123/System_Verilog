// 16-bit variable with no two consecutive 1’s
class no_consecutive;
  rand bit [15:0] data;

  constraint no_adjacent {
    foreach (data[i])
      if (i < 15)
        !(data[i] && data[i+1]);}
endclass

module no_cons;
  no_consecutive n;
  
  initial begin 
    n = new();
    n.randomize();
    $display("Data = %0d", n.data);
  end
endmodule
