// unique multiples of 3
class mul3_gen;
  rand int arr[10];   

  constraint mul3_unique_c {
    foreach (arr[i])
      arr[i] % 3 == 0;

    unique {arr};}
endclass

module mul3_gen_tb;
  mul3_gen m;

  initial begin
    m = new();
    if (m.randomize())
      $display("Generated multiples of 3: %p", m.arr);
    else
      $display("Randomization failed!");
  end
endmodule
