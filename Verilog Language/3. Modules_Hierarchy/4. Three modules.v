// module my_dff ( input clk, input d, output q );
// This is the module we have to instantiate



module top_module ( 
    input clk, 
    input d, 
    output q 
);
    
    wire w1,w2;
    
    // Create three instances of my_dff
    // Connect ports by names
    // Connecting by names is a better practice
    
    my_dff inst1 (.clk(clk), .d(d), .q(w1));
    my_dff inst2 (.clk(clk), .d(w1), .q(w2));
    my_dff inst3 (.clk(clk), .d(w2), .q(q));

endmodule
