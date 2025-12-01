// find the prime number
module prime_number;
  int n = 12;
  bit is_prime = 1;

  initial begin
    if(n <= 1)
      is_prime = 0;

    for(int i = 2; i * i <= n; i++) begin
      if(n % i == 0) begin
        is_prime = 0;
        break;
      end
    end

    if(is_prime)
      $display("%0d is Prime", n);
    else
      $display("%0d is NOT Prime", n);
  end
endmodule
