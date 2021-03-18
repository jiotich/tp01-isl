module dispcomp(input [4:0] comps);
    reg c1,c2,c3,c4,c5;
    integer sai;
    wire [4:0] comps;
    initial begin
    //as variáveis C correspondem aos computadores, que ligados enviariam o sinal (1)
        c1=comps[0];
        c2=comps[1];
        c3=comps[2];
        c4=comps[3];
        c5=comps[4];
        
        sai = 5 - (c1+c2+c3+c4+c5);
        
        if (sai == 0)
            $display (1111110);
        else if (sai == 1)
            $display (1110000);
        else if (sai == 2)
            $display (1101101);
        else if (sai == 3)
            $display (1111001);
        else if (sai == 4)
            $display (0110011);
        else if (sai == 5)
            $display (1011011);
        $finish;
    end
endmodule
