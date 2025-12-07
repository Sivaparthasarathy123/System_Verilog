// Find Index element in the Queue
module find_index_fn;
  int q[$] = '{5, 7, 9, 2, 4};
  int idx;

  function automatic int find_index(int arr[$], int val);
    foreach(arr[i])
      if(arr[i] == val)
        return i;
    return -1;
  endfunction

  initial begin
    idx = find_index(q, 9);
    $display("Index = %0d", idx);
    idx = find_index(q, 10);
    $display("Index = %0d", idx);
  end
endmodule
