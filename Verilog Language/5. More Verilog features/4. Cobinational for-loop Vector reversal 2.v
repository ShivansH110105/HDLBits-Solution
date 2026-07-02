module top_module( 
    input [99:0] in,
    output [99:0] out
);
    integer i;
    always @(*) begin
        for(i=0;i<100;i=i+1) begin // We can also use $(bits) here that
                                   // gives the width of a signal
            out[i] = in[99-i];
        end
    end

endmodule
