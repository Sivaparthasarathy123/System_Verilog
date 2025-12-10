// Update struct value using ref
module student_update;
typedef struct {
  string name;
  int marks;
} student;

  student st_arr[] = '{'{ "siva", 80},'{ "harish", 85},'{ "divakar", 90}};

  task automatic update_marks(ref student s[]);
    foreach(s[i])
      s[i].marks += 5;
  endtask

  initial begin
    $display("Before: %p", st_arr);
    update_marks(st_arr);
    $display("After : %p", st_arr);
  end
endmodule
