// Memory Interface
interface mem_if;

  logic        clk;
  logic [7:0]  addr;
  logic [31:0] wdata;
  logic [31:0] rdata;
  logic        we;   // write enable
  logic        re;   // read enable

endinterface

