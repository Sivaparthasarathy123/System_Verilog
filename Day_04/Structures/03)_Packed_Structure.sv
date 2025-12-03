// Packed Structure
module packed_struct;
  typedef struct packed {
    bit [3:0] id;
    bit [7:0] data;
    bit valid;
  } identity;

  initial begin
    identity card = '{4'hA, 8'h55, 1'b1};
    $display("Packed = %0p", card);
  end
endmodule
