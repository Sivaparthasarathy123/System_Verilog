// Array Maximum
module maximum;

  int arr[]='{20,55,10,99,44};

  int max;

  initial begin

    max=arr[0];

    foreach(arr[i])begin
      if(arr[i]>max)
        max=arr[i];
    end

    $display("Maximum = %0d",max);

  end

endmodule
