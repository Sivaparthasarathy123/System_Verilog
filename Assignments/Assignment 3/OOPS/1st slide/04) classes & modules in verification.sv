// How are classes used in verification as opposed to modules
// Classes model transactions and testbench components
class Transaction;
  rand int addr;
  rand int data;
endclass

//Modules connect DUT and signals
module dut(input int a, b, output int y);
  assign y = a & b;
endmodule
