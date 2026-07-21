// sort array
module sort_array;

  int arr[]='{9,5,1,8,3};

  initial begin

    $display("Original");

    foreach(arr[i])
      $write("%0d ",arr[i]);

    $display("");

    arr.sort();

    $display("Ascending");

    foreach(arr[i])
      $write("%0d ",arr[i]);

    $display("");

    arr.rsort();

    $display("Descending");

    foreach(arr[i])
      $write("%0d ",arr[i]);

  end

endmodule
