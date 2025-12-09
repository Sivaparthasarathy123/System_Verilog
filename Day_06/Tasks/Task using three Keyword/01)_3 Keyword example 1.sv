// task using three keyword
module param_example;

  int a = 5;        // input to task
  int b;            // output from task
  int c = 10;       // inout to task

  // Task using input, output, inout
  task automatic calculate(
      input  int in_val,        // read-only
      output int out_val,       // write-only
      inout  int update_val     // read + write
  );
    out_val = in_val * 2;       // writes result
    update_val = update_val + in_val;
  endtask

  initial begin
    $display("Before: a=%0d, b=%0d, c=%0d", a, b, c);

    calculate(a, b, c);

    $display("After : a=%0d, b=%0d, c=%0d", a, b, c);
  end

endmodule
