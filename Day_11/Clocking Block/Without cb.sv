// Without Clocking Block
module dut (
    input clk,
    input [7:0] data_in,
    output reg [7:0] data_out
);

always @(posedge clk)
    data_out <= data_in;

endmodule

module no_cb;

  logic clk = 0;
  logic [7:0] data;
  logic [7:0] data_out;

  dut d1 (.clk(clk), .data_in(data), .data_out(data_out));

  always #5 clk = ~clk;

  initial begin
    $display(" without cb");
    $dumpfile("no_tb.vcd");
    $dumpvars;
    data = 8'h10;
    #10;
    data = 8'hAA;  // Drive exactly at clock edge
    #10;
    data = 8'h55;
    #20;
    $finish;
  end

endmodule

