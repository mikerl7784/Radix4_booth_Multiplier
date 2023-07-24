`timescale 1ns/1ps
module gen_prod
(
  input  [15:0]					A,
  input                         neg,
  input                         zero,
  input  		              	one,  
  input  	             		two,
  output [31:0]      			prod
);
reg [31:0] prod_pre;
always @(*) begin
	prod_pre = 32'd0;
	if(zero)
		prod_pre = 32'd0;
	else if(one)
		prod_pre = {{16{A[15]}},A};
	else if(two)
		prod_pre = {{15{A[15]}},A,1'b0};
	else begin
		prod_pre = 32'd0;
	end
end 
assign prod = (neg==1'b1)? (~prod_pre+1'b1):prod_pre; 
endmodule
