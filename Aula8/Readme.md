# Finite State Machine

Na FSM (Finite State Machine) implementada, há 9 estados sendo eles de A à I.
A transição de estados é determinada pela entrada w, ou seja, o estado atual da máquina.
Essa máquina de estados segue o padrão da Máquina de Moore.
Se w = 0, máquina transita para estados que contam 0; se w = 1 a maquina pode resetar ou transitar para estados que contam 1.
A saída Z é 1, quando a máquina esta nos estados E_1 ou I_1, indicando uma condição de interesse.
No estado A_0 (inicial), ela aguarda entrada. Dependendo da sequência de 0s ou 1s recebida a  FSM muda de estado ativando diferentes leds e ajustando a saida z.
