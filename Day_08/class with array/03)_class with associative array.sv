// Class with associative array
class assoc_array;
  int marks[string];   

  // Constructor
  function new();
    marks["siva"] = 85;
    marks["nive"]   = 90;
    marks["saron"] = 95;
  endfunction

  // Display method
  function void display();
    string key;
    foreach (marks[key])
      $display("marks[%s] = %0d", key, marks[key]);
  endfunction
endclass


module assoc_array_tb;
  assoc_array a;

  initial begin
    a = new();
    a.display();
  end
endmodule
