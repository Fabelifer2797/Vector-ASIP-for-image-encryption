module scalarALU #(parameter N = 32) (input logic [N-1:0] regData1, regData2,
                                        input logic [1:0] aluControl,
                                        output logic [N-1:0] ALUS_res,
                                        output logic [3:0] ALUFlags);

        logic [N-1:0] resultAdd, resultSubstract, resultXOR, resultROR;
        logic carryAdd, carrySubstract;
        logic negFlag, zFlag, ovFlag, cFlag;

        addition #(N) AddOperation(regData1, regData2, resultAdd, carryAdd);
        substraction #(N) subsOperation(regData1, regData2, resultSubstract, carrySubstract);
        exclusiveOR #(N) xorOperation(regData1, regData2, resultXOR);
        ror #(N) rorOperation(regData1, regData2, resultROR);

        mux8 #(N) (); // COMPLETAR

        negativeFlag nF(ALUS_res[N-1], negFlag);
        zeroFlag #(N) zF(ALUS_res, zFlag);
        overflowFlag oV(regData1[N-1], regData2[N-1], ALUS_res[N-1], aluControl, ovFlag);
        carryFlag cF(carryAdd, carrySubstract, aluControl, cFlag);

        assign ALUFlags = {negFlag, zFlag, ovFlag, cFlag};


        



endmodule 