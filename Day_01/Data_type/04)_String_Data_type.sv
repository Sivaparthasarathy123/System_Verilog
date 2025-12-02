// String Data Type

module string_datatype;

  string name;
  string course;
  int length;

  initial begin
   
    name   = "Sivaparthasarathy";
    course = "VLSI Design Verification";

    length = name.len();

    $display("----- String Datatype Example -----");
    $display("Name      = %s", name);
    $display("Course    = %s", course);
    $display("Length of name = %0d", length);

    string full_msg = "I am " + name + " studying " + course + ".";
    $display("Concatenated Message = %s", full_msg);
    $display("-----------------------------------");
  end

endmodule
