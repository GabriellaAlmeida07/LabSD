library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ff_t is
    Port (
        clk    : in  STD_LOGIC;
        clear  : in  STD_LOGIC;
        enable : in  STD_LOGIC;
        Q      : out STD_LOGIC;
        nonQ   : out STD_LOGIC
    );
end ff_t;

architecture Behavioral of ff_t is
    signal Q_int : STD_LOGIC := '0';
begin

    process (clk, clear)
    begin
        if clear = '1' then
            Q_int <= '0';
        elsif rising_edge(clk) then
            if enable = '1' then
                Q_int <= not Q_int;
            end if;
        end if;
    end process;

    Q <= Q_int;
    nonQ <= not Q_int;

end Behavioral;