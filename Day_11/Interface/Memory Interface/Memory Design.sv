// Memory Design
module memory_ctrl (
  mem_if.DUT bus
);
  // Memory storage
  logic [31:0] mem_array [0:255];

  always_ff @(posedge bus.clk) begin
    if (bus.we) begin
      mem_array[bus.addr] <= bus.wdata;
    end
    
    if (bus.re) begin
      bus.rdata <= mem_array[bus.addr];
    end else begin
      bus.rdata <= 32'h0; 
    end
  end
endmodule
