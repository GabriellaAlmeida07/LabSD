library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity contador_8bits is
    Port (
        clk    : in  STD_LOGIC;
        clear  : in  STD_LOGIC;
        enable : in  STD_LOGIC;
        Q0, Q1, Q2, Q3, Q4, Q5, Q6, Q7 : buffer STD_LOGIC;  -- Modo buffer para permitir leitura
        nonQ0, nonQ1, nonQ2, nonQ3, nonQ4, nonQ5, nonQ6, nonQ7 : out STD_LOGIC
    );
end contador_8bits;

architecture Behavioral of contador_8bits is

    signal output1, output2, output3, output4, output5, output6, output7 : STD_LOGIC;

    -- Declarando os flip-flops T
    component ff_t
        Port (
            clk    : in  STD_LOGIC;
            clear  : in  STD_LOGIC;
            enable : in  STD_LOGIC;
            Q      : out STD_LOGIC;
            nonQ   : out STD_LOGIC
        );
    end component;

begin
    -- Primeiro flip-flop: controlado diretamente pelo sinal enable
    ff0: ff_t
        port map (
            clk    => clk,
            clear  => clear,
            enable => enable,
            Q      => Q0,
            nonQ   => nonQ0
        );

    -- output1 = enable AND Q0
    output1 <= enable and Q0;

    -- Segundo flip-flop: enable é controlado por output1
    ff1: ff_t
        port map (
            clk    => clk,
            clear  => clear,
            enable => output1,
            Q      => Q1,
            nonQ   => nonQ1
        );

    -- output2 = output1 AND Q1
    output2 <= output1 and Q1;

    -- Terceiro flip-flop: enable é controlado por output2
    ff2: ff_t
        port map (
            clk    => clk,
            clear  => clear,
            enable => output2,
            Q      => Q2,
            nonQ   => nonQ2
        );

    -- output3 = output2 AND Q2
    output3 <= output2 and Q2;

    -- Quarto flip-flop: enable é controlado por output3
    ff3: ff_t
        port map (
            clk    => clk,
            clear  => clear,
            enable => output3,
            Q      => Q3,
            nonQ   => nonQ3
        );

    -- output4 = output3 AND Q3
    output4 <= output3 and Q3;

    -- Quinto flip-flop: enable é controlado por output4
    ff4: ff_t
        port map (
            clk    => clk,
            clear  => clear,
            enable => output4,
            Q      => Q4,
            nonQ   => nonQ4
        );

    -- output5 = output4 AND Q4
    output5 <= output4 and Q4;

    -- Sexto flip-flop: enable é controlado por output5
    ff5: ff_t
        port map (
            clk    => clk,
            clear  => clear,
            enable => output5,
            Q      => Q5,
            nonQ   => nonQ5
        );

    -- output6 = output5 AND Q5
    output6 <= output5 and Q5;

    -- Sétimo flip-flop: enable é controlado por output6
    ff6: ff_t
        port map (
            clk    => clk,
            clear  => clear,
            enable => output6,
            Q      => Q6,
            nonQ   => nonQ6
        );

    -- output7 = output6 AND Q6
    output7 <= output6 and Q6;

    -- Oitavo flip-flop: enable é controlado por output7
    ff7: ff_t
        port map (
            clk    => clk,
            clear  => clear,
            enable => output7,
            Q      => Q7,
            nonQ   => nonQ7
        );

end Behavioral;