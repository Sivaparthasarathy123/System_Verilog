// Basic Deep Copy
class Data;
  int value;

  function void copy(Data d);
    value = d.value;
  endfunction
endclass

module Deep_copy;
  Data d1, d2;

  initial begin
    d1 = new();
    d1.value = 10;

    d2 = new();
    d2.copy(d1);

    d2.value = 99;

    $display("d1 = %0d", d1.value);
    $display("d2 = %0d", d2.value);  
  end
endmodule
