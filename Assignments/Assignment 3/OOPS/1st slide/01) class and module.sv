// what is class in system verilog and how does it differ from the module 
//class
class Packet; // class supports oops and it is mainly used for verification
  int data;
endclass

module initialize;   // Module doesnt support oops it is used for RTL design
  Packet p;
  initial begin
    p = new();
    p.data = 10;
    $display("Packet data = %0d", p.data);
  end
endmodule

