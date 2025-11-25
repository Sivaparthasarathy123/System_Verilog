// Dynamic_Array_max_term & Delete
`timescale 1ns/1ps
module dyn_array_max_delete;

  int dyn[] = '{10, 55, 23, 99, 42};

  initial begin
    int max = dyn[0];

    foreach (dyn[i])
      if (dyn[i] > max)
        max = dyn[i];

    $display("Dynamic array: %p", dyn);
    $display("Maximum value = %0d", max);
    $display("Before delete: size = %0d", dyn.size());

    dyn.delete();
    $display("After delete: size = %0d", dyn.size());

  end

endmodule
