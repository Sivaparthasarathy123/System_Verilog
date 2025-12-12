// Handle and new
class Handle;
  int x;
endclass

module test;
  Handle h1;          // handle only declared
  Handle h2 = new(); // handle and object created

  initial begin
    // No value is assigned of h1 because object is not created
    h2.x = 20;

    $display("Handle declared: h1 = %p", h1);
    $display("Object created: h2 = %p, x = %0d", h2, h2.x);
  end
endmodule
