module vectorialALU #(parameter N = 64) (input logic [N-1:0] regData1, regData2,
													   input logic [1:0] aluControl,
													   output logic [N-1:0] ALUV_res);

			
	logic [N-1:0] resultAdd, resultSubtract, resulXOR, resultROR;
			
	vectorialAdd #(N) vAdd(regData1, regData2, resultAdd);
    vectorialSub #(N) vSub(regData1, regData2, resultSubtract);
	vectorialXOR #(N) vXOR(regData1, regData2, resulXOR);
	vectorialROR #(N) vROR(regData1, regData2, resultROR);
	
	mux8 #(64) vectorialMux8 (); // COMPLETAR
					
endmodule 