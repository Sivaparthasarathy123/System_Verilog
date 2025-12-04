// Dynamic Array
`timescale 1ns\1ps
module dyn_array_resize;

  int dyn[];
  int new_array[];

  initial begin
    dyn = new[4];           
    dyn = '{10, 20, 30, 40};
    $display("Original array: %p", dyn);

    // Resize to size 6
     new_array = new[6];

    for (int i = 0; i < dyn.size(); i++)
      new_array[i] = dyn[i];

    // Add new values
    new_array[4] = 50;
    new_array[5] = 60;

    dyn = new_array;       
    $display("Resized array: %p", dyn);
  end

endmodule
