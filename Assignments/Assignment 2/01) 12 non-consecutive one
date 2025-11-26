// 12 non-consecutive one
class bitgen;
  rand bit [31:0] val;

  constraint exactly_12_non_consecutive_ones {
    // Exactly 12 ones
    $countones(val) == 12;

    // Non consecutive ones
    foreach (val[i])
      if (i > 0)
        !(val[i] && val[i-1]);
  }
endclass

// testbench
module tb;
  bitgen g;

  initial begin
    g = new();
    if (g.randomize())
      $display("Random value = %b", g.val);
    else
      $display("Randomization failed!");
  end
endmodule
