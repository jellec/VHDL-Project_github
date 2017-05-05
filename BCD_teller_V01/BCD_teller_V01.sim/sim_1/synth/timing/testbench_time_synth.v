// Copyright 1986-2014 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2014.2 (win32) Build 932637 Wed Jun 11 13:24:38 MDT 2014
// Date        : Wed Apr 26 09:00:40 2017
// Host        : JELLECOREMA4D78 running 32-bit major release  (build 7600)
// Design      : Eight_Digit_BCD_teller
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Part        : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module DEMUX
   (an_OBUF,
    Q);
  output [7:0]an_OBUF;
  input [2:0]Q;

  wire [2:0]Q;
  wire [7:0]an_OBUF;

(* SOFT_HLUTNM = "soft_lutpair0" *) 
   LUT3 #(
    .INIT(8'hFE)) 
     \an_OBUF[0]_inst_i_1 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(Q[0]),
        .O(an_OBUF[0]));
(* SOFT_HLUTNM = "soft_lutpair0" *) 
   LUT3 #(
    .INIT(8'hEF)) 
     \an_OBUF[1]_inst_i_1 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(Q[0]),
        .O(an_OBUF[1]));
(* SOFT_HLUTNM = "soft_lutpair1" *) 
   LUT3 #(
    .INIT(8'hEF)) 
     \an_OBUF[2]_inst_i_1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .O(an_OBUF[2]));
(* SOFT_HLUTNM = "soft_lutpair1" *) 
   LUT3 #(
    .INIT(8'hF7)) 
     \an_OBUF[3]_inst_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .O(an_OBUF[3]));
(* SOFT_HLUTNM = "soft_lutpair2" *) 
   LUT3 #(
    .INIT(8'hEF)) 
     \an_OBUF[4]_inst_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .O(an_OBUF[4]));
(* SOFT_HLUTNM = "soft_lutpair2" *) 
   LUT3 #(
    .INIT(8'hF7)) 
     \an_OBUF[5]_inst_i_1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .O(an_OBUF[5]));
(* SOFT_HLUTNM = "soft_lutpair3" *) 
   LUT3 #(
    .INIT(8'hF7)) 
     \an_OBUF[6]_inst_i_1 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(Q[0]),
        .O(an_OBUF[6]));
(* SOFT_HLUTNM = "soft_lutpair3" *) 
   LUT3 #(
    .INIT(8'h7F)) 
     \an_OBUF[7]_inst_i_1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .O(an_OBUF[7]));
endmodule

(* Dist1 = "250000" *) (* Dist2 = "50000000" *) 
(* NotValidForBitStream *)
module Eight_Digit_BCD_teller
   (clk,
    rst,
    cnt_dwn,
    tel_rst,
    led0,
    seg,
    an);
  input clk;
  input rst;
  input cnt_dwn;
  input tel_rst;
  output led0;
  output [7:0]seg;
  output [7:0]an;

  wire [3:0]BCD_out;
  wire [2:0]Dispsel_out;
  wire [7:0]an;
  wire [7:0]an_OBUF;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire cnt_dwn;
  wire cnt_dwn_IBUF;
  wire count_out;
  wire led0;
  wire n_2_Scan_teller;
  wire rst;
  wire rst_IBUF;
  wire scan_out;
  wire scan_out_BUFG;
  wire [7:0]seg;
  wire [7:0]seg_OBUF;
  wire tel_rst;
  wire tel_rst_IBUF;

initial begin
 $sdf_annotate("testbench_time_synth.sdf",,,,"tool_control");
end
Scan_teller Scan_teller
       (.O1(n_2_Scan_teller),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .count_out(count_out),
        .rst_IBUF(rst_IBUF),
        .scan_out(scan_out));
OBUF \an_OBUF[0]_inst 
       (.I(an_OBUF[0]),
        .O(an[0]));
OBUF \an_OBUF[1]_inst 
       (.I(an_OBUF[1]),
        .O(an[1]));
OBUF \an_OBUF[2]_inst 
       (.I(an_OBUF[2]),
        .O(an[2]));
OBUF \an_OBUF[3]_inst 
       (.I(an_OBUF[3]),
        .O(an[3]));
OBUF \an_OBUF[4]_inst 
       (.I(an_OBUF[4]),
        .O(an[4]));
OBUF \an_OBUF[5]_inst 
       (.I(an_OBUF[5]),
        .O(an[5]));
OBUF \an_OBUF[6]_inst 
       (.I(an_OBUF[6]),
        .O(an[6]));
OBUF \an_OBUF[7]_inst 
       (.I(an_OBUF[7]),
        .O(an[7]));
BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
IBUF cnt_dwn_IBUF_inst
       (.I(cnt_dwn),
        .O(cnt_dwn_IBUF));
DEMUX demux
       (.Q(Dispsel_out),
        .an_OBUF(an_OBUF));
OBUF led0_OBUF_inst
       (.I(n_2_Scan_teller),
        .O(led0));
MUX mux
       (.O1(BCD_out),
        .Q(Dispsel_out),
        .cnt_dwn_IBUF(cnt_dwn_IBUF),
        .count_out(count_out),
        .scan_out_BUFG(scan_out_BUFG),
        .tel_rst_IBUF(tel_rst_IBUF));
IBUF rst_IBUF_inst
       (.I(rst),
        .O(rst_IBUF));
BUFG scan_out_BUFG_inst
       (.I(scan_out),
        .O(scan_out_BUFG));
OBUF \seg_OBUF[0]_inst 
       (.I(seg_OBUF[0]),
        .O(seg[0]));
OBUF \seg_OBUF[1]_inst 
       (.I(seg_OBUF[1]),
        .O(seg[1]));
OBUF \seg_OBUF[2]_inst 
       (.I(seg_OBUF[2]),
        .O(seg[2]));
OBUF \seg_OBUF[3]_inst 
       (.I(seg_OBUF[3]),
        .O(seg[3]));
OBUF \seg_OBUF[4]_inst 
       (.I(seg_OBUF[4]),
        .O(seg[4]));
OBUF \seg_OBUF[5]_inst 
       (.I(seg_OBUF[5]),
        .O(seg[5]));
OBUF \seg_OBUF[6]_inst 
       (.I(seg_OBUF[6]),
        .O(seg[6]));
OBUF \seg_OBUF[7]_inst 
       (.I(seg_OBUF[7]),
        .O(seg[7]));
Segment segment
       (.O1(BCD_out),
        .seg_OBUF(seg_OBUF));
IBUF tel_rst_IBUF_inst
       (.I(tel_rst),
        .O(tel_rst_IBUF));
endmodule

module MUX
   (Q,
    O1,
    count_out,
    cnt_dwn_IBUF,
    tel_rst_IBUF,
    scan_out_BUFG);
  output [2:0]Q;
  output [3:0]O1;
  input count_out;
  input cnt_dwn_IBUF;
  input tel_rst_IBUF;
  input scan_out_BUFG;

  wire [3:0]BCD_out0_in;
  wire [3:0]BCD_out1_in;
  wire [3:0]BCD_out3_in;
  wire [3:0]BCD_out4_in;
  wire [3:0]BCD_out5_in;
  wire [3:0]\BCDarray[7]_0 ;
  wire [3:0]O1;
  wire [2:0]Q;
  wire carry_out;
  wire cnt_dwn_IBUF;
  wire count1;
  wire count_out;
  wire [2:0]count_reg;
  wire [30:3]count_reg__0;
  wire \n_0_count[0]_i_1 ;
  wire \n_0_count[0]_i_10 ;
  wire \n_0_count[0]_i_11 ;
  wire \n_0_count[0]_i_12 ;
  wire \n_0_count[0]_i_14 ;
  wire \n_0_count[0]_i_15 ;
  wire \n_0_count[0]_i_16 ;
  wire \n_0_count[0]_i_17 ;
  wire \n_0_count[0]_i_19 ;
  wire \n_0_count[0]_i_20 ;
  wire \n_0_count[0]_i_21 ;
  wire \n_0_count[0]_i_22 ;
  wire \n_0_count[0]_i_23 ;
  wire \n_0_count[0]_i_24 ;
  wire \n_0_count[0]_i_25 ;
  wire \n_0_count[0]_i_26 ;
  wire \n_0_count[0]_i_27 ;
  wire \n_0_count[0]_i_28 ;
  wire \n_0_count[0]_i_4 ;
  wire \n_0_count[0]_i_5 ;
  wire \n_0_count[0]_i_6 ;
  wire \n_0_count[0]_i_7 ;
  wire \n_0_count[0]_i_9 ;
  wire \n_0_count[12]_i_2 ;
  wire \n_0_count[12]_i_3 ;
  wire \n_0_count[12]_i_4 ;
  wire \n_0_count[12]_i_5 ;
  wire \n_0_count[16]_i_2 ;
  wire \n_0_count[16]_i_3 ;
  wire \n_0_count[16]_i_4 ;
  wire \n_0_count[16]_i_5 ;
  wire \n_0_count[20]_i_2 ;
  wire \n_0_count[20]_i_3 ;
  wire \n_0_count[20]_i_4 ;
  wire \n_0_count[20]_i_5 ;
  wire \n_0_count[24]_i_2 ;
  wire \n_0_count[24]_i_3 ;
  wire \n_0_count[24]_i_4 ;
  wire \n_0_count[24]_i_5 ;
  wire \n_0_count[28]_i_2 ;
  wire \n_0_count[28]_i_3 ;
  wire \n_0_count[28]_i_4 ;
  wire \n_0_count[4]_i_2 ;
  wire \n_0_count[4]_i_3 ;
  wire \n_0_count[4]_i_4 ;
  wire \n_0_count[4]_i_5 ;
  wire \n_0_count[8]_i_2 ;
  wire \n_0_count[8]_i_3 ;
  wire \n_0_count[8]_i_4 ;
  wire \n_0_count[8]_i_5 ;
  wire \n_0_count_reg[0]_i_13 ;
  wire \n_0_count_reg[0]_i_18 ;
  wire \n_0_count_reg[0]_i_2 ;
  wire \n_0_count_reg[0]_i_8 ;
  wire \n_0_count_reg[12]_i_1 ;
  wire \n_0_count_reg[16]_i_1 ;
  wire \n_0_count_reg[20]_i_1 ;
  wire \n_0_count_reg[24]_i_1 ;
  wire \n_0_count_reg[4]_i_1 ;
  wire \n_0_count_reg[8]_i_1 ;
  wire \n_0_tellers[1].andere.tel ;
  wire \n_0_tellers[2].andere.tel ;
  wire \n_0_tellers[3].andere.tel ;
  wire \n_0_tellers[4].andere.tel ;
  wire \n_0_tellers[5].andere.tel ;
  wire \n_0_tellers[6].andere.tel ;
  wire \n_0_tellers[7].andere.tel ;
  wire \n_1_count_reg[0]_i_13 ;
  wire \n_1_count_reg[0]_i_18 ;
  wire \n_1_count_reg[0]_i_2 ;
  wire \n_1_count_reg[0]_i_3 ;
  wire \n_1_count_reg[0]_i_8 ;
  wire \n_1_count_reg[12]_i_1 ;
  wire \n_1_count_reg[16]_i_1 ;
  wire \n_1_count_reg[20]_i_1 ;
  wire \n_1_count_reg[24]_i_1 ;
  wire \n_1_count_reg[4]_i_1 ;
  wire \n_1_count_reg[8]_i_1 ;
  wire \n_1_tellers[0].eerste.tel ;
  wire \n_1_tellers[7].andere.tel ;
  wire \n_2_count_reg[0]_i_13 ;
  wire \n_2_count_reg[0]_i_18 ;
  wire \n_2_count_reg[0]_i_2 ;
  wire \n_2_count_reg[0]_i_3 ;
  wire \n_2_count_reg[0]_i_8 ;
  wire \n_2_count_reg[12]_i_1 ;
  wire \n_2_count_reg[16]_i_1 ;
  wire \n_2_count_reg[20]_i_1 ;
  wire \n_2_count_reg[24]_i_1 ;
  wire \n_2_count_reg[28]_i_1 ;
  wire \n_2_count_reg[4]_i_1 ;
  wire \n_2_count_reg[8]_i_1 ;
  wire \n_2_tellers[0].eerste.tel ;
  wire \n_2_tellers[7].andere.tel ;
  wire \n_3_count_reg[0]_i_13 ;
  wire \n_3_count_reg[0]_i_18 ;
  wire \n_3_count_reg[0]_i_2 ;
  wire \n_3_count_reg[0]_i_3 ;
  wire \n_3_count_reg[0]_i_8 ;
  wire \n_3_count_reg[12]_i_1 ;
  wire \n_3_count_reg[16]_i_1 ;
  wire \n_3_count_reg[20]_i_1 ;
  wire \n_3_count_reg[24]_i_1 ;
  wire \n_3_count_reg[28]_i_1 ;
  wire \n_3_count_reg[4]_i_1 ;
  wire \n_3_count_reg[8]_i_1 ;
  wire \n_3_tellers[0].eerste.tel ;
  wire \n_3_tellers[7].andere.tel ;
  wire \n_4_count_reg[0]_i_2 ;
  wire \n_4_count_reg[12]_i_1 ;
  wire \n_4_count_reg[16]_i_1 ;
  wire \n_4_count_reg[20]_i_1 ;
  wire \n_4_count_reg[24]_i_1 ;
  wire \n_4_count_reg[4]_i_1 ;
  wire \n_4_count_reg[8]_i_1 ;
  wire \n_4_tellers[0].eerste.tel ;
  wire \n_5_count_reg[0]_i_2 ;
  wire \n_5_count_reg[12]_i_1 ;
  wire \n_5_count_reg[16]_i_1 ;
  wire \n_5_count_reg[20]_i_1 ;
  wire \n_5_count_reg[24]_i_1 ;
  wire \n_5_count_reg[28]_i_1 ;
  wire \n_5_count_reg[4]_i_1 ;
  wire \n_5_count_reg[8]_i_1 ;
  wire \n_6_count_reg[0]_i_2 ;
  wire \n_6_count_reg[12]_i_1 ;
  wire \n_6_count_reg[16]_i_1 ;
  wire \n_6_count_reg[20]_i_1 ;
  wire \n_6_count_reg[24]_i_1 ;
  wire \n_6_count_reg[28]_i_1 ;
  wire \n_6_count_reg[4]_i_1 ;
  wire \n_6_count_reg[8]_i_1 ;
  wire \n_7_count_reg[0]_i_2 ;
  wire \n_7_count_reg[12]_i_1 ;
  wire \n_7_count_reg[16]_i_1 ;
  wire \n_7_count_reg[20]_i_1 ;
  wire \n_7_count_reg[24]_i_1 ;
  wire \n_7_count_reg[28]_i_1 ;
  wire \n_7_count_reg[4]_i_1 ;
  wire \n_7_count_reg[8]_i_1 ;
  wire scan_out_BUFG;
  wire tel_rst_IBUF;
  wire [3:0]\NLW_count_reg[0]_i_13_O_UNCONNECTED ;
  wire [3:0]\NLW_count_reg[0]_i_18_O_UNCONNECTED ;
  wire [3:0]\NLW_count_reg[0]_i_3_O_UNCONNECTED ;
  wire [3:0]\NLW_count_reg[0]_i_8_O_UNCONNECTED ;
  wire [3:2]\NLW_count_reg[28]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_count_reg[28]_i_1_O_UNCONNECTED ;

FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \BCD_out_reg[0] 
       (.C(scan_out_BUFG),
        .CE(1'b1),
        .D(\BCDarray[7]_0 [0]),
        .Q(O1[0]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \BCD_out_reg[1] 
       (.C(scan_out_BUFG),
        .CE(1'b1),
        .D(\BCDarray[7]_0 [1]),
        .Q(O1[1]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \BCD_out_reg[2] 
       (.C(scan_out_BUFG),
        .CE(1'b1),
        .D(\BCDarray[7]_0 [2]),
        .Q(O1[2]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \BCD_out_reg[3] 
       (.C(scan_out_BUFG),
        .CE(1'b1),
        .D(\BCDarray[7]_0 [3]),
        .Q(O1[3]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \Dispsel_out_reg[0] 
       (.C(scan_out_BUFG),
        .CE(1'b1),
        .D(count_reg[0]),
        .Q(Q[0]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \Dispsel_out_reg[1] 
       (.C(scan_out_BUFG),
        .CE(1'b1),
        .D(count_reg[1]),
        .Q(Q[1]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \Dispsel_out_reg[2] 
       (.C(scan_out_BUFG),
        .CE(1'b1),
        .D(count_reg[2]),
        .Q(Q[2]),
        .R(1'b0));
LUT1 #(
    .INIT(2'h1)) 
     \count[0]_i_1 
       (.I0(count1),
        .O(\n_0_count[0]_i_1 ));
LUT2 #(
    .INIT(4'h1)) 
     \count[0]_i_10 
       (.I0(count_reg__0[28]),
        .I1(count_reg__0[29]),
        .O(\n_0_count[0]_i_10 ));
LUT2 #(
    .INIT(4'h1)) 
     \count[0]_i_11 
       (.I0(count_reg__0[26]),
        .I1(count_reg__0[27]),
        .O(\n_0_count[0]_i_11 ));
LUT2 #(
    .INIT(4'h1)) 
     \count[0]_i_12 
       (.I0(count_reg__0[24]),
        .I1(count_reg__0[25]),
        .O(\n_0_count[0]_i_12 ));
LUT2 #(
    .INIT(4'h1)) 
     \count[0]_i_14 
       (.I0(count_reg__0[22]),
        .I1(count_reg__0[23]),
        .O(\n_0_count[0]_i_14 ));
LUT2 #(
    .INIT(4'h1)) 
     \count[0]_i_15 
       (.I0(count_reg__0[20]),
        .I1(count_reg__0[21]),
        .O(\n_0_count[0]_i_15 ));
LUT2 #(
    .INIT(4'h1)) 
     \count[0]_i_16 
       (.I0(count_reg__0[18]),
        .I1(count_reg__0[19]),
        .O(\n_0_count[0]_i_16 ));
LUT2 #(
    .INIT(4'h1)) 
     \count[0]_i_17 
       (.I0(count_reg__0[16]),
        .I1(count_reg__0[17]),
        .O(\n_0_count[0]_i_17 ));
LUT2 #(
    .INIT(4'h1)) 
     \count[0]_i_19 
       (.I0(count_reg__0[14]),
        .I1(count_reg__0[15]),
        .O(\n_0_count[0]_i_19 ));
LUT2 #(
    .INIT(4'h1)) 
     \count[0]_i_20 
       (.I0(count_reg__0[12]),
        .I1(count_reg__0[13]),
        .O(\n_0_count[0]_i_20 ));
LUT2 #(
    .INIT(4'h1)) 
     \count[0]_i_21 
       (.I0(count_reg__0[10]),
        .I1(count_reg__0[11]),
        .O(\n_0_count[0]_i_21 ));
LUT2 #(
    .INIT(4'h1)) 
     \count[0]_i_22 
       (.I0(count_reg__0[8]),
        .I1(count_reg__0[9]),
        .O(\n_0_count[0]_i_22 ));
LUT2 #(
    .INIT(4'h1)) 
     \count[0]_i_23 
       (.I0(count_reg[2]),
        .I1(count_reg__0[3]),
        .O(\n_0_count[0]_i_23 ));
LUT2 #(
    .INIT(4'h7)) 
     \count[0]_i_24 
       (.I0(count_reg[0]),
        .I1(count_reg[1]),
        .O(\n_0_count[0]_i_24 ));
LUT2 #(
    .INIT(4'h1)) 
     \count[0]_i_25 
       (.I0(count_reg__0[6]),
        .I1(count_reg__0[7]),
        .O(\n_0_count[0]_i_25 ));
LUT2 #(
    .INIT(4'h1)) 
     \count[0]_i_26 
       (.I0(count_reg__0[4]),
        .I1(count_reg__0[5]),
        .O(\n_0_count[0]_i_26 ));
LUT2 #(
    .INIT(4'h2)) 
     \count[0]_i_27 
       (.I0(count_reg[2]),
        .I1(count_reg__0[3]),
        .O(\n_0_count[0]_i_27 ));
LUT2 #(
    .INIT(4'h8)) 
     \count[0]_i_28 
       (.I0(count_reg[0]),
        .I1(count_reg[1]),
        .O(\n_0_count[0]_i_28 ));
LUT1 #(
    .INIT(2'h2)) 
     \count[0]_i_4 
       (.I0(count_reg__0[3]),
        .O(\n_0_count[0]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \count[0]_i_5 
       (.I0(count_reg[2]),
        .O(\n_0_count[0]_i_5 ));
LUT1 #(
    .INIT(2'h2)) 
     \count[0]_i_6 
       (.I0(count_reg[1]),
        .O(\n_0_count[0]_i_6 ));
LUT1 #(
    .INIT(2'h1)) 
     \count[0]_i_7 
       (.I0(count_reg[0]),
        .O(\n_0_count[0]_i_7 ));
LUT1 #(
    .INIT(2'h1)) 
     \count[0]_i_9 
       (.I0(count_reg__0[30]),
        .O(\n_0_count[0]_i_9 ));
LUT1 #(
    .INIT(2'h2)) 
     \count[12]_i_2 
       (.I0(count_reg__0[15]),
        .O(\n_0_count[12]_i_2 ));
LUT1 #(
    .INIT(2'h2)) 
     \count[12]_i_3 
       (.I0(count_reg__0[14]),
        .O(\n_0_count[12]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \count[12]_i_4 
       (.I0(count_reg__0[13]),
        .O(\n_0_count[12]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \count[12]_i_5 
       (.I0(count_reg__0[12]),
        .O(\n_0_count[12]_i_5 ));
LUT1 #(
    .INIT(2'h2)) 
     \count[16]_i_2 
       (.I0(count_reg__0[19]),
        .O(\n_0_count[16]_i_2 ));
LUT1 #(
    .INIT(2'h2)) 
     \count[16]_i_3 
       (.I0(count_reg__0[18]),
        .O(\n_0_count[16]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \count[16]_i_4 
       (.I0(count_reg__0[17]),
        .O(\n_0_count[16]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \count[16]_i_5 
       (.I0(count_reg__0[16]),
        .O(\n_0_count[16]_i_5 ));
LUT1 #(
    .INIT(2'h2)) 
     \count[20]_i_2 
       (.I0(count_reg__0[23]),
        .O(\n_0_count[20]_i_2 ));
LUT1 #(
    .INIT(2'h2)) 
     \count[20]_i_3 
       (.I0(count_reg__0[22]),
        .O(\n_0_count[20]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \count[20]_i_4 
       (.I0(count_reg__0[21]),
        .O(\n_0_count[20]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \count[20]_i_5 
       (.I0(count_reg__0[20]),
        .O(\n_0_count[20]_i_5 ));
LUT1 #(
    .INIT(2'h2)) 
     \count[24]_i_2 
       (.I0(count_reg__0[27]),
        .O(\n_0_count[24]_i_2 ));
LUT1 #(
    .INIT(2'h2)) 
     \count[24]_i_3 
       (.I0(count_reg__0[26]),
        .O(\n_0_count[24]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \count[24]_i_4 
       (.I0(count_reg__0[25]),
        .O(\n_0_count[24]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \count[24]_i_5 
       (.I0(count_reg__0[24]),
        .O(\n_0_count[24]_i_5 ));
LUT1 #(
    .INIT(2'h2)) 
     \count[28]_i_2 
       (.I0(count_reg__0[30]),
        .O(\n_0_count[28]_i_2 ));
LUT1 #(
    .INIT(2'h2)) 
     \count[28]_i_3 
       (.I0(count_reg__0[29]),
        .O(\n_0_count[28]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \count[28]_i_4 
       (.I0(count_reg__0[28]),
        .O(\n_0_count[28]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \count[4]_i_2 
       (.I0(count_reg__0[7]),
        .O(\n_0_count[4]_i_2 ));
LUT1 #(
    .INIT(2'h2)) 
     \count[4]_i_3 
       (.I0(count_reg__0[6]),
        .O(\n_0_count[4]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \count[4]_i_4 
       (.I0(count_reg__0[5]),
        .O(\n_0_count[4]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \count[4]_i_5 
       (.I0(count_reg__0[4]),
        .O(\n_0_count[4]_i_5 ));
LUT1 #(
    .INIT(2'h2)) 
     \count[8]_i_2 
       (.I0(count_reg__0[11]),
        .O(\n_0_count[8]_i_2 ));
LUT1 #(
    .INIT(2'h2)) 
     \count[8]_i_3 
       (.I0(count_reg__0[10]),
        .O(\n_0_count[8]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \count[8]_i_4 
       (.I0(count_reg__0[9]),
        .O(\n_0_count[8]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \count[8]_i_5 
       (.I0(count_reg__0[8]),
        .O(\n_0_count[8]_i_5 ));
(* counter = "4" *) 
   FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \count_reg[0] 
       (.C(scan_out_BUFG),
        .CE(1'b1),
        .D(\n_7_count_reg[0]_i_2 ),
        .Q(count_reg[0]),
        .R(\n_0_count[0]_i_1 ));
CARRY4 \count_reg[0]_i_13 
       (.CI(\n_0_count_reg[0]_i_18 ),
        .CO({\n_0_count_reg[0]_i_13 ,\n_1_count_reg[0]_i_13 ,\n_2_count_reg[0]_i_13 ,\n_3_count_reg[0]_i_13 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_count_reg[0]_i_13_O_UNCONNECTED [3:0]),
        .S({\n_0_count[0]_i_19 ,\n_0_count[0]_i_20 ,\n_0_count[0]_i_21 ,\n_0_count[0]_i_22 }));
CARRY4 \count_reg[0]_i_18 
       (.CI(1'b0),
        .CO({\n_0_count_reg[0]_i_18 ,\n_1_count_reg[0]_i_18 ,\n_2_count_reg[0]_i_18 ,\n_3_count_reg[0]_i_18 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\n_0_count[0]_i_23 ,\n_0_count[0]_i_24 }),
        .O(\NLW_count_reg[0]_i_18_O_UNCONNECTED [3:0]),
        .S({\n_0_count[0]_i_25 ,\n_0_count[0]_i_26 ,\n_0_count[0]_i_27 ,\n_0_count[0]_i_28 }));
CARRY4 \count_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\n_0_count_reg[0]_i_2 ,\n_1_count_reg[0]_i_2 ,\n_2_count_reg[0]_i_2 ,\n_3_count_reg[0]_i_2 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\n_4_count_reg[0]_i_2 ,\n_5_count_reg[0]_i_2 ,\n_6_count_reg[0]_i_2 ,\n_7_count_reg[0]_i_2 }),
        .S({\n_0_count[0]_i_4 ,\n_0_count[0]_i_5 ,\n_0_count[0]_i_6 ,\n_0_count[0]_i_7 }));
CARRY4 \count_reg[0]_i_3 
       (.CI(\n_0_count_reg[0]_i_8 ),
        .CO({count1,\n_1_count_reg[0]_i_3 ,\n_2_count_reg[0]_i_3 ,\n_3_count_reg[0]_i_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_count_reg[0]_i_3_O_UNCONNECTED [3:0]),
        .S({\n_0_count[0]_i_9 ,\n_0_count[0]_i_10 ,\n_0_count[0]_i_11 ,\n_0_count[0]_i_12 }));
CARRY4 \count_reg[0]_i_8 
       (.CI(\n_0_count_reg[0]_i_13 ),
        .CO({\n_0_count_reg[0]_i_8 ,\n_1_count_reg[0]_i_8 ,\n_2_count_reg[0]_i_8 ,\n_3_count_reg[0]_i_8 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_count_reg[0]_i_8_O_UNCONNECTED [3:0]),
        .S({\n_0_count[0]_i_14 ,\n_0_count[0]_i_15 ,\n_0_count[0]_i_16 ,\n_0_count[0]_i_17 }));
(* counter = "4" *) 
   FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \count_reg[10] 
       (.C(scan_out_BUFG),
        .CE(1'b1),
        .D(\n_5_count_reg[8]_i_1 ),
        .Q(count_reg__0[10]),
        .R(\n_0_count[0]_i_1 ));
(* counter = "4" *) 
   FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \count_reg[11] 
       (.C(scan_out_BUFG),
        .CE(1'b1),
        .D(\n_4_count_reg[8]_i_1 ),
        .Q(count_reg__0[11]),
        .R(\n_0_count[0]_i_1 ));
(* counter = "4" *) 
   FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \count_reg[12] 
       (.C(scan_out_BUFG),
        .CE(1'b1),
        .D(\n_7_count_reg[12]_i_1 ),
        .Q(count_reg__0[12]),
        .R(\n_0_count[0]_i_1 ));
CARRY4 \count_reg[12]_i_1 
       (.CI(\n_0_count_reg[8]_i_1 ),
        .CO({\n_0_count_reg[12]_i_1 ,\n_1_count_reg[12]_i_1 ,\n_2_count_reg[12]_i_1 ,\n_3_count_reg[12]_i_1 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_4_count_reg[12]_i_1 ,\n_5_count_reg[12]_i_1 ,\n_6_count_reg[12]_i_1 ,\n_7_count_reg[12]_i_1 }),
        .S({\n_0_count[12]_i_2 ,\n_0_count[12]_i_3 ,\n_0_count[12]_i_4 ,\n_0_count[12]_i_5 }));
(* counter = "4" *) 
   FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \count_reg[13] 
       (.C(scan_out_BUFG),
        .CE(1'b1),
        .D(\n_6_count_reg[12]_i_1 ),
        .Q(count_reg__0[13]),
        .R(\n_0_count[0]_i_1 ));
(* counter = "4" *) 
   FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \count_reg[14] 
       (.C(scan_out_BUFG),
        .CE(1'b1),
        .D(\n_5_count_reg[12]_i_1 ),
        .Q(count_reg__0[14]),
        .R(\n_0_count[0]_i_1 ));
(* counter = "4" *) 
   FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \count_reg[15] 
       (.C(scan_out_BUFG),
        .CE(1'b1),
        .D(\n_4_count_reg[12]_i_1 ),
        .Q(count_reg__0[15]),
        .R(\n_0_count[0]_i_1 ));
(* counter = "4" *) 
   FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \count_reg[16] 
       (.C(scan_out_BUFG),
        .CE(1'b1),
        .D(\n_7_count_reg[16]_i_1 ),
        .Q(count_reg__0[16]),
        .R(\n_0_count[0]_i_1 ));
CARRY4 \count_reg[16]_i_1 
       (.CI(\n_0_count_reg[12]_i_1 ),
        .CO({\n_0_count_reg[16]_i_1 ,\n_1_count_reg[16]_i_1 ,\n_2_count_reg[16]_i_1 ,\n_3_count_reg[16]_i_1 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_4_count_reg[16]_i_1 ,\n_5_count_reg[16]_i_1 ,\n_6_count_reg[16]_i_1 ,\n_7_count_reg[16]_i_1 }),
        .S({\n_0_count[16]_i_2 ,\n_0_count[16]_i_3 ,\n_0_count[16]_i_4 ,\n_0_count[16]_i_5 }));
(* counter = "4" *) 
   FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \count_reg[17] 
       (.C(scan_out_BUFG),
        .CE(1'b1),
        .D(\n_6_count_reg[16]_i_1 ),
        .Q(count_reg__0[17]),
        .R(\n_0_count[0]_i_1 ));
(* counter = "4" *) 
   FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \count_reg[18] 
       (.C(scan_out_BUFG),
        .CE(1'b1),
        .D(\n_5_count_reg[16]_i_1 ),
        .Q(count_reg__0[18]),
        .R(\n_0_count[0]_i_1 ));
(* counter = "4" *) 
   FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \count_reg[19] 
       (.C(scan_out_BUFG),
        .CE(1'b1),
        .D(\n_4_count_reg[16]_i_1 ),
        .Q(count_reg__0[19]),
        .R(\n_0_count[0]_i_1 ));
(* counter = "4" *) 
   FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \count_reg[1] 
       (.C(scan_out_BUFG),
        .CE(1'b1),
        .D(\n_6_count_reg[0]_i_2 ),
        .Q(count_reg[1]),
        .R(\n_0_count[0]_i_1 ));
(* counter = "4" *) 
   FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \count_reg[20] 
       (.C(scan_out_BUFG),
        .CE(1'b1),
        .D(\n_7_count_reg[20]_i_1 ),
        .Q(count_reg__0[20]),
        .R(\n_0_count[0]_i_1 ));
CARRY4 \count_reg[20]_i_1 
       (.CI(\n_0_count_reg[16]_i_1 ),
        .CO({\n_0_count_reg[20]_i_1 ,\n_1_count_reg[20]_i_1 ,\n_2_count_reg[20]_i_1 ,\n_3_count_reg[20]_i_1 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_4_count_reg[20]_i_1 ,\n_5_count_reg[20]_i_1 ,\n_6_count_reg[20]_i_1 ,\n_7_count_reg[20]_i_1 }),
        .S({\n_0_count[20]_i_2 ,\n_0_count[20]_i_3 ,\n_0_count[20]_i_4 ,\n_0_count[20]_i_5 }));
(* counter = "4" *) 
   FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \count_reg[21] 
       (.C(scan_out_BUFG),
        .CE(1'b1),
        .D(\n_6_count_reg[20]_i_1 ),
        .Q(count_reg__0[21]),
        .R(\n_0_count[0]_i_1 ));
(* counter = "4" *) 
   FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \count_reg[22] 
       (.C(scan_out_BUFG),
        .CE(1'b1),
        .D(\n_5_count_reg[20]_i_1 ),
        .Q(count_reg__0[22]),
        .R(\n_0_count[0]_i_1 ));
(* counter = "4" *) 
   FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \count_reg[23] 
       (.C(scan_out_BUFG),
        .CE(1'b1),
        .D(\n_4_count_reg[20]_i_1 ),
        .Q(count_reg__0[23]),
        .R(\n_0_count[0]_i_1 ));
(* counter = "4" *) 
   FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \count_reg[24] 
       (.C(scan_out_BUFG),
        .CE(1'b1),
        .D(\n_7_count_reg[24]_i_1 ),
        .Q(count_reg__0[24]),
        .R(\n_0_count[0]_i_1 ));
CARRY4 \count_reg[24]_i_1 
       (.CI(\n_0_count_reg[20]_i_1 ),
        .CO({\n_0_count_reg[24]_i_1 ,\n_1_count_reg[24]_i_1 ,\n_2_count_reg[24]_i_1 ,\n_3_count_reg[24]_i_1 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_4_count_reg[24]_i_1 ,\n_5_count_reg[24]_i_1 ,\n_6_count_reg[24]_i_1 ,\n_7_count_reg[24]_i_1 }),
        .S({\n_0_count[24]_i_2 ,\n_0_count[24]_i_3 ,\n_0_count[24]_i_4 ,\n_0_count[24]_i_5 }));
(* counter = "4" *) 
   FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \count_reg[25] 
       (.C(scan_out_BUFG),
        .CE(1'b1),
        .D(\n_6_count_reg[24]_i_1 ),
        .Q(count_reg__0[25]),
        .R(\n_0_count[0]_i_1 ));
(* counter = "4" *) 
   FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \count_reg[26] 
       (.C(scan_out_BUFG),
        .CE(1'b1),
        .D(\n_5_count_reg[24]_i_1 ),
        .Q(count_reg__0[26]),
        .R(\n_0_count[0]_i_1 ));
(* counter = "4" *) 
   FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \count_reg[27] 
       (.C(scan_out_BUFG),
        .CE(1'b1),
        .D(\n_4_count_reg[24]_i_1 ),
        .Q(count_reg__0[27]),
        .R(\n_0_count[0]_i_1 ));
(* counter = "4" *) 
   FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \count_reg[28] 
       (.C(scan_out_BUFG),
        .CE(1'b1),
        .D(\n_7_count_reg[28]_i_1 ),
        .Q(count_reg__0[28]),
        .R(\n_0_count[0]_i_1 ));
CARRY4 \count_reg[28]_i_1 
       (.CI(\n_0_count_reg[24]_i_1 ),
        .CO({\NLW_count_reg[28]_i_1_CO_UNCONNECTED [3:2],\n_2_count_reg[28]_i_1 ,\n_3_count_reg[28]_i_1 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_count_reg[28]_i_1_O_UNCONNECTED [3],\n_5_count_reg[28]_i_1 ,\n_6_count_reg[28]_i_1 ,\n_7_count_reg[28]_i_1 }),
        .S({1'b0,\n_0_count[28]_i_2 ,\n_0_count[28]_i_3 ,\n_0_count[28]_i_4 }));
(* counter = "4" *) 
   FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \count_reg[29] 
       (.C(scan_out_BUFG),
        .CE(1'b1),
        .D(\n_6_count_reg[28]_i_1 ),
        .Q(count_reg__0[29]),
        .R(\n_0_count[0]_i_1 ));
(* counter = "4" *) 
   FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \count_reg[2] 
       (.C(scan_out_BUFG),
        .CE(1'b1),
        .D(\n_5_count_reg[0]_i_2 ),
        .Q(count_reg[2]),
        .R(\n_0_count[0]_i_1 ));
(* counter = "4" *) 
   FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \count_reg[30] 
       (.C(scan_out_BUFG),
        .CE(1'b1),
        .D(\n_5_count_reg[28]_i_1 ),
        .Q(count_reg__0[30]),
        .R(\n_0_count[0]_i_1 ));
(* counter = "4" *) 
   FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \count_reg[3] 
       (.C(scan_out_BUFG),
        .CE(1'b1),
        .D(\n_4_count_reg[0]_i_2 ),
        .Q(count_reg__0[3]),
        .R(\n_0_count[0]_i_1 ));
(* counter = "4" *) 
   FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \count_reg[4] 
       (.C(scan_out_BUFG),
        .CE(1'b1),
        .D(\n_7_count_reg[4]_i_1 ),
        .Q(count_reg__0[4]),
        .R(\n_0_count[0]_i_1 ));
CARRY4 \count_reg[4]_i_1 
       (.CI(\n_0_count_reg[0]_i_2 ),
        .CO({\n_0_count_reg[4]_i_1 ,\n_1_count_reg[4]_i_1 ,\n_2_count_reg[4]_i_1 ,\n_3_count_reg[4]_i_1 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_4_count_reg[4]_i_1 ,\n_5_count_reg[4]_i_1 ,\n_6_count_reg[4]_i_1 ,\n_7_count_reg[4]_i_1 }),
        .S({\n_0_count[4]_i_2 ,\n_0_count[4]_i_3 ,\n_0_count[4]_i_4 ,\n_0_count[4]_i_5 }));
(* counter = "4" *) 
   FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \count_reg[5] 
       (.C(scan_out_BUFG),
        .CE(1'b1),
        .D(\n_6_count_reg[4]_i_1 ),
        .Q(count_reg__0[5]),
        .R(\n_0_count[0]_i_1 ));
(* counter = "4" *) 
   FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \count_reg[6] 
       (.C(scan_out_BUFG),
        .CE(1'b1),
        .D(\n_5_count_reg[4]_i_1 ),
        .Q(count_reg__0[6]),
        .R(\n_0_count[0]_i_1 ));
(* counter = "4" *) 
   FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \count_reg[7] 
       (.C(scan_out_BUFG),
        .CE(1'b1),
        .D(\n_4_count_reg[4]_i_1 ),
        .Q(count_reg__0[7]),
        .R(\n_0_count[0]_i_1 ));
(* counter = "4" *) 
   FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \count_reg[8] 
       (.C(scan_out_BUFG),
        .CE(1'b1),
        .D(\n_7_count_reg[8]_i_1 ),
        .Q(count_reg__0[8]),
        .R(\n_0_count[0]_i_1 ));
CARRY4 \count_reg[8]_i_1 
       (.CI(\n_0_count_reg[4]_i_1 ),
        .CO({\n_0_count_reg[8]_i_1 ,\n_1_count_reg[8]_i_1 ,\n_2_count_reg[8]_i_1 ,\n_3_count_reg[8]_i_1 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_4_count_reg[8]_i_1 ,\n_5_count_reg[8]_i_1 ,\n_6_count_reg[8]_i_1 ,\n_7_count_reg[8]_i_1 }),
        .S({\n_0_count[8]_i_2 ,\n_0_count[8]_i_3 ,\n_0_count[8]_i_4 ,\n_0_count[8]_i_5 }));
(* counter = "4" *) 
   FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \count_reg[9] 
       (.C(scan_out_BUFG),
        .CE(1'b1),
        .D(\n_6_count_reg[8]_i_1 ),
        .Q(count_reg__0[9]),
        .R(\n_0_count[0]_i_1 ));
enkele_Teller \tellers[0].eerste.tel 
       (.Q({\n_1_tellers[0].eerste.tel ,\n_2_tellers[0].eerste.tel ,\n_3_tellers[0].eerste.tel ,\n_4_tellers[0].eerste.tel }),
        .carry_out(carry_out),
        .cnt_dwn_IBUF(cnt_dwn_IBUF),
        .count_out(count_out),
        .tel_rst_IBUF(tel_rst_IBUF));
enkele_Teller_0 \tellers[1].andere.tel 
       (.O1(\n_0_tellers[1].andere.tel ),
        .Q(BCD_out0_in),
        .carry_out(carry_out),
        .cnt_dwn_IBUF(cnt_dwn_IBUF),
        .tel_rst_IBUF(tel_rst_IBUF));
enkele_Teller_1 \tellers[2].andere.tel 
       (.I1(\n_0_tellers[1].andere.tel ),
        .O1(\n_0_tellers[2].andere.tel ),
        .Q(BCD_out1_in),
        .cnt_dwn_IBUF(cnt_dwn_IBUF),
        .tel_rst_IBUF(tel_rst_IBUF));
enkele_Teller_2 \tellers[3].andere.tel 
       (.D(\BCDarray[7]_0 ),
        .I1(\n_0_tellers[2].andere.tel ),
        .I2(\n_0_tellers[7].andere.tel ),
        .I3(BCD_out0_in),
        .I4({\n_1_tellers[0].eerste.tel ,\n_2_tellers[0].eerste.tel ,\n_3_tellers[0].eerste.tel ,\n_4_tellers[0].eerste.tel }),
        .I5(\n_1_tellers[7].andere.tel ),
        .I6(\n_2_tellers[7].andere.tel ),
        .I7(\n_3_tellers[7].andere.tel ),
        .O1(\n_0_tellers[3].andere.tel ),
        .Q(BCD_out1_in),
        .cnt_dwn_IBUF(cnt_dwn_IBUF),
        .out(count_reg),
        .tel_rst_IBUF(tel_rst_IBUF));
enkele_Teller_3 \tellers[4].andere.tel 
       (.I1(\n_0_tellers[3].andere.tel ),
        .O1(\n_0_tellers[4].andere.tel ),
        .Q(BCD_out3_in),
        .cnt_dwn_IBUF(cnt_dwn_IBUF),
        .tel_rst_IBUF(tel_rst_IBUF));
enkele_Teller_4 \tellers[5].andere.tel 
       (.I1(\n_0_tellers[4].andere.tel ),
        .O1(\n_0_tellers[5].andere.tel ),
        .Q(BCD_out4_in),
        .cnt_dwn_IBUF(cnt_dwn_IBUF),
        .tel_rst_IBUF(tel_rst_IBUF));
enkele_Teller_5 \tellers[6].andere.tel 
       (.I1(\n_0_tellers[5].andere.tel ),
        .O1(\n_0_tellers[6].andere.tel ),
        .Q(BCD_out5_in),
        .cnt_dwn_IBUF(cnt_dwn_IBUF),
        .tel_rst_IBUF(tel_rst_IBUF));
enkele_Teller_6 \tellers[7].andere.tel 
       (.I1(BCD_out4_in),
        .I2(BCD_out3_in),
        .I3(\n_0_tellers[6].andere.tel ),
        .O1(\n_0_tellers[7].andere.tel ),
        .O2(\n_1_tellers[7].andere.tel ),
        .O3(\n_2_tellers[7].andere.tel ),
        .O4(\n_3_tellers[7].andere.tel ),
        .Q(BCD_out5_in),
        .cnt_dwn_IBUF(cnt_dwn_IBUF),
        .out(count_reg[1:0]),
        .tel_rst_IBUF(tel_rst_IBUF));
endmodule

module Scan_teller
   (count_out,
    scan_out,
    O1,
    clk_IBUF_BUFG,
    rst_IBUF);
  output count_out;
  output scan_out;
  output O1;
  input clk_IBUF_BUFG;
  input rst_IBUF;

  wire O1;
  wire clk_IBUF_BUFG;
  wire cntr11;
  wire [31:0]cntr1_reg;
  wire cntr21;
  wire [31:0]cntr2_reg;
  wire count_out;
  wire \n_0_cntr1[0]_i_2 ;
  wire \n_0_cntr1[0]_i_3 ;
  wire \n_0_cntr1[0]_i_4 ;
  wire \n_0_cntr1[0]_i_5 ;
  wire \n_0_cntr1[0]_i_6 ;
  wire \n_0_cntr1[12]_i_2 ;
  wire \n_0_cntr1[12]_i_3 ;
  wire \n_0_cntr1[12]_i_4 ;
  wire \n_0_cntr1[12]_i_5 ;
  wire \n_0_cntr1[16]_i_2 ;
  wire \n_0_cntr1[16]_i_3 ;
  wire \n_0_cntr1[16]_i_4 ;
  wire \n_0_cntr1[16]_i_5 ;
  wire \n_0_cntr1[20]_i_2 ;
  wire \n_0_cntr1[20]_i_3 ;
  wire \n_0_cntr1[20]_i_4 ;
  wire \n_0_cntr1[20]_i_5 ;
  wire \n_0_cntr1[24]_i_2 ;
  wire \n_0_cntr1[24]_i_3 ;
  wire \n_0_cntr1[24]_i_4 ;
  wire \n_0_cntr1[24]_i_5 ;
  wire \n_0_cntr1[28]_i_2 ;
  wire \n_0_cntr1[28]_i_3 ;
  wire \n_0_cntr1[28]_i_4 ;
  wire \n_0_cntr1[28]_i_5 ;
  wire \n_0_cntr1[4]_i_2 ;
  wire \n_0_cntr1[4]_i_3 ;
  wire \n_0_cntr1[4]_i_4 ;
  wire \n_0_cntr1[4]_i_5 ;
  wire \n_0_cntr1[8]_i_2 ;
  wire \n_0_cntr1[8]_i_3 ;
  wire \n_0_cntr1[8]_i_4 ;
  wire \n_0_cntr1[8]_i_5 ;
  wire \n_0_cntr1_reg[0]_i_1 ;
  wire \n_0_cntr1_reg[12]_i_1 ;
  wire \n_0_cntr1_reg[16]_i_1 ;
  wire \n_0_cntr1_reg[20]_i_1 ;
  wire \n_0_cntr1_reg[24]_i_1 ;
  wire \n_0_cntr1_reg[4]_i_1 ;
  wire \n_0_cntr1_reg[8]_i_1 ;
  wire \n_0_cntr2[0]_i_2 ;
  wire \n_0_cntr2[0]_i_3 ;
  wire \n_0_cntr2[0]_i_4 ;
  wire \n_0_cntr2[0]_i_5 ;
  wire \n_0_cntr2[0]_i_6 ;
  wire \n_0_cntr2[12]_i_2 ;
  wire \n_0_cntr2[12]_i_3 ;
  wire \n_0_cntr2[12]_i_4 ;
  wire \n_0_cntr2[12]_i_5 ;
  wire \n_0_cntr2[16]_i_2 ;
  wire \n_0_cntr2[16]_i_3 ;
  wire \n_0_cntr2[16]_i_4 ;
  wire \n_0_cntr2[16]_i_5 ;
  wire \n_0_cntr2[20]_i_2 ;
  wire \n_0_cntr2[20]_i_3 ;
  wire \n_0_cntr2[20]_i_4 ;
  wire \n_0_cntr2[20]_i_5 ;
  wire \n_0_cntr2[24]_i_2 ;
  wire \n_0_cntr2[24]_i_3 ;
  wire \n_0_cntr2[24]_i_4 ;
  wire \n_0_cntr2[24]_i_5 ;
  wire \n_0_cntr2[28]_i_2 ;
  wire \n_0_cntr2[28]_i_3 ;
  wire \n_0_cntr2[28]_i_4 ;
  wire \n_0_cntr2[28]_i_5 ;
  wire \n_0_cntr2[4]_i_2 ;
  wire \n_0_cntr2[4]_i_3 ;
  wire \n_0_cntr2[4]_i_4 ;
  wire \n_0_cntr2[4]_i_5 ;
  wire \n_0_cntr2[8]_i_2 ;
  wire \n_0_cntr2[8]_i_3 ;
  wire \n_0_cntr2[8]_i_4 ;
  wire \n_0_cntr2[8]_i_5 ;
  wire \n_0_cntr2_reg[0]_i_1 ;
  wire \n_0_cntr2_reg[12]_i_1 ;
  wire \n_0_cntr2_reg[16]_i_1 ;
  wire \n_0_cntr2_reg[20]_i_1 ;
  wire \n_0_cntr2_reg[24]_i_1 ;
  wire \n_0_cntr2_reg[4]_i_1 ;
  wire \n_0_cntr2_reg[8]_i_1 ;
  wire n_0_count_out_i_1;
  wire n_0_count_out_i_11;
  wire n_0_count_out_i_12;
  wire n_0_count_out_i_13;
  wire n_0_count_out_i_14;
  wire n_0_count_out_i_15;
  wire n_0_count_out_i_16;
  wire n_0_count_out_i_17;
  wire n_0_count_out_i_18;
  wire n_0_count_out_i_2;
  wire n_0_count_out_i_20;
  wire n_0_count_out_i_21;
  wire n_0_count_out_i_22;
  wire n_0_count_out_i_23;
  wire n_0_count_out_i_24;
  wire n_0_count_out_i_25;
  wire n_0_count_out_i_26;
  wire n_0_count_out_i_27;
  wire n_0_count_out_i_28;
  wire n_0_count_out_i_29;
  wire n_0_count_out_i_30;
  wire n_0_count_out_i_31;
  wire n_0_count_out_i_32;
  wire n_0_count_out_i_33;
  wire n_0_count_out_i_5;
  wire n_0_count_out_i_6;
  wire n_0_count_out_i_7;
  wire n_0_count_out_i_8;
  wire n_0_count_out_i_9;
  wire n_0_count_out_reg_i_10;
  wire n_0_count_out_reg_i_19;
  wire n_0_count_out_reg_i_4;
  wire n_0_ledON_i_1;
  wire n_0_scan_out_i_10;
  wire n_0_scan_out_i_11;
  wire n_0_scan_out_i_12;
  wire n_0_scan_out_i_13;
  wire n_0_scan_out_i_15;
  wire n_0_scan_out_i_16;
  wire n_0_scan_out_i_17;
  wire n_0_scan_out_i_18;
  wire n_0_scan_out_i_19;
  wire n_0_scan_out_i_20;
  wire n_0_scan_out_i_21;
  wire n_0_scan_out_i_22;
  wire n_0_scan_out_i_23;
  wire n_0_scan_out_i_24;
  wire n_0_scan_out_i_25;
  wire n_0_scan_out_i_26;
  wire n_0_scan_out_i_27;
  wire n_0_scan_out_i_4;
  wire n_0_scan_out_i_5;
  wire n_0_scan_out_i_6;
  wire n_0_scan_out_i_7;
  wire n_0_scan_out_i_9;
  wire n_0_scan_out_reg_i_14;
  wire n_0_scan_out_reg_i_3;
  wire n_0_scan_out_reg_i_8;
  wire \n_1_cntr1_reg[0]_i_1 ;
  wire \n_1_cntr1_reg[12]_i_1 ;
  wire \n_1_cntr1_reg[16]_i_1 ;
  wire \n_1_cntr1_reg[20]_i_1 ;
  wire \n_1_cntr1_reg[24]_i_1 ;
  wire \n_1_cntr1_reg[28]_i_1 ;
  wire \n_1_cntr1_reg[4]_i_1 ;
  wire \n_1_cntr1_reg[8]_i_1 ;
  wire \n_1_cntr2_reg[0]_i_1 ;
  wire \n_1_cntr2_reg[12]_i_1 ;
  wire \n_1_cntr2_reg[16]_i_1 ;
  wire \n_1_cntr2_reg[20]_i_1 ;
  wire \n_1_cntr2_reg[24]_i_1 ;
  wire \n_1_cntr2_reg[28]_i_1 ;
  wire \n_1_cntr2_reg[4]_i_1 ;
  wire \n_1_cntr2_reg[8]_i_1 ;
  wire n_1_count_out_reg_i_10;
  wire n_1_count_out_reg_i_19;
  wire n_1_count_out_reg_i_3;
  wire n_1_count_out_reg_i_4;
  wire n_1_scan_out_reg_i_14;
  wire n_1_scan_out_reg_i_2;
  wire n_1_scan_out_reg_i_3;
  wire n_1_scan_out_reg_i_8;
  wire \n_2_cntr1_reg[0]_i_1 ;
  wire \n_2_cntr1_reg[12]_i_1 ;
  wire \n_2_cntr1_reg[16]_i_1 ;
  wire \n_2_cntr1_reg[20]_i_1 ;
  wire \n_2_cntr1_reg[24]_i_1 ;
  wire \n_2_cntr1_reg[28]_i_1 ;
  wire \n_2_cntr1_reg[4]_i_1 ;
  wire \n_2_cntr1_reg[8]_i_1 ;
  wire \n_2_cntr2_reg[0]_i_1 ;
  wire \n_2_cntr2_reg[12]_i_1 ;
  wire \n_2_cntr2_reg[16]_i_1 ;
  wire \n_2_cntr2_reg[20]_i_1 ;
  wire \n_2_cntr2_reg[24]_i_1 ;
  wire \n_2_cntr2_reg[28]_i_1 ;
  wire \n_2_cntr2_reg[4]_i_1 ;
  wire \n_2_cntr2_reg[8]_i_1 ;
  wire n_2_count_out_reg_i_10;
  wire n_2_count_out_reg_i_19;
  wire n_2_count_out_reg_i_3;
  wire n_2_count_out_reg_i_4;
  wire n_2_scan_out_reg_i_14;
  wire n_2_scan_out_reg_i_2;
  wire n_2_scan_out_reg_i_3;
  wire n_2_scan_out_reg_i_8;
  wire \n_3_cntr1_reg[0]_i_1 ;
  wire \n_3_cntr1_reg[12]_i_1 ;
  wire \n_3_cntr1_reg[16]_i_1 ;
  wire \n_3_cntr1_reg[20]_i_1 ;
  wire \n_3_cntr1_reg[24]_i_1 ;
  wire \n_3_cntr1_reg[28]_i_1 ;
  wire \n_3_cntr1_reg[4]_i_1 ;
  wire \n_3_cntr1_reg[8]_i_1 ;
  wire \n_3_cntr2_reg[0]_i_1 ;
  wire \n_3_cntr2_reg[12]_i_1 ;
  wire \n_3_cntr2_reg[16]_i_1 ;
  wire \n_3_cntr2_reg[20]_i_1 ;
  wire \n_3_cntr2_reg[24]_i_1 ;
  wire \n_3_cntr2_reg[28]_i_1 ;
  wire \n_3_cntr2_reg[4]_i_1 ;
  wire \n_3_cntr2_reg[8]_i_1 ;
  wire n_3_count_out_reg_i_10;
  wire n_3_count_out_reg_i_19;
  wire n_3_count_out_reg_i_3;
  wire n_3_count_out_reg_i_4;
  wire n_3_scan_out_reg_i_14;
  wire n_3_scan_out_reg_i_2;
  wire n_3_scan_out_reg_i_3;
  wire n_3_scan_out_reg_i_8;
  wire \n_4_cntr1_reg[0]_i_1 ;
  wire \n_4_cntr1_reg[12]_i_1 ;
  wire \n_4_cntr1_reg[16]_i_1 ;
  wire \n_4_cntr1_reg[20]_i_1 ;
  wire \n_4_cntr1_reg[24]_i_1 ;
  wire \n_4_cntr1_reg[28]_i_1 ;
  wire \n_4_cntr1_reg[4]_i_1 ;
  wire \n_4_cntr1_reg[8]_i_1 ;
  wire \n_4_cntr2_reg[0]_i_1 ;
  wire \n_4_cntr2_reg[12]_i_1 ;
  wire \n_4_cntr2_reg[16]_i_1 ;
  wire \n_4_cntr2_reg[20]_i_1 ;
  wire \n_4_cntr2_reg[24]_i_1 ;
  wire \n_4_cntr2_reg[28]_i_1 ;
  wire \n_4_cntr2_reg[4]_i_1 ;
  wire \n_4_cntr2_reg[8]_i_1 ;
  wire \n_5_cntr1_reg[0]_i_1 ;
  wire \n_5_cntr1_reg[12]_i_1 ;
  wire \n_5_cntr1_reg[16]_i_1 ;
  wire \n_5_cntr1_reg[20]_i_1 ;
  wire \n_5_cntr1_reg[24]_i_1 ;
  wire \n_5_cntr1_reg[28]_i_1 ;
  wire \n_5_cntr1_reg[4]_i_1 ;
  wire \n_5_cntr1_reg[8]_i_1 ;
  wire \n_5_cntr2_reg[0]_i_1 ;
  wire \n_5_cntr2_reg[12]_i_1 ;
  wire \n_5_cntr2_reg[16]_i_1 ;
  wire \n_5_cntr2_reg[20]_i_1 ;
  wire \n_5_cntr2_reg[24]_i_1 ;
  wire \n_5_cntr2_reg[28]_i_1 ;
  wire \n_5_cntr2_reg[4]_i_1 ;
  wire \n_5_cntr2_reg[8]_i_1 ;
  wire \n_6_cntr1_reg[0]_i_1 ;
  wire \n_6_cntr1_reg[12]_i_1 ;
  wire \n_6_cntr1_reg[16]_i_1 ;
  wire \n_6_cntr1_reg[20]_i_1 ;
  wire \n_6_cntr1_reg[24]_i_1 ;
  wire \n_6_cntr1_reg[28]_i_1 ;
  wire \n_6_cntr1_reg[4]_i_1 ;
  wire \n_6_cntr1_reg[8]_i_1 ;
  wire \n_6_cntr2_reg[0]_i_1 ;
  wire \n_6_cntr2_reg[12]_i_1 ;
  wire \n_6_cntr2_reg[16]_i_1 ;
  wire \n_6_cntr2_reg[20]_i_1 ;
  wire \n_6_cntr2_reg[24]_i_1 ;
  wire \n_6_cntr2_reg[28]_i_1 ;
  wire \n_6_cntr2_reg[4]_i_1 ;
  wire \n_6_cntr2_reg[8]_i_1 ;
  wire \n_7_cntr1_reg[0]_i_1 ;
  wire \n_7_cntr1_reg[12]_i_1 ;
  wire \n_7_cntr1_reg[16]_i_1 ;
  wire \n_7_cntr1_reg[20]_i_1 ;
  wire \n_7_cntr1_reg[24]_i_1 ;
  wire \n_7_cntr1_reg[28]_i_1 ;
  wire \n_7_cntr1_reg[4]_i_1 ;
  wire \n_7_cntr1_reg[8]_i_1 ;
  wire \n_7_cntr2_reg[0]_i_1 ;
  wire \n_7_cntr2_reg[12]_i_1 ;
  wire \n_7_cntr2_reg[16]_i_1 ;
  wire \n_7_cntr2_reg[20]_i_1 ;
  wire \n_7_cntr2_reg[24]_i_1 ;
  wire \n_7_cntr2_reg[28]_i_1 ;
  wire \n_7_cntr2_reg[4]_i_1 ;
  wire \n_7_cntr2_reg[8]_i_1 ;
  wire p_1_in;
  wire rst_IBUF;
  wire scan_out;
  wire [3:3]\NLW_cntr1_reg[28]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_cntr2_reg[28]_i_1_CO_UNCONNECTED ;
  wire [3:0]NLW_count_out_reg_i_10_O_UNCONNECTED;
  wire [3:0]NLW_count_out_reg_i_19_O_UNCONNECTED;
  wire [3:0]NLW_count_out_reg_i_3_O_UNCONNECTED;
  wire [3:0]NLW_count_out_reg_i_4_O_UNCONNECTED;
  wire [3:0]NLW_scan_out_reg_i_14_O_UNCONNECTED;
  wire [3:0]NLW_scan_out_reg_i_2_O_UNCONNECTED;
  wire [3:0]NLW_scan_out_reg_i_3_O_UNCONNECTED;
  wire [3:0]NLW_scan_out_reg_i_8_O_UNCONNECTED;

LUT2 #(
    .INIT(4'h8)) 
     \cntr1[0]_i_2 
       (.I0(cntr11),
        .I1(cntr1_reg[0]),
        .O(\n_0_cntr1[0]_i_2 ));
LUT2 #(
    .INIT(4'h8)) 
     \cntr1[0]_i_3 
       (.I0(cntr11),
        .I1(cntr1_reg[3]),
        .O(\n_0_cntr1[0]_i_3 ));
LUT2 #(
    .INIT(4'h8)) 
     \cntr1[0]_i_4 
       (.I0(cntr11),
        .I1(cntr1_reg[2]),
        .O(\n_0_cntr1[0]_i_4 ));
LUT2 #(
    .INIT(4'h8)) 
     \cntr1[0]_i_5 
       (.I0(cntr11),
        .I1(cntr1_reg[1]),
        .O(\n_0_cntr1[0]_i_5 ));
LUT2 #(
    .INIT(4'h4)) 
     \cntr1[0]_i_6 
       (.I0(cntr1_reg[0]),
        .I1(cntr11),
        .O(\n_0_cntr1[0]_i_6 ));
LUT2 #(
    .INIT(4'h8)) 
     \cntr1[12]_i_2 
       (.I0(cntr11),
        .I1(cntr1_reg[15]),
        .O(\n_0_cntr1[12]_i_2 ));
LUT2 #(
    .INIT(4'h8)) 
     \cntr1[12]_i_3 
       (.I0(cntr11),
        .I1(cntr1_reg[14]),
        .O(\n_0_cntr1[12]_i_3 ));
LUT2 #(
    .INIT(4'h8)) 
     \cntr1[12]_i_4 
       (.I0(cntr11),
        .I1(cntr1_reg[13]),
        .O(\n_0_cntr1[12]_i_4 ));
LUT2 #(
    .INIT(4'h8)) 
     \cntr1[12]_i_5 
       (.I0(cntr11),
        .I1(cntr1_reg[12]),
        .O(\n_0_cntr1[12]_i_5 ));
LUT2 #(
    .INIT(4'h8)) 
     \cntr1[16]_i_2 
       (.I0(cntr11),
        .I1(cntr1_reg[19]),
        .O(\n_0_cntr1[16]_i_2 ));
LUT2 #(
    .INIT(4'h8)) 
     \cntr1[16]_i_3 
       (.I0(cntr11),
        .I1(cntr1_reg[18]),
        .O(\n_0_cntr1[16]_i_3 ));
LUT2 #(
    .INIT(4'h8)) 
     \cntr1[16]_i_4 
       (.I0(cntr11),
        .I1(cntr1_reg[17]),
        .O(\n_0_cntr1[16]_i_4 ));
LUT2 #(
    .INIT(4'h8)) 
     \cntr1[16]_i_5 
       (.I0(cntr11),
        .I1(cntr1_reg[16]),
        .O(\n_0_cntr1[16]_i_5 ));
LUT2 #(
    .INIT(4'h8)) 
     \cntr1[20]_i_2 
       (.I0(cntr11),
        .I1(cntr1_reg[23]),
        .O(\n_0_cntr1[20]_i_2 ));
LUT2 #(
    .INIT(4'h8)) 
     \cntr1[20]_i_3 
       (.I0(cntr11),
        .I1(cntr1_reg[22]),
        .O(\n_0_cntr1[20]_i_3 ));
LUT2 #(
    .INIT(4'h8)) 
     \cntr1[20]_i_4 
       (.I0(cntr11),
        .I1(cntr1_reg[21]),
        .O(\n_0_cntr1[20]_i_4 ));
LUT2 #(
    .INIT(4'h8)) 
     \cntr1[20]_i_5 
       (.I0(cntr11),
        .I1(cntr1_reg[20]),
        .O(\n_0_cntr1[20]_i_5 ));
LUT2 #(
    .INIT(4'h8)) 
     \cntr1[24]_i_2 
       (.I0(cntr11),
        .I1(cntr1_reg[27]),
        .O(\n_0_cntr1[24]_i_2 ));
LUT2 #(
    .INIT(4'h8)) 
     \cntr1[24]_i_3 
       (.I0(cntr11),
        .I1(cntr1_reg[26]),
        .O(\n_0_cntr1[24]_i_3 ));
LUT2 #(
    .INIT(4'h8)) 
     \cntr1[24]_i_4 
       (.I0(cntr11),
        .I1(cntr1_reg[25]),
        .O(\n_0_cntr1[24]_i_4 ));
LUT2 #(
    .INIT(4'h8)) 
     \cntr1[24]_i_5 
       (.I0(cntr11),
        .I1(cntr1_reg[24]),
        .O(\n_0_cntr1[24]_i_5 ));
LUT2 #(
    .INIT(4'h8)) 
     \cntr1[28]_i_2 
       (.I0(cntr11),
        .I1(cntr1_reg[31]),
        .O(\n_0_cntr1[28]_i_2 ));
LUT2 #(
    .INIT(4'h8)) 
     \cntr1[28]_i_3 
       (.I0(cntr11),
        .I1(cntr1_reg[30]),
        .O(\n_0_cntr1[28]_i_3 ));
LUT2 #(
    .INIT(4'h8)) 
     \cntr1[28]_i_4 
       (.I0(cntr11),
        .I1(cntr1_reg[29]),
        .O(\n_0_cntr1[28]_i_4 ));
LUT2 #(
    .INIT(4'h8)) 
     \cntr1[28]_i_5 
       (.I0(cntr11),
        .I1(cntr1_reg[28]),
        .O(\n_0_cntr1[28]_i_5 ));
LUT2 #(
    .INIT(4'h8)) 
     \cntr1[4]_i_2 
       (.I0(cntr11),
        .I1(cntr1_reg[7]),
        .O(\n_0_cntr1[4]_i_2 ));
LUT2 #(
    .INIT(4'h8)) 
     \cntr1[4]_i_3 
       (.I0(cntr11),
        .I1(cntr1_reg[6]),
        .O(\n_0_cntr1[4]_i_3 ));
LUT2 #(
    .INIT(4'h8)) 
     \cntr1[4]_i_4 
       (.I0(cntr11),
        .I1(cntr1_reg[5]),
        .O(\n_0_cntr1[4]_i_4 ));
LUT2 #(
    .INIT(4'h8)) 
     \cntr1[4]_i_5 
       (.I0(cntr11),
        .I1(cntr1_reg[4]),
        .O(\n_0_cntr1[4]_i_5 ));
LUT2 #(
    .INIT(4'h8)) 
     \cntr1[8]_i_2 
       (.I0(cntr11),
        .I1(cntr1_reg[11]),
        .O(\n_0_cntr1[8]_i_2 ));
LUT2 #(
    .INIT(4'h8)) 
     \cntr1[8]_i_3 
       (.I0(cntr11),
        .I1(cntr1_reg[10]),
        .O(\n_0_cntr1[8]_i_3 ));
LUT2 #(
    .INIT(4'h8)) 
     \cntr1[8]_i_4 
       (.I0(cntr11),
        .I1(cntr1_reg[9]),
        .O(\n_0_cntr1[8]_i_4 ));
LUT2 #(
    .INIT(4'h8)) 
     \cntr1[8]_i_5 
       (.I0(cntr11),
        .I1(cntr1_reg[8]),
        .O(\n_0_cntr1[8]_i_5 ));
(* counter = "5" *) 
   FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
     \cntr1_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(n_0_count_out_i_2),
        .D(\n_7_cntr1_reg[0]_i_1 ),
        .Q(cntr1_reg[0]));
CARRY4 \cntr1_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\n_0_cntr1_reg[0]_i_1 ,\n_1_cntr1_reg[0]_i_1 ,\n_2_cntr1_reg[0]_i_1 ,\n_3_cntr1_reg[0]_i_1 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\n_0_cntr1[0]_i_2 }),
        .O({\n_4_cntr1_reg[0]_i_1 ,\n_5_cntr1_reg[0]_i_1 ,\n_6_cntr1_reg[0]_i_1 ,\n_7_cntr1_reg[0]_i_1 }),
        .S({\n_0_cntr1[0]_i_3 ,\n_0_cntr1[0]_i_4 ,\n_0_cntr1[0]_i_5 ,\n_0_cntr1[0]_i_6 }));
(* counter = "5" *) 
   FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
     \cntr1_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(n_0_count_out_i_2),
        .D(\n_5_cntr1_reg[8]_i_1 ),
        .Q(cntr1_reg[10]));
(* counter = "5" *) 
   FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
     \cntr1_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(n_0_count_out_i_2),
        .D(\n_4_cntr1_reg[8]_i_1 ),
        .Q(cntr1_reg[11]));
(* counter = "5" *) 
   FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
     \cntr1_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(n_0_count_out_i_2),
        .D(\n_7_cntr1_reg[12]_i_1 ),
        .Q(cntr1_reg[12]));
CARRY4 \cntr1_reg[12]_i_1 
       (.CI(\n_0_cntr1_reg[8]_i_1 ),
        .CO({\n_0_cntr1_reg[12]_i_1 ,\n_1_cntr1_reg[12]_i_1 ,\n_2_cntr1_reg[12]_i_1 ,\n_3_cntr1_reg[12]_i_1 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_4_cntr1_reg[12]_i_1 ,\n_5_cntr1_reg[12]_i_1 ,\n_6_cntr1_reg[12]_i_1 ,\n_7_cntr1_reg[12]_i_1 }),
        .S({\n_0_cntr1[12]_i_2 ,\n_0_cntr1[12]_i_3 ,\n_0_cntr1[12]_i_4 ,\n_0_cntr1[12]_i_5 }));
(* counter = "5" *) 
   FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
     \cntr1_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(n_0_count_out_i_2),
        .D(\n_6_cntr1_reg[12]_i_1 ),
        .Q(cntr1_reg[13]));
(* counter = "5" *) 
   FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
     \cntr1_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(n_0_count_out_i_2),
        .D(\n_5_cntr1_reg[12]_i_1 ),
        .Q(cntr1_reg[14]));
(* counter = "5" *) 
   FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
     \cntr1_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(n_0_count_out_i_2),
        .D(\n_4_cntr1_reg[12]_i_1 ),
        .Q(cntr1_reg[15]));
(* counter = "5" *) 
   FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
     \cntr1_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(n_0_count_out_i_2),
        .D(\n_7_cntr1_reg[16]_i_1 ),
        .Q(cntr1_reg[16]));
CARRY4 \cntr1_reg[16]_i_1 
       (.CI(\n_0_cntr1_reg[12]_i_1 ),
        .CO({\n_0_cntr1_reg[16]_i_1 ,\n_1_cntr1_reg[16]_i_1 ,\n_2_cntr1_reg[16]_i_1 ,\n_3_cntr1_reg[16]_i_1 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_4_cntr1_reg[16]_i_1 ,\n_5_cntr1_reg[16]_i_1 ,\n_6_cntr1_reg[16]_i_1 ,\n_7_cntr1_reg[16]_i_1 }),
        .S({\n_0_cntr1[16]_i_2 ,\n_0_cntr1[16]_i_3 ,\n_0_cntr1[16]_i_4 ,\n_0_cntr1[16]_i_5 }));
(* counter = "5" *) 
   FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
     \cntr1_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(n_0_count_out_i_2),
        .D(\n_6_cntr1_reg[16]_i_1 ),
        .Q(cntr1_reg[17]));
(* counter = "5" *) 
   FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
     \cntr1_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(n_0_count_out_i_2),
        .D(\n_5_cntr1_reg[16]_i_1 ),
        .Q(cntr1_reg[18]));
(* counter = "5" *) 
   FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
     \cntr1_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(n_0_count_out_i_2),
        .D(\n_4_cntr1_reg[16]_i_1 ),
        .Q(cntr1_reg[19]));
(* counter = "5" *) 
   FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
     \cntr1_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(n_0_count_out_i_2),
        .D(\n_6_cntr1_reg[0]_i_1 ),
        .Q(cntr1_reg[1]));
(* counter = "5" *) 
   FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
     \cntr1_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(n_0_count_out_i_2),
        .D(\n_7_cntr1_reg[20]_i_1 ),
        .Q(cntr1_reg[20]));
CARRY4 \cntr1_reg[20]_i_1 
       (.CI(\n_0_cntr1_reg[16]_i_1 ),
        .CO({\n_0_cntr1_reg[20]_i_1 ,\n_1_cntr1_reg[20]_i_1 ,\n_2_cntr1_reg[20]_i_1 ,\n_3_cntr1_reg[20]_i_1 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_4_cntr1_reg[20]_i_1 ,\n_5_cntr1_reg[20]_i_1 ,\n_6_cntr1_reg[20]_i_1 ,\n_7_cntr1_reg[20]_i_1 }),
        .S({\n_0_cntr1[20]_i_2 ,\n_0_cntr1[20]_i_3 ,\n_0_cntr1[20]_i_4 ,\n_0_cntr1[20]_i_5 }));
(* counter = "5" *) 
   FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
     \cntr1_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(n_0_count_out_i_2),
        .D(\n_6_cntr1_reg[20]_i_1 ),
        .Q(cntr1_reg[21]));
(* counter = "5" *) 
   FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
     \cntr1_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(n_0_count_out_i_2),
        .D(\n_5_cntr1_reg[20]_i_1 ),
        .Q(cntr1_reg[22]));
(* counter = "5" *) 
   FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
     \cntr1_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(n_0_count_out_i_2),
        .D(\n_4_cntr1_reg[20]_i_1 ),
        .Q(cntr1_reg[23]));
(* counter = "5" *) 
   FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
     \cntr1_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(n_0_count_out_i_2),
        .D(\n_7_cntr1_reg[24]_i_1 ),
        .Q(cntr1_reg[24]));
CARRY4 \cntr1_reg[24]_i_1 
       (.CI(\n_0_cntr1_reg[20]_i_1 ),
        .CO({\n_0_cntr1_reg[24]_i_1 ,\n_1_cntr1_reg[24]_i_1 ,\n_2_cntr1_reg[24]_i_1 ,\n_3_cntr1_reg[24]_i_1 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_4_cntr1_reg[24]_i_1 ,\n_5_cntr1_reg[24]_i_1 ,\n_6_cntr1_reg[24]_i_1 ,\n_7_cntr1_reg[24]_i_1 }),
        .S({\n_0_cntr1[24]_i_2 ,\n_0_cntr1[24]_i_3 ,\n_0_cntr1[24]_i_4 ,\n_0_cntr1[24]_i_5 }));
(* counter = "5" *) 
   FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
     \cntr1_reg[25] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(n_0_count_out_i_2),
        .D(\n_6_cntr1_reg[24]_i_1 ),
        .Q(cntr1_reg[25]));
(* counter = "5" *) 
   FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
     \cntr1_reg[26] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(n_0_count_out_i_2),
        .D(\n_5_cntr1_reg[24]_i_1 ),
        .Q(cntr1_reg[26]));
(* counter = "5" *) 
   FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
     \cntr1_reg[27] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(n_0_count_out_i_2),
        .D(\n_4_cntr1_reg[24]_i_1 ),
        .Q(cntr1_reg[27]));
(* counter = "5" *) 
   FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
     \cntr1_reg[28] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(n_0_count_out_i_2),
        .D(\n_7_cntr1_reg[28]_i_1 ),
        .Q(cntr1_reg[28]));
CARRY4 \cntr1_reg[28]_i_1 
       (.CI(\n_0_cntr1_reg[24]_i_1 ),
        .CO({\NLW_cntr1_reg[28]_i_1_CO_UNCONNECTED [3],\n_1_cntr1_reg[28]_i_1 ,\n_2_cntr1_reg[28]_i_1 ,\n_3_cntr1_reg[28]_i_1 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_4_cntr1_reg[28]_i_1 ,\n_5_cntr1_reg[28]_i_1 ,\n_6_cntr1_reg[28]_i_1 ,\n_7_cntr1_reg[28]_i_1 }),
        .S({\n_0_cntr1[28]_i_2 ,\n_0_cntr1[28]_i_3 ,\n_0_cntr1[28]_i_4 ,\n_0_cntr1[28]_i_5 }));
(* counter = "5" *) 
   FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
     \cntr1_reg[29] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(n_0_count_out_i_2),
        .D(\n_6_cntr1_reg[28]_i_1 ),
        .Q(cntr1_reg[29]));
(* counter = "5" *) 
   FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
     \cntr1_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(n_0_count_out_i_2),
        .D(\n_5_cntr1_reg[0]_i_1 ),
        .Q(cntr1_reg[2]));
(* counter = "5" *) 
   FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
     \cntr1_reg[30] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(n_0_count_out_i_2),
        .D(\n_5_cntr1_reg[28]_i_1 ),
        .Q(cntr1_reg[30]));
(* counter = "5" *) 
   FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
     \cntr1_reg[31] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(n_0_count_out_i_2),
        .D(\n_4_cntr1_reg[28]_i_1 ),
        .Q(cntr1_reg[31]));
(* counter = "5" *) 
   FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
     \cntr1_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(n_0_count_out_i_2),
        .D(\n_4_cntr1_reg[0]_i_1 ),
        .Q(cntr1_reg[3]));
(* counter = "5" *) 
   FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
     \cntr1_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(n_0_count_out_i_2),
        .D(\n_7_cntr1_reg[4]_i_1 ),
        .Q(cntr1_reg[4]));
CARRY4 \cntr1_reg[4]_i_1 
       (.CI(\n_0_cntr1_reg[0]_i_1 ),
        .CO({\n_0_cntr1_reg[4]_i_1 ,\n_1_cntr1_reg[4]_i_1 ,\n_2_cntr1_reg[4]_i_1 ,\n_3_cntr1_reg[4]_i_1 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_4_cntr1_reg[4]_i_1 ,\n_5_cntr1_reg[4]_i_1 ,\n_6_cntr1_reg[4]_i_1 ,\n_7_cntr1_reg[4]_i_1 }),
        .S({\n_0_cntr1[4]_i_2 ,\n_0_cntr1[4]_i_3 ,\n_0_cntr1[4]_i_4 ,\n_0_cntr1[4]_i_5 }));
(* counter = "5" *) 
   FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
     \cntr1_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(n_0_count_out_i_2),
        .D(\n_6_cntr1_reg[4]_i_1 ),
        .Q(cntr1_reg[5]));
(* counter = "5" *) 
   FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
     \cntr1_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(n_0_count_out_i_2),
        .D(\n_5_cntr1_reg[4]_i_1 ),
        .Q(cntr1_reg[6]));
(* counter = "5" *) 
   FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
     \cntr1_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(n_0_count_out_i_2),
        .D(\n_4_cntr1_reg[4]_i_1 ),
        .Q(cntr1_reg[7]));
(* counter = "5" *) 
   FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
     \cntr1_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(n_0_count_out_i_2),
        .D(\n_7_cntr1_reg[8]_i_1 ),
        .Q(cntr1_reg[8]));
CARRY4 \cntr1_reg[8]_i_1 
       (.CI(\n_0_cntr1_reg[4]_i_1 ),
        .CO({\n_0_cntr1_reg[8]_i_1 ,\n_1_cntr1_reg[8]_i_1 ,\n_2_cntr1_reg[8]_i_1 ,\n_3_cntr1_reg[8]_i_1 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_4_cntr1_reg[8]_i_1 ,\n_5_cntr1_reg[8]_i_1 ,\n_6_cntr1_reg[8]_i_1 ,\n_7_cntr1_reg[8]_i_1 }),
        .S({\n_0_cntr1[8]_i_2 ,\n_0_cntr1[8]_i_3 ,\n_0_cntr1[8]_i_4 ,\n_0_cntr1[8]_i_5 }));
(* counter = "5" *) 
   FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
     \cntr1_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(n_0_count_out_i_2),
        .D(\n_6_cntr1_reg[8]_i_1 ),
        .Q(cntr1_reg[9]));
LUT2 #(
    .INIT(4'h8)) 
     \cntr2[0]_i_2 
       (.I0(cntr21),
        .I1(cntr2_reg[0]),
        .O(\n_0_cntr2[0]_i_2 ));
LUT2 #(
    .INIT(4'h8)) 
     \cntr2[0]_i_3 
       (.I0(cntr21),
        .I1(cntr2_reg[3]),
        .O(\n_0_cntr2[0]_i_3 ));
LUT2 #(
    .INIT(4'h8)) 
     \cntr2[0]_i_4 
       (.I0(cntr21),
        .I1(cntr2_reg[2]),
        .O(\n_0_cntr2[0]_i_4 ));
LUT2 #(
    .INIT(4'h8)) 
     \cntr2[0]_i_5 
       (.I0(cntr21),
        .I1(cntr2_reg[1]),
        .O(\n_0_cntr2[0]_i_5 ));
LUT2 #(
    .INIT(4'h4)) 
     \cntr2[0]_i_6 
       (.I0(cntr2_reg[0]),
        .I1(cntr21),
        .O(\n_0_cntr2[0]_i_6 ));
LUT2 #(
    .INIT(4'h8)) 
     \cntr2[12]_i_2 
       (.I0(cntr21),
        .I1(cntr2_reg[15]),
        .O(\n_0_cntr2[12]_i_2 ));
LUT2 #(
    .INIT(4'h8)) 
     \cntr2[12]_i_3 
       (.I0(cntr21),
        .I1(cntr2_reg[14]),
        .O(\n_0_cntr2[12]_i_3 ));
LUT2 #(
    .INIT(4'h8)) 
     \cntr2[12]_i_4 
       (.I0(cntr21),
        .I1(cntr2_reg[13]),
        .O(\n_0_cntr2[12]_i_4 ));
LUT2 #(
    .INIT(4'h8)) 
     \cntr2[12]_i_5 
       (.I0(cntr21),
        .I1(cntr2_reg[12]),
        .O(\n_0_cntr2[12]_i_5 ));
LUT2 #(
    .INIT(4'h8)) 
     \cntr2[16]_i_2 
       (.I0(cntr21),
        .I1(cntr2_reg[19]),
        .O(\n_0_cntr2[16]_i_2 ));
LUT2 #(
    .INIT(4'h8)) 
     \cntr2[16]_i_3 
       (.I0(cntr21),
        .I1(cntr2_reg[18]),
        .O(\n_0_cntr2[16]_i_3 ));
LUT2 #(
    .INIT(4'h8)) 
     \cntr2[16]_i_4 
       (.I0(cntr21),
        .I1(cntr2_reg[17]),
        .O(\n_0_cntr2[16]_i_4 ));
LUT2 #(
    .INIT(4'h8)) 
     \cntr2[16]_i_5 
       (.I0(cntr21),
        .I1(cntr2_reg[16]),
        .O(\n_0_cntr2[16]_i_5 ));
LUT2 #(
    .INIT(4'h8)) 
     \cntr2[20]_i_2 
       (.I0(cntr21),
        .I1(cntr2_reg[23]),
        .O(\n_0_cntr2[20]_i_2 ));
LUT2 #(
    .INIT(4'h8)) 
     \cntr2[20]_i_3 
       (.I0(cntr21),
        .I1(cntr2_reg[22]),
        .O(\n_0_cntr2[20]_i_3 ));
LUT2 #(
    .INIT(4'h8)) 
     \cntr2[20]_i_4 
       (.I0(cntr21),
        .I1(cntr2_reg[21]),
        .O(\n_0_cntr2[20]_i_4 ));
LUT2 #(
    .INIT(4'h8)) 
     \cntr2[20]_i_5 
       (.I0(cntr21),
        .I1(cntr2_reg[20]),
        .O(\n_0_cntr2[20]_i_5 ));
LUT2 #(
    .INIT(4'h8)) 
     \cntr2[24]_i_2 
       (.I0(cntr21),
        .I1(cntr2_reg[27]),
        .O(\n_0_cntr2[24]_i_2 ));
LUT2 #(
    .INIT(4'h8)) 
     \cntr2[24]_i_3 
       (.I0(cntr21),
        .I1(cntr2_reg[26]),
        .O(\n_0_cntr2[24]_i_3 ));
LUT2 #(
    .INIT(4'h8)) 
     \cntr2[24]_i_4 
       (.I0(cntr21),
        .I1(cntr2_reg[25]),
        .O(\n_0_cntr2[24]_i_4 ));
LUT2 #(
    .INIT(4'h8)) 
     \cntr2[24]_i_5 
       (.I0(cntr21),
        .I1(cntr2_reg[24]),
        .O(\n_0_cntr2[24]_i_5 ));
LUT2 #(
    .INIT(4'h8)) 
     \cntr2[28]_i_2 
       (.I0(cntr21),
        .I1(cntr2_reg[31]),
        .O(\n_0_cntr2[28]_i_2 ));
LUT2 #(
    .INIT(4'h8)) 
     \cntr2[28]_i_3 
       (.I0(cntr21),
        .I1(cntr2_reg[30]),
        .O(\n_0_cntr2[28]_i_3 ));
LUT2 #(
    .INIT(4'h8)) 
     \cntr2[28]_i_4 
       (.I0(cntr21),
        .I1(cntr2_reg[29]),
        .O(\n_0_cntr2[28]_i_4 ));
LUT2 #(
    .INIT(4'h8)) 
     \cntr2[28]_i_5 
       (.I0(cntr21),
        .I1(cntr2_reg[28]),
        .O(\n_0_cntr2[28]_i_5 ));
LUT2 #(
    .INIT(4'h8)) 
     \cntr2[4]_i_2 
       (.I0(cntr21),
        .I1(cntr2_reg[7]),
        .O(\n_0_cntr2[4]_i_2 ));
LUT2 #(
    .INIT(4'h8)) 
     \cntr2[4]_i_3 
       (.I0(cntr21),
        .I1(cntr2_reg[6]),
        .O(\n_0_cntr2[4]_i_3 ));
LUT2 #(
    .INIT(4'h8)) 
     \cntr2[4]_i_4 
       (.I0(cntr21),
        .I1(cntr2_reg[5]),
        .O(\n_0_cntr2[4]_i_4 ));
LUT2 #(
    .INIT(4'h8)) 
     \cntr2[4]_i_5 
       (.I0(cntr21),
        .I1(cntr2_reg[4]),
        .O(\n_0_cntr2[4]_i_5 ));
LUT2 #(
    .INIT(4'h8)) 
     \cntr2[8]_i_2 
       (.I0(cntr21),
        .I1(cntr2_reg[11]),
        .O(\n_0_cntr2[8]_i_2 ));
LUT2 #(
    .INIT(4'h8)) 
     \cntr2[8]_i_3 
       (.I0(cntr21),
        .I1(cntr2_reg[10]),
        .O(\n_0_cntr2[8]_i_3 ));
LUT2 #(
    .INIT(4'h8)) 
     \cntr2[8]_i_4 
       (.I0(cntr21),
        .I1(cntr2_reg[9]),
        .O(\n_0_cntr2[8]_i_4 ));
LUT2 #(
    .INIT(4'h8)) 
     \cntr2[8]_i_5 
       (.I0(cntr21),
        .I1(cntr2_reg[8]),
        .O(\n_0_cntr2[8]_i_5 ));
(* counter = "3" *) 
   FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
     \cntr2_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(n_0_count_out_i_2),
        .D(\n_7_cntr2_reg[0]_i_1 ),
        .Q(cntr2_reg[0]));
CARRY4 \cntr2_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\n_0_cntr2_reg[0]_i_1 ,\n_1_cntr2_reg[0]_i_1 ,\n_2_cntr2_reg[0]_i_1 ,\n_3_cntr2_reg[0]_i_1 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\n_0_cntr2[0]_i_2 }),
        .O({\n_4_cntr2_reg[0]_i_1 ,\n_5_cntr2_reg[0]_i_1 ,\n_6_cntr2_reg[0]_i_1 ,\n_7_cntr2_reg[0]_i_1 }),
        .S({\n_0_cntr2[0]_i_3 ,\n_0_cntr2[0]_i_4 ,\n_0_cntr2[0]_i_5 ,\n_0_cntr2[0]_i_6 }));
(* counter = "3" *) 
   FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
     \cntr2_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(n_0_count_out_i_2),
        .D(\n_5_cntr2_reg[8]_i_1 ),
        .Q(cntr2_reg[10]));
(* counter = "3" *) 
   FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
     \cntr2_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(n_0_count_out_i_2),
        .D(\n_4_cntr2_reg[8]_i_1 ),
        .Q(cntr2_reg[11]));
(* counter = "3" *) 
   FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
     \cntr2_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(n_0_count_out_i_2),
        .D(\n_7_cntr2_reg[12]_i_1 ),
        .Q(cntr2_reg[12]));
CARRY4 \cntr2_reg[12]_i_1 
       (.CI(\n_0_cntr2_reg[8]_i_1 ),
        .CO({\n_0_cntr2_reg[12]_i_1 ,\n_1_cntr2_reg[12]_i_1 ,\n_2_cntr2_reg[12]_i_1 ,\n_3_cntr2_reg[12]_i_1 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_4_cntr2_reg[12]_i_1 ,\n_5_cntr2_reg[12]_i_1 ,\n_6_cntr2_reg[12]_i_1 ,\n_7_cntr2_reg[12]_i_1 }),
        .S({\n_0_cntr2[12]_i_2 ,\n_0_cntr2[12]_i_3 ,\n_0_cntr2[12]_i_4 ,\n_0_cntr2[12]_i_5 }));
(* counter = "3" *) 
   FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
     \cntr2_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(n_0_count_out_i_2),
        .D(\n_6_cntr2_reg[12]_i_1 ),
        .Q(cntr2_reg[13]));
(* counter = "3" *) 
   FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
     \cntr2_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(n_0_count_out_i_2),
        .D(\n_5_cntr2_reg[12]_i_1 ),
        .Q(cntr2_reg[14]));
(* counter = "3" *) 
   FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
     \cntr2_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(n_0_count_out_i_2),
        .D(\n_4_cntr2_reg[12]_i_1 ),
        .Q(cntr2_reg[15]));
(* counter = "3" *) 
   FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
     \cntr2_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(n_0_count_out_i_2),
        .D(\n_7_cntr2_reg[16]_i_1 ),
        .Q(cntr2_reg[16]));
CARRY4 \cntr2_reg[16]_i_1 
       (.CI(\n_0_cntr2_reg[12]_i_1 ),
        .CO({\n_0_cntr2_reg[16]_i_1 ,\n_1_cntr2_reg[16]_i_1 ,\n_2_cntr2_reg[16]_i_1 ,\n_3_cntr2_reg[16]_i_1 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_4_cntr2_reg[16]_i_1 ,\n_5_cntr2_reg[16]_i_1 ,\n_6_cntr2_reg[16]_i_1 ,\n_7_cntr2_reg[16]_i_1 }),
        .S({\n_0_cntr2[16]_i_2 ,\n_0_cntr2[16]_i_3 ,\n_0_cntr2[16]_i_4 ,\n_0_cntr2[16]_i_5 }));
(* counter = "3" *) 
   FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
     \cntr2_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(n_0_count_out_i_2),
        .D(\n_6_cntr2_reg[16]_i_1 ),
        .Q(cntr2_reg[17]));
(* counter = "3" *) 
   FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
     \cntr2_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(n_0_count_out_i_2),
        .D(\n_5_cntr2_reg[16]_i_1 ),
        .Q(cntr2_reg[18]));
(* counter = "3" *) 
   FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
     \cntr2_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(n_0_count_out_i_2),
        .D(\n_4_cntr2_reg[16]_i_1 ),
        .Q(cntr2_reg[19]));
(* counter = "3" *) 
   FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
     \cntr2_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(n_0_count_out_i_2),
        .D(\n_6_cntr2_reg[0]_i_1 ),
        .Q(cntr2_reg[1]));
(* counter = "3" *) 
   FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
     \cntr2_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(n_0_count_out_i_2),
        .D(\n_7_cntr2_reg[20]_i_1 ),
        .Q(cntr2_reg[20]));
CARRY4 \cntr2_reg[20]_i_1 
       (.CI(\n_0_cntr2_reg[16]_i_1 ),
        .CO({\n_0_cntr2_reg[20]_i_1 ,\n_1_cntr2_reg[20]_i_1 ,\n_2_cntr2_reg[20]_i_1 ,\n_3_cntr2_reg[20]_i_1 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_4_cntr2_reg[20]_i_1 ,\n_5_cntr2_reg[20]_i_1 ,\n_6_cntr2_reg[20]_i_1 ,\n_7_cntr2_reg[20]_i_1 }),
        .S({\n_0_cntr2[20]_i_2 ,\n_0_cntr2[20]_i_3 ,\n_0_cntr2[20]_i_4 ,\n_0_cntr2[20]_i_5 }));
(* counter = "3" *) 
   FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
     \cntr2_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(n_0_count_out_i_2),
        .D(\n_6_cntr2_reg[20]_i_1 ),
        .Q(cntr2_reg[21]));
(* counter = "3" *) 
   FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
     \cntr2_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(n_0_count_out_i_2),
        .D(\n_5_cntr2_reg[20]_i_1 ),
        .Q(cntr2_reg[22]));
(* counter = "3" *) 
   FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
     \cntr2_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(n_0_count_out_i_2),
        .D(\n_4_cntr2_reg[20]_i_1 ),
        .Q(cntr2_reg[23]));
(* counter = "3" *) 
   FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
     \cntr2_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(n_0_count_out_i_2),
        .D(\n_7_cntr2_reg[24]_i_1 ),
        .Q(cntr2_reg[24]));
CARRY4 \cntr2_reg[24]_i_1 
       (.CI(\n_0_cntr2_reg[20]_i_1 ),
        .CO({\n_0_cntr2_reg[24]_i_1 ,\n_1_cntr2_reg[24]_i_1 ,\n_2_cntr2_reg[24]_i_1 ,\n_3_cntr2_reg[24]_i_1 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_4_cntr2_reg[24]_i_1 ,\n_5_cntr2_reg[24]_i_1 ,\n_6_cntr2_reg[24]_i_1 ,\n_7_cntr2_reg[24]_i_1 }),
        .S({\n_0_cntr2[24]_i_2 ,\n_0_cntr2[24]_i_3 ,\n_0_cntr2[24]_i_4 ,\n_0_cntr2[24]_i_5 }));
(* counter = "3" *) 
   FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
     \cntr2_reg[25] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(n_0_count_out_i_2),
        .D(\n_6_cntr2_reg[24]_i_1 ),
        .Q(cntr2_reg[25]));
(* counter = "3" *) 
   FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
     \cntr2_reg[26] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(n_0_count_out_i_2),
        .D(\n_5_cntr2_reg[24]_i_1 ),
        .Q(cntr2_reg[26]));
(* counter = "3" *) 
   FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
     \cntr2_reg[27] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(n_0_count_out_i_2),
        .D(\n_4_cntr2_reg[24]_i_1 ),
        .Q(cntr2_reg[27]));
(* counter = "3" *) 
   FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
     \cntr2_reg[28] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(n_0_count_out_i_2),
        .D(\n_7_cntr2_reg[28]_i_1 ),
        .Q(cntr2_reg[28]));
CARRY4 \cntr2_reg[28]_i_1 
       (.CI(\n_0_cntr2_reg[24]_i_1 ),
        .CO({\NLW_cntr2_reg[28]_i_1_CO_UNCONNECTED [3],\n_1_cntr2_reg[28]_i_1 ,\n_2_cntr2_reg[28]_i_1 ,\n_3_cntr2_reg[28]_i_1 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_4_cntr2_reg[28]_i_1 ,\n_5_cntr2_reg[28]_i_1 ,\n_6_cntr2_reg[28]_i_1 ,\n_7_cntr2_reg[28]_i_1 }),
        .S({\n_0_cntr2[28]_i_2 ,\n_0_cntr2[28]_i_3 ,\n_0_cntr2[28]_i_4 ,\n_0_cntr2[28]_i_5 }));
(* counter = "3" *) 
   FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
     \cntr2_reg[29] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(n_0_count_out_i_2),
        .D(\n_6_cntr2_reg[28]_i_1 ),
        .Q(cntr2_reg[29]));
(* counter = "3" *) 
   FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
     \cntr2_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(n_0_count_out_i_2),
        .D(\n_5_cntr2_reg[0]_i_1 ),
        .Q(cntr2_reg[2]));
(* counter = "3" *) 
   FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
     \cntr2_reg[30] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(n_0_count_out_i_2),
        .D(\n_5_cntr2_reg[28]_i_1 ),
        .Q(cntr2_reg[30]));
(* counter = "3" *) 
   FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
     \cntr2_reg[31] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(n_0_count_out_i_2),
        .D(\n_4_cntr2_reg[28]_i_1 ),
        .Q(cntr2_reg[31]));
(* counter = "3" *) 
   FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
     \cntr2_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(n_0_count_out_i_2),
        .D(\n_4_cntr2_reg[0]_i_1 ),
        .Q(cntr2_reg[3]));
(* counter = "3" *) 
   FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
     \cntr2_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(n_0_count_out_i_2),
        .D(\n_7_cntr2_reg[4]_i_1 ),
        .Q(cntr2_reg[4]));
CARRY4 \cntr2_reg[4]_i_1 
       (.CI(\n_0_cntr2_reg[0]_i_1 ),
        .CO({\n_0_cntr2_reg[4]_i_1 ,\n_1_cntr2_reg[4]_i_1 ,\n_2_cntr2_reg[4]_i_1 ,\n_3_cntr2_reg[4]_i_1 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_4_cntr2_reg[4]_i_1 ,\n_5_cntr2_reg[4]_i_1 ,\n_6_cntr2_reg[4]_i_1 ,\n_7_cntr2_reg[4]_i_1 }),
        .S({\n_0_cntr2[4]_i_2 ,\n_0_cntr2[4]_i_3 ,\n_0_cntr2[4]_i_4 ,\n_0_cntr2[4]_i_5 }));
(* counter = "3" *) 
   FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
     \cntr2_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(n_0_count_out_i_2),
        .D(\n_6_cntr2_reg[4]_i_1 ),
        .Q(cntr2_reg[5]));
(* counter = "3" *) 
   FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
     \cntr2_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(n_0_count_out_i_2),
        .D(\n_5_cntr2_reg[4]_i_1 ),
        .Q(cntr2_reg[6]));
(* counter = "3" *) 
   FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
     \cntr2_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(n_0_count_out_i_2),
        .D(\n_4_cntr2_reg[4]_i_1 ),
        .Q(cntr2_reg[7]));
(* counter = "3" *) 
   FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
     \cntr2_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(n_0_count_out_i_2),
        .D(\n_7_cntr2_reg[8]_i_1 ),
        .Q(cntr2_reg[8]));
CARRY4 \cntr2_reg[8]_i_1 
       (.CI(\n_0_cntr2_reg[4]_i_1 ),
        .CO({\n_0_cntr2_reg[8]_i_1 ,\n_1_cntr2_reg[8]_i_1 ,\n_2_cntr2_reg[8]_i_1 ,\n_3_cntr2_reg[8]_i_1 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_4_cntr2_reg[8]_i_1 ,\n_5_cntr2_reg[8]_i_1 ,\n_6_cntr2_reg[8]_i_1 ,\n_7_cntr2_reg[8]_i_1 }),
        .S({\n_0_cntr2[8]_i_2 ,\n_0_cntr2[8]_i_3 ,\n_0_cntr2[8]_i_4 ,\n_0_cntr2[8]_i_5 }));
(* counter = "3" *) 
   FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
     \cntr2_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(n_0_count_out_i_2),
        .D(\n_6_cntr2_reg[8]_i_1 ),
        .Q(cntr2_reg[9]));
LUT1 #(
    .INIT(2'h1)) 
     count_out_i_1
       (.I0(cntr21),
        .O(n_0_count_out_i_1));
LUT2 #(
    .INIT(4'h7)) 
     count_out_i_11
       (.I0(cntr2_reg[22]),
        .I1(cntr2_reg[23]),
        .O(n_0_count_out_i_11));
LUT2 #(
    .INIT(4'h7)) 
     count_out_i_12
       (.I0(cntr2_reg[20]),
        .I1(cntr2_reg[21]),
        .O(n_0_count_out_i_12));
LUT1 #(
    .INIT(2'h1)) 
     count_out_i_13
       (.I0(cntr2_reg[19]),
        .O(n_0_count_out_i_13));
LUT1 #(
    .INIT(2'h1)) 
     count_out_i_14
       (.I0(cntr2_reg[17]),
        .O(n_0_count_out_i_14));
LUT2 #(
    .INIT(4'h8)) 
     count_out_i_15
       (.I0(cntr2_reg[22]),
        .I1(cntr2_reg[23]),
        .O(n_0_count_out_i_15));
LUT2 #(
    .INIT(4'h8)) 
     count_out_i_16
       (.I0(cntr2_reg[20]),
        .I1(cntr2_reg[21]),
        .O(n_0_count_out_i_16));
LUT2 #(
    .INIT(4'h2)) 
     count_out_i_17
       (.I0(cntr2_reg[19]),
        .I1(cntr2_reg[18]),
        .O(n_0_count_out_i_17));
LUT2 #(
    .INIT(4'h2)) 
     count_out_i_18
       (.I0(cntr2_reg[17]),
        .I1(cntr2_reg[16]),
        .O(n_0_count_out_i_18));
LUT1 #(
    .INIT(2'h1)) 
     count_out_i_2
       (.I0(rst_IBUF),
        .O(n_0_count_out_i_2));
LUT2 #(
    .INIT(4'h7)) 
     count_out_i_20
       (.I0(cntr2_reg[14]),
        .I1(cntr2_reg[15]),
        .O(n_0_count_out_i_20));
LUT2 #(
    .INIT(4'h7)) 
     count_out_i_21
       (.I0(cntr2_reg[12]),
        .I1(cntr2_reg[13]),
        .O(n_0_count_out_i_21));
LUT2 #(
    .INIT(4'h8)) 
     count_out_i_22
       (.I0(cntr2_reg[14]),
        .I1(cntr2_reg[15]),
        .O(n_0_count_out_i_22));
LUT2 #(
    .INIT(4'h8)) 
     count_out_i_23
       (.I0(cntr2_reg[12]),
        .I1(cntr2_reg[13]),
        .O(n_0_count_out_i_23));
LUT2 #(
    .INIT(4'h1)) 
     count_out_i_24
       (.I0(cntr2_reg[10]),
        .I1(cntr2_reg[11]),
        .O(n_0_count_out_i_24));
LUT2 #(
    .INIT(4'h1)) 
     count_out_i_25
       (.I0(cntr2_reg[8]),
        .I1(cntr2_reg[9]),
        .O(n_0_count_out_i_25));
LUT2 #(
    .INIT(4'h1)) 
     count_out_i_26
       (.I0(cntr2_reg[6]),
        .I1(cntr2_reg[7]),
        .O(n_0_count_out_i_26));
LUT2 #(
    .INIT(4'h7)) 
     count_out_i_27
       (.I0(cntr2_reg[4]),
        .I1(cntr2_reg[5]),
        .O(n_0_count_out_i_27));
LUT2 #(
    .INIT(4'h7)) 
     count_out_i_28
       (.I0(cntr2_reg[2]),
        .I1(cntr2_reg[3]),
        .O(n_0_count_out_i_28));
LUT2 #(
    .INIT(4'h7)) 
     count_out_i_29
       (.I0(cntr2_reg[0]),
        .I1(cntr2_reg[1]),
        .O(n_0_count_out_i_29));
LUT2 #(
    .INIT(4'h2)) 
     count_out_i_30
       (.I0(cntr2_reg[6]),
        .I1(cntr2_reg[7]),
        .O(n_0_count_out_i_30));
LUT2 #(
    .INIT(4'h8)) 
     count_out_i_31
       (.I0(cntr2_reg[4]),
        .I1(cntr2_reg[5]),
        .O(n_0_count_out_i_31));
LUT2 #(
    .INIT(4'h8)) 
     count_out_i_32
       (.I0(cntr2_reg[2]),
        .I1(cntr2_reg[3]),
        .O(n_0_count_out_i_32));
LUT2 #(
    .INIT(4'h8)) 
     count_out_i_33
       (.I0(cntr2_reg[0]),
        .I1(cntr2_reg[1]),
        .O(n_0_count_out_i_33));
LUT1 #(
    .INIT(2'h1)) 
     count_out_i_5
       (.I0(cntr2_reg[25]),
        .O(n_0_count_out_i_5));
LUT2 #(
    .INIT(4'h1)) 
     count_out_i_6
       (.I0(cntr2_reg[30]),
        .I1(cntr2_reg[31]),
        .O(n_0_count_out_i_6));
LUT2 #(
    .INIT(4'h1)) 
     count_out_i_7
       (.I0(cntr2_reg[28]),
        .I1(cntr2_reg[29]),
        .O(n_0_count_out_i_7));
LUT2 #(
    .INIT(4'h1)) 
     count_out_i_8
       (.I0(cntr2_reg[26]),
        .I1(cntr2_reg[27]),
        .O(n_0_count_out_i_8));
LUT2 #(
    .INIT(4'h2)) 
     count_out_i_9
       (.I0(cntr2_reg[25]),
        .I1(cntr2_reg[24]),
        .O(n_0_count_out_i_9));
FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
     count_out_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(n_0_count_out_i_2),
        .D(n_0_count_out_i_1),
        .Q(count_out));
CARRY4 count_out_reg_i_10
       (.CI(n_0_count_out_reg_i_19),
        .CO({n_0_count_out_reg_i_10,n_1_count_out_reg_i_10,n_2_count_out_reg_i_10,n_3_count_out_reg_i_10}),
        .CYINIT(1'b0),
        .DI({n_0_count_out_i_20,n_0_count_out_i_21,1'b0,1'b0}),
        .O(NLW_count_out_reg_i_10_O_UNCONNECTED[3:0]),
        .S({n_0_count_out_i_22,n_0_count_out_i_23,n_0_count_out_i_24,n_0_count_out_i_25}));
CARRY4 count_out_reg_i_19
       (.CI(1'b0),
        .CO({n_0_count_out_reg_i_19,n_1_count_out_reg_i_19,n_2_count_out_reg_i_19,n_3_count_out_reg_i_19}),
        .CYINIT(1'b0),
        .DI({n_0_count_out_i_26,n_0_count_out_i_27,n_0_count_out_i_28,n_0_count_out_i_29}),
        .O(NLW_count_out_reg_i_19_O_UNCONNECTED[3:0]),
        .S({n_0_count_out_i_30,n_0_count_out_i_31,n_0_count_out_i_32,n_0_count_out_i_33}));
CARRY4 count_out_reg_i_3
       (.CI(n_0_count_out_reg_i_4),
        .CO({cntr21,n_1_count_out_reg_i_3,n_2_count_out_reg_i_3,n_3_count_out_reg_i_3}),
        .CYINIT(1'b0),
        .DI({cntr2_reg[31],1'b0,1'b0,n_0_count_out_i_5}),
        .O(NLW_count_out_reg_i_3_O_UNCONNECTED[3:0]),
        .S({n_0_count_out_i_6,n_0_count_out_i_7,n_0_count_out_i_8,n_0_count_out_i_9}));
CARRY4 count_out_reg_i_4
       (.CI(n_0_count_out_reg_i_10),
        .CO({n_0_count_out_reg_i_4,n_1_count_out_reg_i_4,n_2_count_out_reg_i_4,n_3_count_out_reg_i_4}),
        .CYINIT(1'b0),
        .DI({n_0_count_out_i_11,n_0_count_out_i_12,n_0_count_out_i_13,n_0_count_out_i_14}),
        .O(NLW_count_out_reg_i_4_O_UNCONNECTED[3:0]),
        .S({n_0_count_out_i_15,n_0_count_out_i_16,n_0_count_out_i_17,n_0_count_out_i_18}));
LUT3 #(
    .INIT(8'hB4)) 
     ledON_i_1
       (.I0(cntr21),
        .I1(rst_IBUF),
        .I2(O1),
        .O(n_0_ledON_i_1));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     ledON_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(n_0_ledON_i_1),
        .Q(O1),
        .R(1'b0));
LUT1 #(
    .INIT(2'h1)) 
     scan_out_i_1
       (.I0(cntr11),
        .O(p_1_in));
LUT2 #(
    .INIT(4'h1)) 
     scan_out_i_10
       (.I0(cntr1_reg[22]),
        .I1(cntr1_reg[23]),
        .O(n_0_scan_out_i_10));
LUT2 #(
    .INIT(4'h1)) 
     scan_out_i_11
       (.I0(cntr1_reg[20]),
        .I1(cntr1_reg[21]),
        .O(n_0_scan_out_i_11));
LUT2 #(
    .INIT(4'h1)) 
     scan_out_i_12
       (.I0(cntr1_reg[18]),
        .I1(cntr1_reg[19]),
        .O(n_0_scan_out_i_12));
LUT2 #(
    .INIT(4'h8)) 
     scan_out_i_13
       (.I0(cntr1_reg[16]),
        .I1(cntr1_reg[17]),
        .O(n_0_scan_out_i_13));
LUT2 #(
    .INIT(4'h7)) 
     scan_out_i_15
       (.I0(cntr1_reg[14]),
        .I1(cntr1_reg[15]),
        .O(n_0_scan_out_i_15));
LUT2 #(
    .INIT(4'h1)) 
     scan_out_i_16
       (.I0(cntr1_reg[12]),
        .I1(cntr1_reg[13]),
        .O(n_0_scan_out_i_16));
LUT2 #(
    .INIT(4'h8)) 
     scan_out_i_17
       (.I0(cntr1_reg[14]),
        .I1(cntr1_reg[15]),
        .O(n_0_scan_out_i_17));
LUT2 #(
    .INIT(4'h2)) 
     scan_out_i_18
       (.I0(cntr1_reg[12]),
        .I1(cntr1_reg[13]),
        .O(n_0_scan_out_i_18));
LUT2 #(
    .INIT(4'h1)) 
     scan_out_i_19
       (.I0(cntr1_reg[10]),
        .I1(cntr1_reg[11]),
        .O(n_0_scan_out_i_19));
LUT2 #(
    .INIT(4'h1)) 
     scan_out_i_20
       (.I0(cntr1_reg[8]),
        .I1(cntr1_reg[9]),
        .O(n_0_scan_out_i_20));
LUT1 #(
    .INIT(2'h1)) 
     scan_out_i_21
       (.I0(cntr1_reg[7]),
        .O(n_0_scan_out_i_21));
LUT2 #(
    .INIT(4'h7)) 
     scan_out_i_22
       (.I0(cntr1_reg[2]),
        .I1(cntr1_reg[3]),
        .O(n_0_scan_out_i_22));
LUT2 #(
    .INIT(4'h7)) 
     scan_out_i_23
       (.I0(cntr1_reg[0]),
        .I1(cntr1_reg[1]),
        .O(n_0_scan_out_i_23));
LUT2 #(
    .INIT(4'h2)) 
     scan_out_i_24
       (.I0(cntr1_reg[7]),
        .I1(cntr1_reg[6]),
        .O(n_0_scan_out_i_24));
LUT2 #(
    .INIT(4'h1)) 
     scan_out_i_25
       (.I0(cntr1_reg[4]),
        .I1(cntr1_reg[5]),
        .O(n_0_scan_out_i_25));
LUT2 #(
    .INIT(4'h8)) 
     scan_out_i_26
       (.I0(cntr1_reg[2]),
        .I1(cntr1_reg[3]),
        .O(n_0_scan_out_i_26));
LUT2 #(
    .INIT(4'h8)) 
     scan_out_i_27
       (.I0(cntr1_reg[0]),
        .I1(cntr1_reg[1]),
        .O(n_0_scan_out_i_27));
LUT2 #(
    .INIT(4'h1)) 
     scan_out_i_4
       (.I0(cntr1_reg[30]),
        .I1(cntr1_reg[31]),
        .O(n_0_scan_out_i_4));
LUT2 #(
    .INIT(4'h1)) 
     scan_out_i_5
       (.I0(cntr1_reg[28]),
        .I1(cntr1_reg[29]),
        .O(n_0_scan_out_i_5));
LUT2 #(
    .INIT(4'h1)) 
     scan_out_i_6
       (.I0(cntr1_reg[26]),
        .I1(cntr1_reg[27]),
        .O(n_0_scan_out_i_6));
LUT2 #(
    .INIT(4'h1)) 
     scan_out_i_7
       (.I0(cntr1_reg[24]),
        .I1(cntr1_reg[25]),
        .O(n_0_scan_out_i_7));
LUT2 #(
    .INIT(4'h7)) 
     scan_out_i_9
       (.I0(cntr1_reg[16]),
        .I1(cntr1_reg[17]),
        .O(n_0_scan_out_i_9));
FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
     scan_out_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(n_0_count_out_i_2),
        .D(p_1_in),
        .Q(scan_out));
CARRY4 scan_out_reg_i_14
       (.CI(1'b0),
        .CO({n_0_scan_out_reg_i_14,n_1_scan_out_reg_i_14,n_2_scan_out_reg_i_14,n_3_scan_out_reg_i_14}),
        .CYINIT(1'b0),
        .DI({n_0_scan_out_i_21,1'b0,n_0_scan_out_i_22,n_0_scan_out_i_23}),
        .O(NLW_scan_out_reg_i_14_O_UNCONNECTED[3:0]),
        .S({n_0_scan_out_i_24,n_0_scan_out_i_25,n_0_scan_out_i_26,n_0_scan_out_i_27}));
CARRY4 scan_out_reg_i_2
       (.CI(n_0_scan_out_reg_i_3),
        .CO({cntr11,n_1_scan_out_reg_i_2,n_2_scan_out_reg_i_2,n_3_scan_out_reg_i_2}),
        .CYINIT(1'b0),
        .DI({cntr1_reg[31],1'b0,1'b0,1'b0}),
        .O(NLW_scan_out_reg_i_2_O_UNCONNECTED[3:0]),
        .S({n_0_scan_out_i_4,n_0_scan_out_i_5,n_0_scan_out_i_6,n_0_scan_out_i_7}));
CARRY4 scan_out_reg_i_3
       (.CI(n_0_scan_out_reg_i_8),
        .CO({n_0_scan_out_reg_i_3,n_1_scan_out_reg_i_3,n_2_scan_out_reg_i_3,n_3_scan_out_reg_i_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,n_0_scan_out_i_9}),
        .O(NLW_scan_out_reg_i_3_O_UNCONNECTED[3:0]),
        .S({n_0_scan_out_i_10,n_0_scan_out_i_11,n_0_scan_out_i_12,n_0_scan_out_i_13}));
CARRY4 scan_out_reg_i_8
       (.CI(n_0_scan_out_reg_i_14),
        .CO({n_0_scan_out_reg_i_8,n_1_scan_out_reg_i_8,n_2_scan_out_reg_i_8,n_3_scan_out_reg_i_8}),
        .CYINIT(1'b0),
        .DI({n_0_scan_out_i_15,n_0_scan_out_i_16,1'b0,1'b0}),
        .O(NLW_scan_out_reg_i_8_O_UNCONNECTED[3:0]),
        .S({n_0_scan_out_i_17,n_0_scan_out_i_18,n_0_scan_out_i_19,n_0_scan_out_i_20}));
endmodule

module Segment
   (seg_OBUF,
    O1);
  output [7:0]seg_OBUF;
  input [3:0]O1;

  wire [3:0]O1;
  wire [7:0]seg_OBUF;

(* SOFT_HLUTNM = "soft_lutpair20" *) 
   LUT4 #(
    .INIT(16'h29B8)) 
     \seg_OBUF[0]_inst_i_1 
       (.I0(O1[3]),
        .I1(O1[1]),
        .I2(O1[2]),
        .I3(O1[0]),
        .O(seg_OBUF[0]));
(* SOFT_HLUTNM = "soft_lutpair20" *) 
   LUT4 #(
    .INIT(16'h7C48)) 
     \seg_OBUF[1]_inst_i_1 
       (.I0(O1[0]),
        .I1(O1[2]),
        .I2(O1[1]),
        .I3(O1[3]),
        .O(seg_OBUF[1]));
(* SOFT_HLUTNM = "soft_lutpair21" *) 
   LUT4 #(
    .INIT(16'h7C04)) 
     \seg_OBUF[2]_inst_i_1 
       (.I0(O1[0]),
        .I1(O1[1]),
        .I2(O1[2]),
        .I3(O1[3]),
        .O(seg_OBUF[2]));
(* SOFT_HLUTNM = "soft_lutpair21" *) 
   LUT4 #(
    .INIT(16'h69B8)) 
     \seg_OBUF[3]_inst_i_1 
       (.I0(O1[3]),
        .I1(O1[1]),
        .I2(O1[2]),
        .I3(O1[0]),
        .O(seg_OBUF[3]));
(* SOFT_HLUTNM = "soft_lutpair22" *) 
   LUT4 #(
    .INIT(16'h7DF8)) 
     \seg_OBUF[4]_inst_i_1 
       (.I0(O1[1]),
        .I1(O1[3]),
        .I2(O1[0]),
        .I3(O1[2]),
        .O(seg_OBUF[4]));
(* SOFT_HLUTNM = "soft_lutpair22" *) 
   LUT4 #(
    .INIT(16'h78AE)) 
     \seg_OBUF[5]_inst_i_1 
       (.I0(O1[1]),
        .I1(O1[0]),
        .I2(O1[3]),
        .I3(O1[2]),
        .O(seg_OBUF[5]));
(* SOFT_HLUTNM = "soft_lutpair23" *) 
   LUT4 #(
    .INIT(16'h4803)) 
     \seg_OBUF[6]_inst_i_1 
       (.I0(O1[0]),
        .I1(O1[1]),
        .I2(O1[3]),
        .I3(O1[2]),
        .O(seg_OBUF[6]));
(* SOFT_HLUTNM = "soft_lutpair23" *) 
   LUT4 #(
    .INIT(16'h7FFF)) 
     \seg_OBUF[7]_inst_i_1 
       (.I0(O1[1]),
        .I1(O1[0]),
        .I2(O1[2]),
        .I3(O1[3]),
        .O(seg_OBUF[7]));
endmodule

module enkele_Teller
   (carry_out,
    Q,
    count_out,
    cnt_dwn_IBUF,
    tel_rst_IBUF);
  output carry_out;
  output [3:0]Q;
  input count_out;
  input cnt_dwn_IBUF;
  input tel_rst_IBUF;

  wire [3:0]Q;
  wire carry_out;
  wire cnt_dwn_IBUF;
  wire count_out;
  wire n_0_carry_out_i_1__5;
  wire n_0_carry_out_i_2;
  wire \n_0_temp1[0]_i_1 ;
  wire \n_0_temp1[1]_i_1 ;
  wire \n_0_temp1[2]_i_1 ;
  wire \n_0_temp1[3]_i_1 ;
  wire tel_rst_IBUF;

LUT6 #(
    .INIT(64'hFFFF001800000018)) 
     carry_out_i_1__5
       (.I0(Q[3]),
        .I1(Q[0]),
        .I2(cnt_dwn_IBUF),
        .I3(n_0_carry_out_i_2),
        .I4(tel_rst_IBUF),
        .I5(carry_out),
        .O(n_0_carry_out_i_1__5));
LUT2 #(
    .INIT(4'hE)) 
     carry_out_i_2
       (.I0(Q[1]),
        .I1(Q[2]),
        .O(n_0_carry_out_i_2));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     carry_out_reg
       (.C(count_out),
        .CE(1'b1),
        .D(n_0_carry_out_i_1__5),
        .Q(carry_out),
        .R(1'b0));
(* SOFT_HLUTNM = "soft_lutpair5" *) 
   LUT4 #(
    .INIT(16'hE0FF)) 
     \temp1[0]_i_1 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(Q[0]),
        .O(\n_0_temp1[0]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair4" *) 
   LUT5 #(
    .INIT(32'hFD98FC66)) 
     \temp1[1]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(cnt_dwn_IBUF),
        .O(\n_0_temp1[1]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair4" *) 
   LUT5 #(
    .INIT(32'hFEBFA2E0)) 
     \temp1[2]_i_1 
       (.I0(Q[3]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(cnt_dwn_IBUF),
        .I4(Q[2]),
        .O(\n_0_temp1[2]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair5" *) 
   LUT5 #(
    .INIT(32'hAAA9EAA2)) 
     \temp1[3]_i_1 
       (.I0(Q[3]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(cnt_dwn_IBUF),
        .O(\n_0_temp1[3]_i_1 ));
FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
     \temp1_reg[0] 
       (.C(count_out),
        .CE(1'b1),
        .CLR(tel_rst_IBUF),
        .D(\n_0_temp1[0]_i_1 ),
        .Q(Q[0]));
FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
     \temp1_reg[1] 
       (.C(count_out),
        .CE(1'b1),
        .CLR(tel_rst_IBUF),
        .D(\n_0_temp1[1]_i_1 ),
        .Q(Q[1]));
FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
     \temp1_reg[2] 
       (.C(count_out),
        .CE(1'b1),
        .CLR(tel_rst_IBUF),
        .D(\n_0_temp1[2]_i_1 ),
        .Q(Q[2]));
FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
     \temp1_reg[3] 
       (.C(count_out),
        .CE(1'b1),
        .CLR(tel_rst_IBUF),
        .D(\n_0_temp1[3]_i_1 ),
        .Q(Q[3]));
endmodule

(* ORIG_REF_NAME = "enkele_Teller" *) 
module enkele_Teller_0
   (O1,
    Q,
    carry_out,
    cnt_dwn_IBUF,
    tel_rst_IBUF);
  output O1;
  output [3:0]Q;
  input carry_out;
  input cnt_dwn_IBUF;
  input tel_rst_IBUF;

  wire O1;
  wire [3:0]Q;
  wire carry_out;
  wire cnt_dwn_IBUF;
  wire n_0_carry_out_i_1__4;
  wire n_0_carry_out_i_2__0;
  wire \n_0_temp1[0]_i_1__0 ;
  wire \n_0_temp1[1]_i_1__0 ;
  wire \n_0_temp1[2]_i_1__0 ;
  wire \n_0_temp1[3]_i_1__0 ;
  wire tel_rst_IBUF;

LUT6 #(
    .INIT(64'hFFFF001800000018)) 
     carry_out_i_1__4
       (.I0(Q[3]),
        .I1(Q[0]),
        .I2(cnt_dwn_IBUF),
        .I3(n_0_carry_out_i_2__0),
        .I4(tel_rst_IBUF),
        .I5(O1),
        .O(n_0_carry_out_i_1__4));
LUT2 #(
    .INIT(4'hE)) 
     carry_out_i_2__0
       (.I0(Q[1]),
        .I1(Q[2]),
        .O(n_0_carry_out_i_2__0));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     carry_out_reg
       (.C(carry_out),
        .CE(1'b1),
        .D(n_0_carry_out_i_1__4),
        .Q(O1),
        .R(1'b0));
(* SOFT_HLUTNM = "soft_lutpair7" *) 
   LUT4 #(
    .INIT(16'hE0FF)) 
     \temp1[0]_i_1__0 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(Q[0]),
        .O(\n_0_temp1[0]_i_1__0 ));
(* SOFT_HLUTNM = "soft_lutpair6" *) 
   LUT5 #(
    .INIT(32'hFD98FC66)) 
     \temp1[1]_i_1__0 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(cnt_dwn_IBUF),
        .O(\n_0_temp1[1]_i_1__0 ));
(* SOFT_HLUTNM = "soft_lutpair6" *) 
   LUT5 #(
    .INIT(32'hFEBFA2E0)) 
     \temp1[2]_i_1__0 
       (.I0(Q[3]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(cnt_dwn_IBUF),
        .I4(Q[2]),
        .O(\n_0_temp1[2]_i_1__0 ));
(* SOFT_HLUTNM = "soft_lutpair7" *) 
   LUT5 #(
    .INIT(32'hAAA9EAA2)) 
     \temp1[3]_i_1__0 
       (.I0(Q[3]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(cnt_dwn_IBUF),
        .O(\n_0_temp1[3]_i_1__0 ));
FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
     \temp1_reg[0] 
       (.C(carry_out),
        .CE(1'b1),
        .CLR(tel_rst_IBUF),
        .D(\n_0_temp1[0]_i_1__0 ),
        .Q(Q[0]));
FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
     \temp1_reg[1] 
       (.C(carry_out),
        .CE(1'b1),
        .CLR(tel_rst_IBUF),
        .D(\n_0_temp1[1]_i_1__0 ),
        .Q(Q[1]));
FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
     \temp1_reg[2] 
       (.C(carry_out),
        .CE(1'b1),
        .CLR(tel_rst_IBUF),
        .D(\n_0_temp1[2]_i_1__0 ),
        .Q(Q[2]));
FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
     \temp1_reg[3] 
       (.C(carry_out),
        .CE(1'b1),
        .CLR(tel_rst_IBUF),
        .D(\n_0_temp1[3]_i_1__0 ),
        .Q(Q[3]));
endmodule

(* ORIG_REF_NAME = "enkele_Teller" *) 
module enkele_Teller_1
   (O1,
    Q,
    I1,
    cnt_dwn_IBUF,
    tel_rst_IBUF);
  output O1;
  output [3:0]Q;
  input I1;
  input cnt_dwn_IBUF;
  input tel_rst_IBUF;

  wire I1;
  wire O1;
  wire [3:0]Q;
  wire cnt_dwn_IBUF;
  wire n_0_carry_out_i_1__3;
  wire n_0_carry_out_i_2__1;
  wire \n_0_temp1[0]_i_1__1 ;
  wire \n_0_temp1[1]_i_1__1 ;
  wire \n_0_temp1[2]_i_1__1 ;
  wire \n_0_temp1[3]_i_1__1 ;
  wire tel_rst_IBUF;

LUT6 #(
    .INIT(64'hFFFF001800000018)) 
     carry_out_i_1__3
       (.I0(Q[3]),
        .I1(Q[0]),
        .I2(cnt_dwn_IBUF),
        .I3(n_0_carry_out_i_2__1),
        .I4(tel_rst_IBUF),
        .I5(O1),
        .O(n_0_carry_out_i_1__3));
LUT2 #(
    .INIT(4'hE)) 
     carry_out_i_2__1
       (.I0(Q[1]),
        .I1(Q[2]),
        .O(n_0_carry_out_i_2__1));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     carry_out_reg
       (.C(I1),
        .CE(1'b1),
        .D(n_0_carry_out_i_1__3),
        .Q(O1),
        .R(1'b0));
(* SOFT_HLUTNM = "soft_lutpair9" *) 
   LUT4 #(
    .INIT(16'hE0FF)) 
     \temp1[0]_i_1__1 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(Q[0]),
        .O(\n_0_temp1[0]_i_1__1 ));
(* SOFT_HLUTNM = "soft_lutpair8" *) 
   LUT5 #(
    .INIT(32'hFD98FC66)) 
     \temp1[1]_i_1__1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(cnt_dwn_IBUF),
        .O(\n_0_temp1[1]_i_1__1 ));
(* SOFT_HLUTNM = "soft_lutpair8" *) 
   LUT5 #(
    .INIT(32'hFEBFA2E0)) 
     \temp1[2]_i_1__1 
       (.I0(Q[3]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(cnt_dwn_IBUF),
        .I4(Q[2]),
        .O(\n_0_temp1[2]_i_1__1 ));
(* SOFT_HLUTNM = "soft_lutpair9" *) 
   LUT5 #(
    .INIT(32'hAAA9EAA2)) 
     \temp1[3]_i_1__1 
       (.I0(Q[3]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(cnt_dwn_IBUF),
        .O(\n_0_temp1[3]_i_1__1 ));
FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
     \temp1_reg[0] 
       (.C(I1),
        .CE(1'b1),
        .CLR(tel_rst_IBUF),
        .D(\n_0_temp1[0]_i_1__1 ),
        .Q(Q[0]));
FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
     \temp1_reg[1] 
       (.C(I1),
        .CE(1'b1),
        .CLR(tel_rst_IBUF),
        .D(\n_0_temp1[1]_i_1__1 ),
        .Q(Q[1]));
FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
     \temp1_reg[2] 
       (.C(I1),
        .CE(1'b1),
        .CLR(tel_rst_IBUF),
        .D(\n_0_temp1[2]_i_1__1 ),
        .Q(Q[2]));
FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
     \temp1_reg[3] 
       (.C(I1),
        .CE(1'b1),
        .CLR(tel_rst_IBUF),
        .D(\n_0_temp1[3]_i_1__1 ),
        .Q(Q[3]));
endmodule

(* ORIG_REF_NAME = "enkele_Teller" *) 
module enkele_Teller_2
   (O1,
    D,
    I1,
    cnt_dwn_IBUF,
    tel_rst_IBUF,
    out,
    I2,
    Q,
    I3,
    I4,
    I5,
    I6,
    I7);
  output O1;
  output [3:0]D;
  input I1;
  input cnt_dwn_IBUF;
  input tel_rst_IBUF;
  input [2:0]out;
  input I2;
  input [3:0]Q;
  input [3:0]I3;
  input [3:0]I4;
  input I5;
  input I6;
  input I7;

  wire [3:0]BCD_out2_in;
  wire [3:0]D;
  wire I1;
  wire I2;
  wire [3:0]I3;
  wire [3:0]I4;
  wire I5;
  wire I6;
  wire I7;
  wire O1;
  wire [3:0]Q;
  wire cnt_dwn_IBUF;
  wire \n_0_BCD_out[0]_i_2 ;
  wire \n_0_BCD_out[1]_i_2 ;
  wire \n_0_BCD_out[2]_i_2 ;
  wire \n_0_BCD_out[3]_i_2 ;
  wire n_0_carry_out_i_1__2;
  wire n_0_carry_out_i_2__2;
  wire \n_0_temp1[0]_i_1__2 ;
  wire \n_0_temp1[1]_i_1__2 ;
  wire \n_0_temp1[2]_i_1__2 ;
  wire \n_0_temp1[3]_i_1__2 ;
  wire [2:0]out;
  wire tel_rst_IBUF;

LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \BCD_out[0]_i_2 
       (.I0(BCD_out2_in[0]),
        .I1(Q[0]),
        .I2(out[1]),
        .I3(I3[0]),
        .I4(out[0]),
        .I5(I4[0]),
        .O(\n_0_BCD_out[0]_i_2 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \BCD_out[1]_i_2 
       (.I0(BCD_out2_in[1]),
        .I1(Q[1]),
        .I2(out[1]),
        .I3(I3[1]),
        .I4(out[0]),
        .I5(I4[1]),
        .O(\n_0_BCD_out[1]_i_2 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \BCD_out[2]_i_2 
       (.I0(BCD_out2_in[2]),
        .I1(Q[2]),
        .I2(out[1]),
        .I3(I3[2]),
        .I4(out[0]),
        .I5(I4[2]),
        .O(\n_0_BCD_out[2]_i_2 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \BCD_out[3]_i_2 
       (.I0(BCD_out2_in[3]),
        .I1(Q[3]),
        .I2(out[1]),
        .I3(I3[3]),
        .I4(out[0]),
        .I5(I4[3]),
        .O(\n_0_BCD_out[3]_i_2 ));
MUXF7 \BCD_out_reg[0]_i_1 
       (.I0(\n_0_BCD_out[0]_i_2 ),
        .I1(I2),
        .O(D[0]),
        .S(out[2]));
MUXF7 \BCD_out_reg[1]_i_1 
       (.I0(\n_0_BCD_out[1]_i_2 ),
        .I1(I5),
        .O(D[1]),
        .S(out[2]));
MUXF7 \BCD_out_reg[2]_i_1 
       (.I0(\n_0_BCD_out[2]_i_2 ),
        .I1(I6),
        .O(D[2]),
        .S(out[2]));
MUXF7 \BCD_out_reg[3]_i_1 
       (.I0(\n_0_BCD_out[3]_i_2 ),
        .I1(I7),
        .O(D[3]),
        .S(out[2]));
LUT6 #(
    .INIT(64'hFFFF001800000018)) 
     carry_out_i_1__2
       (.I0(BCD_out2_in[3]),
        .I1(BCD_out2_in[0]),
        .I2(cnt_dwn_IBUF),
        .I3(n_0_carry_out_i_2__2),
        .I4(tel_rst_IBUF),
        .I5(O1),
        .O(n_0_carry_out_i_1__2));
LUT2 #(
    .INIT(4'hE)) 
     carry_out_i_2__2
       (.I0(BCD_out2_in[1]),
        .I1(BCD_out2_in[2]),
        .O(n_0_carry_out_i_2__2));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     carry_out_reg
       (.C(I1),
        .CE(1'b1),
        .D(n_0_carry_out_i_1__2),
        .Q(O1),
        .R(1'b0));
(* SOFT_HLUTNM = "soft_lutpair11" *) 
   LUT4 #(
    .INIT(16'hE0FF)) 
     \temp1[0]_i_1__2 
       (.I0(BCD_out2_in[1]),
        .I1(BCD_out2_in[2]),
        .I2(BCD_out2_in[3]),
        .I3(BCD_out2_in[0]),
        .O(\n_0_temp1[0]_i_1__2 ));
(* SOFT_HLUTNM = "soft_lutpair10" *) 
   LUT5 #(
    .INIT(32'hFD98FC66)) 
     \temp1[1]_i_1__2 
       (.I0(BCD_out2_in[0]),
        .I1(BCD_out2_in[1]),
        .I2(BCD_out2_in[2]),
        .I3(BCD_out2_in[3]),
        .I4(cnt_dwn_IBUF),
        .O(\n_0_temp1[1]_i_1__2 ));
(* SOFT_HLUTNM = "soft_lutpair10" *) 
   LUT5 #(
    .INIT(32'hFEBFA2E0)) 
     \temp1[2]_i_1__2 
       (.I0(BCD_out2_in[3]),
        .I1(BCD_out2_in[0]),
        .I2(BCD_out2_in[1]),
        .I3(cnt_dwn_IBUF),
        .I4(BCD_out2_in[2]),
        .O(\n_0_temp1[2]_i_1__2 ));
(* SOFT_HLUTNM = "soft_lutpair11" *) 
   LUT5 #(
    .INIT(32'hAAA9EAA2)) 
     \temp1[3]_i_1__2 
       (.I0(BCD_out2_in[3]),
        .I1(BCD_out2_in[0]),
        .I2(BCD_out2_in[2]),
        .I3(BCD_out2_in[1]),
        .I4(cnt_dwn_IBUF),
        .O(\n_0_temp1[3]_i_1__2 ));
FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
     \temp1_reg[0] 
       (.C(I1),
        .CE(1'b1),
        .CLR(tel_rst_IBUF),
        .D(\n_0_temp1[0]_i_1__2 ),
        .Q(BCD_out2_in[0]));
FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
     \temp1_reg[1] 
       (.C(I1),
        .CE(1'b1),
        .CLR(tel_rst_IBUF),
        .D(\n_0_temp1[1]_i_1__2 ),
        .Q(BCD_out2_in[1]));
FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
     \temp1_reg[2] 
       (.C(I1),
        .CE(1'b1),
        .CLR(tel_rst_IBUF),
        .D(\n_0_temp1[2]_i_1__2 ),
        .Q(BCD_out2_in[2]));
FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
     \temp1_reg[3] 
       (.C(I1),
        .CE(1'b1),
        .CLR(tel_rst_IBUF),
        .D(\n_0_temp1[3]_i_1__2 ),
        .Q(BCD_out2_in[3]));
endmodule

(* ORIG_REF_NAME = "enkele_Teller" *) 
module enkele_Teller_3
   (O1,
    Q,
    I1,
    cnt_dwn_IBUF,
    tel_rst_IBUF);
  output O1;
  output [3:0]Q;
  input I1;
  input cnt_dwn_IBUF;
  input tel_rst_IBUF;

  wire I1;
  wire O1;
  wire [3:0]Q;
  wire cnt_dwn_IBUF;
  wire n_0_carry_out_i_1__1;
  wire n_0_carry_out_i_2__3;
  wire \n_0_temp1[0]_i_1__3 ;
  wire \n_0_temp1[1]_i_1__3 ;
  wire \n_0_temp1[2]_i_1__3 ;
  wire \n_0_temp1[3]_i_1__3 ;
  wire tel_rst_IBUF;

LUT6 #(
    .INIT(64'hFFFF001800000018)) 
     carry_out_i_1__1
       (.I0(Q[3]),
        .I1(Q[0]),
        .I2(cnt_dwn_IBUF),
        .I3(n_0_carry_out_i_2__3),
        .I4(tel_rst_IBUF),
        .I5(O1),
        .O(n_0_carry_out_i_1__1));
LUT2 #(
    .INIT(4'hE)) 
     carry_out_i_2__3
       (.I0(Q[1]),
        .I1(Q[2]),
        .O(n_0_carry_out_i_2__3));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     carry_out_reg
       (.C(I1),
        .CE(1'b1),
        .D(n_0_carry_out_i_1__1),
        .Q(O1),
        .R(1'b0));
(* SOFT_HLUTNM = "soft_lutpair13" *) 
   LUT4 #(
    .INIT(16'hE0FF)) 
     \temp1[0]_i_1__3 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(Q[0]),
        .O(\n_0_temp1[0]_i_1__3 ));
(* SOFT_HLUTNM = "soft_lutpair12" *) 
   LUT5 #(
    .INIT(32'hFD98FC66)) 
     \temp1[1]_i_1__3 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(cnt_dwn_IBUF),
        .O(\n_0_temp1[1]_i_1__3 ));
(* SOFT_HLUTNM = "soft_lutpair12" *) 
   LUT5 #(
    .INIT(32'hFEBFA2E0)) 
     \temp1[2]_i_1__3 
       (.I0(Q[3]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(cnt_dwn_IBUF),
        .I4(Q[2]),
        .O(\n_0_temp1[2]_i_1__3 ));
(* SOFT_HLUTNM = "soft_lutpair13" *) 
   LUT5 #(
    .INIT(32'hAAA9EAA2)) 
     \temp1[3]_i_1__3 
       (.I0(Q[3]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(cnt_dwn_IBUF),
        .O(\n_0_temp1[3]_i_1__3 ));
FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
     \temp1_reg[0] 
       (.C(I1),
        .CE(1'b1),
        .CLR(tel_rst_IBUF),
        .D(\n_0_temp1[0]_i_1__3 ),
        .Q(Q[0]));
FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
     \temp1_reg[1] 
       (.C(I1),
        .CE(1'b1),
        .CLR(tel_rst_IBUF),
        .D(\n_0_temp1[1]_i_1__3 ),
        .Q(Q[1]));
FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
     \temp1_reg[2] 
       (.C(I1),
        .CE(1'b1),
        .CLR(tel_rst_IBUF),
        .D(\n_0_temp1[2]_i_1__3 ),
        .Q(Q[2]));
FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
     \temp1_reg[3] 
       (.C(I1),
        .CE(1'b1),
        .CLR(tel_rst_IBUF),
        .D(\n_0_temp1[3]_i_1__3 ),
        .Q(Q[3]));
endmodule

(* ORIG_REF_NAME = "enkele_Teller" *) 
module enkele_Teller_4
   (O1,
    Q,
    I1,
    cnt_dwn_IBUF,
    tel_rst_IBUF);
  output O1;
  output [3:0]Q;
  input I1;
  input cnt_dwn_IBUF;
  input tel_rst_IBUF;

  wire I1;
  wire O1;
  wire [3:0]Q;
  wire cnt_dwn_IBUF;
  wire n_0_carry_out_i_1__0;
  wire n_0_carry_out_i_2__4;
  wire \n_0_temp1[0]_i_1__4 ;
  wire \n_0_temp1[1]_i_1__4 ;
  wire \n_0_temp1[2]_i_1__4 ;
  wire \n_0_temp1[3]_i_1__4 ;
  wire tel_rst_IBUF;

LUT6 #(
    .INIT(64'hFFFF001800000018)) 
     carry_out_i_1__0
       (.I0(Q[3]),
        .I1(Q[0]),
        .I2(cnt_dwn_IBUF),
        .I3(n_0_carry_out_i_2__4),
        .I4(tel_rst_IBUF),
        .I5(O1),
        .O(n_0_carry_out_i_1__0));
LUT2 #(
    .INIT(4'hE)) 
     carry_out_i_2__4
       (.I0(Q[1]),
        .I1(Q[2]),
        .O(n_0_carry_out_i_2__4));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     carry_out_reg
       (.C(I1),
        .CE(1'b1),
        .D(n_0_carry_out_i_1__0),
        .Q(O1),
        .R(1'b0));
(* SOFT_HLUTNM = "soft_lutpair15" *) 
   LUT4 #(
    .INIT(16'hE0FF)) 
     \temp1[0]_i_1__4 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(Q[0]),
        .O(\n_0_temp1[0]_i_1__4 ));
(* SOFT_HLUTNM = "soft_lutpair14" *) 
   LUT5 #(
    .INIT(32'hFD98FC66)) 
     \temp1[1]_i_1__4 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(cnt_dwn_IBUF),
        .O(\n_0_temp1[1]_i_1__4 ));
(* SOFT_HLUTNM = "soft_lutpair14" *) 
   LUT5 #(
    .INIT(32'hFEBFA2E0)) 
     \temp1[2]_i_1__4 
       (.I0(Q[3]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(cnt_dwn_IBUF),
        .I4(Q[2]),
        .O(\n_0_temp1[2]_i_1__4 ));
(* SOFT_HLUTNM = "soft_lutpair15" *) 
   LUT5 #(
    .INIT(32'hAAA9EAA2)) 
     \temp1[3]_i_1__4 
       (.I0(Q[3]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(cnt_dwn_IBUF),
        .O(\n_0_temp1[3]_i_1__4 ));
FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
     \temp1_reg[0] 
       (.C(I1),
        .CE(1'b1),
        .CLR(tel_rst_IBUF),
        .D(\n_0_temp1[0]_i_1__4 ),
        .Q(Q[0]));
FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
     \temp1_reg[1] 
       (.C(I1),
        .CE(1'b1),
        .CLR(tel_rst_IBUF),
        .D(\n_0_temp1[1]_i_1__4 ),
        .Q(Q[1]));
FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
     \temp1_reg[2] 
       (.C(I1),
        .CE(1'b1),
        .CLR(tel_rst_IBUF),
        .D(\n_0_temp1[2]_i_1__4 ),
        .Q(Q[2]));
FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
     \temp1_reg[3] 
       (.C(I1),
        .CE(1'b1),
        .CLR(tel_rst_IBUF),
        .D(\n_0_temp1[3]_i_1__4 ),
        .Q(Q[3]));
endmodule

(* ORIG_REF_NAME = "enkele_Teller" *) 
module enkele_Teller_5
   (O1,
    Q,
    I1,
    cnt_dwn_IBUF,
    tel_rst_IBUF);
  output O1;
  output [3:0]Q;
  input I1;
  input cnt_dwn_IBUF;
  input tel_rst_IBUF;

  wire I1;
  wire O1;
  wire [3:0]Q;
  wire cnt_dwn_IBUF;
  wire n_0_carry_out_i_1;
  wire n_0_carry_out_i_2__5;
  wire \n_0_temp1[0]_i_1__5 ;
  wire \n_0_temp1[1]_i_1__5 ;
  wire \n_0_temp1[2]_i_1__5 ;
  wire \n_0_temp1[3]_i_1__5 ;
  wire tel_rst_IBUF;

LUT6 #(
    .INIT(64'hFFFF001800000018)) 
     carry_out_i_1
       (.I0(Q[3]),
        .I1(Q[0]),
        .I2(cnt_dwn_IBUF),
        .I3(n_0_carry_out_i_2__5),
        .I4(tel_rst_IBUF),
        .I5(O1),
        .O(n_0_carry_out_i_1));
LUT2 #(
    .INIT(4'hE)) 
     carry_out_i_2__5
       (.I0(Q[1]),
        .I1(Q[2]),
        .O(n_0_carry_out_i_2__5));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     carry_out_reg
       (.C(I1),
        .CE(1'b1),
        .D(n_0_carry_out_i_1),
        .Q(O1),
        .R(1'b0));
(* SOFT_HLUTNM = "soft_lutpair17" *) 
   LUT4 #(
    .INIT(16'hE0FF)) 
     \temp1[0]_i_1__5 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(Q[0]),
        .O(\n_0_temp1[0]_i_1__5 ));
(* SOFT_HLUTNM = "soft_lutpair16" *) 
   LUT5 #(
    .INIT(32'hFD98FC66)) 
     \temp1[1]_i_1__5 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(cnt_dwn_IBUF),
        .O(\n_0_temp1[1]_i_1__5 ));
(* SOFT_HLUTNM = "soft_lutpair16" *) 
   LUT5 #(
    .INIT(32'hFEBFA2E0)) 
     \temp1[2]_i_1__5 
       (.I0(Q[3]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(cnt_dwn_IBUF),
        .I4(Q[2]),
        .O(\n_0_temp1[2]_i_1__5 ));
(* SOFT_HLUTNM = "soft_lutpair17" *) 
   LUT5 #(
    .INIT(32'hAAA9EAA2)) 
     \temp1[3]_i_1__5 
       (.I0(Q[3]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(cnt_dwn_IBUF),
        .O(\n_0_temp1[3]_i_1__5 ));
FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
     \temp1_reg[0] 
       (.C(I1),
        .CE(1'b1),
        .CLR(tel_rst_IBUF),
        .D(\n_0_temp1[0]_i_1__5 ),
        .Q(Q[0]));
FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
     \temp1_reg[1] 
       (.C(I1),
        .CE(1'b1),
        .CLR(tel_rst_IBUF),
        .D(\n_0_temp1[1]_i_1__5 ),
        .Q(Q[1]));
FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
     \temp1_reg[2] 
       (.C(I1),
        .CE(1'b1),
        .CLR(tel_rst_IBUF),
        .D(\n_0_temp1[2]_i_1__5 ),
        .Q(Q[2]));
FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
     \temp1_reg[3] 
       (.C(I1),
        .CE(1'b1),
        .CLR(tel_rst_IBUF),
        .D(\n_0_temp1[3]_i_1__5 ),
        .Q(Q[3]));
endmodule

(* ORIG_REF_NAME = "enkele_Teller" *) 
module enkele_Teller_6
   (O1,
    O2,
    O3,
    O4,
    cnt_dwn_IBUF,
    Q,
    out,
    I1,
    I2,
    I3,
    tel_rst_IBUF);
  output O1;
  output O2;
  output O3;
  output O4;
  input cnt_dwn_IBUF;
  input [3:0]Q;
  input [1:0]out;
  input [3:0]I1;
  input [3:0]I2;
  input I3;
  input tel_rst_IBUF;

  wire [3:0]BCD_out6_in;
  wire [3:0]I1;
  wire [3:0]I2;
  wire I3;
  wire O1;
  wire O2;
  wire O3;
  wire O4;
  wire [3:0]Q;
  wire cnt_dwn_IBUF;
  wire \n_0_temp1[0]_i_1__6 ;
  wire \n_0_temp1[1]_i_1__6 ;
  wire \n_0_temp1[2]_i_1__6 ;
  wire \n_0_temp1[3]_i_1__6 ;
  wire [1:0]out;
  wire tel_rst_IBUF;

LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \BCD_out[0]_i_3 
       (.I0(BCD_out6_in[0]),
        .I1(Q[0]),
        .I2(out[1]),
        .I3(I1[0]),
        .I4(out[0]),
        .I5(I2[0]),
        .O(O1));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \BCD_out[1]_i_3 
       (.I0(BCD_out6_in[1]),
        .I1(Q[1]),
        .I2(out[1]),
        .I3(I1[1]),
        .I4(out[0]),
        .I5(I2[1]),
        .O(O2));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \BCD_out[2]_i_3 
       (.I0(BCD_out6_in[2]),
        .I1(Q[2]),
        .I2(out[1]),
        .I3(I1[2]),
        .I4(out[0]),
        .I5(I2[2]),
        .O(O3));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \BCD_out[3]_i_3 
       (.I0(BCD_out6_in[3]),
        .I1(Q[3]),
        .I2(out[1]),
        .I3(I1[3]),
        .I4(out[0]),
        .I5(I2[3]),
        .O(O4));
(* SOFT_HLUTNM = "soft_lutpair19" *) 
   LUT4 #(
    .INIT(16'hE0FF)) 
     \temp1[0]_i_1__6 
       (.I0(BCD_out6_in[1]),
        .I1(BCD_out6_in[2]),
        .I2(BCD_out6_in[3]),
        .I3(BCD_out6_in[0]),
        .O(\n_0_temp1[0]_i_1__6 ));
(* SOFT_HLUTNM = "soft_lutpair18" *) 
   LUT5 #(
    .INIT(32'hFD98FC66)) 
     \temp1[1]_i_1__6 
       (.I0(BCD_out6_in[0]),
        .I1(BCD_out6_in[1]),
        .I2(BCD_out6_in[2]),
        .I3(BCD_out6_in[3]),
        .I4(cnt_dwn_IBUF),
        .O(\n_0_temp1[1]_i_1__6 ));
(* SOFT_HLUTNM = "soft_lutpair18" *) 
   LUT5 #(
    .INIT(32'hFEBFA2E0)) 
     \temp1[2]_i_1__6 
       (.I0(BCD_out6_in[3]),
        .I1(BCD_out6_in[0]),
        .I2(BCD_out6_in[1]),
        .I3(cnt_dwn_IBUF),
        .I4(BCD_out6_in[2]),
        .O(\n_0_temp1[2]_i_1__6 ));
(* SOFT_HLUTNM = "soft_lutpair19" *) 
   LUT5 #(
    .INIT(32'hAAA9EAA2)) 
     \temp1[3]_i_1__6 
       (.I0(BCD_out6_in[3]),
        .I1(BCD_out6_in[0]),
        .I2(BCD_out6_in[2]),
        .I3(BCD_out6_in[1]),
        .I4(cnt_dwn_IBUF),
        .O(\n_0_temp1[3]_i_1__6 ));
FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
     \temp1_reg[0] 
       (.C(I3),
        .CE(1'b1),
        .CLR(tel_rst_IBUF),
        .D(\n_0_temp1[0]_i_1__6 ),
        .Q(BCD_out6_in[0]));
FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
     \temp1_reg[1] 
       (.C(I3),
        .CE(1'b1),
        .CLR(tel_rst_IBUF),
        .D(\n_0_temp1[1]_i_1__6 ),
        .Q(BCD_out6_in[1]));
FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
     \temp1_reg[2] 
       (.C(I3),
        .CE(1'b1),
        .CLR(tel_rst_IBUF),
        .D(\n_0_temp1[2]_i_1__6 ),
        .Q(BCD_out6_in[2]));
FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
     \temp1_reg[3] 
       (.C(I3),
        .CE(1'b1),
        .CLR(tel_rst_IBUF),
        .D(\n_0_temp1[3]_i_1__6 ),
        .Q(BCD_out6_in[3]));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
