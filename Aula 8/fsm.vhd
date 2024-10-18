library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity fsm is
    port(
        clk: in STD_LOGIC;
        reset: in STD_LOGIC;
        w: in STD_LOGIC; -- entrada
        z: out STD_LOGIC;  -- saída
        signal_out: out STD_LOGIC_VECTOR (8 downto 0)  -- LEDs que serão acesos
    );
end entity;

architecture Behaviour of fsm is
    type state_type is (A_0, B_0, C_0, D_0, E_1, F_0, G_0, H_0, I_1);
    signal state: state_type := A_0; -- Estado inicial, resetado para todos 0s
    signal next_state: state_type;
begin

    process(clk, reset)
    begin
        if reset = '1' then
            state <= A_0;  -- A é 000000000 no reset
        elsif rising_edge(clk) then
            state <= next_state;
        end if;
    end process;

    process(state, w)
    begin
        -- Estado padrão
        next_state <= state;

        case state is
            when A_0 =>
                if w = '0' then
                    next_state <= B_0; -- Um 0
                elsif w = '1' then
                    next_state <= F_0; -- Um 1
                end if;

            when B_0 =>
                if w = '0' then
                    next_state <= C_0; -- Dois 0s
                elsif w = '1' then
                    next_state <= F_0; -- Reset para 1
                end if;

            when C_0 =>
                if w = '0' then
                    next_state <= D_0; -- Três 0s
                elsif w = '1' then
                    next_state <= F_0; -- Reset para 1
                end if;

            when D_0 =>
                if w = '0' then
                    next_state <= E_1; -- Quatro 0s
                elsif w = '1' then
                    next_state <= F_0; -- Reset para 1
                end if;

            when E_1 =>
                if w = '0' then
                    next_state <= E_1; -- Continuar em E
                elsif w = '1' then
                    next_state <= F_0; -- Reset para 1
                end if;

            when F_0 =>
                if w = '1' then
                    next_state <= G_0; -- Um 1
                elsif w = '0' then
                    next_state <= B_0; -- Reset para 0
                end if;

            when G_0 =>
                if w = '1' then
                    next_state <= H_0; -- Dois 1s
                elsif w = '0' then
                    next_state <= B_0; -- Reset para 0
                end if;

            when H_0 =>
                if w = '1' then
                    next_state <= I_1; -- Três 1s
                elsif w = '0' then
                    next_state <= B_0; -- Reset para 0
                end if;

            when I_1 =>
                if w = '1' then
                    next_state <= I_1; -- Continuar em I
                elsif w = '0' then
                    next_state <= B_0; -- Reset para 0
                end if;

            when others =>
                next_state <= A_0; -- Estado padrão para qualquer outro caso
        end case;
    end process;

    -- Atribuição da saída z com base no estado atual
    process(state)
    begin
        -- Inicializa signal_out como todos apagados
        signal_out <= (others => '0');

        case state is
            when A_0 =>
                signal_out <= '000000000'; -- Nenhum LED aceso
            when B_0 =>
                signal_out <= '000000011'; -- LED 1,2 acesos
            when C_0 =>
                signal_out <= '000000101'; -- LED 1,3 acesos
            when D_0 =>
                signal_out <= '000001001'; -- LED 1,4 acesos
            when E_1 =>
                signal_out <= '000010001'; -- LED 1,5 acesos
            when F_0 =>
                signal_out <= '000100001'; -- LED 1,6 acesos
            when G_0 =>
                signal_out <= '001000001'; -- LED 1,7 acesos
            when H_0 =>
                signal_out <= '010000001'; -- LED 1,8 acesos
            when I_1 =>
                signal_out <= '100000001'; -- LED 1,9 acesos
            when others =>
                signal_out <= (others => '0'); -- Todos apagados
        end case;

        -- Atribuição da saída z
        if state = E_1 or state = I_1 then
            z <= '1'; -- Saída alta em E_1 ou I_1
        else
            z <= '0'; -- Caso padrão
        end if;
    end process;
end architecture Behaviour;
