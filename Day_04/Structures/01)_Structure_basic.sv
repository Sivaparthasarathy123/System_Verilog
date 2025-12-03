//structure basic
module structure_basic;
  struct{
    string name;
    int fees;
    string duration[int];
  }course;
  
  initial begin
    course.name = "VLSI DV";
    course.fees = 88500;
    course.duration = '{8 :"months"};
    
    $display("Course Details = %0p", course);
    
  end
endmodule
