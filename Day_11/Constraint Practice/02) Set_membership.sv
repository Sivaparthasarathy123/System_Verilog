// Q1.2 Set Membership
// Create a class with:

// rand bit [3:0] opcode (0-15)

// Constraint: opcode must be in {2, 4, 6, 8, 10}

// Constraint: opcode must not be in {1, 3, 5}

// Constraint: if opcode is 2, data field must be 0xFF

class setm;

  rand bit [3:0] opcode;   
  rand bit [7:0] data;     // data
  
  // Opcode must be one of these
  constraint c_valid { opcode inside {2,4,6,8,10}; }

  // Opcode must not be these
  constraint c_invalid { !(opcode inside {1,3,5}); }

  // If opcode == 2 → data must be 0xFF
  constraint c_cond { opcode == 2 -> data == 8'hFF; }

endclass

module setm_tb;

  initial begin
    setm m = new();

    repeat (10) begin
      if (m.randomize())
        $display("opcode = %0d, data = %0h", m.opcode, m.data);
      else
        $display("Randomization failed");
    end

  end
endmodule
