// If-Else Constraints
// Create a packet class with:
// Constraints:
// If packet_type=0, length must be 64
// If packet_type=1, length must be between 64-1518
// If packet_type=2, length must be 64, address[31:16]=0
// If packet_type=3, length must be 64 or 128

class packet;
  rand bit [1:0] packet_type;
  rand bit [31:0] address;
  rand bit [15:0] length;
  
  constraint cm1{
    
    packet_type inside {[0:3]};
    
    if (packet_type==0)
      length == 64;
   
    else if (packet_type==1) 
      length inside {[64:1518]};
  
    else if (packet_type==2){ 
      length == 64; 
      address [31:16]==16'h0000;}
  
  else 
    length inside {64, 128};
  
  }
  
endclass

module packet_tb;
  
  initial begin
    packet p;
    repeat (5) begin
      p = new();
      if(p.randomize())
        $display("Packet = %0d | Address = %0d | Length = %0d",p.packet_type,p.address,p.length);
      else
        $display("Randomization Failed");
    end
  end
endmodule
  
  
  
