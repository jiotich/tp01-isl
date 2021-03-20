`include "Verylog.v"

module sim();
	reg [4:0] computers;
	wire [6:0] segments;
	verylog Teste(.comps(computers), .segs(segments));
	initial begin
		$monitor("%b => %b", computers, segments);
		computers = 5'b11111;
		#2;computers = 5'b11110;
		#2;computers = 5'b11100;
		#2;computers = 5'b11000;
		#2;computers = 5'b10000;
		#2;computers = 5'b00000;
	end
endmodule
