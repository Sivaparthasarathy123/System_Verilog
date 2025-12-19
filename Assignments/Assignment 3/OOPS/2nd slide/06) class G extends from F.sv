// Q8 Class G extended from class F
class F;
  int x;
  int y;

  function new(int x_val = 0, int y_val = 0);
    x = x_val;
    y = y_val;
  endfunction

  function void display();
    $display("F: x=%0d y=%0d", x, y);
  endfunction
endclass

class G extends F;

  function new(int x_val, int y_val);
    super.new(x_val, y_val); 
  endfunction

endclass
