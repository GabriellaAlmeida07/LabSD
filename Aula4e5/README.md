# Parte 1: 8-bit counter

Foi implementado um contador de 8 bits, utilizando 8 Flip-Flops T. A lógica de cada um dos Flip-Flops consiste em alterar o estado, dessa forma se o FF iniciou com o valor 0, sua saída será 1, a depender da borda do clock e, então, ocorrerá o chamado “toggle” (alternância de estado).
O reset é usado para redefinir o Flip-Flop para um estado desejado, nesta implementação será resetado o valor 1, assim a contagem pode iniciar em 1 e não necessariamente começar do zero.
    O clear altera os valores de todos os Flip-Flops, independentemente de seu estado atual eles serão forçados para o estado 0.
