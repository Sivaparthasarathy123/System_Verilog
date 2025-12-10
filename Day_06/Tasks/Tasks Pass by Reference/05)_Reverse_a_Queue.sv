// Reverse a Queue
module reverse_queue;
  int q[$] = '{1, 2, 3, 4, 5};

  task automatic reverse_q(ref int x[$]);
    x.reverse;
  endtask

  initial begin
    $display("Before: %p", q);
    reverse_q(q);
    $display("After : %p", q);
  end
endmodule
