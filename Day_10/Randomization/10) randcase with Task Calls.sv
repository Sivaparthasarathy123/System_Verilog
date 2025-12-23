// randcase with Task Calls
module randcase_task;

  task read_op();
    $display("READ");
  endtask

  task write_op();
    $display("WRITE");
  endtask

  task idle_op();
    $display("IDLE");
  endtask

  initial begin
    repeat (6) begin
      randcase
        3: read_op();
        2: write_op();
        1: idle_op();
      endcase
    end
  end
endmodule
