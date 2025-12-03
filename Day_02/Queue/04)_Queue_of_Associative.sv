// Queue of associative
module queue_of_associative;
  int assoc[$][int]; 
  int temp[int];    

  initial begin
    // 1st associative array
    temp[1] = 65;
    temp[5] = 50;
    temp[7] = 70;
    assoc.push_back(temp);

    // 2nd associative array
    // temp.delete();
    temp[2] = 20;
    temp[4] = 40;
    assoc.push_back(temp);
    temp.delete(2);

    $display("Queue of Associative = %0p", assoc[0]);
    $display("Queue of storage = %0p", temp);
    
  end

endmodule
