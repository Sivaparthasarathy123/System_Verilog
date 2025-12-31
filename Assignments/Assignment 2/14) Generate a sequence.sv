// Generate a sequence
class seq_gen;
  rand int arr[10];

  constraint seq_c {
    foreach(arr[i])
      arr[i] == (i/2) + 1;}

endclass

module seq;
  seq_gen s;

  initial begin
    s = new();

    if (s.randomize())
      $display("Generated sequence = %p", s.arr);
    else
      $display("Randomization failed!");

  end

endmodule
