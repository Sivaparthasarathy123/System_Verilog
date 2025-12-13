// Create a class Box with methods setLength(), setWidth(), and setHeight(). Each method should return this so that method chaining is possible.

class Box;
  int l, w, h;

  function Box setLength(int l);
    this.l = l;
    return this;
  endfunction

  function Box setWidth(int w);
    this.w = w;
    return this;
  endfunction

  function Box setHeight(int h);
    this.h = h;
    return this;
  endfunction
endclass

module test;
  initial begin
    Box b = new();
    b.setLength(2).setWidth(3).setHeight(4);
    $display("Volume = %0d", b.l * b.w * b.h);
  end
endmodule
