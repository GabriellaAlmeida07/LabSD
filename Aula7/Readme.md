# Memory Blocks

Simulação no ModelSim:
![simulacao](https://github.com/user-attachments/assets/ffe06850-68d2-4494-bd51-2a621d988629)

## Parte 1:

Utilizou-se a memória de 32 palavras de 4 bits própria da FPGA.
Após a implementação do código VHDL, que instanciou essa memória, foi simulado seu comportamento, através do ModelSim.
Nessa simulação, "write" habilita a escrita nos endereços de memória especificados por "address", "dataIn" são os dados recebidos e "dataOut" é a exibição dos dados a partir de um endereço.

## Parte 2:

Na parte 2, a simulação foi feita diretamente na FPGA, onde KEY0 é o clock, os inputs SW3−0 representam os dados a serem armazenados no endereço de memória descrito pelos switches SW8−4.
Nos displays de 7-segmentos são exibidos o conteúdo lido da memória (display HEX0), a partir de um endereço de memória (display HEX5-4), e o conteúdo atual, fornecido pelos inputs (SW3−0), que se write habilitado (SW9), essa informação será armazenada no endereço especificado.

## Parte 3:

Nesta parte, a memória não foi instanciada diretamente da FPGA (como anteriormente), portanto foi usado um array bidimensional para representar a RAM de 32 palavras de 4 bits. Esse array foi mapeado em blocos de memória embutidos no FPGA. O código VHDL foi escrito para permitir tanto a escrita quanto a leitura de dados na RAM, utilizando os mesmos switches e displays da Parte 2.

## Parte 4:

O código VHDL implementa uma memória RAM de duas portas, instanciadas da própria FPGA, assim é possível realizar leitura e escrita simultaneamente em endereços diferentes. 
A leitura da RAM é feita com o contador percorrendo os endereços e mostrando cada palavra armazenada na RAM por aproximadamente um segundo no display HEX0, enquanto os endereços de leitura são exibidos nos displays HEX3-2. Para a escrita, o endereço e o valor são selecionados usando os switches (SW8-4 para o endereço e SW3-0 para o valor), e o endereço de escrita e seu valor são exibidos nos displays HEX5-4 e HEX1.
