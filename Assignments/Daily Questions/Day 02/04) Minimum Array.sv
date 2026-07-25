// Array Minimum
module minimum;

  int arr[]='{20,55,10,99,44};

  int min;

  initial begin

    min = arr[0];

    foreach(arr[i])begin
      if(arr[i]<min)
        min=arr[i];
    end

    $display("Minimum = %0d",min);

  end

endmodule
