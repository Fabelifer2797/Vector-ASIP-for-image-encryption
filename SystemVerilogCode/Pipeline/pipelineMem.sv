module pipelineMem(input clk, rst, 
                    input logic [1:0] wEnRegPipeM_In,
                    input logic [3:0] rdPipeM_In,
                    input logic [63:0] writeData,
                    output logic [1:0] wEnRegPipeM_Out,
                    output logic [3:0] rdPipeM_Out,
                    output logic [63:0] writeDataPipeM_Out);

        always_ff @(posedge clk or posedge rst)
        if (rst) begin
            wEnRegPipeM_Out <= 2'h0;
            rdPipeM_Out <= 4'h0;
            writeDataPipeM_Out <= 64'h0;
        end

        else begin

            wEnRegPipeM_Out <= wEnRegPipeM_In;
            rdPipeM_Out <= rdPipeM_In;
            writeDataPipeM_Out <= writeData;

            
        end




endmodule