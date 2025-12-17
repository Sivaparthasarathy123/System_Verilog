// Passing Struct as type parameter
typedef struct {
  int id;
  byte data;
} packet;

class Store #(type T);
  T pkt;

  function new(T p);
    pkt = p;
  endfunction
  
  function void display();
    $display("Visualize the data & id in packet = %0p",pkt);
  endfunction
endclass

module struct_param;
  initial begin
    packet p = '{1, 8'hff};
    Store #(packet)ps = new(p);
    
    ps.display();
  end
endmodule
