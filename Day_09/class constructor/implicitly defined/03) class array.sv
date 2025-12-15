// Implicit Constructor with Class Array
class Packet;
  int data;
endclass

module tb;
  Packet p[3];

  initial begin
    foreach (p[i]) begin
      p[i] = new();          // implicit constructor
      p[i].data = i * 10;
    end

    foreach (p[i])
      $display("p[%0d].data = %0d", i, p[i].data);
  end
endmodule
