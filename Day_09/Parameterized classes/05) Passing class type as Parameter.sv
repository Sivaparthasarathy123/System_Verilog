// Passing class type as Parameter
class Transaction;
  int id = 10;
endclass

class Wrapper #(type T);
  T obj;

  function new();
    obj = new();
  endfunction
endclass

module Passing_value;
  initial begin
    Wrapper #(Transaction) w = new();
    $display("ID = %0d", w.obj.id);
  end
endmodule
