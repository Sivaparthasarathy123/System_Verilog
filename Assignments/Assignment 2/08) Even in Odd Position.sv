// Even in Odd Position
class SeqGen;
  rand int arr[8];

  // even numbers in odd positions
  constraint even_in_odd_pos {
    foreach(arr[i])
      (i % 2 == 1) -> (arr[i] % 2 == 0);}
endclass

module SeqGen_tb;
  SeqGen s;

  initial begin
    s = new();
    if(s.randomize()) begin
      $display("Generated Sequence: %p", s.arr);
    end else begin
      $display("Randomization failed!");
    end
  end
endmodule
