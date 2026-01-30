// Burst Data Length
// create 'burst_data' class:
// rand bit [31:0] data[];
// rand int        burst_len;
// Constraints:
// - burst_len inside {[1:8]}
// - data.size() == burst_len
// - Each data[i] should be unique
// - data[i] % 4 == 0  (word aligned

class burst_data;
  rand bit [31:0] data[];
  rand int burst_len;

  constraint c1{
    burst_len inside {[1:8]};}

  constraint c2{
    data.size() == burst_len;}

  constraint c3{
    unique{data};}
  
  constraint c4{
    foreach(data[i])
      data[i] % 4 == 0;}

endclass

module data;

  initial begin
    burst_data b;
    repeat (5) begin
      b = new();
      b.randomize();
      $display("Data = %0p | Burst Length = %0d",b.data,b.burst_len);
    end
  end
endmodule

