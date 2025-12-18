// Multiple Handle same object
class Sample;
  int value;
endclass

module Multiple;
  Sample s1, s2, s3;

  initial begin
    s1 = new();
    s1.value = 130;

    s2 = s1;
    s3 = s1;

    s3.value = 120;

    $display("%0d %0d %0d", s1.value, s2.value, s3.value);
  end
endmodule
