//Associative of Queue
module associative_of_queue;
  int q[int][$];
  
  initial begin
    q[10].push_back(1);
    q[10].push_back(2);

    q[5].push_back(100);
    q[5].push_back(200);

    $display("%p", q);
  end
endmodule
