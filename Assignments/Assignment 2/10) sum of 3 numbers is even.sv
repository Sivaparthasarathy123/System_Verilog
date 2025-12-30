// sum of 3 numbers is even
class sum_even;
  randc int arr[10];

  constraint sum_even_c {
    foreach (arr[i])
      if (i >= 2)
        (arr[i] + arr[i-1] + arr[i-2]) % 2 == 0;}
endclass

module sum_tb;
  sum_even s;
  
  initial begin
    s = new();
    
    if (s.randomize()) 
      $display("Generated Array = %p", s.arr);
    else
      $display("Randomization failed!");
  end

endmodule
