// Reverse 8-bit vector
module reverse_bits_fn;
  byte in = 8'b10110010;
  byte out;

  function automatic byte reverse_bits(byte data);
    for(int i = 0; i < 8; i++)
      reverse_bits[i] = data[7-i];
  endfunction

  initial begin
    out = reverse_bits(in);
    $display("Input  = %b", in);
    $display("Output = %b", out);
  end
endmodule
