module ror #(parameter N = 32) (input logic [N-1:0] A, B,
                                output logic [N-1:0] C);

    
    
    always_comb

        C =  {A, A} >> B;
    



endmodule