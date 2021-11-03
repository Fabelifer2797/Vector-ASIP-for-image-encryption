module vectorialROR #(parameter N = 64) (input logic [N-1:0] A, B,
                                        output logic [N-1:0] C);

    assign C[7:0] = {A[7:0], A[7:0]} >> B[7:0];
    assign C[15:8] = {A[15:8], A[15:8]} >> B[15:8];
    assign C[23:16] = {A[23:16], A[23:16]} >> B[23:16];
    assign C[31:24] = {A[31:24], A[31:24]} >> B[31:24];
    assign C[39:32] = {A[39:32], A[39:32]} >> B[39:32];
    assign C[47:40] = {A[47:40], A[47:40]} >> B[47:40];
    assign C[55:48] = {A[55:48], A[55:48]} >> B[55:48];
    assign C[63:56] = {A[63:56], A[63:56]} >> B[63:56];


endmodule