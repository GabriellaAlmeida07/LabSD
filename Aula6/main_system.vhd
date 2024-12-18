library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.std_logic_unsigned.all;


-- entidade main_system define as entradas e saídas 

entity main_system is
    port(
        clk: in STD_LOGIC;
        reset: in STD_LOGIC := '0';
		  enable: in STD_LOGIC := '1';
        input_letter: in STD_LOGIC_VECTOR(2 downto 0); 
        signal_out: out STD_LOGIC  
    );
end entity;


-- A arquitetura Behaviour contém as definições de sinais internos e processos

architecture Behaviour of main_system is
	signal start : STD_LOGIC := '0'; --sinal para indicar que o sistema pode emitir o morse(ativar em 1 ao resetar o sistema, desativar em 0 quando no estado do SHIFT o número de bits for alcançado
    signal shift_output: STD_LOGIC_VECTOR(3 downto 0); --sinal para saída do shift register
    signal enable_shifter: STD_LOGIC := '0'; -- sinal que habilita o shift register.
	 signal reset_shifter: STD_LOGIC := '1'; -- aqui separamos em dois shifts
    signal enable_counter05, enable_counter15, enable_counter_low: STD_LOGIC := '0'; -- sinal que habilita os contadores. Esses só devem estar ativos no estado dos contadores(ativar um por estado de contador), nos demais estados esses devem estar desativados.
    signal reset_counter05, reset_counter15, reset_counter_low: STD_LOGIC := '0'; -- sinal que reseta os contadores. Esses só devem estar desativados no estado dos contadores(desativar um por estado de contador), nos demais estados eles devem estar desligados
    signal rollover_counter05, rollover_counter15, rollover_counter_low: STD_LOGIC := '0'; -- sinal de rollover indicando que o contador terminou sua contagem
    signal current_bit: STD_LOGIC := '0'; -- sinal corresponde ao bit atual sendo lido pela saída do shift register
    signal input_vector: STD_LOGIC_VECTOR(3 downto 0); -- mapeamento dos bits pelas switches
    signal character_size: integer range 0 to 4 := 0;  --tamanho do vetor de caracteres da letra

begin
   -- mapeia as entradas (input_letter) para uma representação correspondente
	-- Nesse processo estou lendo a entrada(input_letter) e armazenando em um registrador(input_vector) os bits correspondentes as letras
	
    process(input_letter) --  process é uma estrutura que permite descrever comportamentos sequenciais
    begin
        case input_letter is
            when "000" => 
					input_vector <= "0100"; 
					character_size <= 2; 
            when "001" =>
					input_vector <= "1000"; 
					character_size <= 4;
            when "010" =>
					input_vector <= "1010"; 
					character_size <= 4;
            when "011" =>
					input_vector <= "1000"; 
					character_size <= 3;
            when "100" => 
					input_vector <= "0000"; 
					character_size <= 1;
            when "101" => 
					input_vector <= "0010"; 
					character_size <= 4;
            when "110" => 
					input_vector <= "1100"; 
					character_size <= 3;
            when "111" => 
            	input_vector <= "0000"; 
					character_size <= 4;
            when others => 
					input_vector <= "0000"; 
					character_size <= 0;
        end case;
    end process;

	 -- instanciando componentes
    shift: entity work.shifter
        port map (
            clk => clk,
            reset => reset_shifter,
            enable => enable_shifter,
            input => input_vector,
            output => shift_output
        );
		  
	 -- o generic defini parâmetros que podem ser definidos para entidades, assim podemos flexibilizar componentes

    counter05: entity work.contador
        generic map (
            n => 1,
            k => "1",
            c => 25000000
        )
        port map (
            clk => clk,
            reset => reset_counter05, 
            enable => enable_counter05,
            output => open,
            rollover => rollover_counter05
        );

    counter15: entity work.contador
        generic map (
            n => 1,
            k => "1",
            c => 75000000
        )
        port map (
            clk => clk,
            reset => reset_counter15, 
            enable => enable_counter15,
            output => open,
            rollover => rollover_counter15
        );

    counter_low: entity work.contador
        generic map (
            n => 1,
            k => "1",
            c => 5000000
        )
        port map (
            clk => clk,
            reset => reset_counter_low, 
            enable => enable_counter_low,
            output => open,
            rollover => rollover_counter_low
        );

    -- máquina de estados:
	 
    process(clk, reset)
        type state_type is (IDLE, COUNT_05, COUNT_15, COUNT_LOW, SHIFT); --definição dos estados, instrução de alto nível para abstração, basicamente colocando nome nos estados ao invés de simplesmente chamar de 00, 01, 10, 11...
        variable state: state_type := IDLE; --criando a variável estado e atribuíndo valor inicial para IDLE
        variable bit_counter: integer range 0 to 4 := 0;--criando a vari´ável para contar os bits que o shift register leu
    begin
		--reset assincrono. Nesse estado a variável start é setado para 1, estado para IDLE, apagar LED, resetar contadores, resetar contador de bits e desabilitar contadores
        if reset = '0' then
			start <= '0';
            state := IDLE;
            signal_out <= '0';
            enable_counter05 <= '0';
            enable_counter15 <= '0';
            enable_counter_low <= '0';
            enable_shifter <= '0';
            bit_counter := 0;
            reset_counter05 <= '1'; 
            reset_counter15 <= '1';
            reset_counter_low <= '1';
				reset_shifter <= '1';
		    -- durante as transições de clock os estados podem ser transicionados
		elsif enable='0' then
			start <= '1';
			state := IDLE;
        elsif rising_edge(clk) then
            case state is
                when IDLE =>
						enable_counter05 <= '0';
                    enable_counter15 <= '0';
                    enable_counter_low <= '0';
                    reset_counter05 <= '1';
                    reset_counter15 <= '1';
                    reset_counter_low <= '1';

                    if start = '1' then
                        reset_shifter <= '0';
                        enable_shifter <= '1';
                        current_bit <= shift_output(3);
                        state := SHIFT;
                    elsif start='0' then
                        state := IDLE;
                    end if;
				when COUNT_05 =>
                    --Ligar LED, Habilitar contador para esse estado, desativar o reset e desabilitar o shifter
				    --quando o contador terminar de contar(rollover_counter05), desabiltiar o contador e mudar estado para COUNT_LOW
					signal_out <= '1';
                    enable_counter05 <= '1';
                    reset_counter05 <= '0';
                    enable_shifter <= '0';
                    if rollover_counter05='1' then 
						enable_counter05 <= '0';
                        reset_counter05 <= '1';
                        state := COUNT_LOW;
                    end if;
                when COUNT_15 =>
                    --Mesma coisa do COUNT_05 mas para o COUNT_15, mesma lógica, sinais e contadores diferentes.
					signal_out <= '1';
                    enable_counter15 <= '1';
                    reset_counter15 <= '0';
                    enable_shifter <= '0';
                    if rollover_counter15='1' then 
                        enable_counter15 <= '0';
                        reset_counter15 <= '1';
						state := COUNT_LOW;
                    end if;
                when COUNT_LOW =>
                    --Quase a mesma coisa do COUNT_05 mas para o COUNT_LOW, mesma lógica, sinais e contadores diferentes.
					--Diferença é que o LED ficará apagado e o próximo estado é o shift
					--Habilitar o shifter e ler o primeiro digito dele, assim como no current_bit
					signal_out <= '0';
					enable_counter_low <= '1';
               reset_counter_low <= '0';
               enable_shifter <= '0';
                    if rollover_counter_low='1' then 
								enable_shifter <= '1';
                        enable_counter_low <= '0';
                        reset_counter_low <= '1';
                        current_bit <= shift_output(3);
								state := SHIFT;
                    end if;
                when SHIFT =>
					
						  enable_counter05 <= '0';
						  enable_counter15 <= '0';
                    enable_counter_low <= '0';
                    reset_counter05 <= '1';
                    reset_counter15 <= '1';
                    reset_counter_low <= '1';
                    enable_shifter <= '0';
						  
                    if bit_counter=character_size then
								start <= '0';
                        bit_counter := 0;
                        reset_shifter <= '1';
                        state := IDLE;
                    else 
								bit_counter := bit_counter+1;
                    if current_bit='0' then
								state := COUNT_05;
                    else
                        state := COUNT_15;
                    end if;
                end if;
            end case;
        end if;
    end process;
end architecture Behaviour;


