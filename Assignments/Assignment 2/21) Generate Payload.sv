// Generate Payload
class payload_data;
    rand bit [7:0] data[];
    rand int unsigned payload_size;
  
    constraint size_c {
        payload_size inside {[1:16]}; 
        data.size() == payload_size;
    }
    constraint data_c {
        foreach(data[i]) {
            data[i] inside {[0:255]};  
            data[i] != 8'h00;
            data[i] != 8'hFF;}
    }

    function void display_payload();
        $write("Payload: ");
        foreach(data[i])
            $write("%0h ", data[i]);
            $write("\n");
    endfunction
endclass

module payload_tb;
    payload_data payload;

    initial begin
        payload = new();

        repeat(5) begin
            if(payload.randomize()) begin
                payload.display_payload();
            end else begin
                $display("Randomization failed!");
            end
        end
    end
endmodule
