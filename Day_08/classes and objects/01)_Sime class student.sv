// Simple class Student
class Student;
  string name;
  int marks;
endclass

module test;
  Student s1, s2;

  initial begin
    s1 = new();
    s2 = new();

    s1.name = "Arun";
    s1.marks = 85;

    s2.name = "Bala";
    s2.marks = 92;

    $display("Student 1: %s, Marks = %0d", s1.name, s1.marks);
    $display("Student 2: %s, Marks = %0d", s2.name, s2.marks);
  end
endmodule
