//Triangle Pattern
module triangle_pattern;
  
  initial begin
    for(int i=1; i<=5; i++) begin
        for(int j=1; j<=i; j++)
          $write(" * ");
      $display("");
    end
  end
endmodule
  
