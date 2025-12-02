// Void Data Type

module void_datatype;

  function void print_message();
    $display("void function");
  endfunction

  function void show_number(int num);
    $display("number = %0d", num);
  endfunction

  initial begin
    $display("\n----- Void Function Example -----");
    print_message();
    show_number(25);
    $display("---------------------------------\n");
  end

endmodule
