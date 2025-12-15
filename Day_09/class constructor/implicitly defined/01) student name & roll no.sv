// implicit constructor with student history
class Student;
  int roll_no;
  string name;

endclass

module student_tb;
  Student s;

  initial begin
    s = new();          // implicit constructor is called
    s.roll_no = 101;
    s.name    = "Siva";

    $display("Roll No = %0d, Name = %s", s.roll_no, s.name);
  end
endmodule
