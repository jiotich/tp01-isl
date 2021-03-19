module dispcomp;
    reg c1,c2,c3,c4,c5;
    integer sai;
	wire [6:0] segs;
    initial begin
	//os Cs correspondem ao estado dos computadores, posteriormente esse input sera dado através de arquivo de texto
        c1=0;
        c2=0;
        c3=1;
        c4=1;
        c5=0;
        
        sai = 5 - (c1+c2+c3+c4+c5);
		$display (sai); //o numero correto, printado para checar se as expressões funcionam
		
        if (c1 & c2 & c3 & c4 & c5)
            $display ("1111110");
        else if ((c1 & c2 & c3 & c4) | (c1 & c2 & c3 & c5) | (c1 & c2 & c4 & c5) | (c1 & c3 & c4 & c5) | (c2 & c3 & c4 & c5))
            $display ("1110000");
        else if ((c1 & c2 & c3 & ~c4 & ~c5) | (c1 & c2 & ~c3 & c4 & ~c5) | (c1 & c2 & ~c3 & ~c4 & c5)| (c1 & ~c2 & c3 & c4 & ~c5) | (c1 & ~c2 & c3 & ~c4 & c5) | (c1 & ~c2 & ~c3 & c4 & c5) | (~c1 & c2 & c3 & c4 & ~c5) | (~c1 & c2 & c3 & ~c4 & c5) | (~c1 & c2 & ~c3 & c4 & c5) | (~c1 & ~c2 & c3 & c4 & c5))
            $display ("1101101");
        else if ((~c1 & ~c2 & ~c3 & c4 & c5) | (~c1 & ~c2 & c3 & ~c4 & c5) | (~c1 & ~c2 & c3 & c4 & ~c5) | (~c1 & c2 & ~c3 & ~c4 & c5) | (~c1 & c2 & ~c3 & c4 & ~c5) | (~c1 & c2 & c3 & ~c4 & ~c5) | (c1 & ~c2 & ~c3 & ~c4 & c5) | (c1 & ~c2 & ~c3 & c4 & ~c5) | (c1 & ~c2 & c3 & ~c4 & ~c5) | (c1 & c2 & ~c3 & ~c4 & ~c5))
            $display ("1111001");
		else if (~c1 & ~c2 & ~c3 & ~c4 & ~c5)
			//o caso em que nenhum dos computadores está sendo usado vem antes do em que apenas 1 é usado pois isso diminui a quantidade de termos abaixo
            $display ("1011011");
        else if ((~c1 & ~c2 & ~c3 & ~c4) | (~c1 & ~c2 & ~c3 & ~c5) | (~c1 & ~c2 & ~c4 & ~c5) | (~c1 & ~c3 & ~c4 & ~c5) | (~c2 & ~c3 & ~c4 & ~c5))
            $display ("0110011");
        $finish;
    end
endmodule
