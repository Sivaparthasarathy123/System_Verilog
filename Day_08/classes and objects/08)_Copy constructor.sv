// Copy Constructor Implementation
class Frame;
  int height, width;

  // constructor
  function new(int h = 0, int w = 0);
    height = h;
    width  = w;
  endfunction

  // Copy Constructor
  function void copy(Frame f);
    height = f.height;
    width  = f.width;
  endfunction
endclass

module test;
  Frame f1, f2;

  initial begin
    f1 = new(10, 20);
    f2 = new();      
    f2.copy(f1);     

    $display("f1.height = %0d, f1.width = %0d", f1.height, f1.width);
    $display("f2.height = %0d, f2.width = %0d", f2.height, f2.width);
  end
endmodule
