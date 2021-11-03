module zeroFlag #(parameter N = 32)(input logic [N-1:0] C,
                                    output logic zF);

    assign zF = (C == '0);



endmodule