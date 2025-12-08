//Function pass by name
module function_example;
  int a, b;
  int out;
  
  function void fn_val(string name, int val);
    $display("Function: Values passed by name: %s, %0d", name, val);
  endfunction

  initial begin
    fn_val(.val(15), .name("siva"));
  end
endmodule
