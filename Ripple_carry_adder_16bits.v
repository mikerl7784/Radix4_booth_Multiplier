//-----------------------------------------------------------------------------
// 16-bit RCA
//-----------------------------------------------------------------------------


module RCA(in0, in1, out);
input [31:0] in0;
input [31:0] in1;
output [31:0]out;
wire c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17,c18,c19,c20,c21,c22,c23,c24,c25,c26,c27,c28,c29,c30,c31,c32;

full_adder fa0(in0[0], in1[0], 0,  out[0], c1);
full_adder fa1(in0[1], in1[1], c1, out[1], c2);
full_adder fa2(in0[2], in1[2], c2, out[2], c3);
full_adder fa3(in0[3], in1[3], c3, out[3], c4);
full_adder fa4(in0[4], in1[4], c4, out[4], c5);
full_adder fa5(in0[5], in1[5], c5, out[5], c6);
full_adder fa6(in0[6], in1[6], c6, out[6], c7);
full_adder fa7(in0[7], in1[7], c7, out[7], c8);
full_adder fa8(in0[8], in1[8], c8, out[8], c9);
full_adder fa9(in0[9], in1[9], c9, out[9], c10);
full_adder fa10(in0[10], in1[10], c10, out[10], c11);
full_adder fa11(in0[11], in1[11], c11, out[11], c12);
full_adder fa12(in0[12], in1[12], c12, out[12], c13);
full_adder fa13(in0[13], in1[13], c13, out[13], c14);
full_adder fa14(in0[14], in1[14], c14, out[14], c15);
full_adder fa15(in0[15], in1[15], c15, out[15], c16);
full_adder fa16(in0[16], in1[16], c16, out[16], c17);
full_adder fa17(in0[17], in1[17], c17, out[17], c18);
full_adder fa18(in0[18], in1[18], c18, out[18], c19);
full_adder fa19(in0[19], in1[19], c19, out[19], c20);
full_adder fa20(in0[20], in1[20], c20, out[20], c21);
full_adder fa21(in0[21], in1[21], c21, out[21], c22);
full_adder fa22(in0[22], in1[22], c22, out[22], c23);
full_adder fa23(in0[23], in1[23], c23, out[23], c24);
full_adder fa24(in0[24], in1[24], c24, out[24], c25);
full_adder fa25(in0[25], in1[25], c25, out[25], c26);
full_adder fa26(in0[26], in1[26], c26, out[26], c27);
full_adder fa27(in0[27], in1[27], c27, out[27], c28);
full_adder fa28(in0[28], in1[28], c28, out[28], c29);
full_adder fa29(in0[29], in1[29], c29, out[29], c30);
full_adder fa30(in0[30], in1[30], c30, out[30], c31);
full_adder fa31(in0[31], in1[31], c31, out[31], c32);

endmodule