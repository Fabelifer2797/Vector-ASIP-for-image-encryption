module overflowFlag (input logic MSBA, MSBB, MSBC,
					  input logic [2:0] Sel, 
					  output logic Res);


	logic Operation, OpSigns, SignChange;

	assign Operation = Sel[2:1] == 2'b01;
	assign OpSigns = !(MSBA ^ Sel[0] ^ MSBB); 
	assign SignChange = (MSBA ^ MSBC); 
	assign Res = Operation & OpSigns & SignChange;

endmodule 