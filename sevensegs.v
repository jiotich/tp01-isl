module dispcomp;
    reg c1,c2,c3,c4,c5;
    integer sai;
	wire [6:0] segs;
    initial begin
    //as variáveis C correspondem aos computadores, que ligados enviariam o sinal (1)
        c1=1;
        c2=1;
        c3=1;
        c4=1;
        c5=1;
        
        sai = 5 - (c1+c2+c3+c4+c5);
        
		
		
        if (c1 & c2 & c3 & c4 & c5)
            $display (1111110);
        else if ((c1 & c2 & c3 & c4) | (c1 & c2 & c3 & c5) | (c1 & c2 & c4 & c5) | (c1 & c2 & c3 & c4) | (c2 & c3 & c4 & c5))
            $display (1110000);
        else if ((c1 & c2 & c3 & ~c4 & ~c5) | (c1 & c2 & ~c3 & c4 & ~c5) | (c1 & ~c2 & c3 & c4 & ~c5) | (c1 & ~c2 & c3 & ~c4 & c5) | (c1 & ~c2 & ~c3 & c4 & c5) | (~c1 & c2 & c3 & c4 & ~c5) | (~c1 & c2 & c3 & ~c4 & c5) | (~c1 & c2 & ~c3 & c4 & c5) | (~c1 & ~c2 & c3 & c4 & c5))
            $display (1101101);
        else if (~(c1 & c2 & c3 & ~c4 & ~c5) | ~(c1 & c2 & ~c3 & c4 & ~c5) | ~(c1 & ~c2 & c3 & c4 & ~c5) | ~(c1 & ~c2 & c3 & ~c4 & c5) | ~(c1 & ~c2 & ~c3 & c4 & c5) | ~(~c1 & c2 & c3 & c4 & ~c5) | ~(~c1 & c2 & c3 & ~c4 & c5) | ~(~c1 & c2 & ~c3 & c4 & c5) | ~(~c1 & ~c2 & c3 & c4 & c5))
            $display (1111001);
        else if (~(c1 & c2 & c3 & c4) | ~(c1 & c2 & c3 & c5) | ~(c1 & c2 & c4 & c5) | ~(c1 & c2 & c3 & c4) | ~(c2 & c3 & c4 & c5))
            $display (0110011);
        else if (~c1 & ~c2 & ~c3 & ~c4 & ~c5)
            $display (1011011);
        $finish;
    end
endmodule
