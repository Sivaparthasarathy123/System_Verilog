// Type parameter basics
class Box #(type T);
  T value;

  function new(T v);
    value = v;
  endfunction

  function void display();
    $display("Value = %0d", value);
  endfunction
endclass


module type_param;
  initial begin
    Box #(int)  b1 = new(10);
    Box #(byte unsigned) b2 = new(8'hAA);

    b1.display();
    b2.display();
  end
endmodule
