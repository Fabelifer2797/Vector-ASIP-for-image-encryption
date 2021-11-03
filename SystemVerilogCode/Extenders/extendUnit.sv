module extenUnit (input logic [22:0] inm,
				     input logic [1:0] extendSel,
					  output logic [31:0] extendRes);
	
	always_comb
		case(Sel)
			// 23 bits address
			2'b01: extendRes = {{9{inm[22]}}, inm[22:0]};
			// 19 bits inmediate
			2'b10: extendRes = {{13{inm[22]}}, inmeIn[22:4]};
			// 15 bits
			2'b11: extendRes = {{17{inm[22]}}, inmeIn[22:8]};		
			default: extendRes = 'b0;
		endcase
		
endmodule 