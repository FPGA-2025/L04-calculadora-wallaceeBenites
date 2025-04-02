# Criando uma Calculadora

> O objetivo desta atividade é exercitar a criação de uma calculadora utilizando circuitos combinacionais aritméticos.

O circuito a ser criado é uma simples calculadora que soma, subtrai ou então mostra dois números de oito bits. Um circuito dessa natureza pode ser considerado uma ALU (Unidade Lógico Aritmética) muito simples. De certa forma, a ALU é o coração de um processador e fazer essa calculadora será um passo importante para o desenvolvimento do seu próprio processador, no futuro.

# Como funciona a calculadora?

A calculadora possui duas entradas e uma saída de oito bits para receber os números. Há também uma entrada de 3 bits para indicar qual operação deve ser realizada. As operações são `zerar`, `mostrar_A`, `mostrar_B`, `somar` e `subtrair`. O código de cada operação aparece nos exemplos abaixo:

| Operação | Código | Entrada_A | Entrada_B |   Saida   |
|----------|--------|-----------|-----------|-----------|
|   zerar  |  000   | 1111 0000 | 0000 1111 | 0000 0000 |
| mostrar_A|  001   | 1010 1010 | 1111 0000 | 1010 1010 |
| mostrar_B|  010   | 1010 1010 | 1111 0000 | 1111 0000 |
|  somar   |  011   | 0000 1110 | 0000 0010 | 0001 0000 |
| subtrair |  100   | 0000 1111 | 0001 0000 | 1111 1111 |

 - Quando a operação for zerar, a saída deve ser zero independentemente das entradas;
 - Quando a operação for mostrar A ou B, a entrada correspondente deve aparecer na saída;
 - Quando a operação for somar, a saída deve ser a soma das entradas A e B;
 - Quando a operação for subtrair, a saída deve ser a diferença A - B;
 - Quando a operação for diferente das mostradas, ou seja, inválida, a saída deve ser zero (como na operação zerar).

Note que quando o resultado for negativo, a saída deve estar em complemento de dois. A boa notícia é que a linguagem verilog trata o resultado de substrações automaticamente e, se o código for escrito corretamente, a saída já estará no formato solicitado.

Quando o resultado da soma for um número maior do que os 8 bits da saída são capazes de representar, ocorrerá overflow. Isso significa que a saída irá "dar a volta" e recomeçar a contar a partir do zero. Isso também já é tratado pelo verilog.

> A calculadora deve utilizar apenas circuitos combinacionais, ou seja, não é permitido usar sinais do tipo `reg`.

# Execução da atividade

Siga o modelo de módulo já fornecido e utilize o testbench e scripts de execução para sua verificação. Em seguida, implemente o circuito de acordo com as especificações e, se necessário, crie outros testes para verificá-lo.

Uma vez que estiver satisfeito com o circuito, execute o script de testes com `./run-all.sh`. Serão feitos 10 testes: cada um deles mostrará na tela `ERRO` em caso de falha ou `OK` em caso de sucesso.

# Entrega

Para entregar o projeto, basta fazer um *commit* no repositório do GitHub. O GitHub Classroom já está configurado para verificar a entrega e atribuir a nota dos testes automaticamente.

> Os testes do GitHub estão embutidos nos arquivos do laboratório. Se quiser saber mais sobre eles, veja o script de correção 'run.sh' do repositório do GitHub. Não altere os arquivos de correção!
