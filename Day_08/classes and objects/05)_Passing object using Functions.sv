// Passing object to function
class Student;
  string name;
  int marks;
endclass

module test;

  function void display(Student s);
    $display("Name = %s, Marks = %0d", s.name, s.marks);
  endfunction

  initial begin
    Student st = new();
    st.name = "Nive";
    st.marks = 100;

    display(st);
  end
endmodule
