//structure including function
module struct_including_function;
  typedef struct {
    string name;
    int players;
    bit[3:0] match;
  }game;
  
  function void print (game g);
    $display("Game: %0p;", g);
  endfunction
  
  function game flow(string name, int players, bit[3:0] match);
    game g;
    g.name = name;
    g.players = players;
    g.match = match;
    return g;
  endfunction
  
  initial begin
    game g1, g2;
    g1 = flow("cricket",'d11,'d8);
    g2 = flow("kabadi",'d7,'d8);
    print (g1);
    print (g2);
  end
endmodule
    
