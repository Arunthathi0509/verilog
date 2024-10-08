module piso(v,clk,sel,clr,d
    );
	 input[3:0]d;
	 input sel,clk,clr;
	 reg[3:0]q;
	 output reg v;
	 always@(posedge clk)
	 if(clr==1)
	 q<=4'b0000;
	 else if(sel==0)
	 q<=d;
	 else
	 begin
	 v<=q[0];
	 q<=q>>1;
	 end
	 endmodule



