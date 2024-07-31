module sevensegdec (
    input logic [3:0] d,
    output logic [7:0] o
);
    always_comb begin
        case (d)
            4'b0000: o = 7'b0111111; // Correspondente 0
            4'b0001: o = 7'b0000110; // Correspondente 1
            4'b0010: o = 7'b1011011; // Correspondente 2
            4'b0011: o = 7'b1001111; // Correspondente 3
            4'b0100: o = 7'b1100110; // Correspondente 4
            4'b0101: o = 7'b1101101; // Correspondente 5
            4'b0110: o = 7'b1111101; // Correspondente 6
            4'b0111: o = 7'b0000111; // Correspondente 7
            4'b1000: o = 7'b1111111; // Correspondente 8
            4'b1001: o = 7'b1101111; // Correspondente 9
            default: o = 7'b0000000; // Nenhum Ligado(off)
        endcase
    end

endmodule
