`timescale 1ns/1ps
module booth_top
(
  input  [15:0]					A,
  input  [15:0]                 B,
  output [31:0]      			P
);
wire [7:0] neg;
wire [7:0] zero;
wire [7:0] one;
wire [7:0] two;
wire [31:0] prod[0:7];
// Booth encoder
genvar i; 
	generate 
		for(i=0;i<8;i=i+1)begin : booth_enc
			if(i==0)begin 
				booth_encoder u_booth_encoder(
					.code({{B[1:0]},1'b0}),
					.neg(neg[i]),
					.zero(zero[i]),
					.one(one[i]),
					.two(two[i]));
			end
			else begin
				booth_encoder u_booth_encoder(
					.code({B[i*2+1:i*2-1]}),
					.neg(neg[i]),
					.zero(zero[i]),
					.one(one[i]),
					.two(two[i]));
			end
		end
	endgenerate
	generate 
		for(i=0;i<8;i=i+1)begin : booth_prod
			gen_prod u_gen_prod(
				.A   ( A       ),
				.neg ( neg[i]  ),
				.zero( zero[i] ),
				.one ( one[i]  ),
				.two ( two[i]  ),
				.prod( prod[i] ));
				
		end
	endgenerate
// Wallace tree
wallace_tree u_wallcetree(.prod_0(prod[0]),.prod_1(prod[1]),.prod_2(prod[2]),.prod_3(prod[3]),.prod_4(prod[4]),.prod_5(prod[5]),.prod_6(prod[6]),.prod_7(prod[7]),.P(P));		
endmodule
