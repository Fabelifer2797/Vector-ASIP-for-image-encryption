module carryFlag (input logic CarryAdd, CarrySubtract, CarryMultipy, CarryDivide,
				  input logic [2:0] Sel, 
				  output logic Result);
			
	assign Result = (CarryAdd & (Sel == 3'b010)) | (CarrySubtract & (Sel == 3'b011));
													
endmodule 