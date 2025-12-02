// Queue Methods
module queue_methods;
  int q[$];
  int index[$];
  
  initial begin
    q = '{1,2,3};
    q.insert(1, 10); // insert at index 1
    $display("after insert: %p", q);
    
    index = q.find_index with (item == 3);
    $display("find index of 3 = %0p", index);

    q.delete(2); // delete element at index 2
    $display("after delete index 2: %p", q);

    q.delete(); // delete all
    $display("after delete all: size=%0d", q.size());
  end
endmodule
