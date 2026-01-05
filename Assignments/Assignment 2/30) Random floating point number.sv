// Random floating point number
module float_num;
  real rand_float;
  real min = 1.35;
  real max = 2.57;

  initial begin
    rand_float = min + ($urandom() / 4294967295.0) * (max - min);

    $display("Random floating-point number: %0f", rand_float);
  end
endmodule
