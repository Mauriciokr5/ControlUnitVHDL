// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.12.0.240.2
// Netlist written on Sun Apr 03 13:04:32 2022
//
// Verilog Description of module FSM
//

module FSM (selector, CLK_MASTER, SALIDA);   // d:/documentos/escom/quinto semestre/arquitectura de computadoras/practica 2/practica2intento2/unidadcontrol.vhd(6[8:11])
    input [1:0]selector;   // d:/documentos/escom/quinto semestre/arquitectura de computadoras/practica 2/practica2intento2/unidadcontrol.vhd(9[2:10])
    input CLK_MASTER /* synthesis .original_dir=IN_OUT */ ;   // d:/documentos/escom/quinto semestre/arquitectura de computadoras/practica 2/practica2intento2/unidadcontrol.vhd(10[2:12])
    output [12:0]SALIDA;   // d:/documentos/escom/quinto semestre/arquitectura de computadoras/practica 2/practica2intento2/unidadcontrol.vhd(11[2:8])
    
    
    wire GND_net, VCC_net;
    
    VHI i1006 (.Z(VCC_net));
    OB SALIDA_pad_12 (.I(GND_net), .O(SALIDA[12]));   // d:/documentos/escom/quinto semestre/arquitectura de computadoras/practica 2/practica2intento2/unidadcontrol.vhd(11[2:8])
    OB SALIDA_pad_11 (.I(GND_net), .O(SALIDA[11]));   // d:/documentos/escom/quinto semestre/arquitectura de computadoras/practica 2/practica2intento2/unidadcontrol.vhd(11[2:8])
    OB SALIDA_pad_10 (.I(GND_net), .O(SALIDA[10]));   // d:/documentos/escom/quinto semestre/arquitectura de computadoras/practica 2/practica2intento2/unidadcontrol.vhd(11[2:8])
    OB SALIDA_pad_9 (.I(GND_net), .O(SALIDA[9]));   // d:/documentos/escom/quinto semestre/arquitectura de computadoras/practica 2/practica2intento2/unidadcontrol.vhd(11[2:8])
    OB SALIDA_pad_8 (.I(GND_net), .O(SALIDA[8]));   // d:/documentos/escom/quinto semestre/arquitectura de computadoras/practica 2/practica2intento2/unidadcontrol.vhd(11[2:8])
    OB SALIDA_pad_7 (.I(GND_net), .O(SALIDA[7]));   // d:/documentos/escom/quinto semestre/arquitectura de computadoras/practica 2/practica2intento2/unidadcontrol.vhd(11[2:8])
    OB SALIDA_pad_6 (.I(GND_net), .O(SALIDA[6]));   // d:/documentos/escom/quinto semestre/arquitectura de computadoras/practica 2/practica2intento2/unidadcontrol.vhd(11[2:8])
    OB SALIDA_pad_5 (.I(GND_net), .O(SALIDA[5]));   // d:/documentos/escom/quinto semestre/arquitectura de computadoras/practica 2/practica2intento2/unidadcontrol.vhd(11[2:8])
    OB SALIDA_pad_4 (.I(GND_net), .O(SALIDA[4]));   // d:/documentos/escom/quinto semestre/arquitectura de computadoras/practica 2/practica2intento2/unidadcontrol.vhd(11[2:8])
    OB SALIDA_pad_3 (.I(GND_net), .O(SALIDA[3]));   // d:/documentos/escom/quinto semestre/arquitectura de computadoras/practica 2/practica2intento2/unidadcontrol.vhd(11[2:8])
    OB SALIDA_pad_2 (.I(GND_net), .O(SALIDA[2]));   // d:/documentos/escom/quinto semestre/arquitectura de computadoras/practica 2/practica2intento2/unidadcontrol.vhd(11[2:8])
    OB SALIDA_pad_1 (.I(GND_net), .O(SALIDA[1]));   // d:/documentos/escom/quinto semestre/arquitectura de computadoras/practica 2/practica2intento2/unidadcontrol.vhd(11[2:8])
    OB SALIDA_pad_0 (.I(GND_net), .O(SALIDA[0]));   // d:/documentos/escom/quinto semestre/arquitectura de computadoras/practica 2/practica2intento2/unidadcontrol.vhd(11[2:8])
    GSR GSR_INST (.GSR(VCC_net));
    TSALL TSALL_INST (.TSALL(GND_net));
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    VLO i998 (.Z(GND_net));
    
endmodule
//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

