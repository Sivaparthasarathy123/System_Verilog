//SOLVE-BEFORE & DISTRIBUTION CONTROL

// Create 'arbiter' class:
// rand bit [3:0] request;  // One-hot request bits
// rand int       master_id; // 0-3
// Constraints:
// - request has exactly one bit set
// - master_id corresponds to set bit in request
// - Use solve...before to force request solved before master_id
// Check distribution difference with/without solve-before

class arbiter;
  rand bit [3:0] request;
  rand int master_id;
  
  constraint c1{
    $countones(request) == 1;}
  
  constraint c2{
    solve request before master_id;}

  constraint c3{
    foreach(request[i])
      master_id == 1 -> master_id == request[i];}
endclass

module arbiter_tb;
  
  initial begin
    arbiter a;
    
    repeat(5) begin
      a = new();
      
      a.c2.constraint_mode(0);
      a.randomize();
      $display("request = %p | Master id = %0d",a.request, a.master_id);
    end
  end
endmodule
      
