// Gray Code
class gray_gen;
  rand bit [3:0] bin;   
  rand bit [3:0] gray;
  
  constraint c1{
    bin != 0;
    gray == ((bin) ^ (bin >> 1));}
    
//   function void post_randomize();
//     gray = bin ^ (bin >> 1);  
//   endfunction

endclass

module gray_code;

  initial begin
    gray_gen g = new();

    repeat (10) begin
      if(g.randomize())
        $display("gray = %0b  bin = %0b", g.gray, g.bin);
      else
        $display("Randomization failed");
    end

  end

endmodule
