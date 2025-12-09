// Return result if result is pass by value
module return_result;
  int a;
  int result;
  
  task compute(input int a, output int result);
    result = a * 2;
  endtask

  initial begin
    a = 10; 
    compute(a, result);
    $display("Return Result a = %0d result = %0d", a, result);
  end
endmodule
