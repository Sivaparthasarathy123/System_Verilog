// Associative using Dynamic
module associative_using_dynamic;
  int course [string][];
  
  initial begin
    course ["Vlsi Design verifiction"] = new[2];
    course ["Embedded Systems"]        = new[2];
    course ["Vlsi Design verifiction"] = '{34,42};
    course ["Embedded Systems"]        = '{10,20};
    $display(" Total Students in Each course : %0p", course);
  end
endmodule
    
