module mux2 #(parameter N = 64)(input logic[N-1:0] input0, input1,
											input logic sel,
											output logic[N-1:0] outMux2);
											
											
	assign outMux2 = sel ? input1 : input0;
											
											
											
endmodule