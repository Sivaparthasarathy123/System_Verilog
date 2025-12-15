// Example 1 Explicitly defined constructor
class student;
  int roll_no;
  string name;

  // Explicit constructor
  function new(int r, string n);
    roll_no = r;
    name    = n;
  endfunction

  // Display method
  function void display();
    $display("Roll Number: [%0d], Name: [%0s]", roll_no, name);
  endfunction
endclass


module student_tb;
  student s;

  initial begin
    // Constructor is called here
    s = new(102, "siva");
    s.display();
  end
endmodule
