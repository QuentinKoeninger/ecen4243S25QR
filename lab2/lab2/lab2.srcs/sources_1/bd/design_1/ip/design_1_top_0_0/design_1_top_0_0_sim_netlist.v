// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
// Date        : Fri Mar 14 15:40:38 2025
// Host        : CEAT-ENDV350-11L running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/11-comp-arch-f/Desktop/ecen4243S25QR/lab2/lab2/lab2.srcs/sources_1/bd/design_1/ip/design_1_top_0_0/design_1_top_0_0_sim_netlist.v
// Design      : design_1_top_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_top_0_0,top,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "top,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module design_1_top_0_0
   (clk,
    reset,
    doneM,
    readDataM,
    writeDataM,
    addressM,
    DRW,
    AXIStart);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 reset RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input reset;
  input doneM;
  input [31:0]readDataM;
  output [31:0]writeDataM;
  output [31:0]addressM;
  output DRW;
  output AXIStart;

  wire AXIStart;
  wire DRW;
  wire [31:0]addressM;
  wire clk;
  wire doneM;
  wire [31:0]readDataM;
  wire reset;
  wire [31:0]writeDataM;

  (* KEEP_HIERARCHY = "soft" *) 
  design_1_top_0_0_top inst
       (.AXIStart(AXIStart),
        .DRW(DRW),
        .addressM(addressM),
        .clk(clk),
        .doneM(doneM),
        .readDataM(readDataM),
        .reset(reset),
        .writeDataM(writeDataM));
endmodule

(* ORIG_REF_NAME = "MemControl" *) 
module design_1_top_0_0_MemControl
   (Done,
    MStrobe,
    MemWrite,
    Trigger,
    clk,
    reset,
    DRW,
    AXIstart);
  output Done;
  input MStrobe;
  input MemWrite;
  input Trigger;
  input clk;
  input reset;
  output DRW;
  output AXIstart;

  wire AXIstart;
  wire DRW;
  wire Done;
  wire \FSM_sequential_state[0]_i_1_n_0 ;
  wire \FSM_sequential_state[1]_i_1_n_0 ;
  wire \FSM_sequential_state[2]_i_1_n_0 ;
  wire MStrobe;
  wire MemWrite;
  wire Trigger;
  wire clk;
  wire [0:0]nextstate;
  wire reset;
  wire [2:0]state;

  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'h06)) 
    AXIstart_INST_0
       (.I0(state[2]),
        .I1(state[0]),
        .I2(state[1]),
        .O(AXIstart));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'h15)) 
    DRW_INST_0
       (.I0(state[2]),
        .I1(state[1]),
        .I2(state[0]),
        .O(DRW));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'h01)) 
    Done_INST_0
       (.I0(state[0]),
        .I1(state[2]),
        .I2(state[1]),
        .O(Done));
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(nextstate),
        .I1(reset),
        .O(\FSM_sequential_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h101010105D585858)) 
    \FSM_sequential_state[0]_i_2 
       (.I0(state[1]),
        .I1(Trigger),
        .I2(state[2]),
        .I3(MemWrite),
        .I4(MStrobe),
        .I5(state[0]),
        .O(nextstate));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT5 #(
    .INIT(32'h00001A12)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(state[0]),
        .I1(state[2]),
        .I2(state[1]),
        .I3(Trigger),
        .I4(reset),
        .O(\FSM_sequential_state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000AABA)) 
    \FSM_sequential_state[2]_i_1 
       (.I0(state[2]),
        .I1(state[0]),
        .I2(MStrobe),
        .I3(MemWrite),
        .I4(state[1]),
        .I5(reset),
        .O(\FSM_sequential_state[2]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "Idle:000,ReadStart:100,WriteStart:001,ReadData:110,ReadMem:101,WriteData:011,WriteMem:010" *) 
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \FSM_sequential_state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_sequential_state[0]_i_1_n_0 ),
        .Q(state[0]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "Idle:000,ReadStart:100,WriteStart:001,ReadData:110,ReadMem:101,WriteData:011,WriteMem:010" *) 
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \FSM_sequential_state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_sequential_state[1]_i_1_n_0 ),
        .Q(state[1]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "Idle:000,ReadStart:100,WriteStart:001,ReadData:110,ReadMem:101,WriteData:011,WriteMem:010" *) 
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \FSM_sequential_state_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_sequential_state[2]_i_1_n_0 ),
        .Q(state[2]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "adder" *) 
module design_1_top_0_0_adder
   (\q_reg[31] ,
    D,
    wd3,
    \q_reg[12] ,
    \q_reg[16] ,
    \q_reg[16]_0 ,
    \q_reg[16]_1 ,
    \q_reg[16]_2 ,
    \q_reg[20] ,
    \q_reg[20]_0 ,
    \q_reg[20]_1 ,
    \q_reg[20]_2 ,
    \q_reg[24] ,
    \q_reg[24]_0 ,
    \q_reg[24]_1 ,
    \q_reg[24]_2 ,
    \q_reg[28] ,
    \q_reg[28]_0 ,
    \q_reg[28]_1 ,
    \q_reg[28]_2 ,
    Q,
    S,
    Instr,
    \q_reg[27] ,
    \q_reg[27]_0 ,
    \q_reg[26] ,
    \q_reg[25] ,
    \q_reg[24]_3 ,
    \q_reg[23] ,
    \q_reg[22] ,
    \q_reg[21] ,
    \q_reg[20]_3 ,
    \q_reg[18] ,
    \q_reg[16]_3 ,
    \q_reg[14] ,
    \q_reg[12]_0 ,
    \q_reg[10] ,
    immext,
    rf_reg_r1_0_31_6_11,
    ReadData,
    rf_reg_r1_0_31_24_29_i_6,
    rf_reg_r1_0_31_0_5,
    rf_reg_r1_0_31_0_5_0,
    rf_reg_r1_0_31_0_5_1,
    rf_reg_r1_0_31_0_5_2,
    rf_reg_r1_0_31_0_5_3,
    rf_reg_r1_0_31_0_5_4,
    rf_reg_r1_0_31_6_11_0,
    rf_reg_r1_0_31_6_11_1,
    rf_reg_r1_0_31_6_11_2,
    rf_reg_r1_0_31_6_11_3,
    rf_reg_r1_0_31_6_11_4,
    rf_reg_r1_0_31_6_11_5,
    rf_reg_r1_0_31_6_11_6,
    rf_reg_r1_0_31_6_11_7,
    rf_reg_r1_0_31_6_11_8,
    rf_reg_r1_0_31_18_23_i_1);
  output [17:0]\q_reg[31] ;
  output [12:0]D;
  output [10:0]wd3;
  output \q_reg[12] ;
  output \q_reg[16] ;
  output \q_reg[16]_0 ;
  output \q_reg[16]_1 ;
  output \q_reg[16]_2 ;
  output \q_reg[20] ;
  output \q_reg[20]_0 ;
  output \q_reg[20]_1 ;
  output \q_reg[20]_2 ;
  output \q_reg[24] ;
  output \q_reg[24]_0 ;
  output \q_reg[24]_1 ;
  output \q_reg[24]_2 ;
  output \q_reg[28] ;
  output \q_reg[28]_0 ;
  output \q_reg[28]_1 ;
  output \q_reg[28]_2 ;
  input [30:0]Q;
  input [0:0]S;
  input [21:0]Instr;
  input \q_reg[27] ;
  input \q_reg[27]_0 ;
  input \q_reg[26] ;
  input \q_reg[25] ;
  input \q_reg[24]_3 ;
  input \q_reg[23] ;
  input \q_reg[22] ;
  input \q_reg[21] ;
  input \q_reg[20]_3 ;
  input \q_reg[18] ;
  input \q_reg[16]_3 ;
  input \q_reg[14] ;
  input \q_reg[12]_0 ;
  input \q_reg[10] ;
  input [5:0]immext;
  input rf_reg_r1_0_31_6_11;
  input [6:0]ReadData;
  input rf_reg_r1_0_31_24_29_i_6;
  input rf_reg_r1_0_31_0_5;
  input rf_reg_r1_0_31_0_5_0;
  input rf_reg_r1_0_31_0_5_1;
  input rf_reg_r1_0_31_0_5_2;
  input rf_reg_r1_0_31_0_5_3;
  input rf_reg_r1_0_31_0_5_4;
  input rf_reg_r1_0_31_6_11_0;
  input rf_reg_r1_0_31_6_11_1;
  input rf_reg_r1_0_31_6_11_2;
  input rf_reg_r1_0_31_6_11_3;
  input rf_reg_r1_0_31_6_11_4;
  input rf_reg_r1_0_31_6_11_5;
  input rf_reg_r1_0_31_6_11_6;
  input rf_reg_r1_0_31_6_11_7;
  input rf_reg_r1_0_31_6_11_8;
  input rf_reg_r1_0_31_18_23_i_1;

  wire [12:0]D;
  wire [21:0]Instr;
  wire [30:0]Q;
  wire [6:0]ReadData;
  wire [0:0]S;
  wire [27:10]d2;
  wire [5:0]immext;
  wire \q_reg[10] ;
  wire \q_reg[12] ;
  wire \q_reg[12]_0 ;
  wire \q_reg[14] ;
  wire \q_reg[16] ;
  wire \q_reg[16]_0 ;
  wire \q_reg[16]_1 ;
  wire \q_reg[16]_2 ;
  wire \q_reg[16]_3 ;
  wire \q_reg[18] ;
  wire \q_reg[20] ;
  wire \q_reg[20]_0 ;
  wire \q_reg[20]_1 ;
  wire \q_reg[20]_2 ;
  wire \q_reg[20]_3 ;
  wire \q_reg[21] ;
  wire \q_reg[22] ;
  wire \q_reg[23] ;
  wire \q_reg[24] ;
  wire \q_reg[24]_0 ;
  wire \q_reg[24]_1 ;
  wire \q_reg[24]_2 ;
  wire \q_reg[24]_3 ;
  wire \q_reg[25] ;
  wire \q_reg[26] ;
  wire \q_reg[27] ;
  wire \q_reg[27]_0 ;
  wire \q_reg[28] ;
  wire \q_reg[28]_0 ;
  wire \q_reg[28]_1 ;
  wire \q_reg[28]_2 ;
  wire [17:0]\q_reg[31] ;
  wire rf_reg_r1_0_31_0_5;
  wire rf_reg_r1_0_31_0_5_0;
  wire rf_reg_r1_0_31_0_5_1;
  wire rf_reg_r1_0_31_0_5_2;
  wire rf_reg_r1_0_31_0_5_3;
  wire rf_reg_r1_0_31_0_5_4;
  wire rf_reg_r1_0_31_18_23_i_1;
  wire rf_reg_r1_0_31_24_29_i_6;
  wire rf_reg_r1_0_31_6_11;
  wire rf_reg_r1_0_31_6_11_0;
  wire rf_reg_r1_0_31_6_11_1;
  wire rf_reg_r1_0_31_6_11_2;
  wire rf_reg_r1_0_31_6_11_3;
  wire rf_reg_r1_0_31_6_11_4;
  wire rf_reg_r1_0_31_6_11_5;
  wire rf_reg_r1_0_31_6_11_6;
  wire rf_reg_r1_0_31_6_11_7;
  wire rf_reg_r1_0_31_6_11_8;
  wire [10:0]wd3;
  wire y_carry__0_n_0;
  wire y_carry__0_n_1;
  wire y_carry__0_n_2;
  wire y_carry__0_n_3;
  wire y_carry__1_n_0;
  wire y_carry__1_n_1;
  wire y_carry__1_n_2;
  wire y_carry__1_n_3;
  wire y_carry__2_n_0;
  wire y_carry__2_n_1;
  wire y_carry__2_n_2;
  wire y_carry__2_n_3;
  wire y_carry__3_n_0;
  wire y_carry__3_n_1;
  wire y_carry__3_n_2;
  wire y_carry__3_n_3;
  wire y_carry__4_n_0;
  wire y_carry__4_n_1;
  wire y_carry__4_n_2;
  wire y_carry__4_n_3;
  wire y_carry__5_n_0;
  wire y_carry__5_n_1;
  wire y_carry__5_n_2;
  wire y_carry__5_n_3;
  wire y_carry__6_n_2;
  wire y_carry__6_n_3;
  wire y_carry_n_0;
  wire y_carry_n_1;
  wire y_carry_n_2;
  wire y_carry_n_3;
  wire [3:2]NLW_y_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_y_carry__6_O_UNCONNECTED;

  LUT6 #(
    .INIT(64'hFEEFAAAA0220AAAA)) 
    \q[10]_i_1 
       (.I0(d2[10]),
        .I1(Instr[0]),
        .I2(Instr[2]),
        .I3(\q_reg[27] ),
        .I4(Instr[1]),
        .I5(\q_reg[10] ),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hFEEFAAAA0220AAAA)) 
    \q[12]_i_1 
       (.I0(d2[12]),
        .I1(Instr[0]),
        .I2(Instr[2]),
        .I3(\q_reg[27] ),
        .I4(Instr[1]),
        .I5(\q_reg[12]_0 ),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hFEEFAAAA0220AAAA)) 
    \q[14]_i_1 
       (.I0(d2[14]),
        .I1(Instr[0]),
        .I2(Instr[2]),
        .I3(\q_reg[27] ),
        .I4(Instr[1]),
        .I5(\q_reg[14] ),
        .O(D[2]));
  LUT6 #(
    .INIT(64'hFEEFAAAA0220AAAA)) 
    \q[16]_i_1 
       (.I0(d2[16]),
        .I1(Instr[0]),
        .I2(Instr[2]),
        .I3(\q_reg[27] ),
        .I4(Instr[1]),
        .I5(\q_reg[16]_3 ),
        .O(D[3]));
  LUT6 #(
    .INIT(64'hFEEFAAAA0220AAAA)) 
    \q[18]_i_1 
       (.I0(d2[18]),
        .I1(Instr[0]),
        .I2(Instr[2]),
        .I3(\q_reg[27] ),
        .I4(Instr[1]),
        .I5(\q_reg[18] ),
        .O(D[4]));
  LUT6 #(
    .INIT(64'hFEEFAAAA0220AAAA)) 
    \q[20]_i_1 
       (.I0(d2[20]),
        .I1(Instr[0]),
        .I2(Instr[2]),
        .I3(\q_reg[27] ),
        .I4(Instr[1]),
        .I5(\q_reg[20]_3 ),
        .O(D[5]));
  LUT6 #(
    .INIT(64'hFEEFAAAA0220AAAA)) 
    \q[21]_i_1 
       (.I0(d2[21]),
        .I1(Instr[0]),
        .I2(Instr[2]),
        .I3(\q_reg[27] ),
        .I4(Instr[1]),
        .I5(\q_reg[21] ),
        .O(D[6]));
  LUT6 #(
    .INIT(64'hFEEFAAAA0220AAAA)) 
    \q[22]_i_1 
       (.I0(d2[22]),
        .I1(Instr[0]),
        .I2(Instr[2]),
        .I3(\q_reg[27] ),
        .I4(Instr[1]),
        .I5(\q_reg[22] ),
        .O(D[7]));
  LUT6 #(
    .INIT(64'hFEEFAAAA0220AAAA)) 
    \q[23]_i_1 
       (.I0(d2[23]),
        .I1(Instr[0]),
        .I2(Instr[2]),
        .I3(\q_reg[27] ),
        .I4(Instr[1]),
        .I5(\q_reg[23] ),
        .O(D[8]));
  LUT6 #(
    .INIT(64'hFEEFAAAA0220AAAA)) 
    \q[24]_i_1 
       (.I0(d2[24]),
        .I1(Instr[0]),
        .I2(Instr[2]),
        .I3(\q_reg[27] ),
        .I4(Instr[1]),
        .I5(\q_reg[24]_3 ),
        .O(D[9]));
  LUT6 #(
    .INIT(64'hFEEFAAAA0220AAAA)) 
    \q[25]_i_1 
       (.I0(d2[25]),
        .I1(Instr[0]),
        .I2(Instr[2]),
        .I3(\q_reg[27] ),
        .I4(Instr[1]),
        .I5(\q_reg[25] ),
        .O(D[10]));
  LUT6 #(
    .INIT(64'hFEEFAAAA0220AAAA)) 
    \q[26]_i_1 
       (.I0(d2[26]),
        .I1(Instr[0]),
        .I2(Instr[2]),
        .I3(\q_reg[27] ),
        .I4(Instr[1]),
        .I5(\q_reg[26] ),
        .O(D[11]));
  LUT6 #(
    .INIT(64'hFEEFAAAA0220AAAA)) 
    \q[27]_i_1 
       (.I0(d2[27]),
        .I1(Instr[0]),
        .I2(Instr[2]),
        .I3(\q_reg[27] ),
        .I4(Instr[1]),
        .I5(\q_reg[27]_0 ),
        .O(D[12]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    rf_reg_r1_0_31_0_5_i_2
       (.I0(immext[0]),
        .I1(\q_reg[31] [0]),
        .I2(rf_reg_r1_0_31_6_11),
        .I3(ReadData[0]),
        .I4(rf_reg_r1_0_31_24_29_i_6),
        .I5(rf_reg_r1_0_31_0_5),
        .O(wd3[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    rf_reg_r1_0_31_0_5_i_4
       (.I0(immext[2]),
        .I1(\q_reg[31] [2]),
        .I2(rf_reg_r1_0_31_6_11),
        .I3(ReadData[2]),
        .I4(rf_reg_r1_0_31_24_29_i_6),
        .I5(rf_reg_r1_0_31_0_5_1),
        .O(wd3[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    rf_reg_r1_0_31_0_5_i_5
       (.I0(immext[1]),
        .I1(\q_reg[31] [1]),
        .I2(rf_reg_r1_0_31_6_11),
        .I3(ReadData[1]),
        .I4(rf_reg_r1_0_31_24_29_i_6),
        .I5(rf_reg_r1_0_31_0_5_0),
        .O(wd3[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    rf_reg_r1_0_31_0_5_i_6
       (.I0(immext[3]),
        .I1(\q_reg[31] [4]),
        .I2(rf_reg_r1_0_31_6_11),
        .I3(ReadData[4]),
        .I4(rf_reg_r1_0_31_24_29_i_6),
        .I5(rf_reg_r1_0_31_0_5_4),
        .O(wd3[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    rf_reg_r1_0_31_0_5_i_7
       (.I0(rf_reg_r1_0_31_0_5_2),
        .I1(\q_reg[31] [3]),
        .I2(rf_reg_r1_0_31_6_11),
        .I3(ReadData[3]),
        .I4(rf_reg_r1_0_31_24_29_i_6),
        .I5(rf_reg_r1_0_31_0_5_3),
        .O(wd3[3]));
  LUT5 #(
    .INIT(32'hE2FFE200)) 
    rf_reg_r1_0_31_12_17_i_10
       (.I0(Instr[21]),
        .I1(rf_reg_r1_0_31_18_23_i_1),
        .I2(Instr[2]),
        .I3(rf_reg_r1_0_31_24_29_i_6),
        .I4(d2[12]),
        .O(\q_reg[12] ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    rf_reg_r1_0_31_12_17_i_12
       (.I0(Instr[5]),
        .I1(rf_reg_r1_0_31_18_23_i_1),
        .I2(Instr[21]),
        .I3(rf_reg_r1_0_31_24_29_i_6),
        .I4(\q_reg[31] [11]),
        .O(\q_reg[16]_1 ));
  LUT5 #(
    .INIT(32'hE2FFE200)) 
    rf_reg_r1_0_31_12_17_i_14
       (.I0(Instr[21]),
        .I1(rf_reg_r1_0_31_18_23_i_1),
        .I2(Instr[4]),
        .I3(rf_reg_r1_0_31_24_29_i_6),
        .I4(d2[14]),
        .O(\q_reg[16]_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    rf_reg_r1_0_31_12_17_i_16
       (.I0(Instr[7]),
        .I1(rf_reg_r1_0_31_18_23_i_1),
        .I2(Instr[21]),
        .I3(rf_reg_r1_0_31_24_29_i_6),
        .I4(\q_reg[31] [12]),
        .O(\q_reg[20] ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    rf_reg_r1_0_31_12_17_i_18
       (.I0(Instr[6]),
        .I1(rf_reg_r1_0_31_18_23_i_1),
        .I2(Instr[21]),
        .I3(rf_reg_r1_0_31_24_29_i_6),
        .I4(d2[16]),
        .O(\q_reg[16]_2 ));
  LUT5 #(
    .INIT(32'hE2FFE200)) 
    rf_reg_r1_0_31_12_17_i_8
       (.I0(Instr[21]),
        .I1(rf_reg_r1_0_31_18_23_i_1),
        .I2(Instr[3]),
        .I3(rf_reg_r1_0_31_24_29_i_6),
        .I4(\q_reg[31] [10]),
        .O(\q_reg[16] ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    rf_reg_r1_0_31_18_23_i_10
       (.I0(Instr[8]),
        .I1(rf_reg_r1_0_31_18_23_i_1),
        .I2(Instr[21]),
        .I3(rf_reg_r1_0_31_24_29_i_6),
        .I4(d2[18]),
        .O(\q_reg[20]_0 ));
  LUT6 #(
    .INIT(64'hBA8AFFFFBA8A0000)) 
    rf_reg_r1_0_31_18_23_i_12
       (.I0(Instr[21]),
        .I1(Instr[1]),
        .I2(Instr[0]),
        .I3(Instr[11]),
        .I4(rf_reg_r1_0_31_24_29_i_6),
        .I5(d2[21]),
        .O(\q_reg[24] ));
  LUT6 #(
    .INIT(64'hBA8AFFFFBA8A0000)) 
    rf_reg_r1_0_31_18_23_i_14
       (.I0(Instr[21]),
        .I1(Instr[1]),
        .I2(Instr[0]),
        .I3(Instr[10]),
        .I4(rf_reg_r1_0_31_24_29_i_6),
        .I5(d2[20]),
        .O(\q_reg[20]_2 ));
  LUT6 #(
    .INIT(64'hBA8AFFFFBA8A0000)) 
    rf_reg_r1_0_31_18_23_i_16
       (.I0(Instr[21]),
        .I1(Instr[1]),
        .I2(Instr[0]),
        .I3(Instr[13]),
        .I4(rf_reg_r1_0_31_24_29_i_6),
        .I5(d2[23]),
        .O(\q_reg[24]_1 ));
  LUT6 #(
    .INIT(64'hBA8AFFFFBA8A0000)) 
    rf_reg_r1_0_31_18_23_i_18
       (.I0(Instr[21]),
        .I1(Instr[1]),
        .I2(Instr[0]),
        .I3(Instr[12]),
        .I4(rf_reg_r1_0_31_24_29_i_6),
        .I5(d2[22]),
        .O(\q_reg[24]_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    rf_reg_r1_0_31_18_23_i_8
       (.I0(Instr[9]),
        .I1(rf_reg_r1_0_31_18_23_i_1),
        .I2(Instr[21]),
        .I3(rf_reg_r1_0_31_24_29_i_6),
        .I4(\q_reg[31] [13]),
        .O(\q_reg[20]_1 ));
  LUT6 #(
    .INIT(64'hBA8AFFFFBA8A0000)) 
    rf_reg_r1_0_31_24_29_i_10
       (.I0(Instr[21]),
        .I1(Instr[1]),
        .I2(Instr[0]),
        .I3(Instr[14]),
        .I4(rf_reg_r1_0_31_24_29_i_6),
        .I5(d2[24]),
        .O(\q_reg[24]_2 ));
  LUT6 #(
    .INIT(64'hBA8AFFFFBA8A0000)) 
    rf_reg_r1_0_31_24_29_i_12
       (.I0(Instr[21]),
        .I1(Instr[1]),
        .I2(Instr[0]),
        .I3(Instr[17]),
        .I4(rf_reg_r1_0_31_24_29_i_6),
        .I5(d2[27]),
        .O(\q_reg[28]_1 ));
  LUT6 #(
    .INIT(64'hBA8AFFFFBA8A0000)) 
    rf_reg_r1_0_31_24_29_i_14
       (.I0(Instr[21]),
        .I1(Instr[1]),
        .I2(Instr[0]),
        .I3(Instr[16]),
        .I4(rf_reg_r1_0_31_24_29_i_6),
        .I5(d2[26]),
        .O(\q_reg[28]_0 ));
  LUT6 #(
    .INIT(64'hBA8AFFFFBA8A0000)) 
    rf_reg_r1_0_31_24_29_i_18
       (.I0(Instr[21]),
        .I1(Instr[1]),
        .I2(Instr[0]),
        .I3(Instr[18]),
        .I4(rf_reg_r1_0_31_24_29_i_6),
        .I5(\q_reg[31] [14]),
        .O(\q_reg[28]_2 ));
  LUT6 #(
    .INIT(64'hBA8AFFFFBA8A0000)) 
    rf_reg_r1_0_31_24_29_i_8
       (.I0(Instr[21]),
        .I1(Instr[1]),
        .I2(Instr[0]),
        .I3(Instr[15]),
        .I4(rf_reg_r1_0_31_24_29_i_6),
        .I5(d2[25]),
        .O(\q_reg[28] ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    rf_reg_r1_0_31_6_11_i_1
       (.I0(immext[5]),
        .I1(\q_reg[31] [6]),
        .I2(rf_reg_r1_0_31_6_11),
        .I3(ReadData[6]),
        .I4(rf_reg_r1_0_31_24_29_i_6),
        .I5(rf_reg_r1_0_31_6_11_1),
        .O(wd3[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    rf_reg_r1_0_31_6_11_i_2
       (.I0(immext[4]),
        .I1(\q_reg[31] [5]),
        .I2(rf_reg_r1_0_31_6_11),
        .I3(ReadData[5]),
        .I4(rf_reg_r1_0_31_24_29_i_6),
        .I5(rf_reg_r1_0_31_6_11_0),
        .O(wd3[5]));
  LUT6 #(
    .INIT(64'h2F20FFFF2F200000)) 
    rf_reg_r1_0_31_6_11_i_3
       (.I0(Instr[19]),
        .I1(rf_reg_r1_0_31_6_11_2),
        .I2(rf_reg_r1_0_31_24_29_i_6),
        .I3(\q_reg[31] [8]),
        .I4(rf_reg_r1_0_31_6_11),
        .I5(rf_reg_r1_0_31_6_11_4),
        .O(wd3[8]));
  LUT6 #(
    .INIT(64'h2F20FFFF2F200000)) 
    rf_reg_r1_0_31_6_11_i_4
       (.I0(Instr[18]),
        .I1(rf_reg_r1_0_31_6_11_2),
        .I2(rf_reg_r1_0_31_24_29_i_6),
        .I3(\q_reg[31] [7]),
        .I4(rf_reg_r1_0_31_6_11),
        .I5(rf_reg_r1_0_31_6_11_3),
        .O(wd3[7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    rf_reg_r1_0_31_6_11_i_5
       (.I0(rf_reg_r1_0_31_6_11_6),
        .I1(\q_reg[31] [9]),
        .I2(rf_reg_r1_0_31_6_11),
        .I3(rf_reg_r1_0_31_6_11_7),
        .I4(rf_reg_r1_0_31_24_29_i_6),
        .I5(rf_reg_r1_0_31_6_11_8),
        .O(wd3[10]));
  LUT6 #(
    .INIT(64'h2F20FFFF2F200000)) 
    rf_reg_r1_0_31_6_11_i_6
       (.I0(Instr[20]),
        .I1(rf_reg_r1_0_31_6_11_2),
        .I2(rf_reg_r1_0_31_24_29_i_6),
        .I3(d2[10]),
        .I4(rf_reg_r1_0_31_6_11),
        .I5(rf_reg_r1_0_31_6_11_5),
        .O(wd3[9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 y_carry
       (.CI(1'b0),
        .CO({y_carry_n_0,y_carry_n_1,y_carry_n_2,y_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,Q[1],1'b0}),
        .O(\q_reg[31] [3:0]),
        .S({Q[3:2],S,Q[0]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 y_carry__0
       (.CI(y_carry_n_0),
        .CO({y_carry__0_n_0,y_carry__0_n_1,y_carry__0_n_2,y_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\q_reg[31] [7:4]),
        .S(Q[7:4]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 y_carry__1
       (.CI(y_carry__0_n_0),
        .CO({y_carry__1_n_0,y_carry__1_n_1,y_carry__1_n_2,y_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({d2[12],\q_reg[31] [9],d2[10],\q_reg[31] [8]}),
        .S(Q[11:8]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 y_carry__2
       (.CI(y_carry__1_n_0),
        .CO({y_carry__2_n_0,y_carry__2_n_1,y_carry__2_n_2,y_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({d2[16],\q_reg[31] [11],d2[14],\q_reg[31] [10]}),
        .S(Q[15:12]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 y_carry__3
       (.CI(y_carry__2_n_0),
        .CO({y_carry__3_n_0,y_carry__3_n_1,y_carry__3_n_2,y_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({d2[20],\q_reg[31] [13],d2[18],\q_reg[31] [12]}),
        .S(Q[19:16]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 y_carry__4
       (.CI(y_carry__3_n_0),
        .CO({y_carry__4_n_0,y_carry__4_n_1,y_carry__4_n_2,y_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(d2[24:21]),
        .S(Q[23:20]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 y_carry__5
       (.CI(y_carry__4_n_0),
        .CO({y_carry__5_n_0,y_carry__5_n_1,y_carry__5_n_2,y_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\q_reg[31] [14],d2[27:25]}),
        .S(Q[27:24]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 y_carry__6
       (.CI(y_carry__5_n_0),
        .CO({NLW_y_carry__6_CO_UNCONNECTED[3:2],y_carry__6_n_2,y_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_y_carry__6_O_UNCONNECTED[3],\q_reg[31] [17:15]}),
        .S({1'b0,Q[30:28]}));
endmodule

(* ORIG_REF_NAME = "adder" *) 
module design_1_top_0_0_adder_0
   (d1,
    Q,
    S,
    \q[4]_i_2 ,
    \q[8]_i_2 ,
    \q[12]_i_2 ,
    \q[16]_i_2 ,
    \q[20]_i_2 ,
    \q[24]_i_2 ,
    \q[28]_i_2 );
  output [31:0]d1;
  input [30:0]Q;
  input [3:0]S;
  input [3:0]\q[4]_i_2 ;
  input [3:0]\q[8]_i_2 ;
  input [3:0]\q[12]_i_2 ;
  input [3:0]\q[16]_i_2 ;
  input [3:0]\q[20]_i_2 ;
  input [3:0]\q[24]_i_2 ;
  input [3:0]\q[28]_i_2 ;

  wire [30:0]Q;
  wire [3:0]S;
  wire [31:0]d1;
  wire [3:0]\q[12]_i_2 ;
  wire [3:0]\q[16]_i_2 ;
  wire [3:0]\q[20]_i_2 ;
  wire [3:0]\q[24]_i_2 ;
  wire [3:0]\q[28]_i_2 ;
  wire [3:0]\q[4]_i_2 ;
  wire [3:0]\q[8]_i_2 ;
  wire y_carry__0_n_0;
  wire y_carry__0_n_1;
  wire y_carry__0_n_2;
  wire y_carry__0_n_3;
  wire y_carry__1_n_0;
  wire y_carry__1_n_1;
  wire y_carry__1_n_2;
  wire y_carry__1_n_3;
  wire y_carry__2_n_0;
  wire y_carry__2_n_1;
  wire y_carry__2_n_2;
  wire y_carry__2_n_3;
  wire y_carry__3_n_0;
  wire y_carry__3_n_1;
  wire y_carry__3_n_2;
  wire y_carry__3_n_3;
  wire y_carry__4_n_0;
  wire y_carry__4_n_1;
  wire y_carry__4_n_2;
  wire y_carry__4_n_3;
  wire y_carry__5_n_0;
  wire y_carry__5_n_1;
  wire y_carry__5_n_2;
  wire y_carry__5_n_3;
  wire y_carry__6_n_1;
  wire y_carry__6_n_2;
  wire y_carry__6_n_3;
  wire y_carry_n_0;
  wire y_carry_n_1;
  wire y_carry_n_2;
  wire y_carry_n_3;
  wire [3:3]NLW_y_carry__6_CO_UNCONNECTED;

  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 y_carry
       (.CI(1'b0),
        .CO({y_carry_n_0,y_carry_n_1,y_carry_n_2,y_carry_n_3}),
        .CYINIT(1'b0),
        .DI(Q[3:0]),
        .O(d1[3:0]),
        .S(S));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 y_carry__0
       (.CI(y_carry_n_0),
        .CO({y_carry__0_n_0,y_carry__0_n_1,y_carry__0_n_2,y_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(Q[7:4]),
        .O(d1[7:4]),
        .S(\q[4]_i_2 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 y_carry__1
       (.CI(y_carry__0_n_0),
        .CO({y_carry__1_n_0,y_carry__1_n_1,y_carry__1_n_2,y_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(Q[11:8]),
        .O(d1[11:8]),
        .S(\q[8]_i_2 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 y_carry__2
       (.CI(y_carry__1_n_0),
        .CO({y_carry__2_n_0,y_carry__2_n_1,y_carry__2_n_2,y_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI(Q[15:12]),
        .O(d1[15:12]),
        .S(\q[12]_i_2 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 y_carry__3
       (.CI(y_carry__2_n_0),
        .CO({y_carry__3_n_0,y_carry__3_n_1,y_carry__3_n_2,y_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI(Q[19:16]),
        .O(d1[19:16]),
        .S(\q[16]_i_2 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 y_carry__4
       (.CI(y_carry__3_n_0),
        .CO({y_carry__4_n_0,y_carry__4_n_1,y_carry__4_n_2,y_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI(Q[23:20]),
        .O(d1[23:20]),
        .S(\q[20]_i_2 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 y_carry__5
       (.CI(y_carry__4_n_0),
        .CO({y_carry__5_n_0,y_carry__5_n_1,y_carry__5_n_2,y_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI(Q[27:24]),
        .O(d1[27:24]),
        .S(\q[24]_i_2 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 y_carry__6
       (.CI(y_carry__5_n_0),
        .CO({NLW_y_carry__6_CO_UNCONNECTED[3],y_carry__6_n_1,y_carry__6_n_2,y_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,Q[30:28]}),
        .O(d1[31:28]),
        .S(\q[28]_i_2 ));
endmodule

(* ORIG_REF_NAME = "alu" *) 
module design_1_top_0_0_alu
   (\q_reg[30] ,
    result1_carry__6_i_5,
    \q_reg[3] ,
    ALUResult,
    \ALUResult[0]_INST_0_i_11_0 ,
    \ALUResult[31]_INST_0_i_3 ,
    result1_carry__2_i_15_0,
    \q_reg[30]_0 ,
    \ALUResult[31]_INST_0_0 ,
    \q[31]_i_59_0 ,
    \q_reg[16] ,
    wd3,
    \q_reg[19] ,
    \q[31]_i_57_0 ,
    \q_reg[18] ,
    \q_reg[23] ,
    \q[31]_i_53_0 ,
    \q_reg[24] ,
    \q[31]_i_55_0 ,
    \q_reg[26] ,
    \q_reg[27] ,
    \q_reg[30]_1 ,
    sum_carry__5_0,
    sum_carry__5_1,
    sum_carry__3_0,
    sum_carry__3_1,
    \ALUResult[31]_INST_0_i_3_0 ,
    \ALUResult[31]_INST_0_i_3_1 ,
    \ALUResult[31]_INST_0_i_3_2 ,
    \q_reg[2] ,
    \q_reg[3]_0 ,
    \q_reg[4] ,
    \q_reg[5] ,
    \q_reg[6] ,
    \q_reg[7] ,
    \q_reg[8] ,
    \ALUResult[30]_INST_0_i_6_0 ,
    immext,
    \ALUResult[3]_INST_0_i_4_0 ,
    \ALUResult[4]_INST_0_i_5_0 ,
    \WriteData[31]_INST_0_i_2_0 ,
    \ALUResult[30]_INST_0_i_5_0 ,
    \ALUResult[4]_INST_0_i_4_0 ,
    \ALUResult[4]_INST_0_i_6_0 ,
    y_carry_i_5_0,
    \ALUResult[0]_INST_0_i_6_0 ,
    \ALUResult[30]_INST_0_i_4_0 ,
    \q_reg[10] ,
    \q_reg[11] ,
    \q_reg[14] ,
    \q_reg[20] ,
    \q_reg[22] ,
    \q_reg[28] ,
    y_carry_i_5_1,
    \ALUResult[4]_INST_0_i_5_1 ,
    \addressM[3] ,
    SrcA,
    S,
    \addressM[7] ,
    \addressM[11] ,
    \addressM[15] ,
    \addressM[19] ,
    \addressM[23] ,
    \addressM[27] ,
    \addressM[31] ,
    DI,
    w_carry__0_0,
    w_carry__1_0,
    w_carry__1_1,
    w_carry__2_0,
    w_carry__2_1,
    \ALUResult[0]_INST_0_i_11_1 ,
    \ALUResult[0]_INST_0_i_11_2 ,
    result2,
    \ALUResult[1]_INST_0_i_3 ,
    \ALUResult[1]_INST_0_i_3_0 ,
    p_0_in,
    \ALUResult[5]_INST_0_i_5_0 ,
    \ALUResult[9]_INST_0_i_5 ,
    \ALUResult[13]_INST_0_i_5 ,
    \ALUResult[17]_INST_0_i_5 ,
    \ALUResult[21]_INST_0_i_5 ,
    \ALUResult[25]_INST_0_i_5 ,
    \ALUResult[29]_INST_0_i_5 ,
    Instr,
    d1,
    \addressM[0] ,
    \addressM[0]_0 ,
    \addressM[0]_1 ,
    \addressM[0]_2 ,
    ALUControl,
    \ALUResult[0]_INST_0_i_4_0 ,
    \ALUResult[0]_INST_0_i_4_1 ,
    \addressM[31]_0 ,
    \addressM[31]_1 ,
    \addressM[31]_2 ,
    \addressM[31]_3 ,
    \q[31]_i_19 ,
    \q[31]_i_17 ,
    \q[31]_i_17_0 ,
    \q[31]_i_19_0 ,
    rf_reg_r2_0_31_30_31,
    rf_reg_r1_0_31_18_23,
    rf_reg_r1_0_31_30_31_i_1__0_0,
    ReadData,
    rf_reg_r1_0_31_30_31_i_1__0_1,
    \addressM[18] ,
    \addressM[18]_0 ,
    \q[31]_i_18 ,
    \q[31]_i_18_0 ,
    rf_reg_r1_0_31_18_23_0,
    \addressM[20] ,
    \addressM[20]_0 ,
    \q[31]_i_16 ,
    \q[31]_i_16_0 ,
    \q[31]_i_17_1 ,
    \q[31]_i_17_2 ,
    rf_reg_r1_0_31_24_29,
    \addressM[27]_0 ,
    \addressM[27]_1 ,
    rf_reg_r2_0_31_30_31_0,
    \addressM[30] ,
    \addressM[30]_0 ,
    \addressM[30]_1 ,
    \ALUResult[7]_INST_0_i_3 ,
    \ALUResult[2]_INST_0_i_3 ,
    \ALUResult[3]_INST_0_i_3 ,
    \ALUResult[3]_INST_0_i_3_0 ,
    \ALUResult[4]_INST_0_i_3 ,
    \ALUResult[4]_INST_0_i_3_0 ,
    \ALUResult[5]_INST_0_i_3 ,
    \ALUResult[5]_INST_0_i_3_0 ,
    \ALUResult[6]_INST_0_i_3 ,
    \ALUResult[6]_INST_0_i_3_0 ,
    \ALUResult[7]_INST_0_i_3_0 ,
    \ALUResult[7]_INST_0_i_3_1 ,
    \ALUResult[8]_INST_0_i_3 ,
    \ALUResult[10]_INST_0_i_3 ,
    \ALUResult[11]_INST_0_i_3 ,
    \ALUResult[11]_INST_0_i_3_0 ,
    \ALUResult[14]_INST_0_i_3 ,
    \ALUResult[16]_INST_0_i_3 ,
    \ALUResult[22]_INST_0_i_1 ,
    \ALUResult[24]_INST_0_i_3 ,
    \ALUResult[26]_INST_0_i_3 ,
    \ALUResult[28]_INST_0_i_3 );
  output [25:0]\q_reg[30] ;
  output [13:0]result1_carry__6_i_5;
  output \q_reg[3] ;
  output [5:0]ALUResult;
  output \ALUResult[0]_INST_0_i_11_0 ;
  output \ALUResult[31]_INST_0_i_3 ;
  output result1_carry__2_i_15_0;
  output \q_reg[30]_0 ;
  output \ALUResult[31]_INST_0_0 ;
  output \q[31]_i_59_0 ;
  output \q_reg[16] ;
  output [3:0]wd3;
  output \q_reg[19] ;
  output \q[31]_i_57_0 ;
  output \q_reg[18] ;
  output \q_reg[23] ;
  output \q[31]_i_53_0 ;
  output \q_reg[24] ;
  output \q[31]_i_55_0 ;
  output \q_reg[26] ;
  output \q_reg[27] ;
  output \q_reg[30]_1 ;
  output sum_carry__5_0;
  output sum_carry__5_1;
  output sum_carry__3_0;
  output sum_carry__3_1;
  output \ALUResult[31]_INST_0_i_3_0 ;
  output \ALUResult[31]_INST_0_i_3_1 ;
  output \ALUResult[31]_INST_0_i_3_2 ;
  output \q_reg[2] ;
  output \q_reg[3]_0 ;
  output \q_reg[4] ;
  output \q_reg[5] ;
  output \q_reg[6] ;
  output \q_reg[7] ;
  output \q_reg[8] ;
  output \ALUResult[30]_INST_0_i_6_0 ;
  output [0:0]immext;
  output \ALUResult[3]_INST_0_i_4_0 ;
  output \ALUResult[4]_INST_0_i_5_0 ;
  output \WriteData[31]_INST_0_i_2_0 ;
  output \ALUResult[30]_INST_0_i_5_0 ;
  output \ALUResult[4]_INST_0_i_4_0 ;
  output \ALUResult[4]_INST_0_i_6_0 ;
  output y_carry_i_5_0;
  output \ALUResult[0]_INST_0_i_6_0 ;
  output \ALUResult[30]_INST_0_i_4_0 ;
  output \q_reg[10] ;
  output \q_reg[11] ;
  output \q_reg[14] ;
  output \q_reg[20] ;
  output \q_reg[22] ;
  output \q_reg[28] ;
  output y_carry_i_5_1;
  output \ALUResult[4]_INST_0_i_5_1 ;
  input \addressM[3] ;
  input [30:0]SrcA;
  input [3:0]S;
  input [3:0]\addressM[7] ;
  input [3:0]\addressM[11] ;
  input [3:0]\addressM[15] ;
  input [3:0]\addressM[19] ;
  input [3:0]\addressM[23] ;
  input [3:0]\addressM[27] ;
  input [3:0]\addressM[31] ;
  input [3:0]DI;
  input [3:0]w_carry__0_0;
  input [3:0]w_carry__1_0;
  input [3:0]w_carry__1_1;
  input [3:0]w_carry__2_0;
  input [3:0]w_carry__2_1;
  input [3:0]\ALUResult[0]_INST_0_i_11_1 ;
  input [3:0]\ALUResult[0]_INST_0_i_11_2 ;
  input [25:0]result2;
  input [0:0]\ALUResult[1]_INST_0_i_3 ;
  input [3:0]\ALUResult[1]_INST_0_i_3_0 ;
  input [2:0]p_0_in;
  input [3:0]\ALUResult[5]_INST_0_i_5_0 ;
  input [3:0]\ALUResult[9]_INST_0_i_5 ;
  input [3:0]\ALUResult[13]_INST_0_i_5 ;
  input [3:0]\ALUResult[17]_INST_0_i_5 ;
  input [3:0]\ALUResult[21]_INST_0_i_5 ;
  input [3:0]\ALUResult[25]_INST_0_i_5 ;
  input [2:0]\ALUResult[29]_INST_0_i_5 ;
  input [22:0]Instr;
  input [5:0]d1;
  input \addressM[0] ;
  input \addressM[0]_0 ;
  input \addressM[0]_1 ;
  input \addressM[0]_2 ;
  input [0:0]ALUControl;
  input \ALUResult[0]_INST_0_i_4_0 ;
  input \ALUResult[0]_INST_0_i_4_1 ;
  input \addressM[31]_0 ;
  input \addressM[31]_1 ;
  input \addressM[31]_2 ;
  input \addressM[31]_3 ;
  input \q[31]_i_19 ;
  input \q[31]_i_17 ;
  input \q[31]_i_17_0 ;
  input \q[31]_i_19_0 ;
  input rf_reg_r2_0_31_30_31;
  input rf_reg_r1_0_31_18_23;
  input rf_reg_r1_0_31_30_31_i_1__0_0;
  input [3:0]ReadData;
  input rf_reg_r1_0_31_30_31_i_1__0_1;
  input \addressM[18] ;
  input \addressM[18]_0 ;
  input \q[31]_i_18 ;
  input \q[31]_i_18_0 ;
  input rf_reg_r1_0_31_18_23_0;
  input \addressM[20] ;
  input \addressM[20]_0 ;
  input \q[31]_i_16 ;
  input \q[31]_i_16_0 ;
  input \q[31]_i_17_1 ;
  input \q[31]_i_17_2 ;
  input rf_reg_r1_0_31_24_29;
  input \addressM[27]_0 ;
  input \addressM[27]_1 ;
  input rf_reg_r2_0_31_30_31_0;
  input \addressM[30] ;
  input \addressM[30]_0 ;
  input \addressM[30]_1 ;
  input \ALUResult[7]_INST_0_i_3 ;
  input \ALUResult[2]_INST_0_i_3 ;
  input \ALUResult[3]_INST_0_i_3 ;
  input \ALUResult[3]_INST_0_i_3_0 ;
  input \ALUResult[4]_INST_0_i_3 ;
  input \ALUResult[4]_INST_0_i_3_0 ;
  input \ALUResult[5]_INST_0_i_3 ;
  input \ALUResult[5]_INST_0_i_3_0 ;
  input \ALUResult[6]_INST_0_i_3 ;
  input \ALUResult[6]_INST_0_i_3_0 ;
  input \ALUResult[7]_INST_0_i_3_0 ;
  input \ALUResult[7]_INST_0_i_3_1 ;
  input \ALUResult[8]_INST_0_i_3 ;
  input \ALUResult[10]_INST_0_i_3 ;
  input \ALUResult[11]_INST_0_i_3 ;
  input \ALUResult[11]_INST_0_i_3_0 ;
  input \ALUResult[14]_INST_0_i_3 ;
  input \ALUResult[16]_INST_0_i_3 ;
  input \ALUResult[22]_INST_0_i_1 ;
  input \ALUResult[24]_INST_0_i_3 ;
  input \ALUResult[26]_INST_0_i_3 ;
  input \ALUResult[28]_INST_0_i_3 ;

  wire [0:0]ALUControl;
  wire [5:0]ALUResult;
  wire \ALUResult[0]_INST_0_i_11_0 ;
  wire [3:0]\ALUResult[0]_INST_0_i_11_1 ;
  wire [3:0]\ALUResult[0]_INST_0_i_11_2 ;
  wire \ALUResult[0]_INST_0_i_11_n_0 ;
  wire \ALUResult[0]_INST_0_i_4_0 ;
  wire \ALUResult[0]_INST_0_i_4_1 ;
  wire \ALUResult[0]_INST_0_i_6_0 ;
  wire \ALUResult[10]_INST_0_i_3 ;
  wire \ALUResult[11]_INST_0_i_3 ;
  wire \ALUResult[11]_INST_0_i_3_0 ;
  wire [3:0]\ALUResult[13]_INST_0_i_5 ;
  wire \ALUResult[14]_INST_0_i_3 ;
  wire \ALUResult[16]_INST_0_i_3 ;
  wire [3:0]\ALUResult[17]_INST_0_i_5 ;
  wire [0:0]\ALUResult[1]_INST_0_i_3 ;
  wire [3:0]\ALUResult[1]_INST_0_i_3_0 ;
  wire [3:0]\ALUResult[21]_INST_0_i_5 ;
  wire \ALUResult[22]_INST_0_i_1 ;
  wire \ALUResult[24]_INST_0_i_3 ;
  wire [3:0]\ALUResult[25]_INST_0_i_5 ;
  wire \ALUResult[26]_INST_0_i_3 ;
  wire \ALUResult[28]_INST_0_i_3 ;
  wire [2:0]\ALUResult[29]_INST_0_i_5 ;
  wire \ALUResult[2]_INST_0_i_3 ;
  wire \ALUResult[30]_INST_0_i_4_0 ;
  wire \ALUResult[30]_INST_0_i_5_0 ;
  wire \ALUResult[30]_INST_0_i_6_0 ;
  wire \ALUResult[31]_INST_0_0 ;
  wire \ALUResult[31]_INST_0_i_3 ;
  wire \ALUResult[31]_INST_0_i_3_0 ;
  wire \ALUResult[31]_INST_0_i_3_1 ;
  wire \ALUResult[31]_INST_0_i_3_2 ;
  wire \ALUResult[31]_INST_0_i_4_n_0 ;
  wire \ALUResult[3]_INST_0_i_3 ;
  wire \ALUResult[3]_INST_0_i_3_0 ;
  wire \ALUResult[3]_INST_0_i_4_0 ;
  wire \ALUResult[4]_INST_0_i_3 ;
  wire \ALUResult[4]_INST_0_i_3_0 ;
  wire \ALUResult[4]_INST_0_i_4_0 ;
  wire \ALUResult[4]_INST_0_i_5_0 ;
  wire \ALUResult[4]_INST_0_i_5_1 ;
  wire \ALUResult[4]_INST_0_i_6_0 ;
  wire \ALUResult[5]_INST_0_i_3 ;
  wire \ALUResult[5]_INST_0_i_3_0 ;
  wire [3:0]\ALUResult[5]_INST_0_i_5_0 ;
  wire \ALUResult[6]_INST_0_i_3 ;
  wire \ALUResult[6]_INST_0_i_3_0 ;
  wire \ALUResult[7]_INST_0_i_3 ;
  wire \ALUResult[7]_INST_0_i_3_0 ;
  wire \ALUResult[7]_INST_0_i_3_1 ;
  wire \ALUResult[8]_INST_0_i_3 ;
  wire [3:0]\ALUResult[9]_INST_0_i_5 ;
  wire [3:0]DI;
  wire [22:0]Instr;
  wire [3:0]ReadData;
  wire [3:0]S;
  wire [30:0]SrcA;
  wire \WriteData[31]_INST_0_i_2_0 ;
  wire \addressM[0] ;
  wire \addressM[0]_0 ;
  wire \addressM[0]_1 ;
  wire \addressM[0]_2 ;
  wire [3:0]\addressM[11] ;
  wire [3:0]\addressM[15] ;
  wire \addressM[18] ;
  wire \addressM[18]_0 ;
  wire [3:0]\addressM[19] ;
  wire \addressM[20] ;
  wire \addressM[20]_0 ;
  wire [3:0]\addressM[23] ;
  wire [3:0]\addressM[27] ;
  wire \addressM[27]_0 ;
  wire \addressM[27]_1 ;
  wire \addressM[30] ;
  wire \addressM[30]_0 ;
  wire \addressM[30]_1 ;
  wire [3:0]\addressM[31] ;
  wire \addressM[31]_0 ;
  wire \addressM[31]_1 ;
  wire \addressM[31]_2 ;
  wire \addressM[31]_3 ;
  wire \addressM[3] ;
  wire [3:0]\addressM[7] ;
  wire [5:0]d1;
  wire [30:0]data0;
  wire [31:2]data6;
  wire [0:0]immext;
  wire [2:0]p_0_in;
  wire p_3_in;
  wire \q[31]_i_16 ;
  wire \q[31]_i_16_0 ;
  wire \q[31]_i_17 ;
  wire \q[31]_i_17_0 ;
  wire \q[31]_i_17_1 ;
  wire \q[31]_i_17_2 ;
  wire \q[31]_i_18 ;
  wire \q[31]_i_18_0 ;
  wire \q[31]_i_19 ;
  wire \q[31]_i_19_0 ;
  wire \q[31]_i_53_0 ;
  wire \q[31]_i_53_n_0 ;
  wire \q[31]_i_55_0 ;
  wire \q[31]_i_55_n_0 ;
  wire \q[31]_i_57_0 ;
  wire \q[31]_i_57_n_0 ;
  wire \q[31]_i_59_0 ;
  wire \q[31]_i_59_n_0 ;
  wire \q_reg[10] ;
  wire \q_reg[11] ;
  wire \q_reg[14] ;
  wire \q_reg[16] ;
  wire \q_reg[18] ;
  wire \q_reg[19] ;
  wire \q_reg[20] ;
  wire \q_reg[22] ;
  wire \q_reg[23] ;
  wire \q_reg[24] ;
  wire \q_reg[26] ;
  wire \q_reg[27] ;
  wire \q_reg[28] ;
  wire \q_reg[2] ;
  wire [25:0]\q_reg[30] ;
  wire \q_reg[30]_0 ;
  wire \q_reg[30]_1 ;
  wire \q_reg[3] ;
  wire \q_reg[3]_0 ;
  wire \q_reg[4] ;
  wire \q_reg[5] ;
  wire \q_reg[6] ;
  wire \q_reg[7] ;
  wire \q_reg[8] ;
  wire result1_carry__0_n_0;
  wire result1_carry__0_n_1;
  wire result1_carry__0_n_2;
  wire result1_carry__0_n_3;
  wire result1_carry__1_n_0;
  wire result1_carry__1_n_1;
  wire result1_carry__1_n_2;
  wire result1_carry__1_n_3;
  wire result1_carry__2_i_15_0;
  wire result1_carry__2_n_0;
  wire result1_carry__2_n_1;
  wire result1_carry__2_n_2;
  wire result1_carry__2_n_3;
  wire result1_carry__3_n_0;
  wire result1_carry__3_n_1;
  wire result1_carry__3_n_2;
  wire result1_carry__3_n_3;
  wire result1_carry__4_n_0;
  wire result1_carry__4_n_1;
  wire result1_carry__4_n_2;
  wire result1_carry__4_n_3;
  wire result1_carry__5_n_0;
  wire result1_carry__5_n_1;
  wire result1_carry__5_n_2;
  wire result1_carry__5_n_3;
  wire [13:0]result1_carry__6_i_5;
  wire result1_carry__6_n_2;
  wire result1_carry__6_n_3;
  wire result1_carry_n_0;
  wire result1_carry_n_1;
  wire result1_carry_n_2;
  wire result1_carry_n_3;
  wire [25:0]result2;
  wire rf_reg_r1_0_31_18_23;
  wire rf_reg_r1_0_31_18_23_0;
  wire rf_reg_r1_0_31_18_23_i_13_n_0;
  wire rf_reg_r1_0_31_18_23_i_9_n_0;
  wire rf_reg_r1_0_31_24_29;
  wire rf_reg_r1_0_31_24_29_i_11_n_0;
  wire rf_reg_r1_0_31_30_31_i_1__0_0;
  wire rf_reg_r1_0_31_30_31_i_1__0_1;
  wire rf_reg_r1_0_31_30_31_i_2_n_0;
  wire rf_reg_r2_0_31_30_31;
  wire rf_reg_r2_0_31_30_31_0;
  wire sum_carry__0_n_0;
  wire sum_carry__0_n_1;
  wire sum_carry__0_n_2;
  wire sum_carry__0_n_3;
  wire sum_carry__1_n_0;
  wire sum_carry__1_n_1;
  wire sum_carry__1_n_2;
  wire sum_carry__1_n_3;
  wire sum_carry__2_n_0;
  wire sum_carry__2_n_1;
  wire sum_carry__2_n_2;
  wire sum_carry__2_n_3;
  wire sum_carry__3_0;
  wire sum_carry__3_1;
  wire sum_carry__3_n_0;
  wire sum_carry__3_n_1;
  wire sum_carry__3_n_2;
  wire sum_carry__3_n_3;
  wire sum_carry__4_n_0;
  wire sum_carry__4_n_1;
  wire sum_carry__4_n_2;
  wire sum_carry__4_n_3;
  wire sum_carry__5_0;
  wire sum_carry__5_1;
  wire sum_carry__5_n_0;
  wire sum_carry__5_n_1;
  wire sum_carry__5_n_2;
  wire sum_carry__5_n_3;
  wire sum_carry__6_n_1;
  wire sum_carry__6_n_2;
  wire sum_carry__6_n_3;
  wire sum_carry_n_0;
  wire sum_carry_n_1;
  wire sum_carry_n_2;
  wire sum_carry_n_3;
  wire w;
  wire [3:0]w_carry__0_0;
  wire w_carry__0_n_0;
  wire w_carry__0_n_1;
  wire w_carry__0_n_2;
  wire w_carry__0_n_3;
  wire [3:0]w_carry__1_0;
  wire [3:0]w_carry__1_1;
  wire w_carry__1_n_0;
  wire w_carry__1_n_1;
  wire w_carry__1_n_2;
  wire w_carry__1_n_3;
  wire [3:0]w_carry__2_0;
  wire [3:0]w_carry__2_1;
  wire w_carry__2_n_1;
  wire w_carry__2_n_2;
  wire w_carry__2_n_3;
  wire w_carry_n_0;
  wire w_carry_n_1;
  wire w_carry_n_2;
  wire w_carry_n_3;
  wire [3:0]wd3;
  wire y_carry_i_5_0;
  wire y_carry_i_5_1;
  wire [3:2]NLW_result1_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_result1_carry__6_O_UNCONNECTED;
  wire [3:3]NLW_sum_carry__6_CO_UNCONNECTED;
  wire [3:0]NLW_w_carry_O_UNCONNECTED;
  wire [3:0]NLW_w_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_w_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_w_carry__2_O_UNCONNECTED;

  LUT6 #(
    .INIT(64'h88888888BBBBBBB8)) 
    \ALUResult[0]_INST_0 
       (.I0(\addressM[0] ),
        .I1(\addressM[0]_0 ),
        .I2(\addressM[0]_1 ),
        .I3(\addressM[0]_2 ),
        .I4(\ALUResult[0]_INST_0_i_11_0 ),
        .I5(\ALUResult[31]_INST_0_i_3 ),
        .O(ALUResult[0]));
  LUT6 #(
    .INIT(64'h4777774744474744)) 
    \ALUResult[0]_INST_0_i_11 
       (.I0(w),
        .I1(result1_carry__2_i_15_0),
        .I2(p_3_in),
        .I3(ALUControl),
        .I4(\ALUResult[0]_INST_0_i_4_0 ),
        .I5(\ALUResult[0]_INST_0_i_4_1 ),
        .O(\ALUResult[0]_INST_0_i_11_n_0 ));
  LUT5 #(
    .INIT(32'h0000BF00)) 
    \ALUResult[0]_INST_0_i_4 
       (.I0(Instr[0]),
        .I1(Instr[2]),
        .I2(Instr[10]),
        .I3(ALUControl),
        .I4(\ALUResult[0]_INST_0_i_11_n_0 ),
        .O(\ALUResult[0]_INST_0_i_11_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \ALUResult[0]_INST_0_i_5 
       (.I0(data0[0]),
        .I1(\addressM[31]_2 ),
        .O(\ALUResult[31]_INST_0_i_3 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ALUResult[0]_INST_0_i_6 
       (.I0(Instr[0]),
        .I1(Instr[3]),
        .O(\ALUResult[0]_INST_0_i_6_0 ));
  LUT6 #(
    .INIT(64'h8BB80000FFFFFFFF)) 
    \ALUResult[10]_INST_0_i_5 
       (.I0(data6[10]),
        .I1(ALUControl),
        .I2(\ALUResult[10]_INST_0_i_3 ),
        .I3(SrcA[10]),
        .I4(\ALUResult[7]_INST_0_i_3 ),
        .I5(\addressM[31]_2 ),
        .O(\q_reg[10] ));
  LUT6 #(
    .INIT(64'h5555540400005404)) 
    \ALUResult[11]_INST_0_i_4 
       (.I0(\ALUResult[30]_INST_0_i_5_0 ),
        .I1(Instr[16]),
        .I2(y_carry_i_5_0),
        .I3(Instr[5]),
        .I4(\ALUResult[4]_INST_0_i_5_0 ),
        .I5(Instr[22]),
        .O(\ALUResult[4]_INST_0_i_5_1 ));
  LUT6 #(
    .INIT(64'hF9000900FFFFFFFF)) 
    \ALUResult[11]_INST_0_i_6 
       (.I0(\ALUResult[11]_INST_0_i_3 ),
        .I1(\ALUResult[11]_INST_0_i_3_0 ),
        .I2(ALUControl),
        .I3(\ALUResult[7]_INST_0_i_3 ),
        .I4(data6[11]),
        .I5(\addressM[31]_2 ),
        .O(\q_reg[11] ));
  LUT6 #(
    .INIT(64'hB88B0000FFFFFFFF)) 
    \ALUResult[14]_INST_0_i_5 
       (.I0(data6[14]),
        .I1(ALUControl),
        .I2(\ALUResult[14]_INST_0_i_3 ),
        .I3(SrcA[14]),
        .I4(\ALUResult[7]_INST_0_i_3 ),
        .I5(\addressM[31]_2 ),
        .O(\q_reg[14] ));
  LUT6 #(
    .INIT(64'h8BB80000FFFFFFFF)) 
    \ALUResult[16]_INST_0_i_5 
       (.I0(data6[16]),
        .I1(ALUControl),
        .I2(\ALUResult[16]_INST_0_i_3 ),
        .I3(SrcA[16]),
        .I4(\ALUResult[7]_INST_0_i_3 ),
        .I5(\addressM[31]_2 ),
        .O(\q_reg[16] ));
  LUT6 #(
    .INIT(64'hFFF0CCCCF0008888)) 
    \ALUResult[18]_INST_0 
       (.I0(data0[18]),
        .I1(\addressM[18] ),
        .I2(\addressM[18]_0 ),
        .I3(SrcA[18]),
        .I4(\addressM[0]_0 ),
        .I5(\addressM[31]_2 ),
        .O(ALUResult[1]));
  LUT6 #(
    .INIT(64'h8BB80000FFFFFFFF)) 
    \ALUResult[18]_INST_0_i_5 
       (.I0(data6[18]),
        .I1(ALUControl),
        .I2(\addressM[18]_0 ),
        .I3(SrcA[18]),
        .I4(\ALUResult[7]_INST_0_i_3 ),
        .I5(\addressM[31]_2 ),
        .O(\q_reg[18] ));
  LUT5 #(
    .INIT(32'hACAC00AC)) 
    \ALUResult[1]_INST_0_i_4 
       (.I0(Instr[6]),
        .I1(Instr[17]),
        .I2(\ALUResult[3]_INST_0_i_4_0 ),
        .I3(Instr[0]),
        .I4(Instr[4]),
        .O(immext));
  LUT6 #(
    .INIT(64'hF0FFCCCC00F08888)) 
    \ALUResult[20]_INST_0 
       (.I0(data0[20]),
        .I1(\addressM[20] ),
        .I2(SrcA[20]),
        .I3(\addressM[20]_0 ),
        .I4(\addressM[0]_0 ),
        .I5(\addressM[31]_2 ),
        .O(ALUResult[2]));
  LUT6 #(
    .INIT(64'hB88B0000FFFFFFFF)) 
    \ALUResult[20]_INST_0_i_5 
       (.I0(data6[20]),
        .I1(ALUControl),
        .I2(SrcA[20]),
        .I3(\addressM[20]_0 ),
        .I4(\ALUResult[7]_INST_0_i_3 ),
        .I5(\addressM[31]_2 ),
        .O(\q_reg[20] ));
  LUT6 #(
    .INIT(64'hB88B0000FFFFFFFF)) 
    \ALUResult[22]_INST_0_i_5 
       (.I0(data6[22]),
        .I1(ALUControl),
        .I2(SrcA[22]),
        .I3(\ALUResult[22]_INST_0_i_1 ),
        .I4(\ALUResult[7]_INST_0_i_3 ),
        .I5(\addressM[31]_2 ),
        .O(\q_reg[22] ));
  LUT6 #(
    .INIT(64'hB88B0000FFFFFFFF)) 
    \ALUResult[24]_INST_0_i_5 
       (.I0(data6[24]),
        .I1(ALUControl),
        .I2(\ALUResult[24]_INST_0_i_3 ),
        .I3(SrcA[24]),
        .I4(\ALUResult[7]_INST_0_i_3 ),
        .I5(\addressM[31]_2 ),
        .O(\q_reg[24] ));
  LUT6 #(
    .INIT(64'hB88B0000FFFFFFFF)) 
    \ALUResult[26]_INST_0_i_5 
       (.I0(data6[26]),
        .I1(ALUControl),
        .I2(\ALUResult[26]_INST_0_i_3 ),
        .I3(SrcA[26]),
        .I4(\ALUResult[7]_INST_0_i_3 ),
        .I5(\addressM[31]_2 ),
        .O(\q_reg[26] ));
  LUT6 #(
    .INIT(64'hBF2FBF20B020B020)) 
    \ALUResult[27]_INST_0 
       (.I0(SrcA[27]),
        .I1(\addressM[27]_0 ),
        .I2(\addressM[0]_0 ),
        .I3(\addressM[31]_2 ),
        .I4(data0[27]),
        .I5(\addressM[27]_1 ),
        .O(ALUResult[3]));
  LUT6 #(
    .INIT(64'hB88B0000FFFFFFFF)) 
    \ALUResult[28]_INST_0_i_5 
       (.I0(data6[28]),
        .I1(ALUControl),
        .I2(\ALUResult[28]_INST_0_i_3 ),
        .I3(SrcA[28]),
        .I4(\ALUResult[7]_INST_0_i_3 ),
        .I5(\addressM[31]_2 ),
        .O(\q_reg[28] ));
  LUT5 #(
    .INIT(32'h808C8C80)) 
    \ALUResult[2]_INST_0_i_5 
       (.I0(data6[2]),
        .I1(\ALUResult[7]_INST_0_i_3 ),
        .I2(ALUControl),
        .I3(\ALUResult[2]_INST_0_i_3 ),
        .I4(SrcA[2]),
        .O(\q_reg[2] ));
  LUT6 #(
    .INIT(64'h7F1F7F1070107010)) 
    \ALUResult[30]_INST_0 
       (.I0(\addressM[30] ),
        .I1(\addressM[30]_0 ),
        .I2(\addressM[0]_0 ),
        .I3(\addressM[31]_2 ),
        .I4(data0[30]),
        .I5(\addressM[30]_1 ),
        .O(ALUResult[4]));
  LUT5 #(
    .INIT(32'h00000001)) 
    \ALUResult[30]_INST_0_i_4 
       (.I0(Instr[14]),
        .I1(Instr[13]),
        .I2(Instr[11]),
        .I3(Instr[12]),
        .I4(Instr[15]),
        .O(\ALUResult[30]_INST_0_i_4_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ALUResult[30]_INST_0_i_5 
       (.I0(Instr[0]),
        .I1(Instr[4]),
        .O(\ALUResult[30]_INST_0_i_5_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00000DDD)) 
    \ALUResult[30]_INST_0_i_6 
       (.I0(Instr[4]),
        .I1(Instr[0]),
        .I2(Instr[3]),
        .I3(Instr[2]),
        .I4(Instr[1]),
        .O(\ALUResult[30]_INST_0_i_6_0 ));
  LUT6 #(
    .INIT(64'hAAAAFFEFAAAAFAEA)) 
    \ALUResult[31]_INST_0 
       (.I0(\addressM[31]_0 ),
        .I1(\addressM[31]_1 ),
        .I2(\addressM[31]_2 ),
        .I3(\ALUResult[31]_INST_0_i_4_n_0 ),
        .I4(\addressM[0]_0 ),
        .I5(p_3_in),
        .O(ALUResult[5]));
  LUT6 #(
    .INIT(64'h0808080000000800)) 
    \ALUResult[31]_INST_0_i_4 
       (.I0(Instr[10]),
        .I1(Instr[2]),
        .I2(Instr[0]),
        .I3(\addressM[31]_3 ),
        .I4(ALUControl),
        .I5(data6[31]),
        .O(\ALUResult[31]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h000F0F44)) 
    \ALUResult[3]_INST_0_i_4 
       (.I0(Instr[2]),
        .I1(Instr[3]),
        .I2(Instr[0]),
        .I3(Instr[4]),
        .I4(Instr[1]),
        .O(\ALUResult[3]_INST_0_i_4_0 ));
  LUT5 #(
    .INIT(32'h8C80808C)) 
    \ALUResult[3]_INST_0_i_6 
       (.I0(data6[3]),
        .I1(\ALUResult[7]_INST_0_i_3 ),
        .I2(ALUControl),
        .I3(\ALUResult[3]_INST_0_i_3 ),
        .I4(\ALUResult[3]_INST_0_i_3_0 ),
        .O(\q_reg[3]_0 ));
  LUT6 #(
    .INIT(64'h11111011DDDDDFDD)) 
    \ALUResult[4]_INST_0_i_4 
       (.I0(Instr[7]),
        .I1(Instr[1]),
        .I2(Instr[2]),
        .I3(Instr[3]),
        .I4(Instr[4]),
        .I5(Instr[20]),
        .O(\ALUResult[4]_INST_0_i_4_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h35)) 
    \ALUResult[4]_INST_0_i_5 
       (.I0(Instr[4]),
        .I1(Instr[1]),
        .I2(Instr[0]),
        .O(\ALUResult[4]_INST_0_i_5_0 ));
  LUT6 #(
    .INIT(64'h11111011DDDDDFDD)) 
    \ALUResult[4]_INST_0_i_6 
       (.I0(Instr[20]),
        .I1(Instr[1]),
        .I2(Instr[2]),
        .I3(Instr[3]),
        .I4(Instr[4]),
        .I5(Instr[7]),
        .O(\ALUResult[4]_INST_0_i_6_0 ));
  LUT4 #(
    .INIT(16'h8BB8)) 
    \ALUResult[4]_INST_0_i_8 
       (.I0(data6[4]),
        .I1(ALUControl),
        .I2(\ALUResult[4]_INST_0_i_3 ),
        .I3(\ALUResult[4]_INST_0_i_3_0 ),
        .O(\q_reg[4] ));
  LUT4 #(
    .INIT(16'hB88B)) 
    \ALUResult[5]_INST_0_i_5 
       (.I0(data6[5]),
        .I1(ALUControl),
        .I2(\ALUResult[5]_INST_0_i_3 ),
        .I3(\ALUResult[5]_INST_0_i_3_0 ),
        .O(\q_reg[5] ));
  LUT4 #(
    .INIT(16'hB88B)) 
    \ALUResult[6]_INST_0_i_5 
       (.I0(data6[6]),
        .I1(ALUControl),
        .I2(\ALUResult[6]_INST_0_i_3 ),
        .I3(\ALUResult[6]_INST_0_i_3_0 ),
        .O(\q_reg[6] ));
  LUT5 #(
    .INIT(32'h8C80808C)) 
    \ALUResult[7]_INST_0_i_5 
       (.I0(data6[7]),
        .I1(\ALUResult[7]_INST_0_i_3 ),
        .I2(ALUControl),
        .I3(\ALUResult[7]_INST_0_i_3_0 ),
        .I4(\ALUResult[7]_INST_0_i_3_1 ),
        .O(\q_reg[7] ));
  LUT4 #(
    .INIT(16'hB88B)) 
    \ALUResult[8]_INST_0_i_5 
       (.I0(result1_carry__6_i_5[1]),
        .I1(ALUControl),
        .I2(\ALUResult[8]_INST_0_i_3 ),
        .I3(SrcA[8]),
        .O(\q_reg[8] ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \WriteData[31]_INST_0_i_2 
       (.I0(Instr[20]),
        .I1(Instr[19]),
        .I2(Instr[17]),
        .I3(Instr[16]),
        .I4(Instr[18]),
        .O(\WriteData[31]_INST_0_i_2_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFAEE0A22)) 
    \q[0]_i_2 
       (.I0(ALUResult[0]),
        .I1(Instr[4]),
        .I2(Instr[1]),
        .I3(Instr[0]),
        .I4(d1[0]),
        .O(\q_reg[3] ));
  LUT5 #(
    .INIT(32'hFAEE0A22)) 
    \q[18]_i_2 
       (.I0(ALUResult[1]),
        .I1(Instr[4]),
        .I2(Instr[1]),
        .I3(Instr[0]),
        .I4(d1[1]),
        .O(\q_reg[19] ));
  LUT5 #(
    .INIT(32'hFAEE0A22)) 
    \q[20]_i_2 
       (.I0(ALUResult[2]),
        .I1(Instr[4]),
        .I2(Instr[1]),
        .I3(Instr[0]),
        .I4(d1[2]),
        .O(\q_reg[23] ));
  LUT5 #(
    .INIT(32'hFAEE0A22)) 
    \q[27]_i_2 
       (.I0(ALUResult[3]),
        .I1(Instr[4]),
        .I2(Instr[1]),
        .I3(Instr[0]),
        .I4(d1[3]),
        .O(\q_reg[27] ));
  LUT5 #(
    .INIT(32'hFAEE0A22)) 
    \q[30]_i_2 
       (.I0(ALUResult[4]),
        .I1(Instr[4]),
        .I2(Instr[1]),
        .I3(Instr[0]),
        .I4(d1[4]),
        .O(\q_reg[30]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFAEE0A22)) 
    \q[31]_i_3 
       (.I0(ALUResult[5]),
        .I1(Instr[4]),
        .I2(Instr[1]),
        .I3(Instr[0]),
        .I4(d1[5]),
        .O(\q_reg[30]_0 ));
  LUT6 #(
    .INIT(64'h00000000FAEAAAEA)) 
    \q[31]_i_30 
       (.I0(\q_reg[24] ),
        .I1(\q[31]_i_16 ),
        .I2(\q[31]_i_17 ),
        .I3(\q[31]_i_17_0 ),
        .I4(\q[31]_i_16_0 ),
        .I5(\q[31]_i_53_n_0 ),
        .O(\q[31]_i_53_0 ));
  LUT6 #(
    .INIT(64'h00000000FAEAAAEA)) 
    \q[31]_i_34 
       (.I0(\q_reg[26] ),
        .I1(\q[31]_i_17_1 ),
        .I2(\q[31]_i_17 ),
        .I3(\q[31]_i_17_0 ),
        .I4(\q[31]_i_17_2 ),
        .I5(\q[31]_i_55_n_0 ),
        .O(\q[31]_i_55_0 ));
  LUT6 #(
    .INIT(64'h00000000FAEAAAEA)) 
    \q[31]_i_39 
       (.I0(\q_reg[18] ),
        .I1(\q[31]_i_18 ),
        .I2(\q[31]_i_17 ),
        .I3(\q[31]_i_17_0 ),
        .I4(\q[31]_i_18_0 ),
        .I5(\q[31]_i_57_n_0 ),
        .O(\q[31]_i_57_0 ));
  LUT6 #(
    .INIT(64'h00000000FAEAAAEA)) 
    \q[31]_i_42 
       (.I0(\q_reg[16] ),
        .I1(\q[31]_i_19 ),
        .I2(\q[31]_i_17 ),
        .I3(\q[31]_i_17_0 ),
        .I4(\q[31]_i_19_0 ),
        .I5(\q[31]_i_59_n_0 ),
        .O(\q[31]_i_59_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \q[31]_i_50 
       (.I0(\q_reg[30] [8]),
        .I1(\addressM[31]_2 ),
        .O(\ALUResult[31]_INST_0_i_3_2 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \q[31]_i_51 
       (.I0(\q_reg[30] [11]),
        .I1(\addressM[31]_2 ),
        .O(\ALUResult[31]_INST_0_i_3_1 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \q[31]_i_52 
       (.I0(\q_reg[30] [12]),
        .I1(\addressM[31]_2 ),
        .O(\ALUResult[31]_INST_0_i_3_0 ));
  LUT6 #(
    .INIT(64'h200020002000FFFF)) 
    \q[31]_i_53 
       (.I0(Instr[2]),
        .I1(Instr[0]),
        .I2(Instr[9]),
        .I3(Instr[10]),
        .I4(\addressM[31]_2 ),
        .I5(\q_reg[30] [21]),
        .O(\q[31]_i_53_n_0 ));
  LUT6 #(
    .INIT(64'h200020002000FFFF)) 
    \q[31]_i_54 
       (.I0(Instr[2]),
        .I1(Instr[0]),
        .I2(Instr[9]),
        .I3(Instr[10]),
        .I4(\addressM[31]_2 ),
        .I5(\q_reg[30] [22]),
        .O(sum_carry__5_1));
  LUT6 #(
    .INIT(64'h200020002000FFFF)) 
    \q[31]_i_55 
       (.I0(Instr[2]),
        .I1(Instr[0]),
        .I2(Instr[9]),
        .I3(Instr[10]),
        .I4(\addressM[31]_2 ),
        .I5(\q_reg[30] [23]),
        .O(\q[31]_i_55_n_0 ));
  LUT6 #(
    .INIT(64'h200020002000FFFF)) 
    \q[31]_i_56 
       (.I0(Instr[2]),
        .I1(Instr[0]),
        .I2(Instr[9]),
        .I3(Instr[10]),
        .I4(\addressM[31]_2 ),
        .I5(data0[27]),
        .O(sum_carry__5_0));
  LUT6 #(
    .INIT(64'h200020002000FFFF)) 
    \q[31]_i_57 
       (.I0(Instr[2]),
        .I1(Instr[0]),
        .I2(Instr[9]),
        .I3(Instr[10]),
        .I4(\addressM[31]_2 ),
        .I5(data0[18]),
        .O(\q[31]_i_57_n_0 ));
  LUT6 #(
    .INIT(64'h200020002000FFFF)) 
    \q[31]_i_58 
       (.I0(Instr[2]),
        .I1(Instr[0]),
        .I2(Instr[9]),
        .I3(Instr[10]),
        .I4(\addressM[31]_2 ),
        .I5(\q_reg[30] [17]),
        .O(sum_carry__3_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \q[31]_i_59 
       (.I0(\q_reg[30] [15]),
        .I1(\addressM[31]_2 ),
        .O(\q[31]_i_59_n_0 ));
  LUT3 #(
    .INIT(8'h47)) 
    \q[31]_i_6 
       (.I0(w),
        .I1(result1_carry__2_i_15_0),
        .I2(ALUResult[5]),
        .O(\ALUResult[31]_INST_0_0 ));
  LUT6 #(
    .INIT(64'h200020002000FFFF)) 
    \q[31]_i_60 
       (.I0(Instr[2]),
        .I1(Instr[0]),
        .I2(Instr[9]),
        .I3(Instr[10]),
        .I4(\addressM[31]_2 ),
        .I5(\q_reg[30] [16]),
        .O(sum_carry__3_1));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 result1_carry
       (.CI(1'b0),
        .CO({result1_carry_n_0,result1_carry_n_1,result1_carry_n_2,result1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({result2[2],\ALUResult[1]_INST_0_i_3 ,result2[1:0]}),
        .O({data6[4:2],result1_carry__6_i_5[0]}),
        .S(\ALUResult[1]_INST_0_i_3_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 result1_carry__0
       (.CI(result1_carry_n_0),
        .CO({result1_carry__0_n_0,result1_carry__0_n_1,result1_carry__0_n_2,result1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({result2[5],p_0_in[0],result2[4:3]}),
        .O({result1_carry__6_i_5[1],data6[7:5]}),
        .S(\ALUResult[5]_INST_0_i_5_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 result1_carry__1
       (.CI(result1_carry__0_n_0),
        .CO({result1_carry__1_n_0,result1_carry__1_n_1,result1_carry__1_n_2,result1_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(result2[9:6]),
        .O({result1_carry__6_i_5[3],data6[11:10],result1_carry__6_i_5[2]}),
        .S(\ALUResult[9]_INST_0_i_5 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 result1_carry__2
       (.CI(result1_carry__1_n_0),
        .CO({result1_carry__2_n_0,result1_carry__2_n_1,result1_carry__2_n_2,result1_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({result2[12],p_0_in[1],result2[11:10]}),
        .O({data6[16],result1_carry__6_i_5[5],data6[14],result1_carry__6_i_5[4]}),
        .S(\ALUResult[13]_INST_0_i_5 ));
  LUT6 #(
    .INIT(64'hF0F0F0F03800F0F0)) 
    result1_carry__2_i_15
       (.I0(Instr[21]),
        .I1(Instr[10]),
        .I2(Instr[9]),
        .I3(Instr[8]),
        .I4(Instr[2]),
        .I5(Instr[0]),
        .O(result1_carry__2_i_15_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 result1_carry__3
       (.CI(result1_carry__2_n_0),
        .CO({result1_carry__3_n_0,result1_carry__3_n_1,result1_carry__3_n_2,result1_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI(result2[16:13]),
        .O({data6[20],result1_carry__6_i_5[7],data6[18],result1_carry__6_i_5[6]}),
        .S(\ALUResult[17]_INST_0_i_5 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 result1_carry__4
       (.CI(result1_carry__3_n_0),
        .CO({result1_carry__4_n_0,result1_carry__4_n_1,result1_carry__4_n_2,result1_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({result2[19],p_0_in[2],result2[18:17]}),
        .O({data6[24],result1_carry__6_i_5[9],data6[22],result1_carry__6_i_5[8]}),
        .S(\ALUResult[21]_INST_0_i_5 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 result1_carry__5
       (.CI(result1_carry__4_n_0),
        .CO({result1_carry__5_n_0,result1_carry__5_n_1,result1_carry__5_n_2,result1_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI(result2[23:20]),
        .O({data6[28],result1_carry__6_i_5[11],data6[26],result1_carry__6_i_5[10]}),
        .S(\ALUResult[25]_INST_0_i_5 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 result1_carry__6
       (.CI(result1_carry__5_n_0),
        .CO({NLW_result1_carry__6_CO_UNCONNECTED[3:2],result1_carry__6_n_2,result1_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,result2[25:24]}),
        .O({NLW_result1_carry__6_O_UNCONNECTED[3],data6[31],result1_carry__6_i_5[13:12]}),
        .S({1'b0,\ALUResult[29]_INST_0_i_5 }));
  LUT6 #(
    .INIT(64'h2500252525000000)) 
    rf_reg_r1_0_31_0_5_i_10
       (.I0(Instr[4]),
        .I1(Instr[1]),
        .I2(Instr[0]),
        .I3(Instr[16]),
        .I4(y_carry_i_5_0),
        .I5(Instr[5]),
        .O(y_carry_i_5_1));
  LUT5 #(
    .INIT(32'hEAFFEA00)) 
    rf_reg_r1_0_31_18_23_i_13
       (.I0(rf_reg_r1_0_31_30_31_i_1__0_0),
        .I1(ReadData[1]),
        .I2(Instr[9]),
        .I3(rf_reg_r1_0_31_30_31_i_1__0_1),
        .I4(ALUResult[2]),
        .O(rf_reg_r1_0_31_18_23_i_13_n_0));
  MUXF7 rf_reg_r1_0_31_18_23_i_2
       (.I0(rf_reg_r1_0_31_18_23_i_9_n_0),
        .I1(rf_reg_r1_0_31_18_23),
        .O(wd3[0]),
        .S(rf_reg_r2_0_31_30_31));
  MUXF7 rf_reg_r1_0_31_18_23_i_4
       (.I0(rf_reg_r1_0_31_18_23_i_13_n_0),
        .I1(rf_reg_r1_0_31_18_23_0),
        .O(wd3[1]),
        .S(rf_reg_r2_0_31_30_31));
  LUT5 #(
    .INIT(32'hEAFFEA00)) 
    rf_reg_r1_0_31_18_23_i_9
       (.I0(rf_reg_r1_0_31_30_31_i_1__0_0),
        .I1(ReadData[0]),
        .I2(Instr[9]),
        .I3(rf_reg_r1_0_31_30_31_i_1__0_1),
        .I4(ALUResult[1]),
        .O(rf_reg_r1_0_31_18_23_i_9_n_0));
  LUT5 #(
    .INIT(32'hEAFFEA00)) 
    rf_reg_r1_0_31_24_29_i_11
       (.I0(rf_reg_r1_0_31_30_31_i_1__0_0),
        .I1(ReadData[2]),
        .I2(Instr[9]),
        .I3(rf_reg_r1_0_31_30_31_i_1__0_1),
        .I4(ALUResult[3]),
        .O(rf_reg_r1_0_31_24_29_i_11_n_0));
  MUXF7 rf_reg_r1_0_31_24_29_i_3
       (.I0(rf_reg_r1_0_31_24_29_i_11_n_0),
        .I1(rf_reg_r1_0_31_24_29),
        .O(wd3[2]),
        .S(rf_reg_r2_0_31_30_31));
  MUXF7 rf_reg_r1_0_31_30_31_i_1__0
       (.I0(rf_reg_r1_0_31_30_31_i_2_n_0),
        .I1(rf_reg_r2_0_31_30_31_0),
        .O(wd3[3]),
        .S(rf_reg_r2_0_31_30_31));
  LUT5 #(
    .INIT(32'hEAFFEA00)) 
    rf_reg_r1_0_31_30_31_i_2
       (.I0(rf_reg_r1_0_31_30_31_i_1__0_0),
        .I1(ReadData[3]),
        .I2(Instr[9]),
        .I3(rf_reg_r1_0_31_30_31_i_1__0_1),
        .I4(ALUResult[4]),
        .O(rf_reg_r1_0_31_30_31_i_2_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sum_carry
       (.CI(1'b0),
        .CO({sum_carry_n_0,sum_carry_n_1,sum_carry_n_2,sum_carry_n_3}),
        .CYINIT(\addressM[3] ),
        .DI(SrcA[3:0]),
        .O({\q_reg[30] [2:0],data0[0]}),
        .S(S));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sum_carry__0
       (.CI(sum_carry_n_0),
        .CO({sum_carry__0_n_0,sum_carry__0_n_1,sum_carry__0_n_2,sum_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(SrcA[7:4]),
        .O(\q_reg[30] [6:3]),
        .S(\addressM[7] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sum_carry__1
       (.CI(sum_carry__0_n_0),
        .CO({sum_carry__1_n_0,sum_carry__1_n_1,sum_carry__1_n_2,sum_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(SrcA[11:8]),
        .O(\q_reg[30] [10:7]),
        .S(\addressM[11] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sum_carry__2
       (.CI(sum_carry__1_n_0),
        .CO({sum_carry__2_n_0,sum_carry__2_n_1,sum_carry__2_n_2,sum_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI(SrcA[15:12]),
        .O(\q_reg[30] [14:11]),
        .S(\addressM[15] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sum_carry__3
       (.CI(sum_carry__2_n_0),
        .CO({sum_carry__3_n_0,sum_carry__3_n_1,sum_carry__3_n_2,sum_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI(SrcA[19:16]),
        .O({\q_reg[30] [17],data0[18],\q_reg[30] [16:15]}),
        .S(\addressM[19] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sum_carry__4
       (.CI(sum_carry__3_n_0),
        .CO({sum_carry__4_n_0,sum_carry__4_n_1,sum_carry__4_n_2,sum_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI(SrcA[23:20]),
        .O({\q_reg[30] [20:18],data0[20]}),
        .S(\addressM[23] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sum_carry__5
       (.CI(sum_carry__4_n_0),
        .CO({sum_carry__5_n_0,sum_carry__5_n_1,sum_carry__5_n_2,sum_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI(SrcA[27:24]),
        .O({data0[27],\q_reg[30] [23:21]}),
        .S(\addressM[27] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sum_carry__6
       (.CI(sum_carry__5_n_0),
        .CO({NLW_sum_carry__6_CO_UNCONNECTED[3],sum_carry__6_n_1,sum_carry__6_n_2,sum_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,SrcA[30:28]}),
        .O({p_3_in,data0[30],\q_reg[30] [25:24]}),
        .S(\addressM[31] ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 w_carry
       (.CI(1'b0),
        .CO({w_carry_n_0,w_carry_n_1,w_carry_n_2,w_carry_n_3}),
        .CYINIT(1'b0),
        .DI(DI),
        .O(NLW_w_carry_O_UNCONNECTED[3:0]),
        .S(w_carry__0_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 w_carry__0
       (.CI(w_carry_n_0),
        .CO({w_carry__0_n_0,w_carry__0_n_1,w_carry__0_n_2,w_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(w_carry__1_0),
        .O(NLW_w_carry__0_O_UNCONNECTED[3:0]),
        .S(w_carry__1_1));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 w_carry__1
       (.CI(w_carry__0_n_0),
        .CO({w_carry__1_n_0,w_carry__1_n_1,w_carry__1_n_2,w_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(w_carry__2_0),
        .O(NLW_w_carry__1_O_UNCONNECTED[3:0]),
        .S(w_carry__2_1));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 w_carry__2
       (.CI(w_carry__1_n_0),
        .CO({w,w_carry__2_n_1,w_carry__2_n_2,w_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI(\ALUResult[0]_INST_0_i_11_1 ),
        .O(NLW_w_carry__2_O_UNCONNECTED[3:0]),
        .S(\ALUResult[0]_INST_0_i_11_2 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h5545)) 
    y_carry_i_5
       (.I0(Instr[1]),
        .I1(Instr[2]),
        .I2(Instr[3]),
        .I3(Instr[4]),
        .O(y_carry_i_5_0));
endmodule

(* ORIG_REF_NAME = "datapath" *) 
module design_1_top_0_0_datapath
   (Q,
    ALUResult,
    WriteData,
    clk,
    Instr,
    ReadData,
    PCReady,
    reset);
  output [31:0]Q;
  output [31:0]ALUResult;
  output [31:0]WriteData;
  input clk;
  input [29:0]Instr;
  input [31:0]ReadData;
  input PCReady;
  input reset;

  wire [0:0]ALUControl;
  wire [31:0]ALUResult;
  wire [29:0]Instr;
  wire PCReady;
  wire [31:0]Q;
  wire [31:0]ReadData;
  wire [30:0]SrcA;
  wire [31:0]WriteData;
  wire alu_n_100;
  wire alu_n_40;
  wire alu_n_47;
  wire alu_n_48;
  wire alu_n_49;
  wire alu_n_50;
  wire alu_n_51;
  wire alu_n_52;
  wire alu_n_53;
  wire alu_n_58;
  wire alu_n_59;
  wire alu_n_60;
  wire alu_n_61;
  wire alu_n_62;
  wire alu_n_63;
  wire alu_n_64;
  wire alu_n_65;
  wire alu_n_66;
  wire alu_n_67;
  wire alu_n_68;
  wire alu_n_69;
  wire alu_n_70;
  wire alu_n_71;
  wire alu_n_72;
  wire alu_n_73;
  wire alu_n_74;
  wire alu_n_75;
  wire alu_n_76;
  wire alu_n_77;
  wire alu_n_78;
  wire alu_n_79;
  wire alu_n_80;
  wire alu_n_81;
  wire alu_n_82;
  wire alu_n_84;
  wire alu_n_85;
  wire alu_n_86;
  wire alu_n_87;
  wire alu_n_88;
  wire alu_n_89;
  wire alu_n_90;
  wire alu_n_91;
  wire alu_n_92;
  wire alu_n_93;
  wire alu_n_94;
  wire alu_n_95;
  wire alu_n_96;
  wire alu_n_97;
  wire alu_n_98;
  wire alu_n_99;
  wire clk;
  wire [31:0]d1;
  wire [31:1]d2;
  wire [29:1]data0;
  wire [30:1]data6;
  wire [7:1]\ext/immext ;
  wire [23:7]p_0_in;
  wire pcadd4_n_18;
  wire pcadd4_n_19;
  wire pcadd4_n_20;
  wire pcadd4_n_21;
  wire pcadd4_n_22;
  wire pcadd4_n_23;
  wire pcadd4_n_24;
  wire pcadd4_n_25;
  wire pcadd4_n_26;
  wire pcadd4_n_27;
  wire pcadd4_n_28;
  wire pcadd4_n_29;
  wire pcadd4_n_30;
  wire pcadd4_n_42;
  wire pcadd4_n_43;
  wire pcadd4_n_44;
  wire pcadd4_n_45;
  wire pcadd4_n_46;
  wire pcadd4_n_47;
  wire pcadd4_n_48;
  wire pcadd4_n_49;
  wire pcadd4_n_50;
  wire pcadd4_n_51;
  wire pcadd4_n_52;
  wire pcadd4_n_53;
  wire pcadd4_n_54;
  wire pcadd4_n_55;
  wire pcadd4_n_56;
  wire pcadd4_n_57;
  wire pcadd4_n_58;
  wire pcreg_n_0;
  wire pcreg_n_100;
  wire pcreg_n_101;
  wire pcreg_n_102;
  wire pcreg_n_103;
  wire pcreg_n_104;
  wire pcreg_n_105;
  wire pcreg_n_106;
  wire pcreg_n_107;
  wire pcreg_n_108;
  wire pcreg_n_109;
  wire pcreg_n_111;
  wire pcreg_n_112;
  wire pcreg_n_113;
  wire pcreg_n_114;
  wire pcreg_n_115;
  wire pcreg_n_116;
  wire pcreg_n_117;
  wire pcreg_n_118;
  wire pcreg_n_119;
  wire pcreg_n_120;
  wire pcreg_n_121;
  wire pcreg_n_122;
  wire pcreg_n_123;
  wire pcreg_n_124;
  wire pcreg_n_125;
  wire pcreg_n_126;
  wire pcreg_n_127;
  wire pcreg_n_128;
  wire pcreg_n_129;
  wire pcreg_n_130;
  wire pcreg_n_131;
  wire pcreg_n_132;
  wire pcreg_n_133;
  wire pcreg_n_134;
  wire pcreg_n_135;
  wire pcreg_n_136;
  wire pcreg_n_137;
  wire pcreg_n_138;
  wire pcreg_n_139;
  wire pcreg_n_140;
  wire pcreg_n_141;
  wire pcreg_n_142;
  wire pcreg_n_143;
  wire pcreg_n_144;
  wire pcreg_n_145;
  wire pcreg_n_146;
  wire pcreg_n_147;
  wire pcreg_n_148;
  wire pcreg_n_149;
  wire pcreg_n_150;
  wire pcreg_n_151;
  wire pcreg_n_152;
  wire pcreg_n_153;
  wire pcreg_n_154;
  wire pcreg_n_155;
  wire pcreg_n_156;
  wire pcreg_n_157;
  wire pcreg_n_158;
  wire pcreg_n_159;
  wire pcreg_n_160;
  wire pcreg_n_161;
  wire pcreg_n_162;
  wire pcreg_n_163;
  wire pcreg_n_164;
  wire pcreg_n_165;
  wire pcreg_n_166;
  wire pcreg_n_167;
  wire pcreg_n_168;
  wire pcreg_n_169;
  wire pcreg_n_170;
  wire pcreg_n_171;
  wire pcreg_n_172;
  wire pcreg_n_173;
  wire pcreg_n_174;
  wire pcreg_n_175;
  wire pcreg_n_176;
  wire pcreg_n_177;
  wire pcreg_n_178;
  wire pcreg_n_179;
  wire pcreg_n_180;
  wire pcreg_n_181;
  wire pcreg_n_182;
  wire pcreg_n_183;
  wire pcreg_n_184;
  wire pcreg_n_185;
  wire pcreg_n_186;
  wire pcreg_n_187;
  wire pcreg_n_188;
  wire pcreg_n_189;
  wire pcreg_n_190;
  wire pcreg_n_191;
  wire pcreg_n_192;
  wire pcreg_n_193;
  wire pcreg_n_194;
  wire pcreg_n_195;
  wire pcreg_n_196;
  wire pcreg_n_197;
  wire pcreg_n_198;
  wire pcreg_n_199;
  wire pcreg_n_200;
  wire pcreg_n_201;
  wire pcreg_n_202;
  wire pcreg_n_45;
  wire pcreg_n_47;
  wire pcreg_n_69;
  wire pcreg_n_70;
  wire pcreg_n_81;
  wire pcreg_n_82;
  wire pcreg_n_83;
  wire pcreg_n_84;
  wire pcreg_n_85;
  wire pcreg_n_86;
  wire pcreg_n_87;
  wire pcreg_n_88;
  wire pcreg_n_89;
  wire pcreg_n_90;
  wire pcreg_n_91;
  wire pcreg_n_92;
  wire pcreg_n_93;
  wire pcreg_n_94;
  wire pcreg_n_95;
  wire pcreg_n_96;
  wire pcreg_n_97;
  wire pcreg_n_98;
  wire pcreg_n_99;
  wire [30:0]rd10;
  wire reset;
  wire [30:1]result2;
  wire rf_n_104;
  wire rf_n_105;
  wire rf_n_106;
  wire rf_n_107;
  wire rf_n_108;
  wire rf_n_109;
  wire rf_n_110;
  wire rf_n_111;
  wire rf_n_112;
  wire rf_n_113;
  wire rf_n_114;
  wire rf_n_115;
  wire rf_n_116;
  wire rf_n_117;
  wire rf_n_118;
  wire rf_n_119;
  wire rf_n_120;
  wire rf_n_121;
  wire rf_n_122;
  wire rf_n_123;
  wire rf_n_124;
  wire rf_n_125;
  wire rf_n_126;
  wire rf_n_127;
  wire rf_n_128;
  wire rf_n_129;
  wire rf_n_130;
  wire rf_n_131;
  wire rf_n_132;
  wire rf_n_133;
  wire rf_n_134;
  wire rf_n_138;
  wire rf_n_139;
  wire rf_n_140;
  wire rf_n_141;
  wire rf_n_174;
  wire rf_n_175;
  wire rf_n_176;
  wire rf_n_177;
  wire rf_n_178;
  wire rf_n_179;
  wire rf_n_180;
  wire rf_n_181;
  wire rf_n_182;
  wire rf_n_183;
  wire rf_n_184;
  wire rf_n_185;
  wire rf_n_186;
  wire rf_n_187;
  wire rf_n_188;
  wire rf_n_189;
  wire rf_n_190;
  wire rf_n_191;
  wire rf_n_192;
  wire rf_n_193;
  wire rf_n_194;
  wire rf_n_195;
  wire rf_n_196;
  wire rf_n_197;
  wire rf_n_198;
  wire rf_n_199;
  wire rf_n_200;
  wire rf_n_201;
  wire rf_n_202;
  wire rf_n_203;
  wire rf_n_204;
  wire rf_n_205;
  wire rf_n_206;
  wire rf_n_207;
  wire rf_n_223;
  wire rf_n_224;
  wire rf_n_225;
  wire rf_n_226;
  wire rf_n_227;
  wire rf_n_228;
  wire rf_n_229;
  wire rf_n_230;
  wire rf_n_231;
  wire rf_n_232;
  wire rf_n_233;
  wire rf_n_234;
  wire rf_n_235;
  wire rf_n_236;
  wire rf_n_237;
  wire rf_n_238;
  wire rf_n_239;
  wire rf_n_240;
  wire rf_n_241;
  wire rf_n_242;
  wire rf_n_243;
  wire rf_n_244;
  wire rf_n_245;
  wire rf_n_246;
  wire rf_n_247;
  wire rf_n_248;
  wire rf_n_249;
  wire rf_n_250;
  wire rf_n_251;
  wire rf_n_252;
  wire rf_n_253;
  wire rf_n_254;
  wire rf_n_255;
  wire rf_n_256;
  wire rf_n_257;
  wire rf_n_258;
  wire rf_n_259;
  wire rf_n_260;
  wire rf_n_261;
  wire rf_n_262;
  wire rf_n_263;
  wire rf_n_264;
  wire rf_n_265;
  wire rf_n_266;
  wire rf_n_267;
  wire rf_n_268;
  wire rf_n_269;
  wire rf_n_270;
  wire rf_n_271;
  wire rf_n_272;
  wire rf_n_273;
  wire rf_n_274;
  wire rf_n_275;
  wire rf_n_276;
  wire rf_n_277;
  wire rf_n_278;
  wire rf_n_279;
  wire rf_n_280;
  wire rf_n_281;
  wire rf_n_282;
  wire rf_n_283;
  wire rf_n_284;
  wire rf_n_285;
  wire rf_n_286;
  wire rf_n_31;
  wire rf_n_32;
  wire rf_n_33;
  wire rf_n_34;
  wire rf_n_35;
  wire rf_n_36;
  wire rf_n_37;
  wire rf_n_38;
  wire rf_n_39;
  wire rf_n_40;
  wire rf_n_41;
  wire rf_n_42;
  wire rf_n_43;
  wire rf_n_44;
  wire rf_n_45;
  wire rf_n_46;
  wire rf_n_47;
  wire rf_n_49;
  wire rf_n_50;
  wire rf_n_51;
  wire rf_n_52;
  wire rf_n_53;
  wire rf_n_81;
  wire rf_n_84;
  wire rf_n_85;
  wire rf_n_90;
  wire rf_n_91;
  wire rf_n_92;
  wire rf_n_93;
  wire rf_n_94;
  wire rf_n_95;
  wire rf_n_96;
  wire [31:0]wd3;

  design_1_top_0_0_alu alu
       (.ALUControl(ALUControl),
        .ALUResult({ALUResult[31:30],ALUResult[27],ALUResult[20],ALUResult[18],ALUResult[0]}),
        .\ALUResult[0]_INST_0_i_11_0 (alu_n_47),
        .\ALUResult[0]_INST_0_i_11_1 ({rf_n_192,rf_n_193,rf_n_194,rf_n_195}),
        .\ALUResult[0]_INST_0_i_11_2 ({rf_n_197,pcreg_n_163,pcreg_n_164,pcreg_n_165}),
        .\ALUResult[0]_INST_0_i_4_0 (rf_n_134),
        .\ALUResult[0]_INST_0_i_4_1 (rf_n_53),
        .\ALUResult[0]_INST_0_i_6_0 (alu_n_91),
        .\ALUResult[10]_INST_0_i_3 (rf_n_199),
        .\ALUResult[11]_INST_0_i_3 (pcreg_n_123),
        .\ALUResult[11]_INST_0_i_3_0 (rf_n_109),
        .\ALUResult[13]_INST_0_i_5 ({rf_n_260,rf_n_261,rf_n_262,rf_n_263}),
        .\ALUResult[14]_INST_0_i_3 (rf_n_178),
        .\ALUResult[16]_INST_0_i_3 (rf_n_118),
        .\ALUResult[17]_INST_0_i_5 ({rf_n_264,rf_n_265,rf_n_266,rf_n_267}),
        .\ALUResult[1]_INST_0_i_3 (rf_n_285),
        .\ALUResult[1]_INST_0_i_3_0 ({rf_n_248,rf_n_249,rf_n_250,rf_n_251}),
        .\ALUResult[21]_INST_0_i_5 ({rf_n_268,rf_n_269,rf_n_270,rf_n_271}),
        .\ALUResult[22]_INST_0_i_1 (rf_n_205),
        .\ALUResult[24]_INST_0_i_3 (rf_n_132),
        .\ALUResult[25]_INST_0_i_5 ({rf_n_272,rf_n_273,rf_n_274,rf_n_275}),
        .\ALUResult[26]_INST_0_i_3 (rf_n_130),
        .\ALUResult[28]_INST_0_i_3 (rf_n_127),
        .\ALUResult[29]_INST_0_i_5 ({rf_n_139,rf_n_140,rf_n_141}),
        .\ALUResult[2]_INST_0_i_3 (rf_n_84),
        .\ALUResult[30]_INST_0_i_4_0 (alu_n_92),
        .\ALUResult[30]_INST_0_i_5_0 (alu_n_87),
        .\ALUResult[30]_INST_0_i_6_0 (alu_n_82),
        .\ALUResult[31]_INST_0_0 (alu_n_51),
        .\ALUResult[31]_INST_0_i_3 (alu_n_48),
        .\ALUResult[31]_INST_0_i_3_0 (alu_n_72),
        .\ALUResult[31]_INST_0_i_3_1 (alu_n_73),
        .\ALUResult[31]_INST_0_i_3_2 (alu_n_74),
        .\ALUResult[3]_INST_0_i_3 (rf_n_85),
        .\ALUResult[3]_INST_0_i_3_0 (pcreg_n_134),
        .\ALUResult[3]_INST_0_i_4_0 (alu_n_84),
        .\ALUResult[4]_INST_0_i_3 (rf_n_186),
        .\ALUResult[4]_INST_0_i_3_0 (pcreg_n_119),
        .\ALUResult[4]_INST_0_i_4_0 (alu_n_88),
        .\ALUResult[4]_INST_0_i_5_0 (alu_n_85),
        .\ALUResult[4]_INST_0_i_5_1 (alu_n_100),
        .\ALUResult[4]_INST_0_i_6_0 (alu_n_89),
        .\ALUResult[5]_INST_0_i_3 (rf_n_91),
        .\ALUResult[5]_INST_0_i_3_0 (pcreg_n_118),
        .\ALUResult[5]_INST_0_i_5_0 ({rf_n_252,rf_n_253,rf_n_254,rf_n_255}),
        .\ALUResult[6]_INST_0_i_3 (rf_n_92),
        .\ALUResult[6]_INST_0_i_3_0 (pcreg_n_133),
        .\ALUResult[7]_INST_0_i_3 (pcreg_n_112),
        .\ALUResult[7]_INST_0_i_3_0 (rf_n_93),
        .\ALUResult[7]_INST_0_i_3_1 (pcreg_n_153),
        .\ALUResult[8]_INST_0_i_3 (rf_n_104),
        .\ALUResult[9]_INST_0_i_5 ({rf_n_256,rf_n_257,rf_n_258,rf_n_259}),
        .DI({rf_n_185,pcreg_n_115,pcreg_n_116,pcreg_n_117}),
        .Instr({Instr[29:28],Instr[22:9],Instr[6:0]}),
        .ReadData({ReadData[30],ReadData[27],ReadData[20],ReadData[18]}),
        .S({rf_n_224,rf_n_225,rf_n_226,rf_n_227}),
        .SrcA(SrcA),
        .\WriteData[31]_INST_0_i_2_0 (alu_n_86),
        .\addressM[0] (rf_n_47),
        .\addressM[0]_0 (pcreg_n_69),
        .\addressM[0]_1 (rf_n_284),
        .\addressM[0]_2 (rf_n_281),
        .\addressM[11] ({rf_n_228,rf_n_229,rf_n_230,rf_n_231}),
        .\addressM[15] ({rf_n_232,rf_n_233,rf_n_234,rf_n_235}),
        .\addressM[18] (rf_n_122),
        .\addressM[18]_0 (rf_n_200),
        .\addressM[19] ({rf_n_236,rf_n_237,rf_n_238,rf_n_239}),
        .\addressM[20] (rf_n_126),
        .\addressM[20]_0 (rf_n_203),
        .\addressM[23] ({rf_n_240,rf_n_241,rf_n_242,rf_n_243}),
        .\addressM[27] ({rf_n_244,rf_n_245,rf_n_246,rf_n_247}),
        .\addressM[27]_0 (rf_n_129),
        .\addressM[27]_1 (pcreg_n_106),
        .\addressM[30] (rf_n_191),
        .\addressM[30]_0 (rf_n_196),
        .\addressM[30]_1 (pcreg_n_108),
        .\addressM[31] ({rf_n_49,rf_n_50,rf_n_51,rf_n_52}),
        .\addressM[31]_0 (rf_n_133),
        .\addressM[31]_1 (rf_n_283),
        .\addressM[31]_2 (pcreg_n_70),
        .\addressM[31]_3 (rf_n_198),
        .\addressM[3] (rf_n_276),
        .\addressM[7] ({rf_n_277,rf_n_278,rf_n_279,rf_n_280}),
        .d1({d1[31:30],d1[27],d1[20],d1[18],d1[0]}),
        .immext(\ext/immext [1]),
        .p_0_in({p_0_in[23],p_0_in[15],p_0_in[7]}),
        .\q[31]_i_16 (pcreg_n_99),
        .\q[31]_i_16_0 (pcreg_n_97),
        .\q[31]_i_17 (pcreg_n_83),
        .\q[31]_i_17_0 (rf_n_105),
        .\q[31]_i_17_1 (pcreg_n_104),
        .\q[31]_i_17_2 (pcreg_n_102),
        .\q[31]_i_18 (rf_n_123),
        .\q[31]_i_18_0 (pcreg_n_92),
        .\q[31]_i_19 (rf_n_121),
        .\q[31]_i_19_0 (pcreg_n_90),
        .\q[31]_i_53_0 (alu_n_62),
        .\q[31]_i_55_0 (alu_n_64),
        .\q[31]_i_57_0 (alu_n_59),
        .\q[31]_i_59_0 (alu_n_52),
        .\q_reg[10] (alu_n_93),
        .\q_reg[11] (alu_n_94),
        .\q_reg[14] (alu_n_95),
        .\q_reg[16] (alu_n_53),
        .\q_reg[18] (alu_n_60),
        .\q_reg[19] (alu_n_58),
        .\q_reg[20] (alu_n_96),
        .\q_reg[22] (alu_n_97),
        .\q_reg[23] (alu_n_61),
        .\q_reg[24] (alu_n_63),
        .\q_reg[26] (alu_n_65),
        .\q_reg[27] (alu_n_66),
        .\q_reg[28] (alu_n_98),
        .\q_reg[2] (alu_n_75),
        .\q_reg[30] ({data0[29:28],data0[26:21],data0[19],data0[17:1]}),
        .\q_reg[30]_0 (alu_n_50),
        .\q_reg[30]_1 (alu_n_67),
        .\q_reg[3] (alu_n_40),
        .\q_reg[3]_0 (alu_n_76),
        .\q_reg[4] (alu_n_77),
        .\q_reg[5] (alu_n_78),
        .\q_reg[6] (alu_n_79),
        .\q_reg[7] (alu_n_80),
        .\q_reg[8] (alu_n_81),
        .result1_carry__2_i_15_0(alu_n_49),
        .result1_carry__6_i_5({data6[30:29],data6[27],data6[25],data6[23],data6[21],data6[19],data6[17],data6[15],data6[13:12],data6[9:8],data6[1]}),
        .result2({result2[30:24],result2[22:16],result2[14:8],result2[6:4],result2[2:1]}),
        .rf_reg_r1_0_31_18_23(pcadd4_n_48),
        .rf_reg_r1_0_31_18_23_0(pcadd4_n_50),
        .rf_reg_r1_0_31_24_29(pcadd4_n_57),
        .rf_reg_r1_0_31_30_31_i_1__0_0(rf_n_119),
        .rf_reg_r1_0_31_30_31_i_1__0_1(rf_n_96),
        .rf_reg_r2_0_31_30_31(rf_n_112),
        .rf_reg_r2_0_31_30_31_0(pcreg_n_166),
        .sum_carry__3_0(alu_n_70),
        .sum_carry__3_1(alu_n_71),
        .sum_carry__5_0(alu_n_68),
        .sum_carry__5_1(alu_n_69),
        .w_carry__0_0({rf_n_183,rf_n_184,pcreg_n_145,pcreg_n_146}),
        .w_carry__1_0({rf_n_179,rf_n_180,pcreg_n_156,rf_n_181}),
        .w_carry__1_1({rf_n_175,rf_n_176,rf_n_177,pcreg_n_113}),
        .w_carry__2_0({rf_n_201,rf_n_202,pcreg_n_157,pcreg_n_158}),
        .w_carry__2_1({pcreg_n_159,pcreg_n_160,pcreg_n_161,pcreg_n_162}),
        .wd3({wd3[30],wd3[27],wd3[20],wd3[18]}),
        .y_carry_i_5_0(alu_n_90),
        .y_carry_i_5_1(alu_n_99));
  design_1_top_0_0_adder pcadd4
       (.D({pcadd4_n_18,pcadd4_n_19,pcadd4_n_20,pcadd4_n_21,pcadd4_n_22,pcadd4_n_23,pcadd4_n_24,pcadd4_n_25,pcadd4_n_26,pcadd4_n_27,pcadd4_n_28,pcadd4_n_29,pcadd4_n_30}),
        .Instr({Instr[29:10],Instr[4],Instr[0]}),
        .Q(Q[31:1]),
        .ReadData(ReadData[7:1]),
        .S(pcreg_n_0),
        .immext({\ext/immext [7:5],\ext/immext [3:1]}),
        .\q_reg[10] (pcreg_n_47),
        .\q_reg[12] (pcadd4_n_42),
        .\q_reg[12]_0 (pcreg_n_81),
        .\q_reg[14] (pcreg_n_87),
        .\q_reg[16] (pcadd4_n_43),
        .\q_reg[16]_0 (pcadd4_n_44),
        .\q_reg[16]_1 (pcadd4_n_45),
        .\q_reg[16]_2 (pcadd4_n_46),
        .\q_reg[16]_3 (pcreg_n_88),
        .\q_reg[18] (alu_n_58),
        .\q_reg[20] (pcadd4_n_47),
        .\q_reg[20]_0 (pcadd4_n_48),
        .\q_reg[20]_1 (pcadd4_n_49),
        .\q_reg[20]_2 (pcadd4_n_50),
        .\q_reg[20]_3 (alu_n_61),
        .\q_reg[21] (pcreg_n_93),
        .\q_reg[22] (pcreg_n_95),
        .\q_reg[23] (pcreg_n_96),
        .\q_reg[24] (pcadd4_n_51),
        .\q_reg[24]_0 (pcadd4_n_52),
        .\q_reg[24]_1 (pcadd4_n_53),
        .\q_reg[24]_2 (pcadd4_n_54),
        .\q_reg[24]_3 (pcreg_n_98),
        .\q_reg[25] (pcreg_n_100),
        .\q_reg[26] (pcreg_n_103),
        .\q_reg[27] (rf_n_46),
        .\q_reg[27]_0 (alu_n_66),
        .\q_reg[28] (pcadd4_n_55),
        .\q_reg[28]_0 (pcadd4_n_56),
        .\q_reg[28]_1 (pcadd4_n_57),
        .\q_reg[28]_2 (pcadd4_n_58),
        .\q_reg[31] ({d2[31:28],d2[19],d2[17],d2[15],d2[13],d2[11],d2[9:1]}),
        .rf_reg_r1_0_31_0_5(ALUResult[1]),
        .rf_reg_r1_0_31_0_5_0(ALUResult[2]),
        .rf_reg_r1_0_31_0_5_1(ALUResult[3]),
        .rf_reg_r1_0_31_0_5_2(rf_n_286),
        .rf_reg_r1_0_31_0_5_3(ALUResult[4]),
        .rf_reg_r1_0_31_0_5_4(ALUResult[5]),
        .rf_reg_r1_0_31_18_23_i_1(rf_n_182),
        .rf_reg_r1_0_31_24_29_i_6(rf_n_96),
        .rf_reg_r1_0_31_6_11(rf_n_112),
        .rf_reg_r1_0_31_6_11_0(ALUResult[6]),
        .rf_reg_r1_0_31_6_11_1(ALUResult[7]),
        .rf_reg_r1_0_31_6_11_2(alu_n_87),
        .rf_reg_r1_0_31_6_11_3(rf_n_94),
        .rf_reg_r1_0_31_6_11_4(rf_n_106),
        .rf_reg_r1_0_31_6_11_5(pcreg_n_45),
        .rf_reg_r1_0_31_6_11_6(alu_n_100),
        .rf_reg_r1_0_31_6_11_7(rf_n_174),
        .rf_reg_r1_0_31_6_11_8(ALUResult[11]),
        .wd3(wd3[11:1]));
  design_1_top_0_0_adder_0 pcaddbranch
       (.Q(Q[30:0]),
        .S({pcreg_n_172,pcreg_n_173,pcreg_n_174,pcreg_n_175}),
        .d1(d1),
        .\q[12]_i_2 ({pcreg_n_184,pcreg_n_185,pcreg_n_186,pcreg_n_187}),
        .\q[16]_i_2 ({pcreg_n_188,pcreg_n_189,pcreg_n_190,pcreg_n_191}),
        .\q[20]_i_2 ({pcreg_n_194,pcreg_n_195,pcreg_n_196,pcreg_n_197}),
        .\q[24]_i_2 ({pcreg_n_198,pcreg_n_199,pcreg_n_200,pcreg_n_201}),
        .\q[28]_i_2 ({pcreg_n_168,pcreg_n_169,pcreg_n_170,pcreg_n_171}),
        .\q[4]_i_2 ({pcreg_n_176,pcreg_n_177,pcreg_n_178,pcreg_n_179}),
        .\q[8]_i_2 ({pcreg_n_180,pcreg_n_181,pcreg_n_182,pcreg_n_183}));
  design_1_top_0_0_flopenr pcreg
       (.ALUControl(ALUControl),
        .ALUResult({ALUResult[31],ALUResult[20],ALUResult[0]}),
        .\ALUResult[0]_INST_0_i_15 (rf_n_186),
        .\ALUResult[0]_INST_0_i_15_0 (alu_n_91),
        .\ALUResult[0]_INST_0_i_16_0 (pcreg_n_148),
        .\ALUResult[12]_INST_0_i_6_0 (pcreg_n_84),
        .\ALUResult[13]_INST_0_i_3 (rf_n_113),
        .\ALUResult[14]_INST_0_i_4_0 (rf_n_85),
        .\ALUResult[14]_INST_0_i_6_0 (pcreg_n_86),
        .\ALUResult[17]_INST_0_i_4 (rf_n_138),
        .\ALUResult[1]_INST_0_i_2 (pcreg_n_202),
        .\ALUResult[20]_INST_0_i_1 (rf_n_190),
        .\ALUResult[20]_INST_0_i_6_0 (pcreg_n_90),
        .\ALUResult[22]_INST_0_i_6 (pcreg_n_92),
        .\ALUResult[25]_INST_0_i_6_0 (pcreg_n_94),
        .\ALUResult[27]_INST_0_i_5_0 (pcreg_n_106),
        .\ALUResult[28]_INST_0_i_6_0 (pcreg_n_97),
        .\ALUResult[29]_INST_0_i_1_0 ({data6[29],data6[27],data6[25],data6[23],data6[21],data6[19],data6[17],data6[13:12],data6[9:8]}),
        .\ALUResult[29]_INST_0_i_6_0 (pcreg_n_99),
        .\ALUResult[30]_INST_0_i_8 (pcreg_n_108),
        .\ALUResult[30]_INST_0_i_9 (pcreg_n_102),
        .\ALUResult[31]_INST_0_i_11_0 (rf_n_191),
        .\ALUResult[31]_INST_0_i_13_0 (pcreg_n_70),
        .\ALUResult[31]_INST_0_i_13_1 (pcreg_n_83),
        .\ALUResult[31]_INST_0_i_16_0 (pcreg_n_144),
        .\ALUResult[31]_INST_0_i_20_0 (pcreg_n_107),
        .\ALUResult[31]_INST_0_i_22_0 (pcreg_n_104),
        .\ALUResult[31]_INST_0_i_23_0 (pcreg_n_109),
        .\ALUResult[31]_INST_0_i_5_0 (pcreg_n_69),
        .\ALUResult[31]_INST_0_i_9 (rf_n_90),
        .\ALUResult[8]_INST_0_i_6_0 (pcreg_n_112),
        .D({rf_n_31,pcadd4_n_18,pcadd4_n_19,pcadd4_n_20,pcadd4_n_21,pcadd4_n_22,pcadd4_n_23,pcadd4_n_24,pcadd4_n_25,rf_n_32,pcadd4_n_26,rf_n_33,pcadd4_n_27,rf_n_34,pcadd4_n_28,rf_n_35,pcadd4_n_29,rf_n_36,pcadd4_n_30,rf_n_37,rf_n_38,rf_n_39,rf_n_40,rf_n_41,rf_n_42,rf_n_43,rf_n_44,rf_n_45}),
        .DI({pcreg_n_115,pcreg_n_116,pcreg_n_117}),
        .Instr(Instr),
        .PCReady(PCReady),
        .Q(Q),
        .ReadData({ReadData[29],ReadData[26:21],ReadData[16],ReadData[14],ReadData[12],ReadData[10],ReadData[7],ReadData[0]}),
        .S(pcreg_n_0),
        .SrcA({SrcA[30:14],SrcA[12],SrcA[10],SrcA[8],SrcA[2]}),
        .\addressM[10] (rf_n_199),
        .\addressM[10]_0 (rf_n_108),
        .\addressM[12] (rf_n_111),
        .\addressM[12]_0 (rf_n_114),
        .\addressM[12]_1 (rf_n_105),
        .\addressM[14] (rf_n_178),
        .\addressM[14]_0 (rf_n_116),
        .\addressM[14]_1 (alu_n_95),
        .\addressM[16] (rf_n_118),
        .\addressM[16]_0 (rf_n_121),
        .\addressM[16]_1 (alu_n_53),
        .\addressM[21] (rf_n_204),
        .\addressM[22] (rf_n_205),
        .\addressM[22]_0 (alu_n_97),
        .\addressM[23] (rf_n_206),
        .\addressM[24] (rf_n_132),
        .\addressM[24]_0 (alu_n_63),
        .\addressM[25] (rf_n_131),
        .\addressM[26] (rf_n_130),
        .\addressM[26]_0 (alu_n_65),
        .\addressM[27] (rf_n_128),
        .\addressM[29] ({data0[29],data0[26:21],data0[16],data0[14],data0[12],data0[10]}),
        .\addressM[29]_0 (rf_n_207),
        .\addressM[29]_1 (alu_n_92),
        .\addressM[30] (rf_n_282),
        .clk(clk),
        .d1({d1[29],d1[26:21],d1[16],d1[14],d1[12],d1[10]}),
        .\q[31]_i_10 (rf_n_110),
        .\q[31]_i_10_0 (rf_n_115),
        .\q[31]_i_12_0 (alu_n_52),
        .\q[31]_i_12_1 (rf_n_117),
        .\q[31]_i_12_2 (alu_n_59),
        .\q[31]_i_12_3 (rf_n_125),
        .\q[31]_i_15_0 (alu_n_73),
        .\q[31]_i_15_1 (alu_n_72),
        .\q[31]_i_16 (alu_n_69),
        .\q[31]_i_17 (alu_n_68),
        .\q[31]_i_19_0 (pcreg_n_89),
        .\q[31]_i_19_1 (alu_n_71),
        .\q[31]_i_34 (rf_n_188),
        .\q[31]_i_42 (rf_n_189),
        .\q[31]_i_4_0 (pcreg_n_167),
        .\q[31]_i_54 (pcreg_n_101),
        .\q[31]_i_56 (pcreg_n_105),
        .\q_reg[0]_0 (pcreg_n_132),
        .\q_reg[0]_1 (pcreg_n_137),
        .\q_reg[0]_2 (rf_n_46),
        .\q_reg[0]_3 (alu_n_40),
        .\q_reg[10]_0 (ALUResult[10]),
        .\q_reg[10]_1 (pcreg_n_156),
        .\q_reg[11]_0 (pcreg_n_47),
        .\q_reg[11]_1 (pcreg_n_123),
        .\q_reg[11]_2 ({pcreg_n_180,pcreg_n_181,pcreg_n_182,pcreg_n_183}),
        .\q_reg[12]_0 (pcreg_n_82),
        .\q_reg[12]_1 (pcreg_n_150),
        .\q_reg[13]_0 (pcreg_n_85),
        .\q_reg[13]_1 (pcreg_n_125),
        .\q_reg[13]_2 (pcreg_n_138),
        .\q_reg[13]_3 (pcreg_n_139),
        .\q_reg[15]_0 (pcreg_n_81),
        .\q_reg[15]_1 (pcreg_n_87),
        .\q_reg[15]_2 ({pcreg_n_184,pcreg_n_185,pcreg_n_186,pcreg_n_187}),
        .\q_reg[17]_0 (pcreg_n_91),
        .\q_reg[17]_1 (pcreg_n_121),
        .\q_reg[18]_0 ({pcreg_n_157,pcreg_n_158}),
        .\q_reg[19]_0 (pcreg_n_88),
        .\q_reg[19]_1 (pcreg_n_122),
        .\q_reg[19]_2 ({pcreg_n_188,pcreg_n_189,pcreg_n_190,pcreg_n_191}),
        .\q_reg[19]_3 (pcreg_n_193),
        .\q_reg[1]_0 (pcreg_n_126),
        .\q_reg[1]_1 (pcreg_n_129),
        .\q_reg[1]_2 (pcreg_n_136),
        .\q_reg[20]_0 (pcreg_n_142),
        .\q_reg[23]_0 (pcreg_n_93),
        .\q_reg[23]_1 (pcreg_n_95),
        .\q_reg[23]_2 (pcreg_n_96),
        .\q_reg[23]_3 ({pcreg_n_159,pcreg_n_160,pcreg_n_161,pcreg_n_162}),
        .\q_reg[23]_4 ({pcreg_n_194,pcreg_n_195,pcreg_n_196,pcreg_n_197}),
        .\q_reg[25]_0 (pcreg_n_124),
        .\q_reg[25]_1 (pcreg_n_152),
        .\q_reg[26]_0 (pcreg_n_143),
        .\q_reg[27]_0 (pcreg_n_98),
        .\q_reg[27]_1 (pcreg_n_100),
        .\q_reg[27]_2 (pcreg_n_103),
        .\q_reg[27]_3 (pcreg_n_155),
        .\q_reg[27]_4 ({pcreg_n_198,pcreg_n_199,pcreg_n_200,pcreg_n_201}),
        .\q_reg[29]_0 ({ALUResult[29],ALUResult[26:21],ALUResult[16],ALUResult[14],ALUResult[12]}),
        .\q_reg[29]_1 (pcreg_n_151),
        .\q_reg[29]_2 ({pcreg_n_163,pcreg_n_164,pcreg_n_165}),
        .\q_reg[2]_0 (pcreg_n_131),
        .\q_reg[30]_0 (pcreg_n_140),
        .\q_reg[30]_1 (pcreg_n_141),
        .\q_reg[30]_2 (alu_n_67),
        .\q_reg[31]_0 (pcreg_n_166),
        .\q_reg[31]_1 ({pcreg_n_168,pcreg_n_169,pcreg_n_170,pcreg_n_171}),
        .\q_reg[31]_2 (d2[31:29]),
        .\q_reg[31]_3 (alu_n_50),
        .\q_reg[3]_0 (pcreg_n_127),
        .\q_reg[3]_1 (pcreg_n_128),
        .\q_reg[3]_2 (pcreg_n_134),
        .\q_reg[3]_3 ({pcreg_n_145,pcreg_n_146}),
        .\q_reg[3]_4 ({pcreg_n_172,pcreg_n_173,pcreg_n_174,pcreg_n_175}),
        .\q_reg[4]_0 (pcreg_n_119),
        .\q_reg[5]_0 (pcreg_n_118),
        .\q_reg[5]_1 (pcreg_n_130),
        .\q_reg[5]_2 (pcreg_n_135),
        .\q_reg[5]_3 (pcreg_n_147),
        .\q_reg[6]_0 (pcreg_n_133),
        .\q_reg[7]_0 (pcreg_n_153),
        .\q_reg[7]_1 ({pcreg_n_176,pcreg_n_177,pcreg_n_178,pcreg_n_179}),
        .\q_reg[8]_0 (pcreg_n_111),
        .\q_reg[8]_1 (pcreg_n_149),
        .\q_reg[9]_0 (pcreg_n_113),
        .\q_reg[9]_1 (pcreg_n_114),
        .\q_reg[9]_2 (pcreg_n_154),
        .\q_reg[9]_3 (pcreg_n_192),
        .rd10(rd10),
        .\readDataM[7] (pcreg_n_45),
        .reset(reset),
        .result1_carry__0_i_8(rf_n_84),
        .result1_carry__0_i_8_0(rf_n_81),
        .result1_carry__0_i_8_1(rf_n_187),
        .result1_carry_i_14_0(pcreg_n_120),
        .rf_reg_r1_0_31_0_5(alu_n_99),
        .rf_reg_r1_0_31_12_17(pcadd4_n_42),
        .rf_reg_r1_0_31_12_17_0(pcadd4_n_44),
        .rf_reg_r1_0_31_12_17_1(pcadd4_n_46),
        .rf_reg_r1_0_31_12_17_i_4_0(rf_n_95),
        .rf_reg_r1_0_31_18_23(pcadd4_n_51),
        .rf_reg_r1_0_31_18_23_0(pcadd4_n_52),
        .rf_reg_r1_0_31_18_23_1(pcadd4_n_53),
        .rf_reg_r1_0_31_24_29(rf_n_112),
        .rf_reg_r1_0_31_24_29_0(pcadd4_n_54),
        .rf_reg_r1_0_31_24_29_1(pcadd4_n_55),
        .rf_reg_r1_0_31_24_29_2(pcadd4_n_56),
        .rf_reg_r1_0_31_24_29_i_5_0(rf_n_119),
        .rf_reg_r1_0_31_30_31_i_1__0(rf_n_96),
        .rf_reg_r2_0_31_30_31__0(rf_n_223),
        .w_carry(rf_n_91),
        .w_carry__0(rf_n_104),
        .w_carry__0_0(rf_n_107),
        .w_carry__0_1(rf_n_109),
        .w_carry__1(rf_n_124),
        .w_carry__1_0(rf_n_200),
        .w_carry__1_1(rf_n_120),
        .w_carry__1_2(rf_n_203),
        .w_carry__2(rf_n_129),
        .w_carry__2_0(rf_n_127),
        .wd3({wd3[31],wd3[29],wd3[26:21],wd3[16],wd3[14],wd3[12],wd3[0]}),
        .y_carry(alu_n_84),
        .y_carry__0(alu_n_90),
        .y_carry__0_0(alu_n_85),
        .y_carry__0_1(alu_n_87),
        .y_carry__1(alu_n_100),
        .y_carry__2(rf_n_182));
  design_1_top_0_0_regfile rf
       (.ALUControl(ALUControl),
        .ALUResult({ALUResult[31:29],ALUResult[14],ALUResult[10]}),
        .\ALUResult[0]_INST_0_i_3_0 (pcreg_n_149),
        .\ALUResult[10]_INST_0_i_5 (rf_n_108),
        .\ALUResult[18]_INST_0_i_5 (rf_n_122),
        .\ALUResult[19]_INST_0_i_4_0 (rf_n_182),
        .\ALUResult[19]_INST_0_i_7_0 (rf_n_116),
        .\ALUResult[1]_INST_0_i_2_0 ({rf_n_248,rf_n_249,rf_n_250,rf_n_251}),
        .\ALUResult[20]_INST_0_i_5 (rf_n_126),
        .\ALUResult[21]_INST_0_i_6_0 (rf_n_121),
        .\ALUResult[23]_INST_0_i_6 (rf_n_123),
        .\ALUResult[27]_INST_0_i_3 (pcreg_n_130),
        .\ALUResult[27]_INST_0_i_3_0 (pcreg_n_126),
        .\ALUResult[2]_INST_0_i_1_0 ({rf_n_252,rf_n_253,rf_n_254,rf_n_255}),
        .\ALUResult[2]_INST_0_i_1_1 ({rf_n_256,rf_n_257,rf_n_258,rf_n_259}),
        .\ALUResult[2]_INST_0_i_1_2 (rf_n_285),
        .\ALUResult[30]_INST_0_i_3 ({data6[30],data6[15],data6[1]}),
        .\ALUResult[30]_INST_0_i_6 (rf_n_84),
        .\ALUResult[31]_INST_0_i_10_0 (rf_n_276),
        .\ALUResult[31]_INST_0_i_12 (rf_n_283),
        .\ALUResult[31]_INST_0_i_15 (rf_n_128),
        .\ALUResult[31]_INST_0_i_2_0 (pcreg_n_127),
        .\ALUResult[5]_INST_0_i_4_0 (pcreg_n_137),
        .D({rf_n_31,rf_n_32,rf_n_33,rf_n_34,rf_n_35,rf_n_36,rf_n_37,rf_n_38,rf_n_39,rf_n_40,rf_n_41,rf_n_42,rf_n_43,rf_n_44,rf_n_45}),
        .DI(rf_n_185),
        .Instr(Instr),
        .Q(Q),
        .ReadData({ReadData[31],ReadData[28],ReadData[19],ReadData[17],ReadData[15],ReadData[13],ReadData[11],ReadData[9:7]}),
        .S({rf_n_224,rf_n_225,rf_n_226,rf_n_227}),
        .SrcA({SrcA[29:16],SrcA[14],SrcA[12],SrcA[10],SrcA[8],SrcA[2]}),
        .WriteData(WriteData),
        .\WriteData[3]_INST_0_0 (rf_n_85),
        .\WriteData[3]_INST_0_1 (rf_n_138),
        .\WriteData[4]_INST_0_0 (rf_n_90),
        .\WriteData[4]_INST_0_1 (rf_n_186),
        .\addressM[0] (pcreg_n_112),
        .\addressM[0]_0 (alu_n_92),
        .\addressM[0]_1 (alu_n_91),
        .\addressM[10] (alu_n_93),
        .\addressM[11] (pcreg_n_123),
        .\addressM[11]_0 (pcreg_n_84),
        .\addressM[11]_1 (alu_n_94),
        .\addressM[11]_2 (alu_n_100),
        .\addressM[13] (pcreg_n_125),
        .\addressM[13]_0 (pcreg_n_86),
        .\addressM[13]_1 (pcreg_n_85),
        .\addressM[14] (alu_n_82),
        .\addressM[15] (pcreg_n_90),
        .\addressM[17] (pcreg_n_92),
        .\addressM[17]_0 (pcreg_n_91),
        .\addressM[18] (alu_n_60),
        .\addressM[19] (pcreg_n_193),
        .\addressM[1] (pcreg_n_69),
        .\addressM[1]_0 (pcreg_n_70),
        .\addressM[1]_1 (pcreg_n_136),
        .\addressM[20] (pcreg_n_94),
        .\addressM[20]_0 (alu_n_96),
        .\addressM[28] ({data0[28],data0[19],data0[17],data0[15],data0[13],data0[11],data0[9:1]}),
        .\addressM[28]_0 (pcreg_n_107),
        .\addressM[28]_1 (alu_n_98),
        .\addressM[2] (alu_n_75),
        .\addressM[2]_0 (alu_n_84),
        .\addressM[31] (pcreg_n_144),
        .\addressM[31]_0 (pcreg_n_109),
        .\addressM[3] (pcreg_n_134),
        .\addressM[3]_0 (alu_n_76),
        .\addressM[4] (pcreg_n_119),
        .\addressM[4]_0 (alu_n_77),
        .\addressM[4]_1 (alu_n_87),
        .\addressM[4]_2 (alu_n_88),
        .\addressM[4]_3 (alu_n_85),
        .\addressM[4]_4 (alu_n_89),
        .\addressM[5] (pcreg_n_118),
        .\addressM[5]_0 (alu_n_78),
        .\addressM[6] (pcreg_n_133),
        .\addressM[6]_0 (alu_n_79),
        .\addressM[7] (pcreg_n_153),
        .\addressM[7]_0 (alu_n_80),
        .\addressM[8] (alu_n_81),
        .\addressM[9] (pcreg_n_114),
        .\addressM[9]_0 (pcreg_n_192),
        .\addressM[9]_1 (pcreg_n_83),
        .clk(clk),
        .clk_0(rd10),
        .clk_1({rf_n_49,rf_n_50,rf_n_51,rf_n_52}),
        .clk_10(rf_n_111),
        .clk_11(rf_n_113),
        .clk_12(rf_n_118),
        .clk_13(rf_n_120),
        .clk_14(rf_n_124),
        .clk_15(rf_n_127),
        .clk_16(rf_n_129),
        .clk_17(rf_n_130),
        .clk_18(rf_n_131),
        .clk_19(rf_n_132),
        .clk_2(rf_n_81),
        .clk_20(rf_n_134),
        .clk_21(rf_n_178),
        .clk_22(rf_n_196),
        .clk_23(rf_n_199),
        .clk_24(rf_n_200),
        .clk_25(rf_n_203),
        .clk_26(rf_n_204),
        .clk_27(rf_n_205),
        .clk_28(rf_n_206),
        .clk_29(rf_n_207),
        .clk_3(rf_n_91),
        .clk_4(rf_n_92),
        .clk_5(rf_n_93),
        .clk_6(rf_n_104),
        .clk_7(rf_n_105),
        .clk_8(rf_n_107),
        .clk_9(rf_n_109),
        .d1({d1[28],d1[19],d1[17],d1[15],d1[13],d1[11],d1[9:1]}),
        .immext(\ext/immext [1]),
        .p_0_in({p_0_in[23],p_0_in[15],p_0_in[7]}),
        .\q[31]_i_11_0 (alu_n_62),
        .\q[31]_i_11_1 (pcreg_n_101),
        .\q[31]_i_11_2 (alu_n_64),
        .\q[31]_i_11_3 (pcreg_n_105),
        .\q[31]_i_13_0 (pcreg_n_148),
        .\q[31]_i_14_0 (pcreg_n_111),
        .\q[31]_i_14_1 (alu_n_74),
        .\q[31]_i_18 (alu_n_70),
        .\q[31]_i_21_0 (pcreg_n_154),
        .\q[31]_i_21_1 (pcreg_n_143),
        .\q[31]_i_21_2 (pcreg_n_141),
        .\q[31]_i_21_3 (pcreg_n_139),
        .\q[31]_i_24_0 (pcreg_n_147),
        .\q[31]_i_34 (alu_n_99),
        .\q[31]_i_39 (pcreg_n_131),
        .\q[31]_i_40_0 (pcreg_n_128),
        .\q[31]_i_40_1 (pcreg_n_135),
        .\q[31]_i_40_2 (pcreg_n_129),
        .\q[31]_i_42 (pcreg_n_132),
        .\q[31]_i_58 (rf_n_125),
        .\q[31]_i_5_0 (alu_n_48),
        .\q[31]_i_5_1 (alu_n_47),
        .\q[31]_i_5_2 (pcreg_n_82),
        .\q[31]_i_6 (rf_n_46),
        .\q_reg[0] (rf_n_47),
        .\q_reg[0]_0 (rf_n_281),
        .\q_reg[0]_1 (rf_n_284),
        .\q_reg[11] ({rf_n_228,rf_n_229,rf_n_230,rf_n_231}),
        .\q_reg[12] (rf_n_110),
        .\q_reg[13] (rf_n_115),
        .\q_reg[13]_0 ({SrcA[13],SrcA[11],SrcA[9],SrcA[7:3],SrcA[1:0]}),
        .\q_reg[14] ({rf_n_175,rf_n_176,rf_n_177}),
        .\q_reg[14]_0 ({rf_n_179,rf_n_180,rf_n_181}),
        .\q_reg[15] ({rf_n_232,rf_n_233,rf_n_234,rf_n_235}),
        .\q_reg[16] (rf_n_117),
        .\q_reg[19] ({ALUResult[19],ALUResult[17],ALUResult[15],ALUResult[13],ALUResult[11],ALUResult[9:8]}),
        .\q_reg[19]_0 ({rf_n_236,rf_n_237,rf_n_238,rf_n_239}),
        .\q_reg[1] (ALUResult[1]),
        .\q_reg[22] ({rf_n_201,rf_n_202}),
        .\q_reg[23] (rf_n_187),
        .\q_reg[23]_0 ({rf_n_240,rf_n_241,rf_n_242,rf_n_243}),
        .\q_reg[27] ({rf_n_244,rf_n_245,rf_n_246,rf_n_247}),
        .\q_reg[28] (ALUResult[28]),
        .\q_reg[28]_0 ({d2[28],d2[19],d2[17],d2[15],d2[13],d2[11],d2[9:1]}),
        .\q_reg[28]_1 (pcreg_n_167),
        .\q_reg[28]_2 (alu_n_51),
        .\q_reg[2] (ALUResult[2]),
        .\q_reg[30] (rf_n_191),
        .\q_reg[30]_0 (rf_n_197),
        .\q_reg[30]_1 (rf_n_282),
        .\q_reg[31] (rf_n_53),
        .\q_reg[31]_0 ({result2[30:24],result2[22:16],result2[14:8],result2[6:4],result2[2:1]}),
        .\q_reg[31]_1 (rf_n_133),
        .\q_reg[31]_2 ({rf_n_139,rf_n_140,rf_n_141}),
        .\q_reg[31]_3 ({rf_n_192,rf_n_193,rf_n_194,rf_n_195}),
        .\q_reg[31]_4 (rf_n_198),
        .\q_reg[31]_5 ({rf_n_260,rf_n_261,rf_n_262,rf_n_263}),
        .\q_reg[31]_6 ({rf_n_268,rf_n_269,rf_n_270,rf_n_271}),
        .\q_reg[31]_7 ({rf_n_272,rf_n_273,rf_n_274,rf_n_275}),
        .\q_reg[31]_i_2_0 (pcreg_n_89),
        .\q_reg[3] (ALUResult[3]),
        .\q_reg[4] (ALUResult[4]),
        .\q_reg[5] (ALUResult[5]),
        .\q_reg[6] (ALUResult[6]),
        .\q_reg[6]_0 (rf_n_114),
        .\q_reg[6]_1 ({rf_n_183,rf_n_184}),
        .\q_reg[6]_2 (rf_n_190),
        .\q_reg[7] (ALUResult[7]),
        .\q_reg[7]_0 (rf_n_188),
        .\q_reg[7]_1 (rf_n_189),
        .\q_reg[7]_2 ({rf_n_277,rf_n_278,rf_n_279,rf_n_280}),
        .\readDataM[15] (rf_n_119),
        .\readDataM[31] (rf_n_223),
        .\readDataM[7] (rf_n_94),
        .\readDataM[7]_0 (rf_n_106),
        .\readDataM[7]_1 (rf_n_174),
        .result1_carry__0(pcreg_n_202),
        .result1_carry__0_i_3_0(pcreg_n_122),
        .result1_carry__0_i_3_1(pcreg_n_140),
        .result1_carry__1(pcreg_n_120),
        .result1_carry__1_i_11_0(pcreg_n_142),
        .result1_carry__2(alu_n_49),
        .result1_carry__2_0(pcreg_n_124),
        .result1_carry__2_1(pcreg_n_151),
        .result1_carry__3_i_11_0(pcreg_n_155),
        .result1_carry__3_i_15_0({rf_n_264,rf_n_265,rf_n_266,rf_n_267}),
        .result1_carry__3_i_2_0(pcreg_n_152),
        .result1_carry_i_6_0(pcreg_n_138),
        .result1_carry_i_6_1(pcreg_n_150),
        .result1_carry_i_6_2(pcreg_n_121),
        .rf_reg_r1_0_31_0_5_i_7(alu_n_90),
        .rf_reg_r1_0_31_0_5_i_8_0(rf_n_112),
        .rf_reg_r1_0_31_0_5_i_9_0(rf_n_96),
        .rf_reg_r1_0_31_6_11_i_13_0(rf_n_95),
        .rf_reg_r1_0_31_6_11_i_7_0({\ext/immext [7:5],\ext/immext [3:2]}),
        .rf_reg_r2_0_31_12_17_0(pcadd4_n_43),
        .rf_reg_r2_0_31_12_17_1(pcadd4_n_45),
        .rf_reg_r2_0_31_12_17_2(pcadd4_n_47),
        .rf_reg_r2_0_31_18_23_0(pcadd4_n_49),
        .rf_reg_r2_0_31_24_29_0(pcadd4_n_58),
        .\writeDataM[15] (alu_n_86),
        .\writeDataM[31] ({wd3[31:29],wd3[27:20],wd3[18],wd3[16],wd3[14],wd3[12:0]}),
        .y_carry_i_5(rf_n_286));
endmodule

(* ORIG_REF_NAME = "flopenr" *) 
module design_1_top_0_0_flopenr
   (S,
    Q,
    wd3,
    \readDataM[7] ,
    \q_reg[10]_0 ,
    \q_reg[11]_0 ,
    SrcA,
    \ALUResult[31]_INST_0_i_5_0 ,
    \ALUResult[31]_INST_0_i_13_0 ,
    \q_reg[29]_0 ,
    \q_reg[15]_0 ,
    \q_reg[12]_0 ,
    \ALUResult[31]_INST_0_i_13_1 ,
    \ALUResult[12]_INST_0_i_6_0 ,
    \q_reg[13]_0 ,
    \ALUResult[14]_INST_0_i_6_0 ,
    \q_reg[15]_1 ,
    \q_reg[19]_0 ,
    \q[31]_i_19_0 ,
    \ALUResult[20]_INST_0_i_6_0 ,
    \q_reg[17]_0 ,
    \ALUResult[22]_INST_0_i_6 ,
    \q_reg[23]_0 ,
    \ALUResult[25]_INST_0_i_6_0 ,
    \q_reg[23]_1 ,
    \q_reg[23]_2 ,
    \ALUResult[28]_INST_0_i_6_0 ,
    \q_reg[27]_0 ,
    \ALUResult[29]_INST_0_i_6_0 ,
    \q_reg[27]_1 ,
    \q[31]_i_54 ,
    \ALUResult[30]_INST_0_i_9 ,
    \q_reg[27]_2 ,
    \ALUResult[31]_INST_0_i_22_0 ,
    \q[31]_i_56 ,
    \ALUResult[27]_INST_0_i_5_0 ,
    \ALUResult[31]_INST_0_i_20_0 ,
    \ALUResult[30]_INST_0_i_8 ,
    \ALUResult[31]_INST_0_i_23_0 ,
    ALUControl,
    \q_reg[8]_0 ,
    \ALUResult[8]_INST_0_i_6_0 ,
    \q_reg[9]_0 ,
    \q_reg[9]_1 ,
    DI,
    \q_reg[5]_0 ,
    \q_reg[4]_0 ,
    result1_carry_i_14_0,
    \q_reg[17]_1 ,
    \q_reg[19]_1 ,
    \q_reg[11]_1 ,
    \q_reg[25]_0 ,
    \q_reg[13]_1 ,
    \q_reg[1]_0 ,
    \q_reg[3]_0 ,
    \q_reg[3]_1 ,
    \q_reg[1]_1 ,
    \q_reg[5]_1 ,
    \q_reg[2]_0 ,
    \q_reg[0]_0 ,
    \q_reg[6]_0 ,
    \q_reg[3]_2 ,
    \q_reg[5]_2 ,
    \q_reg[1]_2 ,
    \q_reg[0]_1 ,
    \q_reg[13]_2 ,
    \q_reg[13]_3 ,
    \q_reg[30]_0 ,
    \q_reg[30]_1 ,
    \q_reg[20]_0 ,
    \q_reg[26]_0 ,
    \ALUResult[31]_INST_0_i_16_0 ,
    \q_reg[3]_3 ,
    \q_reg[5]_3 ,
    \ALUResult[0]_INST_0_i_16_0 ,
    \q_reg[8]_1 ,
    \q_reg[12]_1 ,
    \q_reg[29]_1 ,
    \q_reg[25]_1 ,
    \q_reg[7]_0 ,
    \q_reg[9]_2 ,
    \q_reg[27]_3 ,
    \q_reg[10]_1 ,
    \q_reg[18]_0 ,
    \q_reg[23]_3 ,
    \q_reg[29]_2 ,
    \q_reg[31]_0 ,
    \q[31]_i_4_0 ,
    \q_reg[31]_1 ,
    \q_reg[3]_4 ,
    \q_reg[7]_1 ,
    \q_reg[11]_2 ,
    \q_reg[15]_2 ,
    \q_reg[19]_2 ,
    \q_reg[9]_3 ,
    \q_reg[19]_3 ,
    \q_reg[23]_4 ,
    \q_reg[27]_4 ,
    \ALUResult[1]_INST_0_i_2 ,
    Instr,
    \q_reg[0]_2 ,
    \q_reg[0]_3 ,
    rf_reg_r1_0_31_0_5,
    rf_reg_r1_0_31_24_29,
    ReadData,
    rf_reg_r1_0_31_30_31_i_1__0,
    ALUResult,
    \q_reg[31]_2 ,
    \q_reg[31]_3 ,
    \q_reg[30]_2 ,
    rf_reg_r2_0_31_30_31__0,
    rf_reg_r1_0_31_12_17_i_4_0,
    d1,
    \addressM[10] ,
    \addressM[10]_0 ,
    \addressM[29] ,
    rf_reg_r1_0_31_12_17,
    \q[31]_i_10 ,
    \q[31]_i_10_0 ,
    \addressM[12] ,
    \addressM[12]_0 ,
    \addressM[12]_1 ,
    \q[31]_i_15_0 ,
    \q[31]_i_15_1 ,
    rf_reg_r1_0_31_12_17_0,
    \addressM[14] ,
    \addressM[14]_0 ,
    \addressM[14]_1 ,
    rf_reg_r1_0_31_12_17_1,
    rf_reg_r1_0_31_24_29_i_5_0,
    \q[31]_i_12_0 ,
    \q[31]_i_12_1 ,
    \addressM[16] ,
    \addressM[16]_0 ,
    \addressM[16]_1 ,
    \q[31]_i_19_1 ,
    \q[31]_i_12_2 ,
    \q[31]_i_12_3 ,
    rf_reg_r1_0_31_18_23,
    \addressM[21] ,
    rf_reg_r1_0_31_18_23_0,
    \addressM[22] ,
    \addressM[22]_0 ,
    rf_reg_r1_0_31_18_23_1,
    \addressM[23] ,
    rf_reg_r1_0_31_24_29_0,
    \addressM[24] ,
    \addressM[24]_0 ,
    rf_reg_r1_0_31_24_29_1,
    \addressM[25] ,
    \q[31]_i_16 ,
    rf_reg_r1_0_31_24_29_2,
    \addressM[26] ,
    \addressM[26]_0 ,
    \addressM[27] ,
    \q[31]_i_17 ,
    \addressM[29]_0 ,
    \addressM[30] ,
    w_carry__1,
    w_carry__1_0,
    w_carry__1_1,
    w_carry__0,
    \ALUResult[29]_INST_0_i_1_0 ,
    w_carry__0_0,
    w_carry,
    \ALUResult[31]_INST_0_i_9 ,
    result1_carry__0_i_8,
    \ALUResult[14]_INST_0_i_4_0 ,
    \ALUResult[0]_INST_0_i_15 ,
    \ALUResult[17]_INST_0_i_4 ,
    result1_carry__0_i_8_0,
    \q[31]_i_34 ,
    \q[31]_i_42 ,
    \ALUResult[20]_INST_0_i_1 ,
    \ALUResult[31]_INST_0_i_11_0 ,
    \ALUResult[0]_INST_0_i_15_0 ,
    rd10,
    \addressM[29]_1 ,
    w_carry__0_1,
    w_carry__1_2,
    w_carry__2,
    w_carry__2_0,
    y_carry__0,
    y_carry__0_0,
    y_carry__0_1,
    y_carry,
    y_carry__1,
    y_carry__2,
    \ALUResult[13]_INST_0_i_3 ,
    result1_carry__0_i_8_1,
    PCReady,
    clk,
    reset,
    D);
  output [0:0]S;
  output [31:0]Q;
  output [11:0]wd3;
  output \readDataM[7] ;
  output \q_reg[10]_0 ;
  output \q_reg[11]_0 ;
  output [20:0]SrcA;
  output \ALUResult[31]_INST_0_i_5_0 ;
  output \ALUResult[31]_INST_0_i_13_0 ;
  output [9:0]\q_reg[29]_0 ;
  output \q_reg[15]_0 ;
  output \q_reg[12]_0 ;
  output \ALUResult[31]_INST_0_i_13_1 ;
  output \ALUResult[12]_INST_0_i_6_0 ;
  output \q_reg[13]_0 ;
  output \ALUResult[14]_INST_0_i_6_0 ;
  output \q_reg[15]_1 ;
  output \q_reg[19]_0 ;
  output \q[31]_i_19_0 ;
  output \ALUResult[20]_INST_0_i_6_0 ;
  output \q_reg[17]_0 ;
  output \ALUResult[22]_INST_0_i_6 ;
  output \q_reg[23]_0 ;
  output \ALUResult[25]_INST_0_i_6_0 ;
  output \q_reg[23]_1 ;
  output \q_reg[23]_2 ;
  output \ALUResult[28]_INST_0_i_6_0 ;
  output \q_reg[27]_0 ;
  output \ALUResult[29]_INST_0_i_6_0 ;
  output \q_reg[27]_1 ;
  output \q[31]_i_54 ;
  output \ALUResult[30]_INST_0_i_9 ;
  output \q_reg[27]_2 ;
  output \ALUResult[31]_INST_0_i_22_0 ;
  output \q[31]_i_56 ;
  output \ALUResult[27]_INST_0_i_5_0 ;
  output \ALUResult[31]_INST_0_i_20_0 ;
  output \ALUResult[30]_INST_0_i_8 ;
  output \ALUResult[31]_INST_0_i_23_0 ;
  output [0:0]ALUControl;
  output \q_reg[8]_0 ;
  output \ALUResult[8]_INST_0_i_6_0 ;
  output [0:0]\q_reg[9]_0 ;
  output \q_reg[9]_1 ;
  output [2:0]DI;
  output \q_reg[5]_0 ;
  output \q_reg[4]_0 ;
  output result1_carry_i_14_0;
  output \q_reg[17]_1 ;
  output \q_reg[19]_1 ;
  output \q_reg[11]_1 ;
  output \q_reg[25]_0 ;
  output \q_reg[13]_1 ;
  output \q_reg[1]_0 ;
  output \q_reg[3]_0 ;
  output \q_reg[3]_1 ;
  output \q_reg[1]_1 ;
  output \q_reg[5]_1 ;
  output \q_reg[2]_0 ;
  output \q_reg[0]_0 ;
  output \q_reg[6]_0 ;
  output \q_reg[3]_2 ;
  output \q_reg[5]_2 ;
  output \q_reg[1]_2 ;
  output \q_reg[0]_1 ;
  output \q_reg[13]_2 ;
  output \q_reg[13]_3 ;
  output \q_reg[30]_0 ;
  output \q_reg[30]_1 ;
  output \q_reg[20]_0 ;
  output \q_reg[26]_0 ;
  output \ALUResult[31]_INST_0_i_16_0 ;
  output [1:0]\q_reg[3]_3 ;
  output \q_reg[5]_3 ;
  output \ALUResult[0]_INST_0_i_16_0 ;
  output \q_reg[8]_1 ;
  output \q_reg[12]_1 ;
  output \q_reg[29]_1 ;
  output \q_reg[25]_1 ;
  output \q_reg[7]_0 ;
  output \q_reg[9]_2 ;
  output \q_reg[27]_3 ;
  output [0:0]\q_reg[10]_1 ;
  output [1:0]\q_reg[18]_0 ;
  output [3:0]\q_reg[23]_3 ;
  output [2:0]\q_reg[29]_2 ;
  output \q_reg[31]_0 ;
  output \q[31]_i_4_0 ;
  output [3:0]\q_reg[31]_1 ;
  output [3:0]\q_reg[3]_4 ;
  output [3:0]\q_reg[7]_1 ;
  output [3:0]\q_reg[11]_2 ;
  output [3:0]\q_reg[15]_2 ;
  output [3:0]\q_reg[19]_2 ;
  output \q_reg[9]_3 ;
  output \q_reg[19]_3 ;
  output [3:0]\q_reg[23]_4 ;
  output [3:0]\q_reg[27]_4 ;
  output \ALUResult[1]_INST_0_i_2 ;
  input [29:0]Instr;
  input \q_reg[0]_2 ;
  input \q_reg[0]_3 ;
  input rf_reg_r1_0_31_0_5;
  input rf_reg_r1_0_31_24_29;
  input [12:0]ReadData;
  input rf_reg_r1_0_31_30_31_i_1__0;
  input [2:0]ALUResult;
  input [2:0]\q_reg[31]_2 ;
  input \q_reg[31]_3 ;
  input \q_reg[30]_2 ;
  input rf_reg_r2_0_31_30_31__0;
  input rf_reg_r1_0_31_12_17_i_4_0;
  input [10:0]d1;
  input \addressM[10] ;
  input \addressM[10]_0 ;
  input [10:0]\addressM[29] ;
  input rf_reg_r1_0_31_12_17;
  input \q[31]_i_10 ;
  input \q[31]_i_10_0 ;
  input \addressM[12] ;
  input \addressM[12]_0 ;
  input \addressM[12]_1 ;
  input \q[31]_i_15_0 ;
  input \q[31]_i_15_1 ;
  input rf_reg_r1_0_31_12_17_0;
  input \addressM[14] ;
  input \addressM[14]_0 ;
  input \addressM[14]_1 ;
  input rf_reg_r1_0_31_12_17_1;
  input rf_reg_r1_0_31_24_29_i_5_0;
  input \q[31]_i_12_0 ;
  input \q[31]_i_12_1 ;
  input \addressM[16] ;
  input \addressM[16]_0 ;
  input \addressM[16]_1 ;
  input \q[31]_i_19_1 ;
  input \q[31]_i_12_2 ;
  input \q[31]_i_12_3 ;
  input rf_reg_r1_0_31_18_23;
  input \addressM[21] ;
  input rf_reg_r1_0_31_18_23_0;
  input \addressM[22] ;
  input \addressM[22]_0 ;
  input rf_reg_r1_0_31_18_23_1;
  input \addressM[23] ;
  input rf_reg_r1_0_31_24_29_0;
  input \addressM[24] ;
  input \addressM[24]_0 ;
  input rf_reg_r1_0_31_24_29_1;
  input \addressM[25] ;
  input \q[31]_i_16 ;
  input rf_reg_r1_0_31_24_29_2;
  input \addressM[26] ;
  input \addressM[26]_0 ;
  input \addressM[27] ;
  input \q[31]_i_17 ;
  input \addressM[29]_0 ;
  input \addressM[30] ;
  input w_carry__1;
  input w_carry__1_0;
  input w_carry__1_1;
  input w_carry__0;
  input [10:0]\ALUResult[29]_INST_0_i_1_0 ;
  input w_carry__0_0;
  input w_carry;
  input \ALUResult[31]_INST_0_i_9 ;
  input result1_carry__0_i_8;
  input \ALUResult[14]_INST_0_i_4_0 ;
  input \ALUResult[0]_INST_0_i_15 ;
  input \ALUResult[17]_INST_0_i_4 ;
  input result1_carry__0_i_8_0;
  input \q[31]_i_34 ;
  input \q[31]_i_42 ;
  input \ALUResult[20]_INST_0_i_1 ;
  input \ALUResult[31]_INST_0_i_11_0 ;
  input \ALUResult[0]_INST_0_i_15_0 ;
  input [30:0]rd10;
  input \addressM[29]_1 ;
  input w_carry__0_1;
  input w_carry__1_2;
  input w_carry__2;
  input w_carry__2_0;
  input y_carry__0;
  input y_carry__0_0;
  input y_carry__0_1;
  input y_carry;
  input y_carry__1;
  input y_carry__2;
  input \ALUResult[13]_INST_0_i_3 ;
  input result1_carry__0_i_8_1;
  input PCReady;
  input clk;
  input reset;
  input [27:0]D;

  wire [0:0]ALUControl;
  wire [2:0]ALUResult;
  wire \ALUResult[0]_INST_0_i_15 ;
  wire \ALUResult[0]_INST_0_i_15_0 ;
  wire \ALUResult[0]_INST_0_i_16_0 ;
  wire \ALUResult[12]_INST_0_i_3_n_0 ;
  wire \ALUResult[12]_INST_0_i_5_n_0 ;
  wire \ALUResult[12]_INST_0_i_6_0 ;
  wire \ALUResult[13]_INST_0_i_3 ;
  wire \ALUResult[14]_INST_0_i_3_n_0 ;
  wire \ALUResult[14]_INST_0_i_4_0 ;
  wire \ALUResult[14]_INST_0_i_6_0 ;
  wire \ALUResult[14]_INST_0_i_6_n_0 ;
  wire \ALUResult[16]_INST_0_i_3_n_0 ;
  wire \ALUResult[16]_INST_0_i_6_n_0 ;
  wire \ALUResult[17]_INST_0_i_4 ;
  wire \ALUResult[18]_INST_0_i_6_n_0 ;
  wire \ALUResult[1]_INST_0_i_2 ;
  wire \ALUResult[20]_INST_0_i_1 ;
  wire \ALUResult[20]_INST_0_i_6_0 ;
  wire \ALUResult[21]_INST_0_i_1_n_0 ;
  wire \ALUResult[21]_INST_0_i_5_n_0 ;
  wire \ALUResult[22]_INST_0_i_1_n_0 ;
  wire \ALUResult[22]_INST_0_i_4_n_0 ;
  wire \ALUResult[22]_INST_0_i_6 ;
  wire \ALUResult[23]_INST_0_i_1_n_0 ;
  wire \ALUResult[23]_INST_0_i_4_n_0 ;
  wire \ALUResult[23]_INST_0_i_5_n_0 ;
  wire \ALUResult[24]_INST_0_i_3_n_0 ;
  wire \ALUResult[25]_INST_0_i_3_n_0 ;
  wire \ALUResult[25]_INST_0_i_5_n_0 ;
  wire \ALUResult[25]_INST_0_i_6_0 ;
  wire \ALUResult[26]_INST_0_i_3_n_0 ;
  wire \ALUResult[27]_INST_0_i_5_0 ;
  wire \ALUResult[27]_INST_0_i_5_n_0 ;
  wire \ALUResult[27]_INST_0_i_6_n_0 ;
  wire \ALUResult[28]_INST_0_i_6_0 ;
  wire [10:0]\ALUResult[29]_INST_0_i_1_0 ;
  wire \ALUResult[29]_INST_0_i_1_n_0 ;
  wire \ALUResult[29]_INST_0_i_5_n_0 ;
  wire \ALUResult[29]_INST_0_i_6_0 ;
  wire \ALUResult[29]_INST_0_i_6_n_0 ;
  wire \ALUResult[30]_INST_0_i_7_n_0 ;
  wire \ALUResult[30]_INST_0_i_8 ;
  wire \ALUResult[30]_INST_0_i_9 ;
  wire \ALUResult[31]_INST_0_i_11_0 ;
  wire \ALUResult[31]_INST_0_i_13_0 ;
  wire \ALUResult[31]_INST_0_i_13_1 ;
  wire \ALUResult[31]_INST_0_i_16_0 ;
  wire \ALUResult[31]_INST_0_i_16_n_0 ;
  wire \ALUResult[31]_INST_0_i_20_0 ;
  wire \ALUResult[31]_INST_0_i_20_n_0 ;
  wire \ALUResult[31]_INST_0_i_21_n_0 ;
  wire \ALUResult[31]_INST_0_i_22_0 ;
  wire \ALUResult[31]_INST_0_i_22_n_0 ;
  wire \ALUResult[31]_INST_0_i_23_0 ;
  wire \ALUResult[31]_INST_0_i_23_n_0 ;
  wire \ALUResult[31]_INST_0_i_24_n_0 ;
  wire \ALUResult[31]_INST_0_i_5_0 ;
  wire \ALUResult[31]_INST_0_i_9 ;
  wire \ALUResult[8]_INST_0_i_6_0 ;
  wire [27:0]D;
  wire [2:0]DI;
  wire [29:0]Instr;
  wire PCReady;
  wire [31:0]Q;
  wire [12:0]ReadData;
  wire [0:0]S;
  wire [20:0]SrcA;
  wire \addressM[10] ;
  wire \addressM[10]_0 ;
  wire \addressM[12] ;
  wire \addressM[12]_0 ;
  wire \addressM[12]_1 ;
  wire \addressM[14] ;
  wire \addressM[14]_0 ;
  wire \addressM[14]_1 ;
  wire \addressM[16] ;
  wire \addressM[16]_0 ;
  wire \addressM[16]_1 ;
  wire \addressM[21] ;
  wire \addressM[22] ;
  wire \addressM[22]_0 ;
  wire \addressM[23] ;
  wire \addressM[24] ;
  wire \addressM[24]_0 ;
  wire \addressM[25] ;
  wire \addressM[26] ;
  wire \addressM[26]_0 ;
  wire \addressM[27] ;
  wire [10:0]\addressM[29] ;
  wire \addressM[29]_0 ;
  wire \addressM[29]_1 ;
  wire \addressM[30] ;
  wire clk;
  wire [10:0]d1;
  wire \q[0]_i_1_n_0 ;
  wire \q[29]_i_1_n_0 ;
  wire \q[29]_i_2_n_0 ;
  wire \q[30]_i_1_n_0 ;
  wire \q[31]_i_10 ;
  wire \q[31]_i_10_0 ;
  wire \q[31]_i_12_0 ;
  wire \q[31]_i_12_1 ;
  wire \q[31]_i_12_2 ;
  wire \q[31]_i_12_3 ;
  wire \q[31]_i_15_0 ;
  wire \q[31]_i_15_1 ;
  wire \q[31]_i_16 ;
  wire \q[31]_i_17 ;
  wire \q[31]_i_18_n_0 ;
  wire \q[31]_i_19_0 ;
  wire \q[31]_i_19_1 ;
  wire \q[31]_i_19_n_0 ;
  wire \q[31]_i_1_n_0 ;
  wire \q[31]_i_26_n_0 ;
  wire \q[31]_i_28_n_0 ;
  wire \q[31]_i_34 ;
  wire \q[31]_i_38_n_0 ;
  wire \q[31]_i_41_n_0 ;
  wire \q[31]_i_42 ;
  wire \q[31]_i_44_n_0 ;
  wire \q[31]_i_45_n_0 ;
  wire \q[31]_i_4_0 ;
  wire \q[31]_i_54 ;
  wire \q[31]_i_56 ;
  wire \q_reg[0]_0 ;
  wire \q_reg[0]_1 ;
  wire \q_reg[0]_2 ;
  wire \q_reg[0]_3 ;
  wire \q_reg[10]_0 ;
  wire [0:0]\q_reg[10]_1 ;
  wire \q_reg[11]_0 ;
  wire \q_reg[11]_1 ;
  wire [3:0]\q_reg[11]_2 ;
  wire \q_reg[12]_0 ;
  wire \q_reg[12]_1 ;
  wire \q_reg[13]_0 ;
  wire \q_reg[13]_1 ;
  wire \q_reg[13]_2 ;
  wire \q_reg[13]_3 ;
  wire \q_reg[15]_0 ;
  wire \q_reg[15]_1 ;
  wire [3:0]\q_reg[15]_2 ;
  wire \q_reg[17]_0 ;
  wire \q_reg[17]_1 ;
  wire [1:0]\q_reg[18]_0 ;
  wire \q_reg[19]_0 ;
  wire \q_reg[19]_1 ;
  wire [3:0]\q_reg[19]_2 ;
  wire \q_reg[19]_3 ;
  wire \q_reg[1]_0 ;
  wire \q_reg[1]_1 ;
  wire \q_reg[1]_2 ;
  wire \q_reg[20]_0 ;
  wire \q_reg[23]_0 ;
  wire \q_reg[23]_1 ;
  wire \q_reg[23]_2 ;
  wire [3:0]\q_reg[23]_3 ;
  wire [3:0]\q_reg[23]_4 ;
  wire \q_reg[25]_0 ;
  wire \q_reg[25]_1 ;
  wire \q_reg[26]_0 ;
  wire \q_reg[27]_0 ;
  wire \q_reg[27]_1 ;
  wire \q_reg[27]_2 ;
  wire \q_reg[27]_3 ;
  wire [3:0]\q_reg[27]_4 ;
  wire [9:0]\q_reg[29]_0 ;
  wire \q_reg[29]_1 ;
  wire [2:0]\q_reg[29]_2 ;
  wire \q_reg[2]_0 ;
  wire \q_reg[30]_0 ;
  wire \q_reg[30]_1 ;
  wire \q_reg[30]_2 ;
  wire \q_reg[31]_0 ;
  wire [3:0]\q_reg[31]_1 ;
  wire [2:0]\q_reg[31]_2 ;
  wire \q_reg[31]_3 ;
  wire \q_reg[3]_0 ;
  wire \q_reg[3]_1 ;
  wire \q_reg[3]_2 ;
  wire [1:0]\q_reg[3]_3 ;
  wire [3:0]\q_reg[3]_4 ;
  wire \q_reg[4]_0 ;
  wire \q_reg[5]_0 ;
  wire \q_reg[5]_1 ;
  wire \q_reg[5]_2 ;
  wire \q_reg[5]_3 ;
  wire \q_reg[6]_0 ;
  wire \q_reg[7]_0 ;
  wire [3:0]\q_reg[7]_1 ;
  wire \q_reg[8]_0 ;
  wire \q_reg[8]_1 ;
  wire [0:0]\q_reg[9]_0 ;
  wire \q_reg[9]_1 ;
  wire \q_reg[9]_2 ;
  wire \q_reg[9]_3 ;
  wire [30:0]rd10;
  wire \readDataM[7] ;
  wire reset;
  wire result1_carry__0_i_16_n_0;
  wire result1_carry__0_i_8;
  wire result1_carry__0_i_8_0;
  wire result1_carry__0_i_8_1;
  wire result1_carry__2_i_17_n_0;
  wire result1_carry_i_14_0;
  wire rf_reg_r1_0_31_0_5;
  wire rf_reg_r1_0_31_12_17;
  wire rf_reg_r1_0_31_12_17_0;
  wire rf_reg_r1_0_31_12_17_1;
  wire rf_reg_r1_0_31_12_17_i_13_n_0;
  wire rf_reg_r1_0_31_12_17_i_17_n_0;
  wire rf_reg_r1_0_31_12_17_i_4_0;
  wire rf_reg_r1_0_31_12_17_i_9_n_0;
  wire rf_reg_r1_0_31_18_23;
  wire rf_reg_r1_0_31_18_23_0;
  wire rf_reg_r1_0_31_18_23_1;
  wire rf_reg_r1_0_31_18_23_i_11_n_0;
  wire rf_reg_r1_0_31_18_23_i_15_n_0;
  wire rf_reg_r1_0_31_18_23_i_17_n_0;
  wire rf_reg_r1_0_31_24_29;
  wire rf_reg_r1_0_31_24_29_0;
  wire rf_reg_r1_0_31_24_29_1;
  wire rf_reg_r1_0_31_24_29_2;
  wire rf_reg_r1_0_31_24_29_i_13_n_0;
  wire rf_reg_r1_0_31_24_29_i_15_n_0;
  wire rf_reg_r1_0_31_24_29_i_16_n_0;
  wire rf_reg_r1_0_31_24_29_i_5_0;
  wire rf_reg_r1_0_31_24_29_i_7_n_0;
  wire rf_reg_r1_0_31_24_29_i_9_n_0;
  wire rf_reg_r1_0_31_30_31_i_1__0;
  wire rf_reg_r2_0_31_30_31__0;
  wire w_carry;
  wire w_carry__0;
  wire w_carry__0_0;
  wire w_carry__0_1;
  wire w_carry__1;
  wire w_carry__1_0;
  wire w_carry__1_1;
  wire w_carry__1_2;
  wire w_carry__2;
  wire w_carry__2_0;
  wire [11:0]wd3;
  wire y_carry;
  wire y_carry__0;
  wire y_carry__0_0;
  wire y_carry__0_1;
  wire y_carry__1;
  wire y_carry__2;

  LUT6 #(
    .INIT(64'hAFAFA0A0303F303F)) 
    \ALUResult[0]_INST_0_i_13 
       (.I0(\q_reg[9]_1 ),
        .I1(SrcA[15]),
        .I2(\ALUResult[14]_INST_0_i_4_0 ),
        .I3(SrcA[7]),
        .I4(\q_reg[1]_2 ),
        .I5(\ALUResult[0]_INST_0_i_15 ),
        .O(\q_reg[9]_2 ));
  LUT6 #(
    .INIT(64'h8BBB88888BBB8BBB)) 
    \ALUResult[0]_INST_0_i_14 
       (.I0(\q_reg[13]_3 ),
        .I1(\ALUResult[14]_INST_0_i_4_0 ),
        .I2(\ALUResult[31]_INST_0_i_9 ),
        .I3(SrcA[11]),
        .I4(\q_reg[5]_0 ),
        .I5(\ALUResult[0]_INST_0_i_15 ),
        .O(\q_reg[13]_2 ));
  LUT6 #(
    .INIT(64'hA0AFCFCFA0AFC0C0)) 
    \ALUResult[0]_INST_0_i_16 
       (.I0(SrcA[3]),
        .I1(SrcA[18]),
        .I2(\ALUResult[14]_INST_0_i_4_0 ),
        .I3(\q_reg[4]_0 ),
        .I4(\ALUResult[0]_INST_0_i_15 ),
        .I5(SrcA[10]),
        .O(\q_reg[12]_1 ));
  LUT6 #(
    .INIT(64'h5F5030305F503F3F)) 
    \ALUResult[0]_INST_0_i_17 
       (.I0(SrcA[1]),
        .I1(SrcA[14]),
        .I2(\ALUResult[14]_INST_0_i_4_0 ),
        .I3(\q_reg[0]_1 ),
        .I4(\ALUResult[0]_INST_0_i_15 ),
        .I5(SrcA[6]),
        .O(\q_reg[8]_1 ));
  LUT6 #(
    .INIT(64'h774700007747FFFF)) 
    \ALUResult[0]_INST_0_i_20 
       (.I0(Q[13]),
        .I1(\ALUResult[0]_INST_0_i_15_0 ),
        .I2(rd10[13]),
        .I3(\addressM[29]_1 ),
        .I4(\ALUResult[0]_INST_0_i_15 ),
        .I5(SrcA[19]),
        .O(\q_reg[13]_3 ));
  LUT6 #(
    .INIT(64'h4444747777777477)) 
    \ALUResult[0]_INST_0_i_21 
       (.I0(SrcA[4]),
        .I1(\ALUResult[0]_INST_0_i_15 ),
        .I2(\addressM[29]_1 ),
        .I3(rd10[30]),
        .I4(\ALUResult[0]_INST_0_i_15_0 ),
        .I5(Q[30]),
        .O(\q_reg[30]_1 ));
  LUT4 #(
    .INIT(16'hD0DD)) 
    \ALUResult[0]_INST_0_i_23 
       (.I0(SrcA[16]),
        .I1(\ALUResult[0]_INST_0_i_15 ),
        .I2(\ALUResult[31]_INST_0_i_9 ),
        .I3(SrcA[2]),
        .O(\q_reg[26]_0 ));
  LUT6 #(
    .INIT(64'hEFE08F80EFE08080)) 
    \ALUResult[10]_INST_0 
       (.I0(\addressM[10] ),
        .I1(SrcA[2]),
        .I2(\ALUResult[31]_INST_0_i_5_0 ),
        .I3(\addressM[10]_0 ),
        .I4(\ALUResult[31]_INST_0_i_13_0 ),
        .I5(\addressM[29] [0]),
        .O(\q_reg[10]_0 ));
  LUT5 #(
    .INIT(32'h0808FB08)) 
    \ALUResult[10]_INST_0_i_2 
       (.I0(Q[10]),
        .I1(Instr[0]),
        .I2(Instr[3]),
        .I3(rd10[10]),
        .I4(\addressM[29]_1 ),
        .O(SrcA[2]));
  LUT5 #(
    .INIT(32'hF7F704F7)) 
    \ALUResult[11]_INST_0_i_2 
       (.I0(Q[11]),
        .I1(Instr[0]),
        .I2(Instr[3]),
        .I3(rd10[11]),
        .I4(\addressM[29]_1 ),
        .O(\q_reg[11]_1 ));
  LUT6 #(
    .INIT(64'hBFB02F20BFB02020)) 
    \ALUResult[12]_INST_0 
       (.I0(SrcA[3]),
        .I1(\addressM[12] ),
        .I2(\ALUResult[31]_INST_0_i_5_0 ),
        .I3(\ALUResult[12]_INST_0_i_3_n_0 ),
        .I4(\ALUResult[31]_INST_0_i_13_0 ),
        .I5(\addressM[29] [1]),
        .O(\q_reg[29]_0 [0]));
  LUT5 #(
    .INIT(32'h0808FB08)) 
    \ALUResult[12]_INST_0_i_1 
       (.I0(Q[12]),
        .I1(Instr[0]),
        .I2(Instr[3]),
        .I3(rd10[12]),
        .I4(\addressM[29]_1 ),
        .O(SrcA[3]));
  LUT5 #(
    .INIT(32'hFFFFB080)) 
    \ALUResult[12]_INST_0_i_3 
       (.I0(\ALUResult[12]_INST_0_i_6_0 ),
        .I1(\addressM[12]_1 ),
        .I2(\ALUResult[31]_INST_0_i_13_1 ),
        .I3(\addressM[12]_0 ),
        .I4(\ALUResult[12]_INST_0_i_5_n_0 ),
        .O(\ALUResult[12]_INST_0_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \ALUResult[12]_INST_0_i_4 
       (.I0(\ALUResult[14]_INST_0_i_6_n_0 ),
        .I1(result1_carry__0_i_8_0),
        .I2(\q_reg[5]_3 ),
        .O(\ALUResult[12]_INST_0_i_6_0 ));
  LUT6 #(
    .INIT(64'hF9000900FFFFFFFF)) 
    \ALUResult[12]_INST_0_i_5 
       (.I0(SrcA[3]),
        .I1(\addressM[12] ),
        .I2(ALUControl),
        .I3(\ALUResult[8]_INST_0_i_6_0 ),
        .I4(\ALUResult[29]_INST_0_i_1_0 [2]),
        .I5(\ALUResult[31]_INST_0_i_13_0 ),
        .O(\ALUResult[12]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0344000003770000)) 
    \ALUResult[12]_INST_0_i_6 
       (.I0(\q_reg[5]_0 ),
        .I1(result1_carry__0_i_8),
        .I2(\q_reg[1]_2 ),
        .I3(\ALUResult[14]_INST_0_i_4_0 ),
        .I4(\ALUResult[0]_INST_0_i_15 ),
        .I5(\q_reg[9]_1 ),
        .O(\q_reg[5]_3 ));
  LUT5 #(
    .INIT(32'hF7F704F7)) 
    \ALUResult[13]_INST_0_i_2 
       (.I0(Q[13]),
        .I1(Instr[0]),
        .I2(Instr[3]),
        .I3(rd10[13]),
        .I4(\addressM[29]_1 ),
        .O(\q_reg[13]_1 ));
  LUT6 #(
    .INIT(64'hF9000900FFFFFFFF)) 
    \ALUResult[13]_INST_0_i_5 
       (.I0(\q_reg[13]_1 ),
        .I1(\ALUResult[13]_INST_0_i_3 ),
        .I2(ALUControl),
        .I3(\ALUResult[8]_INST_0_i_6_0 ),
        .I4(\ALUResult[29]_INST_0_i_1_0 [3]),
        .I5(\ALUResult[31]_INST_0_i_13_0 ),
        .O(\q_reg[13]_0 ));
  LUT6 #(
    .INIT(64'hBFB02F20BFB02020)) 
    \ALUResult[14]_INST_0 
       (.I0(SrcA[4]),
        .I1(\addressM[14] ),
        .I2(\ALUResult[31]_INST_0_i_5_0 ),
        .I3(\ALUResult[14]_INST_0_i_3_n_0 ),
        .I4(\ALUResult[31]_INST_0_i_13_0 ),
        .I5(\addressM[29] [2]),
        .O(\q_reg[29]_0 [1]));
  LUT5 #(
    .INIT(32'h0808FB08)) 
    \ALUResult[14]_INST_0_i_1 
       (.I0(Q[14]),
        .I1(Instr[0]),
        .I2(Instr[3]),
        .I3(rd10[14]),
        .I4(\addressM[29]_1 ),
        .O(SrcA[4]));
  LUT5 #(
    .INIT(32'hFFFFB080)) 
    \ALUResult[14]_INST_0_i_3 
       (.I0(\ALUResult[14]_INST_0_i_6_0 ),
        .I1(\addressM[12]_1 ),
        .I2(\ALUResult[31]_INST_0_i_13_1 ),
        .I3(\addressM[14]_0 ),
        .I4(\addressM[14]_1 ),
        .O(\ALUResult[14]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \ALUResult[14]_INST_0_i_4 
       (.I0(\ALUResult[16]_INST_0_i_6_n_0 ),
        .I1(result1_carry__0_i_8),
        .I2(\q_reg[5]_2 ),
        .I3(result1_carry__0_i_8_0),
        .I4(\ALUResult[14]_INST_0_i_6_n_0 ),
        .O(\ALUResult[14]_INST_0_i_6_0 ));
  LUT6 #(
    .INIT(64'h0344000003770000)) 
    \ALUResult[14]_INST_0_i_6 
       (.I0(\q_reg[7]_0 ),
        .I1(result1_carry__0_i_8),
        .I2(\q_reg[3]_2 ),
        .I3(\ALUResult[14]_INST_0_i_4_0 ),
        .I4(\ALUResult[0]_INST_0_i_15 ),
        .I5(\q_reg[11]_1 ),
        .O(\ALUResult[14]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hEFE08F80EFE08080)) 
    \ALUResult[16]_INST_0 
       (.I0(\addressM[16] ),
        .I1(SrcA[6]),
        .I2(\ALUResult[31]_INST_0_i_5_0 ),
        .I3(\ALUResult[16]_INST_0_i_3_n_0 ),
        .I4(\ALUResult[31]_INST_0_i_13_0 ),
        .I5(\addressM[29] [3]),
        .O(\q_reg[29]_0 [2]));
  LUT5 #(
    .INIT(32'h0808FB08)) 
    \ALUResult[16]_INST_0_i_2 
       (.I0(Q[16]),
        .I1(Instr[0]),
        .I2(Instr[3]),
        .I3(rd10[16]),
        .I4(\addressM[29]_1 ),
        .O(SrcA[6]));
  LUT5 #(
    .INIT(32'hFFFFB080)) 
    \ALUResult[16]_INST_0_i_3 
       (.I0(\ALUResult[20]_INST_0_i_6_0 ),
        .I1(\addressM[12]_1 ),
        .I2(\ALUResult[31]_INST_0_i_13_1 ),
        .I3(\addressM[16]_0 ),
        .I4(\addressM[16]_1 ),
        .O(\ALUResult[16]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[16]_INST_0_i_4 
       (.I0(\ALUResult[18]_INST_0_i_6_n_0 ),
        .I1(\q[31]_i_42 ),
        .I2(result1_carry__0_i_8_0),
        .I3(\ALUResult[16]_INST_0_i_6_n_0 ),
        .I4(result1_carry__0_i_8),
        .I5(\q_reg[5]_2 ),
        .O(\ALUResult[20]_INST_0_i_6_0 ));
  LUT4 #(
    .INIT(16'h4070)) 
    \ALUResult[16]_INST_0_i_6 
       (.I0(\q_reg[1]_2 ),
        .I1(\ALUResult[14]_INST_0_i_4_0 ),
        .I2(\ALUResult[0]_INST_0_i_15 ),
        .I3(\q_reg[9]_1 ),
        .O(\ALUResult[16]_INST_0_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h0808FB08)) 
    \ALUResult[17]_INST_0_i_2 
       (.I0(Q[17]),
        .I1(Instr[0]),
        .I2(Instr[3]),
        .I3(rd10[17]),
        .I4(\addressM[29]_1 ),
        .O(SrcA[7]));
  LUT6 #(
    .INIT(64'hF6000600FFFFFFFF)) 
    \ALUResult[17]_INST_0_i_5 
       (.I0(SrcA[7]),
        .I1(w_carry__1_1),
        .I2(ALUControl),
        .I3(\ALUResult[8]_INST_0_i_6_0 ),
        .I4(\ALUResult[29]_INST_0_i_1_0 [4]),
        .I5(\ALUResult[31]_INST_0_i_13_0 ),
        .O(\q_reg[17]_0 ));
  LUT5 #(
    .INIT(32'h0808FB08)) 
    \ALUResult[18]_INST_0_i_3 
       (.I0(Q[18]),
        .I1(Instr[0]),
        .I2(Instr[3]),
        .I3(rd10[18]),
        .I4(\addressM[29]_1 ),
        .O(SrcA[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[18]_INST_0_i_4 
       (.I0(\q_reg[5]_2 ),
        .I1(\q_reg[1]_1 ),
        .I2(result1_carry__0_i_8_0),
        .I3(\ALUResult[18]_INST_0_i_6_n_0 ),
        .I4(result1_carry__0_i_8),
        .I5(\q[31]_i_42 ),
        .O(\ALUResult[22]_INST_0_i_6 ));
  LUT4 #(
    .INIT(16'h4070)) 
    \ALUResult[18]_INST_0_i_6 
       (.I0(\q_reg[3]_2 ),
        .I1(\ALUResult[14]_INST_0_i_4_0 ),
        .I2(\ALUResult[0]_INST_0_i_15 ),
        .I3(\q_reg[11]_1 ),
        .O(\ALUResult[18]_INST_0_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h0808FB08)) 
    \ALUResult[19]_INST_0_i_2 
       (.I0(Q[19]),
        .I1(Instr[0]),
        .I2(Instr[3]),
        .I3(rd10[19]),
        .I4(\addressM[29]_1 ),
        .O(SrcA[9]));
  LUT6 #(
    .INIT(64'hF6000600FFFFFFFF)) 
    \ALUResult[19]_INST_0_i_6 
       (.I0(SrcA[9]),
        .I1(w_carry__1),
        .I2(ALUControl),
        .I3(\ALUResult[8]_INST_0_i_6_0 ),
        .I4(\ALUResult[29]_INST_0_i_1_0 [5]),
        .I5(\ALUResult[31]_INST_0_i_13_0 ),
        .O(\q_reg[19]_3 ));
  LUT5 #(
    .INIT(32'hF7F704F7)) 
    \ALUResult[1]_INST_0_i_1 
       (.I0(Q[1]),
        .I1(Instr[0]),
        .I2(Instr[3]),
        .I3(rd10[1]),
        .I4(\addressM[29]_1 ),
        .O(\q_reg[1]_2 ));
  LUT5 #(
    .INIT(32'h0808FB08)) 
    \ALUResult[20]_INST_0_i_2 
       (.I0(Q[20]),
        .I1(Instr[0]),
        .I2(Instr[3]),
        .I3(rd10[20]),
        .I4(\addressM[29]_1 ),
        .O(SrcA[10]));
  LUT4 #(
    .INIT(16'h4070)) 
    \ALUResult[20]_INST_0_i_6 
       (.I0(\q_reg[5]_0 ),
        .I1(\ALUResult[14]_INST_0_i_4_0 ),
        .I2(\ALUResult[0]_INST_0_i_15 ),
        .I3(\q_reg[13]_1 ),
        .O(\q_reg[5]_2 ));
  LUT6 #(
    .INIT(64'hF0FFCCCC00F08888)) 
    \ALUResult[21]_INST_0 
       (.I0(\addressM[29] [4]),
        .I1(\ALUResult[21]_INST_0_i_1_n_0 ),
        .I2(SrcA[11]),
        .I3(\addressM[21] ),
        .I4(\ALUResult[31]_INST_0_i_5_0 ),
        .I5(\ALUResult[31]_INST_0_i_13_0 ),
        .O(\q_reg[29]_0 [3]));
  LUT5 #(
    .INIT(32'hFFFFB080)) 
    \ALUResult[21]_INST_0_i_1 
       (.I0(\ALUResult[25]_INST_0_i_6_0 ),
        .I1(\addressM[12]_1 ),
        .I2(\ALUResult[31]_INST_0_i_13_1 ),
        .I3(\ALUResult[22]_INST_0_i_4_n_0 ),
        .I4(\ALUResult[21]_INST_0_i_5_n_0 ),
        .O(\ALUResult[21]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0808FB08)) 
    \ALUResult[21]_INST_0_i_2 
       (.I0(Q[21]),
        .I1(Instr[0]),
        .I2(Instr[3]),
        .I3(rd10[21]),
        .I4(\addressM[29]_1 ),
        .O(SrcA[11]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[21]_INST_0_i_4 
       (.I0(\q_reg[0]_0 ),
        .I1(\ALUResult[27]_INST_0_i_6_n_0 ),
        .I2(result1_carry__0_i_8_0),
        .I3(\ALUResult[20]_INST_0_i_1 ),
        .I4(result1_carry__0_i_8),
        .I5(\q_reg[2]_0 ),
        .O(\ALUResult[25]_INST_0_i_6_0 ));
  LUT6 #(
    .INIT(64'hF9000900FFFFFFFF)) 
    \ALUResult[21]_INST_0_i_5 
       (.I0(SrcA[11]),
        .I1(\addressM[21] ),
        .I2(ALUControl),
        .I3(\ALUResult[8]_INST_0_i_6_0 ),
        .I4(\ALUResult[29]_INST_0_i_1_0 [6]),
        .I5(\ALUResult[31]_INST_0_i_13_0 ),
        .O(\ALUResult[21]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hF0FFCCCC00F08888)) 
    \ALUResult[22]_INST_0 
       (.I0(\addressM[29] [5]),
        .I1(\ALUResult[22]_INST_0_i_1_n_0 ),
        .I2(SrcA[12]),
        .I3(\addressM[22] ),
        .I4(\ALUResult[31]_INST_0_i_5_0 ),
        .I5(\ALUResult[31]_INST_0_i_13_0 ),
        .O(\q_reg[29]_0 [4]));
  LUT5 #(
    .INIT(32'hFFFFB080)) 
    \ALUResult[22]_INST_0_i_1 
       (.I0(\ALUResult[22]_INST_0_i_4_n_0 ),
        .I1(\addressM[12]_1 ),
        .I2(\ALUResult[31]_INST_0_i_13_1 ),
        .I3(\ALUResult[23]_INST_0_i_4_n_0 ),
        .I4(\addressM[22]_0 ),
        .O(\ALUResult[22]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0808FB08)) 
    \ALUResult[22]_INST_0_i_2 
       (.I0(Q[22]),
        .I1(Instr[0]),
        .I2(Instr[3]),
        .I3(rd10[22]),
        .I4(\addressM[29]_1 ),
        .O(SrcA[12]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[22]_INST_0_i_4 
       (.I0(\q_reg[1]_1 ),
        .I1(\q_reg[5]_1 ),
        .I2(result1_carry__0_i_8_0),
        .I3(\q[31]_i_42 ),
        .I4(result1_carry__0_i_8),
        .I5(\q_reg[3]_1 ),
        .O(\ALUResult[22]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hF0FFCCCC00F08888)) 
    \ALUResult[23]_INST_0 
       (.I0(\addressM[29] [6]),
        .I1(\ALUResult[23]_INST_0_i_1_n_0 ),
        .I2(SrcA[13]),
        .I3(\addressM[23] ),
        .I4(\ALUResult[31]_INST_0_i_5_0 ),
        .I5(\ALUResult[31]_INST_0_i_13_0 ),
        .O(\q_reg[29]_0 [5]));
  LUT5 #(
    .INIT(32'hFFFFB080)) 
    \ALUResult[23]_INST_0_i_1 
       (.I0(\ALUResult[23]_INST_0_i_4_n_0 ),
        .I1(\addressM[12]_1 ),
        .I2(\ALUResult[31]_INST_0_i_13_1 ),
        .I3(\ALUResult[28]_INST_0_i_6_0 ),
        .I4(\ALUResult[23]_INST_0_i_5_n_0 ),
        .O(\ALUResult[23]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0808FB08)) 
    \ALUResult[23]_INST_0_i_2 
       (.I0(Q[23]),
        .I1(Instr[0]),
        .I2(Instr[3]),
        .I3(rd10[23]),
        .I4(\addressM[29]_1 ),
        .O(SrcA[13]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[23]_INST_0_i_4 
       (.I0(\q_reg[2]_0 ),
        .I1(\ALUResult[29]_INST_0_i_6_n_0 ),
        .I2(result1_carry__0_i_8_0),
        .I3(\q_reg[0]_0 ),
        .I4(result1_carry__0_i_8),
        .I5(\ALUResult[27]_INST_0_i_6_n_0 ),
        .O(\ALUResult[23]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hF9000900FFFFFFFF)) 
    \ALUResult[23]_INST_0_i_5 
       (.I0(SrcA[13]),
        .I1(\addressM[23] ),
        .I2(ALUControl),
        .I3(\ALUResult[8]_INST_0_i_6_0 ),
        .I4(\ALUResult[29]_INST_0_i_1_0 [7]),
        .I5(\ALUResult[31]_INST_0_i_13_0 ),
        .O(\ALUResult[23]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h5050CFC0)) 
    \ALUResult[23]_INST_0_i_6 
       (.I0(\q_reg[0]_1 ),
        .I1(SrcA[6]),
        .I2(\ALUResult[17]_INST_0_i_4 ),
        .I3(SrcA[1]),
        .I4(\ALUResult[31]_INST_0_i_9 ),
        .O(\q_reg[0]_0 ));
  LUT6 #(
    .INIT(64'hBF2FBF20B020B020)) 
    \ALUResult[24]_INST_0 
       (.I0(SrcA[14]),
        .I1(\addressM[24] ),
        .I2(\ALUResult[31]_INST_0_i_5_0 ),
        .I3(\ALUResult[31]_INST_0_i_13_0 ),
        .I4(\addressM[29] [7]),
        .I5(\ALUResult[24]_INST_0_i_3_n_0 ),
        .O(\q_reg[29]_0 [6]));
  LUT5 #(
    .INIT(32'h0808FB08)) 
    \ALUResult[24]_INST_0_i_1 
       (.I0(Q[24]),
        .I1(Instr[0]),
        .I2(Instr[3]),
        .I3(rd10[24]),
        .I4(\addressM[29]_1 ),
        .O(SrcA[14]));
  LUT5 #(
    .INIT(32'hFFFFB080)) 
    \ALUResult[24]_INST_0_i_3 
       (.I0(\ALUResult[28]_INST_0_i_6_0 ),
        .I1(\addressM[12]_1 ),
        .I2(\ALUResult[31]_INST_0_i_13_1 ),
        .I3(\ALUResult[29]_INST_0_i_6_0 ),
        .I4(\addressM[24]_0 ),
        .O(\ALUResult[24]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[24]_INST_0_i_4 
       (.I0(\q_reg[3]_1 ),
        .I1(\q[31]_i_34 ),
        .I2(result1_carry__0_i_8_0),
        .I3(\q_reg[1]_1 ),
        .I4(result1_carry__0_i_8),
        .I5(\q_reg[5]_1 ),
        .O(\ALUResult[28]_INST_0_i_6_0 ));
  LUT6 #(
    .INIT(64'h7400740074FF7400)) 
    \ALUResult[24]_INST_0_i_6 
       (.I0(\q_reg[1]_2 ),
        .I1(\ALUResult[31]_INST_0_i_9 ),
        .I2(SrcA[7]),
        .I3(\ALUResult[17]_INST_0_i_4 ),
        .I4(\ALUResult[0]_INST_0_i_15 ),
        .I5(\q_reg[9]_1 ),
        .O(\q_reg[1]_1 ));
  LUT6 #(
    .INIT(64'hBF2FBF20B020B020)) 
    \ALUResult[25]_INST_0 
       (.I0(SrcA[15]),
        .I1(\addressM[25] ),
        .I2(\ALUResult[31]_INST_0_i_5_0 ),
        .I3(\ALUResult[31]_INST_0_i_13_0 ),
        .I4(\addressM[29] [8]),
        .I5(\ALUResult[25]_INST_0_i_3_n_0 ),
        .O(\q_reg[29]_0 [7]));
  LUT5 #(
    .INIT(32'h0808FB08)) 
    \ALUResult[25]_INST_0_i_1 
       (.I0(Q[25]),
        .I1(Instr[0]),
        .I2(Instr[3]),
        .I3(rd10[25]),
        .I4(\addressM[29]_1 ),
        .O(SrcA[15]));
  LUT5 #(
    .INIT(32'hFFFFB080)) 
    \ALUResult[25]_INST_0_i_3 
       (.I0(\ALUResult[29]_INST_0_i_6_0 ),
        .I1(\addressM[12]_1 ),
        .I2(\ALUResult[31]_INST_0_i_13_1 ),
        .I3(\ALUResult[30]_INST_0_i_9 ),
        .I4(\ALUResult[25]_INST_0_i_5_n_0 ),
        .O(\ALUResult[25]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[25]_INST_0_i_4 
       (.I0(\ALUResult[27]_INST_0_i_6_n_0 ),
        .I1(\ALUResult[31]_INST_0_i_22_n_0 ),
        .I2(result1_carry__0_i_8_0),
        .I3(\q_reg[2]_0 ),
        .I4(result1_carry__0_i_8),
        .I5(\ALUResult[29]_INST_0_i_6_n_0 ),
        .O(\ALUResult[29]_INST_0_i_6_0 ));
  LUT6 #(
    .INIT(64'hF9000900FFFFFFFF)) 
    \ALUResult[25]_INST_0_i_5 
       (.I0(SrcA[15]),
        .I1(\addressM[25] ),
        .I2(ALUControl),
        .I3(\ALUResult[8]_INST_0_i_6_0 ),
        .I4(\ALUResult[29]_INST_0_i_1_0 [8]),
        .I5(\ALUResult[31]_INST_0_i_13_0 ),
        .O(\ALUResult[25]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \ALUResult[25]_INST_0_i_6 
       (.I0(SrcA[0]),
        .I1(SrcA[8]),
        .I2(\ALUResult[17]_INST_0_i_4 ),
        .I3(SrcA[2]),
        .I4(\ALUResult[31]_INST_0_i_9 ),
        .O(\q_reg[2]_0 ));
  LUT6 #(
    .INIT(64'hBF2FBF20B020B020)) 
    \ALUResult[26]_INST_0 
       (.I0(SrcA[16]),
        .I1(\addressM[26] ),
        .I2(\ALUResult[31]_INST_0_i_5_0 ),
        .I3(\ALUResult[31]_INST_0_i_13_0 ),
        .I4(\addressM[29] [9]),
        .I5(\ALUResult[26]_INST_0_i_3_n_0 ),
        .O(\q_reg[29]_0 [8]));
  LUT5 #(
    .INIT(32'h0808FB08)) 
    \ALUResult[26]_INST_0_i_1 
       (.I0(Q[26]),
        .I1(Instr[0]),
        .I2(Instr[3]),
        .I3(rd10[26]),
        .I4(\addressM[29]_1 ),
        .O(SrcA[16]));
  LUT5 #(
    .INIT(32'hFFFFB080)) 
    \ALUResult[26]_INST_0_i_3 
       (.I0(\ALUResult[30]_INST_0_i_9 ),
        .I1(\addressM[12]_1 ),
        .I2(\ALUResult[31]_INST_0_i_13_1 ),
        .I3(\ALUResult[31]_INST_0_i_22_0 ),
        .I4(\addressM[26]_0 ),
        .O(\ALUResult[26]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[26]_INST_0_i_4 
       (.I0(\q_reg[5]_1 ),
        .I1(\q_reg[1]_0 ),
        .I2(result1_carry__0_i_8_0),
        .I3(\q_reg[3]_1 ),
        .I4(result1_carry__0_i_8),
        .I5(\q[31]_i_34 ),
        .O(\ALUResult[30]_INST_0_i_9 ));
  LUT6 #(
    .INIT(64'h7400740074FF7400)) 
    \ALUResult[26]_INST_0_i_6 
       (.I0(\q_reg[3]_2 ),
        .I1(\ALUResult[31]_INST_0_i_9 ),
        .I2(SrcA[9]),
        .I3(\ALUResult[17]_INST_0_i_4 ),
        .I4(\ALUResult[0]_INST_0_i_15 ),
        .I5(\q_reg[11]_1 ),
        .O(\q_reg[3]_1 ));
  LUT5 #(
    .INIT(32'h0808FB08)) 
    \ALUResult[27]_INST_0_i_1 
       (.I0(Q[27]),
        .I1(Instr[0]),
        .I2(Instr[3]),
        .I3(rd10[27]),
        .I4(\addressM[29]_1 ),
        .O(SrcA[17]));
  LUT5 #(
    .INIT(32'hFFFFB080)) 
    \ALUResult[27]_INST_0_i_3 
       (.I0(\ALUResult[31]_INST_0_i_22_0 ),
        .I1(\addressM[12]_1 ),
        .I2(\ALUResult[31]_INST_0_i_13_1 ),
        .I3(\addressM[27] ),
        .I4(\ALUResult[27]_INST_0_i_5_n_0 ),
        .O(\ALUResult[27]_INST_0_i_5_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[27]_INST_0_i_4 
       (.I0(\ALUResult[29]_INST_0_i_6_n_0 ),
        .I1(\ALUResult[31]_INST_0_i_20_n_0 ),
        .I2(result1_carry__0_i_8_0),
        .I3(\ALUResult[27]_INST_0_i_6_n_0 ),
        .I4(result1_carry__0_i_8),
        .I5(\ALUResult[31]_INST_0_i_22_n_0 ),
        .O(\ALUResult[31]_INST_0_i_22_0 ));
  LUT6 #(
    .INIT(64'hF9000900FFFFFFFF)) 
    \ALUResult[27]_INST_0_i_5 
       (.I0(SrcA[17]),
        .I1(w_carry__2),
        .I2(ALUControl),
        .I3(\ALUResult[8]_INST_0_i_6_0 ),
        .I4(\ALUResult[29]_INST_0_i_1_0 [9]),
        .I5(\ALUResult[31]_INST_0_i_13_0 ),
        .O(\ALUResult[27]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h5050CFC0)) 
    \ALUResult[27]_INST_0_i_6 
       (.I0(\q_reg[4]_0 ),
        .I1(SrcA[10]),
        .I2(\ALUResult[17]_INST_0_i_4 ),
        .I3(SrcA[3]),
        .I4(\ALUResult[31]_INST_0_i_9 ),
        .O(\ALUResult[27]_INST_0_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h0808FB08)) 
    \ALUResult[28]_INST_0_i_1 
       (.I0(Q[28]),
        .I1(Instr[0]),
        .I2(Instr[3]),
        .I3(rd10[28]),
        .I4(\addressM[29]_1 ),
        .O(SrcA[18]));
  LUT6 #(
    .INIT(64'h7400740074FF7400)) 
    \ALUResult[28]_INST_0_i_6 
       (.I0(\q_reg[5]_0 ),
        .I1(\ALUResult[31]_INST_0_i_9 ),
        .I2(SrcA[11]),
        .I3(\ALUResult[17]_INST_0_i_4 ),
        .I4(\ALUResult[0]_INST_0_i_15 ),
        .I5(\q_reg[13]_1 ),
        .O(\q_reg[5]_1 ));
  LUT6 #(
    .INIT(64'hF0FFCCCC00F08888)) 
    \ALUResult[29]_INST_0 
       (.I0(\addressM[29] [10]),
        .I1(\ALUResult[29]_INST_0_i_1_n_0 ),
        .I2(SrcA[19]),
        .I3(\addressM[29]_0 ),
        .I4(\ALUResult[31]_INST_0_i_5_0 ),
        .I5(\ALUResult[31]_INST_0_i_13_0 ),
        .O(\q_reg[29]_0 [9]));
  LUT5 #(
    .INIT(32'hFFFFB080)) 
    \ALUResult[29]_INST_0_i_1 
       (.I0(\ALUResult[31]_INST_0_i_20_0 ),
        .I1(\addressM[12]_1 ),
        .I2(\ALUResult[31]_INST_0_i_13_1 ),
        .I3(\ALUResult[30]_INST_0_i_7_n_0 ),
        .I4(\ALUResult[29]_INST_0_i_5_n_0 ),
        .O(\ALUResult[29]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0808FB08)) 
    \ALUResult[29]_INST_0_i_2 
       (.I0(Q[29]),
        .I1(Instr[0]),
        .I2(Instr[3]),
        .I3(rd10[29]),
        .I4(\addressM[29]_1 ),
        .O(SrcA[19]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[29]_INST_0_i_4 
       (.I0(\ALUResult[31]_INST_0_i_22_n_0 ),
        .I1(\ALUResult[31]_INST_0_i_23_n_0 ),
        .I2(result1_carry__0_i_8_0),
        .I3(\ALUResult[29]_INST_0_i_6_n_0 ),
        .I4(result1_carry__0_i_8),
        .I5(\ALUResult[31]_INST_0_i_20_n_0 ),
        .O(\ALUResult[31]_INST_0_i_20_0 ));
  LUT6 #(
    .INIT(64'hF9000900FFFFFFFF)) 
    \ALUResult[29]_INST_0_i_5 
       (.I0(SrcA[19]),
        .I1(\addressM[29]_0 ),
        .I2(ALUControl),
        .I3(\ALUResult[8]_INST_0_i_6_0 ),
        .I4(\ALUResult[29]_INST_0_i_1_0 [10]),
        .I5(\ALUResult[31]_INST_0_i_13_0 ),
        .O(\ALUResult[29]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h5050CFC0)) 
    \ALUResult[29]_INST_0_i_6 
       (.I0(\q_reg[6]_0 ),
        .I1(SrcA[12]),
        .I2(\ALUResult[17]_INST_0_i_4 ),
        .I3(SrcA[4]),
        .I4(\ALUResult[31]_INST_0_i_9 ),
        .O(\ALUResult[29]_INST_0_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h0808FB08)) 
    \ALUResult[2]_INST_0_i_2 
       (.I0(Q[2]),
        .I1(Instr[0]),
        .I2(Instr[3]),
        .I3(rd10[2]),
        .I4(\addressM[29]_1 ),
        .O(SrcA[0]));
  LUT5 #(
    .INIT(32'hFFFFB080)) 
    \ALUResult[30]_INST_0_i_3 
       (.I0(\ALUResult[30]_INST_0_i_7_n_0 ),
        .I1(\addressM[12]_1 ),
        .I2(\ALUResult[31]_INST_0_i_13_1 ),
        .I3(\ALUResult[31]_INST_0_i_23_0 ),
        .I4(\addressM[30] ),
        .O(\ALUResult[30]_INST_0_i_8 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[30]_INST_0_i_7 
       (.I0(\q_reg[1]_0 ),
        .I1(\ALUResult[31]_INST_0_i_16_n_0 ),
        .I2(result1_carry__0_i_8_0),
        .I3(\q[31]_i_34 ),
        .I4(result1_carry__0_i_8),
        .I5(\q_reg[3]_0 ),
        .O(\ALUResult[30]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[31]_INST_0_i_11 
       (.I0(\ALUResult[31]_INST_0_i_20_n_0 ),
        .I1(\ALUResult[31]_INST_0_i_21_n_0 ),
        .I2(result1_carry__0_i_8_0),
        .I3(\ALUResult[31]_INST_0_i_22_n_0 ),
        .I4(result1_carry__0_i_8),
        .I5(\ALUResult[31]_INST_0_i_23_n_0 ),
        .O(\ALUResult[31]_INST_0_i_23_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h5515)) 
    \ALUResult[31]_INST_0_i_12 
       (.I0(ALUControl),
        .I1(Instr[12]),
        .I2(Instr[2]),
        .I3(Instr[0]),
        .O(\ALUResult[31]_INST_0_i_13_1 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h0054)) 
    \ALUResult[31]_INST_0_i_13 
       (.I0(\ALUResult[31]_INST_0_i_24_n_0 ),
        .I1(Instr[4]),
        .I2(Instr[2]),
        .I3(Instr[0]),
        .O(ALUControl));
  LUT6 #(
    .INIT(64'h505FCFCF505FC0C0)) 
    \ALUResult[31]_INST_0_i_15 
       (.I0(\q_reg[1]_2 ),
        .I1(SrcA[7]),
        .I2(\ALUResult[14]_INST_0_i_4_0 ),
        .I3(\q_reg[9]_1 ),
        .I4(\ALUResult[31]_INST_0_i_9 ),
        .I5(SrcA[15]),
        .O(\q_reg[1]_0 ));
  LUT6 #(
    .INIT(64'h505FCFCF505FC0C0)) 
    \ALUResult[31]_INST_0_i_16 
       (.I0(\q_reg[5]_0 ),
        .I1(SrcA[11]),
        .I2(\ALUResult[14]_INST_0_i_4_0 ),
        .I3(\q_reg[13]_1 ),
        .I4(\ALUResult[31]_INST_0_i_9 ),
        .I5(SrcA[19]),
        .O(\ALUResult[31]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h505FCFCF505FC0C0)) 
    \ALUResult[31]_INST_0_i_17 
       (.I0(\q_reg[3]_2 ),
        .I1(SrcA[9]),
        .I2(\ALUResult[14]_INST_0_i_4_0 ),
        .I3(\q_reg[11]_1 ),
        .I4(\ALUResult[31]_INST_0_i_9 ),
        .I5(SrcA[17]),
        .O(\q_reg[3]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[31]_INST_0_i_20 
       (.I0(SrcA[0]),
        .I1(SrcA[8]),
        .I2(\ALUResult[14]_INST_0_i_4_0 ),
        .I3(SrcA[2]),
        .I4(\ALUResult[31]_INST_0_i_9 ),
        .I5(SrcA[16]),
        .O(\ALUResult[31]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h5F50C0C05F50CFCF)) 
    \ALUResult[31]_INST_0_i_21 
       (.I0(\q_reg[6]_0 ),
        .I1(SrcA[12]),
        .I2(\ALUResult[14]_INST_0_i_4_0 ),
        .I3(SrcA[4]),
        .I4(\ALUResult[31]_INST_0_i_9 ),
        .I5(\ALUResult[31]_INST_0_i_11_0 ),
        .O(\ALUResult[31]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h5F50CFCF5F50C0C0)) 
    \ALUResult[31]_INST_0_i_22 
       (.I0(\q_reg[0]_1 ),
        .I1(SrcA[6]),
        .I2(\ALUResult[14]_INST_0_i_4_0 ),
        .I3(SrcA[1]),
        .I4(\ALUResult[31]_INST_0_i_9 ),
        .I5(SrcA[14]),
        .O(\ALUResult[31]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h5F50CFCF5F50C0C0)) 
    \ALUResult[31]_INST_0_i_23 
       (.I0(\q_reg[4]_0 ),
        .I1(SrcA[10]),
        .I2(\ALUResult[14]_INST_0_i_4_0 ),
        .I3(SrcA[3]),
        .I4(\ALUResult[31]_INST_0_i_9 ),
        .I5(SrcA[18]),
        .O(\ALUResult[31]_INST_0_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h8028802A802A802A)) 
    \ALUResult[31]_INST_0_i_24 
       (.I0(Instr[2]),
        .I1(Instr[10]),
        .I2(Instr[12]),
        .I3(Instr[11]),
        .I4(Instr[28]),
        .I5(Instr[3]),
        .O(\ALUResult[31]_INST_0_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h0C000C0C0C0C0808)) 
    \ALUResult[31]_INST_0_i_3 
       (.I0(Instr[10]),
        .I1(Instr[2]),
        .I2(Instr[0]),
        .I3(ALUControl),
        .I4(Instr[11]),
        .I5(Instr[12]),
        .O(\ALUResult[31]_INST_0_i_13_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \ALUResult[31]_INST_0_i_5 
       (.I0(Instr[12]),
        .I1(Instr[11]),
        .I2(Instr[0]),
        .I3(Instr[2]),
        .O(\ALUResult[31]_INST_0_i_5_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ALUResult[31]_INST_0_i_8 
       (.I0(\q_reg[1]_0 ),
        .I1(result1_carry__0_i_8),
        .I2(\ALUResult[31]_INST_0_i_16_n_0 ),
        .O(\ALUResult[31]_INST_0_i_16_0 ));
  LUT5 #(
    .INIT(32'hF7F704F7)) 
    \ALUResult[3]_INST_0_i_2 
       (.I0(Q[3]),
        .I1(Instr[0]),
        .I2(Instr[3]),
        .I3(rd10[3]),
        .I4(\addressM[29]_1 ),
        .O(\q_reg[3]_2 ));
  LUT5 #(
    .INIT(32'hF7F704F7)) 
    \ALUResult[4]_INST_0_i_2 
       (.I0(Q[4]),
        .I1(Instr[0]),
        .I2(Instr[3]),
        .I3(rd10[4]),
        .I4(\addressM[29]_1 ),
        .O(\q_reg[4]_0 ));
  LUT5 #(
    .INIT(32'hF7F704F7)) 
    \ALUResult[5]_INST_0_i_2 
       (.I0(Q[5]),
        .I1(Instr[0]),
        .I2(Instr[3]),
        .I3(rd10[5]),
        .I4(\addressM[29]_1 ),
        .O(\q_reg[5]_0 ));
  LUT5 #(
    .INIT(32'hF7F704F7)) 
    \ALUResult[6]_INST_0_i_2 
       (.I0(Q[6]),
        .I1(Instr[0]),
        .I2(Instr[3]),
        .I3(rd10[6]),
        .I4(\addressM[29]_1 ),
        .O(\q_reg[6]_0 ));
  LUT5 #(
    .INIT(32'hF7F704F7)) 
    \ALUResult[7]_INST_0_i_2 
       (.I0(Q[7]),
        .I1(Instr[0]),
        .I2(Instr[3]),
        .I3(rd10[7]),
        .I4(\addressM[29]_1 ),
        .O(\q_reg[7]_0 ));
  LUT5 #(
    .INIT(32'h0808FB08)) 
    \ALUResult[8]_INST_0_i_1 
       (.I0(Q[8]),
        .I1(Instr[0]),
        .I2(Instr[3]),
        .I3(rd10[8]),
        .I4(\addressM[29]_1 ),
        .O(SrcA[1]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \ALUResult[8]_INST_0_i_6 
       (.I0(Instr[0]),
        .I1(Instr[2]),
        .I2(Instr[12]),
        .O(\ALUResult[8]_INST_0_i_6_0 ));
  LUT5 #(
    .INIT(32'hF7F704F7)) 
    \ALUResult[9]_INST_0_i_2 
       (.I0(Q[9]),
        .I1(Instr[0]),
        .I2(Instr[3]),
        .I3(rd10[9]),
        .I4(\addressM[29]_1 ),
        .O(\q_reg[9]_1 ));
  LUT6 #(
    .INIT(64'hF9000900FFFFFFFF)) 
    \ALUResult[9]_INST_0_i_5 
       (.I0(\q_reg[9]_1 ),
        .I1(w_carry__0_0),
        .I2(ALUControl),
        .I3(\ALUResult[8]_INST_0_i_6_0 ),
        .I4(\ALUResult[29]_INST_0_i_1_0 [1]),
        .I5(\ALUResult[31]_INST_0_i_13_0 ),
        .O(\q_reg[9]_3 ));
  LUT6 #(
    .INIT(64'hFEEFAAAA0220AAAA)) 
    \q[0]_i_1 
       (.I0(Q[0]),
        .I1(Instr[0]),
        .I2(Instr[10]),
        .I3(\q_reg[0]_2 ),
        .I4(Instr[4]),
        .I5(\q_reg[0]_3 ),
        .O(\q[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFAEE0A22)) 
    \q[10]_i_2 
       (.I0(\q_reg[10]_0 ),
        .I1(Instr[4]),
        .I2(Instr[1]),
        .I3(Instr[0]),
        .I4(d1[0]),
        .O(\q_reg[11]_0 ));
  LUT5 #(
    .INIT(32'hFAEE0A22)) 
    \q[12]_i_2 
       (.I0(\q_reg[29]_0 [0]),
        .I1(Instr[4]),
        .I2(Instr[1]),
        .I3(Instr[0]),
        .I4(d1[1]),
        .O(\q_reg[15]_0 ));
  LUT5 #(
    .INIT(32'hFAEE0A22)) 
    \q[14]_i_2 
       (.I0(\q_reg[29]_0 [1]),
        .I1(Instr[4]),
        .I2(Instr[1]),
        .I3(Instr[0]),
        .I4(d1[2]),
        .O(\q_reg[15]_1 ));
  LUT5 #(
    .INIT(32'hFAEE0A22)) 
    \q[16]_i_2 
       (.I0(\q_reg[29]_0 [2]),
        .I1(Instr[4]),
        .I2(Instr[1]),
        .I3(Instr[0]),
        .I4(d1[3]),
        .O(\q_reg[19]_0 ));
  LUT5 #(
    .INIT(32'hFAEE0A22)) 
    \q[21]_i_2 
       (.I0(\q_reg[29]_0 [3]),
        .I1(Instr[4]),
        .I2(Instr[1]),
        .I3(Instr[0]),
        .I4(d1[4]),
        .O(\q_reg[23]_0 ));
  LUT5 #(
    .INIT(32'hFAEE0A22)) 
    \q[22]_i_2 
       (.I0(\q_reg[29]_0 [4]),
        .I1(Instr[4]),
        .I2(Instr[1]),
        .I3(Instr[0]),
        .I4(d1[5]),
        .O(\q_reg[23]_1 ));
  LUT5 #(
    .INIT(32'hFAEE0A22)) 
    \q[23]_i_2 
       (.I0(\q_reg[29]_0 [5]),
        .I1(Instr[4]),
        .I2(Instr[1]),
        .I3(Instr[0]),
        .I4(d1[6]),
        .O(\q_reg[23]_2 ));
  LUT5 #(
    .INIT(32'hFAEE0A22)) 
    \q[24]_i_2 
       (.I0(\q_reg[29]_0 [6]),
        .I1(Instr[4]),
        .I2(Instr[1]),
        .I3(Instr[0]),
        .I4(d1[7]),
        .O(\q_reg[27]_0 ));
  LUT5 #(
    .INIT(32'hFAEE0A22)) 
    \q[25]_i_2 
       (.I0(\q_reg[29]_0 [7]),
        .I1(Instr[4]),
        .I2(Instr[1]),
        .I3(Instr[0]),
        .I4(d1[8]),
        .O(\q_reg[27]_1 ));
  LUT5 #(
    .INIT(32'hFAEE0A22)) 
    \q[26]_i_2 
       (.I0(\q_reg[29]_0 [8]),
        .I1(Instr[4]),
        .I2(Instr[1]),
        .I3(Instr[0]),
        .I4(d1[9]),
        .O(\q_reg[27]_2 ));
  LUT6 #(
    .INIT(64'hFEEFAAAA0220AAAA)) 
    \q[29]_i_1 
       (.I0(\q_reg[31]_2 [0]),
        .I1(Instr[0]),
        .I2(Instr[10]),
        .I3(\q_reg[0]_2 ),
        .I4(Instr[4]),
        .I5(\q[29]_i_2_n_0 ),
        .O(\q[29]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFAEE0A22)) 
    \q[29]_i_2 
       (.I0(\q_reg[29]_0 [9]),
        .I1(Instr[4]),
        .I2(Instr[1]),
        .I3(Instr[0]),
        .I4(d1[10]),
        .O(\q[29]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFEEFAAAA0220AAAA)) 
    \q[30]_i_1 
       (.I0(\q_reg[31]_2 [1]),
        .I1(Instr[0]),
        .I2(Instr[10]),
        .I3(\q_reg[0]_2 ),
        .I4(Instr[4]),
        .I5(\q_reg[30]_2 ),
        .O(\q[30]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFEEFAAAA0220AAAA)) 
    \q[31]_i_1 
       (.I0(\q_reg[31]_2 [2]),
        .I1(Instr[0]),
        .I2(Instr[10]),
        .I3(\q_reg[0]_2 ),
        .I4(Instr[4]),
        .I5(\q_reg[31]_3 ),
        .O(\q[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \q[31]_i_12 
       (.I0(\q_reg[29]_0 [4]),
        .I1(\q_reg[29]_0 [5]),
        .I2(ALUResult[1]),
        .I3(\q_reg[29]_0 [3]),
        .I4(\q[31]_i_18_n_0 ),
        .I5(\q[31]_i_19_n_0 ),
        .O(\q[31]_i_19_0 ));
  LUT5 #(
    .INIT(32'hFFFACCFA)) 
    \q[31]_i_15 
       (.I0(\q[31]_i_26_n_0 ),
        .I1(\q[31]_i_10 ),
        .I2(\q[31]_i_28_n_0 ),
        .I3(\ALUResult[31]_INST_0_i_5_0 ),
        .I4(\q[31]_i_10_0 ),
        .O(\q_reg[12]_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \q[31]_i_18 
       (.I0(\q[31]_i_38_n_0 ),
        .I1(\q[31]_i_12_2 ),
        .I2(\q[31]_i_12_3 ),
        .I3(\q[31]_i_41_n_0 ),
        .O(\q[31]_i_18_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFE2)) 
    \q[31]_i_19 
       (.I0(\q[31]_i_12_0 ),
        .I1(\ALUResult[31]_INST_0_i_5_0 ),
        .I2(\q[31]_i_12_1 ),
        .I3(\q[31]_i_44_n_0 ),
        .I4(\q[31]_i_45_n_0 ),
        .O(\q[31]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FAEAAAEA)) 
    \q[31]_i_26 
       (.I0(\ALUResult[12]_INST_0_i_5_n_0 ),
        .I1(\addressM[12]_0 ),
        .I2(\ALUResult[31]_INST_0_i_13_1 ),
        .I3(\addressM[12]_1 ),
        .I4(\ALUResult[12]_INST_0_i_6_0 ),
        .I5(\q[31]_i_15_0 ),
        .O(\q[31]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FAEAAAEA)) 
    \q[31]_i_28 
       (.I0(\q_reg[13]_0 ),
        .I1(\ALUResult[14]_INST_0_i_6_0 ),
        .I2(\ALUResult[31]_INST_0_i_13_1 ),
        .I3(\addressM[12]_1 ),
        .I4(\addressM[12]_0 ),
        .I5(\q[31]_i_15_1 ),
        .O(\q[31]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FAEAAAEA)) 
    \q[31]_i_32 
       (.I0(\ALUResult[25]_INST_0_i_5_n_0 ),
        .I1(\ALUResult[30]_INST_0_i_9 ),
        .I2(\ALUResult[31]_INST_0_i_13_1 ),
        .I3(\addressM[12]_1 ),
        .I4(\ALUResult[29]_INST_0_i_6_0 ),
        .I5(\q[31]_i_16 ),
        .O(\q[31]_i_54 ));
  LUT6 #(
    .INIT(64'h00000000FAEAAAEA)) 
    \q[31]_i_36 
       (.I0(\ALUResult[27]_INST_0_i_5_n_0 ),
        .I1(\addressM[27] ),
        .I2(\ALUResult[31]_INST_0_i_13_1 ),
        .I3(\addressM[12]_1 ),
        .I4(\ALUResult[31]_INST_0_i_22_0 ),
        .I5(\q[31]_i_17 ),
        .O(\q[31]_i_56 ));
  LUT4 #(
    .INIT(16'hC880)) 
    \q[31]_i_38 
       (.I0(\ALUResult[31]_INST_0_i_13_0 ),
        .I1(\ALUResult[31]_INST_0_i_5_0 ),
        .I2(SrcA[8]),
        .I3(w_carry__1_0),
        .O(\q[31]_i_38_n_0 ));
  LUT3 #(
    .INIT(8'h8A)) 
    \q[31]_i_4 
       (.I0(Instr[12]),
        .I1(Instr[0]),
        .I2(Instr[2]),
        .O(\q[31]_i_4_0 ));
  LUT4 #(
    .INIT(16'hC880)) 
    \q[31]_i_41 
       (.I0(\ALUResult[31]_INST_0_i_13_0 ),
        .I1(\ALUResult[31]_INST_0_i_5_0 ),
        .I2(SrcA[9]),
        .I3(w_carry__1),
        .O(\q[31]_i_41_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FAEAAAEA)) 
    \q[31]_i_44 
       (.I0(\q_reg[17]_0 ),
        .I1(\ALUResult[22]_INST_0_i_6 ),
        .I2(\ALUResult[31]_INST_0_i_13_1 ),
        .I3(\addressM[12]_1 ),
        .I4(\addressM[16]_0 ),
        .I5(\q[31]_i_19_1 ),
        .O(\q[31]_i_44_n_0 ));
  LUT4 #(
    .INIT(16'hC880)) 
    \q[31]_i_45 
       (.I0(\ALUResult[31]_INST_0_i_13_0 ),
        .I1(\ALUResult[31]_INST_0_i_5_0 ),
        .I2(SrcA[7]),
        .I3(w_carry__1_1),
        .O(\q[31]_i_45_n_0 ));
  LUT3 #(
    .INIT(8'h2E)) 
    \q[31]_i_47 
       (.I0(\q_reg[8]_1 ),
        .I1(result1_carry__0_i_8),
        .I2(\q_reg[12]_1 ),
        .O(\ALUResult[0]_INST_0_i_16_0 ));
  LUT5 #(
    .INIT(32'hAA820082)) 
    \q[31]_i_49 
       (.I0(\ALUResult[8]_INST_0_i_6_0 ),
        .I1(SrcA[1]),
        .I2(w_carry__0),
        .I3(ALUControl),
        .I4(\ALUResult[29]_INST_0_i_1_0 [0]),
        .O(\q_reg[8]_0 ));
  FDCE \q_reg[0] 
       (.C(clk),
        .CE(PCReady),
        .CLR(reset),
        .D(\q[0]_i_1_n_0 ),
        .Q(Q[0]));
  FDCE \q_reg[10] 
       (.C(clk),
        .CE(PCReady),
        .CLR(reset),
        .D(D[9]),
        .Q(Q[10]));
  FDCE \q_reg[11] 
       (.C(clk),
        .CE(PCReady),
        .CLR(reset),
        .D(D[10]),
        .Q(Q[11]));
  FDCE \q_reg[12] 
       (.C(clk),
        .CE(PCReady),
        .CLR(reset),
        .D(D[11]),
        .Q(Q[12]));
  FDCE \q_reg[13] 
       (.C(clk),
        .CE(PCReady),
        .CLR(reset),
        .D(D[12]),
        .Q(Q[13]));
  FDCE \q_reg[14] 
       (.C(clk),
        .CE(PCReady),
        .CLR(reset),
        .D(D[13]),
        .Q(Q[14]));
  FDCE \q_reg[15] 
       (.C(clk),
        .CE(PCReady),
        .CLR(reset),
        .D(D[14]),
        .Q(Q[15]));
  FDCE \q_reg[16] 
       (.C(clk),
        .CE(PCReady),
        .CLR(reset),
        .D(D[15]),
        .Q(Q[16]));
  FDCE \q_reg[17] 
       (.C(clk),
        .CE(PCReady),
        .CLR(reset),
        .D(D[16]),
        .Q(Q[17]));
  FDCE \q_reg[18] 
       (.C(clk),
        .CE(PCReady),
        .CLR(reset),
        .D(D[17]),
        .Q(Q[18]));
  FDCE \q_reg[19] 
       (.C(clk),
        .CE(PCReady),
        .CLR(reset),
        .D(D[18]),
        .Q(Q[19]));
  FDCE \q_reg[1] 
       (.C(clk),
        .CE(PCReady),
        .CLR(reset),
        .D(D[0]),
        .Q(Q[1]));
  FDCE \q_reg[20] 
       (.C(clk),
        .CE(PCReady),
        .CLR(reset),
        .D(D[19]),
        .Q(Q[20]));
  FDCE \q_reg[21] 
       (.C(clk),
        .CE(PCReady),
        .CLR(reset),
        .D(D[20]),
        .Q(Q[21]));
  FDCE \q_reg[22] 
       (.C(clk),
        .CE(PCReady),
        .CLR(reset),
        .D(D[21]),
        .Q(Q[22]));
  FDCE \q_reg[23] 
       (.C(clk),
        .CE(PCReady),
        .CLR(reset),
        .D(D[22]),
        .Q(Q[23]));
  FDCE \q_reg[24] 
       (.C(clk),
        .CE(PCReady),
        .CLR(reset),
        .D(D[23]),
        .Q(Q[24]));
  FDCE \q_reg[25] 
       (.C(clk),
        .CE(PCReady),
        .CLR(reset),
        .D(D[24]),
        .Q(Q[25]));
  FDCE \q_reg[26] 
       (.C(clk),
        .CE(PCReady),
        .CLR(reset),
        .D(D[25]),
        .Q(Q[26]));
  FDCE \q_reg[27] 
       (.C(clk),
        .CE(PCReady),
        .CLR(reset),
        .D(D[26]),
        .Q(Q[27]));
  FDCE \q_reg[28] 
       (.C(clk),
        .CE(PCReady),
        .CLR(reset),
        .D(D[27]),
        .Q(Q[28]));
  FDCE \q_reg[29] 
       (.C(clk),
        .CE(PCReady),
        .CLR(reset),
        .D(\q[29]_i_1_n_0 ),
        .Q(Q[29]));
  FDCE \q_reg[2] 
       (.C(clk),
        .CE(PCReady),
        .CLR(reset),
        .D(D[1]),
        .Q(Q[2]));
  FDCE \q_reg[30] 
       (.C(clk),
        .CE(PCReady),
        .CLR(reset),
        .D(\q[30]_i_1_n_0 ),
        .Q(Q[30]));
  FDCE \q_reg[31] 
       (.C(clk),
        .CE(PCReady),
        .CLR(reset),
        .D(\q[31]_i_1_n_0 ),
        .Q(Q[31]));
  FDCE \q_reg[3] 
       (.C(clk),
        .CE(PCReady),
        .CLR(reset),
        .D(D[2]),
        .Q(Q[3]));
  FDCE \q_reg[4] 
       (.C(clk),
        .CE(PCReady),
        .CLR(reset),
        .D(D[3]),
        .Q(Q[4]));
  FDCE \q_reg[5] 
       (.C(clk),
        .CE(PCReady),
        .CLR(reset),
        .D(D[4]),
        .Q(Q[5]));
  FDCE \q_reg[6] 
       (.C(clk),
        .CE(PCReady),
        .CLR(reset),
        .D(D[5]),
        .Q(Q[6]));
  FDCE \q_reg[7] 
       (.C(clk),
        .CE(PCReady),
        .CLR(reset),
        .D(D[6]),
        .Q(Q[7]));
  FDCE \q_reg[8] 
       (.C(clk),
        .CE(PCReady),
        .CLR(reset),
        .D(D[7]),
        .Q(Q[8]));
  FDCE \q_reg[9] 
       (.C(clk),
        .CE(PCReady),
        .CLR(reset),
        .D(D[8]),
        .Q(Q[9]));
  LUT6 #(
    .INIT(64'h8FFF8F0088008800)) 
    result1_carry__0_i_16
       (.I0(SrcA[11]),
        .I1(\ALUResult[14]_INST_0_i_4_0 ),
        .I2(\q_reg[13]_1 ),
        .I3(\ALUResult[0]_INST_0_i_15 ),
        .I4(SrcA[19]),
        .I5(\ALUResult[17]_INST_0_i_4 ),
        .O(result1_carry__0_i_16_n_0));
  LUT6 #(
    .INIT(64'h2F202F2F2F202020)) 
    result1_carry__0_i_18
       (.I0(SrcA[10]),
        .I1(\ALUResult[31]_INST_0_i_9 ),
        .I2(\ALUResult[14]_INST_0_i_4_0 ),
        .I3(SrcA[3]),
        .I4(\ALUResult[0]_INST_0_i_15 ),
        .I5(SrcA[18]),
        .O(\q_reg[20]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    result1_carry__0_i_9
       (.I0(result1_carry__0_i_16_n_0),
        .I1(result1_carry__0_i_8),
        .I2(\q_reg[17]_1 ),
        .O(result1_carry_i_14_0));
  LUT6 #(
    .INIT(64'hB080FFFFB0800000)) 
    result1_carry__1_i_9
       (.I0(SrcA[15]),
        .I1(\ALUResult[14]_INST_0_i_4_0 ),
        .I2(\ALUResult[0]_INST_0_i_15 ),
        .I3(SrcA[7]),
        .I4(result1_carry__0_i_8),
        .I5(result1_carry__0_i_16_n_0),
        .O(\q_reg[25]_0 ));
  LUT6 #(
    .INIT(64'hB080FFFFB0800000)) 
    result1_carry__2_i_12
       (.I0(SrcA[19]),
        .I1(\ALUResult[14]_INST_0_i_4_0 ),
        .I2(\ALUResult[0]_INST_0_i_15 ),
        .I3(SrcA[11]),
        .I4(result1_carry__0_i_8),
        .I5(result1_carry__2_i_17_n_0),
        .O(\q_reg[29]_1 ));
  LUT4 #(
    .INIT(16'hB080)) 
    result1_carry__2_i_17
       (.I0(SrcA[15]),
        .I1(\ALUResult[14]_INST_0_i_4_0 ),
        .I2(\ALUResult[0]_INST_0_i_15 ),
        .I3(SrcA[7]),
        .O(result1_carry__2_i_17_n_0));
  LUT4 #(
    .INIT(16'hB080)) 
    result1_carry__2_i_20
       (.I0(SrcA[17]),
        .I1(\ALUResult[14]_INST_0_i_4_0 ),
        .I2(\ALUResult[0]_INST_0_i_15 ),
        .I3(SrcA[9]),
        .O(\q_reg[27]_3 ));
  LUT6 #(
    .INIT(64'h30BB000030880000)) 
    result1_carry__3_i_16
       (.I0(SrcA[15]),
        .I1(result1_carry__0_i_8),
        .I2(SrcA[19]),
        .I3(\ALUResult[14]_INST_0_i_4_0 ),
        .I4(\ALUResult[0]_INST_0_i_15 ),
        .I5(SrcA[11]),
        .O(\q_reg[25]_1 ));
  LUT6 #(
    .INIT(64'h8FFF8F0088008800)) 
    result1_carry_i_14
       (.I0(SrcA[7]),
        .I1(\ALUResult[14]_INST_0_i_4_0 ),
        .I2(\q_reg[9]_1 ),
        .I3(\ALUResult[0]_INST_0_i_15 ),
        .I4(SrcA[15]),
        .I5(\ALUResult[17]_INST_0_i_4 ),
        .O(\q_reg[17]_1 ));
  LUT6 #(
    .INIT(64'h8FFF8F0088008800)) 
    result1_carry_i_15
       (.I0(SrcA[9]),
        .I1(\ALUResult[14]_INST_0_i_4_0 ),
        .I2(\q_reg[11]_1 ),
        .I3(\ALUResult[0]_INST_0_i_15 ),
        .I4(SrcA[17]),
        .I5(\ALUResult[17]_INST_0_i_4 ),
        .O(\q_reg[19]_1 ));
  LUT6 #(
    .INIT(64'hA3AFA0A0A3AFA3AF)) 
    result1_carry_i_18
       (.I0(\q_reg[30]_1 ),
        .I1(SrcA[12]),
        .I2(\ALUResult[14]_INST_0_i_4_0 ),
        .I3(\ALUResult[31]_INST_0_i_9 ),
        .I4(\q_reg[6]_0 ),
        .I5(\ALUResult[0]_INST_0_i_15 ),
        .O(\q_reg[30]_0 ));
  LUT6 #(
    .INIT(64'hA3A3A3A3F000FF0F)) 
    result1_carry_i_9
       (.I0(\q_reg[17]_1 ),
        .I1(\q_reg[13]_2 ),
        .I2(result1_carry__0_i_8),
        .I3(\q_reg[19]_1 ),
        .I4(result1_carry__0_i_8_1),
        .I5(result1_carry__0_i_8_0),
        .O(\ALUResult[1]_INST_0_i_2 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    rf_reg_r1_0_31_0_5_i_3
       (.I0(rf_reg_r1_0_31_0_5),
        .I1(Q[0]),
        .I2(rf_reg_r1_0_31_24_29),
        .I3(ReadData[0]),
        .I4(rf_reg_r1_0_31_30_31_i_1__0),
        .I5(ALUResult[0]),
        .O(wd3[0]));
  LUT6 #(
    .INIT(64'hF404FFFFF4040000)) 
    rf_reg_r1_0_31_12_17_i_13
       (.I0(Instr[12]),
        .I1(ReadData[1]),
        .I2(rf_reg_r1_0_31_12_17_i_4_0),
        .I3(ReadData[4]),
        .I4(rf_reg_r1_0_31_30_31_i_1__0),
        .I5(\q_reg[29]_0 [1]),
        .O(rf_reg_r1_0_31_12_17_i_13_n_0));
  LUT5 #(
    .INIT(32'hEAFFEA00)) 
    rf_reg_r1_0_31_12_17_i_17
       (.I0(rf_reg_r1_0_31_24_29_i_5_0),
        .I1(ReadData[5]),
        .I2(Instr[11]),
        .I3(rf_reg_r1_0_31_30_31_i_1__0),
        .I4(\q_reg[29]_0 [2]),
        .O(rf_reg_r1_0_31_12_17_i_17_n_0));
  MUXF7 rf_reg_r1_0_31_12_17_i_2
       (.I0(rf_reg_r1_0_31_12_17_i_9_n_0),
        .I1(rf_reg_r1_0_31_12_17),
        .O(wd3[1]),
        .S(rf_reg_r1_0_31_24_29));
  MUXF7 rf_reg_r1_0_31_12_17_i_4
       (.I0(rf_reg_r1_0_31_12_17_i_13_n_0),
        .I1(rf_reg_r1_0_31_12_17_0),
        .O(wd3[2]),
        .S(rf_reg_r1_0_31_24_29));
  MUXF7 rf_reg_r1_0_31_12_17_i_6
       (.I0(rf_reg_r1_0_31_12_17_i_17_n_0),
        .I1(rf_reg_r1_0_31_12_17_1),
        .O(wd3[3]),
        .S(rf_reg_r1_0_31_24_29));
  LUT6 #(
    .INIT(64'hF404FFFFF4040000)) 
    rf_reg_r1_0_31_12_17_i_9
       (.I0(Instr[12]),
        .I1(ReadData[1]),
        .I2(rf_reg_r1_0_31_12_17_i_4_0),
        .I3(ReadData[3]),
        .I4(rf_reg_r1_0_31_30_31_i_1__0),
        .I5(\q_reg[29]_0 [0]),
        .O(rf_reg_r1_0_31_12_17_i_9_n_0));
  LUT5 #(
    .INIT(32'hEAFFEA00)) 
    rf_reg_r1_0_31_18_23_i_11
       (.I0(rf_reg_r1_0_31_24_29_i_5_0),
        .I1(ReadData[6]),
        .I2(Instr[11]),
        .I3(rf_reg_r1_0_31_30_31_i_1__0),
        .I4(\q_reg[29]_0 [3]),
        .O(rf_reg_r1_0_31_18_23_i_11_n_0));
  LUT5 #(
    .INIT(32'hEAFFEA00)) 
    rf_reg_r1_0_31_18_23_i_15
       (.I0(rf_reg_r1_0_31_24_29_i_5_0),
        .I1(ReadData[8]),
        .I2(Instr[11]),
        .I3(rf_reg_r1_0_31_30_31_i_1__0),
        .I4(\q_reg[29]_0 [5]),
        .O(rf_reg_r1_0_31_18_23_i_15_n_0));
  LUT5 #(
    .INIT(32'hEAFFEA00)) 
    rf_reg_r1_0_31_18_23_i_17
       (.I0(rf_reg_r1_0_31_24_29_i_5_0),
        .I1(ReadData[7]),
        .I2(Instr[11]),
        .I3(rf_reg_r1_0_31_30_31_i_1__0),
        .I4(\q_reg[29]_0 [4]),
        .O(rf_reg_r1_0_31_18_23_i_17_n_0));
  MUXF7 rf_reg_r1_0_31_18_23_i_3
       (.I0(rf_reg_r1_0_31_18_23_i_11_n_0),
        .I1(rf_reg_r1_0_31_18_23),
        .O(wd3[4]),
        .S(rf_reg_r1_0_31_24_29));
  MUXF7 rf_reg_r1_0_31_18_23_i_5
       (.I0(rf_reg_r1_0_31_18_23_i_15_n_0),
        .I1(rf_reg_r1_0_31_18_23_1),
        .O(wd3[6]),
        .S(rf_reg_r1_0_31_24_29));
  MUXF7 rf_reg_r1_0_31_18_23_i_6
       (.I0(rf_reg_r1_0_31_18_23_i_17_n_0),
        .I1(rf_reg_r1_0_31_18_23_0),
        .O(wd3[5]),
        .S(rf_reg_r1_0_31_24_29));
  MUXF7 rf_reg_r1_0_31_24_29_i_1
       (.I0(rf_reg_r1_0_31_24_29_i_7_n_0),
        .I1(rf_reg_r1_0_31_24_29_1),
        .O(wd3[8]),
        .S(rf_reg_r1_0_31_24_29));
  LUT5 #(
    .INIT(32'hEAFFEA00)) 
    rf_reg_r1_0_31_24_29_i_13
       (.I0(rf_reg_r1_0_31_24_29_i_5_0),
        .I1(ReadData[11]),
        .I2(Instr[11]),
        .I3(rf_reg_r1_0_31_30_31_i_1__0),
        .I4(\q_reg[29]_0 [8]),
        .O(rf_reg_r1_0_31_24_29_i_13_n_0));
  LUT5 #(
    .INIT(32'hEAFFEA00)) 
    rf_reg_r1_0_31_24_29_i_15
       (.I0(rf_reg_r1_0_31_24_29_i_5_0),
        .I1(ReadData[12]),
        .I2(Instr[11]),
        .I3(rf_reg_r1_0_31_30_31_i_1__0),
        .I4(\q_reg[29]_0 [9]),
        .O(rf_reg_r1_0_31_24_29_i_15_n_0));
  LUT6 #(
    .INIT(64'hBA8AFFFFBA8A0000)) 
    rf_reg_r1_0_31_24_29_i_16
       (.I0(Instr[29]),
        .I1(Instr[4]),
        .I2(Instr[0]),
        .I3(Instr[27]),
        .I4(rf_reg_r1_0_31_30_31_i_1__0),
        .I5(\q_reg[31]_2 [0]),
        .O(rf_reg_r1_0_31_24_29_i_16_n_0));
  MUXF7 rf_reg_r1_0_31_24_29_i_2
       (.I0(rf_reg_r1_0_31_24_29_i_9_n_0),
        .I1(rf_reg_r1_0_31_24_29_0),
        .O(wd3[7]),
        .S(rf_reg_r1_0_31_24_29));
  MUXF7 rf_reg_r1_0_31_24_29_i_4
       (.I0(rf_reg_r1_0_31_24_29_i_13_n_0),
        .I1(rf_reg_r1_0_31_24_29_2),
        .O(wd3[9]),
        .S(rf_reg_r1_0_31_24_29));
  MUXF7 rf_reg_r1_0_31_24_29_i_5
       (.I0(rf_reg_r1_0_31_24_29_i_15_n_0),
        .I1(rf_reg_r1_0_31_24_29_i_16_n_0),
        .O(wd3[10]),
        .S(rf_reg_r1_0_31_24_29));
  LUT5 #(
    .INIT(32'hEAFFEA00)) 
    rf_reg_r1_0_31_24_29_i_7
       (.I0(rf_reg_r1_0_31_24_29_i_5_0),
        .I1(ReadData[10]),
        .I2(Instr[11]),
        .I3(rf_reg_r1_0_31_30_31_i_1__0),
        .I4(\q_reg[29]_0 [7]),
        .O(rf_reg_r1_0_31_24_29_i_7_n_0));
  LUT5 #(
    .INIT(32'hEAFFEA00)) 
    rf_reg_r1_0_31_24_29_i_9
       (.I0(rf_reg_r1_0_31_24_29_i_5_0),
        .I1(ReadData[9]),
        .I2(Instr[11]),
        .I3(rf_reg_r1_0_31_30_31_i_1__0),
        .I4(\q_reg[29]_0 [6]),
        .O(rf_reg_r1_0_31_24_29_i_9_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    rf_reg_r1_0_31_30_31_i_1
       (.I0(Instr[29]),
        .I1(\q_reg[31]_2 [2]),
        .I2(rf_reg_r1_0_31_24_29),
        .I3(rf_reg_r2_0_31_30_31__0),
        .I4(rf_reg_r1_0_31_30_31_i_1__0),
        .I5(ALUResult[2]),
        .O(wd3[11]));
  LUT6 #(
    .INIT(64'hBA8AFFFFBA8A0000)) 
    rf_reg_r1_0_31_30_31_i_3
       (.I0(Instr[29]),
        .I1(Instr[4]),
        .I2(Instr[0]),
        .I3(Instr[28]),
        .I4(rf_reg_r1_0_31_30_31_i_1__0),
        .I5(\q_reg[31]_2 [1]),
        .O(\q_reg[31]_0 ));
  LUT6 #(
    .INIT(64'hF404FFFFF4040000)) 
    rf_reg_r1_0_31_6_11_i_12
       (.I0(Instr[12]),
        .I1(ReadData[1]),
        .I2(rf_reg_r1_0_31_12_17_i_4_0),
        .I3(ReadData[2]),
        .I4(rf_reg_r1_0_31_30_31_i_1__0),
        .I5(\q_reg[10]_0 ),
        .O(\readDataM[7] ));
  LUT5 #(
    .INIT(32'h2020EF20)) 
    sum_carry__2_i_1
       (.I0(Q[15]),
        .I1(Instr[3]),
        .I2(Instr[0]),
        .I3(rd10[15]),
        .I4(\addressM[29]_1 ),
        .O(SrcA[5]));
  LUT5 #(
    .INIT(32'h2020EF20)) 
    sum_carry__6_i_1
       (.I0(Q[30]),
        .I1(Instr[3]),
        .I2(Instr[0]),
        .I3(rd10[30]),
        .I4(\addressM[29]_1 ),
        .O(SrcA[20]));
  LUT4 #(
    .INIT(16'hF440)) 
    w_carry__0_i_3
       (.I0(SrcA[2]),
        .I1(\addressM[10] ),
        .I2(w_carry__0_1),
        .I3(\q_reg[11]_1 ),
        .O(\q_reg[10]_1 ));
  LUT4 #(
    .INIT(16'h0660)) 
    w_carry__0_i_8
       (.I0(\q_reg[9]_1 ),
        .I1(w_carry__0_0),
        .I2(SrcA[1]),
        .I3(w_carry__0),
        .O(\q_reg[9]_0 ));
  LUT4 #(
    .INIT(16'h40F4)) 
    w_carry__1_i_3
       (.I0(SrcA[8]),
        .I1(w_carry__1_0),
        .I2(w_carry__1),
        .I3(SrcA[9]),
        .O(\q_reg[18]_0 [1]));
  LUT4 #(
    .INIT(16'h40F4)) 
    w_carry__1_i_4
       (.I0(SrcA[6]),
        .I1(\addressM[16] ),
        .I2(w_carry__1_1),
        .I3(SrcA[7]),
        .O(\q_reg[18]_0 [0]));
  LUT4 #(
    .INIT(16'h0660)) 
    w_carry__1_i_5
       (.I0(SrcA[13]),
        .I1(\addressM[23] ),
        .I2(\addressM[22] ),
        .I3(SrcA[12]),
        .O(\q_reg[23]_3 [3]));
  LUT4 #(
    .INIT(16'h0660)) 
    w_carry__1_i_6
       (.I0(SrcA[11]),
        .I1(\addressM[21] ),
        .I2(w_carry__1_2),
        .I3(SrcA[10]),
        .O(\q_reg[23]_3 [2]));
  LUT4 #(
    .INIT(16'h9009)) 
    w_carry__1_i_7
       (.I0(SrcA[9]),
        .I1(w_carry__1),
        .I2(SrcA[8]),
        .I3(w_carry__1_0),
        .O(\q_reg[23]_3 [1]));
  LUT4 #(
    .INIT(16'h9009)) 
    w_carry__1_i_8
       (.I0(SrcA[7]),
        .I1(w_carry__1_1),
        .I2(SrcA[6]),
        .I3(\addressM[16] ),
        .O(\q_reg[23]_3 [0]));
  LUT4 #(
    .INIT(16'h0660)) 
    w_carry__2_i_6
       (.I0(SrcA[19]),
        .I1(\addressM[29]_0 ),
        .I2(SrcA[18]),
        .I3(w_carry__2_0),
        .O(\q_reg[29]_2 [2]));
  LUT4 #(
    .INIT(16'h0660)) 
    w_carry__2_i_7
       (.I0(SrcA[17]),
        .I1(w_carry__2),
        .I2(SrcA[16]),
        .I3(\addressM[26] ),
        .O(\q_reg[29]_2 [1]));
  LUT4 #(
    .INIT(16'h0660)) 
    w_carry__2_i_8
       (.I0(SrcA[15]),
        .I1(\addressM[25] ),
        .I2(SrcA[14]),
        .I3(\addressM[24] ),
        .O(\q_reg[29]_2 [0]));
  LUT4 #(
    .INIT(16'hE888)) 
    w_carry_i_2
       (.I0(\q_reg[5]_0 ),
        .I1(w_carry),
        .I2(\q_reg[4]_0 ),
        .I3(\ALUResult[31]_INST_0_i_9 ),
        .O(DI[2]));
  LUT4 #(
    .INIT(16'hF440)) 
    w_carry_i_3
       (.I0(SrcA[0]),
        .I1(result1_carry__0_i_8),
        .I2(\ALUResult[14]_INST_0_i_4_0 ),
        .I3(\q_reg[3]_2 ),
        .O(DI[1]));
  LUT4 #(
    .INIT(16'h8F08)) 
    w_carry_i_4
       (.I0(\q_reg[0]_1 ),
        .I1(\addressM[12]_1 ),
        .I2(result1_carry__0_i_8_0),
        .I3(\q_reg[1]_2 ),
        .O(DI[0]));
  LUT4 #(
    .INIT(16'h6006)) 
    w_carry_i_7
       (.I0(\q_reg[3]_2 ),
        .I1(\ALUResult[14]_INST_0_i_4_0 ),
        .I2(SrcA[0]),
        .I3(result1_carry__0_i_8),
        .O(\q_reg[3]_3 [1]));
  LUT4 #(
    .INIT(16'h0990)) 
    w_carry_i_8
       (.I0(\q_reg[1]_2 ),
        .I1(result1_carry__0_i_8_0),
        .I2(\addressM[12]_1 ),
        .I3(\q_reg[0]_1 ),
        .O(\q_reg[3]_3 [0]));
  LUT5 #(
    .INIT(32'hF7F704F7)) 
    w_carry_i_9
       (.I0(Q[0]),
        .I1(Instr[0]),
        .I2(Instr[3]),
        .I3(rd10[0]),
        .I4(\addressM[29]_1 ),
        .O(\q_reg[0]_1 ));
  LUT4 #(
    .INIT(16'h59AA)) 
    y_carry__0_i_1
       (.I0(Q[7]),
        .I1(Instr[0]),
        .I2(Instr[4]),
        .I3(Instr[25]),
        .O(\q_reg[7]_1 [3]));
  LUT4 #(
    .INIT(16'h59AA)) 
    y_carry__0_i_2
       (.I0(Q[6]),
        .I1(Instr[0]),
        .I2(Instr[4]),
        .I3(Instr[24]),
        .O(\q_reg[7]_1 [2]));
  LUT4 #(
    .INIT(16'h59AA)) 
    y_carry__0_i_3
       (.I0(Q[5]),
        .I1(Instr[0]),
        .I2(Instr[4]),
        .I3(Instr[23]),
        .O(\q_reg[7]_1 [1]));
  LUT6 #(
    .INIT(64'hAAAAAAAA56599A6A)) 
    y_carry__0_i_4
       (.I0(Q[4]),
        .I1(y_carry__0_0),
        .I2(Instr[9]),
        .I3(y_carry__0),
        .I4(Instr[22]),
        .I5(y_carry__0_1),
        .O(\q_reg[7]_1 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    y_carry__1_i_1
       (.I0(Q[11]),
        .I1(y_carry__1),
        .O(\q_reg[11]_2 [3]));
  LUT4 #(
    .INIT(16'h59AA)) 
    y_carry__1_i_2
       (.I0(Q[10]),
        .I1(Instr[0]),
        .I2(Instr[4]),
        .I3(Instr[28]),
        .O(\q_reg[11]_2 [2]));
  LUT4 #(
    .INIT(16'h59AA)) 
    y_carry__1_i_3
       (.I0(Q[9]),
        .I1(Instr[0]),
        .I2(Instr[4]),
        .I3(Instr[27]),
        .O(\q_reg[11]_2 [1]));
  LUT4 #(
    .INIT(16'h59AA)) 
    y_carry__1_i_4
       (.I0(Q[8]),
        .I1(Instr[0]),
        .I2(Instr[4]),
        .I3(Instr[26]),
        .O(\q_reg[11]_2 [0]));
  LUT4 #(
    .INIT(16'h56A6)) 
    y_carry__2_i_1
       (.I0(Q[15]),
        .I1(Instr[29]),
        .I2(y_carry__2),
        .I3(Instr[13]),
        .O(\q_reg[15]_2 [3]));
  LUT4 #(
    .INIT(16'h56A6)) 
    y_carry__2_i_2
       (.I0(Q[14]),
        .I1(Instr[29]),
        .I2(y_carry__2),
        .I3(Instr[12]),
        .O(\q_reg[15]_2 [2]));
  LUT4 #(
    .INIT(16'h56A6)) 
    y_carry__2_i_3
       (.I0(Q[13]),
        .I1(Instr[29]),
        .I2(y_carry__2),
        .I3(Instr[11]),
        .O(\q_reg[15]_2 [1]));
  LUT4 #(
    .INIT(16'h56A6)) 
    y_carry__2_i_4
       (.I0(Q[12]),
        .I1(Instr[29]),
        .I2(y_carry__2),
        .I3(Instr[10]),
        .O(\q_reg[15]_2 [0]));
  LUT4 #(
    .INIT(16'h56A6)) 
    y_carry__3_i_1
       (.I0(Q[19]),
        .I1(Instr[29]),
        .I2(y_carry__2),
        .I3(Instr[17]),
        .O(\q_reg[19]_2 [3]));
  LUT4 #(
    .INIT(16'h56A6)) 
    y_carry__3_i_2
       (.I0(Q[18]),
        .I1(Instr[29]),
        .I2(y_carry__2),
        .I3(Instr[16]),
        .O(\q_reg[19]_2 [2]));
  LUT4 #(
    .INIT(16'h56A6)) 
    y_carry__3_i_3
       (.I0(Q[17]),
        .I1(Instr[29]),
        .I2(y_carry__2),
        .I3(Instr[15]),
        .O(\q_reg[19]_2 [1]));
  LUT4 #(
    .INIT(16'h56A6)) 
    y_carry__3_i_4
       (.I0(Q[16]),
        .I1(Instr[29]),
        .I2(y_carry__2),
        .I3(Instr[14]),
        .O(\q_reg[19]_2 [0]));
  LUT5 #(
    .INIT(32'h65666A66)) 
    y_carry__4_i_1
       (.I0(Q[23]),
        .I1(Instr[29]),
        .I2(Instr[4]),
        .I3(Instr[0]),
        .I4(Instr[21]),
        .O(\q_reg[23]_4 [3]));
  LUT5 #(
    .INIT(32'h65666A66)) 
    y_carry__4_i_2
       (.I0(Q[22]),
        .I1(Instr[29]),
        .I2(Instr[4]),
        .I3(Instr[0]),
        .I4(Instr[20]),
        .O(\q_reg[23]_4 [2]));
  LUT5 #(
    .INIT(32'h65666A66)) 
    y_carry__4_i_3
       (.I0(Q[21]),
        .I1(Instr[29]),
        .I2(Instr[4]),
        .I3(Instr[0]),
        .I4(Instr[19]),
        .O(\q_reg[23]_4 [1]));
  LUT5 #(
    .INIT(32'h65666A66)) 
    y_carry__4_i_4
       (.I0(Q[20]),
        .I1(Instr[29]),
        .I2(Instr[4]),
        .I3(Instr[0]),
        .I4(Instr[18]),
        .O(\q_reg[23]_4 [0]));
  LUT5 #(
    .INIT(32'h65666A66)) 
    y_carry__5_i_1
       (.I0(Q[27]),
        .I1(Instr[29]),
        .I2(Instr[4]),
        .I3(Instr[0]),
        .I4(Instr[25]),
        .O(\q_reg[27]_4 [3]));
  LUT5 #(
    .INIT(32'h65666A66)) 
    y_carry__5_i_2
       (.I0(Q[26]),
        .I1(Instr[29]),
        .I2(Instr[4]),
        .I3(Instr[0]),
        .I4(Instr[24]),
        .O(\q_reg[27]_4 [2]));
  LUT5 #(
    .INIT(32'h65666A66)) 
    y_carry__5_i_3
       (.I0(Q[25]),
        .I1(Instr[29]),
        .I2(Instr[4]),
        .I3(Instr[0]),
        .I4(Instr[23]),
        .O(\q_reg[27]_4 [1]));
  LUT5 #(
    .INIT(32'h65666A66)) 
    y_carry__5_i_4
       (.I0(Q[24]),
        .I1(Instr[29]),
        .I2(Instr[4]),
        .I3(Instr[0]),
        .I4(Instr[22]),
        .O(\q_reg[27]_4 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    y_carry__6_i_1
       (.I0(Instr[29]),
        .I1(Q[31]),
        .O(\q_reg[31]_1 [3]));
  LUT5 #(
    .INIT(32'h65666A66)) 
    y_carry__6_i_2
       (.I0(Q[30]),
        .I1(Instr[29]),
        .I2(Instr[4]),
        .I3(Instr[0]),
        .I4(Instr[28]),
        .O(\q_reg[31]_1 [2]));
  LUT5 #(
    .INIT(32'h65666A66)) 
    y_carry__6_i_3
       (.I0(Q[29]),
        .I1(Instr[29]),
        .I2(Instr[4]),
        .I3(Instr[0]),
        .I4(Instr[27]),
        .O(\q_reg[31]_1 [1]));
  LUT5 #(
    .INIT(32'h65666A66)) 
    y_carry__6_i_4
       (.I0(Q[28]),
        .I1(Instr[29]),
        .I2(Instr[4]),
        .I3(Instr[0]),
        .I4(Instr[26]),
        .O(\q_reg[31]_1 [0]));
  LUT1 #(
    .INIT(2'h1)) 
    y_carry_i_1
       (.I0(Q[2]),
        .O(S));
  LUT6 #(
    .INIT(64'h656565AAAA65AAAA)) 
    y_carry_i_1__0
       (.I0(Q[3]),
        .I1(Instr[4]),
        .I2(Instr[0]),
        .I3(y_carry),
        .I4(Instr[21]),
        .I5(Instr[8]),
        .O(\q_reg[3]_4 [3]));
  LUT6 #(
    .INIT(64'h656565AAAA65AAAA)) 
    y_carry_i_2
       (.I0(Q[2]),
        .I1(Instr[4]),
        .I2(Instr[0]),
        .I3(y_carry),
        .I4(Instr[20]),
        .I5(Instr[7]),
        .O(\q_reg[3]_4 [2]));
  LUT6 #(
    .INIT(64'h656565AAAA65AAAA)) 
    y_carry_i_3
       (.I0(Q[1]),
        .I1(Instr[4]),
        .I2(Instr[0]),
        .I3(y_carry),
        .I4(Instr[19]),
        .I5(Instr[6]),
        .O(\q_reg[3]_4 [1]));
  LUT6 #(
    .INIT(64'hAAAAAAAA56A6AAAA)) 
    y_carry_i_4
       (.I0(Q[0]),
        .I1(Instr[5]),
        .I2(y_carry__0),
        .I3(Instr[18]),
        .I4(y_carry__0_0),
        .I5(y_carry__0_1),
        .O(\q_reg[3]_4 [0]));
endmodule

(* ORIG_REF_NAME = "regfile" *) 
module design_1_top_0_0_regfile
   (clk_0,
    D,
    \q[31]_i_6 ,
    \q_reg[0] ,
    \q_reg[1] ,
    clk_1,
    \q_reg[31] ,
    \q_reg[28] ,
    \q_reg[31]_0 ,
    clk_2,
    \q_reg[2] ,
    \q_reg[3] ,
    \ALUResult[30]_INST_0_i_6 ,
    \WriteData[3]_INST_0_0 ,
    \q_reg[4] ,
    \q_reg[7] ,
    \q_reg[6] ,
    \q_reg[5] ,
    \WriteData[4]_INST_0_0 ,
    clk_3,
    clk_4,
    clk_5,
    \readDataM[7] ,
    rf_reg_r1_0_31_6_11_i_13_0,
    rf_reg_r1_0_31_0_5_i_9_0,
    \q_reg[19] ,
    clk_6,
    clk_7,
    \readDataM[7]_0 ,
    clk_8,
    \ALUResult[10]_INST_0_i_5 ,
    clk_9,
    \q_reg[12] ,
    clk_10,
    rf_reg_r1_0_31_0_5_i_8_0,
    clk_11,
    \q_reg[6]_0 ,
    \q_reg[13] ,
    \ALUResult[19]_INST_0_i_7_0 ,
    \q_reg[16] ,
    clk_12,
    \readDataM[15] ,
    clk_13,
    \ALUResult[21]_INST_0_i_6_0 ,
    \ALUResult[18]_INST_0_i_5 ,
    \ALUResult[23]_INST_0_i_6 ,
    clk_14,
    \q[31]_i_58 ,
    \ALUResult[20]_INST_0_i_5 ,
    clk_15,
    \ALUResult[31]_INST_0_i_15 ,
    clk_16,
    clk_17,
    clk_18,
    clk_19,
    \q_reg[31]_1 ,
    clk_20,
    p_0_in,
    \WriteData[3]_INST_0_1 ,
    \q_reg[31]_2 ,
    WriteData,
    \readDataM[7]_1 ,
    \q_reg[14] ,
    clk_21,
    \q_reg[14]_0 ,
    \ALUResult[19]_INST_0_i_4_0 ,
    \q_reg[6]_1 ,
    DI,
    \WriteData[4]_INST_0_1 ,
    \q_reg[23] ,
    \q_reg[7]_0 ,
    \q_reg[7]_1 ,
    \q_reg[6]_2 ,
    \q_reg[30] ,
    \q_reg[31]_3 ,
    clk_22,
    \q_reg[30]_0 ,
    \q_reg[31]_4 ,
    clk_23,
    clk_24,
    \q_reg[22] ,
    clk_25,
    clk_26,
    clk_27,
    clk_28,
    clk_29,
    rf_reg_r1_0_31_6_11_i_7_0,
    \q_reg[13]_0 ,
    \readDataM[31] ,
    S,
    \q_reg[11] ,
    \q_reg[15] ,
    \q_reg[19]_0 ,
    \q_reg[23]_0 ,
    \q_reg[27] ,
    \ALUResult[1]_INST_0_i_2_0 ,
    \ALUResult[2]_INST_0_i_1_0 ,
    \ALUResult[2]_INST_0_i_1_1 ,
    \q_reg[31]_5 ,
    result1_carry__3_i_15_0,
    \q_reg[31]_6 ,
    \q_reg[31]_7 ,
    \ALUResult[31]_INST_0_i_10_0 ,
    \q_reg[7]_2 ,
    \q_reg[0]_0 ,
    \q_reg[30]_1 ,
    \ALUResult[31]_INST_0_i_12 ,
    \q_reg[0]_1 ,
    \ALUResult[2]_INST_0_i_1_2 ,
    y_carry_i_5,
    clk,
    \writeDataM[31] ,
    Instr,
    \q_reg[28]_0 ,
    \q_reg[28]_1 ,
    \q_reg[28]_2 ,
    \q_reg[31]_i_2_0 ,
    \q[31]_i_5_0 ,
    \q[31]_i_5_1 ,
    \addressM[1] ,
    ALUControl,
    \addressM[14] ,
    \writeDataM[15] ,
    ALUResult,
    \addressM[1]_0 ,
    \addressM[0] ,
    d1,
    \addressM[1]_1 ,
    \addressM[28] ,
    SrcA,
    \addressM[3] ,
    \addressM[4] ,
    \addressM[5] ,
    \addressM[6] ,
    \addressM[7] ,
    ReadData,
    \q[31]_i_5_2 ,
    \q[31]_i_14_0 ,
    \addressM[9] ,
    \addressM[9]_0 ,
    \addressM[9]_1 ,
    \q[31]_i_14_1 ,
    \addressM[10] ,
    \addressM[11] ,
    \addressM[11]_0 ,
    \addressM[11]_1 ,
    \addressM[0]_0 ,
    \addressM[0]_1 ,
    Q,
    rf_reg_r2_0_31_12_17_0,
    \addressM[13] ,
    \addressM[13]_0 ,
    \addressM[13]_1 ,
    rf_reg_r2_0_31_12_17_1,
    \addressM[15] ,
    rf_reg_r2_0_31_12_17_2,
    \addressM[17] ,
    \addressM[17]_0 ,
    \addressM[18] ,
    rf_reg_r2_0_31_18_23_0,
    \addressM[19] ,
    \q[31]_i_18 ,
    \addressM[20] ,
    \addressM[20]_0 ,
    \q[31]_i_11_0 ,
    \q[31]_i_11_1 ,
    \q[31]_i_11_2 ,
    \q[31]_i_11_3 ,
    rf_reg_r2_0_31_24_29_0,
    \addressM[28]_0 ,
    \addressM[28]_1 ,
    \ALUResult[30]_INST_0_i_3 ,
    \addressM[2] ,
    \addressM[3]_0 ,
    \addressM[4]_0 ,
    \addressM[5]_0 ,
    \addressM[6]_0 ,
    \addressM[7]_0 ,
    \addressM[8] ,
    result1_carry__2,
    result1_carry__0,
    \q[31]_i_13_0 ,
    \q[31]_i_21_0 ,
    result1_carry_i_6_0,
    result1_carry__1_i_11_0,
    \q[31]_i_21_1 ,
    result1_carry__2_0,
    result1_carry__0_i_3_0,
    \q[31]_i_21_2 ,
    \ALUResult[31]_INST_0_i_2_0 ,
    \ALUResult[27]_INST_0_i_3 ,
    \ALUResult[27]_INST_0_i_3_0 ,
    \q[31]_i_40_0 ,
    \q[31]_i_40_1 ,
    \q[31]_i_40_2 ,
    \q[31]_i_39 ,
    \q[31]_i_42 ,
    \addressM[2]_0 ,
    \addressM[4]_1 ,
    \q[31]_i_21_3 ,
    \ALUResult[5]_INST_0_i_4_0 ,
    \addressM[4]_2 ,
    \addressM[4]_3 ,
    \addressM[4]_4 ,
    \q[31]_i_34 ,
    \q[31]_i_24_0 ,
    result1_carry__3_i_2_0,
    result1_carry__2_1,
    immext,
    result1_carry__3_i_11_0,
    \addressM[11]_2 ,
    \addressM[31] ,
    \addressM[31]_0 ,
    result1_carry_i_6_1,
    \ALUResult[0]_INST_0_i_3_0 ,
    rf_reg_r1_0_31_0_5_i_7,
    result1_carry__1,
    result1_carry_i_6_2,
    result1_carry__0_i_3_1);
  output [30:0]clk_0;
  output [14:0]D;
  output \q[31]_i_6 ;
  output \q_reg[0] ;
  output \q_reg[1] ;
  output [3:0]clk_1;
  output \q_reg[31] ;
  output \q_reg[28] ;
  output [25:0]\q_reg[31]_0 ;
  output clk_2;
  output \q_reg[2] ;
  output \q_reg[3] ;
  output \ALUResult[30]_INST_0_i_6 ;
  output \WriteData[3]_INST_0_0 ;
  output \q_reg[4] ;
  output \q_reg[7] ;
  output \q_reg[6] ;
  output \q_reg[5] ;
  output \WriteData[4]_INST_0_0 ;
  output clk_3;
  output clk_4;
  output clk_5;
  output \readDataM[7] ;
  output rf_reg_r1_0_31_6_11_i_13_0;
  output rf_reg_r1_0_31_0_5_i_9_0;
  output [6:0]\q_reg[19] ;
  output clk_6;
  output clk_7;
  output \readDataM[7]_0 ;
  output clk_8;
  output \ALUResult[10]_INST_0_i_5 ;
  output clk_9;
  output \q_reg[12] ;
  output clk_10;
  output rf_reg_r1_0_31_0_5_i_8_0;
  output clk_11;
  output \q_reg[6]_0 ;
  output \q_reg[13] ;
  output \ALUResult[19]_INST_0_i_7_0 ;
  output \q_reg[16] ;
  output clk_12;
  output \readDataM[15] ;
  output clk_13;
  output \ALUResult[21]_INST_0_i_6_0 ;
  output \ALUResult[18]_INST_0_i_5 ;
  output \ALUResult[23]_INST_0_i_6 ;
  output clk_14;
  output \q[31]_i_58 ;
  output \ALUResult[20]_INST_0_i_5 ;
  output clk_15;
  output \ALUResult[31]_INST_0_i_15 ;
  output clk_16;
  output clk_17;
  output clk_18;
  output clk_19;
  output \q_reg[31]_1 ;
  output clk_20;
  output [2:0]p_0_in;
  output \WriteData[3]_INST_0_1 ;
  output [2:0]\q_reg[31]_2 ;
  output [31:0]WriteData;
  output \readDataM[7]_1 ;
  output [2:0]\q_reg[14] ;
  output clk_21;
  output [2:0]\q_reg[14]_0 ;
  output \ALUResult[19]_INST_0_i_4_0 ;
  output [1:0]\q_reg[6]_1 ;
  output [0:0]DI;
  output \WriteData[4]_INST_0_1 ;
  output \q_reg[23] ;
  output \q_reg[7]_0 ;
  output \q_reg[7]_1 ;
  output \q_reg[6]_2 ;
  output \q_reg[30] ;
  output [3:0]\q_reg[31]_3 ;
  output clk_22;
  output [0:0]\q_reg[30]_0 ;
  output \q_reg[31]_4 ;
  output clk_23;
  output clk_24;
  output [1:0]\q_reg[22] ;
  output clk_25;
  output clk_26;
  output clk_27;
  output clk_28;
  output clk_29;
  output [4:0]rf_reg_r1_0_31_6_11_i_7_0;
  output [9:0]\q_reg[13]_0 ;
  output \readDataM[31] ;
  output [3:0]S;
  output [3:0]\q_reg[11] ;
  output [3:0]\q_reg[15] ;
  output [3:0]\q_reg[19]_0 ;
  output [3:0]\q_reg[23]_0 ;
  output [3:0]\q_reg[27] ;
  output [3:0]\ALUResult[1]_INST_0_i_2_0 ;
  output [3:0]\ALUResult[2]_INST_0_i_1_0 ;
  output [3:0]\ALUResult[2]_INST_0_i_1_1 ;
  output [3:0]\q_reg[31]_5 ;
  output [3:0]result1_carry__3_i_15_0;
  output [3:0]\q_reg[31]_6 ;
  output [3:0]\q_reg[31]_7 ;
  output \ALUResult[31]_INST_0_i_10_0 ;
  output [3:0]\q_reg[7]_2 ;
  output \q_reg[0]_0 ;
  output \q_reg[30]_1 ;
  output \ALUResult[31]_INST_0_i_12 ;
  output \q_reg[0]_1 ;
  output [0:0]\ALUResult[2]_INST_0_i_1_2 ;
  output y_carry_i_5;
  input clk;
  input [26:0]\writeDataM[31] ;
  input [29:0]Instr;
  input [14:0]\q_reg[28]_0 ;
  input \q_reg[28]_1 ;
  input \q_reg[28]_2 ;
  input \q_reg[31]_i_2_0 ;
  input \q[31]_i_5_0 ;
  input \q[31]_i_5_1 ;
  input \addressM[1] ;
  input [0:0]ALUControl;
  input \addressM[14] ;
  input \writeDataM[15] ;
  input [4:0]ALUResult;
  input \addressM[1]_0 ;
  input \addressM[0] ;
  input [14:0]d1;
  input \addressM[1]_1 ;
  input [14:0]\addressM[28] ;
  input [18:0]SrcA;
  input \addressM[3] ;
  input \addressM[4] ;
  input \addressM[5] ;
  input \addressM[6] ;
  input \addressM[7] ;
  input [9:0]ReadData;
  input \q[31]_i_5_2 ;
  input \q[31]_i_14_0 ;
  input \addressM[9] ;
  input \addressM[9]_0 ;
  input \addressM[9]_1 ;
  input \q[31]_i_14_1 ;
  input \addressM[10] ;
  input \addressM[11] ;
  input \addressM[11]_0 ;
  input \addressM[11]_1 ;
  input \addressM[0]_0 ;
  input \addressM[0]_1 ;
  input [31:0]Q;
  input rf_reg_r2_0_31_12_17_0;
  input \addressM[13] ;
  input \addressM[13]_0 ;
  input \addressM[13]_1 ;
  input rf_reg_r2_0_31_12_17_1;
  input \addressM[15] ;
  input rf_reg_r2_0_31_12_17_2;
  input \addressM[17] ;
  input \addressM[17]_0 ;
  input \addressM[18] ;
  input rf_reg_r2_0_31_18_23_0;
  input \addressM[19] ;
  input \q[31]_i_18 ;
  input \addressM[20] ;
  input \addressM[20]_0 ;
  input \q[31]_i_11_0 ;
  input \q[31]_i_11_1 ;
  input \q[31]_i_11_2 ;
  input \q[31]_i_11_3 ;
  input rf_reg_r2_0_31_24_29_0;
  input \addressM[28]_0 ;
  input \addressM[28]_1 ;
  input [2:0]\ALUResult[30]_INST_0_i_3 ;
  input \addressM[2] ;
  input \addressM[3]_0 ;
  input \addressM[4]_0 ;
  input \addressM[5]_0 ;
  input \addressM[6]_0 ;
  input \addressM[7]_0 ;
  input \addressM[8] ;
  input result1_carry__2;
  input result1_carry__0;
  input \q[31]_i_13_0 ;
  input \q[31]_i_21_0 ;
  input result1_carry_i_6_0;
  input result1_carry__1_i_11_0;
  input \q[31]_i_21_1 ;
  input result1_carry__2_0;
  input result1_carry__0_i_3_0;
  input \q[31]_i_21_2 ;
  input \ALUResult[31]_INST_0_i_2_0 ;
  input \ALUResult[27]_INST_0_i_3 ;
  input \ALUResult[27]_INST_0_i_3_0 ;
  input \q[31]_i_40_0 ;
  input \q[31]_i_40_1 ;
  input \q[31]_i_40_2 ;
  input \q[31]_i_39 ;
  input \q[31]_i_42 ;
  input \addressM[2]_0 ;
  input \addressM[4]_1 ;
  input \q[31]_i_21_3 ;
  input \ALUResult[5]_INST_0_i_4_0 ;
  input \addressM[4]_2 ;
  input \addressM[4]_3 ;
  input \addressM[4]_4 ;
  input \q[31]_i_34 ;
  input \q[31]_i_24_0 ;
  input result1_carry__3_i_2_0;
  input result1_carry__2_1;
  input [0:0]immext;
  input result1_carry__3_i_11_0;
  input \addressM[11]_2 ;
  input \addressM[31] ;
  input \addressM[31]_0 ;
  input result1_carry_i_6_1;
  input \ALUResult[0]_INST_0_i_3_0 ;
  input rf_reg_r1_0_31_0_5_i_7;
  input result1_carry__1;
  input result1_carry_i_6_2;
  input result1_carry__0_i_3_1;

  wire [0:0]ALUControl;
  wire [4:0]ALUResult;
  wire \ALUResult[0]_INST_0_i_10_n_0 ;
  wire \ALUResult[0]_INST_0_i_12_n_0 ;
  wire \ALUResult[0]_INST_0_i_15_n_0 ;
  wire \ALUResult[0]_INST_0_i_18_n_0 ;
  wire \ALUResult[0]_INST_0_i_19_n_0 ;
  wire \ALUResult[0]_INST_0_i_22_n_0 ;
  wire \ALUResult[0]_INST_0_i_24_n_0 ;
  wire \ALUResult[0]_INST_0_i_3_0 ;
  wire \ALUResult[0]_INST_0_i_7_n_0 ;
  wire \ALUResult[0]_INST_0_i_8_n_0 ;
  wire \ALUResult[0]_INST_0_i_9_n_0 ;
  wire \ALUResult[10]_INST_0_i_4_n_0 ;
  wire \ALUResult[10]_INST_0_i_5 ;
  wire \ALUResult[10]_INST_0_i_6_n_0 ;
  wire \ALUResult[11]_INST_0_i_3_n_0 ;
  wire \ALUResult[11]_INST_0_i_5_n_0 ;
  wire \ALUResult[11]_INST_0_i_7_n_0 ;
  wire \ALUResult[13]_INST_0_i_3_n_0 ;
  wire \ALUResult[13]_INST_0_i_6_n_0 ;
  wire \ALUResult[15]_INST_0_i_1_n_0 ;
  wire \ALUResult[15]_INST_0_i_2_n_0 ;
  wire \ALUResult[15]_INST_0_i_3_n_0 ;
  wire \ALUResult[15]_INST_0_i_5_n_0 ;
  wire \ALUResult[15]_INST_0_i_6_n_0 ;
  wire \ALUResult[17]_INST_0_i_3_n_0 ;
  wire \ALUResult[17]_INST_0_i_6_n_0 ;
  wire \ALUResult[18]_INST_0_i_5 ;
  wire \ALUResult[19]_INST_0_i_3_n_0 ;
  wire \ALUResult[19]_INST_0_i_4_0 ;
  wire \ALUResult[19]_INST_0_i_7_0 ;
  wire \ALUResult[19]_INST_0_i_7_n_0 ;
  wire [3:0]\ALUResult[1]_INST_0_i_2_0 ;
  wire \ALUResult[1]_INST_0_i_3_n_0 ;
  wire \ALUResult[1]_INST_0_i_5_n_0 ;
  wire \ALUResult[1]_INST_0_i_6_n_0 ;
  wire \ALUResult[1]_INST_0_i_7_n_0 ;
  wire \ALUResult[20]_INST_0_i_4_n_0 ;
  wire \ALUResult[20]_INST_0_i_5 ;
  wire \ALUResult[21]_INST_0_i_6_0 ;
  wire \ALUResult[23]_INST_0_i_6 ;
  wire \ALUResult[27]_INST_0_i_3 ;
  wire \ALUResult[27]_INST_0_i_3_0 ;
  wire \ALUResult[28]_INST_0_i_3_n_0 ;
  wire [3:0]\ALUResult[2]_INST_0_i_1_0 ;
  wire [3:0]\ALUResult[2]_INST_0_i_1_1 ;
  wire [0:0]\ALUResult[2]_INST_0_i_1_2 ;
  wire \ALUResult[2]_INST_0_i_3_n_0 ;
  wire \ALUResult[2]_INST_0_i_4_n_0 ;
  wire [2:0]\ALUResult[30]_INST_0_i_3 ;
  wire \ALUResult[30]_INST_0_i_6 ;
  wire \ALUResult[31]_INST_0_i_10_0 ;
  wire \ALUResult[31]_INST_0_i_12 ;
  wire \ALUResult[31]_INST_0_i_15 ;
  wire \ALUResult[31]_INST_0_i_18_n_0 ;
  wire \ALUResult[31]_INST_0_i_19_n_0 ;
  wire \ALUResult[31]_INST_0_i_2_0 ;
  wire \ALUResult[31]_INST_0_i_9_n_0 ;
  wire \ALUResult[3]_INST_0_i_3_n_0 ;
  wire \ALUResult[3]_INST_0_i_5_n_0 ;
  wire \ALUResult[4]_INST_0_i_3_n_0 ;
  wire \ALUResult[4]_INST_0_i_7_n_0 ;
  wire \ALUResult[5]_INST_0_i_3_n_0 ;
  wire \ALUResult[5]_INST_0_i_4_0 ;
  wire \ALUResult[5]_INST_0_i_4_n_0 ;
  wire \ALUResult[6]_INST_0_i_3_n_0 ;
  wire \ALUResult[6]_INST_0_i_4_n_0 ;
  wire \ALUResult[7]_INST_0_i_3_n_0 ;
  wire \ALUResult[7]_INST_0_i_4_n_0 ;
  wire \ALUResult[7]_INST_0_i_6_n_0 ;
  wire \ALUResult[8]_INST_0_i_3_n_0 ;
  wire \ALUResult[8]_INST_0_i_4_n_0 ;
  wire \ALUResult[8]_INST_0_i_7_n_0 ;
  wire \ALUResult[9]_INST_0_i_3_n_0 ;
  wire \ALUResult[9]_INST_0_i_4_n_0 ;
  wire \ALUResult[9]_INST_0_i_6_n_0 ;
  wire [14:0]D;
  wire [0:0]DI;
  wire [29:0]Instr;
  wire [31:0]Q;
  wire [9:0]ReadData;
  wire [3:0]S;
  wire [18:0]SrcA;
  wire [31:0]WriteData;
  wire \WriteData[31]_INST_0_i_1_n_0 ;
  wire \WriteData[3]_INST_0_0 ;
  wire \WriteData[3]_INST_0_1 ;
  wire \WriteData[4]_INST_0_0 ;
  wire \WriteData[4]_INST_0_1 ;
  wire \addressM[0] ;
  wire \addressM[0]_0 ;
  wire \addressM[0]_1 ;
  wire \addressM[10] ;
  wire \addressM[11] ;
  wire \addressM[11]_0 ;
  wire \addressM[11]_1 ;
  wire \addressM[11]_2 ;
  wire \addressM[13] ;
  wire \addressM[13]_0 ;
  wire \addressM[13]_1 ;
  wire \addressM[14] ;
  wire \addressM[15] ;
  wire \addressM[17] ;
  wire \addressM[17]_0 ;
  wire \addressM[18] ;
  wire \addressM[19] ;
  wire \addressM[1] ;
  wire \addressM[1]_0 ;
  wire \addressM[1]_1 ;
  wire \addressM[20] ;
  wire \addressM[20]_0 ;
  wire [14:0]\addressM[28] ;
  wire \addressM[28]_0 ;
  wire \addressM[28]_1 ;
  wire \addressM[2] ;
  wire \addressM[2]_0 ;
  wire \addressM[31] ;
  wire \addressM[31]_0 ;
  wire \addressM[3] ;
  wire \addressM[3]_0 ;
  wire \addressM[4] ;
  wire \addressM[4]_0 ;
  wire \addressM[4]_1 ;
  wire \addressM[4]_2 ;
  wire \addressM[4]_3 ;
  wire \addressM[4]_4 ;
  wire \addressM[5] ;
  wire \addressM[5]_0 ;
  wire \addressM[6] ;
  wire \addressM[6]_0 ;
  wire \addressM[7] ;
  wire \addressM[7]_0 ;
  wire \addressM[8] ;
  wire \addressM[9] ;
  wire \addressM[9]_0 ;
  wire \addressM[9]_1 ;
  wire clk;
  wire [30:0]clk_0;
  wire [3:0]clk_1;
  wire clk_10;
  wire clk_11;
  wire clk_12;
  wire clk_13;
  wire clk_14;
  wire clk_15;
  wire clk_16;
  wire clk_17;
  wire clk_18;
  wire clk_19;
  wire clk_2;
  wire clk_20;
  wire clk_21;
  wire clk_22;
  wire clk_23;
  wire clk_24;
  wire clk_25;
  wire clk_26;
  wire clk_27;
  wire clk_28;
  wire clk_29;
  wire clk_3;
  wire clk_4;
  wire clk_5;
  wire clk_6;
  wire clk_7;
  wire clk_8;
  wire clk_9;
  wire [14:0]d1;
  wire [0:0]immext;
  wire [2:0]p_0_in;
  wire \q[11]_i_2_n_0 ;
  wire \q[13]_i_2_n_0 ;
  wire \q[15]_i_2_n_0 ;
  wire \q[17]_i_2_n_0 ;
  wire \q[19]_i_2_n_0 ;
  wire \q[1]_i_2_n_0 ;
  wire \q[28]_i_2_n_0 ;
  wire \q[2]_i_2_n_0 ;
  wire \q[31]_i_10_n_0 ;
  wire \q[31]_i_11_0 ;
  wire \q[31]_i_11_1 ;
  wire \q[31]_i_11_2 ;
  wire \q[31]_i_11_3 ;
  wire \q[31]_i_11_n_0 ;
  wire \q[31]_i_13_0 ;
  wire \q[31]_i_13_n_0 ;
  wire \q[31]_i_14_0 ;
  wire \q[31]_i_14_1 ;
  wire \q[31]_i_14_n_0 ;
  wire \q[31]_i_16_n_0 ;
  wire \q[31]_i_17_n_0 ;
  wire \q[31]_i_18 ;
  wire \q[31]_i_20_n_0 ;
  wire \q[31]_i_21_0 ;
  wire \q[31]_i_21_1 ;
  wire \q[31]_i_21_2 ;
  wire \q[31]_i_21_3 ;
  wire \q[31]_i_22_n_0 ;
  wire \q[31]_i_23_n_0 ;
  wire \q[31]_i_24_0 ;
  wire \q[31]_i_24_n_0 ;
  wire \q[31]_i_25_n_0 ;
  wire \q[31]_i_31_n_0 ;
  wire \q[31]_i_33_n_0 ;
  wire \q[31]_i_34 ;
  wire \q[31]_i_35_n_0 ;
  wire \q[31]_i_37_n_0 ;
  wire \q[31]_i_39 ;
  wire \q[31]_i_40_0 ;
  wire \q[31]_i_40_1 ;
  wire \q[31]_i_40_2 ;
  wire \q[31]_i_42 ;
  wire \q[31]_i_46_n_0 ;
  wire \q[31]_i_48_n_0 ;
  wire \q[31]_i_58 ;
  wire \q[31]_i_5_0 ;
  wire \q[31]_i_5_1 ;
  wire \q[31]_i_5_2 ;
  wire \q[31]_i_5_n_0 ;
  wire \q[31]_i_6 ;
  wire \q[31]_i_61_n_0 ;
  wire \q[31]_i_7_n_0 ;
  wire \q[31]_i_8_n_0 ;
  wire \q[31]_i_9_n_0 ;
  wire \q[3]_i_2_n_0 ;
  wire \q[4]_i_2_n_0 ;
  wire \q[5]_i_2_n_0 ;
  wire \q[6]_i_2_n_0 ;
  wire \q[7]_i_2_n_0 ;
  wire \q[8]_i_2_n_0 ;
  wire \q[9]_i_2_n_0 ;
  wire \q_reg[0] ;
  wire \q_reg[0]_0 ;
  wire \q_reg[0]_1 ;
  wire [3:0]\q_reg[11] ;
  wire \q_reg[12] ;
  wire \q_reg[13] ;
  wire [9:0]\q_reg[13]_0 ;
  wire [2:0]\q_reg[14] ;
  wire [2:0]\q_reg[14]_0 ;
  wire [3:0]\q_reg[15] ;
  wire \q_reg[16] ;
  wire [6:0]\q_reg[19] ;
  wire [3:0]\q_reg[19]_0 ;
  wire \q_reg[1] ;
  wire [1:0]\q_reg[22] ;
  wire \q_reg[23] ;
  wire [3:0]\q_reg[23]_0 ;
  wire [3:0]\q_reg[27] ;
  wire \q_reg[28] ;
  wire [14:0]\q_reg[28]_0 ;
  wire \q_reg[28]_1 ;
  wire \q_reg[28]_2 ;
  wire \q_reg[2] ;
  wire \q_reg[30] ;
  wire [0:0]\q_reg[30]_0 ;
  wire \q_reg[30]_1 ;
  wire \q_reg[31] ;
  wire [25:0]\q_reg[31]_0 ;
  wire \q_reg[31]_1 ;
  wire [2:0]\q_reg[31]_2 ;
  wire [3:0]\q_reg[31]_3 ;
  wire \q_reg[31]_4 ;
  wire [3:0]\q_reg[31]_5 ;
  wire [3:0]\q_reg[31]_6 ;
  wire [3:0]\q_reg[31]_7 ;
  wire \q_reg[31]_i_2_0 ;
  wire \q_reg[3] ;
  wire \q_reg[4] ;
  wire \q_reg[5] ;
  wire \q_reg[6] ;
  wire \q_reg[6]_0 ;
  wire [1:0]\q_reg[6]_1 ;
  wire \q_reg[6]_2 ;
  wire \q_reg[7] ;
  wire \q_reg[7]_0 ;
  wire \q_reg[7]_1 ;
  wire [3:0]\q_reg[7]_2 ;
  wire [31:31]rd10;
  wire [31:0]rd20;
  wire \readDataM[15] ;
  wire \readDataM[31] ;
  wire \readDataM[7] ;
  wire \readDataM[7]_0 ;
  wire \readDataM[7]_1 ;
  wire result1_carry__0;
  wire result1_carry__0_i_10_n_0;
  wire result1_carry__0_i_11_n_0;
  wire result1_carry__0_i_12_n_0;
  wire result1_carry__0_i_14_n_0;
  wire result1_carry__0_i_15_n_0;
  wire result1_carry__0_i_17_n_0;
  wire result1_carry__0_i_19_n_0;
  wire result1_carry__0_i_3_0;
  wire result1_carry__0_i_3_1;
  wire result1_carry__1;
  wire result1_carry__1_i_10_n_0;
  wire result1_carry__1_i_11_0;
  wire result1_carry__1_i_11_n_0;
  wire result1_carry__1_i_12_n_0;
  wire result1_carry__1_i_13_n_0;
  wire result1_carry__1_i_14_n_0;
  wire result1_carry__1_i_15_n_0;
  wire result1_carry__1_i_16_n_0;
  wire result1_carry__1_i_17_n_0;
  wire result1_carry__2;
  wire result1_carry__2_0;
  wire result1_carry__2_1;
  wire result1_carry__2_i_10_n_0;
  wire result1_carry__2_i_11_n_0;
  wire result1_carry__2_i_13_n_0;
  wire result1_carry__2_i_14_n_0;
  wire result1_carry__2_i_16_n_0;
  wire result1_carry__2_i_18_n_0;
  wire result1_carry__2_i_19_n_0;
  wire result1_carry__2_i_9_n_0;
  wire result1_carry__3_i_10_n_0;
  wire result1_carry__3_i_11_0;
  wire result1_carry__3_i_11_n_0;
  wire result1_carry__3_i_12_n_0;
  wire result1_carry__3_i_13_n_0;
  wire result1_carry__3_i_14_n_0;
  wire [3:0]result1_carry__3_i_15_0;
  wire result1_carry__3_i_15_n_0;
  wire result1_carry__3_i_17_n_0;
  wire result1_carry__3_i_18_n_0;
  wire result1_carry__3_i_19_n_0;
  wire result1_carry__3_i_20_n_0;
  wire result1_carry__3_i_21_n_0;
  wire result1_carry__3_i_2_0;
  wire result1_carry__3_i_9_n_0;
  wire result1_carry__4_i_10_n_0;
  wire result1_carry__4_i_11_n_0;
  wire result1_carry__4_i_12_n_0;
  wire result1_carry__4_i_13_n_0;
  wire result1_carry__4_i_14_n_0;
  wire result1_carry__4_i_15_n_0;
  wire result1_carry__4_i_16_n_0;
  wire result1_carry__4_i_17_n_0;
  wire result1_carry__4_i_9_n_0;
  wire result1_carry__5_i_10_n_0;
  wire result1_carry__5_i_11_n_0;
  wire result1_carry__5_i_12_n_0;
  wire result1_carry__5_i_13_n_0;
  wire result1_carry__5_i_9_n_0;
  wire result1_carry__6_i_6_n_0;
  wire result1_carry__6_i_7_n_0;
  wire result1_carry__6_i_8_n_0;
  wire result1_carry__6_i_9_n_0;
  wire result1_carry_i_10_n_0;
  wire result1_carry_i_11_n_0;
  wire result1_carry_i_12_n_0;
  wire result1_carry_i_13_n_0;
  wire result1_carry_i_17_n_0;
  wire result1_carry_i_19_n_0;
  wire result1_carry_i_20_n_0;
  wire result1_carry_i_21_n_0;
  wire result1_carry_i_22_n_0;
  wire result1_carry_i_6_0;
  wire result1_carry_i_6_1;
  wire result1_carry_i_6_2;
  wire [0:0]result2;
  wire rf_reg_r1_0_31_0_5_i_7;
  wire rf_reg_r1_0_31_0_5_i_8_0;
  wire rf_reg_r1_0_31_0_5_i_9_0;
  wire rf_reg_r1_0_31_12_17_i_11_n_0;
  wire rf_reg_r1_0_31_12_17_i_15_n_0;
  wire rf_reg_r1_0_31_12_17_i_7_n_0;
  wire rf_reg_r1_0_31_18_23_i_7_n_0;
  wire rf_reg_r1_0_31_24_29_i_17_n_0;
  wire rf_reg_r1_0_31_6_11_i_13_0;
  wire [4:0]rf_reg_r1_0_31_6_11_i_7_0;
  wire rf_reg_r2_0_31_12_17_0;
  wire rf_reg_r2_0_31_12_17_1;
  wire rf_reg_r2_0_31_12_17_2;
  wire rf_reg_r2_0_31_18_23_0;
  wire rf_reg_r2_0_31_24_29_0;
  wire w_carry__0_i_10_n_0;
  wire w_carry__0_i_11_n_0;
  wire w_carry__0_i_9_n_0;
  wire w_carry_i_10_n_0;
  wire w_carry_i_11_n_0;
  wire [28:13]wd3;
  wire we3;
  wire \writeDataM[15] ;
  wire [26:0]\writeDataM[31] ;
  wire y_carry_i_5;
  wire [1:0]NLW_rf_reg_r1_0_31_0_5_DOD_UNCONNECTED;
  wire [1:0]NLW_rf_reg_r1_0_31_12_17_DOD_UNCONNECTED;
  wire [1:0]NLW_rf_reg_r1_0_31_18_23_DOD_UNCONNECTED;
  wire [1:0]NLW_rf_reg_r1_0_31_24_29_DOD_UNCONNECTED;
  wire NLW_rf_reg_r1_0_31_30_31_SPO_UNCONNECTED;
  wire NLW_rf_reg_r1_0_31_30_31__0_SPO_UNCONNECTED;
  wire [1:0]NLW_rf_reg_r1_0_31_6_11_DOD_UNCONNECTED;
  wire [1:0]NLW_rf_reg_r2_0_31_0_5_DOD_UNCONNECTED;
  wire [1:0]NLW_rf_reg_r2_0_31_12_17_DOD_UNCONNECTED;
  wire [1:0]NLW_rf_reg_r2_0_31_18_23_DOD_UNCONNECTED;
  wire [1:0]NLW_rf_reg_r2_0_31_24_29_DOD_UNCONNECTED;
  wire NLW_rf_reg_r2_0_31_30_31_SPO_UNCONNECTED;
  wire NLW_rf_reg_r2_0_31_30_31__0_SPO_UNCONNECTED;
  wire [1:0]NLW_rf_reg_r2_0_31_6_11_DOD_UNCONNECTED;

  LUT6 #(
    .INIT(64'hEEEE8E8888888E88)) 
    \ALUResult[0]_INST_0_i_1 
       (.I0(\addressM[1]_0 ),
        .I1(clk_7),
        .I2(\addressM[0]_0 ),
        .I3(clk_0[0]),
        .I4(\addressM[0]_1 ),
        .I5(Q[0]),
        .O(\q_reg[0] ));
  LUT6 #(
    .INIT(64'hB0BBBFBB4F444044)) 
    \ALUResult[0]_INST_0_i_10 
       (.I0(\addressM[0]_0 ),
        .I1(clk_0[0]),
        .I2(Instr[3]),
        .I3(Instr[0]),
        .I4(Q[0]),
        .I5(clk_7),
        .O(\ALUResult[0]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h00DFFFFF00DF0000)) 
    \ALUResult[0]_INST_0_i_12 
       (.I0(\WriteData[4]_INST_0_0 ),
        .I1(\WriteData[3]_INST_0_0 ),
        .I2(SrcA[12]),
        .I3(\ALUResult[0]_INST_0_i_18_n_0 ),
        .I4(\ALUResult[30]_INST_0_i_6 ),
        .I5(\ALUResult[0]_INST_0_i_19_n_0 ),
        .O(\ALUResult[0]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h2F203F3F2F203030)) 
    \ALUResult[0]_INST_0_i_15 
       (.I0(\q[31]_i_21_2 ),
        .I1(\ALUResult[0]_INST_0_i_22_n_0 ),
        .I2(\ALUResult[30]_INST_0_i_6 ),
        .I3(\q[31]_i_21_1 ),
        .I4(\WriteData[3]_INST_0_0 ),
        .I5(\ALUResult[0]_INST_0_i_24_n_0 ),
        .O(\ALUResult[0]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h4700773347004700)) 
    \ALUResult[0]_INST_0_i_18 
       (.I0(\addressM[7] ),
        .I1(\WriteData[3]_INST_0_1 ),
        .I2(\ALUResult[15]_INST_0_i_2_n_0 ),
        .I3(\WriteData[4]_INST_0_1 ),
        .I4(\q_reg[31] ),
        .I5(\WriteData[4]_INST_0_0 ),
        .O(\ALUResult[0]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hAFA03030AFA03F3F)) 
    \ALUResult[0]_INST_0_i_19 
       (.I0(\addressM[11] ),
        .I1(SrcA[16]),
        .I2(\WriteData[3]_INST_0_0 ),
        .I3(\addressM[3] ),
        .I4(\WriteData[4]_INST_0_1 ),
        .I5(SrcA[8]),
        .O(\ALUResult[0]_INST_0_i_19_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h00080000)) 
    \ALUResult[0]_INST_0_i_2 
       (.I0(clk_2),
        .I1(\ALUResult[0]_INST_0_i_7_n_0 ),
        .I2(\ALUResult[30]_INST_0_i_6 ),
        .I3(clk_7),
        .I4(\addressM[9]_1 ),
        .O(\q_reg[0]_1 ));
  LUT5 #(
    .INIT(32'h00F20022)) 
    \ALUResult[0]_INST_0_i_22 
       (.I0(\WriteData[4]_INST_0_1 ),
        .I1(\addressM[6] ),
        .I2(\WriteData[4]_INST_0_0 ),
        .I3(\WriteData[3]_INST_0_0 ),
        .I4(SrcA[11]),
        .O(\ALUResult[0]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h0BFB00000BFBFFFF)) 
    \ALUResult[0]_INST_0_i_24 
       (.I0(\addressM[0]_0 ),
        .I1(clk_0[2]),
        .I2(\addressM[0]_1 ),
        .I3(Q[2]),
        .I4(\WriteData[4]_INST_0_1 ),
        .I5(SrcA[7]),
        .O(\ALUResult[0]_INST_0_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hEFE00000FFFFFFFF)) 
    \ALUResult[0]_INST_0_i_3 
       (.I0(\ALUResult[0]_INST_0_i_8_n_0 ),
        .I1(\ALUResult[0]_INST_0_i_9_n_0 ),
        .I2(ALUControl),
        .I3(\ALUResult[0]_INST_0_i_10_n_0 ),
        .I4(\addressM[0] ),
        .I5(\addressM[1]_0 ),
        .O(\q_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h0000000088B80000)) 
    \ALUResult[0]_INST_0_i_7 
       (.I0(Q[0]),
        .I1(\addressM[0]_1 ),
        .I2(clk_0[0]),
        .I3(\addressM[0]_0 ),
        .I4(\WriteData[4]_INST_0_1 ),
        .I5(\WriteData[3]_INST_0_0 ),
        .O(\ALUResult[0]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h020202A2A2A202A2)) 
    \ALUResult[0]_INST_0_i_8 
       (.I0(clk_7),
        .I1(\ALUResult[0]_INST_0_i_12_n_0 ),
        .I2(clk_2),
        .I3(\q[31]_i_21_0 ),
        .I4(\ALUResult[30]_INST_0_i_6 ),
        .I5(result1_carry_i_6_0),
        .O(\ALUResult[0]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h5101010151015151)) 
    \ALUResult[0]_INST_0_i_9 
       (.I0(clk_7),
        .I1(\ALUResult[0]_INST_0_i_15_n_0 ),
        .I2(clk_2),
        .I3(result1_carry_i_6_1),
        .I4(\ALUResult[30]_INST_0_i_6 ),
        .I5(\ALUResult[0]_INST_0_i_3_0 ),
        .O(\ALUResult[0]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h8A008A008AFF8A00)) 
    \ALUResult[10]_INST_0_i_1 
       (.I0(Instr[28]),
        .I1(Instr[4]),
        .I2(Instr[0]),
        .I3(\addressM[14] ),
        .I4(rd20[10]),
        .I5(\writeDataM[15] ),
        .O(clk_23));
  LUT5 #(
    .INIT(32'hFFFFB080)) 
    \ALUResult[10]_INST_0_i_3 
       (.I0(\ALUResult[10]_INST_0_i_4_n_0 ),
        .I1(clk_7),
        .I2(\addressM[9]_1 ),
        .I3(\ALUResult[11]_INST_0_i_5_n_0 ),
        .I4(\addressM[10] ),
        .O(\ALUResult[10]_INST_0_i_5 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ALUResult[10]_INST_0_i_4 
       (.I0(\q[31]_i_24_0 ),
        .I1(clk_2),
        .I2(\ALUResult[10]_INST_0_i_6_n_0 ),
        .O(\ALUResult[10]_INST_0_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h00004700)) 
    \ALUResult[10]_INST_0_i_6 
       (.I0(\addressM[3] ),
        .I1(\ALUResult[30]_INST_0_i_6 ),
        .I2(\addressM[7] ),
        .I3(\WriteData[4]_INST_0_1 ),
        .I4(\WriteData[3]_INST_0_0 ),
        .O(\ALUResult[10]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hBFB02F20BFB02020)) 
    \ALUResult[11]_INST_0 
       (.I0(clk_9),
        .I1(\addressM[11] ),
        .I2(\addressM[1] ),
        .I3(\ALUResult[11]_INST_0_i_3_n_0 ),
        .I4(\addressM[1]_0 ),
        .I5(\addressM[28] [9]),
        .O(\q_reg[19] [2]));
  LUT4 #(
    .INIT(16'h88B8)) 
    \ALUResult[11]_INST_0_i_1 
       (.I0(\addressM[11]_2 ),
        .I1(\addressM[14] ),
        .I2(rd20[11]),
        .I3(\writeDataM[15] ),
        .O(clk_9));
  LUT5 #(
    .INIT(32'hFFFFB080)) 
    \ALUResult[11]_INST_0_i_3 
       (.I0(\ALUResult[11]_INST_0_i_5_n_0 ),
        .I1(clk_7),
        .I2(\addressM[9]_1 ),
        .I3(\addressM[11]_0 ),
        .I4(\addressM[11]_1 ),
        .O(\ALUResult[11]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[11]_INST_0_i_5 
       (.I0(\ALUResult[13]_INST_0_i_6_n_0 ),
        .I1(\ALUResult[17]_INST_0_i_6_n_0 ),
        .I2(clk_2),
        .I3(\ALUResult[11]_INST_0_i_7_n_0 ),
        .I4(\ALUResult[30]_INST_0_i_6 ),
        .I5(\ALUResult[15]_INST_0_i_6_n_0 ),
        .O(\ALUResult[11]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000088B80000)) 
    \ALUResult[11]_INST_0_i_7 
       (.I0(Q[4]),
        .I1(\addressM[0]_1 ),
        .I2(clk_0[4]),
        .I3(\addressM[0]_0 ),
        .I4(\WriteData[4]_INST_0_1 ),
        .I5(\WriteData[3]_INST_0_0 ),
        .O(\ALUResult[11]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h47FF47FF470047FF)) 
    \ALUResult[12]_INST_0_i_2 
       (.I0(Instr[10]),
        .I1(\ALUResult[19]_INST_0_i_4_0 ),
        .I2(Instr[29]),
        .I3(\addressM[14] ),
        .I4(rd20[12]),
        .I5(\writeDataM[15] ),
        .O(clk_10));
  LUT6 #(
    .INIT(64'hBFB02F20BFB02020)) 
    \ALUResult[13]_INST_0 
       (.I0(clk_11),
        .I1(\addressM[13] ),
        .I2(\addressM[1] ),
        .I3(\ALUResult[13]_INST_0_i_3_n_0 ),
        .I4(\addressM[1]_0 ),
        .I5(\addressM[28] [10]),
        .O(\q_reg[19] [3]));
  LUT6 #(
    .INIT(64'hE200E200E2FFE200)) 
    \ALUResult[13]_INST_0_i_1 
       (.I0(Instr[29]),
        .I1(\ALUResult[19]_INST_0_i_4_0 ),
        .I2(Instr[11]),
        .I3(\addressM[14] ),
        .I4(rd20[13]),
        .I5(\writeDataM[15] ),
        .O(clk_11));
  LUT5 #(
    .INIT(32'hFFFFB080)) 
    \ALUResult[13]_INST_0_i_3 
       (.I0(\q_reg[6]_0 ),
        .I1(clk_7),
        .I2(\addressM[9]_1 ),
        .I3(\addressM[13]_0 ),
        .I4(\addressM[13]_1 ),
        .O(\ALUResult[13]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[13]_INST_0_i_4 
       (.I0(\ALUResult[15]_INST_0_i_6_n_0 ),
        .I1(\ALUResult[19]_INST_0_i_7_n_0 ),
        .I2(clk_2),
        .I3(\ALUResult[13]_INST_0_i_6_n_0 ),
        .I4(\ALUResult[30]_INST_0_i_6 ),
        .I5(\ALUResult[17]_INST_0_i_6_n_0 ),
        .O(\q_reg[6]_0 ));
  LUT6 #(
    .INIT(64'h0000000088B80000)) 
    \ALUResult[13]_INST_0_i_6 
       (.I0(Q[6]),
        .I1(\addressM[0]_1 ),
        .I2(clk_0[6]),
        .I3(\addressM[0]_0 ),
        .I4(\WriteData[4]_INST_0_1 ),
        .I5(\WriteData[3]_INST_0_0 ),
        .O(\ALUResult[13]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h47FF47FF470047FF)) 
    \ALUResult[14]_INST_0_i_2 
       (.I0(Instr[12]),
        .I1(\ALUResult[19]_INST_0_i_4_0 ),
        .I2(Instr[29]),
        .I3(\addressM[14] ),
        .I4(rd20[14]),
        .I5(\writeDataM[15] ),
        .O(clk_21));
  LUT6 #(
    .INIT(64'hBFB02F20BFB02020)) 
    \ALUResult[15]_INST_0 
       (.I0(\ALUResult[15]_INST_0_i_1_n_0 ),
        .I1(\ALUResult[15]_INST_0_i_2_n_0 ),
        .I2(\addressM[1] ),
        .I3(\ALUResult[15]_INST_0_i_3_n_0 ),
        .I4(\addressM[1]_0 ),
        .I5(\addressM[28] [11]),
        .O(\q_reg[19] [4]));
  LUT6 #(
    .INIT(64'hB800B800B8FFB800)) 
    \ALUResult[15]_INST_0_i_1 
       (.I0(Instr[13]),
        .I1(\ALUResult[19]_INST_0_i_4_0 ),
        .I2(Instr[29]),
        .I3(\addressM[14] ),
        .I4(rd20[15]),
        .I5(\writeDataM[15] ),
        .O(\ALUResult[15]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBB0BBBFB)) 
    \ALUResult[15]_INST_0_i_2 
       (.I0(\addressM[0]_0 ),
        .I1(clk_0[15]),
        .I2(Instr[0]),
        .I3(Instr[3]),
        .I4(Q[15]),
        .O(\ALUResult[15]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFB080)) 
    \ALUResult[15]_INST_0_i_3 
       (.I0(\ALUResult[19]_INST_0_i_7_0 ),
        .I1(clk_7),
        .I2(\addressM[9]_1 ),
        .I3(\addressM[15] ),
        .I4(\ALUResult[15]_INST_0_i_5_n_0 ),
        .O(\ALUResult[15]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[15]_INST_0_i_4 
       (.I0(\ALUResult[17]_INST_0_i_6_n_0 ),
        .I1(\q_reg[6]_2 ),
        .I2(clk_2),
        .I3(\ALUResult[15]_INST_0_i_6_n_0 ),
        .I4(\ALUResult[30]_INST_0_i_6 ),
        .I5(\ALUResult[19]_INST_0_i_7_n_0 ),
        .O(\ALUResult[19]_INST_0_i_7_0 ));
  LUT6 #(
    .INIT(64'hF9000900FFFFFFFF)) 
    \ALUResult[15]_INST_0_i_5 
       (.I0(\ALUResult[15]_INST_0_i_2_n_0 ),
        .I1(\ALUResult[15]_INST_0_i_1_n_0 ),
        .I2(ALUControl),
        .I3(\addressM[0] ),
        .I4(\ALUResult[30]_INST_0_i_3 [1]),
        .I5(\addressM[1]_0 ),
        .O(\ALUResult[15]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h20202F20)) 
    \ALUResult[15]_INST_0_i_6 
       (.I0(\WriteData[4]_INST_0_1 ),
        .I1(\ALUResult[5]_INST_0_i_4_0 ),
        .I2(\WriteData[3]_INST_0_0 ),
        .I3(SrcA[1]),
        .I4(\WriteData[4]_INST_0_0 ),
        .O(\ALUResult[15]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hB800B800B8FFB800)) 
    \ALUResult[16]_INST_0_i_1 
       (.I0(Instr[14]),
        .I1(\ALUResult[19]_INST_0_i_4_0 ),
        .I2(Instr[29]),
        .I3(\addressM[14] ),
        .I4(rd20[16]),
        .I5(\writeDataM[15] ),
        .O(clk_12));
  LUT6 #(
    .INIT(64'hEF8FEF80E080E080)) 
    \ALUResult[17]_INST_0 
       (.I0(clk_13),
        .I1(SrcA[6]),
        .I2(\addressM[1] ),
        .I3(\addressM[1]_0 ),
        .I4(\addressM[28] [12]),
        .I5(\ALUResult[17]_INST_0_i_3_n_0 ),
        .O(\q_reg[19] [5]));
  LUT6 #(
    .INIT(64'hB800B800B8FFB800)) 
    \ALUResult[17]_INST_0_i_1 
       (.I0(Instr[15]),
        .I1(\ALUResult[19]_INST_0_i_4_0 ),
        .I2(Instr[29]),
        .I3(\addressM[14] ),
        .I4(rd20[17]),
        .I5(\writeDataM[15] ),
        .O(clk_13));
  LUT5 #(
    .INIT(32'hFFFFB080)) 
    \ALUResult[17]_INST_0_i_3 
       (.I0(\ALUResult[21]_INST_0_i_6_0 ),
        .I1(clk_7),
        .I2(\addressM[9]_1 ),
        .I3(\addressM[17] ),
        .I4(\addressM[17]_0 ),
        .O(\ALUResult[17]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[17]_INST_0_i_4 
       (.I0(\ALUResult[19]_INST_0_i_7_n_0 ),
        .I1(\q[31]_i_42 ),
        .I2(clk_2),
        .I3(\ALUResult[17]_INST_0_i_6_n_0 ),
        .I4(\ALUResult[30]_INST_0_i_6 ),
        .I5(\q_reg[6]_2 ),
        .O(\ALUResult[21]_INST_0_i_6_0 ));
  LUT5 #(
    .INIT(32'h80808F80)) 
    \ALUResult[17]_INST_0_i_6 
       (.I0(\WriteData[4]_INST_0_1 ),
        .I1(SrcA[0]),
        .I2(\WriteData[3]_INST_0_0 ),
        .I3(SrcA[2]),
        .I4(\WriteData[4]_INST_0_0 ),
        .O(\ALUResult[17]_INST_0_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFB080)) 
    \ALUResult[18]_INST_0_i_1 
       (.I0(\addressM[17] ),
        .I1(clk_7),
        .I2(\addressM[9]_1 ),
        .I3(\ALUResult[23]_INST_0_i_6 ),
        .I4(\addressM[18] ),
        .O(\ALUResult[18]_INST_0_i_5 ));
  LUT6 #(
    .INIT(64'hB800B800B8FFB800)) 
    \ALUResult[18]_INST_0_i_2 
       (.I0(Instr[16]),
        .I1(\ALUResult[19]_INST_0_i_4_0 ),
        .I2(Instr[29]),
        .I3(\addressM[14] ),
        .I4(rd20[18]),
        .I5(\writeDataM[15] ),
        .O(clk_24));
  LUT6 #(
    .INIT(64'hEF8FEF80E080E080)) 
    \ALUResult[19]_INST_0 
       (.I0(clk_14),
        .I1(SrcA[8]),
        .I2(\addressM[1] ),
        .I3(\addressM[1]_0 ),
        .I4(\addressM[28] [13]),
        .I5(\ALUResult[19]_INST_0_i_3_n_0 ),
        .O(\q_reg[19] [6]));
  LUT6 #(
    .INIT(64'hB800B800B8FFB800)) 
    \ALUResult[19]_INST_0_i_1 
       (.I0(Instr[17]),
        .I1(\ALUResult[19]_INST_0_i_4_0 ),
        .I2(Instr[29]),
        .I3(\addressM[14] ),
        .I4(rd20[19]),
        .I5(\writeDataM[15] ),
        .O(clk_14));
  LUT5 #(
    .INIT(32'hFFFFB080)) 
    \ALUResult[19]_INST_0_i_3 
       (.I0(\ALUResult[23]_INST_0_i_6 ),
        .I1(clk_7),
        .I2(\addressM[9]_1 ),
        .I3(\ALUResult[20]_INST_0_i_4_n_0 ),
        .I4(\addressM[19] ),
        .O(\ALUResult[19]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ALUResult[19]_INST_0_i_4 
       (.I0(Instr[1]),
        .I1(Instr[4]),
        .I2(Instr[0]),
        .O(\ALUResult[19]_INST_0_i_4_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[19]_INST_0_i_5 
       (.I0(\q_reg[6]_2 ),
        .I1(\q[31]_i_39 ),
        .I2(clk_2),
        .I3(\ALUResult[19]_INST_0_i_7_n_0 ),
        .I4(\ALUResult[30]_INST_0_i_6 ),
        .I5(\q[31]_i_42 ),
        .O(\ALUResult[23]_INST_0_i_6 ));
  LUT5 #(
    .INIT(32'h20202F20)) 
    \ALUResult[19]_INST_0_i_7 
       (.I0(\WriteData[4]_INST_0_1 ),
        .I1(\addressM[4] ),
        .I2(\WriteData[3]_INST_0_0 ),
        .I3(SrcA[3]),
        .I4(\WriteData[4]_INST_0_0 ),
        .O(\ALUResult[19]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h7F701F1F7F701010)) 
    \ALUResult[1]_INST_0 
       (.I0(\addressM[1]_1 ),
        .I1(clk_2),
        .I2(\addressM[1] ),
        .I3(\ALUResult[1]_INST_0_i_3_n_0 ),
        .I4(\addressM[1]_0 ),
        .I5(\addressM[28] [0]),
        .O(\q_reg[1] ));
  LUT4 #(
    .INIT(16'h7747)) 
    \ALUResult[1]_INST_0_i_2 
       (.I0(immext),
        .I1(\addressM[14] ),
        .I2(rd20[1]),
        .I3(\writeDataM[15] ),
        .O(clk_2));
  LUT6 #(
    .INIT(64'hFF3C00AA003C00AA)) 
    \ALUResult[1]_INST_0_i_3 
       (.I0(\ALUResult[1]_INST_0_i_5_n_0 ),
        .I1(\addressM[1]_1 ),
        .I2(clk_2),
        .I3(ALUControl),
        .I4(\addressM[0] ),
        .I5(\ALUResult[30]_INST_0_i_3 [0]),
        .O(\ALUResult[1]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000B0800000000)) 
    \ALUResult[1]_INST_0_i_5 
       (.I0(\ALUResult[1]_INST_0_i_6_n_0 ),
        .I1(clk_7),
        .I2(\ALUResult[30]_INST_0_i_6 ),
        .I3(\ALUResult[1]_INST_0_i_7_n_0 ),
        .I4(\WriteData[3]_INST_0_0 ),
        .I5(clk_2),
        .O(\ALUResult[1]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h20AA202020002020)) 
    \ALUResult[1]_INST_0_i_6 
       (.I0(\WriteData[4]_INST_0_1 ),
        .I1(\addressM[0]_0 ),
        .I2(clk_0[0]),
        .I3(Instr[3]),
        .I4(Instr[0]),
        .I5(Q[0]),
        .O(\ALUResult[1]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h20AA202020002020)) 
    \ALUResult[1]_INST_0_i_7 
       (.I0(\WriteData[4]_INST_0_1 ),
        .I1(\addressM[0]_0 ),
        .I2(clk_0[1]),
        .I3(Instr[3]),
        .I4(Instr[0]),
        .I5(Q[1]),
        .O(\ALUResult[1]_INST_0_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFB080)) 
    \ALUResult[20]_INST_0_i_1 
       (.I0(\ALUResult[20]_INST_0_i_4_n_0 ),
        .I1(clk_7),
        .I2(\addressM[9]_1 ),
        .I3(\addressM[20] ),
        .I4(\addressM[20]_0 ),
        .O(\ALUResult[20]_INST_0_i_5 ));
  LUT6 #(
    .INIT(64'h47FF47FF470047FF)) 
    \ALUResult[20]_INST_0_i_3 
       (.I0(Instr[18]),
        .I1(\addressM[4]_1 ),
        .I2(Instr[29]),
        .I3(\addressM[14] ),
        .I4(rd20[20]),
        .I5(\writeDataM[15] ),
        .O(clk_25));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[20]_INST_0_i_4 
       (.I0(\q_reg[7]_1 ),
        .I1(\q[31]_i_40_0 ),
        .I2(clk_2),
        .I3(\q[31]_i_40_1 ),
        .I4(\ALUResult[30]_INST_0_i_6 ),
        .I5(\q[31]_i_40_2 ),
        .O(\ALUResult[20]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h47FF47FF470047FF)) 
    \ALUResult[21]_INST_0_i_3 
       (.I0(Instr[19]),
        .I1(\addressM[4]_1 ),
        .I2(Instr[29]),
        .I3(\addressM[14] ),
        .I4(rd20[21]),
        .I5(\writeDataM[15] ),
        .O(clk_26));
  LUT5 #(
    .INIT(32'h20202F20)) 
    \ALUResult[21]_INST_0_i_6 
       (.I0(\WriteData[4]_INST_0_1 ),
        .I1(\addressM[6] ),
        .I2(\WriteData[3]_INST_0_0 ),
        .I3(SrcA[4]),
        .I4(\WriteData[4]_INST_0_0 ),
        .O(\q_reg[6]_2 ));
  LUT6 #(
    .INIT(64'h47FF470047FF47FF)) 
    \ALUResult[22]_INST_0_i_3 
       (.I0(Instr[20]),
        .I1(\addressM[4]_1 ),
        .I2(Instr[29]),
        .I3(\addressM[14] ),
        .I4(\writeDataM[15] ),
        .I5(rd20[22]),
        .O(clk_27));
  LUT4 #(
    .INIT(16'h4070)) 
    \ALUResult[22]_INST_0_i_6 
       (.I0(\addressM[7] ),
        .I1(\WriteData[3]_INST_0_0 ),
        .I2(\WriteData[4]_INST_0_1 ),
        .I3(\ALUResult[15]_INST_0_i_2_n_0 ),
        .O(\q_reg[7]_1 ));
  LUT6 #(
    .INIT(64'h47FF47FF470047FF)) 
    \ALUResult[23]_INST_0_i_3 
       (.I0(Instr[21]),
        .I1(\addressM[4]_1 ),
        .I2(Instr[29]),
        .I3(\addressM[14] ),
        .I4(rd20[23]),
        .I5(\writeDataM[15] ),
        .O(clk_28));
  LUT6 #(
    .INIT(64'h47FF47FF470047FF)) 
    \ALUResult[24]_INST_0_i_2 
       (.I0(Instr[22]),
        .I1(\addressM[4]_1 ),
        .I2(Instr[29]),
        .I3(\addressM[14] ),
        .I4(rd20[24]),
        .I5(\writeDataM[15] ),
        .O(clk_19));
  LUT6 #(
    .INIT(64'h47FF47FF470047FF)) 
    \ALUResult[25]_INST_0_i_2 
       (.I0(Instr[23]),
        .I1(\addressM[4]_1 ),
        .I2(Instr[29]),
        .I3(\addressM[14] ),
        .I4(rd20[25]),
        .I5(\writeDataM[15] ),
        .O(clk_18));
  LUT6 #(
    .INIT(64'h47FF47FF470047FF)) 
    \ALUResult[26]_INST_0_i_2 
       (.I0(Instr[24]),
        .I1(\addressM[4]_1 ),
        .I2(Instr[29]),
        .I3(\addressM[14] ),
        .I4(rd20[26]),
        .I5(\writeDataM[15] ),
        .O(clk_17));
  LUT6 #(
    .INIT(64'h47FF47FF470047FF)) 
    \ALUResult[27]_INST_0_i_2 
       (.I0(Instr[25]),
        .I1(\addressM[4]_1 ),
        .I2(Instr[29]),
        .I3(\addressM[14] ),
        .I4(rd20[27]),
        .I5(\writeDataM[15] ),
        .O(clk_16));
  LUT6 #(
    .INIT(64'hBF2FBF20B020B020)) 
    \ALUResult[28]_INST_0 
       (.I0(SrcA[17]),
        .I1(clk_15),
        .I2(\addressM[1] ),
        .I3(\addressM[1]_0 ),
        .I4(\addressM[28] [14]),
        .I5(\ALUResult[28]_INST_0_i_3_n_0 ),
        .O(\q_reg[28] ));
  LUT6 #(
    .INIT(64'h47FF47FF470047FF)) 
    \ALUResult[28]_INST_0_i_2 
       (.I0(Instr[26]),
        .I1(\addressM[4]_1 ),
        .I2(Instr[29]),
        .I3(\addressM[14] ),
        .I4(rd20[28]),
        .I5(\writeDataM[15] ),
        .O(clk_15));
  LUT5 #(
    .INIT(32'hFFFFB080)) 
    \ALUResult[28]_INST_0_i_3 
       (.I0(\ALUResult[31]_INST_0_i_15 ),
        .I1(clk_7),
        .I2(\addressM[9]_1 ),
        .I3(\addressM[28]_0 ),
        .I4(\addressM[28]_1 ),
        .O(\ALUResult[28]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult[28]_INST_0_i_4 
       (.I0(\q_reg[7]_0 ),
        .I1(\ALUResult[31]_INST_0_i_2_0 ),
        .I2(clk_2),
        .I3(\ALUResult[27]_INST_0_i_3 ),
        .I4(\ALUResult[30]_INST_0_i_6 ),
        .I5(\ALUResult[27]_INST_0_i_3_0 ),
        .O(\ALUResult[31]_INST_0_i_15 ));
  LUT6 #(
    .INIT(64'h47FF47FF470047FF)) 
    \ALUResult[29]_INST_0_i_3 
       (.I0(Instr[27]),
        .I1(\addressM[4]_1 ),
        .I2(Instr[29]),
        .I3(\addressM[14] ),
        .I4(rd20[29]),
        .I5(\writeDataM[15] ),
        .O(clk_29));
  LUT6 #(
    .INIT(64'hEFE08F8FEFE08080)) 
    \ALUResult[2]_INST_0 
       (.I0(\ALUResult[30]_INST_0_i_6 ),
        .I1(SrcA[0]),
        .I2(\addressM[1] ),
        .I3(\ALUResult[2]_INST_0_i_3_n_0 ),
        .I4(\addressM[1]_0 ),
        .I5(\addressM[28] [1]),
        .O(\q_reg[2] ));
  LUT6 #(
    .INIT(64'h0000CCF0AAAAAAAA)) 
    \ALUResult[2]_INST_0_i_1 
       (.I0(WriteData[2]),
        .I1(Instr[7]),
        .I2(Instr[20]),
        .I3(\addressM[2]_0 ),
        .I4(\addressM[4]_1 ),
        .I5(\addressM[14] ),
        .O(\ALUResult[30]_INST_0_i_6 ));
  LUT5 #(
    .INIT(32'hFFFF8A80)) 
    \ALUResult[2]_INST_0_i_3 
       (.I0(\addressM[9]_1 ),
        .I1(\ALUResult[2]_INST_0_i_4_n_0 ),
        .I2(clk_7),
        .I3(\ALUResult[3]_INST_0_i_5_n_0 ),
        .I4(\addressM[2] ),
        .O(\ALUResult[2]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00100000)) 
    \ALUResult[2]_INST_0_i_4 
       (.I0(\ALUResult[30]_INST_0_i_6 ),
        .I1(\addressM[1]_1 ),
        .I2(\WriteData[4]_INST_0_1 ),
        .I3(\WriteData[3]_INST_0_0 ),
        .I4(clk_2),
        .O(\ALUResult[2]_INST_0_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hBB0BBBFB)) 
    \ALUResult[30]_INST_0_i_1 
       (.I0(\addressM[0]_0 ),
        .I1(clk_0[30]),
        .I2(Instr[0]),
        .I3(Instr[3]),
        .I4(Q[30]),
        .O(\q_reg[30] ));
  LUT6 #(
    .INIT(64'h47FF470047FF47FF)) 
    \ALUResult[30]_INST_0_i_2 
       (.I0(Instr[28]),
        .I1(\addressM[4]_1 ),
        .I2(Instr[29]),
        .I3(\addressM[14] ),
        .I4(\writeDataM[15] ),
        .I5(rd20[30]),
        .O(clk_22));
  LUT6 #(
    .INIT(64'h8BB80000FFFFFFFF)) 
    \ALUResult[30]_INST_0_i_8 
       (.I0(\ALUResult[30]_INST_0_i_3 [2]),
        .I1(ALUControl),
        .I2(clk_22),
        .I3(\q_reg[30] ),
        .I4(\addressM[0] ),
        .I5(\addressM[1]_0 ),
        .O(\q_reg[30]_1 ));
  LUT6 #(
    .INIT(64'h7400740074FF7400)) 
    \ALUResult[30]_INST_0_i_9 
       (.I0(\addressM[7] ),
        .I1(\WriteData[4]_INST_0_0 ),
        .I2(SrcA[12]),
        .I3(\WriteData[3]_INST_0_1 ),
        .I4(\WriteData[4]_INST_0_1 ),
        .I5(\ALUResult[15]_INST_0_i_2_n_0 ),
        .O(\q_reg[7]_0 ));
  LUT4 #(
    .INIT(16'h088C)) 
    \ALUResult[31]_INST_0_i_1 
       (.I0(\addressM[1]_0 ),
        .I1(\addressM[1] ),
        .I2(\q_reg[31] ),
        .I3(clk_20),
        .O(\q_reg[31]_1 ));
  LUT4 #(
    .INIT(16'h88B8)) 
    \ALUResult[31]_INST_0_i_10 
       (.I0(\q[31]_i_34 ),
        .I1(\addressM[14] ),
        .I2(rd20[0]),
        .I3(\writeDataM[15] ),
        .O(clk_7));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'hAA655565)) 
    \ALUResult[31]_INST_0_i_14 
       (.I0(\q_reg[31] ),
        .I1(\writeDataM[15] ),
        .I2(rd20[31]),
        .I3(\addressM[14] ),
        .I4(Instr[29]),
        .O(\q_reg[31]_4 ));
  LUT6 #(
    .INIT(64'hF404FFFFF4040000)) 
    \ALUResult[31]_INST_0_i_18 
       (.I0(\addressM[0]_0 ),
        .I1(clk_0[7]),
        .I2(\addressM[0]_1 ),
        .I3(Q[7]),
        .I4(\WriteData[4]_INST_0_0 ),
        .I5(SrcA[12]),
        .O(\ALUResult[31]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h08000800A8AA0800)) 
    \ALUResult[31]_INST_0_i_19 
       (.I0(\WriteData[4]_INST_0_0 ),
        .I1(Q[15]),
        .I2(Instr[3]),
        .I3(Instr[0]),
        .I4(clk_0[15]),
        .I5(\addressM[0]_0 ),
        .O(\ALUResult[31]_INST_0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hFFE200E200000000)) 
    \ALUResult[31]_INST_0_i_2 
       (.I0(\addressM[31] ),
        .I1(clk_2),
        .I2(\ALUResult[31]_INST_0_i_9_n_0 ),
        .I3(clk_7),
        .I4(\addressM[31]_0 ),
        .I5(\addressM[9]_1 ),
        .O(\ALUResult[31]_INST_0_i_12 ));
  LUT5 #(
    .INIT(32'hBB0BBBFB)) 
    \ALUResult[31]_INST_0_i_6 
       (.I0(\addressM[0]_0 ),
        .I1(rd10),
        .I2(Instr[0]),
        .I3(Instr[3]),
        .I4(Q[31]),
        .O(\q_reg[31] ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h7747)) 
    \ALUResult[31]_INST_0_i_7 
       (.I0(Instr[29]),
        .I1(\addressM[14] ),
        .I2(rd20[31]),
        .I3(\writeDataM[15] ),
        .O(clk_20));
  LUT6 #(
    .INIT(64'hB8BBB8BBB8BBB888)) 
    \ALUResult[31]_INST_0_i_9 
       (.I0(\ALUResult[31]_INST_0_i_2_0 ),
        .I1(\ALUResult[30]_INST_0_i_6 ),
        .I2(\ALUResult[31]_INST_0_i_18_n_0 ),
        .I3(\WriteData[3]_INST_0_0 ),
        .I4(result1_carry__6_i_6_n_0),
        .I5(\ALUResult[31]_INST_0_i_19_n_0 ),
        .O(\ALUResult[31]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hBFB02F2FBFB02020)) 
    \ALUResult[3]_INST_0 
       (.I0(\WriteData[3]_INST_0_0 ),
        .I1(\addressM[3] ),
        .I2(\addressM[1] ),
        .I3(\ALUResult[3]_INST_0_i_3_n_0 ),
        .I4(\addressM[1]_0 ),
        .I5(\addressM[28] [2]),
        .O(\q_reg[3] ));
  LUT6 #(
    .INIT(64'h00ACFFFF00AC0000)) 
    \ALUResult[3]_INST_0_i_1 
       (.I0(Instr[8]),
        .I1(Instr[21]),
        .I2(\addressM[2]_0 ),
        .I3(\addressM[4]_1 ),
        .I4(\addressM[14] ),
        .I5(WriteData[3]),
        .O(\WriteData[3]_INST_0_0 ));
  LUT5 #(
    .INIT(32'hFFFFB080)) 
    \ALUResult[3]_INST_0_i_3 
       (.I0(\ALUResult[3]_INST_0_i_5_n_0 ),
        .I1(clk_7),
        .I2(\addressM[9]_1 ),
        .I3(\ALUResult[4]_INST_0_i_7_n_0 ),
        .I4(\addressM[3]_0 ),
        .O(\ALUResult[3]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000008000B00)) 
    \ALUResult[3]_INST_0_i_5 
       (.I0(SrcA[0]),
        .I1(clk_2),
        .I2(\WriteData[3]_INST_0_0 ),
        .I3(\WriteData[4]_INST_0_1 ),
        .I4(\ALUResult[5]_INST_0_i_4_0 ),
        .I5(\ALUResult[30]_INST_0_i_6 ),
        .O(\ALUResult[3]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hBFB02F2FBFB02020)) 
    \ALUResult[4]_INST_0 
       (.I0(\WriteData[4]_INST_0_0 ),
        .I1(\addressM[4] ),
        .I2(\addressM[1] ),
        .I3(\ALUResult[4]_INST_0_i_3_n_0 ),
        .I4(\addressM[1]_0 ),
        .I5(\addressM[28] [3]),
        .O(\q_reg[4] ));
  LUT6 #(
    .INIT(64'h0151FFFF01510000)) 
    \ALUResult[4]_INST_0_i_1 
       (.I0(\addressM[4]_1 ),
        .I1(\addressM[4]_2 ),
        .I2(\addressM[4]_3 ),
        .I3(\addressM[4]_4 ),
        .I4(\addressM[14] ),
        .I5(WriteData[4]),
        .O(\WriteData[4]_INST_0_0 ));
  LUT6 #(
    .INIT(64'hFFFF00000B080B08)) 
    \ALUResult[4]_INST_0_i_3 
       (.I0(\ALUResult[4]_INST_0_i_7_n_0 ),
        .I1(clk_7),
        .I2(ALUControl),
        .I3(\ALUResult[5]_INST_0_i_4_n_0 ),
        .I4(\addressM[4]_0 ),
        .I5(\addressM[0] ),
        .O(\ALUResult[4]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000004000700)) 
    \ALUResult[4]_INST_0_i_7 
       (.I0(\addressM[3] ),
        .I1(clk_2),
        .I2(\WriteData[3]_INST_0_0 ),
        .I3(\WriteData[4]_INST_0_1 ),
        .I4(\addressM[1]_1 ),
        .I5(\ALUResult[30]_INST_0_i_6 ),
        .O(\ALUResult[4]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hBFB02F2FBFB02020)) 
    \ALUResult[5]_INST_0 
       (.I0(clk_3),
        .I1(\addressM[5] ),
        .I2(\addressM[1] ),
        .I3(\ALUResult[5]_INST_0_i_3_n_0 ),
        .I4(\addressM[1]_0 ),
        .I5(\addressM[28] [4]),
        .O(\q_reg[5] ));
  LUT6 #(
    .INIT(64'h8A008A008AFF8A00)) 
    \ALUResult[5]_INST_0_i_1 
       (.I0(Instr[23]),
        .I1(Instr[4]),
        .I2(Instr[0]),
        .I3(\addressM[14] ),
        .I4(rd20[5]),
        .I5(\writeDataM[15] ),
        .O(clk_3));
  LUT6 #(
    .INIT(64'hFFFF00000B080B08)) 
    \ALUResult[5]_INST_0_i_3 
       (.I0(\ALUResult[5]_INST_0_i_4_n_0 ),
        .I1(clk_7),
        .I2(ALUControl),
        .I3(\ALUResult[6]_INST_0_i_4_n_0 ),
        .I4(\addressM[5]_0 ),
        .I5(\addressM[0] ),
        .O(\ALUResult[5]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h888888888B888888)) 
    \ALUResult[5]_INST_0_i_4 
       (.I0(\ALUResult[7]_INST_0_i_6_n_0 ),
        .I1(clk_2),
        .I2(\WriteData[3]_INST_0_0 ),
        .I3(\WriteData[4]_INST_0_1 ),
        .I4(SrcA[0]),
        .I5(\ALUResult[30]_INST_0_i_6 ),
        .O(\ALUResult[5]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hBFB02F2FBFB02020)) 
    \ALUResult[6]_INST_0 
       (.I0(clk_4),
        .I1(\addressM[6] ),
        .I2(\addressM[1] ),
        .I3(\ALUResult[6]_INST_0_i_3_n_0 ),
        .I4(\addressM[1]_0 ),
        .I5(\addressM[28] [5]),
        .O(\q_reg[6] ));
  LUT6 #(
    .INIT(64'h8A008A008AFF8A00)) 
    \ALUResult[6]_INST_0_i_1 
       (.I0(Instr[24]),
        .I1(Instr[4]),
        .I2(Instr[0]),
        .I3(\addressM[14] ),
        .I4(rd20[6]),
        .I5(\writeDataM[15] ),
        .O(clk_4));
  LUT6 #(
    .INIT(64'hFFFF00000B080B08)) 
    \ALUResult[6]_INST_0_i_3 
       (.I0(\ALUResult[6]_INST_0_i_4_n_0 ),
        .I1(clk_7),
        .I2(ALUControl),
        .I3(\ALUResult[7]_INST_0_i_4_n_0 ),
        .I4(\addressM[6]_0 ),
        .I5(\addressM[0] ),
        .O(\ALUResult[6]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8888888888888B88)) 
    \ALUResult[6]_INST_0_i_4 
       (.I0(\ALUResult[8]_INST_0_i_7_n_0 ),
        .I1(clk_2),
        .I2(\WriteData[3]_INST_0_0 ),
        .I3(\WriteData[4]_INST_0_1 ),
        .I4(\addressM[3] ),
        .I5(\ALUResult[30]_INST_0_i_6 ),
        .O(\ALUResult[6]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hBFB02F2FBFB02020)) 
    \ALUResult[7]_INST_0 
       (.I0(clk_5),
        .I1(\addressM[7] ),
        .I2(\addressM[1] ),
        .I3(\ALUResult[7]_INST_0_i_3_n_0 ),
        .I4(\addressM[1]_0 ),
        .I5(\addressM[28] [6]),
        .O(\q_reg[7] ));
  LUT6 #(
    .INIT(64'h8A008A008AFF8A00)) 
    \ALUResult[7]_INST_0_i_1 
       (.I0(Instr[25]),
        .I1(Instr[4]),
        .I2(Instr[0]),
        .I3(\addressM[14] ),
        .I4(rd20[7]),
        .I5(\writeDataM[15] ),
        .O(clk_5));
  LUT5 #(
    .INIT(32'hFFFFB080)) 
    \ALUResult[7]_INST_0_i_3 
       (.I0(\ALUResult[7]_INST_0_i_4_n_0 ),
        .I1(clk_7),
        .I2(\addressM[9]_1 ),
        .I3(\ALUResult[8]_INST_0_i_4_n_0 ),
        .I4(\addressM[7]_0 ),
        .O(\ALUResult[7]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ALUResult[7]_INST_0_i_4 
       (.I0(\ALUResult[9]_INST_0_i_6_n_0 ),
        .I1(clk_2),
        .I2(\ALUResult[7]_INST_0_i_6_n_0 ),
        .O(\ALUResult[7]_INST_0_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h00004700)) 
    \ALUResult[7]_INST_0_i_6 
       (.I0(\ALUResult[5]_INST_0_i_4_0 ),
        .I1(\ALUResult[30]_INST_0_i_6 ),
        .I2(\addressM[4] ),
        .I3(\WriteData[4]_INST_0_1 ),
        .I4(\WriteData[3]_INST_0_0 ),
        .O(\ALUResult[7]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hBFB02F2FBFB02020)) 
    \ALUResult[8]_INST_0 
       (.I0(SrcA[1]),
        .I1(clk_6),
        .I2(\addressM[1] ),
        .I3(\ALUResult[8]_INST_0_i_3_n_0 ),
        .I4(\addressM[1]_0 ),
        .I5(\addressM[28] [7]),
        .O(\q_reg[19] [0]));
  LUT6 #(
    .INIT(64'h75FF75FF750075FF)) 
    \ALUResult[8]_INST_0_i_2 
       (.I0(Instr[26]),
        .I1(Instr[4]),
        .I2(Instr[0]),
        .I3(\addressM[14] ),
        .I4(rd20[8]),
        .I5(\writeDataM[15] ),
        .O(clk_6));
  LUT6 #(
    .INIT(64'hFFFF00000B080B08)) 
    \ALUResult[8]_INST_0_i_3 
       (.I0(\ALUResult[8]_INST_0_i_4_n_0 ),
        .I1(clk_7),
        .I2(ALUControl),
        .I3(\ALUResult[9]_INST_0_i_4_n_0 ),
        .I4(\addressM[8] ),
        .I5(\addressM[0] ),
        .O(\ALUResult[8]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ALUResult[8]_INST_0_i_4 
       (.I0(\ALUResult[10]_INST_0_i_6_n_0 ),
        .I1(clk_2),
        .I2(\ALUResult[8]_INST_0_i_7_n_0 ),
        .O(\ALUResult[8]_INST_0_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h00004700)) 
    \ALUResult[8]_INST_0_i_7 
       (.I0(\addressM[1]_1 ),
        .I1(\ALUResult[30]_INST_0_i_6 ),
        .I2(\addressM[5] ),
        .I3(\WriteData[4]_INST_0_1 ),
        .I4(\WriteData[3]_INST_0_0 ),
        .O(\ALUResult[8]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hBFB02F20BFB02020)) 
    \ALUResult[9]_INST_0 
       (.I0(clk_8),
        .I1(\addressM[9] ),
        .I2(\addressM[1] ),
        .I3(\ALUResult[9]_INST_0_i_3_n_0 ),
        .I4(\addressM[1]_0 ),
        .I5(\addressM[28] [8]),
        .O(\q_reg[19] [1]));
  LUT6 #(
    .INIT(64'h8A008A008AFF8A00)) 
    \ALUResult[9]_INST_0_i_1 
       (.I0(Instr[27]),
        .I1(Instr[4]),
        .I2(Instr[0]),
        .I3(\addressM[14] ),
        .I4(rd20[9]),
        .I5(\writeDataM[15] ),
        .O(clk_8));
  LUT5 #(
    .INIT(32'hFFFFB080)) 
    \ALUResult[9]_INST_0_i_3 
       (.I0(\ALUResult[9]_INST_0_i_4_n_0 ),
        .I1(clk_7),
        .I2(\addressM[9]_1 ),
        .I3(\ALUResult[10]_INST_0_i_4_n_0 ),
        .I4(\addressM[9]_0 ),
        .O(\ALUResult[9]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \ALUResult[9]_INST_0_i_4 
       (.I0(\ALUResult[11]_INST_0_i_7_n_0 ),
        .I1(\ALUResult[30]_INST_0_i_6 ),
        .I2(\ALUResult[15]_INST_0_i_6_n_0 ),
        .I3(clk_2),
        .I4(\ALUResult[9]_INST_0_i_6_n_0 ),
        .O(\ALUResult[9]_INST_0_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h00008B00)) 
    \ALUResult[9]_INST_0_i_6 
       (.I0(SrcA[0]),
        .I1(\ALUResult[30]_INST_0_i_6 ),
        .I2(\addressM[6] ),
        .I3(\WriteData[4]_INST_0_1 ),
        .I4(\WriteData[3]_INST_0_0 ),
        .O(\ALUResult[9]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
    \WriteData[0]_INST_0 
       (.I0(rd20[0]),
        .I1(Instr[20]),
        .I2(Instr[18]),
        .I3(Instr[19]),
        .I4(Instr[21]),
        .I5(Instr[22]),
        .O(WriteData[0]));
  LUT6 #(
    .INIT(64'h00000000FFFE0002)) 
    \WriteData[10]_INST_0 
       (.I0(rd20[7]),
        .I1(Instr[12]),
        .I2(Instr[10]),
        .I3(Instr[11]),
        .I4(rd20[10]),
        .I5(\writeDataM[15] ),
        .O(WriteData[10]));
  LUT6 #(
    .INIT(64'h00000000FFFE0002)) 
    \WriteData[11]_INST_0 
       (.I0(rd20[7]),
        .I1(Instr[12]),
        .I2(Instr[10]),
        .I3(Instr[11]),
        .I4(rd20[11]),
        .I5(\writeDataM[15] ),
        .O(WriteData[11]));
  LUT6 #(
    .INIT(64'h00000000FFFE0002)) 
    \WriteData[12]_INST_0 
       (.I0(rd20[7]),
        .I1(Instr[12]),
        .I2(Instr[10]),
        .I3(Instr[11]),
        .I4(rd20[12]),
        .I5(\writeDataM[15] ),
        .O(WriteData[12]));
  LUT6 #(
    .INIT(64'h00000000FFFE0002)) 
    \WriteData[13]_INST_0 
       (.I0(rd20[7]),
        .I1(Instr[12]),
        .I2(Instr[10]),
        .I3(Instr[11]),
        .I4(rd20[13]),
        .I5(\writeDataM[15] ),
        .O(WriteData[13]));
  LUT6 #(
    .INIT(64'h00000000FFFE0002)) 
    \WriteData[14]_INST_0 
       (.I0(rd20[7]),
        .I1(Instr[12]),
        .I2(Instr[10]),
        .I3(Instr[11]),
        .I4(rd20[14]),
        .I5(\writeDataM[15] ),
        .O(WriteData[14]));
  LUT6 #(
    .INIT(64'h00000000FFFE0002)) 
    \WriteData[15]_INST_0 
       (.I0(rd20[7]),
        .I1(Instr[12]),
        .I2(Instr[10]),
        .I3(Instr[11]),
        .I4(rd20[15]),
        .I5(\writeDataM[15] ),
        .O(WriteData[15]));
  LUT6 #(
    .INIT(64'h00000000B8FFB800)) 
    \WriteData[16]_INST_0 
       (.I0(rd20[15]),
        .I1(Instr[10]),
        .I2(rd20[7]),
        .I3(\WriteData[31]_INST_0_i_1_n_0 ),
        .I4(rd20[16]),
        .I5(\writeDataM[15] ),
        .O(WriteData[16]));
  LUT6 #(
    .INIT(64'h00000000B8FFB800)) 
    \WriteData[17]_INST_0 
       (.I0(rd20[15]),
        .I1(Instr[10]),
        .I2(rd20[7]),
        .I3(\WriteData[31]_INST_0_i_1_n_0 ),
        .I4(rd20[17]),
        .I5(\writeDataM[15] ),
        .O(WriteData[17]));
  LUT6 #(
    .INIT(64'h00000000B8FFB800)) 
    \WriteData[18]_INST_0 
       (.I0(rd20[15]),
        .I1(Instr[10]),
        .I2(rd20[7]),
        .I3(\WriteData[31]_INST_0_i_1_n_0 ),
        .I4(rd20[18]),
        .I5(\writeDataM[15] ),
        .O(WriteData[18]));
  LUT6 #(
    .INIT(64'h00000000B8FFB800)) 
    \WriteData[19]_INST_0 
       (.I0(rd20[15]),
        .I1(Instr[10]),
        .I2(rd20[7]),
        .I3(\WriteData[31]_INST_0_i_1_n_0 ),
        .I4(rd20[19]),
        .I5(\writeDataM[15] ),
        .O(WriteData[19]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
    \WriteData[1]_INST_0 
       (.I0(rd20[1]),
        .I1(Instr[20]),
        .I2(Instr[18]),
        .I3(Instr[19]),
        .I4(Instr[21]),
        .I5(Instr[22]),
        .O(WriteData[1]));
  LUT6 #(
    .INIT(64'h00000000B8FFB800)) 
    \WriteData[20]_INST_0 
       (.I0(rd20[15]),
        .I1(Instr[10]),
        .I2(rd20[7]),
        .I3(\WriteData[31]_INST_0_i_1_n_0 ),
        .I4(rd20[20]),
        .I5(\writeDataM[15] ),
        .O(WriteData[20]));
  LUT6 #(
    .INIT(64'h00000000B8FFB800)) 
    \WriteData[21]_INST_0 
       (.I0(rd20[15]),
        .I1(Instr[10]),
        .I2(rd20[7]),
        .I3(\WriteData[31]_INST_0_i_1_n_0 ),
        .I4(rd20[21]),
        .I5(\writeDataM[15] ),
        .O(WriteData[21]));
  LUT6 #(
    .INIT(64'h00B800B800FF0000)) 
    \WriteData[22]_INST_0 
       (.I0(rd20[15]),
        .I1(Instr[10]),
        .I2(rd20[7]),
        .I3(\writeDataM[15] ),
        .I4(rd20[22]),
        .I5(\WriteData[31]_INST_0_i_1_n_0 ),
        .O(WriteData[22]));
  LUT6 #(
    .INIT(64'h00000000B8FFB800)) 
    \WriteData[23]_INST_0 
       (.I0(rd20[15]),
        .I1(Instr[10]),
        .I2(rd20[7]),
        .I3(\WriteData[31]_INST_0_i_1_n_0 ),
        .I4(rd20[23]),
        .I5(\writeDataM[15] ),
        .O(WriteData[23]));
  LUT6 #(
    .INIT(64'h00000000B8FFB800)) 
    \WriteData[24]_INST_0 
       (.I0(rd20[15]),
        .I1(Instr[10]),
        .I2(rd20[7]),
        .I3(\WriteData[31]_INST_0_i_1_n_0 ),
        .I4(rd20[24]),
        .I5(\writeDataM[15] ),
        .O(WriteData[24]));
  LUT6 #(
    .INIT(64'h00000000B8FFB800)) 
    \WriteData[25]_INST_0 
       (.I0(rd20[15]),
        .I1(Instr[10]),
        .I2(rd20[7]),
        .I3(\WriteData[31]_INST_0_i_1_n_0 ),
        .I4(rd20[25]),
        .I5(\writeDataM[15] ),
        .O(WriteData[25]));
  LUT6 #(
    .INIT(64'h00000000B8FFB800)) 
    \WriteData[26]_INST_0 
       (.I0(rd20[15]),
        .I1(Instr[10]),
        .I2(rd20[7]),
        .I3(\WriteData[31]_INST_0_i_1_n_0 ),
        .I4(rd20[26]),
        .I5(\writeDataM[15] ),
        .O(WriteData[26]));
  LUT6 #(
    .INIT(64'h00000000B8FFB800)) 
    \WriteData[27]_INST_0 
       (.I0(rd20[15]),
        .I1(Instr[10]),
        .I2(rd20[7]),
        .I3(\WriteData[31]_INST_0_i_1_n_0 ),
        .I4(rd20[27]),
        .I5(\writeDataM[15] ),
        .O(WriteData[27]));
  LUT6 #(
    .INIT(64'h00000000B8FFB800)) 
    \WriteData[28]_INST_0 
       (.I0(rd20[15]),
        .I1(Instr[10]),
        .I2(rd20[7]),
        .I3(\WriteData[31]_INST_0_i_1_n_0 ),
        .I4(rd20[28]),
        .I5(\writeDataM[15] ),
        .O(WriteData[28]));
  LUT6 #(
    .INIT(64'h00000000B8FFB800)) 
    \WriteData[29]_INST_0 
       (.I0(rd20[15]),
        .I1(Instr[10]),
        .I2(rd20[7]),
        .I3(\WriteData[31]_INST_0_i_1_n_0 ),
        .I4(rd20[29]),
        .I5(\writeDataM[15] ),
        .O(WriteData[29]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
    \WriteData[2]_INST_0 
       (.I0(rd20[2]),
        .I1(Instr[20]),
        .I2(Instr[18]),
        .I3(Instr[19]),
        .I4(Instr[21]),
        .I5(Instr[22]),
        .O(WriteData[2]));
  LUT6 #(
    .INIT(64'h00B800B800FF0000)) 
    \WriteData[30]_INST_0 
       (.I0(rd20[15]),
        .I1(Instr[10]),
        .I2(rd20[7]),
        .I3(\writeDataM[15] ),
        .I4(rd20[30]),
        .I5(\WriteData[31]_INST_0_i_1_n_0 ),
        .O(WriteData[30]));
  LUT6 #(
    .INIT(64'h00000000B8FFB800)) 
    \WriteData[31]_INST_0 
       (.I0(rd20[15]),
        .I1(Instr[10]),
        .I2(rd20[7]),
        .I3(\WriteData[31]_INST_0_i_1_n_0 ),
        .I4(rd20[31]),
        .I5(\writeDataM[15] ),
        .O(WriteData[31]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \WriteData[31]_INST_0_i_1 
       (.I0(Instr[11]),
        .I1(Instr[12]),
        .O(\WriteData[31]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
    \WriteData[3]_INST_0 
       (.I0(rd20[3]),
        .I1(Instr[20]),
        .I2(Instr[18]),
        .I3(Instr[19]),
        .I4(Instr[21]),
        .I5(Instr[22]),
        .O(WriteData[3]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
    \WriteData[4]_INST_0 
       (.I0(rd20[4]),
        .I1(Instr[20]),
        .I2(Instr[18]),
        .I3(Instr[19]),
        .I4(Instr[21]),
        .I5(Instr[22]),
        .O(WriteData[4]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
    \WriteData[5]_INST_0 
       (.I0(rd20[5]),
        .I1(Instr[20]),
        .I2(Instr[18]),
        .I3(Instr[19]),
        .I4(Instr[21]),
        .I5(Instr[22]),
        .O(WriteData[5]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
    \WriteData[6]_INST_0 
       (.I0(rd20[6]),
        .I1(Instr[20]),
        .I2(Instr[18]),
        .I3(Instr[19]),
        .I4(Instr[21]),
        .I5(Instr[22]),
        .O(WriteData[6]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
    \WriteData[7]_INST_0 
       (.I0(rd20[7]),
        .I1(Instr[20]),
        .I2(Instr[18]),
        .I3(Instr[19]),
        .I4(Instr[21]),
        .I5(Instr[22]),
        .O(WriteData[7]));
  LUT6 #(
    .INIT(64'h00000000FFFE0002)) 
    \WriteData[8]_INST_0 
       (.I0(rd20[7]),
        .I1(Instr[12]),
        .I2(Instr[10]),
        .I3(Instr[11]),
        .I4(rd20[8]),
        .I5(\writeDataM[15] ),
        .O(WriteData[8]));
  LUT6 #(
    .INIT(64'h00000000FFFE0002)) 
    \WriteData[9]_INST_0 
       (.I0(rd20[7]),
        .I1(Instr[12]),
        .I2(Instr[10]),
        .I3(Instr[11]),
        .I4(rd20[9]),
        .I5(\writeDataM[15] ),
        .O(WriteData[9]));
  LUT6 #(
    .INIT(64'hFEEFAAAA0220AAAA)) 
    \q[11]_i_1 
       (.I0(\q_reg[28]_0 [9]),
        .I1(Instr[0]),
        .I2(Instr[10]),
        .I3(\q[31]_i_6 ),
        .I4(Instr[4]),
        .I5(\q[11]_i_2_n_0 ),
        .O(D[9]));
  LUT5 #(
    .INIT(32'hFAEE0A22)) 
    \q[11]_i_2 
       (.I0(\q_reg[19] [2]),
        .I1(Instr[4]),
        .I2(Instr[1]),
        .I3(Instr[0]),
        .I4(d1[9]),
        .O(\q[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFEEFAAAA0220AAAA)) 
    \q[13]_i_1 
       (.I0(\q_reg[28]_0 [10]),
        .I1(Instr[0]),
        .I2(Instr[10]),
        .I3(\q[31]_i_6 ),
        .I4(Instr[4]),
        .I5(\q[13]_i_2_n_0 ),
        .O(D[10]));
  LUT5 #(
    .INIT(32'hFAEE0A22)) 
    \q[13]_i_2 
       (.I0(\q_reg[19] [3]),
        .I1(Instr[4]),
        .I2(Instr[1]),
        .I3(Instr[0]),
        .I4(d1[10]),
        .O(\q[13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFEEFAAAA0220AAAA)) 
    \q[15]_i_1 
       (.I0(\q_reg[28]_0 [11]),
        .I1(Instr[0]),
        .I2(Instr[10]),
        .I3(\q[31]_i_6 ),
        .I4(Instr[4]),
        .I5(\q[15]_i_2_n_0 ),
        .O(D[11]));
  LUT5 #(
    .INIT(32'hFAEE0A22)) 
    \q[15]_i_2 
       (.I0(\q_reg[19] [4]),
        .I1(Instr[4]),
        .I2(Instr[1]),
        .I3(Instr[0]),
        .I4(d1[11]),
        .O(\q[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFEEFAAAA0220AAAA)) 
    \q[17]_i_1 
       (.I0(\q_reg[28]_0 [12]),
        .I1(Instr[0]),
        .I2(Instr[10]),
        .I3(\q[31]_i_6 ),
        .I4(Instr[4]),
        .I5(\q[17]_i_2_n_0 ),
        .O(D[12]));
  LUT5 #(
    .INIT(32'hFAEE0A22)) 
    \q[17]_i_2 
       (.I0(\q_reg[19] [5]),
        .I1(Instr[4]),
        .I2(Instr[1]),
        .I3(Instr[0]),
        .I4(d1[12]),
        .O(\q[17]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFEEFAAAA0220AAAA)) 
    \q[19]_i_1 
       (.I0(\q_reg[28]_0 [13]),
        .I1(Instr[0]),
        .I2(Instr[10]),
        .I3(\q[31]_i_6 ),
        .I4(Instr[4]),
        .I5(\q[19]_i_2_n_0 ),
        .O(D[13]));
  LUT5 #(
    .INIT(32'hFAEE0A22)) 
    \q[19]_i_2 
       (.I0(\q_reg[19] [6]),
        .I1(Instr[4]),
        .I2(Instr[1]),
        .I3(Instr[0]),
        .I4(d1[13]),
        .O(\q[19]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFEEFAAAA0220AAAA)) 
    \q[1]_i_1 
       (.I0(\q_reg[28]_0 [0]),
        .I1(Instr[0]),
        .I2(Instr[10]),
        .I3(\q[31]_i_6 ),
        .I4(Instr[4]),
        .I5(\q[1]_i_2_n_0 ),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'hFAEE0A22)) 
    \q[1]_i_2 
       (.I0(\q_reg[1] ),
        .I1(Instr[4]),
        .I2(Instr[1]),
        .I3(Instr[0]),
        .I4(d1[0]),
        .O(\q[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFEEFAAAA0220AAAA)) 
    \q[28]_i_1 
       (.I0(\q_reg[28]_0 [14]),
        .I1(Instr[0]),
        .I2(Instr[10]),
        .I3(\q[31]_i_6 ),
        .I4(Instr[4]),
        .I5(\q[28]_i_2_n_0 ),
        .O(D[14]));
  LUT5 #(
    .INIT(32'hFAEE0A22)) 
    \q[28]_i_2 
       (.I0(\q_reg[28] ),
        .I1(Instr[4]),
        .I2(Instr[1]),
        .I3(Instr[0]),
        .I4(d1[14]),
        .O(\q[28]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFEEFAAAA0220AAAA)) 
    \q[2]_i_1 
       (.I0(\q_reg[28]_0 [1]),
        .I1(Instr[0]),
        .I2(Instr[10]),
        .I3(\q[31]_i_6 ),
        .I4(Instr[4]),
        .I5(\q[2]_i_2_n_0 ),
        .O(D[1]));
  LUT5 #(
    .INIT(32'hFAEE0A22)) 
    \q[2]_i_2 
       (.I0(\q_reg[2] ),
        .I1(Instr[4]),
        .I2(Instr[1]),
        .I3(Instr[0]),
        .I4(d1[1]),
        .O(\q[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \q[31]_i_10 
       (.I0(\q[31]_i_14_n_0 ),
        .I1(ALUResult[0]),
        .I2(\q_reg[19] [2]),
        .I3(ALUResult[1]),
        .I4(\q_reg[19] [4]),
        .I5(\q[31]_i_5_2 ),
        .O(\q[31]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \q[31]_i_11 
       (.I0(\q[31]_i_16_n_0 ),
        .I1(\q[31]_i_17_n_0 ),
        .I2(ALUResult[4]),
        .I3(ALUResult[3]),
        .I4(\q_reg[28] ),
        .I5(ALUResult[2]),
        .O(\q[31]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hF3F3FB3B3333FB3B)) 
    \q[31]_i_13 
       (.I0(\q[31]_i_20_n_0 ),
        .I1(\addressM[1]_0 ),
        .I2(\addressM[0] ),
        .I3(\ALUResult[0]_INST_0_i_10_n_0 ),
        .I4(ALUControl),
        .I5(result2),
        .O(\q[31]_i_13_n_0 ));
  LUT5 #(
    .INIT(32'hFFFACCFA)) 
    \q[31]_i_14 
       (.I0(\q[31]_i_22_n_0 ),
        .I1(\q[31]_i_23_n_0 ),
        .I2(\q[31]_i_24_n_0 ),
        .I3(\addressM[1] ),
        .I4(\q[31]_i_25_n_0 ),
        .O(\q[31]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \q[31]_i_16 
       (.I0(\q[31]_i_11_0 ),
        .I1(\q[31]_i_31_n_0 ),
        .I2(\q[31]_i_11_1 ),
        .I3(\q[31]_i_33_n_0 ),
        .O(\q[31]_i_16_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \q[31]_i_17 
       (.I0(\q[31]_i_11_2 ),
        .I1(\q[31]_i_35_n_0 ),
        .I2(\q[31]_i_11_3 ),
        .I3(\q[31]_i_37_n_0 ),
        .O(\q[31]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h0000010000000000)) 
    \q[31]_i_20 
       (.I0(clk_7),
        .I1(\ALUResult[30]_INST_0_i_6 ),
        .I2(\ALUResult[5]_INST_0_i_4_0 ),
        .I3(\WriteData[4]_INST_0_1 ),
        .I4(\WriteData[3]_INST_0_0 ),
        .I5(clk_2),
        .O(\q[31]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h553355330F000FFF)) 
    \q[31]_i_21 
       (.I0(\q[31]_i_46_n_0 ),
        .I1(\ALUResult[0]_INST_0_i_12_n_0 ),
        .I2(\q[31]_i_13_0 ),
        .I3(clk_2),
        .I4(\ALUResult[0]_INST_0_i_15_n_0 ),
        .I5(clk_7),
        .O(result2));
  LUT6 #(
    .INIT(64'hFF54FFFFFF540000)) 
    \q[31]_i_22 
       (.I0(\q[31]_i_48_n_0 ),
        .I1(clk_7),
        .I2(\ALUResult[9]_INST_0_i_4_n_0 ),
        .I3(\q[31]_i_14_0 ),
        .I4(\addressM[1]_0 ),
        .I5(\addressM[28] [7]),
        .O(\q[31]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hAA200020FFBAAABA)) 
    \q[31]_i_23 
       (.I0(\addressM[1]_0 ),
        .I1(\addressM[0]_0 ),
        .I2(clk_0[8]),
        .I3(\addressM[0]_1 ),
        .I4(Q[8]),
        .I5(clk_6),
        .O(\q[31]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FAEAAAEA)) 
    \q[31]_i_24 
       (.I0(\addressM[9]_0 ),
        .I1(\ALUResult[10]_INST_0_i_4_n_0 ),
        .I2(\addressM[9]_1 ),
        .I3(clk_7),
        .I4(\ALUResult[9]_INST_0_i_4_n_0 ),
        .I5(\q[31]_i_14_1 ),
        .O(\q[31]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hEEEE8E8888888E88)) 
    \q[31]_i_25 
       (.I0(\addressM[1]_0 ),
        .I1(clk_8),
        .I2(\addressM[0]_0 ),
        .I3(clk_0[9]),
        .I4(\addressM[0]_1 ),
        .I5(Q[9]),
        .O(\q[31]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hAA200020FFBAAABA)) 
    \q[31]_i_27 
       (.I0(\addressM[1]_0 ),
        .I1(\addressM[0]_0 ),
        .I2(clk_0[12]),
        .I3(\addressM[0]_1 ),
        .I4(Q[12]),
        .I5(clk_10),
        .O(\q_reg[12] ));
  LUT6 #(
    .INIT(64'hEEEE8E8888888E88)) 
    \q[31]_i_29 
       (.I0(\addressM[1]_0 ),
        .I1(clk_11),
        .I2(\addressM[0]_0 ),
        .I3(clk_0[13]),
        .I4(\addressM[0]_1 ),
        .I5(Q[13]),
        .O(\q_reg[13] ));
  LUT4 #(
    .INIT(16'h8C08)) 
    \q[31]_i_31 
       (.I0(\addressM[1]_0 ),
        .I1(\addressM[1] ),
        .I2(clk_19),
        .I3(SrcA[13]),
        .O(\q[31]_i_31_n_0 ));
  LUT4 #(
    .INIT(16'h8C08)) 
    \q[31]_i_33 
       (.I0(\addressM[1]_0 ),
        .I1(\addressM[1] ),
        .I2(clk_18),
        .I3(SrcA[14]),
        .O(\q[31]_i_33_n_0 ));
  LUT4 #(
    .INIT(16'h8C08)) 
    \q[31]_i_35 
       (.I0(\addressM[1]_0 ),
        .I1(\addressM[1] ),
        .I2(clk_17),
        .I3(SrcA[15]),
        .O(\q[31]_i_35_n_0 ));
  LUT4 #(
    .INIT(16'h8C08)) 
    \q[31]_i_37 
       (.I0(\addressM[1]_0 ),
        .I1(\addressM[1] ),
        .I2(clk_16),
        .I3(SrcA[16]),
        .O(\q[31]_i_37_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FAEAAAEA)) 
    \q[31]_i_40 
       (.I0(\addressM[19] ),
        .I1(\ALUResult[20]_INST_0_i_4_n_0 ),
        .I2(\addressM[9]_1 ),
        .I3(clk_7),
        .I4(\ALUResult[23]_INST_0_i_6 ),
        .I5(\q[31]_i_18 ),
        .O(\q[31]_i_58 ));
  LUT6 #(
    .INIT(64'hEEEE8E8888888E88)) 
    \q[31]_i_43 
       (.I0(\addressM[1]_0 ),
        .I1(clk_12),
        .I2(\addressM[0]_0 ),
        .I3(clk_0[16]),
        .I4(\addressM[0]_1 ),
        .I5(Q[16]),
        .O(\q_reg[16] ));
  LUT5 #(
    .INIT(32'h0BFF0B00)) 
    \q[31]_i_46 
       (.I0(\q[31]_i_21_3 ),
        .I1(\WriteData[3]_INST_0_0 ),
        .I2(\q[31]_i_61_n_0 ),
        .I3(\ALUResult[30]_INST_0_i_6 ),
        .I4(\q[31]_i_21_0 ),
        .O(\q[31]_i_46_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h4700FFFF)) 
    \q[31]_i_48 
       (.I0(\ALUResult[10]_INST_0_i_6_n_0 ),
        .I1(clk_2),
        .I2(\ALUResult[8]_INST_0_i_7_n_0 ),
        .I3(clk_7),
        .I4(\addressM[9]_1 ),
        .O(\q[31]_i_48_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \q[31]_i_5 
       (.I0(\q[31]_i_7_n_0 ),
        .I1(\q[31]_i_8_n_0 ),
        .I2(\q[31]_i_9_n_0 ),
        .I3(\q[31]_i_10_n_0 ),
        .I4(\q[31]_i_11_n_0 ),
        .I5(\q_reg[31]_i_2_0 ),
        .O(\q[31]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h0000F222)) 
    \q[31]_i_61 
       (.I0(\WriteData[4]_INST_0_1 ),
        .I1(\addressM[5] ),
        .I2(SrcA[10]),
        .I3(\WriteData[4]_INST_0_0 ),
        .I4(\WriteData[3]_INST_0_0 ),
        .O(\q[31]_i_61_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \q[31]_i_7 
       (.I0(\q_reg[2] ),
        .I1(\q_reg[3] ),
        .O(\q[31]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF540054)) 
    \q[31]_i_8 
       (.I0(\q[31]_i_5_0 ),
        .I1(\q[31]_i_5_1 ),
        .I2(\q[31]_i_13_n_0 ),
        .I3(\addressM[1] ),
        .I4(\q_reg[0] ),
        .I5(\q_reg[1] ),
        .O(\q[31]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \q[31]_i_9 
       (.I0(\q_reg[7] ),
        .I1(\q_reg[6] ),
        .I2(\q_reg[5] ),
        .I3(\q_reg[4] ),
        .O(\q[31]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFEEFAAAA0220AAAA)) 
    \q[3]_i_1 
       (.I0(\q_reg[28]_0 [2]),
        .I1(Instr[0]),
        .I2(Instr[10]),
        .I3(\q[31]_i_6 ),
        .I4(Instr[4]),
        .I5(\q[3]_i_2_n_0 ),
        .O(D[2]));
  LUT5 #(
    .INIT(32'hFAEE0A22)) 
    \q[3]_i_2 
       (.I0(\q_reg[3] ),
        .I1(Instr[4]),
        .I2(Instr[1]),
        .I3(Instr[0]),
        .I4(d1[2]),
        .O(\q[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFEEFAAAA0220AAAA)) 
    \q[4]_i_1 
       (.I0(\q_reg[28]_0 [3]),
        .I1(Instr[0]),
        .I2(Instr[10]),
        .I3(\q[31]_i_6 ),
        .I4(Instr[4]),
        .I5(\q[4]_i_2_n_0 ),
        .O(D[3]));
  LUT5 #(
    .INIT(32'hFAEE0A22)) 
    \q[4]_i_2 
       (.I0(\q_reg[4] ),
        .I1(Instr[4]),
        .I2(Instr[1]),
        .I3(Instr[0]),
        .I4(d1[3]),
        .O(\q[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFEEFAAAA0220AAAA)) 
    \q[5]_i_1 
       (.I0(\q_reg[28]_0 [4]),
        .I1(Instr[0]),
        .I2(Instr[10]),
        .I3(\q[31]_i_6 ),
        .I4(Instr[4]),
        .I5(\q[5]_i_2_n_0 ),
        .O(D[4]));
  LUT5 #(
    .INIT(32'hFAEE0A22)) 
    \q[5]_i_2 
       (.I0(\q_reg[5] ),
        .I1(Instr[4]),
        .I2(Instr[1]),
        .I3(Instr[0]),
        .I4(d1[4]),
        .O(\q[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFEEFAAAA0220AAAA)) 
    \q[6]_i_1 
       (.I0(\q_reg[28]_0 [5]),
        .I1(Instr[0]),
        .I2(Instr[10]),
        .I3(\q[31]_i_6 ),
        .I4(Instr[4]),
        .I5(\q[6]_i_2_n_0 ),
        .O(D[5]));
  LUT5 #(
    .INIT(32'hFAEE0A22)) 
    \q[6]_i_2 
       (.I0(\q_reg[6] ),
        .I1(Instr[4]),
        .I2(Instr[1]),
        .I3(Instr[0]),
        .I4(d1[5]),
        .O(\q[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFEEFAAAA0220AAAA)) 
    \q[7]_i_1 
       (.I0(\q_reg[28]_0 [6]),
        .I1(Instr[0]),
        .I2(Instr[10]),
        .I3(\q[31]_i_6 ),
        .I4(Instr[4]),
        .I5(\q[7]_i_2_n_0 ),
        .O(D[6]));
  LUT5 #(
    .INIT(32'hFAEE0A22)) 
    \q[7]_i_2 
       (.I0(\q_reg[7] ),
        .I1(Instr[4]),
        .I2(Instr[1]),
        .I3(Instr[0]),
        .I4(d1[6]),
        .O(\q[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFEEFAAAA0220AAAA)) 
    \q[8]_i_1 
       (.I0(\q_reg[28]_0 [7]),
        .I1(Instr[0]),
        .I2(Instr[10]),
        .I3(\q[31]_i_6 ),
        .I4(Instr[4]),
        .I5(\q[8]_i_2_n_0 ),
        .O(D[7]));
  LUT5 #(
    .INIT(32'hFAEE0A22)) 
    \q[8]_i_2 
       (.I0(\q_reg[19] [0]),
        .I1(Instr[4]),
        .I2(Instr[1]),
        .I3(Instr[0]),
        .I4(d1[7]),
        .O(\q[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFEEFAAAA0220AAAA)) 
    \q[9]_i_1 
       (.I0(\q_reg[28]_0 [8]),
        .I1(Instr[0]),
        .I2(Instr[10]),
        .I3(\q[31]_i_6 ),
        .I4(Instr[4]),
        .I5(\q[9]_i_2_n_0 ),
        .O(D[8]));
  LUT5 #(
    .INIT(32'hFAEE0A22)) 
    \q[9]_i_2 
       (.I0(\q_reg[19] [1]),
        .I1(Instr[4]),
        .I2(Instr[1]),
        .I3(Instr[0]),
        .I4(d1[8]),
        .O(\q[9]_i_2_n_0 ));
  MUXF7 \q_reg[31]_i_2 
       (.I0(\q[31]_i_5_n_0 ),
        .I1(\q_reg[28]_2 ),
        .O(\q[31]_i_6 ),
        .S(\q_reg[28]_1 ));
  LUT6 #(
    .INIT(64'hB8B8B8B8FF33CC00)) 
    result1_carry__0_i_1
       (.I0(result1_carry__1),
        .I1(clk_2),
        .I2(result1_carry__0_i_10_n_0),
        .I3(result1_carry__0_i_11_n_0),
        .I4(result1_carry__0_i_12_n_0),
        .I5(clk_7),
        .O(\q_reg[31]_0 [5]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    result1_carry__0_i_10
       (.I0(result1_carry__0_i_17_n_0),
        .I1(\ALUResult[30]_INST_0_i_6 ),
        .I2(result1_carry__0_i_3_0),
        .O(result1_carry__0_i_10_n_0));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    result1_carry__0_i_11
       (.I0(result1_carry__1_i_11_0),
        .I1(\ALUResult[30]_INST_0_i_6 ),
        .I2(result1_carry_i_19_n_0),
        .O(result1_carry__0_i_11_n_0));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    result1_carry__0_i_12
       (.I0(result1_carry__0_i_19_n_0),
        .I1(\ALUResult[30]_INST_0_i_6 ),
        .I2(result1_carry_i_17_n_0),
        .O(result1_carry__0_i_12_n_0));
  LUT6 #(
    .INIT(64'hFF530000FF53FFFF)) 
    result1_carry__0_i_13
       (.I0(Instr[8]),
        .I1(Instr[21]),
        .I2(\addressM[2]_0 ),
        .I3(\addressM[4]_1 ),
        .I4(\addressM[14] ),
        .I5(WriteData[3]),
        .O(\WriteData[3]_INST_0_1 ));
  LUT5 #(
    .INIT(32'hA3FFA300)) 
    result1_carry__0_i_14
       (.I0(result1_carry__0_i_3_0),
        .I1(\q_reg[23] ),
        .I2(\ALUResult[30]_INST_0_i_6 ),
        .I3(clk_2),
        .I4(result1_carry__1),
        .O(result1_carry__0_i_14_n_0));
  LUT5 #(
    .INIT(32'hA3FFA300)) 
    result1_carry__0_i_15
       (.I0(result1_carry_i_17_n_0),
        .I1(result1_carry__0_i_3_1),
        .I2(\ALUResult[30]_INST_0_i_6 ),
        .I3(clk_2),
        .I4(result1_carry__0_i_11_n_0),
        .O(result1_carry__0_i_15_n_0));
  LUT6 #(
    .INIT(64'h8B00BB338B008B00)) 
    result1_carry__0_i_17
       (.I0(SrcA[12]),
        .I1(\WriteData[3]_INST_0_0 ),
        .I2(\ALUResult[15]_INST_0_i_2_n_0 ),
        .I3(\WriteData[4]_INST_0_1 ),
        .I4(\q_reg[31] ),
        .I5(\WriteData[4]_INST_0_0 ),
        .O(result1_carry__0_i_17_n_0));
  LUT5 #(
    .INIT(32'h20FF2020)) 
    result1_carry__0_i_19
       (.I0(SrcA[11]),
        .I1(\WriteData[4]_INST_0_0 ),
        .I2(\WriteData[3]_INST_0_0 ),
        .I3(\q[31]_i_21_2 ),
        .I4(\WriteData[3]_INST_0_1 ),
        .O(result1_carry__0_i_19_n_0));
  LUT5 #(
    .INIT(32'h04FB0000)) 
    result1_carry__0_i_2
       (.I0(\ALUResult[30]_INST_0_i_6 ),
        .I1(clk_2),
        .I2(clk_7),
        .I3(\WriteData[3]_INST_0_1 ),
        .I4(p_0_in[1]),
        .O(p_0_in[0]));
  LUT3 #(
    .INIT(8'hB8)) 
    result1_carry__0_i_3
       (.I0(result1_carry__0_i_14_n_0),
        .I1(clk_7),
        .I2(result1_carry__0_i_15_n_0),
        .O(\q_reg[31]_0 [4]));
  LUT3 #(
    .INIT(8'hB8)) 
    result1_carry__0_i_4
       (.I0(result1_carry__0_i_15_n_0),
        .I1(clk_7),
        .I2(result1_carry__0),
        .O(\q_reg[31]_0 [3]));
  LUT6 #(
    .INIT(64'hA6A6A6A6A666A6A6)) 
    result1_carry__0_i_5
       (.I0(\q_reg[31]_0 [5]),
        .I1(p_0_in[1]),
        .I2(\WriteData[3]_INST_0_1 ),
        .I3(clk_7),
        .I4(clk_2),
        .I5(\ALUResult[30]_INST_0_i_6 ),
        .O(\ALUResult[2]_INST_0_i_1_0 [3]));
  LUT6 #(
    .INIT(64'h474700FFB8B8FF00)) 
    result1_carry__0_i_6
       (.I0(result1_carry__0_i_11_n_0),
        .I1(clk_2),
        .I2(result1_carry__0_i_12_n_0),
        .I3(result1_carry__0_i_14_n_0),
        .I4(clk_7),
        .I5(p_0_in[0]),
        .O(\ALUResult[2]_INST_0_i_1_0 [2]));
  LUT6 #(
    .INIT(64'h47478B47B8B8B8B8)) 
    result1_carry__0_i_7
       (.I0(result1_carry__0_i_14_n_0),
        .I1(clk_7),
        .I2(result1_carry__0_i_15_n_0),
        .I3(clk_2),
        .I4(\ALUResult[30]_INST_0_i_6 ),
        .I5(p_0_in[0]),
        .O(\ALUResult[2]_INST_0_i_1_0 [1]));
  LUT6 #(
    .INIT(64'h47B88BB847B874B8)) 
    result1_carry__0_i_8
       (.I0(result1_carry__0_i_15_n_0),
        .I1(clk_7),
        .I2(result1_carry__0),
        .I3(p_0_in[0]),
        .I4(\ALUResult[30]_INST_0_i_6 ),
        .I5(clk_2),
        .O(\ALUResult[2]_INST_0_i_1_0 [0]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    result1_carry__1_i_1
       (.I0(result1_carry__2_0),
        .I1(clk_2),
        .I2(result1_carry__1_i_10_n_0),
        .I3(clk_7),
        .I4(result1_carry__1_i_11_n_0),
        .O(\q_reg[31]_0 [9]));
  LUT6 #(
    .INIT(64'hB080FFFFB0800000)) 
    result1_carry__1_i_10
       (.I0(SrcA[16]),
        .I1(\WriteData[3]_INST_0_0 ),
        .I2(\WriteData[4]_INST_0_1 ),
        .I3(SrcA[8]),
        .I4(\ALUResult[30]_INST_0_i_6 ),
        .I5(result1_carry__0_i_17_n_0),
        .O(result1_carry__1_i_10_n_0));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    result1_carry__1_i_11
       (.I0(result1_carry__1_i_13_n_0),
        .I1(clk_2),
        .I2(result1_carry__2_i_13_n_0),
        .O(result1_carry__1_i_11_n_0));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    result1_carry__1_i_12
       (.I0(result1_carry__0_i_10_n_0),
        .I1(clk_2),
        .I2(result1_carry__2_0),
        .O(result1_carry__1_i_12_n_0));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    result1_carry__1_i_13
       (.I0(result1_carry__1_i_17_n_0),
        .I1(\ALUResult[30]_INST_0_i_6 ),
        .I2(result1_carry__1_i_11_0),
        .O(result1_carry__1_i_13_n_0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h5900FFFF)) 
    result1_carry__1_i_14
       (.I0(\ALUResult[30]_INST_0_i_6 ),
        .I1(clk_2),
        .I2(clk_7),
        .I3(\WriteData[3]_INST_0_1 ),
        .I4(result1_carry__2_i_11_n_0),
        .O(result1_carry__1_i_14_n_0));
  LUT6 #(
    .INIT(64'hAAAAAAAAAA8AAAAA)) 
    result1_carry__1_i_15
       (.I0(result1_carry__2),
        .I1(\WriteData[4]_INST_0_0 ),
        .I2(\WriteData[3]_INST_0_1 ),
        .I3(clk_7),
        .I4(clk_2),
        .I5(\ALUResult[30]_INST_0_i_6 ),
        .O(result1_carry__1_i_15_n_0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h04FB0000)) 
    result1_carry__1_i_16
       (.I0(\ALUResult[30]_INST_0_i_6 ),
        .I1(clk_2),
        .I2(clk_7),
        .I3(\WriteData[3]_INST_0_1 ),
        .I4(result1_carry__2_i_11_n_0),
        .O(result1_carry__1_i_16_n_0));
  LUT5 #(
    .INIT(32'h80808F80)) 
    result1_carry__1_i_17
       (.I0(\WriteData[4]_INST_0_1 ),
        .I1(SrcA[13]),
        .I2(\WriteData[3]_INST_0_0 ),
        .I3(SrcA[5]),
        .I4(\WriteData[4]_INST_0_0 ),
        .O(result1_carry__1_i_17_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    result1_carry__1_i_2
       (.I0(result1_carry__1_i_11_n_0),
        .I1(clk_7),
        .I2(result1_carry__1_i_12_n_0),
        .O(\q_reg[31]_0 [8]));
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    result1_carry__1_i_3
       (.I0(result1_carry__0_i_12_n_0),
        .I1(clk_2),
        .I2(result1_carry__1_i_13_n_0),
        .I3(result1_carry__1_i_12_n_0),
        .I4(clk_7),
        .O(\q_reg[31]_0 [7]));
  LUT6 #(
    .INIT(64'hB8B8B8B8FF33CC00)) 
    result1_carry__1_i_4
       (.I0(result1_carry__0_i_12_n_0),
        .I1(clk_2),
        .I2(result1_carry__1_i_13_n_0),
        .I3(result1_carry__1),
        .I4(result1_carry__0_i_10_n_0),
        .I5(clk_7),
        .O(\q_reg[31]_0 [6]));
  LUT6 #(
    .INIT(64'h666666666A666A6A)) 
    result1_carry__1_i_5
       (.I0(\q_reg[31]_0 [9]),
        .I1(p_0_in[1]),
        .I2(\WriteData[3]_INST_0_0 ),
        .I3(clk_7),
        .I4(clk_2),
        .I5(\ALUResult[30]_INST_0_i_6 ),
        .O(\ALUResult[2]_INST_0_i_1_1 [3]));
  LUT5 #(
    .INIT(32'hB847B8B8)) 
    result1_carry__1_i_6
       (.I0(result1_carry__1_i_11_n_0),
        .I1(clk_7),
        .I2(result1_carry__1_i_12_n_0),
        .I3(result1_carry__1_i_14_n_0),
        .I4(result1_carry__1_i_15_n_0),
        .O(\ALUResult[2]_INST_0_i_1_1 [2]));
  LUT6 #(
    .INIT(64'h6A55AAAAAA95AAAA)) 
    result1_carry__1_i_7
       (.I0(\q_reg[31]_0 [7]),
        .I1(clk_2),
        .I2(clk_7),
        .I3(result1_carry__1_i_14_n_0),
        .I4(result1_carry__1_i_15_n_0),
        .I5(result1_carry__1_i_16_n_0),
        .O(\ALUResult[2]_INST_0_i_1_1 [1]));
  LUT6 #(
    .INIT(64'h6AA6AAAA6556AAAA)) 
    result1_carry__1_i_8
       (.I0(\q_reg[31]_0 [6]),
        .I1(result1_carry__1_i_16_n_0),
        .I2(clk_2),
        .I3(clk_7),
        .I4(result1_carry__1_i_15_n_0),
        .I5(result1_carry__1_i_14_n_0),
        .O(\ALUResult[2]_INST_0_i_1_1 [0]));
  LUT3 #(
    .INIT(8'hB8)) 
    result1_carry__2_i_1
       (.I0(result1_carry__2_i_9_n_0),
        .I1(clk_7),
        .I2(result1_carry__2_i_10_n_0),
        .O(\q_reg[31]_0 [12]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    result1_carry__2_i_10
       (.I0(result1_carry__2_i_14_n_0),
        .I1(clk_2),
        .I2(result1_carry__3_i_12_n_0),
        .O(result1_carry__2_i_10_n_0));
  LUT5 #(
    .INIT(32'h0000FB08)) 
    result1_carry__2_i_11
       (.I0(\WriteData[4]_INST_0_1 ),
        .I1(\WriteData[3]_INST_0_1 ),
        .I2(result1_carry__4_i_16_n_0),
        .I3(\WriteData[4]_INST_0_0 ),
        .I4(\q_reg[31] ),
        .O(result1_carry__2_i_11_n_0));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    result1_carry__2_i_13
       (.I0(result1_carry__2_i_18_n_0),
        .I1(\ALUResult[30]_INST_0_i_6 ),
        .I2(result1_carry__0_i_19_n_0),
        .O(result1_carry__2_i_13_n_0));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    result1_carry__2_i_14
       (.I0(result1_carry__2_i_19_n_0),
        .I1(\ALUResult[30]_INST_0_i_6 ),
        .I2(result1_carry__1_i_17_n_0),
        .O(result1_carry__2_i_14_n_0));
  LUT6 #(
    .INIT(64'h7040FFFF70400000)) 
    result1_carry__2_i_16
       (.I0(\q_reg[31] ),
        .I1(\WriteData[3]_INST_0_0 ),
        .I2(\WriteData[4]_INST_0_1 ),
        .I3(SrcA[12]),
        .I4(\ALUResult[30]_INST_0_i_6 ),
        .I5(result1_carry__3_i_11_0),
        .O(result1_carry__2_i_16_n_0));
  LUT5 #(
    .INIT(32'h80808F80)) 
    result1_carry__2_i_18
       (.I0(\WriteData[4]_INST_0_1 ),
        .I1(SrcA[15]),
        .I2(\WriteData[3]_INST_0_0 ),
        .I3(SrcA[7]),
        .I4(\WriteData[4]_INST_0_0 ),
        .O(result1_carry__2_i_18_n_0));
  LUT5 #(
    .INIT(32'h80808F80)) 
    result1_carry__2_i_19
       (.I0(\WriteData[4]_INST_0_1 ),
        .I1(SrcA[17]),
        .I2(\WriteData[3]_INST_0_0 ),
        .I3(SrcA[9]),
        .I4(\WriteData[4]_INST_0_0 ),
        .O(result1_carry__2_i_19_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    result1_carry__2_i_2
       (.I0(result1_carry__1_i_15_n_0),
        .I1(result1_carry__2_i_11_n_0),
        .O(p_0_in[1]));
  LUT6 #(
    .INIT(64'hB8B8B8B8FF33CC00)) 
    result1_carry__2_i_3
       (.I0(result1_carry__1_i_10_n_0),
        .I1(clk_2),
        .I2(result1_carry__2_1),
        .I3(result1_carry__2_i_13_n_0),
        .I4(result1_carry__2_i_14_n_0),
        .I5(clk_7),
        .O(\q_reg[31]_0 [11]));
  LUT6 #(
    .INIT(64'hB8B8B8B8FF33CC00)) 
    result1_carry__2_i_4
       (.I0(result1_carry__2_i_13_n_0),
        .I1(clk_2),
        .I2(result1_carry__2_i_14_n_0),
        .I3(result1_carry__2_0),
        .I4(result1_carry__1_i_10_n_0),
        .I5(clk_7),
        .O(\q_reg[31]_0 [10]));
  LUT6 #(
    .INIT(64'hB8B847B8B8B8B8B8)) 
    result1_carry__2_i_5
       (.I0(result1_carry__2_i_9_n_0),
        .I1(clk_7),
        .I2(result1_carry__2_i_10_n_0),
        .I3(\WriteData[4]_INST_0_0 ),
        .I4(\q_reg[31] ),
        .I5(result1_carry__2),
        .O(\q_reg[31]_5 [3]));
  LUT6 #(
    .INIT(64'h0047FF47FFB800B8)) 
    result1_carry__2_i_6
       (.I0(result1_carry__1_i_10_n_0),
        .I1(clk_2),
        .I2(result1_carry__2_1),
        .I3(clk_7),
        .I4(result1_carry__2_i_10_n_0),
        .I5(p_0_in[1]),
        .O(\q_reg[31]_5 [2]));
  LUT6 #(
    .INIT(64'h55556555AAAAAAAA)) 
    result1_carry__2_i_7
       (.I0(\q_reg[31]_0 [11]),
        .I1(\ALUResult[30]_INST_0_i_6 ),
        .I2(clk_2),
        .I3(clk_7),
        .I4(\WriteData[3]_INST_0_0 ),
        .I5(p_0_in[1]),
        .O(\q_reg[31]_5 [1]));
  LUT6 #(
    .INIT(64'h65555565AAAAAAAA)) 
    result1_carry__2_i_8
       (.I0(\q_reg[31]_0 [10]),
        .I1(\ALUResult[30]_INST_0_i_6 ),
        .I2(\WriteData[3]_INST_0_1 ),
        .I3(clk_7),
        .I4(clk_2),
        .I5(p_0_in[1]),
        .O(\q_reg[31]_5 [0]));
  LUT3 #(
    .INIT(8'hB8)) 
    result1_carry__2_i_9
       (.I0(result1_carry__2_1),
        .I1(clk_2),
        .I2(result1_carry__2_i_16_n_0),
        .O(result1_carry__2_i_9_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    result1_carry__3_i_1
       (.I0(result1_carry__3_i_9_n_0),
        .I1(clk_7),
        .I2(result1_carry__3_i_10_n_0),
        .O(\q_reg[31]_0 [16]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    result1_carry__3_i_10
       (.I0(result1_carry__3_i_13_n_0),
        .I1(clk_2),
        .I2(result1_carry__3_i_18_n_0),
        .O(result1_carry__3_i_10_n_0));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    result1_carry__3_i_11
       (.I0(result1_carry__2_i_16_n_0),
        .I1(clk_2),
        .I2(result1_carry__3_i_2_0),
        .O(result1_carry__3_i_11_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    result1_carry__3_i_12
       (.I0(result1_carry__3_i_19_n_0),
        .I1(\ALUResult[30]_INST_0_i_6 ),
        .I2(result1_carry__2_i_18_n_0),
        .O(result1_carry__3_i_12_n_0));
  LUT6 #(
    .INIT(64'h3000B3B330008080)) 
    result1_carry__3_i_13
       (.I0(SrcA[13]),
        .I1(\ALUResult[30]_INST_0_i_6 ),
        .I2(\WriteData[4]_INST_0_1 ),
        .I3(SrcA[17]),
        .I4(\WriteData[3]_INST_0_0 ),
        .I5(result1_carry__3_i_20_n_0),
        .O(result1_carry__3_i_13_n_0));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h8828BBEB)) 
    result1_carry__3_i_14
       (.I0(result1_carry__4_i_13_n_0),
        .I1(\ALUResult[30]_INST_0_i_6 ),
        .I2(clk_2),
        .I3(clk_7),
        .I4(result1_carry__2_i_11_n_0),
        .O(result1_carry__3_i_14_n_0));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h8AA8BAAB)) 
    result1_carry__3_i_15
       (.I0(result1_carry__4_i_13_n_0),
        .I1(\ALUResult[30]_INST_0_i_6 ),
        .I2(clk_7),
        .I3(clk_2),
        .I4(result1_carry__2_i_11_n_0),
        .O(result1_carry__3_i_15_n_0));
  LUT6 #(
    .INIT(64'h03BB000003880000)) 
    result1_carry__3_i_17
       (.I0(SrcA[16]),
        .I1(\ALUResult[30]_INST_0_i_6 ),
        .I2(\q_reg[31] ),
        .I3(\WriteData[3]_INST_0_0 ),
        .I4(\WriteData[4]_INST_0_1 ),
        .I5(SrcA[12]),
        .O(result1_carry__3_i_17_n_0));
  LUT6 #(
    .INIT(64'h0030B3B300308080)) 
    result1_carry__3_i_18
       (.I0(SrcA[15]),
        .I1(\ALUResult[30]_INST_0_i_6 ),
        .I2(\WriteData[4]_INST_0_1 ),
        .I3(\q_reg[30] ),
        .I4(\WriteData[3]_INST_0_0 ),
        .I5(result1_carry__3_i_21_n_0),
        .O(result1_carry__3_i_18_n_0));
  LUT5 #(
    .INIT(32'h20202F20)) 
    result1_carry__3_i_19
       (.I0(\WriteData[4]_INST_0_1 ),
        .I1(\q_reg[30] ),
        .I2(\WriteData[3]_INST_0_0 ),
        .I3(SrcA[11]),
        .I4(\WriteData[4]_INST_0_0 ),
        .O(result1_carry__3_i_19_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    result1_carry__3_i_2
       (.I0(result1_carry__3_i_10_n_0),
        .I1(clk_7),
        .I2(result1_carry__3_i_11_n_0),
        .O(\q_reg[31]_0 [15]));
  LUT6 #(
    .INIT(64'h000000004F444044)) 
    result1_carry__3_i_20
       (.I0(\addressM[0]_0 ),
        .I1(clk_0[20]),
        .I2(Instr[3]),
        .I3(Instr[0]),
        .I4(Q[20]),
        .I5(\WriteData[4]_INST_0_0 ),
        .O(result1_carry__3_i_20_n_0));
  LUT6 #(
    .INIT(64'h000000004F444044)) 
    result1_carry__3_i_21
       (.I0(\addressM[0]_0 ),
        .I1(clk_0[22]),
        .I2(Instr[3]),
        .I3(Instr[0]),
        .I4(Q[22]),
        .I5(\WriteData[4]_INST_0_0 ),
        .O(result1_carry__3_i_21_n_0));
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    result1_carry__3_i_3
       (.I0(result1_carry__3_i_12_n_0),
        .I1(clk_2),
        .I2(result1_carry__3_i_13_n_0),
        .I3(result1_carry__3_i_11_n_0),
        .I4(clk_7),
        .O(\q_reg[31]_0 [14]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    result1_carry__3_i_4
       (.I0(result1_carry__3_i_12_n_0),
        .I1(clk_2),
        .I2(result1_carry__3_i_13_n_0),
        .I3(clk_7),
        .I4(result1_carry__2_i_9_n_0),
        .O(\q_reg[31]_0 [13]));
  LUT6 #(
    .INIT(64'hB874B8B88B47B8B8)) 
    result1_carry__3_i_5
       (.I0(result1_carry__3_i_9_n_0),
        .I1(clk_7),
        .I2(result1_carry__3_i_10_n_0),
        .I3(result1_carry__3_i_14_n_0),
        .I4(result1_carry__1_i_15_n_0),
        .I5(result1_carry__3_i_15_n_0),
        .O(result1_carry__3_i_15_0[3]));
  LUT5 #(
    .INIT(32'hB847B8B8)) 
    result1_carry__3_i_6
       (.I0(result1_carry__3_i_10_n_0),
        .I1(clk_7),
        .I2(result1_carry__3_i_11_n_0),
        .I3(result1_carry__3_i_14_n_0),
        .I4(result1_carry__1_i_15_n_0),
        .O(result1_carry__3_i_15_0[2]));
  LUT6 #(
    .INIT(64'h6AAAAAAA6666A666)) 
    result1_carry__3_i_7
       (.I0(\q_reg[31]_0 [14]),
        .I1(result1_carry__1_i_15_n_0),
        .I2(clk_2),
        .I3(clk_7),
        .I4(result1_carry__2_i_11_n_0),
        .I5(result1_carry__3_i_14_n_0),
        .O(result1_carry__3_i_15_0[1]));
  LUT6 #(
    .INIT(64'h6AAAAA6A6A66666A)) 
    result1_carry__3_i_8
       (.I0(\q_reg[31]_0 [13]),
        .I1(result1_carry__1_i_15_n_0),
        .I2(result1_carry__2_i_11_n_0),
        .I3(clk_2),
        .I4(clk_7),
        .I5(result1_carry__3_i_14_n_0),
        .O(result1_carry__3_i_15_0[0]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    result1_carry__3_i_9
       (.I0(result1_carry__3_i_2_0),
        .I1(clk_2),
        .I2(result1_carry__3_i_17_n_0),
        .O(result1_carry__3_i_9_n_0));
  LUT6 #(
    .INIT(64'hFF33CC00B8B8B8B8)) 
    result1_carry__4_i_1
       (.I0(result1_carry__4_i_9_n_0),
        .I1(clk_2),
        .I2(result1_carry__4_i_10_n_0),
        .I3(result1_carry__4_i_11_n_0),
        .I4(result1_carry__4_i_12_n_0),
        .I5(clk_7),
        .O(\q_reg[31]_0 [19]));
  LUT5 #(
    .INIT(32'h00007400)) 
    result1_carry__4_i_10
       (.I0(\q_reg[30] ),
        .I1(\ALUResult[30]_INST_0_i_6 ),
        .I2(SrcA[15]),
        .I3(\WriteData[4]_INST_0_1 ),
        .I4(\WriteData[3]_INST_0_0 ),
        .O(result1_carry__4_i_10_n_0));
  LUT5 #(
    .INIT(32'h0000B800)) 
    result1_carry__4_i_11
       (.I0(SrcA[18]),
        .I1(\ALUResult[30]_INST_0_i_6 ),
        .I2(SrcA[14]),
        .I3(\WriteData[4]_INST_0_1 ),
        .I4(\WriteData[3]_INST_0_0 ),
        .O(result1_carry__4_i_11_n_0));
  LUT5 #(
    .INIT(32'h00007400)) 
    result1_carry__4_i_12
       (.I0(\q_reg[31] ),
        .I1(\ALUResult[30]_INST_0_i_6 ),
        .I2(SrcA[16]),
        .I3(\WriteData[4]_INST_0_1 ),
        .I4(\WriteData[3]_INST_0_0 ),
        .O(result1_carry__4_i_12_n_0));
  LUT6 #(
    .INIT(64'hEEEEEBEEAAAAAAAA)) 
    result1_carry__4_i_13
       (.I0(\q_reg[31] ),
        .I1(\WriteData[3]_INST_0_1 ),
        .I2(clk_7),
        .I3(clk_2),
        .I4(\ALUResult[30]_INST_0_i_6 ),
        .I5(\WriteData[4]_INST_0_1 ),
        .O(result1_carry__4_i_13_n_0));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    result1_carry__4_i_14
       (.I0(result1_carry__3_i_17_n_0),
        .I1(clk_2),
        .I2(result1_carry__4_i_11_n_0),
        .O(result1_carry__4_i_14_n_0));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    result1_carry__4_i_15
       (.I0(result1_carry__3_i_18_n_0),
        .I1(clk_2),
        .I2(result1_carry__4_i_9_n_0),
        .O(result1_carry__4_i_15_n_0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hFB)) 
    result1_carry__4_i_16
       (.I0(\ALUResult[30]_INST_0_i_6 ),
        .I1(clk_2),
        .I2(clk_7),
        .O(result1_carry__4_i_16_n_0));
  LUT6 #(
    .INIT(64'h08000800A8AA0800)) 
    result1_carry__4_i_17
       (.I0(result1_carry__1_i_15_n_0),
        .I1(Q[31]),
        .I2(Instr[3]),
        .I3(Instr[0]),
        .I4(rd10),
        .I5(\addressM[0]_0 ),
        .O(result1_carry__4_i_17_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    result1_carry__4_i_2
       (.I0(result1_carry__1_i_15_n_0),
        .I1(result1_carry__4_i_13_n_0),
        .O(p_0_in[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    result1_carry__4_i_3
       (.I0(result1_carry__4_i_14_n_0),
        .I1(clk_7),
        .I2(result1_carry__4_i_15_n_0),
        .O(\q_reg[31]_0 [18]));
  LUT3 #(
    .INIT(8'hB8)) 
    result1_carry__4_i_4
       (.I0(result1_carry__4_i_15_n_0),
        .I1(clk_7),
        .I2(result1_carry__3_i_9_n_0),
        .O(\q_reg[31]_0 [17]));
  LUT5 #(
    .INIT(32'h9555AAAA)) 
    result1_carry__4_i_5
       (.I0(\q_reg[31]_0 [19]),
        .I1(\WriteData[4]_INST_0_1 ),
        .I2(result1_carry__4_i_16_n_0),
        .I3(\WriteData[3]_INST_0_1 ),
        .I4(result1_carry__4_i_17_n_0),
        .O(\q_reg[31]_6 [3]));
  LUT6 #(
    .INIT(64'h474700FFB8B8FF00)) 
    result1_carry__4_i_6
       (.I0(result1_carry__4_i_9_n_0),
        .I1(clk_2),
        .I2(result1_carry__4_i_10_n_0),
        .I3(result1_carry__4_i_14_n_0),
        .I4(clk_7),
        .I5(p_0_in[2]),
        .O(\q_reg[31]_6 [2]));
  LUT6 #(
    .INIT(64'hB88BB8B87447B8B8)) 
    result1_carry__4_i_7
       (.I0(result1_carry__4_i_14_n_0),
        .I1(clk_7),
        .I2(result1_carry__4_i_15_n_0),
        .I3(result1_carry__4_i_13_n_0),
        .I4(result1_carry__1_i_15_n_0),
        .I5(result1_carry__3_i_15_n_0),
        .O(\q_reg[31]_6 [1]));
  LUT5 #(
    .INIT(32'hB847B8B8)) 
    result1_carry__4_i_8
       (.I0(result1_carry__4_i_15_n_0),
        .I1(clk_7),
        .I2(result1_carry__3_i_9_n_0),
        .I3(result1_carry__3_i_15_n_0),
        .I4(result1_carry__1_i_15_n_0),
        .O(\q_reg[31]_6 [0]));
  LUT5 #(
    .INIT(32'h0000B800)) 
    result1_carry__4_i_9
       (.I0(SrcA[17]),
        .I1(\ALUResult[30]_INST_0_i_6 ),
        .I2(SrcA[13]),
        .I3(\WriteData[4]_INST_0_1 ),
        .I4(\WriteData[3]_INST_0_0 ),
        .O(result1_carry__4_i_9_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    result1_carry__5_i_1
       (.I0(result1_carry__5_i_9_n_0),
        .I1(clk_7),
        .I2(result1_carry__5_i_10_n_0),
        .O(\q_reg[31]_0 [23]));
  LUT6 #(
    .INIT(64'h0000000008000B00)) 
    result1_carry__5_i_10
       (.I0(SrcA[17]),
        .I1(clk_2),
        .I2(\WriteData[3]_INST_0_0 ),
        .I3(\WriteData[4]_INST_0_1 ),
        .I4(\q_reg[30] ),
        .I5(\ALUResult[30]_INST_0_i_6 ),
        .O(result1_carry__5_i_10_n_0));
  LUT6 #(
    .INIT(64'h888888888B888888)) 
    result1_carry__5_i_11
       (.I0(result1_carry__4_i_12_n_0),
        .I1(clk_2),
        .I2(\WriteData[3]_INST_0_0 ),
        .I3(\WriteData[4]_INST_0_1 ),
        .I4(SrcA[18]),
        .I5(\ALUResult[30]_INST_0_i_6 ),
        .O(result1_carry__5_i_11_n_0));
  LUT6 #(
    .INIT(64'h888888888B888888)) 
    result1_carry__5_i_12
       (.I0(result1_carry__4_i_10_n_0),
        .I1(clk_2),
        .I2(\WriteData[3]_INST_0_0 ),
        .I3(\WriteData[4]_INST_0_1 ),
        .I4(SrcA[17]),
        .I5(\ALUResult[30]_INST_0_i_6 ),
        .O(result1_carry__5_i_12_n_0));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'hB)) 
    result1_carry__5_i_13
       (.I0(clk_7),
        .I1(clk_2),
        .O(result1_carry__5_i_13_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    result1_carry__5_i_2
       (.I0(result1_carry__5_i_10_n_0),
        .I1(clk_7),
        .I2(result1_carry__5_i_11_n_0),
        .O(\q_reg[31]_0 [22]));
  LUT3 #(
    .INIT(8'hB8)) 
    result1_carry__5_i_3
       (.I0(result1_carry__5_i_11_n_0),
        .I1(clk_7),
        .I2(result1_carry__5_i_12_n_0),
        .O(\q_reg[31]_0 [21]));
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    result1_carry__5_i_4
       (.I0(result1_carry__4_i_11_n_0),
        .I1(clk_2),
        .I2(result1_carry__4_i_12_n_0),
        .I3(result1_carry__5_i_12_n_0),
        .I4(clk_7),
        .O(\q_reg[31]_0 [20]));
  LUT6 #(
    .INIT(64'h55555955AAAAAAAA)) 
    result1_carry__5_i_5
       (.I0(\q_reg[31]_0 [23]),
        .I1(\WriteData[4]_INST_0_1 ),
        .I2(\ALUResult[30]_INST_0_i_6 ),
        .I3(result1_carry__5_i_13_n_0),
        .I4(\WriteData[3]_INST_0_0 ),
        .I5(result1_carry__4_i_17_n_0),
        .O(\q_reg[31]_7 [3]));
  LUT6 #(
    .INIT(64'h5666565666566666)) 
    result1_carry__5_i_6
       (.I0(\q_reg[31]_0 [22]),
        .I1(p_0_in[2]),
        .I2(result1_carry__4_i_17_n_0),
        .I3(clk_7),
        .I4(clk_2),
        .I5(\ALUResult[30]_INST_0_i_6 ),
        .O(\q_reg[31]_7 [2]));
  LUT6 #(
    .INIT(64'h55555555AA9A6A6A)) 
    result1_carry__5_i_7
       (.I0(\q_reg[31]_0 [21]),
        .I1(\ALUResult[30]_INST_0_i_6 ),
        .I2(result1_carry__4_i_17_n_0),
        .I3(clk_7),
        .I4(clk_2),
        .I5(p_0_in[2]),
        .O(\q_reg[31]_7 [1]));
  LUT6 #(
    .INIT(64'h55555555AA9A6AAA)) 
    result1_carry__5_i_8
       (.I0(\q_reg[31]_0 [20]),
        .I1(\ALUResult[30]_INST_0_i_6 ),
        .I2(result1_carry__4_i_17_n_0),
        .I3(clk_7),
        .I4(clk_2),
        .I5(p_0_in[2]),
        .O(\q_reg[31]_7 [0]));
  LUT6 #(
    .INIT(64'h0000000008000B00)) 
    result1_carry__5_i_9
       (.I0(SrcA[18]),
        .I1(clk_2),
        .I2(\WriteData[3]_INST_0_0 ),
        .I3(\WriteData[4]_INST_0_1 ),
        .I4(\q_reg[31] ),
        .I5(\ALUResult[30]_INST_0_i_6 ),
        .O(result1_carry__5_i_9_n_0));
  LUT6 #(
    .INIT(64'h00000B0800000000)) 
    result1_carry__6_i_1
       (.I0(result1_carry__6_i_6_n_0),
        .I1(clk_7),
        .I2(\ALUResult[30]_INST_0_i_6 ),
        .I3(result1_carry__6_i_7_n_0),
        .I4(\WriteData[3]_INST_0_0 ),
        .I5(clk_2),
        .O(\q_reg[31]_0 [25]));
  LUT5 #(
    .INIT(32'h40FF4000)) 
    result1_carry__6_i_2
       (.I0(\ALUResult[30]_INST_0_i_6 ),
        .I1(result1_carry__6_i_8_n_0),
        .I2(clk_2),
        .I3(clk_7),
        .I4(result1_carry__5_i_9_n_0),
        .O(\q_reg[31]_0 [24]));
  LUT6 #(
    .INIT(64'hAAAAABAAAAAAAAAA)) 
    result1_carry__6_i_3
       (.I0(result1_carry__4_i_17_n_0),
        .I1(clk_7),
        .I2(\ALUResult[30]_INST_0_i_6 ),
        .I3(result1_carry__6_i_6_n_0),
        .I4(\WriteData[3]_INST_0_0 ),
        .I5(clk_2),
        .O(\q_reg[31]_2 [2]));
  LUT6 #(
    .INIT(64'h65555555AAAAAAAA)) 
    result1_carry__6_i_4
       (.I0(\q_reg[31]_0 [25]),
        .I1(\ALUResult[30]_INST_0_i_6 ),
        .I2(clk_2),
        .I3(clk_7),
        .I4(result1_carry__6_i_9_n_0),
        .I5(result1_carry__4_i_17_n_0),
        .O(\q_reg[31]_2 [1]));
  LUT6 #(
    .INIT(64'h55559559AAAAAAAA)) 
    result1_carry__6_i_5
       (.I0(\q_reg[31]_0 [24]),
        .I1(result1_carry__6_i_9_n_0),
        .I2(clk_2),
        .I3(clk_7),
        .I4(\ALUResult[30]_INST_0_i_6 ),
        .I5(result1_carry__4_i_17_n_0),
        .O(\q_reg[31]_2 [0]));
  LUT6 #(
    .INIT(64'h08000800A8AA0800)) 
    result1_carry__6_i_6
       (.I0(\WriteData[4]_INST_0_1 ),
        .I1(Q[31]),
        .I2(Instr[3]),
        .I3(Instr[0]),
        .I4(rd10),
        .I5(\addressM[0]_0 ),
        .O(result1_carry__6_i_6_n_0));
  LUT6 #(
    .INIT(64'h08000800A8AA0800)) 
    result1_carry__6_i_7
       (.I0(\WriteData[4]_INST_0_1 ),
        .I1(Q[30]),
        .I2(Instr[3]),
        .I3(Instr[0]),
        .I4(clk_0[30]),
        .I5(\addressM[0]_0 ),
        .O(result1_carry__6_i_7_n_0));
  LUT6 #(
    .INIT(64'h00000000F4040000)) 
    result1_carry__6_i_8
       (.I0(\addressM[0]_0 ),
        .I1(clk_0[30]),
        .I2(\addressM[0]_1 ),
        .I3(Q[30]),
        .I4(\WriteData[4]_INST_0_1 ),
        .I5(\WriteData[3]_INST_0_0 ),
        .O(result1_carry__6_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'hAA8A0020)) 
    result1_carry__6_i_9
       (.I0(\WriteData[4]_INST_0_1 ),
        .I1(\ALUResult[30]_INST_0_i_6 ),
        .I2(clk_2),
        .I3(clk_7),
        .I4(\WriteData[3]_INST_0_1 ),
        .O(result1_carry__6_i_9_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    result1_carry_i_1
       (.I0(result1_carry__0),
        .I1(clk_7),
        .I2(result1_carry_i_10_n_0),
        .O(\q_reg[31]_0 [2]));
  LUT6 #(
    .INIT(64'hFF0FF000A3A3A3A3)) 
    result1_carry_i_10
       (.I0(result1_carry_i_17_n_0),
        .I1(result1_carry__0_i_3_1),
        .I2(\ALUResult[30]_INST_0_i_6 ),
        .I3(result1_carry_i_19_n_0),
        .I4(result1_carry_i_6_1),
        .I5(clk_2),
        .O(result1_carry_i_10_n_0));
  LUT5 #(
    .INIT(32'h00FFA3A3)) 
    result1_carry_i_11
       (.I0(result1_carry_i_6_2),
        .I1(result1_carry_i_6_0),
        .I2(\ALUResult[30]_INST_0_i_6 ),
        .I3(\ALUResult[0]_INST_0_i_12_n_0 ),
        .I4(clk_2),
        .O(result1_carry_i_11_n_0));
  LUT5 #(
    .INIT(32'h00FFB8B8)) 
    result1_carry_i_12
       (.I0(result1_carry_i_19_n_0),
        .I1(\ALUResult[30]_INST_0_i_6 ),
        .I2(result1_carry_i_6_1),
        .I3(\ALUResult[0]_INST_0_i_15_n_0 ),
        .I4(clk_2),
        .O(result1_carry_i_12_n_0));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    result1_carry_i_13
       (.I0(result1_carry_i_6_0),
        .I1(\ALUResult[30]_INST_0_i_6 ),
        .I2(\q[31]_i_21_0 ),
        .I3(clk_2),
        .I4(\ALUResult[0]_INST_0_i_12_n_0 ),
        .O(result1_carry_i_13_n_0));
  LUT6 #(
    .INIT(64'h000000DFDFDF00DF)) 
    result1_carry_i_16
       (.I0(\WriteData[4]_INST_0_0 ),
        .I1(\WriteData[3]_INST_0_0 ),
        .I2(SrcA[12]),
        .I3(result1_carry_i_20_n_0),
        .I4(\WriteData[3]_INST_0_1 ),
        .I5(result1_carry_i_21_n_0),
        .O(\q_reg[23] ));
  LUT5 #(
    .INIT(32'h20FF2020)) 
    result1_carry_i_17
       (.I0(SrcA[7]),
        .I1(\WriteData[4]_INST_0_0 ),
        .I2(\WriteData[3]_INST_0_0 ),
        .I3(\q[31]_i_21_1 ),
        .I4(\WriteData[3]_INST_0_1 ),
        .O(result1_carry_i_17_n_0));
  LUT5 #(
    .INIT(32'h20FF2020)) 
    result1_carry_i_19
       (.I0(SrcA[5]),
        .I1(\WriteData[4]_INST_0_0 ),
        .I2(\WriteData[3]_INST_0_0 ),
        .I3(result1_carry_i_22_n_0),
        .I4(\WriteData[3]_INST_0_1 ),
        .O(result1_carry_i_19_n_0));
  LUT4 #(
    .INIT(16'h8A20)) 
    result1_carry_i_2
       (.I0(p_0_in[0]),
        .I1(clk_7),
        .I2(clk_2),
        .I3(\ALUResult[30]_INST_0_i_6 ),
        .O(\ALUResult[2]_INST_0_i_1_2 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    result1_carry_i_20
       (.I0(\ALUResult[15]_INST_0_i_2_n_0 ),
        .I1(\WriteData[4]_INST_0_1 ),
        .I2(\q_reg[31] ),
        .I3(\WriteData[4]_INST_0_0 ),
        .O(result1_carry_i_20_n_0));
  LUT6 #(
    .INIT(64'h20AA202020002020)) 
    result1_carry_i_21
       (.I0(\WriteData[4]_INST_0_1 ),
        .I1(\addressM[0]_0 ),
        .I2(clk_0[7]),
        .I3(Instr[3]),
        .I4(Instr[0]),
        .I5(Q[7]),
        .O(result1_carry_i_21_n_0));
  LUT6 #(
    .INIT(64'h0BFB00000BFBFFFF)) 
    result1_carry_i_22
       (.I0(\addressM[0]_0 ),
        .I1(clk_0[8]),
        .I2(\addressM[0]_1 ),
        .I3(Q[8]),
        .I4(\WriteData[4]_INST_0_1 ),
        .I5(SrcA[13]),
        .O(result1_carry_i_22_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    result1_carry_i_3
       (.I0(result1_carry_i_11_n_0),
        .I1(clk_7),
        .I2(result1_carry_i_12_n_0),
        .O(\q_reg[31]_0 [1]));
  LUT3 #(
    .INIT(8'hA3)) 
    result1_carry_i_4
       (.I0(result1_carry_i_12_n_0),
        .I1(result1_carry_i_13_n_0),
        .I2(clk_7),
        .O(\q_reg[31]_0 [0]));
  LUT6 #(
    .INIT(64'h47B88BB847B8B8B8)) 
    result1_carry_i_5
       (.I0(result1_carry__0),
        .I1(clk_7),
        .I2(result1_carry_i_10_n_0),
        .I3(p_0_in[0]),
        .I4(\ALUResult[30]_INST_0_i_6 ),
        .I5(clk_2),
        .O(\ALUResult[1]_INST_0_i_2_0 [3]));
  LUT6 #(
    .INIT(64'h3C3CA55ACCCCAAAA)) 
    result1_carry_i_6
       (.I0(result1_carry_i_11_n_0),
        .I1(result1_carry_i_10_n_0),
        .I2(\ALUResult[30]_INST_0_i_6 ),
        .I3(clk_2),
        .I4(clk_7),
        .I5(p_0_in[0]),
        .O(\ALUResult[1]_INST_0_i_2_0 [2]));
  LUT6 #(
    .INIT(64'hB847B8B88BB8B8B8)) 
    result1_carry_i_7
       (.I0(result1_carry_i_11_n_0),
        .I1(clk_7),
        .I2(result1_carry_i_12_n_0),
        .I3(clk_2),
        .I4(p_0_in[0]),
        .I5(\ALUResult[30]_INST_0_i_6 ),
        .O(\ALUResult[1]_INST_0_i_2_0 [1]));
  LUT6 #(
    .INIT(64'hA353A3A3ACA3A3A3)) 
    result1_carry_i_8
       (.I0(result1_carry_i_12_n_0),
        .I1(result1_carry_i_13_n_0),
        .I2(clk_7),
        .I3(clk_2),
        .I4(p_0_in[0]),
        .I5(\ALUResult[30]_INST_0_i_6 ),
        .O(\ALUResult[1]_INST_0_i_2_0 [0]));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "dp/rf/rf_reg_r1_0_31_0_5" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "5" *) 
  RAM32M rf_reg_r1_0_31_0_5
       (.ADDRA(Instr[17:13]),
        .ADDRB(Instr[17:13]),
        .ADDRC(Instr[17:13]),
        .ADDRD(Instr[9:5]),
        .DIA(\writeDataM[31] [1:0]),
        .DIB(\writeDataM[31] [3:2]),
        .DIC(\writeDataM[31] [5:4]),
        .DID({1'b0,1'b0}),
        .DOA(clk_0[1:0]),
        .DOB(clk_0[3:2]),
        .DOC(clk_0[5:4]),
        .DOD(NLW_rf_reg_r1_0_31_0_5_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(we3));
  LUT3 #(
    .INIT(8'hFB)) 
    rf_reg_r1_0_31_0_5_i_1
       (.I0(Instr[0]),
        .I1(Instr[3]),
        .I2(Instr[2]),
        .O(we3));
  LUT5 #(
    .INIT(32'hACAC00AC)) 
    rf_reg_r1_0_31_0_5_i_11
       (.I0(Instr[8]),
        .I1(Instr[21]),
        .I2(\addressM[2]_0 ),
        .I3(Instr[0]),
        .I4(Instr[4]),
        .O(rf_reg_r1_0_31_6_11_i_7_0[1]));
  LUT5 #(
    .INIT(32'hACAC00AC)) 
    rf_reg_r1_0_31_0_5_i_12
       (.I0(Instr[7]),
        .I1(Instr[20]),
        .I2(\addressM[2]_0 ),
        .I3(Instr[0]),
        .I4(Instr[4]),
        .O(rf_reg_r1_0_31_6_11_i_7_0[0]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    rf_reg_r1_0_31_0_5_i_13
       (.I0(Instr[23]),
        .I1(Instr[4]),
        .I2(Instr[0]),
        .O(rf_reg_r1_0_31_6_11_i_7_0[2]));
  LUT6 #(
    .INIT(64'hE2E2B8E200B800B8)) 
    rf_reg_r1_0_31_0_5_i_14
       (.I0(Instr[22]),
        .I1(rf_reg_r1_0_31_0_5_i_7),
        .I2(Instr[9]),
        .I3(Instr[0]),
        .I4(Instr[1]),
        .I5(Instr[4]),
        .O(y_carry_i_5));
  LUT3 #(
    .INIT(8'h8A)) 
    rf_reg_r1_0_31_0_5_i_8
       (.I0(Instr[0]),
        .I1(Instr[3]),
        .I2(Instr[2]),
        .O(rf_reg_r1_0_31_0_5_i_8_0));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'h83)) 
    rf_reg_r1_0_31_0_5_i_9
       (.I0(Instr[0]),
        .I1(Instr[2]),
        .I2(Instr[3]),
        .O(rf_reg_r1_0_31_0_5_i_9_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "dp/rf/rf_reg_r1_0_31_12_17" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "17" *) 
  RAM32M rf_reg_r1_0_31_12_17
       (.ADDRA(Instr[17:13]),
        .ADDRB(Instr[17:13]),
        .ADDRC(Instr[17:13]),
        .ADDRD(Instr[9:5]),
        .DIA({wd3[13],\writeDataM[31] [12]}),
        .DIB({wd3[15],\writeDataM[31] [13]}),
        .DIC({wd3[17],\writeDataM[31] [14]}),
        .DID({1'b0,1'b0}),
        .DOA(clk_0[13:12]),
        .DOB(clk_0[15:14]),
        .DOC(clk_0[17:16]),
        .DOD(NLW_rf_reg_r1_0_31_12_17_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(we3));
  MUXF7 rf_reg_r1_0_31_12_17_i_1
       (.I0(rf_reg_r1_0_31_12_17_i_7_n_0),
        .I1(rf_reg_r2_0_31_12_17_0),
        .O(wd3[13]),
        .S(rf_reg_r1_0_31_0_5_i_8_0));
  LUT6 #(
    .INIT(64'hA3A0FFFFA3A00000)) 
    rf_reg_r1_0_31_12_17_i_11
       (.I0(ReadData[5]),
        .I1(Instr[12]),
        .I2(rf_reg_r1_0_31_6_11_i_13_0),
        .I3(ReadData[0]),
        .I4(rf_reg_r1_0_31_0_5_i_9_0),
        .I5(\q_reg[19] [4]),
        .O(rf_reg_r1_0_31_12_17_i_11_n_0));
  LUT5 #(
    .INIT(32'hEAFFEA00)) 
    rf_reg_r1_0_31_12_17_i_15
       (.I0(\readDataM[15] ),
        .I1(ReadData[6]),
        .I2(Instr[11]),
        .I3(rf_reg_r1_0_31_0_5_i_9_0),
        .I4(\q_reg[19] [5]),
        .O(rf_reg_r1_0_31_12_17_i_15_n_0));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h00004540)) 
    rf_reg_r1_0_31_12_17_i_19
       (.I0(Instr[12]),
        .I1(ReadData[5]),
        .I2(Instr[10]),
        .I3(ReadData[0]),
        .I4(Instr[11]),
        .O(\readDataM[15] ));
  MUXF7 rf_reg_r1_0_31_12_17_i_3
       (.I0(rf_reg_r1_0_31_12_17_i_11_n_0),
        .I1(rf_reg_r2_0_31_12_17_1),
        .O(wd3[15]),
        .S(rf_reg_r1_0_31_0_5_i_8_0));
  MUXF7 rf_reg_r1_0_31_12_17_i_5
       (.I0(rf_reg_r1_0_31_12_17_i_15_n_0),
        .I1(rf_reg_r2_0_31_12_17_2),
        .O(wd3[17]),
        .S(rf_reg_r1_0_31_0_5_i_8_0));
  LUT6 #(
    .INIT(64'hF404FFFFF4040000)) 
    rf_reg_r1_0_31_12_17_i_7
       (.I0(Instr[12]),
        .I1(ReadData[0]),
        .I2(rf_reg_r1_0_31_6_11_i_13_0),
        .I3(ReadData[4]),
        .I4(rf_reg_r1_0_31_0_5_i_9_0),
        .I5(\q_reg[19] [3]),
        .O(rf_reg_r1_0_31_12_17_i_7_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "dp/rf/rf_reg_r1_0_31_18_23" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "18" *) 
  (* ram_slice_end = "23" *) 
  RAM32M rf_reg_r1_0_31_18_23
       (.ADDRA(Instr[17:13]),
        .ADDRB(Instr[17:13]),
        .ADDRC(Instr[17:13]),
        .ADDRD(Instr[9:5]),
        .DIA({wd3[19],\writeDataM[31] [15]}),
        .DIB(\writeDataM[31] [17:16]),
        .DIC(\writeDataM[31] [19:18]),
        .DID({1'b0,1'b0}),
        .DOA(clk_0[19:18]),
        .DOB(clk_0[21:20]),
        .DOC(clk_0[23:22]),
        .DOD(NLW_rf_reg_r1_0_31_18_23_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(we3));
  MUXF7 rf_reg_r1_0_31_18_23_i_1
       (.I0(rf_reg_r1_0_31_18_23_i_7_n_0),
        .I1(rf_reg_r2_0_31_18_23_0),
        .O(wd3[19]),
        .S(rf_reg_r1_0_31_0_5_i_8_0));
  LUT5 #(
    .INIT(32'hEAFFEA00)) 
    rf_reg_r1_0_31_18_23_i_7
       (.I0(\readDataM[15] ),
        .I1(ReadData[7]),
        .I2(Instr[11]),
        .I3(rf_reg_r1_0_31_0_5_i_9_0),
        .I4(\q_reg[19] [6]),
        .O(rf_reg_r1_0_31_18_23_i_7_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "dp/rf/rf_reg_r1_0_31_24_29" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "24" *) 
  (* ram_slice_end = "29" *) 
  RAM32M rf_reg_r1_0_31_24_29
       (.ADDRA(Instr[17:13]),
        .ADDRB(Instr[17:13]),
        .ADDRC(Instr[17:13]),
        .ADDRD(Instr[9:5]),
        .DIA(\writeDataM[31] [21:20]),
        .DIB(\writeDataM[31] [23:22]),
        .DIC({\writeDataM[31] [24],wd3[28]}),
        .DID({1'b0,1'b0}),
        .DOA(clk_0[25:24]),
        .DOB(clk_0[27:26]),
        .DOC(clk_0[29:28]),
        .DOD(NLW_rf_reg_r1_0_31_24_29_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(we3));
  LUT5 #(
    .INIT(32'hEAFFEA00)) 
    rf_reg_r1_0_31_24_29_i_17
       (.I0(\readDataM[15] ),
        .I1(ReadData[8]),
        .I2(Instr[11]),
        .I3(rf_reg_r1_0_31_0_5_i_9_0),
        .I4(\q_reg[28] ),
        .O(rf_reg_r1_0_31_24_29_i_17_n_0));
  MUXF7 rf_reg_r1_0_31_24_29_i_6
       (.I0(rf_reg_r1_0_31_24_29_i_17_n_0),
        .I1(rf_reg_r2_0_31_24_29_0),
        .O(wd3[28]),
        .S(rf_reg_r1_0_31_0_5_i_8_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "dp/rf/rf_reg_r1_0_31_30_31" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "30" *) 
  (* ram_slice_end = "31" *) 
  RAM32X1D rf_reg_r1_0_31_30_31
       (.A0(Instr[5]),
        .A1(Instr[6]),
        .A2(Instr[7]),
        .A3(Instr[8]),
        .A4(Instr[9]),
        .D(\writeDataM[31] [25]),
        .DPO(clk_0[30]),
        .DPRA0(Instr[13]),
        .DPRA1(Instr[14]),
        .DPRA2(Instr[15]),
        .DPRA3(Instr[16]),
        .DPRA4(Instr[17]),
        .SPO(NLW_rf_reg_r1_0_31_30_31_SPO_UNCONNECTED),
        .WCLK(clk),
        .WE(we3));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "dp/rf/rf_reg_r1_0_31_30_31" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "30" *) 
  (* ram_slice_end = "31" *) 
  RAM32X1D rf_reg_r1_0_31_30_31__0
       (.A0(Instr[5]),
        .A1(Instr[6]),
        .A2(Instr[7]),
        .A3(Instr[8]),
        .A4(Instr[9]),
        .D(\writeDataM[31] [26]),
        .DPO(rd10),
        .DPRA0(Instr[13]),
        .DPRA1(Instr[14]),
        .DPRA2(Instr[15]),
        .DPRA3(Instr[16]),
        .DPRA4(Instr[17]),
        .SPO(NLW_rf_reg_r1_0_31_30_31__0_SPO_UNCONNECTED),
        .WCLK(clk),
        .WE(we3));
  LUT6 #(
    .INIT(64'h88888888BBB888B8)) 
    rf_reg_r1_0_31_30_31_i_2__0
       (.I0(ReadData[9]),
        .I1(Instr[11]),
        .I2(ReadData[0]),
        .I3(Instr[10]),
        .I4(ReadData[5]),
        .I5(Instr[12]),
        .O(\readDataM[31] ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "dp/rf/rf_reg_r1_0_31_6_11" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "11" *) 
  RAM32M rf_reg_r1_0_31_6_11
       (.ADDRA(Instr[17:13]),
        .ADDRB(Instr[17:13]),
        .ADDRC(Instr[17:13]),
        .ADDRD(Instr[9:5]),
        .DIA(\writeDataM[31] [7:6]),
        .DIB(\writeDataM[31] [9:8]),
        .DIC(\writeDataM[31] [11:10]),
        .DID({1'b0,1'b0}),
        .DOA(clk_0[7:6]),
        .DOB(clk_0[9:8]),
        .DOC(clk_0[11:10]),
        .DOD(NLW_rf_reg_r1_0_31_6_11_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(we3));
  LUT6 #(
    .INIT(64'hF404FFFFF4040000)) 
    rf_reg_r1_0_31_6_11_i_10
       (.I0(Instr[12]),
        .I1(ReadData[0]),
        .I2(rf_reg_r1_0_31_6_11_i_13_0),
        .I3(ReadData[1]),
        .I4(rf_reg_r1_0_31_0_5_i_9_0),
        .I5(\q_reg[19] [0]),
        .O(\readDataM[7] ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'hFFF40004)) 
    rf_reg_r1_0_31_6_11_i_11
       (.I0(Instr[12]),
        .I1(ReadData[0]),
        .I2(Instr[11]),
        .I3(Instr[10]),
        .I4(ReadData[3]),
        .O(\readDataM[7]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'hE)) 
    rf_reg_r1_0_31_6_11_i_13
       (.I0(Instr[11]),
        .I1(Instr[10]),
        .O(rf_reg_r1_0_31_6_11_i_13_0));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    rf_reg_r1_0_31_6_11_i_7
       (.I0(Instr[25]),
        .I1(Instr[4]),
        .I2(Instr[0]),
        .O(rf_reg_r1_0_31_6_11_i_7_0[4]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    rf_reg_r1_0_31_6_11_i_8
       (.I0(Instr[24]),
        .I1(Instr[4]),
        .I2(Instr[0]),
        .O(rf_reg_r1_0_31_6_11_i_7_0[3]));
  LUT6 #(
    .INIT(64'hF404FFFFF4040000)) 
    rf_reg_r1_0_31_6_11_i_9
       (.I0(Instr[12]),
        .I1(ReadData[0]),
        .I2(rf_reg_r1_0_31_6_11_i_13_0),
        .I3(ReadData[2]),
        .I4(rf_reg_r1_0_31_0_5_i_9_0),
        .I5(\q_reg[19] [1]),
        .O(\readDataM[7]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "dp/rf/rf_reg_r2_0_31_0_5" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "5" *) 
  RAM32M rf_reg_r2_0_31_0_5
       (.ADDRA(Instr[22:18]),
        .ADDRB(Instr[22:18]),
        .ADDRC(Instr[22:18]),
        .ADDRD(Instr[9:5]),
        .DIA(\writeDataM[31] [1:0]),
        .DIB(\writeDataM[31] [3:2]),
        .DIC(\writeDataM[31] [5:4]),
        .DID({1'b0,1'b0}),
        .DOA(rd20[1:0]),
        .DOB(rd20[3:2]),
        .DOC(rd20[5:4]),
        .DOD(NLW_rf_reg_r2_0_31_0_5_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(we3));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "dp/rf/rf_reg_r2_0_31_12_17" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "17" *) 
  RAM32M rf_reg_r2_0_31_12_17
       (.ADDRA(Instr[22:18]),
        .ADDRB(Instr[22:18]),
        .ADDRC(Instr[22:18]),
        .ADDRD(Instr[9:5]),
        .DIA({wd3[13],\writeDataM[31] [12]}),
        .DIB({wd3[15],\writeDataM[31] [13]}),
        .DIC({wd3[17],\writeDataM[31] [14]}),
        .DID({1'b0,1'b0}),
        .DOA(rd20[13:12]),
        .DOB(rd20[15:14]),
        .DOC(rd20[17:16]),
        .DOD(NLW_rf_reg_r2_0_31_12_17_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(we3));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "dp/rf/rf_reg_r2_0_31_18_23" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "18" *) 
  (* ram_slice_end = "23" *) 
  RAM32M rf_reg_r2_0_31_18_23
       (.ADDRA(Instr[22:18]),
        .ADDRB(Instr[22:18]),
        .ADDRC(Instr[22:18]),
        .ADDRD(Instr[9:5]),
        .DIA({wd3[19],\writeDataM[31] [15]}),
        .DIB(\writeDataM[31] [17:16]),
        .DIC(\writeDataM[31] [19:18]),
        .DID({1'b0,1'b0}),
        .DOA(rd20[19:18]),
        .DOB(rd20[21:20]),
        .DOC(rd20[23:22]),
        .DOD(NLW_rf_reg_r2_0_31_18_23_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(we3));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "dp/rf/rf_reg_r2_0_31_24_29" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "24" *) 
  (* ram_slice_end = "29" *) 
  RAM32M rf_reg_r2_0_31_24_29
       (.ADDRA(Instr[22:18]),
        .ADDRB(Instr[22:18]),
        .ADDRC(Instr[22:18]),
        .ADDRD(Instr[9:5]),
        .DIA(\writeDataM[31] [21:20]),
        .DIB(\writeDataM[31] [23:22]),
        .DIC({\writeDataM[31] [24],wd3[28]}),
        .DID({1'b0,1'b0}),
        .DOA(rd20[25:24]),
        .DOB(rd20[27:26]),
        .DOC(rd20[29:28]),
        .DOD(NLW_rf_reg_r2_0_31_24_29_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(we3));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "dp/rf/rf_reg_r2_0_31_30_31" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "30" *) 
  (* ram_slice_end = "31" *) 
  RAM32X1D rf_reg_r2_0_31_30_31
       (.A0(Instr[5]),
        .A1(Instr[6]),
        .A2(Instr[7]),
        .A3(Instr[8]),
        .A4(Instr[9]),
        .D(\writeDataM[31] [25]),
        .DPO(rd20[30]),
        .DPRA0(Instr[18]),
        .DPRA1(Instr[19]),
        .DPRA2(Instr[20]),
        .DPRA3(Instr[21]),
        .DPRA4(Instr[22]),
        .SPO(NLW_rf_reg_r2_0_31_30_31_SPO_UNCONNECTED),
        .WCLK(clk),
        .WE(we3));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "dp/rf/rf_reg_r2_0_31_30_31" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "30" *) 
  (* ram_slice_end = "31" *) 
  RAM32X1D rf_reg_r2_0_31_30_31__0
       (.A0(Instr[5]),
        .A1(Instr[6]),
        .A2(Instr[7]),
        .A3(Instr[8]),
        .A4(Instr[9]),
        .D(\writeDataM[31] [26]),
        .DPO(rd20[31]),
        .DPRA0(Instr[18]),
        .DPRA1(Instr[19]),
        .DPRA2(Instr[20]),
        .DPRA3(Instr[21]),
        .DPRA4(Instr[22]),
        .SPO(NLW_rf_reg_r2_0_31_30_31__0_SPO_UNCONNECTED),
        .WCLK(clk),
        .WE(we3));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "dp/rf/rf_reg_r2_0_31_6_11" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "11" *) 
  RAM32M rf_reg_r2_0_31_6_11
       (.ADDRA(Instr[22:18]),
        .ADDRB(Instr[22:18]),
        .ADDRC(Instr[22:18]),
        .ADDRD(Instr[9:5]),
        .DIA(\writeDataM[31] [7:6]),
        .DIB(\writeDataM[31] [9:8]),
        .DIC(\writeDataM[31] [11:10]),
        .DID({1'b0,1'b0}),
        .DOA(rd20[7:6]),
        .DOB(rd20[9:8]),
        .DOC(rd20[11:10]),
        .DOD(NLW_rf_reg_r2_0_31_6_11_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(we3));
  LUT5 #(
    .INIT(32'h4F444044)) 
    sum_carry__0_i_1
       (.I0(\addressM[0]_0 ),
        .I1(clk_0[7]),
        .I2(Instr[3]),
        .I3(Instr[0]),
        .I4(Q[7]),
        .O(\q_reg[13]_0 [6]));
  LUT5 #(
    .INIT(32'h4F444044)) 
    sum_carry__0_i_2
       (.I0(\addressM[0]_0 ),
        .I1(clk_0[6]),
        .I2(Instr[3]),
        .I3(Instr[0]),
        .I4(Q[6]),
        .O(\q_reg[13]_0 [5]));
  LUT5 #(
    .INIT(32'h4F444044)) 
    sum_carry__0_i_3
       (.I0(\addressM[0]_0 ),
        .I1(clk_0[5]),
        .I2(Instr[3]),
        .I3(Instr[0]),
        .I4(Q[5]),
        .O(\q_reg[13]_0 [4]));
  LUT5 #(
    .INIT(32'h4F444044)) 
    sum_carry__0_i_4
       (.I0(\addressM[0]_0 ),
        .I1(clk_0[4]),
        .I2(Instr[3]),
        .I3(Instr[0]),
        .I4(Q[4]),
        .O(\q_reg[13]_0 [3]));
  LUT6 #(
    .INIT(64'hF4040BFB0BFBF404)) 
    sum_carry__0_i_5
       (.I0(\addressM[0]_0 ),
        .I1(clk_0[7]),
        .I2(\addressM[0]_1 ),
        .I3(Q[7]),
        .I4(clk_5),
        .I5(ALUControl),
        .O(\q_reg[7]_2 [3]));
  LUT6 #(
    .INIT(64'hF4040BFB0BFBF404)) 
    sum_carry__0_i_6
       (.I0(\addressM[0]_0 ),
        .I1(clk_0[6]),
        .I2(\addressM[0]_1 ),
        .I3(Q[6]),
        .I4(clk_4),
        .I5(ALUControl),
        .O(\q_reg[7]_2 [2]));
  LUT6 #(
    .INIT(64'hF4040BFB0BFBF404)) 
    sum_carry__0_i_7
       (.I0(\addressM[0]_0 ),
        .I1(clk_0[5]),
        .I2(\addressM[0]_1 ),
        .I3(Q[5]),
        .I4(clk_3),
        .I5(ALUControl),
        .O(\q_reg[7]_2 [1]));
  LUT6 #(
    .INIT(64'h0BFBF404F4040BFB)) 
    sum_carry__0_i_8
       (.I0(\addressM[0]_0 ),
        .I1(clk_0[4]),
        .I2(\addressM[0]_1 ),
        .I3(Q[4]),
        .I4(\WriteData[4]_INST_0_1 ),
        .I5(ALUControl),
        .O(\q_reg[7]_2 [0]));
  LUT6 #(
    .INIT(64'hFFB80000FFB8FFFF)) 
    sum_carry__0_i_9
       (.I0(\addressM[4]_4 ),
        .I1(\addressM[4]_3 ),
        .I2(\addressM[4]_2 ),
        .I3(\addressM[4]_1 ),
        .I4(\addressM[14] ),
        .I5(WriteData[4]),
        .O(\WriteData[4]_INST_0_1 ));
  LUT5 #(
    .INIT(32'h4F444044)) 
    sum_carry__1_i_1
       (.I0(\addressM[0]_0 ),
        .I1(clk_0[11]),
        .I2(Instr[3]),
        .I3(Instr[0]),
        .I4(Q[11]),
        .O(\q_reg[13]_0 [8]));
  LUT5 #(
    .INIT(32'h4F444044)) 
    sum_carry__1_i_2
       (.I0(\addressM[0]_0 ),
        .I1(clk_0[9]),
        .I2(Instr[3]),
        .I3(Instr[0]),
        .I4(Q[9]),
        .O(\q_reg[13]_0 [7]));
  LUT6 #(
    .INIT(64'hF4040BFB0BFBF404)) 
    sum_carry__1_i_3
       (.I0(\addressM[0]_0 ),
        .I1(clk_0[11]),
        .I2(\addressM[0]_1 ),
        .I3(Q[11]),
        .I4(clk_9),
        .I5(ALUControl),
        .O(\q_reg[11] [3]));
  LUT6 #(
    .INIT(64'hF4040BFB0BFBF404)) 
    sum_carry__1_i_4
       (.I0(\addressM[0]_0 ),
        .I1(clk_0[10]),
        .I2(\addressM[0]_1 ),
        .I3(Q[10]),
        .I4(clk_23),
        .I5(ALUControl),
        .O(\q_reg[11] [2]));
  LUT6 #(
    .INIT(64'hF4040BFB0BFBF404)) 
    sum_carry__1_i_5
       (.I0(\addressM[0]_0 ),
        .I1(clk_0[9]),
        .I2(\addressM[0]_1 ),
        .I3(Q[9]),
        .I4(clk_8),
        .I5(ALUControl),
        .O(\q_reg[11] [1]));
  LUT6 #(
    .INIT(64'h0BFBF404F4040BFB)) 
    sum_carry__1_i_6
       (.I0(\addressM[0]_0 ),
        .I1(clk_0[8]),
        .I2(\addressM[0]_1 ),
        .I3(Q[8]),
        .I4(clk_6),
        .I5(ALUControl),
        .O(\q_reg[11] [0]));
  LUT5 #(
    .INIT(32'h4F444044)) 
    sum_carry__2_i_2
       (.I0(\addressM[0]_0 ),
        .I1(clk_0[13]),
        .I2(Instr[3]),
        .I3(Instr[0]),
        .I4(Q[13]),
        .O(\q_reg[13]_0 [9]));
  LUT6 #(
    .INIT(64'h88B87747774788B8)) 
    sum_carry__2_i_3
       (.I0(Q[15]),
        .I1(\addressM[0]_1 ),
        .I2(clk_0[15]),
        .I3(\addressM[0]_0 ),
        .I4(\ALUResult[15]_INST_0_i_1_n_0 ),
        .I5(ALUControl),
        .O(\q_reg[15] [3]));
  LUT6 #(
    .INIT(64'h0BFBF404F4040BFB)) 
    sum_carry__2_i_4
       (.I0(\addressM[0]_0 ),
        .I1(clk_0[14]),
        .I2(\addressM[0]_1 ),
        .I3(Q[14]),
        .I4(clk_21),
        .I5(ALUControl),
        .O(\q_reg[15] [2]));
  LUT6 #(
    .INIT(64'hF4040BFB0BFBF404)) 
    sum_carry__2_i_5
       (.I0(\addressM[0]_0 ),
        .I1(clk_0[13]),
        .I2(\addressM[0]_1 ),
        .I3(Q[13]),
        .I4(clk_11),
        .I5(ALUControl),
        .O(\q_reg[15] [1]));
  LUT6 #(
    .INIT(64'h0BFBF404F4040BFB)) 
    sum_carry__2_i_6
       (.I0(\addressM[0]_0 ),
        .I1(clk_0[12]),
        .I2(\addressM[0]_1 ),
        .I3(Q[12]),
        .I4(clk_10),
        .I5(ALUControl),
        .O(\q_reg[15] [0]));
  LUT6 #(
    .INIT(64'hF4040BFB0BFBF404)) 
    sum_carry__3_i_1
       (.I0(\addressM[0]_0 ),
        .I1(clk_0[19]),
        .I2(\addressM[0]_1 ),
        .I3(Q[19]),
        .I4(clk_14),
        .I5(ALUControl),
        .O(\q_reg[19]_0 [3]));
  LUT6 #(
    .INIT(64'hF4040BFB0BFBF404)) 
    sum_carry__3_i_2
       (.I0(\addressM[0]_0 ),
        .I1(clk_0[18]),
        .I2(\addressM[0]_1 ),
        .I3(Q[18]),
        .I4(clk_24),
        .I5(ALUControl),
        .O(\q_reg[19]_0 [2]));
  LUT6 #(
    .INIT(64'hF4040BFB0BFBF404)) 
    sum_carry__3_i_3
       (.I0(\addressM[0]_0 ),
        .I1(clk_0[17]),
        .I2(\addressM[0]_1 ),
        .I3(Q[17]),
        .I4(clk_13),
        .I5(ALUControl),
        .O(\q_reg[19]_0 [1]));
  LUT6 #(
    .INIT(64'hF4040BFB0BFBF404)) 
    sum_carry__3_i_4
       (.I0(\addressM[0]_0 ),
        .I1(clk_0[16]),
        .I2(\addressM[0]_1 ),
        .I3(Q[16]),
        .I4(clk_12),
        .I5(ALUControl),
        .O(\q_reg[19]_0 [0]));
  LUT6 #(
    .INIT(64'h0BFBF404F4040BFB)) 
    sum_carry__4_i_1
       (.I0(\addressM[0]_0 ),
        .I1(clk_0[23]),
        .I2(\addressM[0]_1 ),
        .I3(Q[23]),
        .I4(clk_28),
        .I5(ALUControl),
        .O(\q_reg[23]_0 [3]));
  LUT6 #(
    .INIT(64'h0BFBF404F4040BFB)) 
    sum_carry__4_i_2
       (.I0(\addressM[0]_0 ),
        .I1(clk_0[22]),
        .I2(\addressM[0]_1 ),
        .I3(Q[22]),
        .I4(clk_27),
        .I5(ALUControl),
        .O(\q_reg[23]_0 [2]));
  LUT6 #(
    .INIT(64'h0BFBF404F4040BFB)) 
    sum_carry__4_i_3
       (.I0(\addressM[0]_0 ),
        .I1(clk_0[21]),
        .I2(\addressM[0]_1 ),
        .I3(Q[21]),
        .I4(clk_26),
        .I5(ALUControl),
        .O(\q_reg[23]_0 [1]));
  LUT6 #(
    .INIT(64'h0BFBF404F4040BFB)) 
    sum_carry__4_i_4
       (.I0(\addressM[0]_0 ),
        .I1(clk_0[20]),
        .I2(\addressM[0]_1 ),
        .I3(Q[20]),
        .I4(clk_25),
        .I5(ALUControl),
        .O(\q_reg[23]_0 [0]));
  LUT6 #(
    .INIT(64'h0BFBF404F4040BFB)) 
    sum_carry__5_i_1
       (.I0(\addressM[0]_0 ),
        .I1(clk_0[27]),
        .I2(\addressM[0]_1 ),
        .I3(Q[27]),
        .I4(clk_16),
        .I5(ALUControl),
        .O(\q_reg[27] [3]));
  LUT6 #(
    .INIT(64'h0BFBF404F4040BFB)) 
    sum_carry__5_i_2
       (.I0(\addressM[0]_0 ),
        .I1(clk_0[26]),
        .I2(\addressM[0]_1 ),
        .I3(Q[26]),
        .I4(clk_17),
        .I5(ALUControl),
        .O(\q_reg[27] [2]));
  LUT6 #(
    .INIT(64'h0BFBF404F4040BFB)) 
    sum_carry__5_i_3
       (.I0(\addressM[0]_0 ),
        .I1(clk_0[25]),
        .I2(\addressM[0]_1 ),
        .I3(Q[25]),
        .I4(clk_18),
        .I5(ALUControl),
        .O(\q_reg[27] [1]));
  LUT6 #(
    .INIT(64'h0BFBF404F4040BFB)) 
    sum_carry__5_i_4
       (.I0(\addressM[0]_0 ),
        .I1(clk_0[24]),
        .I2(\addressM[0]_1 ),
        .I3(Q[24]),
        .I4(clk_19),
        .I5(ALUControl),
        .O(\q_reg[27] [0]));
  LUT6 #(
    .INIT(64'h6A6A656A95959A95)) 
    sum_carry__6_i_2
       (.I0(ALUControl),
        .I1(Instr[29]),
        .I2(\addressM[14] ),
        .I3(rd20[31]),
        .I4(\writeDataM[15] ),
        .I5(\q_reg[31] ),
        .O(clk_1[3]));
  LUT6 #(
    .INIT(64'h774788B888B87747)) 
    sum_carry__6_i_3
       (.I0(Q[30]),
        .I1(\addressM[0]_1 ),
        .I2(clk_0[30]),
        .I3(\addressM[0]_0 ),
        .I4(clk_22),
        .I5(ALUControl),
        .O(clk_1[2]));
  LUT6 #(
    .INIT(64'h0BFBF404F4040BFB)) 
    sum_carry__6_i_4
       (.I0(\addressM[0]_0 ),
        .I1(clk_0[29]),
        .I2(\addressM[0]_1 ),
        .I3(Q[29]),
        .I4(clk_29),
        .I5(ALUControl),
        .O(clk_1[1]));
  LUT6 #(
    .INIT(64'h0BFBF404F4040BFB)) 
    sum_carry__6_i_5
       (.I0(\addressM[0]_0 ),
        .I1(clk_0[28]),
        .I2(\addressM[0]_1 ),
        .I3(Q[28]),
        .I4(clk_15),
        .I5(ALUControl),
        .O(clk_1[0]));
  LUT2 #(
    .INIT(4'h6)) 
    sum_carry_i_1
       (.I0(ALUControl),
        .I1(clk_7),
        .O(\ALUResult[31]_INST_0_i_10_0 ));
  LUT5 #(
    .INIT(32'h4F444044)) 
    sum_carry_i_2
       (.I0(\addressM[0]_0 ),
        .I1(clk_0[3]),
        .I2(Instr[3]),
        .I3(Instr[0]),
        .I4(Q[3]),
        .O(\q_reg[13]_0 [2]));
  LUT5 #(
    .INIT(32'h4F444044)) 
    sum_carry_i_3
       (.I0(\addressM[0]_0 ),
        .I1(clk_0[1]),
        .I2(Instr[3]),
        .I3(Instr[0]),
        .I4(Q[1]),
        .O(\q_reg[13]_0 [1]));
  LUT5 #(
    .INIT(32'h4F444044)) 
    sum_carry_i_4
       (.I0(\addressM[0]_0 ),
        .I1(clk_0[0]),
        .I2(Instr[3]),
        .I3(Instr[0]),
        .I4(Q[0]),
        .O(\q_reg[13]_0 [0]));
  LUT6 #(
    .INIT(64'hF4040BFB0BFBF404)) 
    sum_carry_i_5
       (.I0(\addressM[0]_0 ),
        .I1(clk_0[3]),
        .I2(\addressM[0]_1 ),
        .I3(Q[3]),
        .I4(\WriteData[3]_INST_0_0 ),
        .I5(ALUControl),
        .O(S[3]));
  LUT6 #(
    .INIT(64'hF4040BFB0BFBF404)) 
    sum_carry_i_6
       (.I0(\addressM[0]_0 ),
        .I1(clk_0[2]),
        .I2(\addressM[0]_1 ),
        .I3(Q[2]),
        .I4(\ALUResult[30]_INST_0_i_6 ),
        .I5(ALUControl),
        .O(S[2]));
  LUT6 #(
    .INIT(64'h0BFBF404F4040BFB)) 
    sum_carry_i_7
       (.I0(\addressM[0]_0 ),
        .I1(clk_0[1]),
        .I2(\addressM[0]_1 ),
        .I3(Q[1]),
        .I4(clk_2),
        .I5(ALUControl),
        .O(S[1]));
  LUT6 #(
    .INIT(64'hB0BBBFBB4F444044)) 
    sum_carry_i_8
       (.I0(\addressM[0]_0 ),
        .I1(clk_0[0]),
        .I2(Instr[3]),
        .I3(Instr[0]),
        .I4(Q[0]),
        .I5(ALUControl),
        .O(S[0]));
  LUT4 #(
    .INIT(16'hF110)) 
    w_carry__0_i_1
       (.I0(clk_21),
        .I1(SrcA[4]),
        .I2(\ALUResult[15]_INST_0_i_1_n_0 ),
        .I3(\ALUResult[15]_INST_0_i_2_n_0 ),
        .O(\q_reg[14]_0 [2]));
  LUT6 #(
    .INIT(64'h65AA656565556565)) 
    w_carry__0_i_10
       (.I0(clk_11),
        .I1(\addressM[0]_0 ),
        .I2(clk_0[13]),
        .I3(Instr[3]),
        .I4(Instr[0]),
        .I5(Q[13]),
        .O(w_carry__0_i_10_n_0));
  LUT6 #(
    .INIT(64'h65AA656565556565)) 
    w_carry__0_i_11
       (.I0(clk_9),
        .I1(\addressM[0]_0 ),
        .I2(clk_0[11]),
        .I3(Instr[3]),
        .I4(Instr[0]),
        .I5(Q[11]),
        .O(w_carry__0_i_11_n_0));
  LUT4 #(
    .INIT(16'hF110)) 
    w_carry__0_i_2
       (.I0(clk_10),
        .I1(SrcA[3]),
        .I2(clk_11),
        .I3(\addressM[13] ),
        .O(\q_reg[14]_0 [1]));
  LUT4 #(
    .INIT(16'hF110)) 
    w_carry__0_i_4
       (.I0(clk_6),
        .I1(SrcA[1]),
        .I2(clk_8),
        .I3(\addressM[9] ),
        .O(\q_reg[14]_0 [0]));
  LUT6 #(
    .INIT(64'h2A2A202A80808A80)) 
    w_carry__0_i_5
       (.I0(w_carry__0_i_9_n_0),
        .I1(Q[14]),
        .I2(\addressM[0]_1 ),
        .I3(clk_0[14]),
        .I4(\addressM[0]_0 ),
        .I5(clk_21),
        .O(\q_reg[14] [2]));
  LUT6 #(
    .INIT(64'h2A2A202A80808A80)) 
    w_carry__0_i_6
       (.I0(w_carry__0_i_10_n_0),
        .I1(Q[12]),
        .I2(\addressM[0]_1 ),
        .I3(clk_0[12]),
        .I4(\addressM[0]_0 ),
        .I5(clk_10),
        .O(\q_reg[14] [1]));
  LUT6 #(
    .INIT(64'h80808A802A2A202A)) 
    w_carry__0_i_7
       (.I0(w_carry__0_i_11_n_0),
        .I1(Q[10]),
        .I2(\addressM[0]_1 ),
        .I3(clk_0[10]),
        .I4(\addressM[0]_0 ),
        .I5(clk_23),
        .O(\q_reg[14] [0]));
  LUT6 #(
    .INIT(64'h59555955A9AA5955)) 
    w_carry__0_i_9
       (.I0(\ALUResult[15]_INST_0_i_1_n_0 ),
        .I1(Q[15]),
        .I2(Instr[3]),
        .I3(Instr[0]),
        .I4(clk_0[15]),
        .I5(\addressM[0]_0 ),
        .O(w_carry__0_i_9_n_0));
  LUT4 #(
    .INIT(16'h011F)) 
    w_carry__1_i_1
       (.I0(clk_27),
        .I1(SrcA[11]),
        .I2(clk_28),
        .I3(SrcA[12]),
        .O(\q_reg[22] [1]));
  LUT4 #(
    .INIT(16'h011F)) 
    w_carry__1_i_2
       (.I0(clk_25),
        .I1(SrcA[9]),
        .I2(clk_26),
        .I3(SrcA[10]),
        .O(\q_reg[22] [0]));
  LUT4 #(
    .INIT(16'h22B2)) 
    w_carry__2_i_1
       (.I0(\q_reg[31] ),
        .I1(clk_20),
        .I2(\q_reg[30] ),
        .I3(clk_22),
        .O(\q_reg[31]_3 [3]));
  LUT4 #(
    .INIT(16'h011F)) 
    w_carry__2_i_2
       (.I0(clk_15),
        .I1(SrcA[17]),
        .I2(clk_29),
        .I3(SrcA[18]),
        .O(\q_reg[31]_3 [2]));
  LUT4 #(
    .INIT(16'h011F)) 
    w_carry__2_i_3
       (.I0(clk_17),
        .I1(SrcA[15]),
        .I2(clk_16),
        .I3(SrcA[16]),
        .O(\q_reg[31]_3 [1]));
  LUT4 #(
    .INIT(16'h011F)) 
    w_carry__2_i_4
       (.I0(clk_19),
        .I1(SrcA[13]),
        .I2(clk_18),
        .I3(SrcA[14]),
        .O(\q_reg[31]_3 [0]));
  LUT6 #(
    .INIT(64'h0045554555100010)) 
    w_carry__2_i_5
       (.I0(\q_reg[31]_4 ),
        .I1(\addressM[0]_0 ),
        .I2(clk_0[30]),
        .I3(\addressM[0]_1 ),
        .I4(Q[30]),
        .I5(clk_22),
        .O(\q_reg[30]_0 ));
  LUT4 #(
    .INIT(16'hF880)) 
    w_carry_i_1
       (.I0(clk_4),
        .I1(\addressM[6] ),
        .I2(clk_5),
        .I3(\addressM[7] ),
        .O(DI));
  LUT6 #(
    .INIT(64'hFB0BFBFB04F40404)) 
    w_carry_i_10
       (.I0(\writeDataM[15] ),
        .I1(rd20[7]),
        .I2(\addressM[14] ),
        .I3(\addressM[4]_1 ),
        .I4(Instr[25]),
        .I5(\addressM[7] ),
        .O(w_carry_i_10_n_0));
  LUT6 #(
    .INIT(64'h04F40404FB0BFBFB)) 
    w_carry_i_11
       (.I0(\writeDataM[15] ),
        .I1(rd20[5]),
        .I2(\addressM[14] ),
        .I3(\addressM[4]_1 ),
        .I4(Instr[23]),
        .I5(\addressM[5] ),
        .O(w_carry_i_11_n_0));
  LUT6 #(
    .INIT(64'h80808A802A2A202A)) 
    w_carry_i_5
       (.I0(w_carry_i_10_n_0),
        .I1(Q[6]),
        .I2(\addressM[0]_1 ),
        .I3(clk_0[6]),
        .I4(\addressM[0]_0 ),
        .I5(clk_4),
        .O(\q_reg[6]_1 [1]));
  LUT6 #(
    .INIT(64'h1515101540404540)) 
    w_carry_i_6
       (.I0(w_carry_i_11_n_0),
        .I1(Q[4]),
        .I2(\addressM[0]_1 ),
        .I3(clk_0[4]),
        .I4(\addressM[0]_0 ),
        .I5(\WriteData[4]_INST_0_1 ),
        .O(\q_reg[6]_1 [0]));
endmodule

(* ORIG_REF_NAME = "riscvsingle" *) 
module design_1_top_0_0_riscvsingle
   (clk,
    reset,
    PC,
    Instr,
    MemWrite,
    ALUResult,
    WriteData,
    ReadData,
    MemStrobe,
    PCReady);
  input clk;
  input reset;
  output [31:0]PC;
  input [31:0]Instr;
  output MemWrite;
  output [31:0]ALUResult;
  output [31:0]WriteData;
  input [31:0]ReadData;
  output MemStrobe;
  input PCReady;

  wire [31:0]ALUResult;
  wire [31:0]Instr;
  wire MemStrobe;
  wire MemWrite;
  wire [31:0]PC;
  wire PCReady;
  wire [31:0]ReadData;
  wire [31:0]WriteData;
  wire clk;
  wire reset;

  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h1)) 
    MemStrobe_INST_0
       (.I0(Instr[6]),
        .I1(Instr[4]),
        .O(MemStrobe));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'h04)) 
    MemWrite_INST_0
       (.I0(Instr[6]),
        .I1(Instr[5]),
        .I2(Instr[4]),
        .O(MemWrite));
  design_1_top_0_0_datapath dp
       (.ALUResult(ALUResult),
        .Instr(Instr[31:2]),
        .PCReady(PCReady),
        .Q(PC),
        .ReadData(ReadData),
        .WriteData(WriteData),
        .clk(clk),
        .reset(reset));
endmodule

(* ORIG_REF_NAME = "top" *) (* keep_hierarchy = "soft" *) 
module design_1_top_0_0_top
   (clk,
    reset,
    doneM,
    readDataM,
    writeDataM,
    addressM,
    DRW,
    AXIStart);
  input clk;
  (* mark_debug = "true" *) input reset;
  input doneM;
  (* mark_debug = "true" *) input [31:0]readDataM;
  (* mark_debug = "true" *) output [31:0]writeDataM;
  (* mark_debug = "true" *) output [31:0]addressM;
  output DRW;
  output AXIStart;

  wire AXIStart;
  wire DRW;
  (* MARK_DEBUG *) wire [31:0]Instr;
  wire MStrobe;
  wire MemWrite;
  (* MARK_DEBUG *) wire [31:0]PC;
  wire PCReady;
  (* MARK_DEBUG *) wire [31:0]addressM;
  wire clk;
  wire doneM;
  (* MARK_DEBUG *) wire [31:0]readDataM;
  (* MARK_DEBUG *) wire reset;
  (* MARK_DEBUG *) wire [31:0]writeDataM;

  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(1'b0),
        .O(Instr[31]));
  LUT1 #(
    .INIT(2'h2)) 
    i_1
       (.I0(1'b0),
        .O(Instr[30]));
  LUT1 #(
    .INIT(2'h2)) 
    i_10
       (.I0(1'b0),
        .O(Instr[21]));
  LUT1 #(
    .INIT(2'h2)) 
    i_11
       (.I0(1'b0),
        .O(Instr[20]));
  LUT1 #(
    .INIT(2'h2)) 
    i_12
       (.I0(1'b0),
        .O(Instr[19]));
  LUT1 #(
    .INIT(2'h2)) 
    i_13
       (.I0(1'b0),
        .O(Instr[18]));
  LUT1 #(
    .INIT(2'h2)) 
    i_14
       (.I0(1'b0),
        .O(Instr[17]));
  LUT1 #(
    .INIT(2'h2)) 
    i_15
       (.I0(1'b0),
        .O(Instr[16]));
  LUT1 #(
    .INIT(2'h2)) 
    i_16
       (.I0(1'b0),
        .O(Instr[15]));
  LUT1 #(
    .INIT(2'h2)) 
    i_17
       (.I0(1'b0),
        .O(Instr[14]));
  LUT1 #(
    .INIT(2'h2)) 
    i_18
       (.I0(1'b0),
        .O(Instr[13]));
  LUT1 #(
    .INIT(2'h2)) 
    i_19
       (.I0(1'b0),
        .O(Instr[12]));
  LUT1 #(
    .INIT(2'h2)) 
    i_2
       (.I0(1'b0),
        .O(Instr[29]));
  LUT1 #(
    .INIT(2'h2)) 
    i_20
       (.I0(1'b0),
        .O(Instr[11]));
  LUT1 #(
    .INIT(2'h2)) 
    i_21
       (.I0(1'b0),
        .O(Instr[10]));
  LUT1 #(
    .INIT(2'h2)) 
    i_22
       (.I0(1'b0),
        .O(Instr[9]));
  LUT1 #(
    .INIT(2'h2)) 
    i_23
       (.I0(1'b0),
        .O(Instr[8]));
  LUT1 #(
    .INIT(2'h2)) 
    i_24
       (.I0(1'b0),
        .O(Instr[7]));
  LUT1 #(
    .INIT(2'h2)) 
    i_25
       (.I0(1'b0),
        .O(Instr[6]));
  LUT1 #(
    .INIT(2'h2)) 
    i_26
       (.I0(1'b0),
        .O(Instr[5]));
  LUT1 #(
    .INIT(2'h2)) 
    i_27
       (.I0(1'b0),
        .O(Instr[4]));
  LUT1 #(
    .INIT(2'h2)) 
    i_28
       (.I0(1'b0),
        .O(Instr[3]));
  LUT1 #(
    .INIT(2'h2)) 
    i_29
       (.I0(1'b0),
        .O(Instr[2]));
  LUT1 #(
    .INIT(2'h2)) 
    i_3
       (.I0(1'b0),
        .O(Instr[28]));
  LUT1 #(
    .INIT(2'h2)) 
    i_30
       (.I0(1'b0),
        .O(Instr[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_31
       (.I0(1'b0),
        .O(Instr[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_4
       (.I0(1'b0),
        .O(Instr[27]));
  LUT1 #(
    .INIT(2'h2)) 
    i_5
       (.I0(1'b0),
        .O(Instr[26]));
  LUT1 #(
    .INIT(2'h2)) 
    i_6
       (.I0(1'b0),
        .O(Instr[25]));
  LUT1 #(
    .INIT(2'h2)) 
    i_7
       (.I0(1'b0),
        .O(Instr[24]));
  LUT1 #(
    .INIT(2'h2)) 
    i_8
       (.I0(1'b0),
        .O(Instr[23]));
  LUT1 #(
    .INIT(2'h2)) 
    i_9
       (.I0(1'b0),
        .O(Instr[22]));
  (* KEEP_HIERARCHY = "soft" *) 
  design_1_top_0_0_MemControl memcontrol
       (.AXIstart(AXIStart),
        .DRW(DRW),
        .Done(PCReady),
        .MStrobe(MStrobe),
        .MemWrite(MemWrite),
        .Trigger(doneM),
        .clk(clk),
        .reset(reset));
  (* KEEP_HIERARCHY = "soft" *) 
  design_1_top_0_0_riscvsingle riscvsingle
       (.ALUResult(addressM),
        .Instr({Instr[31:2],1'b0,1'b0}),
        .MemStrobe(MStrobe),
        .MemWrite(MemWrite),
        .PC(PC),
        .PCReady(PCReady),
        .ReadData(readDataM),
        .WriteData(writeDataM),
        .clk(clk),
        .reset(reset));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
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
    reg GRESTORE_int;

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

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

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

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
