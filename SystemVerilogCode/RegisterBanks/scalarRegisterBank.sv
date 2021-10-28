module scalarRegisterBank(input logic clk, input logic wEn_SR,
                            input logic [3:0] regsAddr1, regsAddr2, regsAddr3,
                            input logic [31:0] regsWriteData,
                            output logic [31:0] regsData1, regsData2);


    logic [31:0] scalarRegs[15:0];

    always_ff @(negedge clk)

        if(wEn_SR) scalarRegs[regsAddr3] <= regsWriteData;

    assign regsData1 = scalarRegs[regsAddr1];
    assign regsData2 = scalarRegs[regsAddr2];




endmodule