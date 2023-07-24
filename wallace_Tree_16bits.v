`timescale 1ns/1ps
module wallace_tree
(
  input  [31:0]					prod_0,
  input  [31:0]					prod_1,
  input  [31:0]					prod_2,
  input  [31:0]					prod_3,
  input  [31:0]					prod_4,
  input  [31:0]					prod_5,
  input  [31:0]					prod_6,
  input  [31:0]					prod_7,
  output [31:0]      			P
);
wire [31:0]s1_0,s1_1,s1_2,s1_3;
wire [31:0]s2_0,s2_1,s2_2,s2_3;
wire [31:0]s3_0,s3_1;
wire [31:0]s4_0,s4_1;
// Stage 1
bits32_csa u1_0(.a(prod_0),.b(prod_1 << 2),.cin(prod_2 << 4),.sout(s1_0),.cout(s1_1));
bits32_csa u1_1(.a(prod_3 << 6),.b(prod_4 << 8),.cin(prod_5 << 10),.sout(s1_2),.cout(s1_3));
// Stage 2
bits32_csa u2_1(.a(s1_0),.b(s1_1 << 1),.cin(s1_2),.sout(s2_0),.cout(s2_1));
bits32_csa u2_2(.a(s1_3 << 1),.b(prod_6 << 12),.cin(prod_7 << 14),.sout(s2_2),.cout(s2_3));
// Stage 3
bits32_csa u3_1(.a(s2_0),.b(s2_1 << 1),.cin(s2_2),.sout(s3_0),.cout(s3_1));
// Stage 4
bits32_csa u4_1(.a(s3_0),.b(s3_1 << 1),.cin(s2_3 << 1),.sout(s4_0),.cout(s4_1));
// Select Fianl_Adder
// RCA U_rca(.in0(s4_0),.in1(s4_1 << 1),.out(P));
bits32_CLA  u_bits32_CLA(.a(s4_0),.b(s4_1 << 1),.sum(P));
endmodule
