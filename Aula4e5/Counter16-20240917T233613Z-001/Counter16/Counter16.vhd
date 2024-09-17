library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  

entity Counter16 is
    Port ( 
           clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           Q0 : out STD_LOGIC;
           Q1 : out STD_LOGIC;
           Q2 : out STD_LOGIC;
           Q3 : out STD_LOGIC;
           Q4 : out STD_LOGIC;
           Q5 : out STD_LOGIC;
           Q6 : out STD_LOGIC;
           Q7 : out STD_LOGIC;
           Q8 : out STD_LOGIC;
           Q9 : out STD_LOGIC;
           Q10 : out STD_LOGIC;
           Q11 : out STD_LOGIC;
           Q12 : out STD_LOGIC;
           Q13 : out STD_LOGIC;
           Q14 : out STD_LOGIC;
           Q15 : out STD_LOGIC
          );
end Counter16;

architecture Behavioral of Counter16 is
    signal count : unsigned (15 downto 0) := (others => '0');  
begin
    process(clk, reset)
    begin
        if reset = '1' then
            count <= (others => '0');
        elsif rising_edge(clk) then
            count <= count + 1;
        end if;
    end process;

    Q0  <= count(0);
    Q1  <= count(1);
    Q2  <= count(2);
    Q3  <= count(3);
    Q4  <= count(4);
    Q5  <= count(5);
    Q6  <= count(6);
    Q7  <= count(7);
    Q8  <= count(8);
    Q9  <= count(9);
    Q10 <= count(10);
    Q11 <= count(11);
    Q12 <= count(12);
    Q13 <= count(13);
    Q14 <= count(14);
    Q15 <= count(15);
end Behavioral;
