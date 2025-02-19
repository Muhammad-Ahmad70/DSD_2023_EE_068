module lab4_rgb(
    input logic [1:0]a,
    input logic [1:0]b,
    output logic red, 
    output logic green,
    output logic blue  
);
assign red = (a[0]&~b[1] | a[1]&a[0] | a[1]&~b[1] | a[1]&b[1]&~b[0] | ~a[0]&~b[1]&~b[0]);
assign green = (~a[1]&b[0] | ~a[1]&b[1] | b[0]&b[1] | a[1]&b[1]&~a[0] | ~a[1]&~a[0]&~b[1]);
assign blue = (~a[1]&b[1] | a[1]&~b[1] | a[1]&b[0]&~a[0] | a[0]&b[1]&~b[0]| ~a[0]&~a[1]&b[0] | a[0]&~b[0]&~b[1]);

endmodule