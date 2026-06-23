module top_module( 
    input a,b,c,
    output w,x,y,z );
    
	assign w = a;
	assign z = c;
	assign x = b;
	assign y = b;
    // we can also use concatenation operator
    // assign {w, x, y, z} = {a, c, b, b};
    
endmodule
