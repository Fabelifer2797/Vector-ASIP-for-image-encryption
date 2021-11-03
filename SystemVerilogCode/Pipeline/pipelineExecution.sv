module pipelineExecution(input clk, rst, 
                    input logic [1:0] wEnMemPipeEx_In, wEnRegPipeEx_In,
                    input logic [3:0] rdPipeEx_In,
                    input logic memoryMuxSelPipeEx_In, readModeMemPipeEx_In,
                    input logic [63:0] ALU_res, regData2_pipeExIn,
                    output logic [1:0] wEnMemPipeEx_Out, wEnRegPipeEx_Out,
                    output logic [3:0] rdPipeEx_Out,
                    output logic memoryMuxSelPipeEx_Out, readModeMemPipeEx_Out,
                    output logic [63:0] aluRes_pipeExOut, regData2_pipeExOut);

        always_ff @(posedge clk or posedge rst)
        if (rst) begin
            wEnMemPipeEx_Out <= 2'h0;
            wEnRegPipeEx_Out <= 2'h0;
            rdPipeEx_Out <= 4'h0;
            memoryMuxSelPipeEx_Out <= 1'b0;
            readModeMemPipeEx_Out <= 1'b0;
            aluRes_pipeExOut <= 64'h0;
            regData2_pipeExOut <= 64'h0;
        end

        else begin

            wEnMemPipeEx_Out <= wEnMemPipeEx_In;
            wEnRegPipeEx_Out <= wEnRegPipeEx_In;
            rdPipeEx_Out <= rdPipeEx_In;
            memoryMuxSelPipeEx_Out <= memoryMuxSelPipeEx_In;
            readModeMemPipeEx_Out <= readModeMemPipeEx_In;
            aluRes_pipeExOut <= ALU_res;
            regData2_pipeExOut <= regData2_pipeExIn;

            
        end




endmodule