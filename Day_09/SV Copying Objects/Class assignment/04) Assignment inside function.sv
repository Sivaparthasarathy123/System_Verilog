// Assignment inside function
class Data;
  int d;
endclass

function void assign_obj(ref Data a, Data b);
  a = b;  
endfunction

module inside_function;
  Data d1, d2;

  initial begin
    d2 = new();
    d2.d = 61;

    assign_obj(d1, d2);
    d1.d = 15;

    $display("d2.d = %0d", d2.d);
  end
endmodule
