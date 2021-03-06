module verylog(comps, segs);
	input wire [4:0] comps;
	output wire [6:0] segs;
	
	assign segs[6] = ~((~comps[0] & ~comps[1] & ~comps[2] & ~comps[3] & comps[4]) | (~comps[0] & ~comps[1] & ~comps[2] & comps[3] & ~comps[4]) | (~comps[0] & ~comps[1] & comps[2] & ~comps[3] & ~comps[4]) | (~comps[0] & comps[1] & ~comps[2] & ~comps[3] & ~comps[4]) | (comps[0] & ~comps[1] & ~comps[2] & ~comps[3] & ~comps[4])) & ~((~comps[0] & comps[1] & comps[2] & comps[3] & comps[4]) | (comps[0] & ~comps[1] & comps[2] & comps[3] & comps[4]) | (comps[0] & comps[1] & ~comps[2] & comps[3] & comps[4]) | (comps[0] & comps[1] & comps[2] & ~comps[3] & comps[4]) | (comps[0] & comps[1] & comps[2] & comps[3] & ~comps[4]));
	
	assign segs[5] = ~(~comps[0] & ~comps[1] & ~comps[2] & ~comps[3] & ~comps[4]);
	
	assign segs[4] = ~((comps[0] & comps[1] & comps[2] & ~comps[3] & ~comps[4]) | (comps[0] & comps[1] & ~comps[2] & comps[3] & ~comps[4]) | (comps[0] & comps[1] & ~comps[2] & ~comps[3] & comps[4])| (comps[0] & ~comps[1] & comps[2] & comps[3] & ~comps[4]) | (comps[0] & ~comps[1] & comps[2] & ~comps[3] & comps[4]) | (comps[0] & ~comps[1] & ~comps[2] & comps[3] & comps[4]) | (~comps[0] & comps[1] & comps[2] & comps[3] & ~comps[4]) | (~comps[0] & comps[1] & comps[2] & ~comps[3] & comps[4]) | (~comps[0] & comps[1] & ~comps[2] & comps[3] & comps[4]) | (~comps[0] & ~comps[1] & comps[2] & comps[3] & comps[4]));
	
	assign segs[3] = ((~comps[0] & ~comps[1] & ~comps[2] & ~comps[3] & ~comps[4])) | ((comps[0] & comps[1] & comps[2] & ~comps[3] & ~comps[4]) | (comps[0] & comps[1] & ~comps[2] & comps[3] & ~comps[4]) | (comps[0] & comps[1] & ~comps[2] & ~comps[3] & comps[4]) | (comps[0] & ~comps[1] & comps[2] & comps[3] & ~comps[4]) | (comps[0] & ~comps[1] & comps[2] & ~comps[3] & comps[4]) | (comps[0] & ~comps[1] & ~comps[2] & comps[3] & comps[4]) | (~comps[0] & comps[1] & comps[2] & comps[3] & ~comps[4]) | (~comps[0] & comps[1] & comps[2] & ~comps[3] & comps[4]) | (~comps[0] & comps[1] & ~comps[2] & comps[3] & comps[4]) | (~comps[0] & ~comps[1] & comps[2] & comps[3] & comps[4])) | (comps[0] & comps[1] & comps[2] & comps[3] & comps[4]);
	
	assign segs[2] = (comps[0] & comps[1] & comps[2] & comps[3] & comps[4]) | ((comps[0] & comps[1] & comps[2] & ~comps[3] & ~comps[4]) | (comps[0] & comps[1] & ~comps[2] & comps[3] & ~comps[4]) | (comps[0] & comps[1] & ~comps[2] & ~comps[3] & comps[4])| (comps[0] & ~comps[1] & comps[2] & comps[3] & ~comps[4]) | (comps[0] & ~comps[1] & comps[2] & ~comps[3] & comps[4]) | (comps[0] & ~comps[1] & ~comps[2] & comps[3] & comps[4]) | (~comps[0] & comps[1] & comps[2] & comps[3] & ~comps[4]) | (~comps[0] & comps[1] & comps[2] & ~comps[3] & comps[4]) | (~comps[0] & comps[1] & ~comps[2] & comps[3] & comps[4]) | (~comps[0] & ~comps[1] & comps[2] & comps[3] & comps[4]));
	
	assign segs[1] = (comps[0] & comps[1] & comps[2] & comps[3] & comps[4]) | (~comps[0] & ~comps[1] & ~comps[2] & ~comps[3] & ~comps[4]) | ((~comps[0] & ~comps[1] & ~comps[2] & ~comps[3]) | (~comps[0] & ~comps[1] & ~comps[2] & ~comps[4]) | (~comps[0] & ~comps[1] & ~comps[3] & ~comps[4]) | (~comps[0] & ~comps[2] & ~comps[3] & ~comps[4]) | (~comps[1] & ~comps[2] & ~comps[3] & ~comps[4])) & ~(~comps[0] &~comps[1] & ~comps[2] & ~comps[3] & ~comps[4]);
	
	assign segs[0] =  ~((comps[0] & comps[1] & comps[2] & comps[3]) | (comps[0] & comps[1] & comps[2] & comps[4]) | (comps[0] & comps[1] & comps[3] & comps[4]) | (comps[0] & comps[2] & comps[3] & comps[4]) | (comps[1] & comps[2] & comps[3] & comps[4]));
endmodule
