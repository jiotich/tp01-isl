`include "Verylog.v"

module sim();
	reg [4:0] computers;
	wire [6:0] segments;
	verylog Teste(.comps(computers), .segs(segments));
	initial begin
		$monitor("%b => %b", computers, segments);
		computers = 5'b11001;
	end
endmodule
