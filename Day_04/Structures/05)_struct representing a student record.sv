//struct representing a student record
module student_struct;

  typedef struct {
    string name;
    int    roll_no;
    int    marks;
  } student_t;

  student_t s;

  initial begin
    s.name   = "Siva";
    s.roll_no = 101;
    s.marks   = 95;

    $display("Student Name   : %s", s.name);
    $display("Student Roll No: %0d", s.roll_no);
    $display("Student Marks  : %0d", s.marks);
  end

endmodule
