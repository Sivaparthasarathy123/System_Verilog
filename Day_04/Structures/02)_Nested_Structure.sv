//Nested structure
module nested_structure;
  typedef struct {
    int day;
    int month;
    int year;
  } date_t;

  typedef struct {
    string name;
    date_t dob;
  } student;

  initial begin
    student s = '{ "Siva", '{4, 12, 2003}};
    $display("Nested structure = %0p", s);
  end
endmodule
