// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.12.0.240.2
// Netlist written on Sun Apr 03 13:24:32 2022
//
// Verilog Description of module unidadcontrol
//

module unidadcontrol (selector, OUTT_DISPLAY, SIG, IDET, SALIDA, m_clk);   // d:/documentos/escom/quinto semestre/arquitectura de computadoras/practica 2/practica2intento2/unidadcontrol.vhd(6[8:21])
    input [1:0]selector;   // d:/documentos/escom/quinto semestre/arquitectura de computadoras/practica 2/practica2intento2/unidadcontrol.vhd(7[6:14])
    output [6:0]OUTT_DISPLAY;   // d:/documentos/escom/quinto semestre/arquitectura de computadoras/practica 2/practica2intento2/unidadcontrol.vhd(8[2:14])
    output SIG;   // d:/documentos/escom/quinto semestre/arquitectura de computadoras/practica 2/practica2intento2/unidadcontrol.vhd(9[2:5])
    output IDET;   // d:/documentos/escom/quinto semestre/arquitectura de computadoras/practica 2/practica2intento2/unidadcontrol.vhd(9[6:10])
    output [12:0]SALIDA;   // d:/documentos/escom/quinto semestre/arquitectura de computadoras/practica 2/practica2intento2/unidadcontrol.vhd(10[2:8])
    input m_clk /* synthesis .original_dir=IN_OUT */ ;   // d:/documentos/escom/quinto semestre/arquitectura de computadoras/practica 2/practica2intento2/unidadcontrol.vhd(11[2:7])
    
    wire m_clk_c /* synthesis is_clock=1, SET_AS_NETWORK=m_clk_c */ ;   // d:/documentos/escom/quinto semestre/arquitectura de computadoras/practica 2/practica2intento2/unidadcontrol.vhd(11[2:7])
    wire edo_presente /* synthesis is_clock=1, SET_AS_NETWORK=edo_presente */ ;   // d:/documentos/escom/quinto semestre/arquitectura de computadoras/practica 2/practica2intento2/unidadcontrol.vhd(52[8:20])
    wire edo_presente_N_127 /* synthesis is_inv_clock=1 */ ;   // d:/documentos/escom/quinto semestre/arquitectura de computadoras/practica 2/practica2intento2/unidadcontrol.vhd(52[22:32])
    wire RA_9__N_1 /* synthesis is_clock=1, SET_AS_NETWORK=RA_9__N_1 */ ;   // d:/documentos/escom/quinto semestre/arquitectura de computadoras/practica 2/practica2intento2/unidadcontrol.vhd(17[8:10])
    wire RB_9__N_3 /* synthesis is_clock=1, SET_AS_NETWORK=RB_9__N_3 */ ;   // d:/documentos/escom/quinto semestre/arquitectura de computadoras/practica 2/practica2intento2/unidadcontrol.vhd(18[8:10])
    wire RC_9__N_8 /* synthesis is_clock=1, SET_AS_NETWORK=RC_9__N_8 */ ;   // d:/documentos/escom/quinto semestre/arquitectura de computadoras/practica 2/practica2intento2/unidadcontrol.vhd(19[8:10])
    wire RD_9__N_14 /* synthesis is_clock=1, SET_AS_NETWORK=RD_9__N_14 */ ;   // d:/documentos/escom/quinto semestre/arquitectura de computadoras/practica 2/practica2intento2/unidadcontrol.vhd(20[8:10])
    
    wire GND_net, VCC_net, SALIDA_c_11, SALIDA_c_10, SALIDA_c_9, SALIDA_c_8, 
        SALIDA_c_7, SALIDA_c_6, SALIDA_c_5, SALIDA_c_4, SALIDA_c_3, 
        SALIDA_c_2, SALIDA_c_1, SALIDA_c_0;
    wire [9:0]RA;   // d:/documentos/escom/quinto semestre/arquitectura de computadoras/practica 2/practica2intento2/unidadcontrol.vhd(17[8:10])
    wire [9:0]RB;   // d:/documentos/escom/quinto semestre/arquitectura de computadoras/practica 2/practica2intento2/unidadcontrol.vhd(18[8:10])
    wire [9:0]RC;   // d:/documentos/escom/quinto semestre/arquitectura de computadoras/practica 2/practica2intento2/unidadcontrol.vhd(19[8:10])
    wire [9:0]RD;   // d:/documentos/escom/quinto semestre/arquitectura de computadoras/practica 2/practica2intento2/unidadcontrol.vhd(20[8:10])
    
    wire n13;
    wire [11:0]A_AUX;   // d:/documentos/escom/quinto semestre/arquitectura de computadoras/practica 2/practica2intento2/unidadcontrol.vhd(22[8:13])
    wire [11:0]B_AUX;   // d:/documentos/escom/quinto semestre/arquitectura de computadoras/practica 2/practica2intento2/unidadcontrol.vhd(22[15:20])
    wire [7:0]IR;   // d:/documentos/escom/quinto semestre/arquitectura de computadoras/practica 2/practica2intento2/unidadcontrol.vhd(53[8:10])
    wire [5:0]PC;   // d:/documentos/escom/quinto semestre/arquitectura de computadoras/practica 2/practica2intento2/unidadcontrol.vhd(54[8:10])
    wire [5:0]MAR;   // d:/documentos/escom/quinto semestre/arquitectura de computadoras/practica 2/practica2intento2/unidadcontrol.vhd(56[8:11])
    wire [5:0]PC_5__N_121;
    
    wire n2144, n2143, n2053, n2028, n2141, n1704, B_AUX_9__N_94, 
        B_AUX_9__N_93, B_AUX_9__N_92, B_AUX_9__N_91, B_AUX_9__N_98, 
        B_AUX_9__N_97, B_AUX_9__N_96, B_AUX_9__N_95, B_AUX_9__N_102, 
        B_AUX_9__N_101, B_AUX_9__N_100, B_AUX_9__N_99, B_AUX_9__N_106, 
        B_AUX_9__N_105, B_AUX_9__N_104, B_AUX_9__N_103, B_AUX_9__N_107, 
        B_AUX_9__N_111, A_AUX_9__N_40, A_AUX_9__N_46, A_AUX_9__N_45, 
        A_AUX_9__N_44, A_AUX_9__N_50, A_AUX_9__N_49, A_AUX_9__N_48, 
        A_AUX_9__N_54, A_AUX_9__N_53, A_AUX_9__N_52, A_AUX_9__N_58, 
        A_AUX_9__N_57, A_AUX_9__N_56, A_AUX_9__N_60, n2140;
    wire [27:0]Data_out_27__N_128;
    
    wire n2138, n2137, FACT1_5__N_310, n13_adj_419, n13_adj_420, n13_adj_421, 
        n2135, n2134, n2133;
    
    VHI i2 (.Z(VCC_net));
    INV i1777 (.A(edo_presente), .Z(edo_presente_N_127));
    OB OUTT_DISPLAY_pad_6 (.I(GND_net), .O(OUTT_DISPLAY[6]));   // d:/documentos/escom/quinto semestre/arquitectura de computadoras/practica 2/practica2intento2/unidadcontrol.vhd(8[2:14])
    OB SALIDA_pad_9 (.I(SALIDA_c_9), .O(SALIDA[9]));   // d:/documentos/escom/quinto semestre/arquitectura de computadoras/practica 2/practica2intento2/unidadcontrol.vhd(10[2:8])
    OB SALIDA_pad_10 (.I(SALIDA_c_10), .O(SALIDA[10]));   // d:/documentos/escom/quinto semestre/arquitectura de computadoras/practica 2/practica2intento2/unidadcontrol.vhd(10[2:8])
    OB OUTT_DISPLAY_pad_5 (.I(GND_net), .O(OUTT_DISPLAY[5]));   // d:/documentos/escom/quinto semestre/arquitectura de computadoras/practica 2/practica2intento2/unidadcontrol.vhd(8[2:14])
    OB SALIDA_pad_11 (.I(SALIDA_c_11), .O(SALIDA[11]));   // d:/documentos/escom/quinto semestre/arquitectura de computadoras/practica 2/practica2intento2/unidadcontrol.vhd(10[2:8])
    OB SALIDA_pad_12 (.I(GND_net), .O(SALIDA[12]));   // d:/documentos/escom/quinto semestre/arquitectura de computadoras/practica 2/practica2intento2/unidadcontrol.vhd(10[2:8])
    LUT4 A_AUX_9__I_13_3_lut_3_lut (.A(IR[5]), .B(Data_out_27__N_128[13]), 
         .C(RB[3]), .Z(A_AUX_9__N_49)) /* synthesis lut_function=(A (C)+!A (B)) */ ;   // d:/documentos/escom/quinto semestre/arquitectura de computadoras/practica 2/practica2intento2/unidadcontrol.vhd(106[9:30])
    defparam A_AUX_9__I_13_3_lut_3_lut.init = 16'he4e4;
    LUT4 MBR_10__I_0_1018_then_4_lut (.A(RB[0]), .B(IR[5]), .C(Data_out_27__N_128[10]), 
         .D(RD[0]), .Z(n2135)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C))+!A (B (C (D))+!B (C))) */ ;
    defparam MBR_10__I_0_1018_then_4_lut.init = 16'hf838;
    LUT4 MBR_10__I_0_1018_else_4_lut (.A(IR[5]), .B(Data_out_27__N_128[10]), 
         .C(RA[0]), .D(RC[0]), .Z(n2134)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B)) */ ;
    defparam MBR_10__I_0_1018_else_4_lut.init = 16'hec64;
    LUT4 i1_2_lut_3_lut (.A(edo_presente), .B(IR[5]), .C(IR[4]), .Z(RB_9__N_3)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i1_2_lut_3_lut.init = 16'h2020;
    LUT4 MBR_15__I_0_then_4_lut (.A(RB[5]), .B(IR[5]), .C(Data_out_27__N_128[10]), 
         .D(RD[5]), .Z(n2138)) /* synthesis lut_function=(A (((D)+!C)+!B)+!A ((C (D))+!B)) */ ;
    defparam MBR_15__I_0_then_4_lut.init = 16'hfb3b;
    LUT4 i1_2_lut_3_lut_adj_75 (.A(edo_presente), .B(IR[5]), .C(IR[4]), 
         .Z(RA_9__N_1)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;
    defparam i1_2_lut_3_lut_adj_75.init = 16'h0202;
    LUT4 MBR_15__I_0_else_4_lut (.A(IR[5]), .B(Data_out_27__N_128[10]), 
         .C(RA[5]), .D(RC[5]), .Z(n2137)) /* synthesis lut_function=(A (B (D)+!B (C))) */ ;
    defparam MBR_15__I_0_else_4_lut.init = 16'ha820;
    LUT4 i1738_3_lut_3_lut (.A(Data_out_27__N_128[15]), .B(Data_out_27__N_128[10]), 
         .C(IR[5]), .Z(n2053)) /* synthesis lut_function=(!(A (B (C))+!A (C))) */ ;   // d:/documentos/escom/quinto semestre/arquitectura de computadoras/practica 2/practica2intento2/unidadcontrol.vhd(89[6:29])
    defparam i1738_3_lut_3_lut.init = 16'h2f2f;
    LUT4 MBR_0__I_0_then_4_lut (.A(IR[5]), .B(Data_out_27__N_128[14]), .C(RD[0]), 
         .D(RB[0]), .Z(n2141)) /* synthesis lut_function=((B (C)+!B (D))+!A) */ ;
    defparam MBR_0__I_0_then_4_lut.init = 16'hf7d5;
    LUT4 i28_3_lut_4_lut (.A(Data_out_27__N_128[15]), .B(Data_out_27__N_128[10]), 
         .C(RA[1]), .D(n13), .Z(A_AUX_9__N_58)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;   // d:/documentos/escom/quinto semestre/arquitectura de computadoras/practica 2/practica2intento2/unidadcontrol.vhd(89[6:29])
    defparam i28_3_lut_4_lut.init = 16'hfe10;
    LUT4 MBR_0__I_0_else_4_lut (.A(RA[0]), .B(IR[5]), .C(Data_out_27__N_128[14]), 
         .D(RC[0]), .Z(n2140)) /* synthesis lut_function=(A (B ((D)+!C))+!A (B (C (D)))) */ ;
    defparam MBR_0__I_0_else_4_lut.init = 16'hc808;
    LUT4 MBR_1__I_0_1033_then_4_lut (.A(IR[5]), .B(Data_out_27__N_128[14]), 
         .C(RD[1]), .D(RB[1]), .Z(n2144)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (B)) */ ;
    defparam MBR_1__I_0_1033_then_4_lut.init = 16'he6c4;
    LUT4 i1100_3_lut_4_lut (.A(PC[2]), .B(n2133), .C(PC[3]), .D(PC[4]), 
         .Z(PC_5__N_121[4])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // C:/lscc/diamond/3.12/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1100_3_lut_4_lut.init = 16'h7f80;
    LUT4 i2_2_lut_3_lut_4_lut (.A(IR[0]), .B(IR[3]), .C(IR[1]), .D(IR[2]), 
         .Z(FACT1_5__N_310)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;   // d:/documentos/escom/quinto semestre/arquitectura de computadoras/practica 2/practica2intento2/unidadcontrol.vhd(66[2] 115[16])
    defparam i2_2_lut_3_lut_4_lut.init = 16'h0008;
    LUT4 MBR_1__I_0_1033_else_4_lut (.A(RA[1]), .B(IR[5]), .C(Data_out_27__N_128[14]), 
         .D(RC[1]), .Z(n2143)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C))+!A (B (C (D))+!B (C))) */ ;
    defparam MBR_1__I_0_1033_else_4_lut.init = 16'hf838;
    LUT4 A_AUX_9__I_15_3_lut_3_lut (.A(IR[5]), .B(Data_out_27__N_128[12]), 
         .C(RB[2]), .Z(A_AUX_9__N_53)) /* synthesis lut_function=(A (C)+!A (B)) */ ;   // d:/documentos/escom/quinto semestre/arquitectura de computadoras/practica 2/practica2intento2/unidadcontrol.vhd(106[9:30])
    defparam A_AUX_9__I_15_3_lut_3_lut.init = 16'he4e4;
    LUT4 A_AUX_9__I_17_3_lut_3_lut (.A(IR[5]), .B(Data_out_27__N_128[24]), 
         .C(RB[1]), .Z(A_AUX_9__N_57)) /* synthesis lut_function=(A (C)+!A (B)) */ ;   // d:/documentos/escom/quinto semestre/arquitectura de computadoras/practica 2/practica2intento2/unidadcontrol.vhd(106[9:30])
    defparam A_AUX_9__I_17_3_lut_3_lut.init = 16'he4e4;
    LUT4 i2_2_lut_3_lut_4_lut_adj_76 (.A(IR[0]), .B(IR[3]), .C(IR[1]), 
         .D(IR[2]), .Z(n1704)) /* synthesis lut_function=(((C+(D))+!B)+!A) */ ;   // d:/documentos/escom/quinto semestre/arquitectura de computadoras/practica 2/practica2intento2/unidadcontrol.vhd(66[2] 115[16])
    defparam i2_2_lut_3_lut_4_lut_adj_76.init = 16'hfff7;
    LUT4 B_AUX_9__I_33_3_lut_4_lut (.A(Data_out_27__N_128[0]), .B(Data_out_27__N_128[14]), 
         .C(RA[4]), .D(RB[4]), .Z(B_AUX_9__N_97)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;   // d:/documentos/escom/quinto semestre/arquitectura de computadoras/practica 2/practica2intento2/unidadcontrol.vhd(80[6:28])
    defparam B_AUX_9__I_33_3_lut_4_lut.init = 16'hfe10;
    FD1S1A B_AUX_9__I_0_i1 (.D(B_AUX_9__N_111), .CK(edo_presente), .Q(B_AUX[0]));   // d:/documentos/escom/quinto semestre/arquitectura de computadoras/practica 2/practica2intento2/unidadcontrol.vhd(66[2] 115[16])
    defparam B_AUX_9__I_0_i1.GSR = "ENABLED";
    FD1S1A SALIDA_9__I_0_1009_i1 (.D(SALIDA_c_0), .CK(RC_9__N_8), .Q(RC[0]));   // d:/documentos/escom/quinto semestre/arquitectura de computadoras/practica 2/practica2intento2/unidadcontrol.vhd(66[2] 115[16])
    defparam SALIDA_9__I_0_1009_i1.GSR = "ENABLED";
    FD1S1A SALIDA_9__I_0_1006_i1 (.D(SALIDA_c_0), .CK(RB_9__N_3), .Q(RB[0]));   // d:/documentos/escom/quinto semestre/arquitectura de computadoras/practica 2/practica2intento2/unidadcontrol.vhd(66[2] 115[16])
    defparam SALIDA_9__I_0_1006_i1.GSR = "ENABLED";
    FD1S1A SALIDA_9__I_0_1003_i1 (.D(SALIDA_c_0), .CK(RA_9__N_1), .Q(RA[0]));   // d:/documentos/escom/quinto semestre/arquitectura de computadoras/practica 2/practica2intento2/unidadcontrol.vhd(66[2] 115[16])
    defparam SALIDA_9__I_0_1003_i1.GSR = "ENABLED";
    FD1S1A MBR_27__I_0_i1 (.D(Data_out_27__N_128[20]), .CK(edo_presente_N_127), 
           .Q(IR[0]));   // d:/documentos/escom/quinto semestre/arquitectura de computadoras/practica 2/practica2intento2/unidadcontrol.vhd(66[2] 115[16])
    defparam MBR_27__I_0_i1.GSR = "ENABLED";
    FD1S3AX edo_presente_991 (.D(edo_presente_N_127), .CK(m_clk_c), .Q(edo_presente));   // d:/documentos/escom/quinto semestre/arquitectura de computadoras/practica 2/practica2intento2/unidadcontrol.vhd(120[2] 128[10])
    defparam edo_presente_991.GSR = "ENABLED";
    FD1S1A PC_5__I_0_1034_i1 (.D(PC_5__N_121[0]), .CK(edo_presente_N_127), 
           .Q(PC[0])) /* synthesis lse_init_val=0 */ ;   // d:/documentos/escom/quinto semestre/arquitectura de computadoras/practica 2/practica2intento2/unidadcontrol.vhd(66[2] 115[16])
    defparam PC_5__I_0_1034_i1.GSR = "ENABLED";
    FD1S1A PC_5__I_0_1035_i1 (.D(PC[0]), .CK(edo_presente_N_127), .Q(MAR[0]));   // d:/documentos/escom/quinto semestre/arquitectura de computadoras/practica 2/practica2intento2/unidadcontrol.vhd(66[2] 115[16])
    defparam PC_5__I_0_1035_i1.GSR = "ENABLED";
    FD1S1A A_AUX_9__I_0_i2 (.D(A_AUX_9__N_56), .CK(edo_presente), .Q(A_AUX[1]));   // d:/documentos/escom/quinto semestre/arquitectura de computadoras/practica 2/practica2intento2/unidadcontrol.vhd(66[2] 115[16])
    defparam A_AUX_9__I_0_i2.GSR = "ENABLED";
    FD1S1A A_AUX_9__I_0_i1 (.D(A_AUX_9__N_60), .CK(edo_presente), .Q(A_AUX[0]));   // d:/documentos/escom/quinto semestre/arquitectura de computadoras/practica 2/practica2intento2/unidadcontrol.vhd(66[2] 115[16])
    defparam A_AUX_9__I_0_i1.GSR = "ENABLED";
    FD1S1A A_AUX_9__I_0_i3 (.D(A_AUX_9__N_52), .CK(edo_presente), .Q(A_AUX[2]));   // d:/documentos/escom/quinto semestre/arquitectura de computadoras/practica 2/practica2intento2/unidadcontrol.vhd(66[2] 115[16])
    defparam A_AUX_9__I_0_i3.GSR = "ENABLED";
    FD1S1A A_AUX_9__I_0_i4 (.D(A_AUX_9__N_48), .CK(edo_presente), .Q(A_AUX[3]));   // d:/documentos/escom/quinto semestre/arquitectura de computadoras/practica 2/practica2intento2/unidadcontrol.vhd(66[2] 115[16])
    defparam A_AUX_9__I_0_i4.GSR = "ENABLED";
    FD1S1A A_AUX_9__I_0_i5 (.D(A_AUX_9__N_44), .CK(edo_presente), .Q(A_AUX[4]));   // d:/documentos/escom/quinto semestre/arquitectura de computadoras/practica 2/practica2intento2/unidadcontrol.vhd(66[2] 115[16])
    defparam A_AUX_9__I_0_i5.GSR = "ENABLED";
    FD1S1A A_AUX_9__I_0_i6 (.D(A_AUX_9__N_40), .CK(edo_presente), .Q(A_AUX[5]));   // d:/documentos/escom/quinto semestre/arquitectura de computadoras/practica 2/practica2intento2/unidadcontrol.vhd(66[2] 115[16])
    defparam A_AUX_9__I_0_i6.GSR = "ENABLED";
    FD1S1A SALIDA_9__I_0_i2 (.D(SALIDA_c_1), .CK(RD_9__N_14), .Q(RD[1]));   // d:/documentos/escom/quinto semestre/arquitectura de computadoras/practica 2/practica2intento2/unidadcontrol.vhd(66[2] 115[16])
    defparam SALIDA_9__I_0_i2.GSR = "ENABLED";
    FD1S1A SALIDA_9__I_0_i3 (.D(SALIDA_c_2), .CK(RD_9__N_14), .Q(RD[2]));   // d:/documentos/escom/quinto semestre/arquitectura de computadoras/practica 2/practica2intento2/unidadcontrol.vhd(66[2] 115[16])
    defparam SALIDA_9__I_0_i3.GSR = "ENABLED";
    FD1S1A SALIDA_9__I_0_i4 (.D(SALIDA_c_3), .CK(RD_9__N_14), .Q(RD[3]));   // d:/documentos/escom/quinto semestre/arquitectura de computadoras/practica 2/practica2intento2/unidadcontrol.vhd(66[2] 115[16])
    defparam SALIDA_9__I_0_i4.GSR = "ENABLED";
    FD1S1A SALIDA_9__I_0_i5 (.D(SALIDA_c_4), .CK(RD_9__N_14), .Q(RD[4]));   // d:/documentos/escom/quinto semestre/arquitectura de computadoras/practica 2/practica2intento2/unidadcontrol.vhd(66[2] 115[16])
    defparam SALIDA_9__I_0_i5.GSR = "ENABLED";
    FD1S1A SALIDA_9__I_0_i6 (.D(SALIDA_c_5), .CK(RD_9__N_14), .Q(RD[5]));   // d:/documentos/escom/quinto semestre/arquitectura de computadoras/practica 2/practica2intento2/unidadcontrol.vhd(66[2] 115[16])
    defparam SALIDA_9__I_0_i6.GSR = "ENABLED";
    FD1S1A B_AUX_9__I_0_i2 (.D(B_AUX_9__N_107), .CK(edo_presente), .Q(B_AUX[1]));   // d:/documentos/escom/quinto semestre/arquitectura de computadoras/practica 2/practica2intento2/unidadcontrol.vhd(66[2] 115[16])
    defparam B_AUX_9__I_0_i2.GSR = "ENABLED";
    FD1S1A B_AUX_9__I_0_i3 (.D(B_AUX_9__N_103), .CK(edo_presente), .Q(B_AUX[2]));   // d:/documentos/escom/quinto semestre/arquitectura de computadoras/practica 2/practica2intento2/unidadcontrol.vhd(66[2] 115[16])
    defparam B_AUX_9__I_0_i3.GSR = "ENABLED";
    FD1S1A B_AUX_9__I_0_i4 (.D(B_AUX_9__N_99), .CK(edo_presente), .Q(B_AUX[3]));   // d:/documentos/escom/quinto semestre/arquitectura de computadoras/practica 2/practica2intento2/unidadcontrol.vhd(66[2] 115[16])
    defparam B_AUX_9__I_0_i4.GSR = "ENABLED";
    FD1S1A B_AUX_9__I_0_i5 (.D(B_AUX_9__N_95), .CK(edo_presente), .Q(B_AUX[4]));   // d:/documentos/escom/quinto semestre/arquitectura de computadoras/practica 2/practica2intento2/unidadcontrol.vhd(66[2] 115[16])
    defparam B_AUX_9__I_0_i5.GSR = "ENABLED";
    FD1S1A B_AUX_9__I_0_i6 (.D(B_AUX_9__N_91), .CK(edo_presente), .Q(B_AUX[5]));   // d:/documentos/escom/quinto semestre/arquitectura de computadoras/practica 2/practica2intento2/unidadcontrol.vhd(66[2] 115[16])
    defparam B_AUX_9__I_0_i6.GSR = "ENABLED";
    FD1S1A SALIDA_9__I_0_1009_i2 (.D(SALIDA_c_1), .CK(RC_9__N_8), .Q(RC[1]));   // d:/documentos/escom/quinto semestre/arquitectura de computadoras/practica 2/practica2intento2/unidadcontrol.vhd(66[2] 115[16])
    defparam SALIDA_9__I_0_1009_i2.GSR = "ENABLED";
    LUT4 i28_3_lut_4_lut_adj_77 (.A(Data_out_27__N_128[15]), .B(Data_out_27__N_128[10]), 
         .C(RA[2]), .D(n13_adj_419), .Z(A_AUX_9__N_54)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;   // d:/documentos/escom/quinto semestre/arquitectura de computadoras/practica 2/practica2intento2/unidadcontrol.vhd(89[6:29])
    defparam i28_3_lut_4_lut_adj_77.init = 16'hfe10;
    FD1S1A SALIDA_9__I_0_1009_i3 (.D(SALIDA_c_2), .CK(RC_9__N_8), .Q(RC[2]));   // d:/documentos/escom/quinto semestre/arquitectura de computadoras/practica 2/practica2intento2/unidadcontrol.vhd(66[2] 115[16])
    defparam SALIDA_9__I_0_1009_i3.GSR = "ENABLED";
    FD1S1A SALIDA_9__I_0_1009_i4 (.D(SALIDA_c_3), .CK(RC_9__N_8), .Q(RC[3]));   // d:/documentos/escom/quinto semestre/arquitectura de computadoras/practica 2/practica2intento2/unidadcontrol.vhd(66[2] 115[16])
    defparam SALIDA_9__I_0_1009_i4.GSR = "ENABLED";
    FD1S1A SALIDA_9__I_0_1009_i5 (.D(SALIDA_c_4), .CK(RC_9__N_8), .Q(RC[4]));   // d:/documentos/escom/quinto semestre/arquitectura de computadoras/practica 2/practica2intento2/unidadcontrol.vhd(66[2] 115[16])
    defparam SALIDA_9__I_0_1009_i5.GSR = "ENABLED";
    FD1S1A SALIDA_9__I_0_1009_i6 (.D(SALIDA_c_5), .CK(RC_9__N_8), .Q(RC[5]));   // d:/documentos/escom/quinto semestre/arquitectura de computadoras/practica 2/practica2intento2/unidadcontrol.vhd(66[2] 115[16])
    defparam SALIDA_9__I_0_1009_i6.GSR = "ENABLED";
    FD1S1A SALIDA_9__I_0_1006_i2 (.D(SALIDA_c_1), .CK(RB_9__N_3), .Q(RB[1]));   // d:/documentos/escom/quinto semestre/arquitectura de computadoras/practica 2/practica2intento2/unidadcontrol.vhd(66[2] 115[16])
    defparam SALIDA_9__I_0_1006_i2.GSR = "ENABLED";
    OB IDET_pad (.I(GND_net), .O(IDET));   // d:/documentos/escom/quinto semestre/arquitectura de computadoras/practica 2/practica2intento2/unidadcontrol.vhd(9[6:10])
    FD1S1A SALIDA_9__I_0_1006_i3 (.D(SALIDA_c_2), .CK(RB_9__N_3), .Q(RB[2]));   // d:/documentos/escom/quinto semestre/arquitectura de computadoras/practica 2/practica2intento2/unidadcontrol.vhd(66[2] 115[16])
    defparam SALIDA_9__I_0_1006_i3.GSR = "ENABLED";
    FD1S1A SALIDA_9__I_0_1006_i4 (.D(SALIDA_c_3), .CK(RB_9__N_3), .Q(RB[3]));   // d:/documentos/escom/quinto semestre/arquitectura de computadoras/practica 2/practica2intento2/unidadcontrol.vhd(66[2] 115[16])
    defparam SALIDA_9__I_0_1006_i4.GSR = "ENABLED";
    FD1S1A SALIDA_9__I_0_1006_i5 (.D(SALIDA_c_4), .CK(RB_9__N_3), .Q(RB[4]));   // d:/documentos/escom/quinto semestre/arquitectura de computadoras/practica 2/practica2intento2/unidadcontrol.vhd(66[2] 115[16])
    defparam SALIDA_9__I_0_1006_i5.GSR = "ENABLED";
    FD1S1A SALIDA_9__I_0_1006_i6 (.D(SALIDA_c_5), .CK(RB_9__N_3), .Q(RB[5]));   // d:/documentos/escom/quinto semestre/arquitectura de computadoras/practica 2/practica2intento2/unidadcontrol.vhd(66[2] 115[16])
    defparam SALIDA_9__I_0_1006_i6.GSR = "ENABLED";
    FD1S1A SALIDA_9__I_0_1003_i2 (.D(SALIDA_c_1), .CK(RA_9__N_1), .Q(RA[1]));   // d:/documentos/escom/quinto semestre/arquitectura de computadoras/practica 2/practica2intento2/unidadcontrol.vhd(66[2] 115[16])
    defparam SALIDA_9__I_0_1003_i2.GSR = "ENABLED";
    FD1S1A SALIDA_9__I_0_1003_i3 (.D(SALIDA_c_2), .CK(RA_9__N_1), .Q(RA[2]));   // d:/documentos/escom/quinto semestre/arquitectura de computadoras/practica 2/practica2intento2/unidadcontrol.vhd(66[2] 115[16])
    defparam SALIDA_9__I_0_1003_i3.GSR = "ENABLED";
    FD1S1A SALIDA_9__I_0_1003_i4 (.D(SALIDA_c_3), .CK(RA_9__N_1), .Q(RA[3]));   // d:/documentos/escom/quinto semestre/arquitectura de computadoras/practica 2/practica2intento2/unidadcontrol.vhd(66[2] 115[16])
    defparam SALIDA_9__I_0_1003_i4.GSR = "ENABLED";
    FD1S1A SALIDA_9__I_0_1003_i5 (.D(SALIDA_c_4), .CK(RA_9__N_1), .Q(RA[4]));   // d:/documentos/escom/quinto semestre/arquitectura de computadoras/practica 2/practica2intento2/unidadcontrol.vhd(66[2] 115[16])
    defparam SALIDA_9__I_0_1003_i5.GSR = "ENABLED";
    FD1S1A SALIDA_9__I_0_1003_i6 (.D(SALIDA_c_5), .CK(RA_9__N_1), .Q(RA[5]));   // d:/documentos/escom/quinto semestre/arquitectura de computadoras/practica 2/practica2intento2/unidadcontrol.vhd(66[2] 115[16])
    defparam SALIDA_9__I_0_1003_i6.GSR = "ENABLED";
    FD1S1A MBR_27__I_0_i2 (.D(Data_out_27__N_128[21]), .CK(edo_presente_N_127), 
           .Q(IR[1]));   // d:/documentos/escom/quinto semestre/arquitectura de computadoras/practica 2/practica2intento2/unidadcontrol.vhd(66[2] 115[16])
    defparam MBR_27__I_0_i2.GSR = "ENABLED";
    LUT4 RD_5__I_0_3_lut_4_lut (.A(Data_out_27__N_128[0]), .B(Data_out_27__N_128[14]), 
         .C(RC[5]), .D(RD[5]), .Z(B_AUX_9__N_94)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;   // d:/documentos/escom/quinto semestre/arquitectura de computadoras/practica 2/practica2intento2/unidadcontrol.vhd(84[9:31])
    defparam RD_5__I_0_3_lut_4_lut.init = 16'hfb40;
    FD1S1A MBR_27__I_0_i3 (.D(Data_out_27__N_128[22]), .CK(edo_presente_N_127), 
           .Q(IR[2]));   // d:/documentos/escom/quinto semestre/arquitectura de computadoras/practica 2/practica2intento2/unidadcontrol.vhd(66[2] 115[16])
    defparam MBR_27__I_0_i3.GSR = "ENABLED";
    FD1S1A MBR_27__I_0_i4 (.D(Data_out_27__N_128[23]), .CK(edo_presente_N_127), 
           .Q(IR[3]));   // d:/documentos/escom/quinto semestre/arquitectura de computadoras/practica 2/practica2intento2/unidadcontrol.vhd(66[2] 115[16])
    defparam MBR_27__I_0_i4.GSR = "ENABLED";
    FD1S1A MBR_27__I_0_i5 (.D(Data_out_27__N_128[24]), .CK(edo_presente_N_127), 
           .Q(IR[4]));   // d:/documentos/escom/quinto semestre/arquitectura de computadoras/practica 2/practica2intento2/unidadcontrol.vhd(66[2] 115[16])
    defparam MBR_27__I_0_i5.GSR = "ENABLED";
    FD1S1A MBR_27__I_0_i6 (.D(Data_out_27__N_128[27]), .CK(edo_presente_N_127), 
           .Q(IR[5]));   // d:/documentos/escom/quinto semestre/arquitectura de computadoras/practica 2/practica2intento2/unidadcontrol.vhd(66[2] 115[16])
    defparam MBR_27__I_0_i6.GSR = "ENABLED";
    PFUMX MBR_4__I_0 (.BLUT(B_AUX_9__N_98), .ALUT(B_AUX_9__N_96), .C0(n2028), 
          .Z(B_AUX_9__N_95));
    OB SIG_pad (.I(GND_net), .O(SIG));   // d:/documentos/escom/quinto semestre/arquitectura de computadoras/practica 2/practica2intento2/unidadcontrol.vhd(9[2:5])
    LUT4 i28_3_lut_4_lut_adj_78 (.A(Data_out_27__N_128[15]), .B(Data_out_27__N_128[10]), 
         .C(RA[3]), .D(n13_adj_420), .Z(A_AUX_9__N_50)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;   // d:/documentos/escom/quinto semestre/arquitectura de computadoras/practica 2/practica2intento2/unidadcontrol.vhd(89[6:29])
    defparam i28_3_lut_4_lut_adj_78.init = 16'hfe10;
    LUT4 B_AUX_9__I_31_3_lut_4_lut (.A(Data_out_27__N_128[0]), .B(Data_out_27__N_128[14]), 
         .C(RA[5]), .D(RB[5]), .Z(B_AUX_9__N_93)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;   // d:/documentos/escom/quinto semestre/arquitectura de computadoras/practica 2/practica2intento2/unidadcontrol.vhd(80[6:28])
    defparam B_AUX_9__I_31_3_lut_4_lut.init = 16'hfe10;
    OB OUTT_DISPLAY_pad_0 (.I(GND_net), .O(OUTT_DISPLAY[0]));   // d:/documentos/escom/quinto semestre/arquitectura de computadoras/practica 2/practica2intento2/unidadcontrol.vhd(8[2:14])
    LUT4 i28_3_lut_4_lut_adj_79 (.A(Data_out_27__N_128[15]), .B(Data_out_27__N_128[10]), 
         .C(RA[4]), .D(n13_adj_421), .Z(A_AUX_9__N_46)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;   // d:/documentos/escom/quinto semestre/arquitectura de computadoras/practica 2/practica2intento2/unidadcontrol.vhd(89[6:29])
    defparam i28_3_lut_4_lut_adj_79.init = 16'hfe10;
    IB m_clk_pad (.I(m_clk), .O(m_clk_c));   // d:/documentos/escom/quinto semestre/arquitectura de computadoras/practica 2/practica2intento2/unidadcontrol.vhd(11[2:7])
    OB OUTT_DISPLAY_pad_1 (.I(GND_net), .O(OUTT_DISPLAY[1]));   // d:/documentos/escom/quinto semestre/arquitectura de computadoras/practica 2/practica2intento2/unidadcontrol.vhd(8[2:14])
    OB SALIDA_pad_0 (.I(SALIDA_c_0), .O(SALIDA[0]));   // d:/documentos/escom/quinto semestre/arquitectura de computadoras/practica 2/practica2intento2/unidadcontrol.vhd(10[2:8])
    PFUMX MBR_5__I_0 (.BLUT(B_AUX_9__N_94), .ALUT(B_AUX_9__N_92), .C0(n2028), 
          .Z(B_AUX_9__N_91));
    OB SALIDA_pad_1 (.I(SALIDA_c_1), .O(SALIDA[1]));   // d:/documentos/escom/quinto semestre/arquitectura de computadoras/practica 2/practica2intento2/unidadcontrol.vhd(10[2:8])
    OB OUTT_DISPLAY_pad_2 (.I(GND_net), .O(OUTT_DISPLAY[2]));   // d:/documentos/escom/quinto semestre/arquitectura de computadoras/practica 2/practica2intento2/unidadcontrol.vhd(8[2:14])
    OB SALIDA_pad_2 (.I(SALIDA_c_2), .O(SALIDA[2]));   // d:/documentos/escom/quinto semestre/arquitectura de computadoras/practica 2/practica2intento2/unidadcontrol.vhd(10[2:8])
    LUT4 i1736_4_lut_2_lut (.A(Data_out_27__N_128[14]), .B(IR[5]), .Z(n2028)) /* synthesis lut_function=(!(A (B))) */ ;   // d:/documentos/escom/quinto semestre/arquitectura de computadoras/practica 2/practica2intento2/unidadcontrol.vhd(80[6:28])
    defparam i1736_4_lut_2_lut.init = 16'h7777;
    OB SALIDA_pad_3 (.I(SALIDA_c_3), .O(SALIDA[3]));   // d:/documentos/escom/quinto semestre/arquitectura de computadoras/practica 2/practica2intento2/unidadcontrol.vhd(10[2:8])
    OB OUTT_DISPLAY_pad_3 (.I(GND_net), .O(OUTT_DISPLAY[3]));   // d:/documentos/escom/quinto semestre/arquitectura de computadoras/practica 2/practica2intento2/unidadcontrol.vhd(8[2:14])
    OB SALIDA_pad_4 (.I(SALIDA_c_4), .O(SALIDA[4]));   // d:/documentos/escom/quinto semestre/arquitectura de computadoras/practica 2/practica2intento2/unidadcontrol.vhd(10[2:8])
    OB SALIDA_pad_5 (.I(SALIDA_c_5), .O(SALIDA[5]));   // d:/documentos/escom/quinto semestre/arquitectura de computadoras/practica 2/practica2intento2/unidadcontrol.vhd(10[2:8])
    OB OUTT_DISPLAY_pad_4 (.I(GND_net), .O(OUTT_DISPLAY[4]));   // d:/documentos/escom/quinto semestre/arquitectura de computadoras/practica 2/practica2intento2/unidadcontrol.vhd(8[2:14])
    OB SALIDA_pad_6 (.I(SALIDA_c_6), .O(SALIDA[6]));   // d:/documentos/escom/quinto semestre/arquitectura de computadoras/practica 2/practica2intento2/unidadcontrol.vhd(10[2:8])
    OB SALIDA_pad_7 (.I(SALIDA_c_7), .O(SALIDA[7]));   // d:/documentos/escom/quinto semestre/arquitectura de computadoras/practica 2/practica2intento2/unidadcontrol.vhd(10[2:8])
    FD1S1A PC_5__I_0_1034_i2 (.D(PC_5__N_121[1]), .CK(edo_presente_N_127), 
           .Q(PC[1])) /* synthesis lse_init_val=0 */ ;   // d:/documentos/escom/quinto semestre/arquitectura de computadoras/practica 2/practica2intento2/unidadcontrol.vhd(66[2] 115[16])
    defparam PC_5__I_0_1034_i2.GSR = "ENABLED";
    FD1S1A PC_5__I_0_1034_i3 (.D(PC_5__N_121[2]), .CK(edo_presente_N_127), 
           .Q(PC[2])) /* synthesis lse_init_val=0 */ ;   // d:/documentos/escom/quinto semestre/arquitectura de computadoras/practica 2/practica2intento2/unidadcontrol.vhd(66[2] 115[16])
    defparam PC_5__I_0_1034_i3.GSR = "ENABLED";
    FD1S1A PC_5__I_0_1034_i4 (.D(PC_5__N_121[3]), .CK(edo_presente_N_127), 
           .Q(PC[3])) /* synthesis lse_init_val=0 */ ;   // d:/documentos/escom/quinto semestre/arquitectura de computadoras/practica 2/practica2intento2/unidadcontrol.vhd(66[2] 115[16])
    defparam PC_5__I_0_1034_i4.GSR = "ENABLED";
    FD1S1A PC_5__I_0_1034_i5 (.D(PC_5__N_121[4]), .CK(edo_presente_N_127), 
           .Q(PC[4])) /* synthesis lse_init_val=0 */ ;   // d:/documentos/escom/quinto semestre/arquitectura de computadoras/practica 2/practica2intento2/unidadcontrol.vhd(66[2] 115[16])
    defparam PC_5__I_0_1034_i5.GSR = "ENABLED";
    FD1S1A PC_5__I_0_1035_i2 (.D(PC[1]), .CK(edo_presente_N_127), .Q(MAR[1]));   // d:/documentos/escom/quinto semestre/arquitectura de computadoras/practica 2/practica2intento2/unidadcontrol.vhd(66[2] 115[16])
    defparam PC_5__I_0_1035_i2.GSR = "ENABLED";
    FD1S1A PC_5__I_0_1035_i3 (.D(PC[2]), .CK(edo_presente_N_127), .Q(MAR[2]));   // d:/documentos/escom/quinto semestre/arquitectura de computadoras/practica 2/practica2intento2/unidadcontrol.vhd(66[2] 115[16])
    defparam PC_5__I_0_1035_i3.GSR = "ENABLED";
    FD1S1A PC_5__I_0_1035_i4 (.D(PC[3]), .CK(edo_presente_N_127), .Q(MAR[3]));   // d:/documentos/escom/quinto semestre/arquitectura de computadoras/practica 2/practica2intento2/unidadcontrol.vhd(66[2] 115[16])
    defparam PC_5__I_0_1035_i4.GSR = "ENABLED";
    FD1S1A PC_5__I_0_1035_i5 (.D(PC[4]), .CK(edo_presente_N_127), .Q(MAR[4]));   // d:/documentos/escom/quinto semestre/arquitectura de computadoras/practica 2/practica2intento2/unidadcontrol.vhd(66[2] 115[16])
    defparam PC_5__I_0_1035_i5.GSR = "ENABLED";
    OB SALIDA_pad_8 (.I(SALIDA_c_8), .O(SALIDA[8]));   // d:/documentos/escom/quinto semestre/arquitectura de computadoras/practica 2/practica2intento2/unidadcontrol.vhd(10[2:8])
    LUT4 i1_2_lut_3_lut_adj_80 (.A(edo_presente), .B(IR[5]), .C(IR[4]), 
         .Z(RC_9__N_8)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;
    defparam i1_2_lut_3_lut_adj_80.init = 16'h0808;
    LUT4 i29_3_lut (.A(RC[4]), .B(RD[4]), .C(Data_out_27__N_128[15]), 
         .Z(n13_adj_421)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/documentos/escom/quinto semestre/arquitectura de computadoras/practica 2/practica2intento2/unidadcontrol.vhd(89[3] 97[10])
    defparam i29_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_3_lut_adj_81 (.A(edo_presente), .B(IR[5]), .C(IR[4]), 
         .Z(RD_9__N_14)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i1_2_lut_3_lut_adj_81.init = 16'h8080;
    LUT4 RD_3__I_0_3_lut_4_lut (.A(Data_out_27__N_128[0]), .B(Data_out_27__N_128[14]), 
         .C(RC[3]), .D(RD[3]), .Z(B_AUX_9__N_102)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;   // d:/documentos/escom/quinto semestre/arquitectura de computadoras/practica 2/practica2intento2/unidadcontrol.vhd(84[9:31])
    defparam RD_3__I_0_3_lut_4_lut.init = 16'hfb40;
    LUT4 RD_2__I_0_3_lut_4_lut (.A(Data_out_27__N_128[0]), .B(Data_out_27__N_128[14]), 
         .C(RC[2]), .D(RD[2]), .Z(B_AUX_9__N_106)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;   // d:/documentos/escom/quinto semestre/arquitectura de computadoras/practica 2/practica2intento2/unidadcontrol.vhd(84[9:31])
    defparam RD_2__I_0_3_lut_4_lut.init = 16'hfb40;
    LUT4 A_AUX_9__I_11_3_lut_3_lut (.A(IR[5]), .B(Data_out_27__N_128[14]), 
         .C(RB[4]), .Z(A_AUX_9__N_45)) /* synthesis lut_function=(A (C)+!A (B)) */ ;   // d:/documentos/escom/quinto semestre/arquitectura de computadoras/practica 2/practica2intento2/unidadcontrol.vhd(106[9:30])
    defparam A_AUX_9__I_11_3_lut_3_lut.init = 16'he4e4;
    LUT4 i1093_2_lut_3_lut_4_lut (.A(PC[1]), .B(PC[0]), .C(PC[3]), .D(PC[2]), 
         .Z(PC_5__N_121[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // C:/lscc/diamond/3.12/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1093_2_lut_3_lut_4_lut.init = 16'h78f0;
    LUT4 B_AUX_9__I_37_3_lut_4_lut (.A(Data_out_27__N_128[0]), .B(Data_out_27__N_128[14]), 
         .C(RA[2]), .D(RB[2]), .Z(B_AUX_9__N_105)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;   // d:/documentos/escom/quinto semestre/arquitectura de computadoras/practica 2/practica2intento2/unidadcontrol.vhd(80[6:28])
    defparam B_AUX_9__I_37_3_lut_4_lut.init = 16'hfe10;
    LUT4 B_AUX_9__I_35_3_lut_4_lut (.A(Data_out_27__N_128[0]), .B(Data_out_27__N_128[14]), 
         .C(RA[3]), .D(RB[3]), .Z(B_AUX_9__N_101)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;   // d:/documentos/escom/quinto semestre/arquitectura de computadoras/practica 2/practica2intento2/unidadcontrol.vhd(80[6:28])
    defparam B_AUX_9__I_35_3_lut_4_lut.init = 16'hfe10;
    LUT4 i29_3_lut_adj_82 (.A(RC[3]), .B(RD[3]), .C(Data_out_27__N_128[15]), 
         .Z(n13_adj_420)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/documentos/escom/quinto semestre/arquitectura de computadoras/practica 2/practica2intento2/unidadcontrol.vhd(89[3] 97[10])
    defparam i29_3_lut_adj_82.init = 16'hcaca;
    LUT4 B_AUX_9__I_30_3_lut_3_lut (.A(IR[5]), .B(Data_out_27__N_128[15]), 
         .C(B_AUX_9__N_93), .Z(B_AUX_9__N_92)) /* synthesis lut_function=(A (C)+!A (B)) */ ;   // d:/documentos/escom/quinto semestre/arquitectura de computadoras/practica 2/practica2intento2/unidadcontrol.vhd(106[9:30])
    defparam B_AUX_9__I_30_3_lut_3_lut.init = 16'he4e4;
    LUT4 i1077_1_lut (.A(PC[0]), .Z(PC_5__N_121[0])) /* synthesis lut_function=(!(A)) */ ;   // C:/lscc/diamond/3.12/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1077_1_lut.init = 16'h5555;
    LUT4 B_AUX_9__I_32_3_lut_3_lut (.A(IR[5]), .B(Data_out_27__N_128[15]), 
         .C(B_AUX_9__N_97), .Z(B_AUX_9__N_96)) /* synthesis lut_function=(A (C)+!A (B)) */ ;   // d:/documentos/escom/quinto semestre/arquitectura de computadoras/practica 2/practica2intento2/unidadcontrol.vhd(106[9:30])
    defparam B_AUX_9__I_32_3_lut_3_lut.init = 16'he4e4;
    LUT4 i1079_2_lut (.A(PC[1]), .B(PC[0]), .Z(PC_5__N_121[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // C:/lscc/diamond/3.12/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1079_2_lut.init = 16'h6666;
    LUT4 i29_3_lut_adj_83 (.A(RC[1]), .B(RD[1]), .C(Data_out_27__N_128[15]), 
         .Z(n13)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/documentos/escom/quinto semestre/arquitectura de computadoras/practica 2/practica2intento2/unidadcontrol.vhd(89[3] 97[10])
    defparam i29_3_lut_adj_83.init = 16'hcaca;
    PFUMX MBR_11__I_0 (.BLUT(A_AUX_9__N_58), .ALUT(A_AUX_9__N_57), .C0(n2053), 
          .Z(A_AUX_9__N_56));
    LUT4 B_AUX_9__I_34_3_lut_3_lut (.A(IR[5]), .B(Data_out_27__N_128[15]), 
         .C(B_AUX_9__N_101), .Z(B_AUX_9__N_100)) /* synthesis lut_function=(A (C)+!A (B)) */ ;   // d:/documentos/escom/quinto semestre/arquitectura de computadoras/practica 2/practica2intento2/unidadcontrol.vhd(106[9:30])
    defparam B_AUX_9__I_34_3_lut_3_lut.init = 16'he4e4;
    LUT4 i29_3_lut_adj_84 (.A(RC[2]), .B(RD[2]), .C(Data_out_27__N_128[15]), 
         .Z(n13_adj_419)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/documentos/escom/quinto semestre/arquitectura de computadoras/practica 2/practica2intento2/unidadcontrol.vhd(89[3] 97[10])
    defparam i29_3_lut_adj_84.init = 16'hcaca;
    PFUMX MBR_12__I_0 (.BLUT(A_AUX_9__N_54), .ALUT(A_AUX_9__N_53), .C0(n2053), 
          .Z(A_AUX_9__N_52));
    LUT4 i1081_2_lut_rep_12 (.A(PC[1]), .B(PC[0]), .Z(n2133)) /* synthesis lut_function=(A (B)) */ ;   // C:/lscc/diamond/3.12/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1081_2_lut_rep_12.init = 16'h8888;
    LUT4 B_AUX_9__I_36_3_lut_3_lut (.A(IR[5]), .B(Data_out_27__N_128[2]), 
         .C(B_AUX_9__N_105), .Z(B_AUX_9__N_104)) /* synthesis lut_function=(A (C)+!A (B)) */ ;   // d:/documentos/escom/quinto semestre/arquitectura de computadoras/practica 2/practica2intento2/unidadcontrol.vhd(106[9:30])
    defparam B_AUX_9__I_36_3_lut_3_lut.init = 16'he4e4;
    FD1S1A SALIDA_9__I_0_i1 (.D(SALIDA_c_0), .CK(RD_9__N_14), .Q(RD[0]));   // d:/documentos/escom/quinto semestre/arquitectura de computadoras/practica 2/practica2intento2/unidadcontrol.vhd(66[2] 115[16])
    defparam SALIDA_9__I_0_i1.GSR = "ENABLED";
    PFUMX MBR_13__I_0 (.BLUT(A_AUX_9__N_50), .ALUT(A_AUX_9__N_49), .C0(n2053), 
          .Z(A_AUX_9__N_48));
    LUT4 RD_4__I_0_3_lut_4_lut (.A(Data_out_27__N_128[0]), .B(Data_out_27__N_128[14]), 
         .C(RC[4]), .D(RD[4]), .Z(B_AUX_9__N_98)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;   // d:/documentos/escom/quinto semestre/arquitectura de computadoras/practica 2/practica2intento2/unidadcontrol.vhd(84[9:31])
    defparam RD_4__I_0_3_lut_4_lut.init = 16'hfb40;
    PFUMX i1751 (.BLUT(n2143), .ALUT(n2144), .C0(Data_out_27__N_128[0]), 
          .Z(B_AUX_9__N_107));
    LUT4 i1086_2_lut_3_lut (.A(PC[1]), .B(PC[0]), .C(PC[2]), .Z(PC_5__N_121[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // C:/lscc/diamond/3.12/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1086_2_lut_3_lut.init = 16'h7878;
    PFUMX MBR_14__I_0 (.BLUT(A_AUX_9__N_46), .ALUT(A_AUX_9__N_45), .C0(n2053), 
          .Z(A_AUX_9__N_44));
    PFUMX i1749 (.BLUT(n2140), .ALUT(n2141), .C0(Data_out_27__N_128[0]), 
          .Z(B_AUX_9__N_111));
    ALU CALL1 (.FACT1_5__N_310(FACT1_5__N_310), .n1704(n1704), .\B_AUX[0] (B_AUX[0]), 
        .\A_AUX[1] (A_AUX[1]), .\A_AUX[2] (A_AUX[2]), .\A_AUX[3] (A_AUX[3]), 
        .\A_AUX[4] (A_AUX[4]), .\A_AUX[5] (A_AUX[5]), .\B_AUX[1] (B_AUX[1]), 
        .\B_AUX[2] (B_AUX[2]), .\B_AUX[3] (B_AUX[3]), .\B_AUX[4] (B_AUX[4]), 
        .\B_AUX[5] (B_AUX[5]), .\A_AUX[0] (A_AUX[0]), .SALIDA_c_0(SALIDA_c_0), 
        .GND_net(GND_net), .SALIDA_c_1(SALIDA_c_1), .SALIDA_c_10(SALIDA_c_10), 
        .SALIDA_c_11(SALIDA_c_11), .SALIDA_c_8(SALIDA_c_8), .SALIDA_c_9(SALIDA_c_9), 
        .SALIDA_c_6(SALIDA_c_6), .SALIDA_c_7(SALIDA_c_7), .SALIDA_c_5(SALIDA_c_5), 
        .SALIDA_c_4(SALIDA_c_4), .SALIDA_c_3(SALIDA_c_3), .SALIDA_c_2(SALIDA_c_2));   // d:/documentos/escom/quinto semestre/arquitectura de computadoras/practica 2/practica2intento2/unidadcontrol.vhd(139[8:11])
    VLO i1 (.Z(GND_net));
    PFUMX i1747 (.BLUT(n2137), .ALUT(n2138), .C0(Data_out_27__N_128[15]), 
          .Z(A_AUX_9__N_40));
    TSALL TSALL_INST (.TSALL(GND_net));
    ROM CALL0 (.\MAR[0] (MAR[0]), .\MAR[1] (MAR[1]), .\MAR[2] (MAR[2]), 
        .\MAR[3] (MAR[3]), .\MAR[4] (MAR[4]), .\Data_out_27__N_128[0] (Data_out_27__N_128[0]), 
        .m_clk_c(m_clk_c), .\Data_out_27__N_128[27] (Data_out_27__N_128[27]), 
        .\Data_out_27__N_128[24] (Data_out_27__N_128[24]), .\Data_out_27__N_128[23] (Data_out_27__N_128[23]), 
        .\Data_out_27__N_128[22] (Data_out_27__N_128[22]), .\Data_out_27__N_128[21] (Data_out_27__N_128[21]), 
        .\Data_out_27__N_128[20] (Data_out_27__N_128[20]), .\Data_out_27__N_128[15] (Data_out_27__N_128[15]), 
        .\Data_out_27__N_128[14] (Data_out_27__N_128[14]), .\Data_out_27__N_128[13] (Data_out_27__N_128[13]), 
        .\Data_out_27__N_128[12] (Data_out_27__N_128[12]), .\Data_out_27__N_128[10] (Data_out_27__N_128[10]), 
        .\Data_out_27__N_128[2] (Data_out_27__N_128[2]));   // d:/documentos/escom/quinto semestre/arquitectura de computadoras/practica 2/practica2intento2/unidadcontrol.vhd(134[8:11])
    PFUMX MBR_2__I_0 (.BLUT(B_AUX_9__N_106), .ALUT(B_AUX_9__N_104), .C0(n2028), 
          .Z(B_AUX_9__N_103));
    PFUMX i1745 (.BLUT(n2134), .ALUT(n2135), .C0(Data_out_27__N_128[15]), 
          .Z(A_AUX_9__N_60));
    GSR GSR_INST (.GSR(VCC_net));
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    PFUMX MBR_3__I_0 (.BLUT(B_AUX_9__N_102), .ALUT(B_AUX_9__N_100), .C0(n2028), 
          .Z(B_AUX_9__N_99));
    
endmodule
//
// Verilog Description of module ALU
//

module ALU (FACT1_5__N_310, n1704, \B_AUX[0] , \A_AUX[1] , \A_AUX[2] , 
            \A_AUX[3] , \A_AUX[4] , \A_AUX[5] , \B_AUX[1] , \B_AUX[2] , 
            \B_AUX[3] , \B_AUX[4] , \B_AUX[5] , \A_AUX[0] , SALIDA_c_0, 
            GND_net, SALIDA_c_1, SALIDA_c_10, SALIDA_c_11, SALIDA_c_8, 
            SALIDA_c_9, SALIDA_c_6, SALIDA_c_7, SALIDA_c_5, SALIDA_c_4, 
            SALIDA_c_3, SALIDA_c_2);
    input FACT1_5__N_310;
    input n1704;
    input \B_AUX[0] ;
    input \A_AUX[1] ;
    input \A_AUX[2] ;
    input \A_AUX[3] ;
    input \A_AUX[4] ;
    input \A_AUX[5] ;
    input \B_AUX[1] ;
    input \B_AUX[2] ;
    input \B_AUX[3] ;
    input \B_AUX[4] ;
    input \B_AUX[5] ;
    input \A_AUX[0] ;
    output SALIDA_c_0;
    input GND_net;
    output SALIDA_c_1;
    output SALIDA_c_10;
    output SALIDA_c_11;
    output SALIDA_c_8;
    output SALIDA_c_9;
    output SALIDA_c_6;
    output SALIDA_c_7;
    output SALIDA_c_5;
    output SALIDA_c_4;
    output SALIDA_c_3;
    output SALIDA_c_2;
    
    wire [5:0]FACT2;   // d:/documentos/escom/quinto semestre/arquitectura de computadoras/practica 2/practica2intento2/alu.vhd(30[9:14])
    wire [5:0]FACT1;   // d:/documentos/escom/quinto semestre/arquitectura de computadoras/practica 2/practica2intento2/alu.vhd(29[9:14])
    
    FD1S1I FACT2_5__I_0_i1 (.D(\B_AUX[0] ), .CK(FACT1_5__N_310), .CD(n1704), 
           .Q(FACT2[0])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=8, LSE_RCOL=11, LSE_LLINE=139, LSE_RLINE=139 */ ;   // d:/documentos/escom/quinto semestre/arquitectura de computadoras/practica 2/practica2intento2/alu.vhd(85[2] 122[24])
    defparam FACT2_5__I_0_i1.GSR = "ENABLED";
    FD1S1I FACT1_5__I_0_i2 (.D(\A_AUX[1] ), .CK(FACT1_5__N_310), .CD(n1704), 
           .Q(FACT1[1])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=8, LSE_RCOL=11, LSE_LLINE=139, LSE_RLINE=139 */ ;   // d:/documentos/escom/quinto semestre/arquitectura de computadoras/practica 2/practica2intento2/alu.vhd(85[2] 122[24])
    defparam FACT1_5__I_0_i2.GSR = "ENABLED";
    FD1S1I FACT1_5__I_0_i3 (.D(\A_AUX[2] ), .CK(FACT1_5__N_310), .CD(n1704), 
           .Q(FACT1[2])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=8, LSE_RCOL=11, LSE_LLINE=139, LSE_RLINE=139 */ ;   // d:/documentos/escom/quinto semestre/arquitectura de computadoras/practica 2/practica2intento2/alu.vhd(85[2] 122[24])
    defparam FACT1_5__I_0_i3.GSR = "ENABLED";
    FD1S1I FACT1_5__I_0_i4 (.D(\A_AUX[3] ), .CK(FACT1_5__N_310), .CD(n1704), 
           .Q(FACT1[3])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=8, LSE_RCOL=11, LSE_LLINE=139, LSE_RLINE=139 */ ;   // d:/documentos/escom/quinto semestre/arquitectura de computadoras/practica 2/practica2intento2/alu.vhd(85[2] 122[24])
    defparam FACT1_5__I_0_i4.GSR = "ENABLED";
    FD1S1I FACT1_5__I_0_i5 (.D(\A_AUX[4] ), .CK(FACT1_5__N_310), .CD(n1704), 
           .Q(FACT1[4])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=8, LSE_RCOL=11, LSE_LLINE=139, LSE_RLINE=139 */ ;   // d:/documentos/escom/quinto semestre/arquitectura de computadoras/practica 2/practica2intento2/alu.vhd(85[2] 122[24])
    defparam FACT1_5__I_0_i5.GSR = "ENABLED";
    FD1S1I FACT1_5__I_0_i6 (.D(\A_AUX[5] ), .CK(FACT1_5__N_310), .CD(n1704), 
           .Q(FACT1[5])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=8, LSE_RCOL=11, LSE_LLINE=139, LSE_RLINE=139 */ ;   // d:/documentos/escom/quinto semestre/arquitectura de computadoras/practica 2/practica2intento2/alu.vhd(85[2] 122[24])
    defparam FACT1_5__I_0_i6.GSR = "ENABLED";
    FD1S1I FACT2_5__I_0_i2 (.D(\B_AUX[1] ), .CK(FACT1_5__N_310), .CD(n1704), 
           .Q(FACT2[1])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=8, LSE_RCOL=11, LSE_LLINE=139, LSE_RLINE=139 */ ;   // d:/documentos/escom/quinto semestre/arquitectura de computadoras/practica 2/practica2intento2/alu.vhd(85[2] 122[24])
    defparam FACT2_5__I_0_i2.GSR = "ENABLED";
    FD1S1I FACT2_5__I_0_i3 (.D(\B_AUX[2] ), .CK(FACT1_5__N_310), .CD(n1704), 
           .Q(FACT2[2])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=8, LSE_RCOL=11, LSE_LLINE=139, LSE_RLINE=139 */ ;   // d:/documentos/escom/quinto semestre/arquitectura de computadoras/practica 2/practica2intento2/alu.vhd(85[2] 122[24])
    defparam FACT2_5__I_0_i3.GSR = "ENABLED";
    FD1S1I FACT2_5__I_0_i4 (.D(\B_AUX[3] ), .CK(FACT1_5__N_310), .CD(n1704), 
           .Q(FACT2[3])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=8, LSE_RCOL=11, LSE_LLINE=139, LSE_RLINE=139 */ ;   // d:/documentos/escom/quinto semestre/arquitectura de computadoras/practica 2/practica2intento2/alu.vhd(85[2] 122[24])
    defparam FACT2_5__I_0_i4.GSR = "ENABLED";
    FD1S1I FACT2_5__I_0_i5 (.D(\B_AUX[4] ), .CK(FACT1_5__N_310), .CD(n1704), 
           .Q(FACT2[4])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=8, LSE_RCOL=11, LSE_LLINE=139, LSE_RLINE=139 */ ;   // d:/documentos/escom/quinto semestre/arquitectura de computadoras/practica 2/practica2intento2/alu.vhd(85[2] 122[24])
    defparam FACT2_5__I_0_i5.GSR = "ENABLED";
    FD1S1I FACT2_5__I_0_i6 (.D(\B_AUX[5] ), .CK(FACT1_5__N_310), .CD(n1704), 
           .Q(FACT2[5])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=8, LSE_RCOL=11, LSE_LLINE=139, LSE_RLINE=139 */ ;   // d:/documentos/escom/quinto semestre/arquitectura de computadoras/practica 2/practica2intento2/alu.vhd(85[2] 122[24])
    defparam FACT2_5__I_0_i6.GSR = "ENABLED";
    FD1S1I FACT1_5__I_0_i1 (.D(\A_AUX[0] ), .CK(FACT1_5__N_310), .CD(n1704), 
           .Q(FACT1[0])) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=8, LSE_RCOL=11, LSE_LLINE=139, LSE_RLINE=139 */ ;   // d:/documentos/escom/quinto semestre/arquitectura de computadoras/practica 2/practica2intento2/alu.vhd(85[2] 122[24])
    defparam FACT1_5__I_0_i1.GSR = "ENABLED";
    \mult_comb_gen(6)  CALL2 (.FACT1({FACT1}), .FACT2({FACT2}), .SALIDA_c_0(SALIDA_c_0), 
            .GND_net(GND_net), .SALIDA_c_1(SALIDA_c_1), .SALIDA_c_10(SALIDA_c_10), 
            .SALIDA_c_11(SALIDA_c_11), .SALIDA_c_8(SALIDA_c_8), .SALIDA_c_9(SALIDA_c_9), 
            .SALIDA_c_6(SALIDA_c_6), .SALIDA_c_7(SALIDA_c_7), .SALIDA_c_5(SALIDA_c_5), 
            .SALIDA_c_4(SALIDA_c_4), .SALIDA_c_3(SALIDA_c_3), .SALIDA_c_2(SALIDA_c_2));   // d:/documentos/escom/quinto semestre/arquitectura de computadoras/practica 2/practica2intento2/alu.vhd(126[8:21])
    
endmodule
//
// Verilog Description of module \mult_comb_gen(6) 
//

module \mult_comb_gen(6)  (FACT1, FACT2, SALIDA_c_0, GND_net, SALIDA_c_1, 
            SALIDA_c_10, SALIDA_c_11, SALIDA_c_8, SALIDA_c_9, SALIDA_c_6, 
            SALIDA_c_7, SALIDA_c_5, SALIDA_c_4, SALIDA_c_3, SALIDA_c_2);
    input [5:0]FACT1;
    input [5:0]FACT2;
    output SALIDA_c_0;
    input GND_net;
    output SALIDA_c_1;
    output SALIDA_c_10;
    output SALIDA_c_11;
    output SALIDA_c_8;
    output SALIDA_c_9;
    output SALIDA_c_6;
    output SALIDA_c_7;
    output SALIDA_c_5;
    output SALIDA_c_4;
    output SALIDA_c_3;
    output SALIDA_c_2;
    
    
    wire n1862;
    wire [6:0]\resul[2] ;   // d:/documentos/escom/quinto semestre/arquitectura de computadoras/practica 2/practica2intento2/multiplicador.vhd(19[9:14])
    
    wire n1861, n1860, n1859;
    wire [6:0]\resul[5] ;   // d:/documentos/escom/quinto semestre/arquitectura de computadoras/practica 2/practica2intento2/multiplicador.vhd(19[9:14])
    
    wire n1858, n1857, n1856;
    wire [6:0]\resul[4] ;   // d:/documentos/escom/quinto semestre/arquitectura de computadoras/practica 2/practica2intento2/multiplicador.vhd(19[9:14])
    
    wire n1855, n1854, n1853;
    wire [6:0]\resul[3] ;   // d:/documentos/escom/quinto semestre/arquitectura de computadoras/practica 2/practica2intento2/multiplicador.vhd(19[9:14])
    
    wire n1852, n1851, n1850, n1849, n1848;
    
    LUT4 i1413_2_lut (.A(FACT1[0]), .B(FACT2[0]), .Z(SALIDA_c_0)) /* synthesis lut_function=(A (B)) */ ;   // d:/documentos/escom/quinto semestre/arquitectura de computadoras/practica 2/practica2intento2/multiplicador.vhd(22[17:63])
    defparam i1413_2_lut.init = 16'h8888;
    CCU2D add_21_7 (.A0(FACT1[5]), .B0(FACT2[1]), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1862), 
          .S0(\resul[2] [5]), .S1(\resul[2] [6]));   // C:/lscc/diamond/3.12/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam add_21_7.INIT0 = 16'h7888;
    defparam add_21_7.INIT1 = 16'h0000;
    defparam add_21_7.INJECT1_0 = "NO";
    defparam add_21_7.INJECT1_1 = "NO";
    CCU2D add_21_5 (.A0(FACT1[4]), .B0(FACT2[0]), .C0(FACT1[3]), .D0(FACT2[1]), 
          .A1(FACT1[5]), .B1(FACT2[0]), .C1(FACT1[4]), .D1(FACT2[1]), 
          .CIN(n1861), .COUT(n1862), .S0(\resul[2] [3]), .S1(\resul[2] [4]));   // C:/lscc/diamond/3.12/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam add_21_5.INIT0 = 16'h7888;
    defparam add_21_5.INIT1 = 16'h7888;
    defparam add_21_5.INJECT1_0 = "NO";
    defparam add_21_5.INJECT1_1 = "NO";
    CCU2D add_21_3 (.A0(FACT1[2]), .B0(FACT2[0]), .C0(FACT1[1]), .D0(FACT2[1]), 
          .A1(FACT1[3]), .B1(FACT2[0]), .C1(FACT1[2]), .D1(FACT2[1]), 
          .CIN(n1860), .COUT(n1861), .S0(\resul[2] [1]), .S1(\resul[2] [2]));   // C:/lscc/diamond/3.12/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam add_21_3.INIT0 = 16'h7888;
    defparam add_21_3.INIT1 = 16'h7888;
    defparam add_21_3.INJECT1_0 = "NO";
    defparam add_21_3.INJECT1_1 = "NO";
    CCU2D add_21_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(FACT1[1]), .B1(FACT2[0]), .C1(FACT1[0]), .D1(FACT2[1]), 
          .COUT(n1860), .S1(SALIDA_c_1));   // C:/lscc/diamond/3.12/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam add_21_1.INIT0 = 16'hF000;
    defparam add_21_1.INIT1 = 16'h7888;
    defparam add_21_1.INJECT1_0 = "NO";
    defparam add_21_1.INJECT1_1 = "NO";
    CCU2D add_25_7 (.A0(FACT1[5]), .B0(FACT2[5]), .C0(\resul[5] [6]), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1859), .S0(SALIDA_c_10), .S1(SALIDA_c_11));   // C:/lscc/diamond/3.12/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam add_25_7.INIT0 = 16'h7878;
    defparam add_25_7.INIT1 = 16'h0000;
    defparam add_25_7.INJECT1_0 = "NO";
    defparam add_25_7.INJECT1_1 = "NO";
    CCU2D add_25_5 (.A0(FACT1[3]), .B0(FACT2[5]), .C0(\resul[5] [4]), 
          .D0(GND_net), .A1(FACT1[4]), .B1(FACT2[5]), .C1(\resul[5] [5]), 
          .D1(GND_net), .CIN(n1858), .COUT(n1859), .S0(SALIDA_c_8), 
          .S1(SALIDA_c_9));   // C:/lscc/diamond/3.12/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam add_25_5.INIT0 = 16'h7878;
    defparam add_25_5.INIT1 = 16'h7878;
    defparam add_25_5.INJECT1_0 = "NO";
    defparam add_25_5.INJECT1_1 = "NO";
    CCU2D add_25_3 (.A0(FACT1[1]), .B0(FACT2[5]), .C0(\resul[5] [2]), 
          .D0(GND_net), .A1(FACT1[2]), .B1(FACT2[5]), .C1(\resul[5] [3]), 
          .D1(GND_net), .CIN(n1857), .COUT(n1858), .S0(SALIDA_c_6), 
          .S1(SALIDA_c_7));   // C:/lscc/diamond/3.12/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam add_25_3.INIT0 = 16'h7878;
    defparam add_25_3.INIT1 = 16'h7878;
    defparam add_25_3.INJECT1_0 = "NO";
    defparam add_25_3.INJECT1_1 = "NO";
    CCU2D add_25_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(FACT1[0]), .B1(FACT2[5]), .C1(\resul[5] [1]), .D1(GND_net), 
          .COUT(n1857), .S1(SALIDA_c_5));   // C:/lscc/diamond/3.12/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam add_25_1.INIT0 = 16'hF000;
    defparam add_25_1.INIT1 = 16'h7878;
    defparam add_25_1.INJECT1_0 = "NO";
    defparam add_25_1.INJECT1_1 = "NO";
    CCU2D add_24_7 (.A0(FACT1[5]), .B0(FACT2[4]), .C0(\resul[4] [6]), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1856), .S0(\resul[5] [5]), .S1(\resul[5] [6]));   // C:/lscc/diamond/3.12/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam add_24_7.INIT0 = 16'h7878;
    defparam add_24_7.INIT1 = 16'h0000;
    defparam add_24_7.INJECT1_0 = "NO";
    defparam add_24_7.INJECT1_1 = "NO";
    CCU2D add_24_5 (.A0(FACT1[3]), .B0(FACT2[4]), .C0(\resul[4] [4]), 
          .D0(GND_net), .A1(FACT1[4]), .B1(FACT2[4]), .C1(\resul[4] [5]), 
          .D1(GND_net), .CIN(n1855), .COUT(n1856), .S0(\resul[5] [3]), 
          .S1(\resul[5] [4]));   // C:/lscc/diamond/3.12/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam add_24_5.INIT0 = 16'h7878;
    defparam add_24_5.INIT1 = 16'h7878;
    defparam add_24_5.INJECT1_0 = "NO";
    defparam add_24_5.INJECT1_1 = "NO";
    CCU2D add_24_3 (.A0(FACT1[1]), .B0(FACT2[4]), .C0(\resul[4] [2]), 
          .D0(GND_net), .A1(FACT1[2]), .B1(FACT2[4]), .C1(\resul[4] [3]), 
          .D1(GND_net), .CIN(n1854), .COUT(n1855), .S0(\resul[5] [1]), 
          .S1(\resul[5] [2]));   // C:/lscc/diamond/3.12/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam add_24_3.INIT0 = 16'h7878;
    defparam add_24_3.INIT1 = 16'h7878;
    defparam add_24_3.INJECT1_0 = "NO";
    defparam add_24_3.INJECT1_1 = "NO";
    CCU2D add_24_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(FACT1[0]), .B1(FACT2[4]), .C1(\resul[4] [1]), .D1(GND_net), 
          .COUT(n1854), .S1(SALIDA_c_4));   // C:/lscc/diamond/3.12/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam add_24_1.INIT0 = 16'hF000;
    defparam add_24_1.INIT1 = 16'h7878;
    defparam add_24_1.INJECT1_0 = "NO";
    defparam add_24_1.INJECT1_1 = "NO";
    CCU2D add_23_7 (.A0(FACT1[5]), .B0(FACT2[3]), .C0(\resul[3] [6]), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1853), .S0(\resul[4] [5]), .S1(\resul[4] [6]));   // C:/lscc/diamond/3.12/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam add_23_7.INIT0 = 16'h7878;
    defparam add_23_7.INIT1 = 16'h0000;
    defparam add_23_7.INJECT1_0 = "NO";
    defparam add_23_7.INJECT1_1 = "NO";
    CCU2D add_23_5 (.A0(FACT1[3]), .B0(FACT2[3]), .C0(\resul[3] [4]), 
          .D0(GND_net), .A1(FACT1[4]), .B1(FACT2[3]), .C1(\resul[3] [5]), 
          .D1(GND_net), .CIN(n1852), .COUT(n1853), .S0(\resul[4] [3]), 
          .S1(\resul[4] [4]));   // C:/lscc/diamond/3.12/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam add_23_5.INIT0 = 16'h7878;
    defparam add_23_5.INIT1 = 16'h7878;
    defparam add_23_5.INJECT1_0 = "NO";
    defparam add_23_5.INJECT1_1 = "NO";
    CCU2D add_23_3 (.A0(FACT1[1]), .B0(FACT2[3]), .C0(\resul[3] [2]), 
          .D0(GND_net), .A1(FACT1[2]), .B1(FACT2[3]), .C1(\resul[3] [3]), 
          .D1(GND_net), .CIN(n1851), .COUT(n1852), .S0(\resul[4] [1]), 
          .S1(\resul[4] [2]));   // C:/lscc/diamond/3.12/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam add_23_3.INIT0 = 16'h7878;
    defparam add_23_3.INIT1 = 16'h7878;
    defparam add_23_3.INJECT1_0 = "NO";
    defparam add_23_3.INJECT1_1 = "NO";
    CCU2D add_23_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(FACT1[0]), .B1(FACT2[3]), .C1(\resul[3] [1]), .D1(GND_net), 
          .COUT(n1851), .S1(SALIDA_c_3));   // C:/lscc/diamond/3.12/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam add_23_1.INIT0 = 16'hF000;
    defparam add_23_1.INIT1 = 16'h7878;
    defparam add_23_1.INJECT1_0 = "NO";
    defparam add_23_1.INJECT1_1 = "NO";
    CCU2D add_22_7 (.A0(FACT1[5]), .B0(FACT2[2]), .C0(\resul[2] [6]), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1850), .S0(\resul[3] [5]), .S1(\resul[3] [6]));   // C:/lscc/diamond/3.12/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam add_22_7.INIT0 = 16'h7878;
    defparam add_22_7.INIT1 = 16'h0000;
    defparam add_22_7.INJECT1_0 = "NO";
    defparam add_22_7.INJECT1_1 = "NO";
    CCU2D add_22_5 (.A0(FACT1[3]), .B0(FACT2[2]), .C0(\resul[2] [4]), 
          .D0(GND_net), .A1(FACT1[4]), .B1(FACT2[2]), .C1(\resul[2] [5]), 
          .D1(GND_net), .CIN(n1849), .COUT(n1850), .S0(\resul[3] [3]), 
          .S1(\resul[3] [4]));   // C:/lscc/diamond/3.12/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam add_22_5.INIT0 = 16'h7878;
    defparam add_22_5.INIT1 = 16'h7878;
    defparam add_22_5.INJECT1_0 = "NO";
    defparam add_22_5.INJECT1_1 = "NO";
    CCU2D add_22_3 (.A0(FACT1[1]), .B0(FACT2[2]), .C0(\resul[2] [2]), 
          .D0(GND_net), .A1(FACT1[2]), .B1(FACT2[2]), .C1(\resul[2] [3]), 
          .D1(GND_net), .CIN(n1848), .COUT(n1849), .S0(\resul[3] [1]), 
          .S1(\resul[3] [2]));   // C:/lscc/diamond/3.12/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam add_22_3.INIT0 = 16'h7878;
    defparam add_22_3.INIT1 = 16'h7878;
    defparam add_22_3.INJECT1_0 = "NO";
    defparam add_22_3.INJECT1_1 = "NO";
    CCU2D add_22_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(FACT1[0]), .B1(FACT2[2]), .C1(\resul[2] [1]), .D1(GND_net), 
          .COUT(n1848), .S1(SALIDA_c_2));   // C:/lscc/diamond/3.12/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam add_22_1.INIT0 = 16'hF000;
    defparam add_22_1.INIT1 = 16'h7878;
    defparam add_22_1.INJECT1_0 = "NO";
    defparam add_22_1.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

//
// Verilog Description of module ROM
//

module ROM (\MAR[0] , \MAR[1] , \MAR[2] , \MAR[3] , \MAR[4] , \Data_out_27__N_128[0] , 
            m_clk_c, \Data_out_27__N_128[27] , \Data_out_27__N_128[24] , 
            \Data_out_27__N_128[23] , \Data_out_27__N_128[22] , \Data_out_27__N_128[21] , 
            \Data_out_27__N_128[20] , \Data_out_27__N_128[15] , \Data_out_27__N_128[14] , 
            \Data_out_27__N_128[13] , \Data_out_27__N_128[12] , \Data_out_27__N_128[10] , 
            \Data_out_27__N_128[2] );
    input \MAR[0] ;
    input \MAR[1] ;
    input \MAR[2] ;
    input \MAR[3] ;
    input \MAR[4] ;
    output \Data_out_27__N_128[0] ;
    input m_clk_c;
    output \Data_out_27__N_128[27] ;
    output \Data_out_27__N_128[24] ;
    output \Data_out_27__N_128[23] ;
    output \Data_out_27__N_128[22] ;
    output \Data_out_27__N_128[21] ;
    output \Data_out_27__N_128[20] ;
    output \Data_out_27__N_128[15] ;
    output \Data_out_27__N_128[14] ;
    output \Data_out_27__N_128[13] ;
    output \Data_out_27__N_128[12] ;
    output \Data_out_27__N_128[10] ;
    output \Data_out_27__N_128[2] ;
    
    wire m_clk_c /* synthesis is_clock=1, SET_AS_NETWORK=m_clk_c */ ;   // d:/documentos/escom/quinto semestre/arquitectura de computadoras/practica 2/practica2intento2/unidadcontrol.vhd(11[2:7])
    
    wire n7, n1487, n7_adj_411, n7_adj_412, n7_adj_413, n7_adj_414, 
        n7_adj_415, n7_adj_416, n1470, n1800, n7_adj_417, n1804, 
        n7_adj_418;
    
    LUT4 i1271_2_lut_3_lut (.A(\MAR[0] ), .B(\MAR[1] ), .C(\MAR[2] ), 
         .Z(n7)) /* synthesis lut_function=(A (B (C)+!B !(C))+!A (C)) */ ;   // d:/documentos/escom/quinto semestre/arquitectura de computadoras/practica 2/practica2intento2/rom.vhd(48[21:42])
    defparam i1271_2_lut_3_lut.init = 16'hd2d2;
    LUT4 i1163_2_lut (.A(\MAR[3] ), .B(\MAR[4] ), .Z(n1487)) /* synthesis lut_function=(A+(B)) */ ;   // d:/documentos/escom/quinto semestre/arquitectura de computadoras/practica 2/practica2intento2/rom.vhd(48[21:42])
    defparam i1163_2_lut.init = 16'heeee;
    FD1S3JX Data_out_i1 (.D(n7_adj_411), .CK(m_clk_c), .PD(n1487), .Q(\Data_out_27__N_128[0] )) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=8, LSE_RCOL=11, LSE_LLINE=134, LSE_RLINE=134 */ ;   // d:/documentos/escom/quinto semestre/arquitectura de computadoras/practica 2/practica2intento2/rom.vhd(43[1] 53[8])
    defparam Data_out_i1.GSR = "ENABLED";
    LUT4 mux_3_Mux_0_i7_3_lut (.A(\MAR[0] ), .B(\MAR[1] ), .C(\MAR[2] ), 
         .Z(n7_adj_411)) /* synthesis lut_function=(A (B (C))+!A (B+!(C))) */ ;   // d:/documentos/escom/quinto semestre/arquitectura de computadoras/practica 2/practica2intento2/rom.vhd(48[21:42])
    defparam mux_3_Mux_0_i7_3_lut.init = 16'hc5c5;
    LUT4 i1420_2_lut (.A(\MAR[1] ), .B(\MAR[2] ), .Z(n7_adj_412)) /* synthesis lut_function=(A (B)) */ ;   // d:/documentos/escom/quinto semestre/arquitectura de computadoras/practica 2/practica2intento2/rom.vhd(48[21:42])
    defparam i1420_2_lut.init = 16'h8888;
    FD1S3JX Data_out_i13 (.D(n7_adj_413), .CK(m_clk_c), .PD(n1487), .Q(\Data_out_27__N_128[27] )) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=8, LSE_RCOL=11, LSE_LLINE=134, LSE_RLINE=134 */ ;   // d:/documentos/escom/quinto semestre/arquitectura de computadoras/practica 2/practica2intento2/rom.vhd(43[1] 53[8])
    defparam Data_out_i13.GSR = "ENABLED";
    LUT4 mux_3_Mux_20_i7_3_lut (.A(\MAR[0] ), .B(\MAR[1] ), .C(\MAR[2] ), 
         .Z(n7_adj_414)) /* synthesis lut_function=(A (B (C)+!B !(C))+!A (B+!(C))) */ ;   // d:/documentos/escom/quinto semestre/arquitectura de computadoras/practica 2/practica2intento2/rom.vhd(48[21:42])
    defparam mux_3_Mux_20_i7_3_lut.init = 16'hc7c7;
    LUT4 mux_3_Mux_25_i7_4_lut_3_lut (.A(\MAR[0] ), .B(\MAR[1] ), .C(\MAR[2] ), 
         .Z(n7_adj_413)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // d:/documentos/escom/quinto semestre/arquitectura de computadoras/practica 2/practica2intento2/rom.vhd(48[21:42])
    defparam mux_3_Mux_25_i7_4_lut_3_lut.init = 16'hd4d4;
    LUT4 mux_3_Mux_23_i7_3_lut_4_lut_3_lut (.A(\MAR[0] ), .B(\MAR[1] ), 
         .C(\MAR[2] ), .Z(n7_adj_415)) /* synthesis lut_function=(A (B+!(C))+!A ((C)+!B)) */ ;   // d:/documentos/escom/quinto semestre/arquitectura de computadoras/practica 2/practica2intento2/rom.vhd(48[21:42])
    defparam mux_3_Mux_23_i7_3_lut_4_lut_3_lut.init = 16'hdbdb;
    LUT4 mux_3_Mux_13_i7_3_lut (.A(\MAR[0] ), .B(\MAR[1] ), .C(\MAR[2] ), 
         .Z(n7_adj_416)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B !(C))) */ ;   // d:/documentos/escom/quinto semestre/arquitectura de computadoras/practica 2/practica2intento2/rom.vhd(48[21:42])
    defparam mux_3_Mux_13_i7_3_lut.init = 16'hc1c1;
    LUT4 i1125_2_lut (.A(\MAR[1] ), .B(\MAR[2] ), .Z(n1470)) /* synthesis lut_function=(A (B)+!A !(B)) */ ;   // d:/documentos/escom/quinto semestre/arquitectura de computadoras/practica 2/practica2intento2/rom.vhd(48[21:42])
    defparam i1125_2_lut.init = 16'h9999;
    LUT4 i1456_3_lut (.A(\MAR[2] ), .B(\MAR[1] ), .C(\MAR[0] ), .Z(n1800)) /* synthesis lut_function=(A (B)+!A (B (C))) */ ;   // d:/documentos/escom/quinto semestre/arquitectura de computadoras/practica 2/practica2intento2/rom.vhd(48[21:42])
    defparam i1456_3_lut.init = 16'hc8c8;
    LUT4 mux_3_Mux_12_i7_3_lut_3_lut (.A(\MAR[0] ), .B(\MAR[1] ), .C(\MAR[2] ), 
         .Z(n7_adj_417)) /* synthesis lut_function=(A (B+!(C))+!A (B (C)+!B !(C))) */ ;   // d:/documentos/escom/quinto semestre/arquitectura de computadoras/practica 2/practica2intento2/rom.vhd(48[21:42])
    defparam mux_3_Mux_12_i7_3_lut_3_lut.init = 16'hcbcb;
    FD1S3JX Data_out_i12 (.D(n7), .CK(m_clk_c), .PD(n1487), .Q(\Data_out_27__N_128[24] )) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=8, LSE_RCOL=11, LSE_LLINE=134, LSE_RLINE=134 */ ;   // d:/documentos/escom/quinto semestre/arquitectura de computadoras/practica 2/practica2intento2/rom.vhd(43[1] 53[8])
    defparam Data_out_i12.GSR = "ENABLED";
    FD1S3JX Data_out_i11 (.D(n7_adj_415), .CK(m_clk_c), .PD(n1487), .Q(\Data_out_27__N_128[23] )) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=8, LSE_RCOL=11, LSE_LLINE=134, LSE_RLINE=134 */ ;   // d:/documentos/escom/quinto semestre/arquitectura de computadoras/practica 2/practica2intento2/rom.vhd(43[1] 53[8])
    defparam Data_out_i11.GSR = "ENABLED";
    FD1S3JX Data_out_i10 (.D(n1804), .CK(m_clk_c), .PD(n1487), .Q(\Data_out_27__N_128[22] )) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=8, LSE_RCOL=11, LSE_LLINE=134, LSE_RLINE=134 */ ;   // d:/documentos/escom/quinto semestre/arquitectura de computadoras/practica 2/practica2intento2/rom.vhd(43[1] 53[8])
    defparam Data_out_i10.GSR = "ENABLED";
    FD1S3JX Data_out_i9 (.D(\MAR[1] ), .CK(m_clk_c), .PD(n1487), .Q(\Data_out_27__N_128[21] )) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=8, LSE_RCOL=11, LSE_LLINE=134, LSE_RLINE=134 */ ;   // d:/documentos/escom/quinto semestre/arquitectura de computadoras/practica 2/practica2intento2/rom.vhd(43[1] 53[8])
    defparam Data_out_i9.GSR = "ENABLED";
    FD1S3JX Data_out_i8 (.D(n7_adj_414), .CK(m_clk_c), .PD(n1487), .Q(\Data_out_27__N_128[20] )) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=8, LSE_RCOL=11, LSE_LLINE=134, LSE_RLINE=134 */ ;   // d:/documentos/escom/quinto semestre/arquitectura de computadoras/practica 2/practica2intento2/rom.vhd(43[1] 53[8])
    defparam Data_out_i8.GSR = "ENABLED";
    FD1S3JX Data_out_i7 (.D(n7_adj_412), .CK(m_clk_c), .PD(n1487), .Q(\Data_out_27__N_128[15] )) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=8, LSE_RCOL=11, LSE_LLINE=134, LSE_RLINE=134 */ ;   // d:/documentos/escom/quinto semestre/arquitectura de computadoras/practica 2/practica2intento2/rom.vhd(43[1] 53[8])
    defparam Data_out_i7.GSR = "ENABLED";
    FD1S3JX Data_out_i6 (.D(n7_adj_418), .CK(m_clk_c), .PD(n1487), .Q(\Data_out_27__N_128[14] )) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=8, LSE_RCOL=11, LSE_LLINE=134, LSE_RLINE=134 */ ;   // d:/documentos/escom/quinto semestre/arquitectura de computadoras/practica 2/practica2intento2/rom.vhd(43[1] 53[8])
    defparam Data_out_i6.GSR = "ENABLED";
    FD1S3JX Data_out_i5 (.D(n7_adj_416), .CK(m_clk_c), .PD(n1487), .Q(\Data_out_27__N_128[13] )) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=8, LSE_RCOL=11, LSE_LLINE=134, LSE_RLINE=134 */ ;   // d:/documentos/escom/quinto semestre/arquitectura de computadoras/practica 2/practica2intento2/rom.vhd(43[1] 53[8])
    defparam Data_out_i5.GSR = "ENABLED";
    FD1S3JX Data_out_i4 (.D(n7_adj_417), .CK(m_clk_c), .PD(n1487), .Q(\Data_out_27__N_128[12] )) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=8, LSE_RCOL=11, LSE_LLINE=134, LSE_RLINE=134 */ ;   // d:/documentos/escom/quinto semestre/arquitectura de computadoras/practica 2/practica2intento2/rom.vhd(43[1] 53[8])
    defparam Data_out_i4.GSR = "ENABLED";
    FD1S3JX Data_out_i3 (.D(n1470), .CK(m_clk_c), .PD(n1487), .Q(\Data_out_27__N_128[10] )) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=8, LSE_RCOL=11, LSE_LLINE=134, LSE_RLINE=134 */ ;   // d:/documentos/escom/quinto semestre/arquitectura de computadoras/practica 2/practica2intento2/rom.vhd(43[1] 53[8])
    defparam Data_out_i3.GSR = "ENABLED";
    FD1S3JX Data_out_i2 (.D(n1800), .CK(m_clk_c), .PD(n1487), .Q(\Data_out_27__N_128[2] )) /* synthesis LSE_LINE_FILE_ID=27, LSE_LCOL=8, LSE_RCOL=11, LSE_LLINE=134, LSE_RLINE=134 */ ;   // d:/documentos/escom/quinto semestre/arquitectura de computadoras/practica 2/practica2intento2/rom.vhd(43[1] 53[8])
    defparam Data_out_i2.GSR = "ENABLED";
    LUT4 i1460_3_lut (.A(\MAR[2] ), .B(\MAR[1] ), .C(\MAR[0] ), .Z(n1804)) /* synthesis lut_function=(A (B)+!A !((C)+!B)) */ ;   // d:/documentos/escom/quinto semestre/arquitectura de computadoras/practica 2/practica2intento2/rom.vhd(48[21:42])
    defparam i1460_3_lut.init = 16'h8c8c;
    LUT4 mux_3_Mux_14_i7_3_lut_3_lut (.A(\MAR[0] ), .B(\MAR[1] ), .C(\MAR[2] ), 
         .Z(n7_adj_418)) /* synthesis lut_function=(A (B (C)+!B !(C))+!A (B (C))) */ ;   // d:/documentos/escom/quinto semestre/arquitectura de computadoras/practica 2/practica2intento2/rom.vhd(48[21:42])
    defparam mux_3_Mux_14_i7_3_lut_3_lut.init = 16'hc2c2;
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

