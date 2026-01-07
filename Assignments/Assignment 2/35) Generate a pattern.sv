// Generate a pattern
class pattern_c;
  rand bit [7:0] data;

  // Constraint to generate 01010101
  constraint pattern_cst {
    data == 8'b01010101;
  }
endclass

module pattern;
  initial begin
    pattern_c obj = new();
    obj.randomize();
    $display("data = %b", obj.data); 
  end
endmodule
