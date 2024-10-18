library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

ENTITY eight_bit IS
	PORT (
		clock    : in  STD_LOGIC;
		reset_n  : in  STD_LOGIC;
		Q        : out  STD_LOGIC_VECTOR(7 DOWNTO 0)  -- Adjusted to match the counter output
	);
END eight_bit;

ARCHITECTURE Behavior OF eight_bit IS

COMPONENT counter IS
	GENERIC ( n : NATURAL := 4 );
	PORT ( 
		clock : IN STD_LOGIC;
		reset_n : IN STD_LOGIC;
		Q : OUT STD_LOGIC_VECTOR(n - 1 DOWNTO 0)
	);
END COMPONENT;

BEGIN
	
	counter_eight_bit: counter
		GENERIC MAP (n => 8)
		PORT MAP (
			clock => clock,
			reset_n => reset_n,
			Q => Q  
		);

END Behavior;