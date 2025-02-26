module lab5_seven_segment(
    input logic [3:0]c,
    input logic [2:0]s,
    input logic dpoint,
    output logic a,
    output logic b,
    output logic c1,
    output logic d,
    output logic e,
    output logic f,
    output logic g,
    output logic dp,
    output logic seg0,seg1,seg2,seg3,seg4,seg5,seg6,seg7

);
assign a = (~c[3] &~c[2]& ~c[1] &c[0]  |  ~c[3] &c[2] &~c[1] &~c[0]  | c[3] &c[2] &~c[1] &c[0]  |  c[3] &~c[2] &c[1] &c[0]);
assign b = ( c[3]&c[1]&c[0] | c[2]&c[1]&~c[0] | c[3]&c[2]&~c[0] | ~c[3]&c[2]&~c[1]&c[0] );
assign c1 = (c[3]&c[2]&~c[0] | c[3]&c[2]&c[1] | ~c[3]&~c[2]&c[1]&~c[0] );
assign d = (~c[3]&c[2]&~c[1]&~c[0] | ~c[3]&~c[2]&~c[1]&c[0] | c[2]&c[1]&c[0] | c[3]&~c[2]&c[1]&~c[0] );
assign e = ( ~c[3]&c[2]&~c[1] | ~c[2]&~c[1]&c[0] | ~c[3]&c[1]&c[0]);
assign f = (c[3]&c[2]&~c[1]&c[0] | ~c[3]&~c[2]&c[0] | ~c[3]&c[1]&c[0] | ~c[3]&~c[2]&c[1] );
assign g = (~c[3]&~c[2]&~c[1] | c[3]&c[2]&~c[1]&~c[0] | ~c[3]&c[0]&c[1]&c[2]  );

assign seg0 = ( s[2] | s[1] | s[0]);
assign seg1 = ( s[2] | s[1] | ~s[0]);
assign seg2 = ( s[2] | ~s[1] | s[0]);
assign seg3 = ( s[2] | ~s[1] | ~s[0]);
assign seg4 = ( ~s[2] | s[1] | s[0]);
assign seg5 = ( ~s[2] | s[1] | ~s[0]);
assign seg6 = ( ~s[2] | ~s[1] | s[0]);
assign seg7 = ( ~s[2] | ~s[1] | ~s[0]);
assign dp = ~dpoint;

endmodule
