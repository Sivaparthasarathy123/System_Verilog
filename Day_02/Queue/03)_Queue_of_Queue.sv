//Queue of Queue
module queue_of_queue;

  int q1[$];           
  int q2[$];          
  int store[$][$];    

  initial begin
    q1 = '{1, 2, 3};
    q2 = '{10, 20, 30};

    // Push queues to store
    store.push_back(q1);
    store.push_back(q2);

    $display("Queue of Queues = %p", store);
    $display("Queue[0] = %p", store[0]);
    $display("Queue[1][2] = %0d", store[0][1]);  
  end

endmodule
