// 2) to test solve before constraint
class test;
  rand bit [1:0] a, b;
  constraint c {
    a + b == 3;
    solve a before b;
  }
endclass

module tb;

  initial begin
    test t = new();

    repeat(10) begin
      t.randomize();
      $display("a=%0d, b=%0d", t.a, t.b);
    end
  end

endmodule
