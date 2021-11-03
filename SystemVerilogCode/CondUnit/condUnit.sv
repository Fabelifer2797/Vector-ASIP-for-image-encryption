module condUnit(input clk,rst,condEn,input[1:0]jmpF,input[3:0]ALUFlags,
						output logic JmpEn);
	logic[3:0] flagsOutput;
	always_comb begin
		if(jmpF == 2'b01)
			JmpEn = 1'b1;
		else if((jmpF == 2'b11)&&(flagsOutput[2] == 1'b1))
			JmpEn = 1'b1;
		else
			JmpEn = 1'b0;
		end
	FlipFlop #(4)flipiflopi(condEn1&~clk,rst,ALUFlags,flagsOutput);
endmodule 