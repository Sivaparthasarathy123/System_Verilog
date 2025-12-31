// Alternating positive and negative
class alt_pos_neg;
  rand int arr[6];

    constraint alt_c {
      foreach (arr[i])
        if (i % 2 == 0)
          arr[i] == (i + 1) * 5;
        else
          arr[i] == -(i + 1) * 5;
    }
endclass

module alt_pos_neg_tb;
  alt_pos_neg a;

  initial begin
    a = new();

    if (a.randomize())
      $display("Generated sequence = %p", a.arr);
    else
      $display("Randomization failed!");
  end

endmodule
