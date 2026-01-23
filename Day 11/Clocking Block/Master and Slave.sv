interface ms_if(input logic clk);

  logic valid;
  logic ready;
  logic [7:0] data;

  clocking cb @(posedge clk);
    default input #1step output #1step;
    output valid, data;
    input ready;
  endclocking

endinterface

module master_slave;

  logic clk = 0;
  always #5 clk = ~clk;

  ms_if intf(clk);

  initial begin
    intf.cb.data  <= 8'hA5;
    intf.cb.valid <= 1;
    @(intf.cb);   
    $display("Ready = %0b", intf.cb.ready);
  end

endmodule
