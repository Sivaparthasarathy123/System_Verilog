// Deep copy for dynamic array
class Array;
  int data[];

  function new();
    data = new[3];
    data = '{1,2,3};
  endfunction

  function void copy(Array a);
    data = new[a.data.size()];
    foreach (data[i])
      data[i] = a.data[i];
  endfunction
endclass

module Dynamic_array;
  Array a1, a2;

  initial begin
    a1 = new();
    a2 = new();
    a2.copy(a1);

    a2.data[0] = 99;

    $display("a1[0] = %0d", a1.data[0]); 
    $display("a2[1] = %0d", a2.data[1]);
    $display("a2[0] = %0d", a2.data[0]);
  end
endmodule
