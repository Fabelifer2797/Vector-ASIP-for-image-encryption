module pipelineDecode(input clk, rst, 
                    input logic [1:0] conEnPipeD_In, jmpFPipeD_In, ALUcontrolPipeD_In, wEnMemPipeD_In, wEnRegPipeD_In,
                    input logic [3:0] rdPipeD_In, rf1_pipeDIn, rf2_pipeDIn,
                    input logic SE_controlPipeD_In, AluMux_selPipeD_In, memoryMuxSelPipeD_In, readModeMemPipeD_In,
                    input logic [63:0] regData1_pipeDIn, regData2_pipeDIn,
                    output logic [1:0] conEnPipeD_Out, jmpFPipeD_Out, ALUcontrolPipeD_Out, wEnMemPipeD_Out, wEnRegPipeD_Out,
                    output logic [3:0] rdPipeD_Out, rf1_pipeDout, rf2_pipeDout,
                    output logic SE_controlPipeD_Out, AluMux_selPipeD_Out, memoryMuxSelPipeD_Out, readModeMemPipeD_Out,
                    output logic [63:0] regData1_pipeDout, regData2_pipeDout);

        always_ff @(posedge clk or posedge rst)
        if (rst) begin
            conEnPipeD_Out <= 2'h0;
            jmpFPipeD_Out <= 2'h0;
            ALUcontrolPipeD_Out <= 2'h0;
            wEnMemPipeD_Out <= 2'h0;
            wEnRegPipeD_Out <= 2'h0;
            rdPipeD_Out <= 4'h0;
            rf1_pipeDout <= 4'h0;
            rf2_pipeDout <= 4'h0;
            SE_controlPipeD_Out <= 1'b0;
            AluMux_selPipeD_Out <= 1'b0;
            memoryMuxSelPipeD_Out <= 1'b0;
            readModeMemPipeD_Out <= 1'b0;
            regData1_pipeDout <= 64'h0;
            regData2_pipeDout <= 64'h0;
        end

        else begin

            conEnPipeD_Out <= conEnPipeD_In;
            jmpFPipeD_Out <= jmpFPipeD_In;
            ALUcontrolPipeD_Out <= ALUcontrolPipeD_In;
            wEnMemPipeD_Out <= wEnMemPipeD_In;
            wEnRegPipeD_Out <= wEnRegPipeD_In;
            rdPipeD_Out <= rdPipeD_In;
            rf1_pipeDout <= rf1_pipeDIn;
            rf2_pipeDout <= rf2_pipeDIn;
            SE_controlPipeD_Out <= SE_controlPipeD_In;
            AluMux_selPipeD_Out <= AluMux_selPipeD_In;
            memoryMuxSelPipeD_Out <= memoryMuxSelPipeD_In;
            readModeMemPipeD_Out <= readModeMemPipeD_In;
            regData1_pipeDout <= regData1_pipeDIn;
            regData2_pipeDout <= regData2_pipeDIn;

            
        end




endmodule