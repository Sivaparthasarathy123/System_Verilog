// Type and size parameter
class Buffer #(type T = int, int DEPTH = 4);
  T mem[DEPTH];

  function new();
    foreach (mem[i])
      this.mem[i] = i;
  endfunction
  
  function void display();
    $display("Buffer Value = %0p",mem);
  endfunction
endclass

module size;
  initial begin
    Buffer #(byte, 8) b1 = new();
    Buffer #(int, 16) b2 = new();
    
    b1.display();
    b2.display();
  end
endmodule
