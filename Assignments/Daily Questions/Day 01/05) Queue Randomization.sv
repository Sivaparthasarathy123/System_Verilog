// Queue Randomization

class combined_randomizer;
    rand bit [3:0] dyn_arr[];   
    rand int queue[$];          

    // Size constraints
    constraint size_dyn {
        dyn_arr.size() inside {[2:5]};
    }

    constraint size_queue {
        queue.size() inside {[1:4]};
    }

    // Element constraints for dynamic array
    constraint dyn_vals {
        foreach (dyn_arr[i]) {
            dyn_arr[i] >= 5;
            dyn_arr[i] <= 12;
        }
    }

    // Element constraints for queue
    constraint queue_vals {
        foreach (queue[i]) {
            queue[i] inside {[10:30]};
            queue[i] % 2 == 0;   // Even numbers only
        }
    }

    // Cross-constraint
    constraint cross_sum {
        dyn_arr.sum() < queue.sum();
    }

    function void print_all();
        $display("========================");
        $display("Dynamic Array [%0d] = ", dyn_arr.size());
        foreach (dyn_arr[i]) 
          $write("%0d ", dyn_arr[i]);
        $display("\nQueue [%0d] = ", queue.size());
        foreach (queue[i])
          $write("%0d ", queue[i]);
        $display("\nDynamic Sum = %0d, Queue Sum = %0d", dyn_arr.sum(), queue.sum());
        $display("========================");
    endfunction
endclass

module top_combined;
    combined_randomizer cr;

    initial begin
        cr = new();
        $display("\n===== COMBINED RANDOMIZATION TEST =====");

        repeat (3) begin
            if (cr.randomize()) begin
                cr.print_all();
            end else begin
                $error("Combined randomization failed");
            end
        end
    end
endmodule
