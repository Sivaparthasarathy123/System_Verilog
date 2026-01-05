// Fixed Pattern
class pattern;
  rand int p[9];

  constraint c_index {
    foreach (p[i]) {
      if (i inside {0,3,4,7,8}) 
        p[i] == 1;
      else
        p[i] == 2;
    }
  }
endclass


module Pattern_format; 
  initial begin
    pattern obj;
    obj = new();
    obj.randomize();
    foreach(obj.p[i]) 
      $write("%0d", obj.p[i]);
      $display("");
  end
endmodule
