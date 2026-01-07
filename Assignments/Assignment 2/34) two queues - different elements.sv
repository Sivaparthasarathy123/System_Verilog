// two queues - different elements
class diff_queue_c;
  rand int q1[$];
  rand int q2[$];

  // Queue size constraints
  constraint size_c {
    q1.size() == 5;
    q2.size() == 5;
  }

  // Element range
  constraint range_c {
    foreach (q1[i]) q1[i] inside {[0:50]};
    foreach (q2[j]) q2[j] inside {[0:50]};
  }

  // No common elements between queues
  constraint diff_c {
    foreach (q1[i])
      foreach (q2[j])
        q1[i] != q2[j];
  }
endclass

module different_elements;
  initial begin
    diff_queue_c d = new();
    d.randomize();
    $display("Randomized Inputs: q1 = %0p | q2 = %0p", d.q1, d.q2);
  end
  
endmodule
