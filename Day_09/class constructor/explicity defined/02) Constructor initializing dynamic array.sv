// Constructor initializing dynamic array
class Buffer;
  int data[];

  // Explicit constructor
  function new(int size);
    data = new[size];
    foreach (data[i])
      data[i] = i;
  endfunction
  
  // Display method
  function void display();
    $display("Total Size = [%0d]", data.size());
    foreach (data[i])
      $display("data[%0d] = %0d", i, data[i]);
  endfunction
endclass


module Buffer_tb;
  Buffer b;

  initial begin
    b = new(5);     
    b.display();
  end
endmodule
