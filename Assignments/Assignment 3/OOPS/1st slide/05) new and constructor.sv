// What is the purpose of the new method and how does it differ from a constructor
class packet;
  int x;
  
//Constructor initializes variables
  function new(int value);
    x = value;
  endfunction
endclass

module initialize;
  packet tr;
  
  initial begin
    // new() allocates memory
    tr = new(5);
    $display("x = %0d", tr.x);
  end
endmodule
