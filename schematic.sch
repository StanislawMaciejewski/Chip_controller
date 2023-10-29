# File saved with Nlview 6.6.11  2017-06-12 bk=1.3860 VDI=40 GEI=35 GUI=JA:1.6
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
property maxfontsize 12
property maxzoom 5
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
property rubberbandfontsize 12
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
module new N_bits work:N_bits:NOFILE -nosplit
load symbol single_bit work:single_bit:NOFILE HIERBOX pin CLK_COUNT input.left pin CLK_SHIFT input.left pin OUT_BIT inout.right pin SERIAL_IN input.left pin SHIFT input.left pin STORE input.left pin STORED_BIT output.right boxcolor 1 fillcolor 2 minwidth 13%
load symbol single_bit work:abstract:NOFILE HIERBOX pin CLK_COUNT input.left pin CLK_SHIFT input.left pin OUT_BIT inout.right pin SERIAL_IN input.left pin SHIFT input.left pin STORE input.left pin STORED_BIT output.right boxcolor 1 fillcolor 2 minwidth 13%
load port OUT output -pg 1 -y 2100
load port SERIAL_IN input -pg 1 -y 100
load port CLK_COUNT input -pg 1 -y 60
load port STORE input -pg 1 -y 140
load port SHIFT input -pg 1 -y 120
load port CLK_SHIFT input -pg 1 -y 80
load portBus S output [23:0] -attr @name S[23:0] -pg 1 -y 120
load inst genblk1[11].inst single_bit work:abstract:NOFILE -autohide -attr @cell(#000000) single_bit -pg 1 -lvl 1 -y 1150
load inst genblk1[12].inst single_bit work:abstract:NOFILE -autohide -attr @cell(#000000) single_bit -pg 1 -lvl 2 -y 1150
load inst genblk1[18].inst single_bit work:abstract:NOFILE -autohide -attr @cell(#000000) single_bit -pg 1 -lvl 2 -y 1710
load inst genblk1[20].inst single_bit work:abstract:NOFILE -autohide -attr @cell(#000000) single_bit -pg 1 -lvl 2 -y 1890
load inst genblk1[19].inst single_bit work:abstract:NOFILE -autohide -attr @cell(#000000) single_bit -pg 1 -lvl 1 -y 1890
load inst genblk1[4].inst single_bit work:abstract:NOFILE -autohide -attr @cell(#000000) single_bit -pg 1 -lvl 2 -y 430
load inst SB_FIRST single_bit work:single_bit:NOFILE -autohide -attr @cell(#000000) single_bit -pg 1 -lvl 1 -y 50
load inst genblk1[1].inst single_bit work:abstract:NOFILE -autohide -attr @cell(#000000) single_bit -pg 1 -lvl 1 -y 250
load inst genblk1[21].inst single_bit work:abstract:NOFILE -autohide -attr @cell(#000000) single_bit -pg 1 -lvl 1 -y 2110
load inst genblk1[13].inst single_bit work:abstract:NOFILE -autohide -attr @cell(#000000) single_bit -pg 1 -lvl 1 -y 1350
load inst genblk1[16].inst single_bit work:abstract:NOFILE -autohide -attr @cell(#000000) single_bit -pg 1 -lvl 2 -y 1530
load inst genblk1[3].inst single_bit work:abstract:NOFILE -autohide -attr @cell(#000000) single_bit -pg 1 -lvl 1 -y 430
load inst genblk1[6].inst single_bit work:abstract:NOFILE -autohide -attr @cell(#000000) single_bit -pg 1 -lvl 2 -y 600
load inst genblk1[10].inst single_bit work:abstract:NOFILE -autohide -attr @cell(#000000) single_bit -pg 1 -lvl 2 -y 980
load inst genblk1[14].inst single_bit work:abstract:NOFILE -autohide -attr @cell(#000000) single_bit -pg 1 -lvl 2 -y 1350
load inst genblk1[8].inst single_bit work:abstract:NOFILE -autohide -attr @cell(#000000) single_bit -pg 1 -lvl 2 -y 800
load inst genblk1[0].inst single_bit work:abstract:NOFILE -autohide -attr @cell(#000000) single_bit -pg 1 -lvl 2 -y 70
load inst genblk1[15].inst single_bit work:abstract:NOFILE -autohide -attr @cell(#000000) single_bit -pg 1 -lvl 1 -y 1530
load inst genblk1[2].inst single_bit work:abstract:NOFILE -autohide -attr @cell(#000000) single_bit -pg 1 -lvl 2 -y 250
load inst genblk1[9].inst single_bit work:abstract:NOFILE -autohide -attr @cell(#000000) single_bit -pg 1 -lvl 1 -y 980
load inst genblk1[7].inst single_bit work:abstract:NOFILE -autohide -attr @cell(#000000) single_bit -pg 1 -lvl 1 -y 800
load inst genblk1[17].inst single_bit work:abstract:NOFILE -autohide -attr @cell(#000000) single_bit -pg 1 -lvl 1 -y 1710
load inst genblk1[5].inst single_bit work:abstract:NOFILE -autohide -attr @cell(#000000) single_bit -pg 1 -lvl 1 -y 600
load inst SB_LAST single_bit work:abstract:NOFILE -autohide -attr @cell(#000000) single_bit -pg 1 -lvl 2 -y 2070
load net w_15 -pin genblk1[14].inst OUT_BIT -pin genblk1[15].inst CLK_COUNT -pin genblk1[15].inst SERIAL_IN
netloc w_15 1 0 3 100 1300 NJ 1300 800
load net w_8 -pin genblk1[7].inst OUT_BIT -pin genblk1[8].inst CLK_COUNT -pin genblk1[8].inst SERIAL_IN
netloc w_8 1 1 1 460
load net OUT -port OUT -pin SB_LAST OUT_BIT
netloc OUT 1 2 1 NJ
load net SERIAL_IN -pin SB_FIRST SERIAL_IN -port SERIAL_IN
netloc SERIAL_IN 1 0 1 NJ
load net S[13] -attr @rip(#000000) 13 -port S[13] -pin genblk1[12].inst STORED_BIT
load net S[1] -attr @rip(#000000) 1 -port S[1] -pin genblk1[0].inst STORED_BIT
load net S[23] -attr @rip(#000000) 23 -port S[23] -pin SB_LAST STORED_BIT
load net S[2] -attr @rip(#000000) 2 -port S[2] -pin genblk1[1].inst STORED_BIT
load net w_16 -pin genblk1[15].inst OUT_BIT -pin genblk1[16].inst CLK_COUNT -pin genblk1[16].inst SERIAL_IN
netloc w_16 1 1 1 460
load net w_9 -pin genblk1[8].inst OUT_BIT -pin genblk1[9].inst CLK_COUNT -pin genblk1[9].inst SERIAL_IN
netloc w_9 1 0 3 100 750 NJ 750 800
load net S[18] -attr @rip(#000000) 18 -port S[18] -pin genblk1[17].inst STORED_BIT
load net S[19] -attr @rip(#000000) 19 -port S[19] -pin genblk1[18].inst STORED_BIT
load net S[20] -attr @rip(#000000) 20 -port S[20] -pin genblk1[19].inst STORED_BIT
load net S[7] -attr @rip(#000000) 7 -port S[7] -pin genblk1[6].inst STORED_BIT
load net w_17 -pin genblk1[16].inst OUT_BIT -pin genblk1[17].inst CLK_COUNT -pin genblk1[17].inst SERIAL_IN
netloc w_17 1 0 3 120 1480 NJ 1480 800
load net CLK_COUNT -port CLK_COUNT -pin SB_FIRST CLK_COUNT
netloc CLK_COUNT 1 0 1 NJ
load net S[12] -attr @rip(#000000) 12 -port S[12] -pin genblk1[11].inst STORED_BIT
load net w_18 -pin genblk1[17].inst OUT_BIT -pin genblk1[18].inst CLK_COUNT -pin genblk1[18].inst SERIAL_IN
netloc w_18 1 1 1 460
load net S[17] -attr @rip(#000000) 17 -port S[17] -pin genblk1[16].inst STORED_BIT
load net S[6] -attr @rip(#000000) 6 -port S[6] -pin genblk1[5].inst STORED_BIT
load net w_19 -pin genblk1[18].inst OUT_BIT -pin genblk1[19].inst CLK_COUNT -pin genblk1[19].inst SERIAL_IN
netloc w_19 1 0 3 140 1660 NJ 1660 800
load net w_20 -pin genblk1[19].inst OUT_BIT -pin genblk1[20].inst CLK_COUNT -pin genblk1[20].inst SERIAL_IN
netloc w_20 1 1 1 460
load net S[11] -attr @rip(#000000) 11 -port S[11] -pin genblk1[10].inst STORED_BIT
load net w_21 -pin genblk1[20].inst OUT_BIT -pin genblk1[21].inst CLK_COUNT -pin genblk1[21].inst SERIAL_IN
netloc w_21 1 0 3 160 1840 NJ 1840 800
load net STORE -pin SB_FIRST STORE -pin SB_LAST STORE -port STORE -pin genblk1[0].inst STORE -pin genblk1[10].inst STORE -pin genblk1[11].inst STORE -pin genblk1[12].inst STORE -pin genblk1[13].inst STORE -pin genblk1[14].inst STORE -pin genblk1[15].inst STORE -pin genblk1[16].inst STORE -pin genblk1[17].inst STORE -pin genblk1[18].inst STORE -pin genblk1[19].inst STORE -pin genblk1[1].inst STORE -pin genblk1[20].inst STORE -pin genblk1[21].inst STORE -pin genblk1[2].inst STORE -pin genblk1[3].inst STORE -pin genblk1[4].inst STORE -pin genblk1[5].inst STORE -pin genblk1[6].inst STORE -pin genblk1[7].inst STORE -pin genblk1[8].inst STORE -pin genblk1[9].inst STORE
netloc STORE 1 0 2 20 2060 520
load net S[10] -attr @rip(#000000) 10 -port S[10] -pin genblk1[9].inst STORED_BIT
load net S[16] -attr @rip(#000000) 16 -port S[16] -pin genblk1[15].inst STORED_BIT
load net S[21] -attr @rip(#000000) 21 -port S[21] -pin genblk1[20].inst STORED_BIT
load net w_1 -pin genblk1[0].inst OUT_BIT -pin genblk1[1].inst CLK_COUNT -pin genblk1[1].inst SERIAL_IN
netloc w_1 1 0 3 80 180 460J 20 820
load net w_22 -pin SB_LAST CLK_COUNT -pin SB_LAST SERIAL_IN -pin genblk1[21].inst OUT_BIT
netloc w_22 1 1 1 460
load net SHIFT -pin SB_FIRST SHIFT -pin SB_LAST SHIFT -port SHIFT -pin genblk1[0].inst SHIFT -pin genblk1[10].inst SHIFT -pin genblk1[11].inst SHIFT -pin genblk1[12].inst SHIFT -pin genblk1[13].inst SHIFT -pin genblk1[14].inst SHIFT -pin genblk1[15].inst SHIFT -pin genblk1[16].inst SHIFT -pin genblk1[17].inst SHIFT -pin genblk1[18].inst SHIFT -pin genblk1[19].inst SHIFT -pin genblk1[1].inst SHIFT -pin genblk1[20].inst SHIFT -pin genblk1[21].inst SHIFT -pin genblk1[2].inst SHIFT -pin genblk1[3].inst SHIFT -pin genblk1[4].inst SHIFT -pin genblk1[5].inst SHIFT -pin genblk1[6].inst SHIFT -pin genblk1[7].inst SHIFT -pin genblk1[8].inst SHIFT -pin genblk1[9].inst SHIFT
netloc SHIFT 1 0 2 40 2040 500
load net S[5] -attr @rip(#000000) 5 -port S[5] -pin genblk1[4].inst STORED_BIT
load net w_2 -pin genblk1[1].inst OUT_BIT -pin genblk1[2].inst CLK_COUNT -pin genblk1[2].inst SERIAL_IN
netloc w_2 1 1 1 460
load net S[15] -attr @rip(#000000) 15 -port S[15] -pin genblk1[14].inst STORED_BIT
load net w_10 -pin genblk1[10].inst CLK_COUNT -pin genblk1[10].inst SERIAL_IN -pin genblk1[9].inst OUT_BIT
netloc w_10 1 1 1 460
load net w_3 -pin genblk1[2].inst OUT_BIT -pin genblk1[3].inst CLK_COUNT -pin genblk1[3].inst SERIAL_IN
netloc w_3 1 0 3 100 200 NJ 200 800
load net S[4] -attr @rip(#000000) 4 -port S[4] -pin genblk1[3].inst STORED_BIT
load net w_11 -pin genblk1[10].inst OUT_BIT -pin genblk1[11].inst CLK_COUNT -pin genblk1[11].inst SERIAL_IN
netloc w_11 1 0 3 120 930 NJ 930 800
load net w_4 -pin genblk1[3].inst OUT_BIT -pin genblk1[4].inst CLK_COUNT -pin genblk1[4].inst SERIAL_IN
netloc w_4 1 1 1 460
load net S[0] -attr @rip(#000000) 0 -port S[0] -pin SB_FIRST STORED_BIT
load net S[22] -attr @rip(#000000) 22 -port S[22] -pin genblk1[21].inst STORED_BIT
load net S[9] -attr @rip(#000000) 9 -port S[9] -pin genblk1[8].inst STORED_BIT
load net p_0_in -pin SB_FIRST OUT_BIT -pin genblk1[0].inst CLK_COUNT -pin genblk1[0].inst SERIAL_IN
netloc p_0_in 1 1 1 520
load net w_12 -pin genblk1[11].inst OUT_BIT -pin genblk1[12].inst CLK_COUNT -pin genblk1[12].inst SERIAL_IN
netloc w_12 1 1 1 460
load net w_5 -pin genblk1[4].inst OUT_BIT -pin genblk1[5].inst CLK_COUNT -pin genblk1[5].inst SERIAL_IN
netloc w_5 1 0 3 120 380 NJ 380 800
load net CLK_SHIFT -port CLK_SHIFT -pin SB_FIRST CLK_SHIFT -pin SB_LAST CLK_SHIFT -pin genblk1[0].inst CLK_SHIFT -pin genblk1[10].inst CLK_SHIFT -pin genblk1[11].inst CLK_SHIFT -pin genblk1[12].inst CLK_SHIFT -pin genblk1[13].inst CLK_SHIFT -pin genblk1[14].inst CLK_SHIFT -pin genblk1[15].inst CLK_SHIFT -pin genblk1[16].inst CLK_SHIFT -pin genblk1[17].inst CLK_SHIFT -pin genblk1[18].inst CLK_SHIFT -pin genblk1[19].inst CLK_SHIFT -pin genblk1[1].inst CLK_SHIFT -pin genblk1[20].inst CLK_SHIFT -pin genblk1[21].inst CLK_SHIFT -pin genblk1[2].inst CLK_SHIFT -pin genblk1[3].inst CLK_SHIFT -pin genblk1[4].inst CLK_SHIFT -pin genblk1[5].inst CLK_SHIFT -pin genblk1[6].inst CLK_SHIFT -pin genblk1[7].inst CLK_SHIFT -pin genblk1[8].inst CLK_SHIFT -pin genblk1[9].inst CLK_SHIFT
netloc CLK_SHIFT 1 0 2 60 2020 480
load net w_13 -pin genblk1[12].inst OUT_BIT -pin genblk1[13].inst CLK_COUNT -pin genblk1[13].inst SERIAL_IN
netloc w_13 1 0 3 80 1280 NJ 1280 800
load net w_6 -pin genblk1[5].inst OUT_BIT -pin genblk1[6].inst CLK_COUNT -pin genblk1[6].inst SERIAL_IN
netloc w_6 1 1 1 460
load net S[14] -attr @rip(#000000) 14 -port S[14] -pin genblk1[13].inst STORED_BIT
load net S[3] -attr @rip(#000000) 3 -port S[3] -pin genblk1[2].inst STORED_BIT
load net S[8] -attr @rip(#000000) 8 -port S[8] -pin genblk1[7].inst STORED_BIT
load net w_14 -pin genblk1[13].inst OUT_BIT -pin genblk1[14].inst CLK_COUNT -pin genblk1[14].inst SERIAL_IN
netloc w_14 1 1 1 460
load net w_7 -pin genblk1[6].inst OUT_BIT -pin genblk1[7].inst CLK_COUNT -pin genblk1[7].inst SERIAL_IN
netloc w_7 1 0 3 80 730 NJ 730 800
load netBundle @S 24 S[23] S[22] S[21] S[20] S[19] S[18] S[17] S[16] S[15] S[14] S[13] S[12] S[11] S[10] S[9] S[8] S[7] S[6] S[5] S[4] S[3] S[2] S[1] S[0] -autobundled
netbloc @S 1 1 2 440 2020 820
levelinfo -pg 1 0 270 630 840 -top 0 -bot 2240
show
zoom 0.3125
scrollpos -1281 -140
#
# initialize ictrl to current module N_bits work:N_bits:NOFILE
ictrl init topinfo |
ictrl layer glayer install
ictrl layer glayer config ibundle 1
ictrl layer glayer config nbundle 0
ictrl layer glayer config pbundle 0
ictrl layer glayer config cache 1
