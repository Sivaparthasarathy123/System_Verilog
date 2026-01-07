// Number of 1's in the one variable depends on the another variable
class variable;
  rand bit [7:0] data;
  rand int count_ones;

  constraint range_c {
    count_ones inside {[0:8]};
  }

  // Countones
  constraint ones_dep_c {
    $countones(data) == count_ones;
  }
endclass

module variable_one;
  variable v;
  
  initial begin
    v = new();
    v.randomize();
    $display("data = %b, count_ones = %0d", v.data, v.count_ones);
  end
endmodule
