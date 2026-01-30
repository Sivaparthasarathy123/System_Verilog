//What are the possible values of random variable data in the following code?

class abc;
  rand bit [3:0] data;
  
  constraint c1 {
    data >= 4;
    data <= 12;
  }
endclass

module tb;
  abc a;
  initial begin
    repeat(10)begin
    a = new();
    a.randomize() with { soft data == 3; }; // Using the soft keyword on inline constraint and change the already existed soft to Hard to get the 4, 9, 11, 12 randomized values
    $display("a.data = %0d", a.data);
    end
  end
endmodule
