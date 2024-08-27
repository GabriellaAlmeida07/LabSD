# Circuito 1 - Gated RS Latch 
![circuito1](https://github.com/user-attachments/assets/3d7d451b-6084-4a07-8311-c1169538b51d)
![lut](https://github.com/user-attachments/assets/0da0f305-64e6-4848-be08-e9e9e052e11e)
![simulacao](https://github.com/user-attachments/assets/97da4072-6168-46fc-b379-5b371846af7e)

Nesse circuito apenas um bit é armazenado, sendo que a entrada SET é responsável por Setar um bit no circuito.
Ele é controlado pelo nível do clock, ou seja, clock em 1, armazena o SET/RESET.
Sendo que se o estado anterior for 1 e 1 (saídas) o próximo estado é indefinido. Análogamente se todas as entradas forem 1, as saídas serão 1, 
o que gera um estado indeterminado.

# Circuito 2 - Gated D Latch
![CIRCUITO2](https://github.com/user-attachments/assets/f3487e18-d1fd-4349-996b-c88c2be935a2)
![ex2sim](https://github.com/user-attachments/assets/b81fea95-ff77-4910-81d0-6cf46d0ef5b3)

Nesse circuito, o D retira a indeterminação do circuito anterior, visto que, por conta da porta NOT, impede que SET e RESET possuam mesmo valor.
Contralado por nível, ou seja, o valor de D será armazenado quando o nível do clock for 1. Caso o contrário, será armazenado o estado anterior, por conta do 
laço de realimentação.

| Clock | D  | Q   |
| ------| -- | --- |
| 0     | x  | Q(t)|
| 1     | 0  | 0   |
| 1     | 1  | 1   |

# Circuito 3 - Flip-Flop D (Master - Slave)
![dese3](https://github.com/user-attachments/assets/a8488ea8-85c2-46f0-a97a-fcc33d619f9d)
![part3](https://github.com/user-attachments/assets/282703de-5612-4f2e-ac2f-aeac8e8c7d19)

O primeiro Latch (Master) armazena o estado de D na borda de subida do clock e o latch (slave), armazena o estado de saída do master na borda de descida do clock.
A porta NOT no circuito, garante que a mudança do Slave só aconteça depois da mudança do master, permitindo uma sincronização precisa dos dados.

