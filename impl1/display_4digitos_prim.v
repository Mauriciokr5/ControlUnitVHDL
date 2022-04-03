// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.12.0.240.2
// Netlist written on Tue Mar 29 21:18:24 2022
//
// Verilog Description of module display_4digitos
//

module display_4digitos (CLK, in_bcd, sel_d, seg_d);   // c:/users/brauu/documents/instituto politecnico nacional/escom/semestre5/arquitectura computacional/practica2intento2/display_4digitos.vhd(5[8:24])
    input CLK;   // c:/users/brauu/documents/instituto politecnico nacional/escom/semestre5/arquitectura computacional/practica2intento2/display_4digitos.vhd(7[3:6])
    input [15:0]in_bcd;   // c:/users/brauu/documents/instituto politecnico nacional/escom/semestre5/arquitectura computacional/practica2intento2/display_4digitos.vhd(8[3:9])
    output [3:0]sel_d;   // c:/users/brauu/documents/instituto politecnico nacional/escom/semestre5/arquitectura computacional/practica2intento2/display_4digitos.vhd(9[3:8])
    output [6:0]seg_d;   // c:/users/brauu/documents/instituto politecnico nacional/escom/semestre5/arquitectura computacional/practica2intento2/display_4digitos.vhd(10[3:8])
    
    wire CLK_c /* synthesis SET_AS_NETWORK=CLK_c, is_clock=1 */ ;   // c:/users/brauu/documents/instituto politecnico nacional/escom/semestre5/arquitectura computacional/practica2intento2/display_4digitos.vhd(7[3:6])
    
    wire GND_net, VCC_net, in_bcd_c_15, in_bcd_c_14, in_bcd_c_13, 
        in_bcd_c_12, in_bcd_c_11, in_bcd_c_10, in_bcd_c_9, in_bcd_c_8, 
        in_bcd_c_7, in_bcd_c_6, in_bcd_c_5, in_bcd_c_4, in_bcd_c_3, 
        in_bcd_c_2, in_bcd_c_1, in_bcd_c_0, sel_d_c_3, sel_d_c_2, 
        sel_d_c_1, sel_d_c_0, seg_d_c_6, seg_d_c_5, seg_d_c_4, seg_d_c_3, 
        seg_d_c_2, seg_d_c_1, seg_d_c_0;
    wire [14:0]contador;   // c:/users/brauu/documents/instituto politecnico nacional/escom/semestre5/arquitectura computacional/practica2intento2/display_4digitos.vhd(23[8:16])
    
    wire n67;
    wire [6:0]seg_millar;   // c:/users/brauu/documents/instituto politecnico nacional/escom/semestre5/arquitectura computacional/practica2intento2/display_4digitos.vhd(26[8:18])
    wire [6:0]seg_centena;   // c:/users/brauu/documents/instituto politecnico nacional/escom/semestre5/arquitectura computacional/practica2intento2/display_4digitos.vhd(26[20:31])
    wire [6:0]seg_decena;   // c:/users/brauu/documents/instituto politecnico nacional/escom/semestre5/arquitectura computacional/practica2intento2/display_4digitos.vhd(26[33:43])
    wire [6:0]seg_unidad;   // c:/users/brauu/documents/instituto politecnico nacional/escom/semestre5/arquitectura computacional/practica2intento2/display_4digitos.vhd(26[45:55])
    
    wire n1062, n29, n379, n860, n389, n518;
    wire [6:0]seg_d_6__N_5;
    
    wire n177, n176, n175, n178, n208, n210, n1029, n207, n205, 
        n521, n525, n19, n235, n232, n77, n80, n66, n861, 
        n79, n477, n393, n78, n857, n76, n995, n72, n73, n74, 
        n855, n854, n850, n75, n853, n849, n867, n852, n1031, 
        n43, CLK_c_enable_4, n851, n40, n38, n68, n371, n1030, 
        n69, n35, n70, n29_adj_47, n1027, n859, n71, n32, n685, 
        n1026, n1025, n363, n16, n6, n1063;
    
    VHI i2 (.Z(VCC_net));
    decodificador_7bits dec_u (.in_bcd_c_0(in_bcd_c_0), .in_bcd_c_1(in_bcd_c_1), 
            .in_bcd_c_3(in_bcd_c_3), .in_bcd_c_2(in_bcd_c_2), .\seg_unidad[1] (seg_unidad[1]), 
            .\seg_unidad[4] (seg_unidad[4]), .n860(n860), .n29(n29_adj_47), 
            .\seg_unidad[3] (seg_unidad[3]), .\seg_unidad[6] (seg_unidad[6]));   // c:/users/brauu/documents/instituto politecnico nacional/escom/semestre5/arquitectura computacional/practica2intento2/display_4digitos.vhd(38[9:28])
    OB seg_d_pad_5 (.I(seg_d_c_5), .O(seg_d[5]));   // c:/users/brauu/documents/instituto politecnico nacional/escom/semestre5/arquitectura computacional/practica2intento2/display_4digitos.vhd(10[3:8])
    OB seg_d_pad_6 (.I(seg_d_c_6), .O(seg_d[6]));   // c:/users/brauu/documents/instituto politecnico nacional/escom/semestre5/arquitectura computacional/practica2intento2/display_4digitos.vhd(10[3:8])
    OB sel_d_pad_3 (.I(sel_d_c_3), .O(sel_d[3]));   // c:/users/brauu/documents/instituto politecnico nacional/escom/semestre5/arquitectura computacional/practica2intento2/display_4digitos.vhd(9[3:8])
    OB sel_d_pad_0 (.I(sel_d_c_0), .O(sel_d[0]));   // c:/users/brauu/documents/instituto politecnico nacional/escom/semestre5/arquitectura computacional/practica2intento2/display_4digitos.vhd(9[3:8])
    FD1S3AX seg_d_i1 (.D(seg_d_6__N_5[0]), .CK(CLK_c), .Q(seg_d_c_0));   // c:/users/brauu/documents/instituto politecnico nacional/escom/semestre5/arquitectura computacional/practica2intento2/display_4digitos.vhd(42[1] 68[8])
    defparam seg_d_i1.GSR = "ENABLED";
    OB sel_d_pad_1 (.I(sel_d_c_1), .O(sel_d[1]));   // c:/users/brauu/documents/instituto politecnico nacional/escom/semestre5/arquitectura computacional/practica2intento2/display_4digitos.vhd(9[3:8])
    FD1S3IX contador_136__i14 (.D(n66), .CK(CLK_c), .CD(CLK_c_enable_4), 
            .Q(contador[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/brauu/documents/instituto politecnico nacional/escom/semestre5/arquitectura computacional/practica2intento2/display_4digitos.vhd(47[13:21])
    defparam contador_136__i14.GSR = "ENABLED";
    FD1S3IX contador_136__i13 (.D(n67), .CK(CLK_c), .CD(CLK_c_enable_4), 
            .Q(contador[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/brauu/documents/instituto politecnico nacional/escom/semestre5/arquitectura computacional/practica2intento2/display_4digitos.vhd(47[13:21])
    defparam contador_136__i13.GSR = "ENABLED";
    FD1S3IX contador_136__i12 (.D(n68), .CK(CLK_c), .CD(CLK_c_enable_4), 
            .Q(contador[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/brauu/documents/instituto politecnico nacional/escom/semestre5/arquitectura computacional/practica2intento2/display_4digitos.vhd(47[13:21])
    defparam contador_136__i12.GSR = "ENABLED";
    PFUMX i64 (.BLUT(n29_adj_47), .ALUT(n38), .C0(n177), .Z(n43));
    FD1S3IX contador_136__i11 (.D(n69), .CK(CLK_c), .CD(CLK_c_enable_4), 
            .Q(contador[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/brauu/documents/instituto politecnico nacional/escom/semestre5/arquitectura computacional/practica2intento2/display_4digitos.vhd(47[13:21])
    defparam contador_136__i11.GSR = "ENABLED";
    FD1S3IX contador_136__i10 (.D(n70), .CK(CLK_c), .CD(CLK_c_enable_4), 
            .Q(contador[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/brauu/documents/instituto politecnico nacional/escom/semestre5/arquitectura computacional/practica2intento2/display_4digitos.vhd(47[13:21])
    defparam contador_136__i10.GSR = "ENABLED";
    FD1S3IX contador_136__i9 (.D(n71), .CK(CLK_c), .CD(CLK_c_enable_4), 
            .Q(contador[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/brauu/documents/instituto politecnico nacional/escom/semestre5/arquitectura computacional/practica2intento2/display_4digitos.vhd(47[13:21])
    defparam contador_136__i9.GSR = "ENABLED";
    FD1S3IX contador_136__i8 (.D(n72), .CK(CLK_c), .CD(CLK_c_enable_4), 
            .Q(contador[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/brauu/documents/instituto politecnico nacional/escom/semestre5/arquitectura computacional/practica2intento2/display_4digitos.vhd(47[13:21])
    defparam contador_136__i8.GSR = "ENABLED";
    LUT4 n177_bdd_4_lut_831 (.A(in_bcd_c_5), .B(in_bcd_c_7), .C(in_bcd_c_6), 
         .D(in_bcd_c_4), .Z(n1025)) /* synthesis lut_function=(A (B+!(C (D)))+!A (B+(C))) */ ;
    defparam n177_bdd_4_lut_831.init = 16'hdefe;
    FD1S3IX contador_136__i7 (.D(n73), .CK(CLK_c), .CD(CLK_c_enable_4), 
            .Q(contador[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/brauu/documents/instituto politecnico nacional/escom/semestre5/arquitectura computacional/practica2intento2/display_4digitos.vhd(47[13:21])
    defparam contador_136__i7.GSR = "ENABLED";
    LUT4 n177_bdd_4_lut (.A(in_bcd_c_1), .B(in_bcd_c_3), .C(in_bcd_c_2), 
         .D(in_bcd_c_0), .Z(n1026)) /* synthesis lut_function=(A (B+!(C (D)))+!A (B+(C))) */ ;
    defparam n177_bdd_4_lut.init = 16'hdefe;
    FD1S3IX contador_136__i6 (.D(n74), .CK(CLK_c), .CD(CLK_c_enable_4), 
            .Q(contador[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/brauu/documents/instituto politecnico nacional/escom/semestre5/arquitectura computacional/practica2intento2/display_4digitos.vhd(47[13:21])
    defparam contador_136__i6.GSR = "ENABLED";
    FD1S3IX contador_136__i5 (.D(n75), .CK(CLK_c), .CD(CLK_c_enable_4), 
            .Q(contador[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/brauu/documents/instituto politecnico nacional/escom/semestre5/arquitectura computacional/practica2intento2/display_4digitos.vhd(47[13:21])
    defparam contador_136__i5.GSR = "ENABLED";
    FD1S3IX contador_136__i4 (.D(n76), .CK(CLK_c), .CD(CLK_c_enable_4), 
            .Q(contador[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/brauu/documents/instituto politecnico nacional/escom/semestre5/arquitectura computacional/practica2intento2/display_4digitos.vhd(47[13:21])
    defparam contador_136__i4.GSR = "ENABLED";
    FD1S3IX contador_136__i3 (.D(n77), .CK(CLK_c), .CD(CLK_c_enable_4), 
            .Q(contador[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/brauu/documents/instituto politecnico nacional/escom/semestre5/arquitectura computacional/practica2intento2/display_4digitos.vhd(47[13:21])
    defparam contador_136__i3.GSR = "ENABLED";
    FD1S3IX contador_136__i2 (.D(n78), .CK(CLK_c), .CD(CLK_c_enable_4), 
            .Q(contador[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/brauu/documents/instituto politecnico nacional/escom/semestre5/arquitectura computacional/practica2intento2/display_4digitos.vhd(47[13:21])
    defparam contador_136__i2.GSR = "ENABLED";
    FD1S3IX contador_136__i1 (.D(n79), .CK(CLK_c), .CD(CLK_c_enable_4), 
            .Q(contador[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/brauu/documents/instituto politecnico nacional/escom/semestre5/arquitectura computacional/practica2intento2/display_4digitos.vhd(47[13:21])
    defparam contador_136__i1.GSR = "ENABLED";
    FD1P3AX posicion_FSM_i0_i3 (.D(n176), .SP(CLK_c_enable_4), .CK(CLK_c), 
            .Q(n175));   // C:/lscc/diamond/3.12/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam posicion_FSM_i0_i3.GSR = "ENABLED";
    PFUMX i172 (.BLUT(seg_centena[6]), .ALUT(n19), .C0(n175), .Z(n371));
    FD1P3AX posicion_FSM_i0_i2 (.D(n177), .SP(CLK_c_enable_4), .CK(CLK_c), 
            .Q(n176));   // C:/lscc/diamond/3.12/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam posicion_FSM_i0_i2.GSR = "ENABLED";
    FD1P3AX posicion_FSM_i0_i1 (.D(n178), .SP(CLK_c_enable_4), .CK(CLK_c), 
            .Q(n177));   // C:/lscc/diamond/3.12/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam posicion_FSM_i0_i1.GSR = "ENABLED";
    FD1S3AX seg_d_i7 (.D(seg_d_6__N_5[6]), .CK(CLK_c), .Q(seg_d_c_6));   // c:/users/brauu/documents/instituto politecnico nacional/escom/semestre5/arquitectura computacional/practica2intento2/display_4digitos.vhd(42[1] 68[8])
    defparam seg_d_i7.GSR = "ENABLED";
    LUT4 i278_1_lut_2_lut (.A(n176), .B(n175), .Z(n477)) /* synthesis lut_function=(!(A+(B))) */ ;   // C:/lscc/diamond/3.12/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i278_1_lut_2_lut.init = 16'h1111;
    L6MUX21 i181 (.D0(n207), .D1(n379), .SD(n1062), .Z(seg_d_6__N_5[4]));
    LUT4 i322_3_lut_3_lut (.A(in_bcd_c_14), .B(in_bcd_c_12), .C(in_bcd_c_13), 
         .Z(n521)) /* synthesis lut_function=(!(A (B (C))+!A !(C))) */ ;
    defparam i322_3_lut_3_lut.init = 16'h7a7a;
    LUT4 i1_2_lut_3_lut (.A(n175), .B(in_bcd_c_15), .C(n525), .Z(seg_d_6__N_5[6])) /* synthesis lut_function=(A (B+(C))+!A (C)) */ ;   // C:/lscc/diamond/3.12/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i1_2_lut_3_lut.init = 16'hf8f8;
    PFUMX i194 (.BLUT(seg_centena[1]), .ALUT(seg_millar[1]), .C0(n175), 
          .Z(n393));
    LUT4 i164_1_lut (.A(n176), .Z(n363)) /* synthesis lut_function=(!(A)) */ ;   // C:/lscc/diamond/3.12/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i164_1_lut.init = 16'h5555;
    PFUMX mux_38_i2 (.BLUT(seg_unidad[1]), .ALUT(seg_decena[1]), .C0(n177), 
          .Z(n210));
    LUT4 i1_4_lut (.A(contador[6]), .B(contador[4]), .C(contador[5]), 
         .D(n859), .Z(n6)) /* synthesis lut_function=(A+(B (C)+!B (C (D)))) */ ;   // c:/users/brauu/documents/instituto politecnico nacional/escom/semestre5/arquitectura computacional/practica2intento2/display_4digitos.vhd(23[8:16])
    defparam i1_4_lut.init = 16'hfaea;
    LUT4 in_bcd_c_11_bdd_4_lut (.A(in_bcd_c_15), .B(in_bcd_c_12), .C(in_bcd_c_14), 
         .D(in_bcd_c_13), .Z(n1029)) /* synthesis lut_function=(A+(B ((D)+!C)+!B !(C (D)))) */ ;
    defparam in_bcd_c_11_bdd_4_lut.init = 16'hefbf;
    LUT4 i71_1_lut (.A(n177), .Z(n232)) /* synthesis lut_function=(!(A)) */ ;   // C:/lscc/diamond/3.12/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i71_1_lut.init = 16'h5555;
    PFUMX mux_38_i6 (.BLUT(n860), .ALUT(n861), .C0(n177), .Z(n685));
    LUT4 i828_2_lut_rep_3 (.A(n175), .B(n176), .Z(n1062)) /* synthesis lut_function=(A+(B)) */ ;   // C:/lscc/diamond/3.12/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i828_2_lut_rep_3.init = 16'heeee;
    PFUMX mux_38_i7 (.BLUT(seg_unidad[6]), .ALUT(seg_decena[6]), .C0(n177), 
          .Z(n205));
    LUT4 i3_4_lut (.A(contador[1]), .B(contador[0]), .C(contador[3]), 
         .D(contador[2]), .Z(n859)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/brauu/documents/instituto politecnico nacional/escom/semestre5/arquitectura computacional/practica2intento2/display_4digitos.vhd(23[8:16])
    defparam i3_4_lut.init = 16'h8000;
    LUT4 i407_3_lut_4_lut (.A(n175), .B(n176), .C(n1031), .D(n685), 
         .Z(seg_d_6__N_5[5])) /* synthesis lut_function=(A (C)+!A (B (C)+!B !(D))) */ ;   // C:/lscc/diamond/3.12/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i407_3_lut_4_lut.init = 16'he0f1;
    CCU2D contador_136_add_4_15 (.A0(contador[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(contador[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n855), .S0(n67), .S1(n66));   // c:/users/brauu/documents/instituto politecnico nacional/escom/semestre5/arquitectura computacional/practica2intento2/display_4digitos.vhd(47[13:21])
    defparam contador_136_add_4_15.INIT0 = 16'hfaaa;
    defparam contador_136_add_4_15.INIT1 = 16'hfaaa;
    defparam contador_136_add_4_15.INJECT1_0 = "NO";
    defparam contador_136_add_4_15.INJECT1_1 = "NO";
    CCU2D contador_136_add_4_13 (.A0(contador[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(contador[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n854), .COUT(n855), .S0(n69), .S1(n68));   // c:/users/brauu/documents/instituto politecnico nacional/escom/semestre5/arquitectura computacional/practica2intento2/display_4digitos.vhd(47[13:21])
    defparam contador_136_add_4_13.INIT0 = 16'hfaaa;
    defparam contador_136_add_4_13.INIT1 = 16'hfaaa;
    defparam contador_136_add_4_13.INJECT1_0 = "NO";
    defparam contador_136_add_4_13.INJECT1_1 = "NO";
    CCU2D contador_136_add_4_11 (.A0(contador[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(contador[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n853), .COUT(n854), .S0(n71), .S1(n70));   // c:/users/brauu/documents/instituto politecnico nacional/escom/semestre5/arquitectura computacional/practica2intento2/display_4digitos.vhd(47[13:21])
    defparam contador_136_add_4_11.INIT0 = 16'hfaaa;
    defparam contador_136_add_4_11.INIT1 = 16'hfaaa;
    defparam contador_136_add_4_11.INJECT1_0 = "NO";
    defparam contador_136_add_4_11.INJECT1_1 = "NO";
    PFUMX i832 (.BLUT(n1026), .ALUT(n1025), .C0(n177), .Z(n1027));
    FD1S3JX sel_d_i4 (.D(n235), .CK(CLK_c), .PD(n477), .Q(sel_d_c_3));   // c:/users/brauu/documents/instituto politecnico nacional/escom/semestre5/arquitectura computacional/practica2intento2/display_4digitos.vhd(42[1] 68[8])
    defparam sel_d_i4.GSR = "ENABLED";
    LUT4 i1_3_lut_4_lut_4_lut (.A(in_bcd_c_15), .B(in_bcd_c_13), .C(in_bcd_c_12), 
         .D(in_bcd_c_14), .Z(n16)) /* synthesis lut_function=(!(A+(B (C (D))+!B !(C (D))))) */ ;   // c:/users/brauu/documents/instituto politecnico nacional/escom/semestre5/arquitectura computacional/practica2intento2/display_4digitos.vhd(8[3:9])
    defparam i1_3_lut_4_lut_4_lut.init = 16'h1444;
    CCU2D contador_136_add_4_9 (.A0(contador[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(contador[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n852), .COUT(n853), .S0(n73), .S1(n72));   // c:/users/brauu/documents/instituto politecnico nacional/escom/semestre5/arquitectura computacional/practica2intento2/display_4digitos.vhd(47[13:21])
    defparam contador_136_add_4_9.INIT0 = 16'hfaaa;
    defparam contador_136_add_4_9.INIT1 = 16'hfaaa;
    defparam contador_136_add_4_9.INJECT1_0 = "NO";
    defparam contador_136_add_4_9.INJECT1_1 = "NO";
    LUT4 i1_4_lut_4_lut_4_lut_4_lut (.A(in_bcd_c_11), .B(in_bcd_c_9), .C(in_bcd_c_10), 
         .D(in_bcd_c_8), .Z(n35)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A (B (D)+!B (C+(D))))) */ ;   // c:/users/brauu/documents/instituto politecnico nacional/escom/semestre5/arquitectura computacional/practica2intento2/display_4digitos.vhd(8[3:9])
    defparam i1_4_lut_4_lut_4_lut_4_lut.init = 16'h0047;
    CCU2D contador_136_add_4_3 (.A0(contador[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(contador[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n849), .COUT(n850), .S0(n79), .S1(n78));   // c:/users/brauu/documents/instituto politecnico nacional/escom/semestre5/arquitectura computacional/practica2intento2/display_4digitos.vhd(47[13:21])
    defparam contador_136_add_4_3.INIT0 = 16'hfaaa;
    defparam contador_136_add_4_3.INIT1 = 16'hfaaa;
    defparam contador_136_add_4_3.INJECT1_0 = "NO";
    defparam contador_136_add_4_3.INJECT1_1 = "NO";
    CCU2D contador_136_add_4_7 (.A0(contador[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(contador[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n851), .COUT(n852), .S0(n75), .S1(n74));   // c:/users/brauu/documents/instituto politecnico nacional/escom/semestre5/arquitectura computacional/practica2intento2/display_4digitos.vhd(47[13:21])
    defparam contador_136_add_4_7.INIT0 = 16'hfaaa;
    defparam contador_136_add_4_7.INIT1 = 16'hfaaa;
    defparam contador_136_add_4_7.INJECT1_0 = "NO";
    defparam contador_136_add_4_7.INJECT1_1 = "NO";
    FD1S3JX sel_d_i1 (.D(n1063), .CK(CLK_c), .PD(n177), .Q(sel_d_c_0));   // c:/users/brauu/documents/instituto politecnico nacional/escom/semestre5/arquitectura computacional/practica2intento2/display_4digitos.vhd(42[1] 68[8])
    defparam sel_d_i1.GSR = "ENABLED";
    CCU2D contador_136_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(contador[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n849), .S1(n80));   // c:/users/brauu/documents/instituto politecnico nacional/escom/semestre5/arquitectura computacional/practica2intento2/display_4digitos.vhd(47[13:21])
    defparam contador_136_add_4_1.INIT0 = 16'hF000;
    defparam contador_136_add_4_1.INIT1 = 16'h0555;
    defparam contador_136_add_4_1.INJECT1_0 = "NO";
    defparam contador_136_add_4_1.INJECT1_1 = "NO";
    LUT4 i41_2_lut_rep_4 (.A(n176), .B(n175), .Z(n1063)) /* synthesis lut_function=(A+(B)) */ ;   // C:/lscc/diamond/3.12/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i41_2_lut_rep_4.init = 16'heeee;
    GSR GSR_INST (.GSR(VCC_net));
    FD1S3AX seg_d_i6 (.D(seg_d_6__N_5[5]), .CK(CLK_c), .Q(seg_d_c_5));   // c:/users/brauu/documents/instituto politecnico nacional/escom/semestre5/arquitectura computacional/practica2intento2/display_4digitos.vhd(42[1] 68[8])
    defparam seg_d_i6.GSR = "ENABLED";
    FD1S3AX seg_d_i5 (.D(seg_d_6__N_5[4]), .CK(CLK_c), .Q(seg_d_c_4));   // c:/users/brauu/documents/instituto politecnico nacional/escom/semestre5/arquitectura computacional/practica2intento2/display_4digitos.vhd(42[1] 68[8])
    defparam seg_d_i5.GSR = "ENABLED";
    FD1S3AX seg_d_i4 (.D(seg_d_6__N_5[3]), .CK(CLK_c), .Q(seg_d_c_3));   // c:/users/brauu/documents/instituto politecnico nacional/escom/semestre5/arquitectura computacional/practica2intento2/display_4digitos.vhd(42[1] 68[8])
    defparam seg_d_i4.GSR = "ENABLED";
    FD1S3AX seg_d_i3 (.D(seg_d_6__N_5[2]), .CK(CLK_c), .Q(seg_d_c_2));   // c:/users/brauu/documents/instituto politecnico nacional/escom/semestre5/arquitectura computacional/practica2intento2/display_4digitos.vhd(42[1] 68[8])
    defparam seg_d_i3.GSR = "ENABLED";
    CCU2D contador_136_add_4_5 (.A0(contador[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(contador[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n850), .COUT(n851), .S0(n77), .S1(n76));   // c:/users/brauu/documents/instituto politecnico nacional/escom/semestre5/arquitectura computacional/practica2intento2/display_4digitos.vhd(47[13:21])
    defparam contador_136_add_4_5.INIT0 = 16'hfaaa;
    defparam contador_136_add_4_5.INIT1 = 16'hfaaa;
    defparam contador_136_add_4_5.INJECT1_0 = "NO";
    defparam contador_136_add_4_5.INJECT1_1 = "NO";
    OB sel_d_pad_2 (.I(sel_d_c_2), .O(sel_d[2]));   // c:/users/brauu/documents/instituto politecnico nacional/escom/semestre5/arquitectura computacional/practica2intento2/display_4digitos.vhd(9[3:8])
    PFUMX i180 (.BLUT(seg_centena[4]), .ALUT(seg_millar[4]), .C0(n175), 
          .Z(n379));
    LUT4 i783_4_lut (.A(in_bcd_c_12), .B(in_bcd_c_14), .C(in_bcd_c_15), 
         .D(in_bcd_c_13), .Z(n32)) /* synthesis lut_function=(!(A+(B (C+!(D))+!B (C (D))))) */ ;
    defparam i783_4_lut.init = 16'h0511;
    FD1S3AX seg_d_i2 (.D(seg_d_6__N_5[1]), .CK(CLK_c), .Q(seg_d_c_1));   // c:/users/brauu/documents/instituto politecnico nacional/escom/semestre5/arquitectura computacional/practica2intento2/display_4digitos.vhd(42[1] 68[8])
    defparam seg_d_i2.GSR = "ENABLED";
    FD1S3JX sel_d_i3 (.D(n175), .CK(CLK_c), .PD(n363), .Q(sel_d_c_2));   // c:/users/brauu/documents/instituto politecnico nacional/escom/semestre5/arquitectura computacional/practica2intento2/display_4digitos.vhd(42[1] 68[8])
    defparam sel_d_i3.GSR = "ENABLED";
    LUT4 i1_4_lut_4_lut (.A(in_bcd_c_11), .B(in_bcd_c_8), .C(in_bcd_c_9), 
         .D(in_bcd_c_10), .Z(seg_centena[1])) /* synthesis lut_function=(A+!(B (C+!(D))+!B !((D)+!C))) */ ;   // c:/users/brauu/documents/instituto politecnico nacional/escom/semestre5/arquitectura computacional/practica2intento2/display_4digitos.vhd(8[3:9])
    defparam i1_4_lut_4_lut.init = 16'hbfab;
    LUT4 i190_4_lut (.A(seg_centena[3]), .B(n995), .C(n175), .D(n16), 
         .Z(n389)) /* synthesis lut_function=(A (((D)+!C)+!B)+!A (B (C (D))+!B (C))) */ ;   // C:/lscc/diamond/3.12/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i190_4_lut.init = 16'hfa3a;
    FD1S3JX sel_d_i2 (.D(n232), .CK(CLK_c), .PD(n1063), .Q(sel_d_c_1));   // c:/users/brauu/documents/instituto politecnico nacional/escom/semestre5/arquitectura computacional/practica2intento2/display_4digitos.vhd(42[1] 68[8])
    defparam sel_d_i2.GSR = "ENABLED";
    FD1P3AX posicion_FSM_i0_i0 (.D(n175), .SP(CLK_c_enable_4), .CK(CLK_c), 
            .Q(n178));   // C:/lscc/diamond/3.12/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam posicion_FSM_i0_i0.GSR = "ENABLED";
    decodificador_7bits_U1 dec_d (.in_bcd_c_4(in_bcd_c_4), .in_bcd_c_5(in_bcd_c_5), 
            .in_bcd_c_6(in_bcd_c_6), .in_bcd_c_7(in_bcd_c_7), .\seg_decena[4] (seg_decena[4]), 
            .n861(n861), .\seg_decena[6] (seg_decena[6]), .\seg_decena[1] (seg_decena[1]), 
            .n38(n38), .\seg_decena[3] (seg_decena[3]));   // c:/users/brauu/documents/instituto politecnico nacional/escom/semestre5/arquitectura computacional/practica2intento2/display_4digitos.vhd(37[9:28])
    LUT4 i72_1_lut (.A(n175), .Z(n235)) /* synthesis lut_function=(!(A)) */ ;   // C:/lscc/diamond/3.12/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i72_1_lut.init = 16'h5555;
    LUT4 i3_4_lut_adj_1 (.A(in_bcd_c_8), .B(in_bcd_c_9), .C(in_bcd_c_11), 
         .D(in_bcd_c_10), .Z(seg_centena[4])) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;
    defparam i3_4_lut_adj_1.init = 16'hfffb;
    LUT4 i1_3_lut (.A(contador[14]), .B(contador[13]), .C(n857), .Z(CLK_c_enable_4)) /* synthesis lut_function=(A (B+(C))) */ ;   // c:/users/brauu/documents/instituto politecnico nacional/escom/semestre5/arquitectura computacional/practica2intento2/display_4digitos.vhd(23[8:16])
    defparam i1_3_lut.init = 16'ha8a8;
    IB in_bcd_pad_0 (.I(in_bcd[0]), .O(in_bcd_c_0));   // c:/users/brauu/documents/instituto politecnico nacional/escom/semestre5/arquitectura computacional/practica2intento2/display_4digitos.vhd(8[3:9])
    LUT4 i3_4_lut_adj_2 (.A(contador[10]), .B(contador[11]), .C(contador[12]), 
         .D(n867), .Z(n857)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/brauu/documents/instituto politecnico nacional/escom/semestre5/arquitectura computacional/practica2intento2/display_4digitos.vhd(23[8:16])
    defparam i3_4_lut_adj_2.init = 16'h8000;
    PFUMX i834 (.BLUT(n1030), .ALUT(n1029), .C0(n175), .Z(n1031));
    IB in_bcd_pad_1 (.I(in_bcd[1]), .O(in_bcd_c_1));   // c:/users/brauu/documents/instituto politecnico nacional/escom/semestre5/arquitectura computacional/practica2intento2/display_4digitos.vhd(8[3:9])
    IB in_bcd_pad_2 (.I(in_bcd[2]), .O(in_bcd_c_2));   // c:/users/brauu/documents/instituto politecnico nacional/escom/semestre5/arquitectura computacional/practica2intento2/display_4digitos.vhd(8[3:9])
    IB in_bcd_pad_3 (.I(in_bcd[3]), .O(in_bcd_c_3));   // c:/users/brauu/documents/instituto politecnico nacional/escom/semestre5/arquitectura computacional/practica2intento2/display_4digitos.vhd(8[3:9])
    IB in_bcd_pad_4 (.I(in_bcd[4]), .O(in_bcd_c_4));   // c:/users/brauu/documents/instituto politecnico nacional/escom/semestre5/arquitectura computacional/practica2intento2/display_4digitos.vhd(8[3:9])
    IB in_bcd_pad_5 (.I(in_bcd[5]), .O(in_bcd_c_5));   // c:/users/brauu/documents/instituto politecnico nacional/escom/semestre5/arquitectura computacional/practica2intento2/display_4digitos.vhd(8[3:9])
    IB in_bcd_pad_6 (.I(in_bcd[6]), .O(in_bcd_c_6));   // c:/users/brauu/documents/instituto politecnico nacional/escom/semestre5/arquitectura computacional/practica2intento2/display_4digitos.vhd(8[3:9])
    IB in_bcd_pad_7 (.I(in_bcd[7]), .O(in_bcd_c_7));   // c:/users/brauu/documents/instituto politecnico nacional/escom/semestre5/arquitectura computacional/practica2intento2/display_4digitos.vhd(8[3:9])
    IB in_bcd_pad_8 (.I(in_bcd[8]), .O(in_bcd_c_8));   // c:/users/brauu/documents/instituto politecnico nacional/escom/semestre5/arquitectura computacional/practica2intento2/display_4digitos.vhd(8[3:9])
    IB in_bcd_pad_9 (.I(in_bcd[9]), .O(in_bcd_c_9));   // c:/users/brauu/documents/instituto politecnico nacional/escom/semestre5/arquitectura computacional/practica2intento2/display_4digitos.vhd(8[3:9])
    decodificador_7bits_U0 dec_m (.in_bcd_c_14(in_bcd_c_14), .in_bcd_c_13(in_bcd_c_13), 
            .in_bcd_c_12(in_bcd_c_12), .n995(n995), .in_bcd_c_15(in_bcd_c_15), 
            .\seg_millar[4] (seg_millar[4]));   // c:/users/brauu/documents/instituto politecnico nacional/escom/semestre5/arquitectura computacional/practica2intento2/display_4digitos.vhd(35[9:28])
    IB in_bcd_pad_10 (.I(in_bcd[10]), .O(in_bcd_c_10));   // c:/users/brauu/documents/instituto politecnico nacional/escom/semestre5/arquitectura computacional/practica2intento2/display_4digitos.vhd(8[3:9])
    IB in_bcd_pad_11 (.I(in_bcd[11]), .O(in_bcd_c_11));   // c:/users/brauu/documents/instituto politecnico nacional/escom/semestre5/arquitectura computacional/practica2intento2/display_4digitos.vhd(8[3:9])
    IB in_bcd_pad_12 (.I(in_bcd[12]), .O(in_bcd_c_12));   // c:/users/brauu/documents/instituto politecnico nacional/escom/semestre5/arquitectura computacional/practica2intento2/display_4digitos.vhd(8[3:9])
    IB in_bcd_pad_13 (.I(in_bcd[13]), .O(in_bcd_c_13));   // c:/users/brauu/documents/instituto politecnico nacional/escom/semestre5/arquitectura computacional/practica2intento2/display_4digitos.vhd(8[3:9])
    IB in_bcd_pad_14 (.I(in_bcd[14]), .O(in_bcd_c_14));   // c:/users/brauu/documents/instituto politecnico nacional/escom/semestre5/arquitectura computacional/practica2intento2/display_4digitos.vhd(8[3:9])
    IB in_bcd_pad_15 (.I(in_bcd[15]), .O(in_bcd_c_15));   // c:/users/brauu/documents/instituto politecnico nacional/escom/semestre5/arquitectura computacional/practica2intento2/display_4digitos.vhd(8[3:9])
    IB CLK_pad (.I(CLK), .O(CLK_c));   // c:/users/brauu/documents/instituto politecnico nacional/escom/semestre5/arquitectura computacional/practica2intento2/display_4digitos.vhd(7[3:6])
    LUT4 mux_38_i4_3_lut (.A(seg_unidad[3]), .B(seg_decena[3]), .C(n177), 
         .Z(n208)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // C:/lscc/diamond/3.12/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam mux_38_i4_3_lut.init = 16'hcaca;
    OB seg_d_pad_0 (.I(seg_d_c_0), .O(seg_d[0]));   // c:/users/brauu/documents/instituto politecnico nacional/escom/semestre5/arquitectura computacional/practica2intento2/display_4digitos.vhd(10[3:8])
    OB seg_d_pad_1 (.I(seg_d_c_1), .O(seg_d[1]));   // c:/users/brauu/documents/instituto politecnico nacional/escom/semestre5/arquitectura computacional/practica2intento2/display_4digitos.vhd(10[3:8])
    OB seg_d_pad_2 (.I(seg_d_c_2), .O(seg_d[2]));   // c:/users/brauu/documents/instituto politecnico nacional/escom/semestre5/arquitectura computacional/practica2intento2/display_4digitos.vhd(10[3:8])
    OB seg_d_pad_3 (.I(seg_d_c_3), .O(seg_d[3]));   // c:/users/brauu/documents/instituto politecnico nacional/escom/semestre5/arquitectura computacional/practica2intento2/display_4digitos.vhd(10[3:8])
    OB seg_d_pad_4 (.I(seg_d_c_4), .O(seg_d[4]));   // c:/users/brauu/documents/instituto politecnico nacional/escom/semestre5/arquitectura computacional/practica2intento2/display_4digitos.vhd(10[3:8])
    LUT4 i1_4_lut_4_lut_adj_3 (.A(in_bcd_c_15), .B(in_bcd_c_14), .C(in_bcd_c_12), 
         .D(in_bcd_c_13), .Z(seg_millar[1])) /* synthesis lut_function=(A+!(B (C (D))+!B (C+(D)))) */ ;   // c:/users/brauu/documents/instituto politecnico nacional/escom/semestre5/arquitectura computacional/practica2intento2/display_4digitos.vhd(8[3:9])
    defparam i1_4_lut_4_lut_adj_3.init = 16'haeef;
    LUT4 i319_4_lut (.A(n1027), .B(in_bcd_c_11), .C(n176), .D(n29), 
         .Z(n518)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C)+!B (C (D)))) */ ;   // C:/lscc/diamond/3.12/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i319_4_lut.init = 16'hfaca;
    FD1S3IX contador_136__i0 (.D(n80), .CK(CLK_c), .CD(CLK_c_enable_4), 
            .Q(contador[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/brauu/documents/instituto politecnico nacional/escom/semestre5/arquitectura computacional/practica2intento2/display_4digitos.vhd(47[13:21])
    defparam contador_136__i0.GSR = "ENABLED";
    PFUMX mux_38_i5 (.BLUT(seg_unidad[4]), .ALUT(seg_decena[4]), .C0(n177), 
          .Z(n207));
    LUT4 i4_4_lut (.A(contador[7]), .B(contador[9]), .C(contador[8]), 
         .D(n6), .Z(n867)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/brauu/documents/instituto politecnico nacional/escom/semestre5/arquitectura computacional/practica2intento2/display_4digitos.vhd(23[8:16])
    defparam i4_4_lut.init = 16'hfffe;
    decodificador_7bits_U2 dec_c (.in_bcd_c_8(in_bcd_c_8), .in_bcd_c_11(in_bcd_c_11), 
            .in_bcd_c_9(in_bcd_c_9), .in_bcd_c_10(in_bcd_c_10), .\seg_centena[3] (seg_centena[3]), 
            .n1030(n1030), .n29(n29), .\seg_centena[6] (seg_centena[6]));   // c:/users/brauu/documents/instituto politecnico nacional/escom/semestre5/arquitectura computacional/practica2intento2/display_4digitos.vhd(36[9:28])
    LUT4 n518_bdd_4_lut (.A(n518), .B(n521), .C(n175), .D(in_bcd_c_15), 
         .Z(seg_d_6__N_5[0])) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C)+!B (C (D)))) */ ;
    defparam n518_bdd_4_lut.init = 16'hfaca;
    LUT4 i1_3_lut_adj_4 (.A(in_bcd_c_13), .B(in_bcd_c_12), .C(in_bcd_c_14), 
         .Z(n19)) /* synthesis lut_function=(A+(B (C)+!B !(C))) */ ;   // c:/users/brauu/documents/instituto politecnico nacional/escom/semestre5/arquitectura computacional/practica2intento2/display_4digitos.vhd(8[3:9])
    defparam i1_3_lut_adj_4.init = 16'hebeb;
    VLO i1 (.Z(GND_net));
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    TSALL TSALL_INST (.TSALL(GND_net));
    PFUMX i191 (.BLUT(n208), .ALUT(n389), .C0(n1062), .Z(seg_d_6__N_5[3]));
    L6MUX21 i326 (.D0(n205), .D1(n371), .SD(n1062), .Z(n525));
    L6MUX21 i63 (.D0(n43), .D1(n40), .SD(n1062), .Z(seg_d_6__N_5[2]));
    L6MUX21 i195 (.D0(n210), .D1(n393), .SD(n1062), .Z(seg_d_6__N_5[1]));
    PFUMX i68 (.BLUT(n35), .ALUT(n32), .C0(n175), .Z(n40));
    
endmodule
//
// Verilog Description of module decodificador_7bits
//

module decodificador_7bits (in_bcd_c_0, in_bcd_c_1, in_bcd_c_3, in_bcd_c_2, 
            \seg_unidad[1] , \seg_unidad[4] , n860, n29, \seg_unidad[3] , 
            \seg_unidad[6] );
    input in_bcd_c_0;
    input in_bcd_c_1;
    input in_bcd_c_3;
    input in_bcd_c_2;
    output \seg_unidad[1] ;
    output \seg_unidad[4] ;
    output n860;
    output n29;
    output \seg_unidad[3] ;
    output \seg_unidad[6] ;
    
    
    LUT4 i462_4_lut_4_lut (.A(in_bcd_c_0), .B(in_bcd_c_1), .C(in_bcd_c_3), 
         .D(in_bcd_c_2), .Z(\seg_unidad[1] )) /* synthesis lut_function=(A (B (C)+!B (C+(D)))+!A ((C+(D))+!B)) */ ;   // c:/users/brauu/documents/instituto politecnico nacional/escom/semestre5/arquitectura computacional/practica2intento2/decodificador_7bits.vhd(15[1] 26[10])
    defparam i462_4_lut_4_lut.init = 16'hf7f1;
    LUT4 i3_4_lut (.A(in_bcd_c_0), .B(in_bcd_c_1), .C(in_bcd_c_2), .D(in_bcd_c_3), 
         .Z(\seg_unidad[4] )) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;
    defparam i3_4_lut.init = 16'hfffb;
    LUT4 i2_3_lut_4_lut (.A(in_bcd_c_0), .B(in_bcd_c_1), .C(in_bcd_c_2), 
         .D(in_bcd_c_3), .Z(n860)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A (((D)+!C)+!B))) */ ;   // c:/users/brauu/documents/instituto politecnico nacional/escom/semestre5/arquitectura computacional/practica2intento2/decodificador_7bits.vhd(15[1] 26[10])
    defparam i2_3_lut_4_lut.init = 16'h0060;
    LUT4 i1_4_lut_4_lut_4_lut (.A(in_bcd_c_0), .B(in_bcd_c_3), .C(in_bcd_c_1), 
         .D(in_bcd_c_2), .Z(n29)) /* synthesis lut_function=(!(A+(B (C+(D))+!B !(C+!(D))))) */ ;   // c:/users/brauu/documents/instituto politecnico nacional/escom/semestre5/arquitectura computacional/practica2intento2/decodificador_7bits.vhd(15[1] 26[10])
    defparam i1_4_lut_4_lut_4_lut.init = 16'h1015;
    LUT4 in_bcd_c_1_bdd_4_lut_865 (.A(in_bcd_c_1), .B(in_bcd_c_0), .C(in_bcd_c_3), 
         .D(in_bcd_c_2), .Z(\seg_unidad[3] )) /* synthesis lut_function=(!(A (B (C+(D))+!B (C))+!A (B (C+!(D))+!B (D)))) */ ;
    defparam in_bcd_c_1_bdd_4_lut_865.init = 16'h061b;
    LUT4 i2_4_lut (.A(in_bcd_c_3), .B(in_bcd_c_0), .C(in_bcd_c_1), .D(in_bcd_c_2), 
         .Z(\seg_unidad[6] )) /* synthesis lut_function=(A+(B (C+(D))+!B (C+!(D)))) */ ;   // c:/users/brauu/documents/instituto politecnico nacional/escom/semestre5/arquitectura computacional/practica2intento2/decodificador_7bits.vhd(15[1] 26[10])
    defparam i2_4_lut.init = 16'hfefb;
    
endmodule
//
// Verilog Description of module decodificador_7bits_U1
//

module decodificador_7bits_U1 (in_bcd_c_4, in_bcd_c_5, in_bcd_c_6, in_bcd_c_7, 
            \seg_decena[4] , n861, \seg_decena[6] , \seg_decena[1] , 
            n38, \seg_decena[3] );
    input in_bcd_c_4;
    input in_bcd_c_5;
    input in_bcd_c_6;
    input in_bcd_c_7;
    output \seg_decena[4] ;
    output n861;
    output \seg_decena[6] ;
    output \seg_decena[1] ;
    output n38;
    output \seg_decena[3] ;
    
    
    LUT4 i3_4_lut (.A(in_bcd_c_4), .B(in_bcd_c_5), .C(in_bcd_c_6), .D(in_bcd_c_7), 
         .Z(\seg_decena[4] )) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;
    defparam i3_4_lut.init = 16'hfffb;
    LUT4 i2_3_lut_4_lut (.A(in_bcd_c_4), .B(in_bcd_c_5), .C(in_bcd_c_6), 
         .D(in_bcd_c_7), .Z(n861)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A (((D)+!C)+!B))) */ ;   // c:/users/brauu/documents/instituto politecnico nacional/escom/semestre5/arquitectura computacional/practica2intento2/decodificador_7bits.vhd(15[1] 26[10])
    defparam i2_3_lut_4_lut.init = 16'h0060;
    LUT4 i2_4_lut (.A(in_bcd_c_7), .B(in_bcd_c_4), .C(in_bcd_c_5), .D(in_bcd_c_6), 
         .Z(\seg_decena[6] )) /* synthesis lut_function=(A+(B (C+(D))+!B (C+!(D)))) */ ;   // c:/users/brauu/documents/instituto politecnico nacional/escom/semestre5/arquitectura computacional/practica2intento2/decodificador_7bits.vhd(15[1] 26[10])
    defparam i2_4_lut.init = 16'hfefb;
    LUT4 i449_4_lut_4_lut (.A(in_bcd_c_4), .B(in_bcd_c_5), .C(in_bcd_c_7), 
         .D(in_bcd_c_6), .Z(\seg_decena[1] )) /* synthesis lut_function=(A (B (C)+!B (C+(D)))+!A ((C+(D))+!B)) */ ;   // c:/users/brauu/documents/instituto politecnico nacional/escom/semestre5/arquitectura computacional/practica2intento2/decodificador_7bits.vhd(15[1] 26[10])
    defparam i449_4_lut_4_lut.init = 16'hf7f1;
    LUT4 i1_4_lut_4_lut_4_lut (.A(in_bcd_c_4), .B(in_bcd_c_7), .C(in_bcd_c_5), 
         .D(in_bcd_c_6), .Z(n38)) /* synthesis lut_function=(!(A+(B (C+(D))+!B !(C+!(D))))) */ ;   // c:/users/brauu/documents/instituto politecnico nacional/escom/semestre5/arquitectura computacional/practica2intento2/decodificador_7bits.vhd(15[1] 26[10])
    defparam i1_4_lut_4_lut_4_lut.init = 16'h1015;
    LUT4 in_bcd_c_5_bdd_4_lut (.A(in_bcd_c_5), .B(in_bcd_c_4), .C(in_bcd_c_7), 
         .D(in_bcd_c_6), .Z(\seg_decena[3] )) /* synthesis lut_function=(!(A (B (C+(D))+!B (C))+!A (B (C+!(D))+!B (D)))) */ ;
    defparam in_bcd_c_5_bdd_4_lut.init = 16'h061b;
    
endmodule
//
// Verilog Description of module decodificador_7bits_U0
//

module decodificador_7bits_U0 (in_bcd_c_14, in_bcd_c_13, in_bcd_c_12, 
            n995, in_bcd_c_15, \seg_millar[4] );
    input in_bcd_c_14;
    input in_bcd_c_13;
    input in_bcd_c_12;
    output n995;
    input in_bcd_c_15;
    output \seg_millar[4] ;
    
    
    LUT4 i788_3_lut (.A(in_bcd_c_14), .B(in_bcd_c_13), .C(in_bcd_c_12), 
         .Z(n995)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i788_3_lut.init = 16'hfefe;
    LUT4 i3_4_lut (.A(in_bcd_c_12), .B(in_bcd_c_13), .C(in_bcd_c_14), 
         .D(in_bcd_c_15), .Z(\seg_millar[4] )) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;
    defparam i3_4_lut.init = 16'hfffb;
    
endmodule
//
// Verilog Description of module decodificador_7bits_U2
//

module decodificador_7bits_U2 (in_bcd_c_8, in_bcd_c_11, in_bcd_c_9, in_bcd_c_10, 
            \seg_centena[3] , n1030, n29, \seg_centena[6] );
    input in_bcd_c_8;
    input in_bcd_c_11;
    input in_bcd_c_9;
    input in_bcd_c_10;
    output \seg_centena[3] ;
    output n1030;
    output n29;
    output \seg_centena[6] ;
    
    
    LUT4 in_bcd_c_8_bdd_4_lut (.A(in_bcd_c_8), .B(in_bcd_c_11), .C(in_bcd_c_9), 
         .D(in_bcd_c_10), .Z(\seg_centena[3] )) /* synthesis lut_function=(!(A (B+(C (D)+!C !(D)))+!A (B (C+(D))+!B !(C+!(D))))) */ ;
    defparam in_bcd_c_8_bdd_4_lut.init = 16'h1235;
    LUT4 in_bcd_c_11_bdd_3_lut_4_lut (.A(in_bcd_c_8), .B(in_bcd_c_9), .C(in_bcd_c_10), 
         .D(in_bcd_c_11), .Z(n1030)) /* synthesis lut_function=(A (B+((D)+!C))+!A (((D)+!C)+!B)) */ ;   // c:/users/brauu/documents/instituto politecnico nacional/escom/semestre5/arquitectura computacional/practica2intento2/decodificador_7bits.vhd(15[1] 26[10])
    defparam in_bcd_c_11_bdd_3_lut_4_lut.init = 16'hff9f;
    LUT4 i36_3_lut_3_lut (.A(in_bcd_c_8), .B(in_bcd_c_9), .C(in_bcd_c_10), 
         .Z(n29)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(B+(C)))) */ ;
    defparam i36_3_lut_3_lut.init = 16'h7c7c;
    LUT4 i2_4_lut (.A(in_bcd_c_11), .B(in_bcd_c_8), .C(in_bcd_c_9), .D(in_bcd_c_10), 
         .Z(\seg_centena[6] )) /* synthesis lut_function=(A+(B (C+(D))+!B (C+!(D)))) */ ;   // c:/users/brauu/documents/instituto politecnico nacional/escom/semestre5/arquitectura computacional/practica2intento2/decodificador_7bits.vhd(15[1] 26[10])
    defparam i2_4_lut.init = 16'hfefb;
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

