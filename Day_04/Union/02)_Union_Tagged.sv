// Union tagged
module tagged_union;
  typedef union tagged {
    int    id;
    string name;
    byte   status;
  } details;

  details d;

  initial begin
    d = '{ id: 101 };

    if (d.id)
      $display("ID Message = %0d", d.id);

    d = '{ name: "VLSI Verification" };

    if (d.name)
      $display("Name Message = %s", d.name);
  end

endmodule
