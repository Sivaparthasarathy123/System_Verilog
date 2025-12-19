// Class H with static variable & static function
class H;
  static int count = 0;

  static function void increment();
    count++;
  endfunction
endclass

module static_test;
  int N = 5;

  initial begin
    repeat (N)
      H::increment();

    $display("Final static count = %0d", H::count);
  end
endmodule
