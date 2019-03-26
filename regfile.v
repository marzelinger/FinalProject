module regfile(clock, ctrl_writeEnable, ctrl_reset, ctrl_writeReg, ctrl_readRegA, ctrl_readRegB, data_writeReg, data_readRegA, data_readRegB, reg0, reg1, reg2, reg3, reg4, reg5, reg6, reg7, reg8, reg9, reg10, reg11, reg12, reg13, reg14, reg15, reg16, reg17, reg18, reg19, reg20, reg21, reg22, reg23, reg24, reg25, reg26, reg27, reg28, reg29, reg30, reg31); 
	input clock, ctrl_writeEnable, ctrl_reset;
	input [4:0] ctrl_writeReg, ctrl_readRegA, ctrl_readRegB; 
	input [31:0] data_writeReg;

	output [31:0] data_readRegA, data_readRegB;
	
	output [31:0] reg0, reg1, reg2, reg3, reg4, reg5, reg6, reg7, reg8, reg9, reg10, reg11, reg12, reg13, reg14, reg15, reg16, reg17, reg18, reg19, reg20, reg21, reg22, reg23, reg24, reg25, reg26, reg27, reg28, reg29, reg30, reg31;
	wire [31:0] writeReg, regReadA, regReadB;
	
	my_decoder d1(ctrl_writeReg, writeReg);
	my_decoder d2(ctrl_readRegA, regReadA);
	my_decoder d3(ctrl_readRegB, regReadB);
	
	wire [31:0] writeEnables;
	genvar c;
	generate
		for(c = 0; c < 32; c = c +1) begin: loop1
			and(writeEnables[c], ctrl_writeEnable, writeReg[c]);
		end
	endgenerate 
	
	my_reg my_reg0(clock, ctrl_reset, data_writeReg,  ctrl_reset, reg0);
	my_reg my_reg1(clock, writeEnables[1],data_writeReg,  ctrl_reset, reg1);
	my_reg my_reg2(clock, writeEnables[2],data_writeReg,  ctrl_reset, reg2);
	my_reg my_reg3(clock, writeEnables[3],data_writeReg,  ctrl_reset, reg3);
	my_reg my_reg4(clock, writeEnables[4],data_writeReg,  ctrl_reset, reg4);
	my_reg my_reg5(clock, writeEnables[5],data_writeReg,  ctrl_reset, reg5);
	my_reg my_reg6(clock, writeEnables[6],data_writeReg,  ctrl_reset, reg6);
	my_reg my_reg7(clock, writeEnables[7],data_writeReg,  ctrl_reset, reg7);
	my_reg my_reg8(clock, writeEnables[8],data_writeReg,  ctrl_reset, reg8);
	my_reg my_reg9(clock, writeEnables[9],data_writeReg,  ctrl_reset, reg9);
	my_reg my_reg10(clock, writeEnables[10],data_writeReg,  ctrl_reset, reg10);
	my_reg my_reg11(clock, writeEnables[11],data_writeReg,  ctrl_reset, reg11);
	my_reg my_reg12(clock, writeEnables[12],data_writeReg,  ctrl_reset, reg12);
	my_reg my_reg13(clock, writeEnables[13],data_writeReg,  ctrl_reset, reg13);
	my_reg my_reg14(clock, writeEnables[14],data_writeReg,  ctrl_reset, reg14);
	my_reg my_reg15(clock, writeEnables[15],data_writeReg,  ctrl_reset, reg15);
	my_reg my_reg16(clock, writeEnables[16],data_writeReg,  ctrl_reset, reg16);
	my_reg my_reg17(clock, writeEnables[17],data_writeReg,  ctrl_reset, reg17);
	my_reg my_reg18(clock, writeEnables[18],data_writeReg,  ctrl_reset, reg18);
	my_reg my_reg19(clock, writeEnables[19],data_writeReg,  ctrl_reset, reg19);
	my_reg my_reg20(clock, writeEnables[20],data_writeReg,  ctrl_reset, reg20);
	my_reg my_reg21(clock, writeEnables[21],data_writeReg,  ctrl_reset, reg21);
	my_reg my_reg22(clock, writeEnables[22],data_writeReg,  ctrl_reset, reg22);
	my_reg my_reg23(clock, writeEnables[23],data_writeReg,  ctrl_reset, reg23);
	my_reg my_reg24(clock, writeEnables[24],data_writeReg,  ctrl_reset, reg24);
	my_reg my_reg25(clock, writeEnables[25],data_writeReg,  ctrl_reset, reg25);
	my_reg my_reg26(clock, writeEnables[26],data_writeReg,  ctrl_reset, reg26);
	my_reg my_reg27(clock, writeEnables[27],data_writeReg,  ctrl_reset, reg27);
	my_reg my_reg28(clock, writeEnables[28],data_writeReg,  ctrl_reset, reg28);
	my_reg my_reg29(clock, writeEnables[29],data_writeReg,  ctrl_reset, reg29);
	my_reg my_reg30(clock, writeEnables[30],data_writeReg,  ctrl_reset, reg30);
	my_reg my_reg31(clock, writeEnables[31],data_writeReg,  ctrl_reset, reg31);
	
	my_tristate tri0a(reg0, regReadA[0], data_readRegA);
	my_tristate tri1a(reg1, regReadA[1], data_readRegA);
	my_tristate tri2a(reg2, regReadA[2], data_readRegA);
	my_tristate tri3a(reg3, regReadA[3], data_readRegA);
	my_tristate tri4a(reg4, regReadA[4], data_readRegA);
	my_tristate tri5a(reg5, regReadA[5], data_readRegA);
	my_tristate tri6a(reg6, regReadA[6], data_readRegA);
	my_tristate tri7a(reg7, regReadA[7], data_readRegA);
	my_tristate tri8a(reg8, regReadA[8], data_readRegA);
	my_tristate tri9a(reg9, regReadA[9], data_readRegA);
	my_tristate tri10a(reg10, regReadA[10], data_readRegA);
	my_tristate tri11a(reg11, regReadA[11], data_readRegA);
	my_tristate tri12a(reg12, regReadA[12], data_readRegA);
	my_tristate tri13a(reg13, regReadA[13], data_readRegA);
	my_tristate tri14a(reg14, regReadA[14], data_readRegA);
	my_tristate tri15a(reg15, regReadA[15], data_readRegA);
	my_tristate tri16a(reg16, regReadA[16], data_readRegA);
	my_tristate tri17a(reg17, regReadA[17], data_readRegA);
	my_tristate tri18a(reg18, regReadA[18], data_readRegA);
	my_tristate tri19a(reg19, regReadA[19], data_readRegA);
	my_tristate tri20a(reg20, regReadA[20], data_readRegA);
	my_tristate tri21a(reg21, regReadA[21], data_readRegA);
	my_tristate tri22a(reg22, regReadA[22], data_readRegA);
	my_tristate tri23a(reg23, regReadA[23], data_readRegA);
	my_tristate tri24a(reg24, regReadA[24], data_readRegA);
	my_tristate tri25a(reg25, regReadA[25], data_readRegA);
	my_tristate tri26a(reg26, regReadA[26], data_readRegA);
	my_tristate tri27a(reg27, regReadA[27], data_readRegA);
	my_tristate tri28a(reg28, regReadA[28], data_readRegA);
	my_tristate tri29a(reg29, regReadA[29], data_readRegA);
	my_tristate tri30a(reg30, regReadA[30], data_readRegA);
	my_tristate tri31a(reg31, regReadA[31], data_readRegA);
	
	my_tristate tri0b(reg0, regReadB[0], data_readRegB);
	my_tristate tri1b(reg1, regReadB[1], data_readRegB);
	my_tristate tri2b(reg2, regReadB[2], data_readRegB);
	my_tristate tri3b(reg3, regReadB[3], data_readRegB);
	my_tristate tri4b(reg4, regReadB[4], data_readRegB);
	my_tristate tri5b(reg5, regReadB[5], data_readRegB);
	my_tristate tri6b(reg6, regReadB[6], data_readRegB);
	my_tristate tri7b(reg7, regReadB[7], data_readRegB);
	my_tristate tri8b(reg8, regReadB[8], data_readRegB);
	my_tristate tri9b(reg9, regReadB[9], data_readRegB);
	my_tristate tri10b(reg10, regReadB[10], data_readRegB);
	my_tristate tri11b(reg11, regReadB[11], data_readRegB);
	my_tristate tri12b(reg12, regReadB[12], data_readRegB);
	my_tristate tri13b(reg13, regReadB[13], data_readRegB);
	my_tristate tri14b(reg14, regReadB[14], data_readRegB);
	my_tristate tri15b(reg15, regReadB[15], data_readRegB);
	my_tristate tri16b(reg16, regReadB[16], data_readRegB);
	my_tristate tri17b(reg17, regReadB[17], data_readRegB);
	my_tristate tri18b(reg18, regReadB[18], data_readRegB);
	my_tristate tri19b(reg19, regReadB[19], data_readRegB);
	my_tristate tri20b(reg20, regReadB[20], data_readRegB);
	my_tristate tri21b(reg21, regReadB[21], data_readRegB);
	my_tristate tri22b(reg22, regReadB[22], data_readRegB);
	my_tristate tri23b(reg23, regReadB[23], data_readRegB);
	my_tristate tri24b(reg24, regReadB[24], data_readRegB);
	my_tristate tri25b(reg25, regReadB[25], data_readRegB);
	my_tristate tri26b(reg26, regReadB[26], data_readRegB);
	my_tristate tri27b(reg27, regReadB[27], data_readRegB);
	my_tristate tri28b(reg28, regReadB[28], data_readRegB);
	my_tristate tri29(reg29, regReadB[29], data_readRegB);
	my_tristate tri30(reg30, regReadB[30], data_readRegB);
	my_tristate tri31(reg31, regReadB[31], data_readRegB);
	
	
	
endmodule