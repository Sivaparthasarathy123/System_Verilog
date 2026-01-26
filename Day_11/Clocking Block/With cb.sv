// With Clocking Block
interface intf(input logic clk);

  logic [7:0] data;
  logic [7:0] data_out;

  clocking cb @(negedge clk);
  default input #1step output #1step;
    output data;
    input data_out;
  endclocking

endinterface

module with_cb;

  logic clk = 0;
  always #5 clk = ~clk;

  intf i(clk);

  dut d1 (.clk(clk), .data_in(i.data), .data_out(i.data_out));

  initial begin
    $dumpfile("with_cb.vcd");
    $dumpvars;
    
    i.cb.data <= 8'h10;
    @(i.cb);
    @(i.cb);

    i.cb.data <= 8'hAA;  // Driven after clock edge safely
    @(i.cb);

    i.cb.data <= 8'h55;
    @(i.cb);

    $finish;
  end

endmodule
