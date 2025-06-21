`timescale 1ns / 1ps


module add(
input [2:0] a,b,
output [3:0] s,
output c
);

wire c1,c2,c3;

assign s[0]=a[0]^b[0];
assign c1=a[0]&b[0];

assign s[1]=a[1]^b[1]^c1;
assign c2=(a[1] & b[1]) | (c1 & (a[1] ^ b[1]));

assign s[2]=a[2]^b[2]^c2;
assign c3=(a[2] & b[2]) | (c2 & (a[2] ^ b[2]));

assign s[3]=c3;
assign c=c3;

endmodule


module sub(
input [2:0] a,b,
output [3:0] d,
output bo
);

wire b1,b2,b3;

assign d[0] = a[0]^b[0];
assign b1 = (~a[0] & b[0]);

 assign d[1] = a[1] ^ b[1] ^ b1;
 assign b2   = (~a[1] & b[1]) | (b1 & ~(a[1] ^ b[1]));
 
 assign d[2] = a[2] ^ b[2] ^ b2;
 assign b3   = (~a[2] & b[2]) | (b2 & ~(a[2] ^ b[2]));
 
 assign d[3]   = b3;
 assign bo = b3;

endmodule

module andgate(
input [2:0] a,b,
output [3:0] y
);

assign y = a&b;

endmodule

module orgate(
input [2:0] a,b,
output [3:0] y
);

assign y = a|b;

endmodule


module xorgate(
input [2:0] a,b,
output [3:0] y
);

assign y = a^b;

endmodule

module norgate(
input [2:0] a,b,
output [3:0] y
);

assign y = ~(a|b);

endmodule

module nandgate(
input [2:0] a,b,
output [3:0] y
);

assign y = ~(a&b);

endmodule

module notgate(
input [2:0] a,
output [3:0] y
);

assign y = ~(a);

endmodule

module mux(
input [3:0] i0,
input [3:0] i1,
input [3:0] i2, 
input [3:0] i3,
input [3:0] i4,
input [3:0] i5,
input [3:0] i6,
input [3:0] i7,
input [2:0] sel,
output reg [3:0] y
);

always@(*)
begin
case(sel)
3'b000:y=i0;
3'b001:y=i1;
3'b010:y=i2;
3'b011:y=i3;
3'b100:y=i4;
3'b101:y=i5;
3'b110:y=i6;
3'b111:y=i7;
endcase
end

endmodule

module alu(

input [2:0] A,B,
input [2:0] opr,
output [3:0] res,
output reg carry_flag,
output zero_flag
);

wire [3:0] t1, t2, t3, t4, t5, t6, t7, t8;
wire carry_out,borrow_out;

add a1(.a(A),.b(B),.s(t1),.c(carry_out));
sub s1(.a(A),.b(B),.d(t2),.bo(borrow_out));
andgate n1(.a(A),.b(B),.y(t3));
orgate o1 (.a(A),.b(B),.y(t4));
xorgate x1 (.a(A),.b(B),.y(t5));
notgate g1 (.a(A),.y(t6));
nandgate d1 (.a(A),.b(B),.y(t7));
norgate e1 (.a(A),.b(B),.y(t8));
mux m1 (.sel(opr),.y(res),.i0(t1),.i1(t2),.i2(t3),.i3(t4),.i4(t5),.i5(t6),.i6(t7),.i7(t8));
always@(*)
begin
case(opr)
3'b000:carry_flag=carry_out;
3'b001:carry_flag=borrow_out;
default: carry_flag = 0;
endcase
end

assign zero_flag = ~|res;

endmodule

