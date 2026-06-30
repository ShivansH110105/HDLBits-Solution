// synthesis verilog_input_version verilog_2001
module top_module(
    input a, 
    input b,
    output wire out_assign,
    output reg out_alwaysblock
);
    
    assign out_assign = a&b;
    
    // Here @(*) means that whenever there is a 
    // change in any of the variables involved in
	// expression , then the always block executes
    
    always @(*) out_alwaysblock = a&b;

endmodule
