//Queue of Dynamic
module queue_of_dynamic;
  int q_of_dyn[$][ ];
  int da1[], da2[];

  initial begin
    da1 = '{1,2,3};
    q_of_dyn.push_back(da1);   

    da2 = '{10,20,30,40};
    q_of_dyn.push_back(da2);   
    $display("%p", q_of_dyn);
  end
endmodule
