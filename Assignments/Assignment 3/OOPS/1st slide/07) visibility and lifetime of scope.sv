// Visibility and lifetime of static variables in a package
package config_pkg;
  static int timeout = 100;
endpackage

module tb;
  import config_pkg::*;
  initial begin
    $display("Timeout = %0d", timeout);
  end
endmodule
