// Design Full Adder
module full_adder_4bit (adder_if.DUT inf);
  assign {inf.cout, inf.sum} = inf.a + inf.b + inf.cin;
endmodule

// Interface for Full Adder
interface adder_if;

  logic [3:0] a;
  logic [3:0] b;
  logic cin;
  logic [3:0] sum;
  logic cout;

  // Modport for DUT
  modport DUT (
    input  a, b, cin,
    output sum, cout
  );

  // Modport for the Testbench
  modport TB (
    output a, b, cin,
    input  sum, cout
  );

endinterface
