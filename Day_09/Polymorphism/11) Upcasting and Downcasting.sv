// Upcasting and Downcasting
class Base;
  int id = 1;
endclass

class Child extends Base;
  int extra_data = 99; 
endclass

module Base_tb;
  
  initial begin
    Base  b_h;          
    Child c_h_orig = new(); 
    Child c_h_target;   

    // Upcasting 
    b_h = c_h_orig; 

    // Downcasting with $cast 
    if ($cast(c_h_target, b_h)) begin
      $display("Cast successful Extra data: %0d", c_h_target.extra_data);
    end 
    else begin
      $display("Cast failed: Object in base is not a Child type.");
    end

    begin
      Base b_base_only = new(); 
      if (!$cast(c_h_target, b_base_only)) begin
        $display("Expected failure: Cannot cast a pure Base object to Child.");
      end
    end
  end
endmodule
