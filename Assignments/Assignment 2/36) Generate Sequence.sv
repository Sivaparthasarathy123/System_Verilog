// Generate Sequence
class sequence_c;
  rand int data[10];

  constraint pattern_c {
    data[0] == 0;
    data[1] == 1;
    data[2] == 0;
    data[3] == 2;
    data[4] == 0;
    data[5] == 3;
    data[6] == 0;
    data[7] == 4;
    data[8] == 0;
    data[9] == 5;
  }
endclass

module sequence_order;
  initial begin
    sequence_c obj = new();
    if (obj.randomize()) begin
      $display("Sequence: %p", obj.data); 
    end else begin
      $display("Randomization failed!");
    end
  end
endmodule
