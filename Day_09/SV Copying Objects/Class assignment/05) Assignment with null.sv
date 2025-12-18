// Assignment with null
class Test;
  int x;
endclass

module assign_null;
  Test t1, t2;

  initial begin
    t1 = new();
    t1.x = 10;

    t2 = null;
    t2 = t1;     

    t1 = null;  

    if (t1 == null)
      $display("t1 is null");
  end
endmodule
