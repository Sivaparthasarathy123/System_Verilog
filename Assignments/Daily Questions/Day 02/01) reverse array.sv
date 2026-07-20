module reverse_array;

  int arr[] = '{10,20,30,40,50};
  int temp;
  int i;

  initial begin

    $display("Before Reverse");

    foreach(arr[i])
      $write("%0d ",arr[i]);

    $display("");

    for(i=0;i<arr.size()/2;i++)begin
      temp = arr[i];
      arr[i] = arr[arr.size()-1-i];
      arr[arr.size()-1-i] = temp;
    end

    $display("After Reverse");

    foreach(arr[i])
      $write("%0d ",arr[i]);

    $display("");

  end

endmodule
