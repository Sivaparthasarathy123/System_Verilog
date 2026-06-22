class fifo_constraint;
  rand int entry[16];    
  rand int depth;        
  rand int pop_ptr;      
  rand int push_ptr;     

  constraint fifo_c {
    // Unique Entry
    unique {entry};

    // Depth calculation
    depth == (push_ptr - pop_ptr + 16) % 16 + 1;

    foreach (entry[i]) {
      if (i < depth) {
        entry[i] == entry[(pop_ptr + i) % 16];
      }
    }

       // Full condition
       if (depth == 16) {
         push_ptr == pop_ptr;
       }

       // Empty condition
       if (depth == 0) {
         pop_ptr == push_ptr;
       }
       }
endclass
