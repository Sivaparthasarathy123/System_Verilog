//structure pass by reference
module struct_ref;
  typedef struct {
    int id;
    string name;
  } info;

  info data = '{id:1, name:"Tom"};

  task automatic update(ref info d);
    d.id = 10;
    d.name = "Jerry";
  endtask

  initial begin
    $display("Before: id=%0d, name=%s", data.id, data.name);
    update(data);
    $display("After : id=%0d, name=%s", data.id, data.name);
  end
endmodule
