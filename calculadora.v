module calculadora(
  input   [7:0] entrada_A,
  input   [7:0] entrada_B,
  input   [2:0] codigo,
  output  [7:0] saida
);

reg [7:0] resultado;

always @(*) begin
  case (codigo)
    3'b000: resultado = entrada_A + entrada_B; 
    3'b001: resultado = entrada_A - entrada_B; 
    3'b010: resultado = entrada_A;             
    3'b011: resultado = entrada_B;             
    default: resultado = 8'b00000000;          
  endcase
end

assign saida = resultado;

endmodule
