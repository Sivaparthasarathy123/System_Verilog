// Dynamic using Associative 
module dynamic_using_associative;
  int classroom [][string];
  
  initial begin
    classroom = new[2];
    classroom [0]='{"siva": 80, "divakar": 90, "harish": 99, "selva": 100,  "vignesh":98 };
    classroom [1]='{"nive": 99, "safeeq": 88, "yuvaraj": 100, "Saron": 10, "Dishor":80 };
    
    $display("student marks : %0p",classroom);
    
    //sort
    classroom[1].sort() ;
    $display("student marks : %0p",classroom[1]);   
  end
endmodule

    

