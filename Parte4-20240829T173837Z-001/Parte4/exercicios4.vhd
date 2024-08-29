LIBRARY ieee ;
USE ieee.std_logic_1164.all ;
ENTITY exercicios4 IS
PORT ( D, Clk : IN STD_LOGIC ;
Q1, Q2, Q3 : OUT STD_LOGIC) ;
END exercicios4 ;
ARCHITECTURE Behavior OF exercicios4 IS
BEGIN
PROCESS ( D, Clk )
BEGIN
IF Clk = '1' THEN
Q1 <= D ;
END IF ;
IF rising_edge(Clk) THEN
Q2 <= D ;
END IF ;
IF falling_edge(Clk) THEN
Q3 <= D ;
END IF ;

END PROCESS ;
END Behavior ;
