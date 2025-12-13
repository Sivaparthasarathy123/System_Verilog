// student marks using this keyword
class Student;
  int marks;

  function new(int marks);
    this.marks = marks;   
  endfunction

  function void display();
    $display("Marks = %0d", marks);
  endfunction
endclass

module test;
  initial begin
    Student s = new(90);
    s.display();
  end
endmodule
