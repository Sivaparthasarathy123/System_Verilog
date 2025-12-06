//Structure_with_Dynamic_array
module struct_with_dynamic_array;

  typedef struct {
    int id;
    int values[];
  } rec_t;

  rec_t r;

  initial begin
    r.id = 10;
    r.values = new[3];
    r.values = '{1,2,3};

    $display("ID=%0d", r.id);
    foreach(r.values[i])
      $display("Val[%0d]=%0d", i, r.values[i]);
  end

endmodule
