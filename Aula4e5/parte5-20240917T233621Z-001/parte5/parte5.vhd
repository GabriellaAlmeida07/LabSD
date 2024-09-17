library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity parte5 is
    Port ( CLK : in STD_LOGIC;
           RESET : in STD_LOGIC;
           HEX0 : out STD_LOGIC_VECTOR (6 downto 0);
           HEX1 : out STD_LOGIC_VECTOR (6 downto 0);
           HEX2 : out STD_LOGIC_VECTOR (6 downto 0);
           HEX3 : out STD_LOGIC_VECTOR (6 downto 0);
			  HEX4 : out STD_LOGIC_VECTOR (6 downto 0);
			  HEX5 : out STD_LOGIC_VECTOR (6 downto 0)
			  );
end parte5;

architecture Behavioral of parte5 is
    signal count : integer range 0 to 5 := 0;
    signal clk_div : integer := 0;

begin
    process(CLK, RESET)
    begin
        if RESET = '1' then
            count <= 0;
            clk_div <= 0;
        elsif rising_edge(CLK) then
            if clk_div = 50000000 then -- Assuming 50MHz clock, 1 second delay
                clk_div <= 0;
                count <= (count + 1) mod 6;
            else
                clk_div <= clk_div + 1;
            end if;
        end if;
    end process;

    process(count)
    begin
        case count is
            when 0 =>
                HEX0 <=	"1000000";--0 1000000
                HEX1 <= "1111001";--1 1111001
                HEX2 <= "0000110";--e
                HEX3 <= "0100001";--d
					 HEX4 <= "1111111";-- null
					 HEX5 <= "1111111"; -- null
            when 1 =>
					 HEX0 <= "1111111";
                HEX1 <= "1000000";
                HEX2 <= "1111001";
                HEX3 <= "0000110";
                HEX4 <= "0100001";
					 HEX5 <= "1111111";
            when 2 =>
					 HEX0 <= "1111111";
					 HEX1 <= "1111111";
                HEX2 <= "1000000";
                HEX3 <= "1111001";
                HEX4 <= "0000110";
                HEX5 <= "0100001";
            when 3 =>
                HEX0 <= "0100001";
                HEX1 <= "1111111";
                HEX2 <= "1111111";
                HEX3 <= "1000000";
					 HEX4 <= "1111001";
					 HEX5 <= "0000110";
				when 4 =>
					 HEX0 <= "0000110";
                HEX1 <= "0100001"; 
                HEX2 <= "1111111"; 
                HEX3 <= "1111111";
					 HEX4 <= "1000000";
					 HEX5 <= "1111001";
				when 5 =>
					 HEX0 <=	"1111001";
                HEX1 <= "0000110";
                HEX2 <= "0100001";
                HEX3 <= "1111111";
					 HEX4 <= "1111111";
					 HEX5 <= "1000000";
 
        end case;
    end process;
end Behavioral;