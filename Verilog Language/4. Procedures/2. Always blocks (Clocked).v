// synthesis verilog_input_version verilog_2001
module top_module(
    input clk,
    input a,
    input b,
    output wire out_assign,
    output reg out_always_comb,
    output reg out_always_ff   );
    
    assign out_assign = a^b;
    
    // Here we used blocking assignment ( = )
    always @(*) out_always_comb = a^b;
    
    // Here we used non-blocking assignment ( <= )
    // It updates the content on the next clock edge
    always @(posedge clk) out_always_ff <= a^b;

endmodule
