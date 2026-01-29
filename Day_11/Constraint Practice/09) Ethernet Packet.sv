// MAC Address
class EthernetPacket;
  // MAC addresses (48-bit)
  rand bit [47:0] dest_addr;
  rand bit [47:0] src_addr;
  
  // EtherType field (16-bit)
  rand bit [15:0] etype;
  
  // Length (16-bit) 
  rand bit [15:0] length;
  
  // Frame Check Sequence (32-bit)
  rand bit [31:0] fcs;
  
  // data
  rand byte data[];
  
  // Constraints
  constraint mac_constraints {
    src_addr[47:46] != 2'b01; 
    src_addr        != 48'hFFFFFFFFFFFF; 
    dest_addr       != 48'h0;  
    src_addr        != dest_addr;
  }
  
  constraint etype_constraint {
    etype inside {16'h0800,16'h0806,16'h86DD};
  }
  
  constraint length_constraints {
    length inside {[46:1500]};
    data.size() == length;
  }
  
endclass

module test;
  initial begin
    EthernetPacket pkt = new();
    int status;
    status = pkt.randomize();
    
    if (status) begin
      $display("Packet randomized successfully");
      $display("Src MAC: %012h", pkt.src_addr);
      $display("Dst MAC: %012h", pkt.dest_addr);
      $display("EtherType: %04h", pkt.etype);
      $display("Length: %0d bytes", pkt.length);
      $display("Data size: %0d bytes", pkt.data.size());
    end else begin
      $display("Randomization failed!");
    end
  end
endmodule
