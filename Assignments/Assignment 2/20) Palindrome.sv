// Palindrome
class pal_gen;
  randc int unsigned digits[4];
  
    constraint pal_c {
      digits[0] inside {[1:9]};  
      digits[1] inside {[0:9]};
      digits[2] inside {[0:9]};
      digits[3] inside {[0:9]};

      digits[0] == digits[3]; 
      digits[1] == digits[2];
    }
endclass

module palindrome_tb;
  pal_gen p;

  initial begin
    p = new();

    if (p.randomize()) begin
      $display("Generated 4-digit palindrome: %0d%0d%0d%0d",
               p.digits[0], p.digits[1], p.digits[2], p.digits[3]);
    end else
      $display("Randomization failed!");
  end

endmodule
