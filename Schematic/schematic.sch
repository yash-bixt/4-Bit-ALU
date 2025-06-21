# File saved with Nlview 7.0r6  2020-01-29 bk=1.5227 VDI=41 GEI=36 GUI=JA:10.0 non-TLS-threadsafe
# 
# non-default properties - (restore without -noprops)
property attrcolor #000000
property attrfontsize 8
property autobundle 1
property backgroundcolor #ffffff
property boxcolor0 #000000
property boxcolor1 #000000
property boxcolor2 #000000
property boxinstcolor #000000
property boxpincolor #000000
property buscolor #008000
property closeenough 5
property createnetattrdsp 2048
property decorate 1
property elidetext 40
property fillcolor1 #ffffcc
property fillcolor2 #dfebf8
property fillcolor3 #f0f0f0
property gatecellname 2
property instattrmax 30
property instdrag 15
property instorder 1
property marksize 12
property maxfontsize 15
property maxzoom 6.25
property netcolor #19b400
property objecthighlight0 #ff00ff
property objecthighlight1 #ffff00
property objecthighlight2 #00ff00
property objecthighlight3 #ff6666
property objecthighlight4 #0000ff
property objecthighlight5 #ffc800
property objecthighlight7 #00ffff
property objecthighlight8 #ff00ff
property objecthighlight9 #ccccff
property objecthighlight10 #0ead00
property objecthighlight11 #cefc00
property objecthighlight12 #9e2dbe
property objecthighlight13 #ba6a29
property objecthighlight14 #fc0188
property objecthighlight15 #02f990
property objecthighlight16 #f1b0fb
property objecthighlight17 #fec004
property objecthighlight18 #149bff
property objecthighlight19 #eb591b
property overlapcolor #19b400
property pbuscolor #000000
property pbusnamecolor #000000
property pinattrmax 20
property pinorder 2
property pinpermute 0
property portcolor #000000
property portnamecolor #000000
property ripindexfontsize 8
property rippercolor #000000
property rubberbandcolor #000000
property rubberbandfontsize 15
property selectattr 0
property selectionappearance 2
property selectioncolor #0000ff
property sheetheight 44
property sheetwidth 68
property showmarks 1
property shownetname 0
property showpagenumbers 1
property showripindex 4
property timelimit 1
#
module new alu work:alu:NOFILE -nosplit
load symbol add work:add:NOFILE HIERBOX pin c output.right pinBus a input.left [2:0] pinBus b input.left [2:0] pinBus s output.right [3:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol RTL_MUX0 work MUX pin I0 input.left pin I1 input.left pin I2 input.left pin O output.right pinBus S input.bot [2:0] fillcolor 1
load symbol nandgate work:nandgate:NOFILE HIERBOX pinBus a input.left [2:0] pinBus b input.left [2:0] pinBus y output.right [3:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol norgate work:norgate:NOFILE HIERBOX pinBus a input.left [2:0] pinBus b input.left [2:0] pinBus y output.right [3:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol notgate work:notgate:NOFILE HIERBOX pinBus a input.left [2:0] pinBus y output.right [3:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol mux work:mux:NOFILE HIERBOX pinBus i0 input.left [3:0] pinBus i1 input.left [3:0] pinBus i2 input.left [3:0] pinBus i3 input.left [3:0] pinBus i4 input.left [3:0] pinBus i5 input.left [3:0] pinBus i6 input.left [3:0] pinBus i7 input.left [3:0] pinBus sel input.left [2:0] pinBus y output.right [3:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol andgate work:andgate:NOFILE HIERBOX pinBus a input.left [2:0] pinBus b input.left [2:0] pinBus y output.right [3:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol orgate work:orgate:NOFILE HIERBOX pinBus a input.left [2:0] pinBus b input.left [2:0] pinBus y output.right [3:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol sub work:sub:NOFILE HIERBOX pin bo output.right pinBus a input.left [2:0] pinBus b input.left [2:0] pinBus d output.right [3:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol xorgate work:xorgate:NOFILE HIERBOX pinBus a input.left [2:0] pinBus b input.left [2:0] pinBus y output.right [3:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol RTL_REDUCTION_NOR work NOR pin O output pinBus I0 input [3:0] fillcolor 1
load port carry_flag output -pg 1 -lvl 4 -x 880 -y 390
load port zero_flag output -pg 1 -lvl 4 -x 880 -y 540
load portBus A input [2:0] -attr @name A[2:0] -pg 1 -lvl 0 -x 0 -y 60
load portBus B input [2:0] -attr @name B[2:0] -pg 1 -lvl 0 -x 0 -y 90
load portBus opr input [2:0] -attr @name opr[2:0] -pg 1 -lvl 0 -x 0 -y 650
load portBus res output [3:0] -attr @name res[3:0] -pg 1 -lvl 4 -x 880 -y 490
load inst a1 add work:add:NOFILE -autohide -attr @cell(#000000) add -pinBusAttr a @name a[2:0] -pinBusAttr b @name b[2:0] -pinBusAttr s @name s[3:0] -pg 1 -lvl 1 -x 110 -y 360
load inst carry_flag_i RTL_MUX0 work -attr @cell(#000000) RTL_MUX -pinAttr I0 @attr S=3'b000 -pinAttr I1 @attr S=3'b001 -pinAttr I2 @attr S=default -pinBusAttr S @name S[2:0] -pg 1 -lvl 3 -x 700 -y 390
load inst d1 nandgate work:nandgate:NOFILE -autohide -attr @cell(#000000) nandgate -pinBusAttr a @name a[2:0] -pinBusAttr b @name b[2:0] -pinBusAttr y @name y[3:0] -pg 1 -lvl 1 -x 110 -y 580
load inst e1 norgate work:norgate:NOFILE -autohide -attr @cell(#000000) norgate -pinBusAttr a @name a[2:0] -pinBusAttr b @name b[2:0] -pinBusAttr y @name y[3:0] -pg 1 -lvl 1 -x 110 -y 700
load inst g1 notgate work:notgate:NOFILE -autohide -attr @cell(#000000) notgate -pinBusAttr a @name a[2:0] -pinBusAttr y @name y[3:0] -pg 1 -lvl 1 -x 110 -y 160
load inst m1 mux work:mux:NOFILE -autohide -attr @cell(#000000) mux -pinBusAttr i0 @name i0[3:0] -pinBusAttr i1 @name i1[3:0] -pinBusAttr i2 @name i2[3:0] -pinBusAttr i3 @name i3[3:0] -pinBusAttr i4 @name i4[3:0] -pinBusAttr i5 @name i5[3:0] -pinBusAttr i6 @name i6[3:0] -pinBusAttr i7 @name i7[3:0] -pinBusAttr sel @name sel[2:0] -pinBusAttr y @name y[3:0] -pg 1 -lvl 2 -x 450 -y 440
load inst n1 andgate work:andgate:NOFILE -autohide -attr @cell(#000000) andgate -pinBusAttr a @name a[2:0] -pinBusAttr b @name b[2:0] -pinBusAttr y @name y[3:0] -pg 1 -lvl 1 -x 110 -y 50
load inst o1 orgate work:orgate:NOFILE -autohide -attr @cell(#000000) orgate -pinBusAttr a @name a[2:0] -pinBusAttr b @name b[2:0] -pinBusAttr y @name y[3:0] -pg 1 -lvl 1 -x 110 -y 250
load inst s1 sub work:sub:NOFILE -autohide -attr @cell(#000000) sub -pinBusAttr a @name a[2:0] -pinBusAttr b @name b[2:0] -pinBusAttr d @name d[3:0] -pg 1 -lvl 1 -x 110 -y 470
load inst x1 xorgate work:xorgate:NOFILE -autohide -attr @cell(#000000) xorgate -pinBusAttr a @name a[2:0] -pinBusAttr b @name b[2:0] -pinBusAttr y @name y[3:0] -pg 1 -lvl 1 -x 110 -y 810
load inst zero_flag_i RTL_REDUCTION_NOR work -attr @cell(#000000) RTL_REDUCTION_NOR -pinBusAttr I0 @name I0[3:0] -pg 1 -lvl 3 -x 700 -y 540
load net <const0> -ground -pin carry_flag_i I2
load net A[0] -attr @rip A[0] -port A[0] -pin a1 a[0] -pin d1 a[0] -pin e1 a[0] -pin g1 a[0] -pin n1 a[0] -pin o1 a[0] -pin s1 a[0] -pin x1 a[0]
load net A[1] -attr @rip A[1] -port A[1] -pin a1 a[1] -pin d1 a[1] -pin e1 a[1] -pin g1 a[1] -pin n1 a[1] -pin o1 a[1] -pin s1 a[1] -pin x1 a[1]
load net A[2] -attr @rip A[2] -port A[2] -pin a1 a[2] -pin d1 a[2] -pin e1 a[2] -pin g1 a[2] -pin n1 a[2] -pin o1 a[2] -pin s1 a[2] -pin x1 a[2]
load net B[0] -attr @rip B[0] -port B[0] -pin a1 b[0] -pin d1 b[0] -pin e1 b[0] -pin n1 b[0] -pin o1 b[0] -pin s1 b[0] -pin x1 b[0]
load net B[1] -attr @rip B[1] -port B[1] -pin a1 b[1] -pin d1 b[1] -pin e1 b[1] -pin n1 b[1] -pin o1 b[1] -pin s1 b[1] -pin x1 b[1]
load net B[2] -attr @rip B[2] -port B[2] -pin a1 b[2] -pin d1 b[2] -pin e1 b[2] -pin n1 b[2] -pin o1 b[2] -pin s1 b[2] -pin x1 b[2]
load net borrow_out -pin carry_flag_i I1 -pin s1 bo
netloc borrow_out 1 1 2 260 390 NJ
load net carry_flag -port carry_flag -pin carry_flag_i O
netloc carry_flag 1 3 1 NJ 390
load net carry_out -pin a1 c -pin carry_flag_i I0
netloc carry_out 1 1 2 NJ 370 N
load net opr[0] -attr @rip opr[0] -pin carry_flag_i S[0] -pin m1 sel[0] -port opr[0]
load net opr[1] -attr @rip opr[1] -pin carry_flag_i S[1] -pin m1 sel[1] -port opr[1]
load net opr[2] -attr @rip opr[2] -pin carry_flag_i S[2] -pin m1 sel[2] -port opr[2]
load net res[0] -attr @rip y[0] -pin m1 y[0] -port res[0] -pin zero_flag_i I0[0]
load net res[1] -attr @rip y[1] -pin m1 y[1] -port res[1] -pin zero_flag_i I0[1]
load net res[2] -attr @rip y[2] -pin m1 y[2] -port res[2] -pin zero_flag_i I0[2]
load net res[3] -attr @rip y[3] -pin m1 y[3] -port res[3] -pin zero_flag_i I0[3]
load net t1[0] -attr @rip s[0] -pin a1 s[0] -pin m1 i0[0]
load net t1[1] -attr @rip s[1] -pin a1 s[1] -pin m1 i0[1]
load net t1[2] -attr @rip s[2] -pin a1 s[2] -pin m1 i0[2]
load net t1[3] -attr @rip s[3] -pin a1 s[3] -pin m1 i0[3]
load net t2[0] -attr @rip d[0] -pin m1 i1[0] -pin s1 d[0]
load net t2[1] -attr @rip d[1] -pin m1 i1[1] -pin s1 d[1]
load net t2[2] -attr @rip d[2] -pin m1 i1[2] -pin s1 d[2]
load net t2[3] -attr @rip d[3] -pin m1 i1[3] -pin s1 d[3]
load net t3[0] -attr @rip y[0] -pin m1 i2[0] -pin n1 y[0]
load net t3[1] -attr @rip y[1] -pin m1 i2[1] -pin n1 y[1]
load net t3[2] -attr @rip y[2] -pin m1 i2[2] -pin n1 y[2]
load net t3[3] -attr @rip y[3] -pin m1 i2[3] -pin n1 y[3]
load net t4[0] -attr @rip y[0] -pin m1 i3[0] -pin o1 y[0]
load net t4[1] -attr @rip y[1] -pin m1 i3[1] -pin o1 y[1]
load net t4[2] -attr @rip y[2] -pin m1 i3[2] -pin o1 y[2]
load net t4[3] -attr @rip y[3] -pin m1 i3[3] -pin o1 y[3]
load net t5[0] -attr @rip y[0] -pin m1 i4[0] -pin x1 y[0]
load net t5[1] -attr @rip y[1] -pin m1 i4[1] -pin x1 y[1]
load net t5[2] -attr @rip y[2] -pin m1 i4[2] -pin x1 y[2]
load net t5[3] -attr @rip y[3] -pin m1 i4[3] -pin x1 y[3]
load net t6[0] -attr @rip y[0] -pin g1 y[0] -pin m1 i5[0]
load net t6[1] -attr @rip y[1] -pin g1 y[1] -pin m1 i5[1]
load net t6[2] -attr @rip y[2] -pin g1 y[2] -pin m1 i5[2]
load net t6[3] -attr @rip y[3] -pin g1 y[3] -pin m1 i5[3]
load net t7[0] -attr @rip y[0] -pin d1 y[0] -pin m1 i6[0]
load net t7[1] -attr @rip y[1] -pin d1 y[1] -pin m1 i6[1]
load net t7[2] -attr @rip y[2] -pin d1 y[2] -pin m1 i6[2]
load net t7[3] -attr @rip y[3] -pin d1 y[3] -pin m1 i6[3]
load net t8[0] -attr @rip y[0] -pin e1 y[0] -pin m1 i7[0]
load net t8[1] -attr @rip y[1] -pin e1 y[1] -pin m1 i7[1]
load net t8[2] -attr @rip y[2] -pin e1 y[2] -pin m1 i7[2]
load net t8[3] -attr @rip y[3] -pin e1 y[3] -pin m1 i7[3]
load net zero_flag -port zero_flag -pin zero_flag_i O
netloc zero_flag 1 3 1 NJ 540
load netBundle @A 3 A[2] A[1] A[0] -autobundled
netbloc @A 1 0 1 20 60n
load netBundle @B 3 B[2] B[1] B[0] -autobundled
netbloc @B 1 0 1 40 80n
load netBundle @opr 3 opr[2] opr[1] opr[0] -autobundled
netbloc @opr 1 0 3 NJ 650 380 650 580J
load netBundle @res 4 res[3] res[2] res[1] res[0] -autobundled
netbloc @res 1 2 2 600 490 NJ
load netBundle @t1 4 t1[3] t1[2] t1[1] t1[0] -autobundled
netbloc @t1 1 1 1 240 390n
load netBundle @t7 4 t7[3] t7[2] t7[1] t7[0] -autobundled
netbloc @t7 1 1 1 280 570n
load netBundle @t8 4 t8[3] t8[2] t8[1] t8[0] -autobundled
netbloc @t8 1 1 1 360 590n
load netBundle @t6 4 t6[3] t6[2] t6[1] t6[0] -autobundled
netbloc @t6 1 1 1 320 170n
load netBundle @t3 4 t3[3] t3[2] t3[1] t3[0] -autobundled
netbloc @t3 1 1 1 340 60n
load netBundle @t4 4 t4[3] t4[2] t4[1] t4[0] -autobundled
netbloc @t4 1 1 1 300 260n
load netBundle @t2 4 t2[3] t2[2] t2[1] t2[0] -autobundled
netbloc @t2 1 1 1 280 470n
load netBundle @t5 4 t5[3] t5[2] t5[1] t5[0] -autobundled
netbloc @t5 1 1 1 340 530n
levelinfo -pg 1 0 110 450 700 880
pagesize -pg 1 -db -bbox -sgen -100 0 990 880
show
fullfit
#
# initialize ictrl to current module alu work:alu:NOFILE
ictrl init topinfo |
