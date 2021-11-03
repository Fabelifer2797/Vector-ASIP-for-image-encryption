module instructionMemory(input logic [31:0] iMemAddr,
                            output logic [31:0] iMemReadData);


    logic [31:0] instructionMEM[255:0];

    initial
        $readmemh("C:/Proyectos_Quartus/Vector-ASIP-for-image-encryption/SystemVerilogCode/InputTXT/instructions.txt", instructionMEM);

    assign iMemReadData = instructionMEM[iMemAddr[31:0]];

endmodule