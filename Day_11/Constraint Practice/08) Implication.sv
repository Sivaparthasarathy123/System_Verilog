//   Implication
//   rand bit mode; // 0 or 1
//   rand int a, b, c;
//   // Constraints using -> operator:
//   // If mode==0, then a < b < c
//   // If mode==1, then a > b > c
//   // a + b + c = 100
//   // All values positive

class implication;
  rand bit mode;
  rand int a,b,c;
  
  constraint pos{
    a > 0;
    b > 0;
    c > 0;}
  
  constraint mode_0{
    (mode == 0) -> {
      a < b;
      b < c;}}
  
  constraint mode_1{
    (mode == 1) -> {
      a > b;
      b > c;}}
  
  constraint add{
    a + b + c == 100;}
   
endclass

module imp_tb;
  
  initial begin
    implication i;
    repeat (5) begin
      i = new();
      i.randomize();
      $display("Mode = %0d | a =%0d | b = %0d | c = %0d",i.mode,i.a,i.b,i.c);
    end
  end
endmodule
    
     
