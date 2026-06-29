module top_module(
    input [31:0] a,
    input [31:0] b,
    input sub,
    output [31:0] sum
);

    wire [31:0] s,bnew;
    wire w1,w2;
    assign s = {32{sub}};
    assign bnew = s^b;
    
    add16 inst1 (.a(a[15:0]), .b(bnew[15:0]), .cin(sub), .sum(sum[15:0]), .cout(w1));
    add16 inst2 (.a(a[31:16]), .b(bnew[31:16]), .cin(w1), .sum(sum[31:16]), .cout(w2));
    
endmodule
