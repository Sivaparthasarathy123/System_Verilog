// Q6 Class B extended from A with 2 different data type variables

class A;
  int a;      // integer
  bit b;      // 1-bit
  real c;     // real number
  string d;   // string

  function new();
    a = 10;
    b = 1;
    c = 3.14;
    d = "Base Class A";
  endfunction

  function void display();
    $display("A: a=%0d b=%0b c=%0f d=%s", a, b, c, d);
  endfunction
endclass

class B extends A;
  byte  e;      
  logic [7:0] f;

  function new();
    super.new();   
    e = 8'hFA;
    f = 8'h75;
  endfunction

  function void display();
    super.display();
    $display("B: e=%0h f=%0h", e, f);
  endfunction
endclass
