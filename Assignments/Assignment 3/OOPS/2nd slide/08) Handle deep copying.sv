// How to handle deep copying in SystemVerilog (Arrays)
class Data;
  int arr[];

  function new(int size);
    arr = new[size];
    foreach (arr[i])
      arr[i] = i;
  endfunction

  function Data deep_copy();
    Data d = new(arr.size());
    foreach (arr[i])
      d.arr[i] = arr[i];
    return d;
  endfunction
endclass

module deep_copy;
  Data d1, d2;

  initial begin
    d1 = new(4);
    d2 = d1.deep_copy();

    d2.arr[0] = 99;

    $display("d1[0] = %0d", d1.arr[0]); 
    $display("d2[0] = %0d", d2.arr[0]); 
  end
endmodule
