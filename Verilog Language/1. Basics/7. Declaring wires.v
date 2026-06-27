`default_nettype none
module top_module(
    input a,
    input b,
    input c,
    input d,
    output out,
    output out_n   ); 
    
    wire e;
    wire f;
    wire g;
    
    assign e = a&b; // First AND gate
    assign f = c&d; // Second AND gate
    assign g = e|f; // OR gate: Feeds both 'out' and the NOT gate
    assign out = g;
    assign out_n = ~g; // NOT gate

endmodule
