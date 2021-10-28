module vectorialRegisterBank(input logic clk, wEn_VR,
                                input logic [3:0] regvAddr1, regvAddr2, regvAddr3,
                                input logic [63:0] regvWriteData,
                                output logic [63:0] regvData1, regvData2);

    logic [63:0] vectorialRegs[15:0];

    always_ff @(negedge clk)

        if(wEn_VR) vectorialRegs[regvAddr3] <= regvWriteData;

    assign regvData1 = vectorialRegs[regvAddr1];
    assign regvData2 = vectorialRegs[regvAddr2];




endmodule