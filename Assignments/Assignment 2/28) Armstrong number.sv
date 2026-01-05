// Armstrong number
module tb;
  int num;        
  int temp, sum, digit, n_digits;

  initial begin
    num = $urandom_range(0, 999);
    $display("Random number: %0d", num);

    // Count number of digits
    temp = num;
    n_digits = 0;
    while (temp != 0) begin
      temp = temp / 10;
      n_digits++;
    end

    // Calculate sum of digits raised to power n_digits
    temp = num;
    sum = 0;
    while (temp != 0) begin
      digit = temp % 10;
      sum += digit ** n_digits; 
      temp = temp / 10;
    end

    // Check Armstrong condition
    if (sum == num)
      $display("%0d is an Armstrong number!", num);
    else
      $display("%0d is not an Armstrong number.", num);
  end
endmodule
