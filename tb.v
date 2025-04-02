module tb();

// Sinais gerais
reg   [7:0] entrada_A;
reg   [7:0] entrada_B;
reg   [2:0] codigo;
wire  [7:0] saida;

reg [18:0] dados_arquivo [0:3];

calculadora c(
  .entrada_A(entrada_A),
  .entrada_B(entrada_B),
  .codigo(codigo),
  .saida(saida)
);

integer i;

initial begin
  
  $readmemb("teste.txt", dados_arquivo); // le o arquivo de entrada e guarda em dados_arquivo

  $dumpfile("saida.vcd");
  $dumpvars(0, tb);

  $monitor("codigo=%b, entrada_A=%b, entrada_B=%b, saida=%b", codigo, entrada_A, entrada_B, saida);
  
  for (i = 0; i < 4; i = i + 1) begin
    codigo    = dados_arquivo[i][18:16];
    entrada_A = dados_arquivo[i][15:8];
    entrada_B = dados_arquivo[i][7:0];
    #1;
  end

end

endmodule