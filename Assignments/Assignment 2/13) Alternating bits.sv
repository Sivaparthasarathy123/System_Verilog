// Alternating bits
module alternating_bits;

  class alt_bits;
    rand bit [9:0] data;  

    constraint alt_c {
      foreach(data[i])
        if (i > 0)
          data[i] != data[i-1];}
  endclass

  alt_bits a;

  initial begin
    a = new();

    if (a.randomize()) 
      $display("Generated alternating 10-bit value: %b", a.data);
    else 
      $display("Randomization failed!");
  end

endmodule
