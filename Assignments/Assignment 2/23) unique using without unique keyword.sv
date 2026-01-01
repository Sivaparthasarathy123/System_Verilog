// unique using without unique keyword
class unique_numbers;
    rand bit [7:0] nums[4]; 

    constraint unique_c {
        nums[0] != nums[1];
        nums[0] != nums[2];
        nums[0] != nums[3];
        nums[1] != nums[2];
        nums[1] != nums[3];
        nums[2] != nums[3];
    }

    constraint range_c {
        foreach(nums[i])
            nums[i] inside {[0:100]}; 
    }

    function void display_nums();
        $write("Unique Numbers: ");
        foreach(nums[i])
            $write("%0d ", nums[i]);
        $write("\n");
    endfunction
endclass

module unique_tb;
    unique_numbers u;

    initial begin
        u = new();

        repeat(5) begin
            if(u.randomize())
                u.display_nums();
            else
                $display("Randomization failed!");
        end
    end
endmodule

 
