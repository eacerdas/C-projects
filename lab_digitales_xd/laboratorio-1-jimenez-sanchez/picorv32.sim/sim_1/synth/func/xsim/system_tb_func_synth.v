// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Sun Apr 25 11:51:49 2021
// Host        : robertsc-pc running 64-bit Ubuntu 20.04.2 LTS
// Command     : write_verilog -mode funcsim -nolib -force -file
//               /home/robertsc/Documents/labDigitales/laboratorio-1-jimenez-sanchez/picorv32.sim/sim_1/synth/func/xsim/system_tb_func_synth.v
// Design      : system
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module picorv32
   (trap_OBUF,
    Q,
    E,
    ADDRARDADDR,
    out_byte_en01_out,
    p_0_in,
    p_2_in,
    clk_IBUF_BUFG,
    resetn_IBUF,
    mem_rdata);
  output trap_OBUF;
  output [7:0]Q;
  output [0:0]E;
  output [11:0]ADDRARDADDR;
  output out_byte_en01_out;
  output [3:0]p_0_in;
  output [23:0]p_2_in;
  input clk_IBUF_BUFG;
  input resetn_IBUF;
  input [31:0]mem_rdata;

  wire [11:0]ADDRARDADDR;
  wire [0:0]E;
  wire [7:0]Q;
  wire alu_eq;
  wire alu_lts;
  wire alu_ltu;
  wire [31:0]alu_out;
  wire \alu_out0_inferred__3/i___29_carry__0_n_0 ;
  wire \alu_out0_inferred__3/i___29_carry__0_n_1 ;
  wire \alu_out0_inferred__3/i___29_carry__0_n_2 ;
  wire \alu_out0_inferred__3/i___29_carry__0_n_3 ;
  wire \alu_out0_inferred__3/i___29_carry__0_n_4 ;
  wire \alu_out0_inferred__3/i___29_carry__0_n_5 ;
  wire \alu_out0_inferred__3/i___29_carry__0_n_6 ;
  wire \alu_out0_inferred__3/i___29_carry__0_n_7 ;
  wire \alu_out0_inferred__3/i___29_carry__1_n_0 ;
  wire \alu_out0_inferred__3/i___29_carry__1_n_1 ;
  wire \alu_out0_inferred__3/i___29_carry__1_n_2 ;
  wire \alu_out0_inferred__3/i___29_carry__1_n_3 ;
  wire \alu_out0_inferred__3/i___29_carry__1_n_4 ;
  wire \alu_out0_inferred__3/i___29_carry__1_n_5 ;
  wire \alu_out0_inferred__3/i___29_carry__1_n_6 ;
  wire \alu_out0_inferred__3/i___29_carry__1_n_7 ;
  wire \alu_out0_inferred__3/i___29_carry__2_n_0 ;
  wire \alu_out0_inferred__3/i___29_carry__2_n_1 ;
  wire \alu_out0_inferred__3/i___29_carry__2_n_2 ;
  wire \alu_out0_inferred__3/i___29_carry__2_n_3 ;
  wire \alu_out0_inferred__3/i___29_carry__2_n_4 ;
  wire \alu_out0_inferred__3/i___29_carry__2_n_5 ;
  wire \alu_out0_inferred__3/i___29_carry__2_n_6 ;
  wire \alu_out0_inferred__3/i___29_carry__2_n_7 ;
  wire \alu_out0_inferred__3/i___29_carry__3_n_0 ;
  wire \alu_out0_inferred__3/i___29_carry__3_n_1 ;
  wire \alu_out0_inferred__3/i___29_carry__3_n_2 ;
  wire \alu_out0_inferred__3/i___29_carry__3_n_3 ;
  wire \alu_out0_inferred__3/i___29_carry__3_n_4 ;
  wire \alu_out0_inferred__3/i___29_carry__3_n_5 ;
  wire \alu_out0_inferred__3/i___29_carry__3_n_6 ;
  wire \alu_out0_inferred__3/i___29_carry__3_n_7 ;
  wire \alu_out0_inferred__3/i___29_carry__4_n_0 ;
  wire \alu_out0_inferred__3/i___29_carry__4_n_1 ;
  wire \alu_out0_inferred__3/i___29_carry__4_n_2 ;
  wire \alu_out0_inferred__3/i___29_carry__4_n_3 ;
  wire \alu_out0_inferred__3/i___29_carry__4_n_4 ;
  wire \alu_out0_inferred__3/i___29_carry__4_n_5 ;
  wire \alu_out0_inferred__3/i___29_carry__4_n_6 ;
  wire \alu_out0_inferred__3/i___29_carry__4_n_7 ;
  wire \alu_out0_inferred__3/i___29_carry__5_n_0 ;
  wire \alu_out0_inferred__3/i___29_carry__5_n_1 ;
  wire \alu_out0_inferred__3/i___29_carry__5_n_2 ;
  wire \alu_out0_inferred__3/i___29_carry__5_n_3 ;
  wire \alu_out0_inferred__3/i___29_carry__5_n_4 ;
  wire \alu_out0_inferred__3/i___29_carry__5_n_5 ;
  wire \alu_out0_inferred__3/i___29_carry__5_n_6 ;
  wire \alu_out0_inferred__3/i___29_carry__5_n_7 ;
  wire \alu_out0_inferred__3/i___29_carry__6_n_1 ;
  wire \alu_out0_inferred__3/i___29_carry__6_n_2 ;
  wire \alu_out0_inferred__3/i___29_carry__6_n_3 ;
  wire \alu_out0_inferred__3/i___29_carry__6_n_4 ;
  wire \alu_out0_inferred__3/i___29_carry__6_n_5 ;
  wire \alu_out0_inferred__3/i___29_carry__6_n_6 ;
  wire \alu_out0_inferred__3/i___29_carry__6_n_7 ;
  wire \alu_out0_inferred__3/i___29_carry_n_0 ;
  wire \alu_out0_inferred__3/i___29_carry_n_1 ;
  wire \alu_out0_inferred__3/i___29_carry_n_2 ;
  wire \alu_out0_inferred__3/i___29_carry_n_3 ;
  wire \alu_out0_inferred__3/i___29_carry_n_4 ;
  wire \alu_out0_inferred__3/i___29_carry_n_5 ;
  wire \alu_out0_inferred__3/i___29_carry_n_6 ;
  wire \alu_out0_inferred__3/i___29_carry_n_7 ;
  wire \alu_out_00_inferred__1/i__carry__0_n_0 ;
  wire \alu_out_00_inferred__1/i__carry__0_n_1 ;
  wire \alu_out_00_inferred__1/i__carry__0_n_2 ;
  wire \alu_out_00_inferred__1/i__carry__0_n_3 ;
  wire \alu_out_00_inferred__1/i__carry__1_n_2 ;
  wire \alu_out_00_inferred__1/i__carry__1_n_3 ;
  wire \alu_out_00_inferred__1/i__carry_n_0 ;
  wire \alu_out_00_inferred__1/i__carry_n_1 ;
  wire \alu_out_00_inferred__1/i__carry_n_2 ;
  wire \alu_out_00_inferred__1/i__carry_n_3 ;
  wire alu_out_01_carry__0_i_1_n_0;
  wire alu_out_01_carry__0_i_2_n_0;
  wire alu_out_01_carry__0_i_3_n_0;
  wire alu_out_01_carry__0_i_4_n_0;
  wire alu_out_01_carry__0_i_5_n_0;
  wire alu_out_01_carry__0_i_6_n_0;
  wire alu_out_01_carry__0_i_7_n_0;
  wire alu_out_01_carry__0_i_8_n_0;
  wire alu_out_01_carry__0_n_0;
  wire alu_out_01_carry__0_n_1;
  wire alu_out_01_carry__0_n_2;
  wire alu_out_01_carry__0_n_3;
  wire alu_out_01_carry__1_i_1_n_0;
  wire alu_out_01_carry__1_i_2_n_0;
  wire alu_out_01_carry__1_i_3_n_0;
  wire alu_out_01_carry__1_i_4_n_0;
  wire alu_out_01_carry__1_i_5_n_0;
  wire alu_out_01_carry__1_i_6_n_0;
  wire alu_out_01_carry__1_i_7_n_0;
  wire alu_out_01_carry__1_i_8_n_0;
  wire alu_out_01_carry__1_n_0;
  wire alu_out_01_carry__1_n_1;
  wire alu_out_01_carry__1_n_2;
  wire alu_out_01_carry__1_n_3;
  wire alu_out_01_carry__2_i_1_n_0;
  wire alu_out_01_carry__2_i_2_n_0;
  wire alu_out_01_carry__2_i_3_n_0;
  wire alu_out_01_carry__2_i_4_n_0;
  wire alu_out_01_carry__2_i_5_n_0;
  wire alu_out_01_carry__2_i_6_n_0;
  wire alu_out_01_carry__2_i_7_n_0;
  wire alu_out_01_carry__2_i_8_n_0;
  wire alu_out_01_carry__2_n_1;
  wire alu_out_01_carry__2_n_2;
  wire alu_out_01_carry__2_n_3;
  wire alu_out_01_carry_i_1_n_0;
  wire alu_out_01_carry_i_2_n_0;
  wire alu_out_01_carry_i_3_n_0;
  wire alu_out_01_carry_i_4_n_0;
  wire alu_out_01_carry_i_5_n_0;
  wire alu_out_01_carry_i_6_n_0;
  wire alu_out_01_carry_i_7_n_0;
  wire alu_out_01_carry_i_8_n_0;
  wire alu_out_01_carry_n_0;
  wire alu_out_01_carry_n_1;
  wire alu_out_01_carry_n_2;
  wire alu_out_01_carry_n_3;
  wire \alu_out_01_inferred__0/i__carry__0_n_0 ;
  wire \alu_out_01_inferred__0/i__carry__0_n_1 ;
  wire \alu_out_01_inferred__0/i__carry__0_n_2 ;
  wire \alu_out_01_inferred__0/i__carry__0_n_3 ;
  wire \alu_out_01_inferred__0/i__carry__1_n_0 ;
  wire \alu_out_01_inferred__0/i__carry__1_n_1 ;
  wire \alu_out_01_inferred__0/i__carry__1_n_2 ;
  wire \alu_out_01_inferred__0/i__carry__1_n_3 ;
  wire \alu_out_01_inferred__0/i__carry__2_n_1 ;
  wire \alu_out_01_inferred__0/i__carry__2_n_2 ;
  wire \alu_out_01_inferred__0/i__carry__2_n_3 ;
  wire \alu_out_01_inferred__0/i__carry_n_0 ;
  wire \alu_out_01_inferred__0/i__carry_n_1 ;
  wire \alu_out_01_inferred__0/i__carry_n_2 ;
  wire \alu_out_01_inferred__0/i__carry_n_3 ;
  wire [31:0]alu_out_q;
  wire \alu_out_q[0]_i_2_n_0 ;
  wire \alu_out_q[0]_i_3_n_0 ;
  wire \alu_out_q[10]_i_2_n_0 ;
  wire \alu_out_q[11]_i_2_n_0 ;
  wire \alu_out_q[12]_i_2_n_0 ;
  wire \alu_out_q[13]_i_2_n_0 ;
  wire \alu_out_q[14]_i_2_n_0 ;
  wire \alu_out_q[15]_i_2_n_0 ;
  wire \alu_out_q[16]_i_2_n_0 ;
  wire \alu_out_q[17]_i_2_n_0 ;
  wire \alu_out_q[18]_i_2_n_0 ;
  wire \alu_out_q[19]_i_2_n_0 ;
  wire \alu_out_q[1]_i_2_n_0 ;
  wire \alu_out_q[20]_i_2_n_0 ;
  wire \alu_out_q[21]_i_2_n_0 ;
  wire \alu_out_q[22]_i_2_n_0 ;
  wire \alu_out_q[23]_i_2_n_0 ;
  wire \alu_out_q[24]_i_2_n_0 ;
  wire \alu_out_q[25]_i_2_n_0 ;
  wire \alu_out_q[26]_i_2_n_0 ;
  wire \alu_out_q[27]_i_2_n_0 ;
  wire \alu_out_q[28]_i_2_n_0 ;
  wire \alu_out_q[29]_i_2_n_0 ;
  wire \alu_out_q[2]_i_2_n_0 ;
  wire \alu_out_q[30]_i_2_n_0 ;
  wire \alu_out_q[30]_i_3_n_0 ;
  wire \alu_out_q[31]_i_2_n_0 ;
  wire \alu_out_q[31]_i_3_n_0 ;
  wire \alu_out_q[3]_i_2_n_0 ;
  wire \alu_out_q[4]_i_2_n_0 ;
  wire \alu_out_q[5]_i_2_n_0 ;
  wire \alu_out_q[6]_i_2_n_0 ;
  wire \alu_out_q[7]_i_2_n_0 ;
  wire \alu_out_q[8]_i_2_n_0 ;
  wire \alu_out_q[9]_i_2_n_0 ;
  wire clk_IBUF_BUFG;
  wire \count_cycle[0]_i_2_n_0 ;
  wire [63:0]count_cycle_reg;
  wire \count_cycle_reg[0]_i_1_n_0 ;
  wire \count_cycle_reg[0]_i_1_n_1 ;
  wire \count_cycle_reg[0]_i_1_n_2 ;
  wire \count_cycle_reg[0]_i_1_n_3 ;
  wire \count_cycle_reg[0]_i_1_n_4 ;
  wire \count_cycle_reg[0]_i_1_n_5 ;
  wire \count_cycle_reg[0]_i_1_n_6 ;
  wire \count_cycle_reg[0]_i_1_n_7 ;
  wire \count_cycle_reg[12]_i_1_n_0 ;
  wire \count_cycle_reg[12]_i_1_n_1 ;
  wire \count_cycle_reg[12]_i_1_n_2 ;
  wire \count_cycle_reg[12]_i_1_n_3 ;
  wire \count_cycle_reg[12]_i_1_n_4 ;
  wire \count_cycle_reg[12]_i_1_n_5 ;
  wire \count_cycle_reg[12]_i_1_n_6 ;
  wire \count_cycle_reg[12]_i_1_n_7 ;
  wire \count_cycle_reg[16]_i_1_n_0 ;
  wire \count_cycle_reg[16]_i_1_n_1 ;
  wire \count_cycle_reg[16]_i_1_n_2 ;
  wire \count_cycle_reg[16]_i_1_n_3 ;
  wire \count_cycle_reg[16]_i_1_n_4 ;
  wire \count_cycle_reg[16]_i_1_n_5 ;
  wire \count_cycle_reg[16]_i_1_n_6 ;
  wire \count_cycle_reg[16]_i_1_n_7 ;
  wire \count_cycle_reg[20]_i_1_n_0 ;
  wire \count_cycle_reg[20]_i_1_n_1 ;
  wire \count_cycle_reg[20]_i_1_n_2 ;
  wire \count_cycle_reg[20]_i_1_n_3 ;
  wire \count_cycle_reg[20]_i_1_n_4 ;
  wire \count_cycle_reg[20]_i_1_n_5 ;
  wire \count_cycle_reg[20]_i_1_n_6 ;
  wire \count_cycle_reg[20]_i_1_n_7 ;
  wire \count_cycle_reg[24]_i_1_n_0 ;
  wire \count_cycle_reg[24]_i_1_n_1 ;
  wire \count_cycle_reg[24]_i_1_n_2 ;
  wire \count_cycle_reg[24]_i_1_n_3 ;
  wire \count_cycle_reg[24]_i_1_n_4 ;
  wire \count_cycle_reg[24]_i_1_n_5 ;
  wire \count_cycle_reg[24]_i_1_n_6 ;
  wire \count_cycle_reg[24]_i_1_n_7 ;
  wire \count_cycle_reg[28]_i_1_n_0 ;
  wire \count_cycle_reg[28]_i_1_n_1 ;
  wire \count_cycle_reg[28]_i_1_n_2 ;
  wire \count_cycle_reg[28]_i_1_n_3 ;
  wire \count_cycle_reg[28]_i_1_n_4 ;
  wire \count_cycle_reg[28]_i_1_n_5 ;
  wire \count_cycle_reg[28]_i_1_n_6 ;
  wire \count_cycle_reg[28]_i_1_n_7 ;
  wire \count_cycle_reg[32]_i_1_n_0 ;
  wire \count_cycle_reg[32]_i_1_n_1 ;
  wire \count_cycle_reg[32]_i_1_n_2 ;
  wire \count_cycle_reg[32]_i_1_n_3 ;
  wire \count_cycle_reg[32]_i_1_n_4 ;
  wire \count_cycle_reg[32]_i_1_n_5 ;
  wire \count_cycle_reg[32]_i_1_n_6 ;
  wire \count_cycle_reg[32]_i_1_n_7 ;
  wire \count_cycle_reg[36]_i_1_n_0 ;
  wire \count_cycle_reg[36]_i_1_n_1 ;
  wire \count_cycle_reg[36]_i_1_n_2 ;
  wire \count_cycle_reg[36]_i_1_n_3 ;
  wire \count_cycle_reg[36]_i_1_n_4 ;
  wire \count_cycle_reg[36]_i_1_n_5 ;
  wire \count_cycle_reg[36]_i_1_n_6 ;
  wire \count_cycle_reg[36]_i_1_n_7 ;
  wire \count_cycle_reg[40]_i_1_n_0 ;
  wire \count_cycle_reg[40]_i_1_n_1 ;
  wire \count_cycle_reg[40]_i_1_n_2 ;
  wire \count_cycle_reg[40]_i_1_n_3 ;
  wire \count_cycle_reg[40]_i_1_n_4 ;
  wire \count_cycle_reg[40]_i_1_n_5 ;
  wire \count_cycle_reg[40]_i_1_n_6 ;
  wire \count_cycle_reg[40]_i_1_n_7 ;
  wire \count_cycle_reg[44]_i_1_n_0 ;
  wire \count_cycle_reg[44]_i_1_n_1 ;
  wire \count_cycle_reg[44]_i_1_n_2 ;
  wire \count_cycle_reg[44]_i_1_n_3 ;
  wire \count_cycle_reg[44]_i_1_n_4 ;
  wire \count_cycle_reg[44]_i_1_n_5 ;
  wire \count_cycle_reg[44]_i_1_n_6 ;
  wire \count_cycle_reg[44]_i_1_n_7 ;
  wire \count_cycle_reg[48]_i_1_n_0 ;
  wire \count_cycle_reg[48]_i_1_n_1 ;
  wire \count_cycle_reg[48]_i_1_n_2 ;
  wire \count_cycle_reg[48]_i_1_n_3 ;
  wire \count_cycle_reg[48]_i_1_n_4 ;
  wire \count_cycle_reg[48]_i_1_n_5 ;
  wire \count_cycle_reg[48]_i_1_n_6 ;
  wire \count_cycle_reg[48]_i_1_n_7 ;
  wire \count_cycle_reg[4]_i_1_n_0 ;
  wire \count_cycle_reg[4]_i_1_n_1 ;
  wire \count_cycle_reg[4]_i_1_n_2 ;
  wire \count_cycle_reg[4]_i_1_n_3 ;
  wire \count_cycle_reg[4]_i_1_n_4 ;
  wire \count_cycle_reg[4]_i_1_n_5 ;
  wire \count_cycle_reg[4]_i_1_n_6 ;
  wire \count_cycle_reg[4]_i_1_n_7 ;
  wire \count_cycle_reg[52]_i_1_n_0 ;
  wire \count_cycle_reg[52]_i_1_n_1 ;
  wire \count_cycle_reg[52]_i_1_n_2 ;
  wire \count_cycle_reg[52]_i_1_n_3 ;
  wire \count_cycle_reg[52]_i_1_n_4 ;
  wire \count_cycle_reg[52]_i_1_n_5 ;
  wire \count_cycle_reg[52]_i_1_n_6 ;
  wire \count_cycle_reg[52]_i_1_n_7 ;
  wire \count_cycle_reg[56]_i_1_n_0 ;
  wire \count_cycle_reg[56]_i_1_n_1 ;
  wire \count_cycle_reg[56]_i_1_n_2 ;
  wire \count_cycle_reg[56]_i_1_n_3 ;
  wire \count_cycle_reg[56]_i_1_n_4 ;
  wire \count_cycle_reg[56]_i_1_n_5 ;
  wire \count_cycle_reg[56]_i_1_n_6 ;
  wire \count_cycle_reg[56]_i_1_n_7 ;
  wire \count_cycle_reg[60]_i_1_n_1 ;
  wire \count_cycle_reg[60]_i_1_n_2 ;
  wire \count_cycle_reg[60]_i_1_n_3 ;
  wire \count_cycle_reg[60]_i_1_n_4 ;
  wire \count_cycle_reg[60]_i_1_n_5 ;
  wire \count_cycle_reg[60]_i_1_n_6 ;
  wire \count_cycle_reg[60]_i_1_n_7 ;
  wire \count_cycle_reg[8]_i_1_n_0 ;
  wire \count_cycle_reg[8]_i_1_n_1 ;
  wire \count_cycle_reg[8]_i_1_n_2 ;
  wire \count_cycle_reg[8]_i_1_n_3 ;
  wire \count_cycle_reg[8]_i_1_n_4 ;
  wire \count_cycle_reg[8]_i_1_n_5 ;
  wire \count_cycle_reg[8]_i_1_n_6 ;
  wire \count_cycle_reg[8]_i_1_n_7 ;
  wire count_instr;
  wire \count_instr[0]_i_3_n_0 ;
  wire [63:0]count_instr_reg;
  wire \count_instr_reg[0]_i_2_n_0 ;
  wire \count_instr_reg[0]_i_2_n_1 ;
  wire \count_instr_reg[0]_i_2_n_2 ;
  wire \count_instr_reg[0]_i_2_n_3 ;
  wire \count_instr_reg[0]_i_2_n_4 ;
  wire \count_instr_reg[0]_i_2_n_5 ;
  wire \count_instr_reg[0]_i_2_n_6 ;
  wire \count_instr_reg[0]_i_2_n_7 ;
  wire \count_instr_reg[12]_i_1_n_0 ;
  wire \count_instr_reg[12]_i_1_n_1 ;
  wire \count_instr_reg[12]_i_1_n_2 ;
  wire \count_instr_reg[12]_i_1_n_3 ;
  wire \count_instr_reg[12]_i_1_n_4 ;
  wire \count_instr_reg[12]_i_1_n_5 ;
  wire \count_instr_reg[12]_i_1_n_6 ;
  wire \count_instr_reg[12]_i_1_n_7 ;
  wire \count_instr_reg[16]_i_1_n_0 ;
  wire \count_instr_reg[16]_i_1_n_1 ;
  wire \count_instr_reg[16]_i_1_n_2 ;
  wire \count_instr_reg[16]_i_1_n_3 ;
  wire \count_instr_reg[16]_i_1_n_4 ;
  wire \count_instr_reg[16]_i_1_n_5 ;
  wire \count_instr_reg[16]_i_1_n_6 ;
  wire \count_instr_reg[16]_i_1_n_7 ;
  wire \count_instr_reg[20]_i_1_n_0 ;
  wire \count_instr_reg[20]_i_1_n_1 ;
  wire \count_instr_reg[20]_i_1_n_2 ;
  wire \count_instr_reg[20]_i_1_n_3 ;
  wire \count_instr_reg[20]_i_1_n_4 ;
  wire \count_instr_reg[20]_i_1_n_5 ;
  wire \count_instr_reg[20]_i_1_n_6 ;
  wire \count_instr_reg[20]_i_1_n_7 ;
  wire \count_instr_reg[24]_i_1_n_0 ;
  wire \count_instr_reg[24]_i_1_n_1 ;
  wire \count_instr_reg[24]_i_1_n_2 ;
  wire \count_instr_reg[24]_i_1_n_3 ;
  wire \count_instr_reg[24]_i_1_n_4 ;
  wire \count_instr_reg[24]_i_1_n_5 ;
  wire \count_instr_reg[24]_i_1_n_6 ;
  wire \count_instr_reg[24]_i_1_n_7 ;
  wire \count_instr_reg[28]_i_1_n_0 ;
  wire \count_instr_reg[28]_i_1_n_1 ;
  wire \count_instr_reg[28]_i_1_n_2 ;
  wire \count_instr_reg[28]_i_1_n_3 ;
  wire \count_instr_reg[28]_i_1_n_4 ;
  wire \count_instr_reg[28]_i_1_n_5 ;
  wire \count_instr_reg[28]_i_1_n_6 ;
  wire \count_instr_reg[28]_i_1_n_7 ;
  wire \count_instr_reg[32]_i_1_n_0 ;
  wire \count_instr_reg[32]_i_1_n_1 ;
  wire \count_instr_reg[32]_i_1_n_2 ;
  wire \count_instr_reg[32]_i_1_n_3 ;
  wire \count_instr_reg[32]_i_1_n_4 ;
  wire \count_instr_reg[32]_i_1_n_5 ;
  wire \count_instr_reg[32]_i_1_n_6 ;
  wire \count_instr_reg[32]_i_1_n_7 ;
  wire \count_instr_reg[36]_i_1_n_0 ;
  wire \count_instr_reg[36]_i_1_n_1 ;
  wire \count_instr_reg[36]_i_1_n_2 ;
  wire \count_instr_reg[36]_i_1_n_3 ;
  wire \count_instr_reg[36]_i_1_n_4 ;
  wire \count_instr_reg[36]_i_1_n_5 ;
  wire \count_instr_reg[36]_i_1_n_6 ;
  wire \count_instr_reg[36]_i_1_n_7 ;
  wire \count_instr_reg[40]_i_1_n_0 ;
  wire \count_instr_reg[40]_i_1_n_1 ;
  wire \count_instr_reg[40]_i_1_n_2 ;
  wire \count_instr_reg[40]_i_1_n_3 ;
  wire \count_instr_reg[40]_i_1_n_4 ;
  wire \count_instr_reg[40]_i_1_n_5 ;
  wire \count_instr_reg[40]_i_1_n_6 ;
  wire \count_instr_reg[40]_i_1_n_7 ;
  wire \count_instr_reg[44]_i_1_n_0 ;
  wire \count_instr_reg[44]_i_1_n_1 ;
  wire \count_instr_reg[44]_i_1_n_2 ;
  wire \count_instr_reg[44]_i_1_n_3 ;
  wire \count_instr_reg[44]_i_1_n_4 ;
  wire \count_instr_reg[44]_i_1_n_5 ;
  wire \count_instr_reg[44]_i_1_n_6 ;
  wire \count_instr_reg[44]_i_1_n_7 ;
  wire \count_instr_reg[48]_i_1_n_0 ;
  wire \count_instr_reg[48]_i_1_n_1 ;
  wire \count_instr_reg[48]_i_1_n_2 ;
  wire \count_instr_reg[48]_i_1_n_3 ;
  wire \count_instr_reg[48]_i_1_n_4 ;
  wire \count_instr_reg[48]_i_1_n_5 ;
  wire \count_instr_reg[48]_i_1_n_6 ;
  wire \count_instr_reg[48]_i_1_n_7 ;
  wire \count_instr_reg[4]_i_1_n_0 ;
  wire \count_instr_reg[4]_i_1_n_1 ;
  wire \count_instr_reg[4]_i_1_n_2 ;
  wire \count_instr_reg[4]_i_1_n_3 ;
  wire \count_instr_reg[4]_i_1_n_4 ;
  wire \count_instr_reg[4]_i_1_n_5 ;
  wire \count_instr_reg[4]_i_1_n_6 ;
  wire \count_instr_reg[4]_i_1_n_7 ;
  wire \count_instr_reg[52]_i_1_n_0 ;
  wire \count_instr_reg[52]_i_1_n_1 ;
  wire \count_instr_reg[52]_i_1_n_2 ;
  wire \count_instr_reg[52]_i_1_n_3 ;
  wire \count_instr_reg[52]_i_1_n_4 ;
  wire \count_instr_reg[52]_i_1_n_5 ;
  wire \count_instr_reg[52]_i_1_n_6 ;
  wire \count_instr_reg[52]_i_1_n_7 ;
  wire \count_instr_reg[56]_i_1_n_0 ;
  wire \count_instr_reg[56]_i_1_n_1 ;
  wire \count_instr_reg[56]_i_1_n_2 ;
  wire \count_instr_reg[56]_i_1_n_3 ;
  wire \count_instr_reg[56]_i_1_n_4 ;
  wire \count_instr_reg[56]_i_1_n_5 ;
  wire \count_instr_reg[56]_i_1_n_6 ;
  wire \count_instr_reg[56]_i_1_n_7 ;
  wire \count_instr_reg[60]_i_1_n_1 ;
  wire \count_instr_reg[60]_i_1_n_2 ;
  wire \count_instr_reg[60]_i_1_n_3 ;
  wire \count_instr_reg[60]_i_1_n_4 ;
  wire \count_instr_reg[60]_i_1_n_5 ;
  wire \count_instr_reg[60]_i_1_n_6 ;
  wire \count_instr_reg[60]_i_1_n_7 ;
  wire \count_instr_reg[8]_i_1_n_0 ;
  wire \count_instr_reg[8]_i_1_n_1 ;
  wire \count_instr_reg[8]_i_1_n_2 ;
  wire \count_instr_reg[8]_i_1_n_3 ;
  wire \count_instr_reg[8]_i_1_n_4 ;
  wire \count_instr_reg[8]_i_1_n_5 ;
  wire \count_instr_reg[8]_i_1_n_6 ;
  wire \count_instr_reg[8]_i_1_n_7 ;
  wire [7:0]cpu_state0_out;
  wire \cpu_state[1]_i_2_n_0 ;
  wire \cpu_state[2]_i_2_n_0 ;
  wire \cpu_state[3]_i_2_n_0 ;
  wire \cpu_state[6]_i_2_n_0 ;
  wire \cpu_state[6]_i_3_n_0 ;
  wire \cpu_state[7]_i_10_n_0 ;
  wire \cpu_state[7]_i_11_n_0 ;
  wire \cpu_state[7]_i_12_n_0 ;
  wire \cpu_state[7]_i_13_n_0 ;
  wire \cpu_state[7]_i_14_n_0 ;
  wire \cpu_state[7]_i_15_n_0 ;
  wire \cpu_state[7]_i_16_n_0 ;
  wire \cpu_state[7]_i_17_n_0 ;
  wire \cpu_state[7]_i_1_n_0 ;
  wire \cpu_state[7]_i_2_n_0 ;
  wire \cpu_state[7]_i_4_n_0 ;
  wire \cpu_state[7]_i_5_n_0 ;
  wire \cpu_state[7]_i_6_n_0 ;
  wire \cpu_state[7]_i_7_n_0 ;
  wire \cpu_state[7]_i_8_n_0 ;
  wire \cpu_state[7]_i_9_n_0 ;
  wire \cpu_state_reg_n_0_[0] ;
  wire \cpu_state_reg_n_0_[1] ;
  wire \cpu_state_reg_n_0_[2] ;
  wire \cpu_state_reg_n_0_[3] ;
  wire \cpu_state_reg_n_0_[5] ;
  wire \cpu_state_reg_n_0_[7] ;
  wire cpuregs_reg_r1_0_31_0_5_i_1_n_0;
  wire cpuregs_reg_r1_0_31_0_5_i_2_n_0;
  wire cpuregs_reg_r1_0_31_0_5_i_3_n_0;
  wire cpuregs_reg_r1_0_31_0_5_i_4_n_0;
  wire cpuregs_reg_r1_0_31_0_5_i_5_n_0;
  wire cpuregs_reg_r1_0_31_0_5_i_6_n_0;
  wire cpuregs_reg_r1_0_31_0_5_i_7_n_0;
  wire cpuregs_reg_r1_0_31_0_5_i_8_n_0;
  wire cpuregs_reg_r1_0_31_0_5_i_9_n_0;
  wire cpuregs_reg_r1_0_31_12_17_i_1_n_0;
  wire cpuregs_reg_r1_0_31_12_17_i_2_n_0;
  wire cpuregs_reg_r1_0_31_12_17_i_3_n_0;
  wire cpuregs_reg_r1_0_31_12_17_i_4_n_0;
  wire cpuregs_reg_r1_0_31_12_17_i_5_n_0;
  wire cpuregs_reg_r1_0_31_12_17_i_6_n_0;
  wire cpuregs_reg_r1_0_31_18_23_i_1_n_0;
  wire cpuregs_reg_r1_0_31_18_23_i_2_n_0;
  wire cpuregs_reg_r1_0_31_18_23_i_3_n_0;
  wire cpuregs_reg_r1_0_31_18_23_i_4_n_0;
  wire cpuregs_reg_r1_0_31_18_23_i_5_n_0;
  wire cpuregs_reg_r1_0_31_18_23_i_6_n_0;
  wire cpuregs_reg_r1_0_31_24_29_i_1_n_0;
  wire cpuregs_reg_r1_0_31_24_29_i_2_n_0;
  wire cpuregs_reg_r1_0_31_24_29_i_3_n_0;
  wire cpuregs_reg_r1_0_31_24_29_i_4_n_0;
  wire cpuregs_reg_r1_0_31_24_29_i_5_n_0;
  wire cpuregs_reg_r1_0_31_24_29_i_6_n_0;
  wire cpuregs_reg_r1_0_31_30_31_i_1_n_0;
  wire cpuregs_reg_r1_0_31_30_31_i_2_n_0;
  wire cpuregs_reg_r1_0_31_6_11_i_1_n_0;
  wire cpuregs_reg_r1_0_31_6_11_i_2_n_0;
  wire cpuregs_reg_r1_0_31_6_11_i_3_n_0;
  wire cpuregs_reg_r1_0_31_6_11_i_4_n_0;
  wire cpuregs_reg_r1_0_31_6_11_i_5_n_0;
  wire cpuregs_reg_r1_0_31_6_11_i_6_n_0;
  wire [31:1]current_pc;
  wire [31:0]data2;
  wire [31:0]decoded_imm;
  wire \decoded_imm[0]_i_1_n_0 ;
  wire \decoded_imm[10]_i_1_n_0 ;
  wire \decoded_imm[10]_i_2_n_0 ;
  wire \decoded_imm[11]_i_1_n_0 ;
  wire \decoded_imm[11]_i_2_n_0 ;
  wire \decoded_imm[12]_i_1_n_0 ;
  wire \decoded_imm[13]_i_1_n_0 ;
  wire \decoded_imm[14]_i_1_n_0 ;
  wire \decoded_imm[15]_i_1_n_0 ;
  wire \decoded_imm[16]_i_1_n_0 ;
  wire \decoded_imm[17]_i_1_n_0 ;
  wire \decoded_imm[18]_i_1_n_0 ;
  wire \decoded_imm[19]_i_1_n_0 ;
  wire \decoded_imm[19]_i_2_n_0 ;
  wire \decoded_imm[1]_i_1_n_0 ;
  wire \decoded_imm[20]_i_1_n_0 ;
  wire \decoded_imm[21]_i_1_n_0 ;
  wire \decoded_imm[22]_i_1_n_0 ;
  wire \decoded_imm[23]_i_1_n_0 ;
  wire \decoded_imm[24]_i_1_n_0 ;
  wire \decoded_imm[25]_i_1_n_0 ;
  wire \decoded_imm[26]_i_1_n_0 ;
  wire \decoded_imm[27]_i_1_n_0 ;
  wire \decoded_imm[28]_i_1_n_0 ;
  wire \decoded_imm[29]_i_1_n_0 ;
  wire \decoded_imm[2]_i_1_n_0 ;
  wire \decoded_imm[30]_i_1_n_0 ;
  wire \decoded_imm[31]_i_1_n_0 ;
  wire \decoded_imm[31]_i_2_n_0 ;
  wire \decoded_imm[3]_i_1_n_0 ;
  wire \decoded_imm[4]_i_1_n_0 ;
  wire \decoded_imm[4]_i_2_n_0 ;
  wire \decoded_imm[4]_i_3_n_0 ;
  wire \decoded_imm[5]_i_1_n_0 ;
  wire \decoded_imm[6]_i_1_n_0 ;
  wire \decoded_imm[7]_i_1_n_0 ;
  wire \decoded_imm[8]_i_1_n_0 ;
  wire \decoded_imm[9]_i_1_n_0 ;
  wire [31:1]decoded_imm_uj;
  wire \decoded_imm_uj[10]_i_1_n_0 ;
  wire \decoded_imm_uj[12]_i_1_n_0 ;
  wire \decoded_imm_uj[13]_i_1_n_0 ;
  wire \decoded_imm_uj[14]_i_1_n_0 ;
  wire \decoded_imm_uj[5]_i_1_n_0 ;
  wire \decoded_imm_uj[6]_i_1_n_0 ;
  wire \decoded_imm_uj[7]_i_1_n_0 ;
  wire \decoded_imm_uj[8]_i_1_n_0 ;
  wire \decoded_imm_uj[9]_i_1_n_0 ;
  wire [4:0]decoded_rd;
  wire \decoded_rd[0]_i_1_n_0 ;
  wire \decoded_rd[1]_i_1_n_0 ;
  wire \decoded_rd[2]_i_1_n_0 ;
  wire \decoded_rd[3]_i_1_n_0 ;
  wire \decoded_rd[4]_i_1_n_0 ;
  wire [4:0]decoded_rs1;
  wire [4:0]decoded_rs1_0;
  wire \decoded_rs1_rep[0]_i_1_n_0 ;
  wire \decoded_rs1_rep[1]_i_1_n_0 ;
  wire \decoded_rs1_rep[2]_i_1_n_0 ;
  wire \decoded_rs1_rep[3]_i_1_n_0 ;
  wire \decoded_rs1_rep[4]_i_1_n_0 ;
  wire [4:0]decoded_rs2;
  wire decoder_pseudo_trigger;
  wire decoder_pseudo_trigger_i_2_n_0;
  wire decoder_pseudo_trigger_reg_n_0;
  wire decoder_trigger_i_1_n_0;
  wire decoder_trigger_i_2_n_0;
  wire decoder_trigger_i_3_n_0;
  wire decoder_trigger_i_4_n_0;
  wire decoder_trigger_i_5_n_0;
  wire decoder_trigger_reg_n_0;
  wire i___29_carry__0_i_1_n_0;
  wire i___29_carry__0_i_2_n_0;
  wire i___29_carry__0_i_3_n_0;
  wire i___29_carry__0_i_4_n_0;
  wire i___29_carry__1_i_1_n_0;
  wire i___29_carry__1_i_2_n_0;
  wire i___29_carry__1_i_3_n_0;
  wire i___29_carry__1_i_4_n_0;
  wire i___29_carry__2_i_1_n_0;
  wire i___29_carry__2_i_2_n_0;
  wire i___29_carry__2_i_3_n_0;
  wire i___29_carry__2_i_4_n_0;
  wire i___29_carry__3_i_1_n_0;
  wire i___29_carry__3_i_2_n_0;
  wire i___29_carry__3_i_3_n_0;
  wire i___29_carry__3_i_4_n_0;
  wire i___29_carry__4_i_1_n_0;
  wire i___29_carry__4_i_2_n_0;
  wire i___29_carry__4_i_3_n_0;
  wire i___29_carry__4_i_4_n_0;
  wire i___29_carry__5_i_1_n_0;
  wire i___29_carry__5_i_2_n_0;
  wire i___29_carry__5_i_3_n_0;
  wire i___29_carry__5_i_4_n_0;
  wire i___29_carry__6_i_1_n_0;
  wire i___29_carry__6_i_2_n_0;
  wire i___29_carry__6_i_3_n_0;
  wire i___29_carry__6_i_4_n_0;
  wire i___29_carry_i_1_n_0;
  wire i___29_carry_i_2_n_0;
  wire i___29_carry_i_3_n_0;
  wire i___29_carry_i_4_n_0;
  wire i__carry__0_i_1__0_n_0;
  wire i__carry__0_i_1_n_0;
  wire i__carry__0_i_2__0_n_0;
  wire i__carry__0_i_2_n_0;
  wire i__carry__0_i_3__0_n_0;
  wire i__carry__0_i_3_n_0;
  wire i__carry__0_i_4__0_n_0;
  wire i__carry__0_i_4_n_0;
  wire i__carry__0_i_5_n_0;
  wire i__carry__0_i_6_n_0;
  wire i__carry__0_i_7_n_0;
  wire i__carry__0_i_8_n_0;
  wire i__carry__1_i_1__0_n_0;
  wire i__carry__1_i_1_n_0;
  wire i__carry__1_i_2__0_n_0;
  wire i__carry__1_i_2_n_0;
  wire i__carry__1_i_3__0_n_0;
  wire i__carry__1_i_3_n_0;
  wire i__carry__1_i_4_n_0;
  wire i__carry__1_i_5_n_0;
  wire i__carry__1_i_6_n_0;
  wire i__carry__1_i_7_n_0;
  wire i__carry__1_i_8_n_0;
  wire i__carry__2_i_1_n_0;
  wire i__carry__2_i_2_n_0;
  wire i__carry__2_i_3_n_0;
  wire i__carry__2_i_4_n_0;
  wire i__carry__2_i_5_n_0;
  wire i__carry__2_i_6_n_0;
  wire i__carry__2_i_7_n_0;
  wire i__carry__2_i_8_n_0;
  wire i__carry_i_1__0_n_0;
  wire i__carry_i_1_n_0;
  wire i__carry_i_2__0_n_0;
  wire i__carry_i_2_n_0;
  wire i__carry_i_3__0_n_0;
  wire i__carry_i_3_n_0;
  wire i__carry_i_4__0_n_0;
  wire i__carry_i_4_n_0;
  wire i__carry_i_5_n_0;
  wire i__carry_i_6_n_0;
  wire i__carry_i_7_n_0;
  wire i__carry_i_8_n_0;
  wire instr_add;
  wire instr_add0;
  wire instr_addi;
  wire instr_addi0;
  wire instr_and;
  wire instr_and0;
  wire instr_and_i_1_n_0;
  wire instr_andi;
  wire instr_andi0;
  wire instr_auipc;
  wire instr_auipc_i_1_n_0;
  wire instr_beq;
  wire instr_beq0;
  wire instr_bge;
  wire instr_bge0;
  wire instr_bgeu;
  wire instr_bgeu0;
  wire instr_blt;
  wire instr_blt0;
  wire instr_bltu;
  wire instr_bltu0;
  wire instr_bne;
  wire instr_bne0;
  wire instr_jal;
  wire instr_jal_i_1_n_0;
  wire instr_jal_i_2_n_0;
  wire instr_jal_i_3_n_0;
  wire instr_jal_i_4_n_0;
  wire instr_jal_i_5_n_0;
  wire instr_jal_i_6_n_0;
  wire instr_jalr;
  wire instr_jalr0;
  wire instr_jalr_i_2_n_0;
  wire instr_lb;
  wire instr_lb0;
  wire instr_lbu;
  wire instr_lbu0;
  wire instr_lh;
  wire instr_lh_i_1_n_0;
  wire instr_lhu;
  wire instr_lhu_i_1_n_0;
  wire instr_lui;
  wire instr_lui_i_1_n_0;
  wire instr_lui_i_2_n_0;
  wire instr_lw;
  wire instr_lw0;
  wire instr_or;
  wire instr_or0;
  wire instr_ori;
  wire instr_ori0;
  wire instr_rdcycle;
  wire instr_rdcycle0;
  wire instr_rdcycleh;
  wire instr_rdcycleh0;
  wire instr_rdcycleh_i_2_n_0;
  wire instr_rdinstr;
  wire instr_rdinstr0;
  wire instr_rdinstr_i_2_n_0;
  wire instr_rdinstrh;
  wire instr_rdinstrh0;
  wire instr_rdinstrh_i_2_n_0;
  wire instr_rdinstrh_i_3_n_0;
  wire instr_rdinstrh_i_4_n_0;
  wire instr_rdinstrh_i_5_n_0;
  wire instr_rdinstrh_i_6_n_0;
  wire instr_rdinstrh_i_7_n_0;
  wire instr_rdinstrh_i_8_n_0;
  wire instr_sb;
  wire instr_sb0;
  wire instr_sh;
  wire instr_sh_i_1_n_0;
  wire instr_sll;
  wire instr_sll0;
  wire instr_slli;
  wire instr_slli0;
  wire instr_slt;
  wire instr_slt0;
  wire instr_slti;
  wire instr_slti0;
  wire instr_sltiu;
  wire instr_sltiu0;
  wire instr_sltu;
  wire instr_sltu0;
  wire instr_sra;
  wire instr_sra0;
  wire instr_sra_i_2_n_0;
  wire instr_sra_i_3_n_0;
  wire instr_srai;
  wire instr_srai0;
  wire instr_srl;
  wire instr_srl_i_1_n_0;
  wire instr_srli;
  wire instr_srli0;
  wire instr_sub;
  wire instr_sub0;
  wire instr_sub_i_2_n_0;
  wire instr_sw;
  wire instr_sw0;
  wire instr_xor;
  wire instr_xor0;
  wire instr_xori;
  wire instr_xori0;
  wire is_alu_reg_imm;
  wire is_alu_reg_imm_i_1_n_0;
  wire is_alu_reg_reg;
  wire is_alu_reg_reg_i_1_n_0;
  wire is_beq_bne_blt_bge_bltu_bgeu;
  wire is_beq_bne_blt_bge_bltu_bgeu_i_1_n_0;
  wire is_compare;
  wire is_compare_i_1_n_0;
  wire is_compare_i_2_n_0;
  wire is_jalr_addi_slti_sltiu_xori_ori_andi;
  wire is_jalr_addi_slti_sltiu_xori_ori_andi0;
  wire is_lb_lh_lw_lbu_lhu;
  wire is_lb_lh_lw_lbu_lhu_i_1_n_0;
  wire is_lbu_lhu_lw;
  wire is_lbu_lhu_lw_i_1_n_0;
  wire is_lui_auipc_jal;
  wire is_lui_auipc_jal_i_1_n_0;
  wire is_lui_auipc_jal_jalr_addi_add_sub;
  wire is_lui_auipc_jal_jalr_addi_add_sub0;
  wire is_lui_auipc_jal_jalr_addi_add_sub_i_1_n_0;
  wire is_sb_sh_sw;
  wire is_sb_sh_sw_i_1_n_0;
  wire is_sb_sh_sw_i_2_n_0;
  wire is_sb_sh_sw_i_3_n_0;
  wire is_sb_sh_sw_i_4_n_0;
  wire is_sll_srl_sra;
  wire is_sll_srl_sra0;
  wire is_sll_srl_sra_i_3_n_0;
  wire is_slli_srli_srai;
  wire is_slli_srli_srai0;
  wire is_slti_blt_slt;
  wire is_slti_blt_slt_i_1_n_0;
  wire is_sltiu_bltu_sltu;
  wire is_sltiu_bltu_sltu_i_1_n_0;
  wire latched_branch_i_1_n_0;
  wire latched_branch_i_2_n_0;
  wire latched_branch_reg_n_0;
  wire latched_is_lb_i_1_n_0;
  wire latched_is_lb_reg_n_0;
  wire latched_is_lh_i_1_n_0;
  wire latched_is_lh_reg_n_0;
  wire latched_is_lu;
  wire latched_is_lu_i_1_n_0;
  wire latched_is_lu_reg_n_0;
  wire [4:0]latched_rd;
  wire \latched_rd[4]_i_1_n_0 ;
  wire \latched_rd[4]_i_2_n_0 ;
  wire latched_stalu_i_1_n_0;
  wire latched_stalu_reg_n_0;
  wire latched_store;
  wire latched_store_i_1_n_0;
  wire latched_store_i_2_n_0;
  wire latched_store_reg_n_0;
  wire mem_do_prefetch_i_1_n_0;
  wire mem_do_prefetch_reg_n_0;
  wire mem_do_rdata;
  wire mem_do_rdata_i_1_n_0;
  wire mem_do_rdata_i_3_n_0;
  wire mem_do_rdata_i_4_n_0;
  wire mem_do_rinst;
  wire mem_do_rinst0;
  wire mem_do_rinst5_out;
  wire mem_do_rinst_i_10_n_0;
  wire mem_do_rinst_i_11_n_0;
  wire mem_do_rinst_i_12_n_0;
  wire mem_do_rinst_i_13_n_0;
  wire mem_do_rinst_i_14_n_0;
  wire mem_do_rinst_i_15_n_0;
  wire mem_do_rinst_i_1_n_0;
  wire mem_do_rinst_i_4_n_0;
  wire mem_do_rinst_i_5_n_0;
  wire mem_do_rinst_i_6_n_0;
  wire mem_do_rinst_i_7_n_0;
  wire mem_do_rinst_i_8_n_0;
  wire mem_do_rinst_i_9_n_0;
  wire mem_do_rinst_reg_n_0;
  wire mem_do_wdata;
  wire mem_do_wdata_i_1_n_0;
  wire mem_do_wdata_i_2_n_0;
  wire [31:0]mem_rdata;
  wire \mem_rdata_q[0]_i_1_n_0 ;
  wire \mem_rdata_q[1]_i_1_n_0 ;
  wire \mem_rdata_q[2]_i_1_n_0 ;
  wire \mem_rdata_q[3]_i_1_n_0 ;
  wire \mem_rdata_q[4]_i_1_n_0 ;
  wire \mem_rdata_q[5]_i_1_n_0 ;
  wire \mem_rdata_q[6]_i_1_n_0 ;
  wire \mem_rdata_q_reg_n_0_[0] ;
  wire \mem_rdata_q_reg_n_0_[10] ;
  wire \mem_rdata_q_reg_n_0_[11] ;
  wire \mem_rdata_q_reg_n_0_[15] ;
  wire \mem_rdata_q_reg_n_0_[16] ;
  wire \mem_rdata_q_reg_n_0_[17] ;
  wire \mem_rdata_q_reg_n_0_[18] ;
  wire \mem_rdata_q_reg_n_0_[19] ;
  wire \mem_rdata_q_reg_n_0_[1] ;
  wire \mem_rdata_q_reg_n_0_[20] ;
  wire \mem_rdata_q_reg_n_0_[21] ;
  wire \mem_rdata_q_reg_n_0_[22] ;
  wire \mem_rdata_q_reg_n_0_[23] ;
  wire \mem_rdata_q_reg_n_0_[24] ;
  wire \mem_rdata_q_reg_n_0_[25] ;
  wire \mem_rdata_q_reg_n_0_[26] ;
  wire \mem_rdata_q_reg_n_0_[27] ;
  wire \mem_rdata_q_reg_n_0_[28] ;
  wire \mem_rdata_q_reg_n_0_[29] ;
  wire \mem_rdata_q_reg_n_0_[2] ;
  wire \mem_rdata_q_reg_n_0_[30] ;
  wire \mem_rdata_q_reg_n_0_[31] ;
  wire \mem_rdata_q_reg_n_0_[3] ;
  wire \mem_rdata_q_reg_n_0_[4] ;
  wire \mem_rdata_q_reg_n_0_[5] ;
  wire \mem_rdata_q_reg_n_0_[6] ;
  wire \mem_rdata_q_reg_n_0_[7] ;
  wire \mem_rdata_q_reg_n_0_[8] ;
  wire \mem_rdata_q_reg_n_0_[9] ;
  wire mem_state;
  wire \mem_state[0]_i_1_n_0 ;
  wire \mem_state[1]_i_1_n_0 ;
  wire \mem_state[1]_i_3_n_0 ;
  wire \mem_state_reg_n_0_[0] ;
  wire \mem_state_reg_n_0_[1] ;
  wire mem_valid_i_1_n_0;
  wire mem_valid_i_2_n_0;
  wire mem_valid_reg_n_0;
  wire \mem_wordsize[0]_i_1_n_0 ;
  wire \mem_wordsize[0]_i_2_n_0 ;
  wire \mem_wordsize[1]_i_1_n_0 ;
  wire \mem_wordsize[1]_i_2_n_0 ;
  wire \mem_wordsize[1]_i_3_n_0 ;
  wire \mem_wordsize_reg_n_0_[0] ;
  wire \mem_wordsize_reg_n_0_[1] ;
  wire memory_reg_0_i_15_n_0;
  wire memory_reg_0_i_16_n_0;
  wire memory_reg_0_i_17_n_0;
  wire memory_reg_0_i_18_n_0;
  wire memory_reg_0_i_19_n_0;
  wire memory_reg_0_i_20_n_0;
  wire memory_reg_0_i_21_n_0;
  wire memory_reg_0_i_22_n_0;
  wire memory_reg_0_i_23_n_0;
  wire memory_reg_0_i_24_n_0;
  wire memory_reg_0_i_25_n_0;
  wire memory_reg_0_i_26_n_0;
  wire memory_reg_0_i_27_n_0;
  wire memory_reg_0_i_28_n_0;
  wire memory_reg_0_i_29_n_0;
  wire memory_reg_0_i_30_n_0;
  wire memory_reg_0_i_31_n_0;
  wire memory_reg_0_i_32_n_0;
  wire memory_reg_0_i_33_n_0;
  wire memory_reg_0_i_34_n_0;
  wire memory_reg_3_i_10_n_0;
  wire memory_reg_3_i_11_n_0;
  wire memory_reg_3_i_12_n_0;
  wire \out_byte[7]_i_2_n_0 ;
  wire \out_byte[7]_i_3_n_0 ;
  wire \out_byte[7]_i_4_n_0 ;
  wire out_byte_en01_out;
  wire [3:0]p_0_in;
  wire p_0_in0;
  wire [2:0]p_0_in_1;
  wire [4:0]p_1_in;
  wire p_1_out_carry__0_n_0;
  wire p_1_out_carry__0_n_1;
  wire p_1_out_carry__0_n_2;
  wire p_1_out_carry__0_n_3;
  wire p_1_out_carry__0_n_4;
  wire p_1_out_carry__0_n_5;
  wire p_1_out_carry__0_n_6;
  wire p_1_out_carry__0_n_7;
  wire p_1_out_carry__1_n_0;
  wire p_1_out_carry__1_n_1;
  wire p_1_out_carry__1_n_2;
  wire p_1_out_carry__1_n_3;
  wire p_1_out_carry__1_n_4;
  wire p_1_out_carry__1_n_5;
  wire p_1_out_carry__1_n_6;
  wire p_1_out_carry__1_n_7;
  wire p_1_out_carry__2_n_0;
  wire p_1_out_carry__2_n_1;
  wire p_1_out_carry__2_n_2;
  wire p_1_out_carry__2_n_3;
  wire p_1_out_carry__2_n_4;
  wire p_1_out_carry__2_n_5;
  wire p_1_out_carry__2_n_6;
  wire p_1_out_carry__2_n_7;
  wire p_1_out_carry__3_n_0;
  wire p_1_out_carry__3_n_1;
  wire p_1_out_carry__3_n_2;
  wire p_1_out_carry__3_n_3;
  wire p_1_out_carry__3_n_4;
  wire p_1_out_carry__3_n_5;
  wire p_1_out_carry__3_n_6;
  wire p_1_out_carry__3_n_7;
  wire p_1_out_carry__4_n_0;
  wire p_1_out_carry__4_n_1;
  wire p_1_out_carry__4_n_2;
  wire p_1_out_carry__4_n_3;
  wire p_1_out_carry__4_n_4;
  wire p_1_out_carry__4_n_5;
  wire p_1_out_carry__4_n_6;
  wire p_1_out_carry__4_n_7;
  wire p_1_out_carry__5_n_0;
  wire p_1_out_carry__5_n_1;
  wire p_1_out_carry__5_n_2;
  wire p_1_out_carry__5_n_3;
  wire p_1_out_carry__5_n_4;
  wire p_1_out_carry__5_n_5;
  wire p_1_out_carry__5_n_6;
  wire p_1_out_carry__5_n_7;
  wire p_1_out_carry__6_n_1;
  wire p_1_out_carry__6_n_2;
  wire p_1_out_carry__6_n_3;
  wire p_1_out_carry__6_n_4;
  wire p_1_out_carry__6_n_5;
  wire p_1_out_carry__6_n_6;
  wire p_1_out_carry__6_n_7;
  wire p_1_out_carry_i_1_n_0;
  wire p_1_out_carry_n_0;
  wire p_1_out_carry_n_1;
  wire p_1_out_carry_n_2;
  wire p_1_out_carry_n_3;
  wire p_1_out_carry_n_4;
  wire p_1_out_carry_n_5;
  wire p_1_out_carry_n_6;
  wire [23:0]p_2_in;
  wire reg_next_pc;
  wire reg_next_pc0_carry__0_i_1_n_0;
  wire reg_next_pc0_carry__0_i_2_n_0;
  wire reg_next_pc0_carry__0_i_3_n_0;
  wire reg_next_pc0_carry__0_i_4_n_0;
  wire reg_next_pc0_carry__0_n_0;
  wire reg_next_pc0_carry__0_n_1;
  wire reg_next_pc0_carry__0_n_2;
  wire reg_next_pc0_carry__0_n_3;
  wire reg_next_pc0_carry__1_i_1_n_0;
  wire reg_next_pc0_carry__1_i_2_n_0;
  wire reg_next_pc0_carry__1_i_3_n_0;
  wire reg_next_pc0_carry__1_i_4_n_0;
  wire reg_next_pc0_carry__1_n_0;
  wire reg_next_pc0_carry__1_n_1;
  wire reg_next_pc0_carry__1_n_2;
  wire reg_next_pc0_carry__1_n_3;
  wire reg_next_pc0_carry__2_i_1_n_0;
  wire reg_next_pc0_carry__2_i_2_n_0;
  wire reg_next_pc0_carry__2_i_3_n_0;
  wire reg_next_pc0_carry__2_i_4_n_0;
  wire reg_next_pc0_carry__2_n_0;
  wire reg_next_pc0_carry__2_n_1;
  wire reg_next_pc0_carry__2_n_2;
  wire reg_next_pc0_carry__2_n_3;
  wire reg_next_pc0_carry__3_i_1_n_0;
  wire reg_next_pc0_carry__3_i_2_n_0;
  wire reg_next_pc0_carry__3_i_3_n_0;
  wire reg_next_pc0_carry__3_i_4_n_0;
  wire reg_next_pc0_carry__3_i_5_n_0;
  wire reg_next_pc0_carry__3_n_0;
  wire reg_next_pc0_carry__3_n_1;
  wire reg_next_pc0_carry__3_n_2;
  wire reg_next_pc0_carry__3_n_3;
  wire reg_next_pc0_carry__4_i_1_n_0;
  wire reg_next_pc0_carry__4_i_2_n_0;
  wire reg_next_pc0_carry__4_i_3_n_0;
  wire reg_next_pc0_carry__4_i_4_n_0;
  wire reg_next_pc0_carry__4_n_0;
  wire reg_next_pc0_carry__4_n_1;
  wire reg_next_pc0_carry__4_n_2;
  wire reg_next_pc0_carry__4_n_3;
  wire reg_next_pc0_carry__5_i_1_n_0;
  wire reg_next_pc0_carry__5_i_2_n_0;
  wire reg_next_pc0_carry__5_i_3_n_0;
  wire reg_next_pc0_carry__5_i_4_n_0;
  wire reg_next_pc0_carry__5_n_0;
  wire reg_next_pc0_carry__5_n_1;
  wire reg_next_pc0_carry__5_n_2;
  wire reg_next_pc0_carry__5_n_3;
  wire reg_next_pc0_carry__6_i_1_n_0;
  wire reg_next_pc0_carry__6_i_2_n_0;
  wire reg_next_pc0_carry__6_i_3_n_0;
  wire reg_next_pc0_carry__6_n_2;
  wire reg_next_pc0_carry__6_n_3;
  wire reg_next_pc0_carry_i_1_n_0;
  wire reg_next_pc0_carry_i_2_n_0;
  wire reg_next_pc0_carry_i_3_n_0;
  wire reg_next_pc0_carry_i_4_n_0;
  wire reg_next_pc0_carry_n_0;
  wire reg_next_pc0_carry_n_1;
  wire reg_next_pc0_carry_n_2;
  wire reg_next_pc0_carry_n_3;
  wire [31:1]reg_next_pc1_in;
  wire \reg_next_pc_reg_n_0_[10] ;
  wire \reg_next_pc_reg_n_0_[11] ;
  wire \reg_next_pc_reg_n_0_[12] ;
  wire \reg_next_pc_reg_n_0_[13] ;
  wire \reg_next_pc_reg_n_0_[14] ;
  wire \reg_next_pc_reg_n_0_[15] ;
  wire \reg_next_pc_reg_n_0_[16] ;
  wire \reg_next_pc_reg_n_0_[17] ;
  wire \reg_next_pc_reg_n_0_[18] ;
  wire \reg_next_pc_reg_n_0_[19] ;
  wire \reg_next_pc_reg_n_0_[1] ;
  wire \reg_next_pc_reg_n_0_[20] ;
  wire \reg_next_pc_reg_n_0_[21] ;
  wire \reg_next_pc_reg_n_0_[22] ;
  wire \reg_next_pc_reg_n_0_[23] ;
  wire \reg_next_pc_reg_n_0_[24] ;
  wire \reg_next_pc_reg_n_0_[25] ;
  wire \reg_next_pc_reg_n_0_[26] ;
  wire \reg_next_pc_reg_n_0_[27] ;
  wire \reg_next_pc_reg_n_0_[28] ;
  wire \reg_next_pc_reg_n_0_[29] ;
  wire \reg_next_pc_reg_n_0_[2] ;
  wire \reg_next_pc_reg_n_0_[30] ;
  wire \reg_next_pc_reg_n_0_[31] ;
  wire \reg_next_pc_reg_n_0_[3] ;
  wire \reg_next_pc_reg_n_0_[4] ;
  wire \reg_next_pc_reg_n_0_[5] ;
  wire \reg_next_pc_reg_n_0_[6] ;
  wire \reg_next_pc_reg_n_0_[7] ;
  wire \reg_next_pc_reg_n_0_[8] ;
  wire \reg_next_pc_reg_n_0_[9] ;
  wire [31:0]reg_op1;
  wire reg_op10_carry__0_i_1_n_0;
  wire reg_op10_carry__0_i_2_n_0;
  wire reg_op10_carry__0_i_3_n_0;
  wire reg_op10_carry__0_i_4_n_0;
  wire reg_op10_carry__0_n_0;
  wire reg_op10_carry__0_n_1;
  wire reg_op10_carry__0_n_2;
  wire reg_op10_carry__0_n_3;
  wire reg_op10_carry__1_i_1_n_0;
  wire reg_op10_carry__1_i_2_n_0;
  wire reg_op10_carry__1_i_3_n_0;
  wire reg_op10_carry__1_i_4_n_0;
  wire reg_op10_carry__1_n_0;
  wire reg_op10_carry__1_n_1;
  wire reg_op10_carry__1_n_2;
  wire reg_op10_carry__1_n_3;
  wire reg_op10_carry__2_i_1_n_0;
  wire reg_op10_carry__2_i_2_n_0;
  wire reg_op10_carry__2_i_3_n_0;
  wire reg_op10_carry__2_i_4_n_0;
  wire reg_op10_carry__2_n_0;
  wire reg_op10_carry__2_n_1;
  wire reg_op10_carry__2_n_2;
  wire reg_op10_carry__2_n_3;
  wire reg_op10_carry__3_i_1_n_0;
  wire reg_op10_carry__3_i_2_n_0;
  wire reg_op10_carry__3_i_3_n_0;
  wire reg_op10_carry__3_i_4_n_0;
  wire reg_op10_carry__3_n_0;
  wire reg_op10_carry__3_n_1;
  wire reg_op10_carry__3_n_2;
  wire reg_op10_carry__3_n_3;
  wire reg_op10_carry__4_i_1_n_0;
  wire reg_op10_carry__4_i_2_n_0;
  wire reg_op10_carry__4_i_3_n_0;
  wire reg_op10_carry__4_i_4_n_0;
  wire reg_op10_carry__4_n_0;
  wire reg_op10_carry__4_n_1;
  wire reg_op10_carry__4_n_2;
  wire reg_op10_carry__4_n_3;
  wire reg_op10_carry__5_i_1_n_0;
  wire reg_op10_carry__5_i_2_n_0;
  wire reg_op10_carry__5_i_3_n_0;
  wire reg_op10_carry__5_i_4_n_0;
  wire reg_op10_carry__5_n_0;
  wire reg_op10_carry__5_n_1;
  wire reg_op10_carry__5_n_2;
  wire reg_op10_carry__5_n_3;
  wire reg_op10_carry__6_i_1_n_0;
  wire reg_op10_carry__6_i_2_n_0;
  wire reg_op10_carry__6_i_3_n_0;
  wire reg_op10_carry__6_i_4_n_0;
  wire reg_op10_carry__6_n_1;
  wire reg_op10_carry__6_n_2;
  wire reg_op10_carry__6_n_3;
  wire reg_op10_carry_i_1_n_0;
  wire reg_op10_carry_i_2_n_0;
  wire reg_op10_carry_i_3_n_0;
  wire reg_op10_carry_i_4_n_0;
  wire reg_op10_carry_n_0;
  wire reg_op10_carry_n_1;
  wire reg_op10_carry_n_2;
  wire reg_op10_carry_n_3;
  wire \reg_op1[0]_i_2_n_0 ;
  wire \reg_op1[10]_i_2_n_0 ;
  wire \reg_op1[10]_i_3_n_0 ;
  wire \reg_op1[11]_i_2_n_0 ;
  wire \reg_op1[11]_i_3_n_0 ;
  wire \reg_op1[12]_i_2_n_0 ;
  wire \reg_op1[12]_i_3_n_0 ;
  wire \reg_op1[13]_i_2_n_0 ;
  wire \reg_op1[13]_i_3_n_0 ;
  wire \reg_op1[14]_i_2_n_0 ;
  wire \reg_op1[14]_i_3_n_0 ;
  wire \reg_op1[15]_i_2_n_0 ;
  wire \reg_op1[15]_i_3_n_0 ;
  wire \reg_op1[16]_i_2_n_0 ;
  wire \reg_op1[16]_i_3_n_0 ;
  wire \reg_op1[17]_i_2_n_0 ;
  wire \reg_op1[17]_i_3_n_0 ;
  wire \reg_op1[18]_i_2_n_0 ;
  wire \reg_op1[18]_i_3_n_0 ;
  wire \reg_op1[19]_i_2_n_0 ;
  wire \reg_op1[19]_i_3_n_0 ;
  wire \reg_op1[1]_i_2_n_0 ;
  wire \reg_op1[1]_i_3_n_0 ;
  wire \reg_op1[20]_i_2_n_0 ;
  wire \reg_op1[20]_i_3_n_0 ;
  wire \reg_op1[21]_i_2_n_0 ;
  wire \reg_op1[21]_i_3_n_0 ;
  wire \reg_op1[22]_i_2_n_0 ;
  wire \reg_op1[22]_i_3_n_0 ;
  wire \reg_op1[23]_i_2_n_0 ;
  wire \reg_op1[23]_i_3_n_0 ;
  wire \reg_op1[24]_i_2_n_0 ;
  wire \reg_op1[24]_i_3_n_0 ;
  wire \reg_op1[25]_i_2_n_0 ;
  wire \reg_op1[25]_i_3_n_0 ;
  wire \reg_op1[25]_i_4_n_0 ;
  wire \reg_op1[26]_i_2_n_0 ;
  wire \reg_op1[26]_i_3_n_0 ;
  wire \reg_op1[27]_i_2_n_0 ;
  wire \reg_op1[27]_i_3_n_0 ;
  wire \reg_op1[27]_i_4_n_0 ;
  wire \reg_op1[28]_i_2_n_0 ;
  wire \reg_op1[28]_i_3_n_0 ;
  wire \reg_op1[29]_i_2_n_0 ;
  wire \reg_op1[29]_i_3_n_0 ;
  wire \reg_op1[29]_i_4_n_0 ;
  wire \reg_op1[2]_i_2_n_0 ;
  wire \reg_op1[2]_i_3_n_0 ;
  wire \reg_op1[30]_i_2_n_0 ;
  wire \reg_op1[30]_i_3_n_0 ;
  wire \reg_op1[30]_i_4_n_0 ;
  wire \reg_op1[30]_i_5_n_0 ;
  wire \reg_op1[30]_i_6_n_0 ;
  wire \reg_op1[30]_i_7_n_0 ;
  wire \reg_op1[31]_i_10_n_0 ;
  wire \reg_op1[31]_i_1_n_0 ;
  wire \reg_op1[31]_i_3_n_0 ;
  wire \reg_op1[31]_i_4_n_0 ;
  wire \reg_op1[31]_i_5_n_0 ;
  wire \reg_op1[31]_i_6_n_0 ;
  wire \reg_op1[31]_i_7_n_0 ;
  wire \reg_op1[31]_i_8_n_0 ;
  wire \reg_op1[31]_i_9_n_0 ;
  wire \reg_op1[3]_i_2_n_0 ;
  wire \reg_op1[3]_i_3_n_0 ;
  wire \reg_op1[4]_i_2_n_0 ;
  wire \reg_op1[4]_i_3_n_0 ;
  wire \reg_op1[5]_i_2_n_0 ;
  wire \reg_op1[5]_i_3_n_0 ;
  wire \reg_op1[6]_i_2_n_0 ;
  wire \reg_op1[6]_i_3_n_0 ;
  wire \reg_op1[7]_i_2_n_0 ;
  wire \reg_op1[7]_i_3_n_0 ;
  wire \reg_op1[8]_i_2_n_0 ;
  wire \reg_op1[8]_i_3_n_0 ;
  wire \reg_op1[9]_i_2_n_0 ;
  wire \reg_op1[9]_i_3_n_0 ;
  wire \reg_op1_reg_n_0_[0] ;
  wire \reg_op1_reg_n_0_[10] ;
  wire \reg_op1_reg_n_0_[11] ;
  wire \reg_op1_reg_n_0_[12] ;
  wire \reg_op1_reg_n_0_[13] ;
  wire \reg_op1_reg_n_0_[14] ;
  wire \reg_op1_reg_n_0_[15] ;
  wire \reg_op1_reg_n_0_[16] ;
  wire \reg_op1_reg_n_0_[17] ;
  wire \reg_op1_reg_n_0_[18] ;
  wire \reg_op1_reg_n_0_[19] ;
  wire \reg_op1_reg_n_0_[1] ;
  wire \reg_op1_reg_n_0_[20] ;
  wire \reg_op1_reg_n_0_[21] ;
  wire \reg_op1_reg_n_0_[22] ;
  wire \reg_op1_reg_n_0_[23] ;
  wire \reg_op1_reg_n_0_[24] ;
  wire \reg_op1_reg_n_0_[25] ;
  wire \reg_op1_reg_n_0_[26] ;
  wire \reg_op1_reg_n_0_[27] ;
  wire \reg_op1_reg_n_0_[28] ;
  wire \reg_op1_reg_n_0_[29] ;
  wire \reg_op1_reg_n_0_[2] ;
  wire \reg_op1_reg_n_0_[30] ;
  wire \reg_op1_reg_n_0_[31] ;
  wire \reg_op1_reg_n_0_[3] ;
  wire \reg_op1_reg_n_0_[4] ;
  wire \reg_op1_reg_n_0_[5] ;
  wire \reg_op1_reg_n_0_[6] ;
  wire \reg_op1_reg_n_0_[7] ;
  wire \reg_op1_reg_n_0_[8] ;
  wire \reg_op1_reg_n_0_[9] ;
  wire \reg_op2[0]_i_1_n_0 ;
  wire \reg_op2[10]_i_1_n_0 ;
  wire \reg_op2[11]_i_1_n_0 ;
  wire \reg_op2[12]_i_1_n_0 ;
  wire \reg_op2[13]_i_1_n_0 ;
  wire \reg_op2[14]_i_1_n_0 ;
  wire \reg_op2[15]_i_1_n_0 ;
  wire \reg_op2[16]_i_1_n_0 ;
  wire \reg_op2[17]_i_1_n_0 ;
  wire \reg_op2[18]_i_1_n_0 ;
  wire \reg_op2[19]_i_1_n_0 ;
  wire \reg_op2[1]_i_1_n_0 ;
  wire \reg_op2[20]_i_1_n_0 ;
  wire \reg_op2[21]_i_1_n_0 ;
  wire \reg_op2[22]_i_1_n_0 ;
  wire \reg_op2[23]_i_1_n_0 ;
  wire \reg_op2[24]_i_1_n_0 ;
  wire \reg_op2[25]_i_1_n_0 ;
  wire \reg_op2[26]_i_1_n_0 ;
  wire \reg_op2[27]_i_1_n_0 ;
  wire \reg_op2[28]_i_1_n_0 ;
  wire \reg_op2[29]_i_1_n_0 ;
  wire \reg_op2[2]_i_1_n_0 ;
  wire \reg_op2[30]_i_1_n_0 ;
  wire \reg_op2[31]_i_1_n_0 ;
  wire \reg_op2[31]_i_2_n_0 ;
  wire \reg_op2[31]_i_3_n_0 ;
  wire \reg_op2[31]_i_4_n_0 ;
  wire \reg_op2[3]_i_1_n_0 ;
  wire \reg_op2[4]_i_1_n_0 ;
  wire \reg_op2[5]_i_1_n_0 ;
  wire \reg_op2[6]_i_1_n_0 ;
  wire \reg_op2[7]_i_1_n_0 ;
  wire \reg_op2[8]_i_1_n_0 ;
  wire \reg_op2[9]_i_1_n_0 ;
  wire \reg_op2_reg_n_0_[10] ;
  wire \reg_op2_reg_n_0_[11] ;
  wire \reg_op2_reg_n_0_[12] ;
  wire \reg_op2_reg_n_0_[13] ;
  wire \reg_op2_reg_n_0_[14] ;
  wire \reg_op2_reg_n_0_[15] ;
  wire \reg_op2_reg_n_0_[16] ;
  wire \reg_op2_reg_n_0_[17] ;
  wire \reg_op2_reg_n_0_[18] ;
  wire \reg_op2_reg_n_0_[19] ;
  wire \reg_op2_reg_n_0_[20] ;
  wire \reg_op2_reg_n_0_[21] ;
  wire \reg_op2_reg_n_0_[22] ;
  wire \reg_op2_reg_n_0_[23] ;
  wire \reg_op2_reg_n_0_[24] ;
  wire \reg_op2_reg_n_0_[25] ;
  wire \reg_op2_reg_n_0_[26] ;
  wire \reg_op2_reg_n_0_[27] ;
  wire \reg_op2_reg_n_0_[28] ;
  wire \reg_op2_reg_n_0_[29] ;
  wire \reg_op2_reg_n_0_[30] ;
  wire \reg_op2_reg_n_0_[31] ;
  wire \reg_op2_reg_n_0_[8] ;
  wire \reg_op2_reg_n_0_[9] ;
  wire [7:0]reg_out;
  wire reg_out0_carry__0_i_1_n_0;
  wire reg_out0_carry__0_i_2_n_0;
  wire reg_out0_carry__0_i_3_n_0;
  wire reg_out0_carry__0_i_4_n_0;
  wire reg_out0_carry__0_n_0;
  wire reg_out0_carry__0_n_1;
  wire reg_out0_carry__0_n_2;
  wire reg_out0_carry__0_n_3;
  wire reg_out0_carry__0_n_4;
  wire reg_out0_carry__0_n_5;
  wire reg_out0_carry__0_n_6;
  wire reg_out0_carry__0_n_7;
  wire reg_out0_carry__1_i_1_n_0;
  wire reg_out0_carry__1_i_2_n_0;
  wire reg_out0_carry__1_i_3_n_0;
  wire reg_out0_carry__1_i_4_n_0;
  wire reg_out0_carry__1_n_0;
  wire reg_out0_carry__1_n_1;
  wire reg_out0_carry__1_n_2;
  wire reg_out0_carry__1_n_3;
  wire reg_out0_carry__1_n_4;
  wire reg_out0_carry__1_n_5;
  wire reg_out0_carry__1_n_6;
  wire reg_out0_carry__1_n_7;
  wire reg_out0_carry__2_i_1_n_0;
  wire reg_out0_carry__2_i_2_n_0;
  wire reg_out0_carry__2_i_3_n_0;
  wire reg_out0_carry__2_i_4_n_0;
  wire reg_out0_carry__2_n_0;
  wire reg_out0_carry__2_n_1;
  wire reg_out0_carry__2_n_2;
  wire reg_out0_carry__2_n_3;
  wire reg_out0_carry__2_n_4;
  wire reg_out0_carry__2_n_5;
  wire reg_out0_carry__2_n_6;
  wire reg_out0_carry__2_n_7;
  wire reg_out0_carry__3_i_1_n_0;
  wire reg_out0_carry__3_i_2_n_0;
  wire reg_out0_carry__3_i_3_n_0;
  wire reg_out0_carry__3_i_4_n_0;
  wire reg_out0_carry__3_n_0;
  wire reg_out0_carry__3_n_1;
  wire reg_out0_carry__3_n_2;
  wire reg_out0_carry__3_n_3;
  wire reg_out0_carry__3_n_4;
  wire reg_out0_carry__3_n_5;
  wire reg_out0_carry__3_n_6;
  wire reg_out0_carry__3_n_7;
  wire reg_out0_carry__4_i_1_n_0;
  wire reg_out0_carry__4_i_2_n_0;
  wire reg_out0_carry__4_i_3_n_0;
  wire reg_out0_carry__4_i_4_n_0;
  wire reg_out0_carry__4_n_0;
  wire reg_out0_carry__4_n_1;
  wire reg_out0_carry__4_n_2;
  wire reg_out0_carry__4_n_3;
  wire reg_out0_carry__4_n_4;
  wire reg_out0_carry__4_n_5;
  wire reg_out0_carry__4_n_6;
  wire reg_out0_carry__4_n_7;
  wire reg_out0_carry__5_i_1_n_0;
  wire reg_out0_carry__5_i_2_n_0;
  wire reg_out0_carry__5_i_3_n_0;
  wire reg_out0_carry__5_i_4_n_0;
  wire reg_out0_carry__5_n_0;
  wire reg_out0_carry__5_n_1;
  wire reg_out0_carry__5_n_2;
  wire reg_out0_carry__5_n_3;
  wire reg_out0_carry__5_n_4;
  wire reg_out0_carry__5_n_5;
  wire reg_out0_carry__5_n_6;
  wire reg_out0_carry__5_n_7;
  wire reg_out0_carry__6_i_1_n_0;
  wire reg_out0_carry__6_i_2_n_0;
  wire reg_out0_carry__6_i_3_n_0;
  wire reg_out0_carry__6_n_2;
  wire reg_out0_carry__6_n_3;
  wire reg_out0_carry__6_n_5;
  wire reg_out0_carry__6_n_6;
  wire reg_out0_carry__6_n_7;
  wire reg_out0_carry_i_1_n_0;
  wire reg_out0_carry_i_2_n_0;
  wire reg_out0_carry_i_3_n_0;
  wire reg_out0_carry_i_4_n_0;
  wire reg_out0_carry_n_0;
  wire reg_out0_carry_n_1;
  wire reg_out0_carry_n_2;
  wire reg_out0_carry_n_3;
  wire reg_out0_carry_n_4;
  wire reg_out0_carry_n_5;
  wire reg_out0_carry_n_6;
  wire [31:0]reg_out1;
  wire \reg_out[0]_i_2_n_0 ;
  wire \reg_out[0]_i_3_n_0 ;
  wire \reg_out[0]_i_4_n_0 ;
  wire \reg_out[10]_i_1_n_0 ;
  wire \reg_out[10]_i_2_n_0 ;
  wire \reg_out[10]_i_3_n_0 ;
  wire \reg_out[11]_i_1_n_0 ;
  wire \reg_out[11]_i_2_n_0 ;
  wire \reg_out[11]_i_3_n_0 ;
  wire \reg_out[12]_i_1_n_0 ;
  wire \reg_out[12]_i_2_n_0 ;
  wire \reg_out[12]_i_3_n_0 ;
  wire \reg_out[13]_i_1_n_0 ;
  wire \reg_out[13]_i_2_n_0 ;
  wire \reg_out[13]_i_3_n_0 ;
  wire \reg_out[14]_i_1_n_0 ;
  wire \reg_out[14]_i_2_n_0 ;
  wire \reg_out[14]_i_3_n_0 ;
  wire \reg_out[14]_i_4_n_0 ;
  wire \reg_out[14]_i_5_n_0 ;
  wire \reg_out[14]_i_6_n_0 ;
  wire \reg_out[15]_i_1_n_0 ;
  wire \reg_out[15]_i_2_n_0 ;
  wire \reg_out[15]_i_3_n_0 ;
  wire \reg_out[16]_i_1_n_0 ;
  wire \reg_out[16]_i_2_n_0 ;
  wire \reg_out[16]_i_3_n_0 ;
  wire \reg_out[17]_i_1_n_0 ;
  wire \reg_out[17]_i_2_n_0 ;
  wire \reg_out[17]_i_3_n_0 ;
  wire \reg_out[18]_i_1_n_0 ;
  wire \reg_out[18]_i_2_n_0 ;
  wire \reg_out[18]_i_3_n_0 ;
  wire \reg_out[19]_i_1_n_0 ;
  wire \reg_out[19]_i_2_n_0 ;
  wire \reg_out[19]_i_3_n_0 ;
  wire \reg_out[1]_i_2_n_0 ;
  wire \reg_out[1]_i_3_n_0 ;
  wire \reg_out[1]_i_4_n_0 ;
  wire \reg_out[1]_i_5_n_0 ;
  wire \reg_out[20]_i_1_n_0 ;
  wire \reg_out[20]_i_2_n_0 ;
  wire \reg_out[20]_i_3_n_0 ;
  wire \reg_out[21]_i_1_n_0 ;
  wire \reg_out[21]_i_2_n_0 ;
  wire \reg_out[21]_i_3_n_0 ;
  wire \reg_out[21]_i_4_n_0 ;
  wire \reg_out[22]_i_1_n_0 ;
  wire \reg_out[22]_i_2_n_0 ;
  wire \reg_out[22]_i_3_n_0 ;
  wire \reg_out[23]_i_1_n_0 ;
  wire \reg_out[23]_i_2_n_0 ;
  wire \reg_out[23]_i_3_n_0 ;
  wire \reg_out[24]_i_1_n_0 ;
  wire \reg_out[24]_i_2_n_0 ;
  wire \reg_out[24]_i_3_n_0 ;
  wire \reg_out[25]_i_1_n_0 ;
  wire \reg_out[25]_i_2_n_0 ;
  wire \reg_out[25]_i_3_n_0 ;
  wire \reg_out[26]_i_1_n_0 ;
  wire \reg_out[26]_i_2_n_0 ;
  wire \reg_out[26]_i_3_n_0 ;
  wire \reg_out[26]_i_4_n_0 ;
  wire \reg_out[27]_i_1_n_0 ;
  wire \reg_out[27]_i_2_n_0 ;
  wire \reg_out[27]_i_3_n_0 ;
  wire \reg_out[28]_i_1_n_0 ;
  wire \reg_out[28]_i_2_n_0 ;
  wire \reg_out[28]_i_3_n_0 ;
  wire \reg_out[28]_i_4_n_0 ;
  wire \reg_out[29]_i_1_n_0 ;
  wire \reg_out[29]_i_2_n_0 ;
  wire \reg_out[29]_i_3_n_0 ;
  wire \reg_out[2]_i_2_n_0 ;
  wire \reg_out[2]_i_3_n_0 ;
  wire \reg_out[2]_i_4_n_0 ;
  wire \reg_out[30]_i_1_n_0 ;
  wire \reg_out[30]_i_2_n_0 ;
  wire \reg_out[30]_i_3_n_0 ;
  wire \reg_out[31]_i_1_n_0 ;
  wire \reg_out[31]_i_2_n_0 ;
  wire \reg_out[31]_i_3_n_0 ;
  wire \reg_out[31]_i_4_n_0 ;
  wire \reg_out[31]_i_5_n_0 ;
  wire \reg_out[31]_i_6_n_0 ;
  wire \reg_out[3]_i_2_n_0 ;
  wire \reg_out[3]_i_3_n_0 ;
  wire \reg_out[3]_i_4_n_0 ;
  wire \reg_out[4]_i_2_n_0 ;
  wire \reg_out[4]_i_3_n_0 ;
  wire \reg_out[4]_i_4_n_0 ;
  wire \reg_out[5]_i_2_n_0 ;
  wire \reg_out[5]_i_3_n_0 ;
  wire \reg_out[5]_i_4_n_0 ;
  wire \reg_out[5]_i_5_n_0 ;
  wire \reg_out[6]_i_2_n_0 ;
  wire \reg_out[6]_i_3_n_0 ;
  wire \reg_out[6]_i_4_n_0 ;
  wire \reg_out[6]_i_5_n_0 ;
  wire \reg_out[6]_i_6_n_0 ;
  wire \reg_out[6]_i_7_n_0 ;
  wire \reg_out[7]_i_2_n_0 ;
  wire \reg_out[7]_i_3_n_0 ;
  wire \reg_out[7]_i_4_n_0 ;
  wire \reg_out[7]_i_5_n_0 ;
  wire \reg_out[7]_i_6_n_0 ;
  wire \reg_out[7]_i_7_n_0 ;
  wire \reg_out[8]_i_1_n_0 ;
  wire \reg_out[8]_i_2_n_0 ;
  wire \reg_out[8]_i_3_n_0 ;
  wire \reg_out[9]_i_1_n_0 ;
  wire \reg_out[9]_i_2_n_0 ;
  wire \reg_out[9]_i_3_n_0 ;
  wire \reg_out_reg_n_0_[0] ;
  wire \reg_out_reg_n_0_[10] ;
  wire \reg_out_reg_n_0_[11] ;
  wire \reg_out_reg_n_0_[12] ;
  wire \reg_out_reg_n_0_[13] ;
  wire \reg_out_reg_n_0_[14] ;
  wire \reg_out_reg_n_0_[15] ;
  wire \reg_out_reg_n_0_[16] ;
  wire \reg_out_reg_n_0_[17] ;
  wire \reg_out_reg_n_0_[18] ;
  wire \reg_out_reg_n_0_[19] ;
  wire \reg_out_reg_n_0_[1] ;
  wire \reg_out_reg_n_0_[20] ;
  wire \reg_out_reg_n_0_[21] ;
  wire \reg_out_reg_n_0_[22] ;
  wire \reg_out_reg_n_0_[23] ;
  wire \reg_out_reg_n_0_[24] ;
  wire \reg_out_reg_n_0_[25] ;
  wire \reg_out_reg_n_0_[26] ;
  wire \reg_out_reg_n_0_[27] ;
  wire \reg_out_reg_n_0_[28] ;
  wire \reg_out_reg_n_0_[29] ;
  wire \reg_out_reg_n_0_[2] ;
  wire \reg_out_reg_n_0_[30] ;
  wire \reg_out_reg_n_0_[31] ;
  wire \reg_out_reg_n_0_[3] ;
  wire \reg_out_reg_n_0_[4] ;
  wire \reg_out_reg_n_0_[5] ;
  wire \reg_out_reg_n_0_[6] ;
  wire \reg_out_reg_n_0_[7] ;
  wire \reg_out_reg_n_0_[8] ;
  wire \reg_out_reg_n_0_[9] ;
  wire \reg_pc_reg_n_0_[10] ;
  wire \reg_pc_reg_n_0_[11] ;
  wire \reg_pc_reg_n_0_[12] ;
  wire \reg_pc_reg_n_0_[13] ;
  wire \reg_pc_reg_n_0_[14] ;
  wire \reg_pc_reg_n_0_[15] ;
  wire \reg_pc_reg_n_0_[16] ;
  wire \reg_pc_reg_n_0_[17] ;
  wire \reg_pc_reg_n_0_[18] ;
  wire \reg_pc_reg_n_0_[19] ;
  wire \reg_pc_reg_n_0_[1] ;
  wire \reg_pc_reg_n_0_[20] ;
  wire \reg_pc_reg_n_0_[21] ;
  wire \reg_pc_reg_n_0_[22] ;
  wire \reg_pc_reg_n_0_[23] ;
  wire \reg_pc_reg_n_0_[24] ;
  wire \reg_pc_reg_n_0_[25] ;
  wire \reg_pc_reg_n_0_[26] ;
  wire \reg_pc_reg_n_0_[27] ;
  wire \reg_pc_reg_n_0_[28] ;
  wire \reg_pc_reg_n_0_[29] ;
  wire \reg_pc_reg_n_0_[2] ;
  wire \reg_pc_reg_n_0_[30] ;
  wire \reg_pc_reg_n_0_[31] ;
  wire \reg_pc_reg_n_0_[3] ;
  wire \reg_pc_reg_n_0_[4] ;
  wire \reg_pc_reg_n_0_[5] ;
  wire \reg_pc_reg_n_0_[6] ;
  wire \reg_pc_reg_n_0_[7] ;
  wire \reg_pc_reg_n_0_[8] ;
  wire \reg_pc_reg_n_0_[9] ;
  wire [4:0]reg_sh;
  wire [31:0]reg_sh1;
  wire \reg_sh[0]_i_2_n_0 ;
  wire \reg_sh[1]_i_2_n_0 ;
  wire \reg_sh[1]_i_3_n_0 ;
  wire \reg_sh[2]_i_2_n_0 ;
  wire \reg_sh[3]_i_2_n_0 ;
  wire \reg_sh[4]_i_2_n_0 ;
  wire \reg_sh[4]_i_3_n_0 ;
  wire \reg_sh[4]_i_4_n_0 ;
  wire \reg_sh[4]_i_5_n_0 ;
  wire \reg_sh[4]_i_6_n_0 ;
  wire \reg_sh_reg_n_0_[0] ;
  wire \reg_sh_reg_n_0_[1] ;
  wire \reg_sh_reg_n_0_[2] ;
  wire \reg_sh_reg_n_0_[3] ;
  wire \reg_sh_reg_n_0_[4] ;
  wire resetn_IBUF;
  wire trap_OBUF;
  wire [3:3]\NLW_alu_out0_inferred__3/i___29_carry__6_CO_UNCONNECTED ;
  wire [3:0]\NLW_alu_out_00_inferred__1/i__carry_O_UNCONNECTED ;
  wire [3:0]\NLW_alu_out_00_inferred__1/i__carry__0_O_UNCONNECTED ;
  wire [3:3]\NLW_alu_out_00_inferred__1/i__carry__1_CO_UNCONNECTED ;
  wire [3:0]\NLW_alu_out_00_inferred__1/i__carry__1_O_UNCONNECTED ;
  wire [3:0]NLW_alu_out_01_carry_O_UNCONNECTED;
  wire [3:0]NLW_alu_out_01_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_alu_out_01_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_alu_out_01_carry__2_O_UNCONNECTED;
  wire [3:0]\NLW_alu_out_01_inferred__0/i__carry_O_UNCONNECTED ;
  wire [3:0]\NLW_alu_out_01_inferred__0/i__carry__0_O_UNCONNECTED ;
  wire [3:0]\NLW_alu_out_01_inferred__0/i__carry__1_O_UNCONNECTED ;
  wire [3:0]\NLW_alu_out_01_inferred__0/i__carry__2_O_UNCONNECTED ;
  wire [3:3]\NLW_count_cycle_reg[60]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_count_instr_reg[60]_i_1_CO_UNCONNECTED ;
  wire [1:0]NLW_cpuregs_reg_r1_0_31_0_5_DOD_UNCONNECTED;
  wire [1:0]NLW_cpuregs_reg_r1_0_31_12_17_DOD_UNCONNECTED;
  wire [1:0]NLW_cpuregs_reg_r1_0_31_18_23_DOD_UNCONNECTED;
  wire [1:0]NLW_cpuregs_reg_r1_0_31_24_29_DOD_UNCONNECTED;
  wire [1:0]NLW_cpuregs_reg_r1_0_31_30_31_DOB_UNCONNECTED;
  wire [1:0]NLW_cpuregs_reg_r1_0_31_30_31_DOC_UNCONNECTED;
  wire [1:0]NLW_cpuregs_reg_r1_0_31_30_31_DOD_UNCONNECTED;
  wire [1:0]NLW_cpuregs_reg_r1_0_31_6_11_DOD_UNCONNECTED;
  wire [1:0]NLW_cpuregs_reg_r2_0_31_0_5_DOD_UNCONNECTED;
  wire [1:0]NLW_cpuregs_reg_r2_0_31_12_17_DOD_UNCONNECTED;
  wire [1:0]NLW_cpuregs_reg_r2_0_31_18_23_DOD_UNCONNECTED;
  wire [1:0]NLW_cpuregs_reg_r2_0_31_24_29_DOD_UNCONNECTED;
  wire [1:0]NLW_cpuregs_reg_r2_0_31_30_31_DOB_UNCONNECTED;
  wire [1:0]NLW_cpuregs_reg_r2_0_31_30_31_DOC_UNCONNECTED;
  wire [1:0]NLW_cpuregs_reg_r2_0_31_30_31_DOD_UNCONNECTED;
  wire [1:0]NLW_cpuregs_reg_r2_0_31_6_11_DOD_UNCONNECTED;
  wire [0:0]NLW_p_1_out_carry_O_UNCONNECTED;
  wire [3:3]NLW_p_1_out_carry__6_CO_UNCONNECTED;
  wire [0:0]NLW_reg_next_pc0_carry_O_UNCONNECTED;
  wire [3:2]NLW_reg_next_pc0_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_reg_next_pc0_carry__6_O_UNCONNECTED;
  wire [3:3]NLW_reg_op10_carry__6_CO_UNCONNECTED;
  wire [0:0]NLW_reg_out0_carry_O_UNCONNECTED;
  wire [3:2]NLW_reg_out0_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_reg_out0_carry__6_O_UNCONNECTED;

  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \alu_out0_inferred__3/i___29_carry 
       (.CI(1'b0),
        .CO({\alu_out0_inferred__3/i___29_carry_n_0 ,\alu_out0_inferred__3/i___29_carry_n_1 ,\alu_out0_inferred__3/i___29_carry_n_2 ,\alu_out0_inferred__3/i___29_carry_n_3 }),
        .CYINIT(\reg_op1_reg_n_0_[0] ),
        .DI({\reg_op1_reg_n_0_[3] ,\reg_op1_reg_n_0_[2] ,\reg_op1_reg_n_0_[1] ,instr_sub}),
        .O({\alu_out0_inferred__3/i___29_carry_n_4 ,\alu_out0_inferred__3/i___29_carry_n_5 ,\alu_out0_inferred__3/i___29_carry_n_6 ,\alu_out0_inferred__3/i___29_carry_n_7 }),
        .S({i___29_carry_i_1_n_0,i___29_carry_i_2_n_0,i___29_carry_i_3_n_0,i___29_carry_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \alu_out0_inferred__3/i___29_carry__0 
       (.CI(\alu_out0_inferred__3/i___29_carry_n_0 ),
        .CO({\alu_out0_inferred__3/i___29_carry__0_n_0 ,\alu_out0_inferred__3/i___29_carry__0_n_1 ,\alu_out0_inferred__3/i___29_carry__0_n_2 ,\alu_out0_inferred__3/i___29_carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({\reg_op1_reg_n_0_[7] ,\reg_op1_reg_n_0_[6] ,\reg_op1_reg_n_0_[5] ,\reg_op1_reg_n_0_[4] }),
        .O({\alu_out0_inferred__3/i___29_carry__0_n_4 ,\alu_out0_inferred__3/i___29_carry__0_n_5 ,\alu_out0_inferred__3/i___29_carry__0_n_6 ,\alu_out0_inferred__3/i___29_carry__0_n_7 }),
        .S({i___29_carry__0_i_1_n_0,i___29_carry__0_i_2_n_0,i___29_carry__0_i_3_n_0,i___29_carry__0_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \alu_out0_inferred__3/i___29_carry__1 
       (.CI(\alu_out0_inferred__3/i___29_carry__0_n_0 ),
        .CO({\alu_out0_inferred__3/i___29_carry__1_n_0 ,\alu_out0_inferred__3/i___29_carry__1_n_1 ,\alu_out0_inferred__3/i___29_carry__1_n_2 ,\alu_out0_inferred__3/i___29_carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({\reg_op1_reg_n_0_[11] ,\reg_op1_reg_n_0_[10] ,\reg_op1_reg_n_0_[9] ,\reg_op1_reg_n_0_[8] }),
        .O({\alu_out0_inferred__3/i___29_carry__1_n_4 ,\alu_out0_inferred__3/i___29_carry__1_n_5 ,\alu_out0_inferred__3/i___29_carry__1_n_6 ,\alu_out0_inferred__3/i___29_carry__1_n_7 }),
        .S({i___29_carry__1_i_1_n_0,i___29_carry__1_i_2_n_0,i___29_carry__1_i_3_n_0,i___29_carry__1_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \alu_out0_inferred__3/i___29_carry__2 
       (.CI(\alu_out0_inferred__3/i___29_carry__1_n_0 ),
        .CO({\alu_out0_inferred__3/i___29_carry__2_n_0 ,\alu_out0_inferred__3/i___29_carry__2_n_1 ,\alu_out0_inferred__3/i___29_carry__2_n_2 ,\alu_out0_inferred__3/i___29_carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({\reg_op1_reg_n_0_[15] ,\reg_op1_reg_n_0_[14] ,\reg_op1_reg_n_0_[13] ,\reg_op1_reg_n_0_[12] }),
        .O({\alu_out0_inferred__3/i___29_carry__2_n_4 ,\alu_out0_inferred__3/i___29_carry__2_n_5 ,\alu_out0_inferred__3/i___29_carry__2_n_6 ,\alu_out0_inferred__3/i___29_carry__2_n_7 }),
        .S({i___29_carry__2_i_1_n_0,i___29_carry__2_i_2_n_0,i___29_carry__2_i_3_n_0,i___29_carry__2_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \alu_out0_inferred__3/i___29_carry__3 
       (.CI(\alu_out0_inferred__3/i___29_carry__2_n_0 ),
        .CO({\alu_out0_inferred__3/i___29_carry__3_n_0 ,\alu_out0_inferred__3/i___29_carry__3_n_1 ,\alu_out0_inferred__3/i___29_carry__3_n_2 ,\alu_out0_inferred__3/i___29_carry__3_n_3 }),
        .CYINIT(1'b0),
        .DI({\reg_op1_reg_n_0_[19] ,\reg_op1_reg_n_0_[18] ,\reg_op1_reg_n_0_[17] ,\reg_op1_reg_n_0_[16] }),
        .O({\alu_out0_inferred__3/i___29_carry__3_n_4 ,\alu_out0_inferred__3/i___29_carry__3_n_5 ,\alu_out0_inferred__3/i___29_carry__3_n_6 ,\alu_out0_inferred__3/i___29_carry__3_n_7 }),
        .S({i___29_carry__3_i_1_n_0,i___29_carry__3_i_2_n_0,i___29_carry__3_i_3_n_0,i___29_carry__3_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \alu_out0_inferred__3/i___29_carry__4 
       (.CI(\alu_out0_inferred__3/i___29_carry__3_n_0 ),
        .CO({\alu_out0_inferred__3/i___29_carry__4_n_0 ,\alu_out0_inferred__3/i___29_carry__4_n_1 ,\alu_out0_inferred__3/i___29_carry__4_n_2 ,\alu_out0_inferred__3/i___29_carry__4_n_3 }),
        .CYINIT(1'b0),
        .DI({\reg_op1_reg_n_0_[23] ,\reg_op1_reg_n_0_[22] ,\reg_op1_reg_n_0_[21] ,\reg_op1_reg_n_0_[20] }),
        .O({\alu_out0_inferred__3/i___29_carry__4_n_4 ,\alu_out0_inferred__3/i___29_carry__4_n_5 ,\alu_out0_inferred__3/i___29_carry__4_n_6 ,\alu_out0_inferred__3/i___29_carry__4_n_7 }),
        .S({i___29_carry__4_i_1_n_0,i___29_carry__4_i_2_n_0,i___29_carry__4_i_3_n_0,i___29_carry__4_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \alu_out0_inferred__3/i___29_carry__5 
       (.CI(\alu_out0_inferred__3/i___29_carry__4_n_0 ),
        .CO({\alu_out0_inferred__3/i___29_carry__5_n_0 ,\alu_out0_inferred__3/i___29_carry__5_n_1 ,\alu_out0_inferred__3/i___29_carry__5_n_2 ,\alu_out0_inferred__3/i___29_carry__5_n_3 }),
        .CYINIT(1'b0),
        .DI({\reg_op1_reg_n_0_[27] ,\reg_op1_reg_n_0_[26] ,\reg_op1_reg_n_0_[25] ,\reg_op1_reg_n_0_[24] }),
        .O({\alu_out0_inferred__3/i___29_carry__5_n_4 ,\alu_out0_inferred__3/i___29_carry__5_n_5 ,\alu_out0_inferred__3/i___29_carry__5_n_6 ,\alu_out0_inferred__3/i___29_carry__5_n_7 }),
        .S({i___29_carry__5_i_1_n_0,i___29_carry__5_i_2_n_0,i___29_carry__5_i_3_n_0,i___29_carry__5_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \alu_out0_inferred__3/i___29_carry__6 
       (.CI(\alu_out0_inferred__3/i___29_carry__5_n_0 ),
        .CO({\NLW_alu_out0_inferred__3/i___29_carry__6_CO_UNCONNECTED [3],\alu_out0_inferred__3/i___29_carry__6_n_1 ,\alu_out0_inferred__3/i___29_carry__6_n_2 ,\alu_out0_inferred__3/i___29_carry__6_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\reg_op1_reg_n_0_[30] ,\reg_op1_reg_n_0_[29] ,\reg_op1_reg_n_0_[28] }),
        .O({\alu_out0_inferred__3/i___29_carry__6_n_4 ,\alu_out0_inferred__3/i___29_carry__6_n_5 ,\alu_out0_inferred__3/i___29_carry__6_n_6 ,\alu_out0_inferred__3/i___29_carry__6_n_7 }),
        .S({i___29_carry__6_i_1_n_0,i___29_carry__6_i_2_n_0,i___29_carry__6_i_3_n_0,i___29_carry__6_i_4_n_0}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \alu_out_00_inferred__1/i__carry 
       (.CI(1'b0),
        .CO({\alu_out_00_inferred__1/i__carry_n_0 ,\alu_out_00_inferred__1/i__carry_n_1 ,\alu_out_00_inferred__1/i__carry_n_2 ,\alu_out_00_inferred__1/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_alu_out_00_inferred__1/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_1_n_0,i__carry_i_2_n_0,i__carry_i_3_n_0,i__carry_i_4_n_0}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \alu_out_00_inferred__1/i__carry__0 
       (.CI(\alu_out_00_inferred__1/i__carry_n_0 ),
        .CO({\alu_out_00_inferred__1/i__carry__0_n_0 ,\alu_out_00_inferred__1/i__carry__0_n_1 ,\alu_out_00_inferred__1/i__carry__0_n_2 ,\alu_out_00_inferred__1/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_alu_out_00_inferred__1/i__carry__0_O_UNCONNECTED [3:0]),
        .S({i__carry__0_i_1_n_0,i__carry__0_i_2_n_0,i__carry__0_i_3_n_0,i__carry__0_i_4_n_0}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \alu_out_00_inferred__1/i__carry__1 
       (.CI(\alu_out_00_inferred__1/i__carry__0_n_0 ),
        .CO({\NLW_alu_out_00_inferred__1/i__carry__1_CO_UNCONNECTED [3],alu_eq,\alu_out_00_inferred__1/i__carry__1_n_2 ,\alu_out_00_inferred__1/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_alu_out_00_inferred__1/i__carry__1_O_UNCONNECTED [3:0]),
        .S({1'b0,i__carry__1_i_1_n_0,i__carry__1_i_2_n_0,i__carry__1_i_3_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 alu_out_01_carry
       (.CI(1'b0),
        .CO({alu_out_01_carry_n_0,alu_out_01_carry_n_1,alu_out_01_carry_n_2,alu_out_01_carry_n_3}),
        .CYINIT(1'b0),
        .DI({alu_out_01_carry_i_1_n_0,alu_out_01_carry_i_2_n_0,alu_out_01_carry_i_3_n_0,alu_out_01_carry_i_4_n_0}),
        .O(NLW_alu_out_01_carry_O_UNCONNECTED[3:0]),
        .S({alu_out_01_carry_i_5_n_0,alu_out_01_carry_i_6_n_0,alu_out_01_carry_i_7_n_0,alu_out_01_carry_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 alu_out_01_carry__0
       (.CI(alu_out_01_carry_n_0),
        .CO({alu_out_01_carry__0_n_0,alu_out_01_carry__0_n_1,alu_out_01_carry__0_n_2,alu_out_01_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({alu_out_01_carry__0_i_1_n_0,alu_out_01_carry__0_i_2_n_0,alu_out_01_carry__0_i_3_n_0,alu_out_01_carry__0_i_4_n_0}),
        .O(NLW_alu_out_01_carry__0_O_UNCONNECTED[3:0]),
        .S({alu_out_01_carry__0_i_5_n_0,alu_out_01_carry__0_i_6_n_0,alu_out_01_carry__0_i_7_n_0,alu_out_01_carry__0_i_8_n_0}));
  LUT4 #(
    .INIT(16'h40F4)) 
    alu_out_01_carry__0_i_1
       (.I0(\reg_op1_reg_n_0_[14] ),
        .I1(\reg_op2_reg_n_0_[14] ),
        .I2(\reg_op2_reg_n_0_[15] ),
        .I3(\reg_op1_reg_n_0_[15] ),
        .O(alu_out_01_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h40F4)) 
    alu_out_01_carry__0_i_2
       (.I0(\reg_op1_reg_n_0_[12] ),
        .I1(\reg_op2_reg_n_0_[12] ),
        .I2(\reg_op2_reg_n_0_[13] ),
        .I3(\reg_op1_reg_n_0_[13] ),
        .O(alu_out_01_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h40F4)) 
    alu_out_01_carry__0_i_3
       (.I0(\reg_op1_reg_n_0_[10] ),
        .I1(\reg_op2_reg_n_0_[10] ),
        .I2(\reg_op2_reg_n_0_[11] ),
        .I3(\reg_op1_reg_n_0_[11] ),
        .O(alu_out_01_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h40F4)) 
    alu_out_01_carry__0_i_4
       (.I0(\reg_op1_reg_n_0_[8] ),
        .I1(\reg_op2_reg_n_0_[8] ),
        .I2(\reg_op2_reg_n_0_[9] ),
        .I3(\reg_op1_reg_n_0_[9] ),
        .O(alu_out_01_carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    alu_out_01_carry__0_i_5
       (.I0(\reg_op1_reg_n_0_[15] ),
        .I1(\reg_op2_reg_n_0_[15] ),
        .I2(\reg_op1_reg_n_0_[14] ),
        .I3(\reg_op2_reg_n_0_[14] ),
        .O(alu_out_01_carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    alu_out_01_carry__0_i_6
       (.I0(\reg_op1_reg_n_0_[12] ),
        .I1(\reg_op2_reg_n_0_[12] ),
        .I2(\reg_op1_reg_n_0_[13] ),
        .I3(\reg_op2_reg_n_0_[13] ),
        .O(alu_out_01_carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    alu_out_01_carry__0_i_7
       (.I0(\reg_op1_reg_n_0_[11] ),
        .I1(\reg_op2_reg_n_0_[11] ),
        .I2(\reg_op1_reg_n_0_[10] ),
        .I3(\reg_op2_reg_n_0_[10] ),
        .O(alu_out_01_carry__0_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    alu_out_01_carry__0_i_8
       (.I0(\reg_op1_reg_n_0_[9] ),
        .I1(\reg_op2_reg_n_0_[9] ),
        .I2(\reg_op1_reg_n_0_[8] ),
        .I3(\reg_op2_reg_n_0_[8] ),
        .O(alu_out_01_carry__0_i_8_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 alu_out_01_carry__1
       (.CI(alu_out_01_carry__0_n_0),
        .CO({alu_out_01_carry__1_n_0,alu_out_01_carry__1_n_1,alu_out_01_carry__1_n_2,alu_out_01_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({alu_out_01_carry__1_i_1_n_0,alu_out_01_carry__1_i_2_n_0,alu_out_01_carry__1_i_3_n_0,alu_out_01_carry__1_i_4_n_0}),
        .O(NLW_alu_out_01_carry__1_O_UNCONNECTED[3:0]),
        .S({alu_out_01_carry__1_i_5_n_0,alu_out_01_carry__1_i_6_n_0,alu_out_01_carry__1_i_7_n_0,alu_out_01_carry__1_i_8_n_0}));
  LUT4 #(
    .INIT(16'h40F4)) 
    alu_out_01_carry__1_i_1
       (.I0(\reg_op1_reg_n_0_[22] ),
        .I1(\reg_op2_reg_n_0_[22] ),
        .I2(\reg_op2_reg_n_0_[23] ),
        .I3(\reg_op1_reg_n_0_[23] ),
        .O(alu_out_01_carry__1_i_1_n_0));
  LUT4 #(
    .INIT(16'h40F4)) 
    alu_out_01_carry__1_i_2
       (.I0(\reg_op1_reg_n_0_[20] ),
        .I1(\reg_op2_reg_n_0_[20] ),
        .I2(\reg_op2_reg_n_0_[21] ),
        .I3(\reg_op1_reg_n_0_[21] ),
        .O(alu_out_01_carry__1_i_2_n_0));
  LUT4 #(
    .INIT(16'h40F4)) 
    alu_out_01_carry__1_i_3
       (.I0(\reg_op1_reg_n_0_[18] ),
        .I1(\reg_op2_reg_n_0_[18] ),
        .I2(\reg_op2_reg_n_0_[19] ),
        .I3(\reg_op1_reg_n_0_[19] ),
        .O(alu_out_01_carry__1_i_3_n_0));
  LUT4 #(
    .INIT(16'h40F4)) 
    alu_out_01_carry__1_i_4
       (.I0(\reg_op1_reg_n_0_[16] ),
        .I1(\reg_op2_reg_n_0_[16] ),
        .I2(\reg_op2_reg_n_0_[17] ),
        .I3(\reg_op1_reg_n_0_[17] ),
        .O(alu_out_01_carry__1_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    alu_out_01_carry__1_i_5
       (.I0(\reg_op1_reg_n_0_[23] ),
        .I1(\reg_op2_reg_n_0_[23] ),
        .I2(\reg_op1_reg_n_0_[22] ),
        .I3(\reg_op2_reg_n_0_[22] ),
        .O(alu_out_01_carry__1_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    alu_out_01_carry__1_i_6
       (.I0(\reg_op1_reg_n_0_[21] ),
        .I1(\reg_op2_reg_n_0_[21] ),
        .I2(\reg_op1_reg_n_0_[20] ),
        .I3(\reg_op2_reg_n_0_[20] ),
        .O(alu_out_01_carry__1_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    alu_out_01_carry__1_i_7
       (.I0(\reg_op1_reg_n_0_[18] ),
        .I1(\reg_op2_reg_n_0_[18] ),
        .I2(\reg_op1_reg_n_0_[19] ),
        .I3(\reg_op2_reg_n_0_[19] ),
        .O(alu_out_01_carry__1_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    alu_out_01_carry__1_i_8
       (.I0(\reg_op1_reg_n_0_[17] ),
        .I1(\reg_op2_reg_n_0_[17] ),
        .I2(\reg_op1_reg_n_0_[16] ),
        .I3(\reg_op2_reg_n_0_[16] ),
        .O(alu_out_01_carry__1_i_8_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 alu_out_01_carry__2
       (.CI(alu_out_01_carry__1_n_0),
        .CO({alu_ltu,alu_out_01_carry__2_n_1,alu_out_01_carry__2_n_2,alu_out_01_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({alu_out_01_carry__2_i_1_n_0,alu_out_01_carry__2_i_2_n_0,alu_out_01_carry__2_i_3_n_0,alu_out_01_carry__2_i_4_n_0}),
        .O(NLW_alu_out_01_carry__2_O_UNCONNECTED[3:0]),
        .S({alu_out_01_carry__2_i_5_n_0,alu_out_01_carry__2_i_6_n_0,alu_out_01_carry__2_i_7_n_0,alu_out_01_carry__2_i_8_n_0}));
  LUT4 #(
    .INIT(16'h2F02)) 
    alu_out_01_carry__2_i_1
       (.I0(\reg_op2_reg_n_0_[30] ),
        .I1(\reg_op1_reg_n_0_[30] ),
        .I2(\reg_op1_reg_n_0_[31] ),
        .I3(\reg_op2_reg_n_0_[31] ),
        .O(alu_out_01_carry__2_i_1_n_0));
  LUT4 #(
    .INIT(16'h40F4)) 
    alu_out_01_carry__2_i_2
       (.I0(\reg_op1_reg_n_0_[28] ),
        .I1(\reg_op2_reg_n_0_[28] ),
        .I2(\reg_op2_reg_n_0_[29] ),
        .I3(\reg_op1_reg_n_0_[29] ),
        .O(alu_out_01_carry__2_i_2_n_0));
  LUT4 #(
    .INIT(16'h40F4)) 
    alu_out_01_carry__2_i_3
       (.I0(\reg_op1_reg_n_0_[26] ),
        .I1(\reg_op2_reg_n_0_[26] ),
        .I2(\reg_op2_reg_n_0_[27] ),
        .I3(\reg_op1_reg_n_0_[27] ),
        .O(alu_out_01_carry__2_i_3_n_0));
  LUT4 #(
    .INIT(16'h40F4)) 
    alu_out_01_carry__2_i_4
       (.I0(\reg_op1_reg_n_0_[24] ),
        .I1(\reg_op2_reg_n_0_[24] ),
        .I2(\reg_op2_reg_n_0_[25] ),
        .I3(\reg_op1_reg_n_0_[25] ),
        .O(alu_out_01_carry__2_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    alu_out_01_carry__2_i_5
       (.I0(\reg_op2_reg_n_0_[31] ),
        .I1(\reg_op1_reg_n_0_[31] ),
        .I2(\reg_op2_reg_n_0_[30] ),
        .I3(\reg_op1_reg_n_0_[30] ),
        .O(alu_out_01_carry__2_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    alu_out_01_carry__2_i_6
       (.I0(\reg_op1_reg_n_0_[28] ),
        .I1(\reg_op2_reg_n_0_[28] ),
        .I2(\reg_op1_reg_n_0_[29] ),
        .I3(\reg_op2_reg_n_0_[29] ),
        .O(alu_out_01_carry__2_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    alu_out_01_carry__2_i_7
       (.I0(\reg_op1_reg_n_0_[27] ),
        .I1(\reg_op2_reg_n_0_[27] ),
        .I2(\reg_op1_reg_n_0_[26] ),
        .I3(\reg_op2_reg_n_0_[26] ),
        .O(alu_out_01_carry__2_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    alu_out_01_carry__2_i_8
       (.I0(\reg_op1_reg_n_0_[24] ),
        .I1(\reg_op2_reg_n_0_[24] ),
        .I2(\reg_op1_reg_n_0_[25] ),
        .I3(\reg_op2_reg_n_0_[25] ),
        .O(alu_out_01_carry__2_i_8_n_0));
  LUT4 #(
    .INIT(16'h40F4)) 
    alu_out_01_carry_i_1
       (.I0(\reg_op1_reg_n_0_[6] ),
        .I1(Q[6]),
        .I2(Q[7]),
        .I3(\reg_op1_reg_n_0_[7] ),
        .O(alu_out_01_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h40F4)) 
    alu_out_01_carry_i_2
       (.I0(\reg_op1_reg_n_0_[4] ),
        .I1(Q[4]),
        .I2(Q[5]),
        .I3(\reg_op1_reg_n_0_[5] ),
        .O(alu_out_01_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h40F4)) 
    alu_out_01_carry_i_3
       (.I0(\reg_op1_reg_n_0_[2] ),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(\reg_op1_reg_n_0_[3] ),
        .O(alu_out_01_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h40F4)) 
    alu_out_01_carry_i_4
       (.I0(\reg_op1_reg_n_0_[0] ),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(\reg_op1_reg_n_0_[1] ),
        .O(alu_out_01_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    alu_out_01_carry_i_5
       (.I0(\reg_op1_reg_n_0_[6] ),
        .I1(Q[6]),
        .I2(\reg_op1_reg_n_0_[7] ),
        .I3(Q[7]),
        .O(alu_out_01_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    alu_out_01_carry_i_6
       (.I0(\reg_op1_reg_n_0_[5] ),
        .I1(Q[5]),
        .I2(\reg_op1_reg_n_0_[4] ),
        .I3(Q[4]),
        .O(alu_out_01_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    alu_out_01_carry_i_7
       (.I0(\reg_op1_reg_n_0_[3] ),
        .I1(Q[3]),
        .I2(\reg_op1_reg_n_0_[2] ),
        .I3(Q[2]),
        .O(alu_out_01_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    alu_out_01_carry_i_8
       (.I0(Q[1]),
        .I1(\reg_op1_reg_n_0_[1] ),
        .I2(Q[0]),
        .I3(\reg_op1_reg_n_0_[0] ),
        .O(alu_out_01_carry_i_8_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \alu_out_01_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\alu_out_01_inferred__0/i__carry_n_0 ,\alu_out_01_inferred__0/i__carry_n_1 ,\alu_out_01_inferred__0/i__carry_n_2 ,\alu_out_01_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry_i_1__0_n_0,i__carry_i_2__0_n_0,i__carry_i_3__0_n_0,i__carry_i_4__0_n_0}),
        .O(\NLW_alu_out_01_inferred__0/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_5_n_0,i__carry_i_6_n_0,i__carry_i_7_n_0,i__carry_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \alu_out_01_inferred__0/i__carry__0 
       (.CI(\alu_out_01_inferred__0/i__carry_n_0 ),
        .CO({\alu_out_01_inferred__0/i__carry__0_n_0 ,\alu_out_01_inferred__0/i__carry__0_n_1 ,\alu_out_01_inferred__0/i__carry__0_n_2 ,\alu_out_01_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry__0_i_1__0_n_0,i__carry__0_i_2__0_n_0,i__carry__0_i_3__0_n_0,i__carry__0_i_4__0_n_0}),
        .O(\NLW_alu_out_01_inferred__0/i__carry__0_O_UNCONNECTED [3:0]),
        .S({i__carry__0_i_5_n_0,i__carry__0_i_6_n_0,i__carry__0_i_7_n_0,i__carry__0_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \alu_out_01_inferred__0/i__carry__1 
       (.CI(\alu_out_01_inferred__0/i__carry__0_n_0 ),
        .CO({\alu_out_01_inferred__0/i__carry__1_n_0 ,\alu_out_01_inferred__0/i__carry__1_n_1 ,\alu_out_01_inferred__0/i__carry__1_n_2 ,\alu_out_01_inferred__0/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry__1_i_1__0_n_0,i__carry__1_i_2__0_n_0,i__carry__1_i_3__0_n_0,i__carry__1_i_4_n_0}),
        .O(\NLW_alu_out_01_inferred__0/i__carry__1_O_UNCONNECTED [3:0]),
        .S({i__carry__1_i_5_n_0,i__carry__1_i_6_n_0,i__carry__1_i_7_n_0,i__carry__1_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \alu_out_01_inferred__0/i__carry__2 
       (.CI(\alu_out_01_inferred__0/i__carry__1_n_0 ),
        .CO({alu_lts,\alu_out_01_inferred__0/i__carry__2_n_1 ,\alu_out_01_inferred__0/i__carry__2_n_2 ,\alu_out_01_inferred__0/i__carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry__2_i_1_n_0,i__carry__2_i_2_n_0,i__carry__2_i_3_n_0,i__carry__2_i_4_n_0}),
        .O(\NLW_alu_out_01_inferred__0/i__carry__2_O_UNCONNECTED [3:0]),
        .S({i__carry__2_i_5_n_0,i__carry__2_i_6_n_0,i__carry__2_i_7_n_0,i__carry__2_i_8_n_0}));
  LUT6 #(
    .INIT(64'hF4F4F4F4F4FFFFF4)) 
    \alu_out_q[0]_i_1 
       (.I0(decoder_trigger_i_2_n_0),
        .I1(is_compare),
        .I2(\alu_out_q[0]_i_2_n_0 ),
        .I3(Q[0]),
        .I4(\reg_op1_reg_n_0_[0] ),
        .I5(\alu_out_q[0]_i_3_n_0 ),
        .O(alu_out[0]));
  LUT6 #(
    .INIT(64'hD5C0C0C0FFFFFFC0)) 
    \alu_out_q[0]_i_2 
       (.I0(\alu_out_q[31]_i_3_n_0 ),
        .I1(is_lui_auipc_jal_jalr_addi_add_sub),
        .I2(\alu_out0_inferred__3/i___29_carry_n_7 ),
        .I3(Q[0]),
        .I4(\reg_op1_reg_n_0_[0] ),
        .I5(\alu_out_q[30]_i_3_n_0 ),
        .O(\alu_out_q[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \alu_out_q[0]_i_3 
       (.I0(instr_xori),
        .I1(instr_xor),
        .O(\alu_out_q[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF0FEFEF0FFFFFFF0)) 
    \alu_out_q[10]_i_1 
       (.I0(instr_xori),
        .I1(instr_xor),
        .I2(\alu_out_q[10]_i_2_n_0 ),
        .I3(\reg_op1_reg_n_0_[10] ),
        .I4(\reg_op2_reg_n_0_[10] ),
        .I5(\alu_out_q[30]_i_3_n_0 ),
        .O(alu_out[10]));
  LUT6 #(
    .INIT(64'hFFFFE000E000E000)) 
    \alu_out_q[10]_i_2 
       (.I0(instr_andi),
        .I1(instr_and),
        .I2(\reg_op2_reg_n_0_[10] ),
        .I3(\reg_op1_reg_n_0_[10] ),
        .I4(\alu_out0_inferred__3/i___29_carry__1_n_5 ),
        .I5(is_lui_auipc_jal_jalr_addi_add_sub),
        .O(\alu_out_q[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF0FEFEF0FFFFFFF0)) 
    \alu_out_q[11]_i_1 
       (.I0(instr_xori),
        .I1(instr_xor),
        .I2(\alu_out_q[11]_i_2_n_0 ),
        .I3(\reg_op1_reg_n_0_[11] ),
        .I4(\reg_op2_reg_n_0_[11] ),
        .I5(\alu_out_q[30]_i_3_n_0 ),
        .O(alu_out[11]));
  LUT6 #(
    .INIT(64'hFFFFE000E000E000)) 
    \alu_out_q[11]_i_2 
       (.I0(instr_andi),
        .I1(instr_and),
        .I2(\reg_op2_reg_n_0_[11] ),
        .I3(\reg_op1_reg_n_0_[11] ),
        .I4(\alu_out0_inferred__3/i___29_carry__1_n_4 ),
        .I5(is_lui_auipc_jal_jalr_addi_add_sub),
        .O(\alu_out_q[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF0FEFEF0FFFFFFF0)) 
    \alu_out_q[12]_i_1 
       (.I0(instr_xori),
        .I1(instr_xor),
        .I2(\alu_out_q[12]_i_2_n_0 ),
        .I3(\reg_op1_reg_n_0_[12] ),
        .I4(\reg_op2_reg_n_0_[12] ),
        .I5(\alu_out_q[30]_i_3_n_0 ),
        .O(alu_out[12]));
  LUT6 #(
    .INIT(64'hFFFFE000E000E000)) 
    \alu_out_q[12]_i_2 
       (.I0(instr_andi),
        .I1(instr_and),
        .I2(\reg_op2_reg_n_0_[12] ),
        .I3(\reg_op1_reg_n_0_[12] ),
        .I4(\alu_out0_inferred__3/i___29_carry__2_n_7 ),
        .I5(is_lui_auipc_jal_jalr_addi_add_sub),
        .O(\alu_out_q[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF0FEFEF0FFFFFFF0)) 
    \alu_out_q[13]_i_1 
       (.I0(instr_xori),
        .I1(instr_xor),
        .I2(\alu_out_q[13]_i_2_n_0 ),
        .I3(\reg_op1_reg_n_0_[13] ),
        .I4(\reg_op2_reg_n_0_[13] ),
        .I5(\alu_out_q[30]_i_3_n_0 ),
        .O(alu_out[13]));
  LUT6 #(
    .INIT(64'hFFFFE000E000E000)) 
    \alu_out_q[13]_i_2 
       (.I0(instr_andi),
        .I1(instr_and),
        .I2(\reg_op2_reg_n_0_[13] ),
        .I3(\reg_op1_reg_n_0_[13] ),
        .I4(\alu_out0_inferred__3/i___29_carry__2_n_6 ),
        .I5(is_lui_auipc_jal_jalr_addi_add_sub),
        .O(\alu_out_q[13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF0FEFEF0FFFFFFF0)) 
    \alu_out_q[14]_i_1 
       (.I0(instr_xori),
        .I1(instr_xor),
        .I2(\alu_out_q[14]_i_2_n_0 ),
        .I3(\reg_op1_reg_n_0_[14] ),
        .I4(\reg_op2_reg_n_0_[14] ),
        .I5(\alu_out_q[30]_i_3_n_0 ),
        .O(alu_out[14]));
  LUT6 #(
    .INIT(64'hFFFFE000E000E000)) 
    \alu_out_q[14]_i_2 
       (.I0(instr_andi),
        .I1(instr_and),
        .I2(\reg_op2_reg_n_0_[14] ),
        .I3(\reg_op1_reg_n_0_[14] ),
        .I4(\alu_out0_inferred__3/i___29_carry__2_n_5 ),
        .I5(is_lui_auipc_jal_jalr_addi_add_sub),
        .O(\alu_out_q[14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF0FEFEF0FFFFFFF0)) 
    \alu_out_q[15]_i_1 
       (.I0(instr_xori),
        .I1(instr_xor),
        .I2(\alu_out_q[15]_i_2_n_0 ),
        .I3(\reg_op1_reg_n_0_[15] ),
        .I4(\reg_op2_reg_n_0_[15] ),
        .I5(\alu_out_q[30]_i_3_n_0 ),
        .O(alu_out[15]));
  LUT6 #(
    .INIT(64'hFFFFE000E000E000)) 
    \alu_out_q[15]_i_2 
       (.I0(instr_andi),
        .I1(instr_and),
        .I2(\reg_op2_reg_n_0_[15] ),
        .I3(\reg_op1_reg_n_0_[15] ),
        .I4(\alu_out0_inferred__3/i___29_carry__2_n_4 ),
        .I5(is_lui_auipc_jal_jalr_addi_add_sub),
        .O(\alu_out_q[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF0FEFEF0FFFFFFF0)) 
    \alu_out_q[16]_i_1 
       (.I0(instr_xori),
        .I1(instr_xor),
        .I2(\alu_out_q[16]_i_2_n_0 ),
        .I3(\reg_op1_reg_n_0_[16] ),
        .I4(\reg_op2_reg_n_0_[16] ),
        .I5(\alu_out_q[30]_i_3_n_0 ),
        .O(alu_out[16]));
  LUT6 #(
    .INIT(64'hFFFFE000E000E000)) 
    \alu_out_q[16]_i_2 
       (.I0(instr_andi),
        .I1(instr_and),
        .I2(\reg_op2_reg_n_0_[16] ),
        .I3(\reg_op1_reg_n_0_[16] ),
        .I4(\alu_out0_inferred__3/i___29_carry__3_n_7 ),
        .I5(is_lui_auipc_jal_jalr_addi_add_sub),
        .O(\alu_out_q[16]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF0FEFEF0FFFFFFF0)) 
    \alu_out_q[17]_i_1 
       (.I0(instr_xori),
        .I1(instr_xor),
        .I2(\alu_out_q[17]_i_2_n_0 ),
        .I3(\reg_op1_reg_n_0_[17] ),
        .I4(\reg_op2_reg_n_0_[17] ),
        .I5(\alu_out_q[30]_i_3_n_0 ),
        .O(alu_out[17]));
  LUT6 #(
    .INIT(64'hFFFFE000E000E000)) 
    \alu_out_q[17]_i_2 
       (.I0(instr_andi),
        .I1(instr_and),
        .I2(\reg_op2_reg_n_0_[17] ),
        .I3(\reg_op1_reg_n_0_[17] ),
        .I4(\alu_out0_inferred__3/i___29_carry__3_n_6 ),
        .I5(is_lui_auipc_jal_jalr_addi_add_sub),
        .O(\alu_out_q[17]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF0FEFEF0FFFFFFF0)) 
    \alu_out_q[18]_i_1 
       (.I0(instr_xori),
        .I1(instr_xor),
        .I2(\alu_out_q[18]_i_2_n_0 ),
        .I3(\reg_op1_reg_n_0_[18] ),
        .I4(\reg_op2_reg_n_0_[18] ),
        .I5(\alu_out_q[30]_i_3_n_0 ),
        .O(alu_out[18]));
  LUT6 #(
    .INIT(64'hFFFFE000E000E000)) 
    \alu_out_q[18]_i_2 
       (.I0(instr_andi),
        .I1(instr_and),
        .I2(\reg_op2_reg_n_0_[18] ),
        .I3(\reg_op1_reg_n_0_[18] ),
        .I4(\alu_out0_inferred__3/i___29_carry__3_n_5 ),
        .I5(is_lui_auipc_jal_jalr_addi_add_sub),
        .O(\alu_out_q[18]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF0FEFEF0FFFFFFF0)) 
    \alu_out_q[19]_i_1 
       (.I0(instr_xori),
        .I1(instr_xor),
        .I2(\alu_out_q[19]_i_2_n_0 ),
        .I3(\reg_op1_reg_n_0_[19] ),
        .I4(\reg_op2_reg_n_0_[19] ),
        .I5(\alu_out_q[30]_i_3_n_0 ),
        .O(alu_out[19]));
  LUT6 #(
    .INIT(64'hFFFFE000E000E000)) 
    \alu_out_q[19]_i_2 
       (.I0(instr_andi),
        .I1(instr_and),
        .I2(\reg_op2_reg_n_0_[19] ),
        .I3(\reg_op1_reg_n_0_[19] ),
        .I4(\alu_out0_inferred__3/i___29_carry__3_n_4 ),
        .I5(is_lui_auipc_jal_jalr_addi_add_sub),
        .O(\alu_out_q[19]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF0FEFEF0FFFFFFF0)) 
    \alu_out_q[1]_i_1 
       (.I0(instr_xori),
        .I1(instr_xor),
        .I2(\alu_out_q[1]_i_2_n_0 ),
        .I3(Q[1]),
        .I4(\reg_op1_reg_n_0_[1] ),
        .I5(\alu_out_q[30]_i_3_n_0 ),
        .O(alu_out[1]));
  LUT6 #(
    .INIT(64'hFFFFE000E000E000)) 
    \alu_out_q[1]_i_2 
       (.I0(instr_andi),
        .I1(instr_and),
        .I2(\reg_op1_reg_n_0_[1] ),
        .I3(Q[1]),
        .I4(\alu_out0_inferred__3/i___29_carry_n_6 ),
        .I5(is_lui_auipc_jal_jalr_addi_add_sub),
        .O(\alu_out_q[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF0FEFEF0FFFFFFF0)) 
    \alu_out_q[20]_i_1 
       (.I0(instr_xori),
        .I1(instr_xor),
        .I2(\alu_out_q[20]_i_2_n_0 ),
        .I3(\reg_op1_reg_n_0_[20] ),
        .I4(\reg_op2_reg_n_0_[20] ),
        .I5(\alu_out_q[30]_i_3_n_0 ),
        .O(alu_out[20]));
  LUT6 #(
    .INIT(64'hFFFFE000E000E000)) 
    \alu_out_q[20]_i_2 
       (.I0(instr_andi),
        .I1(instr_and),
        .I2(\reg_op2_reg_n_0_[20] ),
        .I3(\reg_op1_reg_n_0_[20] ),
        .I4(\alu_out0_inferred__3/i___29_carry__4_n_7 ),
        .I5(is_lui_auipc_jal_jalr_addi_add_sub),
        .O(\alu_out_q[20]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF0FEFEF0FFFFFFF0)) 
    \alu_out_q[21]_i_1 
       (.I0(instr_xori),
        .I1(instr_xor),
        .I2(\alu_out_q[21]_i_2_n_0 ),
        .I3(\reg_op1_reg_n_0_[21] ),
        .I4(\reg_op2_reg_n_0_[21] ),
        .I5(\alu_out_q[30]_i_3_n_0 ),
        .O(alu_out[21]));
  LUT6 #(
    .INIT(64'hFFFFE000E000E000)) 
    \alu_out_q[21]_i_2 
       (.I0(instr_andi),
        .I1(instr_and),
        .I2(\reg_op2_reg_n_0_[21] ),
        .I3(\reg_op1_reg_n_0_[21] ),
        .I4(\alu_out0_inferred__3/i___29_carry__4_n_6 ),
        .I5(is_lui_auipc_jal_jalr_addi_add_sub),
        .O(\alu_out_q[21]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF0FEFEF0FFFFFFF0)) 
    \alu_out_q[22]_i_1 
       (.I0(instr_xori),
        .I1(instr_xor),
        .I2(\alu_out_q[22]_i_2_n_0 ),
        .I3(\reg_op1_reg_n_0_[22] ),
        .I4(\reg_op2_reg_n_0_[22] ),
        .I5(\alu_out_q[30]_i_3_n_0 ),
        .O(alu_out[22]));
  LUT6 #(
    .INIT(64'hFFFFE000E000E000)) 
    \alu_out_q[22]_i_2 
       (.I0(instr_andi),
        .I1(instr_and),
        .I2(\reg_op2_reg_n_0_[22] ),
        .I3(\reg_op1_reg_n_0_[22] ),
        .I4(\alu_out0_inferred__3/i___29_carry__4_n_5 ),
        .I5(is_lui_auipc_jal_jalr_addi_add_sub),
        .O(\alu_out_q[22]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF0FEFEF0FFFFFFF0)) 
    \alu_out_q[23]_i_1 
       (.I0(instr_xori),
        .I1(instr_xor),
        .I2(\alu_out_q[23]_i_2_n_0 ),
        .I3(\reg_op1_reg_n_0_[23] ),
        .I4(\reg_op2_reg_n_0_[23] ),
        .I5(\alu_out_q[30]_i_3_n_0 ),
        .O(alu_out[23]));
  LUT6 #(
    .INIT(64'hFFFFE000E000E000)) 
    \alu_out_q[23]_i_2 
       (.I0(instr_andi),
        .I1(instr_and),
        .I2(\reg_op2_reg_n_0_[23] ),
        .I3(\reg_op1_reg_n_0_[23] ),
        .I4(\alu_out0_inferred__3/i___29_carry__4_n_4 ),
        .I5(is_lui_auipc_jal_jalr_addi_add_sub),
        .O(\alu_out_q[23]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF0FEFEF0FFFFFFF0)) 
    \alu_out_q[24]_i_1 
       (.I0(instr_xori),
        .I1(instr_xor),
        .I2(\alu_out_q[24]_i_2_n_0 ),
        .I3(\reg_op1_reg_n_0_[24] ),
        .I4(\reg_op2_reg_n_0_[24] ),
        .I5(\alu_out_q[30]_i_3_n_0 ),
        .O(alu_out[24]));
  LUT6 #(
    .INIT(64'hFFFFE000E000E000)) 
    \alu_out_q[24]_i_2 
       (.I0(instr_andi),
        .I1(instr_and),
        .I2(\reg_op2_reg_n_0_[24] ),
        .I3(\reg_op1_reg_n_0_[24] ),
        .I4(\alu_out0_inferred__3/i___29_carry__5_n_7 ),
        .I5(is_lui_auipc_jal_jalr_addi_add_sub),
        .O(\alu_out_q[24]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF0FEFEF0FFFFFFF0)) 
    \alu_out_q[25]_i_1 
       (.I0(instr_xori),
        .I1(instr_xor),
        .I2(\alu_out_q[25]_i_2_n_0 ),
        .I3(\reg_op1_reg_n_0_[25] ),
        .I4(\reg_op2_reg_n_0_[25] ),
        .I5(\alu_out_q[30]_i_3_n_0 ),
        .O(alu_out[25]));
  LUT6 #(
    .INIT(64'hFFFFE000E000E000)) 
    \alu_out_q[25]_i_2 
       (.I0(instr_andi),
        .I1(instr_and),
        .I2(\reg_op2_reg_n_0_[25] ),
        .I3(\reg_op1_reg_n_0_[25] ),
        .I4(\alu_out0_inferred__3/i___29_carry__5_n_6 ),
        .I5(is_lui_auipc_jal_jalr_addi_add_sub),
        .O(\alu_out_q[25]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF0FEFEF0FFFFFFF0)) 
    \alu_out_q[26]_i_1 
       (.I0(instr_xori),
        .I1(instr_xor),
        .I2(\alu_out_q[26]_i_2_n_0 ),
        .I3(\reg_op1_reg_n_0_[26] ),
        .I4(\reg_op2_reg_n_0_[26] ),
        .I5(\alu_out_q[30]_i_3_n_0 ),
        .O(alu_out[26]));
  LUT6 #(
    .INIT(64'hFFFFE000E000E000)) 
    \alu_out_q[26]_i_2 
       (.I0(instr_andi),
        .I1(instr_and),
        .I2(\reg_op2_reg_n_0_[26] ),
        .I3(\reg_op1_reg_n_0_[26] ),
        .I4(\alu_out0_inferred__3/i___29_carry__5_n_5 ),
        .I5(is_lui_auipc_jal_jalr_addi_add_sub),
        .O(\alu_out_q[26]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF0FEFEF0FFFFFFF0)) 
    \alu_out_q[27]_i_1 
       (.I0(instr_xori),
        .I1(instr_xor),
        .I2(\alu_out_q[27]_i_2_n_0 ),
        .I3(\reg_op1_reg_n_0_[27] ),
        .I4(\reg_op2_reg_n_0_[27] ),
        .I5(\alu_out_q[30]_i_3_n_0 ),
        .O(alu_out[27]));
  LUT6 #(
    .INIT(64'hFFFFE000E000E000)) 
    \alu_out_q[27]_i_2 
       (.I0(instr_andi),
        .I1(instr_and),
        .I2(\reg_op2_reg_n_0_[27] ),
        .I3(\reg_op1_reg_n_0_[27] ),
        .I4(\alu_out0_inferred__3/i___29_carry__5_n_4 ),
        .I5(is_lui_auipc_jal_jalr_addi_add_sub),
        .O(\alu_out_q[27]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF0FEFEF0FFFFFFF0)) 
    \alu_out_q[28]_i_1 
       (.I0(instr_xori),
        .I1(instr_xor),
        .I2(\alu_out_q[28]_i_2_n_0 ),
        .I3(\reg_op1_reg_n_0_[28] ),
        .I4(\reg_op2_reg_n_0_[28] ),
        .I5(\alu_out_q[30]_i_3_n_0 ),
        .O(alu_out[28]));
  LUT6 #(
    .INIT(64'hFFFFE000E000E000)) 
    \alu_out_q[28]_i_2 
       (.I0(instr_andi),
        .I1(instr_and),
        .I2(\reg_op2_reg_n_0_[28] ),
        .I3(\reg_op1_reg_n_0_[28] ),
        .I4(\alu_out0_inferred__3/i___29_carry__6_n_7 ),
        .I5(is_lui_auipc_jal_jalr_addi_add_sub),
        .O(\alu_out_q[28]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF0FEFEF0FFFFFFF0)) 
    \alu_out_q[29]_i_1 
       (.I0(instr_xori),
        .I1(instr_xor),
        .I2(\alu_out_q[29]_i_2_n_0 ),
        .I3(\reg_op1_reg_n_0_[29] ),
        .I4(\reg_op2_reg_n_0_[29] ),
        .I5(\alu_out_q[30]_i_3_n_0 ),
        .O(alu_out[29]));
  LUT6 #(
    .INIT(64'hFFFFE000E000E000)) 
    \alu_out_q[29]_i_2 
       (.I0(instr_andi),
        .I1(instr_and),
        .I2(\reg_op2_reg_n_0_[29] ),
        .I3(\reg_op1_reg_n_0_[29] ),
        .I4(\alu_out0_inferred__3/i___29_carry__6_n_6 ),
        .I5(is_lui_auipc_jal_jalr_addi_add_sub),
        .O(\alu_out_q[29]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF0FEFEF0FFFFFFF0)) 
    \alu_out_q[2]_i_1 
       (.I0(instr_xori),
        .I1(instr_xor),
        .I2(\alu_out_q[2]_i_2_n_0 ),
        .I3(\reg_op1_reg_n_0_[2] ),
        .I4(Q[2]),
        .I5(\alu_out_q[30]_i_3_n_0 ),
        .O(alu_out[2]));
  LUT6 #(
    .INIT(64'hFFFFE000E000E000)) 
    \alu_out_q[2]_i_2 
       (.I0(instr_andi),
        .I1(instr_and),
        .I2(Q[2]),
        .I3(\reg_op1_reg_n_0_[2] ),
        .I4(\alu_out0_inferred__3/i___29_carry_n_5 ),
        .I5(is_lui_auipc_jal_jalr_addi_add_sub),
        .O(\alu_out_q[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF0FEFEF0FFFFFFF0)) 
    \alu_out_q[30]_i_1 
       (.I0(instr_xori),
        .I1(instr_xor),
        .I2(\alu_out_q[30]_i_2_n_0 ),
        .I3(\reg_op2_reg_n_0_[30] ),
        .I4(\reg_op1_reg_n_0_[30] ),
        .I5(\alu_out_q[30]_i_3_n_0 ),
        .O(alu_out[30]));
  LUT6 #(
    .INIT(64'hFFFFE000E000E000)) 
    \alu_out_q[30]_i_2 
       (.I0(instr_andi),
        .I1(instr_and),
        .I2(\reg_op1_reg_n_0_[30] ),
        .I3(\reg_op2_reg_n_0_[30] ),
        .I4(\alu_out0_inferred__3/i___29_carry__6_n_5 ),
        .I5(is_lui_auipc_jal_jalr_addi_add_sub),
        .O(\alu_out_q[30]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \alu_out_q[30]_i_3 
       (.I0(instr_ori),
        .I1(instr_or),
        .O(\alu_out_q[30]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF0FEFEF0FFFEFEF0)) 
    \alu_out_q[31]_i_1 
       (.I0(instr_xori),
        .I1(instr_xor),
        .I2(\alu_out_q[31]_i_2_n_0 ),
        .I3(\reg_op2_reg_n_0_[31] ),
        .I4(\reg_op1_reg_n_0_[31] ),
        .I5(\alu_out_q[31]_i_3_n_0 ),
        .O(alu_out[31]));
  LUT6 #(
    .INIT(64'hFFF8FFF8FFF88888)) 
    \alu_out_q[31]_i_2 
       (.I0(\alu_out0_inferred__3/i___29_carry__6_n_4 ),
        .I1(is_lui_auipc_jal_jalr_addi_add_sub),
        .I2(instr_ori),
        .I3(instr_or),
        .I4(\reg_op1_reg_n_0_[31] ),
        .I5(\reg_op2_reg_n_0_[31] ),
        .O(\alu_out_q[31]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \alu_out_q[31]_i_3 
       (.I0(instr_andi),
        .I1(instr_and),
        .O(\alu_out_q[31]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF0FEFEF0FFFFFFF0)) 
    \alu_out_q[3]_i_1 
       (.I0(instr_xori),
        .I1(instr_xor),
        .I2(\alu_out_q[3]_i_2_n_0 ),
        .I3(\reg_op1_reg_n_0_[3] ),
        .I4(Q[3]),
        .I5(\alu_out_q[30]_i_3_n_0 ),
        .O(alu_out[3]));
  LUT6 #(
    .INIT(64'hFFFFE000E000E000)) 
    \alu_out_q[3]_i_2 
       (.I0(instr_andi),
        .I1(instr_and),
        .I2(Q[3]),
        .I3(\reg_op1_reg_n_0_[3] ),
        .I4(\alu_out0_inferred__3/i___29_carry_n_4 ),
        .I5(is_lui_auipc_jal_jalr_addi_add_sub),
        .O(\alu_out_q[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF0FEFEF0FFFFFFF0)) 
    \alu_out_q[4]_i_1 
       (.I0(instr_xori),
        .I1(instr_xor),
        .I2(\alu_out_q[4]_i_2_n_0 ),
        .I3(\reg_op1_reg_n_0_[4] ),
        .I4(Q[4]),
        .I5(\alu_out_q[30]_i_3_n_0 ),
        .O(alu_out[4]));
  LUT6 #(
    .INIT(64'hFFFFE000E000E000)) 
    \alu_out_q[4]_i_2 
       (.I0(instr_andi),
        .I1(instr_and),
        .I2(Q[4]),
        .I3(\reg_op1_reg_n_0_[4] ),
        .I4(\alu_out0_inferred__3/i___29_carry__0_n_7 ),
        .I5(is_lui_auipc_jal_jalr_addi_add_sub),
        .O(\alu_out_q[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF0FEFEF0FFFFFFF0)) 
    \alu_out_q[5]_i_1 
       (.I0(instr_xori),
        .I1(instr_xor),
        .I2(\alu_out_q[5]_i_2_n_0 ),
        .I3(\reg_op1_reg_n_0_[5] ),
        .I4(Q[5]),
        .I5(\alu_out_q[30]_i_3_n_0 ),
        .O(alu_out[5]));
  LUT6 #(
    .INIT(64'hFFFFE000E000E000)) 
    \alu_out_q[5]_i_2 
       (.I0(instr_andi),
        .I1(instr_and),
        .I2(Q[5]),
        .I3(\reg_op1_reg_n_0_[5] ),
        .I4(\alu_out0_inferred__3/i___29_carry__0_n_6 ),
        .I5(is_lui_auipc_jal_jalr_addi_add_sub),
        .O(\alu_out_q[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF0FEFEF0FFFFFFF0)) 
    \alu_out_q[6]_i_1 
       (.I0(instr_xori),
        .I1(instr_xor),
        .I2(\alu_out_q[6]_i_2_n_0 ),
        .I3(\reg_op1_reg_n_0_[6] ),
        .I4(Q[6]),
        .I5(\alu_out_q[30]_i_3_n_0 ),
        .O(alu_out[6]));
  LUT6 #(
    .INIT(64'hFFFFE000E000E000)) 
    \alu_out_q[6]_i_2 
       (.I0(instr_andi),
        .I1(instr_and),
        .I2(Q[6]),
        .I3(\reg_op1_reg_n_0_[6] ),
        .I4(\alu_out0_inferred__3/i___29_carry__0_n_5 ),
        .I5(is_lui_auipc_jal_jalr_addi_add_sub),
        .O(\alu_out_q[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF0FEFEF0FFFFFFF0)) 
    \alu_out_q[7]_i_1 
       (.I0(instr_xori),
        .I1(instr_xor),
        .I2(\alu_out_q[7]_i_2_n_0 ),
        .I3(\reg_op1_reg_n_0_[7] ),
        .I4(Q[7]),
        .I5(\alu_out_q[30]_i_3_n_0 ),
        .O(alu_out[7]));
  LUT6 #(
    .INIT(64'hFFFFE000E000E000)) 
    \alu_out_q[7]_i_2 
       (.I0(instr_andi),
        .I1(instr_and),
        .I2(Q[7]),
        .I3(\reg_op1_reg_n_0_[7] ),
        .I4(\alu_out0_inferred__3/i___29_carry__0_n_4 ),
        .I5(is_lui_auipc_jal_jalr_addi_add_sub),
        .O(\alu_out_q[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF0FEFEF0FFFFFFF0)) 
    \alu_out_q[8]_i_1 
       (.I0(instr_xori),
        .I1(instr_xor),
        .I2(\alu_out_q[8]_i_2_n_0 ),
        .I3(\reg_op1_reg_n_0_[8] ),
        .I4(\reg_op2_reg_n_0_[8] ),
        .I5(\alu_out_q[30]_i_3_n_0 ),
        .O(alu_out[8]));
  LUT6 #(
    .INIT(64'hFFFFE000E000E000)) 
    \alu_out_q[8]_i_2 
       (.I0(instr_andi),
        .I1(instr_and),
        .I2(\reg_op2_reg_n_0_[8] ),
        .I3(\reg_op1_reg_n_0_[8] ),
        .I4(\alu_out0_inferred__3/i___29_carry__1_n_7 ),
        .I5(is_lui_auipc_jal_jalr_addi_add_sub),
        .O(\alu_out_q[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF0FEFEF0FFFFFFF0)) 
    \alu_out_q[9]_i_1 
       (.I0(instr_xori),
        .I1(instr_xor),
        .I2(\alu_out_q[9]_i_2_n_0 ),
        .I3(\reg_op1_reg_n_0_[9] ),
        .I4(\reg_op2_reg_n_0_[9] ),
        .I5(\alu_out_q[30]_i_3_n_0 ),
        .O(alu_out[9]));
  LUT6 #(
    .INIT(64'hFFFFE000E000E000)) 
    \alu_out_q[9]_i_2 
       (.I0(instr_andi),
        .I1(instr_and),
        .I2(\reg_op2_reg_n_0_[9] ),
        .I3(\reg_op1_reg_n_0_[9] ),
        .I4(\alu_out0_inferred__3/i___29_carry__1_n_6 ),
        .I5(is_lui_auipc_jal_jalr_addi_add_sub),
        .O(\alu_out_q[9]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \alu_out_q_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(alu_out[0]),
        .Q(alu_out_q[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \alu_out_q_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(alu_out[10]),
        .Q(alu_out_q[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \alu_out_q_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(alu_out[11]),
        .Q(alu_out_q[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \alu_out_q_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(alu_out[12]),
        .Q(alu_out_q[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \alu_out_q_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(alu_out[13]),
        .Q(alu_out_q[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \alu_out_q_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(alu_out[14]),
        .Q(alu_out_q[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \alu_out_q_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(alu_out[15]),
        .Q(alu_out_q[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \alu_out_q_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(alu_out[16]),
        .Q(alu_out_q[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \alu_out_q_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(alu_out[17]),
        .Q(alu_out_q[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \alu_out_q_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(alu_out[18]),
        .Q(alu_out_q[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \alu_out_q_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(alu_out[19]),
        .Q(alu_out_q[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \alu_out_q_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(alu_out[1]),
        .Q(alu_out_q[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \alu_out_q_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(alu_out[20]),
        .Q(alu_out_q[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \alu_out_q_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(alu_out[21]),
        .Q(alu_out_q[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \alu_out_q_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(alu_out[22]),
        .Q(alu_out_q[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \alu_out_q_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(alu_out[23]),
        .Q(alu_out_q[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \alu_out_q_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(alu_out[24]),
        .Q(alu_out_q[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \alu_out_q_reg[25] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(alu_out[25]),
        .Q(alu_out_q[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \alu_out_q_reg[26] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(alu_out[26]),
        .Q(alu_out_q[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \alu_out_q_reg[27] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(alu_out[27]),
        .Q(alu_out_q[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \alu_out_q_reg[28] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(alu_out[28]),
        .Q(alu_out_q[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \alu_out_q_reg[29] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(alu_out[29]),
        .Q(alu_out_q[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \alu_out_q_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(alu_out[2]),
        .Q(alu_out_q[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \alu_out_q_reg[30] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(alu_out[30]),
        .Q(alu_out_q[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \alu_out_q_reg[31] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(alu_out[31]),
        .Q(alu_out_q[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \alu_out_q_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(alu_out[3]),
        .Q(alu_out_q[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \alu_out_q_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(alu_out[4]),
        .Q(alu_out_q[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \alu_out_q_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(alu_out[5]),
        .Q(alu_out_q[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \alu_out_q_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(alu_out[6]),
        .Q(alu_out_q[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \alu_out_q_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(alu_out[7]),
        .Q(alu_out_q[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \alu_out_q_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(alu_out[8]),
        .Q(alu_out_q[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \alu_out_q_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(alu_out[9]),
        .Q(alu_out_q[9]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \count_cycle[0]_i_2 
       (.I0(count_cycle_reg[0]),
        .O(\count_cycle[0]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_cycle_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_cycle_reg[0]_i_1_n_7 ),
        .Q(count_cycle_reg[0]),
        .R(instr_and_i_1_n_0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_cycle_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\count_cycle_reg[0]_i_1_n_0 ,\count_cycle_reg[0]_i_1_n_1 ,\count_cycle_reg[0]_i_1_n_2 ,\count_cycle_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\count_cycle_reg[0]_i_1_n_4 ,\count_cycle_reg[0]_i_1_n_5 ,\count_cycle_reg[0]_i_1_n_6 ,\count_cycle_reg[0]_i_1_n_7 }),
        .S({count_cycle_reg[3:1],\count_cycle[0]_i_2_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count_cycle_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_cycle_reg[8]_i_1_n_5 ),
        .Q(count_cycle_reg[10]),
        .R(instr_and_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_cycle_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_cycle_reg[8]_i_1_n_4 ),
        .Q(count_cycle_reg[11]),
        .R(instr_and_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_cycle_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_cycle_reg[12]_i_1_n_7 ),
        .Q(count_cycle_reg[12]),
        .R(instr_and_i_1_n_0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_cycle_reg[12]_i_1 
       (.CI(\count_cycle_reg[8]_i_1_n_0 ),
        .CO({\count_cycle_reg[12]_i_1_n_0 ,\count_cycle_reg[12]_i_1_n_1 ,\count_cycle_reg[12]_i_1_n_2 ,\count_cycle_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_cycle_reg[12]_i_1_n_4 ,\count_cycle_reg[12]_i_1_n_5 ,\count_cycle_reg[12]_i_1_n_6 ,\count_cycle_reg[12]_i_1_n_7 }),
        .S(count_cycle_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \count_cycle_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_cycle_reg[12]_i_1_n_6 ),
        .Q(count_cycle_reg[13]),
        .R(instr_and_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_cycle_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_cycle_reg[12]_i_1_n_5 ),
        .Q(count_cycle_reg[14]),
        .R(instr_and_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_cycle_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_cycle_reg[12]_i_1_n_4 ),
        .Q(count_cycle_reg[15]),
        .R(instr_and_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_cycle_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_cycle_reg[16]_i_1_n_7 ),
        .Q(count_cycle_reg[16]),
        .R(instr_and_i_1_n_0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_cycle_reg[16]_i_1 
       (.CI(\count_cycle_reg[12]_i_1_n_0 ),
        .CO({\count_cycle_reg[16]_i_1_n_0 ,\count_cycle_reg[16]_i_1_n_1 ,\count_cycle_reg[16]_i_1_n_2 ,\count_cycle_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_cycle_reg[16]_i_1_n_4 ,\count_cycle_reg[16]_i_1_n_5 ,\count_cycle_reg[16]_i_1_n_6 ,\count_cycle_reg[16]_i_1_n_7 }),
        .S(count_cycle_reg[19:16]));
  FDRE #(
    .INIT(1'b0)) 
    \count_cycle_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_cycle_reg[16]_i_1_n_6 ),
        .Q(count_cycle_reg[17]),
        .R(instr_and_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_cycle_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_cycle_reg[16]_i_1_n_5 ),
        .Q(count_cycle_reg[18]),
        .R(instr_and_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_cycle_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_cycle_reg[16]_i_1_n_4 ),
        .Q(count_cycle_reg[19]),
        .R(instr_and_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_cycle_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_cycle_reg[0]_i_1_n_6 ),
        .Q(count_cycle_reg[1]),
        .R(instr_and_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_cycle_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_cycle_reg[20]_i_1_n_7 ),
        .Q(count_cycle_reg[20]),
        .R(instr_and_i_1_n_0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_cycle_reg[20]_i_1 
       (.CI(\count_cycle_reg[16]_i_1_n_0 ),
        .CO({\count_cycle_reg[20]_i_1_n_0 ,\count_cycle_reg[20]_i_1_n_1 ,\count_cycle_reg[20]_i_1_n_2 ,\count_cycle_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_cycle_reg[20]_i_1_n_4 ,\count_cycle_reg[20]_i_1_n_5 ,\count_cycle_reg[20]_i_1_n_6 ,\count_cycle_reg[20]_i_1_n_7 }),
        .S(count_cycle_reg[23:20]));
  FDRE #(
    .INIT(1'b0)) 
    \count_cycle_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_cycle_reg[20]_i_1_n_6 ),
        .Q(count_cycle_reg[21]),
        .R(instr_and_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_cycle_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_cycle_reg[20]_i_1_n_5 ),
        .Q(count_cycle_reg[22]),
        .R(instr_and_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_cycle_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_cycle_reg[20]_i_1_n_4 ),
        .Q(count_cycle_reg[23]),
        .R(instr_and_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_cycle_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_cycle_reg[24]_i_1_n_7 ),
        .Q(count_cycle_reg[24]),
        .R(instr_and_i_1_n_0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_cycle_reg[24]_i_1 
       (.CI(\count_cycle_reg[20]_i_1_n_0 ),
        .CO({\count_cycle_reg[24]_i_1_n_0 ,\count_cycle_reg[24]_i_1_n_1 ,\count_cycle_reg[24]_i_1_n_2 ,\count_cycle_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_cycle_reg[24]_i_1_n_4 ,\count_cycle_reg[24]_i_1_n_5 ,\count_cycle_reg[24]_i_1_n_6 ,\count_cycle_reg[24]_i_1_n_7 }),
        .S(count_cycle_reg[27:24]));
  FDRE #(
    .INIT(1'b0)) 
    \count_cycle_reg[25] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_cycle_reg[24]_i_1_n_6 ),
        .Q(count_cycle_reg[25]),
        .R(instr_and_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_cycle_reg[26] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_cycle_reg[24]_i_1_n_5 ),
        .Q(count_cycle_reg[26]),
        .R(instr_and_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_cycle_reg[27] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_cycle_reg[24]_i_1_n_4 ),
        .Q(count_cycle_reg[27]),
        .R(instr_and_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_cycle_reg[28] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_cycle_reg[28]_i_1_n_7 ),
        .Q(count_cycle_reg[28]),
        .R(instr_and_i_1_n_0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_cycle_reg[28]_i_1 
       (.CI(\count_cycle_reg[24]_i_1_n_0 ),
        .CO({\count_cycle_reg[28]_i_1_n_0 ,\count_cycle_reg[28]_i_1_n_1 ,\count_cycle_reg[28]_i_1_n_2 ,\count_cycle_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_cycle_reg[28]_i_1_n_4 ,\count_cycle_reg[28]_i_1_n_5 ,\count_cycle_reg[28]_i_1_n_6 ,\count_cycle_reg[28]_i_1_n_7 }),
        .S(count_cycle_reg[31:28]));
  FDRE #(
    .INIT(1'b0)) 
    \count_cycle_reg[29] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_cycle_reg[28]_i_1_n_6 ),
        .Q(count_cycle_reg[29]),
        .R(instr_and_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_cycle_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_cycle_reg[0]_i_1_n_5 ),
        .Q(count_cycle_reg[2]),
        .R(instr_and_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_cycle_reg[30] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_cycle_reg[28]_i_1_n_5 ),
        .Q(count_cycle_reg[30]),
        .R(instr_and_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_cycle_reg[31] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_cycle_reg[28]_i_1_n_4 ),
        .Q(count_cycle_reg[31]),
        .R(instr_and_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_cycle_reg[32] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_cycle_reg[32]_i_1_n_7 ),
        .Q(count_cycle_reg[32]),
        .R(instr_and_i_1_n_0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_cycle_reg[32]_i_1 
       (.CI(\count_cycle_reg[28]_i_1_n_0 ),
        .CO({\count_cycle_reg[32]_i_1_n_0 ,\count_cycle_reg[32]_i_1_n_1 ,\count_cycle_reg[32]_i_1_n_2 ,\count_cycle_reg[32]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_cycle_reg[32]_i_1_n_4 ,\count_cycle_reg[32]_i_1_n_5 ,\count_cycle_reg[32]_i_1_n_6 ,\count_cycle_reg[32]_i_1_n_7 }),
        .S(count_cycle_reg[35:32]));
  FDRE #(
    .INIT(1'b0)) 
    \count_cycle_reg[33] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_cycle_reg[32]_i_1_n_6 ),
        .Q(count_cycle_reg[33]),
        .R(instr_and_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_cycle_reg[34] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_cycle_reg[32]_i_1_n_5 ),
        .Q(count_cycle_reg[34]),
        .R(instr_and_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_cycle_reg[35] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_cycle_reg[32]_i_1_n_4 ),
        .Q(count_cycle_reg[35]),
        .R(instr_and_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_cycle_reg[36] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_cycle_reg[36]_i_1_n_7 ),
        .Q(count_cycle_reg[36]),
        .R(instr_and_i_1_n_0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_cycle_reg[36]_i_1 
       (.CI(\count_cycle_reg[32]_i_1_n_0 ),
        .CO({\count_cycle_reg[36]_i_1_n_0 ,\count_cycle_reg[36]_i_1_n_1 ,\count_cycle_reg[36]_i_1_n_2 ,\count_cycle_reg[36]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_cycle_reg[36]_i_1_n_4 ,\count_cycle_reg[36]_i_1_n_5 ,\count_cycle_reg[36]_i_1_n_6 ,\count_cycle_reg[36]_i_1_n_7 }),
        .S(count_cycle_reg[39:36]));
  FDRE #(
    .INIT(1'b0)) 
    \count_cycle_reg[37] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_cycle_reg[36]_i_1_n_6 ),
        .Q(count_cycle_reg[37]),
        .R(instr_and_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_cycle_reg[38] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_cycle_reg[36]_i_1_n_5 ),
        .Q(count_cycle_reg[38]),
        .R(instr_and_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_cycle_reg[39] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_cycle_reg[36]_i_1_n_4 ),
        .Q(count_cycle_reg[39]),
        .R(instr_and_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_cycle_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_cycle_reg[0]_i_1_n_4 ),
        .Q(count_cycle_reg[3]),
        .R(instr_and_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_cycle_reg[40] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_cycle_reg[40]_i_1_n_7 ),
        .Q(count_cycle_reg[40]),
        .R(instr_and_i_1_n_0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_cycle_reg[40]_i_1 
       (.CI(\count_cycle_reg[36]_i_1_n_0 ),
        .CO({\count_cycle_reg[40]_i_1_n_0 ,\count_cycle_reg[40]_i_1_n_1 ,\count_cycle_reg[40]_i_1_n_2 ,\count_cycle_reg[40]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_cycle_reg[40]_i_1_n_4 ,\count_cycle_reg[40]_i_1_n_5 ,\count_cycle_reg[40]_i_1_n_6 ,\count_cycle_reg[40]_i_1_n_7 }),
        .S(count_cycle_reg[43:40]));
  FDRE #(
    .INIT(1'b0)) 
    \count_cycle_reg[41] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_cycle_reg[40]_i_1_n_6 ),
        .Q(count_cycle_reg[41]),
        .R(instr_and_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_cycle_reg[42] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_cycle_reg[40]_i_1_n_5 ),
        .Q(count_cycle_reg[42]),
        .R(instr_and_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_cycle_reg[43] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_cycle_reg[40]_i_1_n_4 ),
        .Q(count_cycle_reg[43]),
        .R(instr_and_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_cycle_reg[44] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_cycle_reg[44]_i_1_n_7 ),
        .Q(count_cycle_reg[44]),
        .R(instr_and_i_1_n_0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_cycle_reg[44]_i_1 
       (.CI(\count_cycle_reg[40]_i_1_n_0 ),
        .CO({\count_cycle_reg[44]_i_1_n_0 ,\count_cycle_reg[44]_i_1_n_1 ,\count_cycle_reg[44]_i_1_n_2 ,\count_cycle_reg[44]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_cycle_reg[44]_i_1_n_4 ,\count_cycle_reg[44]_i_1_n_5 ,\count_cycle_reg[44]_i_1_n_6 ,\count_cycle_reg[44]_i_1_n_7 }),
        .S(count_cycle_reg[47:44]));
  FDRE #(
    .INIT(1'b0)) 
    \count_cycle_reg[45] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_cycle_reg[44]_i_1_n_6 ),
        .Q(count_cycle_reg[45]),
        .R(instr_and_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_cycle_reg[46] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_cycle_reg[44]_i_1_n_5 ),
        .Q(count_cycle_reg[46]),
        .R(instr_and_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_cycle_reg[47] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_cycle_reg[44]_i_1_n_4 ),
        .Q(count_cycle_reg[47]),
        .R(instr_and_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_cycle_reg[48] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_cycle_reg[48]_i_1_n_7 ),
        .Q(count_cycle_reg[48]),
        .R(instr_and_i_1_n_0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_cycle_reg[48]_i_1 
       (.CI(\count_cycle_reg[44]_i_1_n_0 ),
        .CO({\count_cycle_reg[48]_i_1_n_0 ,\count_cycle_reg[48]_i_1_n_1 ,\count_cycle_reg[48]_i_1_n_2 ,\count_cycle_reg[48]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_cycle_reg[48]_i_1_n_4 ,\count_cycle_reg[48]_i_1_n_5 ,\count_cycle_reg[48]_i_1_n_6 ,\count_cycle_reg[48]_i_1_n_7 }),
        .S(count_cycle_reg[51:48]));
  FDRE #(
    .INIT(1'b0)) 
    \count_cycle_reg[49] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_cycle_reg[48]_i_1_n_6 ),
        .Q(count_cycle_reg[49]),
        .R(instr_and_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_cycle_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_cycle_reg[4]_i_1_n_7 ),
        .Q(count_cycle_reg[4]),
        .R(instr_and_i_1_n_0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_cycle_reg[4]_i_1 
       (.CI(\count_cycle_reg[0]_i_1_n_0 ),
        .CO({\count_cycle_reg[4]_i_1_n_0 ,\count_cycle_reg[4]_i_1_n_1 ,\count_cycle_reg[4]_i_1_n_2 ,\count_cycle_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_cycle_reg[4]_i_1_n_4 ,\count_cycle_reg[4]_i_1_n_5 ,\count_cycle_reg[4]_i_1_n_6 ,\count_cycle_reg[4]_i_1_n_7 }),
        .S(count_cycle_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \count_cycle_reg[50] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_cycle_reg[48]_i_1_n_5 ),
        .Q(count_cycle_reg[50]),
        .R(instr_and_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_cycle_reg[51] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_cycle_reg[48]_i_1_n_4 ),
        .Q(count_cycle_reg[51]),
        .R(instr_and_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_cycle_reg[52] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_cycle_reg[52]_i_1_n_7 ),
        .Q(count_cycle_reg[52]),
        .R(instr_and_i_1_n_0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_cycle_reg[52]_i_1 
       (.CI(\count_cycle_reg[48]_i_1_n_0 ),
        .CO({\count_cycle_reg[52]_i_1_n_0 ,\count_cycle_reg[52]_i_1_n_1 ,\count_cycle_reg[52]_i_1_n_2 ,\count_cycle_reg[52]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_cycle_reg[52]_i_1_n_4 ,\count_cycle_reg[52]_i_1_n_5 ,\count_cycle_reg[52]_i_1_n_6 ,\count_cycle_reg[52]_i_1_n_7 }),
        .S(count_cycle_reg[55:52]));
  FDRE #(
    .INIT(1'b0)) 
    \count_cycle_reg[53] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_cycle_reg[52]_i_1_n_6 ),
        .Q(count_cycle_reg[53]),
        .R(instr_and_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_cycle_reg[54] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_cycle_reg[52]_i_1_n_5 ),
        .Q(count_cycle_reg[54]),
        .R(instr_and_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_cycle_reg[55] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_cycle_reg[52]_i_1_n_4 ),
        .Q(count_cycle_reg[55]),
        .R(instr_and_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_cycle_reg[56] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_cycle_reg[56]_i_1_n_7 ),
        .Q(count_cycle_reg[56]),
        .R(instr_and_i_1_n_0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_cycle_reg[56]_i_1 
       (.CI(\count_cycle_reg[52]_i_1_n_0 ),
        .CO({\count_cycle_reg[56]_i_1_n_0 ,\count_cycle_reg[56]_i_1_n_1 ,\count_cycle_reg[56]_i_1_n_2 ,\count_cycle_reg[56]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_cycle_reg[56]_i_1_n_4 ,\count_cycle_reg[56]_i_1_n_5 ,\count_cycle_reg[56]_i_1_n_6 ,\count_cycle_reg[56]_i_1_n_7 }),
        .S(count_cycle_reg[59:56]));
  FDRE #(
    .INIT(1'b0)) 
    \count_cycle_reg[57] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_cycle_reg[56]_i_1_n_6 ),
        .Q(count_cycle_reg[57]),
        .R(instr_and_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_cycle_reg[58] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_cycle_reg[56]_i_1_n_5 ),
        .Q(count_cycle_reg[58]),
        .R(instr_and_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_cycle_reg[59] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_cycle_reg[56]_i_1_n_4 ),
        .Q(count_cycle_reg[59]),
        .R(instr_and_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_cycle_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_cycle_reg[4]_i_1_n_6 ),
        .Q(count_cycle_reg[5]),
        .R(instr_and_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_cycle_reg[60] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_cycle_reg[60]_i_1_n_7 ),
        .Q(count_cycle_reg[60]),
        .R(instr_and_i_1_n_0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_cycle_reg[60]_i_1 
       (.CI(\count_cycle_reg[56]_i_1_n_0 ),
        .CO({\NLW_count_cycle_reg[60]_i_1_CO_UNCONNECTED [3],\count_cycle_reg[60]_i_1_n_1 ,\count_cycle_reg[60]_i_1_n_2 ,\count_cycle_reg[60]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_cycle_reg[60]_i_1_n_4 ,\count_cycle_reg[60]_i_1_n_5 ,\count_cycle_reg[60]_i_1_n_6 ,\count_cycle_reg[60]_i_1_n_7 }),
        .S(count_cycle_reg[63:60]));
  FDRE #(
    .INIT(1'b0)) 
    \count_cycle_reg[61] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_cycle_reg[60]_i_1_n_6 ),
        .Q(count_cycle_reg[61]),
        .R(instr_and_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_cycle_reg[62] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_cycle_reg[60]_i_1_n_5 ),
        .Q(count_cycle_reg[62]),
        .R(instr_and_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_cycle_reg[63] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_cycle_reg[60]_i_1_n_4 ),
        .Q(count_cycle_reg[63]),
        .R(instr_and_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_cycle_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_cycle_reg[4]_i_1_n_5 ),
        .Q(count_cycle_reg[6]),
        .R(instr_and_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_cycle_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_cycle_reg[4]_i_1_n_4 ),
        .Q(count_cycle_reg[7]),
        .R(instr_and_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_cycle_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_cycle_reg[8]_i_1_n_7 ),
        .Q(count_cycle_reg[8]),
        .R(instr_and_i_1_n_0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_cycle_reg[8]_i_1 
       (.CI(\count_cycle_reg[4]_i_1_n_0 ),
        .CO({\count_cycle_reg[8]_i_1_n_0 ,\count_cycle_reg[8]_i_1_n_1 ,\count_cycle_reg[8]_i_1_n_2 ,\count_cycle_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_cycle_reg[8]_i_1_n_4 ,\count_cycle_reg[8]_i_1_n_5 ,\count_cycle_reg[8]_i_1_n_6 ,\count_cycle_reg[8]_i_1_n_7 }),
        .S(count_cycle_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \count_cycle_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_cycle_reg[8]_i_1_n_6 ),
        .Q(count_cycle_reg[9]),
        .R(instr_and_i_1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    \count_instr[0]_i_1 
       (.I0(reg_next_pc),
        .I1(decoder_trigger_reg_n_0),
        .O(count_instr));
  LUT1 #(
    .INIT(2'h1)) 
    \count_instr[0]_i_3 
       (.I0(count_instr_reg[0]),
        .O(\count_instr[0]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_instr_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(count_instr),
        .D(\count_instr_reg[0]_i_2_n_7 ),
        .Q(count_instr_reg[0]),
        .R(instr_and_i_1_n_0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_instr_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\count_instr_reg[0]_i_2_n_0 ,\count_instr_reg[0]_i_2_n_1 ,\count_instr_reg[0]_i_2_n_2 ,\count_instr_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\count_instr_reg[0]_i_2_n_4 ,\count_instr_reg[0]_i_2_n_5 ,\count_instr_reg[0]_i_2_n_6 ,\count_instr_reg[0]_i_2_n_7 }),
        .S({count_instr_reg[3:1],\count_instr[0]_i_3_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count_instr_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(count_instr),
        .D(\count_instr_reg[8]_i_1_n_5 ),
        .Q(count_instr_reg[10]),
        .R(instr_and_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_instr_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(count_instr),
        .D(\count_instr_reg[8]_i_1_n_4 ),
        .Q(count_instr_reg[11]),
        .R(instr_and_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_instr_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(count_instr),
        .D(\count_instr_reg[12]_i_1_n_7 ),
        .Q(count_instr_reg[12]),
        .R(instr_and_i_1_n_0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_instr_reg[12]_i_1 
       (.CI(\count_instr_reg[8]_i_1_n_0 ),
        .CO({\count_instr_reg[12]_i_1_n_0 ,\count_instr_reg[12]_i_1_n_1 ,\count_instr_reg[12]_i_1_n_2 ,\count_instr_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_instr_reg[12]_i_1_n_4 ,\count_instr_reg[12]_i_1_n_5 ,\count_instr_reg[12]_i_1_n_6 ,\count_instr_reg[12]_i_1_n_7 }),
        .S(count_instr_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \count_instr_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(count_instr),
        .D(\count_instr_reg[12]_i_1_n_6 ),
        .Q(count_instr_reg[13]),
        .R(instr_and_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_instr_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(count_instr),
        .D(\count_instr_reg[12]_i_1_n_5 ),
        .Q(count_instr_reg[14]),
        .R(instr_and_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_instr_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(count_instr),
        .D(\count_instr_reg[12]_i_1_n_4 ),
        .Q(count_instr_reg[15]),
        .R(instr_and_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_instr_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(count_instr),
        .D(\count_instr_reg[16]_i_1_n_7 ),
        .Q(count_instr_reg[16]),
        .R(instr_and_i_1_n_0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_instr_reg[16]_i_1 
       (.CI(\count_instr_reg[12]_i_1_n_0 ),
        .CO({\count_instr_reg[16]_i_1_n_0 ,\count_instr_reg[16]_i_1_n_1 ,\count_instr_reg[16]_i_1_n_2 ,\count_instr_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_instr_reg[16]_i_1_n_4 ,\count_instr_reg[16]_i_1_n_5 ,\count_instr_reg[16]_i_1_n_6 ,\count_instr_reg[16]_i_1_n_7 }),
        .S(count_instr_reg[19:16]));
  FDRE #(
    .INIT(1'b0)) 
    \count_instr_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(count_instr),
        .D(\count_instr_reg[16]_i_1_n_6 ),
        .Q(count_instr_reg[17]),
        .R(instr_and_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_instr_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(count_instr),
        .D(\count_instr_reg[16]_i_1_n_5 ),
        .Q(count_instr_reg[18]),
        .R(instr_and_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_instr_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(count_instr),
        .D(\count_instr_reg[16]_i_1_n_4 ),
        .Q(count_instr_reg[19]),
        .R(instr_and_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_instr_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(count_instr),
        .D(\count_instr_reg[0]_i_2_n_6 ),
        .Q(count_instr_reg[1]),
        .R(instr_and_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_instr_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(count_instr),
        .D(\count_instr_reg[20]_i_1_n_7 ),
        .Q(count_instr_reg[20]),
        .R(instr_and_i_1_n_0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_instr_reg[20]_i_1 
       (.CI(\count_instr_reg[16]_i_1_n_0 ),
        .CO({\count_instr_reg[20]_i_1_n_0 ,\count_instr_reg[20]_i_1_n_1 ,\count_instr_reg[20]_i_1_n_2 ,\count_instr_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_instr_reg[20]_i_1_n_4 ,\count_instr_reg[20]_i_1_n_5 ,\count_instr_reg[20]_i_1_n_6 ,\count_instr_reg[20]_i_1_n_7 }),
        .S(count_instr_reg[23:20]));
  FDRE #(
    .INIT(1'b0)) 
    \count_instr_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(count_instr),
        .D(\count_instr_reg[20]_i_1_n_6 ),
        .Q(count_instr_reg[21]),
        .R(instr_and_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_instr_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(count_instr),
        .D(\count_instr_reg[20]_i_1_n_5 ),
        .Q(count_instr_reg[22]),
        .R(instr_and_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_instr_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(count_instr),
        .D(\count_instr_reg[20]_i_1_n_4 ),
        .Q(count_instr_reg[23]),
        .R(instr_and_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_instr_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(count_instr),
        .D(\count_instr_reg[24]_i_1_n_7 ),
        .Q(count_instr_reg[24]),
        .R(instr_and_i_1_n_0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_instr_reg[24]_i_1 
       (.CI(\count_instr_reg[20]_i_1_n_0 ),
        .CO({\count_instr_reg[24]_i_1_n_0 ,\count_instr_reg[24]_i_1_n_1 ,\count_instr_reg[24]_i_1_n_2 ,\count_instr_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_instr_reg[24]_i_1_n_4 ,\count_instr_reg[24]_i_1_n_5 ,\count_instr_reg[24]_i_1_n_6 ,\count_instr_reg[24]_i_1_n_7 }),
        .S(count_instr_reg[27:24]));
  FDRE #(
    .INIT(1'b0)) 
    \count_instr_reg[25] 
       (.C(clk_IBUF_BUFG),
        .CE(count_instr),
        .D(\count_instr_reg[24]_i_1_n_6 ),
        .Q(count_instr_reg[25]),
        .R(instr_and_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_instr_reg[26] 
       (.C(clk_IBUF_BUFG),
        .CE(count_instr),
        .D(\count_instr_reg[24]_i_1_n_5 ),
        .Q(count_instr_reg[26]),
        .R(instr_and_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_instr_reg[27] 
       (.C(clk_IBUF_BUFG),
        .CE(count_instr),
        .D(\count_instr_reg[24]_i_1_n_4 ),
        .Q(count_instr_reg[27]),
        .R(instr_and_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_instr_reg[28] 
       (.C(clk_IBUF_BUFG),
        .CE(count_instr),
        .D(\count_instr_reg[28]_i_1_n_7 ),
        .Q(count_instr_reg[28]),
        .R(instr_and_i_1_n_0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_instr_reg[28]_i_1 
       (.CI(\count_instr_reg[24]_i_1_n_0 ),
        .CO({\count_instr_reg[28]_i_1_n_0 ,\count_instr_reg[28]_i_1_n_1 ,\count_instr_reg[28]_i_1_n_2 ,\count_instr_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_instr_reg[28]_i_1_n_4 ,\count_instr_reg[28]_i_1_n_5 ,\count_instr_reg[28]_i_1_n_6 ,\count_instr_reg[28]_i_1_n_7 }),
        .S(count_instr_reg[31:28]));
  FDRE #(
    .INIT(1'b0)) 
    \count_instr_reg[29] 
       (.C(clk_IBUF_BUFG),
        .CE(count_instr),
        .D(\count_instr_reg[28]_i_1_n_6 ),
        .Q(count_instr_reg[29]),
        .R(instr_and_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_instr_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(count_instr),
        .D(\count_instr_reg[0]_i_2_n_5 ),
        .Q(count_instr_reg[2]),
        .R(instr_and_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_instr_reg[30] 
       (.C(clk_IBUF_BUFG),
        .CE(count_instr),
        .D(\count_instr_reg[28]_i_1_n_5 ),
        .Q(count_instr_reg[30]),
        .R(instr_and_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_instr_reg[31] 
       (.C(clk_IBUF_BUFG),
        .CE(count_instr),
        .D(\count_instr_reg[28]_i_1_n_4 ),
        .Q(count_instr_reg[31]),
        .R(instr_and_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_instr_reg[32] 
       (.C(clk_IBUF_BUFG),
        .CE(count_instr),
        .D(\count_instr_reg[32]_i_1_n_7 ),
        .Q(count_instr_reg[32]),
        .R(instr_and_i_1_n_0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_instr_reg[32]_i_1 
       (.CI(\count_instr_reg[28]_i_1_n_0 ),
        .CO({\count_instr_reg[32]_i_1_n_0 ,\count_instr_reg[32]_i_1_n_1 ,\count_instr_reg[32]_i_1_n_2 ,\count_instr_reg[32]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_instr_reg[32]_i_1_n_4 ,\count_instr_reg[32]_i_1_n_5 ,\count_instr_reg[32]_i_1_n_6 ,\count_instr_reg[32]_i_1_n_7 }),
        .S(count_instr_reg[35:32]));
  FDRE #(
    .INIT(1'b0)) 
    \count_instr_reg[33] 
       (.C(clk_IBUF_BUFG),
        .CE(count_instr),
        .D(\count_instr_reg[32]_i_1_n_6 ),
        .Q(count_instr_reg[33]),
        .R(instr_and_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_instr_reg[34] 
       (.C(clk_IBUF_BUFG),
        .CE(count_instr),
        .D(\count_instr_reg[32]_i_1_n_5 ),
        .Q(count_instr_reg[34]),
        .R(instr_and_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_instr_reg[35] 
       (.C(clk_IBUF_BUFG),
        .CE(count_instr),
        .D(\count_instr_reg[32]_i_1_n_4 ),
        .Q(count_instr_reg[35]),
        .R(instr_and_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_instr_reg[36] 
       (.C(clk_IBUF_BUFG),
        .CE(count_instr),
        .D(\count_instr_reg[36]_i_1_n_7 ),
        .Q(count_instr_reg[36]),
        .R(instr_and_i_1_n_0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_instr_reg[36]_i_1 
       (.CI(\count_instr_reg[32]_i_1_n_0 ),
        .CO({\count_instr_reg[36]_i_1_n_0 ,\count_instr_reg[36]_i_1_n_1 ,\count_instr_reg[36]_i_1_n_2 ,\count_instr_reg[36]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_instr_reg[36]_i_1_n_4 ,\count_instr_reg[36]_i_1_n_5 ,\count_instr_reg[36]_i_1_n_6 ,\count_instr_reg[36]_i_1_n_7 }),
        .S(count_instr_reg[39:36]));
  FDRE #(
    .INIT(1'b0)) 
    \count_instr_reg[37] 
       (.C(clk_IBUF_BUFG),
        .CE(count_instr),
        .D(\count_instr_reg[36]_i_1_n_6 ),
        .Q(count_instr_reg[37]),
        .R(instr_and_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_instr_reg[38] 
       (.C(clk_IBUF_BUFG),
        .CE(count_instr),
        .D(\count_instr_reg[36]_i_1_n_5 ),
        .Q(count_instr_reg[38]),
        .R(instr_and_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_instr_reg[39] 
       (.C(clk_IBUF_BUFG),
        .CE(count_instr),
        .D(\count_instr_reg[36]_i_1_n_4 ),
        .Q(count_instr_reg[39]),
        .R(instr_and_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_instr_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(count_instr),
        .D(\count_instr_reg[0]_i_2_n_4 ),
        .Q(count_instr_reg[3]),
        .R(instr_and_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_instr_reg[40] 
       (.C(clk_IBUF_BUFG),
        .CE(count_instr),
        .D(\count_instr_reg[40]_i_1_n_7 ),
        .Q(count_instr_reg[40]),
        .R(instr_and_i_1_n_0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_instr_reg[40]_i_1 
       (.CI(\count_instr_reg[36]_i_1_n_0 ),
        .CO({\count_instr_reg[40]_i_1_n_0 ,\count_instr_reg[40]_i_1_n_1 ,\count_instr_reg[40]_i_1_n_2 ,\count_instr_reg[40]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_instr_reg[40]_i_1_n_4 ,\count_instr_reg[40]_i_1_n_5 ,\count_instr_reg[40]_i_1_n_6 ,\count_instr_reg[40]_i_1_n_7 }),
        .S(count_instr_reg[43:40]));
  FDRE #(
    .INIT(1'b0)) 
    \count_instr_reg[41] 
       (.C(clk_IBUF_BUFG),
        .CE(count_instr),
        .D(\count_instr_reg[40]_i_1_n_6 ),
        .Q(count_instr_reg[41]),
        .R(instr_and_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_instr_reg[42] 
       (.C(clk_IBUF_BUFG),
        .CE(count_instr),
        .D(\count_instr_reg[40]_i_1_n_5 ),
        .Q(count_instr_reg[42]),
        .R(instr_and_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_instr_reg[43] 
       (.C(clk_IBUF_BUFG),
        .CE(count_instr),
        .D(\count_instr_reg[40]_i_1_n_4 ),
        .Q(count_instr_reg[43]),
        .R(instr_and_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_instr_reg[44] 
       (.C(clk_IBUF_BUFG),
        .CE(count_instr),
        .D(\count_instr_reg[44]_i_1_n_7 ),
        .Q(count_instr_reg[44]),
        .R(instr_and_i_1_n_0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_instr_reg[44]_i_1 
       (.CI(\count_instr_reg[40]_i_1_n_0 ),
        .CO({\count_instr_reg[44]_i_1_n_0 ,\count_instr_reg[44]_i_1_n_1 ,\count_instr_reg[44]_i_1_n_2 ,\count_instr_reg[44]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_instr_reg[44]_i_1_n_4 ,\count_instr_reg[44]_i_1_n_5 ,\count_instr_reg[44]_i_1_n_6 ,\count_instr_reg[44]_i_1_n_7 }),
        .S(count_instr_reg[47:44]));
  FDRE #(
    .INIT(1'b0)) 
    \count_instr_reg[45] 
       (.C(clk_IBUF_BUFG),
        .CE(count_instr),
        .D(\count_instr_reg[44]_i_1_n_6 ),
        .Q(count_instr_reg[45]),
        .R(instr_and_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_instr_reg[46] 
       (.C(clk_IBUF_BUFG),
        .CE(count_instr),
        .D(\count_instr_reg[44]_i_1_n_5 ),
        .Q(count_instr_reg[46]),
        .R(instr_and_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_instr_reg[47] 
       (.C(clk_IBUF_BUFG),
        .CE(count_instr),
        .D(\count_instr_reg[44]_i_1_n_4 ),
        .Q(count_instr_reg[47]),
        .R(instr_and_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_instr_reg[48] 
       (.C(clk_IBUF_BUFG),
        .CE(count_instr),
        .D(\count_instr_reg[48]_i_1_n_7 ),
        .Q(count_instr_reg[48]),
        .R(instr_and_i_1_n_0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_instr_reg[48]_i_1 
       (.CI(\count_instr_reg[44]_i_1_n_0 ),
        .CO({\count_instr_reg[48]_i_1_n_0 ,\count_instr_reg[48]_i_1_n_1 ,\count_instr_reg[48]_i_1_n_2 ,\count_instr_reg[48]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_instr_reg[48]_i_1_n_4 ,\count_instr_reg[48]_i_1_n_5 ,\count_instr_reg[48]_i_1_n_6 ,\count_instr_reg[48]_i_1_n_7 }),
        .S(count_instr_reg[51:48]));
  FDRE #(
    .INIT(1'b0)) 
    \count_instr_reg[49] 
       (.C(clk_IBUF_BUFG),
        .CE(count_instr),
        .D(\count_instr_reg[48]_i_1_n_6 ),
        .Q(count_instr_reg[49]),
        .R(instr_and_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_instr_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(count_instr),
        .D(\count_instr_reg[4]_i_1_n_7 ),
        .Q(count_instr_reg[4]),
        .R(instr_and_i_1_n_0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_instr_reg[4]_i_1 
       (.CI(\count_instr_reg[0]_i_2_n_0 ),
        .CO({\count_instr_reg[4]_i_1_n_0 ,\count_instr_reg[4]_i_1_n_1 ,\count_instr_reg[4]_i_1_n_2 ,\count_instr_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_instr_reg[4]_i_1_n_4 ,\count_instr_reg[4]_i_1_n_5 ,\count_instr_reg[4]_i_1_n_6 ,\count_instr_reg[4]_i_1_n_7 }),
        .S(count_instr_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \count_instr_reg[50] 
       (.C(clk_IBUF_BUFG),
        .CE(count_instr),
        .D(\count_instr_reg[48]_i_1_n_5 ),
        .Q(count_instr_reg[50]),
        .R(instr_and_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_instr_reg[51] 
       (.C(clk_IBUF_BUFG),
        .CE(count_instr),
        .D(\count_instr_reg[48]_i_1_n_4 ),
        .Q(count_instr_reg[51]),
        .R(instr_and_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_instr_reg[52] 
       (.C(clk_IBUF_BUFG),
        .CE(count_instr),
        .D(\count_instr_reg[52]_i_1_n_7 ),
        .Q(count_instr_reg[52]),
        .R(instr_and_i_1_n_0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_instr_reg[52]_i_1 
       (.CI(\count_instr_reg[48]_i_1_n_0 ),
        .CO({\count_instr_reg[52]_i_1_n_0 ,\count_instr_reg[52]_i_1_n_1 ,\count_instr_reg[52]_i_1_n_2 ,\count_instr_reg[52]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_instr_reg[52]_i_1_n_4 ,\count_instr_reg[52]_i_1_n_5 ,\count_instr_reg[52]_i_1_n_6 ,\count_instr_reg[52]_i_1_n_7 }),
        .S(count_instr_reg[55:52]));
  FDRE #(
    .INIT(1'b0)) 
    \count_instr_reg[53] 
       (.C(clk_IBUF_BUFG),
        .CE(count_instr),
        .D(\count_instr_reg[52]_i_1_n_6 ),
        .Q(count_instr_reg[53]),
        .R(instr_and_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_instr_reg[54] 
       (.C(clk_IBUF_BUFG),
        .CE(count_instr),
        .D(\count_instr_reg[52]_i_1_n_5 ),
        .Q(count_instr_reg[54]),
        .R(instr_and_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_instr_reg[55] 
       (.C(clk_IBUF_BUFG),
        .CE(count_instr),
        .D(\count_instr_reg[52]_i_1_n_4 ),
        .Q(count_instr_reg[55]),
        .R(instr_and_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_instr_reg[56] 
       (.C(clk_IBUF_BUFG),
        .CE(count_instr),
        .D(\count_instr_reg[56]_i_1_n_7 ),
        .Q(count_instr_reg[56]),
        .R(instr_and_i_1_n_0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_instr_reg[56]_i_1 
       (.CI(\count_instr_reg[52]_i_1_n_0 ),
        .CO({\count_instr_reg[56]_i_1_n_0 ,\count_instr_reg[56]_i_1_n_1 ,\count_instr_reg[56]_i_1_n_2 ,\count_instr_reg[56]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_instr_reg[56]_i_1_n_4 ,\count_instr_reg[56]_i_1_n_5 ,\count_instr_reg[56]_i_1_n_6 ,\count_instr_reg[56]_i_1_n_7 }),
        .S(count_instr_reg[59:56]));
  FDRE #(
    .INIT(1'b0)) 
    \count_instr_reg[57] 
       (.C(clk_IBUF_BUFG),
        .CE(count_instr),
        .D(\count_instr_reg[56]_i_1_n_6 ),
        .Q(count_instr_reg[57]),
        .R(instr_and_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_instr_reg[58] 
       (.C(clk_IBUF_BUFG),
        .CE(count_instr),
        .D(\count_instr_reg[56]_i_1_n_5 ),
        .Q(count_instr_reg[58]),
        .R(instr_and_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_instr_reg[59] 
       (.C(clk_IBUF_BUFG),
        .CE(count_instr),
        .D(\count_instr_reg[56]_i_1_n_4 ),
        .Q(count_instr_reg[59]),
        .R(instr_and_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_instr_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(count_instr),
        .D(\count_instr_reg[4]_i_1_n_6 ),
        .Q(count_instr_reg[5]),
        .R(instr_and_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_instr_reg[60] 
       (.C(clk_IBUF_BUFG),
        .CE(count_instr),
        .D(\count_instr_reg[60]_i_1_n_7 ),
        .Q(count_instr_reg[60]),
        .R(instr_and_i_1_n_0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_instr_reg[60]_i_1 
       (.CI(\count_instr_reg[56]_i_1_n_0 ),
        .CO({\NLW_count_instr_reg[60]_i_1_CO_UNCONNECTED [3],\count_instr_reg[60]_i_1_n_1 ,\count_instr_reg[60]_i_1_n_2 ,\count_instr_reg[60]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_instr_reg[60]_i_1_n_4 ,\count_instr_reg[60]_i_1_n_5 ,\count_instr_reg[60]_i_1_n_6 ,\count_instr_reg[60]_i_1_n_7 }),
        .S(count_instr_reg[63:60]));
  FDRE #(
    .INIT(1'b0)) 
    \count_instr_reg[61] 
       (.C(clk_IBUF_BUFG),
        .CE(count_instr),
        .D(\count_instr_reg[60]_i_1_n_6 ),
        .Q(count_instr_reg[61]),
        .R(instr_and_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_instr_reg[62] 
       (.C(clk_IBUF_BUFG),
        .CE(count_instr),
        .D(\count_instr_reg[60]_i_1_n_5 ),
        .Q(count_instr_reg[62]),
        .R(instr_and_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_instr_reg[63] 
       (.C(clk_IBUF_BUFG),
        .CE(count_instr),
        .D(\count_instr_reg[60]_i_1_n_4 ),
        .Q(count_instr_reg[63]),
        .R(instr_and_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_instr_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(count_instr),
        .D(\count_instr_reg[4]_i_1_n_5 ),
        .Q(count_instr_reg[6]),
        .R(instr_and_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_instr_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(count_instr),
        .D(\count_instr_reg[4]_i_1_n_4 ),
        .Q(count_instr_reg[7]),
        .R(instr_and_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_instr_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(count_instr),
        .D(\count_instr_reg[8]_i_1_n_7 ),
        .Q(count_instr_reg[8]),
        .R(instr_and_i_1_n_0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_instr_reg[8]_i_1 
       (.CI(\count_instr_reg[4]_i_1_n_0 ),
        .CO({\count_instr_reg[8]_i_1_n_0 ,\count_instr_reg[8]_i_1_n_1 ,\count_instr_reg[8]_i_1_n_2 ,\count_instr_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_instr_reg[8]_i_1_n_4 ,\count_instr_reg[8]_i_1_n_5 ,\count_instr_reg[8]_i_1_n_6 ,\count_instr_reg[8]_i_1_n_7 }),
        .S(count_instr_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \count_instr_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(count_instr),
        .D(\count_instr_reg[8]_i_1_n_6 ),
        .Q(count_instr_reg[9]),
        .R(instr_and_i_1_n_0));
  LUT4 #(
    .INIT(16'h8000)) 
    \cpu_state[0]_i_1 
       (.I0(\cpu_state_reg_n_0_[5] ),
        .I1(resetn_IBUF),
        .I2(\cpu_state[7]_i_6_n_0 ),
        .I3(is_lb_lh_lw_lbu_lhu),
        .O(cpu_state0_out[0]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'h0100)) 
    \cpu_state[1]_i_1 
       (.I0(is_lb_lh_lw_lbu_lhu),
        .I1(is_lui_auipc_jal),
        .I2(is_jalr_addi_slti_sltiu_xori_ori_andi),
        .I3(\cpu_state[1]_i_2_n_0 ),
        .O(cpu_state0_out[1]));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \cpu_state[1]_i_2 
       (.I0(is_sb_sh_sw),
        .I1(\cpu_state[7]_i_6_n_0 ),
        .I2(\cpu_state[6]_i_2_n_0 ),
        .I3(resetn_IBUF),
        .I4(\cpu_state_reg_n_0_[5] ),
        .I5(is_slli_srli_srai),
        .O(\cpu_state[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEAAAAAAA00000000)) 
    \cpu_state[2]_i_1 
       (.I0(is_slli_srli_srai),
        .I1(is_sll_srl_sra),
        .I2(\cpu_state[2]_i_2_n_0 ),
        .I3(\cpu_state[7]_i_6_n_0 ),
        .I4(\cpu_state[6]_i_2_n_0 ),
        .I5(\reg_op2[31]_i_1_n_0 ),
        .O(cpu_state0_out[2]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \cpu_state[2]_i_2 
       (.I0(is_jalr_addi_slti_sltiu_xori_ori_andi),
        .I1(is_lui_auipc_jal),
        .I2(is_lb_lh_lw_lbu_lhu),
        .O(\cpu_state[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hE0E0E0FFE0E0E0E0)) 
    \cpu_state[3]_i_1 
       (.I0(is_lui_auipc_jal),
        .I1(is_jalr_addi_slti_sltiu_xori_ori_andi),
        .I2(\reg_op2[31]_i_1_n_0 ),
        .I3(is_sb_sh_sw),
        .I4(is_lb_lh_lw_lbu_lhu),
        .I5(\cpu_state[3]_i_2_n_0 ),
        .O(cpu_state0_out[3]));
  LUT6 #(
    .INIT(64'h0000000040000000)) 
    \cpu_state[3]_i_2 
       (.I0(is_sll_srl_sra),
        .I1(\cpu_state[7]_i_6_n_0 ),
        .I2(\cpu_state[6]_i_2_n_0 ),
        .I3(resetn_IBUF),
        .I4(\cpu_state_reg_n_0_[5] ),
        .I5(is_slli_srli_srai),
        .O(\cpu_state[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cpu_state[5]_i_1 
       (.I0(resetn_IBUF),
        .I1(reg_next_pc),
        .O(cpu_state0_out[5]));
  LUT5 #(
    .INIT(32'hFFFFFFF1)) 
    \cpu_state[6]_i_1 
       (.I0(\cpu_state[6]_i_2_n_0 ),
        .I1(reg_next_pc),
        .I2(\cpu_state_reg_n_0_[2] ),
        .I3(\cpu_state_reg_n_0_[3] ),
        .I4(\cpu_state[6]_i_3_n_0 ),
        .O(cpu_state0_out[6]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \cpu_state[6]_i_2 
       (.I0(instr_rdcycle),
        .I1(instr_rdinstr),
        .I2(instr_rdinstrh),
        .I3(instr_rdcycleh),
        .O(\cpu_state[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \cpu_state[6]_i_3 
       (.I0(\cpu_state_reg_n_0_[0] ),
        .I1(\cpu_state_reg_n_0_[1] ),
        .I2(resetn_IBUF),
        .O(\cpu_state[6]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hA888)) 
    \cpu_state[7]_i_1 
       (.I0(resetn_IBUF),
        .I1(\cpu_state[7]_i_4_n_0 ),
        .I2(mem_do_rinst_reg_n_0),
        .I3(\reg_pc_reg_n_0_[1] ),
        .O(\cpu_state[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \cpu_state[7]_i_10 
       (.I0(instr_bge),
        .I1(instr_sw),
        .I2(instr_sh),
        .I3(instr_or),
        .I4(\cpu_state[7]_i_14_n_0 ),
        .O(\cpu_state[7]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \cpu_state[7]_i_11 
       (.I0(\cpu_state[7]_i_15_n_0 ),
        .I1(\cpu_state[7]_i_16_n_0 ),
        .I2(\cpu_state[7]_i_17_n_0 ),
        .I3(instr_addi),
        .I4(instr_bltu),
        .I5(instr_rdcycle),
        .O(\cpu_state[7]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \cpu_state[7]_i_12 
       (.I0(instr_sll),
        .I1(instr_slli),
        .O(\cpu_state[7]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \cpu_state[7]_i_13 
       (.I0(instr_sub),
        .I1(instr_add),
        .O(\cpu_state[7]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \cpu_state[7]_i_14 
       (.I0(instr_sra),
        .I1(instr_srai),
        .I2(instr_blt),
        .I3(instr_xor),
        .O(\cpu_state[7]_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \cpu_state[7]_i_15 
       (.I0(instr_sb),
        .I1(instr_and),
        .I2(instr_lw),
        .I3(instr_srl),
        .O(\cpu_state[7]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \cpu_state[7]_i_16 
       (.I0(instr_andi),
        .I1(instr_srli),
        .I2(instr_xori),
        .I3(instr_beq),
        .O(\cpu_state[7]_i_16_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \cpu_state[7]_i_17 
       (.I0(instr_jalr),
        .I1(instr_ori),
        .I2(instr_bne),
        .I3(instr_bgeu),
        .O(\cpu_state[7]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFF00FF54FF00)) 
    \cpu_state[7]_i_2 
       (.I0(mem_do_prefetch_reg_n_0),
        .I1(\cpu_state_reg_n_0_[0] ),
        .I2(\cpu_state_reg_n_0_[1] ),
        .I3(\cpu_state[7]_i_5_n_0 ),
        .I4(instr_jal_i_3_n_0),
        .I5(\cpu_state_reg_n_0_[3] ),
        .O(\cpu_state[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \cpu_state[7]_i_3 
       (.I0(\cpu_state_reg_n_0_[5] ),
        .I1(resetn_IBUF),
        .I2(\cpu_state[7]_i_6_n_0 ),
        .O(cpu_state0_out[7]));
  LUT6 #(
    .INIT(64'h3310331033100000)) 
    \cpu_state[7]_i_4 
       (.I0(\mem_wordsize_reg_n_0_[0] ),
        .I1(\mem_wordsize_reg_n_0_[1] ),
        .I2(\reg_op1_reg_n_0_[1] ),
        .I3(\reg_op1_reg_n_0_[0] ),
        .I4(mem_do_rdata),
        .I5(mem_do_wdata),
        .O(\cpu_state[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFDFFFDFFFFFFFDF)) 
    \cpu_state[7]_i_5 
       (.I0(\reg_sh[4]_i_3_n_0 ),
        .I1(\cpu_state[7]_i_7_n_0 ),
        .I2(resetn_IBUF),
        .I3(\cpu_state_reg_n_0_[5] ),
        .I4(count_instr),
        .I5(instr_jal),
        .O(\cpu_state[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \cpu_state[7]_i_6 
       (.I0(is_lui_auipc_jal_i_1_n_0),
        .I1(\cpu_state[7]_i_8_n_0 ),
        .I2(is_compare_i_2_n_0),
        .I3(\cpu_state[7]_i_9_n_0 ),
        .I4(\cpu_state[7]_i_10_n_0 ),
        .I5(\cpu_state[7]_i_11_n_0 ),
        .O(\cpu_state[7]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cpu_state[7]_i_7 
       (.I0(\cpu_state_reg_n_0_[3] ),
        .I1(is_beq_bne_blt_bge_bltu_bgeu),
        .O(\cpu_state[7]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \cpu_state[7]_i_8 
       (.I0(instr_rdcycleh),
        .I1(instr_rdinstrh),
        .I2(instr_rdinstr),
        .O(\cpu_state[7]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFEFFFF)) 
    \cpu_state[7]_i_9 
       (.I0(instr_lbu),
        .I1(instr_lb),
        .I2(instr_lhu),
        .I3(instr_lh),
        .I4(\cpu_state[7]_i_12_n_0 ),
        .I5(\cpu_state[7]_i_13_n_0 ),
        .O(\cpu_state[7]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cpu_state_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\cpu_state[7]_i_2_n_0 ),
        .D(cpu_state0_out[0]),
        .Q(\cpu_state_reg_n_0_[0] ),
        .R(\cpu_state[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cpu_state_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\cpu_state[7]_i_2_n_0 ),
        .D(cpu_state0_out[1]),
        .Q(\cpu_state_reg_n_0_[1] ),
        .R(\cpu_state[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cpu_state_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\cpu_state[7]_i_2_n_0 ),
        .D(cpu_state0_out[2]),
        .Q(\cpu_state_reg_n_0_[2] ),
        .R(\cpu_state[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cpu_state_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\cpu_state[7]_i_2_n_0 ),
        .D(cpu_state0_out[3]),
        .Q(\cpu_state_reg_n_0_[3] ),
        .R(\cpu_state[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cpu_state_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\cpu_state[7]_i_2_n_0 ),
        .D(cpu_state0_out[5]),
        .Q(\cpu_state_reg_n_0_[5] ),
        .R(\cpu_state[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cpu_state_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\cpu_state[7]_i_2_n_0 ),
        .D(cpu_state0_out[6]),
        .Q(reg_next_pc),
        .R(\cpu_state[7]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \cpu_state_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\cpu_state[7]_i_2_n_0 ),
        .D(cpu_state0_out[7]),
        .Q(\cpu_state_reg_n_0_[7] ),
        .S(\cpu_state[7]_i_1_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "picorv32_core/cpuregs" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "5" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    cpuregs_reg_r1_0_31_0_5
       (.ADDRA(decoded_rs2),
        .ADDRB(decoded_rs2),
        .ADDRC(decoded_rs2),
        .ADDRD(latched_rd),
        .DIA({cpuregs_reg_r1_0_31_0_5_i_2_n_0,cpuregs_reg_r1_0_31_0_5_i_3_n_0}),
        .DIB({cpuregs_reg_r1_0_31_0_5_i_4_n_0,cpuregs_reg_r1_0_31_0_5_i_5_n_0}),
        .DIC({cpuregs_reg_r1_0_31_0_5_i_6_n_0,cpuregs_reg_r1_0_31_0_5_i_7_n_0}),
        .DID({1'b0,1'b0}),
        .DOA(reg_sh1[1:0]),
        .DOB(reg_sh1[3:2]),
        .DOC(reg_sh1[5:4]),
        .DOD(NLW_cpuregs_reg_r1_0_31_0_5_DOD_UNCONNECTED[1:0]),
        .WCLK(clk_IBUF_BUFG),
        .WE(cpuregs_reg_r1_0_31_0_5_i_1_n_0));
  LUT6 #(
    .INIT(64'h00000000FFFFFFFE)) 
    cpuregs_reg_r1_0_31_0_5_i_1
       (.I0(latched_rd[1]),
        .I1(latched_rd[3]),
        .I2(latched_rd[4]),
        .I3(latched_rd[2]),
        .I4(latched_rd[0]),
        .I5(cpuregs_reg_r1_0_31_0_5_i_8_n_0),
        .O(cpuregs_reg_r1_0_31_0_5_i_1_n_0));
  LUT6 #(
    .INIT(64'hE2E2C0C0F3C0C0C0)) 
    cpuregs_reg_r1_0_31_0_5_i_2
       (.I0(alu_out_q[1]),
        .I1(latched_branch_reg_n_0),
        .I2(p_1_out_carry_n_6),
        .I3(\reg_out_reg_n_0_[1] ),
        .I4(latched_store_reg_n_0),
        .I5(latched_stalu_reg_n_0),
        .O(cpuregs_reg_r1_0_31_0_5_i_2_n_0));
  LUT5 #(
    .INIT(32'h00B00080)) 
    cpuregs_reg_r1_0_31_0_5_i_3
       (.I0(alu_out_q[0]),
        .I1(latched_stalu_reg_n_0),
        .I2(latched_store_reg_n_0),
        .I3(latched_branch_reg_n_0),
        .I4(\reg_out_reg_n_0_[0] ),
        .O(cpuregs_reg_r1_0_31_0_5_i_3_n_0));
  LUT6 #(
    .INIT(64'hE2E2C0C0F3C0C0C0)) 
    cpuregs_reg_r1_0_31_0_5_i_4
       (.I0(alu_out_q[3]),
        .I1(latched_branch_reg_n_0),
        .I2(p_1_out_carry_n_4),
        .I3(\reg_out_reg_n_0_[3] ),
        .I4(latched_store_reg_n_0),
        .I5(latched_stalu_reg_n_0),
        .O(cpuregs_reg_r1_0_31_0_5_i_4_n_0));
  LUT6 #(
    .INIT(64'hF3C0E2E2C0C0C0C0)) 
    cpuregs_reg_r1_0_31_0_5_i_5
       (.I0(\reg_out_reg_n_0_[2] ),
        .I1(latched_branch_reg_n_0),
        .I2(p_1_out_carry_n_5),
        .I3(alu_out_q[2]),
        .I4(latched_stalu_reg_n_0),
        .I5(latched_store_reg_n_0),
        .O(cpuregs_reg_r1_0_31_0_5_i_5_n_0));
  LUT6 #(
    .INIT(64'hFFCAFF0000CA0000)) 
    cpuregs_reg_r1_0_31_0_5_i_6
       (.I0(\reg_out_reg_n_0_[5] ),
        .I1(alu_out_q[5]),
        .I2(latched_stalu_reg_n_0),
        .I3(latched_branch_reg_n_0),
        .I4(latched_store_reg_n_0),
        .I5(p_1_out_carry__0_n_6),
        .O(cpuregs_reg_r1_0_31_0_5_i_6_n_0));
  LUT6 #(
    .INIT(64'hE2E2C0C0F3C0C0C0)) 
    cpuregs_reg_r1_0_31_0_5_i_7
       (.I0(alu_out_q[4]),
        .I1(latched_branch_reg_n_0),
        .I2(p_1_out_carry__0_n_7),
        .I3(\reg_out_reg_n_0_[4] ),
        .I4(latched_store_reg_n_0),
        .I5(latched_stalu_reg_n_0),
        .O(cpuregs_reg_r1_0_31_0_5_i_7_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFBFBFBFF)) 
    cpuregs_reg_r1_0_31_0_5_i_8
       (.I0(cpuregs_reg_r1_0_31_0_5_i_9_n_0),
        .I1(reg_next_pc),
        .I2(\cpu_state_reg_n_0_[3] ),
        .I3(latched_branch_reg_n_0),
        .I4(latched_store_reg_n_0),
        .I5(\cpu_state[6]_i_3_n_0 ),
        .O(cpuregs_reg_r1_0_31_0_5_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    cpuregs_reg_r1_0_31_0_5_i_9
       (.I0(\cpu_state_reg_n_0_[7] ),
        .I1(\cpu_state_reg_n_0_[2] ),
        .I2(\cpu_state_reg_n_0_[5] ),
        .O(cpuregs_reg_r1_0_31_0_5_i_9_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "picorv32_core/cpuregs" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "17" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    cpuregs_reg_r1_0_31_12_17
       (.ADDRA(decoded_rs2),
        .ADDRB(decoded_rs2),
        .ADDRC(decoded_rs2),
        .ADDRD(latched_rd),
        .DIA({cpuregs_reg_r1_0_31_12_17_i_1_n_0,cpuregs_reg_r1_0_31_12_17_i_2_n_0}),
        .DIB({cpuregs_reg_r1_0_31_12_17_i_3_n_0,cpuregs_reg_r1_0_31_12_17_i_4_n_0}),
        .DIC({cpuregs_reg_r1_0_31_12_17_i_5_n_0,cpuregs_reg_r1_0_31_12_17_i_6_n_0}),
        .DID({1'b0,1'b0}),
        .DOA(reg_sh1[13:12]),
        .DOB(reg_sh1[15:14]),
        .DOC(reg_sh1[17:16]),
        .DOD(NLW_cpuregs_reg_r1_0_31_12_17_DOD_UNCONNECTED[1:0]),
        .WCLK(clk_IBUF_BUFG),
        .WE(cpuregs_reg_r1_0_31_0_5_i_1_n_0));
  LUT6 #(
    .INIT(64'hF3C0E2E2C0C0C0C0)) 
    cpuregs_reg_r1_0_31_12_17_i_1
       (.I0(\reg_out_reg_n_0_[13] ),
        .I1(latched_branch_reg_n_0),
        .I2(p_1_out_carry__2_n_6),
        .I3(alu_out_q[13]),
        .I4(latched_stalu_reg_n_0),
        .I5(latched_store_reg_n_0),
        .O(cpuregs_reg_r1_0_31_12_17_i_1_n_0));
  LUT6 #(
    .INIT(64'hE2E2C0C0F3C0C0C0)) 
    cpuregs_reg_r1_0_31_12_17_i_2
       (.I0(alu_out_q[12]),
        .I1(latched_branch_reg_n_0),
        .I2(p_1_out_carry__2_n_7),
        .I3(\reg_out_reg_n_0_[12] ),
        .I4(latched_store_reg_n_0),
        .I5(latched_stalu_reg_n_0),
        .O(cpuregs_reg_r1_0_31_12_17_i_2_n_0));
  LUT6 #(
    .INIT(64'hE2E2C0C0F3C0C0C0)) 
    cpuregs_reg_r1_0_31_12_17_i_3
       (.I0(alu_out_q[15]),
        .I1(latched_branch_reg_n_0),
        .I2(p_1_out_carry__2_n_4),
        .I3(\reg_out_reg_n_0_[15] ),
        .I4(latched_store_reg_n_0),
        .I5(latched_stalu_reg_n_0),
        .O(cpuregs_reg_r1_0_31_12_17_i_3_n_0));
  LUT6 #(
    .INIT(64'hE2E2C0C0F3C0C0C0)) 
    cpuregs_reg_r1_0_31_12_17_i_4
       (.I0(alu_out_q[14]),
        .I1(latched_branch_reg_n_0),
        .I2(p_1_out_carry__2_n_5),
        .I3(\reg_out_reg_n_0_[14] ),
        .I4(latched_store_reg_n_0),
        .I5(latched_stalu_reg_n_0),
        .O(cpuregs_reg_r1_0_31_12_17_i_4_n_0));
  LUT6 #(
    .INIT(64'hFFCAFF0000CA0000)) 
    cpuregs_reg_r1_0_31_12_17_i_5
       (.I0(\reg_out_reg_n_0_[17] ),
        .I1(alu_out_q[17]),
        .I2(latched_stalu_reg_n_0),
        .I3(latched_branch_reg_n_0),
        .I4(latched_store_reg_n_0),
        .I5(p_1_out_carry__3_n_6),
        .O(cpuregs_reg_r1_0_31_12_17_i_5_n_0));
  LUT6 #(
    .INIT(64'hFFCAFF0000CA0000)) 
    cpuregs_reg_r1_0_31_12_17_i_6
       (.I0(\reg_out_reg_n_0_[16] ),
        .I1(alu_out_q[16]),
        .I2(latched_stalu_reg_n_0),
        .I3(latched_branch_reg_n_0),
        .I4(latched_store_reg_n_0),
        .I5(p_1_out_carry__3_n_7),
        .O(cpuregs_reg_r1_0_31_12_17_i_6_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "picorv32_core/cpuregs" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "18" *) 
  (* ram_slice_end = "23" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    cpuregs_reg_r1_0_31_18_23
       (.ADDRA(decoded_rs2),
        .ADDRB(decoded_rs2),
        .ADDRC(decoded_rs2),
        .ADDRD(latched_rd),
        .DIA({cpuregs_reg_r1_0_31_18_23_i_1_n_0,cpuregs_reg_r1_0_31_18_23_i_2_n_0}),
        .DIB({cpuregs_reg_r1_0_31_18_23_i_3_n_0,cpuregs_reg_r1_0_31_18_23_i_4_n_0}),
        .DIC({cpuregs_reg_r1_0_31_18_23_i_5_n_0,cpuregs_reg_r1_0_31_18_23_i_6_n_0}),
        .DID({1'b0,1'b0}),
        .DOA(reg_sh1[19:18]),
        .DOB(reg_sh1[21:20]),
        .DOC(reg_sh1[23:22]),
        .DOD(NLW_cpuregs_reg_r1_0_31_18_23_DOD_UNCONNECTED[1:0]),
        .WCLK(clk_IBUF_BUFG),
        .WE(cpuregs_reg_r1_0_31_0_5_i_1_n_0));
  LUT6 #(
    .INIT(64'hE2E2C0C0F3C0C0C0)) 
    cpuregs_reg_r1_0_31_18_23_i_1
       (.I0(alu_out_q[19]),
        .I1(latched_branch_reg_n_0),
        .I2(p_1_out_carry__3_n_4),
        .I3(\reg_out_reg_n_0_[19] ),
        .I4(latched_store_reg_n_0),
        .I5(latched_stalu_reg_n_0),
        .O(cpuregs_reg_r1_0_31_18_23_i_1_n_0));
  LUT6 #(
    .INIT(64'hF3C0E2E2C0C0C0C0)) 
    cpuregs_reg_r1_0_31_18_23_i_2
       (.I0(\reg_out_reg_n_0_[18] ),
        .I1(latched_branch_reg_n_0),
        .I2(p_1_out_carry__3_n_5),
        .I3(alu_out_q[18]),
        .I4(latched_stalu_reg_n_0),
        .I5(latched_store_reg_n_0),
        .O(cpuregs_reg_r1_0_31_18_23_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFCAFF0000CA0000)) 
    cpuregs_reg_r1_0_31_18_23_i_3
       (.I0(\reg_out_reg_n_0_[21] ),
        .I1(alu_out_q[21]),
        .I2(latched_stalu_reg_n_0),
        .I3(latched_branch_reg_n_0),
        .I4(latched_store_reg_n_0),
        .I5(p_1_out_carry__4_n_6),
        .O(cpuregs_reg_r1_0_31_18_23_i_3_n_0));
  LUT6 #(
    .INIT(64'hE2E2C0C0F3C0C0C0)) 
    cpuregs_reg_r1_0_31_18_23_i_4
       (.I0(alu_out_q[20]),
        .I1(latched_branch_reg_n_0),
        .I2(p_1_out_carry__4_n_7),
        .I3(\reg_out_reg_n_0_[20] ),
        .I4(latched_store_reg_n_0),
        .I5(latched_stalu_reg_n_0),
        .O(cpuregs_reg_r1_0_31_18_23_i_4_n_0));
  LUT6 #(
    .INIT(64'hF3C0E2E2C0C0C0C0)) 
    cpuregs_reg_r1_0_31_18_23_i_5
       (.I0(\reg_out_reg_n_0_[23] ),
        .I1(latched_branch_reg_n_0),
        .I2(p_1_out_carry__4_n_4),
        .I3(alu_out_q[23]),
        .I4(latched_stalu_reg_n_0),
        .I5(latched_store_reg_n_0),
        .O(cpuregs_reg_r1_0_31_18_23_i_5_n_0));
  LUT6 #(
    .INIT(64'hFFCAFF0000CA0000)) 
    cpuregs_reg_r1_0_31_18_23_i_6
       (.I0(\reg_out_reg_n_0_[22] ),
        .I1(alu_out_q[22]),
        .I2(latched_stalu_reg_n_0),
        .I3(latched_branch_reg_n_0),
        .I4(latched_store_reg_n_0),
        .I5(p_1_out_carry__4_n_5),
        .O(cpuregs_reg_r1_0_31_18_23_i_6_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "picorv32_core/cpuregs" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "24" *) 
  (* ram_slice_end = "29" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    cpuregs_reg_r1_0_31_24_29
       (.ADDRA(decoded_rs2),
        .ADDRB(decoded_rs2),
        .ADDRC(decoded_rs2),
        .ADDRD(latched_rd),
        .DIA({cpuregs_reg_r1_0_31_24_29_i_1_n_0,cpuregs_reg_r1_0_31_24_29_i_2_n_0}),
        .DIB({cpuregs_reg_r1_0_31_24_29_i_3_n_0,cpuregs_reg_r1_0_31_24_29_i_4_n_0}),
        .DIC({cpuregs_reg_r1_0_31_24_29_i_5_n_0,cpuregs_reg_r1_0_31_24_29_i_6_n_0}),
        .DID({1'b0,1'b0}),
        .DOA(reg_sh1[25:24]),
        .DOB(reg_sh1[27:26]),
        .DOC(reg_sh1[29:28]),
        .DOD(NLW_cpuregs_reg_r1_0_31_24_29_DOD_UNCONNECTED[1:0]),
        .WCLK(clk_IBUF_BUFG),
        .WE(cpuregs_reg_r1_0_31_0_5_i_1_n_0));
  LUT6 #(
    .INIT(64'hE2E2C0C0F3C0C0C0)) 
    cpuregs_reg_r1_0_31_24_29_i_1
       (.I0(alu_out_q[25]),
        .I1(latched_branch_reg_n_0),
        .I2(p_1_out_carry__5_n_6),
        .I3(\reg_out_reg_n_0_[25] ),
        .I4(latched_store_reg_n_0),
        .I5(latched_stalu_reg_n_0),
        .O(cpuregs_reg_r1_0_31_24_29_i_1_n_0));
  LUT6 #(
    .INIT(64'hF3C0E2E2C0C0C0C0)) 
    cpuregs_reg_r1_0_31_24_29_i_2
       (.I0(\reg_out_reg_n_0_[24] ),
        .I1(latched_branch_reg_n_0),
        .I2(p_1_out_carry__5_n_7),
        .I3(alu_out_q[24]),
        .I4(latched_stalu_reg_n_0),
        .I5(latched_store_reg_n_0),
        .O(cpuregs_reg_r1_0_31_24_29_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFCAFF0000CA0000)) 
    cpuregs_reg_r1_0_31_24_29_i_3
       (.I0(\reg_out_reg_n_0_[27] ),
        .I1(alu_out_q[27]),
        .I2(latched_stalu_reg_n_0),
        .I3(latched_branch_reg_n_0),
        .I4(latched_store_reg_n_0),
        .I5(p_1_out_carry__5_n_4),
        .O(cpuregs_reg_r1_0_31_24_29_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFCAFF0000CA0000)) 
    cpuregs_reg_r1_0_31_24_29_i_4
       (.I0(\reg_out_reg_n_0_[26] ),
        .I1(alu_out_q[26]),
        .I2(latched_stalu_reg_n_0),
        .I3(latched_branch_reg_n_0),
        .I4(latched_store_reg_n_0),
        .I5(p_1_out_carry__5_n_5),
        .O(cpuregs_reg_r1_0_31_24_29_i_4_n_0));
  LUT6 #(
    .INIT(64'hF3C0E2E2C0C0C0C0)) 
    cpuregs_reg_r1_0_31_24_29_i_5
       (.I0(\reg_out_reg_n_0_[29] ),
        .I1(latched_branch_reg_n_0),
        .I2(p_1_out_carry__6_n_6),
        .I3(alu_out_q[29]),
        .I4(latched_stalu_reg_n_0),
        .I5(latched_store_reg_n_0),
        .O(cpuregs_reg_r1_0_31_24_29_i_5_n_0));
  LUT6 #(
    .INIT(64'hFFCAFF0000CA0000)) 
    cpuregs_reg_r1_0_31_24_29_i_6
       (.I0(\reg_out_reg_n_0_[28] ),
        .I1(alu_out_q[28]),
        .I2(latched_stalu_reg_n_0),
        .I3(latched_branch_reg_n_0),
        .I4(latched_store_reg_n_0),
        .I5(p_1_out_carry__6_n_7),
        .O(cpuregs_reg_r1_0_31_24_29_i_6_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "picorv32_core/cpuregs" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "30" *) 
  (* ram_slice_end = "31" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    cpuregs_reg_r1_0_31_30_31
       (.ADDRA(decoded_rs2),
        .ADDRB(decoded_rs2),
        .ADDRC(decoded_rs2),
        .ADDRD(latched_rd),
        .DIA({cpuregs_reg_r1_0_31_30_31_i_1_n_0,cpuregs_reg_r1_0_31_30_31_i_2_n_0}),
        .DIB({1'b0,1'b0}),
        .DIC({1'b0,1'b0}),
        .DID({1'b0,1'b0}),
        .DOA(reg_sh1[31:30]),
        .DOB(NLW_cpuregs_reg_r1_0_31_30_31_DOB_UNCONNECTED[1:0]),
        .DOC(NLW_cpuregs_reg_r1_0_31_30_31_DOC_UNCONNECTED[1:0]),
        .DOD(NLW_cpuregs_reg_r1_0_31_30_31_DOD_UNCONNECTED[1:0]),
        .WCLK(clk_IBUF_BUFG),
        .WE(cpuregs_reg_r1_0_31_0_5_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFCAFF0000CA0000)) 
    cpuregs_reg_r1_0_31_30_31_i_1
       (.I0(\reg_out_reg_n_0_[31] ),
        .I1(alu_out_q[31]),
        .I2(latched_stalu_reg_n_0),
        .I3(latched_branch_reg_n_0),
        .I4(latched_store_reg_n_0),
        .I5(p_1_out_carry__6_n_4),
        .O(cpuregs_reg_r1_0_31_30_31_i_1_n_0));
  LUT6 #(
    .INIT(64'hE2E2C0C0F3C0C0C0)) 
    cpuregs_reg_r1_0_31_30_31_i_2
       (.I0(alu_out_q[30]),
        .I1(latched_branch_reg_n_0),
        .I2(p_1_out_carry__6_n_5),
        .I3(\reg_out_reg_n_0_[30] ),
        .I4(latched_store_reg_n_0),
        .I5(latched_stalu_reg_n_0),
        .O(cpuregs_reg_r1_0_31_30_31_i_2_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "picorv32_core/cpuregs" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "11" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    cpuregs_reg_r1_0_31_6_11
       (.ADDRA(decoded_rs2),
        .ADDRB(decoded_rs2),
        .ADDRC(decoded_rs2),
        .ADDRD(latched_rd),
        .DIA({cpuregs_reg_r1_0_31_6_11_i_1_n_0,cpuregs_reg_r1_0_31_6_11_i_2_n_0}),
        .DIB({cpuregs_reg_r1_0_31_6_11_i_3_n_0,cpuregs_reg_r1_0_31_6_11_i_4_n_0}),
        .DIC({cpuregs_reg_r1_0_31_6_11_i_5_n_0,cpuregs_reg_r1_0_31_6_11_i_6_n_0}),
        .DID({1'b0,1'b0}),
        .DOA(reg_sh1[7:6]),
        .DOB(reg_sh1[9:8]),
        .DOC(reg_sh1[11:10]),
        .DOD(NLW_cpuregs_reg_r1_0_31_6_11_DOD_UNCONNECTED[1:0]),
        .WCLK(clk_IBUF_BUFG),
        .WE(cpuregs_reg_r1_0_31_0_5_i_1_n_0));
  LUT6 #(
    .INIT(64'hE2E2C0C0F3C0C0C0)) 
    cpuregs_reg_r1_0_31_6_11_i_1
       (.I0(alu_out_q[7]),
        .I1(latched_branch_reg_n_0),
        .I2(p_1_out_carry__0_n_4),
        .I3(\reg_out_reg_n_0_[7] ),
        .I4(latched_store_reg_n_0),
        .I5(latched_stalu_reg_n_0),
        .O(cpuregs_reg_r1_0_31_6_11_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFCAFF0000CA0000)) 
    cpuregs_reg_r1_0_31_6_11_i_2
       (.I0(\reg_out_reg_n_0_[6] ),
        .I1(alu_out_q[6]),
        .I2(latched_stalu_reg_n_0),
        .I3(latched_branch_reg_n_0),
        .I4(latched_store_reg_n_0),
        .I5(p_1_out_carry__0_n_5),
        .O(cpuregs_reg_r1_0_31_6_11_i_2_n_0));
  LUT6 #(
    .INIT(64'hE2E2C0C0F3C0C0C0)) 
    cpuregs_reg_r1_0_31_6_11_i_3
       (.I0(alu_out_q[9]),
        .I1(latched_branch_reg_n_0),
        .I2(p_1_out_carry__1_n_6),
        .I3(\reg_out_reg_n_0_[9] ),
        .I4(latched_store_reg_n_0),
        .I5(latched_stalu_reg_n_0),
        .O(cpuregs_reg_r1_0_31_6_11_i_3_n_0));
  LUT6 #(
    .INIT(64'hE2E2C0C0F3C0C0C0)) 
    cpuregs_reg_r1_0_31_6_11_i_4
       (.I0(alu_out_q[8]),
        .I1(latched_branch_reg_n_0),
        .I2(p_1_out_carry__1_n_7),
        .I3(\reg_out_reg_n_0_[8] ),
        .I4(latched_store_reg_n_0),
        .I5(latched_stalu_reg_n_0),
        .O(cpuregs_reg_r1_0_31_6_11_i_4_n_0));
  LUT6 #(
    .INIT(64'hFFCAFF0000CA0000)) 
    cpuregs_reg_r1_0_31_6_11_i_5
       (.I0(\reg_out_reg_n_0_[11] ),
        .I1(alu_out_q[11]),
        .I2(latched_stalu_reg_n_0),
        .I3(latched_branch_reg_n_0),
        .I4(latched_store_reg_n_0),
        .I5(p_1_out_carry__1_n_4),
        .O(cpuregs_reg_r1_0_31_6_11_i_5_n_0));
  LUT6 #(
    .INIT(64'hE2E2C0C0F3C0C0C0)) 
    cpuregs_reg_r1_0_31_6_11_i_6
       (.I0(alu_out_q[10]),
        .I1(latched_branch_reg_n_0),
        .I2(p_1_out_carry__1_n_5),
        .I3(\reg_out_reg_n_0_[10] ),
        .I4(latched_store_reg_n_0),
        .I5(latched_stalu_reg_n_0),
        .O(cpuregs_reg_r1_0_31_6_11_i_6_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "picorv32_core/cpuregs" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "5" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    cpuregs_reg_r2_0_31_0_5
       (.ADDRA(decoded_rs1),
        .ADDRB(decoded_rs1),
        .ADDRC(decoded_rs1),
        .ADDRD(latched_rd),
        .DIA({cpuregs_reg_r1_0_31_0_5_i_2_n_0,cpuregs_reg_r1_0_31_0_5_i_3_n_0}),
        .DIB({cpuregs_reg_r1_0_31_0_5_i_4_n_0,cpuregs_reg_r1_0_31_0_5_i_5_n_0}),
        .DIC({cpuregs_reg_r1_0_31_0_5_i_6_n_0,cpuregs_reg_r1_0_31_0_5_i_7_n_0}),
        .DID({1'b0,1'b0}),
        .DOA(reg_out1[1:0]),
        .DOB(reg_out1[3:2]),
        .DOC(reg_out1[5:4]),
        .DOD(NLW_cpuregs_reg_r2_0_31_0_5_DOD_UNCONNECTED[1:0]),
        .WCLK(clk_IBUF_BUFG),
        .WE(cpuregs_reg_r1_0_31_0_5_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "picorv32_core/cpuregs" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "17" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    cpuregs_reg_r2_0_31_12_17
       (.ADDRA(decoded_rs1),
        .ADDRB(decoded_rs1),
        .ADDRC(decoded_rs1),
        .ADDRD(latched_rd),
        .DIA({cpuregs_reg_r1_0_31_12_17_i_1_n_0,cpuregs_reg_r1_0_31_12_17_i_2_n_0}),
        .DIB({cpuregs_reg_r1_0_31_12_17_i_3_n_0,cpuregs_reg_r1_0_31_12_17_i_4_n_0}),
        .DIC({cpuregs_reg_r1_0_31_12_17_i_5_n_0,cpuregs_reg_r1_0_31_12_17_i_6_n_0}),
        .DID({1'b0,1'b0}),
        .DOA(reg_out1[13:12]),
        .DOB(reg_out1[15:14]),
        .DOC(reg_out1[17:16]),
        .DOD(NLW_cpuregs_reg_r2_0_31_12_17_DOD_UNCONNECTED[1:0]),
        .WCLK(clk_IBUF_BUFG),
        .WE(cpuregs_reg_r1_0_31_0_5_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "picorv32_core/cpuregs" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "18" *) 
  (* ram_slice_end = "23" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    cpuregs_reg_r2_0_31_18_23
       (.ADDRA(decoded_rs1),
        .ADDRB(decoded_rs1),
        .ADDRC(decoded_rs1),
        .ADDRD(latched_rd),
        .DIA({cpuregs_reg_r1_0_31_18_23_i_1_n_0,cpuregs_reg_r1_0_31_18_23_i_2_n_0}),
        .DIB({cpuregs_reg_r1_0_31_18_23_i_3_n_0,cpuregs_reg_r1_0_31_18_23_i_4_n_0}),
        .DIC({cpuregs_reg_r1_0_31_18_23_i_5_n_0,cpuregs_reg_r1_0_31_18_23_i_6_n_0}),
        .DID({1'b0,1'b0}),
        .DOA(reg_out1[19:18]),
        .DOB(reg_out1[21:20]),
        .DOC(reg_out1[23:22]),
        .DOD(NLW_cpuregs_reg_r2_0_31_18_23_DOD_UNCONNECTED[1:0]),
        .WCLK(clk_IBUF_BUFG),
        .WE(cpuregs_reg_r1_0_31_0_5_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "picorv32_core/cpuregs" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "24" *) 
  (* ram_slice_end = "29" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    cpuregs_reg_r2_0_31_24_29
       (.ADDRA(decoded_rs1),
        .ADDRB(decoded_rs1),
        .ADDRC(decoded_rs1),
        .ADDRD(latched_rd),
        .DIA({cpuregs_reg_r1_0_31_24_29_i_1_n_0,cpuregs_reg_r1_0_31_24_29_i_2_n_0}),
        .DIB({cpuregs_reg_r1_0_31_24_29_i_3_n_0,cpuregs_reg_r1_0_31_24_29_i_4_n_0}),
        .DIC({cpuregs_reg_r1_0_31_24_29_i_5_n_0,cpuregs_reg_r1_0_31_24_29_i_6_n_0}),
        .DID({1'b0,1'b0}),
        .DOA(reg_out1[25:24]),
        .DOB(reg_out1[27:26]),
        .DOC(reg_out1[29:28]),
        .DOD(NLW_cpuregs_reg_r2_0_31_24_29_DOD_UNCONNECTED[1:0]),
        .WCLK(clk_IBUF_BUFG),
        .WE(cpuregs_reg_r1_0_31_0_5_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "picorv32_core/cpuregs" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "30" *) 
  (* ram_slice_end = "31" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    cpuregs_reg_r2_0_31_30_31
       (.ADDRA(decoded_rs1),
        .ADDRB(decoded_rs1),
        .ADDRC(decoded_rs1),
        .ADDRD(latched_rd),
        .DIA({cpuregs_reg_r1_0_31_30_31_i_1_n_0,cpuregs_reg_r1_0_31_30_31_i_2_n_0}),
        .DIB({1'b0,1'b0}),
        .DIC({1'b0,1'b0}),
        .DID({1'b0,1'b0}),
        .DOA(reg_out1[31:30]),
        .DOB(NLW_cpuregs_reg_r2_0_31_30_31_DOB_UNCONNECTED[1:0]),
        .DOC(NLW_cpuregs_reg_r2_0_31_30_31_DOC_UNCONNECTED[1:0]),
        .DOD(NLW_cpuregs_reg_r2_0_31_30_31_DOD_UNCONNECTED[1:0]),
        .WCLK(clk_IBUF_BUFG),
        .WE(cpuregs_reg_r1_0_31_0_5_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "picorv32_core/cpuregs" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "11" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    cpuregs_reg_r2_0_31_6_11
       (.ADDRA(decoded_rs1),
        .ADDRB(decoded_rs1),
        .ADDRC(decoded_rs1),
        .ADDRD(latched_rd),
        .DIA({cpuregs_reg_r1_0_31_6_11_i_1_n_0,cpuregs_reg_r1_0_31_6_11_i_2_n_0}),
        .DIB({cpuregs_reg_r1_0_31_6_11_i_3_n_0,cpuregs_reg_r1_0_31_6_11_i_4_n_0}),
        .DIC({cpuregs_reg_r1_0_31_6_11_i_5_n_0,cpuregs_reg_r1_0_31_6_11_i_6_n_0}),
        .DID({1'b0,1'b0}),
        .DOA(reg_out1[7:6]),
        .DOB(reg_out1[9:8]),
        .DOC(reg_out1[11:10]),
        .DOD(NLW_cpuregs_reg_r2_0_31_6_11_DOD_UNCONNECTED[1:0]),
        .WCLK(clk_IBUF_BUFG),
        .WE(cpuregs_reg_r1_0_31_0_5_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFE00FE00FE00)) 
    \decoded_imm[0]_i_1 
       (.I0(is_lb_lh_lw_lbu_lhu),
        .I1(instr_jalr),
        .I2(is_alu_reg_imm),
        .I3(\mem_rdata_q_reg_n_0_[20] ),
        .I4(\mem_rdata_q_reg_n_0_[7] ),
        .I5(is_sb_sh_sw),
        .O(\decoded_imm[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8F88)) 
    \decoded_imm[10]_i_1 
       (.I0(decoded_imm_uj[10]),
        .I1(instr_jal),
        .I2(\decoded_imm[10]_i_2_n_0 ),
        .I3(\mem_rdata_q_reg_n_0_[30] ),
        .O(\decoded_imm[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \decoded_imm[10]_i_2 
       (.I0(is_alu_reg_imm),
        .I1(instr_jalr),
        .I2(is_sb_sh_sw),
        .I3(is_lb_lh_lw_lbu_lhu),
        .I4(is_beq_bne_blt_bge_bltu_bgeu),
        .O(\decoded_imm[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF444F444F444)) 
    \decoded_imm[11]_i_1 
       (.I0(\decoded_imm[11]_i_2_n_0 ),
        .I1(\mem_rdata_q_reg_n_0_[31] ),
        .I2(is_beq_bne_blt_bge_bltu_bgeu),
        .I3(\mem_rdata_q_reg_n_0_[7] ),
        .I4(instr_jal),
        .I5(decoded_imm_uj[11]),
        .O(\decoded_imm[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \decoded_imm[11]_i_2 
       (.I0(is_lb_lh_lw_lbu_lhu),
        .I1(is_sb_sh_sw),
        .I2(instr_jalr),
        .I3(is_alu_reg_imm),
        .O(\decoded_imm[11]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFF88888)) 
    \decoded_imm[12]_i_1 
       (.I0(decoded_imm_uj[12]),
        .I1(instr_jal),
        .I2(instr_lui),
        .I3(instr_auipc),
        .I4(p_0_in_1[0]),
        .O(\decoded_imm[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'hF8F8F888)) 
    \decoded_imm[13]_i_1 
       (.I0(decoded_imm_uj[13]),
        .I1(instr_jal),
        .I2(p_0_in_1[1]),
        .I3(instr_lui),
        .I4(instr_auipc),
        .O(\decoded_imm[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'hF8F8F888)) 
    \decoded_imm[14]_i_1 
       (.I0(decoded_imm_uj[14]),
        .I1(instr_jal),
        .I2(p_0_in_1[2]),
        .I3(instr_lui),
        .I4(instr_auipc),
        .O(\decoded_imm[14]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFF88888)) 
    \decoded_imm[15]_i_1 
       (.I0(decoded_rs1_0[0]),
        .I1(instr_jal),
        .I2(instr_lui),
        .I3(instr_auipc),
        .I4(\mem_rdata_q_reg_n_0_[15] ),
        .O(\decoded_imm[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFF88888)) 
    \decoded_imm[16]_i_1 
       (.I0(decoded_rs1_0[1]),
        .I1(instr_jal),
        .I2(instr_lui),
        .I3(instr_auipc),
        .I4(\mem_rdata_q_reg_n_0_[16] ),
        .O(\decoded_imm[16]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFF88888)) 
    \decoded_imm[17]_i_1 
       (.I0(decoded_rs1_0[2]),
        .I1(instr_jal),
        .I2(instr_lui),
        .I3(instr_auipc),
        .I4(\mem_rdata_q_reg_n_0_[17] ),
        .O(\decoded_imm[17]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFF88888)) 
    \decoded_imm[18]_i_1 
       (.I0(decoded_rs1_0[3]),
        .I1(instr_jal),
        .I2(instr_lui),
        .I3(instr_auipc),
        .I4(\mem_rdata_q_reg_n_0_[18] ),
        .O(\decoded_imm[18]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0400)) 
    \decoded_imm[19]_i_1 
       (.I0(\decoded_imm[10]_i_2_n_0 ),
        .I1(\mem_rdata_q_reg_n_0_[31] ),
        .I2(decoder_pseudo_trigger_reg_n_0),
        .I3(decoder_trigger_reg_n_0),
        .O(\decoded_imm[19]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFF88888)) 
    \decoded_imm[19]_i_2 
       (.I0(decoded_rs1_0[4]),
        .I1(instr_jal),
        .I2(instr_lui),
        .I3(instr_auipc),
        .I4(\mem_rdata_q_reg_n_0_[19] ),
        .O(\decoded_imm[19]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF44F444F444F4)) 
    \decoded_imm[1]_i_1 
       (.I0(\decoded_imm[4]_i_2_n_0 ),
        .I1(\mem_rdata_q_reg_n_0_[21] ),
        .I2(\mem_rdata_q_reg_n_0_[8] ),
        .I3(\decoded_imm[4]_i_3_n_0 ),
        .I4(instr_jal),
        .I5(decoded_imm_uj[1]),
        .O(\decoded_imm[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \decoded_imm[20]_i_1 
       (.I0(\mem_rdata_q_reg_n_0_[20] ),
        .I1(instr_auipc),
        .I2(instr_lui),
        .O(\decoded_imm[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \decoded_imm[21]_i_1 
       (.I0(\mem_rdata_q_reg_n_0_[21] ),
        .I1(instr_auipc),
        .I2(instr_lui),
        .O(\decoded_imm[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \decoded_imm[22]_i_1 
       (.I0(\mem_rdata_q_reg_n_0_[22] ),
        .I1(instr_auipc),
        .I2(instr_lui),
        .O(\decoded_imm[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \decoded_imm[23]_i_1 
       (.I0(\mem_rdata_q_reg_n_0_[23] ),
        .I1(instr_auipc),
        .I2(instr_lui),
        .O(\decoded_imm[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \decoded_imm[24]_i_1 
       (.I0(\mem_rdata_q_reg_n_0_[24] ),
        .I1(instr_auipc),
        .I2(instr_lui),
        .O(\decoded_imm[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \decoded_imm[25]_i_1 
       (.I0(\mem_rdata_q_reg_n_0_[25] ),
        .I1(instr_auipc),
        .I2(instr_lui),
        .O(\decoded_imm[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \decoded_imm[26]_i_1 
       (.I0(\mem_rdata_q_reg_n_0_[26] ),
        .I1(instr_auipc),
        .I2(instr_lui),
        .O(\decoded_imm[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \decoded_imm[27]_i_1 
       (.I0(instr_auipc),
        .I1(instr_lui),
        .I2(\mem_rdata_q_reg_n_0_[27] ),
        .O(\decoded_imm[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \decoded_imm[28]_i_1 
       (.I0(\mem_rdata_q_reg_n_0_[28] ),
        .I1(instr_auipc),
        .I2(instr_lui),
        .O(\decoded_imm[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \decoded_imm[29]_i_1 
       (.I0(\mem_rdata_q_reg_n_0_[29] ),
        .I1(instr_auipc),
        .I2(instr_lui),
        .O(\decoded_imm[29]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF44F444F444F4)) 
    \decoded_imm[2]_i_1 
       (.I0(\decoded_imm[4]_i_2_n_0 ),
        .I1(\mem_rdata_q_reg_n_0_[22] ),
        .I2(\mem_rdata_q_reg_n_0_[9] ),
        .I3(\decoded_imm[4]_i_3_n_0 ),
        .I4(instr_jal),
        .I5(decoded_imm_uj[2]),
        .O(\decoded_imm[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \decoded_imm[30]_i_1 
       (.I0(instr_auipc),
        .I1(instr_lui),
        .I2(\mem_rdata_q_reg_n_0_[30] ),
        .O(\decoded_imm[30]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000F22200000000)) 
    \decoded_imm[31]_i_1 
       (.I0(\mem_rdata_q_reg_n_0_[31] ),
        .I1(\decoded_imm[10]_i_2_n_0 ),
        .I2(instr_jal),
        .I3(decoded_imm_uj[31]),
        .I4(decoder_pseudo_trigger_reg_n_0),
        .I5(decoder_trigger_reg_n_0),
        .O(\decoded_imm[31]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hA8)) 
    \decoded_imm[31]_i_2 
       (.I0(\mem_rdata_q_reg_n_0_[31] ),
        .I1(instr_auipc),
        .I2(instr_lui),
        .O(\decoded_imm[31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF44F444F444F4)) 
    \decoded_imm[3]_i_1 
       (.I0(\decoded_imm[4]_i_2_n_0 ),
        .I1(\mem_rdata_q_reg_n_0_[23] ),
        .I2(\mem_rdata_q_reg_n_0_[10] ),
        .I3(\decoded_imm[4]_i_3_n_0 ),
        .I4(instr_jal),
        .I5(decoded_imm_uj[3]),
        .O(\decoded_imm[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF44F444F444F4)) 
    \decoded_imm[4]_i_1 
       (.I0(\decoded_imm[4]_i_2_n_0 ),
        .I1(\mem_rdata_q_reg_n_0_[24] ),
        .I2(\mem_rdata_q_reg_n_0_[11] ),
        .I3(\decoded_imm[4]_i_3_n_0 ),
        .I4(instr_jal),
        .I5(decoded_imm_uj[4]),
        .O(\decoded_imm[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \decoded_imm[4]_i_2 
       (.I0(is_lb_lh_lw_lbu_lhu),
        .I1(instr_jalr),
        .I2(is_alu_reg_imm),
        .O(\decoded_imm[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \decoded_imm[4]_i_3 
       (.I0(is_beq_bne_blt_bge_bltu_bgeu),
        .I1(is_sb_sh_sw),
        .O(\decoded_imm[4]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h8F88)) 
    \decoded_imm[5]_i_1 
       (.I0(decoded_imm_uj[5]),
        .I1(instr_jal),
        .I2(\decoded_imm[10]_i_2_n_0 ),
        .I3(\mem_rdata_q_reg_n_0_[25] ),
        .O(\decoded_imm[5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8F88)) 
    \decoded_imm[6]_i_1 
       (.I0(decoded_imm_uj[6]),
        .I1(instr_jal),
        .I2(\decoded_imm[10]_i_2_n_0 ),
        .I3(\mem_rdata_q_reg_n_0_[26] ),
        .O(\decoded_imm[6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8F88)) 
    \decoded_imm[7]_i_1 
       (.I0(decoded_imm_uj[7]),
        .I1(instr_jal),
        .I2(\decoded_imm[10]_i_2_n_0 ),
        .I3(\mem_rdata_q_reg_n_0_[27] ),
        .O(\decoded_imm[7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8F88)) 
    \decoded_imm[8]_i_1 
       (.I0(decoded_imm_uj[8]),
        .I1(instr_jal),
        .I2(\decoded_imm[10]_i_2_n_0 ),
        .I3(\mem_rdata_q_reg_n_0_[28] ),
        .O(\decoded_imm[8]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8F88)) 
    \decoded_imm[9]_i_1 
       (.I0(decoded_imm_uj[9]),
        .I1(instr_jal),
        .I2(\decoded_imm[10]_i_2_n_0 ),
        .I3(\mem_rdata_q_reg_n_0_[29] ),
        .O(\decoded_imm[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \decoded_imm_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(\decoded_imm[0]_i_1_n_0 ),
        .Q(decoded_imm[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \decoded_imm_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(\decoded_imm[10]_i_1_n_0 ),
        .Q(decoded_imm[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \decoded_imm_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(\decoded_imm[11]_i_1_n_0 ),
        .Q(decoded_imm[11]),
        .R(1'b0));
  FDSE #(
    .INIT(1'b1)) 
    \decoded_imm_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(\decoded_imm[12]_i_1_n_0 ),
        .Q(decoded_imm[12]),
        .S(\decoded_imm[19]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \decoded_imm_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(\decoded_imm[13]_i_1_n_0 ),
        .Q(decoded_imm[13]),
        .S(\decoded_imm[19]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \decoded_imm_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(\decoded_imm[14]_i_1_n_0 ),
        .Q(decoded_imm[14]),
        .S(\decoded_imm[19]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \decoded_imm_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(\decoded_imm[15]_i_1_n_0 ),
        .Q(decoded_imm[15]),
        .S(\decoded_imm[19]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \decoded_imm_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(\decoded_imm[16]_i_1_n_0 ),
        .Q(decoded_imm[16]),
        .S(\decoded_imm[19]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \decoded_imm_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(\decoded_imm[17]_i_1_n_0 ),
        .Q(decoded_imm[17]),
        .S(\decoded_imm[19]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \decoded_imm_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(\decoded_imm[18]_i_1_n_0 ),
        .Q(decoded_imm[18]),
        .S(\decoded_imm[19]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \decoded_imm_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(\decoded_imm[19]_i_2_n_0 ),
        .Q(decoded_imm[19]),
        .S(\decoded_imm[19]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \decoded_imm_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(\decoded_imm[1]_i_1_n_0 ),
        .Q(decoded_imm[1]),
        .R(1'b0));
  FDSE #(
    .INIT(1'b1)) 
    \decoded_imm_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(\decoded_imm[20]_i_1_n_0 ),
        .Q(decoded_imm[20]),
        .S(\decoded_imm[31]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \decoded_imm_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(\decoded_imm[21]_i_1_n_0 ),
        .Q(decoded_imm[21]),
        .S(\decoded_imm[31]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \decoded_imm_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(\decoded_imm[22]_i_1_n_0 ),
        .Q(decoded_imm[22]),
        .S(\decoded_imm[31]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \decoded_imm_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(\decoded_imm[23]_i_1_n_0 ),
        .Q(decoded_imm[23]),
        .S(\decoded_imm[31]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \decoded_imm_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(\decoded_imm[24]_i_1_n_0 ),
        .Q(decoded_imm[24]),
        .S(\decoded_imm[31]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \decoded_imm_reg[25] 
       (.C(clk_IBUF_BUFG),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(\decoded_imm[25]_i_1_n_0 ),
        .Q(decoded_imm[25]),
        .S(\decoded_imm[31]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \decoded_imm_reg[26] 
       (.C(clk_IBUF_BUFG),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(\decoded_imm[26]_i_1_n_0 ),
        .Q(decoded_imm[26]),
        .S(\decoded_imm[31]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \decoded_imm_reg[27] 
       (.C(clk_IBUF_BUFG),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(\decoded_imm[27]_i_1_n_0 ),
        .Q(decoded_imm[27]),
        .S(\decoded_imm[31]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \decoded_imm_reg[28] 
       (.C(clk_IBUF_BUFG),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(\decoded_imm[28]_i_1_n_0 ),
        .Q(decoded_imm[28]),
        .S(\decoded_imm[31]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \decoded_imm_reg[29] 
       (.C(clk_IBUF_BUFG),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(\decoded_imm[29]_i_1_n_0 ),
        .Q(decoded_imm[29]),
        .S(\decoded_imm[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \decoded_imm_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(\decoded_imm[2]_i_1_n_0 ),
        .Q(decoded_imm[2]),
        .R(1'b0));
  FDSE #(
    .INIT(1'b1)) 
    \decoded_imm_reg[30] 
       (.C(clk_IBUF_BUFG),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(\decoded_imm[30]_i_1_n_0 ),
        .Q(decoded_imm[30]),
        .S(\decoded_imm[31]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \decoded_imm_reg[31] 
       (.C(clk_IBUF_BUFG),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(\decoded_imm[31]_i_2_n_0 ),
        .Q(decoded_imm[31]),
        .S(\decoded_imm[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \decoded_imm_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(\decoded_imm[3]_i_1_n_0 ),
        .Q(decoded_imm[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \decoded_imm_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(\decoded_imm[4]_i_1_n_0 ),
        .Q(decoded_imm[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \decoded_imm_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(\decoded_imm[5]_i_1_n_0 ),
        .Q(decoded_imm[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \decoded_imm_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(\decoded_imm[6]_i_1_n_0 ),
        .Q(decoded_imm[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \decoded_imm_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(\decoded_imm[7]_i_1_n_0 ),
        .Q(decoded_imm[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \decoded_imm_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(\decoded_imm[8]_i_1_n_0 ),
        .Q(decoded_imm[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \decoded_imm_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(\decoded_imm[9]_i_1_n_0 ),
        .Q(decoded_imm[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \decoded_imm_uj[10]_i_1 
       (.I0(mem_rdata[30]),
        .I1(mem_valid_reg_n_0),
        .I2(\mem_rdata_q_reg_n_0_[30] ),
        .O(\decoded_imm_uj[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \decoded_imm_uj[12]_i_1 
       (.I0(mem_rdata[12]),
        .I1(mem_valid_reg_n_0),
        .I2(p_0_in_1[0]),
        .O(\decoded_imm_uj[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \decoded_imm_uj[13]_i_1 
       (.I0(mem_rdata[13]),
        .I1(mem_valid_reg_n_0),
        .I2(p_0_in_1[1]),
        .O(\decoded_imm_uj[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \decoded_imm_uj[14]_i_1 
       (.I0(mem_rdata[14]),
        .I1(mem_valid_reg_n_0),
        .I2(p_0_in_1[2]),
        .O(\decoded_imm_uj[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \decoded_imm_uj[31]_i_1 
       (.I0(mem_rdata[31]),
        .I1(mem_valid_reg_n_0),
        .I2(\mem_rdata_q_reg_n_0_[31] ),
        .O(p_0_in0));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \decoded_imm_uj[5]_i_1 
       (.I0(mem_rdata[25]),
        .I1(mem_valid_reg_n_0),
        .I2(\mem_rdata_q_reg_n_0_[25] ),
        .O(\decoded_imm_uj[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \decoded_imm_uj[6]_i_1 
       (.I0(mem_rdata[26]),
        .I1(mem_valid_reg_n_0),
        .I2(\mem_rdata_q_reg_n_0_[26] ),
        .O(\decoded_imm_uj[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \decoded_imm_uj[7]_i_1 
       (.I0(mem_rdata[27]),
        .I1(mem_valid_reg_n_0),
        .I2(\mem_rdata_q_reg_n_0_[27] ),
        .O(\decoded_imm_uj[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \decoded_imm_uj[8]_i_1 
       (.I0(mem_rdata[28]),
        .I1(mem_valid_reg_n_0),
        .I2(\mem_rdata_q_reg_n_0_[28] ),
        .O(\decoded_imm_uj[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \decoded_imm_uj[9]_i_1 
       (.I0(mem_rdata[29]),
        .I1(mem_valid_reg_n_0),
        .I2(\mem_rdata_q_reg_n_0_[29] ),
        .O(\decoded_imm_uj[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \decoded_imm_uj_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(instr_jal_i_1_n_0),
        .D(\decoded_imm_uj[10]_i_1_n_0 ),
        .Q(decoded_imm_uj[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \decoded_imm_uj_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(instr_jal_i_1_n_0),
        .D(p_1_in[0]),
        .Q(decoded_imm_uj[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \decoded_imm_uj_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(instr_jal_i_1_n_0),
        .D(\decoded_imm_uj[12]_i_1_n_0 ),
        .Q(decoded_imm_uj[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \decoded_imm_uj_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(instr_jal_i_1_n_0),
        .D(\decoded_imm_uj[13]_i_1_n_0 ),
        .Q(decoded_imm_uj[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \decoded_imm_uj_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(instr_jal_i_1_n_0),
        .D(\decoded_imm_uj[14]_i_1_n_0 ),
        .Q(decoded_imm_uj[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \decoded_imm_uj_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(instr_jal_i_1_n_0),
        .D(p_1_in[1]),
        .Q(decoded_imm_uj[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \decoded_imm_uj_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(instr_jal_i_1_n_0),
        .D(p_1_in[2]),
        .Q(decoded_imm_uj[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \decoded_imm_uj_reg[31] 
       (.C(clk_IBUF_BUFG),
        .CE(instr_jal_i_1_n_0),
        .D(p_0_in0),
        .Q(decoded_imm_uj[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \decoded_imm_uj_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(instr_jal_i_1_n_0),
        .D(p_1_in[3]),
        .Q(decoded_imm_uj[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \decoded_imm_uj_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(instr_jal_i_1_n_0),
        .D(p_1_in[4]),
        .Q(decoded_imm_uj[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \decoded_imm_uj_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(instr_jal_i_1_n_0),
        .D(\decoded_imm_uj[5]_i_1_n_0 ),
        .Q(decoded_imm_uj[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \decoded_imm_uj_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(instr_jal_i_1_n_0),
        .D(\decoded_imm_uj[6]_i_1_n_0 ),
        .Q(decoded_imm_uj[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \decoded_imm_uj_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(instr_jal_i_1_n_0),
        .D(\decoded_imm_uj[7]_i_1_n_0 ),
        .Q(decoded_imm_uj[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \decoded_imm_uj_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(instr_jal_i_1_n_0),
        .D(\decoded_imm_uj[8]_i_1_n_0 ),
        .Q(decoded_imm_uj[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \decoded_imm_uj_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(instr_jal_i_1_n_0),
        .D(\decoded_imm_uj[9]_i_1_n_0 ),
        .Q(decoded_imm_uj[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \decoded_rd[0]_i_1 
       (.I0(mem_rdata[7]),
        .I1(mem_valid_reg_n_0),
        .I2(\mem_rdata_q_reg_n_0_[7] ),
        .O(\decoded_rd[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \decoded_rd[1]_i_1 
       (.I0(mem_rdata[8]),
        .I1(mem_valid_reg_n_0),
        .I2(\mem_rdata_q_reg_n_0_[8] ),
        .O(\decoded_rd[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \decoded_rd[2]_i_1 
       (.I0(mem_rdata[9]),
        .I1(mem_valid_reg_n_0),
        .I2(\mem_rdata_q_reg_n_0_[9] ),
        .O(\decoded_rd[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \decoded_rd[3]_i_1 
       (.I0(mem_rdata[10]),
        .I1(mem_valid_reg_n_0),
        .I2(\mem_rdata_q_reg_n_0_[10] ),
        .O(\decoded_rd[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \decoded_rd[4]_i_1 
       (.I0(mem_rdata[11]),
        .I1(mem_valid_reg_n_0),
        .I2(\mem_rdata_q_reg_n_0_[11] ),
        .O(\decoded_rd[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \decoded_rd_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(instr_jal_i_1_n_0),
        .D(\decoded_rd[0]_i_1_n_0 ),
        .Q(decoded_rd[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \decoded_rd_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(instr_jal_i_1_n_0),
        .D(\decoded_rd[1]_i_1_n_0 ),
        .Q(decoded_rd[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \decoded_rd_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(instr_jal_i_1_n_0),
        .D(\decoded_rd[2]_i_1_n_0 ),
        .Q(decoded_rd[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \decoded_rd_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(instr_jal_i_1_n_0),
        .D(\decoded_rd[3]_i_1_n_0 ),
        .Q(decoded_rd[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \decoded_rd_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(instr_jal_i_1_n_0),
        .D(\decoded_rd[4]_i_1_n_0 ),
        .Q(decoded_rd[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \decoded_rs1_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(instr_jal_i_1_n_0),
        .D(\decoded_rs1_rep[0]_i_1_n_0 ),
        .Q(decoded_rs1_0[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \decoded_rs1_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(instr_jal_i_1_n_0),
        .D(\decoded_rs1_rep[1]_i_1_n_0 ),
        .Q(decoded_rs1_0[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \decoded_rs1_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(instr_jal_i_1_n_0),
        .D(\decoded_rs1_rep[2]_i_1_n_0 ),
        .Q(decoded_rs1_0[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \decoded_rs1_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(instr_jal_i_1_n_0),
        .D(\decoded_rs1_rep[3]_i_1_n_0 ),
        .Q(decoded_rs1_0[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \decoded_rs1_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(instr_jal_i_1_n_0),
        .D(\decoded_rs1_rep[4]_i_1_n_0 ),
        .Q(decoded_rs1_0[4]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \decoded_rs1_reg_rep[0] 
       (.C(clk_IBUF_BUFG),
        .CE(instr_jal_i_1_n_0),
        .D(\decoded_rs1_rep[0]_i_1_n_0 ),
        .Q(decoded_rs1[0]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \decoded_rs1_reg_rep[1] 
       (.C(clk_IBUF_BUFG),
        .CE(instr_jal_i_1_n_0),
        .D(\decoded_rs1_rep[1]_i_1_n_0 ),
        .Q(decoded_rs1[1]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \decoded_rs1_reg_rep[2] 
       (.C(clk_IBUF_BUFG),
        .CE(instr_jal_i_1_n_0),
        .D(\decoded_rs1_rep[2]_i_1_n_0 ),
        .Q(decoded_rs1[2]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \decoded_rs1_reg_rep[3] 
       (.C(clk_IBUF_BUFG),
        .CE(instr_jal_i_1_n_0),
        .D(\decoded_rs1_rep[3]_i_1_n_0 ),
        .Q(decoded_rs1[3]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \decoded_rs1_reg_rep[4] 
       (.C(clk_IBUF_BUFG),
        .CE(instr_jal_i_1_n_0),
        .D(\decoded_rs1_rep[4]_i_1_n_0 ),
        .Q(decoded_rs1[4]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \decoded_rs1_rep[0]_i_1 
       (.I0(mem_rdata[15]),
        .I1(mem_valid_reg_n_0),
        .I2(\mem_rdata_q_reg_n_0_[15] ),
        .O(\decoded_rs1_rep[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \decoded_rs1_rep[1]_i_1 
       (.I0(mem_rdata[16]),
        .I1(mem_valid_reg_n_0),
        .I2(\mem_rdata_q_reg_n_0_[16] ),
        .O(\decoded_rs1_rep[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \decoded_rs1_rep[2]_i_1 
       (.I0(mem_rdata[17]),
        .I1(mem_valid_reg_n_0),
        .I2(\mem_rdata_q_reg_n_0_[17] ),
        .O(\decoded_rs1_rep[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \decoded_rs1_rep[3]_i_1 
       (.I0(mem_rdata[18]),
        .I1(mem_valid_reg_n_0),
        .I2(\mem_rdata_q_reg_n_0_[18] ),
        .O(\decoded_rs1_rep[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \decoded_rs1_rep[4]_i_1 
       (.I0(mem_rdata[19]),
        .I1(mem_valid_reg_n_0),
        .I2(\mem_rdata_q_reg_n_0_[19] ),
        .O(\decoded_rs1_rep[4]_i_1_n_0 ));
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \decoded_rs2_reg_rep[0] 
       (.C(clk_IBUF_BUFG),
        .CE(instr_jal_i_1_n_0),
        .D(p_1_in[0]),
        .Q(decoded_rs2[0]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \decoded_rs2_reg_rep[1] 
       (.C(clk_IBUF_BUFG),
        .CE(instr_jal_i_1_n_0),
        .D(p_1_in[1]),
        .Q(decoded_rs2[1]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \decoded_rs2_reg_rep[2] 
       (.C(clk_IBUF_BUFG),
        .CE(instr_jal_i_1_n_0),
        .D(p_1_in[2]),
        .Q(decoded_rs2[2]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \decoded_rs2_reg_rep[3] 
       (.C(clk_IBUF_BUFG),
        .CE(instr_jal_i_1_n_0),
        .D(p_1_in[3]),
        .Q(decoded_rs2[3]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \decoded_rs2_reg_rep[4] 
       (.C(clk_IBUF_BUFG),
        .CE(instr_jal_i_1_n_0),
        .D(p_1_in[4]),
        .Q(decoded_rs2[4]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \decoded_rs2_rep[0]_i_1 
       (.I0(mem_rdata[20]),
        .I1(mem_valid_reg_n_0),
        .I2(\mem_rdata_q_reg_n_0_[20] ),
        .O(p_1_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \decoded_rs2_rep[1]_i_1 
       (.I0(mem_rdata[21]),
        .I1(mem_valid_reg_n_0),
        .I2(\mem_rdata_q_reg_n_0_[21] ),
        .O(p_1_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \decoded_rs2_rep[2]_i_1 
       (.I0(mem_rdata[22]),
        .I1(mem_valid_reg_n_0),
        .I2(\mem_rdata_q_reg_n_0_[22] ),
        .O(p_1_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \decoded_rs2_rep[3]_i_1 
       (.I0(mem_rdata[23]),
        .I1(mem_valid_reg_n_0),
        .I2(\mem_rdata_q_reg_n_0_[23] ),
        .O(p_1_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \decoded_rs2_rep[4]_i_1 
       (.I0(mem_rdata[24]),
        .I1(mem_valid_reg_n_0),
        .I2(\mem_rdata_q_reg_n_0_[24] ),
        .O(p_1_in[4]));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    decoder_pseudo_trigger_i_1
       (.I0(instr_jal_i_3_n_0),
        .I1(mem_do_prefetch_reg_n_0),
        .I2(\cpu_state_reg_n_0_[3] ),
        .I3(reg_next_pc),
        .I4(\cpu_state_reg_n_0_[7] ),
        .I5(decoder_pseudo_trigger_i_2_n_0),
        .O(decoder_pseudo_trigger));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'hE)) 
    decoder_pseudo_trigger_i_2
       (.I0(\cpu_state_reg_n_0_[5] ),
        .I1(\cpu_state_reg_n_0_[2] ),
        .O(decoder_pseudo_trigger_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    decoder_pseudo_trigger_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(decoder_pseudo_trigger),
        .Q(decoder_pseudo_trigger_reg_n_0),
        .R(instr_and_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFBF0000)) 
    decoder_trigger_i_1
       (.I0(\cpu_state[6]_i_3_n_0 ),
        .I1(\cpu_state_reg_n_0_[3] ),
        .I2(is_beq_bne_blt_bge_bltu_bgeu),
        .I3(decoder_trigger_i_2_n_0),
        .I4(instr_jal_i_1_n_0),
        .I5(decoder_trigger_i_3_n_0),
        .O(decoder_trigger_i_1_n_0));
  LUT6 #(
    .INIT(64'h000000000000D0DD)) 
    decoder_trigger_i_2
       (.I0(instr_bne),
        .I1(alu_eq),
        .I2(alu_ltu),
        .I3(instr_bgeu),
        .I4(decoder_trigger_i_4_n_0),
        .I5(decoder_trigger_i_5_n_0),
        .O(decoder_trigger_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'h00A8)) 
    decoder_trigger_i_3
       (.I0(instr_jal_i_3_n_0),
        .I1(\cpu_state_reg_n_0_[1] ),
        .I2(\cpu_state_reg_n_0_[0] ),
        .I3(mem_do_prefetch_reg_n_0),
        .O(decoder_trigger_i_3_n_0));
  LUT4 #(
    .INIT(16'hF444)) 
    decoder_trigger_i_4
       (.I0(alu_lts),
        .I1(instr_bge),
        .I2(instr_beq),
        .I3(alu_eq),
        .O(decoder_trigger_i_4_n_0));
  LUT4 #(
    .INIT(16'hF888)) 
    decoder_trigger_i_5
       (.I0(is_slti_blt_slt),
        .I1(alu_lts),
        .I2(is_sltiu_bltu_sltu),
        .I3(alu_ltu),
        .O(decoder_trigger_i_5_n_0));
  FDRE #(
    .INIT(1'b0)) 
    decoder_trigger_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(decoder_trigger_i_1_n_0),
        .Q(decoder_trigger_reg_n_0),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h96)) 
    i___29_carry__0_i_1
       (.I0(Q[7]),
        .I1(instr_sub),
        .I2(\reg_op1_reg_n_0_[7] ),
        .O(i___29_carry__0_i_1_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    i___29_carry__0_i_2
       (.I0(Q[6]),
        .I1(instr_sub),
        .I2(\reg_op1_reg_n_0_[6] ),
        .O(i___29_carry__0_i_2_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    i___29_carry__0_i_3
       (.I0(Q[5]),
        .I1(instr_sub),
        .I2(\reg_op1_reg_n_0_[5] ),
        .O(i___29_carry__0_i_3_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    i___29_carry__0_i_4
       (.I0(Q[4]),
        .I1(instr_sub),
        .I2(\reg_op1_reg_n_0_[4] ),
        .O(i___29_carry__0_i_4_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    i___29_carry__1_i_1
       (.I0(\reg_op2_reg_n_0_[11] ),
        .I1(instr_sub),
        .I2(\reg_op1_reg_n_0_[11] ),
        .O(i___29_carry__1_i_1_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    i___29_carry__1_i_2
       (.I0(\reg_op2_reg_n_0_[10] ),
        .I1(instr_sub),
        .I2(\reg_op1_reg_n_0_[10] ),
        .O(i___29_carry__1_i_2_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    i___29_carry__1_i_3
       (.I0(\reg_op2_reg_n_0_[9] ),
        .I1(instr_sub),
        .I2(\reg_op1_reg_n_0_[9] ),
        .O(i___29_carry__1_i_3_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    i___29_carry__1_i_4
       (.I0(\reg_op2_reg_n_0_[8] ),
        .I1(instr_sub),
        .I2(\reg_op1_reg_n_0_[8] ),
        .O(i___29_carry__1_i_4_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    i___29_carry__2_i_1
       (.I0(\reg_op2_reg_n_0_[15] ),
        .I1(instr_sub),
        .I2(\reg_op1_reg_n_0_[15] ),
        .O(i___29_carry__2_i_1_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    i___29_carry__2_i_2
       (.I0(\reg_op2_reg_n_0_[14] ),
        .I1(instr_sub),
        .I2(\reg_op1_reg_n_0_[14] ),
        .O(i___29_carry__2_i_2_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    i___29_carry__2_i_3
       (.I0(\reg_op2_reg_n_0_[13] ),
        .I1(instr_sub),
        .I2(\reg_op1_reg_n_0_[13] ),
        .O(i___29_carry__2_i_3_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    i___29_carry__2_i_4
       (.I0(\reg_op2_reg_n_0_[12] ),
        .I1(instr_sub),
        .I2(\reg_op1_reg_n_0_[12] ),
        .O(i___29_carry__2_i_4_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    i___29_carry__3_i_1
       (.I0(\reg_op2_reg_n_0_[19] ),
        .I1(instr_sub),
        .I2(\reg_op1_reg_n_0_[19] ),
        .O(i___29_carry__3_i_1_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    i___29_carry__3_i_2
       (.I0(\reg_op2_reg_n_0_[18] ),
        .I1(instr_sub),
        .I2(\reg_op1_reg_n_0_[18] ),
        .O(i___29_carry__3_i_2_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    i___29_carry__3_i_3
       (.I0(\reg_op2_reg_n_0_[17] ),
        .I1(instr_sub),
        .I2(\reg_op1_reg_n_0_[17] ),
        .O(i___29_carry__3_i_3_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    i___29_carry__3_i_4
       (.I0(\reg_op2_reg_n_0_[16] ),
        .I1(instr_sub),
        .I2(\reg_op1_reg_n_0_[16] ),
        .O(i___29_carry__3_i_4_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    i___29_carry__4_i_1
       (.I0(\reg_op2_reg_n_0_[23] ),
        .I1(instr_sub),
        .I2(\reg_op1_reg_n_0_[23] ),
        .O(i___29_carry__4_i_1_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    i___29_carry__4_i_2
       (.I0(\reg_op2_reg_n_0_[22] ),
        .I1(instr_sub),
        .I2(\reg_op1_reg_n_0_[22] ),
        .O(i___29_carry__4_i_2_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    i___29_carry__4_i_3
       (.I0(\reg_op2_reg_n_0_[21] ),
        .I1(instr_sub),
        .I2(\reg_op1_reg_n_0_[21] ),
        .O(i___29_carry__4_i_3_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    i___29_carry__4_i_4
       (.I0(\reg_op2_reg_n_0_[20] ),
        .I1(instr_sub),
        .I2(\reg_op1_reg_n_0_[20] ),
        .O(i___29_carry__4_i_4_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    i___29_carry__5_i_1
       (.I0(\reg_op2_reg_n_0_[27] ),
        .I1(instr_sub),
        .I2(\reg_op1_reg_n_0_[27] ),
        .O(i___29_carry__5_i_1_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    i___29_carry__5_i_2
       (.I0(\reg_op2_reg_n_0_[26] ),
        .I1(instr_sub),
        .I2(\reg_op1_reg_n_0_[26] ),
        .O(i___29_carry__5_i_2_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    i___29_carry__5_i_3
       (.I0(\reg_op2_reg_n_0_[25] ),
        .I1(instr_sub),
        .I2(\reg_op1_reg_n_0_[25] ),
        .O(i___29_carry__5_i_3_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    i___29_carry__5_i_4
       (.I0(\reg_op2_reg_n_0_[24] ),
        .I1(instr_sub),
        .I2(\reg_op1_reg_n_0_[24] ),
        .O(i___29_carry__5_i_4_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    i___29_carry__6_i_1
       (.I0(\reg_op2_reg_n_0_[31] ),
        .I1(\reg_op1_reg_n_0_[31] ),
        .I2(instr_sub),
        .O(i___29_carry__6_i_1_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    i___29_carry__6_i_2
       (.I0(\reg_op2_reg_n_0_[30] ),
        .I1(instr_sub),
        .I2(\reg_op1_reg_n_0_[30] ),
        .O(i___29_carry__6_i_2_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    i___29_carry__6_i_3
       (.I0(\reg_op2_reg_n_0_[29] ),
        .I1(instr_sub),
        .I2(\reg_op1_reg_n_0_[29] ),
        .O(i___29_carry__6_i_3_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    i___29_carry__6_i_4
       (.I0(\reg_op2_reg_n_0_[28] ),
        .I1(instr_sub),
        .I2(\reg_op1_reg_n_0_[28] ),
        .O(i___29_carry__6_i_4_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    i___29_carry_i_1
       (.I0(Q[3]),
        .I1(instr_sub),
        .I2(\reg_op1_reg_n_0_[3] ),
        .O(i___29_carry_i_1_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    i___29_carry_i_2
       (.I0(Q[2]),
        .I1(instr_sub),
        .I2(\reg_op1_reg_n_0_[2] ),
        .O(i___29_carry_i_2_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    i___29_carry_i_3
       (.I0(Q[1]),
        .I1(instr_sub),
        .I2(\reg_op1_reg_n_0_[1] ),
        .O(i___29_carry_i_3_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    i___29_carry_i_4
       (.I0(Q[0]),
        .O(i___29_carry_i_4_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry__0_i_1
       (.I0(\reg_op2_reg_n_0_[22] ),
        .I1(\reg_op1_reg_n_0_[22] ),
        .I2(\reg_op2_reg_n_0_[23] ),
        .I3(\reg_op1_reg_n_0_[23] ),
        .I4(\reg_op1_reg_n_0_[21] ),
        .I5(\reg_op2_reg_n_0_[21] ),
        .O(i__carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h40F4)) 
    i__carry__0_i_1__0
       (.I0(\reg_op1_reg_n_0_[14] ),
        .I1(\reg_op2_reg_n_0_[14] ),
        .I2(\reg_op2_reg_n_0_[15] ),
        .I3(\reg_op1_reg_n_0_[15] ),
        .O(i__carry__0_i_1__0_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry__0_i_2
       (.I0(\reg_op2_reg_n_0_[19] ),
        .I1(\reg_op1_reg_n_0_[19] ),
        .I2(\reg_op2_reg_n_0_[18] ),
        .I3(\reg_op1_reg_n_0_[18] ),
        .I4(\reg_op1_reg_n_0_[20] ),
        .I5(\reg_op2_reg_n_0_[20] ),
        .O(i__carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h40F4)) 
    i__carry__0_i_2__0
       (.I0(\reg_op1_reg_n_0_[12] ),
        .I1(\reg_op2_reg_n_0_[12] ),
        .I2(\reg_op2_reg_n_0_[13] ),
        .I3(\reg_op1_reg_n_0_[13] ),
        .O(i__carry__0_i_2__0_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry__0_i_3
       (.I0(\reg_op2_reg_n_0_[16] ),
        .I1(\reg_op1_reg_n_0_[16] ),
        .I2(\reg_op2_reg_n_0_[17] ),
        .I3(\reg_op1_reg_n_0_[17] ),
        .I4(\reg_op1_reg_n_0_[15] ),
        .I5(\reg_op2_reg_n_0_[15] ),
        .O(i__carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h40F4)) 
    i__carry__0_i_3__0
       (.I0(\reg_op1_reg_n_0_[10] ),
        .I1(\reg_op2_reg_n_0_[10] ),
        .I2(\reg_op2_reg_n_0_[11] ),
        .I3(\reg_op1_reg_n_0_[11] ),
        .O(i__carry__0_i_3__0_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry__0_i_4
       (.I0(\reg_op2_reg_n_0_[13] ),
        .I1(\reg_op1_reg_n_0_[13] ),
        .I2(\reg_op2_reg_n_0_[12] ),
        .I3(\reg_op1_reg_n_0_[12] ),
        .I4(\reg_op1_reg_n_0_[14] ),
        .I5(\reg_op2_reg_n_0_[14] ),
        .O(i__carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h40F4)) 
    i__carry__0_i_4__0
       (.I0(\reg_op1_reg_n_0_[8] ),
        .I1(\reg_op2_reg_n_0_[8] ),
        .I2(\reg_op2_reg_n_0_[9] ),
        .I3(\reg_op1_reg_n_0_[9] ),
        .O(i__carry__0_i_4__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__0_i_5
       (.I0(\reg_op1_reg_n_0_[15] ),
        .I1(\reg_op2_reg_n_0_[15] ),
        .I2(\reg_op1_reg_n_0_[14] ),
        .I3(\reg_op2_reg_n_0_[14] ),
        .O(i__carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__0_i_6
       (.I0(\reg_op1_reg_n_0_[12] ),
        .I1(\reg_op2_reg_n_0_[12] ),
        .I2(\reg_op1_reg_n_0_[13] ),
        .I3(\reg_op2_reg_n_0_[13] ),
        .O(i__carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__0_i_7
       (.I0(\reg_op1_reg_n_0_[11] ),
        .I1(\reg_op2_reg_n_0_[11] ),
        .I2(\reg_op1_reg_n_0_[10] ),
        .I3(\reg_op2_reg_n_0_[10] ),
        .O(i__carry__0_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__0_i_8
       (.I0(\reg_op1_reg_n_0_[9] ),
        .I1(\reg_op2_reg_n_0_[9] ),
        .I2(\reg_op1_reg_n_0_[8] ),
        .I3(\reg_op2_reg_n_0_[8] ),
        .O(i__carry__0_i_8_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__1_i_1
       (.I0(\reg_op2_reg_n_0_[31] ),
        .I1(\reg_op1_reg_n_0_[31] ),
        .I2(\reg_op2_reg_n_0_[30] ),
        .I3(\reg_op1_reg_n_0_[30] ),
        .O(i__carry__1_i_1_n_0));
  LUT4 #(
    .INIT(16'h40F4)) 
    i__carry__1_i_1__0
       (.I0(\reg_op1_reg_n_0_[22] ),
        .I1(\reg_op2_reg_n_0_[22] ),
        .I2(\reg_op2_reg_n_0_[23] ),
        .I3(\reg_op1_reg_n_0_[23] ),
        .O(i__carry__1_i_1__0_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry__1_i_2
       (.I0(\reg_op2_reg_n_0_[29] ),
        .I1(\reg_op1_reg_n_0_[29] ),
        .I2(\reg_op2_reg_n_0_[28] ),
        .I3(\reg_op1_reg_n_0_[28] ),
        .I4(\reg_op1_reg_n_0_[27] ),
        .I5(\reg_op2_reg_n_0_[27] ),
        .O(i__carry__1_i_2_n_0));
  LUT4 #(
    .INIT(16'h40F4)) 
    i__carry__1_i_2__0
       (.I0(\reg_op1_reg_n_0_[20] ),
        .I1(\reg_op2_reg_n_0_[20] ),
        .I2(\reg_op2_reg_n_0_[21] ),
        .I3(\reg_op1_reg_n_0_[21] ),
        .O(i__carry__1_i_2__0_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry__1_i_3
       (.I0(\reg_op2_reg_n_0_[25] ),
        .I1(\reg_op1_reg_n_0_[25] ),
        .I2(\reg_op2_reg_n_0_[24] ),
        .I3(\reg_op1_reg_n_0_[24] ),
        .I4(\reg_op1_reg_n_0_[26] ),
        .I5(\reg_op2_reg_n_0_[26] ),
        .O(i__carry__1_i_3_n_0));
  LUT4 #(
    .INIT(16'h40F4)) 
    i__carry__1_i_3__0
       (.I0(\reg_op1_reg_n_0_[18] ),
        .I1(\reg_op2_reg_n_0_[18] ),
        .I2(\reg_op2_reg_n_0_[19] ),
        .I3(\reg_op1_reg_n_0_[19] ),
        .O(i__carry__1_i_3__0_n_0));
  LUT4 #(
    .INIT(16'h40F4)) 
    i__carry__1_i_4
       (.I0(\reg_op1_reg_n_0_[16] ),
        .I1(\reg_op2_reg_n_0_[16] ),
        .I2(\reg_op2_reg_n_0_[17] ),
        .I3(\reg_op1_reg_n_0_[17] ),
        .O(i__carry__1_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__1_i_5
       (.I0(\reg_op1_reg_n_0_[23] ),
        .I1(\reg_op2_reg_n_0_[23] ),
        .I2(\reg_op1_reg_n_0_[22] ),
        .I3(\reg_op2_reg_n_0_[22] ),
        .O(i__carry__1_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__1_i_6
       (.I0(\reg_op1_reg_n_0_[21] ),
        .I1(\reg_op2_reg_n_0_[21] ),
        .I2(\reg_op1_reg_n_0_[20] ),
        .I3(\reg_op2_reg_n_0_[20] ),
        .O(i__carry__1_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__1_i_7
       (.I0(\reg_op1_reg_n_0_[18] ),
        .I1(\reg_op2_reg_n_0_[18] ),
        .I2(\reg_op1_reg_n_0_[19] ),
        .I3(\reg_op2_reg_n_0_[19] ),
        .O(i__carry__1_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__1_i_8
       (.I0(\reg_op1_reg_n_0_[17] ),
        .I1(\reg_op2_reg_n_0_[17] ),
        .I2(\reg_op1_reg_n_0_[16] ),
        .I3(\reg_op2_reg_n_0_[16] ),
        .O(i__carry__1_i_8_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry__2_i_1
       (.I0(\reg_op2_reg_n_0_[30] ),
        .I1(\reg_op1_reg_n_0_[30] ),
        .I2(\reg_op2_reg_n_0_[31] ),
        .I3(\reg_op1_reg_n_0_[31] ),
        .O(i__carry__2_i_1_n_0));
  LUT4 #(
    .INIT(16'h40F4)) 
    i__carry__2_i_2
       (.I0(\reg_op1_reg_n_0_[28] ),
        .I1(\reg_op2_reg_n_0_[28] ),
        .I2(\reg_op2_reg_n_0_[29] ),
        .I3(\reg_op1_reg_n_0_[29] ),
        .O(i__carry__2_i_2_n_0));
  LUT4 #(
    .INIT(16'h40F4)) 
    i__carry__2_i_3
       (.I0(\reg_op1_reg_n_0_[26] ),
        .I1(\reg_op2_reg_n_0_[26] ),
        .I2(\reg_op2_reg_n_0_[27] ),
        .I3(\reg_op1_reg_n_0_[27] ),
        .O(i__carry__2_i_3_n_0));
  LUT4 #(
    .INIT(16'h40F4)) 
    i__carry__2_i_4
       (.I0(\reg_op1_reg_n_0_[24] ),
        .I1(\reg_op2_reg_n_0_[24] ),
        .I2(\reg_op2_reg_n_0_[25] ),
        .I3(\reg_op1_reg_n_0_[25] ),
        .O(i__carry__2_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__2_i_5
       (.I0(\reg_op2_reg_n_0_[31] ),
        .I1(\reg_op1_reg_n_0_[31] ),
        .I2(\reg_op2_reg_n_0_[30] ),
        .I3(\reg_op1_reg_n_0_[30] ),
        .O(i__carry__2_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__2_i_6
       (.I0(\reg_op1_reg_n_0_[28] ),
        .I1(\reg_op2_reg_n_0_[28] ),
        .I2(\reg_op1_reg_n_0_[29] ),
        .I3(\reg_op2_reg_n_0_[29] ),
        .O(i__carry__2_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__2_i_7
       (.I0(\reg_op1_reg_n_0_[27] ),
        .I1(\reg_op2_reg_n_0_[27] ),
        .I2(\reg_op1_reg_n_0_[26] ),
        .I3(\reg_op2_reg_n_0_[26] ),
        .O(i__carry__2_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__2_i_8
       (.I0(\reg_op1_reg_n_0_[24] ),
        .I1(\reg_op2_reg_n_0_[24] ),
        .I2(\reg_op1_reg_n_0_[25] ),
        .I3(\reg_op2_reg_n_0_[25] ),
        .O(i__carry__2_i_8_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_1
       (.I0(\reg_op2_reg_n_0_[10] ),
        .I1(\reg_op1_reg_n_0_[10] ),
        .I2(\reg_op2_reg_n_0_[11] ),
        .I3(\reg_op1_reg_n_0_[11] ),
        .I4(\reg_op1_reg_n_0_[9] ),
        .I5(\reg_op2_reg_n_0_[9] ),
        .O(i__carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h40F4)) 
    i__carry_i_1__0
       (.I0(\reg_op1_reg_n_0_[6] ),
        .I1(Q[6]),
        .I2(Q[7]),
        .I3(\reg_op1_reg_n_0_[7] ),
        .O(i__carry_i_1__0_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_2
       (.I0(Q[7]),
        .I1(\reg_op1_reg_n_0_[7] ),
        .I2(Q[6]),
        .I3(\reg_op1_reg_n_0_[6] ),
        .I4(\reg_op1_reg_n_0_[8] ),
        .I5(\reg_op2_reg_n_0_[8] ),
        .O(i__carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h40F4)) 
    i__carry_i_2__0
       (.I0(\reg_op1_reg_n_0_[4] ),
        .I1(Q[4]),
        .I2(Q[5]),
        .I3(\reg_op1_reg_n_0_[5] ),
        .O(i__carry_i_2__0_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_3
       (.I0(Q[4]),
        .I1(\reg_op1_reg_n_0_[4] ),
        .I2(Q[5]),
        .I3(\reg_op1_reg_n_0_[5] ),
        .I4(\reg_op1_reg_n_0_[3] ),
        .I5(Q[3]),
        .O(i__carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h40F4)) 
    i__carry_i_3__0
       (.I0(\reg_op1_reg_n_0_[2] ),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(\reg_op1_reg_n_0_[3] ),
        .O(i__carry_i_3__0_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_4
       (.I0(\reg_op1_reg_n_0_[0] ),
        .I1(Q[0]),
        .I2(\reg_op1_reg_n_0_[1] ),
        .I3(Q[1]),
        .I4(\reg_op1_reg_n_0_[2] ),
        .I5(Q[2]),
        .O(i__carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h40F4)) 
    i__carry_i_4__0
       (.I0(\reg_op1_reg_n_0_[0] ),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(\reg_op1_reg_n_0_[1] ),
        .O(i__carry_i_4__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_5
       (.I0(\reg_op1_reg_n_0_[6] ),
        .I1(Q[6]),
        .I2(\reg_op1_reg_n_0_[7] ),
        .I3(Q[7]),
        .O(i__carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_6
       (.I0(\reg_op1_reg_n_0_[5] ),
        .I1(Q[5]),
        .I2(\reg_op1_reg_n_0_[4] ),
        .I3(Q[4]),
        .O(i__carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_7
       (.I0(\reg_op1_reg_n_0_[3] ),
        .I1(Q[3]),
        .I2(\reg_op1_reg_n_0_[2] ),
        .I3(Q[2]),
        .O(i__carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_8
       (.I0(Q[1]),
        .I1(\reg_op1_reg_n_0_[1] ),
        .I2(Q[0]),
        .I3(\reg_op1_reg_n_0_[0] ),
        .O(i__carry_i_8_n_0));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    instr_add_i_1
       (.I0(is_alu_reg_reg),
        .I1(is_sll_srl_sra_i_3_n_0),
        .I2(\mem_rdata_q_reg_n_0_[30] ),
        .I3(p_0_in_1[0]),
        .I4(p_0_in_1[2]),
        .I5(p_0_in_1[1]),
        .O(instr_add0));
  FDRE #(
    .INIT(1'b0)) 
    instr_add_reg
       (.C(clk_IBUF_BUFG),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(instr_add0),
        .Q(instr_add),
        .R(instr_and_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    instr_addi_i_1
       (.I0(is_alu_reg_imm),
        .I1(p_0_in_1[0]),
        .I2(p_0_in_1[2]),
        .I3(p_0_in_1[1]),
        .O(instr_addi0));
  FDRE #(
    .INIT(1'b0)) 
    instr_addi_reg
       (.C(clk_IBUF_BUFG),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(instr_addi0),
        .Q(instr_addi),
        .R(instr_and_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    instr_and_i_1
       (.I0(resetn_IBUF),
        .O(instr_and_i_1_n_0));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    instr_and_i_2
       (.I0(is_alu_reg_reg),
        .I1(is_sll_srl_sra_i_3_n_0),
        .I2(\mem_rdata_q_reg_n_0_[30] ),
        .I3(p_0_in_1[2]),
        .I4(p_0_in_1[1]),
        .I5(p_0_in_1[0]),
        .O(instr_and0));
  FDRE #(
    .INIT(1'b0)) 
    instr_and_reg
       (.C(clk_IBUF_BUFG),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(instr_and0),
        .Q(instr_and),
        .R(instr_and_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    instr_andi_i_1
       (.I0(is_alu_reg_imm),
        .I1(p_0_in_1[2]),
        .I2(p_0_in_1[1]),
        .I3(p_0_in_1[0]),
        .O(instr_andi0));
  FDRE #(
    .INIT(1'b0)) 
    instr_andi_reg
       (.C(clk_IBUF_BUFG),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(instr_andi0),
        .Q(instr_andi),
        .R(instr_and_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000015100000000)) 
    instr_auipc_i_1
       (.I0(instr_jal_i_4_n_0),
        .I1(\mem_rdata_q_reg_n_0_[6] ),
        .I2(mem_valid_reg_n_0),
        .I3(mem_rdata[6]),
        .I4(\mem_rdata_q[3]_i_1_n_0 ),
        .I5(is_alu_reg_imm_i_1_n_0),
        .O(instr_auipc_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    instr_auipc_reg
       (.C(clk_IBUF_BUFG),
        .CE(instr_jal_i_1_n_0),
        .D(instr_auipc_i_1_n_0),
        .Q(instr_auipc),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    instr_beq_i_1
       (.I0(is_beq_bne_blt_bge_bltu_bgeu),
        .I1(p_0_in_1[0]),
        .I2(p_0_in_1[2]),
        .I3(p_0_in_1[1]),
        .O(instr_beq0));
  FDRE #(
    .INIT(1'b0)) 
    instr_beq_reg
       (.C(clk_IBUF_BUFG),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(instr_beq0),
        .Q(instr_beq),
        .R(instr_and_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT4 #(
    .INIT(16'h2000)) 
    instr_bge_i_1
       (.I0(is_beq_bne_blt_bge_bltu_bgeu),
        .I1(p_0_in_1[1]),
        .I2(p_0_in_1[0]),
        .I3(p_0_in_1[2]),
        .O(instr_bge0));
  FDRE #(
    .INIT(1'b0)) 
    instr_bge_reg
       (.C(clk_IBUF_BUFG),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(instr_bge0),
        .Q(instr_bge),
        .R(instr_and_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    instr_bgeu_i_1
       (.I0(is_beq_bne_blt_bge_bltu_bgeu),
        .I1(p_0_in_1[2]),
        .I2(p_0_in_1[1]),
        .I3(p_0_in_1[0]),
        .O(instr_bgeu0));
  FDRE #(
    .INIT(1'b0)) 
    instr_bgeu_reg
       (.C(clk_IBUF_BUFG),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(instr_bgeu0),
        .Q(instr_bgeu),
        .R(instr_and_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT4 #(
    .INIT(16'h0020)) 
    instr_blt_i_1
       (.I0(is_beq_bne_blt_bge_bltu_bgeu),
        .I1(p_0_in_1[0]),
        .I2(p_0_in_1[2]),
        .I3(p_0_in_1[1]),
        .O(instr_blt0));
  FDRE #(
    .INIT(1'b0)) 
    instr_blt_reg
       (.C(clk_IBUF_BUFG),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(instr_blt0),
        .Q(instr_blt),
        .R(instr_and_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    instr_bltu_i_1
       (.I0(is_beq_bne_blt_bge_bltu_bgeu),
        .I1(p_0_in_1[1]),
        .I2(p_0_in_1[0]),
        .I3(p_0_in_1[2]),
        .O(instr_bltu0));
  FDRE #(
    .INIT(1'b0)) 
    instr_bltu_reg
       (.C(clk_IBUF_BUFG),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(instr_bltu0),
        .Q(instr_bltu),
        .R(instr_and_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT4 #(
    .INIT(16'h0020)) 
    instr_bne_i_1
       (.I0(is_beq_bne_blt_bge_bltu_bgeu),
        .I1(p_0_in_1[1]),
        .I2(p_0_in_1[0]),
        .I3(p_0_in_1[2]),
        .O(instr_bne0));
  FDRE #(
    .INIT(1'b0)) 
    instr_bne_reg
       (.C(clk_IBUF_BUFG),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(instr_bne0),
        .Q(instr_bne),
        .R(instr_and_i_1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    instr_jal_i_1
       (.I0(instr_jal_i_3_n_0),
        .I1(mem_do_rinst_reg_n_0),
        .O(instr_jal_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00E20000)) 
    instr_jal_i_2
       (.I0(\mem_rdata_q_reg_n_0_[3] ),
        .I1(mem_valid_reg_n_0),
        .I2(mem_rdata[3]),
        .I3(instr_jal_i_4_n_0),
        .I4(instr_jal_i_5_n_0),
        .O(instr_jal_i_2_n_0));
  LUT6 #(
    .INIT(64'hA8A8A800A0000000)) 
    instr_jal_i_3
       (.I0(resetn_IBUF),
        .I1(instr_jal_i_6_n_0),
        .I2(mem_do_rinst_reg_n_0),
        .I3(\mem_state_reg_n_0_[1] ),
        .I4(\mem_state_reg_n_0_[0] ),
        .I5(mem_valid_reg_n_0),
        .O(instr_jal_i_3_n_0));
  LUT6 #(
    .INIT(64'h757FF5FF7F7FFFFF)) 
    instr_jal_i_4
       (.I0(\mem_rdata_q[2]_i_1_n_0 ),
        .I1(mem_rdata[0]),
        .I2(mem_valid_reg_n_0),
        .I3(\mem_rdata_q_reg_n_0_[0] ),
        .I4(mem_rdata[1]),
        .I5(\mem_rdata_q_reg_n_0_[1] ),
        .O(instr_jal_i_4_n_0));
  LUT6 #(
    .INIT(64'h0C000A0A0C000000)) 
    instr_jal_i_5
       (.I0(\mem_rdata_q_reg_n_0_[6] ),
        .I1(mem_rdata[6]),
        .I2(\mem_rdata_q[4]_i_1_n_0 ),
        .I3(mem_rdata[5]),
        .I4(mem_valid_reg_n_0),
        .I5(\mem_rdata_q_reg_n_0_[5] ),
        .O(instr_jal_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT2 #(
    .INIT(4'hE)) 
    instr_jal_i_6
       (.I0(mem_do_rdata),
        .I1(mem_do_wdata),
        .O(instr_jal_i_6_n_0));
  FDRE #(
    .INIT(1'b0)) 
    instr_jal_reg
       (.C(clk_IBUF_BUFG),
        .CE(instr_jal_i_1_n_0),
        .D(instr_jal_i_2_n_0),
        .Q(instr_jal),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0004000000040404)) 
    instr_jalr_i_1
       (.I0(instr_jal_i_4_n_0),
        .I1(instr_jal_i_5_n_0),
        .I2(instr_jalr_i_2_n_0),
        .I3(mem_rdata[3]),
        .I4(mem_valid_reg_n_0),
        .I5(\mem_rdata_q_reg_n_0_[3] ),
        .O(instr_jalr0));
  LUT5 #(
    .INIT(32'hFEFEFF00)) 
    instr_jalr_i_2
       (.I0(mem_rdata[13]),
        .I1(mem_rdata[12]),
        .I2(mem_rdata[14]),
        .I3(instr_sub_i_2_n_0),
        .I4(mem_valid_reg_n_0),
        .O(instr_jalr_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    instr_jalr_reg
       (.C(clk_IBUF_BUFG),
        .CE(instr_jal_i_1_n_0),
        .D(instr_jalr0),
        .Q(instr_jalr),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    instr_lb_i_1
       (.I0(is_lb_lh_lw_lbu_lhu),
        .I1(p_0_in_1[0]),
        .I2(p_0_in_1[2]),
        .I3(p_0_in_1[1]),
        .O(instr_lb0));
  FDRE #(
    .INIT(1'b0)) 
    instr_lb_reg
       (.C(clk_IBUF_BUFG),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(instr_lb0),
        .Q(instr_lb),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT4 #(
    .INIT(16'h0020)) 
    instr_lbu_i_1
       (.I0(is_lb_lh_lw_lbu_lhu),
        .I1(p_0_in_1[0]),
        .I2(p_0_in_1[2]),
        .I3(p_0_in_1[1]),
        .O(instr_lbu0));
  FDRE #(
    .INIT(1'b0)) 
    instr_lbu_reg
       (.C(clk_IBUF_BUFG),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(instr_lbu0),
        .Q(instr_lbu),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    instr_lh_i_1
       (.I0(p_0_in_1[1]),
        .I1(p_0_in_1[0]),
        .I2(p_0_in_1[2]),
        .I3(is_lb_lh_lw_lbu_lhu),
        .O(instr_lh_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    instr_lh_reg
       (.C(clk_IBUF_BUFG),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(instr_lh_i_1_n_0),
        .Q(instr_lh),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    instr_lhu_i_1
       (.I0(p_0_in_1[1]),
        .I1(p_0_in_1[0]),
        .I2(p_0_in_1[2]),
        .I3(is_lb_lh_lw_lbu_lhu),
        .O(instr_lhu_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    instr_lhu_reg
       (.C(clk_IBUF_BUFG),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(instr_lhu_i_1_n_0),
        .Q(instr_lhu),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000000000151)) 
    instr_lui_i_1
       (.I0(instr_jal_i_4_n_0),
        .I1(\mem_rdata_q_reg_n_0_[6] ),
        .I2(mem_valid_reg_n_0),
        .I3(mem_rdata[6]),
        .I4(\mem_rdata_q[3]_i_1_n_0 ),
        .I5(instr_lui_i_2_n_0),
        .O(instr_lui_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h335FFF5F)) 
    instr_lui_i_2
       (.I0(\mem_rdata_q_reg_n_0_[5] ),
        .I1(mem_rdata[5]),
        .I2(\mem_rdata_q_reg_n_0_[4] ),
        .I3(mem_valid_reg_n_0),
        .I4(mem_rdata[4]),
        .O(instr_lui_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    instr_lui_reg
       (.C(clk_IBUF_BUFG),
        .CE(instr_jal_i_1_n_0),
        .D(instr_lui_i_1_n_0),
        .Q(instr_lui),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    instr_lw_i_1
       (.I0(is_lb_lh_lw_lbu_lhu),
        .I1(p_0_in_1[1]),
        .I2(p_0_in_1[0]),
        .I3(p_0_in_1[2]),
        .O(instr_lw0));
  FDRE #(
    .INIT(1'b0)) 
    instr_lw_reg
       (.C(clk_IBUF_BUFG),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(instr_lw0),
        .Q(instr_lw),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000080000000000)) 
    instr_or_i_1
       (.I0(is_alu_reg_reg),
        .I1(is_sll_srl_sra_i_3_n_0),
        .I2(\mem_rdata_q_reg_n_0_[30] ),
        .I3(p_0_in_1[1]),
        .I4(p_0_in_1[0]),
        .I5(p_0_in_1[2]),
        .O(instr_or0));
  FDRE #(
    .INIT(1'b0)) 
    instr_or_reg
       (.C(clk_IBUF_BUFG),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(instr_or0),
        .Q(instr_or),
        .R(instr_and_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    instr_ori_i_1
       (.I0(is_alu_reg_imm),
        .I1(p_0_in_1[1]),
        .I2(p_0_in_1[0]),
        .I3(p_0_in_1[2]),
        .O(instr_ori0));
  FDRE #(
    .INIT(1'b0)) 
    instr_ori_reg
       (.C(clk_IBUF_BUFG),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(instr_ori0),
        .Q(instr_ori),
        .R(instr_and_i_1_n_0));
  LUT5 #(
    .INIT(32'h00001000)) 
    instr_rdcycle_i_1
       (.I0(\mem_rdata_q_reg_n_0_[24] ),
        .I1(p_0_in_1[2]),
        .I2(\mem_rdata_q_reg_n_0_[30] ),
        .I3(instr_rdinstr_i_2_n_0),
        .I4(instr_rdcycleh_i_2_n_0),
        .O(instr_rdcycle0));
  FDRE #(
    .INIT(1'b0)) 
    instr_rdcycle_reg
       (.C(clk_IBUF_BUFG),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(instr_rdcycle0),
        .Q(instr_rdcycle),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT2 #(
    .INIT(4'h2)) 
    instr_rdcycleh_i_1
       (.I0(instr_rdinstrh_i_2_n_0),
        .I1(instr_rdcycleh_i_2_n_0),
        .O(instr_rdcycleh0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    instr_rdcycleh_i_2
       (.I0(instr_rdinstrh_i_4_n_0),
        .I1(\mem_rdata_q_reg_n_0_[16] ),
        .I2(\mem_rdata_q_reg_n_0_[19] ),
        .I3(\mem_rdata_q_reg_n_0_[17] ),
        .I4(\mem_rdata_q_reg_n_0_[18] ),
        .I5(\mem_rdata_q_reg_n_0_[21] ),
        .O(instr_rdcycleh_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    instr_rdcycleh_reg
       (.C(clk_IBUF_BUFG),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(instr_rdcycleh0),
        .Q(instr_rdcycleh),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h02000000)) 
    instr_rdinstr_i_1
       (.I0(instr_rdinstrh_i_3_n_0),
        .I1(\mem_rdata_q_reg_n_0_[24] ),
        .I2(p_0_in_1[2]),
        .I3(\mem_rdata_q_reg_n_0_[30] ),
        .I4(instr_rdinstr_i_2_n_0),
        .O(instr_rdinstr0));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'h01)) 
    instr_rdinstr_i_2
       (.I0(\mem_rdata_q_reg_n_0_[27] ),
        .I1(\mem_rdata_q_reg_n_0_[25] ),
        .I2(\mem_rdata_q_reg_n_0_[26] ),
        .O(instr_rdinstr_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    instr_rdinstr_reg
       (.C(clk_IBUF_BUFG),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(instr_rdinstr0),
        .Q(instr_rdinstr),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT2 #(
    .INIT(4'h8)) 
    instr_rdinstrh_i_1
       (.I0(instr_rdinstrh_i_2_n_0),
        .I1(instr_rdinstrh_i_3_n_0),
        .O(instr_rdinstrh0));
  LUT6 #(
    .INIT(64'h0000000000000200)) 
    instr_rdinstrh_i_2
       (.I0(\mem_rdata_q_reg_n_0_[30] ),
        .I1(p_0_in_1[2]),
        .I2(\mem_rdata_q_reg_n_0_[24] ),
        .I3(\mem_rdata_q_reg_n_0_[27] ),
        .I4(\mem_rdata_q_reg_n_0_[26] ),
        .I5(\mem_rdata_q_reg_n_0_[25] ),
        .O(instr_rdinstrh_i_2_n_0));
  LUT4 #(
    .INIT(16'h0010)) 
    instr_rdinstrh_i_3
       (.I0(instr_rdinstrh_i_4_n_0),
        .I1(\mem_rdata_q_reg_n_0_[20] ),
        .I2(\mem_rdata_q_reg_n_0_[21] ),
        .I3(instr_rdinstrh_i_5_n_0),
        .O(instr_rdinstrh_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFFFFEFFFFFFFFFF)) 
    instr_rdinstrh_i_4
       (.I0(instr_rdinstrh_i_6_n_0),
        .I1(instr_rdinstrh_i_7_n_0),
        .I2(instr_rdinstrh_i_8_n_0),
        .I3(\mem_rdata_q_reg_n_0_[31] ),
        .I4(\mem_rdata_q_reg_n_0_[22] ),
        .I5(p_0_in_1[1]),
        .O(instr_rdinstrh_i_4_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    instr_rdinstrh_i_5
       (.I0(\mem_rdata_q_reg_n_0_[16] ),
        .I1(\mem_rdata_q_reg_n_0_[19] ),
        .I2(\mem_rdata_q_reg_n_0_[17] ),
        .I3(\mem_rdata_q_reg_n_0_[18] ),
        .O(instr_rdinstrh_i_5_n_0));
  LUT4 #(
    .INIT(16'hFFEF)) 
    instr_rdinstrh_i_6
       (.I0(\mem_rdata_q_reg_n_0_[28] ),
        .I1(\mem_rdata_q_reg_n_0_[29] ),
        .I2(\mem_rdata_q_reg_n_0_[4] ),
        .I3(\mem_rdata_q_reg_n_0_[3] ),
        .O(instr_rdinstrh_i_6_n_0));
  LUT4 #(
    .INIT(16'h7FFF)) 
    instr_rdinstrh_i_7
       (.I0(\mem_rdata_q_reg_n_0_[0] ),
        .I1(\mem_rdata_q_reg_n_0_[6] ),
        .I2(\mem_rdata_q_reg_n_0_[1] ),
        .I3(\mem_rdata_q_reg_n_0_[5] ),
        .O(instr_rdinstrh_i_7_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    instr_rdinstrh_i_8
       (.I0(\mem_rdata_q_reg_n_0_[15] ),
        .I1(\mem_rdata_q_reg_n_0_[23] ),
        .I2(\mem_rdata_q_reg_n_0_[2] ),
        .I3(p_0_in_1[0]),
        .O(instr_rdinstrh_i_8_n_0));
  FDRE #(
    .INIT(1'b0)) 
    instr_rdinstrh_reg
       (.C(clk_IBUF_BUFG),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(instr_rdinstrh0),
        .Q(instr_rdinstrh),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    instr_sb_i_1
       (.I0(is_sb_sh_sw),
        .I1(p_0_in_1[0]),
        .I2(p_0_in_1[2]),
        .I3(p_0_in_1[1]),
        .O(instr_sb0));
  FDRE #(
    .INIT(1'b0)) 
    instr_sb_reg
       (.C(clk_IBUF_BUFG),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(instr_sb0),
        .Q(instr_sb),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    instr_sh_i_1
       (.I0(p_0_in_1[1]),
        .I1(p_0_in_1[0]),
        .I2(p_0_in_1[2]),
        .I3(is_sb_sh_sw),
        .O(instr_sh_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    instr_sh_reg
       (.C(clk_IBUF_BUFG),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(instr_sh_i_1_n_0),
        .Q(instr_sh),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000000080000)) 
    instr_sll_i_1
       (.I0(is_alu_reg_reg),
        .I1(is_sll_srl_sra_i_3_n_0),
        .I2(\mem_rdata_q_reg_n_0_[30] ),
        .I3(p_0_in_1[1]),
        .I4(p_0_in_1[0]),
        .I5(p_0_in_1[2]),
        .O(instr_sll0));
  FDRE #(
    .INIT(1'b0)) 
    instr_sll_reg
       (.C(clk_IBUF_BUFG),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(instr_sll0),
        .Q(instr_sll),
        .R(instr_and_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000040000000000)) 
    instr_slli_i_1
       (.I0(p_0_in_1[1]),
        .I1(p_0_in_1[0]),
        .I2(p_0_in_1[2]),
        .I3(is_alu_reg_imm),
        .I4(\mem_rdata_q_reg_n_0_[30] ),
        .I5(is_sll_srl_sra_i_3_n_0),
        .O(instr_slli0));
  FDRE #(
    .INIT(1'b0)) 
    instr_slli_reg
       (.C(clk_IBUF_BUFG),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(instr_slli0),
        .Q(instr_slli),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000000000800)) 
    instr_slt_i_1
       (.I0(is_alu_reg_reg),
        .I1(is_sll_srl_sra_i_3_n_0),
        .I2(\mem_rdata_q_reg_n_0_[30] ),
        .I3(p_0_in_1[1]),
        .I4(p_0_in_1[0]),
        .I5(p_0_in_1[2]),
        .O(instr_slt0));
  FDRE #(
    .INIT(1'b0)) 
    instr_slt_reg
       (.C(clk_IBUF_BUFG),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(instr_slt0),
        .Q(instr_slt),
        .R(instr_and_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    instr_slti_i_1
       (.I0(is_alu_reg_imm),
        .I1(p_0_in_1[1]),
        .I2(p_0_in_1[0]),
        .I3(p_0_in_1[2]),
        .O(instr_slti0));
  FDRE #(
    .INIT(1'b0)) 
    instr_slti_reg
       (.C(clk_IBUF_BUFG),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(instr_slti0),
        .Q(instr_slti),
        .R(instr_and_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    instr_sltiu_i_1
       (.I0(is_alu_reg_imm),
        .I1(p_0_in_1[1]),
        .I2(p_0_in_1[0]),
        .I3(p_0_in_1[2]),
        .O(instr_sltiu0));
  FDRE #(
    .INIT(1'b0)) 
    instr_sltiu_reg
       (.C(clk_IBUF_BUFG),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(instr_sltiu0),
        .Q(instr_sltiu),
        .R(instr_and_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000008000000)) 
    instr_sltu_i_1
       (.I0(is_alu_reg_reg),
        .I1(is_sll_srl_sra_i_3_n_0),
        .I2(\mem_rdata_q_reg_n_0_[30] ),
        .I3(p_0_in_1[1]),
        .I4(p_0_in_1[0]),
        .I5(p_0_in_1[2]),
        .O(instr_sltu0));
  FDRE #(
    .INIT(1'b0)) 
    instr_sltu_reg
       (.C(clk_IBUF_BUFG),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(instr_sltu0),
        .Q(instr_sltu),
        .R(instr_and_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000020000)) 
    instr_sra_i_1
       (.I0(\mem_rdata_q_reg_n_0_[30] ),
        .I1(\mem_rdata_q_reg_n_0_[27] ),
        .I2(\mem_rdata_q_reg_n_0_[25] ),
        .I3(\mem_rdata_q_reg_n_0_[26] ),
        .I4(instr_sra_i_2_n_0),
        .I5(instr_sra_i_3_n_0),
        .O(instr_sra0));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'h08)) 
    instr_sra_i_2
       (.I0(p_0_in_1[2]),
        .I1(p_0_in_1[0]),
        .I2(p_0_in_1[1]),
        .O(instr_sra_i_2_n_0));
  LUT4 #(
    .INIT(16'hFEFF)) 
    instr_sra_i_3
       (.I0(\mem_rdata_q_reg_n_0_[29] ),
        .I1(\mem_rdata_q_reg_n_0_[28] ),
        .I2(\mem_rdata_q_reg_n_0_[31] ),
        .I3(is_alu_reg_reg),
        .O(instr_sra_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    instr_sra_reg
       (.C(clk_IBUF_BUFG),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(instr_sra0),
        .Q(instr_sra),
        .R(instr_and_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    instr_srai_i_1
       (.I0(is_sll_srl_sra_i_3_n_0),
        .I1(\mem_rdata_q_reg_n_0_[30] ),
        .I2(is_alu_reg_imm),
        .I3(p_0_in_1[2]),
        .I4(p_0_in_1[0]),
        .I5(p_0_in_1[1]),
        .O(instr_srai0));
  FDRE #(
    .INIT(1'b0)) 
    instr_srai_reg
       (.C(clk_IBUF_BUFG),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(instr_srai0),
        .Q(instr_srai),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    instr_srl_i_1
       (.I0(is_alu_reg_reg),
        .I1(is_sll_srl_sra_i_3_n_0),
        .I2(\mem_rdata_q_reg_n_0_[30] ),
        .I3(p_0_in_1[1]),
        .I4(p_0_in_1[0]),
        .I5(p_0_in_1[2]),
        .O(instr_srl_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    instr_srl_reg
       (.C(clk_IBUF_BUFG),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(instr_srl_i_1_n_0),
        .Q(instr_srl),
        .R(instr_and_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000400000000000)) 
    instr_srli_i_1
       (.I0(p_0_in_1[1]),
        .I1(p_0_in_1[0]),
        .I2(p_0_in_1[2]),
        .I3(is_alu_reg_imm),
        .I4(\mem_rdata_q_reg_n_0_[30] ),
        .I5(is_sll_srl_sra_i_3_n_0),
        .O(instr_srli0));
  FDRE #(
    .INIT(1'b0)) 
    instr_srli_reg
       (.C(clk_IBUF_BUFG),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(instr_srli0),
        .Q(instr_srli),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    instr_sub_i_1
       (.I0(\mem_rdata_q_reg_n_0_[30] ),
        .I1(\mem_rdata_q_reg_n_0_[27] ),
        .I2(\mem_rdata_q_reg_n_0_[25] ),
        .I3(\mem_rdata_q_reg_n_0_[26] ),
        .I4(instr_sra_i_3_n_0),
        .I5(instr_sub_i_2_n_0),
        .O(instr_sub0));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    instr_sub_i_2
       (.I0(p_0_in_1[1]),
        .I1(p_0_in_1[2]),
        .I2(p_0_in_1[0]),
        .O(instr_sub_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    instr_sub_reg
       (.C(clk_IBUF_BUFG),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(instr_sub0),
        .Q(instr_sub),
        .R(instr_and_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    instr_sw_i_1
       (.I0(is_sb_sh_sw),
        .I1(p_0_in_1[1]),
        .I2(p_0_in_1[0]),
        .I3(p_0_in_1[2]),
        .O(instr_sw0));
  FDRE #(
    .INIT(1'b0)) 
    instr_sw_reg
       (.C(clk_IBUF_BUFG),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(instr_sw0),
        .Q(instr_sw),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000000080000)) 
    instr_xor_i_1
       (.I0(is_alu_reg_reg),
        .I1(is_sll_srl_sra_i_3_n_0),
        .I2(\mem_rdata_q_reg_n_0_[30] ),
        .I3(p_0_in_1[0]),
        .I4(p_0_in_1[2]),
        .I5(p_0_in_1[1]),
        .O(instr_xor0));
  FDRE #(
    .INIT(1'b0)) 
    instr_xor_reg
       (.C(clk_IBUF_BUFG),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(instr_xor0),
        .Q(instr_xor),
        .R(instr_and_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT4 #(
    .INIT(16'h0020)) 
    instr_xori_i_1
       (.I0(is_alu_reg_imm),
        .I1(p_0_in_1[0]),
        .I2(p_0_in_1[2]),
        .I3(p_0_in_1[1]),
        .O(instr_xori0));
  FDRE #(
    .INIT(1'b0)) 
    instr_xori_reg
       (.C(clk_IBUF_BUFG),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(instr_xori0),
        .Q(instr_xori),
        .R(instr_and_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h000ACC0A)) 
    is_alu_reg_imm_i_1
       (.I0(\mem_rdata_q_reg_n_0_[4] ),
        .I1(mem_rdata[4]),
        .I2(\mem_rdata_q_reg_n_0_[5] ),
        .I3(mem_valid_reg_n_0),
        .I4(mem_rdata[5]),
        .O(is_alu_reg_imm_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    is_alu_reg_imm_reg
       (.C(clk_IBUF_BUFG),
        .CE(instr_jal_i_1_n_0),
        .D(is_alu_reg_imm_i_1_n_0),
        .Q(is_alu_reg_imm),
        .R(is_sb_sh_sw_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hB8308800)) 
    is_alu_reg_reg_i_1
       (.I0(mem_rdata[4]),
        .I1(mem_valid_reg_n_0),
        .I2(\mem_rdata_q_reg_n_0_[4] ),
        .I3(mem_rdata[5]),
        .I4(\mem_rdata_q_reg_n_0_[5] ),
        .O(is_alu_reg_reg_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    is_alu_reg_reg_reg
       (.C(clk_IBUF_BUFG),
        .CE(instr_jal_i_1_n_0),
        .D(is_alu_reg_reg_i_1_n_0),
        .Q(is_alu_reg_reg),
        .R(is_sb_sh_sw_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    is_beq_bne_blt_bge_bltu_bgeu_i_1
       (.I0(instr_jal_i_5_n_0),
        .I1(is_sb_sh_sw_i_3_n_0),
        .I2(instr_jal_i_1_n_0),
        .I3(is_beq_bne_blt_bge_bltu_bgeu),
        .O(is_beq_bne_blt_bge_bltu_bgeu_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    is_beq_bne_blt_bge_bltu_bgeu_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(is_beq_bne_blt_bge_bltu_bgeu_i_1_n_0),
        .Q(is_beq_bne_blt_bge_bltu_bgeu),
        .R(instr_and_i_1_n_0));
  LUT5 #(
    .INIT(32'hE0E000E0)) 
    is_compare_i_1
       (.I0(is_compare_i_2_n_0),
        .I1(is_beq_bne_blt_bge_bltu_bgeu),
        .I2(resetn_IBUF),
        .I3(decoder_trigger_reg_n_0),
        .I4(decoder_pseudo_trigger_reg_n_0),
        .O(is_compare_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    is_compare_i_2
       (.I0(instr_slti),
        .I1(instr_slt),
        .I2(instr_sltiu),
        .I3(instr_sltu),
        .O(is_compare_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    is_compare_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(is_compare_i_1_n_0),
        .Q(is_compare),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT4 #(
    .INIT(16'hEAEE)) 
    is_jalr_addi_slti_sltiu_xori_ori_andi_i_1
       (.I0(instr_jalr),
        .I1(is_alu_reg_imm),
        .I2(p_0_in_1[1]),
        .I3(p_0_in_1[0]),
        .O(is_jalr_addi_slti_sltiu_xori_ori_andi0));
  FDRE #(
    .INIT(1'b0)) 
    is_jalr_addi_slti_sltiu_xori_ori_andi_reg
       (.C(clk_IBUF_BUFG),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(is_jalr_addi_slti_sltiu_xori_ori_andi0),
        .Q(is_jalr_addi_slti_sltiu_xori_ori_andi),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h00053305)) 
    is_lb_lh_lw_lbu_lhu_i_1
       (.I0(\mem_rdata_q_reg_n_0_[5] ),
        .I1(mem_rdata[5]),
        .I2(\mem_rdata_q_reg_n_0_[4] ),
        .I3(mem_valid_reg_n_0),
        .I4(mem_rdata[4]),
        .O(is_lb_lh_lw_lbu_lhu_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    is_lb_lh_lw_lbu_lhu_reg
       (.C(clk_IBUF_BUFG),
        .CE(instr_jal_i_1_n_0),
        .D(is_lb_lh_lw_lbu_lhu_i_1_n_0),
        .Q(is_lb_lh_lw_lbu_lhu),
        .R(is_sb_sh_sw_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    is_lbu_lhu_lw_i_1
       (.I0(instr_lw),
        .I1(instr_lhu),
        .I2(instr_lbu),
        .O(is_lbu_lhu_lw_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    is_lbu_lhu_lw_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(is_lbu_lhu_lw_i_1_n_0),
        .Q(is_lbu_lhu_lw),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    is_lui_auipc_jal_i_1
       (.I0(instr_jal),
        .I1(instr_auipc),
        .I2(instr_lui),
        .O(is_lui_auipc_jal_i_1_n_0));
  LUT6 #(
    .INIT(64'h00000000FFFFFFFE)) 
    is_lui_auipc_jal_jalr_addi_add_sub_i_1
       (.I0(instr_add),
        .I1(instr_sub),
        .I2(instr_jalr),
        .I3(instr_addi),
        .I4(is_lui_auipc_jal_i_1_n_0),
        .I5(is_lui_auipc_jal_jalr_addi_add_sub0),
        .O(is_lui_auipc_jal_jalr_addi_add_sub_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    is_lui_auipc_jal_jalr_addi_add_sub_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(is_lui_auipc_jal_jalr_addi_add_sub_i_1_n_0),
        .Q(is_lui_auipc_jal_jalr_addi_add_sub),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    is_lui_auipc_jal_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(is_lui_auipc_jal_i_1_n_0),
        .Q(is_lui_auipc_jal),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hA8AAA888)) 
    is_sb_sh_sw_i_1
       (.I0(instr_jal_i_1_n_0),
        .I1(is_sb_sh_sw_i_3_n_0),
        .I2(mem_rdata[6]),
        .I3(mem_valid_reg_n_0),
        .I4(\mem_rdata_q_reg_n_0_[6] ),
        .O(is_sb_sh_sw_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h000ACC0A)) 
    is_sb_sh_sw_i_2
       (.I0(\mem_rdata_q_reg_n_0_[5] ),
        .I1(mem_rdata[5]),
        .I2(\mem_rdata_q_reg_n_0_[4] ),
        .I3(mem_valid_reg_n_0),
        .I4(mem_rdata[4]),
        .O(is_sb_sh_sw_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFBBFCB8FFFFFFFF)) 
    is_sb_sh_sw_i_3
       (.I0(mem_rdata[2]),
        .I1(mem_valid_reg_n_0),
        .I2(\mem_rdata_q_reg_n_0_[2] ),
        .I3(mem_rdata[3]),
        .I4(\mem_rdata_q_reg_n_0_[3] ),
        .I5(is_sb_sh_sw_i_4_n_0),
        .O(is_sb_sh_sw_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hCCA000A0)) 
    is_sb_sh_sw_i_4
       (.I0(\mem_rdata_q_reg_n_0_[1] ),
        .I1(mem_rdata[1]),
        .I2(\mem_rdata_q_reg_n_0_[0] ),
        .I3(mem_valid_reg_n_0),
        .I4(mem_rdata[0]),
        .O(is_sb_sh_sw_i_4_n_0));
  FDRE #(
    .INIT(1'b0)) 
    is_sb_sh_sw_reg
       (.C(clk_IBUF_BUFG),
        .CE(instr_jal_i_1_n_0),
        .D(is_sb_sh_sw_i_2_n_0),
        .Q(is_sb_sh_sw),
        .R(is_sb_sh_sw_i_1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    is_sll_srl_sra_i_1
       (.I0(decoder_trigger_reg_n_0),
        .I1(decoder_pseudo_trigger_reg_n_0),
        .O(is_lui_auipc_jal_jalr_addi_add_sub0));
  LUT6 #(
    .INIT(64'h0800080800000000)) 
    is_sll_srl_sra_i_2
       (.I0(is_alu_reg_reg),
        .I1(p_0_in_1[0]),
        .I2(p_0_in_1[1]),
        .I3(p_0_in_1[2]),
        .I4(\mem_rdata_q_reg_n_0_[30] ),
        .I5(is_sll_srl_sra_i_3_n_0),
        .O(is_sll_srl_sra0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    is_sll_srl_sra_i_3
       (.I0(\mem_rdata_q_reg_n_0_[26] ),
        .I1(\mem_rdata_q_reg_n_0_[25] ),
        .I2(\mem_rdata_q_reg_n_0_[27] ),
        .I3(\mem_rdata_q_reg_n_0_[29] ),
        .I4(\mem_rdata_q_reg_n_0_[28] ),
        .I5(\mem_rdata_q_reg_n_0_[31] ),
        .O(is_sll_srl_sra_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    is_sll_srl_sra_reg
       (.C(clk_IBUF_BUFG),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(is_sll_srl_sra0),
        .Q(is_sll_srl_sra),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0800080800000000)) 
    is_slli_srli_srai_i_1
       (.I0(is_alu_reg_imm),
        .I1(p_0_in_1[0]),
        .I2(p_0_in_1[1]),
        .I3(p_0_in_1[2]),
        .I4(\mem_rdata_q_reg_n_0_[30] ),
        .I5(is_sll_srl_sra_i_3_n_0),
        .O(is_slli_srli_srai0));
  FDRE #(
    .INIT(1'b0)) 
    is_slli_srli_srai_reg
       (.C(clk_IBUF_BUFG),
        .CE(is_lui_auipc_jal_jalr_addi_add_sub0),
        .D(is_slli_srli_srai0),
        .Q(is_slli_srli_srai),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    is_slti_blt_slt_i_1
       (.I0(instr_blt),
        .I1(instr_slti),
        .I2(instr_slt),
        .O(is_slti_blt_slt_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    is_slti_blt_slt_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(is_slti_blt_slt_i_1_n_0),
        .Q(is_slti_blt_slt),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hFE)) 
    is_sltiu_bltu_sltu_i_1
       (.I0(instr_bltu),
        .I1(instr_sltiu),
        .I2(instr_sltu),
        .O(is_sltiu_bltu_sltu_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    is_sltiu_bltu_sltu_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(is_sltiu_bltu_sltu_i_1_n_0),
        .Q(is_sltiu_bltu_sltu),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAEAEAAFFAEAEAA00)) 
    latched_branch_i_1
       (.I0(latched_branch_i_2_n_0),
        .I1(is_beq_bne_blt_bge_bltu_bgeu),
        .I2(decoder_trigger_i_2_n_0),
        .I3(reg_next_pc),
        .I4(\cpu_state_reg_n_0_[3] ),
        .I5(latched_branch_reg_n_0),
        .O(latched_branch_i_1_n_0));
  LUT5 #(
    .INIT(32'h0088F088)) 
    latched_branch_i_2
       (.I0(instr_jal),
        .I1(decoder_trigger_reg_n_0),
        .I2(instr_jalr),
        .I3(\cpu_state_reg_n_0_[3] ),
        .I4(is_beq_bne_blt_bge_bltu_bgeu),
        .O(latched_branch_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    latched_branch_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(latched_branch_i_1_n_0),
        .Q(latched_branch_reg_n_0),
        .R(instr_and_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    latched_is_lb_i_1
       (.I0(instr_lb),
        .I1(reg_next_pc),
        .I2(latched_is_lu),
        .I3(latched_is_lb_reg_n_0),
        .O(latched_is_lb_i_1_n_0));
  LUT5 #(
    .INIT(32'hBABBAAAA)) 
    latched_is_lb_i_2
       (.I0(reg_next_pc),
        .I1(mem_do_rdata),
        .I2(instr_jal_i_3_n_0),
        .I3(mem_do_prefetch_reg_n_0),
        .I4(\cpu_state_reg_n_0_[0] ),
        .O(latched_is_lu));
  FDRE #(
    .INIT(1'b0)) 
    latched_is_lb_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(latched_is_lb_i_1_n_0),
        .Q(latched_is_lb_reg_n_0),
        .R(instr_and_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    latched_is_lh_i_1
       (.I0(instr_lh),
        .I1(reg_next_pc),
        .I2(latched_is_lu),
        .I3(latched_is_lh_reg_n_0),
        .O(latched_is_lh_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    latched_is_lh_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(latched_is_lh_i_1_n_0),
        .Q(latched_is_lh_reg_n_0),
        .R(instr_and_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F20)) 
    latched_is_lu_i_1
       (.I0(is_lbu_lhu_lw),
        .I1(reg_next_pc),
        .I2(latched_is_lu),
        .I3(latched_is_lu_reg_n_0),
        .O(latched_is_lu_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    latched_is_lu_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(latched_is_lu_i_1_n_0),
        .Q(latched_is_lu_reg_n_0),
        .R(instr_and_i_1_n_0));
  LUT4 #(
    .INIT(16'h0080)) 
    \latched_rd[4]_i_1 
       (.I0(is_beq_bne_blt_bge_bltu_bgeu),
        .I1(\cpu_state_reg_n_0_[3] ),
        .I2(resetn_IBUF),
        .I3(reg_next_pc),
        .O(\latched_rd[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hAA80)) 
    \latched_rd[4]_i_2 
       (.I0(resetn_IBUF),
        .I1(\cpu_state_reg_n_0_[3] ),
        .I2(is_beq_bne_blt_bge_bltu_bgeu),
        .I3(reg_next_pc),
        .O(\latched_rd[4]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \latched_rd_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\latched_rd[4]_i_2_n_0 ),
        .D(decoded_rd[0]),
        .Q(latched_rd[0]),
        .R(\latched_rd[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \latched_rd_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\latched_rd[4]_i_2_n_0 ),
        .D(decoded_rd[1]),
        .Q(latched_rd[1]),
        .R(\latched_rd[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \latched_rd_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\latched_rd[4]_i_2_n_0 ),
        .D(decoded_rd[2]),
        .Q(latched_rd[2]),
        .R(\latched_rd[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \latched_rd_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\latched_rd[4]_i_2_n_0 ),
        .D(decoded_rd[3]),
        .Q(latched_rd[3]),
        .R(\latched_rd[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \latched_rd_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\latched_rd[4]_i_2_n_0 ),
        .D(decoded_rd[4]),
        .Q(latched_rd[4]),
        .R(\latched_rd[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT4 #(
    .INIT(16'h5510)) 
    latched_stalu_i_1
       (.I0(reg_next_pc),
        .I1(is_beq_bne_blt_bge_bltu_bgeu),
        .I2(\cpu_state_reg_n_0_[3] ),
        .I3(latched_stalu_reg_n_0),
        .O(latched_stalu_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    latched_stalu_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(latched_stalu_i_1_n_0),
        .Q(latched_stalu_reg_n_0),
        .R(instr_and_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFF1FFFFFFF10000)) 
    latched_store_i_1
       (.I0(decoder_trigger_i_2_n_0),
        .I1(reg_next_pc),
        .I2(latched_store_i_2_n_0),
        .I3(\cpu_state_reg_n_0_[2] ),
        .I4(latched_store),
        .I5(latched_store_reg_n_0),
        .O(latched_store_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'h15)) 
    latched_store_i_2
       (.I0(reg_next_pc),
        .I1(is_beq_bne_blt_bge_bltu_bgeu),
        .I2(\cpu_state_reg_n_0_[3] ),
        .O(latched_store_i_2_n_0));
  LUT6 #(
    .INIT(64'h00000000EEEEEFFF)) 
    latched_store_i_3
       (.I0(\cpu_state_reg_n_0_[2] ),
        .I1(\cpu_state_reg_n_0_[3] ),
        .I2(\cpu_state[6]_i_2_n_0 ),
        .I3(\cpu_state_reg_n_0_[5] ),
        .I4(\cpu_state_reg_n_0_[7] ),
        .I5(\cpu_state_reg_n_0_[1] ),
        .O(latched_store));
  FDRE #(
    .INIT(1'b0)) 
    latched_store_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(latched_store_i_1_n_0),
        .Q(latched_store_reg_n_0),
        .R(instr_and_i_1_n_0));
  LUT6 #(
    .INIT(64'h00000000A2AAAEAA)) 
    mem_do_prefetch_i_1
       (.I0(mem_do_prefetch_reg_n_0),
        .I1(decoder_trigger_reg_n_0),
        .I2(instr_jal),
        .I3(cpu_state0_out[5]),
        .I4(instr_jalr),
        .I5(mem_do_rinst0),
        .O(mem_do_prefetch_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    mem_do_prefetch_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(mem_do_prefetch_i_1_n_0),
        .Q(mem_do_prefetch_reg_n_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'hA3A0)) 
    mem_do_rdata_i_1
       (.I0(resetn_IBUF),
        .I1(mem_do_rinst0),
        .I2(mem_do_rdata_i_3_n_0),
        .I3(mem_do_rdata),
        .O(mem_do_rdata_i_1_n_0));
  LUT6 #(
    .INIT(64'hFDFDFD55F5555555)) 
    mem_do_rdata_i_2
       (.I0(resetn_IBUF),
        .I1(instr_jal_i_6_n_0),
        .I2(mem_do_rinst_reg_n_0),
        .I3(\mem_state_reg_n_0_[1] ),
        .I4(\mem_state_reg_n_0_[0] ),
        .I5(mem_valid_reg_n_0),
        .O(mem_do_rinst0));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    mem_do_rdata_i_3
       (.I0(mem_do_rdata_i_4_n_0),
        .I1(\cpu_state_reg_n_0_[1] ),
        .I2(\cpu_state_reg_n_0_[3] ),
        .I3(reg_next_pc),
        .I4(\cpu_state_reg_n_0_[7] ),
        .I5(decoder_pseudo_trigger_i_2_n_0),
        .O(mem_do_rdata_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h45)) 
    mem_do_rdata_i_4
       (.I0(mem_do_rdata),
        .I1(instr_jal_i_3_n_0),
        .I2(mem_do_prefetch_reg_n_0),
        .O(mem_do_rdata_i_4_n_0));
  FDRE #(
    .INIT(1'b0)) 
    mem_do_rdata_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(mem_do_rdata_i_1_n_0),
        .Q(mem_do_rdata),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h3202FFFF32023202)) 
    mem_do_rinst_i_1
       (.I0(mem_do_rinst_reg_n_0),
        .I1(mem_do_rinst0),
        .I2(mem_do_rinst5_out),
        .I3(mem_do_rinst),
        .I4(mem_do_rinst_i_4_n_0),
        .I5(resetn_IBUF),
        .O(mem_do_rinst_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    mem_do_rinst_i_10
       (.I0(instr_lui),
        .I1(instr_auipc),
        .I2(instr_jal),
        .I3(instr_rdinstr),
        .I4(instr_rdinstrh),
        .I5(instr_rdcycleh),
        .O(mem_do_rinst_i_10_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    mem_do_rinst_i_11
       (.I0(is_compare_i_2_n_0),
        .I1(instr_rdcycleh),
        .I2(instr_rdinstrh),
        .I3(instr_rdinstr),
        .I4(instr_jal),
        .I5(mem_do_rinst_i_13_n_0),
        .O(mem_do_rinst_i_11_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFEF)) 
    mem_do_rinst_i_12
       (.I0(instr_add),
        .I1(instr_sub),
        .I2(\cpu_state[7]_i_12_n_0 ),
        .I3(mem_do_rinst_i_14_n_0),
        .I4(\cpu_state[7]_i_14_n_0 ),
        .I5(mem_do_rinst_i_15_n_0),
        .O(mem_do_rinst_i_12_n_0));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'hE)) 
    mem_do_rinst_i_13
       (.I0(instr_lui),
        .I1(instr_auipc),
        .O(mem_do_rinst_i_13_n_0));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    mem_do_rinst_i_14
       (.I0(instr_lh),
        .I1(instr_lhu),
        .I2(instr_lb),
        .I3(instr_lbu),
        .O(mem_do_rinst_i_14_n_0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    mem_do_rinst_i_15
       (.I0(instr_or),
        .I1(instr_sh),
        .I2(instr_sw),
        .I3(instr_bge),
        .O(mem_do_rinst_i_15_n_0));
  LUT6 #(
    .INIT(64'hFF30FF30FFFFFF75)) 
    mem_do_rinst_i_2
       (.I0(is_sll_srl_sra),
        .I1(mem_do_rinst_i_5_n_0),
        .I2(\reg_op2[31]_i_1_n_0 ),
        .I3(mem_do_rinst_i_6_n_0),
        .I4(is_sb_sh_sw),
        .I5(mem_do_rinst_i_7_n_0),
        .O(mem_do_rinst5_out));
  LUT6 #(
    .INIT(64'hFFFFFFFFF8880000)) 
    mem_do_rinst_i_3
       (.I0(\cpu_state[7]_i_6_n_0 ),
        .I1(is_lb_lh_lw_lbu_lhu),
        .I2(is_sb_sh_sw),
        .I3(\reg_op2[31]_i_4_n_0 ),
        .I4(\cpu_state_reg_n_0_[5] ),
        .I5(mem_do_rinst_i_8_n_0),
        .O(mem_do_rinst));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h10FFFFFF)) 
    mem_do_rinst_i_4
       (.I0(decoder_trigger_i_5_n_0),
        .I1(decoder_trigger_i_4_n_0),
        .I2(mem_do_rinst_i_9_n_0),
        .I3(is_beq_bne_blt_bge_bltu_bgeu),
        .I4(\cpu_state_reg_n_0_[3] ),
        .O(mem_do_rinst_i_4_n_0));
  LUT6 #(
    .INIT(64'h5555555555555557)) 
    mem_do_rinst_i_5
       (.I0(is_lb_lh_lw_lbu_lhu),
        .I1(\cpu_state[7]_i_11_n_0 ),
        .I2(\cpu_state[7]_i_10_n_0 ),
        .I3(\cpu_state[7]_i_9_n_0 ),
        .I4(is_compare_i_2_n_0),
        .I5(mem_do_rinst_i_10_n_0),
        .O(mem_do_rinst_i_5_n_0));
  LUT6 #(
    .INIT(64'hAAAAA080AAAAAAAA)) 
    mem_do_rinst_i_6
       (.I0(resetn_IBUF),
        .I1(is_lui_auipc_jal),
        .I2(\cpu_state_reg_n_0_[5] ),
        .I3(is_jalr_addi_slti_sltiu_xori_ori_andi),
        .I4(reg_next_pc),
        .I5(\reg_sh[4]_i_3_n_0 ),
        .O(mem_do_rinst_i_6_n_0));
  LUT6 #(
    .INIT(64'hBFBFBFBFBFBFBFFF)) 
    mem_do_rinst_i_7
       (.I0(is_slli_srli_srai),
        .I1(\reg_op2[31]_i_1_n_0 ),
        .I2(\cpu_state[6]_i_2_n_0 ),
        .I3(mem_do_rinst_i_11_n_0),
        .I4(mem_do_rinst_i_12_n_0),
        .I5(\cpu_state[7]_i_11_n_0 ),
        .O(mem_do_rinst_i_7_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFD0D0D0D0D0)) 
    mem_do_rinst_i_8
       (.I0(decoder_trigger_reg_n_0),
        .I1(instr_jal),
        .I2(reg_next_pc),
        .I3(\cpu_state_reg_n_0_[5] ),
        .I4(\cpu_state_reg_n_0_[2] ),
        .I5(mem_do_prefetch_reg_n_0),
        .O(mem_do_rinst_i_8_n_0));
  LUT4 #(
    .INIT(16'hD0DD)) 
    mem_do_rinst_i_9
       (.I0(instr_bgeu),
        .I1(alu_ltu),
        .I2(alu_eq),
        .I3(instr_bne),
        .O(mem_do_rinst_i_9_n_0));
  FDRE #(
    .INIT(1'b0)) 
    mem_do_rinst_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(mem_do_rinst_i_1_n_0),
        .Q(mem_do_rinst_reg_n_0),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hF40C0000)) 
    mem_do_wdata_i_1
       (.I0(mem_do_prefetch_reg_n_0),
        .I1(\cpu_state_reg_n_0_[1] ),
        .I2(mem_do_wdata),
        .I3(mem_do_wdata_i_2_n_0),
        .I4(resetn_IBUF),
        .O(mem_do_wdata_i_1_n_0));
  LUT6 #(
    .INIT(64'h17571757175717FF)) 
    mem_do_wdata_i_2
       (.I0(mem_valid_reg_n_0),
        .I1(\mem_state_reg_n_0_[0] ),
        .I2(\mem_state_reg_n_0_[1] ),
        .I3(mem_do_rinst_reg_n_0),
        .I4(mem_do_wdata),
        .I5(mem_do_rdata),
        .O(mem_do_wdata_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    mem_do_wdata_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(mem_do_wdata_i_1_n_0),
        .Q(mem_do_wdata),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hB8)) 
    \mem_rdata_q[0]_i_1 
       (.I0(mem_rdata[0]),
        .I1(mem_valid_reg_n_0),
        .I2(\mem_rdata_q_reg_n_0_[0] ),
        .O(\mem_rdata_q[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem_rdata_q[1]_i_1 
       (.I0(mem_rdata[1]),
        .I1(mem_valid_reg_n_0),
        .I2(\mem_rdata_q_reg_n_0_[1] ),
        .O(\mem_rdata_q[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem_rdata_q[2]_i_1 
       (.I0(mem_rdata[2]),
        .I1(mem_valid_reg_n_0),
        .I2(\mem_rdata_q_reg_n_0_[2] ),
        .O(\mem_rdata_q[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem_rdata_q[3]_i_1 
       (.I0(mem_rdata[3]),
        .I1(mem_valid_reg_n_0),
        .I2(\mem_rdata_q_reg_n_0_[3] ),
        .O(\mem_rdata_q[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem_rdata_q[4]_i_1 
       (.I0(mem_rdata[4]),
        .I1(mem_valid_reg_n_0),
        .I2(\mem_rdata_q_reg_n_0_[4] ),
        .O(\mem_rdata_q[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem_rdata_q[5]_i_1 
       (.I0(mem_rdata[5]),
        .I1(mem_valid_reg_n_0),
        .I2(\mem_rdata_q_reg_n_0_[5] ),
        .O(\mem_rdata_q[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem_rdata_q[6]_i_1 
       (.I0(mem_rdata[6]),
        .I1(mem_valid_reg_n_0),
        .I2(\mem_rdata_q_reg_n_0_[6] ),
        .O(\mem_rdata_q[6]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \mem_rdata_q_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\mem_rdata_q[0]_i_1_n_0 ),
        .Q(\mem_rdata_q_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_rdata_q_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(mem_valid_reg_n_0),
        .D(mem_rdata[10]),
        .Q(\mem_rdata_q_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_rdata_q_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(mem_valid_reg_n_0),
        .D(mem_rdata[11]),
        .Q(\mem_rdata_q_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_rdata_q_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(mem_valid_reg_n_0),
        .D(mem_rdata[12]),
        .Q(p_0_in_1[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_rdata_q_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(mem_valid_reg_n_0),
        .D(mem_rdata[13]),
        .Q(p_0_in_1[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_rdata_q_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(mem_valid_reg_n_0),
        .D(mem_rdata[14]),
        .Q(p_0_in_1[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_rdata_q_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(mem_valid_reg_n_0),
        .D(mem_rdata[15]),
        .Q(\mem_rdata_q_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_rdata_q_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(mem_valid_reg_n_0),
        .D(mem_rdata[16]),
        .Q(\mem_rdata_q_reg_n_0_[16] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_rdata_q_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(mem_valid_reg_n_0),
        .D(mem_rdata[17]),
        .Q(\mem_rdata_q_reg_n_0_[17] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_rdata_q_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(mem_valid_reg_n_0),
        .D(mem_rdata[18]),
        .Q(\mem_rdata_q_reg_n_0_[18] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_rdata_q_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(mem_valid_reg_n_0),
        .D(mem_rdata[19]),
        .Q(\mem_rdata_q_reg_n_0_[19] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_rdata_q_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\mem_rdata_q[1]_i_1_n_0 ),
        .Q(\mem_rdata_q_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_rdata_q_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(mem_valid_reg_n_0),
        .D(mem_rdata[20]),
        .Q(\mem_rdata_q_reg_n_0_[20] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_rdata_q_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(mem_valid_reg_n_0),
        .D(mem_rdata[21]),
        .Q(\mem_rdata_q_reg_n_0_[21] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_rdata_q_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(mem_valid_reg_n_0),
        .D(mem_rdata[22]),
        .Q(\mem_rdata_q_reg_n_0_[22] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_rdata_q_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(mem_valid_reg_n_0),
        .D(mem_rdata[23]),
        .Q(\mem_rdata_q_reg_n_0_[23] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_rdata_q_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(mem_valid_reg_n_0),
        .D(mem_rdata[24]),
        .Q(\mem_rdata_q_reg_n_0_[24] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_rdata_q_reg[25] 
       (.C(clk_IBUF_BUFG),
        .CE(mem_valid_reg_n_0),
        .D(mem_rdata[25]),
        .Q(\mem_rdata_q_reg_n_0_[25] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_rdata_q_reg[26] 
       (.C(clk_IBUF_BUFG),
        .CE(mem_valid_reg_n_0),
        .D(mem_rdata[26]),
        .Q(\mem_rdata_q_reg_n_0_[26] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_rdata_q_reg[27] 
       (.C(clk_IBUF_BUFG),
        .CE(mem_valid_reg_n_0),
        .D(mem_rdata[27]),
        .Q(\mem_rdata_q_reg_n_0_[27] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_rdata_q_reg[28] 
       (.C(clk_IBUF_BUFG),
        .CE(mem_valid_reg_n_0),
        .D(mem_rdata[28]),
        .Q(\mem_rdata_q_reg_n_0_[28] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_rdata_q_reg[29] 
       (.C(clk_IBUF_BUFG),
        .CE(mem_valid_reg_n_0),
        .D(mem_rdata[29]),
        .Q(\mem_rdata_q_reg_n_0_[29] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_rdata_q_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\mem_rdata_q[2]_i_1_n_0 ),
        .Q(\mem_rdata_q_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_rdata_q_reg[30] 
       (.C(clk_IBUF_BUFG),
        .CE(mem_valid_reg_n_0),
        .D(mem_rdata[30]),
        .Q(\mem_rdata_q_reg_n_0_[30] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_rdata_q_reg[31] 
       (.C(clk_IBUF_BUFG),
        .CE(mem_valid_reg_n_0),
        .D(mem_rdata[31]),
        .Q(\mem_rdata_q_reg_n_0_[31] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_rdata_q_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\mem_rdata_q[3]_i_1_n_0 ),
        .Q(\mem_rdata_q_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_rdata_q_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\mem_rdata_q[4]_i_1_n_0 ),
        .Q(\mem_rdata_q_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_rdata_q_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\mem_rdata_q[5]_i_1_n_0 ),
        .Q(\mem_rdata_q_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_rdata_q_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\mem_rdata_q[6]_i_1_n_0 ),
        .Q(\mem_rdata_q_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_rdata_q_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(mem_valid_reg_n_0),
        .D(mem_rdata[7]),
        .Q(\mem_rdata_q_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_rdata_q_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(mem_valid_reg_n_0),
        .D(mem_rdata[8]),
        .Q(\mem_rdata_q_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_rdata_q_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(mem_valid_reg_n_0),
        .D(mem_rdata[9]),
        .Q(\mem_rdata_q_reg_n_0_[9] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0101FFFF000F0000)) 
    \mem_state[0]_i_1 
       (.I0(mem_do_rinst_reg_n_0),
        .I1(mem_do_rdata),
        .I2(\mem_state_reg_n_0_[1] ),
        .I3(mem_do_wdata),
        .I4(mem_state),
        .I5(\mem_state_reg_n_0_[0] ),
        .O(\mem_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000FFFF11F00000)) 
    \mem_state[1]_i_1 
       (.I0(mem_do_rinst_reg_n_0),
        .I1(mem_do_rdata),
        .I2(mem_do_wdata),
        .I3(\mem_state_reg_n_0_[0] ),
        .I4(mem_state),
        .I5(\mem_state_reg_n_0_[1] ),
        .O(\mem_state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2220202020202020)) 
    \mem_state[1]_i_2 
       (.I0(resetn_IBUF),
        .I1(trap_OBUF),
        .I2(\mem_state[1]_i_3_n_0 ),
        .I3(\mem_state_reg_n_0_[0] ),
        .I4(\mem_state_reg_n_0_[1] ),
        .I5(mem_do_rinst_reg_n_0),
        .O(mem_state));
  LUT6 #(
    .INIT(64'h0000FF00FF00FDFD)) 
    \mem_state[1]_i_3 
       (.I0(memory_reg_0_i_24_n_0),
        .I1(mem_do_wdata),
        .I2(mem_do_rdata),
        .I3(mem_valid_reg_n_0),
        .I4(\mem_state_reg_n_0_[0] ),
        .I5(\mem_state_reg_n_0_[1] ),
        .O(\mem_state[1]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \mem_state_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\mem_state[0]_i_1_n_0 ),
        .Q(\mem_state_reg_n_0_[0] ),
        .R(instr_and_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_state_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\mem_state[1]_i_1_n_0 ),
        .Q(\mem_state_reg_n_0_[1] ),
        .R(instr_and_i_1_n_0));
  LUT6 #(
    .INIT(64'h00000000EAAE0000)) 
    mem_valid_i_1
       (.I0(mem_valid_i_2_n_0),
        .I1(mem_valid_reg_n_0),
        .I2(\mem_state_reg_n_0_[0] ),
        .I3(\mem_state_reg_n_0_[1] ),
        .I4(resetn_IBUF),
        .I5(trap_OBUF),
        .O(mem_valid_i_1_n_0));
  LUT6 #(
    .INIT(64'h1111111111111110)) 
    mem_valid_i_2
       (.I0(\mem_state_reg_n_0_[0] ),
        .I1(\mem_state_reg_n_0_[1] ),
        .I2(mem_do_rdata),
        .I3(mem_do_wdata),
        .I4(mem_do_rinst_reg_n_0),
        .I5(mem_do_prefetch_reg_n_0),
        .O(mem_valid_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    mem_valid_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(mem_valid_i_1_n_0),
        .Q(mem_valid_reg_n_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h88B8FFFF88B80000)) 
    \mem_wordsize[0]_i_1 
       (.I0(\mem_wordsize[0]_i_2_n_0 ),
        .I1(\cpu_state_reg_n_0_[0] ),
        .I2(instr_sh),
        .I3(reg_next_pc),
        .I4(\mem_wordsize[1]_i_3_n_0 ),
        .I5(\mem_wordsize_reg_n_0_[0] ),
        .O(\mem_wordsize[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \mem_wordsize[0]_i_2 
       (.I0(instr_lhu),
        .I1(instr_lh),
        .O(\mem_wordsize[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h88B8FFFF88B80000)) 
    \mem_wordsize[1]_i_1 
       (.I0(\mem_wordsize[1]_i_2_n_0 ),
        .I1(\cpu_state_reg_n_0_[0] ),
        .I2(instr_sb),
        .I3(reg_next_pc),
        .I4(\mem_wordsize[1]_i_3_n_0 ),
        .I5(\mem_wordsize_reg_n_0_[1] ),
        .O(\mem_wordsize[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \mem_wordsize[1]_i_2 
       (.I0(instr_lbu),
        .I1(instr_lb),
        .O(\mem_wordsize[1]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFEA)) 
    \mem_wordsize[1]_i_3 
       (.I0(\reg_op1[31]_i_4_n_0 ),
        .I1(resetn_IBUF),
        .I2(reg_next_pc),
        .I3(\reg_op1[31]_i_3_n_0 ),
        .O(\mem_wordsize[1]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \mem_wordsize_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\mem_wordsize[0]_i_1_n_0 ),
        .Q(\mem_wordsize_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_wordsize_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\mem_wordsize[1]_i_1_n_0 ),
        .Q(\mem_wordsize_reg_n_0_[1] ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h00000002)) 
    memory_reg_0_i_1
       (.I0(memory_reg_0_i_15_n_0),
        .I1(memory_reg_0_i_16_n_0),
        .I2(memory_reg_0_i_17_n_0),
        .I3(memory_reg_0_i_18_n_0),
        .I4(memory_reg_0_i_19_n_0),
        .O(out_byte_en01_out));
  LUT6 #(
    .INIT(64'hAAACAAACFFFC000C)) 
    memory_reg_0_i_10
       (.I0(\reg_out_reg_n_0_[5] ),
        .I1(\reg_op1_reg_n_0_[5] ),
        .I2(mem_do_prefetch_reg_n_0),
        .I3(mem_do_rinst_reg_n_0),
        .I4(\reg_next_pc_reg_n_0_[5] ),
        .I5(memory_reg_0_i_20_n_0),
        .O(ADDRARDADDR[3]));
  LUT6 #(
    .INIT(64'hAAACAAACFFFC000C)) 
    memory_reg_0_i_11
       (.I0(\reg_out_reg_n_0_[4] ),
        .I1(\reg_op1_reg_n_0_[4] ),
        .I2(mem_do_prefetch_reg_n_0),
        .I3(mem_do_rinst_reg_n_0),
        .I4(\reg_next_pc_reg_n_0_[4] ),
        .I5(memory_reg_0_i_20_n_0),
        .O(ADDRARDADDR[2]));
  LUT6 #(
    .INIT(64'hB8B8B8FFB8B8B800)) 
    memory_reg_0_i_12
       (.I0(\reg_out_reg_n_0_[3] ),
        .I1(memory_reg_0_i_20_n_0),
        .I2(\reg_next_pc_reg_n_0_[3] ),
        .I3(mem_do_prefetch_reg_n_0),
        .I4(mem_do_rinst_reg_n_0),
        .I5(\reg_op1_reg_n_0_[3] ),
        .O(ADDRARDADDR[1]));
  LUT6 #(
    .INIT(64'hB8B8B8FFB8B8B800)) 
    memory_reg_0_i_13
       (.I0(\reg_out_reg_n_0_[2] ),
        .I1(memory_reg_0_i_20_n_0),
        .I2(\reg_next_pc_reg_n_0_[2] ),
        .I3(mem_do_prefetch_reg_n_0),
        .I4(mem_do_rinst_reg_n_0),
        .I5(\reg_op1_reg_n_0_[2] ),
        .O(ADDRARDADDR[0]));
  LUT4 #(
    .INIT(16'h03F7)) 
    memory_reg_0_i_14
       (.I0(\reg_op1_reg_n_0_[0] ),
        .I1(\mem_wordsize_reg_n_0_[1] ),
        .I2(\mem_wordsize_reg_n_0_[0] ),
        .I3(\reg_op1_reg_n_0_[1] ),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hFBFBFBAA)) 
    memory_reg_0_i_15
       (.I0(memory_reg_0_i_21_n_0),
        .I1(memory_reg_0_i_22_n_0),
        .I2(memory_reg_0_i_23_n_0),
        .I3(mem_do_rinst_reg_n_0),
        .I4(mem_do_prefetch_reg_n_0),
        .O(memory_reg_0_i_15_n_0));
  LUT6 #(
    .INIT(64'hACACACFFACACAC00)) 
    memory_reg_0_i_16
       (.I0(\reg_out_reg_n_0_[20] ),
        .I1(\reg_next_pc_reg_n_0_[20] ),
        .I2(memory_reg_0_i_20_n_0),
        .I3(mem_do_rinst_reg_n_0),
        .I4(mem_do_prefetch_reg_n_0),
        .I5(\reg_op1_reg_n_0_[20] ),
        .O(memory_reg_0_i_16_n_0));
  LUT6 #(
    .INIT(64'hF0F0F0CCAAAAAACC)) 
    memory_reg_0_i_17
       (.I0(\reg_next_pc_reg_n_0_[28] ),
        .I1(\reg_op1_reg_n_0_[28] ),
        .I2(\reg_out_reg_n_0_[28] ),
        .I3(mem_do_prefetch_reg_n_0),
        .I4(mem_do_rinst_reg_n_0),
        .I5(memory_reg_0_i_20_n_0),
        .O(memory_reg_0_i_17_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFA8FFFF)) 
    memory_reg_0_i_18
       (.I0(memory_reg_0_i_24_n_0),
        .I1(\reg_op1_reg_n_0_[15] ),
        .I2(\reg_op1_reg_n_0_[14] ),
        .I3(memory_reg_0_i_25_n_0),
        .I4(resetn_IBUF),
        .I5(memory_reg_0_i_26_n_0),
        .O(memory_reg_0_i_18_n_0));
  LUT5 #(
    .INIT(32'h4440444F)) 
    memory_reg_0_i_19
       (.I0(memory_reg_0_i_27_n_0),
        .I1(memory_reg_0_i_28_n_0),
        .I2(mem_do_rinst_reg_n_0),
        .I3(mem_do_prefetch_reg_n_0),
        .I4(memory_reg_0_i_29_n_0),
        .O(memory_reg_0_i_19_n_0));
  LUT6 #(
    .INIT(64'hB8B8B8FFB8B8B800)) 
    memory_reg_0_i_2
       (.I0(\reg_out_reg_n_0_[13] ),
        .I1(memory_reg_0_i_20_n_0),
        .I2(\reg_next_pc_reg_n_0_[13] ),
        .I3(mem_do_prefetch_reg_n_0),
        .I4(mem_do_rinst_reg_n_0),
        .I5(\reg_op1_reg_n_0_[13] ),
        .O(ADDRARDADDR[11]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h8)) 
    memory_reg_0_i_20
       (.I0(latched_store_reg_n_0),
        .I1(latched_branch_reg_n_0),
        .O(memory_reg_0_i_20_n_0));
  LUT5 #(
    .INIT(32'h00000001)) 
    memory_reg_0_i_21
       (.I0(\reg_op1_reg_n_0_[16] ),
        .I1(\reg_op1_reg_n_0_[24] ),
        .I2(\reg_op1_reg_n_0_[17] ),
        .I3(\reg_op1_reg_n_0_[27] ),
        .I4(memory_reg_0_i_30_n_0),
        .O(memory_reg_0_i_21_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    memory_reg_0_i_22
       (.I0(\reg_out_reg_n_0_[29] ),
        .I1(\reg_out_reg_n_0_[22] ),
        .I2(\reg_out_reg_n_0_[27] ),
        .I3(\reg_out_reg_n_0_[24] ),
        .I4(memory_reg_0_i_31_n_0),
        .O(memory_reg_0_i_22_n_0));
  LUT5 #(
    .INIT(32'h00000001)) 
    memory_reg_0_i_23
       (.I0(\reg_next_pc_reg_n_0_[29] ),
        .I1(\reg_next_pc_reg_n_0_[24] ),
        .I2(\reg_next_pc_reg_n_0_[27] ),
        .I3(\reg_next_pc_reg_n_0_[22] ),
        .I4(memory_reg_0_i_32_n_0),
        .O(memory_reg_0_i_23_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h1)) 
    memory_reg_0_i_24
       (.I0(mem_do_rinst_reg_n_0),
        .I1(mem_do_prefetch_reg_n_0),
        .O(memory_reg_0_i_24_n_0));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    memory_reg_0_i_25
       (.I0(\mem_state_reg_n_0_[0] ),
        .I1(\mem_state_reg_n_0_[1] ),
        .I2(mem_do_wdata),
        .O(memory_reg_0_i_25_n_0));
  LUT6 #(
    .INIT(64'h0F0E0F0E0F0E000E)) 
    memory_reg_0_i_26
       (.I0(\reg_next_pc_reg_n_0_[15] ),
        .I1(\reg_next_pc_reg_n_0_[14] ),
        .I2(memory_reg_0_i_24_n_0),
        .I3(memory_reg_0_i_20_n_0),
        .I4(\reg_out_reg_n_0_[15] ),
        .I5(\reg_out_reg_n_0_[14] ),
        .O(memory_reg_0_i_26_n_0));
  LUT5 #(
    .INIT(32'h00000001)) 
    memory_reg_0_i_27
       (.I0(\reg_out_reg_n_0_[31] ),
        .I1(\reg_out_reg_n_0_[19] ),
        .I2(\reg_out_reg_n_0_[23] ),
        .I3(\reg_out_reg_n_0_[18] ),
        .I4(memory_reg_0_i_33_n_0),
        .O(memory_reg_0_i_27_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    memory_reg_0_i_28
       (.I0(\reg_next_pc_reg_n_0_[19] ),
        .I1(\reg_next_pc_reg_n_0_[18] ),
        .I2(\reg_next_pc_reg_n_0_[23] ),
        .I3(\reg_next_pc_reg_n_0_[21] ),
        .I4(memory_reg_0_i_34_n_0),
        .O(memory_reg_0_i_28_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    memory_reg_0_i_29
       (.I0(\reg_op1_reg_n_0_[30] ),
        .I1(\reg_op1_reg_n_0_[31] ),
        .I2(\reg_op1_reg_n_0_[18] ),
        .I3(\reg_op1_reg_n_0_[19] ),
        .I4(\reg_op1_reg_n_0_[23] ),
        .I5(\reg_op1_reg_n_0_[21] ),
        .O(memory_reg_0_i_29_n_0));
  LUT6 #(
    .INIT(64'hB8B8B8FFB8B8B800)) 
    memory_reg_0_i_3
       (.I0(\reg_out_reg_n_0_[12] ),
        .I1(memory_reg_0_i_20_n_0),
        .I2(\reg_next_pc_reg_n_0_[12] ),
        .I3(mem_do_prefetch_reg_n_0),
        .I4(mem_do_rinst_reg_n_0),
        .I5(\reg_op1_reg_n_0_[12] ),
        .O(ADDRARDADDR[10]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    memory_reg_0_i_30
       (.I0(\reg_op1_reg_n_0_[22] ),
        .I1(\reg_op1_reg_n_0_[25] ),
        .I2(\reg_op1_reg_n_0_[26] ),
        .I3(\reg_op1_reg_n_0_[29] ),
        .I4(mem_do_prefetch_reg_n_0),
        .I5(mem_do_rinst_reg_n_0),
        .O(memory_reg_0_i_30_n_0));
  LUT6 #(
    .INIT(64'hFFFEFFFFFFFFFFFF)) 
    memory_reg_0_i_31
       (.I0(\reg_out_reg_n_0_[25] ),
        .I1(\reg_out_reg_n_0_[17] ),
        .I2(\reg_out_reg_n_0_[26] ),
        .I3(\reg_out_reg_n_0_[16] ),
        .I4(latched_branch_reg_n_0),
        .I5(latched_store_reg_n_0),
        .O(memory_reg_0_i_31_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF8)) 
    memory_reg_0_i_32
       (.I0(latched_branch_reg_n_0),
        .I1(latched_store_reg_n_0),
        .I2(\reg_next_pc_reg_n_0_[25] ),
        .I3(\reg_next_pc_reg_n_0_[17] ),
        .I4(\reg_next_pc_reg_n_0_[26] ),
        .I5(\reg_next_pc_reg_n_0_[16] ),
        .O(memory_reg_0_i_32_n_0));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'hEFFF)) 
    memory_reg_0_i_33
       (.I0(\reg_out_reg_n_0_[21] ),
        .I1(\reg_out_reg_n_0_[30] ),
        .I2(latched_branch_reg_n_0),
        .I3(latched_store_reg_n_0),
        .O(memory_reg_0_i_33_n_0));
  LUT4 #(
    .INIT(16'hFFF8)) 
    memory_reg_0_i_34
       (.I0(latched_branch_reg_n_0),
        .I1(latched_store_reg_n_0),
        .I2(\reg_next_pc_reg_n_0_[30] ),
        .I3(\reg_next_pc_reg_n_0_[31] ),
        .O(memory_reg_0_i_34_n_0));
  LUT6 #(
    .INIT(64'hAAACAAACFFFC000C)) 
    memory_reg_0_i_4
       (.I0(\reg_out_reg_n_0_[11] ),
        .I1(\reg_op1_reg_n_0_[11] ),
        .I2(mem_do_prefetch_reg_n_0),
        .I3(mem_do_rinst_reg_n_0),
        .I4(\reg_next_pc_reg_n_0_[11] ),
        .I5(memory_reg_0_i_20_n_0),
        .O(ADDRARDADDR[9]));
  LUT6 #(
    .INIT(64'hACACACFFACACAC00)) 
    memory_reg_0_i_5
       (.I0(\reg_out_reg_n_0_[10] ),
        .I1(\reg_next_pc_reg_n_0_[10] ),
        .I2(memory_reg_0_i_20_n_0),
        .I3(mem_do_rinst_reg_n_0),
        .I4(mem_do_prefetch_reg_n_0),
        .I5(\reg_op1_reg_n_0_[10] ),
        .O(ADDRARDADDR[8]));
  LUT6 #(
    .INIT(64'hACACACFFACACAC00)) 
    memory_reg_0_i_6
       (.I0(\reg_out_reg_n_0_[9] ),
        .I1(\reg_next_pc_reg_n_0_[9] ),
        .I2(memory_reg_0_i_20_n_0),
        .I3(mem_do_rinst_reg_n_0),
        .I4(mem_do_prefetch_reg_n_0),
        .I5(\reg_op1_reg_n_0_[9] ),
        .O(ADDRARDADDR[7]));
  LUT6 #(
    .INIT(64'hB8B8B8FFB8B8B800)) 
    memory_reg_0_i_7
       (.I0(\reg_out_reg_n_0_[8] ),
        .I1(memory_reg_0_i_20_n_0),
        .I2(\reg_next_pc_reg_n_0_[8] ),
        .I3(mem_do_prefetch_reg_n_0),
        .I4(mem_do_rinst_reg_n_0),
        .I5(\reg_op1_reg_n_0_[8] ),
        .O(ADDRARDADDR[6]));
  LUT6 #(
    .INIT(64'hB8B8B8FFB8B8B800)) 
    memory_reg_0_i_8
       (.I0(\reg_out_reg_n_0_[7] ),
        .I1(memory_reg_0_i_20_n_0),
        .I2(\reg_next_pc_reg_n_0_[7] ),
        .I3(mem_do_prefetch_reg_n_0),
        .I4(mem_do_rinst_reg_n_0),
        .I5(\reg_op1_reg_n_0_[7] ),
        .O(ADDRARDADDR[5]));
  LUT6 #(
    .INIT(64'hB8B8B8FFB8B8B800)) 
    memory_reg_0_i_9
       (.I0(\reg_out_reg_n_0_[6] ),
        .I1(memory_reg_0_i_20_n_0),
        .I2(\reg_next_pc_reg_n_0_[6] ),
        .I3(mem_do_prefetch_reg_n_0),
        .I4(mem_do_rinst_reg_n_0),
        .I5(\reg_op1_reg_n_0_[6] ),
        .O(ADDRARDADDR[4]));
  LUT3 #(
    .INIT(8'hB8)) 
    memory_reg_1_i_1
       (.I0(Q[7]),
        .I1(\mem_wordsize_reg_n_0_[1] ),
        .I2(\reg_op2_reg_n_0_[15] ),
        .O(p_2_in[7]));
  LUT3 #(
    .INIT(8'hB8)) 
    memory_reg_1_i_2
       (.I0(Q[6]),
        .I1(\mem_wordsize_reg_n_0_[1] ),
        .I2(\reg_op2_reg_n_0_[14] ),
        .O(p_2_in[6]));
  LUT3 #(
    .INIT(8'hB8)) 
    memory_reg_1_i_3
       (.I0(Q[5]),
        .I1(\mem_wordsize_reg_n_0_[1] ),
        .I2(\reg_op2_reg_n_0_[13] ),
        .O(p_2_in[5]));
  LUT3 #(
    .INIT(8'hB8)) 
    memory_reg_1_i_4
       (.I0(Q[4]),
        .I1(\mem_wordsize_reg_n_0_[1] ),
        .I2(\reg_op2_reg_n_0_[12] ),
        .O(p_2_in[4]));
  LUT3 #(
    .INIT(8'hB8)) 
    memory_reg_1_i_5
       (.I0(Q[3]),
        .I1(\mem_wordsize_reg_n_0_[1] ),
        .I2(\reg_op2_reg_n_0_[11] ),
        .O(p_2_in[3]));
  LUT3 #(
    .INIT(8'hB8)) 
    memory_reg_1_i_6
       (.I0(Q[2]),
        .I1(\mem_wordsize_reg_n_0_[1] ),
        .I2(\reg_op2_reg_n_0_[10] ),
        .O(p_2_in[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    memory_reg_1_i_7
       (.I0(Q[1]),
        .I1(\mem_wordsize_reg_n_0_[1] ),
        .I2(\reg_op2_reg_n_0_[9] ),
        .O(p_2_in[1]));
  LUT3 #(
    .INIT(8'hB8)) 
    memory_reg_1_i_8
       (.I0(Q[0]),
        .I1(\mem_wordsize_reg_n_0_[1] ),
        .I2(\reg_op2_reg_n_0_[8] ),
        .O(p_2_in[0]));
  LUT4 #(
    .INIT(16'h03FB)) 
    memory_reg_1_i_9
       (.I0(\reg_op1_reg_n_0_[0] ),
        .I1(\mem_wordsize_reg_n_0_[1] ),
        .I2(\mem_wordsize_reg_n_0_[0] ),
        .I3(\reg_op1_reg_n_0_[1] ),
        .O(p_0_in[1]));
  LUT4 #(
    .INIT(16'hFE02)) 
    memory_reg_2_i_1
       (.I0(\reg_op2_reg_n_0_[23] ),
        .I1(\mem_wordsize_reg_n_0_[0] ),
        .I2(\mem_wordsize_reg_n_0_[1] ),
        .I3(Q[7]),
        .O(p_2_in[15]));
  LUT4 #(
    .INIT(16'hFE02)) 
    memory_reg_2_i_2
       (.I0(\reg_op2_reg_n_0_[22] ),
        .I1(\mem_wordsize_reg_n_0_[0] ),
        .I2(\mem_wordsize_reg_n_0_[1] ),
        .I3(Q[6]),
        .O(p_2_in[14]));
  LUT4 #(
    .INIT(16'hFE02)) 
    memory_reg_2_i_3
       (.I0(\reg_op2_reg_n_0_[21] ),
        .I1(\mem_wordsize_reg_n_0_[0] ),
        .I2(\mem_wordsize_reg_n_0_[1] ),
        .I3(Q[5]),
        .O(p_2_in[13]));
  LUT4 #(
    .INIT(16'hFE02)) 
    memory_reg_2_i_4
       (.I0(\reg_op2_reg_n_0_[20] ),
        .I1(\mem_wordsize_reg_n_0_[0] ),
        .I2(\mem_wordsize_reg_n_0_[1] ),
        .I3(Q[4]),
        .O(p_2_in[12]));
  LUT4 #(
    .INIT(16'hFE02)) 
    memory_reg_2_i_5
       (.I0(\reg_op2_reg_n_0_[19] ),
        .I1(\mem_wordsize_reg_n_0_[0] ),
        .I2(\mem_wordsize_reg_n_0_[1] ),
        .I3(Q[3]),
        .O(p_2_in[11]));
  LUT4 #(
    .INIT(16'hFE02)) 
    memory_reg_2_i_6
       (.I0(\reg_op2_reg_n_0_[18] ),
        .I1(\mem_wordsize_reg_n_0_[0] ),
        .I2(\mem_wordsize_reg_n_0_[1] ),
        .I3(Q[2]),
        .O(p_2_in[10]));
  LUT4 #(
    .INIT(16'hFE02)) 
    memory_reg_2_i_7
       (.I0(\reg_op2_reg_n_0_[17] ),
        .I1(\mem_wordsize_reg_n_0_[0] ),
        .I2(\mem_wordsize_reg_n_0_[1] ),
        .I3(Q[1]),
        .O(p_2_in[9]));
  LUT4 #(
    .INIT(16'hFE02)) 
    memory_reg_2_i_8
       (.I0(\reg_op2_reg_n_0_[16] ),
        .I1(\mem_wordsize_reg_n_0_[0] ),
        .I2(\mem_wordsize_reg_n_0_[1] ),
        .I3(Q[0]),
        .O(p_2_in[8]));
  LUT4 #(
    .INIT(16'hB1F1)) 
    memory_reg_2_i_9
       (.I0(\mem_wordsize_reg_n_0_[0] ),
        .I1(\mem_wordsize_reg_n_0_[1] ),
        .I2(\reg_op1_reg_n_0_[1] ),
        .I3(\reg_op1_reg_n_0_[0] ),
        .O(p_0_in[2]));
  LUT6 #(
    .INIT(64'hF444F444FFFFF444)) 
    memory_reg_3_i_1
       (.I0(memory_reg_3_i_10_n_0),
        .I1(Q[7]),
        .I2(\reg_op2_reg_n_0_[31] ),
        .I3(memory_reg_3_i_11_n_0),
        .I4(\reg_op2_reg_n_0_[15] ),
        .I5(memory_reg_3_i_12_n_0),
        .O(p_2_in[23]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'h57FF)) 
    memory_reg_3_i_10
       (.I0(\reg_op1_reg_n_0_[1] ),
        .I1(\mem_wordsize_reg_n_0_[0] ),
        .I2(\reg_op1_reg_n_0_[0] ),
        .I3(\mem_wordsize_reg_n_0_[1] ),
        .O(memory_reg_3_i_10_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    memory_reg_3_i_11
       (.I0(\mem_wordsize_reg_n_0_[0] ),
        .I1(\mem_wordsize_reg_n_0_[1] ),
        .O(memory_reg_3_i_11_n_0));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hBF)) 
    memory_reg_3_i_12
       (.I0(\mem_wordsize_reg_n_0_[1] ),
        .I1(\reg_op1_reg_n_0_[1] ),
        .I2(\mem_wordsize_reg_n_0_[0] ),
        .O(memory_reg_3_i_12_n_0));
  LUT6 #(
    .INIT(64'hF444F444FFFFF444)) 
    memory_reg_3_i_2
       (.I0(memory_reg_3_i_10_n_0),
        .I1(Q[6]),
        .I2(\reg_op2_reg_n_0_[30] ),
        .I3(memory_reg_3_i_11_n_0),
        .I4(\reg_op2_reg_n_0_[14] ),
        .I5(memory_reg_3_i_12_n_0),
        .O(p_2_in[22]));
  LUT6 #(
    .INIT(64'hF444F444FFFFF444)) 
    memory_reg_3_i_3
       (.I0(memory_reg_3_i_10_n_0),
        .I1(Q[5]),
        .I2(\reg_op2_reg_n_0_[29] ),
        .I3(memory_reg_3_i_11_n_0),
        .I4(\reg_op2_reg_n_0_[13] ),
        .I5(memory_reg_3_i_12_n_0),
        .O(p_2_in[21]));
  LUT6 #(
    .INIT(64'hF444F444FFFFF444)) 
    memory_reg_3_i_4
       (.I0(memory_reg_3_i_10_n_0),
        .I1(Q[4]),
        .I2(\reg_op2_reg_n_0_[28] ),
        .I3(memory_reg_3_i_11_n_0),
        .I4(\reg_op2_reg_n_0_[12] ),
        .I5(memory_reg_3_i_12_n_0),
        .O(p_2_in[20]));
  LUT6 #(
    .INIT(64'hF444F444FFFFF444)) 
    memory_reg_3_i_5
       (.I0(memory_reg_3_i_10_n_0),
        .I1(Q[3]),
        .I2(\reg_op2_reg_n_0_[27] ),
        .I3(memory_reg_3_i_11_n_0),
        .I4(\reg_op2_reg_n_0_[11] ),
        .I5(memory_reg_3_i_12_n_0),
        .O(p_2_in[19]));
  LUT6 #(
    .INIT(64'hF444F444FFFFF444)) 
    memory_reg_3_i_6
       (.I0(memory_reg_3_i_10_n_0),
        .I1(Q[2]),
        .I2(\reg_op2_reg_n_0_[26] ),
        .I3(memory_reg_3_i_11_n_0),
        .I4(\reg_op2_reg_n_0_[10] ),
        .I5(memory_reg_3_i_12_n_0),
        .O(p_2_in[18]));
  LUT6 #(
    .INIT(64'hF444F444FFFFF444)) 
    memory_reg_3_i_7
       (.I0(memory_reg_3_i_10_n_0),
        .I1(Q[1]),
        .I2(\reg_op2_reg_n_0_[25] ),
        .I3(memory_reg_3_i_11_n_0),
        .I4(\reg_op2_reg_n_0_[9] ),
        .I5(memory_reg_3_i_12_n_0),
        .O(p_2_in[17]));
  LUT6 #(
    .INIT(64'hF444F444FFFFF444)) 
    memory_reg_3_i_8
       (.I0(memory_reg_3_i_10_n_0),
        .I1(Q[0]),
        .I2(\reg_op2_reg_n_0_[24] ),
        .I3(memory_reg_3_i_11_n_0),
        .I4(\reg_op2_reg_n_0_[8] ),
        .I5(memory_reg_3_i_12_n_0),
        .O(p_2_in[16]));
  LUT4 #(
    .INIT(16'hCDC5)) 
    memory_reg_3_i_9
       (.I0(\mem_wordsize_reg_n_0_[1] ),
        .I1(\reg_op1_reg_n_0_[1] ),
        .I2(\mem_wordsize_reg_n_0_[0] ),
        .I3(\reg_op1_reg_n_0_[0] ),
        .O(p_0_in[3]));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    \out_byte[7]_i_1 
       (.I0(\out_byte[7]_i_2_n_0 ),
        .I1(memory_reg_0_i_15_n_0),
        .I2(ADDRARDADDR[11]),
        .I3(ADDRARDADDR[7]),
        .I4(ADDRARDADDR[3]),
        .I5(\out_byte[7]_i_3_n_0 ),
        .O(E));
  LUT5 #(
    .INIT(32'h00000001)) 
    \out_byte[7]_i_2 
       (.I0(ADDRARDADDR[2]),
        .I1(ADDRARDADDR[1]),
        .I2(memory_reg_0_i_16_n_0),
        .I3(ADDRARDADDR[9]),
        .I4(memory_reg_0_i_19_n_0),
        .O(\out_byte[7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \out_byte[7]_i_3 
       (.I0(ADDRARDADDR[5]),
        .I1(ADDRARDADDR[6]),
        .I2(ADDRARDADDR[10]),
        .I3(memory_reg_0_i_18_n_0),
        .I4(\out_byte[7]_i_4_n_0 ),
        .O(\out_byte[7]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \out_byte[7]_i_4 
       (.I0(memory_reg_0_i_17_n_0),
        .I1(ADDRARDADDR[0]),
        .I2(ADDRARDADDR[8]),
        .I3(ADDRARDADDR[4]),
        .O(\out_byte[7]_i_4_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 p_1_out_carry
       (.CI(1'b0),
        .CO({p_1_out_carry_n_0,p_1_out_carry_n_1,p_1_out_carry_n_2,p_1_out_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,\reg_pc_reg_n_0_[2] ,\reg_pc_reg_n_0_[1] ,1'b0}),
        .O({p_1_out_carry_n_4,p_1_out_carry_n_5,p_1_out_carry_n_6,NLW_p_1_out_carry_O_UNCONNECTED[0]}),
        .S({\reg_pc_reg_n_0_[3] ,p_1_out_carry_i_1_n_0,\reg_pc_reg_n_0_[1] ,1'b0}));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 p_1_out_carry__0
       (.CI(p_1_out_carry_n_0),
        .CO({p_1_out_carry__0_n_0,p_1_out_carry__0_n_1,p_1_out_carry__0_n_2,p_1_out_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({p_1_out_carry__0_n_4,p_1_out_carry__0_n_5,p_1_out_carry__0_n_6,p_1_out_carry__0_n_7}),
        .S({\reg_pc_reg_n_0_[7] ,\reg_pc_reg_n_0_[6] ,\reg_pc_reg_n_0_[5] ,\reg_pc_reg_n_0_[4] }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 p_1_out_carry__1
       (.CI(p_1_out_carry__0_n_0),
        .CO({p_1_out_carry__1_n_0,p_1_out_carry__1_n_1,p_1_out_carry__1_n_2,p_1_out_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({p_1_out_carry__1_n_4,p_1_out_carry__1_n_5,p_1_out_carry__1_n_6,p_1_out_carry__1_n_7}),
        .S({\reg_pc_reg_n_0_[11] ,\reg_pc_reg_n_0_[10] ,\reg_pc_reg_n_0_[9] ,\reg_pc_reg_n_0_[8] }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 p_1_out_carry__2
       (.CI(p_1_out_carry__1_n_0),
        .CO({p_1_out_carry__2_n_0,p_1_out_carry__2_n_1,p_1_out_carry__2_n_2,p_1_out_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({p_1_out_carry__2_n_4,p_1_out_carry__2_n_5,p_1_out_carry__2_n_6,p_1_out_carry__2_n_7}),
        .S({\reg_pc_reg_n_0_[15] ,\reg_pc_reg_n_0_[14] ,\reg_pc_reg_n_0_[13] ,\reg_pc_reg_n_0_[12] }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 p_1_out_carry__3
       (.CI(p_1_out_carry__2_n_0),
        .CO({p_1_out_carry__3_n_0,p_1_out_carry__3_n_1,p_1_out_carry__3_n_2,p_1_out_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({p_1_out_carry__3_n_4,p_1_out_carry__3_n_5,p_1_out_carry__3_n_6,p_1_out_carry__3_n_7}),
        .S({\reg_pc_reg_n_0_[19] ,\reg_pc_reg_n_0_[18] ,\reg_pc_reg_n_0_[17] ,\reg_pc_reg_n_0_[16] }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 p_1_out_carry__4
       (.CI(p_1_out_carry__3_n_0),
        .CO({p_1_out_carry__4_n_0,p_1_out_carry__4_n_1,p_1_out_carry__4_n_2,p_1_out_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({p_1_out_carry__4_n_4,p_1_out_carry__4_n_5,p_1_out_carry__4_n_6,p_1_out_carry__4_n_7}),
        .S({\reg_pc_reg_n_0_[23] ,\reg_pc_reg_n_0_[22] ,\reg_pc_reg_n_0_[21] ,\reg_pc_reg_n_0_[20] }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 p_1_out_carry__5
       (.CI(p_1_out_carry__4_n_0),
        .CO({p_1_out_carry__5_n_0,p_1_out_carry__5_n_1,p_1_out_carry__5_n_2,p_1_out_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({p_1_out_carry__5_n_4,p_1_out_carry__5_n_5,p_1_out_carry__5_n_6,p_1_out_carry__5_n_7}),
        .S({\reg_pc_reg_n_0_[27] ,\reg_pc_reg_n_0_[26] ,\reg_pc_reg_n_0_[25] ,\reg_pc_reg_n_0_[24] }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 p_1_out_carry__6
       (.CI(p_1_out_carry__5_n_0),
        .CO({NLW_p_1_out_carry__6_CO_UNCONNECTED[3],p_1_out_carry__6_n_1,p_1_out_carry__6_n_2,p_1_out_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({p_1_out_carry__6_n_4,p_1_out_carry__6_n_5,p_1_out_carry__6_n_6,p_1_out_carry__6_n_7}),
        .S({\reg_pc_reg_n_0_[31] ,\reg_pc_reg_n_0_[30] ,\reg_pc_reg_n_0_[29] ,\reg_pc_reg_n_0_[28] }));
  LUT1 #(
    .INIT(2'h1)) 
    p_1_out_carry_i_1
       (.I0(\reg_pc_reg_n_0_[2] ),
        .O(p_1_out_carry_i_1_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 reg_next_pc0_carry
       (.CI(1'b0),
        .CO({reg_next_pc0_carry_n_0,reg_next_pc0_carry_n_1,reg_next_pc0_carry_n_2,reg_next_pc0_carry_n_3}),
        .CYINIT(1'b0),
        .DI(current_pc[4:1]),
        .O({reg_next_pc1_in[4:2],NLW_reg_next_pc0_carry_O_UNCONNECTED[0]}),
        .S({reg_next_pc0_carry_i_1_n_0,reg_next_pc0_carry_i_2_n_0,reg_next_pc0_carry_i_3_n_0,reg_next_pc0_carry_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 reg_next_pc0_carry__0
       (.CI(reg_next_pc0_carry_n_0),
        .CO({reg_next_pc0_carry__0_n_0,reg_next_pc0_carry__0_n_1,reg_next_pc0_carry__0_n_2,reg_next_pc0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(current_pc[8:5]),
        .O(reg_next_pc1_in[8:5]),
        .S({reg_next_pc0_carry__0_i_1_n_0,reg_next_pc0_carry__0_i_2_n_0,reg_next_pc0_carry__0_i_3_n_0,reg_next_pc0_carry__0_i_4_n_0}));
  LUT4 #(
    .INIT(16'h6AAA)) 
    reg_next_pc0_carry__0_i_1
       (.I0(current_pc[8]),
        .I1(instr_jal),
        .I2(decoder_trigger_reg_n_0),
        .I3(decoded_imm_uj[8]),
        .O(reg_next_pc0_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h6AAA)) 
    reg_next_pc0_carry__0_i_2
       (.I0(current_pc[7]),
        .I1(instr_jal),
        .I2(decoder_trigger_reg_n_0),
        .I3(decoded_imm_uj[7]),
        .O(reg_next_pc0_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h6AAA)) 
    reg_next_pc0_carry__0_i_3
       (.I0(current_pc[6]),
        .I1(instr_jal),
        .I2(decoder_trigger_reg_n_0),
        .I3(decoded_imm_uj[6]),
        .O(reg_next_pc0_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h6AAA)) 
    reg_next_pc0_carry__0_i_4
       (.I0(current_pc[5]),
        .I1(instr_jal),
        .I2(decoder_trigger_reg_n_0),
        .I3(decoded_imm_uj[5]),
        .O(reg_next_pc0_carry__0_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 reg_next_pc0_carry__1
       (.CI(reg_next_pc0_carry__0_n_0),
        .CO({reg_next_pc0_carry__1_n_0,reg_next_pc0_carry__1_n_1,reg_next_pc0_carry__1_n_2,reg_next_pc0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(current_pc[12:9]),
        .O(reg_next_pc1_in[12:9]),
        .S({reg_next_pc0_carry__1_i_1_n_0,reg_next_pc0_carry__1_i_2_n_0,reg_next_pc0_carry__1_i_3_n_0,reg_next_pc0_carry__1_i_4_n_0}));
  LUT4 #(
    .INIT(16'h6AAA)) 
    reg_next_pc0_carry__1_i_1
       (.I0(current_pc[12]),
        .I1(instr_jal),
        .I2(decoder_trigger_reg_n_0),
        .I3(decoded_imm_uj[12]),
        .O(reg_next_pc0_carry__1_i_1_n_0));
  LUT4 #(
    .INIT(16'h6AAA)) 
    reg_next_pc0_carry__1_i_2
       (.I0(current_pc[11]),
        .I1(instr_jal),
        .I2(decoder_trigger_reg_n_0),
        .I3(decoded_imm_uj[11]),
        .O(reg_next_pc0_carry__1_i_2_n_0));
  LUT4 #(
    .INIT(16'h6AAA)) 
    reg_next_pc0_carry__1_i_3
       (.I0(current_pc[10]),
        .I1(instr_jal),
        .I2(decoder_trigger_reg_n_0),
        .I3(decoded_imm_uj[10]),
        .O(reg_next_pc0_carry__1_i_3_n_0));
  LUT4 #(
    .INIT(16'h6AAA)) 
    reg_next_pc0_carry__1_i_4
       (.I0(current_pc[9]),
        .I1(instr_jal),
        .I2(decoder_trigger_reg_n_0),
        .I3(decoded_imm_uj[9]),
        .O(reg_next_pc0_carry__1_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 reg_next_pc0_carry__2
       (.CI(reg_next_pc0_carry__1_n_0),
        .CO({reg_next_pc0_carry__2_n_0,reg_next_pc0_carry__2_n_1,reg_next_pc0_carry__2_n_2,reg_next_pc0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI(current_pc[16:13]),
        .O(reg_next_pc1_in[16:13]),
        .S({reg_next_pc0_carry__2_i_1_n_0,reg_next_pc0_carry__2_i_2_n_0,reg_next_pc0_carry__2_i_3_n_0,reg_next_pc0_carry__2_i_4_n_0}));
  LUT4 #(
    .INIT(16'h6AAA)) 
    reg_next_pc0_carry__2_i_1
       (.I0(current_pc[16]),
        .I1(instr_jal),
        .I2(decoder_trigger_reg_n_0),
        .I3(decoded_rs1_0[1]),
        .O(reg_next_pc0_carry__2_i_1_n_0));
  LUT4 #(
    .INIT(16'h6AAA)) 
    reg_next_pc0_carry__2_i_2
       (.I0(current_pc[15]),
        .I1(instr_jal),
        .I2(decoder_trigger_reg_n_0),
        .I3(decoded_rs1_0[0]),
        .O(reg_next_pc0_carry__2_i_2_n_0));
  LUT4 #(
    .INIT(16'h6AAA)) 
    reg_next_pc0_carry__2_i_3
       (.I0(current_pc[14]),
        .I1(instr_jal),
        .I2(decoder_trigger_reg_n_0),
        .I3(decoded_imm_uj[14]),
        .O(reg_next_pc0_carry__2_i_3_n_0));
  LUT4 #(
    .INIT(16'h6AAA)) 
    reg_next_pc0_carry__2_i_4
       (.I0(current_pc[13]),
        .I1(instr_jal),
        .I2(decoder_trigger_reg_n_0),
        .I3(decoded_imm_uj[13]),
        .O(reg_next_pc0_carry__2_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 reg_next_pc0_carry__3
       (.CI(reg_next_pc0_carry__2_n_0),
        .CO({reg_next_pc0_carry__3_n_0,reg_next_pc0_carry__3_n_1,reg_next_pc0_carry__3_n_2,reg_next_pc0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI(current_pc[20:17]),
        .O(reg_next_pc1_in[20:17]),
        .S({reg_next_pc0_carry__3_i_1_n_0,reg_next_pc0_carry__3_i_2_n_0,reg_next_pc0_carry__3_i_3_n_0,reg_next_pc0_carry__3_i_4_n_0}));
  LUT6 #(
    .INIT(64'h05C535F5FA3ACA0A)) 
    reg_next_pc0_carry__3_i_1
       (.I0(\reg_next_pc_reg_n_0_[20] ),
        .I1(latched_stalu_reg_n_0),
        .I2(memory_reg_0_i_20_n_0),
        .I3(alu_out_q[20]),
        .I4(\reg_out_reg_n_0_[20] ),
        .I5(reg_next_pc0_carry__3_i_5_n_0),
        .O(reg_next_pc0_carry__3_i_1_n_0));
  LUT4 #(
    .INIT(16'h6AAA)) 
    reg_next_pc0_carry__3_i_2
       (.I0(current_pc[19]),
        .I1(instr_jal),
        .I2(decoder_trigger_reg_n_0),
        .I3(decoded_rs1_0[4]),
        .O(reg_next_pc0_carry__3_i_2_n_0));
  LUT4 #(
    .INIT(16'h6AAA)) 
    reg_next_pc0_carry__3_i_3
       (.I0(current_pc[18]),
        .I1(instr_jal),
        .I2(decoder_trigger_reg_n_0),
        .I3(decoded_rs1_0[3]),
        .O(reg_next_pc0_carry__3_i_3_n_0));
  LUT4 #(
    .INIT(16'h6AAA)) 
    reg_next_pc0_carry__3_i_4
       (.I0(current_pc[17]),
        .I1(instr_jal),
        .I2(decoder_trigger_reg_n_0),
        .I3(decoded_rs1_0[2]),
        .O(reg_next_pc0_carry__3_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'h80)) 
    reg_next_pc0_carry__3_i_5
       (.I0(decoded_imm_uj[31]),
        .I1(decoder_trigger_reg_n_0),
        .I2(instr_jal),
        .O(reg_next_pc0_carry__3_i_5_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 reg_next_pc0_carry__4
       (.CI(reg_next_pc0_carry__3_n_0),
        .CO({reg_next_pc0_carry__4_n_0,reg_next_pc0_carry__4_n_1,reg_next_pc0_carry__4_n_2,reg_next_pc0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI(current_pc[24:21]),
        .O(reg_next_pc1_in[24:21]),
        .S({reg_next_pc0_carry__4_i_1_n_0,reg_next_pc0_carry__4_i_2_n_0,reg_next_pc0_carry__4_i_3_n_0,reg_next_pc0_carry__4_i_4_n_0}));
  LUT6 #(
    .INIT(64'h05C535F5FA3ACA0A)) 
    reg_next_pc0_carry__4_i_1
       (.I0(\reg_next_pc_reg_n_0_[24] ),
        .I1(latched_stalu_reg_n_0),
        .I2(memory_reg_0_i_20_n_0),
        .I3(alu_out_q[24]),
        .I4(\reg_out_reg_n_0_[24] ),
        .I5(reg_next_pc0_carry__3_i_5_n_0),
        .O(reg_next_pc0_carry__4_i_1_n_0));
  LUT6 #(
    .INIT(64'h101FB0BFEFE04F40)) 
    reg_next_pc0_carry__4_i_2
       (.I0(latched_stalu_reg_n_0),
        .I1(\reg_out_reg_n_0_[23] ),
        .I2(memory_reg_0_i_20_n_0),
        .I3(\reg_next_pc_reg_n_0_[23] ),
        .I4(alu_out_q[23]),
        .I5(reg_next_pc0_carry__3_i_5_n_0),
        .O(reg_next_pc0_carry__4_i_2_n_0));
  LUT6 #(
    .INIT(64'h0535C5F5FACA3A0A)) 
    reg_next_pc0_carry__4_i_3
       (.I0(\reg_next_pc_reg_n_0_[22] ),
        .I1(latched_stalu_reg_n_0),
        .I2(memory_reg_0_i_20_n_0),
        .I3(\reg_out_reg_n_0_[22] ),
        .I4(alu_out_q[22]),
        .I5(reg_next_pc0_carry__3_i_5_n_0),
        .O(reg_next_pc0_carry__4_i_3_n_0));
  LUT6 #(
    .INIT(64'h05C535F5FA3ACA0A)) 
    reg_next_pc0_carry__4_i_4
       (.I0(\reg_next_pc_reg_n_0_[21] ),
        .I1(latched_stalu_reg_n_0),
        .I2(memory_reg_0_i_20_n_0),
        .I3(alu_out_q[21]),
        .I4(\reg_out_reg_n_0_[21] ),
        .I5(reg_next_pc0_carry__3_i_5_n_0),
        .O(reg_next_pc0_carry__4_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 reg_next_pc0_carry__5
       (.CI(reg_next_pc0_carry__4_n_0),
        .CO({reg_next_pc0_carry__5_n_0,reg_next_pc0_carry__5_n_1,reg_next_pc0_carry__5_n_2,reg_next_pc0_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI(current_pc[28:25]),
        .O(reg_next_pc1_in[28:25]),
        .S({reg_next_pc0_carry__5_i_1_n_0,reg_next_pc0_carry__5_i_2_n_0,reg_next_pc0_carry__5_i_3_n_0,reg_next_pc0_carry__5_i_4_n_0}));
  LUT6 #(
    .INIT(64'h05C535F5FA3ACA0A)) 
    reg_next_pc0_carry__5_i_1
       (.I0(\reg_next_pc_reg_n_0_[28] ),
        .I1(latched_stalu_reg_n_0),
        .I2(memory_reg_0_i_20_n_0),
        .I3(alu_out_q[28]),
        .I4(\reg_out_reg_n_0_[28] ),
        .I5(reg_next_pc0_carry__3_i_5_n_0),
        .O(reg_next_pc0_carry__5_i_1_n_0));
  LUT6 #(
    .INIT(64'h202F707FDFD08F80)) 
    reg_next_pc0_carry__5_i_2
       (.I0(latched_stalu_reg_n_0),
        .I1(alu_out_q[27]),
        .I2(memory_reg_0_i_20_n_0),
        .I3(\reg_next_pc_reg_n_0_[27] ),
        .I4(\reg_out_reg_n_0_[27] ),
        .I5(reg_next_pc0_carry__3_i_5_n_0),
        .O(reg_next_pc0_carry__5_i_2_n_0));
  LUT6 #(
    .INIT(64'h05C535F5FA3ACA0A)) 
    reg_next_pc0_carry__5_i_3
       (.I0(\reg_next_pc_reg_n_0_[26] ),
        .I1(latched_stalu_reg_n_0),
        .I2(memory_reg_0_i_20_n_0),
        .I3(alu_out_q[26]),
        .I4(\reg_out_reg_n_0_[26] ),
        .I5(reg_next_pc0_carry__3_i_5_n_0),
        .O(reg_next_pc0_carry__5_i_3_n_0));
  LUT6 #(
    .INIT(64'h05C535F5FA3ACA0A)) 
    reg_next_pc0_carry__5_i_4
       (.I0(\reg_next_pc_reg_n_0_[25] ),
        .I1(latched_stalu_reg_n_0),
        .I2(memory_reg_0_i_20_n_0),
        .I3(alu_out_q[25]),
        .I4(\reg_out_reg_n_0_[25] ),
        .I5(reg_next_pc0_carry__3_i_5_n_0),
        .O(reg_next_pc0_carry__5_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 reg_next_pc0_carry__6
       (.CI(reg_next_pc0_carry__5_n_0),
        .CO({NLW_reg_next_pc0_carry__6_CO_UNCONNECTED[3:2],reg_next_pc0_carry__6_n_2,reg_next_pc0_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,current_pc[30:29]}),
        .O({NLW_reg_next_pc0_carry__6_O_UNCONNECTED[3],reg_next_pc1_in[31:29]}),
        .S({1'b0,reg_next_pc0_carry__6_i_1_n_0,reg_next_pc0_carry__6_i_2_n_0,reg_next_pc0_carry__6_i_3_n_0}));
  LUT6 #(
    .INIT(64'h565556AA9A559AAA)) 
    reg_next_pc0_carry__6_i_1
       (.I0(reg_next_pc0_carry__3_i_5_n_0),
        .I1(latched_stalu_reg_n_0),
        .I2(\reg_out_reg_n_0_[31] ),
        .I3(memory_reg_0_i_20_n_0),
        .I4(\reg_next_pc_reg_n_0_[31] ),
        .I5(alu_out_q[31]),
        .O(reg_next_pc0_carry__6_i_1_n_0));
  LUT6 #(
    .INIT(64'h101FB0BFEFE04F40)) 
    reg_next_pc0_carry__6_i_2
       (.I0(latched_stalu_reg_n_0),
        .I1(\reg_out_reg_n_0_[30] ),
        .I2(memory_reg_0_i_20_n_0),
        .I3(\reg_next_pc_reg_n_0_[30] ),
        .I4(alu_out_q[30]),
        .I5(reg_next_pc0_carry__3_i_5_n_0),
        .O(reg_next_pc0_carry__6_i_2_n_0));
  LUT6 #(
    .INIT(64'h101FB0BFEFE04F40)) 
    reg_next_pc0_carry__6_i_3
       (.I0(latched_stalu_reg_n_0),
        .I1(\reg_out_reg_n_0_[29] ),
        .I2(memory_reg_0_i_20_n_0),
        .I3(\reg_next_pc_reg_n_0_[29] ),
        .I4(alu_out_q[29]),
        .I5(reg_next_pc0_carry__3_i_5_n_0),
        .O(reg_next_pc0_carry__6_i_3_n_0));
  LUT4 #(
    .INIT(16'h6AAA)) 
    reg_next_pc0_carry_i_1
       (.I0(current_pc[4]),
        .I1(instr_jal),
        .I2(decoder_trigger_reg_n_0),
        .I3(decoded_imm_uj[4]),
        .O(reg_next_pc0_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h6AAA)) 
    reg_next_pc0_carry_i_2
       (.I0(current_pc[3]),
        .I1(instr_jal),
        .I2(decoder_trigger_reg_n_0),
        .I3(decoded_imm_uj[3]),
        .O(reg_next_pc0_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h59AA)) 
    reg_next_pc0_carry_i_3
       (.I0(current_pc[2]),
        .I1(instr_jal),
        .I2(decoded_imm_uj[2]),
        .I3(decoder_trigger_reg_n_0),
        .O(reg_next_pc0_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h6AAA)) 
    reg_next_pc0_carry_i_4
       (.I0(current_pc[1]),
        .I1(instr_jal),
        .I2(decoder_trigger_reg_n_0),
        .I3(decoded_imm_uj[1]),
        .O(reg_next_pc0_carry_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \reg_next_pc[1]_i_1 
       (.I0(current_pc[1]),
        .I1(instr_jal),
        .I2(decoder_trigger_reg_n_0),
        .I3(decoded_imm_uj[1]),
        .O(reg_next_pc1_in[1]));
  FDRE #(
    .INIT(1'b0)) 
    \reg_next_pc_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(reg_next_pc),
        .D(reg_next_pc1_in[10]),
        .Q(\reg_next_pc_reg_n_0_[10] ),
        .R(instr_and_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_next_pc_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(reg_next_pc),
        .D(reg_next_pc1_in[11]),
        .Q(\reg_next_pc_reg_n_0_[11] ),
        .R(instr_and_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_next_pc_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(reg_next_pc),
        .D(reg_next_pc1_in[12]),
        .Q(\reg_next_pc_reg_n_0_[12] ),
        .R(instr_and_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_next_pc_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(reg_next_pc),
        .D(reg_next_pc1_in[13]),
        .Q(\reg_next_pc_reg_n_0_[13] ),
        .R(instr_and_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_next_pc_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(reg_next_pc),
        .D(reg_next_pc1_in[14]),
        .Q(\reg_next_pc_reg_n_0_[14] ),
        .R(instr_and_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_next_pc_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(reg_next_pc),
        .D(reg_next_pc1_in[15]),
        .Q(\reg_next_pc_reg_n_0_[15] ),
        .R(instr_and_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_next_pc_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(reg_next_pc),
        .D(reg_next_pc1_in[16]),
        .Q(\reg_next_pc_reg_n_0_[16] ),
        .R(instr_and_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_next_pc_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(reg_next_pc),
        .D(reg_next_pc1_in[17]),
        .Q(\reg_next_pc_reg_n_0_[17] ),
        .R(instr_and_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_next_pc_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(reg_next_pc),
        .D(reg_next_pc1_in[18]),
        .Q(\reg_next_pc_reg_n_0_[18] ),
        .R(instr_and_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_next_pc_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(reg_next_pc),
        .D(reg_next_pc1_in[19]),
        .Q(\reg_next_pc_reg_n_0_[19] ),
        .R(instr_and_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_next_pc_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(reg_next_pc),
        .D(reg_next_pc1_in[1]),
        .Q(\reg_next_pc_reg_n_0_[1] ),
        .R(instr_and_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_next_pc_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(reg_next_pc),
        .D(reg_next_pc1_in[20]),
        .Q(\reg_next_pc_reg_n_0_[20] ),
        .R(instr_and_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_next_pc_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(reg_next_pc),
        .D(reg_next_pc1_in[21]),
        .Q(\reg_next_pc_reg_n_0_[21] ),
        .R(instr_and_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_next_pc_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(reg_next_pc),
        .D(reg_next_pc1_in[22]),
        .Q(\reg_next_pc_reg_n_0_[22] ),
        .R(instr_and_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_next_pc_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(reg_next_pc),
        .D(reg_next_pc1_in[23]),
        .Q(\reg_next_pc_reg_n_0_[23] ),
        .R(instr_and_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_next_pc_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(reg_next_pc),
        .D(reg_next_pc1_in[24]),
        .Q(\reg_next_pc_reg_n_0_[24] ),
        .R(instr_and_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_next_pc_reg[25] 
       (.C(clk_IBUF_BUFG),
        .CE(reg_next_pc),
        .D(reg_next_pc1_in[25]),
        .Q(\reg_next_pc_reg_n_0_[25] ),
        .R(instr_and_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_next_pc_reg[26] 
       (.C(clk_IBUF_BUFG),
        .CE(reg_next_pc),
        .D(reg_next_pc1_in[26]),
        .Q(\reg_next_pc_reg_n_0_[26] ),
        .R(instr_and_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_next_pc_reg[27] 
       (.C(clk_IBUF_BUFG),
        .CE(reg_next_pc),
        .D(reg_next_pc1_in[27]),
        .Q(\reg_next_pc_reg_n_0_[27] ),
        .R(instr_and_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_next_pc_reg[28] 
       (.C(clk_IBUF_BUFG),
        .CE(reg_next_pc),
        .D(reg_next_pc1_in[28]),
        .Q(\reg_next_pc_reg_n_0_[28] ),
        .R(instr_and_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_next_pc_reg[29] 
       (.C(clk_IBUF_BUFG),
        .CE(reg_next_pc),
        .D(reg_next_pc1_in[29]),
        .Q(\reg_next_pc_reg_n_0_[29] ),
        .R(instr_and_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_next_pc_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(reg_next_pc),
        .D(reg_next_pc1_in[2]),
        .Q(\reg_next_pc_reg_n_0_[2] ),
        .R(instr_and_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_next_pc_reg[30] 
       (.C(clk_IBUF_BUFG),
        .CE(reg_next_pc),
        .D(reg_next_pc1_in[30]),
        .Q(\reg_next_pc_reg_n_0_[30] ),
        .R(instr_and_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_next_pc_reg[31] 
       (.C(clk_IBUF_BUFG),
        .CE(reg_next_pc),
        .D(reg_next_pc1_in[31]),
        .Q(\reg_next_pc_reg_n_0_[31] ),
        .R(instr_and_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_next_pc_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(reg_next_pc),
        .D(reg_next_pc1_in[3]),
        .Q(\reg_next_pc_reg_n_0_[3] ),
        .R(instr_and_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_next_pc_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(reg_next_pc),
        .D(reg_next_pc1_in[4]),
        .Q(\reg_next_pc_reg_n_0_[4] ),
        .R(instr_and_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_next_pc_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(reg_next_pc),
        .D(reg_next_pc1_in[5]),
        .Q(\reg_next_pc_reg_n_0_[5] ),
        .R(instr_and_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_next_pc_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(reg_next_pc),
        .D(reg_next_pc1_in[6]),
        .Q(\reg_next_pc_reg_n_0_[6] ),
        .R(instr_and_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_next_pc_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(reg_next_pc),
        .D(reg_next_pc1_in[7]),
        .Q(\reg_next_pc_reg_n_0_[7] ),
        .R(instr_and_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_next_pc_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(reg_next_pc),
        .D(reg_next_pc1_in[8]),
        .Q(\reg_next_pc_reg_n_0_[8] ),
        .R(instr_and_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_next_pc_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(reg_next_pc),
        .D(reg_next_pc1_in[9]),
        .Q(\reg_next_pc_reg_n_0_[9] ),
        .R(instr_and_i_1_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 reg_op10_carry
       (.CI(1'b0),
        .CO({reg_op10_carry_n_0,reg_op10_carry_n_1,reg_op10_carry_n_2,reg_op10_carry_n_3}),
        .CYINIT(1'b0),
        .DI({\reg_op1_reg_n_0_[3] ,\reg_op1_reg_n_0_[2] ,\reg_op1_reg_n_0_[1] ,\reg_op1_reg_n_0_[0] }),
        .O(data2[3:0]),
        .S({reg_op10_carry_i_1_n_0,reg_op10_carry_i_2_n_0,reg_op10_carry_i_3_n_0,reg_op10_carry_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 reg_op10_carry__0
       (.CI(reg_op10_carry_n_0),
        .CO({reg_op10_carry__0_n_0,reg_op10_carry__0_n_1,reg_op10_carry__0_n_2,reg_op10_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({\reg_op1_reg_n_0_[7] ,\reg_op1_reg_n_0_[6] ,\reg_op1_reg_n_0_[5] ,\reg_op1_reg_n_0_[4] }),
        .O(data2[7:4]),
        .S({reg_op10_carry__0_i_1_n_0,reg_op10_carry__0_i_2_n_0,reg_op10_carry__0_i_3_n_0,reg_op10_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    reg_op10_carry__0_i_1
       (.I0(\reg_op1_reg_n_0_[7] ),
        .I1(decoded_imm[7]),
        .O(reg_op10_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    reg_op10_carry__0_i_2
       (.I0(\reg_op1_reg_n_0_[6] ),
        .I1(decoded_imm[6]),
        .O(reg_op10_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    reg_op10_carry__0_i_3
       (.I0(\reg_op1_reg_n_0_[5] ),
        .I1(decoded_imm[5]),
        .O(reg_op10_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    reg_op10_carry__0_i_4
       (.I0(\reg_op1_reg_n_0_[4] ),
        .I1(decoded_imm[4]),
        .O(reg_op10_carry__0_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 reg_op10_carry__1
       (.CI(reg_op10_carry__0_n_0),
        .CO({reg_op10_carry__1_n_0,reg_op10_carry__1_n_1,reg_op10_carry__1_n_2,reg_op10_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({\reg_op1_reg_n_0_[11] ,\reg_op1_reg_n_0_[10] ,\reg_op1_reg_n_0_[9] ,\reg_op1_reg_n_0_[8] }),
        .O(data2[11:8]),
        .S({reg_op10_carry__1_i_1_n_0,reg_op10_carry__1_i_2_n_0,reg_op10_carry__1_i_3_n_0,reg_op10_carry__1_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    reg_op10_carry__1_i_1
       (.I0(\reg_op1_reg_n_0_[11] ),
        .I1(decoded_imm[11]),
        .O(reg_op10_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    reg_op10_carry__1_i_2
       (.I0(\reg_op1_reg_n_0_[10] ),
        .I1(decoded_imm[10]),
        .O(reg_op10_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    reg_op10_carry__1_i_3
       (.I0(\reg_op1_reg_n_0_[9] ),
        .I1(decoded_imm[9]),
        .O(reg_op10_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    reg_op10_carry__1_i_4
       (.I0(\reg_op1_reg_n_0_[8] ),
        .I1(decoded_imm[8]),
        .O(reg_op10_carry__1_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 reg_op10_carry__2
       (.CI(reg_op10_carry__1_n_0),
        .CO({reg_op10_carry__2_n_0,reg_op10_carry__2_n_1,reg_op10_carry__2_n_2,reg_op10_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({\reg_op1_reg_n_0_[15] ,\reg_op1_reg_n_0_[14] ,\reg_op1_reg_n_0_[13] ,\reg_op1_reg_n_0_[12] }),
        .O(data2[15:12]),
        .S({reg_op10_carry__2_i_1_n_0,reg_op10_carry__2_i_2_n_0,reg_op10_carry__2_i_3_n_0,reg_op10_carry__2_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    reg_op10_carry__2_i_1
       (.I0(\reg_op1_reg_n_0_[15] ),
        .I1(decoded_imm[15]),
        .O(reg_op10_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    reg_op10_carry__2_i_2
       (.I0(\reg_op1_reg_n_0_[14] ),
        .I1(decoded_imm[14]),
        .O(reg_op10_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    reg_op10_carry__2_i_3
       (.I0(\reg_op1_reg_n_0_[13] ),
        .I1(decoded_imm[13]),
        .O(reg_op10_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    reg_op10_carry__2_i_4
       (.I0(\reg_op1_reg_n_0_[12] ),
        .I1(decoded_imm[12]),
        .O(reg_op10_carry__2_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 reg_op10_carry__3
       (.CI(reg_op10_carry__2_n_0),
        .CO({reg_op10_carry__3_n_0,reg_op10_carry__3_n_1,reg_op10_carry__3_n_2,reg_op10_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({\reg_op1_reg_n_0_[19] ,\reg_op1_reg_n_0_[18] ,\reg_op1_reg_n_0_[17] ,\reg_op1_reg_n_0_[16] }),
        .O(data2[19:16]),
        .S({reg_op10_carry__3_i_1_n_0,reg_op10_carry__3_i_2_n_0,reg_op10_carry__3_i_3_n_0,reg_op10_carry__3_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    reg_op10_carry__3_i_1
       (.I0(\reg_op1_reg_n_0_[19] ),
        .I1(decoded_imm[19]),
        .O(reg_op10_carry__3_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    reg_op10_carry__3_i_2
       (.I0(\reg_op1_reg_n_0_[18] ),
        .I1(decoded_imm[18]),
        .O(reg_op10_carry__3_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    reg_op10_carry__3_i_3
       (.I0(\reg_op1_reg_n_0_[17] ),
        .I1(decoded_imm[17]),
        .O(reg_op10_carry__3_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    reg_op10_carry__3_i_4
       (.I0(\reg_op1_reg_n_0_[16] ),
        .I1(decoded_imm[16]),
        .O(reg_op10_carry__3_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 reg_op10_carry__4
       (.CI(reg_op10_carry__3_n_0),
        .CO({reg_op10_carry__4_n_0,reg_op10_carry__4_n_1,reg_op10_carry__4_n_2,reg_op10_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({\reg_op1_reg_n_0_[23] ,\reg_op1_reg_n_0_[22] ,\reg_op1_reg_n_0_[21] ,\reg_op1_reg_n_0_[20] }),
        .O(data2[23:20]),
        .S({reg_op10_carry__4_i_1_n_0,reg_op10_carry__4_i_2_n_0,reg_op10_carry__4_i_3_n_0,reg_op10_carry__4_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    reg_op10_carry__4_i_1
       (.I0(\reg_op1_reg_n_0_[23] ),
        .I1(decoded_imm[23]),
        .O(reg_op10_carry__4_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    reg_op10_carry__4_i_2
       (.I0(\reg_op1_reg_n_0_[22] ),
        .I1(decoded_imm[22]),
        .O(reg_op10_carry__4_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    reg_op10_carry__4_i_3
       (.I0(\reg_op1_reg_n_0_[21] ),
        .I1(decoded_imm[21]),
        .O(reg_op10_carry__4_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    reg_op10_carry__4_i_4
       (.I0(\reg_op1_reg_n_0_[20] ),
        .I1(decoded_imm[20]),
        .O(reg_op10_carry__4_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 reg_op10_carry__5
       (.CI(reg_op10_carry__4_n_0),
        .CO({reg_op10_carry__5_n_0,reg_op10_carry__5_n_1,reg_op10_carry__5_n_2,reg_op10_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({\reg_op1_reg_n_0_[27] ,\reg_op1_reg_n_0_[26] ,\reg_op1_reg_n_0_[25] ,\reg_op1_reg_n_0_[24] }),
        .O(data2[27:24]),
        .S({reg_op10_carry__5_i_1_n_0,reg_op10_carry__5_i_2_n_0,reg_op10_carry__5_i_3_n_0,reg_op10_carry__5_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    reg_op10_carry__5_i_1
       (.I0(\reg_op1_reg_n_0_[27] ),
        .I1(decoded_imm[27]),
        .O(reg_op10_carry__5_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    reg_op10_carry__5_i_2
       (.I0(\reg_op1_reg_n_0_[26] ),
        .I1(decoded_imm[26]),
        .O(reg_op10_carry__5_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    reg_op10_carry__5_i_3
       (.I0(\reg_op1_reg_n_0_[25] ),
        .I1(decoded_imm[25]),
        .O(reg_op10_carry__5_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    reg_op10_carry__5_i_4
       (.I0(\reg_op1_reg_n_0_[24] ),
        .I1(decoded_imm[24]),
        .O(reg_op10_carry__5_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 reg_op10_carry__6
       (.CI(reg_op10_carry__5_n_0),
        .CO({NLW_reg_op10_carry__6_CO_UNCONNECTED[3],reg_op10_carry__6_n_1,reg_op10_carry__6_n_2,reg_op10_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,\reg_op1_reg_n_0_[30] ,\reg_op1_reg_n_0_[29] ,\reg_op1_reg_n_0_[28] }),
        .O(data2[31:28]),
        .S({reg_op10_carry__6_i_1_n_0,reg_op10_carry__6_i_2_n_0,reg_op10_carry__6_i_3_n_0,reg_op10_carry__6_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    reg_op10_carry__6_i_1
       (.I0(\reg_op1_reg_n_0_[31] ),
        .I1(decoded_imm[31]),
        .O(reg_op10_carry__6_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    reg_op10_carry__6_i_2
       (.I0(\reg_op1_reg_n_0_[30] ),
        .I1(decoded_imm[30]),
        .O(reg_op10_carry__6_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    reg_op10_carry__6_i_3
       (.I0(\reg_op1_reg_n_0_[29] ),
        .I1(decoded_imm[29]),
        .O(reg_op10_carry__6_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    reg_op10_carry__6_i_4
       (.I0(\reg_op1_reg_n_0_[28] ),
        .I1(decoded_imm[28]),
        .O(reg_op10_carry__6_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    reg_op10_carry_i_1
       (.I0(\reg_op1_reg_n_0_[3] ),
        .I1(decoded_imm[3]),
        .O(reg_op10_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    reg_op10_carry_i_2
       (.I0(\reg_op1_reg_n_0_[2] ),
        .I1(decoded_imm[2]),
        .O(reg_op10_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    reg_op10_carry_i_3
       (.I0(\reg_op1_reg_n_0_[1] ),
        .I1(decoded_imm[1]),
        .O(reg_op10_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    reg_op10_carry_i_4
       (.I0(\reg_op1_reg_n_0_[0] ),
        .I1(decoded_imm[0]),
        .O(reg_op10_carry_i_4_n_0));
  LUT5 #(
    .INIT(32'hF4F4FFF4)) 
    \reg_op1[0]_i_1 
       (.I0(\reg_op1[31]_i_6_n_0 ),
        .I1(reg_out1[0]),
        .I2(\reg_op1[0]_i_2_n_0 ),
        .I3(\reg_op1_reg_n_0_[1] ),
        .I4(\reg_op1[30]_i_4_n_0 ),
        .O(reg_op1[0]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h444F4444)) 
    \reg_op1[0]_i_2 
       (.I0(\reg_op1[25]_i_4_n_0 ),
        .I1(\reg_op1_reg_n_0_[4] ),
        .I2(\cpu_state_reg_n_0_[5] ),
        .I3(\cpu_state_reg_n_0_[2] ),
        .I4(data2[0]),
        .O(\reg_op1[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFF4FFFFFFF4FFF4)) 
    \reg_op1[10]_i_1 
       (.I0(\reg_op1[31]_i_6_n_0 ),
        .I1(reg_out1[10]),
        .I2(\reg_op1[10]_i_2_n_0 ),
        .I3(\reg_op1[10]_i_3_n_0 ),
        .I4(\reg_op1[27]_i_4_n_0 ),
        .I5(\reg_op1_reg_n_0_[6] ),
        .O(reg_op1[10]));
  LUT6 #(
    .INIT(64'h22F2FFFF22F222F2)) 
    \reg_op1[10]_i_2 
       (.I0(\reg_op1_reg_n_0_[9] ),
        .I1(\reg_op1[29]_i_4_n_0 ),
        .I2(\reg_op1_reg_n_0_[11] ),
        .I3(\reg_op1[30]_i_4_n_0 ),
        .I4(\reg_op1[25]_i_4_n_0 ),
        .I5(\reg_op1_reg_n_0_[14] ),
        .O(\reg_op1[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h400040FF40004000)) 
    \reg_op1[10]_i_3 
       (.I0(instr_lui),
        .I1(is_lui_auipc_jal),
        .I2(\reg_pc_reg_n_0_[10] ),
        .I3(\cpu_state_reg_n_0_[5] ),
        .I4(\cpu_state_reg_n_0_[2] ),
        .I5(data2[10]),
        .O(\reg_op1[10]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFF4FFFFFFF4FFF4)) 
    \reg_op1[11]_i_1 
       (.I0(\reg_op1[31]_i_6_n_0 ),
        .I1(reg_out1[11]),
        .I2(\reg_op1[11]_i_2_n_0 ),
        .I3(\reg_op1[11]_i_3_n_0 ),
        .I4(\reg_op1[27]_i_4_n_0 ),
        .I5(\reg_op1_reg_n_0_[7] ),
        .O(reg_op1[11]));
  LUT6 #(
    .INIT(64'h22F2FFFF22F222F2)) 
    \reg_op1[11]_i_2 
       (.I0(\reg_op1_reg_n_0_[10] ),
        .I1(\reg_op1[29]_i_4_n_0 ),
        .I2(\reg_op1_reg_n_0_[12] ),
        .I3(\reg_op1[30]_i_4_n_0 ),
        .I4(\reg_op1[25]_i_4_n_0 ),
        .I5(\reg_op1_reg_n_0_[15] ),
        .O(\reg_op1[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h400040FF40004000)) 
    \reg_op1[11]_i_3 
       (.I0(instr_lui),
        .I1(is_lui_auipc_jal),
        .I2(\reg_pc_reg_n_0_[11] ),
        .I3(\cpu_state_reg_n_0_[5] ),
        .I4(\cpu_state_reg_n_0_[2] ),
        .I5(data2[11]),
        .O(\reg_op1[11]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFF4FFFFFFF4FFF4)) 
    \reg_op1[12]_i_1 
       (.I0(\reg_op1[31]_i_6_n_0 ),
        .I1(reg_out1[12]),
        .I2(\reg_op1[12]_i_2_n_0 ),
        .I3(\reg_op1[12]_i_3_n_0 ),
        .I4(\reg_op1[29]_i_4_n_0 ),
        .I5(\reg_op1_reg_n_0_[11] ),
        .O(reg_op1[12]));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \reg_op1[12]_i_2 
       (.I0(\reg_op1[25]_i_4_n_0 ),
        .I1(\reg_op1_reg_n_0_[16] ),
        .I2(\reg_op1_reg_n_0_[8] ),
        .I3(\reg_op1[27]_i_4_n_0 ),
        .I4(\reg_op1_reg_n_0_[13] ),
        .I5(\reg_op1[30]_i_4_n_0 ),
        .O(\reg_op1[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0F00444400004444)) 
    \reg_op1[12]_i_3 
       (.I0(\cpu_state_reg_n_0_[2] ),
        .I1(data2[12]),
        .I2(instr_lui),
        .I3(is_lui_auipc_jal),
        .I4(\cpu_state_reg_n_0_[5] ),
        .I5(\reg_pc_reg_n_0_[12] ),
        .O(\reg_op1[12]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFF4FFFFFFF4FFF4)) 
    \reg_op1[13]_i_1 
       (.I0(\reg_op1[31]_i_6_n_0 ),
        .I1(reg_out1[13]),
        .I2(\reg_op1[13]_i_2_n_0 ),
        .I3(\reg_op1[13]_i_3_n_0 ),
        .I4(\reg_op1[29]_i_4_n_0 ),
        .I5(\reg_op1_reg_n_0_[12] ),
        .O(reg_op1[13]));
  LUT6 #(
    .INIT(64'h22F2FFFF22F222F2)) 
    \reg_op1[13]_i_2 
       (.I0(\reg_op1_reg_n_0_[17] ),
        .I1(\reg_op1[25]_i_4_n_0 ),
        .I2(\reg_op1_reg_n_0_[9] ),
        .I3(\reg_op1[27]_i_4_n_0 ),
        .I4(\reg_op1[30]_i_4_n_0 ),
        .I5(\reg_op1_reg_n_0_[14] ),
        .O(\reg_op1[13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0F00444400004444)) 
    \reg_op1[13]_i_3 
       (.I0(\cpu_state_reg_n_0_[2] ),
        .I1(data2[13]),
        .I2(instr_lui),
        .I3(is_lui_auipc_jal),
        .I4(\cpu_state_reg_n_0_[5] ),
        .I5(\reg_pc_reg_n_0_[13] ),
        .O(\reg_op1[13]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFF4FFFFFFF4FFF4)) 
    \reg_op1[14]_i_1 
       (.I0(\reg_op1[31]_i_6_n_0 ),
        .I1(reg_out1[14]),
        .I2(\reg_op1[14]_i_2_n_0 ),
        .I3(\reg_op1[14]_i_3_n_0 ),
        .I4(\reg_op1[27]_i_4_n_0 ),
        .I5(\reg_op1_reg_n_0_[10] ),
        .O(reg_op1[14]));
  LUT6 #(
    .INIT(64'h22F2FFFF22F222F2)) 
    \reg_op1[14]_i_2 
       (.I0(\reg_op1_reg_n_0_[13] ),
        .I1(\reg_op1[29]_i_4_n_0 ),
        .I2(\reg_op1_reg_n_0_[15] ),
        .I3(\reg_op1[30]_i_4_n_0 ),
        .I4(\reg_op1[25]_i_4_n_0 ),
        .I5(\reg_op1_reg_n_0_[18] ),
        .O(\reg_op1[14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0F00444400004444)) 
    \reg_op1[14]_i_3 
       (.I0(\cpu_state_reg_n_0_[2] ),
        .I1(data2[14]),
        .I2(instr_lui),
        .I3(is_lui_auipc_jal),
        .I4(\cpu_state_reg_n_0_[5] ),
        .I5(\reg_pc_reg_n_0_[14] ),
        .O(\reg_op1[14]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFF4FFFFFFF4FFF4)) 
    \reg_op1[15]_i_1 
       (.I0(\reg_op1[31]_i_6_n_0 ),
        .I1(reg_out1[15]),
        .I2(\reg_op1[15]_i_2_n_0 ),
        .I3(\reg_op1[15]_i_3_n_0 ),
        .I4(\reg_op1[30]_i_4_n_0 ),
        .I5(\reg_op1_reg_n_0_[16] ),
        .O(reg_op1[15]));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \reg_op1[15]_i_2 
       (.I0(\reg_op1[27]_i_4_n_0 ),
        .I1(\reg_op1_reg_n_0_[11] ),
        .I2(\reg_op1_reg_n_0_[19] ),
        .I3(\reg_op1[25]_i_4_n_0 ),
        .I4(\reg_op1_reg_n_0_[14] ),
        .I5(\reg_op1[29]_i_4_n_0 ),
        .O(\reg_op1[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0F00444400004444)) 
    \reg_op1[15]_i_3 
       (.I0(\cpu_state_reg_n_0_[2] ),
        .I1(data2[15]),
        .I2(instr_lui),
        .I3(is_lui_auipc_jal),
        .I4(\cpu_state_reg_n_0_[5] ),
        .I5(\reg_pc_reg_n_0_[15] ),
        .O(\reg_op1[15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFF4FFFFFFF4FFF4)) 
    \reg_op1[16]_i_1 
       (.I0(\reg_op1[31]_i_6_n_0 ),
        .I1(reg_out1[16]),
        .I2(\reg_op1[16]_i_2_n_0 ),
        .I3(\reg_op1[16]_i_3_n_0 ),
        .I4(\reg_op1[29]_i_4_n_0 ),
        .I5(\reg_op1_reg_n_0_[15] ),
        .O(reg_op1[16]));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \reg_op1[16]_i_2 
       (.I0(\reg_op1[27]_i_4_n_0 ),
        .I1(\reg_op1_reg_n_0_[12] ),
        .I2(\reg_op1_reg_n_0_[20] ),
        .I3(\reg_op1[25]_i_4_n_0 ),
        .I4(\reg_op1_reg_n_0_[17] ),
        .I5(\reg_op1[30]_i_4_n_0 ),
        .O(\reg_op1[16]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0F00444400004444)) 
    \reg_op1[16]_i_3 
       (.I0(\cpu_state_reg_n_0_[2] ),
        .I1(data2[16]),
        .I2(instr_lui),
        .I3(is_lui_auipc_jal),
        .I4(\cpu_state_reg_n_0_[5] ),
        .I5(\reg_pc_reg_n_0_[16] ),
        .O(\reg_op1[16]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFF4FFFFFFF4FFF4)) 
    \reg_op1[17]_i_1 
       (.I0(\reg_op1[31]_i_6_n_0 ),
        .I1(reg_out1[17]),
        .I2(\reg_op1[17]_i_2_n_0 ),
        .I3(\reg_op1[17]_i_3_n_0 ),
        .I4(\reg_op1[30]_i_4_n_0 ),
        .I5(\reg_op1_reg_n_0_[18] ),
        .O(reg_op1[17]));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \reg_op1[17]_i_2 
       (.I0(\reg_op1[27]_i_4_n_0 ),
        .I1(\reg_op1_reg_n_0_[13] ),
        .I2(\reg_op1_reg_n_0_[21] ),
        .I3(\reg_op1[25]_i_4_n_0 ),
        .I4(\reg_op1_reg_n_0_[16] ),
        .I5(\reg_op1[29]_i_4_n_0 ),
        .O(\reg_op1[17]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0F00444400004444)) 
    \reg_op1[17]_i_3 
       (.I0(\cpu_state_reg_n_0_[2] ),
        .I1(data2[17]),
        .I2(instr_lui),
        .I3(is_lui_auipc_jal),
        .I4(\cpu_state_reg_n_0_[5] ),
        .I5(\reg_pc_reg_n_0_[17] ),
        .O(\reg_op1[17]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFF4FFFFFFF4FFF4)) 
    \reg_op1[18]_i_1 
       (.I0(\reg_op1[31]_i_6_n_0 ),
        .I1(reg_out1[18]),
        .I2(\reg_op1[18]_i_2_n_0 ),
        .I3(\reg_op1[18]_i_3_n_0 ),
        .I4(\reg_op1[25]_i_4_n_0 ),
        .I5(\reg_op1_reg_n_0_[22] ),
        .O(reg_op1[18]));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \reg_op1[18]_i_2 
       (.I0(\reg_op1[30]_i_4_n_0 ),
        .I1(\reg_op1_reg_n_0_[19] ),
        .I2(\reg_op1_reg_n_0_[14] ),
        .I3(\reg_op1[27]_i_4_n_0 ),
        .I4(\reg_op1_reg_n_0_[17] ),
        .I5(\reg_op1[29]_i_4_n_0 ),
        .O(\reg_op1[18]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0F00444400004444)) 
    \reg_op1[18]_i_3 
       (.I0(\cpu_state_reg_n_0_[2] ),
        .I1(data2[18]),
        .I2(instr_lui),
        .I3(is_lui_auipc_jal),
        .I4(\cpu_state_reg_n_0_[5] ),
        .I5(\reg_pc_reg_n_0_[18] ),
        .O(\reg_op1[18]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFF4FFFFFFF4FFF4)) 
    \reg_op1[19]_i_1 
       (.I0(\reg_op1[31]_i_6_n_0 ),
        .I1(reg_out1[19]),
        .I2(\reg_op1[19]_i_2_n_0 ),
        .I3(\reg_op1[19]_i_3_n_0 ),
        .I4(\reg_op1[30]_i_4_n_0 ),
        .I5(\reg_op1_reg_n_0_[20] ),
        .O(reg_op1[19]));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \reg_op1[19]_i_2 
       (.I0(\reg_op1[27]_i_4_n_0 ),
        .I1(\reg_op1_reg_n_0_[15] ),
        .I2(\reg_op1_reg_n_0_[23] ),
        .I3(\reg_op1[25]_i_4_n_0 ),
        .I4(\reg_op1_reg_n_0_[18] ),
        .I5(\reg_op1[29]_i_4_n_0 ),
        .O(\reg_op1[19]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0F00444400004444)) 
    \reg_op1[19]_i_3 
       (.I0(\cpu_state_reg_n_0_[2] ),
        .I1(data2[19]),
        .I2(instr_lui),
        .I3(is_lui_auipc_jal),
        .I4(\cpu_state_reg_n_0_[5] ),
        .I5(\reg_pc_reg_n_0_[19] ),
        .O(\reg_op1[19]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFF4FFFFFFF4FFF4)) 
    \reg_op1[1]_i_1 
       (.I0(\reg_op1[31]_i_6_n_0 ),
        .I1(reg_out1[1]),
        .I2(\reg_op1[1]_i_2_n_0 ),
        .I3(\reg_op1[1]_i_3_n_0 ),
        .I4(\reg_op1[30]_i_4_n_0 ),
        .I5(\reg_op1_reg_n_0_[2] ),
        .O(reg_op1[1]));
  LUT4 #(
    .INIT(16'h4F44)) 
    \reg_op1[1]_i_2 
       (.I0(\reg_op1[25]_i_4_n_0 ),
        .I1(\reg_op1_reg_n_0_[5] ),
        .I2(\reg_op1[29]_i_4_n_0 ),
        .I3(\reg_op1_reg_n_0_[0] ),
        .O(\reg_op1[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0F00444400004444)) 
    \reg_op1[1]_i_3 
       (.I0(\cpu_state_reg_n_0_[2] ),
        .I1(data2[1]),
        .I2(instr_lui),
        .I3(is_lui_auipc_jal),
        .I4(\cpu_state_reg_n_0_[5] ),
        .I5(\reg_pc_reg_n_0_[1] ),
        .O(\reg_op1[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFF4FFFFFFF4FFF4)) 
    \reg_op1[20]_i_1 
       (.I0(\reg_op1[31]_i_6_n_0 ),
        .I1(reg_out1[20]),
        .I2(\reg_op1[20]_i_2_n_0 ),
        .I3(\reg_op1[20]_i_3_n_0 ),
        .I4(\reg_op1[27]_i_4_n_0 ),
        .I5(\reg_op1_reg_n_0_[16] ),
        .O(reg_op1[20]));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \reg_op1[20]_i_2 
       (.I0(\reg_op1[30]_i_4_n_0 ),
        .I1(\reg_op1_reg_n_0_[21] ),
        .I2(\reg_op1_reg_n_0_[24] ),
        .I3(\reg_op1[25]_i_4_n_0 ),
        .I4(\reg_op1_reg_n_0_[19] ),
        .I5(\reg_op1[29]_i_4_n_0 ),
        .O(\reg_op1[20]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0F00444400004444)) 
    \reg_op1[20]_i_3 
       (.I0(\cpu_state_reg_n_0_[2] ),
        .I1(data2[20]),
        .I2(instr_lui),
        .I3(is_lui_auipc_jal),
        .I4(\cpu_state_reg_n_0_[5] ),
        .I5(\reg_pc_reg_n_0_[20] ),
        .O(\reg_op1[20]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFF4FFFFFFF4FFF4)) 
    \reg_op1[21]_i_1 
       (.I0(\reg_op1[31]_i_6_n_0 ),
        .I1(reg_out1[21]),
        .I2(\reg_op1[21]_i_2_n_0 ),
        .I3(\reg_op1[21]_i_3_n_0 ),
        .I4(\reg_op1[29]_i_4_n_0 ),
        .I5(\reg_op1_reg_n_0_[20] ),
        .O(reg_op1[21]));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \reg_op1[21]_i_2 
       (.I0(\reg_op1[27]_i_4_n_0 ),
        .I1(\reg_op1_reg_n_0_[17] ),
        .I2(\reg_op1_reg_n_0_[25] ),
        .I3(\reg_op1[25]_i_4_n_0 ),
        .I4(\reg_op1_reg_n_0_[22] ),
        .I5(\reg_op1[30]_i_4_n_0 ),
        .O(\reg_op1[21]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0F00444400004444)) 
    \reg_op1[21]_i_3 
       (.I0(\cpu_state_reg_n_0_[2] ),
        .I1(data2[21]),
        .I2(instr_lui),
        .I3(is_lui_auipc_jal),
        .I4(\cpu_state_reg_n_0_[5] ),
        .I5(\reg_pc_reg_n_0_[21] ),
        .O(\reg_op1[21]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFF4FFFFFFF4FFF4)) 
    \reg_op1[22]_i_1 
       (.I0(\reg_op1[31]_i_6_n_0 ),
        .I1(reg_out1[22]),
        .I2(\reg_op1[22]_i_2_n_0 ),
        .I3(\reg_op1[22]_i_3_n_0 ),
        .I4(\reg_op1[29]_i_4_n_0 ),
        .I5(\reg_op1_reg_n_0_[21] ),
        .O(reg_op1[22]));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \reg_op1[22]_i_2 
       (.I0(\reg_op1[27]_i_4_n_0 ),
        .I1(\reg_op1_reg_n_0_[18] ),
        .I2(\reg_op1_reg_n_0_[26] ),
        .I3(\reg_op1[25]_i_4_n_0 ),
        .I4(\reg_op1_reg_n_0_[23] ),
        .I5(\reg_op1[30]_i_4_n_0 ),
        .O(\reg_op1[22]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0F00444400004444)) 
    \reg_op1[22]_i_3 
       (.I0(\cpu_state_reg_n_0_[2] ),
        .I1(data2[22]),
        .I2(instr_lui),
        .I3(is_lui_auipc_jal),
        .I4(\cpu_state_reg_n_0_[5] ),
        .I5(\reg_pc_reg_n_0_[22] ),
        .O(\reg_op1[22]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFF4FFFFFFF4FFF4)) 
    \reg_op1[23]_i_1 
       (.I0(\reg_op1[31]_i_6_n_0 ),
        .I1(reg_out1[23]),
        .I2(\reg_op1[23]_i_2_n_0 ),
        .I3(\reg_op1[23]_i_3_n_0 ),
        .I4(\reg_op1[29]_i_4_n_0 ),
        .I5(\reg_op1_reg_n_0_[22] ),
        .O(reg_op1[23]));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \reg_op1[23]_i_2 
       (.I0(\reg_op1[25]_i_4_n_0 ),
        .I1(\reg_op1_reg_n_0_[27] ),
        .I2(\reg_op1_reg_n_0_[19] ),
        .I3(\reg_op1[27]_i_4_n_0 ),
        .I4(\reg_op1_reg_n_0_[24] ),
        .I5(\reg_op1[30]_i_4_n_0 ),
        .O(\reg_op1[23]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0F00444400004444)) 
    \reg_op1[23]_i_3 
       (.I0(\cpu_state_reg_n_0_[2] ),
        .I1(data2[23]),
        .I2(instr_lui),
        .I3(is_lui_auipc_jal),
        .I4(\cpu_state_reg_n_0_[5] ),
        .I5(\reg_pc_reg_n_0_[23] ),
        .O(\reg_op1[23]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFF4FFFFFFF4FFF4)) 
    \reg_op1[24]_i_1 
       (.I0(\reg_op1[31]_i_6_n_0 ),
        .I1(reg_out1[24]),
        .I2(\reg_op1[24]_i_2_n_0 ),
        .I3(\reg_op1[24]_i_3_n_0 ),
        .I4(\reg_op1[27]_i_4_n_0 ),
        .I5(\reg_op1_reg_n_0_[20] ),
        .O(reg_op1[24]));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \reg_op1[24]_i_2 
       (.I0(\reg_op1[30]_i_4_n_0 ),
        .I1(\reg_op1_reg_n_0_[25] ),
        .I2(\reg_op1_reg_n_0_[28] ),
        .I3(\reg_op1[25]_i_4_n_0 ),
        .I4(\reg_op1_reg_n_0_[23] ),
        .I5(\reg_op1[29]_i_4_n_0 ),
        .O(\reg_op1[24]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0F00444400004444)) 
    \reg_op1[24]_i_3 
       (.I0(\cpu_state_reg_n_0_[2] ),
        .I1(data2[24]),
        .I2(instr_lui),
        .I3(is_lui_auipc_jal),
        .I4(\cpu_state_reg_n_0_[5] ),
        .I5(\reg_pc_reg_n_0_[24] ),
        .O(\reg_op1[24]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFF4FFFFFFF4FFF4)) 
    \reg_op1[25]_i_1 
       (.I0(\reg_op1[31]_i_6_n_0 ),
        .I1(reg_out1[25]),
        .I2(\reg_op1[25]_i_2_n_0 ),
        .I3(\reg_op1[25]_i_3_n_0 ),
        .I4(\reg_op1[25]_i_4_n_0 ),
        .I5(\reg_op1_reg_n_0_[29] ),
        .O(reg_op1[25]));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \reg_op1[25]_i_2 
       (.I0(\reg_op1[30]_i_4_n_0 ),
        .I1(\reg_op1_reg_n_0_[26] ),
        .I2(\reg_op1_reg_n_0_[21] ),
        .I3(\reg_op1[27]_i_4_n_0 ),
        .I4(\reg_op1_reg_n_0_[24] ),
        .I5(\reg_op1[29]_i_4_n_0 ),
        .O(\reg_op1[25]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h400040FF40004000)) 
    \reg_op1[25]_i_3 
       (.I0(instr_lui),
        .I1(is_lui_auipc_jal),
        .I2(\reg_pc_reg_n_0_[25] ),
        .I3(\cpu_state_reg_n_0_[5] ),
        .I4(\cpu_state_reg_n_0_[2] ),
        .I5(data2[25]),
        .O(\reg_op1[25]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFBFBFBFFFBFBFBFB)) 
    \reg_op1[25]_i_4 
       (.I0(\cpu_state_reg_n_0_[5] ),
        .I1(\cpu_state_reg_n_0_[2] ),
        .I2(\reg_sh[1]_i_3_n_0 ),
        .I3(instr_srli),
        .I4(instr_srl),
        .I5(\reg_op1[30]_i_7_n_0 ),
        .O(\reg_op1[25]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFF4FFFFFFF4FFF4)) 
    \reg_op1[26]_i_1 
       (.I0(\reg_op1[31]_i_6_n_0 ),
        .I1(reg_out1[26]),
        .I2(\reg_op1[26]_i_2_n_0 ),
        .I3(\reg_op1[26]_i_3_n_0 ),
        .I4(\reg_op1[27]_i_4_n_0 ),
        .I5(\reg_op1_reg_n_0_[22] ),
        .O(reg_op1[26]));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \reg_op1[26]_i_2 
       (.I0(\reg_op1[30]_i_4_n_0 ),
        .I1(\reg_op1_reg_n_0_[27] ),
        .I2(\reg_op1_reg_n_0_[30] ),
        .I3(\reg_op1[25]_i_4_n_0 ),
        .I4(\reg_op1_reg_n_0_[25] ),
        .I5(\reg_op1[29]_i_4_n_0 ),
        .O(\reg_op1[26]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0F00444400004444)) 
    \reg_op1[26]_i_3 
       (.I0(\cpu_state_reg_n_0_[2] ),
        .I1(data2[26]),
        .I2(instr_lui),
        .I3(is_lui_auipc_jal),
        .I4(\cpu_state_reg_n_0_[5] ),
        .I5(\reg_pc_reg_n_0_[26] ),
        .O(\reg_op1[26]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFF4FFFFFFF4FFF4)) 
    \reg_op1[27]_i_1 
       (.I0(\reg_op1[31]_i_6_n_0 ),
        .I1(reg_out1[27]),
        .I2(\reg_op1[27]_i_2_n_0 ),
        .I3(\reg_op1[27]_i_3_n_0 ),
        .I4(\reg_op1[27]_i_4_n_0 ),
        .I5(\reg_op1_reg_n_0_[23] ),
        .O(reg_op1[27]));
  LUT6 #(
    .INIT(64'h22F2FFFF22F222F2)) 
    \reg_op1[27]_i_2 
       (.I0(\reg_op1_reg_n_0_[26] ),
        .I1(\reg_op1[29]_i_4_n_0 ),
        .I2(\reg_op1_reg_n_0_[28] ),
        .I3(\reg_op1[30]_i_4_n_0 ),
        .I4(\reg_op1[25]_i_4_n_0 ),
        .I5(\reg_op1_reg_n_0_[31] ),
        .O(\reg_op1[27]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h400040FF40004000)) 
    \reg_op1[27]_i_3 
       (.I0(instr_lui),
        .I1(is_lui_auipc_jal),
        .I2(\reg_pc_reg_n_0_[27] ),
        .I3(\cpu_state_reg_n_0_[5] ),
        .I4(\cpu_state_reg_n_0_[2] ),
        .I5(data2[27]),
        .O(\reg_op1[27]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'hFFFFF1FF)) 
    \reg_op1[27]_i_4 
       (.I0(instr_slli),
        .I1(instr_sll),
        .I2(\cpu_state_reg_n_0_[5] ),
        .I3(\cpu_state_reg_n_0_[2] ),
        .I4(\reg_sh[1]_i_3_n_0 ),
        .O(\reg_op1[27]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF4FFF4F4)) 
    \reg_op1[28]_i_1 
       (.I0(\reg_op1[31]_i_6_n_0 ),
        .I1(reg_out1[28]),
        .I2(\reg_op1[28]_i_2_n_0 ),
        .I3(\reg_op1[30]_i_4_n_0 ),
        .I4(\reg_op1_reg_n_0_[29] ),
        .I5(\reg_op1[28]_i_3_n_0 ),
        .O(reg_op1[28]));
  LUT6 #(
    .INIT(64'hAEAEAEAEAEAEFFAE)) 
    \reg_op1[28]_i_2 
       (.I0(\reg_op1[30]_i_5_n_0 ),
        .I1(\reg_pc_reg_n_0_[28] ),
        .I2(\reg_op1[30]_i_6_n_0 ),
        .I3(data2[28]),
        .I4(\cpu_state_reg_n_0_[2] ),
        .I5(\cpu_state_reg_n_0_[5] ),
        .O(\reg_op1[28]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \reg_op1[28]_i_3 
       (.I0(\reg_op1[27]_i_4_n_0 ),
        .I1(\reg_op1_reg_n_0_[24] ),
        .I2(\reg_op1[29]_i_4_n_0 ),
        .I3(\reg_op1_reg_n_0_[27] ),
        .O(\reg_op1[28]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFF4FFFFFFF4FFF4)) 
    \reg_op1[29]_i_1 
       (.I0(\reg_op1[31]_i_6_n_0 ),
        .I1(reg_out1[29]),
        .I2(\reg_op1[29]_i_2_n_0 ),
        .I3(\reg_op1[29]_i_3_n_0 ),
        .I4(\reg_op1[29]_i_4_n_0 ),
        .I5(\reg_op1_reg_n_0_[28] ),
        .O(reg_op1[29]));
  LUT4 #(
    .INIT(16'h4F44)) 
    \reg_op1[29]_i_2 
       (.I0(\reg_op1[27]_i_4_n_0 ),
        .I1(\reg_op1_reg_n_0_[25] ),
        .I2(\reg_op1[30]_i_4_n_0 ),
        .I3(\reg_op1_reg_n_0_[30] ),
        .O(\reg_op1[29]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAEAAAEFFFFAAAE)) 
    \reg_op1[29]_i_3 
       (.I0(\reg_op1[30]_i_5_n_0 ),
        .I1(data2[29]),
        .I2(\cpu_state_reg_n_0_[2] ),
        .I3(\cpu_state_reg_n_0_[5] ),
        .I4(\reg_pc_reg_n_0_[29] ),
        .I5(\reg_op1[30]_i_6_n_0 ),
        .O(\reg_op1[29]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFF1FFFFF)) 
    \reg_op1[29]_i_4 
       (.I0(instr_slli),
        .I1(instr_sll),
        .I2(\reg_sh[1]_i_3_n_0 ),
        .I3(\cpu_state_reg_n_0_[5] ),
        .I4(\cpu_state_reg_n_0_[2] ),
        .O(\reg_op1[29]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFF4FFFFFFF4FFF4)) 
    \reg_op1[2]_i_1 
       (.I0(\reg_op1[31]_i_6_n_0 ),
        .I1(reg_out1[2]),
        .I2(\reg_op1[2]_i_2_n_0 ),
        .I3(\reg_op1[2]_i_3_n_0 ),
        .I4(\reg_op1[30]_i_4_n_0 ),
        .I5(\reg_op1_reg_n_0_[3] ),
        .O(reg_op1[2]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    \reg_op1[2]_i_2 
       (.I0(\reg_op1[25]_i_4_n_0 ),
        .I1(\reg_op1_reg_n_0_[6] ),
        .I2(\reg_op1[29]_i_4_n_0 ),
        .I3(\reg_op1_reg_n_0_[1] ),
        .O(\reg_op1[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0F00444400004444)) 
    \reg_op1[2]_i_3 
       (.I0(\cpu_state_reg_n_0_[2] ),
        .I1(data2[2]),
        .I2(instr_lui),
        .I3(is_lui_auipc_jal),
        .I4(\cpu_state_reg_n_0_[5] ),
        .I5(\reg_pc_reg_n_0_[2] ),
        .O(\reg_op1[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFF4FFFFFFF4FFF4)) 
    \reg_op1[30]_i_1 
       (.I0(\reg_op1[31]_i_6_n_0 ),
        .I1(reg_out1[30]),
        .I2(\reg_op1[30]_i_2_n_0 ),
        .I3(\reg_op1[30]_i_3_n_0 ),
        .I4(\reg_op1[30]_i_4_n_0 ),
        .I5(\reg_op1_reg_n_0_[31] ),
        .O(reg_op1[30]));
  LUT4 #(
    .INIT(16'h4F44)) 
    \reg_op1[30]_i_2 
       (.I0(\reg_op1[27]_i_4_n_0 ),
        .I1(\reg_op1_reg_n_0_[26] ),
        .I2(\reg_op1[29]_i_4_n_0 ),
        .I3(\reg_op1_reg_n_0_[29] ),
        .O(\reg_op1[30]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAEAEAEAEAEAEFFAE)) 
    \reg_op1[30]_i_3 
       (.I0(\reg_op1[30]_i_5_n_0 ),
        .I1(\reg_pc_reg_n_0_[30] ),
        .I2(\reg_op1[30]_i_6_n_0 ),
        .I3(data2[30]),
        .I4(\cpu_state_reg_n_0_[2] ),
        .I5(\cpu_state_reg_n_0_[5] ),
        .O(\reg_op1[30]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hDFDFDFFFDFDFDFDF)) 
    \reg_op1[30]_i_4 
       (.I0(\reg_sh[1]_i_3_n_0 ),
        .I1(\cpu_state_reg_n_0_[5] ),
        .I2(\cpu_state_reg_n_0_[2] ),
        .I3(instr_srli),
        .I4(instr_srl),
        .I5(\reg_op1[30]_i_7_n_0 ),
        .O(\reg_op1[30]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000540000000000)) 
    \reg_op1[30]_i_5 
       (.I0(\reg_sh[1]_i_3_n_0 ),
        .I1(instr_sra),
        .I2(instr_srai),
        .I3(\reg_op1_reg_n_0_[31] ),
        .I4(\cpu_state_reg_n_0_[5] ),
        .I5(\cpu_state_reg_n_0_[2] ),
        .O(\reg_op1[30]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'hBF)) 
    \reg_op1[30]_i_6 
       (.I0(instr_lui),
        .I1(is_lui_auipc_jal),
        .I2(\cpu_state_reg_n_0_[5] ),
        .O(\reg_op1[30]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \reg_op1[30]_i_7 
       (.I0(instr_srai),
        .I1(instr_sra),
        .O(\reg_op1[30]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFF4)) 
    \reg_op1[31]_i_1 
       (.I0(\cpu_state_reg_n_0_[0] ),
        .I1(\reg_op1[31]_i_3_n_0 ),
        .I2(\reg_op1[31]_i_4_n_0 ),
        .I3(\reg_op1[31]_i_5_n_0 ),
        .O(\reg_op1[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFBF00BFFFBFFF)) 
    \reg_op1[31]_i_10 
       (.I0(instr_lui),
        .I1(is_lui_auipc_jal),
        .I2(\reg_pc_reg_n_0_[31] ),
        .I3(\cpu_state_reg_n_0_[5] ),
        .I4(\cpu_state_reg_n_0_[2] ),
        .I5(data2[31]),
        .O(\reg_op1[31]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'hF4)) 
    \reg_op1[31]_i_2 
       (.I0(\reg_op1[31]_i_6_n_0 ),
        .I1(reg_out1[31]),
        .I2(\reg_op1[31]_i_7_n_0 ),
        .O(reg_op1[31]));
  LUT5 #(
    .INIT(32'h00D00000)) 
    \reg_op1[31]_i_3 
       (.I0(mem_do_prefetch_reg_n_0),
        .I1(instr_jal_i_3_n_0),
        .I2(\cpu_state_reg_n_0_[1] ),
        .I3(mem_do_wdata),
        .I4(resetn_IBUF),
        .O(\reg_op1[31]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h45000000)) 
    \reg_op1[31]_i_4 
       (.I0(mem_do_rdata),
        .I1(instr_jal_i_3_n_0),
        .I2(mem_do_prefetch_reg_n_0),
        .I3(\cpu_state_reg_n_0_[0] ),
        .I4(resetn_IBUF),
        .O(\reg_op1[31]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h000A000800000000)) 
    \reg_op1[31]_i_5 
       (.I0(resetn_IBUF),
        .I1(\cpu_state_reg_n_0_[5] ),
        .I2(\cpu_state_reg_n_0_[1] ),
        .I3(\cpu_state_reg_n_0_[0] ),
        .I4(\cpu_state_reg_n_0_[2] ),
        .I5(\reg_sh[4]_i_3_n_0 ),
        .O(\reg_op1[31]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00020202)) 
    \reg_op1[31]_i_6 
       (.I0(is_lui_auipc_jal),
        .I1(is_jalr_addi_slti_sltiu_xori_ori_andi),
        .I2(is_slli_srli_srai),
        .I3(is_lb_lh_lw_lbu_lhu),
        .I4(\cpu_state[7]_i_6_n_0 ),
        .I5(\reg_op1[31]_i_8_n_0 ),
        .O(\reg_op1[31]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h44F4FFFFFFFFFFFF)) 
    \reg_op1[31]_i_7 
       (.I0(\reg_op1[29]_i_4_n_0 ),
        .I1(\reg_op1_reg_n_0_[30] ),
        .I2(\reg_op1_reg_n_0_[27] ),
        .I3(\reg_op1[27]_i_4_n_0 ),
        .I4(\reg_op1[31]_i_9_n_0 ),
        .I5(\reg_op1[31]_i_10_n_0 ),
        .O(\reg_op1[31]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h5555555555555557)) 
    \reg_op1[31]_i_8 
       (.I0(\cpu_state_reg_n_0_[5] ),
        .I1(decoded_rs1_0[4]),
        .I2(decoded_rs1_0[0]),
        .I3(decoded_rs1_0[2]),
        .I4(decoded_rs1_0[1]),
        .I5(decoded_rs1_0[3]),
        .O(\reg_op1[31]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'hDFDFDFFF)) 
    \reg_op1[31]_i_9 
       (.I0(\cpu_state_reg_n_0_[2] ),
        .I1(\cpu_state_reg_n_0_[5] ),
        .I2(\reg_op1_reg_n_0_[31] ),
        .I3(instr_srai),
        .I4(instr_sra),
        .O(\reg_op1[31]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFF4FFFFFFF4FFF4)) 
    \reg_op1[3]_i_1 
       (.I0(\reg_op1[31]_i_6_n_0 ),
        .I1(reg_out1[3]),
        .I2(\reg_op1[3]_i_2_n_0 ),
        .I3(\reg_op1[3]_i_3_n_0 ),
        .I4(\reg_op1[30]_i_4_n_0 ),
        .I5(\reg_op1_reg_n_0_[4] ),
        .O(reg_op1[3]));
  LUT4 #(
    .INIT(16'h4F44)) 
    \reg_op1[3]_i_2 
       (.I0(\reg_op1[25]_i_4_n_0 ),
        .I1(\reg_op1_reg_n_0_[7] ),
        .I2(\reg_op1[29]_i_4_n_0 ),
        .I3(\reg_op1_reg_n_0_[2] ),
        .O(\reg_op1[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h400040FF40004000)) 
    \reg_op1[3]_i_3 
       (.I0(instr_lui),
        .I1(is_lui_auipc_jal),
        .I2(\reg_pc_reg_n_0_[3] ),
        .I3(\cpu_state_reg_n_0_[5] ),
        .I4(\cpu_state_reg_n_0_[2] ),
        .I5(data2[3]),
        .O(\reg_op1[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFF4FFFFFFF4FFF4)) 
    \reg_op1[4]_i_1 
       (.I0(\reg_op1[31]_i_6_n_0 ),
        .I1(reg_out1[4]),
        .I2(\reg_op1[4]_i_2_n_0 ),
        .I3(\reg_op1[4]_i_3_n_0 ),
        .I4(\reg_op1[29]_i_4_n_0 ),
        .I5(\reg_op1_reg_n_0_[3] ),
        .O(reg_op1[4]));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \reg_op1[4]_i_2 
       (.I0(\reg_op1[27]_i_4_n_0 ),
        .I1(\reg_op1_reg_n_0_[0] ),
        .I2(\reg_op1_reg_n_0_[8] ),
        .I3(\reg_op1[25]_i_4_n_0 ),
        .I4(\reg_op1_reg_n_0_[5] ),
        .I5(\reg_op1[30]_i_4_n_0 ),
        .O(\reg_op1[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h400040FF40004000)) 
    \reg_op1[4]_i_3 
       (.I0(instr_lui),
        .I1(is_lui_auipc_jal),
        .I2(\reg_pc_reg_n_0_[4] ),
        .I3(\cpu_state_reg_n_0_[5] ),
        .I4(\cpu_state_reg_n_0_[2] ),
        .I5(data2[4]),
        .O(\reg_op1[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFF4FFFFFFF4FFF4)) 
    \reg_op1[5]_i_1 
       (.I0(\reg_op1[31]_i_6_n_0 ),
        .I1(reg_out1[5]),
        .I2(\reg_op1[5]_i_2_n_0 ),
        .I3(\reg_op1[5]_i_3_n_0 ),
        .I4(\reg_op1[27]_i_4_n_0 ),
        .I5(\reg_op1_reg_n_0_[1] ),
        .O(reg_op1[5]));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \reg_op1[5]_i_2 
       (.I0(\reg_op1[29]_i_4_n_0 ),
        .I1(\reg_op1_reg_n_0_[4] ),
        .I2(\reg_op1_reg_n_0_[9] ),
        .I3(\reg_op1[25]_i_4_n_0 ),
        .I4(\reg_op1_reg_n_0_[6] ),
        .I5(\reg_op1[30]_i_4_n_0 ),
        .O(\reg_op1[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h400040FF40004000)) 
    \reg_op1[5]_i_3 
       (.I0(instr_lui),
        .I1(is_lui_auipc_jal),
        .I2(\reg_pc_reg_n_0_[5] ),
        .I3(\cpu_state_reg_n_0_[5] ),
        .I4(\cpu_state_reg_n_0_[2] ),
        .I5(data2[5]),
        .O(\reg_op1[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFF4FFFFFFF4FFF4)) 
    \reg_op1[6]_i_1 
       (.I0(\reg_op1[31]_i_6_n_0 ),
        .I1(reg_out1[6]),
        .I2(\reg_op1[6]_i_2_n_0 ),
        .I3(\reg_op1[6]_i_3_n_0 ),
        .I4(\reg_op1[27]_i_4_n_0 ),
        .I5(\reg_op1_reg_n_0_[2] ),
        .O(reg_op1[6]));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \reg_op1[6]_i_2 
       (.I0(\reg_op1[29]_i_4_n_0 ),
        .I1(\reg_op1_reg_n_0_[5] ),
        .I2(\reg_op1_reg_n_0_[10] ),
        .I3(\reg_op1[25]_i_4_n_0 ),
        .I4(\reg_op1_reg_n_0_[7] ),
        .I5(\reg_op1[30]_i_4_n_0 ),
        .O(\reg_op1[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0F00444400004444)) 
    \reg_op1[6]_i_3 
       (.I0(\cpu_state_reg_n_0_[2] ),
        .I1(data2[6]),
        .I2(instr_lui),
        .I3(is_lui_auipc_jal),
        .I4(\cpu_state_reg_n_0_[5] ),
        .I5(\reg_pc_reg_n_0_[6] ),
        .O(\reg_op1[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFF4FFFFFFF4FFF4)) 
    \reg_op1[7]_i_1 
       (.I0(\reg_op1[31]_i_6_n_0 ),
        .I1(reg_out1[7]),
        .I2(\reg_op1[7]_i_2_n_0 ),
        .I3(\reg_op1[7]_i_3_n_0 ),
        .I4(\reg_op1[30]_i_4_n_0 ),
        .I5(\reg_op1_reg_n_0_[8] ),
        .O(reg_op1[7]));
  LUT6 #(
    .INIT(64'h22F2FFFF22F222F2)) 
    \reg_op1[7]_i_2 
       (.I0(\reg_op1_reg_n_0_[3] ),
        .I1(\reg_op1[27]_i_4_n_0 ),
        .I2(\reg_op1_reg_n_0_[11] ),
        .I3(\reg_op1[25]_i_4_n_0 ),
        .I4(\reg_op1[29]_i_4_n_0 ),
        .I5(\reg_op1_reg_n_0_[6] ),
        .O(\reg_op1[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0F00444400004444)) 
    \reg_op1[7]_i_3 
       (.I0(\cpu_state_reg_n_0_[2] ),
        .I1(data2[7]),
        .I2(instr_lui),
        .I3(is_lui_auipc_jal),
        .I4(\cpu_state_reg_n_0_[5] ),
        .I5(\reg_pc_reg_n_0_[7] ),
        .O(\reg_op1[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFF4FFFFFFF4FFF4)) 
    \reg_op1[8]_i_1 
       (.I0(\reg_op1[31]_i_6_n_0 ),
        .I1(reg_out1[8]),
        .I2(\reg_op1[8]_i_2_n_0 ),
        .I3(\reg_op1[8]_i_3_n_0 ),
        .I4(\reg_op1[29]_i_4_n_0 ),
        .I5(\reg_op1_reg_n_0_[7] ),
        .O(reg_op1[8]));
  LUT6 #(
    .INIT(64'h22F2FFFF22F222F2)) 
    \reg_op1[8]_i_2 
       (.I0(\reg_op1_reg_n_0_[4] ),
        .I1(\reg_op1[27]_i_4_n_0 ),
        .I2(\reg_op1_reg_n_0_[12] ),
        .I3(\reg_op1[25]_i_4_n_0 ),
        .I4(\reg_op1[30]_i_4_n_0 ),
        .I5(\reg_op1_reg_n_0_[9] ),
        .O(\reg_op1[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h400040FF40004000)) 
    \reg_op1[8]_i_3 
       (.I0(instr_lui),
        .I1(is_lui_auipc_jal),
        .I2(\reg_pc_reg_n_0_[8] ),
        .I3(\cpu_state_reg_n_0_[5] ),
        .I4(\cpu_state_reg_n_0_[2] ),
        .I5(data2[8]),
        .O(\reg_op1[8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFF4FFFFFFF4FFF4)) 
    \reg_op1[9]_i_1 
       (.I0(\reg_op1[31]_i_6_n_0 ),
        .I1(reg_out1[9]),
        .I2(\reg_op1[9]_i_2_n_0 ),
        .I3(\reg_op1[9]_i_3_n_0 ),
        .I4(\reg_op1[29]_i_4_n_0 ),
        .I5(\reg_op1_reg_n_0_[8] ),
        .O(reg_op1[9]));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \reg_op1[9]_i_2 
       (.I0(\reg_op1[27]_i_4_n_0 ),
        .I1(\reg_op1_reg_n_0_[5] ),
        .I2(\reg_op1_reg_n_0_[13] ),
        .I3(\reg_op1[25]_i_4_n_0 ),
        .I4(\reg_op1_reg_n_0_[10] ),
        .I5(\reg_op1[30]_i_4_n_0 ),
        .O(\reg_op1[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h400040FF40004000)) 
    \reg_op1[9]_i_3 
       (.I0(instr_lui),
        .I1(is_lui_auipc_jal),
        .I2(\reg_pc_reg_n_0_[9] ),
        .I3(\cpu_state_reg_n_0_[5] ),
        .I4(\cpu_state_reg_n_0_[2] ),
        .I5(data2[9]),
        .O(\reg_op1[9]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_op1_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\reg_op1[31]_i_1_n_0 ),
        .D(reg_op1[0]),
        .Q(\reg_op1_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_op1_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(\reg_op1[31]_i_1_n_0 ),
        .D(reg_op1[10]),
        .Q(\reg_op1_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_op1_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(\reg_op1[31]_i_1_n_0 ),
        .D(reg_op1[11]),
        .Q(\reg_op1_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_op1_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(\reg_op1[31]_i_1_n_0 ),
        .D(reg_op1[12]),
        .Q(\reg_op1_reg_n_0_[12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_op1_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(\reg_op1[31]_i_1_n_0 ),
        .D(reg_op1[13]),
        .Q(\reg_op1_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_op1_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(\reg_op1[31]_i_1_n_0 ),
        .D(reg_op1[14]),
        .Q(\reg_op1_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_op1_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(\reg_op1[31]_i_1_n_0 ),
        .D(reg_op1[15]),
        .Q(\reg_op1_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_op1_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(\reg_op1[31]_i_1_n_0 ),
        .D(reg_op1[16]),
        .Q(\reg_op1_reg_n_0_[16] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_op1_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(\reg_op1[31]_i_1_n_0 ),
        .D(reg_op1[17]),
        .Q(\reg_op1_reg_n_0_[17] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_op1_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(\reg_op1[31]_i_1_n_0 ),
        .D(reg_op1[18]),
        .Q(\reg_op1_reg_n_0_[18] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_op1_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(\reg_op1[31]_i_1_n_0 ),
        .D(reg_op1[19]),
        .Q(\reg_op1_reg_n_0_[19] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_op1_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\reg_op1[31]_i_1_n_0 ),
        .D(reg_op1[1]),
        .Q(\reg_op1_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_op1_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(\reg_op1[31]_i_1_n_0 ),
        .D(reg_op1[20]),
        .Q(\reg_op1_reg_n_0_[20] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_op1_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(\reg_op1[31]_i_1_n_0 ),
        .D(reg_op1[21]),
        .Q(\reg_op1_reg_n_0_[21] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_op1_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(\reg_op1[31]_i_1_n_0 ),
        .D(reg_op1[22]),
        .Q(\reg_op1_reg_n_0_[22] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_op1_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(\reg_op1[31]_i_1_n_0 ),
        .D(reg_op1[23]),
        .Q(\reg_op1_reg_n_0_[23] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_op1_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(\reg_op1[31]_i_1_n_0 ),
        .D(reg_op1[24]),
        .Q(\reg_op1_reg_n_0_[24] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_op1_reg[25] 
       (.C(clk_IBUF_BUFG),
        .CE(\reg_op1[31]_i_1_n_0 ),
        .D(reg_op1[25]),
        .Q(\reg_op1_reg_n_0_[25] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_op1_reg[26] 
       (.C(clk_IBUF_BUFG),
        .CE(\reg_op1[31]_i_1_n_0 ),
        .D(reg_op1[26]),
        .Q(\reg_op1_reg_n_0_[26] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_op1_reg[27] 
       (.C(clk_IBUF_BUFG),
        .CE(\reg_op1[31]_i_1_n_0 ),
        .D(reg_op1[27]),
        .Q(\reg_op1_reg_n_0_[27] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_op1_reg[28] 
       (.C(clk_IBUF_BUFG),
        .CE(\reg_op1[31]_i_1_n_0 ),
        .D(reg_op1[28]),
        .Q(\reg_op1_reg_n_0_[28] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_op1_reg[29] 
       (.C(clk_IBUF_BUFG),
        .CE(\reg_op1[31]_i_1_n_0 ),
        .D(reg_op1[29]),
        .Q(\reg_op1_reg_n_0_[29] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_op1_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\reg_op1[31]_i_1_n_0 ),
        .D(reg_op1[2]),
        .Q(\reg_op1_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_op1_reg[30] 
       (.C(clk_IBUF_BUFG),
        .CE(\reg_op1[31]_i_1_n_0 ),
        .D(reg_op1[30]),
        .Q(\reg_op1_reg_n_0_[30] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_op1_reg[31] 
       (.C(clk_IBUF_BUFG),
        .CE(\reg_op1[31]_i_1_n_0 ),
        .D(reg_op1[31]),
        .Q(\reg_op1_reg_n_0_[31] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_op1_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\reg_op1[31]_i_1_n_0 ),
        .D(reg_op1[3]),
        .Q(\reg_op1_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_op1_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\reg_op1[31]_i_1_n_0 ),
        .D(reg_op1[4]),
        .Q(\reg_op1_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_op1_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\reg_op1[31]_i_1_n_0 ),
        .D(reg_op1[5]),
        .Q(\reg_op1_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_op1_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\reg_op1[31]_i_1_n_0 ),
        .D(reg_op1[6]),
        .Q(\reg_op1_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_op1_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\reg_op1[31]_i_1_n_0 ),
        .D(reg_op1[7]),
        .Q(\reg_op1_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_op1_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(\reg_op1[31]_i_1_n_0 ),
        .D(reg_op1[8]),
        .Q(\reg_op1_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_op1_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(\reg_op1[31]_i_1_n_0 ),
        .D(reg_op1[9]),
        .Q(\reg_op1_reg_n_0_[9] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'hFFF44444)) 
    \reg_op2[0]_i_1 
       (.I0(\reg_op2[31]_i_3_n_0 ),
        .I1(reg_sh1[0]),
        .I2(is_lui_auipc_jal),
        .I3(is_jalr_addi_slti_sltiu_xori_ori_andi),
        .I4(decoded_imm[0]),
        .O(\reg_op2[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFF44444)) 
    \reg_op2[10]_i_1 
       (.I0(\reg_op2[31]_i_3_n_0 ),
        .I1(reg_sh1[10]),
        .I2(is_lui_auipc_jal),
        .I3(is_jalr_addi_slti_sltiu_xori_ori_andi),
        .I4(decoded_imm[10]),
        .O(\reg_op2[10]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFF44444)) 
    \reg_op2[11]_i_1 
       (.I0(\reg_op2[31]_i_3_n_0 ),
        .I1(reg_sh1[11]),
        .I2(is_lui_auipc_jal),
        .I3(is_jalr_addi_slti_sltiu_xori_ori_andi),
        .I4(decoded_imm[11]),
        .O(\reg_op2[11]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFF44444)) 
    \reg_op2[12]_i_1 
       (.I0(\reg_op2[31]_i_3_n_0 ),
        .I1(reg_sh1[12]),
        .I2(is_lui_auipc_jal),
        .I3(is_jalr_addi_slti_sltiu_xori_ori_andi),
        .I4(decoded_imm[12]),
        .O(\reg_op2[12]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFF44444)) 
    \reg_op2[13]_i_1 
       (.I0(\reg_op2[31]_i_3_n_0 ),
        .I1(reg_sh1[13]),
        .I2(is_lui_auipc_jal),
        .I3(is_jalr_addi_slti_sltiu_xori_ori_andi),
        .I4(decoded_imm[13]),
        .O(\reg_op2[13]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFF44444)) 
    \reg_op2[14]_i_1 
       (.I0(\reg_op2[31]_i_3_n_0 ),
        .I1(reg_sh1[14]),
        .I2(is_lui_auipc_jal),
        .I3(is_jalr_addi_slti_sltiu_xori_ori_andi),
        .I4(decoded_imm[14]),
        .O(\reg_op2[14]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFF44444)) 
    \reg_op2[15]_i_1 
       (.I0(\reg_op2[31]_i_3_n_0 ),
        .I1(reg_sh1[15]),
        .I2(is_lui_auipc_jal),
        .I3(is_jalr_addi_slti_sltiu_xori_ori_andi),
        .I4(decoded_imm[15]),
        .O(\reg_op2[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFF44444)) 
    \reg_op2[16]_i_1 
       (.I0(\reg_op2[31]_i_3_n_0 ),
        .I1(reg_sh1[16]),
        .I2(is_lui_auipc_jal),
        .I3(is_jalr_addi_slti_sltiu_xori_ori_andi),
        .I4(decoded_imm[16]),
        .O(\reg_op2[16]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFF44444)) 
    \reg_op2[17]_i_1 
       (.I0(\reg_op2[31]_i_3_n_0 ),
        .I1(reg_sh1[17]),
        .I2(is_lui_auipc_jal),
        .I3(is_jalr_addi_slti_sltiu_xori_ori_andi),
        .I4(decoded_imm[17]),
        .O(\reg_op2[17]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFF44444)) 
    \reg_op2[18]_i_1 
       (.I0(\reg_op2[31]_i_3_n_0 ),
        .I1(reg_sh1[18]),
        .I2(is_lui_auipc_jal),
        .I3(is_jalr_addi_slti_sltiu_xori_ori_andi),
        .I4(decoded_imm[18]),
        .O(\reg_op2[18]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFF44444)) 
    \reg_op2[19]_i_1 
       (.I0(\reg_op2[31]_i_3_n_0 ),
        .I1(reg_sh1[19]),
        .I2(is_lui_auipc_jal),
        .I3(is_jalr_addi_slti_sltiu_xori_ori_andi),
        .I4(decoded_imm[19]),
        .O(\reg_op2[19]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFF44444)) 
    \reg_op2[1]_i_1 
       (.I0(\reg_op2[31]_i_3_n_0 ),
        .I1(reg_sh1[1]),
        .I2(is_lui_auipc_jal),
        .I3(is_jalr_addi_slti_sltiu_xori_ori_andi),
        .I4(decoded_imm[1]),
        .O(\reg_op2[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFF44444)) 
    \reg_op2[20]_i_1 
       (.I0(\reg_op2[31]_i_3_n_0 ),
        .I1(reg_sh1[20]),
        .I2(is_lui_auipc_jal),
        .I3(is_jalr_addi_slti_sltiu_xori_ori_andi),
        .I4(decoded_imm[20]),
        .O(\reg_op2[20]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFF44444)) 
    \reg_op2[21]_i_1 
       (.I0(\reg_op2[31]_i_3_n_0 ),
        .I1(reg_sh1[21]),
        .I2(is_lui_auipc_jal),
        .I3(is_jalr_addi_slti_sltiu_xori_ori_andi),
        .I4(decoded_imm[21]),
        .O(\reg_op2[21]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFF44444)) 
    \reg_op2[22]_i_1 
       (.I0(\reg_op2[31]_i_3_n_0 ),
        .I1(reg_sh1[22]),
        .I2(is_lui_auipc_jal),
        .I3(is_jalr_addi_slti_sltiu_xori_ori_andi),
        .I4(decoded_imm[22]),
        .O(\reg_op2[22]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFF44444)) 
    \reg_op2[23]_i_1 
       (.I0(\reg_op2[31]_i_3_n_0 ),
        .I1(reg_sh1[23]),
        .I2(is_lui_auipc_jal),
        .I3(is_jalr_addi_slti_sltiu_xori_ori_andi),
        .I4(decoded_imm[23]),
        .O(\reg_op2[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFF44444)) 
    \reg_op2[24]_i_1 
       (.I0(\reg_op2[31]_i_3_n_0 ),
        .I1(reg_sh1[24]),
        .I2(is_lui_auipc_jal),
        .I3(is_jalr_addi_slti_sltiu_xori_ori_andi),
        .I4(decoded_imm[24]),
        .O(\reg_op2[24]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFF44444)) 
    \reg_op2[25]_i_1 
       (.I0(\reg_op2[31]_i_3_n_0 ),
        .I1(reg_sh1[25]),
        .I2(is_lui_auipc_jal),
        .I3(is_jalr_addi_slti_sltiu_xori_ori_andi),
        .I4(decoded_imm[25]),
        .O(\reg_op2[25]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFF44444)) 
    \reg_op2[26]_i_1 
       (.I0(\reg_op2[31]_i_3_n_0 ),
        .I1(reg_sh1[26]),
        .I2(is_lui_auipc_jal),
        .I3(is_jalr_addi_slti_sltiu_xori_ori_andi),
        .I4(decoded_imm[26]),
        .O(\reg_op2[26]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFF44444)) 
    \reg_op2[27]_i_1 
       (.I0(\reg_op2[31]_i_3_n_0 ),
        .I1(reg_sh1[27]),
        .I2(is_lui_auipc_jal),
        .I3(is_jalr_addi_slti_sltiu_xori_ori_andi),
        .I4(decoded_imm[27]),
        .O(\reg_op2[27]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFF44444)) 
    \reg_op2[28]_i_1 
       (.I0(\reg_op2[31]_i_3_n_0 ),
        .I1(reg_sh1[28]),
        .I2(is_lui_auipc_jal),
        .I3(is_jalr_addi_slti_sltiu_xori_ori_andi),
        .I4(decoded_imm[28]),
        .O(\reg_op2[28]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFF44444)) 
    \reg_op2[29]_i_1 
       (.I0(\reg_op2[31]_i_3_n_0 ),
        .I1(reg_sh1[29]),
        .I2(is_lui_auipc_jal),
        .I3(is_jalr_addi_slti_sltiu_xori_ori_andi),
        .I4(decoded_imm[29]),
        .O(\reg_op2[29]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFF44444)) 
    \reg_op2[2]_i_1 
       (.I0(\reg_op2[31]_i_3_n_0 ),
        .I1(reg_sh1[2]),
        .I2(is_lui_auipc_jal),
        .I3(is_jalr_addi_slti_sltiu_xori_ori_andi),
        .I4(decoded_imm[2]),
        .O(\reg_op2[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFF44444)) 
    \reg_op2[30]_i_1 
       (.I0(\reg_op2[31]_i_3_n_0 ),
        .I1(reg_sh1[30]),
        .I2(is_lui_auipc_jal),
        .I3(is_jalr_addi_slti_sltiu_xori_ori_andi),
        .I4(decoded_imm[30]),
        .O(\reg_op2[30]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \reg_op2[31]_i_1 
       (.I0(resetn_IBUF),
        .I1(\cpu_state_reg_n_0_[5] ),
        .O(\reg_op2[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFF44444)) 
    \reg_op2[31]_i_2 
       (.I0(\reg_op2[31]_i_3_n_0 ),
        .I1(reg_sh1[31]),
        .I2(is_lui_auipc_jal),
        .I3(is_jalr_addi_slti_sltiu_xori_ori_andi),
        .I4(decoded_imm[31]),
        .O(\reg_op2[31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000001FFFFFFFF)) 
    \reg_op2[31]_i_3 
       (.I0(decoded_imm_uj[3]),
        .I1(decoded_imm_uj[1]),
        .I2(decoded_imm_uj[2]),
        .I3(decoded_imm_uj[11]),
        .I4(decoded_imm_uj[4]),
        .I5(\reg_op2[31]_i_4_n_0 ),
        .O(\reg_op2[31]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \reg_op2[31]_i_4 
       (.I0(is_lui_auipc_jal),
        .I1(is_jalr_addi_slti_sltiu_xori_ori_andi),
        .O(\reg_op2[31]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFF44444)) 
    \reg_op2[3]_i_1 
       (.I0(\reg_op2[31]_i_3_n_0 ),
        .I1(reg_sh1[3]),
        .I2(is_lui_auipc_jal),
        .I3(is_jalr_addi_slti_sltiu_xori_ori_andi),
        .I4(decoded_imm[3]),
        .O(\reg_op2[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFF44444)) 
    \reg_op2[4]_i_1 
       (.I0(\reg_op2[31]_i_3_n_0 ),
        .I1(reg_sh1[4]),
        .I2(is_lui_auipc_jal),
        .I3(is_jalr_addi_slti_sltiu_xori_ori_andi),
        .I4(decoded_imm[4]),
        .O(\reg_op2[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFF44444)) 
    \reg_op2[5]_i_1 
       (.I0(\reg_op2[31]_i_3_n_0 ),
        .I1(reg_sh1[5]),
        .I2(is_lui_auipc_jal),
        .I3(is_jalr_addi_slti_sltiu_xori_ori_andi),
        .I4(decoded_imm[5]),
        .O(\reg_op2[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFF44444)) 
    \reg_op2[6]_i_1 
       (.I0(\reg_op2[31]_i_3_n_0 ),
        .I1(reg_sh1[6]),
        .I2(is_lui_auipc_jal),
        .I3(is_jalr_addi_slti_sltiu_xori_ori_andi),
        .I4(decoded_imm[6]),
        .O(\reg_op2[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFF44444)) 
    \reg_op2[7]_i_1 
       (.I0(\reg_op2[31]_i_3_n_0 ),
        .I1(reg_sh1[7]),
        .I2(is_lui_auipc_jal),
        .I3(is_jalr_addi_slti_sltiu_xori_ori_andi),
        .I4(decoded_imm[7]),
        .O(\reg_op2[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFF44444)) 
    \reg_op2[8]_i_1 
       (.I0(\reg_op2[31]_i_3_n_0 ),
        .I1(reg_sh1[8]),
        .I2(is_lui_auipc_jal),
        .I3(is_jalr_addi_slti_sltiu_xori_ori_andi),
        .I4(decoded_imm[8]),
        .O(\reg_op2[8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFF44444)) 
    \reg_op2[9]_i_1 
       (.I0(\reg_op2[31]_i_3_n_0 ),
        .I1(reg_sh1[9]),
        .I2(is_lui_auipc_jal),
        .I3(is_jalr_addi_slti_sltiu_xori_ori_andi),
        .I4(decoded_imm[9]),
        .O(\reg_op2[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_op2_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\reg_op2[31]_i_1_n_0 ),
        .D(\reg_op2[0]_i_1_n_0 ),
        .Q(Q[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_op2_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(\reg_op2[31]_i_1_n_0 ),
        .D(\reg_op2[10]_i_1_n_0 ),
        .Q(\reg_op2_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_op2_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(\reg_op2[31]_i_1_n_0 ),
        .D(\reg_op2[11]_i_1_n_0 ),
        .Q(\reg_op2_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_op2_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(\reg_op2[31]_i_1_n_0 ),
        .D(\reg_op2[12]_i_1_n_0 ),
        .Q(\reg_op2_reg_n_0_[12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_op2_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(\reg_op2[31]_i_1_n_0 ),
        .D(\reg_op2[13]_i_1_n_0 ),
        .Q(\reg_op2_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_op2_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(\reg_op2[31]_i_1_n_0 ),
        .D(\reg_op2[14]_i_1_n_0 ),
        .Q(\reg_op2_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_op2_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(\reg_op2[31]_i_1_n_0 ),
        .D(\reg_op2[15]_i_1_n_0 ),
        .Q(\reg_op2_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_op2_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(\reg_op2[31]_i_1_n_0 ),
        .D(\reg_op2[16]_i_1_n_0 ),
        .Q(\reg_op2_reg_n_0_[16] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_op2_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(\reg_op2[31]_i_1_n_0 ),
        .D(\reg_op2[17]_i_1_n_0 ),
        .Q(\reg_op2_reg_n_0_[17] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_op2_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(\reg_op2[31]_i_1_n_0 ),
        .D(\reg_op2[18]_i_1_n_0 ),
        .Q(\reg_op2_reg_n_0_[18] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_op2_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(\reg_op2[31]_i_1_n_0 ),
        .D(\reg_op2[19]_i_1_n_0 ),
        .Q(\reg_op2_reg_n_0_[19] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_op2_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\reg_op2[31]_i_1_n_0 ),
        .D(\reg_op2[1]_i_1_n_0 ),
        .Q(Q[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_op2_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(\reg_op2[31]_i_1_n_0 ),
        .D(\reg_op2[20]_i_1_n_0 ),
        .Q(\reg_op2_reg_n_0_[20] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_op2_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(\reg_op2[31]_i_1_n_0 ),
        .D(\reg_op2[21]_i_1_n_0 ),
        .Q(\reg_op2_reg_n_0_[21] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_op2_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(\reg_op2[31]_i_1_n_0 ),
        .D(\reg_op2[22]_i_1_n_0 ),
        .Q(\reg_op2_reg_n_0_[22] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_op2_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(\reg_op2[31]_i_1_n_0 ),
        .D(\reg_op2[23]_i_1_n_0 ),
        .Q(\reg_op2_reg_n_0_[23] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_op2_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(\reg_op2[31]_i_1_n_0 ),
        .D(\reg_op2[24]_i_1_n_0 ),
        .Q(\reg_op2_reg_n_0_[24] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_op2_reg[25] 
       (.C(clk_IBUF_BUFG),
        .CE(\reg_op2[31]_i_1_n_0 ),
        .D(\reg_op2[25]_i_1_n_0 ),
        .Q(\reg_op2_reg_n_0_[25] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_op2_reg[26] 
       (.C(clk_IBUF_BUFG),
        .CE(\reg_op2[31]_i_1_n_0 ),
        .D(\reg_op2[26]_i_1_n_0 ),
        .Q(\reg_op2_reg_n_0_[26] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_op2_reg[27] 
       (.C(clk_IBUF_BUFG),
        .CE(\reg_op2[31]_i_1_n_0 ),
        .D(\reg_op2[27]_i_1_n_0 ),
        .Q(\reg_op2_reg_n_0_[27] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_op2_reg[28] 
       (.C(clk_IBUF_BUFG),
        .CE(\reg_op2[31]_i_1_n_0 ),
        .D(\reg_op2[28]_i_1_n_0 ),
        .Q(\reg_op2_reg_n_0_[28] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_op2_reg[29] 
       (.C(clk_IBUF_BUFG),
        .CE(\reg_op2[31]_i_1_n_0 ),
        .D(\reg_op2[29]_i_1_n_0 ),
        .Q(\reg_op2_reg_n_0_[29] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_op2_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\reg_op2[31]_i_1_n_0 ),
        .D(\reg_op2[2]_i_1_n_0 ),
        .Q(Q[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_op2_reg[30] 
       (.C(clk_IBUF_BUFG),
        .CE(\reg_op2[31]_i_1_n_0 ),
        .D(\reg_op2[30]_i_1_n_0 ),
        .Q(\reg_op2_reg_n_0_[30] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_op2_reg[31] 
       (.C(clk_IBUF_BUFG),
        .CE(\reg_op2[31]_i_1_n_0 ),
        .D(\reg_op2[31]_i_2_n_0 ),
        .Q(\reg_op2_reg_n_0_[31] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_op2_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\reg_op2[31]_i_1_n_0 ),
        .D(\reg_op2[3]_i_1_n_0 ),
        .Q(Q[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_op2_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\reg_op2[31]_i_1_n_0 ),
        .D(\reg_op2[4]_i_1_n_0 ),
        .Q(Q[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_op2_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\reg_op2[31]_i_1_n_0 ),
        .D(\reg_op2[5]_i_1_n_0 ),
        .Q(Q[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_op2_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\reg_op2[31]_i_1_n_0 ),
        .D(\reg_op2[6]_i_1_n_0 ),
        .Q(Q[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_op2_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\reg_op2[31]_i_1_n_0 ),
        .D(\reg_op2[7]_i_1_n_0 ),
        .Q(Q[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_op2_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(\reg_op2[31]_i_1_n_0 ),
        .D(\reg_op2[8]_i_1_n_0 ),
        .Q(\reg_op2_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_op2_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(\reg_op2[31]_i_1_n_0 ),
        .D(\reg_op2[9]_i_1_n_0 ),
        .Q(\reg_op2_reg_n_0_[9] ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 reg_out0_carry
       (.CI(1'b0),
        .CO({reg_out0_carry_n_0,reg_out0_carry_n_1,reg_out0_carry_n_2,reg_out0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({\reg_pc_reg_n_0_[4] ,\reg_pc_reg_n_0_[3] ,\reg_pc_reg_n_0_[2] ,\reg_pc_reg_n_0_[1] }),
        .O({reg_out0_carry_n_4,reg_out0_carry_n_5,reg_out0_carry_n_6,NLW_reg_out0_carry_O_UNCONNECTED[0]}),
        .S({reg_out0_carry_i_1_n_0,reg_out0_carry_i_2_n_0,reg_out0_carry_i_3_n_0,reg_out0_carry_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 reg_out0_carry__0
       (.CI(reg_out0_carry_n_0),
        .CO({reg_out0_carry__0_n_0,reg_out0_carry__0_n_1,reg_out0_carry__0_n_2,reg_out0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({\reg_pc_reg_n_0_[8] ,\reg_pc_reg_n_0_[7] ,\reg_pc_reg_n_0_[6] ,\reg_pc_reg_n_0_[5] }),
        .O({reg_out0_carry__0_n_4,reg_out0_carry__0_n_5,reg_out0_carry__0_n_6,reg_out0_carry__0_n_7}),
        .S({reg_out0_carry__0_i_1_n_0,reg_out0_carry__0_i_2_n_0,reg_out0_carry__0_i_3_n_0,reg_out0_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    reg_out0_carry__0_i_1
       (.I0(\reg_pc_reg_n_0_[8] ),
        .I1(decoded_imm[8]),
        .O(reg_out0_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    reg_out0_carry__0_i_2
       (.I0(\reg_pc_reg_n_0_[7] ),
        .I1(decoded_imm[7]),
        .O(reg_out0_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    reg_out0_carry__0_i_3
       (.I0(\reg_pc_reg_n_0_[6] ),
        .I1(decoded_imm[6]),
        .O(reg_out0_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    reg_out0_carry__0_i_4
       (.I0(\reg_pc_reg_n_0_[5] ),
        .I1(decoded_imm[5]),
        .O(reg_out0_carry__0_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 reg_out0_carry__1
       (.CI(reg_out0_carry__0_n_0),
        .CO({reg_out0_carry__1_n_0,reg_out0_carry__1_n_1,reg_out0_carry__1_n_2,reg_out0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({\reg_pc_reg_n_0_[12] ,\reg_pc_reg_n_0_[11] ,\reg_pc_reg_n_0_[10] ,\reg_pc_reg_n_0_[9] }),
        .O({reg_out0_carry__1_n_4,reg_out0_carry__1_n_5,reg_out0_carry__1_n_6,reg_out0_carry__1_n_7}),
        .S({reg_out0_carry__1_i_1_n_0,reg_out0_carry__1_i_2_n_0,reg_out0_carry__1_i_3_n_0,reg_out0_carry__1_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    reg_out0_carry__1_i_1
       (.I0(\reg_pc_reg_n_0_[12] ),
        .I1(decoded_imm[12]),
        .O(reg_out0_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    reg_out0_carry__1_i_2
       (.I0(\reg_pc_reg_n_0_[11] ),
        .I1(decoded_imm[11]),
        .O(reg_out0_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    reg_out0_carry__1_i_3
       (.I0(\reg_pc_reg_n_0_[10] ),
        .I1(decoded_imm[10]),
        .O(reg_out0_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    reg_out0_carry__1_i_4
       (.I0(\reg_pc_reg_n_0_[9] ),
        .I1(decoded_imm[9]),
        .O(reg_out0_carry__1_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 reg_out0_carry__2
       (.CI(reg_out0_carry__1_n_0),
        .CO({reg_out0_carry__2_n_0,reg_out0_carry__2_n_1,reg_out0_carry__2_n_2,reg_out0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({\reg_pc_reg_n_0_[16] ,\reg_pc_reg_n_0_[15] ,\reg_pc_reg_n_0_[14] ,\reg_pc_reg_n_0_[13] }),
        .O({reg_out0_carry__2_n_4,reg_out0_carry__2_n_5,reg_out0_carry__2_n_6,reg_out0_carry__2_n_7}),
        .S({reg_out0_carry__2_i_1_n_0,reg_out0_carry__2_i_2_n_0,reg_out0_carry__2_i_3_n_0,reg_out0_carry__2_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    reg_out0_carry__2_i_1
       (.I0(\reg_pc_reg_n_0_[16] ),
        .I1(decoded_imm[16]),
        .O(reg_out0_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    reg_out0_carry__2_i_2
       (.I0(\reg_pc_reg_n_0_[15] ),
        .I1(decoded_imm[15]),
        .O(reg_out0_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    reg_out0_carry__2_i_3
       (.I0(\reg_pc_reg_n_0_[14] ),
        .I1(decoded_imm[14]),
        .O(reg_out0_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    reg_out0_carry__2_i_4
       (.I0(\reg_pc_reg_n_0_[13] ),
        .I1(decoded_imm[13]),
        .O(reg_out0_carry__2_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 reg_out0_carry__3
       (.CI(reg_out0_carry__2_n_0),
        .CO({reg_out0_carry__3_n_0,reg_out0_carry__3_n_1,reg_out0_carry__3_n_2,reg_out0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({\reg_pc_reg_n_0_[20] ,\reg_pc_reg_n_0_[19] ,\reg_pc_reg_n_0_[18] ,\reg_pc_reg_n_0_[17] }),
        .O({reg_out0_carry__3_n_4,reg_out0_carry__3_n_5,reg_out0_carry__3_n_6,reg_out0_carry__3_n_7}),
        .S({reg_out0_carry__3_i_1_n_0,reg_out0_carry__3_i_2_n_0,reg_out0_carry__3_i_3_n_0,reg_out0_carry__3_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    reg_out0_carry__3_i_1
       (.I0(\reg_pc_reg_n_0_[20] ),
        .I1(decoded_imm[20]),
        .O(reg_out0_carry__3_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    reg_out0_carry__3_i_2
       (.I0(\reg_pc_reg_n_0_[19] ),
        .I1(decoded_imm[19]),
        .O(reg_out0_carry__3_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    reg_out0_carry__3_i_3
       (.I0(\reg_pc_reg_n_0_[18] ),
        .I1(decoded_imm[18]),
        .O(reg_out0_carry__3_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    reg_out0_carry__3_i_4
       (.I0(\reg_pc_reg_n_0_[17] ),
        .I1(decoded_imm[17]),
        .O(reg_out0_carry__3_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 reg_out0_carry__4
       (.CI(reg_out0_carry__3_n_0),
        .CO({reg_out0_carry__4_n_0,reg_out0_carry__4_n_1,reg_out0_carry__4_n_2,reg_out0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({\reg_pc_reg_n_0_[24] ,\reg_pc_reg_n_0_[23] ,\reg_pc_reg_n_0_[22] ,\reg_pc_reg_n_0_[21] }),
        .O({reg_out0_carry__4_n_4,reg_out0_carry__4_n_5,reg_out0_carry__4_n_6,reg_out0_carry__4_n_7}),
        .S({reg_out0_carry__4_i_1_n_0,reg_out0_carry__4_i_2_n_0,reg_out0_carry__4_i_3_n_0,reg_out0_carry__4_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    reg_out0_carry__4_i_1
       (.I0(\reg_pc_reg_n_0_[24] ),
        .I1(decoded_imm[24]),
        .O(reg_out0_carry__4_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    reg_out0_carry__4_i_2
       (.I0(\reg_pc_reg_n_0_[23] ),
        .I1(decoded_imm[23]),
        .O(reg_out0_carry__4_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    reg_out0_carry__4_i_3
       (.I0(\reg_pc_reg_n_0_[22] ),
        .I1(decoded_imm[22]),
        .O(reg_out0_carry__4_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    reg_out0_carry__4_i_4
       (.I0(\reg_pc_reg_n_0_[21] ),
        .I1(decoded_imm[21]),
        .O(reg_out0_carry__4_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 reg_out0_carry__5
       (.CI(reg_out0_carry__4_n_0),
        .CO({reg_out0_carry__5_n_0,reg_out0_carry__5_n_1,reg_out0_carry__5_n_2,reg_out0_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({\reg_pc_reg_n_0_[28] ,\reg_pc_reg_n_0_[27] ,\reg_pc_reg_n_0_[26] ,\reg_pc_reg_n_0_[25] }),
        .O({reg_out0_carry__5_n_4,reg_out0_carry__5_n_5,reg_out0_carry__5_n_6,reg_out0_carry__5_n_7}),
        .S({reg_out0_carry__5_i_1_n_0,reg_out0_carry__5_i_2_n_0,reg_out0_carry__5_i_3_n_0,reg_out0_carry__5_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    reg_out0_carry__5_i_1
       (.I0(\reg_pc_reg_n_0_[28] ),
        .I1(decoded_imm[28]),
        .O(reg_out0_carry__5_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    reg_out0_carry__5_i_2
       (.I0(\reg_pc_reg_n_0_[27] ),
        .I1(decoded_imm[27]),
        .O(reg_out0_carry__5_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    reg_out0_carry__5_i_3
       (.I0(\reg_pc_reg_n_0_[26] ),
        .I1(decoded_imm[26]),
        .O(reg_out0_carry__5_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    reg_out0_carry__5_i_4
       (.I0(\reg_pc_reg_n_0_[25] ),
        .I1(decoded_imm[25]),
        .O(reg_out0_carry__5_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 reg_out0_carry__6
       (.CI(reg_out0_carry__5_n_0),
        .CO({NLW_reg_out0_carry__6_CO_UNCONNECTED[3:2],reg_out0_carry__6_n_2,reg_out0_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\reg_pc_reg_n_0_[30] ,\reg_pc_reg_n_0_[29] }),
        .O({NLW_reg_out0_carry__6_O_UNCONNECTED[3],reg_out0_carry__6_n_5,reg_out0_carry__6_n_6,reg_out0_carry__6_n_7}),
        .S({1'b0,reg_out0_carry__6_i_1_n_0,reg_out0_carry__6_i_2_n_0,reg_out0_carry__6_i_3_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    reg_out0_carry__6_i_1
       (.I0(\reg_pc_reg_n_0_[31] ),
        .I1(decoded_imm[31]),
        .O(reg_out0_carry__6_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    reg_out0_carry__6_i_2
       (.I0(\reg_pc_reg_n_0_[30] ),
        .I1(decoded_imm[30]),
        .O(reg_out0_carry__6_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    reg_out0_carry__6_i_3
       (.I0(\reg_pc_reg_n_0_[29] ),
        .I1(decoded_imm[29]),
        .O(reg_out0_carry__6_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    reg_out0_carry_i_1
       (.I0(\reg_pc_reg_n_0_[4] ),
        .I1(decoded_imm[4]),
        .O(reg_out0_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    reg_out0_carry_i_2
       (.I0(\reg_pc_reg_n_0_[3] ),
        .I1(decoded_imm[3]),
        .O(reg_out0_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    reg_out0_carry_i_3
       (.I0(\reg_pc_reg_n_0_[2] ),
        .I1(decoded_imm[2]),
        .O(reg_out0_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    reg_out0_carry_i_4
       (.I0(\reg_pc_reg_n_0_[1] ),
        .I1(decoded_imm[1]),
        .O(reg_out0_carry_i_4_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF00F2)) 
    \reg_out[0]_i_1 
       (.I0(mem_rdata[16]),
        .I1(\reg_out[6]_i_2_n_0 ),
        .I2(\reg_out[0]_i_2_n_0 ),
        .I3(\reg_out[7]_i_2_n_0 ),
        .I4(\reg_out[0]_i_3_n_0 ),
        .I5(\reg_out[0]_i_4_n_0 ),
        .O(reg_out[0]));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \reg_out[0]_i_2 
       (.I0(\reg_out[5]_i_2_n_0 ),
        .I1(mem_rdata[0]),
        .I2(mem_rdata[24]),
        .I3(\reg_out[6]_i_7_n_0 ),
        .I4(mem_rdata[8]),
        .I5(\reg_out[6]_i_6_n_0 ),
        .O(\reg_out[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \reg_out[0]_i_3 
       (.I0(\reg_out[26]_i_2_n_0 ),
        .I1(count_instr_reg[0]),
        .I2(count_instr_reg[32]),
        .I3(\reg_out[7]_i_4_n_0 ),
        .I4(count_cycle_reg[0]),
        .I5(\reg_out[21]_i_2_n_0 ),
        .O(\reg_out[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF888FFFFF888F888)) 
    \reg_out[0]_i_4 
       (.I0(\cpu_state_reg_n_0_[3] ),
        .I1(decoded_imm[0]),
        .I2(\cpu_state_reg_n_0_[2] ),
        .I3(\reg_op1_reg_n_0_[0] ),
        .I4(\reg_out[28]_i_2_n_0 ),
        .I5(count_cycle_reg[32]),
        .O(\reg_out[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFB800)) 
    \reg_out[10]_i_1 
       (.I0(mem_rdata[26]),
        .I1(\reg_out[14]_i_3_n_0 ),
        .I2(mem_rdata[10]),
        .I3(\reg_out[14]_i_4_n_0 ),
        .I4(\reg_out[10]_i_2_n_0 ),
        .I5(\reg_out[10]_i_3_n_0 ),
        .O(\reg_out[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \reg_out[10]_i_2 
       (.I0(\reg_out[7]_i_4_n_0 ),
        .I1(count_instr_reg[42]),
        .I2(count_cycle_reg[10]),
        .I3(\reg_out[21]_i_2_n_0 ),
        .I4(count_instr_reg[10]),
        .I5(\reg_out[26]_i_2_n_0 ),
        .O(\reg_out[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF444F444F444)) 
    \reg_out[10]_i_3 
       (.I0(\reg_out[28]_i_2_n_0 ),
        .I1(count_cycle_reg[42]),
        .I2(\cpu_state_reg_n_0_[3] ),
        .I3(reg_out0_carry__1_n_6),
        .I4(\cpu_state_reg_n_0_[2] ),
        .I5(\reg_op1_reg_n_0_[10] ),
        .O(\reg_out[10]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFB800)) 
    \reg_out[11]_i_1 
       (.I0(mem_rdata[27]),
        .I1(\reg_out[14]_i_3_n_0 ),
        .I2(mem_rdata[11]),
        .I3(\reg_out[14]_i_4_n_0 ),
        .I4(\reg_out[11]_i_2_n_0 ),
        .I5(\reg_out[11]_i_3_n_0 ),
        .O(\reg_out[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \reg_out[11]_i_2 
       (.I0(\reg_out[28]_i_2_n_0 ),
        .I1(count_cycle_reg[43]),
        .I2(count_cycle_reg[11]),
        .I3(\reg_out[21]_i_2_n_0 ),
        .I4(count_instr_reg[11]),
        .I5(\reg_out[26]_i_2_n_0 ),
        .O(\reg_out[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF444F444F444)) 
    \reg_out[11]_i_3 
       (.I0(\reg_out[7]_i_4_n_0 ),
        .I1(count_instr_reg[43]),
        .I2(\cpu_state_reg_n_0_[3] ),
        .I3(reg_out0_carry__1_n_5),
        .I4(\cpu_state_reg_n_0_[2] ),
        .I5(\reg_op1_reg_n_0_[11] ),
        .O(\reg_out[11]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFB800)) 
    \reg_out[12]_i_1 
       (.I0(mem_rdata[28]),
        .I1(\reg_out[14]_i_3_n_0 ),
        .I2(mem_rdata[12]),
        .I3(\reg_out[14]_i_4_n_0 ),
        .I4(\reg_out[12]_i_2_n_0 ),
        .I5(\reg_out[12]_i_3_n_0 ),
        .O(\reg_out[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \reg_out[12]_i_2 
       (.I0(\reg_out[21]_i_2_n_0 ),
        .I1(count_cycle_reg[12]),
        .I2(count_cycle_reg[44]),
        .I3(\reg_out[28]_i_2_n_0 ),
        .I4(count_instr_reg[12]),
        .I5(\reg_out[26]_i_2_n_0 ),
        .O(\reg_out[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF444F444F444)) 
    \reg_out[12]_i_3 
       (.I0(\reg_out[7]_i_4_n_0 ),
        .I1(count_instr_reg[44]),
        .I2(\cpu_state_reg_n_0_[3] ),
        .I3(reg_out0_carry__1_n_4),
        .I4(\cpu_state_reg_n_0_[2] ),
        .I5(\reg_op1_reg_n_0_[12] ),
        .O(\reg_out[12]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFB800)) 
    \reg_out[13]_i_1 
       (.I0(mem_rdata[29]),
        .I1(\reg_out[14]_i_3_n_0 ),
        .I2(mem_rdata[13]),
        .I3(\reg_out[14]_i_4_n_0 ),
        .I4(\reg_out[13]_i_2_n_0 ),
        .I5(\reg_out[13]_i_3_n_0 ),
        .O(\reg_out[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \reg_out[13]_i_2 
       (.I0(\reg_out[7]_i_4_n_0 ),
        .I1(count_instr_reg[45]),
        .I2(count_cycle_reg[45]),
        .I3(\reg_out[28]_i_2_n_0 ),
        .I4(count_instr_reg[13]),
        .I5(\reg_out[26]_i_2_n_0 ),
        .O(\reg_out[13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF444F444F444)) 
    \reg_out[13]_i_3 
       (.I0(\reg_out[21]_i_2_n_0 ),
        .I1(count_cycle_reg[13]),
        .I2(\cpu_state_reg_n_0_[3] ),
        .I3(reg_out0_carry__2_n_7),
        .I4(\cpu_state_reg_n_0_[2] ),
        .I5(\reg_op1_reg_n_0_[13] ),
        .O(\reg_out[13]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \reg_out[14]_i_1 
       (.I0(\reg_out[7]_i_3_n_0 ),
        .I1(latched_is_lb_reg_n_0),
        .I2(\cpu_state_reg_n_0_[0] ),
        .O(\reg_out[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFB800)) 
    \reg_out[14]_i_2 
       (.I0(mem_rdata[30]),
        .I1(\reg_out[14]_i_3_n_0 ),
        .I2(mem_rdata[14]),
        .I3(\reg_out[14]_i_4_n_0 ),
        .I4(\reg_out[14]_i_5_n_0 ),
        .I5(\reg_out[14]_i_6_n_0 ),
        .O(\reg_out[14]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \reg_out[14]_i_3 
       (.I0(\mem_wordsize_reg_n_0_[0] ),
        .I1(\reg_op1_reg_n_0_[1] ),
        .O(\reg_out[14]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'h4440)) 
    \reg_out[14]_i_4 
       (.I0(\mem_wordsize_reg_n_0_[1] ),
        .I1(\cpu_state_reg_n_0_[0] ),
        .I2(latched_is_lh_reg_n_0),
        .I3(latched_is_lu_reg_n_0),
        .O(\reg_out[14]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h22F2FFFF22F222F2)) 
    \reg_out[14]_i_5 
       (.I0(count_instr_reg[46]),
        .I1(\reg_out[7]_i_4_n_0 ),
        .I2(count_cycle_reg[46]),
        .I3(\reg_out[28]_i_2_n_0 ),
        .I4(\reg_out[21]_i_2_n_0 ),
        .I5(count_cycle_reg[14]),
        .O(\reg_out[14]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF444F444F444)) 
    \reg_out[14]_i_6 
       (.I0(\reg_out[26]_i_2_n_0 ),
        .I1(count_instr_reg[14]),
        .I2(\cpu_state_reg_n_0_[3] ),
        .I3(reg_out0_carry__2_n_6),
        .I4(\cpu_state_reg_n_0_[2] ),
        .I5(\reg_op1_reg_n_0_[14] ),
        .O(\reg_out[14]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF2000)) 
    \reg_out[15]_i_1 
       (.I0(latched_is_lu_reg_n_0),
        .I1(\mem_wordsize_reg_n_0_[1] ),
        .I2(\cpu_state_reg_n_0_[0] ),
        .I3(\reg_out[31]_i_3_n_0 ),
        .I4(\reg_out[15]_i_2_n_0 ),
        .I5(\reg_out[15]_i_3_n_0 ),
        .O(\reg_out[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \reg_out[15]_i_2 
       (.I0(\reg_out[28]_i_2_n_0 ),
        .I1(count_cycle_reg[47]),
        .I2(count_cycle_reg[15]),
        .I3(\reg_out[21]_i_2_n_0 ),
        .I4(count_instr_reg[47]),
        .I5(\reg_out[7]_i_4_n_0 ),
        .O(\reg_out[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF444F444F444)) 
    \reg_out[15]_i_3 
       (.I0(\reg_out[26]_i_2_n_0 ),
        .I1(count_instr_reg[15]),
        .I2(\cpu_state_reg_n_0_[3] ),
        .I3(reg_out0_carry__2_n_5),
        .I4(\cpu_state_reg_n_0_[2] ),
        .I5(\reg_op1_reg_n_0_[15] ),
        .O(\reg_out[15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF4F44)) 
    \reg_out[16]_i_1 
       (.I0(\reg_out[31]_i_4_n_0 ),
        .I1(mem_rdata[16]),
        .I2(\reg_out[7]_i_4_n_0 ),
        .I3(count_instr_reg[48]),
        .I4(\reg_out[16]_i_2_n_0 ),
        .I5(\reg_out[16]_i_3_n_0 ),
        .O(\reg_out[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'hF0808080)) 
    \reg_out[16]_i_2 
       (.I0(instr_rdcycleh),
        .I1(count_cycle_reg[48]),
        .I2(\cpu_state_reg_n_0_[5] ),
        .I3(instr_rdcycle),
        .I4(count_cycle_reg[16]),
        .O(\reg_out[16]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF444F444F444)) 
    \reg_out[16]_i_3 
       (.I0(\reg_out[26]_i_2_n_0 ),
        .I1(count_instr_reg[16]),
        .I2(\cpu_state_reg_n_0_[3] ),
        .I3(reg_out0_carry__2_n_4),
        .I4(\cpu_state_reg_n_0_[2] ),
        .I5(\reg_op1_reg_n_0_[16] ),
        .O(\reg_out[16]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF4F44)) 
    \reg_out[17]_i_1 
       (.I0(\reg_out[31]_i_4_n_0 ),
        .I1(mem_rdata[17]),
        .I2(\reg_out[7]_i_4_n_0 ),
        .I3(count_instr_reg[49]),
        .I4(\reg_out[17]_i_2_n_0 ),
        .I5(\reg_out[17]_i_3_n_0 ),
        .O(\reg_out[17]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0808080)) 
    \reg_out[17]_i_2 
       (.I0(instr_rdcycleh),
        .I1(count_cycle_reg[49]),
        .I2(\cpu_state_reg_n_0_[5] ),
        .I3(instr_rdcycle),
        .I4(count_cycle_reg[17]),
        .O(\reg_out[17]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF444F444F444)) 
    \reg_out[17]_i_3 
       (.I0(\reg_out[26]_i_2_n_0 ),
        .I1(count_instr_reg[17]),
        .I2(\cpu_state_reg_n_0_[3] ),
        .I3(reg_out0_carry__3_n_7),
        .I4(\cpu_state_reg_n_0_[2] ),
        .I5(\reg_op1_reg_n_0_[17] ),
        .O(\reg_out[17]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF4F44)) 
    \reg_out[18]_i_1 
       (.I0(\reg_out[31]_i_4_n_0 ),
        .I1(mem_rdata[18]),
        .I2(\reg_out[26]_i_2_n_0 ),
        .I3(count_instr_reg[18]),
        .I4(\reg_out[18]_i_2_n_0 ),
        .I5(\reg_out[18]_i_3_n_0 ),
        .O(\reg_out[18]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0808080)) 
    \reg_out[18]_i_2 
       (.I0(instr_rdcycleh),
        .I1(count_cycle_reg[50]),
        .I2(\cpu_state_reg_n_0_[5] ),
        .I3(instr_rdcycle),
        .I4(count_cycle_reg[18]),
        .O(\reg_out[18]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF444F444F444)) 
    \reg_out[18]_i_3 
       (.I0(\reg_out[7]_i_4_n_0 ),
        .I1(count_instr_reg[50]),
        .I2(\cpu_state_reg_n_0_[3] ),
        .I3(reg_out0_carry__3_n_6),
        .I4(\cpu_state_reg_n_0_[2] ),
        .I5(\reg_op1_reg_n_0_[18] ),
        .O(\reg_out[18]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF4F44)) 
    \reg_out[19]_i_1 
       (.I0(\reg_out[31]_i_4_n_0 ),
        .I1(mem_rdata[19]),
        .I2(\reg_out[28]_i_2_n_0 ),
        .I3(count_cycle_reg[51]),
        .I4(\reg_out[19]_i_2_n_0 ),
        .I5(\reg_out[19]_i_3_n_0 ),
        .O(\reg_out[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'hF0808080)) 
    \reg_out[19]_i_2 
       (.I0(instr_rdcycle),
        .I1(count_cycle_reg[19]),
        .I2(\cpu_state_reg_n_0_[5] ),
        .I3(instr_rdinstr),
        .I4(count_instr_reg[19]),
        .O(\reg_out[19]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF444F444F444)) 
    \reg_out[19]_i_3 
       (.I0(\reg_out[7]_i_4_n_0 ),
        .I1(count_instr_reg[51]),
        .I2(\cpu_state_reg_n_0_[3] ),
        .I3(reg_out0_carry__3_n_5),
        .I4(\cpu_state_reg_n_0_[2] ),
        .I5(\reg_op1_reg_n_0_[19] ),
        .O(\reg_out[19]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF00F2)) 
    \reg_out[1]_i_1 
       (.I0(mem_rdata[17]),
        .I1(\reg_out[6]_i_2_n_0 ),
        .I2(\reg_out[1]_i_2_n_0 ),
        .I3(\reg_out[7]_i_2_n_0 ),
        .I4(\reg_out[1]_i_3_n_0 ),
        .I5(\reg_out[1]_i_4_n_0 ),
        .O(reg_out[1]));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \reg_out[1]_i_2 
       (.I0(\reg_out[5]_i_2_n_0 ),
        .I1(mem_rdata[1]),
        .I2(mem_rdata[9]),
        .I3(\reg_out[6]_i_6_n_0 ),
        .I4(mem_rdata[25]),
        .I5(\reg_out[6]_i_7_n_0 ),
        .O(\reg_out[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF888FFFFF888F888)) 
    \reg_out[1]_i_3 
       (.I0(\cpu_state_reg_n_0_[2] ),
        .I1(\reg_op1_reg_n_0_[1] ),
        .I2(\cpu_state_reg_n_0_[3] ),
        .I3(\reg_out[1]_i_5_n_0 ),
        .I4(\reg_out[28]_i_2_n_0 ),
        .I5(count_cycle_reg[33]),
        .O(\reg_out[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \reg_out[1]_i_4 
       (.I0(\reg_out[21]_i_2_n_0 ),
        .I1(count_cycle_reg[1]),
        .I2(count_instr_reg[33]),
        .I3(\reg_out[7]_i_4_n_0 ),
        .I4(count_instr_reg[1]),
        .I5(\reg_out[26]_i_2_n_0 ),
        .O(\reg_out[1]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \reg_out[1]_i_5 
       (.I0(\reg_pc_reg_n_0_[1] ),
        .I1(decoded_imm[1]),
        .O(\reg_out[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF4F44)) 
    \reg_out[20]_i_1 
       (.I0(\reg_out[31]_i_4_n_0 ),
        .I1(mem_rdata[20]),
        .I2(\reg_out[21]_i_2_n_0 ),
        .I3(count_cycle_reg[20]),
        .I4(\reg_out[20]_i_2_n_0 ),
        .I5(\reg_out[20]_i_3_n_0 ),
        .O(\reg_out[20]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0808080)) 
    \reg_out[20]_i_2 
       (.I0(instr_rdinstrh),
        .I1(count_instr_reg[52]),
        .I2(\cpu_state_reg_n_0_[5] ),
        .I3(instr_rdinstr),
        .I4(count_instr_reg[20]),
        .O(\reg_out[20]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF444F444F444)) 
    \reg_out[20]_i_3 
       (.I0(\reg_out[28]_i_2_n_0 ),
        .I1(count_cycle_reg[52]),
        .I2(\cpu_state_reg_n_0_[3] ),
        .I3(reg_out0_carry__3_n_4),
        .I4(\cpu_state_reg_n_0_[2] ),
        .I5(\reg_op1_reg_n_0_[20] ),
        .O(\reg_out[20]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF4F44)) 
    \reg_out[21]_i_1 
       (.I0(\reg_out[31]_i_4_n_0 ),
        .I1(mem_rdata[21]),
        .I2(\reg_out[21]_i_2_n_0 ),
        .I3(count_cycle_reg[21]),
        .I4(\reg_out[21]_i_3_n_0 ),
        .I5(\reg_out[21]_i_4_n_0 ),
        .O(\reg_out[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \reg_out[21]_i_2 
       (.I0(\cpu_state_reg_n_0_[5] ),
        .I1(instr_rdcycle),
        .O(\reg_out[21]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hF0808080)) 
    \reg_out[21]_i_3 
       (.I0(instr_rdcycleh),
        .I1(count_cycle_reg[53]),
        .I2(\cpu_state_reg_n_0_[5] ),
        .I3(instr_rdinstr),
        .I4(count_instr_reg[21]),
        .O(\reg_out[21]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF444F444F444)) 
    \reg_out[21]_i_4 
       (.I0(\reg_out[7]_i_4_n_0 ),
        .I1(count_instr_reg[53]),
        .I2(\cpu_state_reg_n_0_[3] ),
        .I3(reg_out0_carry__4_n_7),
        .I4(\cpu_state_reg_n_0_[2] ),
        .I5(\reg_op1_reg_n_0_[21] ),
        .O(\reg_out[21]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF4F44)) 
    \reg_out[22]_i_1 
       (.I0(\reg_out[31]_i_4_n_0 ),
        .I1(mem_rdata[22]),
        .I2(\reg_out[28]_i_2_n_0 ),
        .I3(count_cycle_reg[54]),
        .I4(\reg_out[22]_i_2_n_0 ),
        .I5(\reg_out[22]_i_3_n_0 ),
        .O(\reg_out[22]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0808080)) 
    \reg_out[22]_i_2 
       (.I0(instr_rdcycle),
        .I1(count_cycle_reg[22]),
        .I2(\cpu_state_reg_n_0_[5] ),
        .I3(instr_rdinstr),
        .I4(count_instr_reg[22]),
        .O(\reg_out[22]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF444F444F444)) 
    \reg_out[22]_i_3 
       (.I0(\reg_out[7]_i_4_n_0 ),
        .I1(count_instr_reg[54]),
        .I2(\cpu_state_reg_n_0_[3] ),
        .I3(reg_out0_carry__4_n_6),
        .I4(\cpu_state_reg_n_0_[2] ),
        .I5(\reg_op1_reg_n_0_[22] ),
        .O(\reg_out[22]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF4F44)) 
    \reg_out[23]_i_1 
       (.I0(\reg_out[31]_i_4_n_0 ),
        .I1(mem_rdata[23]),
        .I2(\reg_out[28]_i_2_n_0 ),
        .I3(count_cycle_reg[55]),
        .I4(\reg_out[23]_i_2_n_0 ),
        .I5(\reg_out[23]_i_3_n_0 ),
        .O(\reg_out[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0808080)) 
    \reg_out[23]_i_2 
       (.I0(instr_rdcycle),
        .I1(count_cycle_reg[23]),
        .I2(\cpu_state_reg_n_0_[5] ),
        .I3(instr_rdinstr),
        .I4(count_instr_reg[23]),
        .O(\reg_out[23]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF444F444F444)) 
    \reg_out[23]_i_3 
       (.I0(\reg_out[7]_i_4_n_0 ),
        .I1(count_instr_reg[55]),
        .I2(\cpu_state_reg_n_0_[3] ),
        .I3(reg_out0_carry__4_n_5),
        .I4(\cpu_state_reg_n_0_[2] ),
        .I5(\reg_op1_reg_n_0_[23] ),
        .O(\reg_out[23]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF4F44)) 
    \reg_out[24]_i_1 
       (.I0(\reg_out[31]_i_4_n_0 ),
        .I1(mem_rdata[24]),
        .I2(\reg_out[28]_i_2_n_0 ),
        .I3(count_cycle_reg[56]),
        .I4(\reg_out[24]_i_2_n_0 ),
        .I5(\reg_out[24]_i_3_n_0 ),
        .O(\reg_out[24]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0808080)) 
    \reg_out[24]_i_2 
       (.I0(instr_rdcycle),
        .I1(count_cycle_reg[24]),
        .I2(\cpu_state_reg_n_0_[5] ),
        .I3(instr_rdinstr),
        .I4(count_instr_reg[24]),
        .O(\reg_out[24]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF444F444F444)) 
    \reg_out[24]_i_3 
       (.I0(\reg_out[7]_i_4_n_0 ),
        .I1(count_instr_reg[56]),
        .I2(\cpu_state_reg_n_0_[3] ),
        .I3(reg_out0_carry__4_n_4),
        .I4(\cpu_state_reg_n_0_[2] ),
        .I5(\reg_op1_reg_n_0_[24] ),
        .O(\reg_out[24]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF4FFF4F4)) 
    \reg_out[25]_i_1 
       (.I0(\reg_out[31]_i_4_n_0 ),
        .I1(mem_rdata[25]),
        .I2(\reg_out[25]_i_2_n_0 ),
        .I3(\reg_out[7]_i_4_n_0 ),
        .I4(count_instr_reg[57]),
        .I5(\reg_out[25]_i_3_n_0 ),
        .O(\reg_out[25]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF444F444F444)) 
    \reg_out[25]_i_2 
       (.I0(\reg_out[21]_i_2_n_0 ),
        .I1(count_cycle_reg[25]),
        .I2(\cpu_state_reg_n_0_[3] ),
        .I3(reg_out0_carry__5_n_7),
        .I4(\cpu_state_reg_n_0_[2] ),
        .I5(\reg_op1_reg_n_0_[25] ),
        .O(\reg_out[25]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hF0808080)) 
    \reg_out[25]_i_3 
       (.I0(instr_rdcycleh),
        .I1(count_cycle_reg[57]),
        .I2(\cpu_state_reg_n_0_[5] ),
        .I3(instr_rdinstr),
        .I4(count_instr_reg[25]),
        .O(\reg_out[25]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF4F44)) 
    \reg_out[26]_i_1 
       (.I0(\reg_out[31]_i_4_n_0 ),
        .I1(mem_rdata[26]),
        .I2(\reg_out[26]_i_2_n_0 ),
        .I3(count_instr_reg[26]),
        .I4(\reg_out[26]_i_3_n_0 ),
        .I5(\reg_out[26]_i_4_n_0 ),
        .O(\reg_out[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \reg_out[26]_i_2 
       (.I0(\cpu_state_reg_n_0_[5] ),
        .I1(instr_rdinstr),
        .O(\reg_out[26]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'hF0808080)) 
    \reg_out[26]_i_3 
       (.I0(instr_rdinstrh),
        .I1(count_instr_reg[58]),
        .I2(\cpu_state_reg_n_0_[5] ),
        .I3(instr_rdcycle),
        .I4(count_cycle_reg[26]),
        .O(\reg_out[26]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF444F444F444)) 
    \reg_out[26]_i_4 
       (.I0(\reg_out[28]_i_2_n_0 ),
        .I1(count_cycle_reg[58]),
        .I2(\cpu_state_reg_n_0_[3] ),
        .I3(reg_out0_carry__5_n_6),
        .I4(\cpu_state_reg_n_0_[2] ),
        .I5(\reg_op1_reg_n_0_[26] ),
        .O(\reg_out[26]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF4F44)) 
    \reg_out[27]_i_1 
       (.I0(\reg_out[31]_i_4_n_0 ),
        .I1(mem_rdata[27]),
        .I2(\reg_out[28]_i_2_n_0 ),
        .I3(count_cycle_reg[59]),
        .I4(\reg_out[27]_i_2_n_0 ),
        .I5(\reg_out[27]_i_3_n_0 ),
        .O(\reg_out[27]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0808080)) 
    \reg_out[27]_i_2 
       (.I0(instr_rdinstrh),
        .I1(count_instr_reg[59]),
        .I2(\cpu_state_reg_n_0_[5] ),
        .I3(instr_rdcycle),
        .I4(count_cycle_reg[27]),
        .O(\reg_out[27]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF444F444F444)) 
    \reg_out[27]_i_3 
       (.I0(\reg_out[26]_i_2_n_0 ),
        .I1(count_instr_reg[27]),
        .I2(\cpu_state_reg_n_0_[3] ),
        .I3(reg_out0_carry__5_n_5),
        .I4(\cpu_state_reg_n_0_[2] ),
        .I5(\reg_op1_reg_n_0_[27] ),
        .O(\reg_out[27]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF4F44)) 
    \reg_out[28]_i_1 
       (.I0(\reg_out[31]_i_4_n_0 ),
        .I1(mem_rdata[28]),
        .I2(\reg_out[28]_i_2_n_0 ),
        .I3(count_cycle_reg[60]),
        .I4(\reg_out[28]_i_3_n_0 ),
        .I5(\reg_out[28]_i_4_n_0 ),
        .O(\reg_out[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \reg_out[28]_i_2 
       (.I0(\cpu_state_reg_n_0_[5] ),
        .I1(instr_rdcycleh),
        .O(\reg_out[28]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hF0808080)) 
    \reg_out[28]_i_3 
       (.I0(instr_rdcycle),
        .I1(count_cycle_reg[28]),
        .I2(\cpu_state_reg_n_0_[5] ),
        .I3(instr_rdinstr),
        .I4(count_instr_reg[28]),
        .O(\reg_out[28]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF444F444F444)) 
    \reg_out[28]_i_4 
       (.I0(\reg_out[7]_i_4_n_0 ),
        .I1(count_instr_reg[60]),
        .I2(\cpu_state_reg_n_0_[3] ),
        .I3(reg_out0_carry__5_n_4),
        .I4(\cpu_state_reg_n_0_[2] ),
        .I5(\reg_op1_reg_n_0_[28] ),
        .O(\reg_out[28]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF4F44)) 
    \reg_out[29]_i_1 
       (.I0(\reg_out[31]_i_4_n_0 ),
        .I1(mem_rdata[29]),
        .I2(\reg_out[7]_i_4_n_0 ),
        .I3(count_instr_reg[61]),
        .I4(\reg_out[29]_i_2_n_0 ),
        .I5(\reg_out[29]_i_3_n_0 ),
        .O(\reg_out[29]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0808080)) 
    \reg_out[29]_i_2 
       (.I0(instr_rdcycleh),
        .I1(count_cycle_reg[61]),
        .I2(\cpu_state_reg_n_0_[5] ),
        .I3(instr_rdcycle),
        .I4(count_cycle_reg[29]),
        .O(\reg_out[29]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF444F444F444)) 
    \reg_out[29]_i_3 
       (.I0(\reg_out[26]_i_2_n_0 ),
        .I1(count_instr_reg[29]),
        .I2(\cpu_state_reg_n_0_[3] ),
        .I3(reg_out0_carry__6_n_7),
        .I4(\cpu_state_reg_n_0_[2] ),
        .I5(\reg_op1_reg_n_0_[29] ),
        .O(\reg_out[29]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF00F2)) 
    \reg_out[2]_i_1 
       (.I0(mem_rdata[18]),
        .I1(\reg_out[6]_i_2_n_0 ),
        .I2(\reg_out[2]_i_2_n_0 ),
        .I3(\reg_out[7]_i_2_n_0 ),
        .I4(\reg_out[2]_i_3_n_0 ),
        .I5(\reg_out[2]_i_4_n_0 ),
        .O(reg_out[2]));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \reg_out[2]_i_2 
       (.I0(\reg_out[5]_i_2_n_0 ),
        .I1(mem_rdata[2]),
        .I2(mem_rdata[10]),
        .I3(\reg_out[6]_i_6_n_0 ),
        .I4(mem_rdata[26]),
        .I5(\reg_out[6]_i_7_n_0 ),
        .O(\reg_out[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \reg_out[2]_i_3 
       (.I0(\reg_out[26]_i_2_n_0 ),
        .I1(count_instr_reg[2]),
        .I2(count_instr_reg[34]),
        .I3(\reg_out[7]_i_4_n_0 ),
        .I4(count_cycle_reg[2]),
        .I5(\reg_out[21]_i_2_n_0 ),
        .O(\reg_out[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF888FFFFF888F888)) 
    \reg_out[2]_i_4 
       (.I0(\cpu_state_reg_n_0_[3] ),
        .I1(reg_out0_carry_n_6),
        .I2(\cpu_state_reg_n_0_[2] ),
        .I3(\reg_op1_reg_n_0_[2] ),
        .I4(\reg_out[28]_i_2_n_0 ),
        .I5(count_cycle_reg[34]),
        .O(\reg_out[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF4FFF4F4)) 
    \reg_out[30]_i_1 
       (.I0(\reg_out[31]_i_4_n_0 ),
        .I1(mem_rdata[30]),
        .I2(\reg_out[30]_i_2_n_0 ),
        .I3(\reg_out[7]_i_4_n_0 ),
        .I4(count_instr_reg[62]),
        .I5(\reg_out[30]_i_3_n_0 ),
        .O(\reg_out[30]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF444F444F444)) 
    \reg_out[30]_i_2 
       (.I0(\reg_out[21]_i_2_n_0 ),
        .I1(count_cycle_reg[30]),
        .I2(\cpu_state_reg_n_0_[3] ),
        .I3(reg_out0_carry__6_n_6),
        .I4(\cpu_state_reg_n_0_[2] ),
        .I5(\reg_op1_reg_n_0_[30] ),
        .O(\reg_out[30]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hF0808080)) 
    \reg_out[30]_i_3 
       (.I0(instr_rdcycleh),
        .I1(count_cycle_reg[62]),
        .I2(\cpu_state_reg_n_0_[5] ),
        .I3(instr_rdinstr),
        .I4(count_instr_reg[30]),
        .O(\reg_out[30]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h88F8000088880000)) 
    \reg_out[31]_i_1 
       (.I0(latched_is_lb_reg_n_0),
        .I1(\reg_out[7]_i_3_n_0 ),
        .I2(latched_is_lh_reg_n_0),
        .I3(\mem_wordsize_reg_n_0_[1] ),
        .I4(\cpu_state_reg_n_0_[0] ),
        .I5(\reg_out[31]_i_3_n_0 ),
        .O(\reg_out[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF4FFF4F4)) 
    \reg_out[31]_i_2 
       (.I0(\reg_out[31]_i_4_n_0 ),
        .I1(mem_rdata[31]),
        .I2(\reg_out[31]_i_5_n_0 ),
        .I3(\reg_out[7]_i_4_n_0 ),
        .I4(count_instr_reg[63]),
        .I5(\reg_out[31]_i_6_n_0 ),
        .O(\reg_out[31]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \reg_out[31]_i_3 
       (.I0(mem_rdata[31]),
        .I1(\mem_wordsize_reg_n_0_[0] ),
        .I2(\reg_op1_reg_n_0_[1] ),
        .I3(mem_rdata[15]),
        .O(\reg_out[31]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'hFBFF)) 
    \reg_out[31]_i_4 
       (.I0(\mem_wordsize_reg_n_0_[0] ),
        .I1(\cpu_state_reg_n_0_[0] ),
        .I2(\mem_wordsize_reg_n_0_[1] ),
        .I3(latched_is_lu_reg_n_0),
        .O(\reg_out[31]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF444F444F444)) 
    \reg_out[31]_i_5 
       (.I0(\reg_out[21]_i_2_n_0 ),
        .I1(count_cycle_reg[31]),
        .I2(\cpu_state_reg_n_0_[3] ),
        .I3(reg_out0_carry__6_n_5),
        .I4(\cpu_state_reg_n_0_[2] ),
        .I5(\reg_op1_reg_n_0_[31] ),
        .O(\reg_out[31]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hF0808080)) 
    \reg_out[31]_i_6 
       (.I0(instr_rdcycleh),
        .I1(count_cycle_reg[63]),
        .I2(\cpu_state_reg_n_0_[5] ),
        .I3(instr_rdinstr),
        .I4(count_instr_reg[31]),
        .O(\reg_out[31]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF00F2)) 
    \reg_out[3]_i_1 
       (.I0(mem_rdata[19]),
        .I1(\reg_out[6]_i_2_n_0 ),
        .I2(\reg_out[3]_i_2_n_0 ),
        .I3(\reg_out[7]_i_2_n_0 ),
        .I4(\reg_out[3]_i_3_n_0 ),
        .I5(\reg_out[3]_i_4_n_0 ),
        .O(reg_out[3]));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \reg_out[3]_i_2 
       (.I0(\reg_out[5]_i_2_n_0 ),
        .I1(mem_rdata[3]),
        .I2(mem_rdata[11]),
        .I3(\reg_out[6]_i_6_n_0 ),
        .I4(mem_rdata[27]),
        .I5(\reg_out[6]_i_7_n_0 ),
        .O(\reg_out[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \reg_out[3]_i_3 
       (.I0(\reg_out[7]_i_4_n_0 ),
        .I1(count_instr_reg[35]),
        .I2(count_cycle_reg[35]),
        .I3(\reg_out[28]_i_2_n_0 ),
        .I4(count_instr_reg[3]),
        .I5(\reg_out[26]_i_2_n_0 ),
        .O(\reg_out[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF444F444F444)) 
    \reg_out[3]_i_4 
       (.I0(\reg_out[21]_i_2_n_0 ),
        .I1(count_cycle_reg[3]),
        .I2(\cpu_state_reg_n_0_[3] ),
        .I3(reg_out0_carry_n_5),
        .I4(\cpu_state_reg_n_0_[2] ),
        .I5(\reg_op1_reg_n_0_[3] ),
        .O(\reg_out[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF00F2)) 
    \reg_out[4]_i_1 
       (.I0(mem_rdata[20]),
        .I1(\reg_out[6]_i_2_n_0 ),
        .I2(\reg_out[4]_i_2_n_0 ),
        .I3(\reg_out[7]_i_2_n_0 ),
        .I4(\reg_out[4]_i_3_n_0 ),
        .I5(\reg_out[4]_i_4_n_0 ),
        .O(reg_out[4]));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \reg_out[4]_i_2 
       (.I0(\reg_out[5]_i_2_n_0 ),
        .I1(mem_rdata[4]),
        .I2(mem_rdata[12]),
        .I3(\reg_out[6]_i_6_n_0 ),
        .I4(mem_rdata[28]),
        .I5(\reg_out[6]_i_7_n_0 ),
        .O(\reg_out[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \reg_out[4]_i_3 
       (.I0(\reg_out[7]_i_4_n_0 ),
        .I1(count_instr_reg[36]),
        .I2(count_cycle_reg[36]),
        .I3(\reg_out[28]_i_2_n_0 ),
        .I4(count_instr_reg[4]),
        .I5(\reg_out[26]_i_2_n_0 ),
        .O(\reg_out[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF444F444F444)) 
    \reg_out[4]_i_4 
       (.I0(\reg_out[21]_i_2_n_0 ),
        .I1(count_cycle_reg[4]),
        .I2(\cpu_state_reg_n_0_[2] ),
        .I3(\reg_op1_reg_n_0_[4] ),
        .I4(\cpu_state_reg_n_0_[3] ),
        .I5(reg_out0_carry_n_4),
        .O(\reg_out[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF00F2)) 
    \reg_out[5]_i_1 
       (.I0(mem_rdata[5]),
        .I1(\reg_out[5]_i_2_n_0 ),
        .I2(\reg_out[5]_i_3_n_0 ),
        .I3(\reg_out[7]_i_2_n_0 ),
        .I4(\reg_out[5]_i_4_n_0 ),
        .I5(\reg_out[5]_i_5_n_0 ),
        .O(reg_out[5]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'hFAC0)) 
    \reg_out[5]_i_2 
       (.I0(\reg_op1_reg_n_0_[0] ),
        .I1(\mem_wordsize_reg_n_0_[0] ),
        .I2(\reg_op1_reg_n_0_[1] ),
        .I3(\mem_wordsize_reg_n_0_[1] ),
        .O(\reg_out[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \reg_out[5]_i_3 
       (.I0(\reg_out[6]_i_2_n_0 ),
        .I1(mem_rdata[21]),
        .I2(mem_rdata[29]),
        .I3(\reg_out[6]_i_7_n_0 ),
        .I4(mem_rdata[13]),
        .I5(\reg_out[6]_i_6_n_0 ),
        .O(\reg_out[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF888FFFFF888F888)) 
    \reg_out[5]_i_4 
       (.I0(\cpu_state_reg_n_0_[2] ),
        .I1(\reg_op1_reg_n_0_[5] ),
        .I2(\cpu_state_reg_n_0_[3] ),
        .I3(reg_out0_carry__0_n_7),
        .I4(\reg_out[28]_i_2_n_0 ),
        .I5(count_cycle_reg[37]),
        .O(\reg_out[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \reg_out[5]_i_5 
       (.I0(\reg_out[7]_i_4_n_0 ),
        .I1(count_instr_reg[37]),
        .I2(count_instr_reg[5]),
        .I3(\reg_out[26]_i_2_n_0 ),
        .I4(count_cycle_reg[5]),
        .I5(\reg_out[21]_i_2_n_0 ),
        .O(\reg_out[5]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF00F2)) 
    \reg_out[6]_i_1 
       (.I0(mem_rdata[22]),
        .I1(\reg_out[6]_i_2_n_0 ),
        .I2(\reg_out[6]_i_3_n_0 ),
        .I3(\reg_out[7]_i_2_n_0 ),
        .I4(\reg_out[6]_i_4_n_0 ),
        .I5(\reg_out[6]_i_5_n_0 ),
        .O(reg_out[6]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'hD1FF)) 
    \reg_out[6]_i_2 
       (.I0(\mem_wordsize_reg_n_0_[0] ),
        .I1(\mem_wordsize_reg_n_0_[1] ),
        .I2(\reg_op1_reg_n_0_[0] ),
        .I3(\reg_op1_reg_n_0_[1] ),
        .O(\reg_out[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \reg_out[6]_i_3 
       (.I0(\reg_out[5]_i_2_n_0 ),
        .I1(mem_rdata[6]),
        .I2(mem_rdata[14]),
        .I3(\reg_out[6]_i_6_n_0 ),
        .I4(mem_rdata[30]),
        .I5(\reg_out[6]_i_7_n_0 ),
        .O(\reg_out[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \reg_out[6]_i_4 
       (.I0(\reg_out[7]_i_4_n_0 ),
        .I1(count_instr_reg[38]),
        .I2(count_cycle_reg[38]),
        .I3(\reg_out[28]_i_2_n_0 ),
        .I4(count_instr_reg[6]),
        .I5(\reg_out[26]_i_2_n_0 ),
        .O(\reg_out[6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF444F444F444)) 
    \reg_out[6]_i_5 
       (.I0(\reg_out[21]_i_2_n_0 ),
        .I1(count_cycle_reg[6]),
        .I2(\cpu_state_reg_n_0_[3] ),
        .I3(reg_out0_carry__0_n_6),
        .I4(\cpu_state_reg_n_0_[2] ),
        .I5(\reg_op1_reg_n_0_[6] ),
        .O(\reg_out[6]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \reg_out[6]_i_6 
       (.I0(\reg_op1_reg_n_0_[0] ),
        .I1(\reg_op1_reg_n_0_[1] ),
        .I2(\mem_wordsize_reg_n_0_[1] ),
        .O(\reg_out[6]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \reg_out[6]_i_7 
       (.I0(\reg_op1_reg_n_0_[0] ),
        .I1(\reg_op1_reg_n_0_[1] ),
        .I2(\mem_wordsize_reg_n_0_[1] ),
        .O(\reg_out[6]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF4F44)) 
    \reg_out[7]_i_1 
       (.I0(\reg_out[7]_i_2_n_0 ),
        .I1(\reg_out[7]_i_3_n_0 ),
        .I2(\reg_out[7]_i_4_n_0 ),
        .I3(count_instr_reg[39]),
        .I4(\reg_out[7]_i_5_n_0 ),
        .I5(\reg_out[7]_i_6_n_0 ),
        .O(reg_out[7]));
  LUT4 #(
    .INIT(16'h01FF)) 
    \reg_out[7]_i_2 
       (.I0(latched_is_lb_reg_n_0),
        .I1(latched_is_lu_reg_n_0),
        .I2(latched_is_lh_reg_n_0),
        .I3(\cpu_state_reg_n_0_[0] ),
        .O(\reg_out[7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAEAEFFAE)) 
    \reg_out[7]_i_3 
       (.I0(\reg_out[7]_i_7_n_0 ),
        .I1(mem_rdata[7]),
        .I2(\reg_out[5]_i_2_n_0 ),
        .I3(mem_rdata[23]),
        .I4(\reg_out[6]_i_2_n_0 ),
        .O(\reg_out[7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \reg_out[7]_i_4 
       (.I0(\cpu_state_reg_n_0_[5] ),
        .I1(instr_rdinstrh),
        .O(\reg_out[7]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'hF0808080)) 
    \reg_out[7]_i_5 
       (.I0(instr_rdcycle),
        .I1(count_cycle_reg[7]),
        .I2(\cpu_state_reg_n_0_[5] ),
        .I3(instr_rdcycleh),
        .I4(count_cycle_reg[39]),
        .O(\reg_out[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hF888FFFFF888F888)) 
    \reg_out[7]_i_6 
       (.I0(\cpu_state_reg_n_0_[2] ),
        .I1(\reg_op1_reg_n_0_[7] ),
        .I2(\cpu_state_reg_n_0_[3] ),
        .I3(reg_out0_carry__0_n_5),
        .I4(\reg_out[26]_i_2_n_0 ),
        .I5(count_instr_reg[7]),
        .O(\reg_out[7]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hC8000800)) 
    \reg_out[7]_i_7 
       (.I0(mem_rdata[15]),
        .I1(\reg_op1_reg_n_0_[0] ),
        .I2(\reg_op1_reg_n_0_[1] ),
        .I3(\mem_wordsize_reg_n_0_[1] ),
        .I4(mem_rdata[31]),
        .O(\reg_out[7]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFB800)) 
    \reg_out[8]_i_1 
       (.I0(mem_rdata[24]),
        .I1(\reg_out[14]_i_3_n_0 ),
        .I2(mem_rdata[8]),
        .I3(\reg_out[14]_i_4_n_0 ),
        .I4(\reg_out[8]_i_2_n_0 ),
        .I5(\reg_out[8]_i_3_n_0 ),
        .O(\reg_out[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \reg_out[8]_i_2 
       (.I0(\reg_out[7]_i_4_n_0 ),
        .I1(count_instr_reg[40]),
        .I2(count_cycle_reg[40]),
        .I3(\reg_out[28]_i_2_n_0 ),
        .I4(count_instr_reg[8]),
        .I5(\reg_out[26]_i_2_n_0 ),
        .O(\reg_out[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF444F444F444)) 
    \reg_out[8]_i_3 
       (.I0(\reg_out[21]_i_2_n_0 ),
        .I1(count_cycle_reg[8]),
        .I2(\cpu_state_reg_n_0_[3] ),
        .I3(reg_out0_carry__0_n_4),
        .I4(\cpu_state_reg_n_0_[2] ),
        .I5(\reg_op1_reg_n_0_[8] ),
        .O(\reg_out[8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFB800)) 
    \reg_out[9]_i_1 
       (.I0(mem_rdata[25]),
        .I1(\reg_out[14]_i_3_n_0 ),
        .I2(mem_rdata[9]),
        .I3(\reg_out[14]_i_4_n_0 ),
        .I4(\reg_out[9]_i_2_n_0 ),
        .I5(\reg_out[9]_i_3_n_0 ),
        .O(\reg_out[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \reg_out[9]_i_2 
       (.I0(\reg_out[7]_i_4_n_0 ),
        .I1(count_instr_reg[41]),
        .I2(count_cycle_reg[9]),
        .I3(\reg_out[21]_i_2_n_0 ),
        .I4(count_instr_reg[9]),
        .I5(\reg_out[26]_i_2_n_0 ),
        .O(\reg_out[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF444F444F444)) 
    \reg_out[9]_i_3 
       (.I0(\reg_out[28]_i_2_n_0 ),
        .I1(count_cycle_reg[41]),
        .I2(\cpu_state_reg_n_0_[3] ),
        .I3(reg_out0_carry__1_n_7),
        .I4(\cpu_state_reg_n_0_[2] ),
        .I5(\reg_op1_reg_n_0_[9] ),
        .O(\reg_out[9]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(reg_out[0]),
        .Q(\reg_out_reg_n_0_[0] ),
        .R(1'b0));
  FDSE #(
    .INIT(1'b1)) 
    \reg_out_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\reg_out[10]_i_1_n_0 ),
        .Q(\reg_out_reg_n_0_[10] ),
        .S(\reg_out[14]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \reg_out_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\reg_out[11]_i_1_n_0 ),
        .Q(\reg_out_reg_n_0_[11] ),
        .S(\reg_out[14]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \reg_out_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\reg_out[12]_i_1_n_0 ),
        .Q(\reg_out_reg_n_0_[12] ),
        .S(\reg_out[14]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \reg_out_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\reg_out[13]_i_1_n_0 ),
        .Q(\reg_out_reg_n_0_[13] ),
        .S(\reg_out[14]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \reg_out_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\reg_out[14]_i_2_n_0 ),
        .Q(\reg_out_reg_n_0_[14] ),
        .S(\reg_out[14]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \reg_out_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\reg_out[15]_i_1_n_0 ),
        .Q(\reg_out_reg_n_0_[15] ),
        .S(\reg_out[31]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \reg_out_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\reg_out[16]_i_1_n_0 ),
        .Q(\reg_out_reg_n_0_[16] ),
        .S(\reg_out[31]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \reg_out_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\reg_out[17]_i_1_n_0 ),
        .Q(\reg_out_reg_n_0_[17] ),
        .S(\reg_out[31]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \reg_out_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\reg_out[18]_i_1_n_0 ),
        .Q(\reg_out_reg_n_0_[18] ),
        .S(\reg_out[31]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \reg_out_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\reg_out[19]_i_1_n_0 ),
        .Q(\reg_out_reg_n_0_[19] ),
        .S(\reg_out[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(reg_out[1]),
        .Q(\reg_out_reg_n_0_[1] ),
        .R(1'b0));
  FDSE #(
    .INIT(1'b1)) 
    \reg_out_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\reg_out[20]_i_1_n_0 ),
        .Q(\reg_out_reg_n_0_[20] ),
        .S(\reg_out[31]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \reg_out_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\reg_out[21]_i_1_n_0 ),
        .Q(\reg_out_reg_n_0_[21] ),
        .S(\reg_out[31]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \reg_out_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\reg_out[22]_i_1_n_0 ),
        .Q(\reg_out_reg_n_0_[22] ),
        .S(\reg_out[31]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \reg_out_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\reg_out[23]_i_1_n_0 ),
        .Q(\reg_out_reg_n_0_[23] ),
        .S(\reg_out[31]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \reg_out_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\reg_out[24]_i_1_n_0 ),
        .Q(\reg_out_reg_n_0_[24] ),
        .S(\reg_out[31]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \reg_out_reg[25] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\reg_out[25]_i_1_n_0 ),
        .Q(\reg_out_reg_n_0_[25] ),
        .S(\reg_out[31]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \reg_out_reg[26] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\reg_out[26]_i_1_n_0 ),
        .Q(\reg_out_reg_n_0_[26] ),
        .S(\reg_out[31]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \reg_out_reg[27] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\reg_out[27]_i_1_n_0 ),
        .Q(\reg_out_reg_n_0_[27] ),
        .S(\reg_out[31]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \reg_out_reg[28] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\reg_out[28]_i_1_n_0 ),
        .Q(\reg_out_reg_n_0_[28] ),
        .S(\reg_out[31]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \reg_out_reg[29] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\reg_out[29]_i_1_n_0 ),
        .Q(\reg_out_reg_n_0_[29] ),
        .S(\reg_out[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(reg_out[2]),
        .Q(\reg_out_reg_n_0_[2] ),
        .R(1'b0));
  FDSE #(
    .INIT(1'b1)) 
    \reg_out_reg[30] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\reg_out[30]_i_1_n_0 ),
        .Q(\reg_out_reg_n_0_[30] ),
        .S(\reg_out[31]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \reg_out_reg[31] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\reg_out[31]_i_2_n_0 ),
        .Q(\reg_out_reg_n_0_[31] ),
        .S(\reg_out[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(reg_out[3]),
        .Q(\reg_out_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(reg_out[4]),
        .Q(\reg_out_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(reg_out[5]),
        .Q(\reg_out_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(reg_out[6]),
        .Q(\reg_out_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(reg_out[7]),
        .Q(\reg_out_reg_n_0_[7] ),
        .R(1'b0));
  FDSE #(
    .INIT(1'b1)) 
    \reg_out_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\reg_out[8]_i_1_n_0 ),
        .Q(\reg_out_reg_n_0_[8] ),
        .S(\reg_out[14]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \reg_out_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\reg_out[9]_i_1_n_0 ),
        .Q(\reg_out_reg_n_0_[9] ),
        .S(\reg_out[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFFFAFFFC000A000)) 
    \reg_pc[10]_i_1 
       (.I0(\reg_out_reg_n_0_[10] ),
        .I1(alu_out_q[10]),
        .I2(latched_store_reg_n_0),
        .I3(latched_branch_reg_n_0),
        .I4(latched_stalu_reg_n_0),
        .I5(\reg_next_pc_reg_n_0_[10] ),
        .O(current_pc[10]));
  LUT6 #(
    .INIT(64'hCFFFAFFFC000A000)) 
    \reg_pc[11]_i_1 
       (.I0(\reg_out_reg_n_0_[11] ),
        .I1(alu_out_q[11]),
        .I2(latched_store_reg_n_0),
        .I3(latched_branch_reg_n_0),
        .I4(latched_stalu_reg_n_0),
        .I5(\reg_next_pc_reg_n_0_[11] ),
        .O(current_pc[11]));
  LUT6 #(
    .INIT(64'hCFFFAFFFC000A000)) 
    \reg_pc[12]_i_1 
       (.I0(\reg_out_reg_n_0_[12] ),
        .I1(alu_out_q[12]),
        .I2(latched_store_reg_n_0),
        .I3(latched_branch_reg_n_0),
        .I4(latched_stalu_reg_n_0),
        .I5(\reg_next_pc_reg_n_0_[12] ),
        .O(current_pc[12]));
  LUT6 #(
    .INIT(64'hACCCACCCFCCC0CCC)) 
    \reg_pc[13]_i_1 
       (.I0(alu_out_q[13]),
        .I1(\reg_next_pc_reg_n_0_[13] ),
        .I2(latched_branch_reg_n_0),
        .I3(latched_store_reg_n_0),
        .I4(\reg_out_reg_n_0_[13] ),
        .I5(latched_stalu_reg_n_0),
        .O(current_pc[13]));
  LUT6 #(
    .INIT(64'hCFFFAFFFC000A000)) 
    \reg_pc[14]_i_1 
       (.I0(\reg_out_reg_n_0_[14] ),
        .I1(alu_out_q[14]),
        .I2(latched_store_reg_n_0),
        .I3(latched_branch_reg_n_0),
        .I4(latched_stalu_reg_n_0),
        .I5(\reg_next_pc_reg_n_0_[14] ),
        .O(current_pc[14]));
  LUT6 #(
    .INIT(64'hCFFFAFFFC000A000)) 
    \reg_pc[15]_i_1 
       (.I0(\reg_out_reg_n_0_[15] ),
        .I1(alu_out_q[15]),
        .I2(latched_store_reg_n_0),
        .I3(latched_branch_reg_n_0),
        .I4(latched_stalu_reg_n_0),
        .I5(\reg_next_pc_reg_n_0_[15] ),
        .O(current_pc[15]));
  LUT6 #(
    .INIT(64'hAFFFCFFFA000C000)) 
    \reg_pc[16]_i_1 
       (.I0(alu_out_q[16]),
        .I1(\reg_out_reg_n_0_[16] ),
        .I2(latched_store_reg_n_0),
        .I3(latched_branch_reg_n_0),
        .I4(latched_stalu_reg_n_0),
        .I5(\reg_next_pc_reg_n_0_[16] ),
        .O(current_pc[16]));
  LUT6 #(
    .INIT(64'hCFFFAFFFC000A000)) 
    \reg_pc[17]_i_1 
       (.I0(\reg_out_reg_n_0_[17] ),
        .I1(alu_out_q[17]),
        .I2(latched_store_reg_n_0),
        .I3(latched_branch_reg_n_0),
        .I4(latched_stalu_reg_n_0),
        .I5(\reg_next_pc_reg_n_0_[17] ),
        .O(current_pc[17]));
  LUT6 #(
    .INIT(64'hAFFFCFFFA000C000)) 
    \reg_pc[18]_i_1 
       (.I0(alu_out_q[18]),
        .I1(\reg_out_reg_n_0_[18] ),
        .I2(latched_store_reg_n_0),
        .I3(latched_branch_reg_n_0),
        .I4(latched_stalu_reg_n_0),
        .I5(\reg_next_pc_reg_n_0_[18] ),
        .O(current_pc[18]));
  LUT6 #(
    .INIT(64'hACCCACCCFCCC0CCC)) 
    \reg_pc[19]_i_1 
       (.I0(alu_out_q[19]),
        .I1(\reg_next_pc_reg_n_0_[19] ),
        .I2(latched_branch_reg_n_0),
        .I3(latched_store_reg_n_0),
        .I4(\reg_out_reg_n_0_[19] ),
        .I5(latched_stalu_reg_n_0),
        .O(current_pc[19]));
  LUT6 #(
    .INIT(64'hAFFFCFFFA000C000)) 
    \reg_pc[1]_i_1 
       (.I0(alu_out_q[1]),
        .I1(\reg_out_reg_n_0_[1] ),
        .I2(latched_store_reg_n_0),
        .I3(latched_branch_reg_n_0),
        .I4(latched_stalu_reg_n_0),
        .I5(\reg_next_pc_reg_n_0_[1] ),
        .O(current_pc[1]));
  LUT6 #(
    .INIT(64'hCFFFAFFFC000A000)) 
    \reg_pc[20]_i_1 
       (.I0(\reg_out_reg_n_0_[20] ),
        .I1(alu_out_q[20]),
        .I2(latched_store_reg_n_0),
        .I3(latched_branch_reg_n_0),
        .I4(latched_stalu_reg_n_0),
        .I5(\reg_next_pc_reg_n_0_[20] ),
        .O(current_pc[20]));
  LUT6 #(
    .INIT(64'hCFFFAFFFC000A000)) 
    \reg_pc[21]_i_1 
       (.I0(\reg_out_reg_n_0_[21] ),
        .I1(alu_out_q[21]),
        .I2(latched_store_reg_n_0),
        .I3(latched_branch_reg_n_0),
        .I4(latched_stalu_reg_n_0),
        .I5(\reg_next_pc_reg_n_0_[21] ),
        .O(current_pc[21]));
  LUT6 #(
    .INIT(64'hAFFFCFFFA000C000)) 
    \reg_pc[22]_i_1 
       (.I0(alu_out_q[22]),
        .I1(\reg_out_reg_n_0_[22] ),
        .I2(latched_store_reg_n_0),
        .I3(latched_branch_reg_n_0),
        .I4(latched_stalu_reg_n_0),
        .I5(\reg_next_pc_reg_n_0_[22] ),
        .O(current_pc[22]));
  LUT6 #(
    .INIT(64'hACCCACCCFCCC0CCC)) 
    \reg_pc[23]_i_1 
       (.I0(alu_out_q[23]),
        .I1(\reg_next_pc_reg_n_0_[23] ),
        .I2(latched_branch_reg_n_0),
        .I3(latched_store_reg_n_0),
        .I4(\reg_out_reg_n_0_[23] ),
        .I5(latched_stalu_reg_n_0),
        .O(current_pc[23]));
  LUT6 #(
    .INIT(64'hCFFFAFFFC000A000)) 
    \reg_pc[24]_i_1 
       (.I0(\reg_out_reg_n_0_[24] ),
        .I1(alu_out_q[24]),
        .I2(latched_store_reg_n_0),
        .I3(latched_branch_reg_n_0),
        .I4(latched_stalu_reg_n_0),
        .I5(\reg_next_pc_reg_n_0_[24] ),
        .O(current_pc[24]));
  LUT6 #(
    .INIT(64'hCFFFAFFFC000A000)) 
    \reg_pc[25]_i_1 
       (.I0(\reg_out_reg_n_0_[25] ),
        .I1(alu_out_q[25]),
        .I2(latched_store_reg_n_0),
        .I3(latched_branch_reg_n_0),
        .I4(latched_stalu_reg_n_0),
        .I5(\reg_next_pc_reg_n_0_[25] ),
        .O(current_pc[25]));
  LUT6 #(
    .INIT(64'hCFFFAFFFC000A000)) 
    \reg_pc[26]_i_1 
       (.I0(\reg_out_reg_n_0_[26] ),
        .I1(alu_out_q[26]),
        .I2(latched_store_reg_n_0),
        .I3(latched_branch_reg_n_0),
        .I4(latched_stalu_reg_n_0),
        .I5(\reg_next_pc_reg_n_0_[26] ),
        .O(current_pc[26]));
  LUT6 #(
    .INIT(64'hFCCC0CCCACCCACCC)) 
    \reg_pc[27]_i_1 
       (.I0(\reg_out_reg_n_0_[27] ),
        .I1(\reg_next_pc_reg_n_0_[27] ),
        .I2(latched_branch_reg_n_0),
        .I3(latched_store_reg_n_0),
        .I4(alu_out_q[27]),
        .I5(latched_stalu_reg_n_0),
        .O(current_pc[27]));
  LUT6 #(
    .INIT(64'hCFFFAFFFC000A000)) 
    \reg_pc[28]_i_1 
       (.I0(\reg_out_reg_n_0_[28] ),
        .I1(alu_out_q[28]),
        .I2(latched_store_reg_n_0),
        .I3(latched_branch_reg_n_0),
        .I4(latched_stalu_reg_n_0),
        .I5(\reg_next_pc_reg_n_0_[28] ),
        .O(current_pc[28]));
  LUT6 #(
    .INIT(64'hACCCACCCFCCC0CCC)) 
    \reg_pc[29]_i_1 
       (.I0(alu_out_q[29]),
        .I1(\reg_next_pc_reg_n_0_[29] ),
        .I2(latched_branch_reg_n_0),
        .I3(latched_store_reg_n_0),
        .I4(\reg_out_reg_n_0_[29] ),
        .I5(latched_stalu_reg_n_0),
        .O(current_pc[29]));
  LUT6 #(
    .INIT(64'hACCCACCCFCCC0CCC)) 
    \reg_pc[2]_i_1 
       (.I0(alu_out_q[2]),
        .I1(\reg_next_pc_reg_n_0_[2] ),
        .I2(latched_branch_reg_n_0),
        .I3(latched_store_reg_n_0),
        .I4(\reg_out_reg_n_0_[2] ),
        .I5(latched_stalu_reg_n_0),
        .O(current_pc[2]));
  LUT6 #(
    .INIT(64'hACCCACCCFCCC0CCC)) 
    \reg_pc[30]_i_1 
       (.I0(alu_out_q[30]),
        .I1(\reg_next_pc_reg_n_0_[30] ),
        .I2(latched_branch_reg_n_0),
        .I3(latched_store_reg_n_0),
        .I4(\reg_out_reg_n_0_[30] ),
        .I5(latched_stalu_reg_n_0),
        .O(current_pc[30]));
  LUT6 #(
    .INIT(64'hACCCACCCFCCC0CCC)) 
    \reg_pc[31]_i_1 
       (.I0(alu_out_q[31]),
        .I1(\reg_next_pc_reg_n_0_[31] ),
        .I2(latched_branch_reg_n_0),
        .I3(latched_store_reg_n_0),
        .I4(\reg_out_reg_n_0_[31] ),
        .I5(latched_stalu_reg_n_0),
        .O(current_pc[31]));
  LUT6 #(
    .INIT(64'hCFFFAFFFC000A000)) 
    \reg_pc[3]_i_1 
       (.I0(\reg_out_reg_n_0_[3] ),
        .I1(alu_out_q[3]),
        .I2(latched_store_reg_n_0),
        .I3(latched_branch_reg_n_0),
        .I4(latched_stalu_reg_n_0),
        .I5(\reg_next_pc_reg_n_0_[3] ),
        .O(current_pc[3]));
  LUT6 #(
    .INIT(64'hCFFFAFFFC000A000)) 
    \reg_pc[4]_i_1 
       (.I0(\reg_out_reg_n_0_[4] ),
        .I1(alu_out_q[4]),
        .I2(latched_store_reg_n_0),
        .I3(latched_branch_reg_n_0),
        .I4(latched_stalu_reg_n_0),
        .I5(\reg_next_pc_reg_n_0_[4] ),
        .O(current_pc[4]));
  LUT6 #(
    .INIT(64'hAFFFCFFFA000C000)) 
    \reg_pc[5]_i_1 
       (.I0(alu_out_q[5]),
        .I1(\reg_out_reg_n_0_[5] ),
        .I2(latched_store_reg_n_0),
        .I3(latched_branch_reg_n_0),
        .I4(latched_stalu_reg_n_0),
        .I5(\reg_next_pc_reg_n_0_[5] ),
        .O(current_pc[5]));
  LUT6 #(
    .INIT(64'hACCCACCCFCCC0CCC)) 
    \reg_pc[6]_i_1 
       (.I0(alu_out_q[6]),
        .I1(\reg_next_pc_reg_n_0_[6] ),
        .I2(latched_branch_reg_n_0),
        .I3(latched_store_reg_n_0),
        .I4(\reg_out_reg_n_0_[6] ),
        .I5(latched_stalu_reg_n_0),
        .O(current_pc[6]));
  LUT6 #(
    .INIT(64'hCFFFAFFFC000A000)) 
    \reg_pc[7]_i_1 
       (.I0(\reg_out_reg_n_0_[7] ),
        .I1(alu_out_q[7]),
        .I2(latched_store_reg_n_0),
        .I3(latched_branch_reg_n_0),
        .I4(latched_stalu_reg_n_0),
        .I5(\reg_next_pc_reg_n_0_[7] ),
        .O(current_pc[7]));
  LUT6 #(
    .INIT(64'hACCCACCCFCCC0CCC)) 
    \reg_pc[8]_i_1 
       (.I0(alu_out_q[8]),
        .I1(\reg_next_pc_reg_n_0_[8] ),
        .I2(latched_branch_reg_n_0),
        .I3(latched_store_reg_n_0),
        .I4(\reg_out_reg_n_0_[8] ),
        .I5(latched_stalu_reg_n_0),
        .O(current_pc[8]));
  LUT6 #(
    .INIT(64'hCFFFAFFFC000A000)) 
    \reg_pc[9]_i_1 
       (.I0(\reg_out_reg_n_0_[9] ),
        .I1(alu_out_q[9]),
        .I2(latched_store_reg_n_0),
        .I3(latched_branch_reg_n_0),
        .I4(latched_stalu_reg_n_0),
        .I5(\reg_next_pc_reg_n_0_[9] ),
        .O(current_pc[9]));
  FDRE #(
    .INIT(1'b0)) 
    \reg_pc_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(reg_next_pc),
        .D(current_pc[10]),
        .Q(\reg_pc_reg_n_0_[10] ),
        .R(instr_and_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_pc_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(reg_next_pc),
        .D(current_pc[11]),
        .Q(\reg_pc_reg_n_0_[11] ),
        .R(instr_and_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_pc_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(reg_next_pc),
        .D(current_pc[12]),
        .Q(\reg_pc_reg_n_0_[12] ),
        .R(instr_and_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_pc_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(reg_next_pc),
        .D(current_pc[13]),
        .Q(\reg_pc_reg_n_0_[13] ),
        .R(instr_and_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_pc_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(reg_next_pc),
        .D(current_pc[14]),
        .Q(\reg_pc_reg_n_0_[14] ),
        .R(instr_and_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_pc_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(reg_next_pc),
        .D(current_pc[15]),
        .Q(\reg_pc_reg_n_0_[15] ),
        .R(instr_and_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_pc_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(reg_next_pc),
        .D(current_pc[16]),
        .Q(\reg_pc_reg_n_0_[16] ),
        .R(instr_and_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_pc_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(reg_next_pc),
        .D(current_pc[17]),
        .Q(\reg_pc_reg_n_0_[17] ),
        .R(instr_and_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_pc_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(reg_next_pc),
        .D(current_pc[18]),
        .Q(\reg_pc_reg_n_0_[18] ),
        .R(instr_and_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_pc_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(reg_next_pc),
        .D(current_pc[19]),
        .Q(\reg_pc_reg_n_0_[19] ),
        .R(instr_and_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_pc_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(reg_next_pc),
        .D(current_pc[1]),
        .Q(\reg_pc_reg_n_0_[1] ),
        .R(instr_and_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_pc_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(reg_next_pc),
        .D(current_pc[20]),
        .Q(\reg_pc_reg_n_0_[20] ),
        .R(instr_and_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_pc_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(reg_next_pc),
        .D(current_pc[21]),
        .Q(\reg_pc_reg_n_0_[21] ),
        .R(instr_and_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_pc_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(reg_next_pc),
        .D(current_pc[22]),
        .Q(\reg_pc_reg_n_0_[22] ),
        .R(instr_and_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_pc_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(reg_next_pc),
        .D(current_pc[23]),
        .Q(\reg_pc_reg_n_0_[23] ),
        .R(instr_and_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_pc_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(reg_next_pc),
        .D(current_pc[24]),
        .Q(\reg_pc_reg_n_0_[24] ),
        .R(instr_and_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_pc_reg[25] 
       (.C(clk_IBUF_BUFG),
        .CE(reg_next_pc),
        .D(current_pc[25]),
        .Q(\reg_pc_reg_n_0_[25] ),
        .R(instr_and_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_pc_reg[26] 
       (.C(clk_IBUF_BUFG),
        .CE(reg_next_pc),
        .D(current_pc[26]),
        .Q(\reg_pc_reg_n_0_[26] ),
        .R(instr_and_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_pc_reg[27] 
       (.C(clk_IBUF_BUFG),
        .CE(reg_next_pc),
        .D(current_pc[27]),
        .Q(\reg_pc_reg_n_0_[27] ),
        .R(instr_and_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_pc_reg[28] 
       (.C(clk_IBUF_BUFG),
        .CE(reg_next_pc),
        .D(current_pc[28]),
        .Q(\reg_pc_reg_n_0_[28] ),
        .R(instr_and_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_pc_reg[29] 
       (.C(clk_IBUF_BUFG),
        .CE(reg_next_pc),
        .D(current_pc[29]),
        .Q(\reg_pc_reg_n_0_[29] ),
        .R(instr_and_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_pc_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(reg_next_pc),
        .D(current_pc[2]),
        .Q(\reg_pc_reg_n_0_[2] ),
        .R(instr_and_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_pc_reg[30] 
       (.C(clk_IBUF_BUFG),
        .CE(reg_next_pc),
        .D(current_pc[30]),
        .Q(\reg_pc_reg_n_0_[30] ),
        .R(instr_and_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_pc_reg[31] 
       (.C(clk_IBUF_BUFG),
        .CE(reg_next_pc),
        .D(current_pc[31]),
        .Q(\reg_pc_reg_n_0_[31] ),
        .R(instr_and_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_pc_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(reg_next_pc),
        .D(current_pc[3]),
        .Q(\reg_pc_reg_n_0_[3] ),
        .R(instr_and_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_pc_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(reg_next_pc),
        .D(current_pc[4]),
        .Q(\reg_pc_reg_n_0_[4] ),
        .R(instr_and_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_pc_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(reg_next_pc),
        .D(current_pc[5]),
        .Q(\reg_pc_reg_n_0_[5] ),
        .R(instr_and_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_pc_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(reg_next_pc),
        .D(current_pc[6]),
        .Q(\reg_pc_reg_n_0_[6] ),
        .R(instr_and_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_pc_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(reg_next_pc),
        .D(current_pc[7]),
        .Q(\reg_pc_reg_n_0_[7] ),
        .R(instr_and_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_pc_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(reg_next_pc),
        .D(current_pc[8]),
        .Q(\reg_pc_reg_n_0_[8] ),
        .R(instr_and_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_pc_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(reg_next_pc),
        .D(current_pc[9]),
        .Q(\reg_pc_reg_n_0_[9] ),
        .R(instr_and_i_1_n_0));
  LUT6 #(
    .INIT(64'hF4F4F4F4FFF4F4F4)) 
    \reg_sh[0]_i_1 
       (.I0(\reg_sh[4]_i_5_n_0 ),
        .I1(reg_sh1[0]),
        .I2(\reg_sh[0]_i_2_n_0 ),
        .I3(decoded_imm_uj[11]),
        .I4(is_slli_srli_srai),
        .I5(\cpu_state_reg_n_0_[2] ),
        .O(reg_sh[0]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'hAAA80002)) 
    \reg_sh[0]_i_2 
       (.I0(\cpu_state_reg_n_0_[2] ),
        .I1(\reg_sh_reg_n_0_[4] ),
        .I2(\reg_sh_reg_n_0_[3] ),
        .I3(\reg_sh_reg_n_0_[2] ),
        .I4(\reg_sh_reg_n_0_[0] ),
        .O(\reg_sh[0]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hF4)) 
    \reg_sh[1]_i_1 
       (.I0(\reg_sh[4]_i_5_n_0 ),
        .I1(reg_sh1[1]),
        .I2(\reg_sh[1]_i_2_n_0 ),
        .O(reg_sh[1]));
  LUT6 #(
    .INIT(64'hECEC202020ECEC20)) 
    \reg_sh[1]_i_2 
       (.I0(is_slli_srli_srai),
        .I1(\cpu_state_reg_n_0_[2] ),
        .I2(decoded_imm_uj[1]),
        .I3(\reg_sh[1]_i_3_n_0 ),
        .I4(\reg_sh_reg_n_0_[1] ),
        .I5(\reg_sh_reg_n_0_[0] ),
        .O(\reg_sh[1]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \reg_sh[1]_i_3 
       (.I0(\reg_sh_reg_n_0_[4] ),
        .I1(\reg_sh_reg_n_0_[3] ),
        .I2(\reg_sh_reg_n_0_[2] ),
        .O(\reg_sh[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF4F4F4F4FFF4F4F4)) 
    \reg_sh[2]_i_1 
       (.I0(\reg_sh[4]_i_5_n_0 ),
        .I1(reg_sh1[2]),
        .I2(\reg_sh[2]_i_2_n_0 ),
        .I3(decoded_imm_uj[2]),
        .I4(is_slli_srli_srai),
        .I5(\cpu_state_reg_n_0_[2] ),
        .O(reg_sh[2]));
  LUT6 #(
    .INIT(64'h2220222022202222)) 
    \reg_sh[2]_i_2 
       (.I0(\cpu_state_reg_n_0_[2] ),
        .I1(\reg_sh_reg_n_0_[2] ),
        .I2(\reg_sh_reg_n_0_[3] ),
        .I3(\reg_sh_reg_n_0_[4] ),
        .I4(\reg_sh_reg_n_0_[0] ),
        .I5(\reg_sh_reg_n_0_[1] ),
        .O(\reg_sh[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAEAEAEAEFFAEAEAE)) 
    \reg_sh[3]_i_1 
       (.I0(\reg_sh[3]_i_2_n_0 ),
        .I1(reg_sh1[3]),
        .I2(\reg_sh[4]_i_5_n_0 ),
        .I3(decoded_imm_uj[3]),
        .I4(is_slli_srli_srai),
        .I5(\cpu_state_reg_n_0_[2] ),
        .O(reg_sh[3]));
  LUT6 #(
    .INIT(64'h8282828280808082)) 
    \reg_sh[3]_i_2 
       (.I0(\cpu_state_reg_n_0_[2] ),
        .I1(\reg_sh_reg_n_0_[2] ),
        .I2(\reg_sh_reg_n_0_[3] ),
        .I3(\reg_sh_reg_n_0_[1] ),
        .I4(\reg_sh_reg_n_0_[0] ),
        .I5(\reg_sh_reg_n_0_[4] ),
        .O(\reg_sh[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBBFBBBFBFFFFBBFB)) 
    \reg_sh[4]_i_1 
       (.I0(\reg_sh[4]_i_2_n_0 ),
        .I1(\reg_sh[4]_i_3_n_0 ),
        .I2(decoded_imm_uj[4]),
        .I3(\reg_sh[4]_i_4_n_0 ),
        .I4(reg_sh1[4]),
        .I5(\reg_sh[4]_i_5_n_0 ),
        .O(reg_sh[4]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'hE000)) 
    \reg_sh[4]_i_2 
       (.I0(\reg_sh_reg_n_0_[2] ),
        .I1(\reg_sh_reg_n_0_[3] ),
        .I2(\reg_sh_reg_n_0_[4] ),
        .I3(\cpu_state_reg_n_0_[2] ),
        .O(\reg_sh[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFFFFFF)) 
    \reg_sh[4]_i_3 
       (.I0(\reg_sh_reg_n_0_[2] ),
        .I1(\reg_sh_reg_n_0_[3] ),
        .I2(\reg_sh_reg_n_0_[4] ),
        .I3(\reg_sh_reg_n_0_[1] ),
        .I4(\reg_sh_reg_n_0_[0] ),
        .I5(\cpu_state_reg_n_0_[2] ),
        .O(\reg_sh[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \reg_sh[4]_i_4 
       (.I0(\cpu_state_reg_n_0_[2] ),
        .I1(is_slli_srli_srai),
        .O(\reg_sh[4]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \reg_sh[4]_i_5 
       (.I0(\reg_sh[4]_i_6_n_0 ),
        .I1(is_slli_srli_srai),
        .I2(\cpu_state_reg_n_0_[2] ),
        .O(\reg_sh[4]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \reg_sh[4]_i_6 
       (.I0(decoded_imm_uj[4]),
        .I1(decoded_imm_uj[11]),
        .I2(decoded_imm_uj[2]),
        .I3(decoded_imm_uj[1]),
        .I4(decoded_imm_uj[3]),
        .O(\reg_sh[4]_i_6_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \reg_sh_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(reg_sh[0]),
        .Q(\reg_sh_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_sh_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(reg_sh[1]),
        .Q(\reg_sh_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_sh_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(reg_sh[2]),
        .Q(\reg_sh_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_sh_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(reg_sh[3]),
        .Q(\reg_sh_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_sh_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(reg_sh[4]),
        .Q(\reg_sh_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    trap_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\cpu_state_reg_n_0_[7] ),
        .Q(trap_OBUF),
        .R(instr_and_i_1_n_0));
endmodule

(* FAST_MEMORY = "1" *) (* MEM_SIZE = "4096" *) 
(* NotValidForBitStream *)
module system
   (clk,
    resetn,
    trap,
    out_byte,
    out_byte_en);
  input clk;
  input resetn;
  output trap;
  output [7:0]out_byte;
  output out_byte_en;

  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire [13:2]mem_la_addr;
  wire [23:8]mem_la_wdata;
  wire [31:0]mem_rdata;
  wire [7:0]out_byte;
  wire [7:0]out_byte_OBUF;
  wire out_byte_en;
  wire out_byte_en01_out;
  wire out_byte_en_OBUF;
  wire p_1_in;
  wire p_2_in;
  wire picorv32_core_n_1;
  wire picorv32_core_n_2;
  wire picorv32_core_n_23;
  wire picorv32_core_n_26;
  wire picorv32_core_n_27;
  wire picorv32_core_n_28;
  wire picorv32_core_n_29;
  wire picorv32_core_n_3;
  wire picorv32_core_n_30;
  wire picorv32_core_n_31;
  wire picorv32_core_n_32;
  wire picorv32_core_n_33;
  wire picorv32_core_n_34;
  wire picorv32_core_n_4;
  wire picorv32_core_n_5;
  wire picorv32_core_n_6;
  wire picorv32_core_n_7;
  wire picorv32_core_n_8;
  wire picorv32_core_n_9;
  wire resetn;
  wire resetn_IBUF;
  wire trap;
  wire trap_OBUF;
  wire NLW_memory_reg_0_CASCADEOUTA_UNCONNECTED;
  wire NLW_memory_reg_0_CASCADEOUTB_UNCONNECTED;
  wire NLW_memory_reg_0_DBITERR_UNCONNECTED;
  wire NLW_memory_reg_0_INJECTDBITERR_UNCONNECTED;
  wire NLW_memory_reg_0_INJECTSBITERR_UNCONNECTED;
  wire NLW_memory_reg_0_SBITERR_UNCONNECTED;
  wire [31:8]NLW_memory_reg_0_DIADI_UNCONNECTED;
  wire [31:8]NLW_memory_reg_0_DIBDI_UNCONNECTED;
  wire [3:1]NLW_memory_reg_0_DIPADIP_UNCONNECTED;
  wire [3:1]NLW_memory_reg_0_DIPBDIP_UNCONNECTED;
  wire [31:0]NLW_memory_reg_0_DOADO_UNCONNECTED;
  wire [31:8]NLW_memory_reg_0_DOBDO_UNCONNECTED;
  wire [3:0]NLW_memory_reg_0_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_memory_reg_0_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_memory_reg_0_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_memory_reg_0_RDADDRECC_UNCONNECTED;
  wire NLW_memory_reg_1_CASCADEOUTA_UNCONNECTED;
  wire NLW_memory_reg_1_CASCADEOUTB_UNCONNECTED;
  wire NLW_memory_reg_1_DBITERR_UNCONNECTED;
  wire NLW_memory_reg_1_INJECTDBITERR_UNCONNECTED;
  wire NLW_memory_reg_1_INJECTSBITERR_UNCONNECTED;
  wire NLW_memory_reg_1_SBITERR_UNCONNECTED;
  wire [31:8]NLW_memory_reg_1_DIADI_UNCONNECTED;
  wire [31:8]NLW_memory_reg_1_DIBDI_UNCONNECTED;
  wire [3:1]NLW_memory_reg_1_DIPADIP_UNCONNECTED;
  wire [3:1]NLW_memory_reg_1_DIPBDIP_UNCONNECTED;
  wire [31:0]NLW_memory_reg_1_DOADO_UNCONNECTED;
  wire [31:8]NLW_memory_reg_1_DOBDO_UNCONNECTED;
  wire [3:0]NLW_memory_reg_1_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_memory_reg_1_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_memory_reg_1_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_memory_reg_1_RDADDRECC_UNCONNECTED;
  wire NLW_memory_reg_2_CASCADEOUTA_UNCONNECTED;
  wire NLW_memory_reg_2_CASCADEOUTB_UNCONNECTED;
  wire NLW_memory_reg_2_DBITERR_UNCONNECTED;
  wire NLW_memory_reg_2_INJECTDBITERR_UNCONNECTED;
  wire NLW_memory_reg_2_INJECTSBITERR_UNCONNECTED;
  wire NLW_memory_reg_2_SBITERR_UNCONNECTED;
  wire [31:8]NLW_memory_reg_2_DIADI_UNCONNECTED;
  wire [31:8]NLW_memory_reg_2_DIBDI_UNCONNECTED;
  wire [3:1]NLW_memory_reg_2_DIPADIP_UNCONNECTED;
  wire [3:1]NLW_memory_reg_2_DIPBDIP_UNCONNECTED;
  wire [31:0]NLW_memory_reg_2_DOADO_UNCONNECTED;
  wire [31:8]NLW_memory_reg_2_DOBDO_UNCONNECTED;
  wire [3:0]NLW_memory_reg_2_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_memory_reg_2_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_memory_reg_2_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_memory_reg_2_RDADDRECC_UNCONNECTED;
  wire NLW_memory_reg_3_CASCADEOUTA_UNCONNECTED;
  wire NLW_memory_reg_3_CASCADEOUTB_UNCONNECTED;
  wire NLW_memory_reg_3_DBITERR_UNCONNECTED;
  wire NLW_memory_reg_3_INJECTDBITERR_UNCONNECTED;
  wire NLW_memory_reg_3_INJECTSBITERR_UNCONNECTED;
  wire NLW_memory_reg_3_SBITERR_UNCONNECTED;
  wire [31:8]NLW_memory_reg_3_DIADI_UNCONNECTED;
  wire [31:8]NLW_memory_reg_3_DIBDI_UNCONNECTED;
  wire [3:1]NLW_memory_reg_3_DIPADIP_UNCONNECTED;
  wire [3:1]NLW_memory_reg_3_DIPBDIP_UNCONNECTED;
  wire [31:0]NLW_memory_reg_3_DOADO_UNCONNECTED;
  wire [31:8]NLW_memory_reg_3_DOBDO_UNCONNECTED;
  wire [3:0]NLW_memory_reg_3_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_memory_reg_3_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_memory_reg_3_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_memory_reg_3_RDADDRECC_UNCONNECTED;

  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "131072" *) 
  (* RTL_RAM_NAME = "memory" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "4095" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "7" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h231367130313E393032393836F23132313671303132303B72313231373EF1337),
    .INIT_01(256'h5520476FE393B703EFEF036393832383238323B383036FEFEF03239323231323),
    .INIT_02(256'h000000000000000000000000000000000000000000000000000000000000002E),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    memory_reg_0
       (.ADDRARDADDR({1'b1,mem_la_addr,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b1,mem_la_addr,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_memory_reg_0_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_memory_reg_0_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clk_IBUF_BUFG),
        .CLKBWRCLK(clk_IBUF_BUFG),
        .DBITERR(NLW_memory_reg_0_DBITERR_UNCONNECTED),
        .DIADI({NLW_memory_reg_0_DIADI_UNCONNECTED[31:8],picorv32_core_n_1,picorv32_core_n_2,picorv32_core_n_3,picorv32_core_n_4,picorv32_core_n_5,picorv32_core_n_6,picorv32_core_n_7,picorv32_core_n_8}),
        .DIBDI({NLW_memory_reg_0_DIBDI_UNCONNECTED[31:8],1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({NLW_memory_reg_0_DIPADIP_UNCONNECTED[3:1],1'b0}),
        .DIPBDIP({NLW_memory_reg_0_DIPBDIP_UNCONNECTED[3:1],1'b0}),
        .DOADO(NLW_memory_reg_0_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_memory_reg_0_DOBDO_UNCONNECTED[31:8],mem_rdata[7:0]}),
        .DOPADOP(NLW_memory_reg_0_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_memory_reg_0_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_memory_reg_0_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(out_byte_en01_out),
        .ENBWREN(1'b1),
        .INJECTDBITERR(NLW_memory_reg_0_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_memory_reg_0_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_memory_reg_0_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_memory_reg_0_SBITERR_UNCONNECTED),
        .WEA({1'b0,1'b0,1'b0,picorv32_core_n_26}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "131072" *) 
  (* RTL_RAM_NAME = "memory" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "4095" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "8" *) 
  (* ram_slice_end = "15" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h2E0180012400F607272687270026042E0180012400A0270726042E0100000141),
    .INIT_01(256'h292843F0FE873727F0F02598F727222724272607272700F0F02522072426042C),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000032),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    memory_reg_1
       (.ADDRARDADDR({1'b1,mem_la_addr,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b1,mem_la_addr,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_memory_reg_1_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_memory_reg_1_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clk_IBUF_BUFG),
        .CLKBWRCLK(clk_IBUF_BUFG),
        .DBITERR(NLW_memory_reg_1_DBITERR_UNCONNECTED),
        .DIADI({NLW_memory_reg_1_DIADI_UNCONNECTED[31:8],mem_la_wdata[15:8]}),
        .DIBDI({NLW_memory_reg_1_DIBDI_UNCONNECTED[31:8],1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({NLW_memory_reg_1_DIPADIP_UNCONNECTED[3:1],1'b0}),
        .DIPBDIP({NLW_memory_reg_1_DIPBDIP_UNCONNECTED[3:1],1'b0}),
        .DOADO(NLW_memory_reg_1_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_memory_reg_1_DOBDO_UNCONNECTED[31:8],mem_rdata[15:8]}),
        .DOPADOP(NLW_memory_reg_1_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_memory_reg_1_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_memory_reg_1_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(out_byte_en01_out),
        .ENBWREN(1'b1),
        .INJECTDBITERR(NLW_memory_reg_1_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_memory_reg_1_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_memory_reg_1_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_memory_reg_1_SBITERR_UNCONNECTED),
        .WEA({1'b0,1'b0,1'b0,p_1_in}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "131072" *) 
  (* RTL_RAM_NAME = "memory" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "4095" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "16" *) 
  (* ram_slice_end = "23" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h11010001C100E730C4F417C400040181010001C100E7C400A401810110000100),
    .INIT_01(256'h2047439FE71700C41F9FC40717C4F4C4F444F4F74484C0DF5FC4F41004040181),
    .INIT_02(256'h000000000000000000000000000000000000000000000000000000000000002E),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    memory_reg_2
       (.ADDRARDADDR({1'b1,mem_la_addr,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b1,mem_la_addr,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_memory_reg_2_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_memory_reg_2_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clk_IBUF_BUFG),
        .CLKBWRCLK(clk_IBUF_BUFG),
        .DBITERR(NLW_memory_reg_2_DBITERR_UNCONNECTED),
        .DIADI({NLW_memory_reg_2_DIADI_UNCONNECTED[31:8],mem_la_wdata[23:16]}),
        .DIBDI({NLW_memory_reg_2_DIBDI_UNCONNECTED[31:8],1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({NLW_memory_reg_2_DIPADIP_UNCONNECTED[3:1],1'b0}),
        .DIPBDIP({NLW_memory_reg_2_DIPBDIP_UNCONNECTED[3:1],1'b0}),
        .DOADO(NLW_memory_reg_2_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_memory_reg_2_DOBDO_UNCONNECTED[31:8],mem_rdata[23:16]}),
        .DOPADOP(NLW_memory_reg_2_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_memory_reg_2_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_memory_reg_2_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(out_byte_en01_out),
        .ENBWREN(1'b1),
        .INJECTDBITERR(NLW_memory_reg_2_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_memory_reg_2_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_memory_reg_2_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_memory_reg_2_SBITERR_UNCONNECTED),
        .WEA({1'b0,1'b0,1'b0,p_2_in}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "131072" *) 
  (* RTL_RAM_NAME = "memory" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "4095" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "24" *) 
  (* ram_slice_end = "31" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h00FE00020100FE06FEFE00FE01FE0200FE0002010000FE10FE0200FE00070000),
    .INIT_01(256'h384E3AF9FAAC00FEF6F3FE0000FEFEFEFEFEFE00FEFE03F9F7FEFE00FEFE0200),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000030),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    memory_reg_3
       (.ADDRARDADDR({1'b1,mem_la_addr,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b1,mem_la_addr,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_memory_reg_3_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_memory_reg_3_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clk_IBUF_BUFG),
        .CLKBWRCLK(clk_IBUF_BUFG),
        .DBITERR(NLW_memory_reg_3_DBITERR_UNCONNECTED),
        .DIADI({NLW_memory_reg_3_DIADI_UNCONNECTED[31:8],picorv32_core_n_27,picorv32_core_n_28,picorv32_core_n_29,picorv32_core_n_30,picorv32_core_n_31,picorv32_core_n_32,picorv32_core_n_33,picorv32_core_n_34}),
        .DIBDI({NLW_memory_reg_3_DIBDI_UNCONNECTED[31:8],1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({NLW_memory_reg_3_DIPADIP_UNCONNECTED[3:1],1'b0}),
        .DIPBDIP({NLW_memory_reg_3_DIPBDIP_UNCONNECTED[3:1],1'b0}),
        .DOADO(NLW_memory_reg_3_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_memory_reg_3_DOBDO_UNCONNECTED[31:8],mem_rdata[31:24]}),
        .DOPADOP(NLW_memory_reg_3_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_memory_reg_3_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_memory_reg_3_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(out_byte_en01_out),
        .ENBWREN(1'b1),
        .INJECTDBITERR(NLW_memory_reg_3_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_memory_reg_3_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_memory_reg_3_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_memory_reg_3_SBITERR_UNCONNECTED),
        .WEA({1'b0,1'b0,1'b0,picorv32_core_n_23}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  OBUF \out_byte_OBUF[0]_inst 
       (.I(out_byte_OBUF[0]),
        .O(out_byte[0]));
  OBUF \out_byte_OBUF[1]_inst 
       (.I(out_byte_OBUF[1]),
        .O(out_byte[1]));
  OBUF \out_byte_OBUF[2]_inst 
       (.I(out_byte_OBUF[2]),
        .O(out_byte[2]));
  OBUF \out_byte_OBUF[3]_inst 
       (.I(out_byte_OBUF[3]),
        .O(out_byte[3]));
  OBUF \out_byte_OBUF[4]_inst 
       (.I(out_byte_OBUF[4]),
        .O(out_byte[4]));
  OBUF \out_byte_OBUF[5]_inst 
       (.I(out_byte_OBUF[5]),
        .O(out_byte[5]));
  OBUF \out_byte_OBUF[6]_inst 
       (.I(out_byte_OBUF[6]),
        .O(out_byte[6]));
  OBUF \out_byte_OBUF[7]_inst 
       (.I(out_byte_OBUF[7]),
        .O(out_byte[7]));
  OBUF out_byte_en_OBUF_inst
       (.I(out_byte_en_OBUF),
        .O(out_byte_en));
  FDRE #(
    .INIT(1'b0)) 
    out_byte_en_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(picorv32_core_n_9),
        .Q(out_byte_en_OBUF),
        .R(out_byte_en01_out));
  FDRE #(
    .INIT(1'b0)) 
    \out_byte_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(picorv32_core_n_9),
        .D(picorv32_core_n_8),
        .Q(out_byte_OBUF[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_byte_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(picorv32_core_n_9),
        .D(picorv32_core_n_7),
        .Q(out_byte_OBUF[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_byte_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(picorv32_core_n_9),
        .D(picorv32_core_n_6),
        .Q(out_byte_OBUF[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_byte_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(picorv32_core_n_9),
        .D(picorv32_core_n_5),
        .Q(out_byte_OBUF[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_byte_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(picorv32_core_n_9),
        .D(picorv32_core_n_4),
        .Q(out_byte_OBUF[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_byte_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(picorv32_core_n_9),
        .D(picorv32_core_n_3),
        .Q(out_byte_OBUF[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_byte_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(picorv32_core_n_9),
        .D(picorv32_core_n_2),
        .Q(out_byte_OBUF[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_byte_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(picorv32_core_n_9),
        .D(picorv32_core_n_1),
        .Q(out_byte_OBUF[7]),
        .R(1'b0));
  picorv32 picorv32_core
       (.ADDRARDADDR(mem_la_addr),
        .E(picorv32_core_n_9),
        .Q({picorv32_core_n_1,picorv32_core_n_2,picorv32_core_n_3,picorv32_core_n_4,picorv32_core_n_5,picorv32_core_n_6,picorv32_core_n_7,picorv32_core_n_8}),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .mem_rdata(mem_rdata),
        .out_byte_en01_out(out_byte_en01_out),
        .p_0_in({picorv32_core_n_23,p_2_in,p_1_in,picorv32_core_n_26}),
        .p_2_in({picorv32_core_n_27,picorv32_core_n_28,picorv32_core_n_29,picorv32_core_n_30,picorv32_core_n_31,picorv32_core_n_32,picorv32_core_n_33,picorv32_core_n_34,mem_la_wdata}),
        .resetn_IBUF(resetn_IBUF),
        .trap_OBUF(trap_OBUF));
  IBUF resetn_IBUF_inst
       (.I(resetn),
        .O(resetn_IBUF));
  OBUF trap_OBUF_inst
       (.I(trap_OBUF),
        .O(trap));
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
