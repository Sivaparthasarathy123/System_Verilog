// for loop to print numbers from 1 to 20, skipping multiples of 3 using continue
module skip_multiples_of_3;
  initial begin
    for(int i = 1; i <= 20; i++) begin
      if(i % 3 == 0)
        continue;
      $display(i);
    end
  end
endmodule
