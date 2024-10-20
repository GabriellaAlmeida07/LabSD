LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY MemoryBlocks IS -- Deveria se chamar TOP-Level
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
END MemoryBlocks;

ARCHITECTURE behavior OF MemoryBlocks IS
	-- Interface do componente a ser instanciado
	-- sinais que o componente usa para se comunicar com outros componentes 
	COMPONENT ram32x4
		PORT( -- Copie o Port map que está no componente 
				address: IN STD_LOGIC_VECTOR(4 DOWNTO 0); -- Entrada de 5 bits para endereçar 32 plavras 
				clock: IN STD_LOGIC := '1';
				data: IN STD_LOGIC_VECTOR(3 DOWNTO 0);-- Entrada dos dados a serem escritos (4 bits)
				wren: IN STD_LOGIC;
				q: OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
		);
	END COMPONENT;

	SIGNAL q_internal: STD_LOGIC_VECTOR(3 DOWNTO 0);

BEGIN
	-- Instância do componente RAM
	-- Instancia o component RAM
	-- Port Map conecta os sinais definidos no componente instanciado, à entidade
	ram_instance: ram32x4
		PORT MAP(
			address => address,
			clock => clock,
			data => dataIn,
			wren => wren,
			q => q_internal
		);
		
	PROCESS(clock)
	BEGIN
		IF rising_edge(clock) THEN
			dataOut <= q_internal;  -- Conecta a saída da RAM

			-- Mapeia o endereço de memória       6 5 4 3 2 1 0
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
			CASE q_internal IS
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
