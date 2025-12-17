// Default Type parameter
class Holder #(type T = int);
  T data;

  function new(T d);
    data = d;
  endfunction
  
  function void display();
    $display("THe Data Value = %0d",data);
  endfunction
endclass

module value;
  initial begin
    Holder h1 = new(100);                 
    Holder #(logic [7:0]) h2 = new(8'hFF);
    
    h1.display();
    h2.display();
  end
endmodule
