LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;  -- conversão

ENTITY Parte3 IS -- Deveria se chamar TOP-Level
    PORT(
        address: IN STD_LOGIC_VECTOR(4 DOWNTO 0);
        clock: IN STD_LOGIC := '1';
        dataIn: IN STD_LOGIC_VECTOR(3 DOWNTO 0);
        wren: IN STD_LOGIC;
        dataOut: OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
        endereco_memoria: OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
        dados_lidos_memoria: OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
        dados_inserir: OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
    );
END Parte3;

ARCHITECTURE behavior OF Parte3 IS
    TYPE mem IS ARRAY(0 TO 31) OF STD_LOGIC_VECTOR(3 DOWNTO 0); 
    SIGNAL memory_array : mem;  
BEGIN
    PROCESS(clock)
    BEGIN
        IF rising_edge(clock) THEN
            IF wren = '1' THEN
                memory_array(to_integer(unsigned(address))) <= dataIn;  -- Convertendo address para inteiro
            END IF;

            dataOut <= memory_array(to_integer(unsigned(address)));  

            -- Mapeia o endereço de memória
            CASE address IS
                WHEN "00000" => endereco_memoria <= "1000000"; -- 0
                WHEN "00001" => endereco_memoria <= "1111001"; -- 1
                WHEN "00010" => endereco_memoria <= "0100100"; -- 2
                WHEN "00011" => endereco_memoria <= "0110000"; -- 3
                WHEN "00100" => endereco_memoria <= "0011001"; -- 4
                WHEN "00101" => endereco_memoria <= "0010010"; -- 5
                WHEN "00110" => endereco_memoria <= "0000010"; -- 6
                WHEN "00111" => endereco_memoria <= "1111000"; -- 7
                WHEN "01000" => endereco_memoria <= "0000000"; -- 8
                WHEN "01001" => endereco_memoria <= "0010000"; -- 9
                WHEN "01010" => endereco_memoria <= "0001000"; -- A
                WHEN "01011" => endereco_memoria <= "0000011"; -- B
                WHEN "01100" => endereco_memoria <= "1000110"; -- C
                WHEN "01101" => endereco_memoria <= "0100001"; -- D
                WHEN "01110" => endereco_memoria <= "0000110"; -- E
                WHEN "01111" => endereco_memoria <= "0001110"; -- F
                WHEN others => endereco_memoria <= "0000000"; -- Caso contrário
            END CASE;

            -- Mapeia os dados a inserir
            CASE dataIn IS
                WHEN "0000" => dados_inserir <= "1000000"; -- 0
                WHEN "0001" => dados_inserir <= "1111001"; -- 1
                WHEN "0010" => dados_inserir <= "0100100"; -- 2
                WHEN "0011" => dados_inserir <= "0110000"; -- 3
                WHEN "0100" => dados_inserir <= "0011001"; -- 4
                WHEN "0101" => dados_inserir <= "0010010"; -- 5
                WHEN "0110" => dados_inserir <= "0000010"; -- 6
                WHEN "0111" => dados_inserir <= "1111000"; -- 7
                WHEN "1000" => dados_inserir <= "0000000"; -- 8
                WHEN "1001" => dados_inserir <= "0010000"; -- 9
                WHEN "1010" => dados_inserir <= "0001000"; -- A
                WHEN "1011" => dados_inserir <= "0000011"; -- B
                WHEN "1100" => dados_inserir <= "1000110"; -- C
                WHEN "1101" => dados_inserir <= "0100001"; -- D
                WHEN "1110" => dados_inserir <= "0000110"; -- E
                WHEN "1111" => dados_inserir <= "0001110"; -- F
                WHEN others => dados_inserir <= "0000000"; -- Caso contrário
            END CASE;

            -- Mapeia os dados lidos da memória
            CASE memory_array(to_integer(unsigned(address))) IS
                WHEN "0000" => dados_lidos_memoria <= "1000000"; -- 0
                WHEN "0001" => dados_lidos_memoria <= "1111001"; -- 1
                WHEN "0010" => dados_lidos_memoria <= "0100100"; -- 2
                WHEN "0011" => dados_lidos_memoria <= "0110000"; -- 3
                WHEN "0100" => dados_lidos_memoria <= "0011001"; -- 4
                WHEN "0101" => dados_lidos_memoria <= "0010010"; -- 5
                WHEN "0110" => dados_lidos_memoria <= "0000010"; -- 6
                WHEN "0111" => dados_lidos_memoria <= "1111000"; -- 7
                WHEN "1000" => dados_lidos_memoria <= "0000000"; -- 8
                WHEN "1001" => dados_lidos_memoria <= "0010000"; -- 9
                WHEN "1010" => dados_lidos_memoria <= "0001000"; -- A
                WHEN "1011" => dados_lidos_memoria <= "0000011"; -- B
                WHEN "1100" => dados_lidos_memoria <= "1000110"; -- C
                WHEN "1101" => dados_lidos_memoria <= "0100001"; -- D
                WHEN "1110" => dados_lidos_memoria <= "0000110"; -- E
                WHEN "1111" => dados_lidos_memoria <= "0001110"; -- F
                WHEN others => dados_lidos_memoria <= "1111111"; -- Caso contrário
            END CASE;

        END IF;
    END PROCESS;

END behavior;
