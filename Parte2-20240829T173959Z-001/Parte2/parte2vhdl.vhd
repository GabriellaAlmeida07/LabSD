library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Entidade do Flip-Flop Master-Slave Tipo D
entity D_FF_Master_Slave is
    Port (
        clk   : in  STD_LOGIC;  -- Clock (Relógio)
        d     : in  STD_LOGIC;  -- Entrada de Dados
        q     : out STD_LOGIC   -- Saída
    );
end D_FF_Master_Slave;

-- Arquitetura do Flip-Flop Master-Slave Tipo D
architecture Behavioral of D_FF_Master_Slave is
    signal q_master : STD_LOGIC;
begin
    process(clk)
    begin
        if rising_edge(clk) then
            q_master <= d;    -- Captura do dado no estágio master
        end if;
    end process;

    process(clk)
    begin
        if falling_edge(clk) then
            q <= q_master;  -- Captura do dado no estágio slave
        end if;
    end process;
end Behavioral;
