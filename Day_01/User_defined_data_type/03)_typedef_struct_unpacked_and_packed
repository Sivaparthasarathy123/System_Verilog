// typedef struct unpacked and packed

//unpacked struct
module unpacked_struct;

  typedef struct {
    int    id;
    string name;
    bit    valid;
  } student_t;

  student_t s1, s2, s3, s4;

  initial begin
    
    // Positional assignment
    s1 = '{10, "Siva", 1};
    $display("Positional -> id=%0d name=%s valid=%0b",s1.id, s1.name, s1.valid);

    // Named assignment
    s2 = '{id:20, name:"Sarathy", valid:0};
    $display("Named -> id=%0d name=%s valid=%0b",s2.id, s2.name, s2.valid);

    // Default assignment 
    s3 = '{default:0};
    $display("Default -> id=%0d name=%s valid=%0b",s3.id, s3.name, s3.valid);
  end

endmodule

//Packed struct

module packed_struct;

  typedef struct packed {
    logic [3:0]  opcode;    
    logic [7:0]  addr;      
    logic        valid;     
  } packet_t;              

  packet_t p1, p2, p3, p4;

  initial begin

    //  Positional assignment
    p1 = '{4'hA, 8'h55, 1'b1};
    $display("Positional -> %b", p1);

    //  Named assignment
    p2 = '{opcode:4'hF, addr:8'hAA, valid:1'b0};
    $display("Named -> %b", p2);

    //  Default assignment
    p3 = '{default:0};
    $display("Default -> %b", p3);

    //  Replication assignment
    p4 = '{3{1'b1}};  
    $display("Replication -> %b", p4);
    
  end

endmodule
