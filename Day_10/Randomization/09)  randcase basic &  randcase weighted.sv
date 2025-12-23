// randcase basic
module randcase_basic;

  initial begin
    $display("\n-------Randcase Basic-------");
    repeat (5) begin
      randcase
        1: $display("READ operation");
        1: $display("WRITE operation");
        1: $display("IDLE operation");
      endcase
    end
  end
endmodule

// Weighted randcase
module randcase_weighted;

  initial begin
    $display("\n-------Randcase weighted-------");
    repeat (10) begin
      randcase
        5: $display("READ");
        2: $display("WRITE");
        1: $display("ERROR");
      endcase
    end
  end
endmodule

