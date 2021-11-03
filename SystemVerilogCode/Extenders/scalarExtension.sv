module scalarExtension(input logic [63:0] regData2_In,
                        input logic  SE_controlPipeD_Out,
                        output logic [63:0] regData2_Out);

    always_comb

        case(SE_controlPipeD_Out)

            1'b1 : regData2_Out = {8{regData2_In[7:0]}};
            1'b0:  regData2_Out = regData2_In;
            default : regData2_Out = 'h0;

        endcase



endmodule