// Palindrome checking
class palindrome_seq;
    rand int arr[10];

   constraint pal_c {
      foreach (arr[i])
        if (i < 5)
          arr[i] == i + 1;

      foreach (arr[i])
        if (i >= 5)
          arr[i] == 10 - i;}
endclass

module palindrome_seq_tb;
  palindrome_seq p;

  initial begin
    p = new();

    if (p.randomize())
      $display("Generated sequence = %p", p.arr);
    else
      $display("Randomization failed!");

  end

endmodule
