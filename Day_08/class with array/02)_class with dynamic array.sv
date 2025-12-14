// Class with dynamic array
class dyn_array;
  int data[];   // dynamic array

  // Constructor
  function new(int size);
    data = new[size];
    foreach (data[i])
      data[i] = i * 5;
  endfunction

  // Display method
  function void display();
    foreach (data[i])
      $display("data[%0d] = %0d", i, data[i]);
  endfunction
endclass

module dyn_array_tb;
  dyn_array d;

  initial begin
    d = new(5);   
    d.display();
  end
endmodule
