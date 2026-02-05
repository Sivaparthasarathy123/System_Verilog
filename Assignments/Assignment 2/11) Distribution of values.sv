// dist example 
class distribution;
    rand int unsigned data;

    constraint data_dist_c {
      data dist {
          [0:100]   :/ 10,   
          [101:255] :/ 30  
      };
    }
  endclass

module dist_tb;
  distribution d;

  initial begin
    d = new();

    $display("Randomized data samples:");

    for (int i = 0; i < 10; i++) begin
      if (d.randomize())
        $display("Sample %0d: data = %0d", i+1, d.data);
      else
        $display("Randomization failed at sample %0d", i+1);
    end
  end

endmodule
