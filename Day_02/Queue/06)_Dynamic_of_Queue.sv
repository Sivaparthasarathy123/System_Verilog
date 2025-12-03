// Dynamic of Queue
module dynamic_of_queue;
  int dyn_of_q[][ ];
  int q1[$], q2[$];
  
  initial begin
    dyn_of_q = new[2]; // two elements

    q1 = {5, 10, 15};
    dyn_of_q[0] = q1;

    q2 = {100, 200};
    dyn_of_q[1] = q2;

    $display("%p", dyn_of_q);
  end
endmodule
