// Dynamic Array Manipulation method
module dynamic_alm;
  int rows = 8;
  int cols = 8;
  int dy_arr[][];
  int flat[$]; 
  int result[$];
  int max_val[$], min_val[$];
  int unique_vals[$], unique_idx[$];
  
  initial begin
    
    //making rows and colums
    dy_arr = new[rows];
    foreach (dy_arr[i])begin
      dy_arr[i] = new[cols];
    end
    
    // set random value
    foreach(dy_arr[i, j])
      dy_arr[i][j] = $urandom_range(100,0);
    dy_arr.size();
    $display("size of the array = %0p", dy_arr);
    
    //flattened to 1D array
    foreach(dy_arr[i,j])
      flat.push_back(dy_arr[i][j]);
    
    //find
    result = flat.find with (item == 30);
    $display("All occurrences of 30 = %0p", result);
    
    //find index
    result = flat.find_index with (item == 0);
    $display("index element = %0p", result);
    
    //find first
    result = flat.find_first with (item);
    $display("first = %0p", result);
    
    //find first index
    result = flat.find_first_index with (item);
    $display("first index = %0p", result);
    
    //find last
    result = flat.find_last with (item);
    $display("last = %0p", result);
    
    //find last index
    result = flat.find_last_index with (item);
    $display("last index = %0p", result);
    
    //maximum value
    max_val = flat.max;
    $display("maximum value = %0p", max_val);
    
    //minimum value
    min_val = flat.min;
    $display("minimum value = %0p", min_val);
    
    //unique value
    unique_vals = flat.unique;
    $display("unique value = %0p", unique_vals);
 
    //unique_index
    unique_idx = flat.unique_index;
    $display("unique index = %0p", unique_idx);
    
  end
  
endmodule
