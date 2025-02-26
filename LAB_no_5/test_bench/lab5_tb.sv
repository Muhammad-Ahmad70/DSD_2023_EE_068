
module lab5_tb();
    
    logic [3:0]c;
    logic [2:0]s;
    logic seg_a, seg_b, seg_c, seg_d, seg_e, seg_f, seg_g;
    logic seg0, seg1, seg2, seg3, seg4, seg5, seg6, seg7;

   
    lab5_seven_segment UUT(
        .c(c),
        .s(s),
        .a(seg_a), .b(seg_b), .c1(seg_c), .d(seg_d),
        .e(seg_e), .f(seg_f), .g(seg_g),
        .seg0(seg0), .seg1(seg1), .seg2(seg2), .seg3(seg3),
        .seg4(seg4), .seg5(seg5), .seg6(seg6), .seg7(seg7)
    );

    
    initial begin
      
       
        c = 4'b0000; s = 3'b000; #10;
        c = 4'b0001; s = 3'b001; #10;
        c = 4'b0010; s = 3'b010; #10;
        c = 4'b0011; s = 3'b011; #10;
        c = 4'b0100; s = 3'b100; #10;
        c = 4'b0101; s = 3'b101; #10;
        c = 4'b0110; s = 3'b110; #10;
        c = 4'b0111; s = 3'b111; #10;
        c = 4'b1000; s = 3'b000; #10;
        c = 4'b1001; s = 3'b001; #10;
        c = 4'b1010; s = 3'b010; #10;
        c = 4'b1011; s = 3'b011; #10;
        c = 4'b1100; s = 3'b100; #10;
        c = 4'b1101; s = 3'b101; #10;
        c = 4'b1110; s = 3'b110; #10;
        c = 4'b1111; s = 3'b111; #10;
        
        $stop;
    end
endmodule
