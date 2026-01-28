// Testbench
module adder_tb;
  adder_if inf(); 

  // Connect using the DUT modport
  full_adder_4bit dut (.inf(inf.DUT)); 

  initial begin
    // Driving signals through the TB modport
    inf.TB.a = 4'd7;
    inf.TB.b = 4'd2;
    inf.TB.cin = 1'b0;
    
    #10;
    $display("Sum = %0d", inf.TB.sum);
    $finish;
  end
endmodule
