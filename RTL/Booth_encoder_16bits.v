`timescale 1ns/1ps
module booth_encoder 
(
  input   [2:0]  code,
  output         neg,                
  output         zero,                
  output  	     one,         	
  output  	     two
);	
assign neg  =  code[2];
assign zero = ((code==3'b000) || (code==3'b111));
assign two  = ((code==3'b100) || (code==3'b011));
assign one  = ((!zero) & (!two));
 
endmodule
