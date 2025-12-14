// How is a static task invoked differently from a non-static task
class Utility;

  static task show_static();
    $display("Static task called");
  endtask

  task show_non_static();
    $display("Non-static task called");
  endtask

endclass

module tb;
  Utility u;
  initial begin
    Utility::show_static();  // static task

    u = new();
    u.show_non_static();     // non-static task
  end
endmodule
