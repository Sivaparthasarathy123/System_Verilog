// rand vs randc
class randc_random;
  randc bit [2:0] num;
endclass

module random_tb;
   randc_random r = new();

  initial begin
    repeat (8) begin
      r.randomize();
      $display("num = %0d", r.num);
    end
  end
endmodule
