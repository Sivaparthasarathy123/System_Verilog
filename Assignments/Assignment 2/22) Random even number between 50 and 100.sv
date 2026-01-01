// Random even number between 50 and 100
class random_num;
  randc int num;
  
  constraint num_t {
      num inside {[50:100]};
      num % 2 == 0;
    }
  
endclass

module random_num_tb;
  random_num r;

  initial begin
    r = new();

    repeat (10) begin
      if (r.randomize())
        $display("Generated even number = %0d", r.num);
      else
        $display("Randomization failed!");
    end
  end

endmodule
