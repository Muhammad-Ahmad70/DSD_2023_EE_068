module lab_4tb();
    logic a1;
    logic a0;
    logic b1;
    logic b0;
    logic red;
    logic green;
     logic blue;
    

lab4_rgb UUT(
    .a({a1,a0}),
    .b({b1,b0}),
    
    .red(red),
    .blue(blue),
    .green(green)
);
initial begin
a1=0 ;a0 =0; b1 = 0; b0 = 0;
#10;
a1=0 ;a0 =0; b1 = 0; b0 = 1;
#10;
a1=0 ;a0 =0; b1 = 1; b0 = 0;
#10;
a1=0 ;a0 =0; b1 = 1; b0 = 1;
#10;
a1=0 ;a0 =1; b1 = 0; b0 = 0;
#10;
a1=0 ;a0 =1; b1 = 0; b0 = 1;
#10;
a1=0 ;a0 =1; b1 = 1; b0 = 0;
#10;
a1=0 ;a0 =1; b1 = 1; b0 = 1;
#10;
a1=1 ;a0 =0; b1 = 0; b0 = 0;
#10;
a1=1 ;a0 =0; b1 = 0; b0 = 1;
#10;
a1=1 ;a0 =0; b1 = 1; b0 = 0;
#10;
a1=1 ;a0 =0; b1 = 1; b0 = 1;
#10;
a1=1 ;a0 =1; b1 = 0; b0 = 0;
#10;
a1=1 ;a0 =1; b1 = 0; b0 = 1;
#10;
a1=1 ;a0 =1; b1 = 1; b0 = 0;
#10;
a1=1 ;a0 =1; b1 = 1; b0 = 1;
#10;




$stop;

end

endmodule



