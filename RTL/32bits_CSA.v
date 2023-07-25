module bits32_csa(
    input [31:0] a,
    input [31:0] b,
    input [31:0] cin,
    output [31:0]cout,
    output [31:0]sout
);


assign cout = (a & b) | (b & cin) | (a & cin);
assign sout = a ^ b ^ cin;


endmodule