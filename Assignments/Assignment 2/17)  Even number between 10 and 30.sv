// Even number between 10 and 30
class even_num;
    randc int num;

    constraint even_range_c {
      num inside {[10:30]};
      num % 2 == 0;
    }
endclass

module even_num_tb;
  even_num e;

  initial begin
    e = new();

    repeat (10) begin
      if (e.randomize())
        $display("Generated even number = %0d", e.num);
      else
        $display("Randomization failed!");
    end
  end

endmodule

