// Compare object Box volume
class Box;
  int l, b, h;

  function new(int L, int B, int H);
    l = L; b = B; h = H;
  endfunction

  function int compare(Box object);
    return (l*b*h == object.l*object.b*object.h);
  endfunction
endclass

module test;
  Box x = new(2,3,4);
  Box y = new(1,6,4);

  initial begin
    if (x.compare(y))
      $display("Boxes have equal volume");
    else
      $display("Volumes are different");
  end
endmodule
