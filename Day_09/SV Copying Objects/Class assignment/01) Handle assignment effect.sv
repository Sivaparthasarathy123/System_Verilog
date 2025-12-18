// Handle assignment effect
class Sample;
  int data;
endclass

module class_assign;
  Sample a, b;

  initial begin
    a = new();
    a.data = 10;

    b = a;      
    b.data = 50;

    $display("a.data = %0d", a.data);
    $display("b.data = %0d", b.data);
  end
endmodule
