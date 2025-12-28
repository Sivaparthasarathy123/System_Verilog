// Avoid last5 values
class avoid_last5;
  rand bit [3:0] value;          
  static bit [3:0] history[$];   

  constraint avoid_repeat {
    !(value inside {history});}

  function void post_randomize();
    history.push_back(value);

    if (history.size() > 5)
      history.pop_front();
  endfunction
endclass

module avoid_last5_tb;
  avoid_last5 obj;

  initial begin
    obj = new();

    repeat (10) begin
      obj.randomize();
      $display("Generated value = %0d, History = %p",obj.value, obj.history);
    end
  end
endmodule
