module top_module( 
    input [3:0] in,
    output out_and,
    output out_or,
    output out_xor
);
    // Using reduction operator
    // It operates on all bits of input 
    // and provides one bit output.
    assign out_and = &in;
    assign out_or = |in;
    assign out_xor = ^in;

endmodule
