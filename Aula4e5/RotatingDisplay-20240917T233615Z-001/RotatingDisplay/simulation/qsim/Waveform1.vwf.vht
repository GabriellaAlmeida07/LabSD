-- Copyright (C) 2021  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "09/17/2024 16:05:39"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          RotatingDisplay
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY RotatingDisplay_vhd_vec_tst IS
END RotatingDisplay_vhd_vec_tst;
ARCHITECTURE RotatingDisplay_arch OF RotatingDisplay_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CLK : STD_LOGIC;
SIGNAL HEX0 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL HEX1 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL HEX2 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL HEX3 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL RESET : STD_LOGIC;
COMPONENT RotatingDisplay
	PORT (
	CLK : IN STD_LOGIC;
	HEX0 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	HEX1 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	HEX2 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	HEX3 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	RESET : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : RotatingDisplay
	PORT MAP (
-- list connections between master ports and signals
	CLK => CLK,
	HEX0 => HEX0,
	HEX1 => HEX1,
	HEX2 => HEX2,
	HEX3 => HEX3,
	RESET => RESET
	);

-- CLK
t_prcs_CLK: PROCESS
BEGIN
LOOP
	CLK <= '0';
	WAIT FOR 25000 ps;
	CLK <= '1';
	WAIT FOR 25000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_CLK;

-- RESET
t_prcs_RESET: PROCESS
BEGIN
	RESET <= '1';
	WAIT FOR 80000 ps;
	RESET <= '0';
WAIT;
END PROCESS t_prcs_RESET;
END RotatingDisplay_arch;
