// Deep Copy with multiple levels
class C;
  int c;
  
  function void copy(C sc);
    c = sc.c;
  endfunction
  
endclass

class B;
  C c1;
  
  function new(); 
    c1 = new(); 
  endfunction
  
  function void copy(B sc);
    c1.copy(sc.c1);
  endfunction
endclass

class A;
  B b1;
  
  function new(); 
    b1 = new(); 
  endfunction
  
  function void copy(A sc);
    b1.copy(sc.b1);
  endfunction
endclass

module Multiple_levels;
  A a1, a2;

  initial begin
    a1 = new();
    a1.b1.c1.c = 68;

    a2 = new();
    a2.copy(a1);

    a2.b1.c1.c = 102;

    $display("a1.c = %0d", a1.b1.c1.c); 
    $display("a2.c = %0d", a2.b1.c1.c); 
  end
endmodule
