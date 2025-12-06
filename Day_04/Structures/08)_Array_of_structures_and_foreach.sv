//Array of structures and foreach
module struct_array;

  typedef struct {
    int id;
    int score;
  } student_t;

  student_t st[3];

  initial begin
    st[0] = '{1, 80};
    st[1] = '{2, 90};
    st[2] = '{3, 88};

    foreach(st[i])
      $display("ID=%0d Score=%0d", st[i].id, st[i].score);
  end

endmodule
