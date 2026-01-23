// Simple Master and Slave Modport
interface bus_if;

  logic clk;
  logic [7:0] data;
  logic valid;
  logic ready;

  modport MASTER (input clk, output data, valid, ready);
  modport SLAVE  (input clk, data, valid, output ready);

endinterface
