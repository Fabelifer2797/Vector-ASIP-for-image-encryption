module pipelineFetch(input clk, rst, 
                    input logic [31:0] instF, currPCIn,
                    output logic [1:0] opN, funT, output logic inmF,
                    output logic [3:0] funC, RD, RF1, RF2,
                    output logic [22:0] inm_Addr,
                    output logic [31:0] currPC);

        always_ff @(posedge clk or posedge rst)
        if (rst) begin
            opN <= 2'h0;
            funT <= 2'h0;
            inmF <= 1'b0;
            funC <= 4'h0;
            RD <= 4'h0;
            RF1 <= 4'h0;
            RF2 <= 4'h0;
            inm_Addr <= 23'h0;
            currPC <= 32'h0; 
        end

        else begin

            opN <= instF[31:30];
            funT <= instF[24:23];
            inmF <= instF[25];
            funC <= instF[29:26];
            RD <= instF[3:0];
            RF1 <= instF[7:4];
            RF2 <= instF[11:8];
            inm_Addr <= instF[22:0];
            currPc <= currPCIn;

            
        end




endmodule