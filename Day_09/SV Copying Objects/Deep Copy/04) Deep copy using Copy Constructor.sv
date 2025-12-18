// Deep copy using Copy Constructor
class Transaction;
  int id;
  int data[];

  function new(Transaction t = null);
    if (t != null) begin
      id = t.id;
      data = new[t.data.size()];
      foreach (data[i])
        data[i] = t.data[i];
    end
  endfunction
endclass

module copy_const;
  Transaction t1, t2;

  initial begin
    t1 = new();
    t1.id = 1;
    t1.data = new[2];
    t1.data = '{6,8};

    t2 = new(t1);
    t2.data[0] = 67;

    $display("t1.data[0] = %0d", t1.data[0]); 
    $display("t2.data[1] = %0d", t2.data[1]);
    $display("t2.data[0] = %0d", t2.data[0]);
  end
endmodule
