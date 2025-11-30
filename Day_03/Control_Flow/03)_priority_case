// Priority case
//avoids latch formation
module priority_case_example;
  int x = 1;

  initial begin
    priority case (0)
      (x > 10): $display("x is greater than 10");
      (x > 0):  $display("x is positive");
      default:  $display("x is non-positive");
    endcase
  end
endmodule
