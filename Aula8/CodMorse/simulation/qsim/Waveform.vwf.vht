-- Copyright (C) 2024  Intel Corporation. All rights reserved.
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
-- Generated on "10/07/2024 13:25:02"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          main_system
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY main_system_vhd_vec_tst IS
END main_system_vhd_vec_tst;
ARCHITECTURE main_system_arch OF main_system_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL enable : STD_LOGIC;
SIGNAL input_letter : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL reset : STD_LOGIC;
SIGNAL signal_out : STD_LOGIC;
COMPONENT main_system
	PORT (
	clk : IN STD_LOGIC;
	enable : IN STD_LOGIC;
	input_letter : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	reset : IN STD_LOGIC;
	signal_out : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : main_system
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	enable => enable,
	input_letter => input_letter,
	reset => reset,
	signal_out => signal_out
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 5000 ps;
	clk <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;
-- input_letter[2]
t_prcs_input_letter_2: PROCESS
BEGIN
	input_letter(2) <= '0';
WAIT;
END PROCESS t_prcs_input_letter_2;
-- input_letter[1]
t_prcs_input_letter_1: PROCESS
BEGIN
	input_letter(1) <= '0';
WAIT;
END PROCESS t_prcs_input_letter_1;
-- input_letter[0]
t_prcs_input_letter_0: PROCESS
BEGIN
	input_letter(0) <= '0';
WAIT;
END PROCESS t_prcs_input_letter_0;

-- enable
t_prcs_enable: PROCESS
BEGIN
	enable <= '0';
WAIT;
END PROCESS t_prcs_enable;

-- reset
t_prcs_reset: PROCESS
BEGIN
	reset <= '0';
WAIT;
END PROCESS t_prcs_reset;
END main_system_arch;
