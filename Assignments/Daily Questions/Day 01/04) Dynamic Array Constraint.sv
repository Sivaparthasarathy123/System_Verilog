// Dynamic Array Constraint

class dynamic_array;

  rand bit [7:0] data[];  

  constraint size_c {
    data.size() inside {[5:10]};
  }

  constraint data_c {
    foreach (data[i]) {
      data[i] inside {[10:50]};
    }
  }

  constraint sum_c {
        data.sum() < 200;
  }

  function void print(string name = "Dynamic Array");
    $display("----------------------------");
    $display("%s [%0d] = ", name, data.size());
    foreach (data[i]) 
      $display("%0d ", data[i]);
    $display("Sum = %0d", data.sum());
    $display("----------------------------");
  endfunction
endclass


// Testbench Module
module top;
  dynamic_array da;

    initial begin

      da = new();

      $display("\n------ DYNAMIC ARRAY RANDOMIZATION TEST ------");


      repeat (5) begin
        if (da.randomize()) begin
          da.print("Dynamic Array");
        end else begin
          $error("Randomization failed");
         end
      end
    end
endmodule
