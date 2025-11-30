//decode 2-bit input into 4-bit one-hot output using Unique case
module unique_case_decoder;
  logic [1:0] in;
  logic [3:0] out;

  initial begin
    in = 2'b10;

    unique case(in)
      2'b00: out = 4'b0001;
      2'b01: out = 4'b0010;
      2'b10: out = 4'b0100;
      2'b11: out = 4'b1000;
    endcase

    $display("Input=%b Output=%b", in, out);
  end
endmodule
