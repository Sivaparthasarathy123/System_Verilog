// Class with array (fixed size array)
class fixed_size;
  int value;

  function new(int v);
    value = v;
  endfunction
endclass


module fixed_s;
  fixed_size array[10];   // Fixed-size array of class handles

  initial begin
    $display("Initializing fixed size array");

    foreach (array[i]) begin
      array[i] = new(i * 10);   // Creating object
      $display("array[%0d].value = %0d", i, array[i].value);
    end
  end
endmodule

    
