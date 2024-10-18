library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity parte4 is
    Port ( vetor: in STD_LOGIC_VECTOR(2 DOWNTO 0);
           reset : in STD_LOGIC;
			  set: in STD_logic;
			  led: out STD_LOGIC
			  );
end parte4;

architecture Behavioral of parte4 is
    SIGNAL contador: unsigned;
	 SIGNAL variavel1: UNSIGNED;
	 SIGNAL variavel2: UNSIGNED;
	 SIGNAL variavel3: UNSIGNED;
	 SIGNAL variavel4: UNSIGNED;
	
begin
	
	
	process(clk)
    begin
		if(reset = '1') then
		contador <= 0;
		variavel1 <= '1';
		else
			if rising_edge(clk) then
				contador <= contador +1; 
			end if;
        case vetor is
            when "000" => -- A
					if(variavel1 = '1') and (contador < 25000000) then
						led <= '1';
						if(contador = 25000000) then
							led <= '0';
							variavel2 <= '1';
						end if;
					elsif(variavel2 = '1') and (contador < 10000000) then
						led <= '0';
						if(contador = 10000000) then
							variavel3 <= '1';
					elsif(variavel3 = '1') and (contador < 75000000) then
						led <= '1';
						if(contador = 75000000) then
							led <= '0';
						end if; 
            when "001" =>  --B
            when "010" =>  --c
            when "011" =>  --D
            when "100" =>  --E
            when "101" =>  --F
            when "110" =>  --G
            when "111" =>   --H
        end case;
		  end if;
    end process;
        

end Behavioral;