// Alternating Pairs
class alternating_pairs;
  rand bit a[8]; 

  constraint c_pairs {
    foreach(a[i]) {
      if ((i/2) % 2 == 0)     
        a[i] == 0;
      else
        a[i] == 1;
    }
  }

  function void display();
    foreach(a[i]) 
      $write("%0d ", a[i]);
      $display("");
  endfunction
endclass

module alternating;
  
  initial begin
    alternating_pairs obj = new();
    obj.randomize();
    obj.display();
  end
endmodule
