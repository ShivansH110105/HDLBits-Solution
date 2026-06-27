module top_module ( 
    input a, 
    input b, 
    output out 
);
    // Connecting ports by name 
    mod_a instance1(.out(out), .in1(a), .in2(b));
    
    // Connecting ports by position
    // mod_a instance2(in1, in2, out);

endmodule
