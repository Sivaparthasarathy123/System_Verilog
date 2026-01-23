// UART Interface Modport
interface uart_if (input logic clk);

  logic rst;
  logic baud_tick, baud16_tick;

  logic tx_start;
  logic [7:0] tx_data;
  logic tx, tx_busy;

  logic rx;
  logic [7:0] rx_data;
  logic rx_done;

  logic par_en, par_ty;
  logic parity_error, framing_error;

  // TX DUT Modport
  modport TX_DUT (
      input  clk, rst, baud_tick, tx_start, tx_data, par_en, par_ty,
      output tx, tx_busy);

  // RX DUT Modport
  modport RX_DUT (
      input  clk, rst, baud16_tick, rx, par_en, par_ty,
      output rx_data, rx_done, parity_error, framing_error);

  // Testbench Modport
  modport TB (
      output rst, baud_tick, baud16_tick,
      output tx_start, tx_data, par_en, par_ty, rx,
      input  tx, tx_busy, rx_data, rx_done, parity_error, framing_error);

endinterface
