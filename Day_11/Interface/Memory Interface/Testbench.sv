// Testbench
`include "interface.sv"
module mem_tb;
  
  // Clock Generation
  logic clk = 0;
  always #5 clk = ~clk; 

  // Interface and DUT instantiation
  mem_if inf(clk);
  memory_ctrl dut (.bus(inf.DUT));

  initial begin
    // Initialize
    inf.cb.we    <= 0;
    inf.cb.re    <= 0;
    inf.cb.addr  <= 0;
    inf.cb.wdata <= 0;
    
    @(inf.cb); // Waiting for first clock edge

    // Write Operation
    $display("[%0t] Writing: Addr = A1, Data = 0xACEDDECA", $time,inf.addr,inf.wdata);
    inf.cb.addr  <= 8'hA1;
    inf.cb.wdata <= 32'hACEDDECA;
    inf.cb.we    <= 1'b1;
    @(inf.cb);
    inf.cb.we    <= 1'b0;

    repeat (2) @(inf.cb); 

    // Read Operation
    $display("[%0t] Reading: Addr = %0d", $time,inf.addr);
    inf.cb.addr <= 8'hA1;
    inf.cb.re   <= 1'b1;
    @(inf.cb);
    inf.cb.re   <= 1'b0;
    

    @(inf.cb); 
    if (inf.cb.rdata === 32'hACEDDECA)
      $display("[%0t] PASS: Read correct data %0h", $time, inf.cb.rdata);
    else
      $display("[%0t] FAIL: Expected 0xAECDDCEA, Got 0x%h", $time, inf.cb.rdata);

    #20 $finish;
  end
endmodule
