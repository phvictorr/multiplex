/* Implemente um programa que represente o circuito multiplexador 4x1 mostrado na
figura abaixo. A(0), A(1), A(2) e A(3) devem ser representados por números
binários de 32 bits. 

By Felipe Victor, @phvictorr

*/

module main(A0, A1, A2, A3, SEL1, SEL2, C);
    input [31:0] A0, A1, A2, A3; // Entradas
    input SEL1, SEL2; // Seletores (2, conforme o desenho)
    output [31:0] C; // Saída
    assign C = A0&(~SEL1&~SEL2) | A1&(~SEL1&SEL2) | A2&(SEL1&SEL2) | A3&(SEL1&SEL2); // atribuindo a saída e suas combinações a C, onde ~ é negado
endmodule