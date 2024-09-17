# Parte 1: 8-bits counter

![8bitscounter](https://github.com/user-attachments/assets/1e678acf-6477-4203-8802-23a9ae306834)

![WhatsApp Image 2024-09-12 at 22 52 10](https://github.com/user-attachments/assets/42f06ed4-fba8-491a-9201-77c1f4581b15)

Foi implementado um contador de 8 bits, utilizando 8 Flip-Flops T. A lógica de cada um dos Flip-Flops consiste em alterar o estado, dessa forma se o FF iniciou com o valor 0, sua saída será 1, a depender da borda do clock e, então, ocorrerá o chamado “toggle” (alternância de estado).
O reset é usado para redefinir o Flip-Flop para um estado desejado, nesta implementação será resetado o valor 1, assim a contagem pode iniciar em 1 e não necessariamente começar do zero.
O clear altera os valores de todos os Flip-Flops, independentemente de seu estado atual eles serão forçados para o estado 0.

Para implementar o FF-T, usamos o FF-D, que contém 4 portas lógicas (2 NANDs e 2 NORs) e mais uma porta NOT, ou seja, cada FF_T tem 5 portas lógicas. Para implementar o contador de 8 bits precisamos de 8 FF_T e mais 7 portas ANDs. Ao todo são 47 portas lógicas.


# Parte 2: 16-bits counter

![16bitscounter](https://github.com/user-attachments/assets/872843aa-f5ca-407e-a5c1-5be2e1cc67be)

![simulacao16](https://github.com/user-attachments/assets/687e99ad-d39c-42e7-a59e-7f9c61b7e9e8)

O processo é sensível ao clock e ao reset. Se o reset for ativado (reset = '1'), o contador é zerado.
Caso contrário, a cada borda de subida do clock (rising_edge(clk)), o contador é incrementado em 1.

Para um contador de 16 bits, são necessários 16 flip-flops(somadores).
Cada somador de 1 bit (full adder) usa 3 portas lógicas principais: AND, OR e XOR.
Para cada bit, temos:
2 portas AND 1 porta XOR e 1 porta OR. Logo, 3 portas lógicas por bit.
Portanto, temos:
Flip-Flops: 16
Portas Lógicas: 32 (AND) + 16 (XOR) + 16 (OR) = 64 portas lógicas

