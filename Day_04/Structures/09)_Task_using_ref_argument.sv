//Task_using_ref_argument
module struct_task_ref;

  typedef struct {
    int val;
  } data_t;

  task increment(ref data_t d);
    d.val++;
  endtask

  data_t x;

  initial begin
    x.val = 5;
    increment(x);
    $display("Updated value = %0d", x.val); // prints 6
  end

endmodule
