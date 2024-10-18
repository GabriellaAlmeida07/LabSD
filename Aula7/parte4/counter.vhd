LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;  -- Use numeric_std em vez de std_logic_unsigned

ENTITY counter IS
	GENERIC ( n : NATURAL := 4 );
	PORT ( 
		clock : IN STD_LOGIC;
		reset_n : IN STD_LOGIC;
		Q : OUT STD_LOGIC_VECTOR(n - 1 DOWNTO 0)
	);
END ENTITY;

ARCHITECTURE Behavior OF counter IS
	SIGNAL value : STD_LOGIC_VECTOR(n - 1 DOWNTO 0) := (OTHERS => '0');  -- Inicializa o sinal

BEGIN
	PROCESS (clock, reset_n)
	BEGIN
		IF (reset_n = '0') THEN
			value <= (OTHERS => '0');
		ELSIF (rising_edge(clock)) THEN  -- Use rising_edge para detectar a borda de subida
			value <= std_logic_vector(unsigned(value) + 1);  -- Converte para unsigned para a operação de adição
		END IF;
	END PROCESS;

	Q <= value;

END Behavior;