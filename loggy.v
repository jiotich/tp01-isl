`include "verylog.v"

module sim();
	reg [4:0] computers;
	wire [6:0] segments;
	verylog Teste(.comps(computers), .segs(segments));
	initial begin
		$monitor("%b => %b", computers, segments);
		computers = 5'b11111;
		#2;$display("\n");
		
		#2;computers = 5'b11110;
		#2;computers = 5'b11101;
		#2;computers = 5'b11011;
		#2;computers = 5'b10111;
		#2;computers = 5'b01111;
		#2;$display("\n");
		
		#2;computers = 5'b01011;
		#2;computers = 5'b11100;
		#2;computers = 5'b11010;
		#2;computers = 5'b11001;
		#2;computers = 5'b10110;
		#2;computers = 5'b10101;
		#2;computers = 5'b10011;
		#2;computers = 5'b01101;
		#2;computers = 5'b00111;
		#2;$display("\n");
		
		#2;computers = 5'b11000;
		#2;computers = 5'b10100;
		#2;computers = 5'b10010;
		#2;computers = 5'b10001;
		#2;computers = 5'b01100;
		#2;computers = 5'b01010;
		#2;computers = 5'b01001;
		#2;computers = 5'b00011;
		#2;computers = 5'b00110;
		#2;computers = 5'b00101;
		#2;$display("\n");
		
		#2;computers = 5'b10000;
		#2;computers = 5'b01000;
		#2;computers = 5'b00100;
		#2;computers = 5'b00010;
		#2;computers = 5'b00001;
		#2;$display("\n");
		
		#2;computers = 5'b00000;
	end
endmodule
