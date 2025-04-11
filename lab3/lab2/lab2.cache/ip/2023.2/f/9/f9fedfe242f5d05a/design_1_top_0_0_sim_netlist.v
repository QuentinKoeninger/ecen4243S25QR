// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
// Date        : Fri Apr 11 17:21:14 2025
// Host        : CEAT-ENDV350-11L running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_top_0_0_sim_netlist.v
// Design      : design_1_top_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MemControl
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

  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT3 #(
    .INIT(8'h06)) 
    AXIstart_INST_0
       (.I0(state[2]),
        .I1(state[0]),
        .I2(state[1]),
        .O(AXIstart));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT3 #(
    .INIT(8'h15)) 
    DRW_INST_0
       (.I0(state[2]),
        .I1(state[1]),
        .I2(state[0]),
        .O(DRW));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
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

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adder
   (BranchTargetE,
    Q,
    S,
    \q_reg[7] ,
    \q_reg[11] ,
    \q_reg[15] ,
    \q_reg[19] ,
    \q_reg[23] ,
    \q_reg[27] ,
    \q_reg[31] );
  output [31:0]BranchTargetE;
  input [30:0]Q;
  input [3:0]S;
  input [3:0]\q_reg[7] ;
  input [3:0]\q_reg[11] ;
  input [3:0]\q_reg[15] ;
  input [3:0]\q_reg[19] ;
  input [3:0]\q_reg[23] ;
  input [3:0]\q_reg[27] ;
  input [3:0]\q_reg[31] ;

  wire [31:0]BranchTargetE;
  wire [30:0]Q;
  wire [3:0]S;
  wire [3:0]\q_reg[11] ;
  wire [3:0]\q_reg[15] ;
  wire [3:0]\q_reg[19] ;
  wire [3:0]\q_reg[23] ;
  wire [3:0]\q_reg[27] ;
  wire [3:0]\q_reg[31] ;
  wire [3:0]\q_reg[7] ;
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
        .O(BranchTargetE[3:0]),
        .S(S));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 y_carry__0
       (.CI(y_carry_n_0),
        .CO({y_carry__0_n_0,y_carry__0_n_1,y_carry__0_n_2,y_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(Q[7:4]),
        .O(BranchTargetE[7:4]),
        .S(\q_reg[7] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 y_carry__1
       (.CI(y_carry__0_n_0),
        .CO({y_carry__1_n_0,y_carry__1_n_1,y_carry__1_n_2,y_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(Q[11:8]),
        .O(BranchTargetE[11:8]),
        .S(\q_reg[11] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 y_carry__2
       (.CI(y_carry__1_n_0),
        .CO({y_carry__2_n_0,y_carry__2_n_1,y_carry__2_n_2,y_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI(Q[15:12]),
        .O(BranchTargetE[15:12]),
        .S(\q_reg[15] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 y_carry__3
       (.CI(y_carry__2_n_0),
        .CO({y_carry__3_n_0,y_carry__3_n_1,y_carry__3_n_2,y_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI(Q[19:16]),
        .O(BranchTargetE[19:16]),
        .S(\q_reg[19] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 y_carry__4
       (.CI(y_carry__3_n_0),
        .CO({y_carry__4_n_0,y_carry__4_n_1,y_carry__4_n_2,y_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI(Q[23:20]),
        .O(BranchTargetE[23:20]),
        .S(\q_reg[23] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 y_carry__5
       (.CI(y_carry__4_n_0),
        .CO({y_carry__5_n_0,y_carry__5_n_1,y_carry__5_n_2,y_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI(Q[27:24]),
        .O(BranchTargetE[27:24]),
        .S(\q_reg[27] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 y_carry__6
       (.CI(y_carry__5_n_0),
        .CO({NLW_y_carry__6_CO_UNCONNECTED[3],y_carry__6_n_1,y_carry__6_n_2,y_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,Q[30:28]}),
        .O(BranchTargetE[31:28]),
        .S(\q_reg[31] ));
endmodule

(* ORIG_REF_NAME = "adder" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adder_0
   (PCPlus4F,
    Q);
  output [28:0]PCPlus4F;
  input [29:0]Q;

  wire [28:0]PCPlus4F;
  wire [29:0]Q;
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
  wire y_carry_n_0;
  wire y_carry_n_1;
  wire y_carry_n_2;
  wire y_carry_n_3;
  wire [3:0]NLW_y_carry__6_CO_UNCONNECTED;
  wire [3:1]NLW_y_carry__6_O_UNCONNECTED;

  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 y_carry
       (.CI(1'b0),
        .CO({y_carry_n_0,y_carry_n_1,y_carry_n_2,y_carry_n_3}),
        .CYINIT(Q[0]),
        .DI(Q[4:1]),
        .O(PCPlus4F[3:0]),
        .S(Q[4:1]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 y_carry__0
       (.CI(y_carry_n_0),
        .CO({y_carry__0_n_0,y_carry__0_n_1,y_carry__0_n_2,y_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(Q[8:5]),
        .O(PCPlus4F[7:4]),
        .S(Q[8:5]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 y_carry__1
       (.CI(y_carry__0_n_0),
        .CO({y_carry__1_n_0,y_carry__1_n_1,y_carry__1_n_2,y_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(Q[12:9]),
        .O(PCPlus4F[11:8]),
        .S(Q[12:9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 y_carry__2
       (.CI(y_carry__1_n_0),
        .CO({y_carry__2_n_0,y_carry__2_n_1,y_carry__2_n_2,y_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI(Q[16:13]),
        .O(PCPlus4F[15:12]),
        .S(Q[16:13]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 y_carry__3
       (.CI(y_carry__2_n_0),
        .CO({y_carry__3_n_0,y_carry__3_n_1,y_carry__3_n_2,y_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI(Q[20:17]),
        .O(PCPlus4F[19:16]),
        .S(Q[20:17]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 y_carry__4
       (.CI(y_carry__3_n_0),
        .CO({y_carry__4_n_0,y_carry__4_n_1,y_carry__4_n_2,y_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI(Q[24:21]),
        .O(PCPlus4F[23:20]),
        .S(Q[24:21]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 y_carry__5
       (.CI(y_carry__4_n_0),
        .CO({y_carry__5_n_0,y_carry__5_n_1,y_carry__5_n_2,y_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI(Q[28:25]),
        .O(PCPlus4F[27:24]),
        .S(Q[28:25]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 y_carry__6
       (.CI(y_carry__5_n_0),
        .CO(NLW_y_carry__6_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_y_carry__6_O_UNCONNECTED[3:1],PCPlus4F[28]}),
        .S({1'b0,1'b0,1'b0,Q[29]}));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_alu
   (sum,
    O,
    CO,
    data8,
    i__carry__6_i_7,
    \q[104]_i_3 ,
    SrcAE,
    S,
    \q[108]_i_3 ,
    \q[112]_i_3 ,
    \q[116]_i_3 ,
    \q[120]_i_3 ,
    DI,
    \q[124]_i_3 ,
    \q[128]_i_3 ,
    \q[128]_i_3_0 ,
    \q[132]_i_3 ,
    \q[132]_i_3_0 ,
    ltu_carry__0_0,
    ltu_carry__0_1,
    ltu_carry__1_0,
    ltu_carry__1_1,
    ltu_carry__2_0,
    ltu_carry__2_1,
    \q_reg[104] ,
    \q_reg[104]_0 ,
    data6,
    \q_reg[104]_1 ,
    \q[108]_i_2 ,
    \q[112]_i_2 ,
    \q[116]_i_2 ,
    \q[120]_i_2 ,
    \q_reg[127] ,
    \q_reg[131] ,
    \q_reg[134] );
  output [30:0]sum;
  output [0:0]O;
  output [0:0]CO;
  output [20:0]data8;
  output [10:0]i__carry__6_i_7;
  input \q[104]_i_3 ;
  input [19:0]SrcAE;
  input [3:0]S;
  input [3:0]\q[108]_i_3 ;
  input [3:0]\q[112]_i_3 ;
  input [3:0]\q[116]_i_3 ;
  input [3:0]\q[120]_i_3 ;
  input [3:0]DI;
  input [3:0]\q[124]_i_3 ;
  input [3:0]\q[128]_i_3 ;
  input [3:0]\q[128]_i_3_0 ;
  input [2:0]\q[132]_i_3 ;
  input [3:0]\q[132]_i_3_0 ;
  input [3:0]ltu_carry__0_0;
  input [3:0]ltu_carry__0_1;
  input [3:0]ltu_carry__1_0;
  input [3:0]ltu_carry__1_1;
  input [3:0]ltu_carry__2_0;
  input [3:0]ltu_carry__2_1;
  input [3:0]\q_reg[104] ;
  input [3:0]\q_reg[104]_0 ;
  input [30:0]data6;
  input [3:0]\q_reg[104]_1 ;
  input [3:0]\q[108]_i_2 ;
  input [3:0]\q[112]_i_2 ;
  input [3:0]\q[116]_i_2 ;
  input [3:0]\q[120]_i_2 ;
  input [3:0]\q_reg[127] ;
  input [3:0]\q_reg[131] ;
  input [3:0]\q_reg[134] ;

  wire [0:0]CO;
  wire [3:0]DI;
  wire [0:0]O;
  wire [3:0]S;
  wire [19:0]SrcAE;
  wire [30:0]data6;
  wire [20:0]data8;
  wire [10:0]i__carry__6_i_7;
  wire [3:0]ltu_carry__0_0;
  wire [3:0]ltu_carry__0_1;
  wire ltu_carry__0_n_0;
  wire ltu_carry__0_n_1;
  wire ltu_carry__0_n_2;
  wire ltu_carry__0_n_3;
  wire [3:0]ltu_carry__1_0;
  wire [3:0]ltu_carry__1_1;
  wire ltu_carry__1_n_0;
  wire ltu_carry__1_n_1;
  wire ltu_carry__1_n_2;
  wire ltu_carry__1_n_3;
  wire [3:0]ltu_carry__2_0;
  wire [3:0]ltu_carry__2_1;
  wire ltu_carry__2_n_1;
  wire ltu_carry__2_n_2;
  wire ltu_carry__2_n_3;
  wire ltu_carry_n_0;
  wire ltu_carry_n_1;
  wire ltu_carry_n_2;
  wire ltu_carry_n_3;
  wire \q[104]_i_3 ;
  wire [3:0]\q[108]_i_2 ;
  wire [3:0]\q[108]_i_3 ;
  wire [3:0]\q[112]_i_2 ;
  wire [3:0]\q[112]_i_3 ;
  wire [3:0]\q[116]_i_2 ;
  wire [3:0]\q[116]_i_3 ;
  wire [3:0]\q[120]_i_2 ;
  wire [3:0]\q[120]_i_3 ;
  wire [3:0]\q[124]_i_3 ;
  wire [3:0]\q[128]_i_3 ;
  wire [3:0]\q[128]_i_3_0 ;
  wire [2:0]\q[132]_i_3 ;
  wire [3:0]\q[132]_i_3_0 ;
  wire [3:0]\q_reg[104] ;
  wire [3:0]\q_reg[104]_0 ;
  wire [3:0]\q_reg[104]_1 ;
  wire [3:0]\q_reg[127] ;
  wire [3:0]\q_reg[131] ;
  wire [3:0]\q_reg[134] ;
  wire \result0_inferred__5/i__carry__0_n_0 ;
  wire \result0_inferred__5/i__carry__0_n_1 ;
  wire \result0_inferred__5/i__carry__0_n_2 ;
  wire \result0_inferred__5/i__carry__0_n_3 ;
  wire \result0_inferred__5/i__carry__1_n_0 ;
  wire \result0_inferred__5/i__carry__1_n_1 ;
  wire \result0_inferred__5/i__carry__1_n_2 ;
  wire \result0_inferred__5/i__carry__1_n_3 ;
  wire \result0_inferred__5/i__carry__2_n_0 ;
  wire \result0_inferred__5/i__carry__2_n_1 ;
  wire \result0_inferred__5/i__carry__2_n_2 ;
  wire \result0_inferred__5/i__carry__2_n_3 ;
  wire \result0_inferred__5/i__carry__3_n_0 ;
  wire \result0_inferred__5/i__carry__3_n_1 ;
  wire \result0_inferred__5/i__carry__3_n_2 ;
  wire \result0_inferred__5/i__carry__3_n_3 ;
  wire \result0_inferred__5/i__carry__4_n_0 ;
  wire \result0_inferred__5/i__carry__4_n_1 ;
  wire \result0_inferred__5/i__carry__4_n_2 ;
  wire \result0_inferred__5/i__carry__4_n_3 ;
  wire \result0_inferred__5/i__carry__5_n_0 ;
  wire \result0_inferred__5/i__carry__5_n_1 ;
  wire \result0_inferred__5/i__carry__5_n_2 ;
  wire \result0_inferred__5/i__carry__5_n_3 ;
  wire \result0_inferred__5/i__carry__6_n_1 ;
  wire \result0_inferred__5/i__carry__6_n_2 ;
  wire \result0_inferred__5/i__carry__6_n_3 ;
  wire \result0_inferred__5/i__carry_n_0 ;
  wire \result0_inferred__5/i__carry_n_1 ;
  wire \result0_inferred__5/i__carry_n_2 ;
  wire \result0_inferred__5/i__carry_n_3 ;
  wire [30:0]sum;
  wire sum__0_carry__0_n_0;
  wire sum__0_carry__0_n_1;
  wire sum__0_carry__0_n_2;
  wire sum__0_carry__0_n_3;
  wire sum__0_carry__1_n_0;
  wire sum__0_carry__1_n_1;
  wire sum__0_carry__1_n_2;
  wire sum__0_carry__1_n_3;
  wire sum__0_carry__2_n_0;
  wire sum__0_carry__2_n_1;
  wire sum__0_carry__2_n_2;
  wire sum__0_carry__2_n_3;
  wire sum__0_carry__3_n_0;
  wire sum__0_carry__3_n_1;
  wire sum__0_carry__3_n_2;
  wire sum__0_carry__3_n_3;
  wire sum__0_carry__4_n_0;
  wire sum__0_carry__4_n_1;
  wire sum__0_carry__4_n_2;
  wire sum__0_carry__4_n_3;
  wire sum__0_carry__5_n_0;
  wire sum__0_carry__5_n_1;
  wire sum__0_carry__5_n_2;
  wire sum__0_carry__5_n_3;
  wire sum__0_carry__6_n_1;
  wire sum__0_carry__6_n_2;
  wire sum__0_carry__6_n_3;
  wire sum__0_carry_n_0;
  wire sum__0_carry_n_1;
  wire sum__0_carry_n_2;
  wire sum__0_carry_n_3;
  wire [3:0]NLW_ltu_carry_O_UNCONNECTED;
  wire [3:0]NLW_ltu_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_ltu_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_ltu_carry__2_O_UNCONNECTED;
  wire [3:3]\NLW_result0_inferred__5/i__carry__6_CO_UNCONNECTED ;
  wire [3:3]NLW_sum__0_carry__6_CO_UNCONNECTED;

  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 ltu_carry
       (.CI(1'b0),
        .CO({ltu_carry_n_0,ltu_carry_n_1,ltu_carry_n_2,ltu_carry_n_3}),
        .CYINIT(1'b0),
        .DI(ltu_carry__0_0),
        .O(NLW_ltu_carry_O_UNCONNECTED[3:0]),
        .S(ltu_carry__0_1));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 ltu_carry__0
       (.CI(ltu_carry_n_0),
        .CO({ltu_carry__0_n_0,ltu_carry__0_n_1,ltu_carry__0_n_2,ltu_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(ltu_carry__1_0),
        .O(NLW_ltu_carry__0_O_UNCONNECTED[3:0]),
        .S(ltu_carry__1_1));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 ltu_carry__1
       (.CI(ltu_carry__0_n_0),
        .CO({ltu_carry__1_n_0,ltu_carry__1_n_1,ltu_carry__1_n_2,ltu_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(ltu_carry__2_0),
        .O(NLW_ltu_carry__1_O_UNCONNECTED[3:0]),
        .S(ltu_carry__2_1));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 ltu_carry__2
       (.CI(ltu_carry__1_n_0),
        .CO({CO,ltu_carry__2_n_1,ltu_carry__2_n_2,ltu_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI(\q_reg[104] ),
        .O(NLW_ltu_carry__2_O_UNCONNECTED[3:0]),
        .S(\q_reg[104]_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \result0_inferred__5/i__carry 
       (.CI(1'b0),
        .CO({\result0_inferred__5/i__carry_n_0 ,\result0_inferred__5/i__carry_n_1 ,\result0_inferred__5/i__carry_n_2 ,\result0_inferred__5/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI(data6[3:0]),
        .O(data8[3:0]),
        .S(\q_reg[104]_1 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \result0_inferred__5/i__carry__0 
       (.CI(\result0_inferred__5/i__carry_n_0 ),
        .CO({\result0_inferred__5/i__carry__0_n_0 ,\result0_inferred__5/i__carry__0_n_1 ,\result0_inferred__5/i__carry__0_n_2 ,\result0_inferred__5/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI(data6[7:4]),
        .O(data8[7:4]),
        .S(\q[108]_i_2 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \result0_inferred__5/i__carry__1 
       (.CI(\result0_inferred__5/i__carry__0_n_0 ),
        .CO({\result0_inferred__5/i__carry__1_n_0 ,\result0_inferred__5/i__carry__1_n_1 ,\result0_inferred__5/i__carry__1_n_2 ,\result0_inferred__5/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI(data6[11:8]),
        .O(data8[11:8]),
        .S(\q[112]_i_2 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \result0_inferred__5/i__carry__2 
       (.CI(\result0_inferred__5/i__carry__1_n_0 ),
        .CO({\result0_inferred__5/i__carry__2_n_0 ,\result0_inferred__5/i__carry__2_n_1 ,\result0_inferred__5/i__carry__2_n_2 ,\result0_inferred__5/i__carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI(data6[15:12]),
        .O(data8[15:12]),
        .S(\q[116]_i_2 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \result0_inferred__5/i__carry__3 
       (.CI(\result0_inferred__5/i__carry__2_n_0 ),
        .CO({\result0_inferred__5/i__carry__3_n_0 ,\result0_inferred__5/i__carry__3_n_1 ,\result0_inferred__5/i__carry__3_n_2 ,\result0_inferred__5/i__carry__3_n_3 }),
        .CYINIT(1'b0),
        .DI(data6[19:16]),
        .O(data8[19:16]),
        .S(\q[120]_i_2 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \result0_inferred__5/i__carry__4 
       (.CI(\result0_inferred__5/i__carry__3_n_0 ),
        .CO({\result0_inferred__5/i__carry__4_n_0 ,\result0_inferred__5/i__carry__4_n_1 ,\result0_inferred__5/i__carry__4_n_2 ,\result0_inferred__5/i__carry__4_n_3 }),
        .CYINIT(1'b0),
        .DI(data6[23:20]),
        .O(i__carry__6_i_7[3:0]),
        .S(\q_reg[127] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \result0_inferred__5/i__carry__5 
       (.CI(\result0_inferred__5/i__carry__4_n_0 ),
        .CO({\result0_inferred__5/i__carry__5_n_0 ,\result0_inferred__5/i__carry__5_n_1 ,\result0_inferred__5/i__carry__5_n_2 ,\result0_inferred__5/i__carry__5_n_3 }),
        .CYINIT(1'b0),
        .DI(data6[27:24]),
        .O(i__carry__6_i_7[7:4]),
        .S(\q_reg[131] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \result0_inferred__5/i__carry__6 
       (.CI(\result0_inferred__5/i__carry__5_n_0 ),
        .CO({\NLW_result0_inferred__5/i__carry__6_CO_UNCONNECTED [3],\result0_inferred__5/i__carry__6_n_1 ,\result0_inferred__5/i__carry__6_n_2 ,\result0_inferred__5/i__carry__6_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,data6[30:28]}),
        .O({data8[20],i__carry__6_i_7[10:8]}),
        .S(\q_reg[134] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sum__0_carry
       (.CI(1'b0),
        .CO({sum__0_carry_n_0,sum__0_carry_n_1,sum__0_carry_n_2,sum__0_carry_n_3}),
        .CYINIT(\q[104]_i_3 ),
        .DI(SrcAE[3:0]),
        .O(sum[3:0]),
        .S(S));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sum__0_carry__0
       (.CI(sum__0_carry_n_0),
        .CO({sum__0_carry__0_n_0,sum__0_carry__0_n_1,sum__0_carry__0_n_2,sum__0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(SrcAE[7:4]),
        .O(sum[7:4]),
        .S(\q[108]_i_3 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sum__0_carry__1
       (.CI(sum__0_carry__0_n_0),
        .CO({sum__0_carry__1_n_0,sum__0_carry__1_n_1,sum__0_carry__1_n_2,sum__0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(SrcAE[11:8]),
        .O(sum[11:8]),
        .S(\q[112]_i_3 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sum__0_carry__2
       (.CI(sum__0_carry__1_n_0),
        .CO({sum__0_carry__2_n_0,sum__0_carry__2_n_1,sum__0_carry__2_n_2,sum__0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI(SrcAE[15:12]),
        .O(sum[15:12]),
        .S(\q[116]_i_3 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sum__0_carry__3
       (.CI(sum__0_carry__2_n_0),
        .CO({sum__0_carry__3_n_0,sum__0_carry__3_n_1,sum__0_carry__3_n_2,sum__0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI(SrcAE[19:16]),
        .O(sum[19:16]),
        .S(\q[120]_i_3 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sum__0_carry__4
       (.CI(sum__0_carry__3_n_0),
        .CO({sum__0_carry__4_n_0,sum__0_carry__4_n_1,sum__0_carry__4_n_2,sum__0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI(DI),
        .O(sum[23:20]),
        .S(\q[124]_i_3 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sum__0_carry__5
       (.CI(sum__0_carry__4_n_0),
        .CO({sum__0_carry__5_n_0,sum__0_carry__5_n_1,sum__0_carry__5_n_2,sum__0_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI(\q[128]_i_3 ),
        .O(sum[27:24]),
        .S(\q[128]_i_3_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sum__0_carry__6
       (.CI(sum__0_carry__5_n_0),
        .CO({NLW_sum__0_carry__6_CO_UNCONNECTED[3],sum__0_carry__6_n_1,sum__0_carry__6_n_2,sum__0_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,\q[132]_i_3 }),
        .O({O,sum[30:28]}),
        .S(\q[132]_i_3_0 ));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_controller
   (\q_reg[6] ,
    ALUResultE,
    \q_reg[8] ,
    \q_reg[6]_0 ,
    \q[31]_i_15 ,
    v__7,
    Q,
    \q_reg[7] ,
    \q_reg[6]_1 ,
    \q_reg[8]_0 ,
    \q_reg[6]_2 ,
    \q_reg[9] ,
    \q_reg[5] ,
    \q_reg[4] ,
    \q_reg[2] ,
    ltE,
    \q[31]_i_5 ,
    data8,
    \q_reg[134] ,
    \q_reg[134]_0 ,
    \q_reg[124] ,
    \q_reg[124]_0 ,
    \q_reg[125] ,
    \q_reg[125]_0 ,
    \q_reg[126] ,
    \q_reg[126]_0 ,
    \q_reg[127] ,
    \q_reg[127]_0 ,
    \q_reg[128] ,
    \q_reg[128]_0 ,
    \q_reg[129] ,
    \q_reg[129]_0 ,
    \q_reg[130] ,
    \q_reg[130]_0 ,
    \q_reg[131] ,
    \q_reg[131]_0 ,
    \q_reg[132] ,
    \q_reg[132]_0 ,
    \q_reg[133] ,
    \q_reg[133]_0 ,
    O,
    SrcBE,
    SrcAE,
    \q_reg[134]_1 ,
    \q_reg[179] ,
    PCReadyM,
    D,
    clk,
    reset);
  output \q_reg[6] ;
  output [10:0]ALUResultE;
  output \q_reg[8] ;
  output \q_reg[6]_0 ;
  output \q[31]_i_15 ;
  output v__7;
  output [7:0]Q;
  output \q_reg[7] ;
  output \q_reg[6]_1 ;
  output \q_reg[8]_0 ;
  output \q_reg[6]_2 ;
  output \q_reg[9] ;
  output \q_reg[5] ;
  output [2:0]\q_reg[4] ;
  output [2:0]\q_reg[2] ;
  input ltE;
  input \q[31]_i_5 ;
  input [10:0]data8;
  input \q_reg[134] ;
  input \q_reg[134]_0 ;
  input \q_reg[124] ;
  input \q_reg[124]_0 ;
  input \q_reg[125] ;
  input \q_reg[125]_0 ;
  input \q_reg[126] ;
  input \q_reg[126]_0 ;
  input \q_reg[127] ;
  input \q_reg[127]_0 ;
  input \q_reg[128] ;
  input \q_reg[128]_0 ;
  input \q_reg[129] ;
  input \q_reg[129]_0 ;
  input \q_reg[130] ;
  input \q_reg[130]_0 ;
  input \q_reg[131] ;
  input \q_reg[131]_0 ;
  input \q_reg[132] ;
  input \q_reg[132]_0 ;
  input \q_reg[133] ;
  input \q_reg[133]_0 ;
  input [0:0]O;
  input [12:0]SrcBE;
  input [0:0]SrcAE;
  input [10:0]\q_reg[134]_1 ;
  input \q_reg[179] ;
  input PCReadyM;
  input [11:0]D;
  input clk;
  input reset;

  wire [10:0]ALUResultE;
  wire [11:0]D;
  wire [0:0]O;
  wire PCReadyM;
  wire [7:0]Q;
  wire [0:0]SrcAE;
  wire [12:0]SrcBE;
  wire clk;
  wire controlregE_n_16;
  wire controlregE_n_17;
  wire controlregE_n_19;
  wire controlregE_n_27;
  wire controlregM_n_1;
  wire controlregM_n_2;
  wire [10:0]data8;
  wire ltE;
  wire \q[31]_i_15 ;
  wire \q[31]_i_5 ;
  wire \q_reg[124] ;
  wire \q_reg[124]_0 ;
  wire \q_reg[125] ;
  wire \q_reg[125]_0 ;
  wire \q_reg[126] ;
  wire \q_reg[126]_0 ;
  wire \q_reg[127] ;
  wire \q_reg[127]_0 ;
  wire \q_reg[128] ;
  wire \q_reg[128]_0 ;
  wire \q_reg[129] ;
  wire \q_reg[129]_0 ;
  wire \q_reg[130] ;
  wire \q_reg[130]_0 ;
  wire \q_reg[131] ;
  wire \q_reg[131]_0 ;
  wire \q_reg[132] ;
  wire \q_reg[132]_0 ;
  wire \q_reg[133] ;
  wire \q_reg[133]_0 ;
  wire \q_reg[134] ;
  wire \q_reg[134]_0 ;
  wire [10:0]\q_reg[134]_1 ;
  wire \q_reg[179] ;
  wire [2:0]\q_reg[2] ;
  wire [2:0]\q_reg[4] ;
  wire \q_reg[5] ;
  wire \q_reg[6] ;
  wire \q_reg[6]_0 ;
  wire \q_reg[6]_1 ;
  wire \q_reg[6]_2 ;
  wire \q_reg[7] ;
  wire \q_reg[8] ;
  wire \q_reg[8]_0 ;
  wire \q_reg[9] ;
  wire reset;
  wire v__7;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_flopenrc controlregE
       (.ALUResultE(ALUResultE),
        .D(D),
        .O(O),
        .PCReadyM(PCReadyM),
        .Q({controlregE_n_16,controlregE_n_17,Q[7],controlregE_n_19,Q[6:0],controlregE_n_27}),
        .SrcAE(SrcAE),
        .SrcBE(SrcBE),
        .clk(clk),
        .data8(data8),
        .ltE(ltE),
        .\q[31]_i_15_0 (\q[31]_i_15 ),
        .\q[31]_i_5 (\q[31]_i_5 ),
        .\q_reg[124] (\q_reg[124] ),
        .\q_reg[124]_0 (\q_reg[124]_0 ),
        .\q_reg[125] (\q_reg[125] ),
        .\q_reg[125]_0 (\q_reg[125]_0 ),
        .\q_reg[126] (\q_reg[126] ),
        .\q_reg[126]_0 (\q_reg[126]_0 ),
        .\q_reg[127] (\q_reg[127] ),
        .\q_reg[127]_0 (\q_reg[127]_0 ),
        .\q_reg[128] (\q_reg[128] ),
        .\q_reg[128]_0 (\q_reg[128]_0 ),
        .\q_reg[129] (\q_reg[129] ),
        .\q_reg[129]_0 (\q_reg[129]_0 ),
        .\q_reg[130] (\q_reg[130] ),
        .\q_reg[130]_0 (\q_reg[130]_0 ),
        .\q_reg[131] (\q_reg[131] ),
        .\q_reg[131]_0 (\q_reg[131]_0 ),
        .\q_reg[132] (\q_reg[132] ),
        .\q_reg[132]_0 (\q_reg[132]_0 ),
        .\q_reg[133] (\q_reg[133] ),
        .\q_reg[133]_0 (\q_reg[133]_0 ),
        .\q_reg[134] (\q_reg[134] ),
        .\q_reg[134]_0 (\q_reg[134]_0 ),
        .\q_reg[134]_1 (\q_reg[134]_1 ),
        .\q_reg[179] (\q_reg[179] ),
        .\q_reg[5]_0 (\q_reg[5] ),
        .\q_reg[6]_0 (\q_reg[6] ),
        .\q_reg[6]_1 (\q_reg[6]_0 ),
        .\q_reg[6]_2 (\q_reg[6]_1 ),
        .\q_reg[6]_3 (\q_reg[6]_2 ),
        .\q_reg[7]_0 (\q_reg[7] ),
        .\q_reg[8]_0 (\q_reg[8] ),
        .\q_reg[8]_1 (\q_reg[8]_0 ),
        .\q_reg[9]_0 (\q_reg[9] ),
        .reset(reset),
        .v__7(v__7));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_flopenr controlregM
       (.D({controlregE_n_16,controlregE_n_17,Q[7],controlregE_n_19,controlregE_n_27}),
        .PCReadyM(PCReadyM),
        .Q({\q_reg[4] [2],controlregM_n_1,controlregM_n_2,\q_reg[4] [1:0]}),
        .clk(clk),
        .reset(reset));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_flopr controlregW
       (.D({\q_reg[4] [2],controlregM_n_1,controlregM_n_2}),
        .clk(clk),
        .\q_reg[2]_0 (\q_reg[2] ),
        .reset(reset));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_datapath
   (Q,
    \q_reg[178] ,
    O,
    i__carry__6_i_7,
    \q_reg[0] ,
    D,
    \q_reg[68] ,
    \q_reg[179] ,
    ltE,
    \q_reg[5] ,
    \q_reg[5]_0 ,
    \q_reg[5]_1 ,
    \q_reg[5]_2 ,
    \q_reg[5]_3 ,
    \q_reg[6] ,
    \q_reg[5]_4 ,
    \q_reg[5]_5 ,
    \q_reg[5]_6 ,
    \q_reg[5]_7 ,
    \q_reg[5]_8 ,
    \q_reg[5]_9 ,
    \q_reg[135] ,
    \q_reg[6]_0 ,
    \q_reg[6]_1 ,
    \q_reg[6]_2 ,
    \q_reg[6]_3 ,
    \q_reg[6]_4 ,
    \q_reg[6]_5 ,
    \q_reg[6]_6 ,
    \q_reg[6]_7 ,
    \q_reg[6]_8 ,
    \q_reg[6]_9 ,
    \q_reg[6]_10 ,
    WriteDataM,
    \q[104]_i_3 ,
    PCReadyM,
    clk,
    reset,
    \q_reg[147] ,
    \q_reg[4] ,
    \q_reg[179]_0 ,
    \q_reg[134] ,
    InstrF,
    \q_reg[2] ,
    \q_reg[95] ,
    \q_reg[135]_0 ,
    \q_reg[135]_1 ,
    \q_reg[133] ,
    v__7,
    \q_reg[123] ,
    \q_reg[123]_0 ,
    \q_reg[76] ,
    \q_reg[104] ,
    ReadDataM);
  output [31:0]Q;
  output [10:0]\q_reg[178] ;
  output [0:0]O;
  output [10:0]i__carry__6_i_7;
  output \q_reg[0] ;
  output [11:0]D;
  output [12:0]\q_reg[68] ;
  output [0:0]\q_reg[179] ;
  output ltE;
  output \q_reg[5] ;
  output \q_reg[5]_0 ;
  output \q_reg[5]_1 ;
  output \q_reg[5]_2 ;
  output \q_reg[5]_3 ;
  output \q_reg[6] ;
  output \q_reg[5]_4 ;
  output \q_reg[5]_5 ;
  output \q_reg[5]_6 ;
  output \q_reg[5]_7 ;
  output \q_reg[5]_8 ;
  output \q_reg[5]_9 ;
  output [39:0]\q_reg[135] ;
  output \q_reg[6]_0 ;
  output \q_reg[6]_1 ;
  output \q_reg[6]_2 ;
  output \q_reg[6]_3 ;
  output \q_reg[6]_4 ;
  output \q_reg[6]_5 ;
  output \q_reg[6]_6 ;
  output \q_reg[6]_7 ;
  output \q_reg[6]_8 ;
  output \q_reg[6]_9 ;
  output \q_reg[6]_10 ;
  output [23:0]WriteDataM;
  input \q[104]_i_3 ;
  input PCReadyM;
  input clk;
  input reset;
  input [2:0]\q_reg[147] ;
  input [7:0]\q_reg[4] ;
  input \q_reg[179]_0 ;
  input [10:0]\q_reg[134] ;
  input [30:0]InstrF;
  input \q_reg[2] ;
  input \q_reg[95] ;
  input \q_reg[135]_0 ;
  input \q_reg[135]_1 ;
  input \q_reg[133] ;
  input v__7;
  input \q_reg[123] ;
  input \q_reg[123]_0 ;
  input [0:0]\q_reg[76] ;
  input \q_reg[104] ;
  input [31:0]ReadDataM;

  wire [19:0]ALUResultE;
  wire [31:0]BranchTargetE;
  wire [11:0]D;
  wire [30:0]ImmExtE;
  wire [2:1]ImmSrcD;
  wire [30:0]InstrF;
  wire [0:0]O;
  wire [31:0]PCD;
  wire [1:0]PCE;
  wire [31:0]PCNextF;
  wire [31:2]PCPlus4E;
  wire [31:3]PCPlus4F;
  wire PCReadyM;
  wire [31:0]Q;
  wire [4:0]RdD;
  wire [4:0]RdE;
  wire [4:0]RdM;
  wire [4:0]RdW;
  wire [31:0]ReadDataM;
  wire [31:0]ResultW;
  wire [4:0]Rs1D;
  wire [3:2]Rs1E;
  wire [4:0]Rs2D;
  wire [19:0]SrcAE;
  wire [31:0]UTypeE;
  wire [31:0]WriteDataE;
  wire [23:0]WriteDataM;
  wire [31:8]WriteDataM1;
  wire [1:1]\c/ALUOpD ;
  wire [6:6]\c/md/controls__21 ;
  wire clk;
  wire [30:0]data6;
  wire [31:0]data8;
  wire [2:0]funct3D;
  wire funct7b5D;
  wire [10:0]i__carry__6_i_7;
  wire ltE;
  wire ltuE;
  wire [5:1]opD;
  wire [67:49]p_0_in;
  wire [95:2]p_0_in_0;
  wire \q[104]_i_3 ;
  wire \q_reg[0] ;
  wire \q_reg[104] ;
  wire \q_reg[123] ;
  wire \q_reg[123]_0 ;
  wire \q_reg[133] ;
  wire [10:0]\q_reg[134] ;
  wire [39:0]\q_reg[135] ;
  wire \q_reg[135]_0 ;
  wire \q_reg[135]_1 ;
  wire [2:0]\q_reg[147] ;
  wire [10:0]\q_reg[178] ;
  wire [0:0]\q_reg[179] ;
  wire \q_reg[179]_0 ;
  wire \q_reg[2] ;
  wire [7:0]\q_reg[4] ;
  wire \q_reg[5] ;
  wire \q_reg[5]_0 ;
  wire \q_reg[5]_1 ;
  wire \q_reg[5]_2 ;
  wire \q_reg[5]_3 ;
  wire \q_reg[5]_4 ;
  wire \q_reg[5]_5 ;
  wire \q_reg[5]_6 ;
  wire \q_reg[5]_7 ;
  wire \q_reg[5]_8 ;
  wire \q_reg[5]_9 ;
  wire [12:0]\q_reg[68] ;
  wire \q_reg[6] ;
  wire \q_reg[6]_0 ;
  wire \q_reg[6]_1 ;
  wire \q_reg[6]_10 ;
  wire \q_reg[6]_2 ;
  wire \q_reg[6]_3 ;
  wire \q_reg[6]_4 ;
  wire \q_reg[6]_5 ;
  wire \q_reg[6]_6 ;
  wire \q_reg[6]_7 ;
  wire \q_reg[6]_8 ;
  wire \q_reg[6]_9 ;
  wire [0:0]\q_reg[76] ;
  wire \q_reg[95] ;
  wire [31:0]rd10;
  wire rd11__3;
  wire [31:0]rd20;
  wire rd21__3;
  wire regD_n_10;
  wire regD_n_11;
  wire regD_n_116;
  wire regD_n_117;
  wire regD_n_12;
  wire regD_n_120;
  wire regD_n_121;
  wire regD_n_122;
  wire regD_n_123;
  wire regD_n_124;
  wire regD_n_125;
  wire regD_n_127;
  wire regD_n_128;
  wire regD_n_129;
  wire regD_n_13;
  wire regD_n_130;
  wire regD_n_131;
  wire regD_n_132;
  wire regD_n_3;
  wire regD_n_67;
  wire regD_n_68;
  wire regD_n_69;
  wire regD_n_7;
  wire regD_n_70;
  wire regD_n_71;
  wire regD_n_72;
  wire regD_n_73;
  wire regD_n_74;
  wire regD_n_75;
  wire regD_n_76;
  wire regD_n_77;
  wire regD_n_78;
  wire regD_n_79;
  wire regD_n_80;
  wire regD_n_81;
  wire regD_n_82;
  wire regD_n_83;
  wire regD_n_84;
  wire regD_n_85;
  wire regD_n_86;
  wire regD_n_87;
  wire regD_n_88;
  wire regD_n_89;
  wire regD_n_9;
  wire regD_n_90;
  wire regD_n_91;
  wire regD_n_92;
  wire regD_n_93;
  wire regD_n_94;
  wire regD_n_95;
  wire regD_n_96;
  wire regE_n_122;
  wire regE_n_123;
  wire regE_n_125;
  wire regE_n_126;
  wire regE_n_127;
  wire regE_n_128;
  wire regE_n_171;
  wire regE_n_172;
  wire regE_n_173;
  wire regE_n_208;
  wire regE_n_368;
  wire regE_n_369;
  wire regE_n_370;
  wire regE_n_371;
  wire regE_n_373;
  wire regE_n_374;
  wire regE_n_375;
  wire regE_n_376;
  wire regE_n_378;
  wire regE_n_379;
  wire regE_n_380;
  wire regE_n_381;
  wire regE_n_382;
  wire regE_n_383;
  wire regE_n_384;
  wire regE_n_385;
  wire regE_n_394;
  wire regE_n_395;
  wire regE_n_396;
  wire regE_n_397;
  wire regE_n_398;
  wire regE_n_399;
  wire regE_n_400;
  wire regE_n_401;
  wire regE_n_418;
  wire regE_n_419;
  wire regE_n_420;
  wire regE_n_421;
  wire regE_n_422;
  wire regE_n_423;
  wire regE_n_424;
  wire regE_n_425;
  wire regE_n_426;
  wire regE_n_427;
  wire regE_n_428;
  wire regE_n_429;
  wire regE_n_430;
  wire regE_n_431;
  wire regE_n_432;
  wire regE_n_433;
  wire regE_n_434;
  wire regE_n_435;
  wire regE_n_436;
  wire regE_n_437;
  wire regE_n_438;
  wire regE_n_439;
  wire regE_n_440;
  wire regE_n_441;
  wire regE_n_442;
  wire regE_n_443;
  wire regE_n_444;
  wire regE_n_445;
  wire regE_n_446;
  wire regE_n_447;
  wire regE_n_448;
  wire regE_n_449;
  wire regE_n_450;
  wire regE_n_451;
  wire regE_n_452;
  wire regE_n_453;
  wire regE_n_454;
  wire regE_n_455;
  wire regE_n_456;
  wire regE_n_457;
  wire regE_n_458;
  wire regE_n_459;
  wire regE_n_460;
  wire regE_n_461;
  wire regE_n_462;
  wire regE_n_463;
  wire regE_n_464;
  wire regE_n_465;
  wire regE_n_466;
  wire regE_n_467;
  wire regE_n_468;
  wire regE_n_469;
  wire regE_n_470;
  wire regE_n_471;
  wire regE_n_472;
  wire regE_n_473;
  wire regE_n_474;
  wire regE_n_475;
  wire regE_n_476;
  wire regE_n_477;
  wire regE_n_478;
  wire regE_n_479;
  wire regE_n_480;
  wire regE_n_481;
  wire regE_n_482;
  wire regE_n_483;
  wire regE_n_484;
  wire regE_n_485;
  wire regE_n_486;
  wire regE_n_487;
  wire regE_n_488;
  wire regE_n_489;
  wire regE_n_490;
  wire regE_n_491;
  wire regE_n_492;
  wire regE_n_493;
  wire regE_n_494;
  wire regE_n_495;
  wire regE_n_496;
  wire regE_n_497;
  wire regE_n_498;
  wire regE_n_499;
  wire regE_n_500;
  wire regE_n_501;
  wire regE_n_502;
  wire regE_n_503;
  wire regE_n_504;
  wire regE_n_505;
  wire regE_n_506;
  wire regE_n_507;
  wire regE_n_508;
  wire regE_n_509;
  wire regE_n_510;
  wire regE_n_511;
  wire regE_n_512;
  wire regE_n_513;
  wire regE_n_514;
  wire regE_n_515;
  wire regE_n_516;
  wire regE_n_517;
  wire regM_n_0;
  wire regM_n_100;
  wire regM_n_101;
  wire regM_n_102;
  wire regM_n_103;
  wire regM_n_104;
  wire regM_n_105;
  wire regM_n_106;
  wire regM_n_107;
  wire regM_n_108;
  wire regM_n_109;
  wire regM_n_110;
  wire regM_n_111;
  wire regM_n_112;
  wire regM_n_113;
  wire regM_n_114;
  wire regM_n_115;
  wire regM_n_116;
  wire regM_n_117;
  wire regM_n_118;
  wire regM_n_119;
  wire regM_n_120;
  wire regM_n_121;
  wire regM_n_122;
  wire regM_n_123;
  wire regM_n_124;
  wire regM_n_125;
  wire regM_n_126;
  wire regM_n_127;
  wire regM_n_128;
  wire regM_n_129;
  wire regM_n_130;
  wire regM_n_131;
  wire regM_n_132;
  wire regM_n_133;
  wire regM_n_134;
  wire regM_n_135;
  wire regM_n_136;
  wire regM_n_70;
  wire regM_n_71;
  wire regM_n_72;
  wire regM_n_73;
  wire regM_n_74;
  wire regM_n_75;
  wire regM_n_76;
  wire regM_n_77;
  wire regM_n_78;
  wire regM_n_79;
  wire regM_n_80;
  wire regM_n_81;
  wire regM_n_82;
  wire regM_n_83;
  wire regM_n_84;
  wire regM_n_85;
  wire regM_n_86;
  wire regM_n_87;
  wire regM_n_88;
  wire regM_n_89;
  wire regM_n_90;
  wire regM_n_91;
  wire regM_n_92;
  wire regM_n_93;
  wire regM_n_94;
  wire regM_n_95;
  wire regM_n_96;
  wire regM_n_97;
  wire regM_n_98;
  wire regM_n_99;
  wire regW_n_32;
  wire reset;
  wire [30:0]sum;
  wire v__7;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_alu alu
       (.CO(ltuE),
        .DI(\q_reg[178] [3:0]),
        .O(O),
        .S({regE_n_450,regE_n_451,regE_n_452,regE_n_453}),
        .SrcAE(SrcAE),
        .data6(data6),
        .data8({data8[31],data8[19:0]}),
        .i__carry__6_i_7(i__carry__6_i_7),
        .ltu_carry__0_0({regE_n_368,regE_n_369,regE_n_370,regE_n_371}),
        .ltu_carry__0_1({regE_n_506,regE_n_507,regE_n_508,regE_n_509}),
        .ltu_carry__1_0({regE_n_394,regE_n_395,regE_n_396,regE_n_397}),
        .ltu_carry__1_1({regE_n_510,regE_n_511,regE_n_512,regE_n_513}),
        .ltu_carry__2_0({regE_n_398,regE_n_399,regE_n_400,regE_n_401}),
        .ltu_carry__2_1({regE_n_514,regE_n_515,regE_n_516,regE_n_517}),
        .\q[104]_i_3 (\q[104]_i_3 ),
        .\q[108]_i_2 ({regE_n_482,regE_n_483,regE_n_484,regE_n_485}),
        .\q[108]_i_3 ({regE_n_454,regE_n_455,regE_n_456,regE_n_457}),
        .\q[112]_i_2 ({regE_n_486,regE_n_487,regE_n_488,regE_n_489}),
        .\q[112]_i_3 ({regE_n_458,regE_n_459,regE_n_460,regE_n_461}),
        .\q[116]_i_2 ({regE_n_490,regE_n_491,regE_n_492,regE_n_493}),
        .\q[116]_i_3 ({regE_n_462,regE_n_463,regE_n_464,regE_n_465}),
        .\q[120]_i_2 ({regE_n_494,regE_n_495,regE_n_496,regE_n_497}),
        .\q[120]_i_3 ({regE_n_466,regE_n_467,regE_n_468,regE_n_469}),
        .\q[124]_i_3 ({regE_n_470,regE_n_471,regE_n_472,regE_n_473}),
        .\q[128]_i_3 (\q_reg[178] [7:4]),
        .\q[128]_i_3_0 ({regE_n_474,regE_n_475,regE_n_476,regE_n_477}),
        .\q[132]_i_3 (\q_reg[178] [10:8]),
        .\q[132]_i_3_0 ({regE_n_382,regE_n_383,regE_n_384,regE_n_385}),
        .\q_reg[104] ({regE_n_378,regE_n_379,regE_n_380,regE_n_381}),
        .\q_reg[104]_0 ({regE_n_373,regE_n_374,regE_n_375,regE_n_376}),
        .\q_reg[104]_1 ({regE_n_478,regE_n_479,regE_n_480,regE_n_481}),
        .\q_reg[127] ({regE_n_498,regE_n_499,regE_n_500,regE_n_501}),
        .\q_reg[131] ({regE_n_502,regE_n_503,regE_n_504,regE_n_505}),
        .\q_reg[134] ({regE_n_418,regE_n_419,regE_n_420,regE_n_421}),
        .sum(sum));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adder branchadd
       (.BranchTargetE(BranchTargetE),
        .Q(ImmExtE),
        .S({regE_n_422,regE_n_423,regE_n_424,regE_n_425}),
        .\q_reg[11] ({regE_n_430,regE_n_431,regE_n_432,regE_n_433}),
        .\q_reg[15] ({regE_n_434,regE_n_435,regE_n_436,regE_n_437}),
        .\q_reg[19] ({regE_n_438,regE_n_439,regE_n_440,regE_n_441}),
        .\q_reg[23] ({regE_n_442,regE_n_443,regE_n_444,regE_n_445}),
        .\q_reg[27] ({regE_n_446,regE_n_447,regE_n_448,regE_n_449}),
        .\q_reg[31] ({regE_n_125,regE_n_126,regE_n_127,regE_n_128}),
        .\q_reg[7] ({regE_n_426,regE_n_427,regE_n_428,regE_n_429}));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adder_0 pcadd
       (.PCPlus4F(PCPlus4F),
        .Q(Q[31:2]));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_flopenr__parameterized0 pcreg
       (.D(PCNextF),
        .E(regE_n_173),
        .Q(Q),
        .clk(clk),
        .reset(reset));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_flopenrc__parameterized0 regD
       (.ALUOpD(\c/ALUOpD ),
        .D({D[9],D[3:2]}),
        .E(regE_n_173),
        .Q({regD_n_7,funct7b5D,regD_n_9,regD_n_10,regD_n_11,regD_n_12,regD_n_13,Rs2D,Rs1D,funct3D,RdD,opD[5],opD[2:1],PCD,regD_n_67,regD_n_68,regD_n_69,regD_n_70,regD_n_71,regD_n_72,regD_n_73,regD_n_74,regD_n_75,regD_n_76,regD_n_77,regD_n_78,regD_n_79,regD_n_80,regD_n_81,regD_n_82,regD_n_83,regD_n_84,regD_n_85,regD_n_86,regD_n_87,regD_n_88,regD_n_89,regD_n_90,regD_n_91,regD_n_92,regD_n_93,regD_n_94,regD_n_95,regD_n_96}),
        .clk(clk),
        .controls__21(\c/md/controls__21 ),
        .\q[31]_i_3 (RdE[1:0]),
        .\q_reg[5]_0 (regE_n_208),
        .\q_reg[5]_1 (regE_n_172),
        .\q_reg[5]_2 (regE_n_171),
        .\q_reg[66]_0 (ImmSrcD),
        .\q_reg[66]_1 (regD_n_127),
        .\q_reg[66]_2 (regD_n_128),
        .\q_reg[68]_0 (regD_n_132),
        .\q_reg[70]_0 (regD_n_3),
        .\q_reg[70]_1 (regD_n_131),
        .\q_reg[77]_0 (regD_n_129),
        .\q_reg[78]_0 (regD_n_130),
        .\q_reg[79]_0 (regD_n_116),
        .\q_reg[84]_0 (regD_n_117),
        .\q_reg[84]_1 (regD_n_120),
        .\q_reg[85]_0 (regD_n_121),
        .\q_reg[86]_0 (regD_n_122),
        .\q_reg[87]_0 (regD_n_123),
        .\q_reg[88]_0 (regD_n_124),
        .\q_reg[94]_0 (p_0_in),
        .\q_reg[95]_0 (regD_n_125),
        .\q_reg[95]_1 ({p_0_in_0[95:65],p_0_in_0[63:2]}),
        .rd11__3(rd11__3),
        .rd21__3(rd21__3),
        .reset(reset));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_flopenrc__parameterized1 regE
       (.ALUOpD(\c/ALUOpD ),
        .BranchTargetE(BranchTargetE),
        .CO(ltuE),
        .D({ltE,ALUResultE,WriteDataE,RdE,PCPlus4E,PCE,UTypeE,regE_n_122,regE_n_123,\q_reg[0] }),
        .DI(\q_reg[178] [3:0]),
        .E(regE_n_173),
        .InstrF(InstrF),
        .O(O),
        .PCPlus4F(PCPlus4F),
        .PCReadyM(PCReadyM),
        .Q({Rs1E,ImmExtE}),
        .ResultW(ResultW),
        .S({regE_n_422,regE_n_423,regE_n_424,regE_n_425}),
        .SrcAE(SrcAE),
        .clk(clk),
        .controls__21(\c/md/controls__21 ),
        .data6(data6),
        .data8({data8[31],data8[19:0]}),
        .i__carry_i_15_0({regE_n_498,regE_n_499,regE_n_500,regE_n_501}),
        .i__carry_i_15_1({regE_n_502,regE_n_503,regE_n_504,regE_n_505}),
        .\q_reg[0]_0 (regE_n_208),
        .\q_reg[0]_1 ({p_0_in_0[95:65],p_0_in_0[63:2]}),
        .\q_reg[0]_2 (regD_n_132),
        .\q_reg[103]_0 ({\q_reg[135] [39:8],RdM}),
        .\q_reg[104]_0 (\q_reg[104] ),
        .\q_reg[10]_0 (regE_n_172),
        .\q_reg[10]_1 (regD_n_128),
        .\q_reg[123]_0 (\q_reg[123] ),
        .\q_reg[123]_1 (\q_reg[123]_0 ),
        .\q_reg[12]_0 (regE_n_171),
        .\q_reg[133]_0 (\q_reg[133] ),
        .\q_reg[135]_0 (\q_reg[135]_0 ),
        .\q_reg[135]_1 (\q_reg[135]_1 ),
        .\q_reg[14]_0 (regD_n_127),
        .\q_reg[175]_0 (\q_reg[178] [7:4]),
        .\q_reg[178]_0 (\q_reg[178] [10:8]),
        .\q_reg[179]_0 (\q_reg[179] ),
        .\q_reg[179]_1 ({regE_n_373,regE_n_374,regE_n_375,regE_n_376}),
        .\q_reg[179]_2 ({regE_n_418,regE_n_419,regE_n_420,regE_n_421}),
        .\q_reg[179]_3 (\q_reg[179]_0 ),
        .\q_reg[2]_0 (\q_reg[2] ),
        .\q_reg[30]_0 (\q_reg[134] ),
        .\q_reg[37]_0 (\q_reg[68] [0]),
        .\q_reg[37]_1 ({regE_n_478,regE_n_479,regE_n_480,regE_n_481}),
        .\q_reg[37]_2 ({regE_n_482,regE_n_483,regE_n_484,regE_n_485}),
        .\q_reg[37]_3 ({regE_n_486,regE_n_487,regE_n_488,regE_n_489}),
        .\q_reg[37]_4 ({regE_n_490,regE_n_491,regE_n_492,regE_n_493}),
        .\q_reg[37]_5 ({regE_n_494,regE_n_495,regE_n_496,regE_n_497}),
        .\q_reg[37]_6 (ImmSrcD),
        .\q_reg[37]_7 (regD_n_120),
        .\q_reg[38]_0 (regD_n_121),
        .\q_reg[39]_0 (regD_n_122),
        .\q_reg[3]_0 (PCNextF),
        .\q_reg[40]_0 (regD_n_123),
        .\q_reg[41]_0 (regD_n_124),
        .\q_reg[43]_0 ({regE_n_368,regE_n_369,regE_n_370,regE_n_371}),
        .\q_reg[44]_0 ({regE_n_426,regE_n_427,regE_n_428,regE_n_429}),
        .\q_reg[44]_1 ({regE_n_506,regE_n_507,regE_n_508,regE_n_509}),
        .\q_reg[48]_0 ({regE_n_430,regE_n_431,regE_n_432,regE_n_433}),
        .\q_reg[48]_1 (regD_n_125),
        .\q_reg[4]_0 (regD_n_131),
        .\q_reg[4]_1 (\q_reg[4] ),
        .\q_reg[4]_2 (regD_n_116),
        .\q_reg[4]_3 (regD_n_117),
        .\q_reg[51]_0 ({regE_n_394,regE_n_395,regE_n_396,regE_n_397}),
        .\q_reg[52]_0 ({regE_n_434,regE_n_435,regE_n_436,regE_n_437}),
        .\q_reg[52]_1 ({regE_n_510,regE_n_511,regE_n_512,regE_n_513}),
        .\q_reg[56]_0 ({regE_n_438,regE_n_439,regE_n_440,regE_n_441}),
        .\q_reg[57]_0 (\q_reg[68] [1]),
        .\q_reg[58]_0 (\q_reg[68] [2]),
        .\q_reg[59]_0 ({regE_n_398,regE_n_399,regE_n_400,regE_n_401}),
        .\q_reg[59]_1 (\q_reg[68] [3]),
        .\q_reg[5] (\q_reg[5] ),
        .\q_reg[5]_0 (\q_reg[5]_0 ),
        .\q_reg[5]_1 (\q_reg[5]_1 ),
        .\q_reg[5]_10 ({regE_n_382,regE_n_383,regE_n_384,regE_n_385}),
        .\q_reg[5]_11 ({regE_n_450,regE_n_451,regE_n_452,regE_n_453}),
        .\q_reg[5]_12 ({regE_n_454,regE_n_455,regE_n_456,regE_n_457}),
        .\q_reg[5]_13 ({regE_n_458,regE_n_459,regE_n_460,regE_n_461}),
        .\q_reg[5]_14 ({regE_n_462,regE_n_463,regE_n_464,regE_n_465}),
        .\q_reg[5]_15 ({regE_n_466,regE_n_467,regE_n_468,regE_n_469}),
        .\q_reg[5]_16 ({regE_n_470,regE_n_471,regE_n_472,regE_n_473}),
        .\q_reg[5]_17 ({regE_n_474,regE_n_475,regE_n_476,regE_n_477}),
        .\q_reg[5]_2 (\q_reg[5]_2 ),
        .\q_reg[5]_3 (\q_reg[5]_3 ),
        .\q_reg[5]_4 (\q_reg[5]_4 ),
        .\q_reg[5]_5 (\q_reg[5]_5 ),
        .\q_reg[5]_6 (\q_reg[5]_6 ),
        .\q_reg[5]_7 (\q_reg[5]_7 ),
        .\q_reg[5]_8 (\q_reg[5]_8 ),
        .\q_reg[5]_9 (\q_reg[5]_9 ),
        .\q_reg[60]_0 (\q_reg[68] [4]),
        .\q_reg[60]_1 ({regE_n_442,regE_n_443,regE_n_444,regE_n_445}),
        .\q_reg[60]_2 ({regE_n_514,regE_n_515,regE_n_516,regE_n_517}),
        .\q_reg[61]_0 (\q_reg[68] [5]),
        .\q_reg[62]_0 (\q_reg[68] [6]),
        .\q_reg[63]_0 (\q_reg[68] [7]),
        .\q_reg[63]_1 (Q),
        .\q_reg[64]_0 (\q_reg[68] [8]),
        .\q_reg[64]_1 ({regE_n_446,regE_n_447,regE_n_448,regE_n_449}),
        .\q_reg[65]_0 ({D[11:10],D[8:4],D[1:0]}),
        .\q_reg[65]_1 (\q_reg[68] [9]),
        .\q_reg[66]_0 (\q_reg[68] [10]),
        .\q_reg[67]_0 (\q_reg[68] [11]),
        .\q_reg[67]_1 ({regE_n_378,regE_n_379,regE_n_380,regE_n_381}),
        .\q_reg[67]_2 (p_0_in),
        .\q_reg[68]_0 ({regE_n_125,regE_n_126,regE_n_127,regE_n_128}),
        .\q_reg[68]_1 (\q_reg[68] [12]),
        .\q_reg[68]_2 ({regD_n_7,funct7b5D,regD_n_9,regD_n_10,regD_n_11,regD_n_12,regD_n_13,Rs2D,Rs1D,funct3D,RdD,opD[5],opD[2:1],PCD,regD_n_67,regD_n_68,regD_n_69,regD_n_70,regD_n_71,regD_n_72,regD_n_73,regD_n_74,regD_n_75,regD_n_76,regD_n_77,regD_n_78,regD_n_79,regD_n_80,regD_n_81,regD_n_82,regD_n_83,regD_n_84,regD_n_85,regD_n_86,regD_n_87,regD_n_88,regD_n_89,regD_n_90,regD_n_91,regD_n_92,regD_n_93,regD_n_94,regD_n_95,regD_n_96}),
        .\q_reg[6] (\q_reg[6] ),
        .\q_reg[6]_0 (\q_reg[6]_0 ),
        .\q_reg[6]_1 (\q_reg[6]_1 ),
        .\q_reg[6]_10 (\q_reg[6]_10 ),
        .\q_reg[6]_2 (\q_reg[6]_2 ),
        .\q_reg[6]_3 (\q_reg[6]_3 ),
        .\q_reg[6]_4 (\q_reg[6]_4 ),
        .\q_reg[6]_5 (\q_reg[6]_5 ),
        .\q_reg[6]_6 (\q_reg[6]_6 ),
        .\q_reg[6]_7 (\q_reg[6]_7 ),
        .\q_reg[6]_8 (\q_reg[6]_8 ),
        .\q_reg[6]_9 (\q_reg[6]_9 ),
        .\q_reg[76]_0 (\q_reg[147] [2]),
        .\q_reg[76]_1 (\q_reg[76] ),
        .\q_reg[7]_0 (regD_n_130),
        .\q_reg[8]_0 (regD_n_129),
        .\q_reg[95]_0 (\q_reg[95] ),
        .\q_reg[9]_0 (regD_n_3),
        .rd10(rd10),
        .rd11__3(rd11__3),
        .rd20(rd20),
        .rd21__3(rd21__3),
        .reset(reset),
        .sum(sum),
        .sum__0_carry_i_11_0(RdW),
        .sum__0_carry_i_4_0(regM_n_0),
        .sum__0_carry_i_4_1(regW_n_32),
        .v__7(v__7));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_flopenr__parameterized1 regM
       (.D({ltE,\q_reg[134] ,ALUResultE,WriteDataE,RdE,PCPlus4E,PCE,UTypeE,regE_n_122,regE_n_123,\q_reg[0] }),
        .PCReadyM(PCReadyM),
        .Q({\q_reg[135] [39:8],WriteDataM1,\q_reg[135] [7:0],RdM,regM_n_70,regM_n_71,regM_n_72,regM_n_73,regM_n_74,regM_n_75,regM_n_76,regM_n_77,regM_n_78,regM_n_79,regM_n_80,regM_n_81,regM_n_82,regM_n_83,regM_n_84,regM_n_85,regM_n_86,regM_n_87,regM_n_88,regM_n_89,regM_n_90,regM_n_91,regM_n_92,regM_n_93,regM_n_94,regM_n_95,regM_n_96,regM_n_97,regM_n_98,regM_n_99,regM_n_100,regM_n_101,regM_n_102,regM_n_103,regM_n_104,regM_n_105,regM_n_106,regM_n_107,regM_n_108,regM_n_109,regM_n_110,regM_n_111,regM_n_112,regM_n_113,regM_n_114,regM_n_115,regM_n_116,regM_n_117,regM_n_118,regM_n_119,regM_n_120,regM_n_121,regM_n_122,regM_n_123,regM_n_124,regM_n_125,regM_n_126,regM_n_127,regM_n_128,regM_n_129,regM_n_130,regM_n_131,regM_n_132,regM_n_133,regM_n_134,regM_n_135,regM_n_136}),
        .clk(clk),
        .\q_reg[69]_0 (regM_n_0),
        .reset(reset),
        .sum__0_carry_i_13(Rs1E));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_flopr__parameterized0 regW
       (.D({\q_reg[135] [39:8],ReadDataM,RdM,regM_n_70,regM_n_71,regM_n_72,regM_n_73,regM_n_74,regM_n_75,regM_n_76,regM_n_77,regM_n_78,regM_n_79,regM_n_80,regM_n_81,regM_n_82,regM_n_83,regM_n_84,regM_n_85,regM_n_86,regM_n_87,regM_n_88,regM_n_89,regM_n_90,regM_n_91,regM_n_92,regM_n_93,regM_n_94,regM_n_95,regM_n_96,regM_n_97,regM_n_98,regM_n_99,regM_n_100,regM_n_101,regM_n_102,regM_n_103,regM_n_104,regM_n_105,regM_n_106,regM_n_107,regM_n_108,regM_n_109,regM_n_110,regM_n_111,regM_n_112,regM_n_113,regM_n_114,regM_n_115,regM_n_116,regM_n_117,regM_n_118,regM_n_119,regM_n_120,regM_n_121,regM_n_122,regM_n_123,regM_n_124,regM_n_125,regM_n_126,regM_n_127,regM_n_128,regM_n_129,regM_n_130,regM_n_131,regM_n_132,regM_n_133}),
        .Q(RdW),
        .ResultW(ResultW),
        .clk(clk),
        .\q_reg[102]_0 (\q_reg[147] [1:0]),
        .\q_reg[69]_0 (regW_n_32),
        .reset(reset),
        .sum__0_carry_i_11(Rs1E));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_regfile rf
       (.Q(RdW),
        .ResultW(ResultW),
        .clk(clk),
        .\q_reg[141] ({Rs2D,Rs1D}),
        .\q_reg[147] (\q_reg[147] [2]),
        .rd10(rd10),
        .rd20(rd20));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_storeloadcase stlMW
       (.Q({WriteDataM1,\q_reg[135] [7],regM_n_134,regM_n_135,regM_n_136}),
        .WriteDataM(WriteDataM));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_top_0_0,top,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "top,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_top inst
       (.AXIStart(AXIStart),
        .DRW(DRW),
        .addressM(addressM),
        .clk(clk),
        .doneM(doneM),
        .readDataM(readDataM),
        .reset(reset),
        .writeDataM(writeDataM));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_flopenr
   (Q,
    PCReadyM,
    D,
    clk,
    reset);
  output [4:0]Q;
  input PCReadyM;
  input [4:0]D;
  input clk;
  input reset;

  wire [4:0]D;
  wire PCReadyM;
  wire [4:0]Q;
  wire clk;
  wire reset;

  FDCE \q_reg[0] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(D[0]),
        .Q(Q[0]));
  FDCE \q_reg[1] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(D[1]),
        .Q(Q[1]));
  FDCE \q_reg[2] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(D[2]),
        .Q(Q[2]));
  FDCE \q_reg[3] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(D[3]),
        .Q(Q[3]));
  FDCE \q_reg[4] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(D[4]),
        .Q(Q[4]));
endmodule

(* ORIG_REF_NAME = "flopenr" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_flopenr__parameterized0
   (Q,
    E,
    D,
    clk,
    reset);
  output [31:0]Q;
  input [0:0]E;
  input [31:0]D;
  input clk;
  input reset;

  wire [31:0]D;
  wire [0:0]E;
  wire [31:0]Q;
  wire clk;
  wire reset;

  FDCE \q_reg[0] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(D[0]),
        .Q(Q[0]));
  FDCE \q_reg[10] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(D[10]),
        .Q(Q[10]));
  FDCE \q_reg[11] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(D[11]),
        .Q(Q[11]));
  FDCE \q_reg[12] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(D[12]),
        .Q(Q[12]));
  FDCE \q_reg[13] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(D[13]),
        .Q(Q[13]));
  FDCE \q_reg[14] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(D[14]),
        .Q(Q[14]));
  FDCE \q_reg[15] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(D[15]),
        .Q(Q[15]));
  FDCE \q_reg[16] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(D[16]),
        .Q(Q[16]));
  FDCE \q_reg[17] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(D[17]),
        .Q(Q[17]));
  FDCE \q_reg[18] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(D[18]),
        .Q(Q[18]));
  FDCE \q_reg[19] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(D[19]),
        .Q(Q[19]));
  FDCE \q_reg[1] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(D[1]),
        .Q(Q[1]));
  FDCE \q_reg[20] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(D[20]),
        .Q(Q[20]));
  FDCE \q_reg[21] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(D[21]),
        .Q(Q[21]));
  FDCE \q_reg[22] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(D[22]),
        .Q(Q[22]));
  FDCE \q_reg[23] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(D[23]),
        .Q(Q[23]));
  FDCE \q_reg[24] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(D[24]),
        .Q(Q[24]));
  FDCE \q_reg[25] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(D[25]),
        .Q(Q[25]));
  FDCE \q_reg[26] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(D[26]),
        .Q(Q[26]));
  FDCE \q_reg[27] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(D[27]),
        .Q(Q[27]));
  FDCE \q_reg[28] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(D[28]),
        .Q(Q[28]));
  FDCE \q_reg[29] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(D[29]),
        .Q(Q[29]));
  FDCE \q_reg[2] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(D[2]),
        .Q(Q[2]));
  FDCE \q_reg[30] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(D[30]),
        .Q(Q[30]));
  FDCE \q_reg[31] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(D[31]),
        .Q(Q[31]));
  FDCE \q_reg[3] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(D[3]),
        .Q(Q[3]));
  FDCE \q_reg[4] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(D[4]),
        .Q(Q[4]));
  FDCE \q_reg[5] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(D[5]),
        .Q(Q[5]));
  FDCE \q_reg[6] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(D[6]),
        .Q(Q[6]));
  FDCE \q_reg[7] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(D[7]),
        .Q(Q[7]));
  FDCE \q_reg[8] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(D[8]),
        .Q(Q[8]));
  FDCE \q_reg[9] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(D[9]),
        .Q(Q[9]));
endmodule

(* ORIG_REF_NAME = "flopenr" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_flopenr__parameterized1
   (\q_reg[69]_0 ,
    Q,
    sum__0_carry_i_13,
    PCReadyM,
    D,
    clk,
    reset);
  output \q_reg[69]_0 ;
  output [135:0]Q;
  input [1:0]sum__0_carry_i_13;
  input PCReadyM;
  input [135:0]D;
  input clk;
  input reset;

  wire [135:0]D;
  wire PCReadyM;
  wire [135:0]Q;
  wire clk;
  wire \q_reg[69]_0 ;
  wire reset;
  wire [1:0]sum__0_carry_i_13;

  FDCE \q_reg[0] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(D[0]),
        .Q(Q[0]));
  FDCE \q_reg[100] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(D[100]),
        .Q(Q[100]));
  FDCE \q_reg[101] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(D[101]),
        .Q(Q[101]));
  FDCE \q_reg[102] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(D[102]),
        .Q(Q[102]));
  FDCE \q_reg[103] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(D[103]),
        .Q(Q[103]));
  FDCE \q_reg[104] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(D[104]),
        .Q(Q[104]));
  FDCE \q_reg[105] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(D[105]),
        .Q(Q[105]));
  FDCE \q_reg[106] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(D[106]),
        .Q(Q[106]));
  FDCE \q_reg[107] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(D[107]),
        .Q(Q[107]));
  FDCE \q_reg[108] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(D[108]),
        .Q(Q[108]));
  FDCE \q_reg[109] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(D[109]),
        .Q(Q[109]));
  FDCE \q_reg[10] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(D[10]),
        .Q(Q[10]));
  FDCE \q_reg[110] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(D[110]),
        .Q(Q[110]));
  FDCE \q_reg[111] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(D[111]),
        .Q(Q[111]));
  FDCE \q_reg[112] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(D[112]),
        .Q(Q[112]));
  FDCE \q_reg[113] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(D[113]),
        .Q(Q[113]));
  FDCE \q_reg[114] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(D[114]),
        .Q(Q[114]));
  FDCE \q_reg[115] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(D[115]),
        .Q(Q[115]));
  FDCE \q_reg[116] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(D[116]),
        .Q(Q[116]));
  FDCE \q_reg[117] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(D[117]),
        .Q(Q[117]));
  FDCE \q_reg[118] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(D[118]),
        .Q(Q[118]));
  FDCE \q_reg[119] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(D[119]),
        .Q(Q[119]));
  FDCE \q_reg[11] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(D[11]),
        .Q(Q[11]));
  FDCE \q_reg[120] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(D[120]),
        .Q(Q[120]));
  FDCE \q_reg[121] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(D[121]),
        .Q(Q[121]));
  FDCE \q_reg[122] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(D[122]),
        .Q(Q[122]));
  FDCE \q_reg[123] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(D[123]),
        .Q(Q[123]));
  FDCE \q_reg[124] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(D[124]),
        .Q(Q[124]));
  FDCE \q_reg[125] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(D[125]),
        .Q(Q[125]));
  FDCE \q_reg[126] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(D[126]),
        .Q(Q[126]));
  FDCE \q_reg[127] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(D[127]),
        .Q(Q[127]));
  FDCE \q_reg[128] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(D[128]),
        .Q(Q[128]));
  FDCE \q_reg[129] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(D[129]),
        .Q(Q[129]));
  FDCE \q_reg[12] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(D[12]),
        .Q(Q[12]));
  FDCE \q_reg[130] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(D[130]),
        .Q(Q[130]));
  FDCE \q_reg[131] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(D[131]),
        .Q(Q[131]));
  FDCE \q_reg[132] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(D[132]),
        .Q(Q[132]));
  FDCE \q_reg[133] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(D[133]),
        .Q(Q[133]));
  FDCE \q_reg[134] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(D[134]),
        .Q(Q[134]));
  FDCE \q_reg[135] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(D[135]),
        .Q(Q[135]));
  FDCE \q_reg[13] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(D[13]),
        .Q(Q[13]));
  FDCE \q_reg[14] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(D[14]),
        .Q(Q[14]));
  FDCE \q_reg[15] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(D[15]),
        .Q(Q[15]));
  FDCE \q_reg[16] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(D[16]),
        .Q(Q[16]));
  FDCE \q_reg[17] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(D[17]),
        .Q(Q[17]));
  FDCE \q_reg[18] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(D[18]),
        .Q(Q[18]));
  FDCE \q_reg[19] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(D[19]),
        .Q(Q[19]));
  FDCE \q_reg[1] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(D[1]),
        .Q(Q[1]));
  FDCE \q_reg[20] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(D[20]),
        .Q(Q[20]));
  FDCE \q_reg[21] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(D[21]),
        .Q(Q[21]));
  FDCE \q_reg[22] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(D[22]),
        .Q(Q[22]));
  FDCE \q_reg[23] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(D[23]),
        .Q(Q[23]));
  FDCE \q_reg[24] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(D[24]),
        .Q(Q[24]));
  FDCE \q_reg[25] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(D[25]),
        .Q(Q[25]));
  FDCE \q_reg[26] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(D[26]),
        .Q(Q[26]));
  FDCE \q_reg[27] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(D[27]),
        .Q(Q[27]));
  FDCE \q_reg[28] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(D[28]),
        .Q(Q[28]));
  FDCE \q_reg[29] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(D[29]),
        .Q(Q[29]));
  FDCE \q_reg[2] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(D[2]),
        .Q(Q[2]));
  FDCE \q_reg[30] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(D[30]),
        .Q(Q[30]));
  FDCE \q_reg[31] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(D[31]),
        .Q(Q[31]));
  FDCE \q_reg[32] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(D[32]),
        .Q(Q[32]));
  FDCE \q_reg[33] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(D[33]),
        .Q(Q[33]));
  FDCE \q_reg[34] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(D[34]),
        .Q(Q[34]));
  FDCE \q_reg[35] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(D[35]),
        .Q(Q[35]));
  FDCE \q_reg[36] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(D[36]),
        .Q(Q[36]));
  FDCE \q_reg[37] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(D[37]),
        .Q(Q[37]));
  FDCE \q_reg[38] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(D[38]),
        .Q(Q[38]));
  FDCE \q_reg[39] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(D[39]),
        .Q(Q[39]));
  FDCE \q_reg[3] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(D[3]),
        .Q(Q[3]));
  FDCE \q_reg[40] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(D[40]),
        .Q(Q[40]));
  FDCE \q_reg[41] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(D[41]),
        .Q(Q[41]));
  FDCE \q_reg[42] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(D[42]),
        .Q(Q[42]));
  FDCE \q_reg[43] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(D[43]),
        .Q(Q[43]));
  FDCE \q_reg[44] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(D[44]),
        .Q(Q[44]));
  FDCE \q_reg[45] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(D[45]),
        .Q(Q[45]));
  FDCE \q_reg[46] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(D[46]),
        .Q(Q[46]));
  FDCE \q_reg[47] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(D[47]),
        .Q(Q[47]));
  FDCE \q_reg[48] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(D[48]),
        .Q(Q[48]));
  FDCE \q_reg[49] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(D[49]),
        .Q(Q[49]));
  FDCE \q_reg[4] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(D[4]),
        .Q(Q[4]));
  FDCE \q_reg[50] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(D[50]),
        .Q(Q[50]));
  FDCE \q_reg[51] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(D[51]),
        .Q(Q[51]));
  FDCE \q_reg[52] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(D[52]),
        .Q(Q[52]));
  FDCE \q_reg[53] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(D[53]),
        .Q(Q[53]));
  FDCE \q_reg[54] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(D[54]),
        .Q(Q[54]));
  FDCE \q_reg[55] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(D[55]),
        .Q(Q[55]));
  FDCE \q_reg[56] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(D[56]),
        .Q(Q[56]));
  FDCE \q_reg[57] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(D[57]),
        .Q(Q[57]));
  FDCE \q_reg[58] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(D[58]),
        .Q(Q[58]));
  FDCE \q_reg[59] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(D[59]),
        .Q(Q[59]));
  FDCE \q_reg[5] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(D[5]),
        .Q(Q[5]));
  FDCE \q_reg[60] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(D[60]),
        .Q(Q[60]));
  FDCE \q_reg[61] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(D[61]),
        .Q(Q[61]));
  FDCE \q_reg[62] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(D[62]),
        .Q(Q[62]));
  FDCE \q_reg[63] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(D[63]),
        .Q(Q[63]));
  FDCE \q_reg[64] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(D[64]),
        .Q(Q[64]));
  FDCE \q_reg[65] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(D[65]),
        .Q(Q[65]));
  FDCE \q_reg[66] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(D[66]),
        .Q(Q[66]));
  FDCE \q_reg[67] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(D[67]),
        .Q(Q[67]));
  FDCE \q_reg[68] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(D[68]),
        .Q(Q[68]));
  FDCE \q_reg[69] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(D[69]),
        .Q(Q[69]));
  FDCE \q_reg[6] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(D[6]),
        .Q(Q[6]));
  FDCE \q_reg[70] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(D[70]),
        .Q(Q[70]));
  FDCE \q_reg[71] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(D[71]),
        .Q(Q[71]));
  FDCE \q_reg[72] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(D[72]),
        .Q(Q[72]));
  FDCE \q_reg[73] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(D[73]),
        .Q(Q[73]));
  FDCE \q_reg[74] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(D[74]),
        .Q(Q[74]));
  FDCE \q_reg[75] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(D[75]),
        .Q(Q[75]));
  FDCE \q_reg[76] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(D[76]),
        .Q(Q[76]));
  FDCE \q_reg[77] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(D[77]),
        .Q(Q[77]));
  FDCE \q_reg[78] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(D[78]),
        .Q(Q[78]));
  FDCE \q_reg[79] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(D[79]),
        .Q(Q[79]));
  FDCE \q_reg[7] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(D[7]),
        .Q(Q[7]));
  FDCE \q_reg[80] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(D[80]),
        .Q(Q[80]));
  FDCE \q_reg[81] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(D[81]),
        .Q(Q[81]));
  FDCE \q_reg[82] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(D[82]),
        .Q(Q[82]));
  FDCE \q_reg[83] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(D[83]),
        .Q(Q[83]));
  FDCE \q_reg[84] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(D[84]),
        .Q(Q[84]));
  FDCE \q_reg[85] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(D[85]),
        .Q(Q[85]));
  FDCE \q_reg[86] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(D[86]),
        .Q(Q[86]));
  FDCE \q_reg[87] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(D[87]),
        .Q(Q[87]));
  FDCE \q_reg[88] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(D[88]),
        .Q(Q[88]));
  FDCE \q_reg[89] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(D[89]),
        .Q(Q[89]));
  FDCE \q_reg[8] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(D[8]),
        .Q(Q[8]));
  FDCE \q_reg[90] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(D[90]),
        .Q(Q[90]));
  FDCE \q_reg[91] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(D[91]),
        .Q(Q[91]));
  FDCE \q_reg[92] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(D[92]),
        .Q(Q[92]));
  FDCE \q_reg[93] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(D[93]),
        .Q(Q[93]));
  FDCE \q_reg[94] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(D[94]),
        .Q(Q[94]));
  FDCE \q_reg[95] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(D[95]),
        .Q(Q[95]));
  FDCE \q_reg[96] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(D[96]),
        .Q(Q[96]));
  FDCE \q_reg[97] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(D[97]),
        .Q(Q[97]));
  FDCE \q_reg[98] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(D[98]),
        .Q(Q[98]));
  FDCE \q_reg[99] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(D[99]),
        .Q(Q[99]));
  FDCE \q_reg[9] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(D[9]),
        .Q(Q[9]));
  LUT4 #(
    .INIT(16'h9009)) 
    sum__0_carry_i_23
       (.I0(Q[69]),
        .I1(sum__0_carry_i_13[0]),
        .I2(sum__0_carry_i_13[1]),
        .I3(Q[70]),
        .O(\q_reg[69]_0 ));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_flopenrc
   (\q_reg[6]_0 ,
    ALUResultE,
    \q_reg[8]_0 ,
    \q_reg[6]_1 ,
    \q[31]_i_15_0 ,
    v__7,
    Q,
    \q_reg[7]_0 ,
    \q_reg[6]_2 ,
    \q_reg[8]_1 ,
    \q_reg[6]_3 ,
    \q_reg[9]_0 ,
    \q_reg[5]_0 ,
    ltE,
    \q[31]_i_5 ,
    data8,
    \q_reg[134] ,
    \q_reg[134]_0 ,
    \q_reg[124] ,
    \q_reg[124]_0 ,
    \q_reg[125] ,
    \q_reg[125]_0 ,
    \q_reg[126] ,
    \q_reg[126]_0 ,
    \q_reg[127] ,
    \q_reg[127]_0 ,
    \q_reg[128] ,
    \q_reg[128]_0 ,
    \q_reg[129] ,
    \q_reg[129]_0 ,
    \q_reg[130] ,
    \q_reg[130]_0 ,
    \q_reg[131] ,
    \q_reg[131]_0 ,
    \q_reg[132] ,
    \q_reg[132]_0 ,
    \q_reg[133] ,
    \q_reg[133]_0 ,
    O,
    SrcBE,
    SrcAE,
    \q_reg[134]_1 ,
    \q_reg[179] ,
    PCReadyM,
    D,
    clk,
    reset);
  output \q_reg[6]_0 ;
  output [10:0]ALUResultE;
  output \q_reg[8]_0 ;
  output \q_reg[6]_1 ;
  output \q[31]_i_15_0 ;
  output v__7;
  output [11:0]Q;
  output \q_reg[7]_0 ;
  output \q_reg[6]_2 ;
  output \q_reg[8]_1 ;
  output \q_reg[6]_3 ;
  output \q_reg[9]_0 ;
  output \q_reg[5]_0 ;
  input ltE;
  input \q[31]_i_5 ;
  input [10:0]data8;
  input \q_reg[134] ;
  input \q_reg[134]_0 ;
  input \q_reg[124] ;
  input \q_reg[124]_0 ;
  input \q_reg[125] ;
  input \q_reg[125]_0 ;
  input \q_reg[126] ;
  input \q_reg[126]_0 ;
  input \q_reg[127] ;
  input \q_reg[127]_0 ;
  input \q_reg[128] ;
  input \q_reg[128]_0 ;
  input \q_reg[129] ;
  input \q_reg[129]_0 ;
  input \q_reg[130] ;
  input \q_reg[130]_0 ;
  input \q_reg[131] ;
  input \q_reg[131]_0 ;
  input \q_reg[132] ;
  input \q_reg[132]_0 ;
  input \q_reg[133] ;
  input \q_reg[133]_0 ;
  input [0:0]O;
  input [12:0]SrcBE;
  input [0:0]SrcAE;
  input [10:0]\q_reg[134]_1 ;
  input \q_reg[179] ;
  input PCReadyM;
  input [11:0]D;
  input clk;
  input reset;

  wire [10:0]ALUResultE;
  wire [11:0]D;
  wire [0:0]O;
  wire PCReadyM;
  wire [11:0]Q;
  wire [0:0]SrcAE;
  wire [12:0]SrcBE;
  wire clk;
  wire [10:0]data8;
  wire ltE;
  wire \q[124]_i_2_n_0 ;
  wire \q[125]_i_2_n_0 ;
  wire \q[126]_i_2_n_0 ;
  wire \q[127]_i_2_n_0 ;
  wire \q[128]_i_2_n_0 ;
  wire \q[129]_i_2_n_0 ;
  wire \q[130]_i_2_n_0 ;
  wire \q[131]_i_2_n_0 ;
  wire \q[132]_i_2_n_0 ;
  wire \q[133]_i_2_n_0 ;
  wire \q[134]_i_2_n_0 ;
  wire \q[31]_i_15_0 ;
  wire \q[31]_i_15_n_0 ;
  wire \q[31]_i_16_n_0 ;
  wire \q[31]_i_5 ;
  wire \q_reg[124] ;
  wire \q_reg[124]_0 ;
  wire \q_reg[125] ;
  wire \q_reg[125]_0 ;
  wire \q_reg[126] ;
  wire \q_reg[126]_0 ;
  wire \q_reg[127] ;
  wire \q_reg[127]_0 ;
  wire \q_reg[128] ;
  wire \q_reg[128]_0 ;
  wire \q_reg[129] ;
  wire \q_reg[129]_0 ;
  wire \q_reg[130] ;
  wire \q_reg[130]_0 ;
  wire \q_reg[131] ;
  wire \q_reg[131]_0 ;
  wire \q_reg[132] ;
  wire \q_reg[132]_0 ;
  wire \q_reg[133] ;
  wire \q_reg[133]_0 ;
  wire \q_reg[134] ;
  wire \q_reg[134]_0 ;
  wire [10:0]\q_reg[134]_1 ;
  wire \q_reg[179] ;
  wire \q_reg[5]_0 ;
  wire \q_reg[6]_0 ;
  wire \q_reg[6]_1 ;
  wire \q_reg[6]_2 ;
  wire \q_reg[6]_3 ;
  wire \q_reg[7]_0 ;
  wire \q_reg[8]_0 ;
  wire \q_reg[8]_1 ;
  wire \q_reg[9]_0 ;
  wire reset;
  wire v__7;

  LUT2 #(
    .INIT(4'h8)) 
    \q[104]_i_4 
       (.I0(Q[3]),
        .I1(Q[2]),
        .O(\q_reg[6]_3 ));
  LUT6 #(
    .INIT(64'h0005010050000010)) 
    \q[104]_i_8 
       (.I0(Q[3]),
        .I1(Q[4]),
        .I2(O),
        .I3(SrcBE[12]),
        .I4(Q[2]),
        .I5(SrcAE),
        .O(v__7));
  LUT6 #(
    .INIT(64'hFFFFFFEAEAEAEAEA)) 
    \q[124]_i_1__0 
       (.I0(\q[124]_i_2_n_0 ),
        .I1(\q_reg[8]_0 ),
        .I2(data8[0]),
        .I3(\q_reg[124] ),
        .I4(\q_reg[124]_0 ),
        .I5(\q_reg[6]_1 ),
        .O(ALUResultE[0]));
  LUT6 #(
    .INIT(64'h1100100010000000)) 
    \q[124]_i_2 
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(\q_reg[134]_1 [0]),
        .I5(SrcBE[1]),
        .O(\q[124]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEAEAEAEAEA)) 
    \q[125]_i_1__0 
       (.I0(\q[125]_i_2_n_0 ),
        .I1(\q_reg[8]_0 ),
        .I2(data8[1]),
        .I3(\q_reg[125] ),
        .I4(\q_reg[125]_0 ),
        .I5(\q_reg[6]_1 ),
        .O(ALUResultE[1]));
  LUT6 #(
    .INIT(64'h1100100010000000)) 
    \q[125]_i_2 
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(\q_reg[134]_1 [1]),
        .I5(SrcBE[2]),
        .O(\q[125]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEAEAEAEAEA)) 
    \q[126]_i_1__0 
       (.I0(\q[126]_i_2_n_0 ),
        .I1(\q_reg[8]_0 ),
        .I2(data8[2]),
        .I3(\q_reg[126] ),
        .I4(\q_reg[126]_0 ),
        .I5(\q_reg[6]_1 ),
        .O(ALUResultE[2]));
  LUT6 #(
    .INIT(64'h1100100010000000)) 
    \q[126]_i_2 
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(\q_reg[134]_1 [2]),
        .I5(SrcBE[3]),
        .O(\q[126]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEAEAEAEAEA)) 
    \q[127]_i_1__0 
       (.I0(\q[127]_i_2_n_0 ),
        .I1(\q_reg[8]_0 ),
        .I2(data8[3]),
        .I3(\q_reg[127] ),
        .I4(\q_reg[127]_0 ),
        .I5(\q_reg[6]_1 ),
        .O(ALUResultE[3]));
  LUT6 #(
    .INIT(64'h1100100010000000)) 
    \q[127]_i_2 
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(\q_reg[134]_1 [3]),
        .I5(SrcBE[4]),
        .O(\q[127]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEAEAEAEAEA)) 
    \q[128]_i_1__0 
       (.I0(\q[128]_i_2_n_0 ),
        .I1(\q_reg[8]_0 ),
        .I2(data8[4]),
        .I3(\q_reg[128] ),
        .I4(\q_reg[128]_0 ),
        .I5(\q_reg[6]_1 ),
        .O(ALUResultE[4]));
  LUT6 #(
    .INIT(64'h1100100010000000)) 
    \q[128]_i_2 
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(\q_reg[134]_1 [4]),
        .I5(SrcBE[5]),
        .O(\q[128]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEAEAEAEAEA)) 
    \q[129]_i_1__0 
       (.I0(\q[129]_i_2_n_0 ),
        .I1(\q_reg[8]_0 ),
        .I2(data8[5]),
        .I3(\q_reg[129] ),
        .I4(\q_reg[129]_0 ),
        .I5(\q_reg[6]_1 ),
        .O(ALUResultE[5]));
  LUT6 #(
    .INIT(64'h1100100010000000)) 
    \q[129]_i_2 
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(\q_reg[134]_1 [5]),
        .I5(SrcBE[6]),
        .O(\q[129]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEAEAEAEAEA)) 
    \q[130]_i_1__0 
       (.I0(\q[130]_i_2_n_0 ),
        .I1(\q_reg[8]_0 ),
        .I2(data8[6]),
        .I3(\q_reg[130] ),
        .I4(\q_reg[130]_0 ),
        .I5(\q_reg[6]_1 ),
        .O(ALUResultE[6]));
  LUT6 #(
    .INIT(64'h1100100010000000)) 
    \q[130]_i_2 
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(\q_reg[134]_1 [6]),
        .I5(SrcBE[7]),
        .O(\q[130]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEAEAEAEAEA)) 
    \q[131]_i_1__0 
       (.I0(\q[131]_i_2_n_0 ),
        .I1(\q_reg[8]_0 ),
        .I2(data8[7]),
        .I3(\q_reg[131] ),
        .I4(\q_reg[131]_0 ),
        .I5(\q_reg[6]_1 ),
        .O(ALUResultE[7]));
  LUT6 #(
    .INIT(64'h1100100010000000)) 
    \q[131]_i_2 
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(\q_reg[134]_1 [7]),
        .I5(SrcBE[8]),
        .O(\q[131]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEAEAEAEAEA)) 
    \q[132]_i_1__0 
       (.I0(\q[132]_i_2_n_0 ),
        .I1(\q_reg[8]_0 ),
        .I2(data8[8]),
        .I3(\q_reg[132] ),
        .I4(\q_reg[132]_0 ),
        .I5(\q_reg[6]_1 ),
        .O(ALUResultE[8]));
  LUT6 #(
    .INIT(64'h1100100010000000)) 
    \q[132]_i_2 
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(\q_reg[134]_1 [8]),
        .I5(SrcBE[9]),
        .O(\q[132]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEAEAEAEAEA)) 
    \q[133]_i_1__0 
       (.I0(\q[133]_i_2_n_0 ),
        .I1(\q_reg[8]_0 ),
        .I2(data8[9]),
        .I3(\q_reg[133] ),
        .I4(\q_reg[133]_0 ),
        .I5(\q_reg[6]_1 ),
        .O(ALUResultE[9]));
  LUT6 #(
    .INIT(64'h1100100010000000)) 
    \q[133]_i_2 
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(\q_reg[134]_1 [9]),
        .I5(SrcBE[10]),
        .O(\q[133]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEAEAEAEAEA)) 
    \q[134]_i_1__0 
       (.I0(\q[134]_i_2_n_0 ),
        .I1(\q_reg[8]_0 ),
        .I2(data8[10]),
        .I3(\q_reg[134] ),
        .I4(\q_reg[134]_0 ),
        .I5(\q_reg[6]_1 ),
        .O(ALUResultE[10]));
  LUT6 #(
    .INIT(64'h1100100010000000)) 
    \q[134]_i_2 
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(\q_reg[134]_1 [10]),
        .I5(SrcBE[11]),
        .O(\q[134]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \q[134]_i_3 
       (.I0(Q[5]),
        .I1(Q[4]),
        .O(\q_reg[8]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \q[134]_i_6 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[3]),
        .O(\q_reg[7]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \q[135]_i_5 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[4]),
        .O(\q_reg[6]_2 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h0D)) 
    \q[135]_i_6 
       (.I0(Q[3]),
        .I1(Q[4]),
        .I2(Q[5]),
        .O(\q_reg[6]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \q[135]_i_7 
       (.I0(Q[5]),
        .I1(Q[3]),
        .I2(Q[4]),
        .O(\q_reg[8]_1 ));
  LUT2 #(
    .INIT(4'h2)) 
    \q[179]_i_2 
       (.I0(Q[6]),
        .I1(\q_reg[179] ),
        .O(\q_reg[9]_0 ));
  LUT5 #(
    .INIT(32'h10000000)) 
    \q[31]_i_12 
       (.I0(ltE),
        .I1(ALUResultE[10]),
        .I2(\q[31]_i_15_n_0 ),
        .I3(\q[31]_i_16_n_0 ),
        .I4(\q[31]_i_5 ),
        .O(\q_reg[6]_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \q[31]_i_15 
       (.I0(ALUResultE[6]),
        .I1(ALUResultE[7]),
        .I2(ALUResultE[4]),
        .I3(ALUResultE[5]),
        .I4(ALUResultE[9]),
        .I5(ALUResultE[8]),
        .O(\q[31]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \q[31]_i_16 
       (.I0(ALUResultE[1]),
        .I1(ALUResultE[0]),
        .I2(ALUResultE[3]),
        .I3(ALUResultE[2]),
        .O(\q[31]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \q[95]_i_3 
       (.I0(\q[31]_i_5 ),
        .I1(ALUResultE[1]),
        .I2(ALUResultE[0]),
        .I3(ALUResultE[3]),
        .I4(ALUResultE[2]),
        .I5(\q[31]_i_15_n_0 ),
        .O(\q[31]_i_15_0 ));
  FDCE \q_reg[0] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(D[0]),
        .Q(Q[0]));
  FDCE \q_reg[10] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(D[7]),
        .Q(Q[7]));
  FDCE \q_reg[11] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(D[8]),
        .Q(Q[8]));
  FDCE \q_reg[12] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(D[9]),
        .Q(Q[9]));
  FDCE \q_reg[13] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(D[10]),
        .Q(Q[10]));
  FDCE \q_reg[14] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(D[11]),
        .Q(Q[11]));
  FDCE \q_reg[4] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(D[1]),
        .Q(Q[1]));
  FDCE \q_reg[5] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(D[2]),
        .Q(Q[2]));
  FDCE \q_reg[6] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(D[3]),
        .Q(Q[3]));
  FDCE \q_reg[7] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(D[4]),
        .Q(Q[4]));
  FDCE \q_reg[8] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(D[5]),
        .Q(Q[5]));
  FDCE \q_reg[9] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(D[6]),
        .Q(Q[6]));
  LUT2 #(
    .INIT(4'h6)) 
    sum__0_carry_i_1
       (.I0(Q[2]),
        .I1(SrcBE[0]),
        .O(\q_reg[5]_0 ));
endmodule

(* ORIG_REF_NAME = "flopenrc" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_flopenrc__parameterized0
   (D,
    \q_reg[70]_0 ,
    ALUOpD,
    \q_reg[66]_0 ,
    Q,
    \q_reg[94]_0 ,
    \q_reg[79]_0 ,
    \q_reg[84]_0 ,
    rd11__3,
    rd21__3,
    \q_reg[84]_1 ,
    \q_reg[85]_0 ,
    \q_reg[86]_0 ,
    \q_reg[87]_0 ,
    \q_reg[88]_0 ,
    \q_reg[95]_0 ,
    controls__21,
    \q_reg[66]_1 ,
    \q_reg[66]_2 ,
    \q_reg[77]_0 ,
    \q_reg[78]_0 ,
    \q_reg[70]_1 ,
    \q_reg[68]_0 ,
    \q_reg[5]_0 ,
    \q_reg[5]_1 ,
    \q_reg[5]_2 ,
    \q[31]_i_3 ,
    E,
    \q_reg[95]_1 ,
    clk,
    reset);
  output [2:0]D;
  output \q_reg[70]_0 ;
  output [0:0]ALUOpD;
  output [1:0]\q_reg[66]_0 ;
  output [89:0]Q;
  output [18:0]\q_reg[94]_0 ;
  output \q_reg[79]_0 ;
  output \q_reg[84]_0 ;
  output rd11__3;
  output rd21__3;
  output \q_reg[84]_1 ;
  output \q_reg[85]_0 ;
  output \q_reg[86]_0 ;
  output \q_reg[87]_0 ;
  output \q_reg[88]_0 ;
  output \q_reg[95]_0 ;
  output [0:0]controls__21;
  output \q_reg[66]_1 ;
  output \q_reg[66]_2 ;
  output \q_reg[77]_0 ;
  output \q_reg[78]_0 ;
  output \q_reg[70]_1 ;
  output \q_reg[68]_0 ;
  input \q_reg[5]_0 ;
  input \q_reg[5]_1 ;
  input \q_reg[5]_2 ;
  input [1:0]\q[31]_i_3 ;
  input [0:0]E;
  input [92:0]\q_reg[95]_1 ;
  input clk;
  input reset;

  wire [0:0]ALUOpD;
  wire [2:0]D;
  wire [0:0]E;
  wire [0:0]ImmSrcD;
  wire [89:0]Q;
  wire clk;
  wire [0:0]controls__21;
  wire [6:3]opD;
  wire \q[12]_i_2_n_0 ;
  wire [1:0]\q[31]_i_3 ;
  wire \q[41]_i_3_n_0 ;
  wire \q[49]_i_2_n_0 ;
  wire \q[50]_i_2_n_0 ;
  wire \q[51]_i_2_n_0 ;
  wire \q[52]_i_2_n_0 ;
  wire \q[53]_i_2_n_0 ;
  wire \q[54]_i_2_n_0 ;
  wire \q[55]_i_2_n_0 ;
  wire \q[56]_i_2_n_0 ;
  wire \q[5]_i_2_n_0 ;
  wire \q[6]_i_2_n_0 ;
  wire \q[6]_i_3_n_0 ;
  wire \q_reg[5]_0 ;
  wire \q_reg[5]_1 ;
  wire \q_reg[5]_2 ;
  wire [1:0]\q_reg[66]_0 ;
  wire \q_reg[66]_1 ;
  wire \q_reg[66]_2 ;
  wire \q_reg[68]_0 ;
  wire \q_reg[70]_0 ;
  wire \q_reg[70]_1 ;
  wire \q_reg[77]_0 ;
  wire \q_reg[78]_0 ;
  wire \q_reg[79]_0 ;
  wire \q_reg[84]_0 ;
  wire \q_reg[84]_1 ;
  wire \q_reg[85]_0 ;
  wire \q_reg[86]_0 ;
  wire \q_reg[87]_0 ;
  wire \q_reg[88]_0 ;
  wire [18:0]\q_reg[94]_0 ;
  wire \q_reg[95]_0 ;
  wire [92:0]\q_reg[95]_1 ;
  wire rd11__3;
  wire rd21__3;
  wire reset;

  LUT2 #(
    .INIT(4'h1)) 
    \q[0]_i_2 
       (.I0(opD[4]),
        .I1(opD[6]),
        .O(\q_reg[68]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \q[10]_i_2 
       (.I0(Q[63]),
        .I1(opD[6]),
        .O(\q_reg[66]_2 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \q[11]_i_2 
       (.I0(opD[6]),
        .I1(Q[64]),
        .I2(opD[4]),
        .O(controls__21));
  LUT6 #(
    .INIT(64'h000000C000000080)) 
    \q[12]_i_1 
       (.I0(\q_reg[66]_0 [1]),
        .I1(Q[62]),
        .I2(\q_reg[5]_2 ),
        .I3(\q_reg[5]_1 ),
        .I4(\q_reg[5]_0 ),
        .I5(\q[12]_i_2_n_0 ),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \q[12]_i_2 
       (.I0(Q[64]),
        .I1(opD[4]),
        .I2(Q[63]),
        .O(\q[12]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \q[147]_i_2 
       (.I0(Q[82]),
        .I1(Q[78]),
        .I2(Q[79]),
        .I3(Q[80]),
        .I4(Q[81]),
        .O(rd21__3));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \q[14]_i_2 
       (.I0(Q[63]),
        .I1(opD[4]),
        .I2(Q[64]),
        .O(\q_reg[66]_1 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \q[179]_i_3 
       (.I0(Q[77]),
        .I1(Q[73]),
        .I2(Q[74]),
        .I3(Q[75]),
        .I4(Q[76]),
        .O(rd11__3));
  LUT4 #(
    .INIT(16'h9009)) 
    \q[31]_i_7 
       (.I0(Q[73]),
        .I1(\q[31]_i_3 [0]),
        .I2(Q[74]),
        .I3(\q[31]_i_3 [1]),
        .O(\q_reg[79]_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \q[31]_i_9 
       (.I0(Q[78]),
        .I1(\q[31]_i_3 [0]),
        .I2(Q[79]),
        .I3(\q[31]_i_3 [1]),
        .O(\q_reg[84]_0 ));
  LUT6 #(
    .INIT(64'h000000E2E2E200E2)) 
    \q[37]_i_2 
       (.I0(Q[78]),
        .I1(ImmSrcD),
        .I2(Q[65]),
        .I3(opD[6]),
        .I4(Q[63]),
        .I5(opD[3]),
        .O(\q_reg[84]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \q[38]_i_2 
       (.I0(Q[79]),
        .I1(\q[41]_i_3_n_0 ),
        .I2(Q[66]),
        .O(\q_reg[85]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \q[39]_i_2 
       (.I0(Q[80]),
        .I1(\q[41]_i_3_n_0 ),
        .I2(Q[67]),
        .O(\q_reg[86]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \q[3]_i_2 
       (.I0(opD[3]),
        .I1(Q[63]),
        .I2(opD[6]),
        .O(\q_reg[66]_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \q[40]_i_2 
       (.I0(Q[81]),
        .I1(\q[41]_i_3_n_0 ),
        .I2(Q[68]),
        .O(\q_reg[87]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \q[41]_i_2 
       (.I0(Q[82]),
        .I1(\q[41]_i_3_n_0 ),
        .I2(Q[69]),
        .O(\q_reg[88]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hEEEEBB8B)) 
    \q[41]_i_3 
       (.I0(Q[63]),
        .I1(opD[6]),
        .I2(Q[64]),
        .I3(opD[4]),
        .I4(opD[3]),
        .O(\q[41]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFACA0ACA)) 
    \q[48]_i_2 
       (.I0(Q[89]),
        .I1(Q[65]),
        .I2(\q_reg[66]_0 [0]),
        .I3(ImmSrcD),
        .I4(Q[78]),
        .O(\q_reg[95]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hAABA)) 
    \q[48]_i_3 
       (.I0(opD[3]),
        .I1(opD[4]),
        .I2(Q[64]),
        .I3(opD[6]),
        .O(ImmSrcD));
  LUT6 #(
    .INIT(64'h000000000000AC00)) 
    \q[49]_i_1 
       (.I0(Q[70]),
        .I1(\q[49]_i_2_n_0 ),
        .I2(\q_reg[66]_0 [1]),
        .I3(\q_reg[5]_2 ),
        .I4(\q_reg[5]_1 ),
        .I5(\q_reg[5]_0 ),
        .O(\q_reg[94]_0 [0]));
  LUT5 #(
    .INIT(32'hFF1FE000)) 
    \q[49]_i_2 
       (.I0(Q[63]),
        .I1(opD[6]),
        .I2(opD[3]),
        .I3(Q[70]),
        .I4(Q[89]),
        .O(\q[49]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000D1D00000000)) 
    \q[4]_i_2 
       (.I0(opD[6]),
        .I1(Q[63]),
        .I2(opD[4]),
        .I3(Q[64]),
        .I4(opD[3]),
        .I5(Q[62]),
        .O(\q_reg[70]_1 ));
  LUT6 #(
    .INIT(64'h000000000000AC00)) 
    \q[50]_i_1 
       (.I0(Q[71]),
        .I1(\q[50]_i_2_n_0 ),
        .I2(\q_reg[66]_0 [1]),
        .I3(\q_reg[5]_2 ),
        .I4(\q_reg[5]_1 ),
        .I5(\q_reg[5]_0 ),
        .O(\q_reg[94]_0 [1]));
  LUT5 #(
    .INIT(32'hFF1FE000)) 
    \q[50]_i_2 
       (.I0(Q[63]),
        .I1(opD[6]),
        .I2(opD[3]),
        .I3(Q[71]),
        .I4(Q[89]),
        .O(\q[50]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000AC00)) 
    \q[51]_i_1 
       (.I0(Q[72]),
        .I1(\q[51]_i_2_n_0 ),
        .I2(\q_reg[66]_0 [1]),
        .I3(\q_reg[5]_2 ),
        .I4(\q_reg[5]_1 ),
        .I5(\q_reg[5]_0 ),
        .O(\q_reg[94]_0 [2]));
  LUT5 #(
    .INIT(32'hFF1FE000)) 
    \q[51]_i_2 
       (.I0(Q[63]),
        .I1(opD[6]),
        .I2(opD[3]),
        .I3(Q[72]),
        .I4(Q[89]),
        .O(\q[51]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000AC00)) 
    \q[52]_i_1 
       (.I0(Q[73]),
        .I1(\q[52]_i_2_n_0 ),
        .I2(\q_reg[66]_0 [1]),
        .I3(\q_reg[5]_2 ),
        .I4(\q_reg[5]_1 ),
        .I5(\q_reg[5]_0 ),
        .O(\q_reg[94]_0 [3]));
  LUT5 #(
    .INIT(32'hFF1FE000)) 
    \q[52]_i_2 
       (.I0(Q[63]),
        .I1(opD[6]),
        .I2(opD[3]),
        .I3(Q[73]),
        .I4(Q[89]),
        .O(\q[52]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000AC00)) 
    \q[53]_i_1 
       (.I0(Q[74]),
        .I1(\q[53]_i_2_n_0 ),
        .I2(\q_reg[66]_0 [1]),
        .I3(\q_reg[5]_2 ),
        .I4(\q_reg[5]_1 ),
        .I5(\q_reg[5]_0 ),
        .O(\q_reg[94]_0 [4]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hFF1FE000)) 
    \q[53]_i_2 
       (.I0(Q[63]),
        .I1(opD[6]),
        .I2(opD[3]),
        .I3(Q[74]),
        .I4(Q[89]),
        .O(\q[53]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000AC00)) 
    \q[54]_i_1 
       (.I0(Q[75]),
        .I1(\q[54]_i_2_n_0 ),
        .I2(\q_reg[66]_0 [1]),
        .I3(\q_reg[5]_2 ),
        .I4(\q_reg[5]_1 ),
        .I5(\q_reg[5]_0 ),
        .O(\q_reg[94]_0 [5]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hFF1FE000)) 
    \q[54]_i_2 
       (.I0(Q[63]),
        .I1(opD[6]),
        .I2(opD[3]),
        .I3(Q[75]),
        .I4(Q[89]),
        .O(\q[54]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000AC00)) 
    \q[55]_i_1 
       (.I0(Q[76]),
        .I1(\q[55]_i_2_n_0 ),
        .I2(\q_reg[66]_0 [1]),
        .I3(\q_reg[5]_2 ),
        .I4(\q_reg[5]_1 ),
        .I5(\q_reg[5]_0 ),
        .O(\q_reg[94]_0 [6]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hFF1FE000)) 
    \q[55]_i_2 
       (.I0(Q[63]),
        .I1(opD[6]),
        .I2(opD[3]),
        .I3(Q[76]),
        .I4(Q[89]),
        .O(\q[55]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000AC00)) 
    \q[56]_i_1 
       (.I0(Q[77]),
        .I1(\q[56]_i_2_n_0 ),
        .I2(\q_reg[66]_0 [1]),
        .I3(\q_reg[5]_2 ),
        .I4(\q_reg[5]_1 ),
        .I5(\q_reg[5]_0 ),
        .O(\q_reg[94]_0 [7]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hFF1FE000)) 
    \q[56]_i_2 
       (.I0(Q[63]),
        .I1(opD[6]),
        .I2(opD[3]),
        .I3(Q[77]),
        .I4(Q[89]),
        .O(\q[56]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000AC00)) 
    \q[57]_i_1 
       (.I0(Q[78]),
        .I1(Q[89]),
        .I2(\q_reg[66]_0 [1]),
        .I3(\q_reg[5]_2 ),
        .I4(\q_reg[5]_1 ),
        .I5(\q_reg[5]_0 ),
        .O(\q_reg[94]_0 [8]));
  LUT6 #(
    .INIT(64'h000000000000AC00)) 
    \q[58]_i_1 
       (.I0(Q[79]),
        .I1(Q[89]),
        .I2(\q_reg[66]_0 [1]),
        .I3(\q_reg[5]_2 ),
        .I4(\q_reg[5]_1 ),
        .I5(\q_reg[5]_0 ),
        .O(\q_reg[94]_0 [9]));
  LUT6 #(
    .INIT(64'h000000000000AC00)) 
    \q[59]_i_1 
       (.I0(Q[80]),
        .I1(Q[89]),
        .I2(\q_reg[66]_0 [1]),
        .I3(\q_reg[5]_2 ),
        .I4(\q_reg[5]_1 ),
        .I5(\q_reg[5]_0 ),
        .O(\q_reg[94]_0 [10]));
  LUT6 #(
    .INIT(64'h0200020003000000)) 
    \q[5]_i_1 
       (.I0(\q[5]_i_2_n_0 ),
        .I1(\q_reg[5]_0 ),
        .I2(\q_reg[5]_1 ),
        .I3(\q_reg[5]_2 ),
        .I4(\q_reg[70]_0 ),
        .I5(ALUOpD),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h0F0FF008)) 
    \q[5]_i_2 
       (.I0(Q[88]),
        .I1(Q[64]),
        .I2(Q[70]),
        .I3(Q[72]),
        .I4(Q[71]),
        .O(\q[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000AC00)) 
    \q[60]_i_1 
       (.I0(Q[81]),
        .I1(Q[89]),
        .I2(\q_reg[66]_0 [1]),
        .I3(\q_reg[5]_2 ),
        .I4(\q_reg[5]_1 ),
        .I5(\q_reg[5]_0 ),
        .O(\q_reg[94]_0 [11]));
  LUT6 #(
    .INIT(64'h000000000000AC00)) 
    \q[61]_i_1 
       (.I0(Q[82]),
        .I1(Q[89]),
        .I2(\q_reg[66]_0 [1]),
        .I3(\q_reg[5]_2 ),
        .I4(\q_reg[5]_1 ),
        .I5(\q_reg[5]_0 ),
        .O(\q_reg[94]_0 [12]));
  LUT6 #(
    .INIT(64'h000000000000AC00)) 
    \q[62]_i_1 
       (.I0(Q[83]),
        .I1(Q[89]),
        .I2(\q_reg[66]_0 [1]),
        .I3(\q_reg[5]_2 ),
        .I4(\q_reg[5]_1 ),
        .I5(\q_reg[5]_0 ),
        .O(\q_reg[94]_0 [13]));
  LUT6 #(
    .INIT(64'h000000000000AC00)) 
    \q[63]_i_1 
       (.I0(Q[84]),
        .I1(Q[89]),
        .I2(\q_reg[66]_0 [1]),
        .I3(\q_reg[5]_2 ),
        .I4(\q_reg[5]_1 ),
        .I5(\q_reg[5]_0 ),
        .O(\q_reg[94]_0 [14]));
  LUT6 #(
    .INIT(64'h000000000000AC00)) 
    \q[64]_i_1 
       (.I0(Q[85]),
        .I1(Q[89]),
        .I2(\q_reg[66]_0 [1]),
        .I3(\q_reg[5]_2 ),
        .I4(\q_reg[5]_1 ),
        .I5(\q_reg[5]_0 ),
        .O(\q_reg[94]_0 [15]));
  LUT6 #(
    .INIT(64'h000000000000AC00)) 
    \q[65]_i_1 
       (.I0(Q[86]),
        .I1(Q[89]),
        .I2(\q_reg[66]_0 [1]),
        .I3(\q_reg[5]_2 ),
        .I4(\q_reg[5]_1 ),
        .I5(\q_reg[5]_0 ),
        .O(\q_reg[94]_0 [16]));
  LUT6 #(
    .INIT(64'h000000000000AC00)) 
    \q[66]_i_1 
       (.I0(Q[87]),
        .I1(Q[89]),
        .I2(\q_reg[66]_0 [1]),
        .I3(\q_reg[5]_2 ),
        .I4(\q_reg[5]_1 ),
        .I5(\q_reg[5]_0 ),
        .O(\q_reg[94]_0 [17]));
  LUT6 #(
    .INIT(64'h000000000000AC00)) 
    \q[67]_i_1 
       (.I0(Q[88]),
        .I1(Q[89]),
        .I2(\q_reg[66]_0 [1]),
        .I3(\q_reg[5]_2 ),
        .I4(\q_reg[5]_1 ),
        .I5(\q_reg[5]_0 ),
        .O(\q_reg[94]_0 [18]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[67]_i_2 
       (.I0(Q[63]),
        .I1(opD[6]),
        .O(\q_reg[66]_0 [1]));
  LUT6 #(
    .INIT(64'h000000C000000080)) 
    \q[6]_i_1 
       (.I0(\q[6]_i_2_n_0 ),
        .I1(ALUOpD),
        .I2(\q_reg[5]_2 ),
        .I3(\q_reg[5]_1 ),
        .I4(\q_reg[5]_0 ),
        .I5(\q[6]_i_3_n_0 ),
        .O(D[1]));
  LUT2 #(
    .INIT(4'h8)) 
    \q[6]_i_2 
       (.I0(Q[71]),
        .I1(Q[72]),
        .O(\q[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[6]_i_3 
       (.I0(Q[70]),
        .I1(Q[71]),
        .O(\q[6]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h1E)) 
    \q[7]_i_2 
       (.I0(Q[72]),
        .I1(Q[70]),
        .I2(Q[71]),
        .O(\q_reg[78]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h6200)) 
    \q[8]_i_2 
       (.I0(Q[71]),
        .I1(Q[72]),
        .I2(Q[88]),
        .I3(Q[70]),
        .O(\q_reg[77]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[8]_i_3 
       (.I0(opD[4]),
        .I1(Q[63]),
        .O(ALUOpD));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[9]_i_2 
       (.I0(opD[6]),
        .I1(Q[63]),
        .O(\q_reg[70]_0 ));
  FDCE \q_reg[10] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_1 [8]),
        .Q(Q[8]));
  FDCE \q_reg[11] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_1 [9]),
        .Q(Q[9]));
  FDCE \q_reg[12] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_1 [10]),
        .Q(Q[10]));
  FDCE \q_reg[13] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_1 [11]),
        .Q(Q[11]));
  FDCE \q_reg[14] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_1 [12]),
        .Q(Q[12]));
  FDCE \q_reg[15] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_1 [13]),
        .Q(Q[13]));
  FDCE \q_reg[16] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_1 [14]),
        .Q(Q[14]));
  FDCE \q_reg[17] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_1 [15]),
        .Q(Q[15]));
  FDCE \q_reg[18] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_1 [16]),
        .Q(Q[16]));
  FDCE \q_reg[19] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_1 [17]),
        .Q(Q[17]));
  FDCE \q_reg[20] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_1 [18]),
        .Q(Q[18]));
  FDCE \q_reg[21] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_1 [19]),
        .Q(Q[19]));
  FDCE \q_reg[22] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_1 [20]),
        .Q(Q[20]));
  FDCE \q_reg[23] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_1 [21]),
        .Q(Q[21]));
  FDCE \q_reg[24] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_1 [22]),
        .Q(Q[22]));
  FDCE \q_reg[25] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_1 [23]),
        .Q(Q[23]));
  FDCE \q_reg[26] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_1 [24]),
        .Q(Q[24]));
  FDCE \q_reg[27] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_1 [25]),
        .Q(Q[25]));
  FDCE \q_reg[28] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_1 [26]),
        .Q(Q[26]));
  FDCE \q_reg[29] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_1 [27]),
        .Q(Q[27]));
  FDCE \q_reg[2] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_1 [0]),
        .Q(Q[0]));
  FDCE \q_reg[30] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_1 [28]),
        .Q(Q[28]));
  FDCE \q_reg[31] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_1 [29]),
        .Q(Q[29]));
  FDCE \q_reg[32] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_1 [30]),
        .Q(Q[30]));
  FDCE \q_reg[33] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_1 [31]),
        .Q(Q[31]));
  FDCE \q_reg[34] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_1 [32]),
        .Q(Q[32]));
  FDCE \q_reg[35] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_1 [33]),
        .Q(Q[33]));
  FDCE \q_reg[36] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_1 [34]),
        .Q(Q[34]));
  FDCE \q_reg[37] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_1 [35]),
        .Q(Q[35]));
  FDCE \q_reg[38] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_1 [36]),
        .Q(Q[36]));
  FDCE \q_reg[39] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_1 [37]),
        .Q(Q[37]));
  FDCE \q_reg[3] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_1 [1]),
        .Q(Q[1]));
  FDCE \q_reg[40] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_1 [38]),
        .Q(Q[38]));
  FDCE \q_reg[41] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_1 [39]),
        .Q(Q[39]));
  FDCE \q_reg[42] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_1 [40]),
        .Q(Q[40]));
  FDCE \q_reg[43] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_1 [41]),
        .Q(Q[41]));
  FDCE \q_reg[44] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_1 [42]),
        .Q(Q[42]));
  FDCE \q_reg[45] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_1 [43]),
        .Q(Q[43]));
  FDCE \q_reg[46] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_1 [44]),
        .Q(Q[44]));
  FDCE \q_reg[47] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_1 [45]),
        .Q(Q[45]));
  FDCE \q_reg[48] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_1 [46]),
        .Q(Q[46]));
  FDCE \q_reg[49] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_1 [47]),
        .Q(Q[47]));
  FDCE \q_reg[4] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_1 [2]),
        .Q(Q[2]));
  FDCE \q_reg[50] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_1 [48]),
        .Q(Q[48]));
  FDCE \q_reg[51] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_1 [49]),
        .Q(Q[49]));
  FDCE \q_reg[52] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_1 [50]),
        .Q(Q[50]));
  FDCE \q_reg[53] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_1 [51]),
        .Q(Q[51]));
  FDCE \q_reg[54] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_1 [52]),
        .Q(Q[52]));
  FDCE \q_reg[55] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_1 [53]),
        .Q(Q[53]));
  FDCE \q_reg[56] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_1 [54]),
        .Q(Q[54]));
  FDCE \q_reg[57] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_1 [55]),
        .Q(Q[55]));
  FDCE \q_reg[58] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_1 [56]),
        .Q(Q[56]));
  FDCE \q_reg[59] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_1 [57]),
        .Q(Q[57]));
  FDCE \q_reg[5] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_1 [3]),
        .Q(Q[3]));
  FDCE \q_reg[60] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_1 [58]),
        .Q(Q[58]));
  FDCE \q_reg[61] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_1 [59]),
        .Q(Q[59]));
  FDCE \q_reg[62] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_1 [60]),
        .Q(Q[60]));
  FDCE \q_reg[63] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_1 [61]),
        .Q(Q[61]));
  FDCE \q_reg[65] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_1 [62]),
        .Q(Q[62]));
  FDCE \q_reg[66] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_1 [63]),
        .Q(Q[63]));
  FDCE \q_reg[67] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_1 [64]),
        .Q(opD[3]));
  FDCE \q_reg[68] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_1 [65]),
        .Q(opD[4]));
  FDCE \q_reg[69] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_1 [66]),
        .Q(Q[64]));
  FDCE \q_reg[6] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_1 [4]),
        .Q(Q[4]));
  FDCE \q_reg[70] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_1 [67]),
        .Q(opD[6]));
  FDCE \q_reg[71] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_1 [68]),
        .Q(Q[65]));
  FDCE \q_reg[72] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_1 [69]),
        .Q(Q[66]));
  FDCE \q_reg[73] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_1 [70]),
        .Q(Q[67]));
  FDCE \q_reg[74] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_1 [71]),
        .Q(Q[68]));
  FDCE \q_reg[75] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_1 [72]),
        .Q(Q[69]));
  FDCE \q_reg[76] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_1 [73]),
        .Q(Q[70]));
  FDCE \q_reg[77] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_1 [74]),
        .Q(Q[71]));
  FDCE \q_reg[78] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_1 [75]),
        .Q(Q[72]));
  FDCE \q_reg[79] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_1 [76]),
        .Q(Q[73]));
  FDCE \q_reg[7] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_1 [5]),
        .Q(Q[5]));
  FDCE \q_reg[80] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_1 [77]),
        .Q(Q[74]));
  FDCE \q_reg[81] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_1 [78]),
        .Q(Q[75]));
  FDCE \q_reg[82] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_1 [79]),
        .Q(Q[76]));
  FDCE \q_reg[83] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_1 [80]),
        .Q(Q[77]));
  FDCE \q_reg[84] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_1 [81]),
        .Q(Q[78]));
  FDCE \q_reg[85] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_1 [82]),
        .Q(Q[79]));
  FDCE \q_reg[86] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_1 [83]),
        .Q(Q[80]));
  FDCE \q_reg[87] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_1 [84]),
        .Q(Q[81]));
  FDCE \q_reg[88] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_1 [85]),
        .Q(Q[82]));
  FDCE \q_reg[89] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_1 [86]),
        .Q(Q[83]));
  FDCE \q_reg[8] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_1 [6]),
        .Q(Q[6]));
  FDCE \q_reg[90] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_1 [87]),
        .Q(Q[84]));
  FDCE \q_reg[91] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_1 [88]),
        .Q(Q[85]));
  FDCE \q_reg[92] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_1 [89]),
        .Q(Q[86]));
  FDCE \q_reg[93] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_1 [90]),
        .Q(Q[87]));
  FDCE \q_reg[94] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_1 [91]),
        .Q(Q[88]));
  FDCE \q_reg[95] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_1 [92]),
        .Q(Q[89]));
  FDCE \q_reg[9] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\q_reg[95]_1 [7]),
        .Q(Q[7]));
endmodule

(* ORIG_REF_NAME = "flopenrc" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_flopenrc__parameterized1
   (D,
    \q_reg[68]_0 ,
    Q,
    \q_reg[65]_0 ,
    \q_reg[12]_0 ,
    \q_reg[10]_0 ,
    E,
    \q_reg[37]_0 ,
    \q_reg[179]_0 ,
    \q_reg[3]_0 ,
    \q_reg[0]_0 ,
    \q_reg[0]_1 ,
    data6,
    SrcAE,
    \q_reg[5] ,
    \q_reg[178]_0 ,
    \q_reg[5]_0 ,
    \q_reg[5]_1 ,
    \q_reg[5]_2 ,
    \q_reg[5]_3 ,
    \q_reg[6] ,
    \q_reg[5]_4 ,
    \q_reg[5]_5 ,
    \q_reg[5]_6 ,
    \q_reg[5]_7 ,
    \q_reg[5]_8 ,
    \q_reg[5]_9 ,
    \q_reg[43]_0 ,
    \q_reg[68]_1 ,
    \q_reg[179]_1 ,
    \q_reg[67]_0 ,
    \q_reg[67]_1 ,
    \q_reg[5]_10 ,
    \q_reg[175]_0 ,
    DI,
    \q_reg[51]_0 ,
    \q_reg[59]_0 ,
    \q_reg[6]_0 ,
    \q_reg[57]_0 ,
    \q_reg[58]_0 ,
    \q_reg[6]_1 ,
    \q_reg[59]_1 ,
    \q_reg[60]_0 ,
    \q_reg[6]_2 ,
    \q_reg[61]_0 ,
    \q_reg[62]_0 ,
    \q_reg[6]_3 ,
    \q_reg[63]_0 ,
    \q_reg[64]_0 ,
    \q_reg[6]_4 ,
    \q_reg[65]_1 ,
    \q_reg[66]_0 ,
    \q_reg[6]_5 ,
    \q_reg[179]_2 ,
    S,
    \q_reg[44]_0 ,
    \q_reg[48]_0 ,
    \q_reg[52]_0 ,
    \q_reg[56]_0 ,
    \q_reg[60]_1 ,
    \q_reg[64]_1 ,
    \q_reg[5]_11 ,
    \q_reg[5]_12 ,
    \q_reg[5]_13 ,
    \q_reg[5]_14 ,
    \q_reg[5]_15 ,
    \q_reg[5]_16 ,
    \q_reg[5]_17 ,
    \q_reg[37]_1 ,
    \q_reg[37]_2 ,
    \q_reg[37]_3 ,
    \q_reg[37]_4 ,
    \q_reg[37]_5 ,
    i__carry_i_15_0,
    i__carry_i_15_1,
    \q_reg[44]_1 ,
    \q_reg[52]_1 ,
    \q_reg[60]_2 ,
    \q_reg[6]_6 ,
    \q_reg[6]_7 ,
    \q_reg[6]_8 ,
    \q_reg[6]_9 ,
    \q_reg[6]_10 ,
    PCReadyM,
    \q_reg[67]_2 ,
    clk,
    reset,
    \q_reg[4]_0 ,
    \q_reg[4]_1 ,
    \q_reg[179]_3 ,
    ALUOpD,
    \q_reg[7]_0 ,
    \q_reg[8]_0 ,
    \q_reg[9]_0 ,
    \q_reg[10]_1 ,
    controls__21,
    \q_reg[68]_2 ,
    \q_reg[0]_2 ,
    \q_reg[14]_0 ,
    \q_reg[37]_6 ,
    \q_reg[37]_7 ,
    \q_reg[38]_0 ,
    \q_reg[39]_0 ,
    \q_reg[40]_0 ,
    \q_reg[41]_0 ,
    \q_reg[48]_1 ,
    rd21__3,
    rd20,
    rd11__3,
    rd10,
    \q_reg[4]_2 ,
    \q_reg[4]_3 ,
    \q_reg[63]_1 ,
    BranchTargetE,
    PCPlus4F,
    \q_reg[30]_0 ,
    InstrF,
    \q_reg[2]_0 ,
    \q_reg[95]_0 ,
    \q_reg[135]_0 ,
    \q_reg[135]_1 ,
    CO,
    data8,
    sum,
    \q_reg[133]_0 ,
    v__7,
    O,
    ResultW,
    \q_reg[103]_0 ,
    \q_reg[123]_0 ,
    \q_reg[123]_1 ,
    sum__0_carry_i_11_0,
    \q_reg[76]_0 ,
    \q_reg[76]_1 ,
    sum__0_carry_i_4_0,
    sum__0_carry_i_4_1,
    \q_reg[104]_0 );
  output [124:0]D;
  output [3:0]\q_reg[68]_0 ;
  output [32:0]Q;
  output [8:0]\q_reg[65]_0 ;
  output \q_reg[12]_0 ;
  output \q_reg[10]_0 ;
  output [0:0]E;
  output \q_reg[37]_0 ;
  output \q_reg[179]_0 ;
  output [31:0]\q_reg[3]_0 ;
  output \q_reg[0]_0 ;
  output [92:0]\q_reg[0]_1 ;
  output [30:0]data6;
  output [19:0]SrcAE;
  output \q_reg[5] ;
  output [2:0]\q_reg[178]_0 ;
  output \q_reg[5]_0 ;
  output \q_reg[5]_1 ;
  output \q_reg[5]_2 ;
  output \q_reg[5]_3 ;
  output \q_reg[6] ;
  output \q_reg[5]_4 ;
  output \q_reg[5]_5 ;
  output \q_reg[5]_6 ;
  output \q_reg[5]_7 ;
  output \q_reg[5]_8 ;
  output \q_reg[5]_9 ;
  output [3:0]\q_reg[43]_0 ;
  output \q_reg[68]_1 ;
  output [3:0]\q_reg[179]_1 ;
  output \q_reg[67]_0 ;
  output [3:0]\q_reg[67]_1 ;
  output [3:0]\q_reg[5]_10 ;
  output [3:0]\q_reg[175]_0 ;
  output [3:0]DI;
  output [3:0]\q_reg[51]_0 ;
  output [3:0]\q_reg[59]_0 ;
  output \q_reg[6]_0 ;
  output \q_reg[57]_0 ;
  output \q_reg[58]_0 ;
  output \q_reg[6]_1 ;
  output \q_reg[59]_1 ;
  output \q_reg[60]_0 ;
  output \q_reg[6]_2 ;
  output \q_reg[61]_0 ;
  output \q_reg[62]_0 ;
  output \q_reg[6]_3 ;
  output \q_reg[63]_0 ;
  output \q_reg[64]_0 ;
  output \q_reg[6]_4 ;
  output \q_reg[65]_1 ;
  output \q_reg[66]_0 ;
  output \q_reg[6]_5 ;
  output [3:0]\q_reg[179]_2 ;
  output [3:0]S;
  output [3:0]\q_reg[44]_0 ;
  output [3:0]\q_reg[48]_0 ;
  output [3:0]\q_reg[52]_0 ;
  output [3:0]\q_reg[56]_0 ;
  output [3:0]\q_reg[60]_1 ;
  output [3:0]\q_reg[64]_1 ;
  output [3:0]\q_reg[5]_11 ;
  output [3:0]\q_reg[5]_12 ;
  output [3:0]\q_reg[5]_13 ;
  output [3:0]\q_reg[5]_14 ;
  output [3:0]\q_reg[5]_15 ;
  output [3:0]\q_reg[5]_16 ;
  output [3:0]\q_reg[5]_17 ;
  output [3:0]\q_reg[37]_1 ;
  output [3:0]\q_reg[37]_2 ;
  output [3:0]\q_reg[37]_3 ;
  output [3:0]\q_reg[37]_4 ;
  output [3:0]\q_reg[37]_5 ;
  output [3:0]i__carry_i_15_0;
  output [3:0]i__carry_i_15_1;
  output [3:0]\q_reg[44]_1 ;
  output [3:0]\q_reg[52]_1 ;
  output [3:0]\q_reg[60]_2 ;
  output \q_reg[6]_6 ;
  output \q_reg[6]_7 ;
  output \q_reg[6]_8 ;
  output \q_reg[6]_9 ;
  output \q_reg[6]_10 ;
  input PCReadyM;
  input [18:0]\q_reg[67]_2 ;
  input clk;
  input reset;
  input \q_reg[4]_0 ;
  input [7:0]\q_reg[4]_1 ;
  input \q_reg[179]_3 ;
  input [0:0]ALUOpD;
  input \q_reg[7]_0 ;
  input \q_reg[8]_0 ;
  input \q_reg[9]_0 ;
  input \q_reg[10]_1 ;
  input [0:0]controls__21;
  input [89:0]\q_reg[68]_2 ;
  input \q_reg[0]_2 ;
  input \q_reg[14]_0 ;
  input [1:0]\q_reg[37]_6 ;
  input \q_reg[37]_7 ;
  input \q_reg[38]_0 ;
  input \q_reg[39]_0 ;
  input \q_reg[40]_0 ;
  input \q_reg[41]_0 ;
  input \q_reg[48]_1 ;
  input rd21__3;
  input [31:0]rd20;
  input rd11__3;
  input [31:0]rd10;
  input \q_reg[4]_2 ;
  input \q_reg[4]_3 ;
  input [31:0]\q_reg[63]_1 ;
  input [31:0]BranchTargetE;
  input [28:0]PCPlus4F;
  input [10:0]\q_reg[30]_0 ;
  input [30:0]InstrF;
  input \q_reg[2]_0 ;
  input \q_reg[95]_0 ;
  input \q_reg[135]_0 ;
  input \q_reg[135]_1 ;
  input [0:0]CO;
  input [20:0]data8;
  input [30:0]sum;
  input \q_reg[133]_0 ;
  input v__7;
  input [0:0]O;
  input [31:0]ResultW;
  input [36:0]\q_reg[103]_0 ;
  input \q_reg[123]_0 ;
  input \q_reg[123]_1 ;
  input [4:0]sum__0_carry_i_11_0;
  input [0:0]\q_reg[76]_0 ;
  input [0:0]\q_reg[76]_1 ;
  input sum__0_carry_i_4_0;
  input sum__0_carry_i_4_1;
  input \q_reg[104]_0 ;

  wire [0:0]ALUOpD;
  wire [31:0]BranchTargetE;
  wire [0:0]CO;
  wire [124:0]D;
  wire [3:0]DI;
  wire [0:0]E;
  wire [1:1]ForwardAE;
  wire [1:1]ForwardBE;
  wire [31:31]ImmExtE;
  wire ImmSrcb1E;
  wire [30:0]InstrF;
  wire [0:0]O;
  wire [31:2]PCE;
  wire [28:0]PCPlus4F;
  wire PCReadyM;
  wire [32:0]Q;
  wire [31:0]RD1E;
  wire [31:0]RD2E;
  wire [31:0]ResultW;
  wire [4:0]Rs1E;
  wire [4:0]Rs2E;
  wire [3:0]S;
  wire [19:0]SrcAE;
  wire [19:1]SrcBE;
  wire [0:0]\alu/result00_out ;
  wire \c/PCSrcE2__5 ;
  wire clk;
  wire [0:0]controls__21;
  wire [30:0]data6;
  wire [20:0]data8;
  wire \hu/ForwardAE11_out ;
  wire \hu/ForwardBE10_out ;
  wire i__carry__0_i_10_n_0;
  wire i__carry__0_i_11_n_0;
  wire i__carry__0_i_12_n_0;
  wire i__carry__0_i_13_n_0;
  wire i__carry__0_i_14_n_0;
  wire i__carry__0_i_15_n_0;
  wire i__carry__0_i_16_n_0;
  wire i__carry__0_i_9_n_0;
  wire i__carry__1_i_10_n_0;
  wire i__carry__1_i_11_n_0;
  wire i__carry__1_i_12_n_0;
  wire i__carry__1_i_13_n_0;
  wire i__carry__1_i_14_n_0;
  wire i__carry__1_i_15_n_0;
  wire i__carry__1_i_16_n_0;
  wire i__carry__1_i_17_n_0;
  wire i__carry__1_i_18_n_0;
  wire i__carry__1_i_9_n_0;
  wire i__carry__2_i_10_n_0;
  wire i__carry__2_i_11_n_0;
  wire i__carry__2_i_12_n_0;
  wire i__carry__2_i_13_n_0;
  wire i__carry__2_i_14_n_0;
  wire i__carry__2_i_15_n_0;
  wire i__carry__2_i_16_n_0;
  wire i__carry__2_i_17_n_0;
  wire i__carry__2_i_18_n_0;
  wire i__carry__2_i_9_n_0;
  wire i__carry__3_i_10_n_0;
  wire i__carry__3_i_11_n_0;
  wire i__carry__3_i_12_n_0;
  wire i__carry__3_i_13_n_0;
  wire i__carry__3_i_14_n_0;
  wire i__carry__3_i_15_n_0;
  wire i__carry__3_i_16_n_0;
  wire i__carry__3_i_17_n_0;
  wire i__carry__3_i_18_n_0;
  wire i__carry__3_i_19_n_0;
  wire i__carry__3_i_20_n_0;
  wire i__carry__3_i_21_n_0;
  wire i__carry__3_i_22_n_0;
  wire i__carry__3_i_23_n_0;
  wire i__carry__3_i_24_n_0;
  wire i__carry__3_i_25_n_0;
  wire i__carry__3_i_9_n_0;
  wire i__carry__4_i_10_n_0;
  wire i__carry__4_i_11_n_0;
  wire i__carry__4_i_12_n_0;
  wire i__carry__4_i_13_n_0;
  wire i__carry__4_i_14_n_0;
  wire i__carry__4_i_9_n_0;
  wire i__carry__5_i_10_n_0;
  wire i__carry__5_i_11_n_0;
  wire i__carry__5_i_12_n_0;
  wire i__carry__5_i_13_n_0;
  wire i__carry__5_i_14_n_0;
  wire i__carry__5_i_15_n_0;
  wire i__carry__5_i_9_n_0;
  wire i__carry__6_i_10_n_0;
  wire i__carry__6_i_11_n_0;
  wire i__carry__6_i_12_n_0;
  wire i__carry__6_i_13_n_0;
  wire i__carry__6_i_8_n_0;
  wire i__carry__6_i_9_n_0;
  wire i__carry_i_10_n_0;
  wire i__carry_i_11_n_0;
  wire i__carry_i_12_n_0;
  wire i__carry_i_13_n_0;
  wire i__carry_i_14_n_0;
  wire [3:0]i__carry_i_15_0;
  wire [3:0]i__carry_i_15_1;
  wire i__carry_i_15_n_0;
  wire i__carry_i_16_n_0;
  wire i__carry_i_17_n_0;
  wire i__carry_i_18_n_0;
  wire i__carry_i_19_n_0;
  wire i__carry_i_20_n_0;
  wire i__carry_i_21_n_0;
  wire i__carry_i_22_n_0;
  wire i__carry_i_23_n_0;
  wire i__carry_i_24_n_0;
  wire i__carry_i_25_n_0;
  wire i__carry_i_26_n_0;
  wire i__carry_i_27_n_0;
  wire i__carry_i_9_n_0;
  wire opb5E;
  wire [179:0]p_0_in;
  wire \q[104]_i_2_n_0 ;
  wire \q[104]_i_3_n_0 ;
  wire \q[104]_i_5_n_0 ;
  wire \q[104]_i_6_n_0 ;
  wire \q[105]_i_2_n_0 ;
  wire \q[105]_i_3_n_0 ;
  wire \q[105]_i_4_n_0 ;
  wire \q[105]_i_5_n_0 ;
  wire \q[106]_i_2_n_0 ;
  wire \q[106]_i_3_n_0 ;
  wire \q[106]_i_4_n_0 ;
  wire \q[106]_i_5_n_0 ;
  wire \q[107]_i_2_n_0 ;
  wire \q[107]_i_3_n_0 ;
  wire \q[107]_i_4_n_0 ;
  wire \q[107]_i_5_n_0 ;
  wire \q[108]_i_2_n_0 ;
  wire \q[108]_i_3_n_0 ;
  wire \q[108]_i_4_n_0 ;
  wire \q[108]_i_5_n_0 ;
  wire \q[109]_i_2_n_0 ;
  wire \q[109]_i_3_n_0 ;
  wire \q[109]_i_4_n_0 ;
  wire \q[109]_i_5_n_0 ;
  wire \q[110]_i_2_n_0 ;
  wire \q[110]_i_3_n_0 ;
  wire \q[110]_i_4_n_0 ;
  wire \q[110]_i_5_n_0 ;
  wire \q[111]_i_2_n_0 ;
  wire \q[111]_i_3_n_0 ;
  wire \q[111]_i_4_n_0 ;
  wire \q[111]_i_5_n_0 ;
  wire \q[111]_i_6_n_0 ;
  wire \q[111]_i_7_n_0 ;
  wire \q[112]_i_2_n_0 ;
  wire \q[112]_i_3_n_0 ;
  wire \q[112]_i_4_n_0 ;
  wire \q[112]_i_5_n_0 ;
  wire \q[112]_i_6_n_0 ;
  wire \q[113]_i_2_n_0 ;
  wire \q[113]_i_3_n_0 ;
  wire \q[113]_i_4_n_0 ;
  wire \q[113]_i_5_n_0 ;
  wire \q[114]_i_2_n_0 ;
  wire \q[114]_i_3_n_0 ;
  wire \q[114]_i_4_n_0 ;
  wire \q[114]_i_5_n_0 ;
  wire \q[114]_i_6_n_0 ;
  wire \q[115]_i_2_n_0 ;
  wire \q[115]_i_3_n_0 ;
  wire \q[115]_i_4_n_0 ;
  wire \q[115]_i_5_n_0 ;
  wire \q[115]_i_6_n_0 ;
  wire \q[116]_i_2_n_0 ;
  wire \q[116]_i_3_n_0 ;
  wire \q[116]_i_4_n_0 ;
  wire \q[116]_i_5_n_0 ;
  wire \q[116]_i_6_n_0 ;
  wire \q[117]_i_2_n_0 ;
  wire \q[117]_i_3_n_0 ;
  wire \q[117]_i_4_n_0 ;
  wire \q[117]_i_5_n_0 ;
  wire \q[117]_i_6_n_0 ;
  wire \q[118]_i_2_n_0 ;
  wire \q[118]_i_3_n_0 ;
  wire \q[118]_i_4_n_0 ;
  wire \q[118]_i_5_n_0 ;
  wire \q[118]_i_6_n_0 ;
  wire \q[119]_i_2_n_0 ;
  wire \q[119]_i_3_n_0 ;
  wire \q[119]_i_4_n_0 ;
  wire \q[119]_i_5_n_0 ;
  wire \q[119]_i_6_n_0 ;
  wire \q[120]_i_2_n_0 ;
  wire \q[120]_i_3_n_0 ;
  wire \q[120]_i_4_n_0 ;
  wire \q[120]_i_5_n_0 ;
  wire \q[120]_i_6_n_0 ;
  wire \q[121]_i_2_n_0 ;
  wire \q[121]_i_3_n_0 ;
  wire \q[121]_i_4_n_0 ;
  wire \q[121]_i_5_n_0 ;
  wire \q[121]_i_6_n_0 ;
  wire \q[122]_i_2_n_0 ;
  wire \q[122]_i_3_n_0 ;
  wire \q[122]_i_4_n_0 ;
  wire \q[122]_i_5_n_0 ;
  wire \q[122]_i_6_n_0 ;
  wire \q[123]_i_2_n_0 ;
  wire \q[123]_i_3_n_0 ;
  wire \q[123]_i_4_n_0 ;
  wire \q[123]_i_5_n_0 ;
  wire \q[123]_i_6_n_0 ;
  wire \q[124]_i_5_n_0 ;
  wire \q[124]_i_6_n_0 ;
  wire \q[125]_i_5_n_0 ;
  wire \q[125]_i_6_n_0 ;
  wire \q[126]_i_5_n_0 ;
  wire \q[126]_i_6_n_0 ;
  wire \q[127]_i_5_n_0 ;
  wire \q[127]_i_6_n_0 ;
  wire \q[128]_i_5_n_0 ;
  wire \q[128]_i_6_n_0 ;
  wire \q[129]_i_5_n_0 ;
  wire \q[129]_i_6_n_0 ;
  wire \q[130]_i_5_n_0 ;
  wire \q[130]_i_6_n_0 ;
  wire \q[131]_i_5_n_0 ;
  wire \q[131]_i_6_n_0 ;
  wire \q[132]_i_5_n_0 ;
  wire \q[132]_i_6_n_0 ;
  wire \q[133]_i_5_n_0 ;
  wire \q[133]_i_6_n_0 ;
  wire \q[134]_i_7_n_0 ;
  wire \q[134]_i_8_n_0 ;
  wire \q[135]_i_10_n_0 ;
  wire \q[135]_i_11_n_0 ;
  wire \q[135]_i_12_n_0 ;
  wire \q[135]_i_13_n_0 ;
  wire \q[135]_i_14_n_0 ;
  wire \q[135]_i_15_n_0 ;
  wire \q[135]_i_16_n_0 ;
  wire \q[135]_i_17_n_0 ;
  wire \q[135]_i_2_n_0 ;
  wire \q[135]_i_3_n_0 ;
  wire \q[135]_i_4_n_0 ;
  wire \q[135]_i_8_n_0 ;
  wire \q[135]_i_9_n_0 ;
  wire \q[31]_i_10_n_0 ;
  wire \q[31]_i_11_n_0 ;
  wire \q[31]_i_13_n_0 ;
  wire \q[31]_i_14_n_0 ;
  wire \q[31]_i_18_n_0 ;
  wire \q[31]_i_19_n_0 ;
  wire \q[31]_i_20_n_0 ;
  wire \q[31]_i_21_n_0 ;
  wire \q[31]_i_6_n_0 ;
  wire \q[31]_i_8_n_0 ;
  wire \q[76]_i_2_n_0 ;
  wire \q[76]_i_3_n_0 ;
  wire \q[76]_i_5_n_0 ;
  wire \q[76]_i_6_n_0 ;
  wire \q[76]_i_7_n_0 ;
  wire \q[76]_i_8_n_0 ;
  wire \q[79]_i_2_n_0 ;
  wire \q[79]_i_3_n_0 ;
  wire \q[79]_i_5_n_0 ;
  wire \q[95]_i_4_n_0 ;
  wire \q_reg[0]_0 ;
  wire [92:0]\q_reg[0]_1 ;
  wire \q_reg[0]_2 ;
  wire [36:0]\q_reg[103]_0 ;
  wire \q_reg[104]_0 ;
  wire \q_reg[10]_0 ;
  wire \q_reg[10]_1 ;
  wire \q_reg[123]_0 ;
  wire \q_reg[123]_1 ;
  wire \q_reg[12]_0 ;
  wire \q_reg[133]_0 ;
  wire \q_reg[135]_0 ;
  wire \q_reg[135]_1 ;
  wire \q_reg[14]_0 ;
  wire [3:0]\q_reg[175]_0 ;
  wire [2:0]\q_reg[178]_0 ;
  wire \q_reg[179]_0 ;
  wire [3:0]\q_reg[179]_1 ;
  wire [3:0]\q_reg[179]_2 ;
  wire \q_reg[179]_3 ;
  wire \q_reg[2]_0 ;
  wire [10:0]\q_reg[30]_0 ;
  wire \q_reg[37]_0 ;
  wire [3:0]\q_reg[37]_1 ;
  wire [3:0]\q_reg[37]_2 ;
  wire [3:0]\q_reg[37]_3 ;
  wire [3:0]\q_reg[37]_4 ;
  wire [3:0]\q_reg[37]_5 ;
  wire [1:0]\q_reg[37]_6 ;
  wire \q_reg[37]_7 ;
  wire \q_reg[38]_0 ;
  wire \q_reg[39]_0 ;
  wire [31:0]\q_reg[3]_0 ;
  wire \q_reg[40]_0 ;
  wire \q_reg[41]_0 ;
  wire [3:0]\q_reg[43]_0 ;
  wire [3:0]\q_reg[44]_0 ;
  wire [3:0]\q_reg[44]_1 ;
  wire [3:0]\q_reg[48]_0 ;
  wire \q_reg[48]_1 ;
  wire \q_reg[4]_0 ;
  wire [7:0]\q_reg[4]_1 ;
  wire \q_reg[4]_2 ;
  wire \q_reg[4]_3 ;
  wire [3:0]\q_reg[51]_0 ;
  wire [3:0]\q_reg[52]_0 ;
  wire [3:0]\q_reg[52]_1 ;
  wire [3:0]\q_reg[56]_0 ;
  wire \q_reg[57]_0 ;
  wire \q_reg[58]_0 ;
  wire [3:0]\q_reg[59]_0 ;
  wire \q_reg[59]_1 ;
  wire \q_reg[5] ;
  wire \q_reg[5]_0 ;
  wire \q_reg[5]_1 ;
  wire [3:0]\q_reg[5]_10 ;
  wire [3:0]\q_reg[5]_11 ;
  wire [3:0]\q_reg[5]_12 ;
  wire [3:0]\q_reg[5]_13 ;
  wire [3:0]\q_reg[5]_14 ;
  wire [3:0]\q_reg[5]_15 ;
  wire [3:0]\q_reg[5]_16 ;
  wire [3:0]\q_reg[5]_17 ;
  wire \q_reg[5]_2 ;
  wire \q_reg[5]_3 ;
  wire \q_reg[5]_4 ;
  wire \q_reg[5]_5 ;
  wire \q_reg[5]_6 ;
  wire \q_reg[5]_7 ;
  wire \q_reg[5]_8 ;
  wire \q_reg[5]_9 ;
  wire \q_reg[60]_0 ;
  wire [3:0]\q_reg[60]_1 ;
  wire [3:0]\q_reg[60]_2 ;
  wire \q_reg[61]_0 ;
  wire \q_reg[62]_0 ;
  wire \q_reg[63]_0 ;
  wire [31:0]\q_reg[63]_1 ;
  wire \q_reg[64]_0 ;
  wire [3:0]\q_reg[64]_1 ;
  wire [8:0]\q_reg[65]_0 ;
  wire \q_reg[65]_1 ;
  wire \q_reg[66]_0 ;
  wire \q_reg[67]_0 ;
  wire [3:0]\q_reg[67]_1 ;
  wire [18:0]\q_reg[67]_2 ;
  wire [3:0]\q_reg[68]_0 ;
  wire \q_reg[68]_1 ;
  wire [89:0]\q_reg[68]_2 ;
  wire \q_reg[6] ;
  wire \q_reg[6]_0 ;
  wire \q_reg[6]_1 ;
  wire \q_reg[6]_10 ;
  wire \q_reg[6]_2 ;
  wire \q_reg[6]_3 ;
  wire \q_reg[6]_4 ;
  wire \q_reg[6]_5 ;
  wire \q_reg[6]_6 ;
  wire \q_reg[6]_7 ;
  wire \q_reg[6]_8 ;
  wire \q_reg[6]_9 ;
  wire [0:0]\q_reg[76]_0 ;
  wire [0:0]\q_reg[76]_1 ;
  wire \q_reg[7]_0 ;
  wire \q_reg[8]_0 ;
  wire \q_reg[95]_0 ;
  wire \q_reg[9]_0 ;
  wire [31:0]rd10;
  wire rd11__3;
  wire [31:0]rd20;
  wire rd21__3;
  wire reset;
  wire [30:0]sum;
  wire [4:0]sum__0_carry_i_11_0;
  wire sum__0_carry_i_11_n_0;
  wire sum__0_carry_i_12_n_0;
  wire sum__0_carry_i_14_n_0;
  wire sum__0_carry_i_15_n_0;
  wire sum__0_carry_i_20_n_0;
  wire sum__0_carry_i_22_n_0;
  wire sum__0_carry_i_24_n_0;
  wire sum__0_carry_i_4_0;
  wire sum__0_carry_i_4_1;
  wire v__7;

  LUT3 #(
    .INIT(8'hB8)) 
    i__carry__0_i_1
       (.I0(i__carry__0_i_9_n_0),
        .I1(\q_reg[37]_0 ),
        .I2(i__carry__0_i_10_n_0),
        .O(data6[7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    i__carry__0_i_10
       (.I0(i__carry__0_i_15_n_0),
        .I1(i__carry_i_21_n_0),
        .I2(SrcBE[1]),
        .I3(i__carry__0_i_16_n_0),
        .I4(SrcBE[2]),
        .I5(i__carry_i_23_n_0),
        .O(i__carry__0_i_10_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    i__carry__0_i_11
       (.I0(i__carry__0_i_14_n_0),
        .I1(i__carry_i_19_n_0),
        .I2(SrcBE[1]),
        .I3(i__carry_i_17_n_0),
        .I4(SrcBE[2]),
        .I5(i__carry_i_18_n_0),
        .O(i__carry__0_i_11_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    i__carry__0_i_12
       (.I0(i__carry__0_i_16_n_0),
        .I1(i__carry_i_23_n_0),
        .I2(SrcBE[1]),
        .I3(i__carry_i_21_n_0),
        .I4(SrcBE[2]),
        .I5(i__carry_i_22_n_0),
        .O(i__carry__0_i_12_n_0));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    i__carry__0_i_13
       (.I0(DI[2]),
        .I1(SrcBE[3]),
        .I2(\q_reg[178]_0 [2]),
        .I3(SrcBE[4]),
        .I4(SrcAE[14]),
        .O(i__carry__0_i_13_n_0));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    i__carry__0_i_14
       (.I0(DI[0]),
        .I1(SrcBE[3]),
        .I2(\q_reg[178]_0 [0]),
        .I3(SrcBE[4]),
        .I4(SrcAE[12]),
        .O(i__carry__0_i_14_n_0));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    i__carry__0_i_15
       (.I0(DI[1]),
        .I1(SrcBE[3]),
        .I2(\q_reg[178]_0 [1]),
        .I3(SrcBE[4]),
        .I4(SrcAE[13]),
        .O(i__carry__0_i_15_n_0));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    i__carry__0_i_16
       (.I0(SrcAE[19]),
        .I1(SrcBE[3]),
        .I2(\q_reg[175]_0 [3]),
        .I3(SrcBE[4]),
        .I4(SrcAE[11]),
        .O(i__carry__0_i_16_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    i__carry__0_i_2
       (.I0(i__carry__0_i_10_n_0),
        .I1(\q_reg[37]_0 ),
        .I2(i__carry__0_i_11_n_0),
        .O(data6[6]));
  LUT3 #(
    .INIT(8'hB8)) 
    i__carry__0_i_3
       (.I0(i__carry__0_i_11_n_0),
        .I1(\q_reg[37]_0 ),
        .I2(i__carry__0_i_12_n_0),
        .O(data6[5]));
  LUT3 #(
    .INIT(8'hB8)) 
    i__carry__0_i_4
       (.I0(i__carry__0_i_12_n_0),
        .I1(\q_reg[37]_0 ),
        .I2(i__carry_i_9_n_0),
        .O(data6[4]));
  LUT5 #(
    .INIT(32'h47B8B8B8)) 
    i__carry__0_i_5
       (.I0(i__carry__0_i_9_n_0),
        .I1(\q_reg[37]_0 ),
        .I2(i__carry__0_i_10_n_0),
        .I3(i__carry_i_16_n_0),
        .I4(i__carry_i_15_n_0),
        .O(\q_reg[37]_2 [3]));
  LUT6 #(
    .INIT(64'h5AAA5AAA5AAA9AAA)) 
    i__carry__0_i_6
       (.I0(data6[6]),
        .I1(\q_reg[37]_0 ),
        .I2(i__carry_i_15_n_0),
        .I3(i__carry_i_16_n_0),
        .I4(SrcBE[1]),
        .I5(SrcBE[2]),
        .O(\q_reg[37]_2 [2]));
  LUT6 #(
    .INIT(64'h5665AAAAAAAAAAAA)) 
    i__carry__0_i_7
       (.I0(data6[5]),
        .I1(SrcBE[2]),
        .I2(SrcBE[1]),
        .I3(\q_reg[37]_0 ),
        .I4(i__carry_i_16_n_0),
        .I5(i__carry_i_15_n_0),
        .O(\q_reg[37]_2 [1]));
  LUT6 #(
    .INIT(64'h6A6A6A6AAAAAAA6A)) 
    i__carry__0_i_8
       (.I0(data6[4]),
        .I1(i__carry_i_15_n_0),
        .I2(i__carry_i_16_n_0),
        .I3(\q_reg[37]_0 ),
        .I4(SrcBE[1]),
        .I5(SrcBE[2]),
        .O(\q_reg[37]_2 [0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    i__carry__0_i_9
       (.I0(i__carry__0_i_13_n_0),
        .I1(i__carry_i_17_n_0),
        .I2(SrcBE[1]),
        .I3(i__carry__0_i_14_n_0),
        .I4(SrcBE[2]),
        .I5(i__carry_i_19_n_0),
        .O(i__carry__0_i_9_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    i__carry__1_i_1
       (.I0(i__carry__1_i_9_n_0),
        .I1(\q_reg[37]_0 ),
        .I2(i__carry__1_i_10_n_0),
        .O(data6[11]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    i__carry__1_i_10
       (.I0(i__carry__1_i_17_n_0),
        .I1(i__carry__0_i_15_n_0),
        .I2(SrcBE[1]),
        .I3(i__carry__1_i_18_n_0),
        .I4(SrcBE[2]),
        .I5(i__carry__0_i_16_n_0),
        .O(i__carry__1_i_10_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    i__carry__1_i_11
       (.I0(i__carry__1_i_16_n_0),
        .I1(i__carry__0_i_14_n_0),
        .I2(SrcBE[1]),
        .I3(i__carry__0_i_13_n_0),
        .I4(SrcBE[2]),
        .I5(i__carry_i_17_n_0),
        .O(i__carry__1_i_11_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    i__carry__1_i_12
       (.I0(i__carry__1_i_18_n_0),
        .I1(i__carry__0_i_16_n_0),
        .I2(SrcBE[1]),
        .I3(i__carry__0_i_15_n_0),
        .I4(SrcBE[2]),
        .I5(i__carry_i_21_n_0),
        .O(i__carry__1_i_12_n_0));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'hFEAB0000)) 
    i__carry__1_i_13
       (.I0(SrcBE[3]),
        .I1(\q_reg[37]_0 ),
        .I2(SrcBE[1]),
        .I3(SrcBE[2]),
        .I4(i__carry__2_i_13_n_0),
        .O(i__carry__1_i_13_n_0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'hF8F10000)) 
    i__carry__1_i_14
       (.I0(SrcBE[1]),
        .I1(\q_reg[37]_0 ),
        .I2(SrcBE[3]),
        .I3(SrcBE[2]),
        .I4(i__carry__2_i_13_n_0),
        .O(i__carry__1_i_14_n_0));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'h00AC)) 
    i__carry__1_i_15
       (.I0(\q_reg[175]_0 [2]),
        .I1(SrcAE[18]),
        .I2(SrcBE[3]),
        .I3(SrcBE[4]),
        .O(i__carry__1_i_15_n_0));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h00AC)) 
    i__carry__1_i_16
       (.I0(\q_reg[175]_0 [0]),
        .I1(SrcAE[16]),
        .I2(SrcBE[3]),
        .I3(SrcBE[4]),
        .O(i__carry__1_i_16_n_0));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'h00AC)) 
    i__carry__1_i_17
       (.I0(\q_reg[175]_0 [1]),
        .I1(SrcAE[17]),
        .I2(SrcBE[3]),
        .I3(SrcBE[4]),
        .O(i__carry__1_i_17_n_0));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    i__carry__1_i_18
       (.I0(DI[3]),
        .I1(SrcBE[3]),
        .I2(\q_reg[179]_0 ),
        .I3(SrcBE[4]),
        .I4(SrcAE[15]),
        .O(i__carry__1_i_18_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    i__carry__1_i_2
       (.I0(i__carry__1_i_10_n_0),
        .I1(\q_reg[37]_0 ),
        .I2(i__carry__1_i_11_n_0),
        .O(data6[10]));
  LUT3 #(
    .INIT(8'hB8)) 
    i__carry__1_i_3
       (.I0(i__carry__1_i_11_n_0),
        .I1(\q_reg[37]_0 ),
        .I2(i__carry__1_i_12_n_0),
        .O(data6[9]));
  LUT3 #(
    .INIT(8'hB8)) 
    i__carry__1_i_4
       (.I0(i__carry__1_i_12_n_0),
        .I1(\q_reg[37]_0 ),
        .I2(i__carry__0_i_9_n_0),
        .O(data6[8]));
  LUT5 #(
    .INIT(32'h47B8B8B8)) 
    i__carry__1_i_5
       (.I0(i__carry__1_i_9_n_0),
        .I1(\q_reg[37]_0 ),
        .I2(i__carry__1_i_10_n_0),
        .I3(i__carry__1_i_13_n_0),
        .I4(i__carry_i_15_n_0),
        .O(\q_reg[37]_3 [3]));
  LUT6 #(
    .INIT(64'h5AAA5A6A5AAA9AAA)) 
    i__carry__1_i_6
       (.I0(data6[10]),
        .I1(\q_reg[37]_0 ),
        .I2(i__carry_i_15_n_0),
        .I3(i__carry__1_i_13_n_0),
        .I4(SrcBE[1]),
        .I5(i__carry_i_16_n_0),
        .O(\q_reg[37]_3 [2]));
  LUT5 #(
    .INIT(32'h47B8B8B8)) 
    i__carry__1_i_7
       (.I0(i__carry__1_i_11_n_0),
        .I1(\q_reg[37]_0 ),
        .I2(i__carry__1_i_12_n_0),
        .I3(i__carry__1_i_14_n_0),
        .I4(i__carry_i_15_n_0),
        .O(\q_reg[37]_3 [1]));
  LUT6 #(
    .INIT(64'h6666666AAAAAAA6A)) 
    i__carry__1_i_8
       (.I0(data6[8]),
        .I1(i__carry_i_15_n_0),
        .I2(i__carry__1_i_13_n_0),
        .I3(\q_reg[37]_0 ),
        .I4(SrcBE[1]),
        .I5(i__carry_i_16_n_0),
        .O(\q_reg[37]_3 [0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    i__carry__1_i_9
       (.I0(i__carry__1_i_15_n_0),
        .I1(i__carry__0_i_13_n_0),
        .I2(SrcBE[1]),
        .I3(i__carry__1_i_16_n_0),
        .I4(SrcBE[2]),
        .I5(i__carry__0_i_14_n_0),
        .O(i__carry__1_i_9_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    i__carry__2_i_1
       (.I0(i__carry__2_i_9_n_0),
        .I1(\q_reg[37]_0 ),
        .I2(i__carry__2_i_10_n_0),
        .O(data6[15]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    i__carry__2_i_10
       (.I0(i__carry__2_i_17_n_0),
        .I1(i__carry__1_i_17_n_0),
        .I2(SrcBE[1]),
        .I3(i__carry__2_i_18_n_0),
        .I4(SrcBE[2]),
        .I5(i__carry__1_i_18_n_0),
        .O(i__carry__2_i_10_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    i__carry__2_i_11
       (.I0(i__carry__2_i_16_n_0),
        .I1(i__carry__1_i_16_n_0),
        .I2(SrcBE[1]),
        .I3(i__carry__1_i_15_n_0),
        .I4(SrcBE[2]),
        .I5(i__carry__0_i_13_n_0),
        .O(i__carry__2_i_11_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    i__carry__2_i_12
       (.I0(i__carry__2_i_18_n_0),
        .I1(i__carry__1_i_18_n_0),
        .I2(SrcBE[1]),
        .I3(i__carry__1_i_17_n_0),
        .I4(SrcBE[2]),
        .I5(i__carry__0_i_15_n_0),
        .O(i__carry__2_i_12_n_0));
  LUT6 #(
    .INIT(64'hFFFE000000010000)) 
    i__carry__2_i_13
       (.I0(SrcBE[2]),
        .I1(SrcBE[1]),
        .I2(\q_reg[37]_0 ),
        .I3(SrcBE[3]),
        .I4(\q_reg[179]_0 ),
        .I5(SrcBE[4]),
        .O(i__carry__2_i_13_n_0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'hFEEF0000)) 
    i__carry__2_i_14
       (.I0(SrcBE[3]),
        .I1(SrcBE[2]),
        .I2(SrcBE[1]),
        .I3(\q_reg[37]_0 ),
        .I4(i__carry__2_i_13_n_0),
        .O(i__carry__2_i_14_n_0));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h00AC)) 
    i__carry__2_i_15
       (.I0(\q_reg[178]_0 [2]),
        .I1(DI[2]),
        .I2(SrcBE[3]),
        .I3(SrcBE[4]),
        .O(i__carry__2_i_15_n_0));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'h00AC)) 
    i__carry__2_i_16
       (.I0(\q_reg[178]_0 [0]),
        .I1(DI[0]),
        .I2(SrcBE[3]),
        .I3(SrcBE[4]),
        .O(i__carry__2_i_16_n_0));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'h00AC)) 
    i__carry__2_i_17
       (.I0(\q_reg[178]_0 [1]),
        .I1(DI[1]),
        .I2(SrcBE[3]),
        .I3(SrcBE[4]),
        .O(i__carry__2_i_17_n_0));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'h00AC)) 
    i__carry__2_i_18
       (.I0(\q_reg[175]_0 [3]),
        .I1(SrcAE[19]),
        .I2(SrcBE[3]),
        .I3(SrcBE[4]),
        .O(i__carry__2_i_18_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    i__carry__2_i_2
       (.I0(i__carry__2_i_10_n_0),
        .I1(\q_reg[37]_0 ),
        .I2(i__carry__2_i_11_n_0),
        .O(data6[14]));
  LUT3 #(
    .INIT(8'hB8)) 
    i__carry__2_i_3
       (.I0(i__carry__2_i_11_n_0),
        .I1(\q_reg[37]_0 ),
        .I2(i__carry__2_i_12_n_0),
        .O(data6[13]));
  LUT3 #(
    .INIT(8'hB8)) 
    i__carry__2_i_4
       (.I0(i__carry__2_i_12_n_0),
        .I1(\q_reg[37]_0 ),
        .I2(i__carry__1_i_9_n_0),
        .O(data6[12]));
  LUT5 #(
    .INIT(32'h47B8B8B8)) 
    i__carry__2_i_5
       (.I0(i__carry__2_i_9_n_0),
        .I1(\q_reg[37]_0 ),
        .I2(i__carry__2_i_10_n_0),
        .I3(i__carry__2_i_13_n_0),
        .I4(i__carry_i_15_n_0),
        .O(\q_reg[37]_4 [3]));
  LUT6 #(
    .INIT(64'h5AAA5A6A5AAA9AAA)) 
    i__carry__2_i_6
       (.I0(data6[14]),
        .I1(\q_reg[37]_0 ),
        .I2(i__carry_i_15_n_0),
        .I3(i__carry__2_i_13_n_0),
        .I4(SrcBE[1]),
        .I5(i__carry__1_i_13_n_0),
        .O(\q_reg[37]_4 [2]));
  LUT5 #(
    .INIT(32'h47B8B8B8)) 
    i__carry__2_i_7
       (.I0(i__carry__2_i_11_n_0),
        .I1(\q_reg[37]_0 ),
        .I2(i__carry__2_i_12_n_0),
        .I3(i__carry__2_i_14_n_0),
        .I4(i__carry_i_15_n_0),
        .O(\q_reg[37]_4 [1]));
  LUT6 #(
    .INIT(64'h6666666AAAAAAA6A)) 
    i__carry__2_i_8
       (.I0(data6[12]),
        .I1(i__carry_i_15_n_0),
        .I2(i__carry__2_i_13_n_0),
        .I3(\q_reg[37]_0 ),
        .I4(SrcBE[1]),
        .I5(i__carry__1_i_13_n_0),
        .O(\q_reg[37]_4 [0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    i__carry__2_i_9
       (.I0(i__carry__2_i_15_n_0),
        .I1(i__carry__1_i_15_n_0),
        .I2(SrcBE[1]),
        .I3(i__carry__2_i_16_n_0),
        .I4(SrcBE[2]),
        .I5(i__carry__1_i_16_n_0),
        .O(i__carry__2_i_9_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    i__carry__3_i_1
       (.I0(i__carry__3_i_9_n_0),
        .I1(i__carry__3_i_10_n_0),
        .I2(\q_reg[37]_0 ),
        .I3(i__carry__3_i_11_n_0),
        .I4(SrcBE[1]),
        .I5(i__carry__3_i_12_n_0),
        .O(data6[19]));
  LUT6 #(
    .INIT(64'h000000003030BB88)) 
    i__carry__3_i_10
       (.I0(\q_reg[175]_0 [0]),
        .I1(SrcBE[2]),
        .I2(\q_reg[178]_0 [0]),
        .I3(DI[0]),
        .I4(SrcBE[3]),
        .I5(SrcBE[4]),
        .O(i__carry__3_i_10_n_0));
  LUT6 #(
    .INIT(64'h000000003030BB88)) 
    i__carry__3_i_11
       (.I0(\q_reg[175]_0 [1]),
        .I1(SrcBE[2]),
        .I2(\q_reg[178]_0 [1]),
        .I3(DI[1]),
        .I4(SrcBE[3]),
        .I5(SrcBE[4]),
        .O(i__carry__3_i_11_n_0));
  LUT6 #(
    .INIT(64'hEFEFCFCFEFE0C0C0)) 
    i__carry__3_i_12
       (.I0(\q_reg[179]_0 ),
        .I1(i__carry__3_i_20_n_0),
        .I2(SrcBE[2]),
        .I3(\q_reg[175]_0 [3]),
        .I4(i__carry__3_i_21_n_0),
        .I5(i__carry__3_i_22_n_0),
        .O(i__carry__3_i_12_n_0));
  LUT6 #(
    .INIT(64'hEFEFCFCFEFE0C0C0)) 
    i__carry__3_i_13
       (.I0(\q_reg[178]_0 [2]),
        .I1(i__carry__3_i_23_n_0),
        .I2(SrcBE[2]),
        .I3(\q_reg[175]_0 [2]),
        .I4(i__carry__3_i_21_n_0),
        .I5(i__carry__3_i_24_n_0),
        .O(i__carry__3_i_13_n_0));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    i__carry__3_i_14
       (.I0(i__carry__3_i_10_n_0),
        .I1(SrcBE[1]),
        .I2(i__carry__2_i_15_n_0),
        .I3(SrcBE[2]),
        .I4(i__carry__1_i_15_n_0),
        .O(i__carry__3_i_14_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    i__carry__3_i_15
       (.I0(i__carry__3_i_25_n_0),
        .I1(i__carry__2_i_18_n_0),
        .I2(SrcBE[1]),
        .I3(i__carry__2_i_17_n_0),
        .I4(SrcBE[2]),
        .I5(i__carry__1_i_17_n_0),
        .O(i__carry__3_i_15_n_0));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    i__carry__3_i_16
       (.I0(i__carry__3_i_11_n_0),
        .I1(SrcBE[1]),
        .I2(i__carry__3_i_25_n_0),
        .I3(SrcBE[2]),
        .I4(i__carry__2_i_18_n_0),
        .O(i__carry__3_i_16_n_0));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    i__carry__3_i_17
       (.I0(i__carry__3_i_9_n_0),
        .I1(SrcBE[1]),
        .I2(i__carry__3_i_10_n_0),
        .O(i__carry__3_i_17_n_0));
  LUT6 #(
    .INIT(64'hFFE0FF0100000000)) 
    i__carry__3_i_18
       (.I0(\q_reg[37]_0 ),
        .I1(SrcBE[1]),
        .I2(SrcBE[2]),
        .I3(SrcBE[4]),
        .I4(SrcBE[3]),
        .I5(\q_reg[179]_0 ),
        .O(i__carry__3_i_18_n_0));
  LUT6 #(
    .INIT(64'hFF80FF0100000000)) 
    i__carry__3_i_19
       (.I0(SrcBE[1]),
        .I1(\q_reg[37]_0 ),
        .I2(SrcBE[2]),
        .I3(SrcBE[4]),
        .I4(SrcBE[3]),
        .I5(\q_reg[179]_0 ),
        .O(i__carry__3_i_19_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    i__carry__3_i_2
       (.I0(i__carry__3_i_11_n_0),
        .I1(i__carry__3_i_12_n_0),
        .I2(\q_reg[37]_0 ),
        .I3(i__carry__3_i_10_n_0),
        .I4(SrcBE[1]),
        .I5(i__carry__3_i_13_n_0),
        .O(data6[18]));
  LUT6 #(
    .INIT(64'h0044034700000000)) 
    i__carry__3_i_20
       (.I0(Q[4]),
        .I1(\q_reg[4]_1 [0]),
        .I2(D[76]),
        .I3(Q[3]),
        .I4(D[75]),
        .I5(DI[3]),
        .O(i__carry__3_i_20_n_0));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT5 #(
    .INIT(32'h000ACC0A)) 
    i__carry__3_i_21
       (.I0(D[75]),
        .I1(Q[3]),
        .I2(D[76]),
        .I3(\q_reg[4]_1 [0]),
        .I4(Q[4]),
        .O(i__carry__3_i_21_n_0));
  LUT6 #(
    .INIT(64'h0044034700000000)) 
    i__carry__3_i_22
       (.I0(Q[4]),
        .I1(\q_reg[4]_1 [0]),
        .I2(D[76]),
        .I3(Q[3]),
        .I4(D[75]),
        .I5(SrcAE[19]),
        .O(i__carry__3_i_22_n_0));
  LUT6 #(
    .INIT(64'h0044034700000000)) 
    i__carry__3_i_23
       (.I0(Q[4]),
        .I1(\q_reg[4]_1 [0]),
        .I2(D[76]),
        .I3(Q[3]),
        .I4(D[75]),
        .I5(DI[2]),
        .O(i__carry__3_i_23_n_0));
  LUT6 #(
    .INIT(64'h0044034700000000)) 
    i__carry__3_i_24
       (.I0(Q[4]),
        .I1(\q_reg[4]_1 [0]),
        .I2(D[76]),
        .I3(Q[3]),
        .I4(D[75]),
        .I5(SrcAE[18]),
        .O(i__carry__3_i_24_n_0));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h00AC)) 
    i__carry__3_i_25
       (.I0(\q_reg[179]_0 ),
        .I1(DI[3]),
        .I2(SrcBE[3]),
        .I3(SrcBE[4]),
        .O(i__carry__3_i_25_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    i__carry__3_i_3
       (.I0(i__carry__3_i_14_n_0),
        .I1(\q_reg[37]_0 ),
        .I2(i__carry__3_i_15_n_0),
        .O(data6[17]));
  LUT3 #(
    .INIT(8'hB8)) 
    i__carry__3_i_4
       (.I0(i__carry__3_i_15_n_0),
        .I1(\q_reg[37]_0 ),
        .I2(i__carry__2_i_9_n_0),
        .O(data6[16]));
  LUT5 #(
    .INIT(32'h1DE2E2E2)) 
    i__carry__3_i_5
       (.I0(i__carry__3_i_16_n_0),
        .I1(\q_reg[37]_0 ),
        .I2(i__carry__3_i_17_n_0),
        .I3(i__carry__3_i_18_n_0),
        .I4(i__carry_i_15_n_0),
        .O(\q_reg[37]_5 [3]));
  LUT6 #(
    .INIT(64'h35CA3ACAC5CACACA)) 
    i__carry__3_i_6
       (.I0(i__carry__3_i_14_n_0),
        .I1(i__carry__3_i_16_n_0),
        .I2(\q_reg[37]_0 ),
        .I3(i__carry_i_15_n_0),
        .I4(i__carry__3_i_18_n_0),
        .I5(i__carry__3_i_19_n_0),
        .O(\q_reg[37]_5 [2]));
  LUT5 #(
    .INIT(32'h47B8B8B8)) 
    i__carry__3_i_7
       (.I0(i__carry__3_i_14_n_0),
        .I1(\q_reg[37]_0 ),
        .I2(i__carry__3_i_15_n_0),
        .I3(i__carry__3_i_19_n_0),
        .I4(i__carry_i_15_n_0),
        .O(\q_reg[37]_5 [1]));
  LUT6 #(
    .INIT(64'h6666666AAAAAAA6A)) 
    i__carry__3_i_8
       (.I0(data6[16]),
        .I1(i__carry_i_15_n_0),
        .I2(i__carry__3_i_18_n_0),
        .I3(\q_reg[37]_0 ),
        .I4(SrcBE[1]),
        .I5(i__carry__2_i_13_n_0),
        .O(\q_reg[37]_5 [0]));
  LUT6 #(
    .INIT(64'h000000003030BB88)) 
    i__carry__3_i_9
       (.I0(\q_reg[175]_0 [2]),
        .I1(SrcBE[2]),
        .I2(\q_reg[178]_0 [2]),
        .I3(DI[2]),
        .I4(SrcBE[3]),
        .I5(SrcBE[4]),
        .O(i__carry__3_i_9_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    i__carry__4_i_1
       (.I0(i__carry__4_i_9_n_0),
        .I1(i__carry__4_i_10_n_0),
        .I2(\q_reg[37]_0 ),
        .I3(i__carry__4_i_11_n_0),
        .I4(SrcBE[1]),
        .I5(i__carry__4_i_12_n_0),
        .O(data6[23]));
  LUT4 #(
    .INIT(16'hB080)) 
    i__carry__4_i_10
       (.I0(\q_reg[178]_0 [0]),
        .I1(SrcBE[2]),
        .I2(i__carry__6_i_9_n_0),
        .I3(\q_reg[175]_0 [0]),
        .O(i__carry__4_i_10_n_0));
  LUT4 #(
    .INIT(16'hB080)) 
    i__carry__4_i_11
       (.I0(\q_reg[178]_0 [1]),
        .I1(SrcBE[2]),
        .I2(i__carry__6_i_9_n_0),
        .I3(\q_reg[175]_0 [1]),
        .O(i__carry__4_i_11_n_0));
  LUT6 #(
    .INIT(64'h000000003030BB88)) 
    i__carry__4_i_12
       (.I0(\q_reg[175]_0 [3]),
        .I1(SrcBE[2]),
        .I2(\q_reg[179]_0 ),
        .I3(DI[3]),
        .I4(SrcBE[3]),
        .I5(SrcBE[4]),
        .O(i__carry__4_i_12_n_0));
  LUT6 #(
    .INIT(64'hFFFEAAAB00000000)) 
    i__carry__4_i_13
       (.I0(SrcBE[4]),
        .I1(SrcBE[2]),
        .I2(SrcBE[1]),
        .I3(\q_reg[37]_0 ),
        .I4(SrcBE[3]),
        .I5(\q_reg[179]_0 ),
        .O(i__carry__4_i_13_n_0));
  LUT6 #(
    .INIT(64'hFFF8F0F100000000)) 
    i__carry__4_i_14
       (.I0(SrcBE[1]),
        .I1(\q_reg[37]_0 ),
        .I2(SrcBE[4]),
        .I3(SrcBE[2]),
        .I4(SrcBE[3]),
        .I5(\q_reg[179]_0 ),
        .O(i__carry__4_i_14_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    i__carry__4_i_2
       (.I0(i__carry__4_i_11_n_0),
        .I1(i__carry__4_i_12_n_0),
        .I2(\q_reg[37]_0 ),
        .I3(i__carry__4_i_10_n_0),
        .I4(SrcBE[1]),
        .I5(i__carry__3_i_9_n_0),
        .O(data6[22]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    i__carry__4_i_3
       (.I0(i__carry__4_i_10_n_0),
        .I1(i__carry__3_i_9_n_0),
        .I2(\q_reg[37]_0 ),
        .I3(i__carry__4_i_12_n_0),
        .I4(SrcBE[1]),
        .I5(i__carry__3_i_11_n_0),
        .O(data6[21]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    i__carry__4_i_4
       (.I0(i__carry__4_i_12_n_0),
        .I1(i__carry__3_i_11_n_0),
        .I2(\q_reg[37]_0 ),
        .I3(i__carry__3_i_9_n_0),
        .I4(SrcBE[1]),
        .I5(i__carry__3_i_10_n_0),
        .O(data6[20]));
  LUT3 #(
    .INIT(8'h6A)) 
    i__carry__4_i_5
       (.I0(data6[23]),
        .I1(i__carry__4_i_13_n_0),
        .I2(i__carry_i_15_n_0),
        .O(i__carry_i_15_0[3]));
  LUT6 #(
    .INIT(64'h5AAA5A6A5AAA9AAA)) 
    i__carry__4_i_6
       (.I0(data6[22]),
        .I1(\q_reg[37]_0 ),
        .I2(i__carry_i_15_n_0),
        .I3(i__carry__4_i_13_n_0),
        .I4(SrcBE[1]),
        .I5(i__carry__3_i_18_n_0),
        .O(i__carry_i_15_0[2]));
  LUT3 #(
    .INIT(8'h6A)) 
    i__carry__4_i_7
       (.I0(data6[21]),
        .I1(i__carry__4_i_14_n_0),
        .I2(i__carry_i_15_n_0),
        .O(i__carry_i_15_0[1]));
  LUT6 #(
    .INIT(64'h6666666AAAAAAA6A)) 
    i__carry__4_i_8
       (.I0(data6[20]),
        .I1(i__carry_i_15_n_0),
        .I2(i__carry__4_i_13_n_0),
        .I3(\q_reg[37]_0 ),
        .I4(SrcBE[1]),
        .I5(i__carry__3_i_18_n_0),
        .O(i__carry_i_15_0[0]));
  LUT4 #(
    .INIT(16'hB080)) 
    i__carry__4_i_9
       (.I0(\q_reg[178]_0 [2]),
        .I1(SrcBE[2]),
        .I2(i__carry__6_i_9_n_0),
        .I3(\q_reg[175]_0 [2]),
        .O(i__carry__4_i_9_n_0));
  LUT6 #(
    .INIT(64'h00ACFFFF00AC0000)) 
    i__carry__5_i_1
       (.I0(i__carry__5_i_9_n_0),
        .I1(i__carry__5_i_10_n_0),
        .I2(SrcBE[1]),
        .I3(SrcBE[2]),
        .I4(\q_reg[37]_0 ),
        .I5(i__carry__5_i_11_n_0),
        .O(data6[27]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h8)) 
    i__carry__5_i_10
       (.I0(i__carry__6_i_9_n_0),
        .I1(\q_reg[178]_0 [0]),
        .O(i__carry__5_i_10_n_0));
  LUT6 #(
    .INIT(64'h30BB000030880000)) 
    i__carry__5_i_11
       (.I0(\q_reg[178]_0 [1]),
        .I1(SrcBE[1]),
        .I2(\q_reg[179]_0 ),
        .I3(SrcBE[2]),
        .I4(i__carry__6_i_9_n_0),
        .I5(\q_reg[175]_0 [3]),
        .O(i__carry__5_i_11_n_0));
  LUT6 #(
    .INIT(64'h30BB000030880000)) 
    i__carry__5_i_12
       (.I0(\q_reg[178]_0 [0]),
        .I1(SrcBE[1]),
        .I2(\q_reg[178]_0 [2]),
        .I3(SrcBE[2]),
        .I4(i__carry__6_i_9_n_0),
        .I5(\q_reg[175]_0 [2]),
        .O(i__carry__5_i_12_n_0));
  LUT4 #(
    .INIT(16'hB080)) 
    i__carry__5_i_13
       (.I0(\q_reg[179]_0 ),
        .I1(SrcBE[2]),
        .I2(i__carry__6_i_9_n_0),
        .I3(\q_reg[175]_0 [3]),
        .O(i__carry__5_i_13_n_0));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'hFEAB02A8)) 
    i__carry__5_i_14
       (.I0(i__carry__4_i_13_n_0),
        .I1(\q_reg[37]_0 ),
        .I2(SrcBE[1]),
        .I3(SrcBE[2]),
        .I4(\q_reg[179]_0 ),
        .O(i__carry__5_i_14_n_0));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'hF8F170E0)) 
    i__carry__5_i_15
       (.I0(SrcBE[1]),
        .I1(\q_reg[37]_0 ),
        .I2(i__carry__4_i_13_n_0),
        .I3(SrcBE[2]),
        .I4(\q_reg[179]_0 ),
        .O(i__carry__5_i_15_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    i__carry__5_i_2
       (.I0(i__carry__5_i_11_n_0),
        .I1(\q_reg[37]_0 ),
        .I2(i__carry__5_i_12_n_0),
        .O(data6[26]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    i__carry__5_i_3
       (.I0(i__carry__5_i_12_n_0),
        .I1(\q_reg[37]_0 ),
        .I2(i__carry__5_i_13_n_0),
        .I3(SrcBE[1]),
        .I4(i__carry__4_i_11_n_0),
        .O(data6[25]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    i__carry__5_i_4
       (.I0(i__carry__5_i_13_n_0),
        .I1(i__carry__4_i_11_n_0),
        .I2(\q_reg[37]_0 ),
        .I3(i__carry__4_i_9_n_0),
        .I4(SrcBE[1]),
        .I5(i__carry__4_i_10_n_0),
        .O(data6[24]));
  LUT3 #(
    .INIT(8'h6A)) 
    i__carry__5_i_5
       (.I0(data6[27]),
        .I1(i__carry__5_i_14_n_0),
        .I2(i__carry_i_15_n_0),
        .O(i__carry_i_15_1[3]));
  LUT6 #(
    .INIT(64'h5AAA5A6A5AAA9AAA)) 
    i__carry__5_i_6
       (.I0(data6[26]),
        .I1(\q_reg[37]_0 ),
        .I2(i__carry_i_15_n_0),
        .I3(i__carry__5_i_14_n_0),
        .I4(SrcBE[1]),
        .I5(i__carry__4_i_13_n_0),
        .O(i__carry_i_15_1[2]));
  LUT3 #(
    .INIT(8'h6A)) 
    i__carry__5_i_7
       (.I0(data6[25]),
        .I1(i__carry__5_i_15_n_0),
        .I2(i__carry_i_15_n_0),
        .O(i__carry_i_15_1[1]));
  LUT6 #(
    .INIT(64'h6666666AAAAAAA6A)) 
    i__carry__5_i_8
       (.I0(data6[24]),
        .I1(i__carry_i_15_n_0),
        .I2(i__carry__5_i_14_n_0),
        .I3(\q_reg[37]_0 ),
        .I4(SrcBE[1]),
        .I5(i__carry__4_i_13_n_0),
        .O(i__carry_i_15_1[0]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h8)) 
    i__carry__5_i_9
       (.I0(i__carry__6_i_9_n_0),
        .I1(\q_reg[178]_0 [2]),
        .O(i__carry__5_i_9_n_0));
  LUT5 #(
    .INIT(32'hB0800000)) 
    i__carry__6_i_1
       (.I0(\q_reg[179]_0 ),
        .I1(\q_reg[37]_0 ),
        .I2(i__carry__6_i_8_n_0),
        .I3(\q_reg[178]_0 [2]),
        .I4(i__carry__6_i_9_n_0),
        .O(data6[30]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h8)) 
    i__carry__6_i_10
       (.I0(i__carry__6_i_9_n_0),
        .I1(\q_reg[179]_0 ),
        .O(i__carry__6_i_10_n_0));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'h8)) 
    i__carry__6_i_11
       (.I0(i__carry__6_i_9_n_0),
        .I1(\q_reg[178]_0 [1]),
        .O(i__carry__6_i_11_n_0));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'h000088C0)) 
    i__carry__6_i_12
       (.I0(\q_reg[179]_0 ),
        .I1(i__carry__6_i_9_n_0),
        .I2(\q_reg[178]_0 [1]),
        .I3(SrcBE[1]),
        .I4(SrcBE[2]),
        .O(i__carry__6_i_12_n_0));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'hFEEF0220)) 
    i__carry__6_i_13
       (.I0(i__carry__4_i_13_n_0),
        .I1(SrcBE[2]),
        .I2(SrcBE[1]),
        .I3(\q_reg[37]_0 ),
        .I4(\q_reg[179]_0 ),
        .O(i__carry__6_i_13_n_0));
  LUT6 #(
    .INIT(64'h000000003030BB88)) 
    i__carry__6_i_2
       (.I0(i__carry__5_i_9_n_0),
        .I1(\q_reg[37]_0 ),
        .I2(i__carry__6_i_10_n_0),
        .I3(i__carry__6_i_11_n_0),
        .I4(SrcBE[1]),
        .I5(SrcBE[2]),
        .O(data6[29]));
  LUT6 #(
    .INIT(64'h88888888B8B8BB88)) 
    i__carry__6_i_3
       (.I0(i__carry__6_i_12_n_0),
        .I1(\q_reg[37]_0 ),
        .I2(i__carry__5_i_9_n_0),
        .I3(i__carry__5_i_10_n_0),
        .I4(SrcBE[1]),
        .I5(SrcBE[2]),
        .O(data6[28]));
  LUT1 #(
    .INIT(2'h2)) 
    i__carry__6_i_4
       (.I0(\q_reg[179]_0 ),
        .O(\q_reg[179]_2 [3]));
  LUT6 #(
    .INIT(64'h5AAA5A6A5AAA9AAA)) 
    i__carry__6_i_5
       (.I0(data6[30]),
        .I1(\q_reg[37]_0 ),
        .I2(i__carry_i_15_n_0),
        .I3(\q_reg[179]_0 ),
        .I4(SrcBE[1]),
        .I5(i__carry__5_i_14_n_0),
        .O(\q_reg[179]_2 [2]));
  LUT3 #(
    .INIT(8'h6A)) 
    i__carry__6_i_6
       (.I0(data6[29]),
        .I1(i__carry__6_i_13_n_0),
        .I2(i__carry_i_15_n_0),
        .O(\q_reg[179]_2 [1]));
  LUT6 #(
    .INIT(64'h6666666AAAAAAA6A)) 
    i__carry__6_i_7
       (.I0(data6[28]),
        .I1(i__carry_i_15_n_0),
        .I2(\q_reg[179]_0 ),
        .I3(\q_reg[37]_0 ),
        .I4(SrcBE[1]),
        .I5(i__carry__5_i_14_n_0),
        .O(\q_reg[179]_2 [0]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__6_i_8
       (.I0(SrcBE[1]),
        .I1(SrcBE[2]),
        .O(i__carry__6_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT5 #(
    .INIT(32'h00053305)) 
    i__carry__6_i_9
       (.I0(D[75]),
        .I1(Q[3]),
        .I2(D[76]),
        .I3(\q_reg[4]_1 [0]),
        .I4(Q[4]),
        .O(i__carry__6_i_9_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    i__carry_i_1
       (.I0(i__carry_i_9_n_0),
        .I1(\q_reg[37]_0 ),
        .I2(i__carry_i_10_n_0),
        .O(data6[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    i__carry_i_10
       (.I0(i__carry_i_21_n_0),
        .I1(i__carry_i_22_n_0),
        .I2(SrcBE[1]),
        .I3(i__carry_i_23_n_0),
        .I4(SrcBE[2]),
        .I5(i__carry_i_24_n_0),
        .O(i__carry_i_10_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    i__carry_i_11
       (.I0(i__carry_i_19_n_0),
        .I1(i__carry_i_20_n_0),
        .I2(SrcBE[1]),
        .I3(i__carry_i_18_n_0),
        .I4(SrcBE[2]),
        .I5(i__carry_i_25_n_0),
        .O(i__carry_i_11_n_0));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    i__carry_i_12
       (.I0(i__carry_i_26_n_0),
        .I1(i__carry_i_22_n_0),
        .I2(SrcBE[1]),
        .I3(i__carry_i_23_n_0),
        .I4(SrcBE[2]),
        .I5(i__carry_i_24_n_0),
        .O(i__carry_i_12_n_0));
  LUT6 #(
    .INIT(64'hB8B8B8B8FFCC3300)) 
    i__carry_i_13
       (.I0(i__carry_i_18_n_0),
        .I1(SrcBE[2]),
        .I2(i__carry_i_25_n_0),
        .I3(i__carry_i_27_n_0),
        .I4(i__carry_i_20_n_0),
        .I5(SrcBE[1]),
        .O(i__carry_i_13_n_0));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT4 #(
    .INIT(16'h8882)) 
    i__carry_i_14
       (.I0(i__carry_i_16_n_0),
        .I1(SrcBE[2]),
        .I2(SrcBE[1]),
        .I3(\q_reg[37]_0 ),
        .O(i__carry_i_14_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    i__carry_i_15
       (.I0(SrcBE[4]),
        .I1(SrcBE[3]),
        .I2(\q_reg[37]_0 ),
        .I3(SrcBE[1]),
        .I4(SrcBE[2]),
        .O(i__carry_i_15_n_0));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'h88888882)) 
    i__carry_i_16
       (.I0(i__carry__2_i_13_n_0),
        .I1(SrcBE[3]),
        .I2(\q_reg[37]_0 ),
        .I3(SrcBE[1]),
        .I4(SrcBE[2]),
        .O(i__carry_i_16_n_0));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    i__carry_i_17
       (.I0(SrcAE[18]),
        .I1(SrcBE[3]),
        .I2(\q_reg[175]_0 [2]),
        .I3(SrcBE[4]),
        .I4(SrcAE[10]),
        .O(i__carry_i_17_n_0));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    i__carry_i_18
       (.I0(SrcAE[6]),
        .I1(DI[2]),
        .I2(SrcBE[3]),
        .I3(\q_reg[178]_0 [2]),
        .I4(SrcBE[4]),
        .I5(SrcAE[14]),
        .O(i__carry_i_18_n_0));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    i__carry_i_19
       (.I0(SrcAE[16]),
        .I1(SrcBE[3]),
        .I2(\q_reg[175]_0 [0]),
        .I3(SrcBE[4]),
        .I4(SrcAE[8]),
        .O(i__carry_i_19_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    i__carry_i_2
       (.I0(i__carry_i_10_n_0),
        .I1(\q_reg[37]_0 ),
        .I2(i__carry_i_11_n_0),
        .O(data6[2]));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    i__carry_i_20
       (.I0(SrcAE[4]),
        .I1(DI[0]),
        .I2(SrcBE[3]),
        .I3(\q_reg[178]_0 [0]),
        .I4(SrcBE[4]),
        .I5(SrcAE[12]),
        .O(i__carry_i_20_n_0));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    i__carry_i_21
       (.I0(SrcAE[17]),
        .I1(SrcBE[3]),
        .I2(\q_reg[175]_0 [1]),
        .I3(SrcBE[4]),
        .I4(SrcAE[9]),
        .O(i__carry_i_21_n_0));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    i__carry_i_22
       (.I0(SrcAE[5]),
        .I1(DI[1]),
        .I2(SrcBE[3]),
        .I3(\q_reg[178]_0 [1]),
        .I4(SrcBE[4]),
        .I5(SrcAE[13]),
        .O(i__carry_i_22_n_0));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    i__carry_i_23
       (.I0(SrcAE[7]),
        .I1(DI[3]),
        .I2(SrcBE[3]),
        .I3(\q_reg[179]_0 ),
        .I4(SrcBE[4]),
        .I5(SrcAE[15]),
        .O(i__carry_i_23_n_0));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    i__carry_i_24
       (.I0(SrcAE[3]),
        .I1(SrcAE[19]),
        .I2(SrcBE[3]),
        .I3(\q_reg[175]_0 [3]),
        .I4(SrcBE[4]),
        .I5(SrcAE[11]),
        .O(i__carry_i_24_n_0));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    i__carry_i_25
       (.I0(SrcAE[2]),
        .I1(SrcAE[18]),
        .I2(SrcBE[3]),
        .I3(\q_reg[175]_0 [2]),
        .I4(SrcBE[4]),
        .I5(SrcAE[10]),
        .O(i__carry_i_25_n_0));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    i__carry_i_26
       (.I0(SrcAE[1]),
        .I1(SrcAE[17]),
        .I2(SrcBE[3]),
        .I3(\q_reg[175]_0 [1]),
        .I4(SrcBE[4]),
        .I5(SrcAE[9]),
        .O(i__carry_i_26_n_0));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    i__carry_i_27
       (.I0(SrcAE[0]),
        .I1(SrcAE[16]),
        .I2(SrcBE[3]),
        .I3(\q_reg[175]_0 [0]),
        .I4(SrcBE[4]),
        .I5(SrcAE[8]),
        .O(i__carry_i_27_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    i__carry_i_3
       (.I0(i__carry_i_11_n_0),
        .I1(\q_reg[37]_0 ),
        .I2(i__carry_i_12_n_0),
        .O(data6[1]));
  LUT3 #(
    .INIT(8'hB8)) 
    i__carry_i_4
       (.I0(i__carry_i_12_n_0),
        .I1(\q_reg[37]_0 ),
        .I2(i__carry_i_13_n_0),
        .O(data6[0]));
  LUT5 #(
    .INIT(32'h47B8B8B8)) 
    i__carry_i_5
       (.I0(i__carry_i_9_n_0),
        .I1(\q_reg[37]_0 ),
        .I2(i__carry_i_10_n_0),
        .I3(i__carry_i_14_n_0),
        .I4(i__carry_i_15_n_0),
        .O(\q_reg[37]_1 [3]));
  LUT6 #(
    .INIT(64'h66AAAAA6AAAAAAAA)) 
    i__carry_i_6
       (.I0(data6[2]),
        .I1(i__carry_i_15_n_0),
        .I2(\q_reg[37]_0 ),
        .I3(SrcBE[1]),
        .I4(SrcBE[2]),
        .I5(i__carry_i_16_n_0),
        .O(\q_reg[37]_1 [2]));
  LUT6 #(
    .INIT(64'h6AAAAA9AAAAAAAAA)) 
    i__carry_i_7
       (.I0(data6[1]),
        .I1(SrcBE[2]),
        .I2(i__carry_i_16_n_0),
        .I3(\q_reg[37]_0 ),
        .I4(SrcBE[1]),
        .I5(i__carry_i_15_n_0),
        .O(\q_reg[37]_1 [1]));
  LUT6 #(
    .INIT(64'hF0F0F0F0F0D2F0F0)) 
    i__carry_i_8
       (.I0(i__carry_i_15_n_0),
        .I1(\q_reg[37]_0 ),
        .I2(data6[0]),
        .I3(SrcBE[2]),
        .I4(i__carry_i_16_n_0),
        .I5(SrcBE[1]),
        .O(\q_reg[37]_1 [0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    i__carry_i_9
       (.I0(i__carry_i_17_n_0),
        .I1(i__carry_i_18_n_0),
        .I2(SrcBE[1]),
        .I3(i__carry_i_19_n_0),
        .I4(SrcBE[2]),
        .I5(i__carry_i_20_n_0),
        .O(i__carry_i_9_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    ltu_carry__0_i_1
       (.I0(SrcBE[14]),
        .I1(SrcAE[14]),
        .I2(SrcAE[15]),
        .I3(SrcBE[15]),
        .O(\q_reg[51]_0 [3]));
  LUT4 #(
    .INIT(16'h2F02)) 
    ltu_carry__0_i_2
       (.I0(SrcBE[12]),
        .I1(SrcAE[12]),
        .I2(SrcAE[13]),
        .I3(SrcBE[13]),
        .O(\q_reg[51]_0 [2]));
  LUT4 #(
    .INIT(16'h2F02)) 
    ltu_carry__0_i_3
       (.I0(SrcBE[10]),
        .I1(SrcAE[10]),
        .I2(SrcAE[11]),
        .I3(SrcBE[11]),
        .O(\q_reg[51]_0 [1]));
  LUT4 #(
    .INIT(16'h2F02)) 
    ltu_carry__0_i_4
       (.I0(SrcBE[8]),
        .I1(SrcAE[8]),
        .I2(SrcAE[9]),
        .I3(SrcBE[9]),
        .O(\q_reg[51]_0 [0]));
  LUT4 #(
    .INIT(16'h9009)) 
    ltu_carry__0_i_5
       (.I0(SrcBE[15]),
        .I1(SrcAE[15]),
        .I2(SrcAE[14]),
        .I3(SrcBE[14]),
        .O(\q_reg[52]_1 [3]));
  LUT4 #(
    .INIT(16'h9009)) 
    ltu_carry__0_i_6
       (.I0(SrcBE[13]),
        .I1(SrcAE[13]),
        .I2(SrcAE[12]),
        .I3(SrcBE[12]),
        .O(\q_reg[52]_1 [2]));
  LUT4 #(
    .INIT(16'h9009)) 
    ltu_carry__0_i_7
       (.I0(SrcBE[11]),
        .I1(SrcAE[11]),
        .I2(SrcAE[10]),
        .I3(SrcBE[10]),
        .O(\q_reg[52]_1 [1]));
  LUT4 #(
    .INIT(16'h9009)) 
    ltu_carry__0_i_8
       (.I0(SrcBE[9]),
        .I1(SrcAE[9]),
        .I2(SrcAE[8]),
        .I3(SrcBE[8]),
        .O(\q_reg[52]_1 [0]));
  LUT4 #(
    .INIT(16'h2F02)) 
    ltu_carry__1_i_1
       (.I0(\q_reg[59]_1 ),
        .I1(DI[2]),
        .I2(DI[3]),
        .I3(\q_reg[60]_0 ),
        .O(\q_reg[59]_0 [3]));
  LUT4 #(
    .INIT(16'h2F02)) 
    ltu_carry__1_i_2
       (.I0(\q_reg[57]_0 ),
        .I1(DI[0]),
        .I2(DI[1]),
        .I3(\q_reg[58]_0 ),
        .O(\q_reg[59]_0 [2]));
  LUT4 #(
    .INIT(16'h2F02)) 
    ltu_carry__1_i_3
       (.I0(SrcBE[18]),
        .I1(SrcAE[18]),
        .I2(SrcAE[19]),
        .I3(SrcBE[19]),
        .O(\q_reg[59]_0 [1]));
  LUT4 #(
    .INIT(16'h2F02)) 
    ltu_carry__1_i_4
       (.I0(SrcBE[16]),
        .I1(SrcAE[16]),
        .I2(SrcAE[17]),
        .I3(SrcBE[17]),
        .O(\q_reg[59]_0 [0]));
  LUT4 #(
    .INIT(16'h9009)) 
    ltu_carry__1_i_5
       (.I0(\q_reg[60]_0 ),
        .I1(DI[3]),
        .I2(DI[2]),
        .I3(\q_reg[59]_1 ),
        .O(\q_reg[60]_2 [3]));
  LUT4 #(
    .INIT(16'h9009)) 
    ltu_carry__1_i_6
       (.I0(\q_reg[58]_0 ),
        .I1(DI[1]),
        .I2(DI[0]),
        .I3(\q_reg[57]_0 ),
        .O(\q_reg[60]_2 [2]));
  LUT4 #(
    .INIT(16'h9009)) 
    ltu_carry__1_i_7
       (.I0(SrcBE[19]),
        .I1(SrcAE[19]),
        .I2(SrcAE[18]),
        .I3(SrcBE[18]),
        .O(\q_reg[60]_2 [1]));
  LUT4 #(
    .INIT(16'h9009)) 
    ltu_carry__1_i_8
       (.I0(SrcBE[17]),
        .I1(SrcAE[17]),
        .I2(SrcAE[16]),
        .I3(SrcBE[16]),
        .O(\q_reg[60]_2 [0]));
  LUT4 #(
    .INIT(16'h2F02)) 
    ltu_carry__2_i_1
       (.I0(\q_reg[67]_0 ),
        .I1(\q_reg[178]_0 [2]),
        .I2(\q_reg[179]_0 ),
        .I3(\q_reg[68]_1 ),
        .O(\q_reg[67]_1 [3]));
  LUT4 #(
    .INIT(16'h2F02)) 
    ltu_carry__2_i_2
       (.I0(\q_reg[65]_1 ),
        .I1(\q_reg[178]_0 [0]),
        .I2(\q_reg[178]_0 [1]),
        .I3(\q_reg[66]_0 ),
        .O(\q_reg[67]_1 [2]));
  LUT4 #(
    .INIT(16'h2F02)) 
    ltu_carry__2_i_3
       (.I0(\q_reg[63]_0 ),
        .I1(\q_reg[175]_0 [2]),
        .I2(\q_reg[175]_0 [3]),
        .I3(\q_reg[64]_0 ),
        .O(\q_reg[67]_1 [1]));
  LUT4 #(
    .INIT(16'h2F02)) 
    ltu_carry__2_i_4
       (.I0(\q_reg[61]_0 ),
        .I1(\q_reg[175]_0 [0]),
        .I2(\q_reg[175]_0 [1]),
        .I3(\q_reg[62]_0 ),
        .O(\q_reg[67]_1 [0]));
  LUT4 #(
    .INIT(16'h9009)) 
    ltu_carry__2_i_5
       (.I0(\q_reg[179]_0 ),
        .I1(\q_reg[68]_1 ),
        .I2(\q_reg[178]_0 [2]),
        .I3(\q_reg[67]_0 ),
        .O(\q_reg[179]_1 [3]));
  LUT4 #(
    .INIT(16'h9009)) 
    ltu_carry__2_i_6
       (.I0(\q_reg[66]_0 ),
        .I1(\q_reg[178]_0 [1]),
        .I2(\q_reg[178]_0 [0]),
        .I3(\q_reg[65]_1 ),
        .O(\q_reg[179]_1 [2]));
  LUT4 #(
    .INIT(16'h9009)) 
    ltu_carry__2_i_7
       (.I0(\q_reg[64]_0 ),
        .I1(\q_reg[175]_0 [3]),
        .I2(\q_reg[175]_0 [2]),
        .I3(\q_reg[63]_0 ),
        .O(\q_reg[179]_1 [1]));
  LUT4 #(
    .INIT(16'h9009)) 
    ltu_carry__2_i_8
       (.I0(\q_reg[62]_0 ),
        .I1(\q_reg[175]_0 [1]),
        .I2(\q_reg[175]_0 [0]),
        .I3(\q_reg[61]_0 ),
        .O(\q_reg[179]_1 [0]));
  LUT4 #(
    .INIT(16'h2F02)) 
    ltu_carry_i_1
       (.I0(SrcBE[6]),
        .I1(SrcAE[6]),
        .I2(SrcAE[7]),
        .I3(SrcBE[7]),
        .O(\q_reg[43]_0 [3]));
  LUT4 #(
    .INIT(16'h2F02)) 
    ltu_carry_i_2
       (.I0(SrcBE[4]),
        .I1(SrcAE[4]),
        .I2(SrcAE[5]),
        .I3(SrcBE[5]),
        .O(\q_reg[43]_0 [2]));
  LUT4 #(
    .INIT(16'h2F02)) 
    ltu_carry_i_3
       (.I0(SrcBE[2]),
        .I1(SrcAE[2]),
        .I2(SrcAE[3]),
        .I3(SrcBE[3]),
        .O(\q_reg[43]_0 [1]));
  LUT4 #(
    .INIT(16'h2F02)) 
    ltu_carry_i_4
       (.I0(\q_reg[37]_0 ),
        .I1(SrcAE[0]),
        .I2(SrcAE[1]),
        .I3(SrcBE[1]),
        .O(\q_reg[43]_0 [0]));
  LUT4 #(
    .INIT(16'h9009)) 
    ltu_carry_i_5
       (.I0(SrcBE[7]),
        .I1(SrcAE[7]),
        .I2(SrcAE[6]),
        .I3(SrcBE[6]),
        .O(\q_reg[44]_1 [3]));
  LUT4 #(
    .INIT(16'h9009)) 
    ltu_carry_i_6
       (.I0(SrcBE[5]),
        .I1(SrcAE[5]),
        .I2(SrcAE[4]),
        .I3(SrcBE[4]),
        .O(\q_reg[44]_1 [2]));
  LUT4 #(
    .INIT(16'h9009)) 
    ltu_carry_i_7
       (.I0(SrcBE[3]),
        .I1(SrcAE[3]),
        .I2(SrcAE[2]),
        .I3(SrcBE[2]),
        .O(\q_reg[44]_1 [1]));
  LUT4 #(
    .INIT(16'h9009)) 
    ltu_carry_i_8
       (.I0(SrcBE[1]),
        .I1(SrcAE[1]),
        .I2(SrcAE[0]),
        .I3(\q_reg[37]_0 ),
        .O(\q_reg[44]_1 [0]));
  LUT6 #(
    .INIT(64'h002A000000000000)) 
    \q[0]_i_1 
       (.I0(\q_reg[0]_2 ),
        .I1(\q_reg[179]_3 ),
        .I2(\c/PCSrcE2__5 ),
        .I3(\q_reg[10]_0 ),
        .I4(\q_reg[12]_0 ),
        .I5(\q_reg[68]_2 [62]),
        .O(\q_reg[65]_0 [0]));
  LUT6 #(
    .INIT(64'h0800080800080808)) 
    \q[0]_i_1__0 
       (.I0(\q_reg[68]_2 [70]),
        .I1(\q_reg[12]_0 ),
        .I2(\q_reg[4]_1 [6]),
        .I3(\c/PCSrcE2__5 ),
        .I4(\q_reg[4]_1 [5]),
        .I5(D[0]),
        .O(p_0_in[0]));
  LUT6 #(
    .INIT(64'hF0CCF0CCF0CCAAAA)) 
    \q[0]_i_1__1 
       (.I0(\q_reg[63]_1 [0]),
        .I1(D[104]),
        .I2(BranchTargetE[0]),
        .I3(ImmSrcb1E),
        .I4(\q_reg[0]_0 ),
        .I5(\q_reg[10]_0 ),
        .O(\q_reg[3]_0 [0]));
  LUT6 #(
    .INIT(64'h0800080800080808)) 
    \q[100]_i_1 
       (.I0(\q_reg[68]_2 [46]),
        .I1(\q_reg[12]_0 ),
        .I2(\q_reg[4]_1 [6]),
        .I3(\c/PCSrcE2__5 ),
        .I4(\q_reg[4]_1 [5]),
        .I5(D[0]),
        .O(p_0_in[100]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \q[100]_i_1__0 
       (.I0(\q[79]_i_2_n_0 ),
        .I1(RD2E[28]),
        .I2(\q[79]_i_3_n_0 ),
        .I3(ResultW[28]),
        .I4(ForwardBE),
        .I5(\q_reg[103]_0 [33]),
        .O(D[100]));
  LUT6 #(
    .INIT(64'h0800080800080808)) 
    \q[101]_i_1 
       (.I0(\q_reg[68]_2 [47]),
        .I1(\q_reg[12]_0 ),
        .I2(\q_reg[4]_1 [6]),
        .I3(\c/PCSrcE2__5 ),
        .I4(\q_reg[4]_1 [5]),
        .I5(D[0]),
        .O(p_0_in[101]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \q[101]_i_1__0 
       (.I0(\q[79]_i_2_n_0 ),
        .I1(RD2E[29]),
        .I2(\q[79]_i_3_n_0 ),
        .I3(ResultW[29]),
        .I4(ForwardBE),
        .I5(\q_reg[103]_0 [34]),
        .O(D[101]));
  LUT6 #(
    .INIT(64'h0800080800080808)) 
    \q[102]_i_1 
       (.I0(\q_reg[68]_2 [48]),
        .I1(\q_reg[12]_0 ),
        .I2(\q_reg[4]_1 [6]),
        .I3(\c/PCSrcE2__5 ),
        .I4(\q_reg[4]_1 [5]),
        .I5(D[0]),
        .O(p_0_in[102]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \q[102]_i_1__0 
       (.I0(\q[79]_i_2_n_0 ),
        .I1(RD2E[30]),
        .I2(\q[79]_i_3_n_0 ),
        .I3(ResultW[30]),
        .I4(ForwardBE),
        .I5(\q_reg[103]_0 [35]),
        .O(D[102]));
  LUT6 #(
    .INIT(64'h0800080800080808)) 
    \q[103]_i_1 
       (.I0(\q_reg[68]_2 [49]),
        .I1(\q_reg[12]_0 ),
        .I2(\q_reg[4]_1 [6]),
        .I3(\c/PCSrcE2__5 ),
        .I4(\q_reg[4]_1 [5]),
        .I5(D[0]),
        .O(p_0_in[103]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \q[103]_i_1__0 
       (.I0(\q[79]_i_2_n_0 ),
        .I1(RD2E[31]),
        .I2(\q[79]_i_3_n_0 ),
        .I3(ResultW[31]),
        .I4(ForwardBE),
        .I5(\q_reg[103]_0 [36]),
        .O(D[103]));
  LUT6 #(
    .INIT(64'h0800080800080808)) 
    \q[104]_i_1 
       (.I0(\q_reg[68]_2 [50]),
        .I1(\q_reg[12]_0 ),
        .I2(\q_reg[4]_1 [6]),
        .I3(\c/PCSrcE2__5 ),
        .I4(\q_reg[4]_1 [5]),
        .I5(D[0]),
        .O(p_0_in[104]));
  LUT6 #(
    .INIT(64'hFF00EEEEF0F0EEEE)) 
    \q[104]_i_1__0 
       (.I0(\q[104]_i_2_n_0 ),
        .I1(\q[104]_i_3_n_0 ),
        .I2(CO),
        .I3(data8[0]),
        .I4(\q_reg[4]_1 [4]),
        .I5(\q_reg[4]_1 [3]),
        .O(D[104]));
  LUT6 #(
    .INIT(64'hAAAAAAAA88800080)) 
    \q[104]_i_2 
       (.I0(\q_reg[4]_1 [3]),
        .I1(\q_reg[104]_0 ),
        .I2(i__carry_i_13_n_0),
        .I3(\q_reg[37]_0 ),
        .I4(i__carry_i_12_n_0),
        .I5(\q[104]_i_5_n_0 ),
        .O(\q[104]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h3232320232020202)) 
    \q[104]_i_3 
       (.I0(sum[0]),
        .I1(\q_reg[4]_1 [3]),
        .I2(\q_reg[4]_1 [2]),
        .I3(\q_reg[37]_0 ),
        .I4(SrcAE[0]),
        .I5(\q_reg[4]_1 [1]),
        .O(\q[104]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAABBBABABBAABABA)) 
    \q[104]_i_5 
       (.I0(\q[104]_i_6_n_0 ),
        .I1(\q_reg[4]_1 [2]),
        .I2(\alu/result00_out ),
        .I3(v__7),
        .I4(\q_reg[4]_1 [1]),
        .I5(O),
        .O(\q[104]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \q[104]_i_6 
       (.I0(i__carry__6_i_9_n_0),
        .I1(SrcAE[0]),
        .I2(\q_reg[4]_1 [2]),
        .I3(\q_reg[37]_0 ),
        .I4(\q_reg[4]_1 [1]),
        .I5(i__carry__6_i_8_n_0),
        .O(\q[104]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \q[104]_i_7 
       (.I0(\q_reg[37]_0 ),
        .I1(SrcAE[0]),
        .O(\alu/result00_out ));
  LUT6 #(
    .INIT(64'h0800080800080808)) 
    \q[105]_i_1 
       (.I0(\q_reg[68]_2 [51]),
        .I1(\q_reg[12]_0 ),
        .I2(\q_reg[4]_1 [6]),
        .I3(\c/PCSrcE2__5 ),
        .I4(\q_reg[4]_1 [5]),
        .I5(D[0]),
        .O(p_0_in[105]));
  LUT6 #(
    .INIT(64'hFEEEEEEEAAAAAAAA)) 
    \q[105]_i_1__0 
       (.I0(\q[105]_i_2_n_0 ),
        .I1(\q[105]_i_3_n_0 ),
        .I2(\q[105]_i_4_n_0 ),
        .I3(\q_reg[135]_0 ),
        .I4(\q_reg[4]_1 [2]),
        .I5(\q_reg[135]_1 ),
        .O(D[105]));
  LUT6 #(
    .INIT(64'hFFF8F88888888888)) 
    \q[105]_i_2 
       (.I0(data8[1]),
        .I1(\q_reg[123]_0 ),
        .I2(SrcBE[1]),
        .I3(SrcAE[1]),
        .I4(\q_reg[135]_0 ),
        .I5(\q_reg[123]_1 ),
        .O(\q[105]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00060FFF00060000)) 
    \q[105]_i_3 
       (.I0(SrcBE[1]),
        .I1(SrcAE[1]),
        .I2(\q_reg[4]_1 [2]),
        .I3(\q_reg[4]_1 [1]),
        .I4(\q_reg[4]_1 [3]),
        .I5(sum[1]),
        .O(\q[105]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \q[105]_i_4 
       (.I0(\q[106]_i_5_n_0 ),
        .I1(\q[105]_i_5_n_0 ),
        .I2(\q_reg[4]_1 [1]),
        .I3(i__carry_i_11_n_0),
        .I4(\q_reg[37]_0 ),
        .I5(i__carry_i_12_n_0),
        .O(\q[105]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \q[105]_i_5 
       (.I0(i__carry__6_i_9_n_0),
        .I1(SrcAE[0]),
        .I2(i__carry__6_i_8_n_0),
        .O(\q[105]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0800080800080808)) 
    \q[106]_i_1 
       (.I0(\q_reg[68]_2 [52]),
        .I1(\q_reg[12]_0 ),
        .I2(\q_reg[4]_1 [6]),
        .I3(\c/PCSrcE2__5 ),
        .I4(\q_reg[4]_1 [5]),
        .I5(D[0]),
        .O(p_0_in[106]));
  LUT6 #(
    .INIT(64'hFEEEEEEEAAAAAAAA)) 
    \q[106]_i_1__0 
       (.I0(\q[106]_i_2_n_0 ),
        .I1(\q[106]_i_3_n_0 ),
        .I2(\q[106]_i_4_n_0 ),
        .I3(\q_reg[135]_0 ),
        .I4(\q_reg[4]_1 [2]),
        .I5(\q_reg[135]_1 ),
        .O(D[106]));
  LUT6 #(
    .INIT(64'hFFF8F88888888888)) 
    \q[106]_i_2 
       (.I0(data8[2]),
        .I1(\q_reg[123]_0 ),
        .I2(SrcBE[2]),
        .I3(SrcAE[2]),
        .I4(\q_reg[135]_0 ),
        .I5(\q_reg[123]_1 ),
        .O(\q[106]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00060FFF00060000)) 
    \q[106]_i_3 
       (.I0(SrcBE[2]),
        .I1(SrcAE[2]),
        .I2(\q_reg[4]_1 [2]),
        .I3(\q_reg[4]_1 [1]),
        .I4(\q_reg[4]_1 [3]),
        .I5(sum[2]),
        .O(\q[106]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \q[106]_i_4 
       (.I0(\q[107]_i_5_n_0 ),
        .I1(\q[106]_i_5_n_0 ),
        .I2(\q_reg[4]_1 [1]),
        .I3(i__carry_i_10_n_0),
        .I4(\q_reg[37]_0 ),
        .I5(i__carry_i_11_n_0),
        .O(\q[106]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \q[106]_i_5 
       (.I0(SrcBE[2]),
        .I1(SrcBE[1]),
        .I2(SrcAE[1]),
        .I3(i__carry__6_i_9_n_0),
        .O(\q[106]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0800080800080808)) 
    \q[107]_i_1 
       (.I0(\q_reg[68]_2 [53]),
        .I1(\q_reg[12]_0 ),
        .I2(\q_reg[4]_1 [6]),
        .I3(\c/PCSrcE2__5 ),
        .I4(\q_reg[4]_1 [5]),
        .I5(D[0]),
        .O(p_0_in[107]));
  LUT6 #(
    .INIT(64'hFEEEEEEEAAAAAAAA)) 
    \q[107]_i_1__0 
       (.I0(\q[107]_i_2_n_0 ),
        .I1(\q[107]_i_3_n_0 ),
        .I2(\q[107]_i_4_n_0 ),
        .I3(\q_reg[135]_0 ),
        .I4(\q_reg[4]_1 [2]),
        .I5(\q_reg[135]_1 ),
        .O(D[107]));
  LUT6 #(
    .INIT(64'hFFF8F88888888888)) 
    \q[107]_i_2 
       (.I0(data8[3]),
        .I1(\q_reg[123]_0 ),
        .I2(SrcBE[3]),
        .I3(SrcAE[3]),
        .I4(\q_reg[135]_0 ),
        .I5(\q_reg[123]_1 ),
        .O(\q[107]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00060FFF00060000)) 
    \q[107]_i_3 
       (.I0(SrcBE[3]),
        .I1(SrcAE[3]),
        .I2(\q_reg[4]_1 [2]),
        .I3(\q_reg[4]_1 [1]),
        .I4(\q_reg[4]_1 [3]),
        .I5(sum[3]),
        .O(\q[107]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \q[107]_i_4 
       (.I0(\q[108]_i_5_n_0 ),
        .I1(\q[107]_i_5_n_0 ),
        .I2(\q_reg[4]_1 [1]),
        .I3(i__carry_i_9_n_0),
        .I4(\q_reg[37]_0 ),
        .I5(i__carry_i_10_n_0),
        .O(\q[107]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h000088C0)) 
    \q[107]_i_5 
       (.I0(SrcAE[0]),
        .I1(i__carry__6_i_9_n_0),
        .I2(SrcAE[2]),
        .I3(SrcBE[1]),
        .I4(SrcBE[2]),
        .O(\q[107]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0800080800080808)) 
    \q[108]_i_1 
       (.I0(\q_reg[68]_2 [54]),
        .I1(\q_reg[12]_0 ),
        .I2(\q_reg[4]_1 [6]),
        .I3(\c/PCSrcE2__5 ),
        .I4(\q_reg[4]_1 [5]),
        .I5(D[0]),
        .O(p_0_in[108]));
  LUT6 #(
    .INIT(64'hFEEEEEEEAAAAAAAA)) 
    \q[108]_i_1__0 
       (.I0(\q[108]_i_2_n_0 ),
        .I1(\q[108]_i_3_n_0 ),
        .I2(\q[108]_i_4_n_0 ),
        .I3(\q_reg[135]_0 ),
        .I4(\q_reg[4]_1 [2]),
        .I5(\q_reg[135]_1 ),
        .O(D[108]));
  LUT6 #(
    .INIT(64'hFFF8F88888888888)) 
    \q[108]_i_2 
       (.I0(data8[4]),
        .I1(\q_reg[123]_0 ),
        .I2(SrcBE[4]),
        .I3(SrcAE[4]),
        .I4(\q_reg[135]_0 ),
        .I5(\q_reg[123]_1 ),
        .O(\q[108]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00060FFF00060000)) 
    \q[108]_i_3 
       (.I0(SrcBE[4]),
        .I1(SrcAE[4]),
        .I2(\q_reg[4]_1 [2]),
        .I3(\q_reg[4]_1 [1]),
        .I4(\q_reg[4]_1 [3]),
        .I5(sum[4]),
        .O(\q[108]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \q[108]_i_4 
       (.I0(\q[109]_i_5_n_0 ),
        .I1(\q[108]_i_5_n_0 ),
        .I2(\q_reg[4]_1 [1]),
        .I3(i__carry__0_i_12_n_0),
        .I4(\q_reg[37]_0 ),
        .I5(i__carry_i_9_n_0),
        .O(\q[108]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'h000088C0)) 
    \q[108]_i_5 
       (.I0(SrcAE[1]),
        .I1(i__carry__6_i_9_n_0),
        .I2(SrcAE[3]),
        .I3(SrcBE[1]),
        .I4(SrcBE[2]),
        .O(\q[108]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0800080800080808)) 
    \q[109]_i_1 
       (.I0(\q_reg[68]_2 [55]),
        .I1(\q_reg[12]_0 ),
        .I2(\q_reg[4]_1 [6]),
        .I3(\c/PCSrcE2__5 ),
        .I4(\q_reg[4]_1 [5]),
        .I5(D[0]),
        .O(p_0_in[109]));
  LUT6 #(
    .INIT(64'hFEEEEEEEAAAAAAAA)) 
    \q[109]_i_1__0 
       (.I0(\q[109]_i_2_n_0 ),
        .I1(\q[109]_i_3_n_0 ),
        .I2(\q[109]_i_4_n_0 ),
        .I3(\q_reg[135]_0 ),
        .I4(\q_reg[4]_1 [2]),
        .I5(\q_reg[135]_1 ),
        .O(D[109]));
  LUT6 #(
    .INIT(64'hFFF8F88888888888)) 
    \q[109]_i_2 
       (.I0(data8[5]),
        .I1(\q_reg[123]_0 ),
        .I2(SrcBE[5]),
        .I3(SrcAE[5]),
        .I4(\q_reg[135]_0 ),
        .I5(\q_reg[123]_1 ),
        .O(\q[109]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00060FFF00060000)) 
    \q[109]_i_3 
       (.I0(SrcBE[5]),
        .I1(SrcAE[5]),
        .I2(\q_reg[4]_1 [2]),
        .I3(\q_reg[4]_1 [1]),
        .I4(\q_reg[4]_1 [3]),
        .I5(sum[5]),
        .O(\q[109]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \q[109]_i_4 
       (.I0(\q[110]_i_5_n_0 ),
        .I1(\q[109]_i_5_n_0 ),
        .I2(\q_reg[4]_1 [1]),
        .I3(i__carry__0_i_11_n_0),
        .I4(\q_reg[37]_0 ),
        .I5(i__carry__0_i_12_n_0),
        .O(\q[109]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h30BB000030880000)) 
    \q[109]_i_5 
       (.I0(SrcAE[2]),
        .I1(SrcBE[1]),
        .I2(SrcAE[0]),
        .I3(SrcBE[2]),
        .I4(i__carry__6_i_9_n_0),
        .I5(SrcAE[4]),
        .O(\q[109]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0800080800080808)) 
    \q[10]_i_1 
       (.I0(\q_reg[10]_1 ),
        .I1(\q_reg[12]_0 ),
        .I2(\q_reg[4]_1 [6]),
        .I3(\c/PCSrcE2__5 ),
        .I4(\q_reg[4]_1 [5]),
        .I5(D[0]),
        .O(\q_reg[65]_0 [5]));
  LUT6 #(
    .INIT(64'h0800080800080808)) 
    \q[10]_i_1__0 
       (.I0(\q_reg[68]_2 [3]),
        .I1(\q_reg[12]_0 ),
        .I2(\q_reg[4]_1 [6]),
        .I3(\c/PCSrcE2__5 ),
        .I4(\q_reg[4]_1 [5]),
        .I5(D[0]),
        .O(p_0_in[10]));
  LUT6 #(
    .INIT(64'hF0CCF0CCF0CCAAAA)) 
    \q[10]_i_1__1 
       (.I0(PCPlus4F[7]),
        .I1(D[114]),
        .I2(BranchTargetE[10]),
        .I3(ImmSrcb1E),
        .I4(\q_reg[0]_0 ),
        .I5(\q_reg[10]_0 ),
        .O(\q_reg[3]_0 [10]));
  LUT5 #(
    .INIT(32'h00008A2A)) 
    \q[10]_i_1__2 
       (.I0(PCPlus4F[7]),
        .I1(D[0]),
        .I2(\q_reg[4]_1 [5]),
        .I3(\c/PCSrcE2__5 ),
        .I4(\q_reg[4]_1 [6]),
        .O(\q_reg[0]_1 [8]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \q[10]_i_1__3 
       (.I0(Q[7]),
        .I1(opb5E),
        .I2(BranchTargetE[7]),
        .O(D[10]));
  LUT6 #(
    .INIT(64'h0800080800080808)) 
    \q[110]_i_1 
       (.I0(\q_reg[68]_2 [56]),
        .I1(\q_reg[12]_0 ),
        .I2(\q_reg[4]_1 [6]),
        .I3(\c/PCSrcE2__5 ),
        .I4(\q_reg[4]_1 [5]),
        .I5(D[0]),
        .O(p_0_in[110]));
  LUT6 #(
    .INIT(64'hFEEEEEEEAAAAAAAA)) 
    \q[110]_i_1__0 
       (.I0(\q[110]_i_2_n_0 ),
        .I1(\q[110]_i_3_n_0 ),
        .I2(\q[110]_i_4_n_0 ),
        .I3(\q_reg[135]_0 ),
        .I4(\q_reg[4]_1 [2]),
        .I5(\q_reg[135]_1 ),
        .O(D[110]));
  LUT6 #(
    .INIT(64'hFFF8F88888888888)) 
    \q[110]_i_2 
       (.I0(data8[6]),
        .I1(\q_reg[123]_0 ),
        .I2(SrcBE[6]),
        .I3(SrcAE[6]),
        .I4(\q_reg[135]_0 ),
        .I5(\q_reg[123]_1 ),
        .O(\q[110]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00060FFF00060000)) 
    \q[110]_i_3 
       (.I0(SrcBE[6]),
        .I1(SrcAE[6]),
        .I2(\q_reg[4]_1 [2]),
        .I3(\q_reg[4]_1 [1]),
        .I4(\q_reg[4]_1 [3]),
        .I5(sum[6]),
        .O(\q[110]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \q[110]_i_4 
       (.I0(\q[111]_i_6_n_0 ),
        .I1(\q[110]_i_5_n_0 ),
        .I2(\q_reg[4]_1 [1]),
        .I3(i__carry__0_i_10_n_0),
        .I4(\q_reg[37]_0 ),
        .I5(i__carry__0_i_11_n_0),
        .O(\q[110]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h30BB000030880000)) 
    \q[110]_i_5 
       (.I0(SrcAE[3]),
        .I1(SrcBE[1]),
        .I2(SrcAE[1]),
        .I3(SrcBE[2]),
        .I4(i__carry__6_i_9_n_0),
        .I5(SrcAE[5]),
        .O(\q[110]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0800080800080808)) 
    \q[111]_i_1 
       (.I0(\q_reg[68]_2 [57]),
        .I1(\q_reg[12]_0 ),
        .I2(\q_reg[4]_1 [6]),
        .I3(\c/PCSrcE2__5 ),
        .I4(\q_reg[4]_1 [5]),
        .I5(D[0]),
        .O(p_0_in[111]));
  LUT6 #(
    .INIT(64'hFEEEEEEEAAAAAAAA)) 
    \q[111]_i_1__0 
       (.I0(\q[111]_i_2_n_0 ),
        .I1(\q[111]_i_3_n_0 ),
        .I2(\q[111]_i_4_n_0 ),
        .I3(\q_reg[135]_0 ),
        .I4(\q_reg[4]_1 [2]),
        .I5(\q_reg[135]_1 ),
        .O(D[111]));
  LUT6 #(
    .INIT(64'hFFF8F88888888888)) 
    \q[111]_i_2 
       (.I0(data8[7]),
        .I1(\q_reg[123]_0 ),
        .I2(SrcBE[7]),
        .I3(SrcAE[7]),
        .I4(\q_reg[135]_0 ),
        .I5(\q_reg[123]_1 ),
        .O(\q[111]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00060FFF00060000)) 
    \q[111]_i_3 
       (.I0(SrcBE[7]),
        .I1(SrcAE[7]),
        .I2(\q_reg[4]_1 [2]),
        .I3(\q_reg[4]_1 [1]),
        .I4(\q_reg[4]_1 [3]),
        .I5(sum[7]),
        .O(\q[111]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFEAEFAFAFEAEAAAA)) 
    \q[111]_i_4 
       (.I0(\q[111]_i_5_n_0 ),
        .I1(\q[111]_i_6_n_0 ),
        .I2(\q_reg[4]_1 [1]),
        .I3(i__carry__0_i_9_n_0),
        .I4(\q_reg[37]_0 ),
        .I5(i__carry__0_i_10_n_0),
        .O(\q[111]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h11100010)) 
    \q[111]_i_5 
       (.I0(\q_reg[4]_1 [1]),
        .I1(\q_reg[37]_0 ),
        .I2(\q[114]_i_6_n_0 ),
        .I3(SrcBE[1]),
        .I4(\q[112]_i_6_n_0 ),
        .O(\q[111]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hB080FFFFB0800000)) 
    \q[111]_i_6 
       (.I0(SrcAE[0]),
        .I1(SrcBE[2]),
        .I2(i__carry__6_i_9_n_0),
        .I3(SrcAE[4]),
        .I4(SrcBE[1]),
        .I5(\q[111]_i_7_n_0 ),
        .O(\q[111]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT4 #(
    .INIT(16'hB080)) 
    \q[111]_i_7 
       (.I0(SrcAE[2]),
        .I1(SrcBE[2]),
        .I2(i__carry__6_i_9_n_0),
        .I3(SrcAE[6]),
        .O(\q[111]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0800080800080808)) 
    \q[112]_i_1 
       (.I0(\q_reg[68]_2 [58]),
        .I1(\q_reg[12]_0 ),
        .I2(\q_reg[4]_1 [6]),
        .I3(\c/PCSrcE2__5 ),
        .I4(\q_reg[4]_1 [5]),
        .I5(D[0]),
        .O(p_0_in[112]));
  LUT6 #(
    .INIT(64'hFEEEEEEEAAAAAAAA)) 
    \q[112]_i_1__0 
       (.I0(\q[112]_i_2_n_0 ),
        .I1(\q[112]_i_3_n_0 ),
        .I2(\q[112]_i_4_n_0 ),
        .I3(\q_reg[135]_0 ),
        .I4(\q_reg[4]_1 [2]),
        .I5(\q_reg[135]_1 ),
        .O(D[112]));
  LUT6 #(
    .INIT(64'hFFF8F88888888888)) 
    \q[112]_i_2 
       (.I0(data8[8]),
        .I1(\q_reg[123]_0 ),
        .I2(SrcBE[8]),
        .I3(SrcAE[8]),
        .I4(\q_reg[135]_0 ),
        .I5(\q_reg[123]_1 ),
        .O(\q[112]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00060FFF00060000)) 
    \q[112]_i_3 
       (.I0(SrcBE[8]),
        .I1(SrcAE[8]),
        .I2(\q_reg[4]_1 [2]),
        .I3(\q_reg[4]_1 [1]),
        .I4(\q_reg[4]_1 [3]),
        .I5(sum[8]),
        .O(\q[112]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFCCCFEFEFCCCCECE)) 
    \q[112]_i_4 
       (.I0(\q[113]_i_5_n_0 ),
        .I1(\q[112]_i_5_n_0 ),
        .I2(\q_reg[4]_1 [1]),
        .I3(i__carry__1_i_12_n_0),
        .I4(\q_reg[37]_0 ),
        .I5(i__carry__0_i_9_n_0),
        .O(\q[112]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h44400040)) 
    \q[112]_i_5 
       (.I0(\q_reg[4]_1 [1]),
        .I1(\q_reg[37]_0 ),
        .I2(\q[114]_i_6_n_0 ),
        .I3(SrcBE[1]),
        .I4(\q[112]_i_6_n_0 ),
        .O(\q[112]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT4 #(
    .INIT(16'hB080)) 
    \q[112]_i_6 
       (.I0(SrcAE[1]),
        .I1(SrcBE[2]),
        .I2(i__carry__6_i_9_n_0),
        .I3(SrcAE[5]),
        .O(\q[112]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0800080800080808)) 
    \q[113]_i_1 
       (.I0(\q_reg[68]_2 [59]),
        .I1(\q_reg[12]_0 ),
        .I2(\q_reg[4]_1 [6]),
        .I3(\c/PCSrcE2__5 ),
        .I4(\q_reg[4]_1 [5]),
        .I5(D[0]),
        .O(p_0_in[113]));
  LUT6 #(
    .INIT(64'hFEEEEEEEAAAAAAAA)) 
    \q[113]_i_1__0 
       (.I0(\q[113]_i_2_n_0 ),
        .I1(\q[113]_i_3_n_0 ),
        .I2(\q[113]_i_4_n_0 ),
        .I3(\q_reg[135]_0 ),
        .I4(\q_reg[4]_1 [2]),
        .I5(\q_reg[135]_1 ),
        .O(D[113]));
  LUT6 #(
    .INIT(64'hFFF8F88888888888)) 
    \q[113]_i_2 
       (.I0(data8[9]),
        .I1(\q_reg[123]_0 ),
        .I2(SrcBE[9]),
        .I3(SrcAE[9]),
        .I4(\q_reg[135]_0 ),
        .I5(\q_reg[123]_1 ),
        .O(\q[113]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00060FFF00060000)) 
    \q[113]_i_3 
       (.I0(SrcBE[9]),
        .I1(SrcAE[9]),
        .I2(\q_reg[4]_1 [2]),
        .I3(\q_reg[4]_1 [1]),
        .I4(\q_reg[4]_1 [3]),
        .I5(sum[9]),
        .O(\q[113]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \q[113]_i_4 
       (.I0(\q[114]_i_5_n_0 ),
        .I1(\q[113]_i_5_n_0 ),
        .I2(\q_reg[4]_1 [1]),
        .I3(i__carry__1_i_11_n_0),
        .I4(\q_reg[37]_0 ),
        .I5(i__carry__1_i_12_n_0),
        .O(\q[113]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hB080FFFFB0800000)) 
    \q[113]_i_5 
       (.I0(SrcAE[2]),
        .I1(SrcBE[2]),
        .I2(i__carry__6_i_9_n_0),
        .I3(SrcAE[6]),
        .I4(SrcBE[1]),
        .I5(\q[115]_i_6_n_0 ),
        .O(\q[113]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0800080800080808)) 
    \q[114]_i_1 
       (.I0(\q_reg[68]_2 [60]),
        .I1(\q_reg[12]_0 ),
        .I2(\q_reg[4]_1 [6]),
        .I3(\c/PCSrcE2__5 ),
        .I4(\q_reg[4]_1 [5]),
        .I5(D[0]),
        .O(p_0_in[114]));
  LUT6 #(
    .INIT(64'hFEEEEEEEAAAAAAAA)) 
    \q[114]_i_1__0 
       (.I0(\q[114]_i_2_n_0 ),
        .I1(\q[114]_i_3_n_0 ),
        .I2(\q[114]_i_4_n_0 ),
        .I3(\q_reg[135]_0 ),
        .I4(\q_reg[4]_1 [2]),
        .I5(\q_reg[135]_1 ),
        .O(D[114]));
  LUT6 #(
    .INIT(64'hFFF8F88888888888)) 
    \q[114]_i_2 
       (.I0(data8[10]),
        .I1(\q_reg[123]_0 ),
        .I2(SrcBE[10]),
        .I3(SrcAE[10]),
        .I4(\q_reg[135]_0 ),
        .I5(\q_reg[123]_1 ),
        .O(\q[114]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00060FFF00060000)) 
    \q[114]_i_3 
       (.I0(SrcBE[10]),
        .I1(SrcAE[10]),
        .I2(\q_reg[4]_1 [2]),
        .I3(\q_reg[4]_1 [1]),
        .I4(\q_reg[4]_1 [3]),
        .I5(sum[10]),
        .O(\q[114]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \q[114]_i_4 
       (.I0(\q[115]_i_5_n_0 ),
        .I1(\q[114]_i_5_n_0 ),
        .I2(\q_reg[4]_1 [1]),
        .I3(i__carry__1_i_10_n_0),
        .I4(\q_reg[37]_0 ),
        .I5(i__carry__1_i_11_n_0),
        .O(\q[114]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \q[114]_i_5 
       (.I0(\q[114]_i_6_n_0 ),
        .I1(SrcBE[1]),
        .I2(\q[116]_i_6_n_0 ),
        .O(\q[114]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT4 #(
    .INIT(16'hB080)) 
    \q[114]_i_6 
       (.I0(SrcAE[3]),
        .I1(SrcBE[2]),
        .I2(i__carry__6_i_9_n_0),
        .I3(SrcAE[7]),
        .O(\q[114]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0800080800080808)) 
    \q[115]_i_1 
       (.I0(\q_reg[68]_2 [61]),
        .I1(\q_reg[12]_0 ),
        .I2(\q_reg[4]_1 [6]),
        .I3(\c/PCSrcE2__5 ),
        .I4(\q_reg[4]_1 [5]),
        .I5(D[0]),
        .O(p_0_in[115]));
  LUT6 #(
    .INIT(64'hFEEEEEEEAAAAAAAA)) 
    \q[115]_i_1__0 
       (.I0(\q[115]_i_2_n_0 ),
        .I1(\q[115]_i_3_n_0 ),
        .I2(\q[115]_i_4_n_0 ),
        .I3(\q_reg[135]_0 ),
        .I4(\q_reg[4]_1 [2]),
        .I5(\q_reg[135]_1 ),
        .O(D[115]));
  LUT6 #(
    .INIT(64'hFFF8F88888888888)) 
    \q[115]_i_2 
       (.I0(data8[11]),
        .I1(\q_reg[123]_0 ),
        .I2(SrcBE[11]),
        .I3(SrcAE[11]),
        .I4(\q_reg[135]_0 ),
        .I5(\q_reg[123]_1 ),
        .O(\q[115]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00060FFF00060000)) 
    \q[115]_i_3 
       (.I0(SrcBE[11]),
        .I1(SrcAE[11]),
        .I2(\q_reg[4]_1 [2]),
        .I3(\q_reg[4]_1 [1]),
        .I4(\q_reg[4]_1 [3]),
        .I5(sum[11]),
        .O(\q[115]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \q[115]_i_4 
       (.I0(\q[116]_i_5_n_0 ),
        .I1(\q[115]_i_5_n_0 ),
        .I2(\q_reg[4]_1 [1]),
        .I3(i__carry__1_i_9_n_0),
        .I4(\q_reg[37]_0 ),
        .I5(i__carry__1_i_10_n_0),
        .O(\q[115]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \q[115]_i_5 
       (.I0(\q[115]_i_6_n_0 ),
        .I1(SrcBE[1]),
        .I2(\q[117]_i_6_n_0 ),
        .O(\q[115]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h000000003030BB88)) 
    \q[115]_i_6 
       (.I0(SrcAE[4]),
        .I1(SrcBE[2]),
        .I2(SrcAE[0]),
        .I3(SrcAE[8]),
        .I4(SrcBE[3]),
        .I5(SrcBE[4]),
        .O(\q[115]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0700000000000000)) 
    \q[116]_i_1 
       (.I0(\q_reg[179]_3 ),
        .I1(\c/PCSrcE2__5 ),
        .I2(\q_reg[10]_0 ),
        .I3(\q_reg[12]_0 ),
        .I4(rd21__3),
        .I5(rd20[0]),
        .O(p_0_in[116]));
  LUT6 #(
    .INIT(64'hFEEEEEEEAAAAAAAA)) 
    \q[116]_i_1__0 
       (.I0(\q[116]_i_2_n_0 ),
        .I1(\q[116]_i_3_n_0 ),
        .I2(\q[116]_i_4_n_0 ),
        .I3(\q_reg[135]_0 ),
        .I4(\q_reg[4]_1 [2]),
        .I5(\q_reg[135]_1 ),
        .O(D[116]));
  LUT6 #(
    .INIT(64'hFFF8F88888888888)) 
    \q[116]_i_2 
       (.I0(data8[12]),
        .I1(\q_reg[123]_0 ),
        .I2(SrcBE[12]),
        .I3(SrcAE[12]),
        .I4(\q_reg[135]_0 ),
        .I5(\q_reg[123]_1 ),
        .O(\q[116]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00060FFF00060000)) 
    \q[116]_i_3 
       (.I0(SrcBE[12]),
        .I1(SrcAE[12]),
        .I2(\q_reg[4]_1 [2]),
        .I3(\q_reg[4]_1 [1]),
        .I4(\q_reg[4]_1 [3]),
        .I5(sum[12]),
        .O(\q[116]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \q[116]_i_4 
       (.I0(\q[117]_i_5_n_0 ),
        .I1(\q[116]_i_5_n_0 ),
        .I2(\q_reg[4]_1 [1]),
        .I3(i__carry__2_i_12_n_0),
        .I4(\q_reg[37]_0 ),
        .I5(i__carry__1_i_9_n_0),
        .O(\q[116]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \q[116]_i_5 
       (.I0(\q[116]_i_6_n_0 ),
        .I1(SrcBE[1]),
        .I2(\q[118]_i_6_n_0 ),
        .O(\q[116]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h000000003030BB88)) 
    \q[116]_i_6 
       (.I0(SrcAE[5]),
        .I1(SrcBE[2]),
        .I2(SrcAE[1]),
        .I3(SrcAE[9]),
        .I4(SrcBE[3]),
        .I5(SrcBE[4]),
        .O(\q[116]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0700000000000000)) 
    \q[117]_i_1 
       (.I0(\q_reg[179]_3 ),
        .I1(\c/PCSrcE2__5 ),
        .I2(\q_reg[10]_0 ),
        .I3(\q_reg[12]_0 ),
        .I4(rd21__3),
        .I5(rd20[1]),
        .O(p_0_in[117]));
  LUT6 #(
    .INIT(64'hFEEEEEEEAAAAAAAA)) 
    \q[117]_i_1__0 
       (.I0(\q[117]_i_2_n_0 ),
        .I1(\q[117]_i_3_n_0 ),
        .I2(\q[117]_i_4_n_0 ),
        .I3(\q_reg[135]_0 ),
        .I4(\q_reg[4]_1 [2]),
        .I5(\q_reg[135]_1 ),
        .O(D[117]));
  LUT6 #(
    .INIT(64'hFFF8F88888888888)) 
    \q[117]_i_2 
       (.I0(data8[13]),
        .I1(\q_reg[123]_0 ),
        .I2(SrcBE[13]),
        .I3(SrcAE[13]),
        .I4(\q_reg[135]_0 ),
        .I5(\q_reg[123]_1 ),
        .O(\q[117]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00060FFF00060000)) 
    \q[117]_i_3 
       (.I0(SrcBE[13]),
        .I1(SrcAE[13]),
        .I2(\q_reg[4]_1 [2]),
        .I3(\q_reg[4]_1 [1]),
        .I4(\q_reg[4]_1 [3]),
        .I5(sum[13]),
        .O(\q[117]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \q[117]_i_4 
       (.I0(\q[118]_i_5_n_0 ),
        .I1(\q[117]_i_5_n_0 ),
        .I2(\q_reg[4]_1 [1]),
        .I3(i__carry__2_i_11_n_0),
        .I4(\q_reg[37]_0 ),
        .I5(i__carry__2_i_12_n_0),
        .O(\q[117]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \q[117]_i_5 
       (.I0(\q[117]_i_6_n_0 ),
        .I1(SrcBE[1]),
        .I2(\q[119]_i_6_n_0 ),
        .I3(SrcBE[2]),
        .I4(\q[123]_i_6_n_0 ),
        .O(\q[117]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h000000003030BB88)) 
    \q[117]_i_6 
       (.I0(SrcAE[6]),
        .I1(SrcBE[2]),
        .I2(SrcAE[2]),
        .I3(SrcAE[10]),
        .I4(SrcBE[3]),
        .I5(SrcBE[4]),
        .O(\q[117]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0700000000000000)) 
    \q[118]_i_1 
       (.I0(\q_reg[179]_3 ),
        .I1(\c/PCSrcE2__5 ),
        .I2(\q_reg[10]_0 ),
        .I3(\q_reg[12]_0 ),
        .I4(rd21__3),
        .I5(rd20[2]),
        .O(p_0_in[118]));
  LUT6 #(
    .INIT(64'hFEEEEEEEAAAAAAAA)) 
    \q[118]_i_1__0 
       (.I0(\q[118]_i_2_n_0 ),
        .I1(\q[118]_i_3_n_0 ),
        .I2(\q[118]_i_4_n_0 ),
        .I3(\q_reg[135]_0 ),
        .I4(\q_reg[4]_1 [2]),
        .I5(\q_reg[135]_1 ),
        .O(D[118]));
  LUT6 #(
    .INIT(64'hFFF8F88888888888)) 
    \q[118]_i_2 
       (.I0(data8[14]),
        .I1(\q_reg[123]_0 ),
        .I2(SrcBE[14]),
        .I3(SrcAE[14]),
        .I4(\q_reg[135]_0 ),
        .I5(\q_reg[123]_1 ),
        .O(\q[118]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00060FFF00060000)) 
    \q[118]_i_3 
       (.I0(SrcBE[14]),
        .I1(SrcAE[14]),
        .I2(\q_reg[4]_1 [2]),
        .I3(\q_reg[4]_1 [1]),
        .I4(\q_reg[4]_1 [3]),
        .I5(sum[14]),
        .O(\q[118]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \q[118]_i_4 
       (.I0(\q[119]_i_5_n_0 ),
        .I1(\q[118]_i_5_n_0 ),
        .I2(\q_reg[4]_1 [1]),
        .I3(i__carry__2_i_10_n_0),
        .I4(\q_reg[37]_0 ),
        .I5(i__carry__2_i_11_n_0),
        .O(\q[118]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \q[118]_i_5 
       (.I0(\q[118]_i_6_n_0 ),
        .I1(SrcBE[1]),
        .I2(\q[120]_i_6_n_0 ),
        .I3(SrcBE[2]),
        .I4(\q[124]_i_6_n_0 ),
        .O(\q[118]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h000000003030BB88)) 
    \q[118]_i_6 
       (.I0(SrcAE[7]),
        .I1(SrcBE[2]),
        .I2(SrcAE[3]),
        .I3(SrcAE[11]),
        .I4(SrcBE[3]),
        .I5(SrcBE[4]),
        .O(\q[118]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0700000000000000)) 
    \q[119]_i_1 
       (.I0(\q_reg[179]_3 ),
        .I1(\c/PCSrcE2__5 ),
        .I2(\q_reg[10]_0 ),
        .I3(\q_reg[12]_0 ),
        .I4(rd21__3),
        .I5(rd20[3]),
        .O(p_0_in[119]));
  LUT6 #(
    .INIT(64'hFEEEEEEEAAAAAAAA)) 
    \q[119]_i_1__0 
       (.I0(\q[119]_i_2_n_0 ),
        .I1(\q[119]_i_3_n_0 ),
        .I2(\q[119]_i_4_n_0 ),
        .I3(\q_reg[135]_0 ),
        .I4(\q_reg[4]_1 [2]),
        .I5(\q_reg[135]_1 ),
        .O(D[119]));
  LUT6 #(
    .INIT(64'hFFF8F88888888888)) 
    \q[119]_i_2 
       (.I0(data8[15]),
        .I1(\q_reg[123]_0 ),
        .I2(SrcBE[15]),
        .I3(SrcAE[15]),
        .I4(\q_reg[135]_0 ),
        .I5(\q_reg[123]_1 ),
        .O(\q[119]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00060FFF00060000)) 
    \q[119]_i_3 
       (.I0(SrcBE[15]),
        .I1(SrcAE[15]),
        .I2(\q_reg[4]_1 [2]),
        .I3(\q_reg[4]_1 [1]),
        .I4(\q_reg[4]_1 [3]),
        .I5(sum[15]),
        .O(\q[119]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \q[119]_i_4 
       (.I0(\q[120]_i_5_n_0 ),
        .I1(\q[119]_i_5_n_0 ),
        .I2(\q_reg[4]_1 [1]),
        .I3(i__carry__2_i_9_n_0),
        .I4(\q_reg[37]_0 ),
        .I5(i__carry__2_i_10_n_0),
        .O(\q[119]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[119]_i_5 
       (.I0(\q[119]_i_6_n_0 ),
        .I1(\q[123]_i_6_n_0 ),
        .I2(SrcBE[1]),
        .I3(\q[121]_i_6_n_0 ),
        .I4(SrcBE[2]),
        .I5(\q[125]_i_6_n_0 ),
        .O(\q[119]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'h00AC)) 
    \q[119]_i_6 
       (.I0(SrcAE[0]),
        .I1(SrcAE[8]),
        .I2(SrcBE[3]),
        .I3(SrcBE[4]),
        .O(\q[119]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0800080800080808)) 
    \q[11]_i_1 
       (.I0(controls__21),
        .I1(\q_reg[12]_0 ),
        .I2(\q_reg[4]_1 [6]),
        .I3(\c/PCSrcE2__5 ),
        .I4(\q_reg[4]_1 [5]),
        .I5(D[0]),
        .O(\q_reg[65]_0 [6]));
  LUT6 #(
    .INIT(64'h0800080800080808)) 
    \q[11]_i_1__0 
       (.I0(\q_reg[68]_2 [4]),
        .I1(\q_reg[12]_0 ),
        .I2(\q_reg[4]_1 [6]),
        .I3(\c/PCSrcE2__5 ),
        .I4(\q_reg[4]_1 [5]),
        .I5(D[0]),
        .O(p_0_in[11]));
  LUT6 #(
    .INIT(64'hF0CCF0CCF0CCAAAA)) 
    \q[11]_i_1__1 
       (.I0(PCPlus4F[8]),
        .I1(D[115]),
        .I2(BranchTargetE[11]),
        .I3(ImmSrcb1E),
        .I4(\q_reg[0]_0 ),
        .I5(\q_reg[10]_0 ),
        .O(\q_reg[3]_0 [11]));
  LUT5 #(
    .INIT(32'h00008A2A)) 
    \q[11]_i_1__2 
       (.I0(PCPlus4F[8]),
        .I1(D[0]),
        .I2(\q_reg[4]_1 [5]),
        .I3(\c/PCSrcE2__5 ),
        .I4(\q_reg[4]_1 [6]),
        .O(\q_reg[0]_1 [9]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \q[11]_i_1__3 
       (.I0(Q[8]),
        .I1(opb5E),
        .I2(BranchTargetE[8]),
        .O(D[11]));
  LUT6 #(
    .INIT(64'h0700000000000000)) 
    \q[120]_i_1 
       (.I0(\q_reg[179]_3 ),
        .I1(\c/PCSrcE2__5 ),
        .I2(\q_reg[10]_0 ),
        .I3(\q_reg[12]_0 ),
        .I4(rd21__3),
        .I5(rd20[4]),
        .O(p_0_in[120]));
  LUT6 #(
    .INIT(64'hFEEEEEEEAAAAAAAA)) 
    \q[120]_i_1__0 
       (.I0(\q[120]_i_2_n_0 ),
        .I1(\q[120]_i_3_n_0 ),
        .I2(\q[120]_i_4_n_0 ),
        .I3(\q_reg[135]_0 ),
        .I4(\q_reg[4]_1 [2]),
        .I5(\q_reg[135]_1 ),
        .O(D[120]));
  LUT6 #(
    .INIT(64'hFFF8F88888888888)) 
    \q[120]_i_2 
       (.I0(data8[16]),
        .I1(\q_reg[123]_0 ),
        .I2(SrcBE[16]),
        .I3(SrcAE[16]),
        .I4(\q_reg[135]_0 ),
        .I5(\q_reg[123]_1 ),
        .O(\q[120]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00060FFF00060000)) 
    \q[120]_i_3 
       (.I0(SrcBE[16]),
        .I1(SrcAE[16]),
        .I2(\q_reg[4]_1 [2]),
        .I3(\q_reg[4]_1 [1]),
        .I4(\q_reg[4]_1 [3]),
        .I5(sum[16]),
        .O(\q[120]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \q[120]_i_4 
       (.I0(\q[121]_i_5_n_0 ),
        .I1(\q[120]_i_5_n_0 ),
        .I2(\q_reg[4]_1 [1]),
        .I3(i__carry__3_i_15_n_0),
        .I4(\q_reg[37]_0 ),
        .I5(i__carry__2_i_9_n_0),
        .O(\q[120]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[120]_i_5 
       (.I0(\q[120]_i_6_n_0 ),
        .I1(\q[124]_i_6_n_0 ),
        .I2(SrcBE[1]),
        .I3(\q[122]_i_6_n_0 ),
        .I4(SrcBE[2]),
        .I5(\q[126]_i_6_n_0 ),
        .O(\q[120]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'h00AC)) 
    \q[120]_i_6 
       (.I0(SrcAE[1]),
        .I1(SrcAE[9]),
        .I2(SrcBE[3]),
        .I3(SrcBE[4]),
        .O(\q[120]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0700000000000000)) 
    \q[121]_i_1 
       (.I0(\q_reg[179]_3 ),
        .I1(\c/PCSrcE2__5 ),
        .I2(\q_reg[10]_0 ),
        .I3(\q_reg[12]_0 ),
        .I4(rd21__3),
        .I5(rd20[5]),
        .O(p_0_in[121]));
  LUT6 #(
    .INIT(64'hFEEEEEEEAAAAAAAA)) 
    \q[121]_i_1__0 
       (.I0(\q[121]_i_2_n_0 ),
        .I1(\q[121]_i_3_n_0 ),
        .I2(\q[121]_i_4_n_0 ),
        .I3(\q_reg[135]_0 ),
        .I4(\q_reg[4]_1 [2]),
        .I5(\q_reg[135]_1 ),
        .O(D[121]));
  LUT6 #(
    .INIT(64'hFFF8F88888888888)) 
    \q[121]_i_2 
       (.I0(data8[17]),
        .I1(\q_reg[123]_0 ),
        .I2(SrcBE[17]),
        .I3(SrcAE[17]),
        .I4(\q_reg[135]_0 ),
        .I5(\q_reg[123]_1 ),
        .O(\q[121]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00060FFF00060000)) 
    \q[121]_i_3 
       (.I0(SrcBE[17]),
        .I1(SrcAE[17]),
        .I2(\q_reg[4]_1 [2]),
        .I3(\q_reg[4]_1 [1]),
        .I4(\q_reg[4]_1 [3]),
        .I5(sum[17]),
        .O(\q[121]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \q[121]_i_4 
       (.I0(\q[122]_i_5_n_0 ),
        .I1(\q[121]_i_5_n_0 ),
        .I2(\q_reg[4]_1 [1]),
        .I3(i__carry__3_i_14_n_0),
        .I4(\q_reg[37]_0 ),
        .I5(i__carry__3_i_15_n_0),
        .O(\q[121]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[121]_i_5 
       (.I0(\q[121]_i_6_n_0 ),
        .I1(\q[125]_i_6_n_0 ),
        .I2(SrcBE[1]),
        .I3(\q[123]_i_6_n_0 ),
        .I4(SrcBE[2]),
        .I5(\q[127]_i_6_n_0 ),
        .O(\q[121]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'h00AC)) 
    \q[121]_i_6 
       (.I0(SrcAE[2]),
        .I1(SrcAE[10]),
        .I2(SrcBE[3]),
        .I3(SrcBE[4]),
        .O(\q[121]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0700000000000000)) 
    \q[122]_i_1 
       (.I0(\q_reg[179]_3 ),
        .I1(\c/PCSrcE2__5 ),
        .I2(\q_reg[10]_0 ),
        .I3(\q_reg[12]_0 ),
        .I4(rd21__3),
        .I5(rd20[6]),
        .O(p_0_in[122]));
  LUT6 #(
    .INIT(64'hFEEEEEEEAAAAAAAA)) 
    \q[122]_i_1__0 
       (.I0(\q[122]_i_2_n_0 ),
        .I1(\q[122]_i_3_n_0 ),
        .I2(\q[122]_i_4_n_0 ),
        .I3(\q_reg[135]_0 ),
        .I4(\q_reg[4]_1 [2]),
        .I5(\q_reg[135]_1 ),
        .O(D[122]));
  LUT6 #(
    .INIT(64'hFFF8F88888888888)) 
    \q[122]_i_2 
       (.I0(data8[18]),
        .I1(\q_reg[123]_0 ),
        .I2(SrcBE[18]),
        .I3(SrcAE[18]),
        .I4(\q_reg[135]_0 ),
        .I5(\q_reg[123]_1 ),
        .O(\q[122]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00060FFF00060000)) 
    \q[122]_i_3 
       (.I0(SrcBE[18]),
        .I1(SrcAE[18]),
        .I2(\q_reg[4]_1 [2]),
        .I3(\q_reg[4]_1 [1]),
        .I4(\q_reg[4]_1 [3]),
        .I5(sum[18]),
        .O(\q[122]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \q[122]_i_4 
       (.I0(\q[123]_i_5_n_0 ),
        .I1(\q[122]_i_5_n_0 ),
        .I2(\q_reg[4]_1 [1]),
        .I3(i__carry__3_i_16_n_0),
        .I4(\q_reg[37]_0 ),
        .I5(i__carry__3_i_14_n_0),
        .O(\q[122]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[122]_i_5 
       (.I0(\q[122]_i_6_n_0 ),
        .I1(\q[126]_i_6_n_0 ),
        .I2(SrcBE[1]),
        .I3(\q[124]_i_6_n_0 ),
        .I4(SrcBE[2]),
        .I5(\q[128]_i_6_n_0 ),
        .O(\q[122]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'h00AC)) 
    \q[122]_i_6 
       (.I0(SrcAE[3]),
        .I1(SrcAE[11]),
        .I2(SrcBE[3]),
        .I3(SrcBE[4]),
        .O(\q[122]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0700000000000000)) 
    \q[123]_i_1 
       (.I0(\q_reg[179]_3 ),
        .I1(\c/PCSrcE2__5 ),
        .I2(\q_reg[10]_0 ),
        .I3(\q_reg[12]_0 ),
        .I4(rd21__3),
        .I5(rd20[7]),
        .O(p_0_in[123]));
  LUT6 #(
    .INIT(64'hFEEEEEEEAAAAAAAA)) 
    \q[123]_i_1__0 
       (.I0(\q[123]_i_2_n_0 ),
        .I1(\q[123]_i_3_n_0 ),
        .I2(\q[123]_i_4_n_0 ),
        .I3(\q_reg[135]_0 ),
        .I4(\q_reg[4]_1 [2]),
        .I5(\q_reg[135]_1 ),
        .O(D[123]));
  LUT6 #(
    .INIT(64'hFFF8F88888888888)) 
    \q[123]_i_2 
       (.I0(data8[19]),
        .I1(\q_reg[123]_0 ),
        .I2(SrcBE[19]),
        .I3(SrcAE[19]),
        .I4(\q_reg[135]_0 ),
        .I5(\q_reg[123]_1 ),
        .O(\q[123]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00060FFF00060000)) 
    \q[123]_i_3 
       (.I0(SrcBE[19]),
        .I1(SrcAE[19]),
        .I2(\q_reg[4]_1 [2]),
        .I3(\q_reg[4]_1 [1]),
        .I4(\q_reg[4]_1 [3]),
        .I5(sum[19]),
        .O(\q[123]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \q[123]_i_4 
       (.I0(\q[124]_i_5_n_0 ),
        .I1(\q[123]_i_5_n_0 ),
        .I2(\q_reg[4]_1 [1]),
        .I3(i__carry__3_i_17_n_0),
        .I4(\q_reg[37]_0 ),
        .I5(i__carry__3_i_16_n_0),
        .O(\q[123]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[123]_i_5 
       (.I0(\q[123]_i_6_n_0 ),
        .I1(\q[127]_i_6_n_0 ),
        .I2(SrcBE[1]),
        .I3(\q[125]_i_6_n_0 ),
        .I4(SrcBE[2]),
        .I5(\q[129]_i_6_n_0 ),
        .O(\q[123]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'h00AC)) 
    \q[123]_i_6 
       (.I0(SrcAE[4]),
        .I1(SrcAE[12]),
        .I2(SrcBE[3]),
        .I3(SrcBE[4]),
        .O(\q[123]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0700000000000000)) 
    \q[124]_i_1 
       (.I0(\q_reg[179]_3 ),
        .I1(\c/PCSrcE2__5 ),
        .I2(\q_reg[10]_0 ),
        .I3(\q_reg[12]_0 ),
        .I4(rd21__3),
        .I5(rd20[8]),
        .O(p_0_in[124]));
  LUT6 #(
    .INIT(64'h00060FFF00060000)) 
    \q[124]_i_3 
       (.I0(\q_reg[57]_0 ),
        .I1(DI[0]),
        .I2(\q_reg[4]_1 [2]),
        .I3(\q_reg[4]_1 [1]),
        .I4(\q_reg[4]_1 [3]),
        .I5(sum[20]),
        .O(\q_reg[6]_0 ));
  LUT6 #(
    .INIT(64'h8A808A808A8A8080)) 
    \q[124]_i_4 
       (.I0(\q_reg[133]_0 ),
        .I1(data6[20]),
        .I2(\q_reg[4]_1 [1]),
        .I3(\q[124]_i_5_n_0 ),
        .I4(\q[125]_i_5_n_0 ),
        .I5(\q_reg[37]_0 ),
        .O(\q_reg[5]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[124]_i_5 
       (.I0(\q[124]_i_6_n_0 ),
        .I1(\q[128]_i_6_n_0 ),
        .I2(SrcBE[1]),
        .I3(\q[126]_i_6_n_0 ),
        .I4(SrcBE[2]),
        .I5(\q[130]_i_6_n_0 ),
        .O(\q[124]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'h00AC)) 
    \q[124]_i_6 
       (.I0(SrcAE[5]),
        .I1(SrcAE[13]),
        .I2(SrcBE[3]),
        .I3(SrcBE[4]),
        .O(\q[124]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0700000000000000)) 
    \q[125]_i_1 
       (.I0(\q_reg[179]_3 ),
        .I1(\c/PCSrcE2__5 ),
        .I2(\q_reg[10]_0 ),
        .I3(\q_reg[12]_0 ),
        .I4(rd21__3),
        .I5(rd20[9]),
        .O(p_0_in[125]));
  LUT6 #(
    .INIT(64'h00060FFF00060000)) 
    \q[125]_i_3 
       (.I0(\q_reg[58]_0 ),
        .I1(DI[1]),
        .I2(\q_reg[4]_1 [2]),
        .I3(\q_reg[4]_1 [1]),
        .I4(\q_reg[4]_1 [3]),
        .I5(sum[21]),
        .O(\q_reg[6]_6 ));
  LUT6 #(
    .INIT(64'h8A808A808A8A8080)) 
    \q[125]_i_4 
       (.I0(\q_reg[133]_0 ),
        .I1(data6[21]),
        .I2(\q_reg[4]_1 [1]),
        .I3(\q[125]_i_5_n_0 ),
        .I4(\q[126]_i_5_n_0 ),
        .I5(\q_reg[37]_0 ),
        .O(\q_reg[5]_1 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[125]_i_5 
       (.I0(\q[125]_i_6_n_0 ),
        .I1(\q[129]_i_6_n_0 ),
        .I2(SrcBE[1]),
        .I3(\q[127]_i_6_n_0 ),
        .I4(SrcBE[2]),
        .I5(\q[131]_i_6_n_0 ),
        .O(\q[125]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'h00AC)) 
    \q[125]_i_6 
       (.I0(SrcAE[6]),
        .I1(SrcAE[14]),
        .I2(SrcBE[3]),
        .I3(SrcBE[4]),
        .O(\q[125]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0700000000000000)) 
    \q[126]_i_1 
       (.I0(\q_reg[179]_3 ),
        .I1(\c/PCSrcE2__5 ),
        .I2(\q_reg[10]_0 ),
        .I3(\q_reg[12]_0 ),
        .I4(rd21__3),
        .I5(rd20[10]),
        .O(p_0_in[126]));
  LUT6 #(
    .INIT(64'h00060FFF00060000)) 
    \q[126]_i_3 
       (.I0(\q_reg[59]_1 ),
        .I1(DI[2]),
        .I2(\q_reg[4]_1 [2]),
        .I3(\q_reg[4]_1 [1]),
        .I4(\q_reg[4]_1 [3]),
        .I5(sum[22]),
        .O(\q_reg[6]_1 ));
  LUT6 #(
    .INIT(64'h8A808A808A8A8080)) 
    \q[126]_i_4 
       (.I0(\q_reg[133]_0 ),
        .I1(data6[22]),
        .I2(\q_reg[4]_1 [1]),
        .I3(\q[126]_i_5_n_0 ),
        .I4(\q[127]_i_5_n_0 ),
        .I5(\q_reg[37]_0 ),
        .O(\q_reg[5]_2 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[126]_i_5 
       (.I0(\q[126]_i_6_n_0 ),
        .I1(\q[130]_i_6_n_0 ),
        .I2(SrcBE[1]),
        .I3(\q[128]_i_6_n_0 ),
        .I4(SrcBE[2]),
        .I5(\q[132]_i_6_n_0 ),
        .O(\q[126]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'h00AC)) 
    \q[126]_i_6 
       (.I0(SrcAE[7]),
        .I1(SrcAE[15]),
        .I2(SrcBE[3]),
        .I3(SrcBE[4]),
        .O(\q[126]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0700000000000000)) 
    \q[127]_i_1 
       (.I0(\q_reg[179]_3 ),
        .I1(\c/PCSrcE2__5 ),
        .I2(\q_reg[10]_0 ),
        .I3(\q_reg[12]_0 ),
        .I4(rd21__3),
        .I5(rd20[11]),
        .O(p_0_in[127]));
  LUT6 #(
    .INIT(64'h00060FFF00060000)) 
    \q[127]_i_3 
       (.I0(\q_reg[60]_0 ),
        .I1(DI[3]),
        .I2(\q_reg[4]_1 [2]),
        .I3(\q_reg[4]_1 [1]),
        .I4(\q_reg[4]_1 [3]),
        .I5(sum[23]),
        .O(\q_reg[6]_7 ));
  LUT6 #(
    .INIT(64'h8A808A808A8A8080)) 
    \q[127]_i_4 
       (.I0(\q_reg[133]_0 ),
        .I1(data6[23]),
        .I2(\q_reg[4]_1 [1]),
        .I3(\q[127]_i_5_n_0 ),
        .I4(\q[128]_i_5_n_0 ),
        .I5(\q_reg[37]_0 ),
        .O(\q_reg[5]_3 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[127]_i_5 
       (.I0(\q[127]_i_6_n_0 ),
        .I1(\q[131]_i_6_n_0 ),
        .I2(SrcBE[1]),
        .I3(\q[129]_i_6_n_0 ),
        .I4(SrcBE[2]),
        .I5(\q[133]_i_6_n_0 ),
        .O(\q[127]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \q[127]_i_6 
       (.I0(SrcAE[8]),
        .I1(SrcBE[3]),
        .I2(SrcAE[0]),
        .I3(SrcBE[4]),
        .I4(SrcAE[16]),
        .O(\q[127]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0700000000000000)) 
    \q[128]_i_1 
       (.I0(\q_reg[179]_3 ),
        .I1(\c/PCSrcE2__5 ),
        .I2(\q_reg[10]_0 ),
        .I3(\q_reg[12]_0 ),
        .I4(rd21__3),
        .I5(rd20[12]),
        .O(p_0_in[128]));
  LUT6 #(
    .INIT(64'h00060FFF00060000)) 
    \q[128]_i_3 
       (.I0(\q_reg[61]_0 ),
        .I1(\q_reg[175]_0 [0]),
        .I2(\q_reg[4]_1 [2]),
        .I3(\q_reg[4]_1 [1]),
        .I4(\q_reg[4]_1 [3]),
        .I5(sum[24]),
        .O(\q_reg[6]_2 ));
  LUT6 #(
    .INIT(64'h8A808A808A8A8080)) 
    \q[128]_i_4 
       (.I0(\q_reg[133]_0 ),
        .I1(data6[24]),
        .I2(\q_reg[4]_1 [1]),
        .I3(\q[128]_i_5_n_0 ),
        .I4(\q[129]_i_5_n_0 ),
        .I5(\q_reg[37]_0 ),
        .O(\q_reg[5]_4 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[128]_i_5 
       (.I0(\q[128]_i_6_n_0 ),
        .I1(\q[132]_i_6_n_0 ),
        .I2(SrcBE[1]),
        .I3(\q[130]_i_6_n_0 ),
        .I4(SrcBE[2]),
        .I5(\q[134]_i_8_n_0 ),
        .O(\q[128]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \q[128]_i_6 
       (.I0(SrcAE[9]),
        .I1(SrcBE[3]),
        .I2(SrcAE[1]),
        .I3(SrcBE[4]),
        .I4(SrcAE[17]),
        .O(\q[128]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0700000000000000)) 
    \q[129]_i_1 
       (.I0(\q_reg[179]_3 ),
        .I1(\c/PCSrcE2__5 ),
        .I2(\q_reg[10]_0 ),
        .I3(\q_reg[12]_0 ),
        .I4(rd21__3),
        .I5(rd20[13]),
        .O(p_0_in[129]));
  LUT6 #(
    .INIT(64'h00060FFF00060000)) 
    \q[129]_i_3 
       (.I0(\q_reg[62]_0 ),
        .I1(\q_reg[175]_0 [1]),
        .I2(\q_reg[4]_1 [2]),
        .I3(\q_reg[4]_1 [1]),
        .I4(\q_reg[4]_1 [3]),
        .I5(sum[25]),
        .O(\q_reg[6]_8 ));
  LUT6 #(
    .INIT(64'h8A808A808A8A8080)) 
    \q[129]_i_4 
       (.I0(\q_reg[133]_0 ),
        .I1(data6[25]),
        .I2(\q_reg[4]_1 [1]),
        .I3(\q[129]_i_5_n_0 ),
        .I4(\q[130]_i_5_n_0 ),
        .I5(\q_reg[37]_0 ),
        .O(\q_reg[5]_5 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[129]_i_5 
       (.I0(\q[129]_i_6_n_0 ),
        .I1(\q[133]_i_6_n_0 ),
        .I2(SrcBE[1]),
        .I3(\q[131]_i_6_n_0 ),
        .I4(SrcBE[2]),
        .I5(\q[135]_i_14_n_0 ),
        .O(\q[129]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \q[129]_i_6 
       (.I0(SrcAE[10]),
        .I1(SrcBE[3]),
        .I2(SrcAE[2]),
        .I3(SrcBE[4]),
        .I4(SrcAE[18]),
        .O(\q[129]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0800080800080808)) 
    \q[12]_i_1__0 
       (.I0(\q_reg[68]_2 [5]),
        .I1(\q_reg[12]_0 ),
        .I2(\q_reg[4]_1 [6]),
        .I3(\c/PCSrcE2__5 ),
        .I4(\q_reg[4]_1 [5]),
        .I5(D[0]),
        .O(p_0_in[12]));
  LUT6 #(
    .INIT(64'hF0CCF0CCF0CCAAAA)) 
    \q[12]_i_1__1 
       (.I0(PCPlus4F[9]),
        .I1(D[116]),
        .I2(BranchTargetE[12]),
        .I3(ImmSrcb1E),
        .I4(\q_reg[0]_0 ),
        .I5(\q_reg[10]_0 ),
        .O(\q_reg[3]_0 [12]));
  LUT5 #(
    .INIT(32'h00008A2A)) 
    \q[12]_i_1__2 
       (.I0(PCPlus4F[9]),
        .I1(D[0]),
        .I2(\q_reg[4]_1 [5]),
        .I3(\c/PCSrcE2__5 ),
        .I4(\q_reg[4]_1 [6]),
        .O(\q_reg[0]_1 [10]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \q[12]_i_1__3 
       (.I0(Q[9]),
        .I1(opb5E),
        .I2(BranchTargetE[9]),
        .O(D[12]));
  LUT6 #(
    .INIT(64'h0700000000000000)) 
    \q[130]_i_1 
       (.I0(\q_reg[179]_3 ),
        .I1(\c/PCSrcE2__5 ),
        .I2(\q_reg[10]_0 ),
        .I3(\q_reg[12]_0 ),
        .I4(rd21__3),
        .I5(rd20[14]),
        .O(p_0_in[130]));
  LUT6 #(
    .INIT(64'h00060FFF00060000)) 
    \q[130]_i_3 
       (.I0(\q_reg[63]_0 ),
        .I1(\q_reg[175]_0 [2]),
        .I2(\q_reg[4]_1 [2]),
        .I3(\q_reg[4]_1 [1]),
        .I4(\q_reg[4]_1 [3]),
        .I5(sum[26]),
        .O(\q_reg[6]_3 ));
  LUT6 #(
    .INIT(64'h8A808A808A8A8080)) 
    \q[130]_i_4 
       (.I0(\q_reg[133]_0 ),
        .I1(data6[26]),
        .I2(\q_reg[4]_1 [1]),
        .I3(\q[130]_i_5_n_0 ),
        .I4(\q[131]_i_5_n_0 ),
        .I5(\q_reg[37]_0 ),
        .O(\q_reg[5]_6 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[130]_i_5 
       (.I0(\q[130]_i_6_n_0 ),
        .I1(\q[134]_i_8_n_0 ),
        .I2(SrcBE[1]),
        .I3(\q[132]_i_6_n_0 ),
        .I4(SrcBE[2]),
        .I5(\q[135]_i_10_n_0 ),
        .O(\q[130]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \q[130]_i_6 
       (.I0(SrcAE[11]),
        .I1(SrcBE[3]),
        .I2(SrcAE[3]),
        .I3(SrcBE[4]),
        .I4(SrcAE[19]),
        .O(\q[130]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0700000000000000)) 
    \q[131]_i_1 
       (.I0(\q_reg[179]_3 ),
        .I1(\c/PCSrcE2__5 ),
        .I2(\q_reg[10]_0 ),
        .I3(\q_reg[12]_0 ),
        .I4(rd21__3),
        .I5(rd20[15]),
        .O(p_0_in[131]));
  LUT6 #(
    .INIT(64'h00060FFF00060000)) 
    \q[131]_i_3 
       (.I0(\q_reg[64]_0 ),
        .I1(\q_reg[175]_0 [3]),
        .I2(\q_reg[4]_1 [2]),
        .I3(\q_reg[4]_1 [1]),
        .I4(\q_reg[4]_1 [3]),
        .I5(sum[27]),
        .O(\q_reg[6]_9 ));
  LUT6 #(
    .INIT(64'h8A808A808A8A8080)) 
    \q[131]_i_4 
       (.I0(\q_reg[133]_0 ),
        .I1(data6[27]),
        .I2(\q_reg[4]_1 [1]),
        .I3(\q[131]_i_5_n_0 ),
        .I4(\q[132]_i_5_n_0 ),
        .I5(\q_reg[37]_0 ),
        .O(\q_reg[5]_7 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[131]_i_5 
       (.I0(\q[131]_i_6_n_0 ),
        .I1(\q[135]_i_14_n_0 ),
        .I2(SrcBE[1]),
        .I3(\q[133]_i_6_n_0 ),
        .I4(SrcBE[2]),
        .I5(\q[135]_i_17_n_0 ),
        .O(\q[131]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \q[131]_i_6 
       (.I0(SrcAE[12]),
        .I1(SrcBE[3]),
        .I2(SrcAE[4]),
        .I3(SrcBE[4]),
        .I4(DI[0]),
        .O(\q[131]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0700000000000000)) 
    \q[132]_i_1 
       (.I0(\q_reg[179]_3 ),
        .I1(\c/PCSrcE2__5 ),
        .I2(\q_reg[10]_0 ),
        .I3(\q_reg[12]_0 ),
        .I4(rd21__3),
        .I5(rd20[16]),
        .O(p_0_in[132]));
  LUT6 #(
    .INIT(64'h00060FFF00060000)) 
    \q[132]_i_3 
       (.I0(\q_reg[65]_1 ),
        .I1(\q_reg[178]_0 [0]),
        .I2(\q_reg[4]_1 [2]),
        .I3(\q_reg[4]_1 [1]),
        .I4(\q_reg[4]_1 [3]),
        .I5(sum[28]),
        .O(\q_reg[6]_4 ));
  LUT6 #(
    .INIT(64'h8A808A808A8A8080)) 
    \q[132]_i_4 
       (.I0(\q_reg[133]_0 ),
        .I1(data6[28]),
        .I2(\q_reg[4]_1 [1]),
        .I3(\q[132]_i_5_n_0 ),
        .I4(\q[133]_i_5_n_0 ),
        .I5(\q_reg[37]_0 ),
        .O(\q_reg[5]_8 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[132]_i_5 
       (.I0(\q[132]_i_6_n_0 ),
        .I1(\q[135]_i_10_n_0 ),
        .I2(SrcBE[1]),
        .I3(\q[134]_i_8_n_0 ),
        .I4(SrcBE[2]),
        .I5(\q[135]_i_13_n_0 ),
        .O(\q[132]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \q[132]_i_6 
       (.I0(SrcAE[13]),
        .I1(SrcBE[3]),
        .I2(SrcAE[5]),
        .I3(SrcBE[4]),
        .I4(DI[1]),
        .O(\q[132]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0700000000000000)) 
    \q[133]_i_1 
       (.I0(\q_reg[179]_3 ),
        .I1(\c/PCSrcE2__5 ),
        .I2(\q_reg[10]_0 ),
        .I3(\q_reg[12]_0 ),
        .I4(rd21__3),
        .I5(rd20[17]),
        .O(p_0_in[133]));
  LUT6 #(
    .INIT(64'h00060FFF00060000)) 
    \q[133]_i_3 
       (.I0(\q_reg[66]_0 ),
        .I1(\q_reg[178]_0 [1]),
        .I2(\q_reg[4]_1 [2]),
        .I3(\q_reg[4]_1 [1]),
        .I4(\q_reg[4]_1 [3]),
        .I5(sum[29]),
        .O(\q_reg[6]_10 ));
  LUT6 #(
    .INIT(64'h8A808A808A8A8080)) 
    \q[133]_i_4 
       (.I0(\q_reg[133]_0 ),
        .I1(data6[29]),
        .I2(\q_reg[4]_1 [1]),
        .I3(\q[133]_i_5_n_0 ),
        .I4(\q[134]_i_7_n_0 ),
        .I5(\q_reg[37]_0 ),
        .O(\q_reg[5]_9 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[133]_i_5 
       (.I0(\q[133]_i_6_n_0 ),
        .I1(\q[135]_i_17_n_0 ),
        .I2(SrcBE[1]),
        .I3(\q[135]_i_14_n_0 ),
        .I4(SrcBE[2]),
        .I5(\q[135]_i_15_n_0 ),
        .O(\q[133]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \q[133]_i_6 
       (.I0(SrcAE[14]),
        .I1(SrcBE[3]),
        .I2(SrcAE[6]),
        .I3(SrcBE[4]),
        .I4(DI[2]),
        .O(\q[133]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0700000000000000)) 
    \q[134]_i_1 
       (.I0(\q_reg[179]_3 ),
        .I1(\c/PCSrcE2__5 ),
        .I2(\q_reg[10]_0 ),
        .I3(\q_reg[12]_0 ),
        .I4(rd21__3),
        .I5(rd20[18]),
        .O(p_0_in[134]));
  LUT6 #(
    .INIT(64'h00060FFF00060000)) 
    \q[134]_i_4 
       (.I0(\q_reg[67]_0 ),
        .I1(\q_reg[178]_0 [2]),
        .I2(\q_reg[4]_1 [2]),
        .I3(\q_reg[4]_1 [1]),
        .I4(\q_reg[4]_1 [3]),
        .I5(sum[30]),
        .O(\q_reg[6]_5 ));
  LUT6 #(
    .INIT(64'h8A808A808A8A8080)) 
    \q[134]_i_5 
       (.I0(\q_reg[133]_0 ),
        .I1(data6[30]),
        .I2(\q_reg[4]_1 [1]),
        .I3(\q[134]_i_7_n_0 ),
        .I4(\q[135]_i_9_n_0 ),
        .I5(\q_reg[37]_0 ),
        .O(\q_reg[5] ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \q[134]_i_7 
       (.I0(\q[134]_i_8_n_0 ),
        .I1(\q[135]_i_13_n_0 ),
        .I2(SrcBE[1]),
        .I3(\q[135]_i_10_n_0 ),
        .I4(SrcBE[2]),
        .I5(\q[135]_i_11_n_0 ),
        .O(\q[134]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \q[134]_i_8 
       (.I0(SrcAE[15]),
        .I1(SrcBE[3]),
        .I2(SrcAE[7]),
        .I3(SrcBE[4]),
        .I4(DI[3]),
        .O(\q[134]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0700000000000000)) 
    \q[135]_i_1 
       (.I0(\q_reg[179]_3 ),
        .I1(\c/PCSrcE2__5 ),
        .I2(\q_reg[10]_0 ),
        .I3(\q_reg[12]_0 ),
        .I4(rd21__3),
        .I5(rd20[19]),
        .O(p_0_in[135]));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \q[135]_i_10 
       (.I0(\q_reg[175]_0 [1]),
        .I1(SrcAE[9]),
        .I2(SrcBE[3]),
        .I3(SrcAE[1]),
        .I4(SrcBE[4]),
        .I5(SrcAE[17]),
        .O(\q[135]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \q[135]_i_11 
       (.I0(\q_reg[178]_0 [1]),
        .I1(SrcAE[13]),
        .I2(SrcBE[3]),
        .I3(SrcAE[5]),
        .I4(SrcBE[4]),
        .I5(DI[1]),
        .O(\q[135]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8B8FFCC3300)) 
    \q[135]_i_12 
       (.I0(SrcAE[7]),
        .I1(SrcBE[4]),
        .I2(DI[3]),
        .I3(\q_reg[179]_0 ),
        .I4(SrcAE[15]),
        .I5(SrcBE[3]),
        .O(\q[135]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \q[135]_i_13 
       (.I0(\q_reg[175]_0 [3]),
        .I1(SrcAE[11]),
        .I2(SrcBE[3]),
        .I3(SrcAE[3]),
        .I4(SrcBE[4]),
        .I5(SrcAE[19]),
        .O(\q[135]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \q[135]_i_14 
       (.I0(\q_reg[175]_0 [0]),
        .I1(SrcAE[8]),
        .I2(SrcBE[3]),
        .I3(SrcAE[0]),
        .I4(SrcBE[4]),
        .I5(SrcAE[16]),
        .O(\q[135]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \q[135]_i_15 
       (.I0(\q_reg[178]_0 [0]),
        .I1(SrcAE[12]),
        .I2(SrcBE[3]),
        .I3(SrcAE[4]),
        .I4(SrcBE[4]),
        .I5(DI[0]),
        .O(\q[135]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \q[135]_i_16 
       (.I0(\q_reg[178]_0 [2]),
        .I1(SrcAE[14]),
        .I2(SrcBE[3]),
        .I3(SrcAE[6]),
        .I4(SrcBE[4]),
        .I5(DI[2]),
        .O(\q[135]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \q[135]_i_17 
       (.I0(\q_reg[175]_0 [2]),
        .I1(SrcAE[10]),
        .I2(SrcBE[3]),
        .I3(SrcAE[2]),
        .I4(SrcBE[4]),
        .I5(SrcAE[18]),
        .O(\q[135]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hFEEEEEEEAAAAAAAA)) 
    \q[135]_i_1__0 
       (.I0(\q[135]_i_2_n_0 ),
        .I1(\q[135]_i_3_n_0 ),
        .I2(\q[135]_i_4_n_0 ),
        .I3(\q_reg[135]_0 ),
        .I4(\q_reg[4]_1 [2]),
        .I5(\q_reg[135]_1 ),
        .O(D[124]));
  LUT6 #(
    .INIT(64'hFFF8F88888888888)) 
    \q[135]_i_2 
       (.I0(data8[20]),
        .I1(\q_reg[123]_0 ),
        .I2(\q_reg[68]_1 ),
        .I3(\q_reg[179]_0 ),
        .I4(\q_reg[135]_0 ),
        .I5(\q_reg[123]_1 ),
        .O(\q[135]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00060FFF00060000)) 
    \q[135]_i_3 
       (.I0(\q_reg[68]_1 ),
        .I1(\q_reg[179]_0 ),
        .I2(\q_reg[4]_1 [2]),
        .I3(\q_reg[4]_1 [1]),
        .I4(\q_reg[4]_1 [3]),
        .I5(O),
        .O(\q[135]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0C0C0C0CFA0A0A0A)) 
    \q[135]_i_4 
       (.I0(\q[135]_i_8_n_0 ),
        .I1(\q[135]_i_9_n_0 ),
        .I2(\q_reg[4]_1 [1]),
        .I3(i__carry__6_i_10_n_0),
        .I4(i__carry__6_i_8_n_0),
        .I5(\q_reg[37]_0 ),
        .O(\q[135]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8B8FFCC3300)) 
    \q[135]_i_8 
       (.I0(\q[135]_i_10_n_0 ),
        .I1(SrcBE[2]),
        .I2(\q[135]_i_11_n_0 ),
        .I3(\q[135]_i_12_n_0 ),
        .I4(\q[135]_i_13_n_0 ),
        .I5(SrcBE[1]),
        .O(\q[135]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8B8FFCC3300)) 
    \q[135]_i_9 
       (.I0(\q[135]_i_14_n_0 ),
        .I1(SrcBE[2]),
        .I2(\q[135]_i_15_n_0 ),
        .I3(\q[135]_i_16_n_0 ),
        .I4(\q[135]_i_17_n_0 ),
        .I5(SrcBE[1]),
        .O(\q[135]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h0700000000000000)) 
    \q[136]_i_1 
       (.I0(\q_reg[179]_3 ),
        .I1(\c/PCSrcE2__5 ),
        .I2(\q_reg[10]_0 ),
        .I3(\q_reg[12]_0 ),
        .I4(rd21__3),
        .I5(rd20[20]),
        .O(p_0_in[136]));
  LUT6 #(
    .INIT(64'h0700000000000000)) 
    \q[137]_i_1 
       (.I0(\q_reg[179]_3 ),
        .I1(\c/PCSrcE2__5 ),
        .I2(\q_reg[10]_0 ),
        .I3(\q_reg[12]_0 ),
        .I4(rd21__3),
        .I5(rd20[21]),
        .O(p_0_in[137]));
  LUT6 #(
    .INIT(64'h0700000000000000)) 
    \q[138]_i_1 
       (.I0(\q_reg[179]_3 ),
        .I1(\c/PCSrcE2__5 ),
        .I2(\q_reg[10]_0 ),
        .I3(\q_reg[12]_0 ),
        .I4(rd21__3),
        .I5(rd20[22]),
        .O(p_0_in[138]));
  LUT6 #(
    .INIT(64'h0700000000000000)) 
    \q[139]_i_1 
       (.I0(\q_reg[179]_3 ),
        .I1(\c/PCSrcE2__5 ),
        .I2(\q_reg[10]_0 ),
        .I3(\q_reg[12]_0 ),
        .I4(rd21__3),
        .I5(rd20[23]),
        .O(p_0_in[139]));
  LUT6 #(
    .INIT(64'h0800080800080808)) 
    \q[13]_i_1 
       (.I0(\q_reg[68]_2 [63]),
        .I1(\q_reg[12]_0 ),
        .I2(\q_reg[4]_1 [6]),
        .I3(\c/PCSrcE2__5 ),
        .I4(\q_reg[4]_1 [5]),
        .I5(D[0]),
        .O(\q_reg[65]_0 [7]));
  LUT6 #(
    .INIT(64'h0800080800080808)) 
    \q[13]_i_1__0 
       (.I0(\q_reg[68]_2 [6]),
        .I1(\q_reg[12]_0 ),
        .I2(\q_reg[4]_1 [6]),
        .I3(\c/PCSrcE2__5 ),
        .I4(\q_reg[4]_1 [5]),
        .I5(D[0]),
        .O(p_0_in[13]));
  LUT6 #(
    .INIT(64'hF0CCF0CCF0CCAAAA)) 
    \q[13]_i_1__1 
       (.I0(PCPlus4F[10]),
        .I1(D[117]),
        .I2(BranchTargetE[13]),
        .I3(ImmSrcb1E),
        .I4(\q_reg[0]_0 ),
        .I5(\q_reg[10]_0 ),
        .O(\q_reg[3]_0 [13]));
  LUT5 #(
    .INIT(32'h00008A2A)) 
    \q[13]_i_1__2 
       (.I0(PCPlus4F[10]),
        .I1(D[0]),
        .I2(\q_reg[4]_1 [5]),
        .I3(\c/PCSrcE2__5 ),
        .I4(\q_reg[4]_1 [6]),
        .O(\q_reg[0]_1 [11]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \q[13]_i_1__3 
       (.I0(Q[10]),
        .I1(opb5E),
        .I2(BranchTargetE[10]),
        .O(D[13]));
  LUT6 #(
    .INIT(64'h0700000000000000)) 
    \q[140]_i_1 
       (.I0(\q_reg[179]_3 ),
        .I1(\c/PCSrcE2__5 ),
        .I2(\q_reg[10]_0 ),
        .I3(\q_reg[12]_0 ),
        .I4(rd21__3),
        .I5(rd20[24]),
        .O(p_0_in[140]));
  LUT6 #(
    .INIT(64'h0700000000000000)) 
    \q[141]_i_1 
       (.I0(\q_reg[179]_3 ),
        .I1(\c/PCSrcE2__5 ),
        .I2(\q_reg[10]_0 ),
        .I3(\q_reg[12]_0 ),
        .I4(rd21__3),
        .I5(rd20[25]),
        .O(p_0_in[141]));
  LUT6 #(
    .INIT(64'h0700000000000000)) 
    \q[142]_i_1 
       (.I0(\q_reg[179]_3 ),
        .I1(\c/PCSrcE2__5 ),
        .I2(\q_reg[10]_0 ),
        .I3(\q_reg[12]_0 ),
        .I4(rd21__3),
        .I5(rd20[26]),
        .O(p_0_in[142]));
  LUT6 #(
    .INIT(64'h0700000000000000)) 
    \q[143]_i_1 
       (.I0(\q_reg[179]_3 ),
        .I1(\c/PCSrcE2__5 ),
        .I2(\q_reg[10]_0 ),
        .I3(\q_reg[12]_0 ),
        .I4(rd21__3),
        .I5(rd20[27]),
        .O(p_0_in[143]));
  LUT6 #(
    .INIT(64'h0700000000000000)) 
    \q[144]_i_1 
       (.I0(\q_reg[179]_3 ),
        .I1(\c/PCSrcE2__5 ),
        .I2(\q_reg[10]_0 ),
        .I3(\q_reg[12]_0 ),
        .I4(rd21__3),
        .I5(rd20[28]),
        .O(p_0_in[144]));
  LUT6 #(
    .INIT(64'h0700000000000000)) 
    \q[145]_i_1 
       (.I0(\q_reg[179]_3 ),
        .I1(\c/PCSrcE2__5 ),
        .I2(\q_reg[10]_0 ),
        .I3(\q_reg[12]_0 ),
        .I4(rd21__3),
        .I5(rd20[29]),
        .O(p_0_in[145]));
  LUT6 #(
    .INIT(64'h0700000000000000)) 
    \q[146]_i_1 
       (.I0(\q_reg[179]_3 ),
        .I1(\c/PCSrcE2__5 ),
        .I2(\q_reg[10]_0 ),
        .I3(\q_reg[12]_0 ),
        .I4(rd21__3),
        .I5(rd20[30]),
        .O(p_0_in[146]));
  LUT6 #(
    .INIT(64'h0700000000000000)) 
    \q[147]_i_1 
       (.I0(\q_reg[179]_3 ),
        .I1(\c/PCSrcE2__5 ),
        .I2(\q_reg[10]_0 ),
        .I3(\q_reg[12]_0 ),
        .I4(rd21__3),
        .I5(rd20[31]),
        .O(p_0_in[147]));
  LUT6 #(
    .INIT(64'h0700000000000000)) 
    \q[148]_i_1 
       (.I0(\q_reg[179]_3 ),
        .I1(\c/PCSrcE2__5 ),
        .I2(\q_reg[10]_0 ),
        .I3(\q_reg[12]_0 ),
        .I4(rd11__3),
        .I5(rd10[0]),
        .O(p_0_in[148]));
  LUT6 #(
    .INIT(64'h0700000000000000)) 
    \q[149]_i_1 
       (.I0(\q_reg[179]_3 ),
        .I1(\c/PCSrcE2__5 ),
        .I2(\q_reg[10]_0 ),
        .I3(\q_reg[12]_0 ),
        .I4(rd11__3),
        .I5(rd10[1]),
        .O(p_0_in[149]));
  LUT6 #(
    .INIT(64'h0700000000000000)) 
    \q[14]_i_1 
       (.I0(\q_reg[179]_3 ),
        .I1(\c/PCSrcE2__5 ),
        .I2(\q_reg[10]_0 ),
        .I3(\q_reg[12]_0 ),
        .I4(\q_reg[68]_2 [62]),
        .I5(\q_reg[14]_0 ),
        .O(\q_reg[65]_0 [8]));
  LUT6 #(
    .INIT(64'h0800080800080808)) 
    \q[14]_i_1__0 
       (.I0(\q_reg[68]_2 [7]),
        .I1(\q_reg[12]_0 ),
        .I2(\q_reg[4]_1 [6]),
        .I3(\c/PCSrcE2__5 ),
        .I4(\q_reg[4]_1 [5]),
        .I5(D[0]),
        .O(p_0_in[14]));
  LUT6 #(
    .INIT(64'hF0CCF0CCF0CCAAAA)) 
    \q[14]_i_1__1 
       (.I0(PCPlus4F[11]),
        .I1(D[118]),
        .I2(BranchTargetE[14]),
        .I3(ImmSrcb1E),
        .I4(\q_reg[0]_0 ),
        .I5(\q_reg[10]_0 ),
        .O(\q_reg[3]_0 [14]));
  LUT5 #(
    .INIT(32'h00008A2A)) 
    \q[14]_i_1__2 
       (.I0(PCPlus4F[11]),
        .I1(D[0]),
        .I2(\q_reg[4]_1 [5]),
        .I3(\c/PCSrcE2__5 ),
        .I4(\q_reg[4]_1 [6]),
        .O(\q_reg[0]_1 [12]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \q[14]_i_1__3 
       (.I0(Q[11]),
        .I1(opb5E),
        .I2(BranchTargetE[11]),
        .O(D[14]));
  LUT6 #(
    .INIT(64'h0700000000000000)) 
    \q[150]_i_1 
       (.I0(\q_reg[179]_3 ),
        .I1(\c/PCSrcE2__5 ),
        .I2(\q_reg[10]_0 ),
        .I3(\q_reg[12]_0 ),
        .I4(rd11__3),
        .I5(rd10[2]),
        .O(p_0_in[150]));
  LUT6 #(
    .INIT(64'h0700000000000000)) 
    \q[151]_i_1 
       (.I0(\q_reg[179]_3 ),
        .I1(\c/PCSrcE2__5 ),
        .I2(\q_reg[10]_0 ),
        .I3(\q_reg[12]_0 ),
        .I4(rd11__3),
        .I5(rd10[3]),
        .O(p_0_in[151]));
  LUT6 #(
    .INIT(64'h0700000000000000)) 
    \q[152]_i_1 
       (.I0(\q_reg[179]_3 ),
        .I1(\c/PCSrcE2__5 ),
        .I2(\q_reg[10]_0 ),
        .I3(\q_reg[12]_0 ),
        .I4(rd11__3),
        .I5(rd10[4]),
        .O(p_0_in[152]));
  LUT6 #(
    .INIT(64'h0700000000000000)) 
    \q[153]_i_1 
       (.I0(\q_reg[179]_3 ),
        .I1(\c/PCSrcE2__5 ),
        .I2(\q_reg[10]_0 ),
        .I3(\q_reg[12]_0 ),
        .I4(rd11__3),
        .I5(rd10[5]),
        .O(p_0_in[153]));
  LUT6 #(
    .INIT(64'h0700000000000000)) 
    \q[154]_i_1 
       (.I0(\q_reg[179]_3 ),
        .I1(\c/PCSrcE2__5 ),
        .I2(\q_reg[10]_0 ),
        .I3(\q_reg[12]_0 ),
        .I4(rd11__3),
        .I5(rd10[6]),
        .O(p_0_in[154]));
  LUT6 #(
    .INIT(64'h0700000000000000)) 
    \q[155]_i_1 
       (.I0(\q_reg[179]_3 ),
        .I1(\c/PCSrcE2__5 ),
        .I2(\q_reg[10]_0 ),
        .I3(\q_reg[12]_0 ),
        .I4(rd11__3),
        .I5(rd10[7]),
        .O(p_0_in[155]));
  LUT6 #(
    .INIT(64'h0700000000000000)) 
    \q[156]_i_1 
       (.I0(\q_reg[179]_3 ),
        .I1(\c/PCSrcE2__5 ),
        .I2(\q_reg[10]_0 ),
        .I3(\q_reg[12]_0 ),
        .I4(rd11__3),
        .I5(rd10[8]),
        .O(p_0_in[156]));
  LUT6 #(
    .INIT(64'h0700000000000000)) 
    \q[157]_i_1 
       (.I0(\q_reg[179]_3 ),
        .I1(\c/PCSrcE2__5 ),
        .I2(\q_reg[10]_0 ),
        .I3(\q_reg[12]_0 ),
        .I4(rd11__3),
        .I5(rd10[9]),
        .O(p_0_in[157]));
  LUT6 #(
    .INIT(64'h0700000000000000)) 
    \q[158]_i_1 
       (.I0(\q_reg[179]_3 ),
        .I1(\c/PCSrcE2__5 ),
        .I2(\q_reg[10]_0 ),
        .I3(\q_reg[12]_0 ),
        .I4(rd11__3),
        .I5(rd10[10]),
        .O(p_0_in[158]));
  LUT6 #(
    .INIT(64'h0700000000000000)) 
    \q[159]_i_1 
       (.I0(\q_reg[179]_3 ),
        .I1(\c/PCSrcE2__5 ),
        .I2(\q_reg[10]_0 ),
        .I3(\q_reg[12]_0 ),
        .I4(rd11__3),
        .I5(rd10[11]),
        .O(p_0_in[159]));
  LUT6 #(
    .INIT(64'h0800080800080808)) 
    \q[15]_i_1 
       (.I0(\q_reg[68]_2 [8]),
        .I1(\q_reg[12]_0 ),
        .I2(\q_reg[4]_1 [6]),
        .I3(\c/PCSrcE2__5 ),
        .I4(\q_reg[4]_1 [5]),
        .I5(D[0]),
        .O(p_0_in[15]));
  LUT6 #(
    .INIT(64'hF0CCF0CCF0CCAAAA)) 
    \q[15]_i_1__0 
       (.I0(PCPlus4F[12]),
        .I1(D[119]),
        .I2(BranchTargetE[15]),
        .I3(ImmSrcb1E),
        .I4(\q_reg[0]_0 ),
        .I5(\q_reg[10]_0 ),
        .O(\q_reg[3]_0 [15]));
  LUT5 #(
    .INIT(32'h00008A2A)) 
    \q[15]_i_1__1 
       (.I0(PCPlus4F[12]),
        .I1(D[0]),
        .I2(\q_reg[4]_1 [5]),
        .I3(\c/PCSrcE2__5 ),
        .I4(\q_reg[4]_1 [6]),
        .O(\q_reg[0]_1 [13]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \q[15]_i_1__2 
       (.I0(Q[12]),
        .I1(opb5E),
        .I2(BranchTargetE[12]),
        .O(D[15]));
  LUT6 #(
    .INIT(64'h0700000000000000)) 
    \q[160]_i_1 
       (.I0(\q_reg[179]_3 ),
        .I1(\c/PCSrcE2__5 ),
        .I2(\q_reg[10]_0 ),
        .I3(\q_reg[12]_0 ),
        .I4(rd11__3),
        .I5(rd10[12]),
        .O(p_0_in[160]));
  LUT6 #(
    .INIT(64'h0700000000000000)) 
    \q[161]_i_1 
       (.I0(\q_reg[179]_3 ),
        .I1(\c/PCSrcE2__5 ),
        .I2(\q_reg[10]_0 ),
        .I3(\q_reg[12]_0 ),
        .I4(rd11__3),
        .I5(rd10[13]),
        .O(p_0_in[161]));
  LUT6 #(
    .INIT(64'h0700000000000000)) 
    \q[162]_i_1 
       (.I0(\q_reg[179]_3 ),
        .I1(\c/PCSrcE2__5 ),
        .I2(\q_reg[10]_0 ),
        .I3(\q_reg[12]_0 ),
        .I4(rd11__3),
        .I5(rd10[14]),
        .O(p_0_in[162]));
  LUT6 #(
    .INIT(64'h0700000000000000)) 
    \q[163]_i_1 
       (.I0(\q_reg[179]_3 ),
        .I1(\c/PCSrcE2__5 ),
        .I2(\q_reg[10]_0 ),
        .I3(\q_reg[12]_0 ),
        .I4(rd11__3),
        .I5(rd10[15]),
        .O(p_0_in[163]));
  LUT6 #(
    .INIT(64'h0700000000000000)) 
    \q[164]_i_1 
       (.I0(\q_reg[179]_3 ),
        .I1(\c/PCSrcE2__5 ),
        .I2(\q_reg[10]_0 ),
        .I3(\q_reg[12]_0 ),
        .I4(rd11__3),
        .I5(rd10[16]),
        .O(p_0_in[164]));
  LUT6 #(
    .INIT(64'h0700000000000000)) 
    \q[165]_i_1 
       (.I0(\q_reg[179]_3 ),
        .I1(\c/PCSrcE2__5 ),
        .I2(\q_reg[10]_0 ),
        .I3(\q_reg[12]_0 ),
        .I4(rd11__3),
        .I5(rd10[17]),
        .O(p_0_in[165]));
  LUT6 #(
    .INIT(64'h0700000000000000)) 
    \q[166]_i_1 
       (.I0(\q_reg[179]_3 ),
        .I1(\c/PCSrcE2__5 ),
        .I2(\q_reg[10]_0 ),
        .I3(\q_reg[12]_0 ),
        .I4(rd11__3),
        .I5(rd10[18]),
        .O(p_0_in[166]));
  LUT6 #(
    .INIT(64'h0700000000000000)) 
    \q[167]_i_1 
       (.I0(\q_reg[179]_3 ),
        .I1(\c/PCSrcE2__5 ),
        .I2(\q_reg[10]_0 ),
        .I3(\q_reg[12]_0 ),
        .I4(rd11__3),
        .I5(rd10[19]),
        .O(p_0_in[167]));
  LUT6 #(
    .INIT(64'h0700000000000000)) 
    \q[168]_i_1 
       (.I0(\q_reg[179]_3 ),
        .I1(\c/PCSrcE2__5 ),
        .I2(\q_reg[10]_0 ),
        .I3(\q_reg[12]_0 ),
        .I4(rd11__3),
        .I5(rd10[20]),
        .O(p_0_in[168]));
  LUT6 #(
    .INIT(64'h0700000000000000)) 
    \q[169]_i_1 
       (.I0(\q_reg[179]_3 ),
        .I1(\c/PCSrcE2__5 ),
        .I2(\q_reg[10]_0 ),
        .I3(\q_reg[12]_0 ),
        .I4(rd11__3),
        .I5(rd10[21]),
        .O(p_0_in[169]));
  LUT6 #(
    .INIT(64'h0800080800080808)) 
    \q[16]_i_1 
       (.I0(\q_reg[68]_2 [9]),
        .I1(\q_reg[12]_0 ),
        .I2(\q_reg[4]_1 [6]),
        .I3(\c/PCSrcE2__5 ),
        .I4(\q_reg[4]_1 [5]),
        .I5(D[0]),
        .O(p_0_in[16]));
  LUT6 #(
    .INIT(64'hF0CCF0CCF0CCAAAA)) 
    \q[16]_i_1__0 
       (.I0(PCPlus4F[13]),
        .I1(D[120]),
        .I2(BranchTargetE[16]),
        .I3(ImmSrcb1E),
        .I4(\q_reg[0]_0 ),
        .I5(\q_reg[10]_0 ),
        .O(\q_reg[3]_0 [16]));
  LUT5 #(
    .INIT(32'h00008A2A)) 
    \q[16]_i_1__1 
       (.I0(PCPlus4F[13]),
        .I1(D[0]),
        .I2(\q_reg[4]_1 [5]),
        .I3(\c/PCSrcE2__5 ),
        .I4(\q_reg[4]_1 [6]),
        .O(\q_reg[0]_1 [14]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \q[16]_i_1__2 
       (.I0(Q[13]),
        .I1(opb5E),
        .I2(BranchTargetE[13]),
        .O(D[16]));
  LUT6 #(
    .INIT(64'h0700000000000000)) 
    \q[170]_i_1 
       (.I0(\q_reg[179]_3 ),
        .I1(\c/PCSrcE2__5 ),
        .I2(\q_reg[10]_0 ),
        .I3(\q_reg[12]_0 ),
        .I4(rd11__3),
        .I5(rd10[22]),
        .O(p_0_in[170]));
  LUT6 #(
    .INIT(64'h0700000000000000)) 
    \q[171]_i_1 
       (.I0(\q_reg[179]_3 ),
        .I1(\c/PCSrcE2__5 ),
        .I2(\q_reg[10]_0 ),
        .I3(\q_reg[12]_0 ),
        .I4(rd11__3),
        .I5(rd10[23]),
        .O(p_0_in[171]));
  LUT6 #(
    .INIT(64'h0700000000000000)) 
    \q[172]_i_1 
       (.I0(\q_reg[179]_3 ),
        .I1(\c/PCSrcE2__5 ),
        .I2(\q_reg[10]_0 ),
        .I3(\q_reg[12]_0 ),
        .I4(rd11__3),
        .I5(rd10[24]),
        .O(p_0_in[172]));
  LUT6 #(
    .INIT(64'h0700000000000000)) 
    \q[173]_i_1 
       (.I0(\q_reg[179]_3 ),
        .I1(\c/PCSrcE2__5 ),
        .I2(\q_reg[10]_0 ),
        .I3(\q_reg[12]_0 ),
        .I4(rd11__3),
        .I5(rd10[25]),
        .O(p_0_in[173]));
  LUT6 #(
    .INIT(64'h0700000000000000)) 
    \q[174]_i_1 
       (.I0(\q_reg[179]_3 ),
        .I1(\c/PCSrcE2__5 ),
        .I2(\q_reg[10]_0 ),
        .I3(\q_reg[12]_0 ),
        .I4(rd11__3),
        .I5(rd10[26]),
        .O(p_0_in[174]));
  LUT6 #(
    .INIT(64'h0700000000000000)) 
    \q[175]_i_1 
       (.I0(\q_reg[179]_3 ),
        .I1(\c/PCSrcE2__5 ),
        .I2(\q_reg[10]_0 ),
        .I3(\q_reg[12]_0 ),
        .I4(rd11__3),
        .I5(rd10[27]),
        .O(p_0_in[175]));
  LUT6 #(
    .INIT(64'h0700000000000000)) 
    \q[176]_i_1 
       (.I0(\q_reg[179]_3 ),
        .I1(\c/PCSrcE2__5 ),
        .I2(\q_reg[10]_0 ),
        .I3(\q_reg[12]_0 ),
        .I4(rd11__3),
        .I5(rd10[28]),
        .O(p_0_in[176]));
  LUT6 #(
    .INIT(64'h0700000000000000)) 
    \q[177]_i_1 
       (.I0(\q_reg[179]_3 ),
        .I1(\c/PCSrcE2__5 ),
        .I2(\q_reg[10]_0 ),
        .I3(\q_reg[12]_0 ),
        .I4(rd11__3),
        .I5(rd10[29]),
        .O(p_0_in[177]));
  LUT6 #(
    .INIT(64'h0700000000000000)) 
    \q[178]_i_1 
       (.I0(\q_reg[179]_3 ),
        .I1(\c/PCSrcE2__5 ),
        .I2(\q_reg[10]_0 ),
        .I3(\q_reg[12]_0 ),
        .I4(rd11__3),
        .I5(rd10[30]),
        .O(p_0_in[178]));
  LUT6 #(
    .INIT(64'h0700000000000000)) 
    \q[179]_i_1 
       (.I0(\q_reg[179]_3 ),
        .I1(\c/PCSrcE2__5 ),
        .I2(\q_reg[10]_0 ),
        .I3(\q_reg[12]_0 ),
        .I4(rd11__3),
        .I5(rd10[31]),
        .O(p_0_in[179]));
  LUT6 #(
    .INIT(64'h0800080800080808)) 
    \q[17]_i_1 
       (.I0(\q_reg[68]_2 [10]),
        .I1(\q_reg[12]_0 ),
        .I2(\q_reg[4]_1 [6]),
        .I3(\c/PCSrcE2__5 ),
        .I4(\q_reg[4]_1 [5]),
        .I5(D[0]),
        .O(p_0_in[17]));
  LUT6 #(
    .INIT(64'hF0CCF0CCF0CCAAAA)) 
    \q[17]_i_1__0 
       (.I0(PCPlus4F[14]),
        .I1(D[121]),
        .I2(BranchTargetE[17]),
        .I3(ImmSrcb1E),
        .I4(\q_reg[0]_0 ),
        .I5(\q_reg[10]_0 ),
        .O(\q_reg[3]_0 [17]));
  LUT5 #(
    .INIT(32'h00008A2A)) 
    \q[17]_i_1__1 
       (.I0(PCPlus4F[14]),
        .I1(D[0]),
        .I2(\q_reg[4]_1 [5]),
        .I3(\c/PCSrcE2__5 ),
        .I4(\q_reg[4]_1 [6]),
        .O(\q_reg[0]_1 [15]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \q[17]_i_1__2 
       (.I0(Q[14]),
        .I1(opb5E),
        .I2(BranchTargetE[14]),
        .O(D[17]));
  LUT6 #(
    .INIT(64'h0800080800080808)) 
    \q[18]_i_1 
       (.I0(\q_reg[68]_2 [11]),
        .I1(\q_reg[12]_0 ),
        .I2(\q_reg[4]_1 [6]),
        .I3(\c/PCSrcE2__5 ),
        .I4(\q_reg[4]_1 [5]),
        .I5(D[0]),
        .O(p_0_in[18]));
  LUT6 #(
    .INIT(64'hF0CCF0CCF0CCAAAA)) 
    \q[18]_i_1__0 
       (.I0(PCPlus4F[15]),
        .I1(D[122]),
        .I2(BranchTargetE[18]),
        .I3(ImmSrcb1E),
        .I4(\q_reg[0]_0 ),
        .I5(\q_reg[10]_0 ),
        .O(\q_reg[3]_0 [18]));
  LUT5 #(
    .INIT(32'h00008A2A)) 
    \q[18]_i_1__1 
       (.I0(PCPlus4F[15]),
        .I1(D[0]),
        .I2(\q_reg[4]_1 [5]),
        .I3(\c/PCSrcE2__5 ),
        .I4(\q_reg[4]_1 [6]),
        .O(\q_reg[0]_1 [16]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \q[18]_i_1__2 
       (.I0(Q[15]),
        .I1(opb5E),
        .I2(BranchTargetE[15]),
        .O(D[18]));
  LUT6 #(
    .INIT(64'h0800080800080808)) 
    \q[19]_i_1 
       (.I0(\q_reg[68]_2 [12]),
        .I1(\q_reg[12]_0 ),
        .I2(\q_reg[4]_1 [6]),
        .I3(\c/PCSrcE2__5 ),
        .I4(\q_reg[4]_1 [5]),
        .I5(D[0]),
        .O(p_0_in[19]));
  LUT6 #(
    .INIT(64'hF0CCF0CCF0CCAAAA)) 
    \q[19]_i_1__0 
       (.I0(PCPlus4F[16]),
        .I1(D[123]),
        .I2(BranchTargetE[19]),
        .I3(ImmSrcb1E),
        .I4(\q_reg[0]_0 ),
        .I5(\q_reg[10]_0 ),
        .O(\q_reg[3]_0 [19]));
  LUT5 #(
    .INIT(32'h00008A2A)) 
    \q[19]_i_1__1 
       (.I0(PCPlus4F[16]),
        .I1(D[0]),
        .I2(\q_reg[4]_1 [5]),
        .I3(\c/PCSrcE2__5 ),
        .I4(\q_reg[4]_1 [6]),
        .O(\q_reg[0]_1 [17]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \q[19]_i_1__2 
       (.I0(Q[16]),
        .I1(opb5E),
        .I2(BranchTargetE[16]),
        .O(D[19]));
  LUT6 #(
    .INIT(64'h0800080800080808)) 
    \q[1]_i_1 
       (.I0(\q_reg[68]_2 [71]),
        .I1(\q_reg[12]_0 ),
        .I2(\q_reg[4]_1 [6]),
        .I3(\c/PCSrcE2__5 ),
        .I4(\q_reg[4]_1 [5]),
        .I5(D[0]),
        .O(p_0_in[1]));
  LUT6 #(
    .INIT(64'hF0CCF0CCF0CCAAAA)) 
    \q[1]_i_1__0 
       (.I0(\q_reg[63]_1 [1]),
        .I1(D[105]),
        .I2(BranchTargetE[1]),
        .I3(ImmSrcb1E),
        .I4(\q_reg[0]_0 ),
        .I5(\q_reg[10]_0 ),
        .O(\q_reg[3]_0 [1]));
  LUT6 #(
    .INIT(64'h0800080800080808)) 
    \q[20]_i_1 
       (.I0(\q_reg[68]_2 [13]),
        .I1(\q_reg[12]_0 ),
        .I2(\q_reg[4]_1 [6]),
        .I3(\c/PCSrcE2__5 ),
        .I4(\q_reg[4]_1 [5]),
        .I5(D[0]),
        .O(p_0_in[20]));
  LUT6 #(
    .INIT(64'hF0CCF0CCF0CCAAAA)) 
    \q[20]_i_1__0 
       (.I0(PCPlus4F[17]),
        .I1(\q_reg[30]_0 [0]),
        .I2(BranchTargetE[20]),
        .I3(ImmSrcb1E),
        .I4(\q_reg[0]_0 ),
        .I5(\q_reg[10]_0 ),
        .O(\q_reg[3]_0 [20]));
  LUT5 #(
    .INIT(32'h00008A2A)) 
    \q[20]_i_1__1 
       (.I0(PCPlus4F[17]),
        .I1(D[0]),
        .I2(\q_reg[4]_1 [5]),
        .I3(\c/PCSrcE2__5 ),
        .I4(\q_reg[4]_1 [6]),
        .O(\q_reg[0]_1 [18]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \q[20]_i_1__2 
       (.I0(Q[17]),
        .I1(opb5E),
        .I2(BranchTargetE[17]),
        .O(D[20]));
  LUT6 #(
    .INIT(64'h0800080800080808)) 
    \q[21]_i_1 
       (.I0(\q_reg[68]_2 [14]),
        .I1(\q_reg[12]_0 ),
        .I2(\q_reg[4]_1 [6]),
        .I3(\c/PCSrcE2__5 ),
        .I4(\q_reg[4]_1 [5]),
        .I5(D[0]),
        .O(p_0_in[21]));
  LUT6 #(
    .INIT(64'hF0CCF0CCF0CCAAAA)) 
    \q[21]_i_1__0 
       (.I0(PCPlus4F[18]),
        .I1(\q_reg[30]_0 [1]),
        .I2(BranchTargetE[21]),
        .I3(ImmSrcb1E),
        .I4(\q_reg[0]_0 ),
        .I5(\q_reg[10]_0 ),
        .O(\q_reg[3]_0 [21]));
  LUT5 #(
    .INIT(32'h00008A2A)) 
    \q[21]_i_1__1 
       (.I0(PCPlus4F[18]),
        .I1(D[0]),
        .I2(\q_reg[4]_1 [5]),
        .I3(\c/PCSrcE2__5 ),
        .I4(\q_reg[4]_1 [6]),
        .O(\q_reg[0]_1 [19]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \q[21]_i_1__2 
       (.I0(Q[18]),
        .I1(opb5E),
        .I2(BranchTargetE[18]),
        .O(D[21]));
  LUT6 #(
    .INIT(64'h0800080800080808)) 
    \q[22]_i_1 
       (.I0(\q_reg[68]_2 [15]),
        .I1(\q_reg[12]_0 ),
        .I2(\q_reg[4]_1 [6]),
        .I3(\c/PCSrcE2__5 ),
        .I4(\q_reg[4]_1 [5]),
        .I5(D[0]),
        .O(p_0_in[22]));
  LUT6 #(
    .INIT(64'hF0CCF0CCF0CCAAAA)) 
    \q[22]_i_1__0 
       (.I0(PCPlus4F[19]),
        .I1(\q_reg[30]_0 [2]),
        .I2(BranchTargetE[22]),
        .I3(ImmSrcb1E),
        .I4(\q_reg[0]_0 ),
        .I5(\q_reg[10]_0 ),
        .O(\q_reg[3]_0 [22]));
  LUT5 #(
    .INIT(32'h00008A2A)) 
    \q[22]_i_1__1 
       (.I0(PCPlus4F[19]),
        .I1(D[0]),
        .I2(\q_reg[4]_1 [5]),
        .I3(\c/PCSrcE2__5 ),
        .I4(\q_reg[4]_1 [6]),
        .O(\q_reg[0]_1 [20]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \q[22]_i_1__2 
       (.I0(Q[19]),
        .I1(opb5E),
        .I2(BranchTargetE[19]),
        .O(D[22]));
  LUT6 #(
    .INIT(64'h0800080800080808)) 
    \q[23]_i_1 
       (.I0(\q_reg[68]_2 [16]),
        .I1(\q_reg[12]_0 ),
        .I2(\q_reg[4]_1 [6]),
        .I3(\c/PCSrcE2__5 ),
        .I4(\q_reg[4]_1 [5]),
        .I5(D[0]),
        .O(p_0_in[23]));
  LUT6 #(
    .INIT(64'hF0CCF0CCF0CCAAAA)) 
    \q[23]_i_1__0 
       (.I0(PCPlus4F[20]),
        .I1(\q_reg[30]_0 [3]),
        .I2(BranchTargetE[23]),
        .I3(ImmSrcb1E),
        .I4(\q_reg[0]_0 ),
        .I5(\q_reg[10]_0 ),
        .O(\q_reg[3]_0 [23]));
  LUT5 #(
    .INIT(32'h00008A2A)) 
    \q[23]_i_1__1 
       (.I0(PCPlus4F[20]),
        .I1(D[0]),
        .I2(\q_reg[4]_1 [5]),
        .I3(\c/PCSrcE2__5 ),
        .I4(\q_reg[4]_1 [6]),
        .O(\q_reg[0]_1 [21]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \q[23]_i_1__2 
       (.I0(Q[20]),
        .I1(opb5E),
        .I2(BranchTargetE[20]),
        .O(D[23]));
  LUT6 #(
    .INIT(64'h0800080800080808)) 
    \q[24]_i_1 
       (.I0(\q_reg[68]_2 [17]),
        .I1(\q_reg[12]_0 ),
        .I2(\q_reg[4]_1 [6]),
        .I3(\c/PCSrcE2__5 ),
        .I4(\q_reg[4]_1 [5]),
        .I5(D[0]),
        .O(p_0_in[24]));
  LUT6 #(
    .INIT(64'hF0CCF0CCF0CCAAAA)) 
    \q[24]_i_1__0 
       (.I0(PCPlus4F[21]),
        .I1(\q_reg[30]_0 [4]),
        .I2(BranchTargetE[24]),
        .I3(ImmSrcb1E),
        .I4(\q_reg[0]_0 ),
        .I5(\q_reg[10]_0 ),
        .O(\q_reg[3]_0 [24]));
  LUT5 #(
    .INIT(32'h00008A2A)) 
    \q[24]_i_1__1 
       (.I0(PCPlus4F[21]),
        .I1(D[0]),
        .I2(\q_reg[4]_1 [5]),
        .I3(\c/PCSrcE2__5 ),
        .I4(\q_reg[4]_1 [6]),
        .O(\q_reg[0]_1 [22]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \q[24]_i_1__2 
       (.I0(Q[21]),
        .I1(opb5E),
        .I2(BranchTargetE[21]),
        .O(D[24]));
  LUT6 #(
    .INIT(64'h0800080800080808)) 
    \q[25]_i_1 
       (.I0(\q_reg[68]_2 [18]),
        .I1(\q_reg[12]_0 ),
        .I2(\q_reg[4]_1 [6]),
        .I3(\c/PCSrcE2__5 ),
        .I4(\q_reg[4]_1 [5]),
        .I5(D[0]),
        .O(p_0_in[25]));
  LUT6 #(
    .INIT(64'hF0CCF0CCF0CCAAAA)) 
    \q[25]_i_1__0 
       (.I0(PCPlus4F[22]),
        .I1(\q_reg[30]_0 [5]),
        .I2(BranchTargetE[25]),
        .I3(ImmSrcb1E),
        .I4(\q_reg[0]_0 ),
        .I5(\q_reg[10]_0 ),
        .O(\q_reg[3]_0 [25]));
  LUT5 #(
    .INIT(32'h00008A2A)) 
    \q[25]_i_1__1 
       (.I0(PCPlus4F[22]),
        .I1(D[0]),
        .I2(\q_reg[4]_1 [5]),
        .I3(\c/PCSrcE2__5 ),
        .I4(\q_reg[4]_1 [6]),
        .O(\q_reg[0]_1 [23]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \q[25]_i_1__2 
       (.I0(Q[22]),
        .I1(opb5E),
        .I2(BranchTargetE[22]),
        .O(D[25]));
  LUT6 #(
    .INIT(64'h0800080800080808)) 
    \q[26]_i_1 
       (.I0(\q_reg[68]_2 [19]),
        .I1(\q_reg[12]_0 ),
        .I2(\q_reg[4]_1 [6]),
        .I3(\c/PCSrcE2__5 ),
        .I4(\q_reg[4]_1 [5]),
        .I5(D[0]),
        .O(p_0_in[26]));
  LUT6 #(
    .INIT(64'hF0CCF0CCF0CCAAAA)) 
    \q[26]_i_1__0 
       (.I0(PCPlus4F[23]),
        .I1(\q_reg[30]_0 [6]),
        .I2(BranchTargetE[26]),
        .I3(ImmSrcb1E),
        .I4(\q_reg[0]_0 ),
        .I5(\q_reg[10]_0 ),
        .O(\q_reg[3]_0 [26]));
  LUT5 #(
    .INIT(32'h00008A2A)) 
    \q[26]_i_1__1 
       (.I0(PCPlus4F[23]),
        .I1(D[0]),
        .I2(\q_reg[4]_1 [5]),
        .I3(\c/PCSrcE2__5 ),
        .I4(\q_reg[4]_1 [6]),
        .O(\q_reg[0]_1 [24]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \q[26]_i_1__2 
       (.I0(Q[23]),
        .I1(opb5E),
        .I2(BranchTargetE[23]),
        .O(D[26]));
  LUT6 #(
    .INIT(64'h0800080800080808)) 
    \q[27]_i_1 
       (.I0(\q_reg[68]_2 [20]),
        .I1(\q_reg[12]_0 ),
        .I2(\q_reg[4]_1 [6]),
        .I3(\c/PCSrcE2__5 ),
        .I4(\q_reg[4]_1 [5]),
        .I5(D[0]),
        .O(p_0_in[27]));
  LUT6 #(
    .INIT(64'hF0CCF0CCF0CCAAAA)) 
    \q[27]_i_1__0 
       (.I0(PCPlus4F[24]),
        .I1(\q_reg[30]_0 [7]),
        .I2(BranchTargetE[27]),
        .I3(ImmSrcb1E),
        .I4(\q_reg[0]_0 ),
        .I5(\q_reg[10]_0 ),
        .O(\q_reg[3]_0 [27]));
  LUT5 #(
    .INIT(32'h00008A2A)) 
    \q[27]_i_1__1 
       (.I0(PCPlus4F[24]),
        .I1(D[0]),
        .I2(\q_reg[4]_1 [5]),
        .I3(\c/PCSrcE2__5 ),
        .I4(\q_reg[4]_1 [6]),
        .O(\q_reg[0]_1 [25]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \q[27]_i_1__2 
       (.I0(Q[24]),
        .I1(opb5E),
        .I2(BranchTargetE[24]),
        .O(D[27]));
  LUT6 #(
    .INIT(64'h0800080800080808)) 
    \q[28]_i_1 
       (.I0(\q_reg[68]_2 [21]),
        .I1(\q_reg[12]_0 ),
        .I2(\q_reg[4]_1 [6]),
        .I3(\c/PCSrcE2__5 ),
        .I4(\q_reg[4]_1 [5]),
        .I5(D[0]),
        .O(p_0_in[28]));
  LUT6 #(
    .INIT(64'hF0CCF0CCF0CCAAAA)) 
    \q[28]_i_1__0 
       (.I0(PCPlus4F[25]),
        .I1(\q_reg[30]_0 [8]),
        .I2(BranchTargetE[28]),
        .I3(ImmSrcb1E),
        .I4(\q_reg[0]_0 ),
        .I5(\q_reg[10]_0 ),
        .O(\q_reg[3]_0 [28]));
  LUT5 #(
    .INIT(32'h00008A2A)) 
    \q[28]_i_1__1 
       (.I0(PCPlus4F[25]),
        .I1(D[0]),
        .I2(\q_reg[4]_1 [5]),
        .I3(\c/PCSrcE2__5 ),
        .I4(\q_reg[4]_1 [6]),
        .O(\q_reg[0]_1 [26]));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \q[28]_i_1__2 
       (.I0(Q[25]),
        .I1(opb5E),
        .I2(BranchTargetE[25]),
        .O(D[28]));
  LUT6 #(
    .INIT(64'h0800080800080808)) 
    \q[29]_i_1 
       (.I0(\q_reg[68]_2 [22]),
        .I1(\q_reg[12]_0 ),
        .I2(\q_reg[4]_1 [6]),
        .I3(\c/PCSrcE2__5 ),
        .I4(\q_reg[4]_1 [5]),
        .I5(D[0]),
        .O(p_0_in[29]));
  LUT6 #(
    .INIT(64'hF0CCF0CCF0CCAAAA)) 
    \q[29]_i_1__0 
       (.I0(PCPlus4F[26]),
        .I1(\q_reg[30]_0 [9]),
        .I2(BranchTargetE[29]),
        .I3(ImmSrcb1E),
        .I4(\q_reg[0]_0 ),
        .I5(\q_reg[10]_0 ),
        .O(\q_reg[3]_0 [29]));
  LUT5 #(
    .INIT(32'h00008A2A)) 
    \q[29]_i_1__1 
       (.I0(PCPlus4F[26]),
        .I1(D[0]),
        .I2(\q_reg[4]_1 [5]),
        .I3(\c/PCSrcE2__5 ),
        .I4(\q_reg[4]_1 [6]),
        .O(\q_reg[0]_1 [27]));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \q[29]_i_1__2 
       (.I0(Q[26]),
        .I1(opb5E),
        .I2(BranchTargetE[26]),
        .O(D[29]));
  LUT6 #(
    .INIT(64'h0800080800080808)) 
    \q[2]_i_1 
       (.I0(\q_reg[68]_2 [72]),
        .I1(\q_reg[12]_0 ),
        .I2(\q_reg[4]_1 [6]),
        .I3(\c/PCSrcE2__5 ),
        .I4(\q_reg[4]_1 [5]),
        .I5(D[0]),
        .O(p_0_in[2]));
  LUT6 #(
    .INIT(64'hF0CCF0CCF0CC5555)) 
    \q[2]_i_1__0 
       (.I0(\q_reg[63]_1 [2]),
        .I1(D[106]),
        .I2(BranchTargetE[2]),
        .I3(ImmSrcb1E),
        .I4(\q_reg[0]_0 ),
        .I5(\q_reg[10]_0 ),
        .O(\q_reg[3]_0 [2]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h000000B7)) 
    \q[2]_i_1__1 
       (.I0(D[0]),
        .I1(\q_reg[4]_1 [5]),
        .I2(\c/PCSrcE2__5 ),
        .I3(\q_reg[4]_1 [6]),
        .I4(\q_reg[63]_1 [2]),
        .O(\q_reg[0]_1 [0]));
  LUT6 #(
    .INIT(64'h0800080800080808)) 
    \q[30]_i_1 
       (.I0(\q_reg[68]_2 [23]),
        .I1(\q_reg[12]_0 ),
        .I2(\q_reg[4]_1 [6]),
        .I3(\c/PCSrcE2__5 ),
        .I4(\q_reg[4]_1 [5]),
        .I5(D[0]),
        .O(p_0_in[30]));
  LUT6 #(
    .INIT(64'hF0CCF0CCF0CCAAAA)) 
    \q[30]_i_1__0 
       (.I0(PCPlus4F[27]),
        .I1(\q_reg[30]_0 [10]),
        .I2(BranchTargetE[30]),
        .I3(ImmSrcb1E),
        .I4(\q_reg[0]_0 ),
        .I5(\q_reg[10]_0 ),
        .O(\q_reg[3]_0 [30]));
  LUT5 #(
    .INIT(32'h00008A2A)) 
    \q[30]_i_1__1 
       (.I0(PCPlus4F[27]),
        .I1(D[0]),
        .I2(\q_reg[4]_1 [5]),
        .I3(\c/PCSrcE2__5 ),
        .I4(\q_reg[4]_1 [6]),
        .O(\q_reg[0]_1 [28]));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \q[30]_i_1__2 
       (.I0(Q[27]),
        .I1(opb5E),
        .I2(BranchTargetE[27]),
        .O(D[30]));
  LUT6 #(
    .INIT(64'h0800080800080808)) 
    \q[31]_i_1 
       (.I0(\q_reg[68]_2 [24]),
        .I1(\q_reg[12]_0 ),
        .I2(\q_reg[4]_1 [6]),
        .I3(\c/PCSrcE2__5 ),
        .I4(\q_reg[4]_1 [5]),
        .I5(D[0]),
        .O(p_0_in[31]));
  LUT2 #(
    .INIT(4'h8)) 
    \q[31]_i_10 
       (.I0(CO),
        .I1(D[1]),
        .O(\q[31]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \q[31]_i_11 
       (.I0(D[1]),
        .I1(D[2]),
        .I2(D[124]),
        .O(\q[31]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'h00008000)) 
    \q[31]_i_13 
       (.I0(\q[31]_i_18_n_0 ),
        .I1(\q[31]_i_19_n_0 ),
        .I2(\q[31]_i_20_n_0 ),
        .I3(\q[31]_i_21_n_0 ),
        .I4(D[104]),
        .O(\q[31]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \q[31]_i_14 
       (.I0(D[0]),
        .I1(\q_reg[4]_1 [5]),
        .O(\q[31]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \q[31]_i_17 
       (.I0(D[123]),
        .I1(D[122]),
        .I2(D[121]),
        .I3(D[120]),
        .O(\q_reg[6] ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \q[31]_i_18 
       (.I0(D[109]),
        .I1(D[108]),
        .I2(D[110]),
        .I3(D[111]),
        .I4(D[2]),
        .O(\q[31]_i_18_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \q[31]_i_19 
       (.I0(D[105]),
        .I1(D[107]),
        .I2(D[106]),
        .I3(D[119]),
        .O(\q[31]_i_19_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \q[31]_i_1__0 
       (.I0(\q_reg[12]_0 ),
        .I1(PCReadyM),
        .O(E));
  LUT5 #(
    .INIT(32'h00008A2A)) 
    \q[31]_i_1__1 
       (.I0(PCPlus4F[28]),
        .I1(D[0]),
        .I2(\q_reg[4]_1 [5]),
        .I3(\c/PCSrcE2__5 ),
        .I4(\q_reg[4]_1 [6]),
        .O(\q_reg[0]_1 [29]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \q[31]_i_1__2 
       (.I0(Q[28]),
        .I1(opb5E),
        .I2(BranchTargetE[28]),
        .O(D[31]));
  LUT6 #(
    .INIT(64'hF0CCF0CCF0CCAAAA)) 
    \q[31]_i_2 
       (.I0(PCPlus4F[28]),
        .I1(D[124]),
        .I2(BranchTargetE[31]),
        .I3(ImmSrcb1E),
        .I4(\q_reg[0]_0 ),
        .I5(\q_reg[10]_0 ),
        .O(\q_reg[3]_0 [31]));
  LUT4 #(
    .INIT(16'h0001)) 
    \q[31]_i_20 
       (.I0(D[118]),
        .I1(D[117]),
        .I2(D[116]),
        .I3(D[113]),
        .O(\q[31]_i_20_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \q[31]_i_21 
       (.I0(D[112]),
        .I1(D[115]),
        .I2(D[114]),
        .O(\q[31]_i_21_n_0 ));
  LUT5 #(
    .INIT(32'h557F7F7F)) 
    \q[31]_i_3 
       (.I0(\q_reg[4]_1 [7]),
        .I1(\q[31]_i_6_n_0 ),
        .I2(\q_reg[4]_2 ),
        .I3(\q[31]_i_8_n_0 ),
        .I4(\q_reg[4]_3 ),
        .O(\q_reg[12]_0 ));
  LUT6 #(
    .INIT(64'h4444444044404440)) 
    \q[31]_i_4 
       (.I0(D[0]),
        .I1(\q_reg[4]_1 [5]),
        .I2(\q[31]_i_10_n_0 ),
        .I3(\q[31]_i_11_n_0 ),
        .I4(\q_reg[2]_0 ),
        .I5(\q[31]_i_13_n_0 ),
        .O(\q_reg[0]_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00070000)) 
    \q[31]_i_5 
       (.I0(\q[31]_i_13_n_0 ),
        .I1(\q_reg[2]_0 ),
        .I2(\q[31]_i_11_n_0 ),
        .I3(\q[31]_i_10_n_0 ),
        .I4(\q[31]_i_14_n_0 ),
        .I5(\q_reg[4]_1 [6]),
        .O(\q_reg[10]_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \q[31]_i_6 
       (.I0(D[71]),
        .I1(\q_reg[68]_2 [77]),
        .I2(D[70]),
        .I3(\q_reg[68]_2 [76]),
        .I4(\q_reg[68]_2 [75]),
        .I5(D[69]),
        .O(\q[31]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \q[31]_i_8 
       (.I0(D[71]),
        .I1(\q_reg[68]_2 [82]),
        .I2(D[70]),
        .I3(\q_reg[68]_2 [81]),
        .I4(D[69]),
        .I5(\q_reg[68]_2 [80]),
        .O(\q[31]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0800080800080808)) 
    \q[32]_i_1 
       (.I0(\q_reg[68]_2 [25]),
        .I1(\q_reg[12]_0 ),
        .I2(\q_reg[4]_1 [6]),
        .I3(\c/PCSrcE2__5 ),
        .I4(\q_reg[4]_1 [5]),
        .I5(D[0]),
        .O(p_0_in[32]));
  LUT5 #(
    .INIT(32'h00008A2A)) 
    \q[32]_i_1__0 
       (.I0(\q_reg[63]_1 [0]),
        .I1(D[0]),
        .I2(\q_reg[4]_1 [5]),
        .I3(\c/PCSrcE2__5 ),
        .I4(\q_reg[4]_1 [6]),
        .O(\q_reg[0]_1 [30]));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \q[32]_i_1__1 
       (.I0(Q[29]),
        .I1(opb5E),
        .I2(BranchTargetE[29]),
        .O(D[32]));
  LUT6 #(
    .INIT(64'h0800080800080808)) 
    \q[33]_i_1 
       (.I0(\q_reg[68]_2 [26]),
        .I1(\q_reg[12]_0 ),
        .I2(\q_reg[4]_1 [6]),
        .I3(\c/PCSrcE2__5 ),
        .I4(\q_reg[4]_1 [5]),
        .I5(D[0]),
        .O(p_0_in[33]));
  LUT5 #(
    .INIT(32'h00008A2A)) 
    \q[33]_i_1__0 
       (.I0(\q_reg[63]_1 [1]),
        .I1(D[0]),
        .I2(\q_reg[4]_1 [5]),
        .I3(\c/PCSrcE2__5 ),
        .I4(\q_reg[4]_1 [6]),
        .O(\q_reg[0]_1 [31]));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \q[33]_i_1__1 
       (.I0(Q[30]),
        .I1(opb5E),
        .I2(BranchTargetE[30]),
        .O(D[33]));
  LUT6 #(
    .INIT(64'h0800080800080808)) 
    \q[34]_i_1 
       (.I0(\q_reg[68]_2 [27]),
        .I1(\q_reg[12]_0 ),
        .I2(\q_reg[4]_1 [6]),
        .I3(\c/PCSrcE2__5 ),
        .I4(\q_reg[4]_1 [5]),
        .I5(D[0]),
        .O(p_0_in[34]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h00008A2A)) 
    \q[34]_i_1__0 
       (.I0(\q_reg[63]_1 [2]),
        .I1(D[0]),
        .I2(\q_reg[4]_1 [5]),
        .I3(\c/PCSrcE2__5 ),
        .I4(\q_reg[4]_1 [6]),
        .O(\q_reg[0]_1 [32]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \q[34]_i_1__1 
       (.I0(ImmExtE),
        .I1(opb5E),
        .I2(BranchTargetE[31]),
        .O(D[34]));
  LUT6 #(
    .INIT(64'h0800080800080808)) 
    \q[35]_i_1 
       (.I0(\q_reg[68]_2 [28]),
        .I1(\q_reg[12]_0 ),
        .I2(\q_reg[4]_1 [6]),
        .I3(\c/PCSrcE2__5 ),
        .I4(\q_reg[4]_1 [5]),
        .I5(D[0]),
        .O(p_0_in[35]));
  LUT5 #(
    .INIT(32'h00008A2A)) 
    \q[35]_i_1__0 
       (.I0(\q_reg[63]_1 [3]),
        .I1(D[0]),
        .I2(\q_reg[4]_1 [5]),
        .I3(\c/PCSrcE2__5 ),
        .I4(\q_reg[4]_1 [6]),
        .O(\q_reg[0]_1 [33]));
  LUT6 #(
    .INIT(64'h0800080800080808)) 
    \q[36]_i_1 
       (.I0(\q_reg[68]_2 [29]),
        .I1(\q_reg[12]_0 ),
        .I2(\q_reg[4]_1 [6]),
        .I3(\c/PCSrcE2__5 ),
        .I4(\q_reg[4]_1 [5]),
        .I5(D[0]),
        .O(p_0_in[36]));
  LUT5 #(
    .INIT(32'h00008A2A)) 
    \q[36]_i_1__0 
       (.I0(\q_reg[63]_1 [4]),
        .I1(D[0]),
        .I2(\q_reg[4]_1 [5]),
        .I3(\c/PCSrcE2__5 ),
        .I4(\q_reg[4]_1 [6]),
        .O(\q_reg[0]_1 [34]));
  LUT6 #(
    .INIT(64'h00000000002A0000)) 
    \q[37]_i_1 
       (.I0(\q_reg[37]_7 ),
        .I1(\q_reg[179]_3 ),
        .I2(\c/PCSrcE2__5 ),
        .I3(\q_reg[10]_0 ),
        .I4(\q_reg[12]_0 ),
        .I5(\q_reg[37]_6 [1]),
        .O(p_0_in[37]));
  LUT5 #(
    .INIT(32'h00008A2A)) 
    \q[37]_i_1__0 
       (.I0(\q_reg[63]_1 [5]),
        .I1(D[0]),
        .I2(\q_reg[4]_1 [5]),
        .I3(\c/PCSrcE2__5 ),
        .I4(\q_reg[4]_1 [6]),
        .O(\q_reg[0]_1 [35]));
  LUT6 #(
    .INIT(64'h0000070000000000)) 
    \q[38]_i_1 
       (.I0(\q_reg[179]_3 ),
        .I1(\c/PCSrcE2__5 ),
        .I2(\q_reg[10]_0 ),
        .I3(\q_reg[12]_0 ),
        .I4(\q_reg[37]_6 [1]),
        .I5(\q_reg[38]_0 ),
        .O(p_0_in[38]));
  LUT5 #(
    .INIT(32'h00008A2A)) 
    \q[38]_i_1__0 
       (.I0(\q_reg[63]_1 [6]),
        .I1(D[0]),
        .I2(\q_reg[4]_1 [5]),
        .I3(\c/PCSrcE2__5 ),
        .I4(\q_reg[4]_1 [6]),
        .O(\q_reg[0]_1 [36]));
  LUT6 #(
    .INIT(64'h0000070000000000)) 
    \q[39]_i_1 
       (.I0(\q_reg[179]_3 ),
        .I1(\c/PCSrcE2__5 ),
        .I2(\q_reg[10]_0 ),
        .I3(\q_reg[12]_0 ),
        .I4(\q_reg[37]_6 [1]),
        .I5(\q_reg[39]_0 ),
        .O(p_0_in[39]));
  LUT5 #(
    .INIT(32'h00008A2A)) 
    \q[39]_i_1__0 
       (.I0(\q_reg[63]_1 [7]),
        .I1(D[0]),
        .I2(\q_reg[4]_1 [5]),
        .I3(\c/PCSrcE2__5 ),
        .I4(\q_reg[4]_1 [6]),
        .O(\q_reg[0]_1 [37]));
  LUT6 #(
    .INIT(64'h0800080800080808)) 
    \q[3]_i_1 
       (.I0(\q_reg[37]_6 [0]),
        .I1(\q_reg[12]_0 ),
        .I2(\q_reg[4]_1 [6]),
        .I3(\c/PCSrcE2__5 ),
        .I4(\q_reg[4]_1 [5]),
        .I5(D[0]),
        .O(p_0_in[3]));
  LUT6 #(
    .INIT(64'hF0CCF0CCF0CCAAAA)) 
    \q[3]_i_1__0 
       (.I0(PCPlus4F[0]),
        .I1(D[107]),
        .I2(BranchTargetE[3]),
        .I3(ImmSrcb1E),
        .I4(\q_reg[0]_0 ),
        .I5(\q_reg[10]_0 ),
        .O(\q_reg[3]_0 [3]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h00008A2A)) 
    \q[3]_i_1__1 
       (.I0(PCPlus4F[0]),
        .I1(D[0]),
        .I2(\q_reg[4]_1 [5]),
        .I3(\c/PCSrcE2__5 ),
        .I4(\q_reg[4]_1 [6]),
        .O(\q_reg[0]_1 [1]));
  LUT3 #(
    .INIT(8'hB8)) 
    \q[3]_i_1__2 
       (.I0(Q[0]),
        .I1(opb5E),
        .I2(BranchTargetE[0]),
        .O(D[3]));
  LUT6 #(
    .INIT(64'h0000070000000000)) 
    \q[40]_i_1 
       (.I0(\q_reg[179]_3 ),
        .I1(\c/PCSrcE2__5 ),
        .I2(\q_reg[10]_0 ),
        .I3(\q_reg[12]_0 ),
        .I4(\q_reg[37]_6 [1]),
        .I5(\q_reg[40]_0 ),
        .O(p_0_in[40]));
  LUT5 #(
    .INIT(32'h00008A2A)) 
    \q[40]_i_1__0 
       (.I0(\q_reg[63]_1 [8]),
        .I1(D[0]),
        .I2(\q_reg[4]_1 [5]),
        .I3(\c/PCSrcE2__5 ),
        .I4(\q_reg[4]_1 [6]),
        .O(\q_reg[0]_1 [38]));
  LUT6 #(
    .INIT(64'h0000070000000000)) 
    \q[41]_i_1 
       (.I0(\q_reg[179]_3 ),
        .I1(\c/PCSrcE2__5 ),
        .I2(\q_reg[10]_0 ),
        .I3(\q_reg[12]_0 ),
        .I4(\q_reg[37]_6 [1]),
        .I5(\q_reg[41]_0 ),
        .O(p_0_in[41]));
  LUT5 #(
    .INIT(32'h00008A2A)) 
    \q[41]_i_1__0 
       (.I0(\q_reg[63]_1 [9]),
        .I1(D[0]),
        .I2(\q_reg[4]_1 [5]),
        .I3(\c/PCSrcE2__5 ),
        .I4(\q_reg[4]_1 [6]),
        .O(\q_reg[0]_1 [39]));
  LUT6 #(
    .INIT(64'h0000070000000000)) 
    \q[42]_i_1 
       (.I0(\q_reg[179]_3 ),
        .I1(\c/PCSrcE2__5 ),
        .I2(\q_reg[10]_0 ),
        .I3(\q_reg[12]_0 ),
        .I4(\q_reg[37]_6 [1]),
        .I5(\q_reg[68]_2 [83]),
        .O(p_0_in[42]));
  LUT5 #(
    .INIT(32'h00008A2A)) 
    \q[42]_i_1__0 
       (.I0(\q_reg[63]_1 [10]),
        .I1(D[0]),
        .I2(\q_reg[4]_1 [5]),
        .I3(\c/PCSrcE2__5 ),
        .I4(\q_reg[4]_1 [6]),
        .O(\q_reg[0]_1 [40]));
  LUT6 #(
    .INIT(64'h0000070000000000)) 
    \q[43]_i_1 
       (.I0(\q_reg[179]_3 ),
        .I1(\c/PCSrcE2__5 ),
        .I2(\q_reg[10]_0 ),
        .I3(\q_reg[12]_0 ),
        .I4(\q_reg[37]_6 [1]),
        .I5(\q_reg[68]_2 [84]),
        .O(p_0_in[43]));
  LUT5 #(
    .INIT(32'h00008A2A)) 
    \q[43]_i_1__0 
       (.I0(\q_reg[63]_1 [11]),
        .I1(D[0]),
        .I2(\q_reg[4]_1 [5]),
        .I3(\c/PCSrcE2__5 ),
        .I4(\q_reg[4]_1 [6]),
        .O(\q_reg[0]_1 [41]));
  LUT6 #(
    .INIT(64'h0000070000000000)) 
    \q[44]_i_1 
       (.I0(\q_reg[179]_3 ),
        .I1(\c/PCSrcE2__5 ),
        .I2(\q_reg[10]_0 ),
        .I3(\q_reg[12]_0 ),
        .I4(\q_reg[37]_6 [1]),
        .I5(\q_reg[68]_2 [85]),
        .O(p_0_in[44]));
  LUT5 #(
    .INIT(32'h00008A2A)) 
    \q[44]_i_1__0 
       (.I0(\q_reg[63]_1 [12]),
        .I1(D[0]),
        .I2(\q_reg[4]_1 [5]),
        .I3(\c/PCSrcE2__5 ),
        .I4(\q_reg[4]_1 [6]),
        .O(\q_reg[0]_1 [42]));
  LUT6 #(
    .INIT(64'h0000070000000000)) 
    \q[45]_i_1 
       (.I0(\q_reg[179]_3 ),
        .I1(\c/PCSrcE2__5 ),
        .I2(\q_reg[10]_0 ),
        .I3(\q_reg[12]_0 ),
        .I4(\q_reg[37]_6 [1]),
        .I5(\q_reg[68]_2 [86]),
        .O(p_0_in[45]));
  LUT5 #(
    .INIT(32'h00008A2A)) 
    \q[45]_i_1__0 
       (.I0(\q_reg[63]_1 [13]),
        .I1(D[0]),
        .I2(\q_reg[4]_1 [5]),
        .I3(\c/PCSrcE2__5 ),
        .I4(\q_reg[4]_1 [6]),
        .O(\q_reg[0]_1 [43]));
  LUT6 #(
    .INIT(64'h0000070000000000)) 
    \q[46]_i_1 
       (.I0(\q_reg[179]_3 ),
        .I1(\c/PCSrcE2__5 ),
        .I2(\q_reg[10]_0 ),
        .I3(\q_reg[12]_0 ),
        .I4(\q_reg[37]_6 [1]),
        .I5(\q_reg[68]_2 [87]),
        .O(p_0_in[46]));
  LUT5 #(
    .INIT(32'h00008A2A)) 
    \q[46]_i_1__0 
       (.I0(\q_reg[63]_1 [14]),
        .I1(D[0]),
        .I2(\q_reg[4]_1 [5]),
        .I3(\c/PCSrcE2__5 ),
        .I4(\q_reg[4]_1 [6]),
        .O(\q_reg[0]_1 [44]));
  LUT6 #(
    .INIT(64'h0000070000000000)) 
    \q[47]_i_1 
       (.I0(\q_reg[179]_3 ),
        .I1(\c/PCSrcE2__5 ),
        .I2(\q_reg[10]_0 ),
        .I3(\q_reg[12]_0 ),
        .I4(\q_reg[37]_6 [1]),
        .I5(\q_reg[68]_2 [88]),
        .O(p_0_in[47]));
  LUT5 #(
    .INIT(32'h00008A2A)) 
    \q[47]_i_1__0 
       (.I0(\q_reg[63]_1 [15]),
        .I1(D[0]),
        .I2(\q_reg[4]_1 [5]),
        .I3(\c/PCSrcE2__5 ),
        .I4(\q_reg[4]_1 [6]),
        .O(\q_reg[0]_1 [45]));
  LUT6 #(
    .INIT(64'h0000070000000000)) 
    \q[48]_i_1 
       (.I0(\q_reg[179]_3 ),
        .I1(\c/PCSrcE2__5 ),
        .I2(\q_reg[10]_0 ),
        .I3(\q_reg[12]_0 ),
        .I4(\q_reg[37]_6 [1]),
        .I5(\q_reg[48]_1 ),
        .O(p_0_in[48]));
  LUT5 #(
    .INIT(32'h00008A2A)) 
    \q[48]_i_1__0 
       (.I0(\q_reg[63]_1 [16]),
        .I1(D[0]),
        .I2(\q_reg[4]_1 [5]),
        .I3(\c/PCSrcE2__5 ),
        .I4(\q_reg[4]_1 [6]),
        .O(\q_reg[0]_1 [46]));
  LUT5 #(
    .INIT(32'h00008A2A)) 
    \q[49]_i_1__0 
       (.I0(\q_reg[63]_1 [17]),
        .I1(D[0]),
        .I2(\q_reg[4]_1 [5]),
        .I3(\c/PCSrcE2__5 ),
        .I4(\q_reg[4]_1 [6]),
        .O(\q_reg[0]_1 [47]));
  LUT6 #(
    .INIT(64'h0800080800080808)) 
    \q[4]_i_1 
       (.I0(\q_reg[4]_0 ),
        .I1(\q_reg[12]_0 ),
        .I2(\q_reg[4]_1 [6]),
        .I3(\c/PCSrcE2__5 ),
        .I4(\q_reg[4]_1 [5]),
        .I5(D[0]),
        .O(\q_reg[65]_0 [1]));
  LUT6 #(
    .INIT(64'h0800080800080808)) 
    \q[4]_i_1__0 
       (.I0(\q_reg[68]_2 [64]),
        .I1(\q_reg[12]_0 ),
        .I2(\q_reg[4]_1 [6]),
        .I3(\c/PCSrcE2__5 ),
        .I4(\q_reg[4]_1 [5]),
        .I5(D[0]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'hF0CCF0CCF0CCAAAA)) 
    \q[4]_i_1__1 
       (.I0(PCPlus4F[1]),
        .I1(D[108]),
        .I2(BranchTargetE[4]),
        .I3(ImmSrcb1E),
        .I4(\q_reg[0]_0 ),
        .I5(\q_reg[10]_0 ),
        .O(\q_reg[3]_0 [4]));
  LUT5 #(
    .INIT(32'h00008A2A)) 
    \q[4]_i_1__2 
       (.I0(PCPlus4F[1]),
        .I1(D[0]),
        .I2(\q_reg[4]_1 [5]),
        .I3(\c/PCSrcE2__5 ),
        .I4(\q_reg[4]_1 [6]),
        .O(\q_reg[0]_1 [2]));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \q[4]_i_1__3 
       (.I0(Q[1]),
        .I1(opb5E),
        .I2(BranchTargetE[1]),
        .O(D[4]));
  LUT5 #(
    .INIT(32'h00008A2A)) 
    \q[50]_i_1__0 
       (.I0(\q_reg[63]_1 [18]),
        .I1(D[0]),
        .I2(\q_reg[4]_1 [5]),
        .I3(\c/PCSrcE2__5 ),
        .I4(\q_reg[4]_1 [6]),
        .O(\q_reg[0]_1 [48]));
  LUT5 #(
    .INIT(32'h00008A2A)) 
    \q[51]_i_1__0 
       (.I0(\q_reg[63]_1 [19]),
        .I1(D[0]),
        .I2(\q_reg[4]_1 [5]),
        .I3(\c/PCSrcE2__5 ),
        .I4(\q_reg[4]_1 [6]),
        .O(\q_reg[0]_1 [49]));
  LUT5 #(
    .INIT(32'h00008A2A)) 
    \q[52]_i_1__0 
       (.I0(\q_reg[63]_1 [20]),
        .I1(D[0]),
        .I2(\q_reg[4]_1 [5]),
        .I3(\c/PCSrcE2__5 ),
        .I4(\q_reg[4]_1 [6]),
        .O(\q_reg[0]_1 [50]));
  LUT5 #(
    .INIT(32'h00008A2A)) 
    \q[53]_i_1__0 
       (.I0(\q_reg[63]_1 [21]),
        .I1(D[0]),
        .I2(\q_reg[4]_1 [5]),
        .I3(\c/PCSrcE2__5 ),
        .I4(\q_reg[4]_1 [6]),
        .O(\q_reg[0]_1 [51]));
  LUT5 #(
    .INIT(32'h00008A2A)) 
    \q[54]_i_1__0 
       (.I0(\q_reg[63]_1 [22]),
        .I1(D[0]),
        .I2(\q_reg[4]_1 [5]),
        .I3(\c/PCSrcE2__5 ),
        .I4(\q_reg[4]_1 [6]),
        .O(\q_reg[0]_1 [52]));
  LUT5 #(
    .INIT(32'h00008A2A)) 
    \q[55]_i_1__0 
       (.I0(\q_reg[63]_1 [23]),
        .I1(D[0]),
        .I2(\q_reg[4]_1 [5]),
        .I3(\c/PCSrcE2__5 ),
        .I4(\q_reg[4]_1 [6]),
        .O(\q_reg[0]_1 [53]));
  LUT5 #(
    .INIT(32'h00008A2A)) 
    \q[56]_i_1__0 
       (.I0(\q_reg[63]_1 [24]),
        .I1(D[0]),
        .I2(\q_reg[4]_1 [5]),
        .I3(\c/PCSrcE2__5 ),
        .I4(\q_reg[4]_1 [6]),
        .O(\q_reg[0]_1 [54]));
  LUT5 #(
    .INIT(32'h00008A2A)) 
    \q[57]_i_1__0 
       (.I0(\q_reg[63]_1 [25]),
        .I1(D[0]),
        .I2(\q_reg[4]_1 [5]),
        .I3(\c/PCSrcE2__5 ),
        .I4(\q_reg[4]_1 [6]),
        .O(\q_reg[0]_1 [55]));
  LUT5 #(
    .INIT(32'h00008A2A)) 
    \q[58]_i_1__0 
       (.I0(\q_reg[63]_1 [26]),
        .I1(D[0]),
        .I2(\q_reg[4]_1 [5]),
        .I3(\c/PCSrcE2__5 ),
        .I4(\q_reg[4]_1 [6]),
        .O(\q_reg[0]_1 [56]));
  LUT5 #(
    .INIT(32'h00008A2A)) 
    \q[59]_i_1__0 
       (.I0(\q_reg[63]_1 [27]),
        .I1(D[0]),
        .I2(\q_reg[4]_1 [5]),
        .I3(\c/PCSrcE2__5 ),
        .I4(\q_reg[4]_1 [6]),
        .O(\q_reg[0]_1 [57]));
  LUT6 #(
    .INIT(64'hF0CCF0CCF0CCAAAA)) 
    \q[5]_i_1__0 
       (.I0(PCPlus4F[2]),
        .I1(D[109]),
        .I2(BranchTargetE[5]),
        .I3(ImmSrcb1E),
        .I4(\q_reg[0]_0 ),
        .I5(\q_reg[10]_0 ),
        .O(\q_reg[3]_0 [5]));
  LUT5 #(
    .INIT(32'h00008A2A)) 
    \q[5]_i_1__1 
       (.I0(PCPlus4F[2]),
        .I1(D[0]),
        .I2(\q_reg[4]_1 [5]),
        .I3(\c/PCSrcE2__5 ),
        .I4(\q_reg[4]_1 [6]),
        .O(\q_reg[0]_1 [3]));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \q[5]_i_1__2 
       (.I0(Q[2]),
        .I1(opb5E),
        .I2(BranchTargetE[2]),
        .O(D[5]));
  LUT5 #(
    .INIT(32'h00008A2A)) 
    \q[60]_i_1__0 
       (.I0(\q_reg[63]_1 [28]),
        .I1(D[0]),
        .I2(\q_reg[4]_1 [5]),
        .I3(\c/PCSrcE2__5 ),
        .I4(\q_reg[4]_1 [6]),
        .O(\q_reg[0]_1 [58]));
  LUT5 #(
    .INIT(32'h00008A2A)) 
    \q[61]_i_1__0 
       (.I0(\q_reg[63]_1 [29]),
        .I1(D[0]),
        .I2(\q_reg[4]_1 [5]),
        .I3(\c/PCSrcE2__5 ),
        .I4(\q_reg[4]_1 [6]),
        .O(\q_reg[0]_1 [59]));
  LUT5 #(
    .INIT(32'h00008A2A)) 
    \q[62]_i_1__0 
       (.I0(\q_reg[63]_1 [30]),
        .I1(D[0]),
        .I2(\q_reg[4]_1 [5]),
        .I3(\c/PCSrcE2__5 ),
        .I4(\q_reg[4]_1 [6]),
        .O(\q_reg[0]_1 [60]));
  LUT5 #(
    .INIT(32'h00008A2A)) 
    \q[63]_i_1__0 
       (.I0(\q_reg[63]_1 [31]),
        .I1(D[0]),
        .I2(\q_reg[4]_1 [5]),
        .I3(\c/PCSrcE2__5 ),
        .I4(\q_reg[4]_1 [6]),
        .O(\q_reg[0]_1 [61]));
  LUT5 #(
    .INIT(32'h00008A2A)) 
    \q[65]_i_1__0 
       (.I0(InstrF[0]),
        .I1(D[0]),
        .I2(\q_reg[4]_1 [5]),
        .I3(\c/PCSrcE2__5 ),
        .I4(\q_reg[4]_1 [6]),
        .O(\q_reg[0]_1 [62]));
  LUT5 #(
    .INIT(32'h00008A2A)) 
    \q[66]_i_1__0 
       (.I0(InstrF[1]),
        .I1(D[0]),
        .I2(\q_reg[4]_1 [5]),
        .I3(\c/PCSrcE2__5 ),
        .I4(\q_reg[4]_1 [6]),
        .O(\q_reg[0]_1 [63]));
  LUT5 #(
    .INIT(32'h00008A2A)) 
    \q[67]_i_1__0 
       (.I0(InstrF[2]),
        .I1(D[0]),
        .I2(\q_reg[4]_1 [5]),
        .I3(\c/PCSrcE2__5 ),
        .I4(\q_reg[4]_1 [6]),
        .O(\q_reg[0]_1 [64]));
  LUT6 #(
    .INIT(64'h0800080800080808)) 
    \q[68]_i_1 
       (.I0(\q_reg[68]_2 [89]),
        .I1(\q_reg[12]_0 ),
        .I2(\q_reg[4]_1 [6]),
        .I3(\c/PCSrcE2__5 ),
        .I4(\q_reg[4]_1 [5]),
        .I5(D[0]),
        .O(p_0_in[68]));
  LUT5 #(
    .INIT(32'h00008A2A)) 
    \q[68]_i_1__0 
       (.I0(InstrF[3]),
        .I1(D[0]),
        .I2(\q_reg[4]_1 [5]),
        .I3(\c/PCSrcE2__5 ),
        .I4(\q_reg[4]_1 [6]),
        .O(\q_reg[0]_1 [65]));
  LUT6 #(
    .INIT(64'h0800080800080808)) 
    \q[69]_i_1 
       (.I0(\q_reg[68]_2 [65]),
        .I1(\q_reg[12]_0 ),
        .I2(\q_reg[4]_1 [6]),
        .I3(\c/PCSrcE2__5 ),
        .I4(\q_reg[4]_1 [5]),
        .I5(D[0]),
        .O(p_0_in[69]));
  LUT5 #(
    .INIT(32'h00008A2A)) 
    \q[69]_i_1__0 
       (.I0(InstrF[4]),
        .I1(D[0]),
        .I2(\q_reg[4]_1 [5]),
        .I3(\c/PCSrcE2__5 ),
        .I4(\q_reg[4]_1 [6]),
        .O(\q_reg[0]_1 [66]));
  LUT6 #(
    .INIT(64'hF0CCF0CCF0CCAAAA)) 
    \q[6]_i_1__0 
       (.I0(PCPlus4F[3]),
        .I1(D[110]),
        .I2(BranchTargetE[6]),
        .I3(ImmSrcb1E),
        .I4(\q_reg[0]_0 ),
        .I5(\q_reg[10]_0 ),
        .O(\q_reg[3]_0 [6]));
  LUT5 #(
    .INIT(32'h00008A2A)) 
    \q[6]_i_1__1 
       (.I0(PCPlus4F[3]),
        .I1(D[0]),
        .I2(\q_reg[4]_1 [5]),
        .I3(\c/PCSrcE2__5 ),
        .I4(\q_reg[4]_1 [6]),
        .O(\q_reg[0]_1 [4]));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \q[6]_i_1__2 
       (.I0(Q[3]),
        .I1(opb5E),
        .I2(BranchTargetE[3]),
        .O(D[6]));
  LUT6 #(
    .INIT(64'h0800080800080808)) 
    \q[70]_i_1 
       (.I0(\q_reg[68]_2 [66]),
        .I1(\q_reg[12]_0 ),
        .I2(\q_reg[4]_1 [6]),
        .I3(\c/PCSrcE2__5 ),
        .I4(\q_reg[4]_1 [5]),
        .I5(D[0]),
        .O(p_0_in[70]));
  LUT5 #(
    .INIT(32'h00008A2A)) 
    \q[70]_i_1__0 
       (.I0(InstrF[5]),
        .I1(D[0]),
        .I2(\q_reg[4]_1 [5]),
        .I3(\c/PCSrcE2__5 ),
        .I4(\q_reg[4]_1 [6]),
        .O(\q_reg[0]_1 [67]));
  LUT6 #(
    .INIT(64'h0800080800080808)) 
    \q[71]_i_1 
       (.I0(\q_reg[68]_2 [67]),
        .I1(\q_reg[12]_0 ),
        .I2(\q_reg[4]_1 [6]),
        .I3(\c/PCSrcE2__5 ),
        .I4(\q_reg[4]_1 [5]),
        .I5(D[0]),
        .O(p_0_in[71]));
  LUT5 #(
    .INIT(32'h00008A2A)) 
    \q[71]_i_1__0 
       (.I0(InstrF[6]),
        .I1(D[0]),
        .I2(\q_reg[4]_1 [5]),
        .I3(\c/PCSrcE2__5 ),
        .I4(\q_reg[4]_1 [6]),
        .O(\q_reg[0]_1 [68]));
  LUT6 #(
    .INIT(64'h0800080800080808)) 
    \q[72]_i_1 
       (.I0(\q_reg[68]_2 [68]),
        .I1(\q_reg[12]_0 ),
        .I2(\q_reg[4]_1 [6]),
        .I3(\c/PCSrcE2__5 ),
        .I4(\q_reg[4]_1 [5]),
        .I5(D[0]),
        .O(p_0_in[72]));
  LUT5 #(
    .INIT(32'h00008A2A)) 
    \q[72]_i_1__0 
       (.I0(InstrF[7]),
        .I1(D[0]),
        .I2(\q_reg[4]_1 [5]),
        .I3(\c/PCSrcE2__5 ),
        .I4(\q_reg[4]_1 [6]),
        .O(\q_reg[0]_1 [69]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \q[72]_i_1__1 
       (.I0(\q[79]_i_2_n_0 ),
        .I1(RD2E[0]),
        .I2(\q[79]_i_3_n_0 ),
        .I3(ResultW[0]),
        .I4(ForwardBE),
        .I5(\q_reg[103]_0 [5]),
        .O(D[72]));
  LUT6 #(
    .INIT(64'h0800080800080808)) 
    \q[73]_i_1 
       (.I0(\q_reg[68]_2 [69]),
        .I1(\q_reg[12]_0 ),
        .I2(\q_reg[4]_1 [6]),
        .I3(\c/PCSrcE2__5 ),
        .I4(\q_reg[4]_1 [5]),
        .I5(D[0]),
        .O(p_0_in[73]));
  LUT5 #(
    .INIT(32'h00008A2A)) 
    \q[73]_i_1__0 
       (.I0(InstrF[8]),
        .I1(D[0]),
        .I2(\q_reg[4]_1 [5]),
        .I3(\c/PCSrcE2__5 ),
        .I4(\q_reg[4]_1 [6]),
        .O(\q_reg[0]_1 [70]));
  LUT6 #(
    .INIT(64'hFFCCE4CC00CCE4CC)) 
    \q[73]_i_1__1 
       (.I0(\q[76]_i_2_n_0 ),
        .I1(RD2E[1]),
        .I2(ResultW[1]),
        .I3(\q[76]_i_3_n_0 ),
        .I4(\hu/ForwardBE10_out ),
        .I5(\q_reg[103]_0 [6]),
        .O(D[73]));
  LUT6 #(
    .INIT(64'h0800080800080808)) 
    \q[74]_i_1 
       (.I0(\q_reg[68]_2 [78]),
        .I1(\q_reg[12]_0 ),
        .I2(\q_reg[4]_1 [6]),
        .I3(\c/PCSrcE2__5 ),
        .I4(\q_reg[4]_1 [5]),
        .I5(D[0]),
        .O(p_0_in[74]));
  LUT5 #(
    .INIT(32'h00008A2A)) 
    \q[74]_i_1__0 
       (.I0(InstrF[9]),
        .I1(D[0]),
        .I2(\q_reg[4]_1 [5]),
        .I3(\c/PCSrcE2__5 ),
        .I4(\q_reg[4]_1 [6]),
        .O(\q_reg[0]_1 [71]));
  LUT6 #(
    .INIT(64'hFFCCE4CC00CCE4CC)) 
    \q[74]_i_1__1 
       (.I0(\q[76]_i_2_n_0 ),
        .I1(RD2E[2]),
        .I2(ResultW[2]),
        .I3(\q[76]_i_3_n_0 ),
        .I4(\hu/ForwardBE10_out ),
        .I5(\q_reg[103]_0 [7]),
        .O(D[74]));
  LUT6 #(
    .INIT(64'h0800080800080808)) 
    \q[75]_i_1 
       (.I0(\q_reg[68]_2 [79]),
        .I1(\q_reg[12]_0 ),
        .I2(\q_reg[4]_1 [6]),
        .I3(\c/PCSrcE2__5 ),
        .I4(\q_reg[4]_1 [5]),
        .I5(D[0]),
        .O(p_0_in[75]));
  LUT5 #(
    .INIT(32'h00008A2A)) 
    \q[75]_i_1__0 
       (.I0(InstrF[10]),
        .I1(D[0]),
        .I2(\q_reg[4]_1 [5]),
        .I3(\c/PCSrcE2__5 ),
        .I4(\q_reg[4]_1 [6]),
        .O(\q_reg[0]_1 [72]));
  LUT6 #(
    .INIT(64'hFFCCE4CC00CCE4CC)) 
    \q[75]_i_1__1 
       (.I0(\q[76]_i_2_n_0 ),
        .I1(RD2E[3]),
        .I2(ResultW[3]),
        .I3(\q[76]_i_3_n_0 ),
        .I4(\hu/ForwardBE10_out ),
        .I5(\q_reg[103]_0 [8]),
        .O(D[75]));
  LUT6 #(
    .INIT(64'h0800080800080808)) 
    \q[76]_i_1 
       (.I0(\q_reg[68]_2 [80]),
        .I1(\q_reg[12]_0 ),
        .I2(\q_reg[4]_1 [6]),
        .I3(\c/PCSrcE2__5 ),
        .I4(\q_reg[4]_1 [5]),
        .I5(D[0]),
        .O(p_0_in[76]));
  LUT5 #(
    .INIT(32'h00008A2A)) 
    \q[76]_i_1__0 
       (.I0(InstrF[11]),
        .I1(D[0]),
        .I2(\q_reg[4]_1 [5]),
        .I3(\c/PCSrcE2__5 ),
        .I4(\q_reg[4]_1 [6]),
        .O(\q_reg[0]_1 [73]));
  LUT6 #(
    .INIT(64'hFFCCE4CC00CCE4CC)) 
    \q[76]_i_1__1 
       (.I0(\q[76]_i_2_n_0 ),
        .I1(RD2E[4]),
        .I2(ResultW[4]),
        .I3(\q[76]_i_3_n_0 ),
        .I4(\hu/ForwardBE10_out ),
        .I5(\q_reg[103]_0 [9]),
        .O(D[76]));
  LUT5 #(
    .INIT(32'h80000080)) 
    \q[76]_i_2 
       (.I0(\q[76]_i_5_n_0 ),
        .I1(\q[76]_i_6_n_0 ),
        .I2(\q_reg[76]_0 ),
        .I3(sum__0_carry_i_11_0[1]),
        .I4(Rs2E[1]),
        .O(\q[76]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \q[76]_i_3 
       (.I0(Rs2E[4]),
        .I1(Rs2E[0]),
        .I2(Rs2E[1]),
        .I3(Rs2E[2]),
        .I4(Rs2E[3]),
        .O(\q[76]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h80000080)) 
    \q[76]_i_4 
       (.I0(\q[76]_i_7_n_0 ),
        .I1(\q[76]_i_8_n_0 ),
        .I2(\q_reg[76]_1 ),
        .I3(\q_reg[103]_0 [1]),
        .I4(Rs2E[1]),
        .O(\hu/ForwardBE10_out ));
  LUT4 #(
    .INIT(16'h9009)) 
    \q[76]_i_5 
       (.I0(Rs2E[4]),
        .I1(sum__0_carry_i_11_0[4]),
        .I2(Rs2E[0]),
        .I3(sum__0_carry_i_11_0[0]),
        .O(\q[76]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT4 #(
    .INIT(16'h9009)) 
    \q[76]_i_6 
       (.I0(Rs2E[2]),
        .I1(sum__0_carry_i_11_0[2]),
        .I2(Rs2E[3]),
        .I3(sum__0_carry_i_11_0[3]),
        .O(\q[76]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \q[76]_i_7 
       (.I0(Rs2E[4]),
        .I1(\q_reg[103]_0 [4]),
        .I2(Rs2E[0]),
        .I3(\q_reg[103]_0 [0]),
        .O(\q[76]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \q[76]_i_8 
       (.I0(Rs2E[2]),
        .I1(\q_reg[103]_0 [2]),
        .I2(Rs2E[3]),
        .I3(\q_reg[103]_0 [3]),
        .O(\q[76]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0800080800080808)) 
    \q[77]_i_1 
       (.I0(\q_reg[68]_2 [81]),
        .I1(\q_reg[12]_0 ),
        .I2(\q_reg[4]_1 [6]),
        .I3(\c/PCSrcE2__5 ),
        .I4(\q_reg[4]_1 [5]),
        .I5(D[0]),
        .O(p_0_in[77]));
  LUT5 #(
    .INIT(32'h00008A2A)) 
    \q[77]_i_1__0 
       (.I0(InstrF[12]),
        .I1(D[0]),
        .I2(\q_reg[4]_1 [5]),
        .I3(\c/PCSrcE2__5 ),
        .I4(\q_reg[4]_1 [6]),
        .O(\q_reg[0]_1 [74]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \q[77]_i_1__1 
       (.I0(\q[79]_i_2_n_0 ),
        .I1(RD2E[5]),
        .I2(\q[79]_i_3_n_0 ),
        .I3(ResultW[5]),
        .I4(ForwardBE),
        .I5(\q_reg[103]_0 [10]),
        .O(D[77]));
  LUT6 #(
    .INIT(64'h0800080800080808)) 
    \q[78]_i_1 
       (.I0(\q_reg[68]_2 [82]),
        .I1(\q_reg[12]_0 ),
        .I2(\q_reg[4]_1 [6]),
        .I3(\c/PCSrcE2__5 ),
        .I4(\q_reg[4]_1 [5]),
        .I5(D[0]),
        .O(p_0_in[78]));
  LUT5 #(
    .INIT(32'h00008A2A)) 
    \q[78]_i_1__0 
       (.I0(InstrF[13]),
        .I1(D[0]),
        .I2(\q_reg[4]_1 [5]),
        .I3(\c/PCSrcE2__5 ),
        .I4(\q_reg[4]_1 [6]),
        .O(\q_reg[0]_1 [75]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \q[78]_i_1__1 
       (.I0(\q[79]_i_2_n_0 ),
        .I1(RD2E[6]),
        .I2(\q[79]_i_3_n_0 ),
        .I3(ResultW[6]),
        .I4(ForwardBE),
        .I5(\q_reg[103]_0 [11]),
        .O(D[78]));
  LUT6 #(
    .INIT(64'h0800080800080808)) 
    \q[79]_i_1 
       (.I0(\q_reg[68]_2 [73]),
        .I1(\q_reg[12]_0 ),
        .I2(\q_reg[4]_1 [6]),
        .I3(\c/PCSrcE2__5 ),
        .I4(\q_reg[4]_1 [5]),
        .I5(D[0]),
        .O(p_0_in[79]));
  LUT5 #(
    .INIT(32'h00008A2A)) 
    \q[79]_i_1__0 
       (.I0(InstrF[14]),
        .I1(D[0]),
        .I2(\q_reg[4]_1 [5]),
        .I3(\c/PCSrcE2__5 ),
        .I4(\q_reg[4]_1 [6]),
        .O(\q_reg[0]_1 [76]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \q[79]_i_1__1 
       (.I0(\q[79]_i_2_n_0 ),
        .I1(RD2E[7]),
        .I2(\q[79]_i_3_n_0 ),
        .I3(ResultW[7]),
        .I4(ForwardBE),
        .I5(\q_reg[103]_0 [12]),
        .O(D[79]));
  LUT6 #(
    .INIT(64'h14555555FFFFFFFF)) 
    \q[79]_i_2 
       (.I0(\hu/ForwardBE10_out ),
        .I1(Rs2E[1]),
        .I2(sum__0_carry_i_11_0[1]),
        .I3(\q_reg[76]_0 ),
        .I4(\q[79]_i_5_n_0 ),
        .I5(\q[76]_i_3_n_0 ),
        .O(\q[79]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000900000000000)) 
    \q[79]_i_3 
       (.I0(Rs2E[1]),
        .I1(sum__0_carry_i_11_0[1]),
        .I2(\q_reg[76]_0 ),
        .I3(\q[79]_i_5_n_0 ),
        .I4(\hu/ForwardBE10_out ),
        .I5(\q[76]_i_3_n_0 ),
        .O(\q[79]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \q[79]_i_4 
       (.I0(Rs2E[3]),
        .I1(Rs2E[2]),
        .I2(Rs2E[1]),
        .I3(Rs2E[0]),
        .I4(Rs2E[4]),
        .I5(\hu/ForwardBE10_out ),
        .O(ForwardBE));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT5 #(
    .INIT(32'h90090000)) 
    \q[79]_i_5 
       (.I0(sum__0_carry_i_11_0[3]),
        .I1(Rs2E[3]),
        .I2(sum__0_carry_i_11_0[2]),
        .I3(Rs2E[2]),
        .I4(\q[76]_i_5_n_0 ),
        .O(\q[79]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0700000000000000)) 
    \q[7]_i_1 
       (.I0(\q_reg[179]_3 ),
        .I1(\c/PCSrcE2__5 ),
        .I2(\q_reg[10]_0 ),
        .I3(\q_reg[12]_0 ),
        .I4(ALUOpD),
        .I5(\q_reg[7]_0 ),
        .O(\q_reg[65]_0 [2]));
  LUT6 #(
    .INIT(64'h0800080800080808)) 
    \q[7]_i_1__0 
       (.I0(\q_reg[68]_2 [0]),
        .I1(\q_reg[12]_0 ),
        .I2(\q_reg[4]_1 [6]),
        .I3(\c/PCSrcE2__5 ),
        .I4(\q_reg[4]_1 [5]),
        .I5(D[0]),
        .O(p_0_in[7]));
  LUT6 #(
    .INIT(64'hF0CCF0CCF0CCAAAA)) 
    \q[7]_i_1__1 
       (.I0(PCPlus4F[4]),
        .I1(D[111]),
        .I2(BranchTargetE[7]),
        .I3(ImmSrcb1E),
        .I4(\q_reg[0]_0 ),
        .I5(\q_reg[10]_0 ),
        .O(\q_reg[3]_0 [7]));
  LUT5 #(
    .INIT(32'h00008A2A)) 
    \q[7]_i_1__2 
       (.I0(PCPlus4F[4]),
        .I1(D[0]),
        .I2(\q_reg[4]_1 [5]),
        .I3(\c/PCSrcE2__5 ),
        .I4(\q_reg[4]_1 [6]),
        .O(\q_reg[0]_1 [5]));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \q[7]_i_1__3 
       (.I0(Q[4]),
        .I1(opb5E),
        .I2(BranchTargetE[4]),
        .O(D[7]));
  LUT6 #(
    .INIT(64'h0800080800080808)) 
    \q[80]_i_1 
       (.I0(\q_reg[68]_2 [74]),
        .I1(\q_reg[12]_0 ),
        .I2(\q_reg[4]_1 [6]),
        .I3(\c/PCSrcE2__5 ),
        .I4(\q_reg[4]_1 [5]),
        .I5(D[0]),
        .O(p_0_in[80]));
  LUT5 #(
    .INIT(32'h00008A2A)) 
    \q[80]_i_1__0 
       (.I0(InstrF[15]),
        .I1(D[0]),
        .I2(\q_reg[4]_1 [5]),
        .I3(\c/PCSrcE2__5 ),
        .I4(\q_reg[4]_1 [6]),
        .O(\q_reg[0]_1 [77]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \q[80]_i_1__1 
       (.I0(\q[79]_i_2_n_0 ),
        .I1(RD2E[8]),
        .I2(\q[79]_i_3_n_0 ),
        .I3(ResultW[8]),
        .I4(ForwardBE),
        .I5(\q_reg[103]_0 [13]),
        .O(D[80]));
  LUT6 #(
    .INIT(64'h0800080800080808)) 
    \q[81]_i_1 
       (.I0(\q_reg[68]_2 [75]),
        .I1(\q_reg[12]_0 ),
        .I2(\q_reg[4]_1 [6]),
        .I3(\c/PCSrcE2__5 ),
        .I4(\q_reg[4]_1 [5]),
        .I5(D[0]),
        .O(p_0_in[81]));
  LUT5 #(
    .INIT(32'h00008A2A)) 
    \q[81]_i_1__0 
       (.I0(InstrF[16]),
        .I1(D[0]),
        .I2(\q_reg[4]_1 [5]),
        .I3(\c/PCSrcE2__5 ),
        .I4(\q_reg[4]_1 [6]),
        .O(\q_reg[0]_1 [78]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \q[81]_i_1__1 
       (.I0(\q[79]_i_2_n_0 ),
        .I1(RD2E[9]),
        .I2(\q[79]_i_3_n_0 ),
        .I3(ResultW[9]),
        .I4(ForwardBE),
        .I5(\q_reg[103]_0 [14]),
        .O(D[81]));
  LUT6 #(
    .INIT(64'h0800080800080808)) 
    \q[82]_i_1 
       (.I0(\q_reg[68]_2 [76]),
        .I1(\q_reg[12]_0 ),
        .I2(\q_reg[4]_1 [6]),
        .I3(\c/PCSrcE2__5 ),
        .I4(\q_reg[4]_1 [5]),
        .I5(D[0]),
        .O(p_0_in[82]));
  LUT5 #(
    .INIT(32'h00008A2A)) 
    \q[82]_i_1__0 
       (.I0(InstrF[17]),
        .I1(D[0]),
        .I2(\q_reg[4]_1 [5]),
        .I3(\c/PCSrcE2__5 ),
        .I4(\q_reg[4]_1 [6]),
        .O(\q_reg[0]_1 [79]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \q[82]_i_1__1 
       (.I0(\q[79]_i_2_n_0 ),
        .I1(RD2E[10]),
        .I2(\q[79]_i_3_n_0 ),
        .I3(ResultW[10]),
        .I4(ForwardBE),
        .I5(\q_reg[103]_0 [15]),
        .O(D[82]));
  LUT6 #(
    .INIT(64'h0800080800080808)) 
    \q[83]_i_1 
       (.I0(\q_reg[68]_2 [77]),
        .I1(\q_reg[12]_0 ),
        .I2(\q_reg[4]_1 [6]),
        .I3(\c/PCSrcE2__5 ),
        .I4(\q_reg[4]_1 [5]),
        .I5(D[0]),
        .O(p_0_in[83]));
  LUT5 #(
    .INIT(32'h00008A2A)) 
    \q[83]_i_1__0 
       (.I0(InstrF[18]),
        .I1(D[0]),
        .I2(\q_reg[4]_1 [5]),
        .I3(\c/PCSrcE2__5 ),
        .I4(\q_reg[4]_1 [6]),
        .O(\q_reg[0]_1 [80]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \q[83]_i_1__1 
       (.I0(\q[79]_i_2_n_0 ),
        .I1(RD2E[11]),
        .I2(\q[79]_i_3_n_0 ),
        .I3(ResultW[11]),
        .I4(ForwardBE),
        .I5(\q_reg[103]_0 [16]),
        .O(D[83]));
  LUT6 #(
    .INIT(64'h0800080800080808)) 
    \q[84]_i_1 
       (.I0(\q_reg[68]_2 [30]),
        .I1(\q_reg[12]_0 ),
        .I2(\q_reg[4]_1 [6]),
        .I3(\c/PCSrcE2__5 ),
        .I4(\q_reg[4]_1 [5]),
        .I5(D[0]),
        .O(p_0_in[84]));
  LUT5 #(
    .INIT(32'h00008A2A)) 
    \q[84]_i_1__0 
       (.I0(InstrF[19]),
        .I1(D[0]),
        .I2(\q_reg[4]_1 [5]),
        .I3(\c/PCSrcE2__5 ),
        .I4(\q_reg[4]_1 [6]),
        .O(\q_reg[0]_1 [81]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \q[84]_i_1__1 
       (.I0(\q[79]_i_2_n_0 ),
        .I1(RD2E[12]),
        .I2(\q[79]_i_3_n_0 ),
        .I3(ResultW[12]),
        .I4(ForwardBE),
        .I5(\q_reg[103]_0 [17]),
        .O(D[84]));
  LUT6 #(
    .INIT(64'h0800080800080808)) 
    \q[85]_i_1 
       (.I0(\q_reg[68]_2 [31]),
        .I1(\q_reg[12]_0 ),
        .I2(\q_reg[4]_1 [6]),
        .I3(\c/PCSrcE2__5 ),
        .I4(\q_reg[4]_1 [5]),
        .I5(D[0]),
        .O(p_0_in[85]));
  LUT5 #(
    .INIT(32'h00008A2A)) 
    \q[85]_i_1__0 
       (.I0(InstrF[20]),
        .I1(D[0]),
        .I2(\q_reg[4]_1 [5]),
        .I3(\c/PCSrcE2__5 ),
        .I4(\q_reg[4]_1 [6]),
        .O(\q_reg[0]_1 [82]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \q[85]_i_1__1 
       (.I0(\q[79]_i_2_n_0 ),
        .I1(RD2E[13]),
        .I2(\q[79]_i_3_n_0 ),
        .I3(ResultW[13]),
        .I4(ForwardBE),
        .I5(\q_reg[103]_0 [18]),
        .O(D[85]));
  LUT6 #(
    .INIT(64'h0800080800080808)) 
    \q[86]_i_1 
       (.I0(\q_reg[68]_2 [32]),
        .I1(\q_reg[12]_0 ),
        .I2(\q_reg[4]_1 [6]),
        .I3(\c/PCSrcE2__5 ),
        .I4(\q_reg[4]_1 [5]),
        .I5(D[0]),
        .O(p_0_in[86]));
  LUT5 #(
    .INIT(32'h00008A2A)) 
    \q[86]_i_1__0 
       (.I0(InstrF[21]),
        .I1(D[0]),
        .I2(\q_reg[4]_1 [5]),
        .I3(\c/PCSrcE2__5 ),
        .I4(\q_reg[4]_1 [6]),
        .O(\q_reg[0]_1 [83]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \q[86]_i_1__1 
       (.I0(\q[79]_i_2_n_0 ),
        .I1(RD2E[14]),
        .I2(\q[79]_i_3_n_0 ),
        .I3(ResultW[14]),
        .I4(ForwardBE),
        .I5(\q_reg[103]_0 [19]),
        .O(D[86]));
  LUT6 #(
    .INIT(64'h0800080800080808)) 
    \q[87]_i_1 
       (.I0(\q_reg[68]_2 [33]),
        .I1(\q_reg[12]_0 ),
        .I2(\q_reg[4]_1 [6]),
        .I3(\c/PCSrcE2__5 ),
        .I4(\q_reg[4]_1 [5]),
        .I5(D[0]),
        .O(p_0_in[87]));
  LUT5 #(
    .INIT(32'h00008A2A)) 
    \q[87]_i_1__0 
       (.I0(InstrF[22]),
        .I1(D[0]),
        .I2(\q_reg[4]_1 [5]),
        .I3(\c/PCSrcE2__5 ),
        .I4(\q_reg[4]_1 [6]),
        .O(\q_reg[0]_1 [84]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \q[87]_i_1__1 
       (.I0(\q[79]_i_2_n_0 ),
        .I1(RD2E[15]),
        .I2(\q[79]_i_3_n_0 ),
        .I3(ResultW[15]),
        .I4(ForwardBE),
        .I5(\q_reg[103]_0 [20]),
        .O(D[87]));
  LUT6 #(
    .INIT(64'h0800080800080808)) 
    \q[88]_i_1 
       (.I0(\q_reg[68]_2 [34]),
        .I1(\q_reg[12]_0 ),
        .I2(\q_reg[4]_1 [6]),
        .I3(\c/PCSrcE2__5 ),
        .I4(\q_reg[4]_1 [5]),
        .I5(D[0]),
        .O(p_0_in[88]));
  LUT5 #(
    .INIT(32'h00008A2A)) 
    \q[88]_i_1__0 
       (.I0(InstrF[23]),
        .I1(D[0]),
        .I2(\q_reg[4]_1 [5]),
        .I3(\c/PCSrcE2__5 ),
        .I4(\q_reg[4]_1 [6]),
        .O(\q_reg[0]_1 [85]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \q[88]_i_1__1 
       (.I0(\q[79]_i_2_n_0 ),
        .I1(RD2E[16]),
        .I2(\q[79]_i_3_n_0 ),
        .I3(ResultW[16]),
        .I4(ForwardBE),
        .I5(\q_reg[103]_0 [21]),
        .O(D[88]));
  LUT6 #(
    .INIT(64'h0800080800080808)) 
    \q[89]_i_1 
       (.I0(\q_reg[68]_2 [35]),
        .I1(\q_reg[12]_0 ),
        .I2(\q_reg[4]_1 [6]),
        .I3(\c/PCSrcE2__5 ),
        .I4(\q_reg[4]_1 [5]),
        .I5(D[0]),
        .O(p_0_in[89]));
  LUT5 #(
    .INIT(32'h00008A2A)) 
    \q[89]_i_1__0 
       (.I0(InstrF[24]),
        .I1(D[0]),
        .I2(\q_reg[4]_1 [5]),
        .I3(\c/PCSrcE2__5 ),
        .I4(\q_reg[4]_1 [6]),
        .O(\q_reg[0]_1 [86]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \q[89]_i_1__1 
       (.I0(\q[79]_i_2_n_0 ),
        .I1(RD2E[17]),
        .I2(\q[79]_i_3_n_0 ),
        .I3(ResultW[17]),
        .I4(ForwardBE),
        .I5(\q_reg[103]_0 [22]),
        .O(D[89]));
  LUT6 #(
    .INIT(64'h002A000000000000)) 
    \q[8]_i_1 
       (.I0(\q_reg[8]_0 ),
        .I1(\q_reg[179]_3 ),
        .I2(\c/PCSrcE2__5 ),
        .I3(\q_reg[10]_0 ),
        .I4(\q_reg[12]_0 ),
        .I5(ALUOpD),
        .O(\q_reg[65]_0 [3]));
  LUT6 #(
    .INIT(64'h0800080800080808)) 
    \q[8]_i_1__0 
       (.I0(\q_reg[68]_2 [1]),
        .I1(\q_reg[12]_0 ),
        .I2(\q_reg[4]_1 [6]),
        .I3(\c/PCSrcE2__5 ),
        .I4(\q_reg[4]_1 [5]),
        .I5(D[0]),
        .O(p_0_in[8]));
  LUT6 #(
    .INIT(64'hF0CCF0CCF0CCAAAA)) 
    \q[8]_i_1__1 
       (.I0(PCPlus4F[5]),
        .I1(D[112]),
        .I2(BranchTargetE[8]),
        .I3(ImmSrcb1E),
        .I4(\q_reg[0]_0 ),
        .I5(\q_reg[10]_0 ),
        .O(\q_reg[3]_0 [8]));
  LUT5 #(
    .INIT(32'h00008A2A)) 
    \q[8]_i_1__2 
       (.I0(PCPlus4F[5]),
        .I1(D[0]),
        .I2(\q_reg[4]_1 [5]),
        .I3(\c/PCSrcE2__5 ),
        .I4(\q_reg[4]_1 [6]),
        .O(\q_reg[0]_1 [6]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \q[8]_i_1__3 
       (.I0(Q[5]),
        .I1(opb5E),
        .I2(BranchTargetE[5]),
        .O(D[8]));
  LUT6 #(
    .INIT(64'h0800080800080808)) 
    \q[90]_i_1 
       (.I0(\q_reg[68]_2 [36]),
        .I1(\q_reg[12]_0 ),
        .I2(\q_reg[4]_1 [6]),
        .I3(\c/PCSrcE2__5 ),
        .I4(\q_reg[4]_1 [5]),
        .I5(D[0]),
        .O(p_0_in[90]));
  LUT5 #(
    .INIT(32'h00008A2A)) 
    \q[90]_i_1__0 
       (.I0(InstrF[25]),
        .I1(D[0]),
        .I2(\q_reg[4]_1 [5]),
        .I3(\c/PCSrcE2__5 ),
        .I4(\q_reg[4]_1 [6]),
        .O(\q_reg[0]_1 [87]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \q[90]_i_1__1 
       (.I0(\q[79]_i_2_n_0 ),
        .I1(RD2E[18]),
        .I2(\q[79]_i_3_n_0 ),
        .I3(ResultW[18]),
        .I4(ForwardBE),
        .I5(\q_reg[103]_0 [23]),
        .O(D[90]));
  LUT6 #(
    .INIT(64'h0800080800080808)) 
    \q[91]_i_1 
       (.I0(\q_reg[68]_2 [37]),
        .I1(\q_reg[12]_0 ),
        .I2(\q_reg[4]_1 [6]),
        .I3(\c/PCSrcE2__5 ),
        .I4(\q_reg[4]_1 [5]),
        .I5(D[0]),
        .O(p_0_in[91]));
  LUT5 #(
    .INIT(32'h00008A2A)) 
    \q[91]_i_1__0 
       (.I0(InstrF[26]),
        .I1(D[0]),
        .I2(\q_reg[4]_1 [5]),
        .I3(\c/PCSrcE2__5 ),
        .I4(\q_reg[4]_1 [6]),
        .O(\q_reg[0]_1 [88]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \q[91]_i_1__1 
       (.I0(\q[79]_i_2_n_0 ),
        .I1(RD2E[19]),
        .I2(\q[79]_i_3_n_0 ),
        .I3(ResultW[19]),
        .I4(ForwardBE),
        .I5(\q_reg[103]_0 [24]),
        .O(D[91]));
  LUT6 #(
    .INIT(64'h0800080800080808)) 
    \q[92]_i_1 
       (.I0(\q_reg[68]_2 [38]),
        .I1(\q_reg[12]_0 ),
        .I2(\q_reg[4]_1 [6]),
        .I3(\c/PCSrcE2__5 ),
        .I4(\q_reg[4]_1 [5]),
        .I5(D[0]),
        .O(p_0_in[92]));
  LUT5 #(
    .INIT(32'h00008A2A)) 
    \q[92]_i_1__0 
       (.I0(InstrF[27]),
        .I1(D[0]),
        .I2(\q_reg[4]_1 [5]),
        .I3(\c/PCSrcE2__5 ),
        .I4(\q_reg[4]_1 [6]),
        .O(\q_reg[0]_1 [89]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \q[92]_i_1__1 
       (.I0(\q[79]_i_2_n_0 ),
        .I1(RD2E[20]),
        .I2(\q[79]_i_3_n_0 ),
        .I3(ResultW[20]),
        .I4(ForwardBE),
        .I5(\q_reg[103]_0 [25]),
        .O(D[92]));
  LUT6 #(
    .INIT(64'h0800080800080808)) 
    \q[93]_i_1 
       (.I0(\q_reg[68]_2 [39]),
        .I1(\q_reg[12]_0 ),
        .I2(\q_reg[4]_1 [6]),
        .I3(\c/PCSrcE2__5 ),
        .I4(\q_reg[4]_1 [5]),
        .I5(D[0]),
        .O(p_0_in[93]));
  LUT5 #(
    .INIT(32'h00008A2A)) 
    \q[93]_i_1__0 
       (.I0(InstrF[28]),
        .I1(D[0]),
        .I2(\q_reg[4]_1 [5]),
        .I3(\c/PCSrcE2__5 ),
        .I4(\q_reg[4]_1 [6]),
        .O(\q_reg[0]_1 [90]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \q[93]_i_1__1 
       (.I0(\q[79]_i_2_n_0 ),
        .I1(RD2E[21]),
        .I2(\q[79]_i_3_n_0 ),
        .I3(ResultW[21]),
        .I4(ForwardBE),
        .I5(\q_reg[103]_0 [26]),
        .O(D[93]));
  LUT6 #(
    .INIT(64'h0800080800080808)) 
    \q[94]_i_1 
       (.I0(\q_reg[68]_2 [40]),
        .I1(\q_reg[12]_0 ),
        .I2(\q_reg[4]_1 [6]),
        .I3(\c/PCSrcE2__5 ),
        .I4(\q_reg[4]_1 [5]),
        .I5(D[0]),
        .O(p_0_in[94]));
  LUT5 #(
    .INIT(32'h00008A2A)) 
    \q[94]_i_1__0 
       (.I0(InstrF[29]),
        .I1(D[0]),
        .I2(\q_reg[4]_1 [5]),
        .I3(\c/PCSrcE2__5 ),
        .I4(\q_reg[4]_1 [6]),
        .O(\q_reg[0]_1 [91]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \q[94]_i_1__1 
       (.I0(\q[79]_i_2_n_0 ),
        .I1(RD2E[22]),
        .I2(\q[79]_i_3_n_0 ),
        .I3(ResultW[22]),
        .I4(ForwardBE),
        .I5(\q_reg[103]_0 [27]),
        .O(D[94]));
  LUT6 #(
    .INIT(64'h0800080800080808)) 
    \q[95]_i_1 
       (.I0(\q_reg[68]_2 [41]),
        .I1(\q_reg[12]_0 ),
        .I2(\q_reg[4]_1 [6]),
        .I3(\c/PCSrcE2__5 ),
        .I4(\q_reg[4]_1 [5]),
        .I5(D[0]),
        .O(p_0_in[95]));
  LUT5 #(
    .INIT(32'h00008A2A)) 
    \q[95]_i_1__0 
       (.I0(InstrF[30]),
        .I1(D[0]),
        .I2(\q_reg[4]_1 [5]),
        .I3(\c/PCSrcE2__5 ),
        .I4(\q_reg[4]_1 [6]),
        .O(\q_reg[0]_1 [92]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \q[95]_i_1__1 
       (.I0(\q[79]_i_2_n_0 ),
        .I1(RD2E[23]),
        .I2(\q[79]_i_3_n_0 ),
        .I3(ResultW[23]),
        .I4(ForwardBE),
        .I5(\q_reg[103]_0 [28]),
        .O(D[95]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF080008)) 
    \q[95]_i_2 
       (.I0(\q[31]_i_13_n_0 ),
        .I1(\q_reg[95]_0 ),
        .I2(\q_reg[30]_0 [10]),
        .I3(D[124]),
        .I4(\q[95]_i_4_n_0 ),
        .I5(\q[31]_i_10_n_0 ),
        .O(\c/PCSrcE2__5 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[95]_i_4 
       (.I0(D[2]),
        .I1(D[1]),
        .O(\q[95]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0800080800080808)) 
    \q[96]_i_1 
       (.I0(\q_reg[68]_2 [42]),
        .I1(\q_reg[12]_0 ),
        .I2(\q_reg[4]_1 [6]),
        .I3(\c/PCSrcE2__5 ),
        .I4(\q_reg[4]_1 [5]),
        .I5(D[0]),
        .O(p_0_in[96]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \q[96]_i_1__0 
       (.I0(\q[79]_i_2_n_0 ),
        .I1(RD2E[24]),
        .I2(\q[79]_i_3_n_0 ),
        .I3(ResultW[24]),
        .I4(ForwardBE),
        .I5(\q_reg[103]_0 [29]),
        .O(D[96]));
  LUT6 #(
    .INIT(64'h0800080800080808)) 
    \q[97]_i_1 
       (.I0(\q_reg[68]_2 [43]),
        .I1(\q_reg[12]_0 ),
        .I2(\q_reg[4]_1 [6]),
        .I3(\c/PCSrcE2__5 ),
        .I4(\q_reg[4]_1 [5]),
        .I5(D[0]),
        .O(p_0_in[97]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \q[97]_i_1__0 
       (.I0(\q[79]_i_2_n_0 ),
        .I1(RD2E[25]),
        .I2(\q[79]_i_3_n_0 ),
        .I3(ResultW[25]),
        .I4(ForwardBE),
        .I5(\q_reg[103]_0 [30]),
        .O(D[97]));
  LUT6 #(
    .INIT(64'h0800080800080808)) 
    \q[98]_i_1 
       (.I0(\q_reg[68]_2 [44]),
        .I1(\q_reg[12]_0 ),
        .I2(\q_reg[4]_1 [6]),
        .I3(\c/PCSrcE2__5 ),
        .I4(\q_reg[4]_1 [5]),
        .I5(D[0]),
        .O(p_0_in[98]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \q[98]_i_1__0 
       (.I0(\q[79]_i_2_n_0 ),
        .I1(RD2E[26]),
        .I2(\q[79]_i_3_n_0 ),
        .I3(ResultW[26]),
        .I4(ForwardBE),
        .I5(\q_reg[103]_0 [31]),
        .O(D[98]));
  LUT6 #(
    .INIT(64'h0800080800080808)) 
    \q[99]_i_1 
       (.I0(\q_reg[68]_2 [45]),
        .I1(\q_reg[12]_0 ),
        .I2(\q_reg[4]_1 [6]),
        .I3(\c/PCSrcE2__5 ),
        .I4(\q_reg[4]_1 [5]),
        .I5(D[0]),
        .O(p_0_in[99]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \q[99]_i_1__0 
       (.I0(\q[79]_i_2_n_0 ),
        .I1(RD2E[27]),
        .I2(\q[79]_i_3_n_0 ),
        .I3(ResultW[27]),
        .I4(ForwardBE),
        .I5(\q_reg[103]_0 [32]),
        .O(D[99]));
  LUT6 #(
    .INIT(64'h0800080800080808)) 
    \q[9]_i_1 
       (.I0(\q_reg[9]_0 ),
        .I1(\q_reg[12]_0 ),
        .I2(\q_reg[4]_1 [6]),
        .I3(\c/PCSrcE2__5 ),
        .I4(\q_reg[4]_1 [5]),
        .I5(D[0]),
        .O(\q_reg[65]_0 [4]));
  LUT6 #(
    .INIT(64'h0800080800080808)) 
    \q[9]_i_1__0 
       (.I0(\q_reg[68]_2 [2]),
        .I1(\q_reg[12]_0 ),
        .I2(\q_reg[4]_1 [6]),
        .I3(\c/PCSrcE2__5 ),
        .I4(\q_reg[4]_1 [5]),
        .I5(D[0]),
        .O(p_0_in[9]));
  LUT6 #(
    .INIT(64'hF0CCF0CCF0CCAAAA)) 
    \q[9]_i_1__1 
       (.I0(PCPlus4F[6]),
        .I1(D[113]),
        .I2(BranchTargetE[9]),
        .I3(ImmSrcb1E),
        .I4(\q_reg[0]_0 ),
        .I5(\q_reg[10]_0 ),
        .O(\q_reg[3]_0 [9]));
  LUT5 #(
    .INIT(32'h00008A2A)) 
    \q[9]_i_1__2 
       (.I0(PCPlus4F[6]),
        .I1(D[0]),
        .I2(\q_reg[4]_1 [5]),
        .I3(\c/PCSrcE2__5 ),
        .I4(\q_reg[4]_1 [6]),
        .O(\q_reg[0]_1 [7]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \q[9]_i_1__3 
       (.I0(Q[6]),
        .I1(opb5E),
        .I2(BranchTargetE[6]),
        .O(D[9]));
  FDCE \q_reg[0] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(p_0_in[0]),
        .Q(D[0]));
  FDCE \q_reg[100] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(p_0_in[100]),
        .Q(PCE[16]));
  FDCE \q_reg[101] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(p_0_in[101]),
        .Q(PCE[17]));
  FDCE \q_reg[102] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(p_0_in[102]),
        .Q(PCE[18]));
  FDCE \q_reg[103] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(p_0_in[103]),
        .Q(PCE[19]));
  FDCE \q_reg[104] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(p_0_in[104]),
        .Q(PCE[20]));
  FDCE \q_reg[105] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(p_0_in[105]),
        .Q(PCE[21]));
  FDCE \q_reg[106] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(p_0_in[106]),
        .Q(PCE[22]));
  FDCE \q_reg[107] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(p_0_in[107]),
        .Q(PCE[23]));
  FDCE \q_reg[108] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(p_0_in[108]),
        .Q(PCE[24]));
  FDCE \q_reg[109] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(p_0_in[109]),
        .Q(PCE[25]));
  FDCE \q_reg[10] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(p_0_in[10]),
        .Q(D[40]));
  FDCE \q_reg[110] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(p_0_in[110]),
        .Q(PCE[26]));
  FDCE \q_reg[111] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(p_0_in[111]),
        .Q(PCE[27]));
  FDCE \q_reg[112] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(p_0_in[112]),
        .Q(PCE[28]));
  FDCE \q_reg[113] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(p_0_in[113]),
        .Q(PCE[29]));
  FDCE \q_reg[114] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(p_0_in[114]),
        .Q(PCE[30]));
  FDCE \q_reg[115] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(p_0_in[115]),
        .Q(PCE[31]));
  FDCE \q_reg[116] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(p_0_in[116]),
        .Q(RD2E[0]));
  FDCE \q_reg[117] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(p_0_in[117]),
        .Q(RD2E[1]));
  FDCE \q_reg[118] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(p_0_in[118]),
        .Q(RD2E[2]));
  FDCE \q_reg[119] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(p_0_in[119]),
        .Q(RD2E[3]));
  FDCE \q_reg[11] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(p_0_in[11]),
        .Q(D[41]));
  FDCE \q_reg[120] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(p_0_in[120]),
        .Q(RD2E[4]));
  FDCE \q_reg[121] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(p_0_in[121]),
        .Q(RD2E[5]));
  FDCE \q_reg[122] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(p_0_in[122]),
        .Q(RD2E[6]));
  FDCE \q_reg[123] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(p_0_in[123]),
        .Q(RD2E[7]));
  FDCE \q_reg[124] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(p_0_in[124]),
        .Q(RD2E[8]));
  FDCE \q_reg[125] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(p_0_in[125]),
        .Q(RD2E[9]));
  FDCE \q_reg[126] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(p_0_in[126]),
        .Q(RD2E[10]));
  FDCE \q_reg[127] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(p_0_in[127]),
        .Q(RD2E[11]));
  FDCE \q_reg[128] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(p_0_in[128]),
        .Q(RD2E[12]));
  FDCE \q_reg[129] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(p_0_in[129]),
        .Q(RD2E[13]));
  FDCE \q_reg[12] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(p_0_in[12]),
        .Q(D[42]));
  FDCE \q_reg[130] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(p_0_in[130]),
        .Q(RD2E[14]));
  FDCE \q_reg[131] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(p_0_in[131]),
        .Q(RD2E[15]));
  FDCE \q_reg[132] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(p_0_in[132]),
        .Q(RD2E[16]));
  FDCE \q_reg[133] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(p_0_in[133]),
        .Q(RD2E[17]));
  FDCE \q_reg[134] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(p_0_in[134]),
        .Q(RD2E[18]));
  FDCE \q_reg[135] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(p_0_in[135]),
        .Q(RD2E[19]));
  FDCE \q_reg[136] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(p_0_in[136]),
        .Q(RD2E[20]));
  FDCE \q_reg[137] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(p_0_in[137]),
        .Q(RD2E[21]));
  FDCE \q_reg[138] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(p_0_in[138]),
        .Q(RD2E[22]));
  FDCE \q_reg[139] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(p_0_in[139]),
        .Q(RD2E[23]));
  FDCE \q_reg[13] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(p_0_in[13]),
        .Q(D[43]));
  FDCE \q_reg[140] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(p_0_in[140]),
        .Q(RD2E[24]));
  FDCE \q_reg[141] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(p_0_in[141]),
        .Q(RD2E[25]));
  FDCE \q_reg[142] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(p_0_in[142]),
        .Q(RD2E[26]));
  FDCE \q_reg[143] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(p_0_in[143]),
        .Q(RD2E[27]));
  FDCE \q_reg[144] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(p_0_in[144]),
        .Q(RD2E[28]));
  FDCE \q_reg[145] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(p_0_in[145]),
        .Q(RD2E[29]));
  FDCE \q_reg[146] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(p_0_in[146]),
        .Q(RD2E[30]));
  FDCE \q_reg[147] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(p_0_in[147]),
        .Q(RD2E[31]));
  FDCE \q_reg[148] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(p_0_in[148]),
        .Q(RD1E[0]));
  FDCE \q_reg[149] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(p_0_in[149]),
        .Q(RD1E[1]));
  FDCE \q_reg[14] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(p_0_in[14]),
        .Q(D[44]));
  FDCE \q_reg[150] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(p_0_in[150]),
        .Q(RD1E[2]));
  FDCE \q_reg[151] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(p_0_in[151]),
        .Q(RD1E[3]));
  FDCE \q_reg[152] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(p_0_in[152]),
        .Q(RD1E[4]));
  FDCE \q_reg[153] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(p_0_in[153]),
        .Q(RD1E[5]));
  FDCE \q_reg[154] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(p_0_in[154]),
        .Q(RD1E[6]));
  FDCE \q_reg[155] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(p_0_in[155]),
        .Q(RD1E[7]));
  FDCE \q_reg[156] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(p_0_in[156]),
        .Q(RD1E[8]));
  FDCE \q_reg[157] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(p_0_in[157]),
        .Q(RD1E[9]));
  FDCE \q_reg[158] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(p_0_in[158]),
        .Q(RD1E[10]));
  FDCE \q_reg[159] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(p_0_in[159]),
        .Q(RD1E[11]));
  FDCE \q_reg[15] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(p_0_in[15]),
        .Q(D[45]));
  FDCE \q_reg[160] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(p_0_in[160]),
        .Q(RD1E[12]));
  FDCE \q_reg[161] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(p_0_in[161]),
        .Q(RD1E[13]));
  FDCE \q_reg[162] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(p_0_in[162]),
        .Q(RD1E[14]));
  FDCE \q_reg[163] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(p_0_in[163]),
        .Q(RD1E[15]));
  FDCE \q_reg[164] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(p_0_in[164]),
        .Q(RD1E[16]));
  FDCE \q_reg[165] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(p_0_in[165]),
        .Q(RD1E[17]));
  FDCE \q_reg[166] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(p_0_in[166]),
        .Q(RD1E[18]));
  FDCE \q_reg[167] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(p_0_in[167]),
        .Q(RD1E[19]));
  FDCE \q_reg[168] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(p_0_in[168]),
        .Q(RD1E[20]));
  FDCE \q_reg[169] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(p_0_in[169]),
        .Q(RD1E[21]));
  FDCE \q_reg[16] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(p_0_in[16]),
        .Q(D[46]));
  FDCE \q_reg[170] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(p_0_in[170]),
        .Q(RD1E[22]));
  FDCE \q_reg[171] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(p_0_in[171]),
        .Q(RD1E[23]));
  FDCE \q_reg[172] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(p_0_in[172]),
        .Q(RD1E[24]));
  FDCE \q_reg[173] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(p_0_in[173]),
        .Q(RD1E[25]));
  FDCE \q_reg[174] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(p_0_in[174]),
        .Q(RD1E[26]));
  FDCE \q_reg[175] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(p_0_in[175]),
        .Q(RD1E[27]));
  FDCE \q_reg[176] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(p_0_in[176]),
        .Q(RD1E[28]));
  FDCE \q_reg[177] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(p_0_in[177]),
        .Q(RD1E[29]));
  FDCE \q_reg[178] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(p_0_in[178]),
        .Q(RD1E[30]));
  FDCE \q_reg[179] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(p_0_in[179]),
        .Q(RD1E[31]));
  FDCE \q_reg[17] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(p_0_in[17]),
        .Q(D[47]));
  FDCE \q_reg[18] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(p_0_in[18]),
        .Q(D[48]));
  FDCE \q_reg[19] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(p_0_in[19]),
        .Q(D[49]));
  FDCE \q_reg[1] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(p_0_in[1]),
        .Q(D[1]));
  FDCE \q_reg[20] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(p_0_in[20]),
        .Q(D[50]));
  FDCE \q_reg[21] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(p_0_in[21]),
        .Q(D[51]));
  FDCE \q_reg[22] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(p_0_in[22]),
        .Q(D[52]));
  FDCE \q_reg[23] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(p_0_in[23]),
        .Q(D[53]));
  FDCE \q_reg[24] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(p_0_in[24]),
        .Q(D[54]));
  FDCE \q_reg[25] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(p_0_in[25]),
        .Q(D[55]));
  FDCE \q_reg[26] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(p_0_in[26]),
        .Q(D[56]));
  FDCE \q_reg[27] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(p_0_in[27]),
        .Q(D[57]));
  FDCE \q_reg[28] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(p_0_in[28]),
        .Q(D[58]));
  FDCE \q_reg[29] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(p_0_in[29]),
        .Q(D[59]));
  FDCE \q_reg[2] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(p_0_in[2]),
        .Q(D[2]));
  FDCE \q_reg[30] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(p_0_in[30]),
        .Q(D[60]));
  FDCE \q_reg[31] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(p_0_in[31]),
        .Q(D[61]));
  FDCE \q_reg[32] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(p_0_in[32]),
        .Q(D[62]));
  FDCE \q_reg[33] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(p_0_in[33]),
        .Q(D[63]));
  FDCE \q_reg[34] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(p_0_in[34]),
        .Q(D[64]));
  FDCE \q_reg[35] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(p_0_in[35]),
        .Q(D[65]));
  FDCE \q_reg[36] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(p_0_in[36]),
        .Q(D[66]));
  FDCE \q_reg[37] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(p_0_in[37]),
        .Q(Q[0]));
  FDCE \q_reg[38] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(p_0_in[38]),
        .Q(Q[1]));
  FDCE \q_reg[39] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(p_0_in[39]),
        .Q(Q[2]));
  FDCE \q_reg[3] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(p_0_in[3]),
        .Q(ImmSrcb1E));
  FDCE \q_reg[40] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(p_0_in[40]),
        .Q(Q[3]));
  FDCE \q_reg[41] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(p_0_in[41]),
        .Q(Q[4]));
  FDCE \q_reg[42] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(p_0_in[42]),
        .Q(Q[5]));
  FDCE \q_reg[43] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(p_0_in[43]),
        .Q(Q[6]));
  FDCE \q_reg[44] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(p_0_in[44]),
        .Q(Q[7]));
  FDCE \q_reg[45] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(p_0_in[45]),
        .Q(Q[8]));
  FDCE \q_reg[46] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(p_0_in[46]),
        .Q(Q[9]));
  FDCE \q_reg[47] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(p_0_in[47]),
        .Q(Q[10]));
  FDCE \q_reg[48] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(p_0_in[48]),
        .Q(Q[11]));
  FDCE \q_reg[49] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(\q_reg[67]_2 [0]),
        .Q(Q[12]));
  FDCE \q_reg[4] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(p_0_in[4]),
        .Q(opb5E));
  FDCE \q_reg[50] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(\q_reg[67]_2 [1]),
        .Q(Q[13]));
  FDCE \q_reg[51] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(\q_reg[67]_2 [2]),
        .Q(Q[14]));
  FDCE \q_reg[52] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(\q_reg[67]_2 [3]),
        .Q(Q[15]));
  FDCE \q_reg[53] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(\q_reg[67]_2 [4]),
        .Q(Q[16]));
  FDCE \q_reg[54] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(\q_reg[67]_2 [5]),
        .Q(Q[17]));
  FDCE \q_reg[55] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(\q_reg[67]_2 [6]),
        .Q(Q[18]));
  FDCE \q_reg[56] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(\q_reg[67]_2 [7]),
        .Q(Q[19]));
  FDCE \q_reg[57] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(\q_reg[67]_2 [8]),
        .Q(Q[20]));
  FDCE \q_reg[58] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(\q_reg[67]_2 [9]),
        .Q(Q[21]));
  FDCE \q_reg[59] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(\q_reg[67]_2 [10]),
        .Q(Q[22]));
  FDCE \q_reg[60] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(\q_reg[67]_2 [11]),
        .Q(Q[23]));
  FDCE \q_reg[61] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(\q_reg[67]_2 [12]),
        .Q(Q[24]));
  FDCE \q_reg[62] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(\q_reg[67]_2 [13]),
        .Q(Q[25]));
  FDCE \q_reg[63] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(\q_reg[67]_2 [14]),
        .Q(Q[26]));
  FDCE \q_reg[64] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(\q_reg[67]_2 [15]),
        .Q(Q[27]));
  FDCE \q_reg[65] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(\q_reg[67]_2 [16]),
        .Q(Q[28]));
  FDCE \q_reg[66] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(\q_reg[67]_2 [17]),
        .Q(Q[29]));
  FDCE \q_reg[67] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(\q_reg[67]_2 [18]),
        .Q(Q[30]));
  FDCE \q_reg[68] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(p_0_in[68]),
        .Q(ImmExtE));
  FDCE \q_reg[69] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(p_0_in[69]),
        .Q(D[67]));
  FDCE \q_reg[70] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(p_0_in[70]),
        .Q(D[68]));
  FDCE \q_reg[71] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(p_0_in[71]),
        .Q(D[69]));
  FDCE \q_reg[72] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(p_0_in[72]),
        .Q(D[70]));
  FDCE \q_reg[73] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(p_0_in[73]),
        .Q(D[71]));
  FDCE \q_reg[74] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(p_0_in[74]),
        .Q(Rs2E[0]));
  FDCE \q_reg[75] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(p_0_in[75]),
        .Q(Rs2E[1]));
  FDCE \q_reg[76] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(p_0_in[76]),
        .Q(Rs2E[2]));
  FDCE \q_reg[77] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(p_0_in[77]),
        .Q(Rs2E[3]));
  FDCE \q_reg[78] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(p_0_in[78]),
        .Q(Rs2E[4]));
  FDCE \q_reg[79] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(p_0_in[79]),
        .Q(Rs1E[0]));
  FDCE \q_reg[7] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(p_0_in[7]),
        .Q(D[37]));
  FDCE \q_reg[80] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(p_0_in[80]),
        .Q(Rs1E[1]));
  FDCE \q_reg[81] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(p_0_in[81]),
        .Q(Q[31]));
  FDCE \q_reg[82] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(p_0_in[82]),
        .Q(Q[32]));
  FDCE \q_reg[83] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(p_0_in[83]),
        .Q(Rs1E[4]));
  FDCE \q_reg[84] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(p_0_in[84]),
        .Q(D[35]));
  FDCE \q_reg[85] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(p_0_in[85]),
        .Q(D[36]));
  FDCE \q_reg[86] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(p_0_in[86]),
        .Q(PCE[2]));
  FDCE \q_reg[87] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(p_0_in[87]),
        .Q(PCE[3]));
  FDCE \q_reg[88] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(p_0_in[88]),
        .Q(PCE[4]));
  FDCE \q_reg[89] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(p_0_in[89]),
        .Q(PCE[5]));
  FDCE \q_reg[8] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(p_0_in[8]),
        .Q(D[38]));
  FDCE \q_reg[90] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(p_0_in[90]),
        .Q(PCE[6]));
  FDCE \q_reg[91] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(p_0_in[91]),
        .Q(PCE[7]));
  FDCE \q_reg[92] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(p_0_in[92]),
        .Q(PCE[8]));
  FDCE \q_reg[93] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(p_0_in[93]),
        .Q(PCE[9]));
  FDCE \q_reg[94] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(p_0_in[94]),
        .Q(PCE[10]));
  FDCE \q_reg[95] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(p_0_in[95]),
        .Q(PCE[11]));
  FDCE \q_reg[96] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(p_0_in[96]),
        .Q(PCE[12]));
  FDCE \q_reg[97] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(p_0_in[97]),
        .Q(PCE[13]));
  FDCE \q_reg[98] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(p_0_in[98]),
        .Q(PCE[14]));
  FDCE \q_reg[99] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(p_0_in[99]),
        .Q(PCE[15]));
  FDCE \q_reg[9] 
       (.C(clk),
        .CE(PCReadyM),
        .CLR(reset),
        .D(p_0_in[9]),
        .Q(D[39]));
  LUT6 #(
    .INIT(64'hFF00CCCCE4E4CCCC)) 
    sum__0_carry__0_i_1
       (.I0(sum__0_carry_i_11_n_0),
        .I1(RD1E[7]),
        .I2(ResultW[7]),
        .I3(\q_reg[103]_0 [12]),
        .I4(sum__0_carry_i_12_n_0),
        .I5(\hu/ForwardAE11_out ),
        .O(SrcAE[7]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    sum__0_carry__0_i_10
       (.I0(Q[6]),
        .I1(\q_reg[4]_1 [0]),
        .I2(D[78]),
        .O(SrcBE[6]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    sum__0_carry__0_i_11
       (.I0(Q[5]),
        .I1(\q_reg[4]_1 [0]),
        .I2(D[77]),
        .O(SrcBE[5]));
  LUT3 #(
    .INIT(8'hB8)) 
    sum__0_carry__0_i_12
       (.I0(Q[4]),
        .I1(\q_reg[4]_1 [0]),
        .I2(D[76]),
        .O(SrcBE[4]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    sum__0_carry__0_i_2
       (.I0(sum__0_carry_i_14_n_0),
        .I1(RD1E[6]),
        .I2(sum__0_carry_i_15_n_0),
        .I3(ResultW[6]),
        .I4(\q_reg[103]_0 [11]),
        .I5(ForwardAE),
        .O(SrcAE[6]));
  LUT6 #(
    .INIT(64'hFF00CCCCE4E4CCCC)) 
    sum__0_carry__0_i_3
       (.I0(sum__0_carry_i_11_n_0),
        .I1(RD1E[5]),
        .I2(ResultW[5]),
        .I3(\q_reg[103]_0 [10]),
        .I4(sum__0_carry_i_12_n_0),
        .I5(\hu/ForwardAE11_out ),
        .O(SrcAE[5]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    sum__0_carry__0_i_4
       (.I0(sum__0_carry_i_14_n_0),
        .I1(RD1E[4]),
        .I2(sum__0_carry_i_15_n_0),
        .I3(ResultW[4]),
        .I4(\q_reg[103]_0 [9]),
        .I5(ForwardAE),
        .O(SrcAE[4]));
  LUT3 #(
    .INIT(8'h96)) 
    sum__0_carry__0_i_5
       (.I0(SrcAE[7]),
        .I1(SrcBE[7]),
        .I2(\q_reg[4]_1 [1]),
        .O(\q_reg[5]_12 [3]));
  LUT3 #(
    .INIT(8'h96)) 
    sum__0_carry__0_i_6
       (.I0(SrcAE[6]),
        .I1(SrcBE[6]),
        .I2(\q_reg[4]_1 [1]),
        .O(\q_reg[5]_12 [2]));
  LUT3 #(
    .INIT(8'h96)) 
    sum__0_carry__0_i_7
       (.I0(SrcAE[5]),
        .I1(SrcBE[5]),
        .I2(\q_reg[4]_1 [1]),
        .O(\q_reg[5]_12 [1]));
  LUT3 #(
    .INIT(8'h96)) 
    sum__0_carry__0_i_8
       (.I0(SrcAE[4]),
        .I1(SrcBE[4]),
        .I2(\q_reg[4]_1 [1]),
        .O(\q_reg[5]_12 [0]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    sum__0_carry__0_i_9
       (.I0(Q[7]),
        .I1(\q_reg[4]_1 [0]),
        .I2(D[79]),
        .O(SrcBE[7]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    sum__0_carry__1_i_1
       (.I0(sum__0_carry_i_14_n_0),
        .I1(RD1E[11]),
        .I2(sum__0_carry_i_15_n_0),
        .I3(ResultW[11]),
        .I4(\q_reg[103]_0 [16]),
        .I5(ForwardAE),
        .O(SrcAE[11]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    sum__0_carry__1_i_10
       (.I0(Q[10]),
        .I1(\q_reg[4]_1 [0]),
        .I2(D[82]),
        .O(SrcBE[10]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    sum__0_carry__1_i_11
       (.I0(Q[9]),
        .I1(\q_reg[4]_1 [0]),
        .I2(D[81]),
        .O(SrcBE[9]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    sum__0_carry__1_i_12
       (.I0(Q[8]),
        .I1(\q_reg[4]_1 [0]),
        .I2(D[80]),
        .O(SrcBE[8]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    sum__0_carry__1_i_2
       (.I0(sum__0_carry_i_14_n_0),
        .I1(RD1E[10]),
        .I2(sum__0_carry_i_15_n_0),
        .I3(ResultW[10]),
        .I4(\q_reg[103]_0 [15]),
        .I5(ForwardAE),
        .O(SrcAE[10]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    sum__0_carry__1_i_3
       (.I0(sum__0_carry_i_14_n_0),
        .I1(RD1E[9]),
        .I2(sum__0_carry_i_15_n_0),
        .I3(ResultW[9]),
        .I4(\q_reg[103]_0 [14]),
        .I5(ForwardAE),
        .O(SrcAE[9]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    sum__0_carry__1_i_4
       (.I0(sum__0_carry_i_14_n_0),
        .I1(RD1E[8]),
        .I2(sum__0_carry_i_15_n_0),
        .I3(ResultW[8]),
        .I4(\q_reg[103]_0 [13]),
        .I5(ForwardAE),
        .O(SrcAE[8]));
  LUT3 #(
    .INIT(8'h96)) 
    sum__0_carry__1_i_5
       (.I0(SrcAE[11]),
        .I1(SrcBE[11]),
        .I2(\q_reg[4]_1 [1]),
        .O(\q_reg[5]_13 [3]));
  LUT3 #(
    .INIT(8'h96)) 
    sum__0_carry__1_i_6
       (.I0(SrcAE[10]),
        .I1(SrcBE[10]),
        .I2(\q_reg[4]_1 [1]),
        .O(\q_reg[5]_13 [2]));
  LUT3 #(
    .INIT(8'h96)) 
    sum__0_carry__1_i_7
       (.I0(SrcAE[9]),
        .I1(SrcBE[9]),
        .I2(\q_reg[4]_1 [1]),
        .O(\q_reg[5]_13 [1]));
  LUT3 #(
    .INIT(8'h96)) 
    sum__0_carry__1_i_8
       (.I0(SrcAE[8]),
        .I1(SrcBE[8]),
        .I2(\q_reg[4]_1 [1]),
        .O(\q_reg[5]_13 [0]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    sum__0_carry__1_i_9
       (.I0(Q[11]),
        .I1(\q_reg[4]_1 [0]),
        .I2(D[83]),
        .O(SrcBE[11]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    sum__0_carry__2_i_1
       (.I0(sum__0_carry_i_14_n_0),
        .I1(RD1E[15]),
        .I2(sum__0_carry_i_15_n_0),
        .I3(ResultW[15]),
        .I4(\q_reg[103]_0 [20]),
        .I5(ForwardAE),
        .O(SrcAE[15]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    sum__0_carry__2_i_10
       (.I0(Q[14]),
        .I1(\q_reg[4]_1 [0]),
        .I2(D[86]),
        .O(SrcBE[14]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    sum__0_carry__2_i_11
       (.I0(Q[13]),
        .I1(\q_reg[4]_1 [0]),
        .I2(D[85]),
        .O(SrcBE[13]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    sum__0_carry__2_i_12
       (.I0(Q[12]),
        .I1(\q_reg[4]_1 [0]),
        .I2(D[84]),
        .O(SrcBE[12]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    sum__0_carry__2_i_2
       (.I0(sum__0_carry_i_14_n_0),
        .I1(RD1E[14]),
        .I2(sum__0_carry_i_15_n_0),
        .I3(ResultW[14]),
        .I4(\q_reg[103]_0 [19]),
        .I5(ForwardAE),
        .O(SrcAE[14]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    sum__0_carry__2_i_3
       (.I0(sum__0_carry_i_14_n_0),
        .I1(RD1E[13]),
        .I2(sum__0_carry_i_15_n_0),
        .I3(ResultW[13]),
        .I4(\q_reg[103]_0 [18]),
        .I5(ForwardAE),
        .O(SrcAE[13]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    sum__0_carry__2_i_4
       (.I0(sum__0_carry_i_14_n_0),
        .I1(RD1E[12]),
        .I2(sum__0_carry_i_15_n_0),
        .I3(ResultW[12]),
        .I4(\q_reg[103]_0 [17]),
        .I5(ForwardAE),
        .O(SrcAE[12]));
  LUT3 #(
    .INIT(8'h96)) 
    sum__0_carry__2_i_5
       (.I0(SrcAE[15]),
        .I1(SrcBE[15]),
        .I2(\q_reg[4]_1 [1]),
        .O(\q_reg[5]_14 [3]));
  LUT3 #(
    .INIT(8'h96)) 
    sum__0_carry__2_i_6
       (.I0(SrcAE[14]),
        .I1(SrcBE[14]),
        .I2(\q_reg[4]_1 [1]),
        .O(\q_reg[5]_14 [2]));
  LUT3 #(
    .INIT(8'h96)) 
    sum__0_carry__2_i_7
       (.I0(SrcAE[13]),
        .I1(SrcBE[13]),
        .I2(\q_reg[4]_1 [1]),
        .O(\q_reg[5]_14 [1]));
  LUT3 #(
    .INIT(8'h96)) 
    sum__0_carry__2_i_8
       (.I0(SrcAE[12]),
        .I1(SrcBE[12]),
        .I2(\q_reg[4]_1 [1]),
        .O(\q_reg[5]_14 [0]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    sum__0_carry__2_i_9
       (.I0(Q[15]),
        .I1(\q_reg[4]_1 [0]),
        .I2(D[87]),
        .O(SrcBE[15]));
  LUT6 #(
    .INIT(64'hFF00CCCCE4E4CCCC)) 
    sum__0_carry__3_i_1
       (.I0(sum__0_carry_i_11_n_0),
        .I1(RD1E[19]),
        .I2(ResultW[19]),
        .I3(\q_reg[103]_0 [24]),
        .I4(sum__0_carry_i_12_n_0),
        .I5(\hu/ForwardAE11_out ),
        .O(SrcAE[19]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    sum__0_carry__3_i_10
       (.I0(Q[18]),
        .I1(\q_reg[4]_1 [0]),
        .I2(D[90]),
        .O(SrcBE[18]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    sum__0_carry__3_i_11
       (.I0(Q[17]),
        .I1(\q_reg[4]_1 [0]),
        .I2(D[89]),
        .O(SrcBE[17]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    sum__0_carry__3_i_12
       (.I0(Q[16]),
        .I1(\q_reg[4]_1 [0]),
        .I2(D[88]),
        .O(SrcBE[16]));
  LUT6 #(
    .INIT(64'hFF00CCCCE4E4CCCC)) 
    sum__0_carry__3_i_2
       (.I0(sum__0_carry_i_11_n_0),
        .I1(RD1E[18]),
        .I2(ResultW[18]),
        .I3(\q_reg[103]_0 [23]),
        .I4(sum__0_carry_i_12_n_0),
        .I5(\hu/ForwardAE11_out ),
        .O(SrcAE[18]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    sum__0_carry__3_i_3
       (.I0(sum__0_carry_i_14_n_0),
        .I1(RD1E[17]),
        .I2(sum__0_carry_i_15_n_0),
        .I3(ResultW[17]),
        .I4(\q_reg[103]_0 [22]),
        .I5(ForwardAE),
        .O(SrcAE[17]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    sum__0_carry__3_i_4
       (.I0(sum__0_carry_i_14_n_0),
        .I1(RD1E[16]),
        .I2(sum__0_carry_i_15_n_0),
        .I3(ResultW[16]),
        .I4(\q_reg[103]_0 [21]),
        .I5(ForwardAE),
        .O(SrcAE[16]));
  LUT3 #(
    .INIT(8'h96)) 
    sum__0_carry__3_i_5
       (.I0(SrcAE[19]),
        .I1(SrcBE[19]),
        .I2(\q_reg[4]_1 [1]),
        .O(\q_reg[5]_15 [3]));
  LUT3 #(
    .INIT(8'h96)) 
    sum__0_carry__3_i_6
       (.I0(SrcAE[18]),
        .I1(SrcBE[18]),
        .I2(\q_reg[4]_1 [1]),
        .O(\q_reg[5]_15 [2]));
  LUT3 #(
    .INIT(8'h96)) 
    sum__0_carry__3_i_7
       (.I0(SrcAE[17]),
        .I1(SrcBE[17]),
        .I2(\q_reg[4]_1 [1]),
        .O(\q_reg[5]_15 [1]));
  LUT3 #(
    .INIT(8'h96)) 
    sum__0_carry__3_i_8
       (.I0(SrcAE[16]),
        .I1(SrcBE[16]),
        .I2(\q_reg[4]_1 [1]),
        .O(\q_reg[5]_15 [0]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    sum__0_carry__3_i_9
       (.I0(Q[19]),
        .I1(\q_reg[4]_1 [0]),
        .I2(D[91]),
        .O(SrcBE[19]));
  LUT6 #(
    .INIT(64'hFF00CCCCE4E4CCCC)) 
    sum__0_carry__4_i_1
       (.I0(sum__0_carry_i_11_n_0),
        .I1(RD1E[23]),
        .I2(ResultW[23]),
        .I3(\q_reg[103]_0 [28]),
        .I4(sum__0_carry_i_12_n_0),
        .I5(\hu/ForwardAE11_out ),
        .O(DI[3]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    sum__0_carry__4_i_10
       (.I0(Q[22]),
        .I1(\q_reg[4]_1 [0]),
        .I2(D[94]),
        .O(\q_reg[59]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    sum__0_carry__4_i_11
       (.I0(Q[21]),
        .I1(\q_reg[4]_1 [0]),
        .I2(D[93]),
        .O(\q_reg[58]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    sum__0_carry__4_i_12
       (.I0(Q[20]),
        .I1(\q_reg[4]_1 [0]),
        .I2(D[92]),
        .O(\q_reg[57]_0 ));
  LUT6 #(
    .INIT(64'hFF00CCCCE4E4CCCC)) 
    sum__0_carry__4_i_2
       (.I0(sum__0_carry_i_11_n_0),
        .I1(RD1E[22]),
        .I2(ResultW[22]),
        .I3(\q_reg[103]_0 [27]),
        .I4(sum__0_carry_i_12_n_0),
        .I5(\hu/ForwardAE11_out ),
        .O(DI[2]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    sum__0_carry__4_i_3
       (.I0(sum__0_carry_i_14_n_0),
        .I1(RD1E[21]),
        .I2(sum__0_carry_i_15_n_0),
        .I3(ResultW[21]),
        .I4(\q_reg[103]_0 [26]),
        .I5(ForwardAE),
        .O(DI[1]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    sum__0_carry__4_i_4
       (.I0(sum__0_carry_i_14_n_0),
        .I1(RD1E[20]),
        .I2(sum__0_carry_i_15_n_0),
        .I3(ResultW[20]),
        .I4(\q_reg[103]_0 [25]),
        .I5(ForwardAE),
        .O(DI[0]));
  LUT3 #(
    .INIT(8'h96)) 
    sum__0_carry__4_i_5
       (.I0(DI[3]),
        .I1(\q_reg[60]_0 ),
        .I2(\q_reg[4]_1 [1]),
        .O(\q_reg[5]_16 [3]));
  LUT3 #(
    .INIT(8'h96)) 
    sum__0_carry__4_i_6
       (.I0(DI[2]),
        .I1(\q_reg[59]_1 ),
        .I2(\q_reg[4]_1 [1]),
        .O(\q_reg[5]_16 [2]));
  LUT3 #(
    .INIT(8'h96)) 
    sum__0_carry__4_i_7
       (.I0(DI[1]),
        .I1(\q_reg[58]_0 ),
        .I2(\q_reg[4]_1 [1]),
        .O(\q_reg[5]_16 [1]));
  LUT3 #(
    .INIT(8'h96)) 
    sum__0_carry__4_i_8
       (.I0(DI[0]),
        .I1(\q_reg[57]_0 ),
        .I2(\q_reg[4]_1 [1]),
        .O(\q_reg[5]_16 [0]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    sum__0_carry__4_i_9
       (.I0(Q[23]),
        .I1(\q_reg[4]_1 [0]),
        .I2(D[95]),
        .O(\q_reg[60]_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    sum__0_carry__5_i_1
       (.I0(sum__0_carry_i_14_n_0),
        .I1(RD1E[27]),
        .I2(sum__0_carry_i_15_n_0),
        .I3(ResultW[27]),
        .I4(\q_reg[103]_0 [32]),
        .I5(ForwardAE),
        .O(\q_reg[175]_0 [3]));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    sum__0_carry__5_i_10
       (.I0(Q[26]),
        .I1(\q_reg[4]_1 [0]),
        .I2(D[98]),
        .O(\q_reg[63]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    sum__0_carry__5_i_11
       (.I0(Q[25]),
        .I1(\q_reg[4]_1 [0]),
        .I2(D[97]),
        .O(\q_reg[62]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    sum__0_carry__5_i_12
       (.I0(Q[24]),
        .I1(\q_reg[4]_1 [0]),
        .I2(D[96]),
        .O(\q_reg[61]_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    sum__0_carry__5_i_2
       (.I0(sum__0_carry_i_14_n_0),
        .I1(RD1E[26]),
        .I2(sum__0_carry_i_15_n_0),
        .I3(ResultW[26]),
        .I4(\q_reg[103]_0 [31]),
        .I5(ForwardAE),
        .O(\q_reg[175]_0 [2]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    sum__0_carry__5_i_3
       (.I0(sum__0_carry_i_14_n_0),
        .I1(RD1E[25]),
        .I2(sum__0_carry_i_15_n_0),
        .I3(ResultW[25]),
        .I4(\q_reg[103]_0 [30]),
        .I5(ForwardAE),
        .O(\q_reg[175]_0 [1]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    sum__0_carry__5_i_4
       (.I0(sum__0_carry_i_14_n_0),
        .I1(RD1E[24]),
        .I2(sum__0_carry_i_15_n_0),
        .I3(ResultW[24]),
        .I4(\q_reg[103]_0 [29]),
        .I5(ForwardAE),
        .O(\q_reg[175]_0 [0]));
  LUT3 #(
    .INIT(8'h96)) 
    sum__0_carry__5_i_5
       (.I0(\q_reg[175]_0 [3]),
        .I1(\q_reg[64]_0 ),
        .I2(\q_reg[4]_1 [1]),
        .O(\q_reg[5]_17 [3]));
  LUT3 #(
    .INIT(8'h96)) 
    sum__0_carry__5_i_6
       (.I0(\q_reg[175]_0 [2]),
        .I1(\q_reg[63]_0 ),
        .I2(\q_reg[4]_1 [1]),
        .O(\q_reg[5]_17 [2]));
  LUT3 #(
    .INIT(8'h96)) 
    sum__0_carry__5_i_7
       (.I0(\q_reg[175]_0 [1]),
        .I1(\q_reg[62]_0 ),
        .I2(\q_reg[4]_1 [1]),
        .O(\q_reg[5]_17 [1]));
  LUT3 #(
    .INIT(8'h96)) 
    sum__0_carry__5_i_8
       (.I0(\q_reg[175]_0 [0]),
        .I1(\q_reg[61]_0 ),
        .I2(\q_reg[4]_1 [1]),
        .O(\q_reg[5]_17 [0]));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    sum__0_carry__5_i_9
       (.I0(Q[27]),
        .I1(\q_reg[4]_1 [0]),
        .I2(D[99]),
        .O(\q_reg[64]_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    sum__0_carry__6_i_1
       (.I0(sum__0_carry_i_14_n_0),
        .I1(RD1E[30]),
        .I2(sum__0_carry_i_15_n_0),
        .I3(ResultW[30]),
        .I4(\q_reg[103]_0 [35]),
        .I5(ForwardAE),
        .O(\q_reg[178]_0 [2]));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    sum__0_carry__6_i_10
       (.I0(Q[30]),
        .I1(\q_reg[4]_1 [0]),
        .I2(D[102]),
        .O(\q_reg[67]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    sum__0_carry__6_i_11
       (.I0(Q[29]),
        .I1(\q_reg[4]_1 [0]),
        .I2(D[101]),
        .O(\q_reg[66]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    sum__0_carry__6_i_12
       (.I0(Q[28]),
        .I1(\q_reg[4]_1 [0]),
        .I2(D[100]),
        .O(\q_reg[65]_1 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    sum__0_carry__6_i_2
       (.I0(sum__0_carry_i_14_n_0),
        .I1(RD1E[29]),
        .I2(sum__0_carry_i_15_n_0),
        .I3(ResultW[29]),
        .I4(\q_reg[103]_0 [34]),
        .I5(ForwardAE),
        .O(\q_reg[178]_0 [1]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    sum__0_carry__6_i_3
       (.I0(sum__0_carry_i_14_n_0),
        .I1(RD1E[28]),
        .I2(sum__0_carry_i_15_n_0),
        .I3(ResultW[28]),
        .I4(\q_reg[103]_0 [33]),
        .I5(ForwardAE),
        .O(\q_reg[178]_0 [0]));
  LUT3 #(
    .INIT(8'h96)) 
    sum__0_carry__6_i_4
       (.I0(\q_reg[179]_0 ),
        .I1(\q_reg[4]_1 [1]),
        .I2(\q_reg[68]_1 ),
        .O(\q_reg[5]_10 [3]));
  LUT3 #(
    .INIT(8'h96)) 
    sum__0_carry__6_i_5
       (.I0(\q_reg[178]_0 [2]),
        .I1(\q_reg[67]_0 ),
        .I2(\q_reg[4]_1 [1]),
        .O(\q_reg[5]_10 [2]));
  LUT3 #(
    .INIT(8'h96)) 
    sum__0_carry__6_i_6
       (.I0(\q_reg[178]_0 [1]),
        .I1(\q_reg[66]_0 ),
        .I2(\q_reg[4]_1 [1]),
        .O(\q_reg[5]_10 [1]));
  LUT3 #(
    .INIT(8'h96)) 
    sum__0_carry__6_i_7
       (.I0(\q_reg[178]_0 [0]),
        .I1(\q_reg[65]_1 ),
        .I2(\q_reg[4]_1 [1]),
        .O(\q_reg[5]_10 [0]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    sum__0_carry__6_i_8
       (.I0(sum__0_carry_i_14_n_0),
        .I1(RD1E[31]),
        .I2(sum__0_carry_i_15_n_0),
        .I3(ResultW[31]),
        .I4(\q_reg[103]_0 [36]),
        .I5(ForwardAE),
        .O(\q_reg[179]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    sum__0_carry__6_i_9
       (.I0(ImmExtE),
        .I1(\q_reg[4]_1 [0]),
        .I2(D[103]),
        .O(\q_reg[68]_1 ));
  LUT3 #(
    .INIT(8'hB8)) 
    sum__0_carry_i_10
       (.I0(Q[0]),
        .I1(\q_reg[4]_1 [0]),
        .I2(D[72]),
        .O(\q_reg[37]_0 ));
  LUT5 #(
    .INIT(32'h80000080)) 
    sum__0_carry_i_11
       (.I0(sum__0_carry_i_20_n_0),
        .I1(sum__0_carry_i_4_1),
        .I2(\q_reg[76]_0 ),
        .I3(sum__0_carry_i_11_0[1]),
        .I4(Rs1E[1]),
        .O(sum__0_carry_i_11_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    sum__0_carry_i_12
       (.I0(Rs1E[4]),
        .I1(Rs1E[0]),
        .I2(Rs1E[1]),
        .I3(Q[31]),
        .I4(Q[32]),
        .O(sum__0_carry_i_12_n_0));
  LUT5 #(
    .INIT(32'h80000080)) 
    sum__0_carry_i_13
       (.I0(sum__0_carry_i_22_n_0),
        .I1(sum__0_carry_i_4_0),
        .I2(\q_reg[76]_1 ),
        .I3(\q_reg[103]_0 [1]),
        .I4(Rs1E[1]),
        .O(\hu/ForwardAE11_out ));
  LUT6 #(
    .INIT(64'h14555555FFFFFFFF)) 
    sum__0_carry_i_14
       (.I0(\hu/ForwardAE11_out ),
        .I1(Rs1E[1]),
        .I2(sum__0_carry_i_11_0[1]),
        .I3(\q_reg[76]_0 ),
        .I4(sum__0_carry_i_24_n_0),
        .I5(sum__0_carry_i_12_n_0),
        .O(sum__0_carry_i_14_n_0));
  LUT6 #(
    .INIT(64'h0000900000000000)) 
    sum__0_carry_i_15
       (.I0(Rs1E[1]),
        .I1(sum__0_carry_i_11_0[1]),
        .I2(\q_reg[76]_0 ),
        .I3(sum__0_carry_i_24_n_0),
        .I4(\hu/ForwardAE11_out ),
        .I5(sum__0_carry_i_12_n_0),
        .O(sum__0_carry_i_15_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    sum__0_carry_i_16
       (.I0(Q[32]),
        .I1(Q[31]),
        .I2(Rs1E[1]),
        .I3(Rs1E[0]),
        .I4(Rs1E[4]),
        .I5(\hu/ForwardAE11_out ),
        .O(ForwardAE));
  LUT3 #(
    .INIT(8'hB8)) 
    sum__0_carry_i_17
       (.I0(Q[3]),
        .I1(\q_reg[4]_1 [0]),
        .I2(D[75]),
        .O(SrcBE[3]));
  LUT3 #(
    .INIT(8'hB8)) 
    sum__0_carry_i_18
       (.I0(Q[2]),
        .I1(\q_reg[4]_1 [0]),
        .I2(D[74]),
        .O(SrcBE[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    sum__0_carry_i_19
       (.I0(Q[1]),
        .I1(\q_reg[4]_1 [0]),
        .I2(D[73]),
        .O(SrcBE[1]));
  LUT6 #(
    .INIT(64'hFF00CCCCE4E4CCCC)) 
    sum__0_carry_i_2
       (.I0(sum__0_carry_i_11_n_0),
        .I1(RD1E[3]),
        .I2(ResultW[3]),
        .I3(\q_reg[103]_0 [8]),
        .I4(sum__0_carry_i_12_n_0),
        .I5(\hu/ForwardAE11_out ),
        .O(SrcAE[3]));
  LUT4 #(
    .INIT(16'h9009)) 
    sum__0_carry_i_20
       (.I0(Rs1E[4]),
        .I1(sum__0_carry_i_11_0[4]),
        .I2(Rs1E[0]),
        .I3(sum__0_carry_i_11_0[0]),
        .O(sum__0_carry_i_20_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    sum__0_carry_i_22
       (.I0(Rs1E[4]),
        .I1(\q_reg[103]_0 [4]),
        .I2(Rs1E[0]),
        .I3(\q_reg[103]_0 [0]),
        .O(sum__0_carry_i_22_n_0));
  LUT5 #(
    .INIT(32'h90090000)) 
    sum__0_carry_i_24
       (.I0(sum__0_carry_i_11_0[3]),
        .I1(Q[32]),
        .I2(Q[31]),
        .I3(sum__0_carry_i_11_0[2]),
        .I4(sum__0_carry_i_20_n_0),
        .O(sum__0_carry_i_24_n_0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    sum__0_carry_i_3
       (.I0(sum__0_carry_i_14_n_0),
        .I1(RD1E[2]),
        .I2(sum__0_carry_i_15_n_0),
        .I3(ResultW[2]),
        .I4(\q_reg[103]_0 [7]),
        .I5(ForwardAE),
        .O(SrcAE[2]));
  LUT6 #(
    .INIT(64'hFF00CCCCE4E4CCCC)) 
    sum__0_carry_i_4
       (.I0(sum__0_carry_i_11_n_0),
        .I1(RD1E[1]),
        .I2(ResultW[1]),
        .I3(\q_reg[103]_0 [6]),
        .I4(sum__0_carry_i_12_n_0),
        .I5(\hu/ForwardAE11_out ),
        .O(SrcAE[1]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    sum__0_carry_i_5
       (.I0(sum__0_carry_i_14_n_0),
        .I1(RD1E[0]),
        .I2(sum__0_carry_i_15_n_0),
        .I3(ResultW[0]),
        .I4(ForwardAE),
        .I5(\q_reg[103]_0 [5]),
        .O(SrcAE[0]));
  LUT3 #(
    .INIT(8'h96)) 
    sum__0_carry_i_6
       (.I0(SrcAE[3]),
        .I1(SrcBE[3]),
        .I2(\q_reg[4]_1 [1]),
        .O(\q_reg[5]_11 [3]));
  LUT3 #(
    .INIT(8'h96)) 
    sum__0_carry_i_7
       (.I0(SrcAE[2]),
        .I1(SrcBE[2]),
        .I2(\q_reg[4]_1 [1]),
        .O(\q_reg[5]_11 [2]));
  LUT3 #(
    .INIT(8'h96)) 
    sum__0_carry_i_8
       (.I0(SrcAE[1]),
        .I1(SrcBE[1]),
        .I2(\q_reg[4]_1 [1]),
        .O(\q_reg[5]_11 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    sum__0_carry_i_9
       (.I0(SrcAE[0]),
        .I1(\q_reg[4]_1 [1]),
        .O(\q_reg[5]_11 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    y_carry__0_i_1
       (.I0(Q[7]),
        .I1(PCE[7]),
        .O(\q_reg[44]_0 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    y_carry__0_i_2
       (.I0(Q[6]),
        .I1(PCE[6]),
        .O(\q_reg[44]_0 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    y_carry__0_i_3
       (.I0(Q[5]),
        .I1(PCE[5]),
        .O(\q_reg[44]_0 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    y_carry__0_i_4
       (.I0(Q[4]),
        .I1(PCE[4]),
        .O(\q_reg[44]_0 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    y_carry__1_i_1
       (.I0(Q[11]),
        .I1(PCE[11]),
        .O(\q_reg[48]_0 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    y_carry__1_i_2
       (.I0(Q[10]),
        .I1(PCE[10]),
        .O(\q_reg[48]_0 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    y_carry__1_i_3
       (.I0(Q[9]),
        .I1(PCE[9]),
        .O(\q_reg[48]_0 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    y_carry__1_i_4
       (.I0(Q[8]),
        .I1(PCE[8]),
        .O(\q_reg[48]_0 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    y_carry__2_i_1
       (.I0(Q[15]),
        .I1(PCE[15]),
        .O(\q_reg[52]_0 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    y_carry__2_i_2
       (.I0(Q[14]),
        .I1(PCE[14]),
        .O(\q_reg[52]_0 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    y_carry__2_i_3
       (.I0(Q[13]),
        .I1(PCE[13]),
        .O(\q_reg[52]_0 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    y_carry__2_i_4
       (.I0(Q[12]),
        .I1(PCE[12]),
        .O(\q_reg[52]_0 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    y_carry__3_i_1
       (.I0(Q[19]),
        .I1(PCE[19]),
        .O(\q_reg[56]_0 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    y_carry__3_i_2
       (.I0(Q[18]),
        .I1(PCE[18]),
        .O(\q_reg[56]_0 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    y_carry__3_i_3
       (.I0(Q[17]),
        .I1(PCE[17]),
        .O(\q_reg[56]_0 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    y_carry__3_i_4
       (.I0(Q[16]),
        .I1(PCE[16]),
        .O(\q_reg[56]_0 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    y_carry__4_i_1
       (.I0(Q[23]),
        .I1(PCE[23]),
        .O(\q_reg[60]_1 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    y_carry__4_i_2
       (.I0(Q[22]),
        .I1(PCE[22]),
        .O(\q_reg[60]_1 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    y_carry__4_i_3
       (.I0(Q[21]),
        .I1(PCE[21]),
        .O(\q_reg[60]_1 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    y_carry__4_i_4
       (.I0(Q[20]),
        .I1(PCE[20]),
        .O(\q_reg[60]_1 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    y_carry__5_i_1
       (.I0(Q[27]),
        .I1(PCE[27]),
        .O(\q_reg[64]_1 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    y_carry__5_i_2
       (.I0(Q[26]),
        .I1(PCE[26]),
        .O(\q_reg[64]_1 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    y_carry__5_i_3
       (.I0(Q[25]),
        .I1(PCE[25]),
        .O(\q_reg[64]_1 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    y_carry__5_i_4
       (.I0(Q[24]),
        .I1(PCE[24]),
        .O(\q_reg[64]_1 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    y_carry__6_i_1
       (.I0(ImmExtE),
        .I1(PCE[31]),
        .O(\q_reg[68]_0 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    y_carry__6_i_2
       (.I0(Q[30]),
        .I1(PCE[30]),
        .O(\q_reg[68]_0 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    y_carry__6_i_3
       (.I0(Q[29]),
        .I1(PCE[29]),
        .O(\q_reg[68]_0 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    y_carry__6_i_4
       (.I0(Q[28]),
        .I1(PCE[28]),
        .O(\q_reg[68]_0 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    y_carry_i_1
       (.I0(Q[3]),
        .I1(PCE[3]),
        .O(S[3]));
  LUT2 #(
    .INIT(4'h6)) 
    y_carry_i_2
       (.I0(Q[2]),
        .I1(PCE[2]),
        .O(S[2]));
  LUT2 #(
    .INIT(4'h6)) 
    y_carry_i_3
       (.I0(Q[1]),
        .I1(D[36]),
        .O(S[1]));
  LUT2 #(
    .INIT(4'h6)) 
    y_carry_i_4
       (.I0(Q[0]),
        .I1(D[35]),
        .O(S[0]));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_flopr
   (\q_reg[2]_0 ,
    D,
    clk,
    reset);
  output [2:0]\q_reg[2]_0 ;
  input [2:0]D;
  input clk;
  input reset;

  wire [2:0]D;
  wire clk;
  wire [2:0]\q_reg[2]_0 ;
  wire reset;

  FDCE \q_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[0]),
        .Q(\q_reg[2]_0 [0]));
  FDCE \q_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[1]),
        .Q(\q_reg[2]_0 [1]));
  FDCE \q_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[2]),
        .Q(\q_reg[2]_0 [2]));
endmodule

(* ORIG_REF_NAME = "flopr" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_flopr__parameterized0
   (ResultW,
    \q_reg[69]_0 ,
    Q,
    \q_reg[102]_0 ,
    sum__0_carry_i_11,
    D,
    clk,
    reset);
  output [31:0]ResultW;
  output \q_reg[69]_0 ;
  output [4:0]Q;
  input [1:0]\q_reg[102]_0 ;
  input [1:0]sum__0_carry_i_11;
  input [132:0]D;
  input clk;
  input reset;

  wire [31:0]ALUResultW;
  wire [132:0]D;
  wire [31:0]PCPlus4W;
  wire [4:0]Q;
  wire [31:0]ReadDataW1;
  wire [31:0]ResultW;
  wire [31:0]UTypeW;
  wire clk;
  wire [1:0]\q_reg[102]_0 ;
  wire \q_reg[69]_0 ;
  wire reset;
  wire [1:0]sum__0_carry_i_11;

  FDCE \q_reg[100] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[97]),
        .Q(ReadDataW1[28]));
  FDCE \q_reg[101] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[98]),
        .Q(ReadDataW1[29]));
  FDCE \q_reg[102] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[99]),
        .Q(ReadDataW1[30]));
  FDCE \q_reg[103] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[100]),
        .Q(ReadDataW1[31]));
  FDCE \q_reg[104] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[101]),
        .Q(ALUResultW[0]));
  FDCE \q_reg[105] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[102]),
        .Q(ALUResultW[1]));
  FDCE \q_reg[106] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[103]),
        .Q(ALUResultW[2]));
  FDCE \q_reg[107] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[104]),
        .Q(ALUResultW[3]));
  FDCE \q_reg[108] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[105]),
        .Q(ALUResultW[4]));
  FDCE \q_reg[109] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[106]),
        .Q(ALUResultW[5]));
  FDCE \q_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[7]),
        .Q(UTypeW[7]));
  FDCE \q_reg[110] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[107]),
        .Q(ALUResultW[6]));
  FDCE \q_reg[111] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[108]),
        .Q(ALUResultW[7]));
  FDCE \q_reg[112] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[109]),
        .Q(ALUResultW[8]));
  FDCE \q_reg[113] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[110]),
        .Q(ALUResultW[9]));
  FDCE \q_reg[114] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[111]),
        .Q(ALUResultW[10]));
  FDCE \q_reg[115] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[112]),
        .Q(ALUResultW[11]));
  FDCE \q_reg[116] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[113]),
        .Q(ALUResultW[12]));
  FDCE \q_reg[117] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[114]),
        .Q(ALUResultW[13]));
  FDCE \q_reg[118] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[115]),
        .Q(ALUResultW[14]));
  FDCE \q_reg[119] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[116]),
        .Q(ALUResultW[15]));
  FDCE \q_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[8]),
        .Q(UTypeW[8]));
  FDCE \q_reg[120] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[117]),
        .Q(ALUResultW[16]));
  FDCE \q_reg[121] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[118]),
        .Q(ALUResultW[17]));
  FDCE \q_reg[122] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[119]),
        .Q(ALUResultW[18]));
  FDCE \q_reg[123] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[120]),
        .Q(ALUResultW[19]));
  FDCE \q_reg[124] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[121]),
        .Q(ALUResultW[20]));
  FDCE \q_reg[125] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[122]),
        .Q(ALUResultW[21]));
  FDCE \q_reg[126] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[123]),
        .Q(ALUResultW[22]));
  FDCE \q_reg[127] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[124]),
        .Q(ALUResultW[23]));
  FDCE \q_reg[128] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[125]),
        .Q(ALUResultW[24]));
  FDCE \q_reg[129] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[126]),
        .Q(ALUResultW[25]));
  FDCE \q_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[9]),
        .Q(UTypeW[9]));
  FDCE \q_reg[130] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[127]),
        .Q(ALUResultW[26]));
  FDCE \q_reg[131] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[128]),
        .Q(ALUResultW[27]));
  FDCE \q_reg[132] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[129]),
        .Q(ALUResultW[28]));
  FDCE \q_reg[133] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[130]),
        .Q(ALUResultW[29]));
  FDCE \q_reg[134] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[131]),
        .Q(ALUResultW[30]));
  FDCE \q_reg[135] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[132]),
        .Q(ALUResultW[31]));
  FDCE \q_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[10]),
        .Q(UTypeW[10]));
  FDCE \q_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[11]),
        .Q(UTypeW[11]));
  FDCE \q_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[12]),
        .Q(UTypeW[12]));
  FDCE \q_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[13]),
        .Q(UTypeW[13]));
  FDCE \q_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[14]),
        .Q(UTypeW[14]));
  FDCE \q_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[15]),
        .Q(UTypeW[15]));
  FDCE \q_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[16]),
        .Q(UTypeW[16]));
  FDCE \q_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[17]),
        .Q(UTypeW[17]));
  FDCE \q_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[18]),
        .Q(UTypeW[18]));
  FDCE \q_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[19]),
        .Q(UTypeW[19]));
  FDCE \q_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[20]),
        .Q(UTypeW[20]));
  FDCE \q_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[21]),
        .Q(UTypeW[21]));
  FDCE \q_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[22]),
        .Q(UTypeW[22]));
  FDCE \q_reg[26] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[23]),
        .Q(UTypeW[23]));
  FDCE \q_reg[27] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[24]),
        .Q(UTypeW[24]));
  FDCE \q_reg[28] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[25]),
        .Q(UTypeW[25]));
  FDCE \q_reg[29] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[26]),
        .Q(UTypeW[26]));
  FDCE \q_reg[30] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[27]),
        .Q(UTypeW[27]));
  FDCE \q_reg[31] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[28]),
        .Q(UTypeW[28]));
  FDCE \q_reg[32] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[29]),
        .Q(UTypeW[29]));
  FDCE \q_reg[33] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[30]),
        .Q(UTypeW[30]));
  FDCE \q_reg[34] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[31]),
        .Q(UTypeW[31]));
  FDCE \q_reg[35] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[32]),
        .Q(PCPlus4W[0]));
  FDCE \q_reg[36] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[33]),
        .Q(PCPlus4W[1]));
  FDCE \q_reg[37] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[34]),
        .Q(PCPlus4W[2]));
  FDCE \q_reg[38] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[35]),
        .Q(PCPlus4W[3]));
  FDCE \q_reg[39] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[36]),
        .Q(PCPlus4W[4]));
  FDCE \q_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[0]),
        .Q(UTypeW[0]));
  FDCE \q_reg[40] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[37]),
        .Q(PCPlus4W[5]));
  FDCE \q_reg[41] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[38]),
        .Q(PCPlus4W[6]));
  FDCE \q_reg[42] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[39]),
        .Q(PCPlus4W[7]));
  FDCE \q_reg[43] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[40]),
        .Q(PCPlus4W[8]));
  FDCE \q_reg[44] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[41]),
        .Q(PCPlus4W[9]));
  FDCE \q_reg[45] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[42]),
        .Q(PCPlus4W[10]));
  FDCE \q_reg[46] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[43]),
        .Q(PCPlus4W[11]));
  FDCE \q_reg[47] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[44]),
        .Q(PCPlus4W[12]));
  FDCE \q_reg[48] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[45]),
        .Q(PCPlus4W[13]));
  FDCE \q_reg[49] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[46]),
        .Q(PCPlus4W[14]));
  FDCE \q_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[1]),
        .Q(UTypeW[1]));
  FDCE \q_reg[50] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[47]),
        .Q(PCPlus4W[15]));
  FDCE \q_reg[51] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[48]),
        .Q(PCPlus4W[16]));
  FDCE \q_reg[52] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[49]),
        .Q(PCPlus4W[17]));
  FDCE \q_reg[53] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[50]),
        .Q(PCPlus4W[18]));
  FDCE \q_reg[54] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[51]),
        .Q(PCPlus4W[19]));
  FDCE \q_reg[55] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[52]),
        .Q(PCPlus4W[20]));
  FDCE \q_reg[56] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[53]),
        .Q(PCPlus4W[21]));
  FDCE \q_reg[57] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[54]),
        .Q(PCPlus4W[22]));
  FDCE \q_reg[58] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[55]),
        .Q(PCPlus4W[23]));
  FDCE \q_reg[59] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[56]),
        .Q(PCPlus4W[24]));
  FDCE \q_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[2]),
        .Q(UTypeW[2]));
  FDCE \q_reg[60] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[57]),
        .Q(PCPlus4W[25]));
  FDCE \q_reg[61] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[58]),
        .Q(PCPlus4W[26]));
  FDCE \q_reg[62] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[59]),
        .Q(PCPlus4W[27]));
  FDCE \q_reg[63] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[60]),
        .Q(PCPlus4W[28]));
  FDCE \q_reg[64] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[61]),
        .Q(PCPlus4W[29]));
  FDCE \q_reg[65] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[62]),
        .Q(PCPlus4W[30]));
  FDCE \q_reg[66] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[63]),
        .Q(PCPlus4W[31]));
  FDCE \q_reg[67] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[64]),
        .Q(Q[0]));
  FDCE \q_reg[68] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[65]),
        .Q(Q[1]));
  FDCE \q_reg[69] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[66]),
        .Q(Q[2]));
  FDCE \q_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[3]),
        .Q(UTypeW[3]));
  FDCE \q_reg[70] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[67]),
        .Q(Q[3]));
  FDCE \q_reg[71] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[68]),
        .Q(Q[4]));
  FDCE \q_reg[72] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[69]),
        .Q(ReadDataW1[0]));
  FDCE \q_reg[73] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[70]),
        .Q(ReadDataW1[1]));
  FDCE \q_reg[74] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[71]),
        .Q(ReadDataW1[2]));
  FDCE \q_reg[75] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[72]),
        .Q(ReadDataW1[3]));
  FDCE \q_reg[76] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[73]),
        .Q(ReadDataW1[4]));
  FDCE \q_reg[77] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[74]),
        .Q(ReadDataW1[5]));
  FDCE \q_reg[78] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[75]),
        .Q(ReadDataW1[6]));
  FDCE \q_reg[79] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[76]),
        .Q(ReadDataW1[7]));
  FDCE \q_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[4]),
        .Q(UTypeW[4]));
  FDCE \q_reg[80] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[77]),
        .Q(ReadDataW1[8]));
  FDCE \q_reg[81] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[78]),
        .Q(ReadDataW1[9]));
  FDCE \q_reg[82] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[79]),
        .Q(ReadDataW1[10]));
  FDCE \q_reg[83] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[80]),
        .Q(ReadDataW1[11]));
  FDCE \q_reg[84] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[81]),
        .Q(ReadDataW1[12]));
  FDCE \q_reg[85] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[82]),
        .Q(ReadDataW1[13]));
  FDCE \q_reg[86] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[83]),
        .Q(ReadDataW1[14]));
  FDCE \q_reg[87] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[84]),
        .Q(ReadDataW1[15]));
  FDCE \q_reg[88] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[85]),
        .Q(ReadDataW1[16]));
  FDCE \q_reg[89] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[86]),
        .Q(ReadDataW1[17]));
  FDCE \q_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[5]),
        .Q(UTypeW[5]));
  FDCE \q_reg[90] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[87]),
        .Q(ReadDataW1[18]));
  FDCE \q_reg[91] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[88]),
        .Q(ReadDataW1[19]));
  FDCE \q_reg[92] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[89]),
        .Q(ReadDataW1[20]));
  FDCE \q_reg[93] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[90]),
        .Q(ReadDataW1[21]));
  FDCE \q_reg[94] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[91]),
        .Q(ReadDataW1[22]));
  FDCE \q_reg[95] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[92]),
        .Q(ReadDataW1[23]));
  FDCE \q_reg[96] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[93]),
        .Q(ReadDataW1[24]));
  FDCE \q_reg[97] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[94]),
        .Q(ReadDataW1[25]));
  FDCE \q_reg[98] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[95]),
        .Q(ReadDataW1[26]));
  FDCE \q_reg[99] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[96]),
        .Q(ReadDataW1[27]));
  FDCE \q_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(D[6]),
        .Q(UTypeW[6]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    rf_reg_r1_0_31_0_5_i_2
       (.I0(ReadDataW1[1]),
        .I1(UTypeW[1]),
        .I2(\q_reg[102]_0 [0]),
        .I3(\q_reg[102]_0 [1]),
        .I4(ALUResultW[1]),
        .I5(PCPlus4W[1]),
        .O(ResultW[1]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    rf_reg_r1_0_31_0_5_i_3
       (.I0(ReadDataW1[0]),
        .I1(UTypeW[0]),
        .I2(\q_reg[102]_0 [0]),
        .I3(\q_reg[102]_0 [1]),
        .I4(ALUResultW[0]),
        .I5(PCPlus4W[0]),
        .O(ResultW[0]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    rf_reg_r1_0_31_0_5_i_4
       (.I0(ReadDataW1[3]),
        .I1(UTypeW[3]),
        .I2(\q_reg[102]_0 [0]),
        .I3(\q_reg[102]_0 [1]),
        .I4(ALUResultW[3]),
        .I5(PCPlus4W[3]),
        .O(ResultW[3]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    rf_reg_r1_0_31_0_5_i_5
       (.I0(ReadDataW1[2]),
        .I1(UTypeW[2]),
        .I2(\q_reg[102]_0 [0]),
        .I3(\q_reg[102]_0 [1]),
        .I4(ALUResultW[2]),
        .I5(PCPlus4W[2]),
        .O(ResultW[2]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    rf_reg_r1_0_31_0_5_i_6
       (.I0(ReadDataW1[5]),
        .I1(UTypeW[5]),
        .I2(\q_reg[102]_0 [0]),
        .I3(\q_reg[102]_0 [1]),
        .I4(ALUResultW[5]),
        .I5(PCPlus4W[5]),
        .O(ResultW[5]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    rf_reg_r1_0_31_0_5_i_7
       (.I0(ReadDataW1[4]),
        .I1(UTypeW[4]),
        .I2(\q_reg[102]_0 [0]),
        .I3(\q_reg[102]_0 [1]),
        .I4(ALUResultW[4]),
        .I5(PCPlus4W[4]),
        .O(ResultW[4]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    rf_reg_r1_0_31_12_17_i_1
       (.I0(ReadDataW1[13]),
        .I1(UTypeW[13]),
        .I2(\q_reg[102]_0 [0]),
        .I3(\q_reg[102]_0 [1]),
        .I4(ALUResultW[13]),
        .I5(PCPlus4W[13]),
        .O(ResultW[13]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    rf_reg_r1_0_31_12_17_i_2
       (.I0(ReadDataW1[12]),
        .I1(UTypeW[12]),
        .I2(\q_reg[102]_0 [0]),
        .I3(\q_reg[102]_0 [1]),
        .I4(ALUResultW[12]),
        .I5(PCPlus4W[12]),
        .O(ResultW[12]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    rf_reg_r1_0_31_12_17_i_3
       (.I0(ReadDataW1[15]),
        .I1(UTypeW[15]),
        .I2(\q_reg[102]_0 [0]),
        .I3(\q_reg[102]_0 [1]),
        .I4(ALUResultW[15]),
        .I5(PCPlus4W[15]),
        .O(ResultW[15]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    rf_reg_r1_0_31_12_17_i_4
       (.I0(ReadDataW1[14]),
        .I1(UTypeW[14]),
        .I2(\q_reg[102]_0 [0]),
        .I3(\q_reg[102]_0 [1]),
        .I4(ALUResultW[14]),
        .I5(PCPlus4W[14]),
        .O(ResultW[14]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    rf_reg_r1_0_31_12_17_i_5
       (.I0(ReadDataW1[17]),
        .I1(UTypeW[17]),
        .I2(\q_reg[102]_0 [0]),
        .I3(\q_reg[102]_0 [1]),
        .I4(ALUResultW[17]),
        .I5(PCPlus4W[17]),
        .O(ResultW[17]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    rf_reg_r1_0_31_12_17_i_6
       (.I0(ReadDataW1[16]),
        .I1(UTypeW[16]),
        .I2(\q_reg[102]_0 [0]),
        .I3(\q_reg[102]_0 [1]),
        .I4(ALUResultW[16]),
        .I5(PCPlus4W[16]),
        .O(ResultW[16]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    rf_reg_r1_0_31_18_23_i_1
       (.I0(ReadDataW1[19]),
        .I1(UTypeW[19]),
        .I2(\q_reg[102]_0 [0]),
        .I3(\q_reg[102]_0 [1]),
        .I4(ALUResultW[19]),
        .I5(PCPlus4W[19]),
        .O(ResultW[19]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    rf_reg_r1_0_31_18_23_i_2
       (.I0(ReadDataW1[18]),
        .I1(UTypeW[18]),
        .I2(\q_reg[102]_0 [0]),
        .I3(\q_reg[102]_0 [1]),
        .I4(ALUResultW[18]),
        .I5(PCPlus4W[18]),
        .O(ResultW[18]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    rf_reg_r1_0_31_18_23_i_3
       (.I0(ReadDataW1[21]),
        .I1(UTypeW[21]),
        .I2(\q_reg[102]_0 [0]),
        .I3(\q_reg[102]_0 [1]),
        .I4(ALUResultW[21]),
        .I5(PCPlus4W[21]),
        .O(ResultW[21]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    rf_reg_r1_0_31_18_23_i_4
       (.I0(ReadDataW1[20]),
        .I1(UTypeW[20]),
        .I2(\q_reg[102]_0 [0]),
        .I3(\q_reg[102]_0 [1]),
        .I4(ALUResultW[20]),
        .I5(PCPlus4W[20]),
        .O(ResultW[20]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    rf_reg_r1_0_31_18_23_i_5
       (.I0(ReadDataW1[23]),
        .I1(UTypeW[23]),
        .I2(\q_reg[102]_0 [0]),
        .I3(\q_reg[102]_0 [1]),
        .I4(ALUResultW[23]),
        .I5(PCPlus4W[23]),
        .O(ResultW[23]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    rf_reg_r1_0_31_18_23_i_6
       (.I0(ReadDataW1[22]),
        .I1(UTypeW[22]),
        .I2(\q_reg[102]_0 [0]),
        .I3(\q_reg[102]_0 [1]),
        .I4(ALUResultW[22]),
        .I5(PCPlus4W[22]),
        .O(ResultW[22]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    rf_reg_r1_0_31_24_29_i_1
       (.I0(ReadDataW1[25]),
        .I1(UTypeW[25]),
        .I2(\q_reg[102]_0 [0]),
        .I3(\q_reg[102]_0 [1]),
        .I4(ALUResultW[25]),
        .I5(PCPlus4W[25]),
        .O(ResultW[25]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    rf_reg_r1_0_31_24_29_i_2
       (.I0(ReadDataW1[24]),
        .I1(UTypeW[24]),
        .I2(\q_reg[102]_0 [0]),
        .I3(\q_reg[102]_0 [1]),
        .I4(ALUResultW[24]),
        .I5(PCPlus4W[24]),
        .O(ResultW[24]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    rf_reg_r1_0_31_24_29_i_3
       (.I0(ReadDataW1[27]),
        .I1(UTypeW[27]),
        .I2(\q_reg[102]_0 [0]),
        .I3(\q_reg[102]_0 [1]),
        .I4(ALUResultW[27]),
        .I5(PCPlus4W[27]),
        .O(ResultW[27]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    rf_reg_r1_0_31_24_29_i_4
       (.I0(ReadDataW1[26]),
        .I1(UTypeW[26]),
        .I2(\q_reg[102]_0 [0]),
        .I3(\q_reg[102]_0 [1]),
        .I4(ALUResultW[26]),
        .I5(PCPlus4W[26]),
        .O(ResultW[26]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    rf_reg_r1_0_31_24_29_i_5
       (.I0(ReadDataW1[29]),
        .I1(UTypeW[29]),
        .I2(\q_reg[102]_0 [0]),
        .I3(\q_reg[102]_0 [1]),
        .I4(ALUResultW[29]),
        .I5(PCPlus4W[29]),
        .O(ResultW[29]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    rf_reg_r1_0_31_24_29_i_6
       (.I0(ReadDataW1[28]),
        .I1(UTypeW[28]),
        .I2(\q_reg[102]_0 [0]),
        .I3(\q_reg[102]_0 [1]),
        .I4(ALUResultW[28]),
        .I5(PCPlus4W[28]),
        .O(ResultW[28]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    rf_reg_r1_0_31_30_31_i_1
       (.I0(ReadDataW1[31]),
        .I1(UTypeW[31]),
        .I2(\q_reg[102]_0 [0]),
        .I3(\q_reg[102]_0 [1]),
        .I4(ALUResultW[31]),
        .I5(PCPlus4W[31]),
        .O(ResultW[31]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    rf_reg_r1_0_31_30_31_i_1__0
       (.I0(ReadDataW1[30]),
        .I1(UTypeW[30]),
        .I2(\q_reg[102]_0 [0]),
        .I3(\q_reg[102]_0 [1]),
        .I4(ALUResultW[30]),
        .I5(PCPlus4W[30]),
        .O(ResultW[30]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    rf_reg_r1_0_31_6_11_i_1
       (.I0(ReadDataW1[7]),
        .I1(UTypeW[7]),
        .I2(\q_reg[102]_0 [0]),
        .I3(\q_reg[102]_0 [1]),
        .I4(ALUResultW[7]),
        .I5(PCPlus4W[7]),
        .O(ResultW[7]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    rf_reg_r1_0_31_6_11_i_2
       (.I0(ReadDataW1[6]),
        .I1(UTypeW[6]),
        .I2(\q_reg[102]_0 [0]),
        .I3(\q_reg[102]_0 [1]),
        .I4(ALUResultW[6]),
        .I5(PCPlus4W[6]),
        .O(ResultW[6]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    rf_reg_r1_0_31_6_11_i_3
       (.I0(ReadDataW1[9]),
        .I1(UTypeW[9]),
        .I2(\q_reg[102]_0 [0]),
        .I3(\q_reg[102]_0 [1]),
        .I4(ALUResultW[9]),
        .I5(PCPlus4W[9]),
        .O(ResultW[9]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    rf_reg_r1_0_31_6_11_i_4
       (.I0(ReadDataW1[8]),
        .I1(UTypeW[8]),
        .I2(\q_reg[102]_0 [0]),
        .I3(\q_reg[102]_0 [1]),
        .I4(ALUResultW[8]),
        .I5(PCPlus4W[8]),
        .O(ResultW[8]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    rf_reg_r1_0_31_6_11_i_5
       (.I0(ReadDataW1[11]),
        .I1(UTypeW[11]),
        .I2(\q_reg[102]_0 [0]),
        .I3(\q_reg[102]_0 [1]),
        .I4(ALUResultW[11]),
        .I5(PCPlus4W[11]),
        .O(ResultW[11]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    rf_reg_r1_0_31_6_11_i_6
       (.I0(ReadDataW1[10]),
        .I1(UTypeW[10]),
        .I2(\q_reg[102]_0 [0]),
        .I3(\q_reg[102]_0 [1]),
        .I4(ALUResultW[10]),
        .I5(PCPlus4W[10]),
        .O(ResultW[10]));
  LUT4 #(
    .INIT(16'h9009)) 
    sum__0_carry_i_21
       (.I0(Q[2]),
        .I1(sum__0_carry_i_11[0]),
        .I2(sum__0_carry_i_11[1]),
        .I3(Q[3]),
        .O(\q_reg[69]_0 ));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_imem
   (a,
    rd);
  input [31:0]a;
  output [31:0]rd;

  wire \<const0> ;
  wire [31:0]a;
  wire [31:4]\^rd ;

  assign rd[31] = \^rd [31];
  assign rd[30] = \^rd [31];
  assign rd[29] = \^rd [31];
  assign rd[28] = \^rd [28];
  assign rd[27] = \^rd [31];
  assign rd[26] = \^rd [31];
  assign rd[25:24] = \^rd [25:24];
  assign rd[23] = \^rd [31];
  assign rd[22:19] = \^rd [22:19];
  assign rd[18] = \^rd [19];
  assign rd[17:13] = \^rd [17:13];
  assign rd[12] = \^rd [14];
  assign rd[11:4] = \^rd [11:4];
  assign rd[3] = \^rd [14];
  assign rd[2] = \^rd [14];
  assign rd[1] = \<const0> ;
  assign rd[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT4 #(
    .INIT(16'h00CD)) 
    \rd[10]_INST_0 
       (.I0(a[5]),
        .I1(a[2]),
        .I2(a[4]),
        .I3(a[3]),
        .O(\^rd [10]));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT4 #(
    .INIT(16'h004D)) 
    \rd[11]_INST_0 
       (.I0(a[5]),
        .I1(a[2]),
        .I2(a[4]),
        .I3(a[3]),
        .O(\^rd [11]));
  LUT3 #(
    .INIT(8'h28)) 
    \rd[13]_INST_0 
       (.I0(a[5]),
        .I1(a[3]),
        .I2(a[4]),
        .O(\^rd [13]));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT4 #(
    .INIT(16'h282A)) 
    \rd[15]_INST_0 
       (.I0(a[5]),
        .I1(a[3]),
        .I2(a[4]),
        .I3(a[2]),
        .O(\^rd [15]));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT4 #(
    .INIT(16'h3404)) 
    \rd[16]_INST_0 
       (.I0(a[2]),
        .I1(a[5]),
        .I2(a[4]),
        .I3(a[3]),
        .O(\^rd [16]));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT4 #(
    .INIT(16'h6E6A)) 
    \rd[17]_INST_0 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[2]),
        .O(\^rd [17]));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT4 #(
    .INIT(16'h22E8)) 
    \rd[18]_INST_0 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[2]),
        .I3(a[3]),
        .O(\^rd [19]));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT4 #(
    .INIT(16'h3260)) 
    \rd[20]_INST_0 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[2]),
        .O(\^rd [20]));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT4 #(
    .INIT(16'h0038)) 
    \rd[21]_INST_0 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[2]),
        .I3(a[3]),
        .O(\^rd [21]));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT4 #(
    .INIT(16'h1A2D)) 
    \rd[22]_INST_0 
       (.I0(a[5]),
        .I1(a[2]),
        .I2(a[4]),
        .I3(a[3]),
        .O(\^rd [22]));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT4 #(
    .INIT(16'h0220)) 
    \rd[23]_INST_0 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[2]),
        .I3(a[3]),
        .O(\^rd [31]));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT4 #(
    .INIT(16'h0020)) 
    \rd[24]_INST_0 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[2]),
        .I3(a[3]),
        .O(\^rd [24]));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT4 #(
    .INIT(16'h0230)) 
    \rd[25]_INST_0 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[2]),
        .I3(a[3]),
        .O(\^rd [25]));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT4 #(
    .INIT(16'h0029)) 
    \rd[28]_INST_0 
       (.I0(a[5]),
        .I1(a[2]),
        .I2(a[3]),
        .I3(a[4]),
        .O(\^rd [28]));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT4 #(
    .INIT(16'h0200)) 
    \rd[2]_INST_0 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[2]),
        .I3(a[3]),
        .O(\^rd [14]));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT4 #(
    .INIT(16'hCD77)) 
    \rd[4]_INST_0 
       (.I0(a[5]),
        .I1(a[3]),
        .I2(a[2]),
        .I3(a[4]),
        .O(\^rd [4]));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT4 #(
    .INIT(16'hAE48)) 
    \rd[5]_INST_0 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[2]),
        .I3(a[3]),
        .O(\^rd [5]));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT4 #(
    .INIT(16'h8A40)) 
    \rd[6]_INST_0 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[2]),
        .I3(a[3]),
        .O(\^rd [6]));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT4 #(
    .INIT(16'h00D5)) 
    \rd[7]_INST_0 
       (.I0(a[2]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[5]),
        .O(\^rd [7]));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT4 #(
    .INIT(16'h1582)) 
    \rd[8]_INST_0 
       (.I0(a[5]),
        .I1(a[2]),
        .I2(a[4]),
        .I3(a[3]),
        .O(\^rd [8]));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT4 #(
    .INIT(16'h4777)) 
    \rd[9]_INST_0 
       (.I0(a[5]),
        .I1(a[3]),
        .I2(a[2]),
        .I3(a[4]),
        .O(\^rd [9]));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_regfile
   (rd10,
    rd20,
    ResultW,
    \q_reg[147] ,
    Q,
    \q_reg[141] ,
    clk);
  output [31:0]rd10;
  output [31:0]rd20;
  input [31:0]ResultW;
  input [0:0]\q_reg[147] ;
  input [4:0]Q;
  input [9:0]\q_reg[141] ;
  input clk;

  wire [4:0]Q;
  wire [31:0]ResultW;
  wire clk;
  wire [9:0]\q_reg[141] ;
  wire [0:0]\q_reg[147] ;
  wire [31:0]rd10;
  wire [31:0]rd20;
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

  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "dp/rf/rf_reg_r1_0_31_0_5" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "5" *) 
  RAM32M #(
    .IS_WCLK_INVERTED(1'b1)) 
    rf_reg_r1_0_31_0_5
       (.ADDRA(\q_reg[141] [4:0]),
        .ADDRB(\q_reg[141] [4:0]),
        .ADDRC(\q_reg[141] [4:0]),
        .ADDRD(Q),
        .DIA(ResultW[1:0]),
        .DIB(ResultW[3:2]),
        .DIC(ResultW[5:4]),
        .DID({1'b0,1'b0}),
        .DOA(rd10[1:0]),
        .DOB(rd10[3:2]),
        .DOC(rd10[5:4]),
        .DOD(NLW_rf_reg_r1_0_31_0_5_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(\q_reg[147] ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "dp/rf/rf_reg_r1_0_31_12_17" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "17" *) 
  RAM32M #(
    .IS_WCLK_INVERTED(1'b1)) 
    rf_reg_r1_0_31_12_17
       (.ADDRA(\q_reg[141] [4:0]),
        .ADDRB(\q_reg[141] [4:0]),
        .ADDRC(\q_reg[141] [4:0]),
        .ADDRD(Q),
        .DIA(ResultW[13:12]),
        .DIB(ResultW[15:14]),
        .DIC(ResultW[17:16]),
        .DID({1'b0,1'b0}),
        .DOA(rd10[13:12]),
        .DOB(rd10[15:14]),
        .DOC(rd10[17:16]),
        .DOD(NLW_rf_reg_r1_0_31_12_17_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(\q_reg[147] ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "dp/rf/rf_reg_r1_0_31_18_23" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "18" *) 
  (* ram_slice_end = "23" *) 
  RAM32M #(
    .IS_WCLK_INVERTED(1'b1)) 
    rf_reg_r1_0_31_18_23
       (.ADDRA(\q_reg[141] [4:0]),
        .ADDRB(\q_reg[141] [4:0]),
        .ADDRC(\q_reg[141] [4:0]),
        .ADDRD(Q),
        .DIA(ResultW[19:18]),
        .DIB(ResultW[21:20]),
        .DIC(ResultW[23:22]),
        .DID({1'b0,1'b0}),
        .DOA(rd10[19:18]),
        .DOB(rd10[21:20]),
        .DOC(rd10[23:22]),
        .DOD(NLW_rf_reg_r1_0_31_18_23_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(\q_reg[147] ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "dp/rf/rf_reg_r1_0_31_24_29" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "24" *) 
  (* ram_slice_end = "29" *) 
  RAM32M #(
    .IS_WCLK_INVERTED(1'b1)) 
    rf_reg_r1_0_31_24_29
       (.ADDRA(\q_reg[141] [4:0]),
        .ADDRB(\q_reg[141] [4:0]),
        .ADDRC(\q_reg[141] [4:0]),
        .ADDRD(Q),
        .DIA(ResultW[25:24]),
        .DIB(ResultW[27:26]),
        .DIC(ResultW[29:28]),
        .DID({1'b0,1'b0}),
        .DOA(rd10[25:24]),
        .DOB(rd10[27:26]),
        .DOC(rd10[29:28]),
        .DOD(NLW_rf_reg_r1_0_31_24_29_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(\q_reg[147] ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "dp/rf/rf_reg_r1_0_31_30_31" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "30" *) 
  (* ram_slice_end = "31" *) 
  RAM32X1D #(
    .IS_WCLK_INVERTED(1'b1)) 
    rf_reg_r1_0_31_30_31
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(Q[4]),
        .D(ResultW[30]),
        .DPO(rd10[30]),
        .DPRA0(\q_reg[141] [0]),
        .DPRA1(\q_reg[141] [1]),
        .DPRA2(\q_reg[141] [2]),
        .DPRA3(\q_reg[141] [3]),
        .DPRA4(\q_reg[141] [4]),
        .SPO(NLW_rf_reg_r1_0_31_30_31_SPO_UNCONNECTED),
        .WCLK(clk),
        .WE(\q_reg[147] ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "dp/rf/rf_reg_r1_0_31_30_31" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "30" *) 
  (* ram_slice_end = "31" *) 
  RAM32X1D #(
    .IS_WCLK_INVERTED(1'b1)) 
    rf_reg_r1_0_31_30_31__0
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(Q[4]),
        .D(ResultW[31]),
        .DPO(rd10[31]),
        .DPRA0(\q_reg[141] [0]),
        .DPRA1(\q_reg[141] [1]),
        .DPRA2(\q_reg[141] [2]),
        .DPRA3(\q_reg[141] [3]),
        .DPRA4(\q_reg[141] [4]),
        .SPO(NLW_rf_reg_r1_0_31_30_31__0_SPO_UNCONNECTED),
        .WCLK(clk),
        .WE(\q_reg[147] ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "dp/rf/rf_reg_r1_0_31_6_11" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "11" *) 
  RAM32M #(
    .IS_WCLK_INVERTED(1'b1)) 
    rf_reg_r1_0_31_6_11
       (.ADDRA(\q_reg[141] [4:0]),
        .ADDRB(\q_reg[141] [4:0]),
        .ADDRC(\q_reg[141] [4:0]),
        .ADDRD(Q),
        .DIA(ResultW[7:6]),
        .DIB(ResultW[9:8]),
        .DIC(ResultW[11:10]),
        .DID({1'b0,1'b0}),
        .DOA(rd10[7:6]),
        .DOB(rd10[9:8]),
        .DOC(rd10[11:10]),
        .DOD(NLW_rf_reg_r1_0_31_6_11_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(\q_reg[147] ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "dp/rf/rf_reg_r2_0_31_0_5" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "5" *) 
  RAM32M #(
    .IS_WCLK_INVERTED(1'b1)) 
    rf_reg_r2_0_31_0_5
       (.ADDRA(\q_reg[141] [9:5]),
        .ADDRB(\q_reg[141] [9:5]),
        .ADDRC(\q_reg[141] [9:5]),
        .ADDRD(Q),
        .DIA(ResultW[1:0]),
        .DIB(ResultW[3:2]),
        .DIC(ResultW[5:4]),
        .DID({1'b0,1'b0}),
        .DOA(rd20[1:0]),
        .DOB(rd20[3:2]),
        .DOC(rd20[5:4]),
        .DOD(NLW_rf_reg_r2_0_31_0_5_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(\q_reg[147] ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "dp/rf/rf_reg_r2_0_31_12_17" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "17" *) 
  RAM32M #(
    .IS_WCLK_INVERTED(1'b1)) 
    rf_reg_r2_0_31_12_17
       (.ADDRA(\q_reg[141] [9:5]),
        .ADDRB(\q_reg[141] [9:5]),
        .ADDRC(\q_reg[141] [9:5]),
        .ADDRD(Q),
        .DIA(ResultW[13:12]),
        .DIB(ResultW[15:14]),
        .DIC(ResultW[17:16]),
        .DID({1'b0,1'b0}),
        .DOA(rd20[13:12]),
        .DOB(rd20[15:14]),
        .DOC(rd20[17:16]),
        .DOD(NLW_rf_reg_r2_0_31_12_17_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(\q_reg[147] ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "dp/rf/rf_reg_r2_0_31_18_23" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "18" *) 
  (* ram_slice_end = "23" *) 
  RAM32M #(
    .IS_WCLK_INVERTED(1'b1)) 
    rf_reg_r2_0_31_18_23
       (.ADDRA(\q_reg[141] [9:5]),
        .ADDRB(\q_reg[141] [9:5]),
        .ADDRC(\q_reg[141] [9:5]),
        .ADDRD(Q),
        .DIA(ResultW[19:18]),
        .DIB(ResultW[21:20]),
        .DIC(ResultW[23:22]),
        .DID({1'b0,1'b0}),
        .DOA(rd20[19:18]),
        .DOB(rd20[21:20]),
        .DOC(rd20[23:22]),
        .DOD(NLW_rf_reg_r2_0_31_18_23_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(\q_reg[147] ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "dp/rf/rf_reg_r2_0_31_24_29" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "24" *) 
  (* ram_slice_end = "29" *) 
  RAM32M #(
    .IS_WCLK_INVERTED(1'b1)) 
    rf_reg_r2_0_31_24_29
       (.ADDRA(\q_reg[141] [9:5]),
        .ADDRB(\q_reg[141] [9:5]),
        .ADDRC(\q_reg[141] [9:5]),
        .ADDRD(Q),
        .DIA(ResultW[25:24]),
        .DIB(ResultW[27:26]),
        .DIC(ResultW[29:28]),
        .DID({1'b0,1'b0}),
        .DOA(rd20[25:24]),
        .DOB(rd20[27:26]),
        .DOC(rd20[29:28]),
        .DOD(NLW_rf_reg_r2_0_31_24_29_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(\q_reg[147] ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "dp/rf/rf_reg_r2_0_31_30_31" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "30" *) 
  (* ram_slice_end = "31" *) 
  RAM32X1D #(
    .IS_WCLK_INVERTED(1'b1)) 
    rf_reg_r2_0_31_30_31
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(Q[4]),
        .D(ResultW[30]),
        .DPO(rd20[30]),
        .DPRA0(\q_reg[141] [5]),
        .DPRA1(\q_reg[141] [6]),
        .DPRA2(\q_reg[141] [7]),
        .DPRA3(\q_reg[141] [8]),
        .DPRA4(\q_reg[141] [9]),
        .SPO(NLW_rf_reg_r2_0_31_30_31_SPO_UNCONNECTED),
        .WCLK(clk),
        .WE(\q_reg[147] ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "dp/rf/rf_reg_r2_0_31_30_31" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "30" *) 
  (* ram_slice_end = "31" *) 
  RAM32X1D #(
    .IS_WCLK_INVERTED(1'b1)) 
    rf_reg_r2_0_31_30_31__0
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(Q[4]),
        .D(ResultW[31]),
        .DPO(rd20[31]),
        .DPRA0(\q_reg[141] [5]),
        .DPRA1(\q_reg[141] [6]),
        .DPRA2(\q_reg[141] [7]),
        .DPRA3(\q_reg[141] [8]),
        .DPRA4(\q_reg[141] [9]),
        .SPO(NLW_rf_reg_r2_0_31_30_31__0_SPO_UNCONNECTED),
        .WCLK(clk),
        .WE(\q_reg[147] ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "dp/rf/rf_reg_r2_0_31_6_11" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "11" *) 
  RAM32M #(
    .IS_WCLK_INVERTED(1'b1)) 
    rf_reg_r2_0_31_6_11
       (.ADDRA(\q_reg[141] [9:5]),
        .ADDRB(\q_reg[141] [9:5]),
        .ADDRC(\q_reg[141] [9:5]),
        .ADDRD(Q),
        .DIA(ResultW[7:6]),
        .DIB(ResultW[9:8]),
        .DIC(ResultW[11:10]),
        .DID({1'b0,1'b0}),
        .DOA(rd20[7:6]),
        .DOB(rd20[9:8]),
        .DOC(rd20[11:10]),
        .DOD(NLW_rf_reg_r2_0_31_6_11_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(\q_reg[147] ));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_riscv
   (clk,
    reset,
    PCF,
    InstrF,
    MemWriteM,
    ALUResultM,
    WriteDataM,
    ReadDataM,
    MemStrobeM,
    PCReadyM);
  input clk;
  input reset;
  output [31:0]PCF;
  input [31:0]InstrF;
  output MemWriteM;
  output [31:0]ALUResultM;
  output [31:0]WriteDataM;
  input [31:0]ReadDataM;
  output MemStrobeM;
  input PCReadyM;

  wire [3:0]ALUControlE;
  wire [30:20]ALUResultE;
  wire [31:0]ALUResultM;
  wire ALUSrcE;
  wire [31:0]InstrF;
  wire JumpE;
  wire MemStrobeM;
  wire MemWriteM;
  wire [31:0]PCF;
  wire PCReadyM;
  wire [31:0]ReadDataM;
  wire RegWriteM;
  wire RegWriteW;
  wire ResultSrcEb0;
  wire [1:0]ResultSrcW;
  wire [30:20]SrcAE;
  wire [31:31]SrcAE__0;
  wire [31:0]SrcBE;
  wire [31:0]WriteDataM;
  wire [30:20]\alu/data8 ;
  wire \alu/p_3_in ;
  wire \alu/v__7 ;
  wire c_n_0;
  wire c_n_12;
  wire c_n_13;
  wire c_n_14;
  wire c_n_18;
  wire c_n_24;
  wire c_n_25;
  wire c_n_26;
  wire c_n_27;
  wire c_n_28;
  wire c_n_29;
  wire clk;
  wire dp_n_135;
  wire dp_n_136;
  wire dp_n_137;
  wire dp_n_138;
  wire dp_n_139;
  wire dp_n_140;
  wire dp_n_141;
  wire dp_n_142;
  wire dp_n_143;
  wire dp_n_144;
  wire dp_n_145;
  wire dp_n_55;
  wire dp_n_83;
  wire dp_n_84;
  wire dp_n_85;
  wire dp_n_86;
  wire dp_n_87;
  wire dp_n_88;
  wire dp_n_89;
  wire dp_n_90;
  wire dp_n_91;
  wire dp_n_92;
  wire dp_n_93;
  wire dp_n_94;
  wire ltE;
  wire [14:0]p_0_in;
  wire reset;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_controller c
       (.ALUResultE(ALUResultE),
        .D({p_0_in[14:4],p_0_in[0]}),
        .O(\alu/p_3_in ),
        .PCReadyM(PCReadyM),
        .Q({ResultSrcEb0,JumpE,c_n_18,ALUControlE,ALUSrcE}),
        .SrcAE(SrcAE__0),
        .SrcBE({SrcBE[31:20],SrcBE[0]}),
        .clk(clk),
        .data8(\alu/data8 ),
        .ltE(ltE),
        .\q[31]_i_15 (c_n_14),
        .\q[31]_i_5 (dp_n_88),
        .\q_reg[124] (dp_n_135),
        .\q_reg[124]_0 (dp_n_84),
        .\q_reg[125] (dp_n_141),
        .\q_reg[125]_0 (dp_n_85),
        .\q_reg[126] (dp_n_136),
        .\q_reg[126]_0 (dp_n_86),
        .\q_reg[127] (dp_n_142),
        .\q_reg[127]_0 (dp_n_87),
        .\q_reg[128] (dp_n_137),
        .\q_reg[128]_0 (dp_n_89),
        .\q_reg[129] (dp_n_143),
        .\q_reg[129]_0 (dp_n_90),
        .\q_reg[130] (dp_n_138),
        .\q_reg[130]_0 (dp_n_91),
        .\q_reg[131] (dp_n_144),
        .\q_reg[131]_0 (dp_n_92),
        .\q_reg[132] (dp_n_139),
        .\q_reg[132]_0 (dp_n_93),
        .\q_reg[133] (dp_n_145),
        .\q_reg[133]_0 (dp_n_94),
        .\q_reg[134] (dp_n_140),
        .\q_reg[134]_0 (dp_n_83),
        .\q_reg[134]_1 (SrcAE),
        .\q_reg[179] (dp_n_55),
        .\q_reg[2] ({RegWriteW,ResultSrcW}),
        .\q_reg[4] ({RegWriteM,MemWriteM,MemStrobeM}),
        .\q_reg[5] (c_n_29),
        .\q_reg[6] (c_n_0),
        .\q_reg[6]_0 (c_n_13),
        .\q_reg[6]_1 (c_n_25),
        .\q_reg[6]_2 (c_n_27),
        .\q_reg[7] (c_n_24),
        .\q_reg[8] (c_n_12),
        .\q_reg[8]_0 (c_n_26),
        .\q_reg[9] (c_n_28),
        .reset(reset),
        .v__7(\alu/v__7 ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_datapath dp
       (.D({p_0_in[14:4],p_0_in[0]}),
        .InstrF(InstrF[31:1]),
        .O(\alu/p_3_in ),
        .PCReadyM(PCReadyM),
        .Q(PCF),
        .ReadDataM(ReadDataM),
        .WriteDataM(WriteDataM[31:8]),
        .clk(clk),
        .i__carry__6_i_7(\alu/data8 ),
        .ltE(ltE),
        .\q[104]_i_3 (c_n_29),
        .\q_reg[0] (dp_n_55),
        .\q_reg[104] (c_n_27),
        .\q_reg[123] (c_n_12),
        .\q_reg[123]_0 (c_n_26),
        .\q_reg[133] (c_n_24),
        .\q_reg[134] (ALUResultE),
        .\q_reg[135] ({ALUResultM,WriteDataM[7:0]}),
        .\q_reg[135]_0 (c_n_25),
        .\q_reg[135]_1 (c_n_13),
        .\q_reg[147] ({RegWriteW,ResultSrcW}),
        .\q_reg[178] (SrcAE),
        .\q_reg[179] (SrcAE__0),
        .\q_reg[179]_0 (c_n_28),
        .\q_reg[2] (c_n_0),
        .\q_reg[4] ({ResultSrcEb0,JumpE,c_n_18,ALUControlE,ALUSrcE}),
        .\q_reg[5] (dp_n_83),
        .\q_reg[5]_0 (dp_n_84),
        .\q_reg[5]_1 (dp_n_85),
        .\q_reg[5]_2 (dp_n_86),
        .\q_reg[5]_3 (dp_n_87),
        .\q_reg[5]_4 (dp_n_89),
        .\q_reg[5]_5 (dp_n_90),
        .\q_reg[5]_6 (dp_n_91),
        .\q_reg[5]_7 (dp_n_92),
        .\q_reg[5]_8 (dp_n_93),
        .\q_reg[5]_9 (dp_n_94),
        .\q_reg[68] ({SrcBE[31:20],SrcBE[0]}),
        .\q_reg[6] (dp_n_88),
        .\q_reg[6]_0 (dp_n_135),
        .\q_reg[6]_1 (dp_n_136),
        .\q_reg[6]_10 (dp_n_145),
        .\q_reg[6]_2 (dp_n_137),
        .\q_reg[6]_3 (dp_n_138),
        .\q_reg[6]_4 (dp_n_139),
        .\q_reg[6]_5 (dp_n_140),
        .\q_reg[6]_6 (dp_n_141),
        .\q_reg[6]_7 (dp_n_142),
        .\q_reg[6]_8 (dp_n_143),
        .\q_reg[6]_9 (dp_n_144),
        .\q_reg[76] (RegWriteM),
        .\q_reg[95] (c_n_14),
        .reset(reset),
        .v__7(\alu/v__7 ));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_storeloadcase
   (WriteDataM,
    Q);
  output [23:0]WriteDataM;
  input [27:0]Q;

  wire [27:0]Q;
  wire [23:0]WriteDataM;

  LUT5 #(
    .INIT(32'hF0F1F0E0)) 
    \WriteDataM[10]_INST_0 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[6]),
        .I3(Q[0]),
        .I4(Q[3]),
        .O(WriteDataM[2]));
  LUT5 #(
    .INIT(32'hF0F1F0E0)) 
    \WriteDataM[11]_INST_0 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[7]),
        .I3(Q[0]),
        .I4(Q[3]),
        .O(WriteDataM[3]));
  LUT5 #(
    .INIT(32'hF0F1F0E0)) 
    \WriteDataM[12]_INST_0 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[8]),
        .I3(Q[0]),
        .I4(Q[3]),
        .O(WriteDataM[4]));
  LUT5 #(
    .INIT(32'hF0F1F0E0)) 
    \WriteDataM[13]_INST_0 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[9]),
        .I3(Q[0]),
        .I4(Q[3]),
        .O(WriteDataM[5]));
  LUT5 #(
    .INIT(32'hF0F1F0E0)) 
    \WriteDataM[14]_INST_0 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[10]),
        .I3(Q[0]),
        .I4(Q[3]),
        .O(WriteDataM[6]));
  LUT5 #(
    .INIT(32'hF0F1F0E0)) 
    \WriteDataM[15]_INST_0 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[11]),
        .I3(Q[0]),
        .I4(Q[3]),
        .O(WriteDataM[7]));
  LUT6 #(
    .INIT(64'hABA8ABABABA8A8A8)) 
    \WriteDataM[16]_INST_0 
       (.I0(Q[12]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[11]),
        .I4(Q[0]),
        .I5(Q[3]),
        .O(WriteDataM[8]));
  LUT6 #(
    .INIT(64'hABA8ABABABA8A8A8)) 
    \WriteDataM[17]_INST_0 
       (.I0(Q[13]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[11]),
        .I4(Q[0]),
        .I5(Q[3]),
        .O(WriteDataM[9]));
  LUT6 #(
    .INIT(64'hABA8ABABABA8A8A8)) 
    \WriteDataM[18]_INST_0 
       (.I0(Q[14]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[11]),
        .I4(Q[0]),
        .I5(Q[3]),
        .O(WriteDataM[10]));
  LUT6 #(
    .INIT(64'hABA8ABABABA8A8A8)) 
    \WriteDataM[19]_INST_0 
       (.I0(Q[15]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[11]),
        .I4(Q[0]),
        .I5(Q[3]),
        .O(WriteDataM[11]));
  LUT6 #(
    .INIT(64'hABA8ABABABA8A8A8)) 
    \WriteDataM[20]_INST_0 
       (.I0(Q[16]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[11]),
        .I4(Q[0]),
        .I5(Q[3]),
        .O(WriteDataM[12]));
  LUT6 #(
    .INIT(64'hABA8ABABABA8A8A8)) 
    \WriteDataM[21]_INST_0 
       (.I0(Q[17]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[11]),
        .I4(Q[0]),
        .I5(Q[3]),
        .O(WriteDataM[13]));
  LUT6 #(
    .INIT(64'hABA8ABABABA8A8A8)) 
    \WriteDataM[22]_INST_0 
       (.I0(Q[18]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[11]),
        .I4(Q[0]),
        .I5(Q[3]),
        .O(WriteDataM[14]));
  LUT6 #(
    .INIT(64'hABA8ABABABA8A8A8)) 
    \WriteDataM[23]_INST_0 
       (.I0(Q[19]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[11]),
        .I4(Q[0]),
        .I5(Q[3]),
        .O(WriteDataM[15]));
  LUT6 #(
    .INIT(64'hABA8ABABABA8A8A8)) 
    \WriteDataM[24]_INST_0 
       (.I0(Q[20]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[11]),
        .I4(Q[0]),
        .I5(Q[3]),
        .O(WriteDataM[16]));
  LUT6 #(
    .INIT(64'hABA8ABABABA8A8A8)) 
    \WriteDataM[25]_INST_0 
       (.I0(Q[21]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[11]),
        .I4(Q[0]),
        .I5(Q[3]),
        .O(WriteDataM[17]));
  LUT6 #(
    .INIT(64'hABA8ABABABA8A8A8)) 
    \WriteDataM[26]_INST_0 
       (.I0(Q[22]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[11]),
        .I4(Q[0]),
        .I5(Q[3]),
        .O(WriteDataM[18]));
  LUT6 #(
    .INIT(64'hABA8ABABABA8A8A8)) 
    \WriteDataM[27]_INST_0 
       (.I0(Q[23]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[11]),
        .I4(Q[0]),
        .I5(Q[3]),
        .O(WriteDataM[19]));
  LUT6 #(
    .INIT(64'hABA8ABABABA8A8A8)) 
    \WriteDataM[28]_INST_0 
       (.I0(Q[24]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[11]),
        .I4(Q[0]),
        .I5(Q[3]),
        .O(WriteDataM[20]));
  LUT6 #(
    .INIT(64'hABA8ABABABA8A8A8)) 
    \WriteDataM[29]_INST_0 
       (.I0(Q[25]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[11]),
        .I4(Q[0]),
        .I5(Q[3]),
        .O(WriteDataM[21]));
  LUT6 #(
    .INIT(64'hABA8ABABABA8A8A8)) 
    \WriteDataM[30]_INST_0 
       (.I0(Q[26]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[11]),
        .I4(Q[0]),
        .I5(Q[3]),
        .O(WriteDataM[22]));
  LUT6 #(
    .INIT(64'hABA8ABABABA8A8A8)) 
    \WriteDataM[31]_INST_0 
       (.I0(Q[27]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[11]),
        .I4(Q[0]),
        .I5(Q[3]),
        .O(WriteDataM[23]));
  LUT5 #(
    .INIT(32'hF0F1F0E0)) 
    \WriteDataM[8]_INST_0 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[4]),
        .I3(Q[0]),
        .I4(Q[3]),
        .O(WriteDataM[0]));
  LUT5 #(
    .INIT(32'hF0F1F0E0)) 
    \WriteDataM[9]_INST_0 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[5]),
        .I3(Q[0]),
        .I4(Q[3]),
        .O(WriteDataM[1]));
endmodule

(* keep_hierarchy = "soft" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_top
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
  wire [1:0]NLW_imem_rd_UNCONNECTED;

  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(1'b1),
        .O(Instr[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_1
       (.I0(1'b1),
        .O(Instr[0]));
  (* KEEP_HIERARCHY = "soft" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_imem imem
       (.a({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,PC[5:2],1'b0,1'b0}),
        .rd({Instr[31:2],NLW_imem_rd_UNCONNECTED[1:0]}));
  (* KEEP_HIERARCHY = "soft" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MemControl memcontrol
       (.AXIstart(AXIStart),
        .DRW(DRW),
        .Done(PCReady),
        .MStrobe(MStrobe),
        .MemWrite(MemWrite),
        .Trigger(doneM),
        .clk(clk),
        .reset(reset));
  (* KEEP_HIERARCHY = "soft" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_riscv riscv
       (.ALUResultM(addressM),
        .InstrF({Instr[31:1],1'b0}),
        .MemStrobeM(MStrobe),
        .MemWriteM(MemWrite),
        .PCF(PC),
        .PCReadyM(PCReady),
        .ReadDataM(readDataM),
        .WriteDataM(writeDataM),
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
