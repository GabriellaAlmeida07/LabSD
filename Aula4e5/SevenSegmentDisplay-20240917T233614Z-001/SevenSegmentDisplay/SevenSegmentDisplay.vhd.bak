library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity SevenSegmentDisplay is
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           HEX0 : out STD_LOGIC_VECTOR (6 downto 0));
end SevenSegmentDisplay;

architecture Behavioral of SevenSegmentDisplay is
    signal main_counter : INTEGER := 0;
    signal digit_counter : INTEGER range 0 to 9 := 0;
    signal one_second : STD_LOGIC := '0';
begin

    -- Process for main counter
    process(clk, reset)
    begin
        if reset = '1' then
            main_counter <= 0;
            one_second <= '0';
        elsif rising_edge(clk) then
            if main_counter = 50000000 - 1 then
                main_counter <= 0;
                one_second <= '1';
            else
                main_counter <= main_counter + 1;
                one_second <= '0';
            end if;
        end if;
    end process;

    -- Process for digit counter
    process(clk, reset)
    begin
        if reset = '1' then
            digit_counter <= 0;
        elsif rising_edge(clk) then
            if one_second = '1' then
                if digit_counter = 9 then
                    digit_counter <= 0;
                else
                    digit_counter <= digit_counter + 1;
                end if;
            end if;
        end if;
    end process;

    -- 7-segment display decoder
    process(digit_counter)
    begin
        case digit_counter is
            when 0 => HEX0 <= "1000000"; -- 0
            when 1 => HEX0 <= "1111001"; -- 1
            when 2 => HEX0 <= "0100100"; -- 2
            when 3 => HEX0 <= "0110000"; -- 3
            when 4 => HEX0 <= "0011001"; -- 4
            when 5 => HEX0 <= "0010010"; -- 5
            when 6 => HEX0 <= "0000010"; -- 6
            when 7 => HEX0 <= "1111000"; -- 7
            when 8 => HEX0 <= "0000000"; -- 8
            when 9 => HEX0 <= "0010000"; -- 9
            when others => HEX0 <= "1111111"; -- Blank
        end case;
    end process;

end Behavioral;