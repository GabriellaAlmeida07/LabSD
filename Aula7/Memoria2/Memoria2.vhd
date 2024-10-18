library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity Memoria2 is
    port(
        CLOCK_50 : in STD_LOGIC;  -- Clock de 50 MHz
        KEY0 : in STD_LOGIC;      -- Reset
        SW : in STD_LOGIC_VECTOR(8 downto 0); -- Switches
        HEX0 : out STD_LOGIC_VECTOR(6 downto 0); -- 7-segment display for data
        HEX1 : out STD_LOGIC_VECTOR(6 downto 0); -- 7-segment display for write data
        HEX2 : out STD_LOGIC_VECTOR(6 downto 0); -- 7-segment display for read address
        HEX3 : out STD_LOGIC_VECTOR(6 downto 0); -- 7-segment display for write address
        LED : out STD_LOGIC_VECTOR(7 downto 0)    -- LEDs for state
    );
end entity Memoria2;

architecture behavioral of Memoria2 is

    signal rdaddress : std_logic_vector(4 downto 0);
    signal wraddress : std_logic_vector(4 downto 0);
    signal data_in : std_logic_vector(7 downto 0); -- Ajustado para 8 bits
    signal data_out : std_logic_vector(7 downto 0); -- Ajustado para 8 bits
    signal counter : integer := 0;

    -- Instância do RAM 2-PORT
    component ram_2port is
        port(
            clock    : in std_logic;
            data     : in std_logic_vector (7 downto 0);
            rdaddress : in std_logic_vector(4 downto 0);
            wraddress : in std_logic_vector(4 downto 0);
            wren     : in std_logic;
            q        : out std_logic_vector (7 downto 0)
        );
    end component;

begin

    ram_inst : ram_2port
        port map (
            clock => CLOCK_50,
            data => data_in,
            rdaddress => rdaddress,
            wraddress => wraddress,
            wren => SW(8),  -- Write Enable
            q => data_out
        );

    -- Lógica para o contador e endereços
    process(CLOCK_50, KEY0)
    begin
        if rising_edge(CLOCK_50) then
            if KEY0 = '0' then
                counter <= 0;  -- Reset
            else
                counter <= (counter + 1) mod 32;  -- Incrementa e faz wrap
            end if;
        end if;
    end process;

    rdaddress <= std_logic_vector(to_unsigned(counter, 5));
    wraddress <= SW(7 downto 4); -- Switches para o endereço de escrita
    data_in <= SW(3 downto 0) & "00"; -- Ajustado para 8 bits (com preenchimento)

    -- Lógica para exibir os dados nos 7-segment displays
    HEX0 <= display(data_out(3 downto 0));  -- Função para converter para 7-segment
    HEX1 <= display(data_in(3 downto 0));
    HEX2 <= display(rdaddress);
    HEX3 <= display(wraddress);

    -- Função para converter um vetor de bits para 7-segment display
    function display(input : std_logic_vector(3 downto 0)) return std_logic_vector(6 downto 0) is
    begin
        case input is
            when "0000" => return "1000000"; -- 0
            when "0001" => return "1111001"; -- 1
            when "0010" => return "0100100"; -- 2
            when "0011" => return "0110000"; -- 3
            when "0100" => return "0011001"; -- 4
            when "0101" => return "0010010"; -- 5
            when "0110" => return "0000010"; -- 6
            when "0111" => return "1111000"; -- 7
            when "1000" => return "0000000"; -- 8
            when "1001" => return "0010000"; -- 9
            when others => return "1111111"; -- Off
        end case;
    end function;

end architecture behavioral;
