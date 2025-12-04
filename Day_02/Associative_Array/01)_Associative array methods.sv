// Associative array methods

module associative_array_methods;

  int val[int];
  int index;

  initial begin
    val[10] = 100;
    val[3]  = 30;
    val[25] = 250;
    val[7]  = 70;

    // Display array
    $display("Associative Array:");
    foreach (val[i])
      $display("value[%0d] = %0d", i, val[i]);

    // num() and size()
    $display("num()  = %0d", val.num());
    $display("size() = %0d", val.size());

    // exists()
    $display("exists(7)  = %0d", val.exists(7));
    $display("exists(50) = %0d", val.exists(50));

    // first()
    if (val.first(index))
      $display("first index = %0d", index);

    // last()
    if (val.last(index))
      $display("last index  = %0d", index);

    // next()
    index = 3;
    if (val.next(index))
      $display("next of 3 = %0d", index);

    // prev()
    index = 25;
    if (val.prev(index))
      $display("previous of 25 = %0d", index);

    // delete single index
    val.delete(7);
    $display("After deleting index 7:");
    foreach (val[i])
      $display("val[%0d] = %0d", i, val[i]);

    // delete entire array
    val.delete();
    $display("After clearing array, size = %0d", val.size());
  end

endmodule
