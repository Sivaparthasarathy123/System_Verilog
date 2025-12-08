//pass by name
module pass_by_name;
  int a = 5;

  function int square(int x);
    return x * x;
  endfunction

  initial begin
    $display("Function square(a+1) = %0d", square(a+1));   
  end
endmodule
