// How do you instantiate an object of a class in SystemVerilog
class Student;
  int marks;
endclass

module tb;
  Student s;
  initial begin
    s = new();        // object creation
    s.marks = 90;
    $display("Marks = %0d", s.marks);
  end
endmodule
