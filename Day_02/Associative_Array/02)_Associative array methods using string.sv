//Associative array methods using string

module associative_array_methods_using_string;

  int pos[string];    // pos as position
  string index;

  initial begin
    pos["winner"]      = 1;
    pos["runner one"]  = 2;
    pos["runner two"]  = 3;
    pos["loser"]       = 4;

    // Display array
    $display("Associative Array:");
    foreach (pos[i])
      $display("position[%0s] = %0s", i, pos[i]);

    // num() and size()
    $display("num()  = %0d", pos.num());
    $display("size() = %0d", pos.size());

    // exists()
    $display("exists(loser)  = %0d", pos.exists("loser"));
    $display("exists(winner) = %0d", pos.exists("winner"));

    // first()
    if (pos.first(index))
      $display("first index = %0s", index);

    // last()
    if (pos.last(index))
      $display("last index  = %0s", index);

    // next()
    index = ("runner two");
    if (pos.next(index))
      $display("next of runner two = %0s", index);

    // prev()
    index = ("loser");
    if (pos.prev(index))
      $display("previous of loser = %0s", index);

    // delete single index
    pos.delete("loser");
    $display("After deleting index loser:");
    foreach (pos[i])
      $display("pos[%0s] = %0d", i, pos[i]);

    // delete entire array
    pos.delete();
    $display("After clearing array, size = %0d", pos.size());
  end

endmodule
