// Memory Interface
interface mem_if(input logic clk);
  logic [7:0]  addr;
  logic [31:0] wdata;
  logic [31:0] rdata;
  logic        we;
  logic        re;

  // Clocking block for the Testbench
  clocking cb @(posedge clk);
    default input #1ns output #1ns;
    output addr, wdata, we, re;
    input  rdata;
  endclocking

  // Modport for the Testbench
  modport TB (clocking cb, input clk);

  // Modport for the Design (DUT)
  modport DUT (
    input clk, addr, wdata, we, re,
    output rdata
  );
endinterface
