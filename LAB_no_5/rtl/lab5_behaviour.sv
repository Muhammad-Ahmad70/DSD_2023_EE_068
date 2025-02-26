
module lab5_behaviour(
    input logic [3:0] c,
    input logic [2:0] s,
    input logic dpoint,
    output logic a, b, c1, d, e, f, g,
    output logic dp,
    output logic [7:0]AN
);

    always_comb begin
        {a, b, c1, d, e, f, g} = 7'b0000000;
        
        case (c)
             4'b0000 : {a,b,c1,d,e,f,g} = 7'b0000001;
                4'b0001 : {a,b,c1,d,e,f,g} = 7'b1001111;
                4'b0010 : {a,b,c1,d,e,f,g} = 7'b0010010;
                4'b0011 : {a,b,c1,d,e,f,g} = 7'b0000110;
                4'b0100 : {a,b,c1,d,e,f,g} = 7'b1001100;
                4'b0101 : {a,b,c1,d,e,f,g} = 7'b0100100;
                4'b0110 : {a,b,c1,d,e,f,g} = 7'b0100000;
                4'b0111 : {a,b,c1,d,e,f,g} = 7'b0001111;
                4'b1000 :  {a,b,c1,d,e,f,g} = 7'b0000000;
                4'b1001 : {a,b,c1,d,e,f,g} = 7'b0000100;
                4'b1010 : {a,b,c1,d,e,f,g} = 7'b0001000;
                4'b1011 : {a,b,c1,d,e,f,g} = 7'b1100000;
                4'b1100 : {a,b,c1,d,e,f,g} = 7'b0110001;
                4'b1101 : {a,b,c1,d,e,f,g} = 7'b1000010;
                4'b1110 : {a,b,c1,d,e,f,g} = 7'b0110000;
                4'b1111 : {a,b,c1,d,e,f,g} = 7'b0111000;
        endcase
    end
    
    always_comb begin
       
        
        case (s)
              3'b000 : AN = 8'b11111110;
                    3'b001 : AN = 8'b11111101;
                    3'b010 : AN = 8'b11111011;
                    3'b011 : AN = 8'b11110111;
                    3'b100 : AN = 8'b11101111;
                    3'b101 : AN = 8'b11011111;
                    3'b110 : AN = 8'b10111111;
                    3'b111 : AN = 8'b01111111;
        endcase
    end

   
    assign dp = dpoint;

endmodule
