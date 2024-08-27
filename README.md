# Circuito 1 - Gated RS Latch 
![circuito1](https://github.com/user-attachments/assets/3d7d451b-6084-4a07-8311-c1169538b51d)

Nesse circuito apenas um bit é armazenado, sendo que a entrada SET é responsável por Setar um bit no circuito.
Ele é controlado pelo nível do clock, ou seja, clock em 1, armazena o SET/RESET.
Sendo que se o estado anterior for 1 e 1 (saídas) o próximo estado é indefinido. Análogamente se todas as entradas forem 1, as saídas serão 1, 
o que gera um estado indeterminado.

# Circuito 2 - Gated D Latch
![CIRCUITO2](https://github.com/user-attachments/assets/f3487e18-d1fd-4349-996b-c88c2be935a2)

Nesse circuito, o D retira a indeterminação do circuito anterior, visto que, por conta da porta NOT, impede que SET e RESET possuam mesmo valor.
Contralado por nível, ou seja, o valor de D será armazenado quando o nível do clock for 1. Caso o contrário, será armazenado o estado anterior, por conta do 
laço de realimentação.

| Clock | D  | Q   |
| ------| -- | --- |
| 0     | x  | Q(t)|
| 1     | 0  | 0   |
| 1     | 1  | 1   |

# Circuito 3 - 
