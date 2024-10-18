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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 23.1std.1 Build 993 05/14/2024 SC Lite Edition"

-- DATE "10/07/2024 13:28:58"

-- 
-- Device: Altera 5CEBA4F23C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	main_system IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	enable : IN std_logic;
	input_letter : IN std_logic_vector(2 DOWNTO 0);
	signal_out : OUT std_logic
	);
END main_system;

-- Design Ports Information
-- signal_out	=>  Location: PIN_AA2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enable	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_letter[0]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_letter[2]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_letter[1]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF main_system IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_enable : std_logic;
SIGNAL ww_input_letter : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_signal_out : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \enable~input_o\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \start~1_combout\ : std_logic;
SIGNAL \input_letter[2]~input_o\ : std_logic;
SIGNAL \input_letter[1]~input_o\ : std_logic;
SIGNAL \input_letter[0]~input_o\ : std_logic;
SIGNAL \bit_counter~0_combout\ : std_logic;
SIGNAL \bit_counter[0]~1_combout\ : std_logic;
SIGNAL \bit_counter~3_combout\ : std_logic;
SIGNAL \bit_counter~2_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \start~3_combout\ : std_logic;
SIGNAL \start~0_combout\ : std_logic;
SIGNAL \start~_emulated_q\ : std_logic;
SIGNAL \start~2_combout\ : std_logic;
SIGNAL \Selector9~0_combout\ : std_logic;
SIGNAL \current_bit~0_combout\ : std_logic;
SIGNAL \state.IDLE~q\ : std_logic;
SIGNAL \counter15|lento[0]~0_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \reset_shifter~0_combout\ : std_logic;
SIGNAL \reset_shifter~q\ : std_logic;
SIGNAL \shift|aux[3]~1_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \shift|aux[2]~5_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Selector7~0_combout\ : std_logic;
SIGNAL \enable_shifter~q\ : std_logic;
SIGNAL \shift|aux[1]~9_combout\ : std_logic;
SIGNAL \shift|aux[1]~11_combout\ : std_logic;
SIGNAL \shift|aux[1]~_emulated_q\ : std_logic;
SIGNAL \shift|aux[1]~10_combout\ : std_logic;
SIGNAL \shift|aux[2]~7_combout\ : std_logic;
SIGNAL \shift|aux[2]~_emulated_q\ : std_logic;
SIGNAL \shift|aux[2]~6_combout\ : std_logic;
SIGNAL \shift|aux[3]~3_combout\ : std_logic;
SIGNAL \shift|aux[3]~_emulated_q\ : std_logic;
SIGNAL \shift|aux[3]~2_combout\ : std_logic;
SIGNAL \current_bit~1_combout\ : std_logic;
SIGNAL \current_bit~q\ : std_logic;
SIGNAL \counter05|lento[0]~0_combout\ : std_logic;
SIGNAL \Selector11~0_combout\ : std_logic;
SIGNAL \state.COUNT_15~q\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \reset_counter05~q\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \enable_counter05~q\ : std_logic;
SIGNAL \counter05|Add0~117_sumout\ : std_logic;
SIGNAL \counter05|rapido[0]~0_combout\ : std_logic;
SIGNAL \counter05|rapido[0]~DUPLICATE_q\ : std_logic;
SIGNAL \counter05|Add0~118\ : std_logic;
SIGNAL \counter05|Add0~9_sumout\ : std_logic;
SIGNAL \counter05|rapido[1]~DUPLICATE_q\ : std_logic;
SIGNAL \counter05|Add0~10\ : std_logic;
SIGNAL \counter05|Add0~113_sumout\ : std_logic;
SIGNAL \counter05|Add0~114\ : std_logic;
SIGNAL \counter05|Add0~109_sumout\ : std_logic;
SIGNAL \counter05|rapido[3]~DUPLICATE_q\ : std_logic;
SIGNAL \counter05|Add0~110\ : std_logic;
SIGNAL \counter05|Add0~105_sumout\ : std_logic;
SIGNAL \counter05|rapido[4]~DUPLICATE_q\ : std_logic;
SIGNAL \counter05|Add0~106\ : std_logic;
SIGNAL \counter05|Add0~101_sumout\ : std_logic;
SIGNAL \counter05|rapido[5]~DUPLICATE_q\ : std_logic;
SIGNAL \counter05|Add0~102\ : std_logic;
SIGNAL \counter05|Add0~97_sumout\ : std_logic;
SIGNAL \counter05|Add0~98\ : std_logic;
SIGNAL \counter05|Add0~93_sumout\ : std_logic;
SIGNAL \counter05|rapido[7]~DUPLICATE_q\ : std_logic;
SIGNAL \counter05|Add0~94\ : std_logic;
SIGNAL \counter05|Add0~89_sumout\ : std_logic;
SIGNAL \counter05|Add0~90\ : std_logic;
SIGNAL \counter05|Add0~85_sumout\ : std_logic;
SIGNAL \counter05|Add0~86\ : std_logic;
SIGNAL \counter05|Add0~81_sumout\ : std_logic;
SIGNAL \counter05|Add0~82\ : std_logic;
SIGNAL \counter05|Add0~1_sumout\ : std_logic;
SIGNAL \counter05|Add0~2\ : std_logic;
SIGNAL \counter05|Add0~25_sumout\ : std_logic;
SIGNAL \counter05|rapido[12]~DUPLICATE_q\ : std_logic;
SIGNAL \counter05|Add0~26\ : std_logic;
SIGNAL \counter05|Add0~21_sumout\ : std_logic;
SIGNAL \counter05|Add0~22\ : std_logic;
SIGNAL \counter05|Add0~17_sumout\ : std_logic;
SIGNAL \counter05|Add0~18\ : std_logic;
SIGNAL \counter05|Add0~13_sumout\ : std_logic;
SIGNAL \counter05|rapido[15]~DUPLICATE_q\ : std_logic;
SIGNAL \counter05|Add0~14\ : std_logic;
SIGNAL \counter05|Add0~121_sumout\ : std_logic;
SIGNAL \counter05|rapido[16]~DUPLICATE_q\ : std_logic;
SIGNAL \counter05|Add0~122\ : std_logic;
SIGNAL \counter05|Add0~5_sumout\ : std_logic;
SIGNAL \counter05|Add0~6\ : std_logic;
SIGNAL \counter05|Add0~49_sumout\ : std_logic;
SIGNAL \counter05|Add0~50\ : std_logic;
SIGNAL \counter05|Add0~45_sumout\ : std_logic;
SIGNAL \counter05|Add0~46\ : std_logic;
SIGNAL \counter05|Add0~41_sumout\ : std_logic;
SIGNAL \counter05|Add0~42\ : std_logic;
SIGNAL \counter05|Add0~37_sumout\ : std_logic;
SIGNAL \counter05|Add0~38\ : std_logic;
SIGNAL \counter05|Add0~33_sumout\ : std_logic;
SIGNAL \counter05|Add0~34\ : std_logic;
SIGNAL \counter05|Add0~29_sumout\ : std_logic;
SIGNAL \counter05|Equal0~1_combout\ : std_logic;
SIGNAL \counter05|Add0~30\ : std_logic;
SIGNAL \counter05|Add0~73_sumout\ : std_logic;
SIGNAL \counter05|Add0~74\ : std_logic;
SIGNAL \counter05|Add0~69_sumout\ : std_logic;
SIGNAL \counter05|rapido[25]~DUPLICATE_q\ : std_logic;
SIGNAL \counter05|Add0~70\ : std_logic;
SIGNAL \counter05|Add0~65_sumout\ : std_logic;
SIGNAL \counter05|Add0~66\ : std_logic;
SIGNAL \counter05|Add0~61_sumout\ : std_logic;
SIGNAL \counter05|Add0~62\ : std_logic;
SIGNAL \counter05|Add0~57_sumout\ : std_logic;
SIGNAL \counter05|Add0~58\ : std_logic;
SIGNAL \counter05|Add0~53_sumout\ : std_logic;
SIGNAL \counter05|Add0~54\ : std_logic;
SIGNAL \counter05|Add0~77_sumout\ : std_logic;
SIGNAL \counter05|Equal0~3_combout\ : std_logic;
SIGNAL \counter05|rapido[28]~DUPLICATE_q\ : std_logic;
SIGNAL \counter05|rapido[27]~DUPLICATE_q\ : std_logic;
SIGNAL \counter05|rapido[26]~DUPLICATE_q\ : std_logic;
SIGNAL \counter05|rapido[24]~DUPLICATE_q\ : std_logic;
SIGNAL \counter05|Equal0~2_combout\ : std_logic;
SIGNAL \counter05|Equal0~0_combout\ : std_logic;
SIGNAL \counter05|Equal0~4_combout\ : std_logic;
SIGNAL \counter05|Equal0~5_combout\ : std_logic;
SIGNAL \counter05|rollover~0_combout\ : std_logic;
SIGNAL \counter05|rollover~q\ : std_logic;
SIGNAL \counter_low|lento[0]~0_combout\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \reset_counter_low~q\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \enable_counter_low~q\ : std_logic;
SIGNAL \counter_low|rapido[0]~0_combout\ : std_logic;
SIGNAL \counter_low|rapido[13]~DUPLICATE_q\ : std_logic;
SIGNAL \counter_low|Add0~77_sumout\ : std_logic;
SIGNAL \counter_low|rapido[0]~DUPLICATE_q\ : std_logic;
SIGNAL \counter_low|Add0~78\ : std_logic;
SIGNAL \counter_low|Add0~53_sumout\ : std_logic;
SIGNAL \counter_low|Add0~54\ : std_logic;
SIGNAL \counter_low|Add0~5_sumout\ : std_logic;
SIGNAL \counter_low|Add0~6\ : std_logic;
SIGNAL \counter_low|Add0~121_sumout\ : std_logic;
SIGNAL \counter_low|rapido[3]~DUPLICATE_q\ : std_logic;
SIGNAL \counter_low|Add0~122\ : std_logic;
SIGNAL \counter_low|Add0~117_sumout\ : std_logic;
SIGNAL \counter_low|rapido[4]~DUPLICATE_q\ : std_logic;
SIGNAL \counter_low|Add0~118\ : std_logic;
SIGNAL \counter_low|Add0~113_sumout\ : std_logic;
SIGNAL \counter_low|rapido[5]~DUPLICATE_q\ : std_logic;
SIGNAL \counter_low|Add0~114\ : std_logic;
SIGNAL \counter_low|Add0~109_sumout\ : std_logic;
SIGNAL \counter_low|rapido[6]~DUPLICATE_q\ : std_logic;
SIGNAL \counter_low|Add0~110\ : std_logic;
SIGNAL \counter_low|Add0~105_sumout\ : std_logic;
SIGNAL \counter_low|rapido[7]~DUPLICATE_q\ : std_logic;
SIGNAL \counter_low|Add0~106\ : std_logic;
SIGNAL \counter_low|Add0~97_sumout\ : std_logic;
SIGNAL \counter_low|rapido[8]~DUPLICATE_q\ : std_logic;
SIGNAL \counter_low|Add0~98\ : std_logic;
SIGNAL \counter_low|Add0~93_sumout\ : std_logic;
SIGNAL \counter_low|rapido[9]~DUPLICATE_q\ : std_logic;
SIGNAL \counter_low|Add0~94\ : std_logic;
SIGNAL \counter_low|Add0~89_sumout\ : std_logic;
SIGNAL \counter_low|Add0~90\ : std_logic;
SIGNAL \counter_low|Add0~85_sumout\ : std_logic;
SIGNAL \counter_low|rapido[11]~DUPLICATE_q\ : std_logic;
SIGNAL \counter_low|Add0~86\ : std_logic;
SIGNAL \counter_low|Add0~81_sumout\ : std_logic;
SIGNAL \counter_low|rapido[12]~DUPLICATE_q\ : std_logic;
SIGNAL \counter_low|Add0~82\ : std_logic;
SIGNAL \counter_low|Add0~1_sumout\ : std_logic;
SIGNAL \counter_low|rapido[15]~DUPLICATE_q\ : std_logic;
SIGNAL \counter_low|Add0~2\ : std_logic;
SIGNAL \counter_low|Add0~25_sumout\ : std_logic;
SIGNAL \counter_low|Add0~26\ : std_logic;
SIGNAL \counter_low|Add0~21_sumout\ : std_logic;
SIGNAL \counter_low|Add0~22\ : std_logic;
SIGNAL \counter_low|Add0~17_sumout\ : std_logic;
SIGNAL \counter_low|rapido[16]~DUPLICATE_q\ : std_logic;
SIGNAL \counter_low|Add0~18\ : std_logic;
SIGNAL \counter_low|Add0~13_sumout\ : std_logic;
SIGNAL \counter_low|rapido[18]~DUPLICATE_q\ : std_logic;
SIGNAL \counter_low|Add0~14\ : std_logic;
SIGNAL \counter_low|Add0~9_sumout\ : std_logic;
SIGNAL \counter_low|Equal0~0_combout\ : std_logic;
SIGNAL \counter_low|Equal0~3_combout\ : std_logic;
SIGNAL \counter_low|rapido[19]~DUPLICATE_q\ : std_logic;
SIGNAL \counter_low|Add0~10\ : std_logic;
SIGNAL \counter_low|Add0~101_sumout\ : std_logic;
SIGNAL \counter_low|Equal0~4_combout\ : std_logic;
SIGNAL \counter_low|Add0~102\ : std_logic;
SIGNAL \counter_low|Add0~49_sumout\ : std_logic;
SIGNAL \counter_low|Add0~50\ : std_logic;
SIGNAL \counter_low|Add0~45_sumout\ : std_logic;
SIGNAL \counter_low|Add0~46\ : std_logic;
SIGNAL \counter_low|Add0~41_sumout\ : std_logic;
SIGNAL \counter_low|Add0~42\ : std_logic;
SIGNAL \counter_low|Add0~37_sumout\ : std_logic;
SIGNAL \counter_low|rapido[23]~DUPLICATE_q\ : std_logic;
SIGNAL \counter_low|Add0~38\ : std_logic;
SIGNAL \counter_low|Add0~33_sumout\ : std_logic;
SIGNAL \counter_low|Add0~34\ : std_logic;
SIGNAL \counter_low|Add0~29_sumout\ : std_logic;
SIGNAL \counter_low|Equal0~1_combout\ : std_logic;
SIGNAL \counter_low|Add0~30\ : std_logic;
SIGNAL \counter_low|Add0~73_sumout\ : std_logic;
SIGNAL \counter_low|Add0~74\ : std_logic;
SIGNAL \counter_low|Add0~69_sumout\ : std_logic;
SIGNAL \counter_low|Add0~70\ : std_logic;
SIGNAL \counter_low|Add0~65_sumout\ : std_logic;
SIGNAL \counter_low|Add0~66\ : std_logic;
SIGNAL \counter_low|Add0~61_sumout\ : std_logic;
SIGNAL \counter_low|Add0~62\ : std_logic;
SIGNAL \counter_low|Add0~57_sumout\ : std_logic;
SIGNAL \counter_low|Equal0~2_combout\ : std_logic;
SIGNAL \counter_low|Equal0~5_combout\ : std_logic;
SIGNAL \counter_low|rollover~0_combout\ : std_logic;
SIGNAL \counter_low|rollover~q\ : std_logic;
SIGNAL \Selector10~0_combout\ : std_logic;
SIGNAL \Selector10~1_combout\ : std_logic;
SIGNAL \state.COUNT_05~q\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \reset_counter15~q\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \enable_counter15~q\ : std_logic;
SIGNAL \counter15|Add0~121_sumout\ : std_logic;
SIGNAL \counter15|rapido[0]~0_combout\ : std_logic;
SIGNAL \counter15|Add0~122\ : std_logic;
SIGNAL \counter15|Add0~117_sumout\ : std_logic;
SIGNAL \counter15|rapido[1]~DUPLICATE_q\ : std_logic;
SIGNAL \counter15|Add0~118\ : std_logic;
SIGNAL \counter15|Add0~113_sumout\ : std_logic;
SIGNAL \counter15|rapido[2]~DUPLICATE_q\ : std_logic;
SIGNAL \counter15|Add0~114\ : std_logic;
SIGNAL \counter15|Add0~109_sumout\ : std_logic;
SIGNAL \counter15|rapido[3]~DUPLICATE_q\ : std_logic;
SIGNAL \counter15|Add0~110\ : std_logic;
SIGNAL \counter15|Add0~105_sumout\ : std_logic;
SIGNAL \counter15|Add0~106\ : std_logic;
SIGNAL \counter15|Add0~101_sumout\ : std_logic;
SIGNAL \counter15|rapido[5]~DUPLICATE_q\ : std_logic;
SIGNAL \counter15|Add0~102\ : std_logic;
SIGNAL \counter15|Add0~97_sumout\ : std_logic;
SIGNAL \counter15|rapido[6]~DUPLICATE_q\ : std_logic;
SIGNAL \counter15|Add0~98\ : std_logic;
SIGNAL \counter15|Add0~93_sumout\ : std_logic;
SIGNAL \counter15|Add0~94\ : std_logic;
SIGNAL \counter15|Add0~89_sumout\ : std_logic;
SIGNAL \counter15|rapido[8]~DUPLICATE_q\ : std_logic;
SIGNAL \counter15|Add0~90\ : std_logic;
SIGNAL \counter15|Add0~85_sumout\ : std_logic;
SIGNAL \counter15|Add0~86\ : std_logic;
SIGNAL \counter15|Add0~81_sumout\ : std_logic;
SIGNAL \counter15|Add0~82\ : std_logic;
SIGNAL \counter15|Add0~77_sumout\ : std_logic;
SIGNAL \counter15|Add0~78\ : std_logic;
SIGNAL \counter15|Add0~1_sumout\ : std_logic;
SIGNAL \counter15|Add0~2\ : std_logic;
SIGNAL \counter15|Add0~25_sumout\ : std_logic;
SIGNAL \counter15|rapido[13]~DUPLICATE_q\ : std_logic;
SIGNAL \counter15|Add0~26\ : std_logic;
SIGNAL \counter15|Add0~21_sumout\ : std_logic;
SIGNAL \counter15|Add0~22\ : std_logic;
SIGNAL \counter15|Add0~17_sumout\ : std_logic;
SIGNAL \counter15|Add0~18\ : std_logic;
SIGNAL \counter15|Add0~13_sumout\ : std_logic;
SIGNAL \counter15|Add0~14\ : std_logic;
SIGNAL \counter15|Add0~9_sumout\ : std_logic;
SIGNAL \counter15|rapido[17]~DUPLICATE_q\ : std_logic;
SIGNAL \counter15|Add0~10\ : std_logic;
SIGNAL \counter15|Add0~5_sumout\ : std_logic;
SIGNAL \counter15|rapido[18]~DUPLICATE_q\ : std_logic;
SIGNAL \counter15|Add0~6\ : std_logic;
SIGNAL \counter15|Add0~49_sumout\ : std_logic;
SIGNAL \counter15|Add0~50\ : std_logic;
SIGNAL \counter15|Add0~45_sumout\ : std_logic;
SIGNAL \counter15|Add0~46\ : std_logic;
SIGNAL \counter15|Add0~41_sumout\ : std_logic;
SIGNAL \counter15|Add0~42\ : std_logic;
SIGNAL \counter15|Add0~37_sumout\ : std_logic;
SIGNAL \counter15|rapido[22]~DUPLICATE_q\ : std_logic;
SIGNAL \counter15|Add0~38\ : std_logic;
SIGNAL \counter15|Add0~33_sumout\ : std_logic;
SIGNAL \counter15|Add0~34\ : std_logic;
SIGNAL \counter15|Add0~29_sumout\ : std_logic;
SIGNAL \counter15|Add0~30\ : std_logic;
SIGNAL \counter15|Add0~73_sumout\ : std_logic;
SIGNAL \counter15|Add0~74\ : std_logic;
SIGNAL \counter15|Add0~69_sumout\ : std_logic;
SIGNAL \counter15|Add0~70\ : std_logic;
SIGNAL \counter15|Add0~65_sumout\ : std_logic;
SIGNAL \counter15|Add0~66\ : std_logic;
SIGNAL \counter15|Add0~61_sumout\ : std_logic;
SIGNAL \counter15|Add0~62\ : std_logic;
SIGNAL \counter15|Add0~57_sumout\ : std_logic;
SIGNAL \counter15|Add0~58\ : std_logic;
SIGNAL \counter15|Add0~53_sumout\ : std_logic;
SIGNAL \counter15|Equal0~2_combout\ : std_logic;
SIGNAL \counter15|Equal0~3_combout\ : std_logic;
SIGNAL \counter15|Equal0~1_combout\ : std_logic;
SIGNAL \counter15|Equal0~4_combout\ : std_logic;
SIGNAL \counter15|rapido[15]~DUPLICATE_q\ : std_logic;
SIGNAL \counter15|rapido[16]~DUPLICATE_q\ : std_logic;
SIGNAL \counter15|Equal0~0_combout\ : std_logic;
SIGNAL \counter15|Equal0~5_combout\ : std_logic;
SIGNAL \counter15|rollover~0_combout\ : std_logic;
SIGNAL \counter15|rollover~q\ : std_logic;
SIGNAL \Selector12~0_combout\ : std_logic;
SIGNAL \state.COUNT_LOW~q\ : std_logic;
SIGNAL \Selector13~0_combout\ : std_logic;
SIGNAL \Selector13~1_combout\ : std_logic;
SIGNAL \state.SHIFT~q\ : std_logic;
SIGNAL \Selector14~0_combout\ : std_logic;
SIGNAL \signal_out~reg0_q\ : std_logic;
SIGNAL \counter_low|rapido\ : std_logic_vector(30 DOWNTO 0);
SIGNAL \counter05|rapido\ : std_logic_vector(30 DOWNTO 0);
SIGNAL \counter15|rapido\ : std_logic_vector(30 DOWNTO 0);
SIGNAL bit_counter : std_logic_vector(2 DOWNTO 0);
SIGNAL \counter_low|lento\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \counter05|lento\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \counter15|lento\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \shift|aux\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \counter15|ALT_INV_rapido[1]~DUPLICATE_q\ : std_logic;
SIGNAL \counter15|ALT_INV_rapido[2]~DUPLICATE_q\ : std_logic;
SIGNAL \counter15|ALT_INV_rapido[3]~DUPLICATE_q\ : std_logic;
SIGNAL \counter15|ALT_INV_rapido[5]~DUPLICATE_q\ : std_logic;
SIGNAL \counter15|ALT_INV_rapido[6]~DUPLICATE_q\ : std_logic;
SIGNAL \counter15|ALT_INV_rapido[8]~DUPLICATE_q\ : std_logic;
SIGNAL \counter15|ALT_INV_rapido[22]~DUPLICATE_q\ : std_logic;
SIGNAL \counter15|ALT_INV_rapido[13]~DUPLICATE_q\ : std_logic;
SIGNAL \counter15|ALT_INV_rapido[15]~DUPLICATE_q\ : std_logic;
SIGNAL \counter15|ALT_INV_rapido[16]~DUPLICATE_q\ : std_logic;
SIGNAL \counter15|ALT_INV_rapido[17]~DUPLICATE_q\ : std_logic;
SIGNAL \counter15|ALT_INV_rapido[18]~DUPLICATE_q\ : std_logic;
SIGNAL \counter05|ALT_INV_rapido[16]~DUPLICATE_q\ : std_logic;
SIGNAL \counter05|ALT_INV_rapido[0]~DUPLICATE_q\ : std_logic;
SIGNAL \counter05|ALT_INV_rapido[3]~DUPLICATE_q\ : std_logic;
SIGNAL \counter05|ALT_INV_rapido[4]~DUPLICATE_q\ : std_logic;
SIGNAL \counter05|ALT_INV_rapido[5]~DUPLICATE_q\ : std_logic;
SIGNAL \counter05|ALT_INV_rapido[7]~DUPLICATE_q\ : std_logic;
SIGNAL \counter05|ALT_INV_rapido[24]~DUPLICATE_q\ : std_logic;
SIGNAL \counter05|ALT_INV_rapido[25]~DUPLICATE_q\ : std_logic;
SIGNAL \counter05|ALT_INV_rapido[26]~DUPLICATE_q\ : std_logic;
SIGNAL \counter05|ALT_INV_rapido[27]~DUPLICATE_q\ : std_logic;
SIGNAL \counter05|ALT_INV_rapido[28]~DUPLICATE_q\ : std_logic;
SIGNAL \counter05|ALT_INV_rapido[12]~DUPLICATE_q\ : std_logic;
SIGNAL \counter05|ALT_INV_rapido[15]~DUPLICATE_q\ : std_logic;
SIGNAL \counter05|ALT_INV_rapido[1]~DUPLICATE_q\ : std_logic;
SIGNAL \counter_low|ALT_INV_rapido[3]~DUPLICATE_q\ : std_logic;
SIGNAL \counter_low|ALT_INV_rapido[4]~DUPLICATE_q\ : std_logic;
SIGNAL \counter_low|ALT_INV_rapido[5]~DUPLICATE_q\ : std_logic;
SIGNAL \counter_low|ALT_INV_rapido[6]~DUPLICATE_q\ : std_logic;
SIGNAL \counter_low|ALT_INV_rapido[7]~DUPLICATE_q\ : std_logic;
SIGNAL \counter_low|ALT_INV_rapido[19]~DUPLICATE_q\ : std_logic;
SIGNAL \counter_low|ALT_INV_rapido[8]~DUPLICATE_q\ : std_logic;
SIGNAL \counter_low|ALT_INV_rapido[9]~DUPLICATE_q\ : std_logic;
SIGNAL \counter_low|ALT_INV_rapido[11]~DUPLICATE_q\ : std_logic;
SIGNAL \counter_low|ALT_INV_rapido[12]~DUPLICATE_q\ : std_logic;
SIGNAL \counter_low|ALT_INV_rapido[0]~DUPLICATE_q\ : std_logic;
SIGNAL \counter_low|ALT_INV_rapido[23]~DUPLICATE_q\ : std_logic;
SIGNAL \counter_low|ALT_INV_rapido[15]~DUPLICATE_q\ : std_logic;
SIGNAL \counter_low|ALT_INV_rapido[16]~DUPLICATE_q\ : std_logic;
SIGNAL \counter_low|ALT_INV_rapido[18]~DUPLICATE_q\ : std_logic;
SIGNAL \counter_low|ALT_INV_rapido[13]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_input_letter[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_input_letter[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_input_letter[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_enable~input_o\ : std_logic;
SIGNAL \ALT_INV_reset~input_o\ : std_logic;
SIGNAL \shift|ALT_INV_aux[1]~9_combout\ : std_logic;
SIGNAL \shift|ALT_INV_aux[2]~5_combout\ : std_logic;
SIGNAL \shift|ALT_INV_aux[3]~1_combout\ : std_logic;
SIGNAL \ALT_INV_start~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \shift|ALT_INV_aux\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \shift|ALT_INV_aux[1]~10_combout\ : std_logic;
SIGNAL \shift|ALT_INV_aux[1]~_emulated_q\ : std_logic;
SIGNAL \ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \shift|ALT_INV_aux[2]~6_combout\ : std_logic;
SIGNAL \shift|ALT_INV_aux[2]~_emulated_q\ : std_logic;
SIGNAL \ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \ALT_INV_enable_shifter~q\ : std_logic;
SIGNAL \shift|ALT_INV_aux[3]~2_combout\ : std_logic;
SIGNAL \ALT_INV_reset_shifter~q\ : std_logic;
SIGNAL \shift|ALT_INV_aux[3]~_emulated_q\ : std_logic;
SIGNAL \ALT_INV_start~0_combout\ : std_logic;
SIGNAL \counter15|ALT_INV_Equal0~5_combout\ : std_logic;
SIGNAL \counter15|ALT_INV_Equal0~4_combout\ : std_logic;
SIGNAL \counter15|ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \counter15|ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \counter15|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \counter15|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \ALT_INV_enable_counter15~q\ : std_logic;
SIGNAL \ALT_INV_reset_counter15~q\ : std_logic;
SIGNAL \counter15|ALT_INV_lento\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \counter05|ALT_INV_Equal0~5_combout\ : std_logic;
SIGNAL \counter05|ALT_INV_Equal0~4_combout\ : std_logic;
SIGNAL \counter05|ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \counter05|ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \counter05|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \counter05|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \ALT_INV_enable_counter05~q\ : std_logic;
SIGNAL \ALT_INV_reset_counter05~q\ : std_logic;
SIGNAL \counter05|ALT_INV_lento\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \counter_low|ALT_INV_Equal0~5_combout\ : std_logic;
SIGNAL \counter_low|ALT_INV_Equal0~4_combout\ : std_logic;
SIGNAL \counter_low|ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \counter_low|ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \counter_low|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \counter_low|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \ALT_INV_enable_counter_low~q\ : std_logic;
SIGNAL \ALT_INV_reset_counter_low~q\ : std_logic;
SIGNAL \counter_low|ALT_INV_lento\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ALT_INV_start~2_combout\ : std_logic;
SIGNAL \ALT_INV_start~_emulated_q\ : std_logic;
SIGNAL \ALT_INV_current_bit~q\ : std_logic;
SIGNAL \ALT_INV_Selector10~0_combout\ : std_logic;
SIGNAL \counter15|ALT_INV_rollover~q\ : std_logic;
SIGNAL \counter05|ALT_INV_rollover~q\ : std_logic;
SIGNAL \ALT_INV_Selector13~0_combout\ : std_logic;
SIGNAL \ALT_INV_state.COUNT_LOW~q\ : std_logic;
SIGNAL \counter_low|ALT_INV_rollover~q\ : std_logic;
SIGNAL \ALT_INV_current_bit~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL ALT_INV_bit_counter : std_logic_vector(2 DOWNTO 0);
SIGNAL \ALT_INV_state.COUNT_15~q\ : std_logic;
SIGNAL \ALT_INV_state.COUNT_05~q\ : std_logic;
SIGNAL \ALT_INV_state.SHIFT~q\ : std_logic;
SIGNAL \ALT_INV_state.IDLE~q\ : std_logic;
SIGNAL \ALT_INV_signal_out~reg0_q\ : std_logic;
SIGNAL \counter15|ALT_INV_rapido\ : std_logic_vector(30 DOWNTO 0);
SIGNAL \counter05|ALT_INV_rapido\ : std_logic_vector(30 DOWNTO 0);
SIGNAL \counter_low|ALT_INV_rapido\ : std_logic_vector(30 DOWNTO 0);

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_enable <= enable;
ww_input_letter <= input_letter;
signal_out <= ww_signal_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\counter15|ALT_INV_rapido[1]~DUPLICATE_q\ <= NOT \counter15|rapido[1]~DUPLICATE_q\;
\counter15|ALT_INV_rapido[2]~DUPLICATE_q\ <= NOT \counter15|rapido[2]~DUPLICATE_q\;
\counter15|ALT_INV_rapido[3]~DUPLICATE_q\ <= NOT \counter15|rapido[3]~DUPLICATE_q\;
\counter15|ALT_INV_rapido[5]~DUPLICATE_q\ <= NOT \counter15|rapido[5]~DUPLICATE_q\;
\counter15|ALT_INV_rapido[6]~DUPLICATE_q\ <= NOT \counter15|rapido[6]~DUPLICATE_q\;
\counter15|ALT_INV_rapido[8]~DUPLICATE_q\ <= NOT \counter15|rapido[8]~DUPLICATE_q\;
\counter15|ALT_INV_rapido[22]~DUPLICATE_q\ <= NOT \counter15|rapido[22]~DUPLICATE_q\;
\counter15|ALT_INV_rapido[13]~DUPLICATE_q\ <= NOT \counter15|rapido[13]~DUPLICATE_q\;
\counter15|ALT_INV_rapido[15]~DUPLICATE_q\ <= NOT \counter15|rapido[15]~DUPLICATE_q\;
\counter15|ALT_INV_rapido[16]~DUPLICATE_q\ <= NOT \counter15|rapido[16]~DUPLICATE_q\;
\counter15|ALT_INV_rapido[17]~DUPLICATE_q\ <= NOT \counter15|rapido[17]~DUPLICATE_q\;
\counter15|ALT_INV_rapido[18]~DUPLICATE_q\ <= NOT \counter15|rapido[18]~DUPLICATE_q\;
\counter05|ALT_INV_rapido[16]~DUPLICATE_q\ <= NOT \counter05|rapido[16]~DUPLICATE_q\;
\counter05|ALT_INV_rapido[0]~DUPLICATE_q\ <= NOT \counter05|rapido[0]~DUPLICATE_q\;
\counter05|ALT_INV_rapido[3]~DUPLICATE_q\ <= NOT \counter05|rapido[3]~DUPLICATE_q\;
\counter05|ALT_INV_rapido[4]~DUPLICATE_q\ <= NOT \counter05|rapido[4]~DUPLICATE_q\;
\counter05|ALT_INV_rapido[5]~DUPLICATE_q\ <= NOT \counter05|rapido[5]~DUPLICATE_q\;
\counter05|ALT_INV_rapido[7]~DUPLICATE_q\ <= NOT \counter05|rapido[7]~DUPLICATE_q\;
\counter05|ALT_INV_rapido[24]~DUPLICATE_q\ <= NOT \counter05|rapido[24]~DUPLICATE_q\;
\counter05|ALT_INV_rapido[25]~DUPLICATE_q\ <= NOT \counter05|rapido[25]~DUPLICATE_q\;
\counter05|ALT_INV_rapido[26]~DUPLICATE_q\ <= NOT \counter05|rapido[26]~DUPLICATE_q\;
\counter05|ALT_INV_rapido[27]~DUPLICATE_q\ <= NOT \counter05|rapido[27]~DUPLICATE_q\;
\counter05|ALT_INV_rapido[28]~DUPLICATE_q\ <= NOT \counter05|rapido[28]~DUPLICATE_q\;
\counter05|ALT_INV_rapido[12]~DUPLICATE_q\ <= NOT \counter05|rapido[12]~DUPLICATE_q\;
\counter05|ALT_INV_rapido[15]~DUPLICATE_q\ <= NOT \counter05|rapido[15]~DUPLICATE_q\;
\counter05|ALT_INV_rapido[1]~DUPLICATE_q\ <= NOT \counter05|rapido[1]~DUPLICATE_q\;
\counter_low|ALT_INV_rapido[3]~DUPLICATE_q\ <= NOT \counter_low|rapido[3]~DUPLICATE_q\;
\counter_low|ALT_INV_rapido[4]~DUPLICATE_q\ <= NOT \counter_low|rapido[4]~DUPLICATE_q\;
\counter_low|ALT_INV_rapido[5]~DUPLICATE_q\ <= NOT \counter_low|rapido[5]~DUPLICATE_q\;
\counter_low|ALT_INV_rapido[6]~DUPLICATE_q\ <= NOT \counter_low|rapido[6]~DUPLICATE_q\;
\counter_low|ALT_INV_rapido[7]~DUPLICATE_q\ <= NOT \counter_low|rapido[7]~DUPLICATE_q\;
\counter_low|ALT_INV_rapido[19]~DUPLICATE_q\ <= NOT \counter_low|rapido[19]~DUPLICATE_q\;
\counter_low|ALT_INV_rapido[8]~DUPLICATE_q\ <= NOT \counter_low|rapido[8]~DUPLICATE_q\;
\counter_low|ALT_INV_rapido[9]~DUPLICATE_q\ <= NOT \counter_low|rapido[9]~DUPLICATE_q\;
\counter_low|ALT_INV_rapido[11]~DUPLICATE_q\ <= NOT \counter_low|rapido[11]~DUPLICATE_q\;
\counter_low|ALT_INV_rapido[12]~DUPLICATE_q\ <= NOT \counter_low|rapido[12]~DUPLICATE_q\;
\counter_low|ALT_INV_rapido[0]~DUPLICATE_q\ <= NOT \counter_low|rapido[0]~DUPLICATE_q\;
\counter_low|ALT_INV_rapido[23]~DUPLICATE_q\ <= NOT \counter_low|rapido[23]~DUPLICATE_q\;
\counter_low|ALT_INV_rapido[15]~DUPLICATE_q\ <= NOT \counter_low|rapido[15]~DUPLICATE_q\;
\counter_low|ALT_INV_rapido[16]~DUPLICATE_q\ <= NOT \counter_low|rapido[16]~DUPLICATE_q\;
\counter_low|ALT_INV_rapido[18]~DUPLICATE_q\ <= NOT \counter_low|rapido[18]~DUPLICATE_q\;
\counter_low|ALT_INV_rapido[13]~DUPLICATE_q\ <= NOT \counter_low|rapido[13]~DUPLICATE_q\;
\ALT_INV_input_letter[1]~input_o\ <= NOT \input_letter[1]~input_o\;
\ALT_INV_input_letter[2]~input_o\ <= NOT \input_letter[2]~input_o\;
\ALT_INV_input_letter[0]~input_o\ <= NOT \input_letter[0]~input_o\;
\ALT_INV_enable~input_o\ <= NOT \enable~input_o\;
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;
\shift|ALT_INV_aux[1]~9_combout\ <= NOT \shift|aux[1]~9_combout\;
\shift|ALT_INV_aux[2]~5_combout\ <= NOT \shift|aux[2]~5_combout\;
\shift|ALT_INV_aux[3]~1_combout\ <= NOT \shift|aux[3]~1_combout\;
\ALT_INV_start~1_combout\ <= NOT \start~1_combout\;
\ALT_INV_Mux2~0_combout\ <= NOT \Mux2~0_combout\;
\shift|ALT_INV_aux\(0) <= NOT \shift|aux\(0);
\shift|ALT_INV_aux[1]~10_combout\ <= NOT \shift|aux[1]~10_combout\;
\shift|ALT_INV_aux[1]~_emulated_q\ <= NOT \shift|aux[1]~_emulated_q\;
\ALT_INV_Mux1~0_combout\ <= NOT \Mux1~0_combout\;
\shift|ALT_INV_aux[2]~6_combout\ <= NOT \shift|aux[2]~6_combout\;
\shift|ALT_INV_aux[2]~_emulated_q\ <= NOT \shift|aux[2]~_emulated_q\;
\ALT_INV_Mux0~0_combout\ <= NOT \Mux0~0_combout\;
\ALT_INV_enable_shifter~q\ <= NOT \enable_shifter~q\;
\shift|ALT_INV_aux[3]~2_combout\ <= NOT \shift|aux[3]~2_combout\;
\ALT_INV_reset_shifter~q\ <= NOT \reset_shifter~q\;
\shift|ALT_INV_aux[3]~_emulated_q\ <= NOT \shift|aux[3]~_emulated_q\;
\ALT_INV_start~0_combout\ <= NOT \start~0_combout\;
\counter15|ALT_INV_Equal0~5_combout\ <= NOT \counter15|Equal0~5_combout\;
\counter15|ALT_INV_Equal0~4_combout\ <= NOT \counter15|Equal0~4_combout\;
\counter15|ALT_INV_Equal0~3_combout\ <= NOT \counter15|Equal0~3_combout\;
\counter15|ALT_INV_Equal0~2_combout\ <= NOT \counter15|Equal0~2_combout\;
\counter15|ALT_INV_Equal0~1_combout\ <= NOT \counter15|Equal0~1_combout\;
\counter15|ALT_INV_Equal0~0_combout\ <= NOT \counter15|Equal0~0_combout\;
\ALT_INV_enable_counter15~q\ <= NOT \enable_counter15~q\;
\ALT_INV_reset_counter15~q\ <= NOT \reset_counter15~q\;
\counter15|ALT_INV_lento\(0) <= NOT \counter15|lento\(0);
\counter05|ALT_INV_Equal0~5_combout\ <= NOT \counter05|Equal0~5_combout\;
\counter05|ALT_INV_Equal0~4_combout\ <= NOT \counter05|Equal0~4_combout\;
\counter05|ALT_INV_Equal0~3_combout\ <= NOT \counter05|Equal0~3_combout\;
\counter05|ALT_INV_Equal0~2_combout\ <= NOT \counter05|Equal0~2_combout\;
\counter05|ALT_INV_Equal0~1_combout\ <= NOT \counter05|Equal0~1_combout\;
\counter05|ALT_INV_Equal0~0_combout\ <= NOT \counter05|Equal0~0_combout\;
\ALT_INV_enable_counter05~q\ <= NOT \enable_counter05~q\;
\ALT_INV_reset_counter05~q\ <= NOT \reset_counter05~q\;
\counter05|ALT_INV_lento\(0) <= NOT \counter05|lento\(0);
\counter_low|ALT_INV_Equal0~5_combout\ <= NOT \counter_low|Equal0~5_combout\;
\counter_low|ALT_INV_Equal0~4_combout\ <= NOT \counter_low|Equal0~4_combout\;
\counter_low|ALT_INV_Equal0~3_combout\ <= NOT \counter_low|Equal0~3_combout\;
\counter_low|ALT_INV_Equal0~2_combout\ <= NOT \counter_low|Equal0~2_combout\;
\counter_low|ALT_INV_Equal0~1_combout\ <= NOT \counter_low|Equal0~1_combout\;
\counter_low|ALT_INV_Equal0~0_combout\ <= NOT \counter_low|Equal0~0_combout\;
\ALT_INV_enable_counter_low~q\ <= NOT \enable_counter_low~q\;
\ALT_INV_reset_counter_low~q\ <= NOT \reset_counter_low~q\;
\counter_low|ALT_INV_lento\(0) <= NOT \counter_low|lento\(0);
\ALT_INV_start~2_combout\ <= NOT \start~2_combout\;
\ALT_INV_start~_emulated_q\ <= NOT \start~_emulated_q\;
\ALT_INV_current_bit~q\ <= NOT \current_bit~q\;
\ALT_INV_Selector10~0_combout\ <= NOT \Selector10~0_combout\;
\counter15|ALT_INV_rollover~q\ <= NOT \counter15|rollover~q\;
\counter05|ALT_INV_rollover~q\ <= NOT \counter05|rollover~q\;
\ALT_INV_Selector13~0_combout\ <= NOT \Selector13~0_combout\;
\ALT_INV_state.COUNT_LOW~q\ <= NOT \state.COUNT_LOW~q\;
\counter_low|ALT_INV_rollover~q\ <= NOT \counter_low|rollover~q\;
\ALT_INV_current_bit~0_combout\ <= NOT \current_bit~0_combout\;
\ALT_INV_Equal0~0_combout\ <= NOT \Equal0~0_combout\;
ALT_INV_bit_counter(2) <= NOT bit_counter(2);
ALT_INV_bit_counter(1) <= NOT bit_counter(1);
ALT_INV_bit_counter(0) <= NOT bit_counter(0);
\ALT_INV_state.COUNT_15~q\ <= NOT \state.COUNT_15~q\;
\ALT_INV_state.COUNT_05~q\ <= NOT \state.COUNT_05~q\;
\ALT_INV_state.SHIFT~q\ <= NOT \state.SHIFT~q\;
\ALT_INV_state.IDLE~q\ <= NOT \state.IDLE~q\;
\ALT_INV_signal_out~reg0_q\ <= NOT \signal_out~reg0_q\;
\counter15|ALT_INV_rapido\(0) <= NOT \counter15|rapido\(0);
\counter15|ALT_INV_rapido\(1) <= NOT \counter15|rapido\(1);
\counter15|ALT_INV_rapido\(2) <= NOT \counter15|rapido\(2);
\counter15|ALT_INV_rapido\(3) <= NOT \counter15|rapido\(3);
\counter15|ALT_INV_rapido\(4) <= NOT \counter15|rapido\(4);
\counter15|ALT_INV_rapido\(5) <= NOT \counter15|rapido\(5);
\counter15|ALT_INV_rapido\(6) <= NOT \counter15|rapido\(6);
\counter15|ALT_INV_rapido\(7) <= NOT \counter15|rapido\(7);
\counter15|ALT_INV_rapido\(8) <= NOT \counter15|rapido\(8);
\counter15|ALT_INV_rapido\(9) <= NOT \counter15|rapido\(9);
\counter15|ALT_INV_rapido\(10) <= NOT \counter15|rapido\(10);
\counter15|ALT_INV_rapido\(11) <= NOT \counter15|rapido\(11);
\counter15|ALT_INV_rapido\(25) <= NOT \counter15|rapido\(25);
\counter15|ALT_INV_rapido\(26) <= NOT \counter15|rapido\(26);
\counter15|ALT_INV_rapido\(27) <= NOT \counter15|rapido\(27);
\counter15|ALT_INV_rapido\(28) <= NOT \counter15|rapido\(28);
\counter15|ALT_INV_rapido\(29) <= NOT \counter15|rapido\(29);
\counter15|ALT_INV_rapido\(30) <= NOT \counter15|rapido\(30);
\counter15|ALT_INV_rapido\(19) <= NOT \counter15|rapido\(19);
\counter15|ALT_INV_rapido\(20) <= NOT \counter15|rapido\(20);
\counter15|ALT_INV_rapido\(21) <= NOT \counter15|rapido\(21);
\counter15|ALT_INV_rapido\(22) <= NOT \counter15|rapido\(22);
\counter15|ALT_INV_rapido\(23) <= NOT \counter15|rapido\(23);
\counter15|ALT_INV_rapido\(24) <= NOT \counter15|rapido\(24);
\counter15|ALT_INV_rapido\(13) <= NOT \counter15|rapido\(13);
\counter15|ALT_INV_rapido\(14) <= NOT \counter15|rapido\(14);
\counter15|ALT_INV_rapido\(15) <= NOT \counter15|rapido\(15);
\counter15|ALT_INV_rapido\(16) <= NOT \counter15|rapido\(16);
\counter15|ALT_INV_rapido\(17) <= NOT \counter15|rapido\(17);
\counter15|ALT_INV_rapido\(18) <= NOT \counter15|rapido\(18);
\counter15|ALT_INV_rapido\(12) <= NOT \counter15|rapido\(12);
\counter05|ALT_INV_rapido\(16) <= NOT \counter05|rapido\(16);
\counter05|ALT_INV_rapido\(0) <= NOT \counter05|rapido\(0);
\counter05|ALT_INV_rapido\(2) <= NOT \counter05|rapido\(2);
\counter05|ALT_INV_rapido\(3) <= NOT \counter05|rapido\(3);
\counter05|ALT_INV_rapido\(4) <= NOT \counter05|rapido\(4);
\counter05|ALT_INV_rapido\(5) <= NOT \counter05|rapido\(5);
\counter05|ALT_INV_rapido\(6) <= NOT \counter05|rapido\(6);
\counter05|ALT_INV_rapido\(7) <= NOT \counter05|rapido\(7);
\counter05|ALT_INV_rapido\(8) <= NOT \counter05|rapido\(8);
\counter05|ALT_INV_rapido\(9) <= NOT \counter05|rapido\(9);
\counter05|ALT_INV_rapido\(10) <= NOT \counter05|rapido\(10);
\counter05|ALT_INV_rapido\(30) <= NOT \counter05|rapido\(30);
\counter05|ALT_INV_rapido\(24) <= NOT \counter05|rapido\(24);
\counter05|ALT_INV_rapido\(25) <= NOT \counter05|rapido\(25);
\counter05|ALT_INV_rapido\(26) <= NOT \counter05|rapido\(26);
\counter05|ALT_INV_rapido\(27) <= NOT \counter05|rapido\(27);
\counter05|ALT_INV_rapido\(28) <= NOT \counter05|rapido\(28);
\counter05|ALT_INV_rapido\(29) <= NOT \counter05|rapido\(29);
\counter05|ALT_INV_rapido\(18) <= NOT \counter05|rapido\(18);
\counter05|ALT_INV_rapido\(19) <= NOT \counter05|rapido\(19);
\counter05|ALT_INV_rapido\(20) <= NOT \counter05|rapido\(20);
\counter05|ALT_INV_rapido\(21) <= NOT \counter05|rapido\(21);
\counter05|ALT_INV_rapido\(22) <= NOT \counter05|rapido\(22);
\counter05|ALT_INV_rapido\(23) <= NOT \counter05|rapido\(23);
\counter05|ALT_INV_rapido\(12) <= NOT \counter05|rapido\(12);
\counter05|ALT_INV_rapido\(13) <= NOT \counter05|rapido\(13);
\counter05|ALT_INV_rapido\(14) <= NOT \counter05|rapido\(14);
\counter05|ALT_INV_rapido\(15) <= NOT \counter05|rapido\(15);
\counter05|ALT_INV_rapido\(1) <= NOT \counter05|rapido\(1);
\counter05|ALT_INV_rapido\(17) <= NOT \counter05|rapido\(17);
\counter05|ALT_INV_rapido\(11) <= NOT \counter05|rapido\(11);
\counter_low|ALT_INV_rapido\(3) <= NOT \counter_low|rapido\(3);
\counter_low|ALT_INV_rapido\(4) <= NOT \counter_low|rapido\(4);
\counter_low|ALT_INV_rapido\(5) <= NOT \counter_low|rapido\(5);
\counter_low|ALT_INV_rapido\(6) <= NOT \counter_low|rapido\(6);
\counter_low|ALT_INV_rapido\(7) <= NOT \counter_low|rapido\(7);
\counter_low|ALT_INV_rapido\(19) <= NOT \counter_low|rapido\(19);
\counter_low|ALT_INV_rapido\(8) <= NOT \counter_low|rapido\(8);
\counter_low|ALT_INV_rapido\(9) <= NOT \counter_low|rapido\(9);
\counter_low|ALT_INV_rapido\(10) <= NOT \counter_low|rapido\(10);
\counter_low|ALT_INV_rapido\(11) <= NOT \counter_low|rapido\(11);
\counter_low|ALT_INV_rapido\(12) <= NOT \counter_low|rapido\(12);
\counter_low|ALT_INV_rapido\(0) <= NOT \counter_low|rapido\(0);
\counter_low|ALT_INV_rapido\(26) <= NOT \counter_low|rapido\(26);
\counter_low|ALT_INV_rapido\(27) <= NOT \counter_low|rapido\(27);
\counter_low|ALT_INV_rapido\(28) <= NOT \counter_low|rapido\(28);
\counter_low|ALT_INV_rapido\(29) <= NOT \counter_low|rapido\(29);
\counter_low|ALT_INV_rapido\(30) <= NOT \counter_low|rapido\(30);
\counter_low|ALT_INV_rapido\(1) <= NOT \counter_low|rapido\(1);
\counter_low|ALT_INV_rapido\(20) <= NOT \counter_low|rapido\(20);
\counter_low|ALT_INV_rapido\(21) <= NOT \counter_low|rapido\(21);
\counter_low|ALT_INV_rapido\(22) <= NOT \counter_low|rapido\(22);
\counter_low|ALT_INV_rapido\(23) <= NOT \counter_low|rapido\(23);
\counter_low|ALT_INV_rapido\(24) <= NOT \counter_low|rapido\(24);
\counter_low|ALT_INV_rapido\(25) <= NOT \counter_low|rapido\(25);
\counter_low|ALT_INV_rapido\(14) <= NOT \counter_low|rapido\(14);
\counter_low|ALT_INV_rapido\(15) <= NOT \counter_low|rapido\(15);
\counter_low|ALT_INV_rapido\(16) <= NOT \counter_low|rapido\(16);
\counter_low|ALT_INV_rapido\(17) <= NOT \counter_low|rapido\(17);
\counter_low|ALT_INV_rapido\(18) <= NOT \counter_low|rapido\(18);
\counter_low|ALT_INV_rapido\(2) <= NOT \counter_low|rapido\(2);
\counter_low|ALT_INV_rapido\(13) <= NOT \counter_low|rapido\(13);

-- Location: IOOBUF_X0_Y18_N79
\signal_out~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \signal_out~reg0_q\,
	devoe => ww_devoe,
	o => ww_signal_out);

-- Location: IOIBUF_X22_Y0_N1
\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G4
\clk~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clk~input_o\,
	outclk => \clk~inputCLKENA0_outclk\);

-- Location: IOIBUF_X11_Y0_N35
\enable~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_enable,
	o => \enable~input_o\);

-- Location: IOIBUF_X10_Y0_N92
\reset~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: LABCELL_X17_Y2_N24
\start~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \start~1_combout\ = ( \reset~input_o\ & ( \start~1_combout\ ) ) # ( \reset~input_o\ & ( !\start~1_combout\ & ( !\enable~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_enable~input_o\,
	datae => \ALT_INV_reset~input_o\,
	dataf => \ALT_INV_start~1_combout\,
	combout => \start~1_combout\);

-- Location: IOIBUF_X34_Y0_N1
\input_letter[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_letter(2),
	o => \input_letter[2]~input_o\);

-- Location: IOIBUF_X33_Y0_N58
\input_letter[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_letter(1),
	o => \input_letter[1]~input_o\);

-- Location: IOIBUF_X33_Y0_N41
\input_letter[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_letter(0),
	o => \input_letter[0]~input_o\);

-- Location: LABCELL_X16_Y3_N48
\bit_counter~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \bit_counter~0_combout\ = ( !bit_counter(0) & ( \input_letter[1]~input_o\ & ( (!bit_counter(2)) # ((!\input_letter[0]~input_o\ $ (!\input_letter[2]~input_o\)) # (bit_counter(1))) ) ) ) # ( !bit_counter(0) & ( !\input_letter[1]~input_o\ & ( 
-- (!\input_letter[0]~input_o\ & (((!bit_counter(1)) # (\input_letter[2]~input_o\)) # (bit_counter(2)))) # (\input_letter[0]~input_o\ & ((!bit_counter(2)) # ((bit_counter(1))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111001111111000000000000000011011110111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_input_letter[0]~input_o\,
	datab => ALT_INV_bit_counter(2),
	datac => \ALT_INV_input_letter[2]~input_o\,
	datad => ALT_INV_bit_counter(1),
	datae => ALT_INV_bit_counter(0),
	dataf => \ALT_INV_input_letter[1]~input_o\,
	combout => \bit_counter~0_combout\);

-- Location: LABCELL_X17_Y3_N12
\bit_counter[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \bit_counter[0]~1_combout\ = ( \state.SHIFT~q\ & ( \enable~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_state.SHIFT~q\,
	dataf => \ALT_INV_enable~input_o\,
	combout => \bit_counter[0]~1_combout\);

-- Location: FF_X16_Y3_N50
\bit_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bit_counter~0_combout\,
	clrn => \reset~input_o\,
	ena => \bit_counter[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_counter(0));

-- Location: LABCELL_X16_Y3_N30
\bit_counter~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \bit_counter~3_combout\ = ( bit_counter(2) & ( bit_counter(0) & ( !bit_counter(1) ) ) ) # ( !bit_counter(2) & ( bit_counter(0) & ( (bit_counter(1) & ((!\input_letter[1]~input_o\) # (!\input_letter[0]~input_o\ $ (\input_letter[2]~input_o\)))) ) ) ) # ( 
-- bit_counter(2) & ( !bit_counter(0) & ( (!\input_letter[0]~input_o\ $ (((\input_letter[1]~input_o\ & !\input_letter[2]~input_o\)))) # (bit_counter(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100111001111111100000000111010111111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_input_letter[1]~input_o\,
	datab => \ALT_INV_input_letter[0]~input_o\,
	datac => \ALT_INV_input_letter[2]~input_o\,
	datad => ALT_INV_bit_counter(1),
	datae => ALT_INV_bit_counter(2),
	dataf => ALT_INV_bit_counter(0),
	combout => \bit_counter~3_combout\);

-- Location: FF_X16_Y3_N32
\bit_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bit_counter~3_combout\,
	clrn => \reset~input_o\,
	ena => \bit_counter[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_counter(2));

-- Location: LABCELL_X16_Y3_N12
\bit_counter~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \bit_counter~2_combout\ = ( !bit_counter(1) & ( bit_counter(0) & ( (((!\input_letter[2]~input_o\) # (\input_letter[0]~input_o\)) # (bit_counter(2))) # (\input_letter[1]~input_o\) ) ) ) # ( bit_counter(1) & ( !bit_counter(0) & ( 
-- (((\input_letter[0]~input_o\) # (\input_letter[2]~input_o\)) # (bit_counter(2))) # (\input_letter[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011111111111111111110111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_input_letter[1]~input_o\,
	datab => ALT_INV_bit_counter(2),
	datac => \ALT_INV_input_letter[2]~input_o\,
	datad => \ALT_INV_input_letter[0]~input_o\,
	datae => ALT_INV_bit_counter(1),
	dataf => ALT_INV_bit_counter(0),
	combout => \bit_counter~2_combout\);

-- Location: FF_X16_Y3_N14
\bit_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \bit_counter~2_combout\,
	clrn => \reset~input_o\,
	ena => \bit_counter[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_counter(1));

-- Location: LABCELL_X16_Y3_N36
\Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = ( \input_letter[0]~input_o\ & ( bit_counter(0) & ( (!\input_letter[2]~input_o\ & (bit_counter(1) & (\input_letter[1]~input_o\ & !bit_counter(2)))) ) ) ) # ( !\input_letter[0]~input_o\ & ( bit_counter(0) & ( (\input_letter[2]~input_o\ 
-- & (!bit_counter(2) & (!bit_counter(1) $ (\input_letter[1]~input_o\)))) ) ) ) # ( \input_letter[0]~input_o\ & ( !bit_counter(0) & ( (!bit_counter(1) & (bit_counter(2) & ((!\input_letter[1]~input_o\) # (\input_letter[2]~input_o\)))) ) ) ) # ( 
-- !\input_letter[0]~input_o\ & ( !bit_counter(0) & ( (!\input_letter[2]~input_o\ & ((!bit_counter(1) & (\input_letter[1]~input_o\ & bit_counter(2))) # (bit_counter(1) & (!\input_letter[1]~input_o\ & !bit_counter(2))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000001000000000001100010001000001000000000000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_input_letter[2]~input_o\,
	datab => ALT_INV_bit_counter(1),
	datac => \ALT_INV_input_letter[1]~input_o\,
	datad => ALT_INV_bit_counter(2),
	datae => \ALT_INV_input_letter[0]~input_o\,
	dataf => ALT_INV_bit_counter(0),
	combout => \Equal0~0_combout\);

-- Location: MLABCELL_X18_Y2_N51
\start~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \start~3_combout\ = ( \state.SHIFT~q\ & ( \Equal0~0_combout\ & ( \start~1_combout\ ) ) ) # ( !\state.SHIFT~q\ & ( \Equal0~0_combout\ & ( !\start~2_combout\ $ (!\start~1_combout\) ) ) ) # ( \state.SHIFT~q\ & ( !\Equal0~0_combout\ & ( !\start~2_combout\ $ 
-- (!\start~1_combout\) ) ) ) # ( !\state.SHIFT~q\ & ( !\Equal0~0_combout\ & ( !\start~2_combout\ $ (!\start~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010010110100101101001011010010110100000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_start~2_combout\,
	datac => \ALT_INV_start~1_combout\,
	datae => \ALT_INV_state.SHIFT~q\,
	dataf => \ALT_INV_Equal0~0_combout\,
	combout => \start~3_combout\);

-- Location: LABCELL_X17_Y2_N33
\start~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \start~0_combout\ = ( !\reset~input_o\ & ( \enable~input_o\ ) ) # ( \reset~input_o\ & ( !\enable~input_o\ ) ) # ( !\reset~input_o\ & ( !\enable~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_reset~input_o\,
	dataf => \ALT_INV_enable~input_o\,
	combout => \start~0_combout\);

-- Location: FF_X18_Y2_N53
\start~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \start~3_combout\,
	clrn => \ALT_INV_start~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \start~_emulated_q\);

-- Location: LABCELL_X17_Y2_N45
\start~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \start~2_combout\ = ( \reset~input_o\ & ( \start~_emulated_q\ & ( (!\start~1_combout\) # (!\enable~input_o\) ) ) ) # ( \reset~input_o\ & ( !\start~_emulated_q\ & ( (!\enable~input_o\) # (\start~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110101010100000000000000001111111110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_start~1_combout\,
	datad => \ALT_INV_enable~input_o\,
	datae => \ALT_INV_reset~input_o\,
	dataf => \ALT_INV_start~_emulated_q\,
	combout => \start~2_combout\);

-- Location: MLABCELL_X18_Y3_N51
\Selector9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector9~0_combout\ = ( \state.IDLE~q\ & ( \Equal0~0_combout\ & ( !\state.SHIFT~q\ ) ) ) # ( !\state.IDLE~q\ & ( \Equal0~0_combout\ & ( (\start~2_combout\ & !\state.SHIFT~q\) ) ) ) # ( \state.IDLE~q\ & ( !\Equal0~0_combout\ ) ) # ( !\state.IDLE~q\ & ( 
-- !\Equal0~0_combout\ & ( \start~2_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011111111111111111100110000001100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_start~2_combout\,
	datac => \ALT_INV_state.SHIFT~q\,
	datae => \ALT_INV_state.IDLE~q\,
	dataf => \ALT_INV_Equal0~0_combout\,
	combout => \Selector9~0_combout\);

-- Location: LABCELL_X16_Y3_N18
\current_bit~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \current_bit~0_combout\ = ( \enable~input_o\ & ( !\reset~input_o\ ) ) # ( !\enable~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111110011001100110011111111111111111100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_reset~input_o\,
	datae => \ALT_INV_enable~input_o\,
	combout => \current_bit~0_combout\);

-- Location: FF_X18_Y3_N53
\state.IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector9~0_combout\,
	clrn => \ALT_INV_current_bit~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.IDLE~q\);

-- Location: LABCELL_X17_Y5_N39
\counter15|lento[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter15|lento[0]~0_combout\ = !\counter15|lento\(0)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \counter15|ALT_INV_lento\(0),
	combout => \counter15|lento[0]~0_combout\);

-- Location: LABCELL_X16_Y3_N57
\Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = ( \input_letter[1]~input_o\ & ( (!\input_letter[0]~input_o\) # (!\input_letter[2]~input_o\) ) ) # ( !\input_letter[1]~input_o\ & ( (\input_letter[0]~input_o\ & !\input_letter[2]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000011111111101010101111111110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_input_letter[0]~input_o\,
	datad => \ALT_INV_input_letter[2]~input_o\,
	dataf => \ALT_INV_input_letter[1]~input_o\,
	combout => \Mux0~0_combout\);

-- Location: LABCELL_X17_Y3_N48
\reset_shifter~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \reset_shifter~0_combout\ = ( \start~2_combout\ & ( \reset_shifter~q\ & ( (!\state.IDLE~q\) # ((!\Equal0~0_combout\) # ((!\state.SHIFT~q\) # (!\enable~input_o\))) ) ) ) # ( !\start~2_combout\ & ( \reset_shifter~q\ & ( (!\state.IDLE~q\) # 
-- ((!\Equal0~0_combout\) # ((!\state.SHIFT~q\) # (!\enable~input_o\))) ) ) ) # ( \start~2_combout\ & ( !\reset_shifter~q\ & ( (!\state.IDLE~q\ & \enable~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001010101011111111111111101111111111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.IDLE~q\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_state.SHIFT~q\,
	datad => \ALT_INV_enable~input_o\,
	datae => \ALT_INV_start~2_combout\,
	dataf => \ALT_INV_reset_shifter~q\,
	combout => \reset_shifter~0_combout\);

-- Location: FF_X16_Y3_N38
reset_shifter : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \reset_shifter~0_combout\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reset_shifter~q\);

-- Location: LABCELL_X16_Y3_N9
\shift|aux[3]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \shift|aux[3]~1_combout\ = ( \reset_shifter~q\ & ( \shift|aux[3]~1_combout\ ) ) # ( !\reset_shifter~q\ & ( \shift|aux[3]~1_combout\ & ( \Mux0~0_combout\ ) ) ) # ( !\reset_shifter~q\ & ( !\shift|aux[3]~1_combout\ & ( \Mux0~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mux0~0_combout\,
	datae => \ALT_INV_reset_shifter~q\,
	dataf => \shift|ALT_INV_aux[3]~1_combout\,
	combout => \shift|aux[3]~1_combout\);

-- Location: LABCELL_X16_Y3_N0
\Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = ( \input_letter[0]~input_o\ ) # ( !\input_letter[0]~input_o\ & ( !\input_letter[2]~input_o\ $ (!\input_letter[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010111111111111111101011010010110101111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_input_letter[2]~input_o\,
	datac => \ALT_INV_input_letter[1]~input_o\,
	datae => \ALT_INV_input_letter[0]~input_o\,
	combout => \Mux1~0_combout\);

-- Location: LABCELL_X16_Y3_N54
\shift|aux[2]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \shift|aux[2]~5_combout\ = ( \shift|aux[2]~5_combout\ & ( (!\Mux1~0_combout\) # (\reset_shifter~q\) ) ) # ( !\shift|aux[2]~5_combout\ & ( (!\Mux1~0_combout\ & !\reset_shifter~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000011110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mux1~0_combout\,
	datad => \ALT_INV_reset_shifter~q\,
	dataf => \shift|ALT_INV_aux[2]~5_combout\,
	combout => \shift|aux[2]~5_combout\);

-- Location: LABCELL_X16_Y3_N45
\Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = ( \input_letter[1]~input_o\ & ( (!\input_letter[0]~input_o\ & !\input_letter[2]~input_o\) ) ) # ( !\input_letter[1]~input_o\ & ( (\input_letter[0]~input_o\ & \input_letter[2]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010110101010000000001010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_input_letter[0]~input_o\,
	datad => \ALT_INV_input_letter[2]~input_o\,
	dataf => \ALT_INV_input_letter[1]~input_o\,
	combout => \Mux2~0_combout\);

-- Location: LABCELL_X16_Y3_N42
\Selector7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector7~0_combout\ = ( \start~2_combout\ & ( (!\state.IDLE~q\) # (\Selector13~0_combout\) ) ) # ( !\start~2_combout\ & ( ((!\state.IDLE~q\ & \enable_shifter~q\)) # (\Selector13~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111110011001100111111001111110011111100111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Selector13~0_combout\,
	datac => \ALT_INV_state.IDLE~q\,
	datad => \ALT_INV_enable_shifter~q\,
	dataf => \ALT_INV_start~2_combout\,
	combout => \Selector7~0_combout\);

-- Location: FF_X16_Y3_N43
enable_shifter : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector7~0_combout\,
	clrn => \reset~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \enable_shifter~q\);

-- Location: FF_X17_Y3_N44
\shift|aux[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \shift|aux[3]~2_combout\,
	clrn => \reset_shifter~q\,
	ena => \enable_shifter~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift|aux\(0));

-- Location: LABCELL_X16_Y3_N24
\shift|aux[1]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \shift|aux[1]~9_combout\ = ( \reset_shifter~q\ & ( \shift|aux[1]~9_combout\ ) ) # ( !\reset_shifter~q\ & ( \shift|aux[1]~9_combout\ & ( \Mux2~0_combout\ ) ) ) # ( !\reset_shifter~q\ & ( !\shift|aux[1]~9_combout\ & ( \Mux2~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000000000000000110011001100111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mux2~0_combout\,
	datae => \ALT_INV_reset_shifter~q\,
	dataf => \shift|ALT_INV_aux[1]~9_combout\,
	combout => \shift|aux[1]~9_combout\);

-- Location: LABCELL_X17_Y3_N9
\shift|aux[1]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \shift|aux[1]~11_combout\ = ( \shift|aux[1]~9_combout\ & ( !\shift|aux\(0) ) ) # ( !\shift|aux[1]~9_combout\ & ( \shift|aux\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \shift|ALT_INV_aux\(0),
	dataf => \shift|ALT_INV_aux[1]~9_combout\,
	combout => \shift|aux[1]~11_combout\);

-- Location: FF_X17_Y3_N10
\shift|aux[1]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \shift|aux[1]~11_combout\,
	clrn => \reset_shifter~q\,
	ena => \enable_shifter~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift|aux[1]~_emulated_q\);

-- Location: LABCELL_X17_Y3_N0
\shift|aux[1]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \shift|aux[1]~10_combout\ = ( \shift|aux[1]~9_combout\ & ( (!\reset_shifter~q\ & (\Mux2~0_combout\)) # (\reset_shifter~q\ & ((!\shift|aux[1]~_emulated_q\))) ) ) # ( !\shift|aux[1]~9_combout\ & ( (!\reset_shifter~q\ & (\Mux2~0_combout\)) # 
-- (\reset_shifter~q\ & ((\shift|aux[1]~_emulated_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000111111000011000011111100111111000011000011111100001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_reset_shifter~q\,
	datac => \ALT_INV_Mux2~0_combout\,
	datad => \shift|ALT_INV_aux[1]~_emulated_q\,
	dataf => \shift|ALT_INV_aux[1]~9_combout\,
	combout => \shift|aux[1]~10_combout\);

-- Location: LABCELL_X17_Y3_N6
\shift|aux[2]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \shift|aux[2]~7_combout\ = ( \shift|aux[1]~10_combout\ & ( !\shift|aux[2]~5_combout\ ) ) # ( !\shift|aux[1]~10_combout\ & ( \shift|aux[2]~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \shift|ALT_INV_aux[2]~5_combout\,
	dataf => \shift|ALT_INV_aux[1]~10_combout\,
	combout => \shift|aux[2]~7_combout\);

-- Location: FF_X17_Y3_N8
\shift|aux[2]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \shift|aux[2]~7_combout\,
	clrn => \reset_shifter~q\,
	ena => \enable_shifter~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift|aux[2]~_emulated_q\);

-- Location: LABCELL_X17_Y3_N3
\shift|aux[2]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \shift|aux[2]~6_combout\ = ( \shift|aux[2]~5_combout\ & ( (!\reset_shifter~q\ & ((!\Mux1~0_combout\))) # (\reset_shifter~q\ & (!\shift|aux[2]~_emulated_q\)) ) ) # ( !\shift|aux[2]~5_combout\ & ( (!\reset_shifter~q\ & ((!\Mux1~0_combout\))) # 
-- (\reset_shifter~q\ & (\shift|aux[2]~_emulated_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100111100000011110011110000001111111100001100001111110000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_reset_shifter~q\,
	datac => \shift|ALT_INV_aux[2]~_emulated_q\,
	datad => \ALT_INV_Mux1~0_combout\,
	dataf => \shift|ALT_INV_aux[2]~5_combout\,
	combout => \shift|aux[2]~6_combout\);

-- Location: LABCELL_X17_Y3_N45
\shift|aux[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \shift|aux[3]~3_combout\ = ( \shift|aux[2]~6_combout\ & ( !\shift|aux[3]~1_combout\ ) ) # ( !\shift|aux[2]~6_combout\ & ( \shift|aux[3]~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \shift|ALT_INV_aux[3]~1_combout\,
	dataf => \shift|ALT_INV_aux[2]~6_combout\,
	combout => \shift|aux[3]~3_combout\);

-- Location: FF_X17_Y3_N46
\shift|aux[3]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \shift|aux[3]~3_combout\,
	clrn => \reset_shifter~q\,
	ena => \enable_shifter~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift|aux[3]~_emulated_q\);

-- Location: LABCELL_X17_Y3_N42
\shift|aux[3]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \shift|aux[3]~2_combout\ = ( \shift|aux[3]~_emulated_q\ & ( (!\reset_shifter~q\ & ((\Mux0~0_combout\))) # (\reset_shifter~q\ & (!\shift|aux[3]~1_combout\)) ) ) # ( !\shift|aux[3]~_emulated_q\ & ( (!\reset_shifter~q\ & ((\Mux0~0_combout\))) # 
-- (\reset_shifter~q\ & (\shift|aux[3]~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111110011000000111111001100001100111111000000110011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \shift|ALT_INV_aux[3]~1_combout\,
	datac => \ALT_INV_reset_shifter~q\,
	datad => \ALT_INV_Mux0~0_combout\,
	dataf => \shift|ALT_INV_aux[3]~_emulated_q\,
	combout => \shift|aux[3]~2_combout\);

-- Location: LABCELL_X17_Y3_N30
\current_bit~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \current_bit~1_combout\ = ( \current_bit~q\ & ( \state.IDLE~q\ & ( (!\Selector13~0_combout\) # ((\current_bit~0_combout\) # (\shift|aux[3]~2_combout\)) ) ) ) # ( !\current_bit~q\ & ( \state.IDLE~q\ & ( (\Selector13~0_combout\ & (\shift|aux[3]~2_combout\ & 
-- !\current_bit~0_combout\)) ) ) ) # ( \current_bit~q\ & ( !\state.IDLE~q\ & ( ((!\start~2_combout\) # (\current_bit~0_combout\)) # (\shift|aux[3]~2_combout\) ) ) ) # ( !\current_bit~q\ & ( !\state.IDLE~q\ & ( (\shift|aux[3]~2_combout\ & (\start~2_combout\ 
-- & !\current_bit~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000000111100111111111100010001000000001011101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector13~0_combout\,
	datab => \shift|ALT_INV_aux[3]~2_combout\,
	datac => \ALT_INV_start~2_combout\,
	datad => \ALT_INV_current_bit~0_combout\,
	datae => \ALT_INV_current_bit~q\,
	dataf => \ALT_INV_state.IDLE~q\,
	combout => \current_bit~1_combout\);

-- Location: FF_X17_Y3_N32
current_bit : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \current_bit~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_bit~q\);

-- Location: LABCELL_X20_Y1_N48
\counter05|lento[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter05|lento[0]~0_combout\ = ( !\counter05|lento\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \counter05|ALT_INV_lento\(0),
	combout => \counter05|lento[0]~0_combout\);

-- Location: LABCELL_X17_Y5_N30
\Selector11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector11~0_combout\ = ( \state.COUNT_15~q\ & ( \Selector10~0_combout\ & ( (!\state.SHIFT~q\) # ((!\Equal0~0_combout\ & \current_bit~q\)) ) ) ) # ( !\state.COUNT_15~q\ & ( \Selector10~0_combout\ & ( (!\Equal0~0_combout\ & (\current_bit~q\ & 
-- \state.SHIFT~q\)) ) ) ) # ( \state.COUNT_15~q\ & ( !\Selector10~0_combout\ & ( (!\Equal0~0_combout\ & (\current_bit~q\ & \state.SHIFT~q\)) ) ) ) # ( !\state.COUNT_15~q\ & ( !\Selector10~0_combout\ & ( (!\Equal0~0_combout\ & (\current_bit~q\ & 
-- \state.SHIFT~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000101111001011110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datab => \ALT_INV_current_bit~q\,
	datac => \ALT_INV_state.SHIFT~q\,
	datae => \ALT_INV_state.COUNT_15~q\,
	dataf => \ALT_INV_Selector10~0_combout\,
	combout => \Selector11~0_combout\);

-- Location: FF_X17_Y5_N32
\state.COUNT_15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector11~0_combout\,
	clrn => \ALT_INV_current_bit~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.COUNT_15~q\);

-- Location: LABCELL_X20_Y1_N57
\Selector3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = ( \reset_counter05~q\ & ( \state.COUNT_15~q\ ) ) # ( !\reset_counter05~q\ & ( \state.COUNT_15~q\ & ( (!\counter05|rollover~q\ & \state.COUNT_05~q\) ) ) ) # ( \reset_counter05~q\ & ( !\state.COUNT_15~q\ & ( ((!\counter05|rollover~q\ 
-- & \state.COUNT_05~q\)) # (\state.COUNT_LOW~q\) ) ) ) # ( !\reset_counter05~q\ & ( !\state.COUNT_15~q\ & ( (!\counter05|rollover~q\ & \state.COUNT_05~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100010111010101110100001100000011001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.COUNT_LOW~q\,
	datab => \counter05|ALT_INV_rollover~q\,
	datac => \ALT_INV_state.COUNT_05~q\,
	datae => \ALT_INV_reset_counter05~q\,
	dataf => \ALT_INV_state.COUNT_15~q\,
	combout => \Selector3~0_combout\);

-- Location: FF_X20_Y1_N59
reset_counter05 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector3~0_combout\,
	clrn => \reset~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reset_counter05~q\);

-- Location: LABCELL_X17_Y2_N51
\Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = ( \enable_counter05~q\ & ( \state.COUNT_05~q\ & ( (!\counter05|rollover~q\) # ((\state.COUNT_LOW~q\) # (\state.COUNT_15~q\)) ) ) ) # ( !\enable_counter05~q\ & ( \state.COUNT_05~q\ & ( !\counter05|rollover~q\ ) ) ) # ( 
-- \enable_counter05~q\ & ( !\state.COUNT_05~q\ & ( (\state.COUNT_LOW~q\) # (\state.COUNT_15~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011111111111110101010101010101010111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \counter05|ALT_INV_rollover~q\,
	datac => \ALT_INV_state.COUNT_15~q\,
	datad => \ALT_INV_state.COUNT_LOW~q\,
	datae => \ALT_INV_enable_counter05~q\,
	dataf => \ALT_INV_state.COUNT_05~q\,
	combout => \Selector0~0_combout\);

-- Location: FF_X17_Y2_N53
enable_counter05 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector0~0_combout\,
	clrn => \reset~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \enable_counter05~q\);

-- Location: LABCELL_X19_Y2_N0
\counter05|Add0~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter05|Add0~117_sumout\ = SUM(( \counter05|rapido[0]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))
-- \counter05|Add0~118\ = CARRY(( \counter05|rapido[0]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \counter05|ALT_INV_rapido[0]~DUPLICATE_q\,
	cin => GND,
	sumout => \counter05|Add0~117_sumout\,
	cout => \counter05|Add0~118\);

-- Location: LABCELL_X19_Y1_N36
\counter05|rapido[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter05|rapido[0]~0_combout\ = ( \enable_counter05~q\ & ( \reset_counter05~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_reset_counter05~q\,
	dataf => \ALT_INV_enable_counter05~q\,
	combout => \counter05|rapido[0]~0_combout\);

-- Location: FF_X19_Y2_N2
\counter05|rapido[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \counter05|Add0~117_sumout\,
	sclr => \counter05|Equal0~5_combout\,
	ena => \counter05|rapido[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter05|rapido[0]~DUPLICATE_q\);

-- Location: LABCELL_X19_Y2_N3
\counter05|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter05|Add0~9_sumout\ = SUM(( \counter05|rapido[1]~DUPLICATE_q\ ) + ( GND ) + ( \counter05|Add0~118\ ))
-- \counter05|Add0~10\ = CARRY(( \counter05|rapido[1]~DUPLICATE_q\ ) + ( GND ) + ( \counter05|Add0~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \counter05|ALT_INV_rapido[1]~DUPLICATE_q\,
	cin => \counter05|Add0~118\,
	sumout => \counter05|Add0~9_sumout\,
	cout => \counter05|Add0~10\);

-- Location: FF_X19_Y2_N5
\counter05|rapido[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \counter05|Add0~9_sumout\,
	sclr => \counter05|Equal0~5_combout\,
	ena => \counter05|rapido[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter05|rapido[1]~DUPLICATE_q\);

-- Location: LABCELL_X19_Y2_N6
\counter05|Add0~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter05|Add0~113_sumout\ = SUM(( \counter05|rapido\(2) ) + ( GND ) + ( \counter05|Add0~10\ ))
-- \counter05|Add0~114\ = CARRY(( \counter05|rapido\(2) ) + ( GND ) + ( \counter05|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \counter05|ALT_INV_rapido\(2),
	cin => \counter05|Add0~10\,
	sumout => \counter05|Add0~113_sumout\,
	cout => \counter05|Add0~114\);

-- Location: FF_X19_Y2_N7
\counter05|rapido[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \counter05|Add0~113_sumout\,
	sclr => \counter05|Equal0~5_combout\,
	ena => \counter05|rapido[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter05|rapido\(2));

-- Location: LABCELL_X19_Y2_N9
\counter05|Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter05|Add0~109_sumout\ = SUM(( \counter05|rapido[3]~DUPLICATE_q\ ) + ( GND ) + ( \counter05|Add0~114\ ))
-- \counter05|Add0~110\ = CARRY(( \counter05|rapido[3]~DUPLICATE_q\ ) + ( GND ) + ( \counter05|Add0~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \counter05|ALT_INV_rapido[3]~DUPLICATE_q\,
	cin => \counter05|Add0~114\,
	sumout => \counter05|Add0~109_sumout\,
	cout => \counter05|Add0~110\);

-- Location: FF_X19_Y2_N11
\counter05|rapido[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \counter05|Add0~109_sumout\,
	sclr => \counter05|Equal0~5_combout\,
	ena => \counter05|rapido[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter05|rapido[3]~DUPLICATE_q\);

-- Location: LABCELL_X19_Y2_N12
\counter05|Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter05|Add0~105_sumout\ = SUM(( \counter05|rapido[4]~DUPLICATE_q\ ) + ( GND ) + ( \counter05|Add0~110\ ))
-- \counter05|Add0~106\ = CARRY(( \counter05|rapido[4]~DUPLICATE_q\ ) + ( GND ) + ( \counter05|Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \counter05|ALT_INV_rapido[4]~DUPLICATE_q\,
	cin => \counter05|Add0~110\,
	sumout => \counter05|Add0~105_sumout\,
	cout => \counter05|Add0~106\);

-- Location: FF_X19_Y2_N14
\counter05|rapido[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \counter05|Add0~105_sumout\,
	sclr => \counter05|Equal0~5_combout\,
	ena => \counter05|rapido[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter05|rapido[4]~DUPLICATE_q\);

-- Location: LABCELL_X19_Y2_N15
\counter05|Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter05|Add0~101_sumout\ = SUM(( \counter05|rapido[5]~DUPLICATE_q\ ) + ( GND ) + ( \counter05|Add0~106\ ))
-- \counter05|Add0~102\ = CARRY(( \counter05|rapido[5]~DUPLICATE_q\ ) + ( GND ) + ( \counter05|Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \counter05|ALT_INV_rapido[5]~DUPLICATE_q\,
	cin => \counter05|Add0~106\,
	sumout => \counter05|Add0~101_sumout\,
	cout => \counter05|Add0~102\);

-- Location: FF_X19_Y2_N17
\counter05|rapido[5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \counter05|Add0~101_sumout\,
	sclr => \counter05|Equal0~5_combout\,
	ena => \counter05|rapido[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter05|rapido[5]~DUPLICATE_q\);

-- Location: LABCELL_X19_Y2_N18
\counter05|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter05|Add0~97_sumout\ = SUM(( \counter05|rapido\(6) ) + ( GND ) + ( \counter05|Add0~102\ ))
-- \counter05|Add0~98\ = CARRY(( \counter05|rapido\(6) ) + ( GND ) + ( \counter05|Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \counter05|ALT_INV_rapido\(6),
	cin => \counter05|Add0~102\,
	sumout => \counter05|Add0~97_sumout\,
	cout => \counter05|Add0~98\);

-- Location: FF_X19_Y2_N20
\counter05|rapido[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \counter05|Add0~97_sumout\,
	sclr => \counter05|Equal0~5_combout\,
	ena => \counter05|rapido[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter05|rapido\(6));

-- Location: LABCELL_X19_Y2_N21
\counter05|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter05|Add0~93_sumout\ = SUM(( \counter05|rapido[7]~DUPLICATE_q\ ) + ( GND ) + ( \counter05|Add0~98\ ))
-- \counter05|Add0~94\ = CARRY(( \counter05|rapido[7]~DUPLICATE_q\ ) + ( GND ) + ( \counter05|Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \counter05|ALT_INV_rapido[7]~DUPLICATE_q\,
	cin => \counter05|Add0~98\,
	sumout => \counter05|Add0~93_sumout\,
	cout => \counter05|Add0~94\);

-- Location: FF_X19_Y2_N23
\counter05|rapido[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \counter05|Add0~93_sumout\,
	sclr => \counter05|Equal0~5_combout\,
	ena => \counter05|rapido[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter05|rapido[7]~DUPLICATE_q\);

-- Location: LABCELL_X19_Y2_N24
\counter05|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter05|Add0~89_sumout\ = SUM(( \counter05|rapido\(8) ) + ( GND ) + ( \counter05|Add0~94\ ))
-- \counter05|Add0~90\ = CARRY(( \counter05|rapido\(8) ) + ( GND ) + ( \counter05|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \counter05|ALT_INV_rapido\(8),
	cin => \counter05|Add0~94\,
	sumout => \counter05|Add0~89_sumout\,
	cout => \counter05|Add0~90\);

-- Location: FF_X19_Y2_N26
\counter05|rapido[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \counter05|Add0~89_sumout\,
	sclr => \counter05|Equal0~5_combout\,
	ena => \counter05|rapido[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter05|rapido\(8));

-- Location: LABCELL_X19_Y2_N27
\counter05|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter05|Add0~85_sumout\ = SUM(( \counter05|rapido\(9) ) + ( GND ) + ( \counter05|Add0~90\ ))
-- \counter05|Add0~86\ = CARRY(( \counter05|rapido\(9) ) + ( GND ) + ( \counter05|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \counter05|ALT_INV_rapido\(9),
	cin => \counter05|Add0~90\,
	sumout => \counter05|Add0~85_sumout\,
	cout => \counter05|Add0~86\);

-- Location: FF_X19_Y2_N29
\counter05|rapido[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \counter05|Add0~85_sumout\,
	sclr => \counter05|Equal0~5_combout\,
	ena => \counter05|rapido[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter05|rapido\(9));

-- Location: LABCELL_X19_Y2_N30
\counter05|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter05|Add0~81_sumout\ = SUM(( \counter05|rapido\(10) ) + ( GND ) + ( \counter05|Add0~86\ ))
-- \counter05|Add0~82\ = CARRY(( \counter05|rapido\(10) ) + ( GND ) + ( \counter05|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \counter05|ALT_INV_rapido\(10),
	cin => \counter05|Add0~86\,
	sumout => \counter05|Add0~81_sumout\,
	cout => \counter05|Add0~82\);

-- Location: FF_X19_Y2_N31
\counter05|rapido[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \counter05|Add0~81_sumout\,
	sclr => \counter05|Equal0~5_combout\,
	ena => \counter05|rapido[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter05|rapido\(10));

-- Location: LABCELL_X19_Y2_N33
\counter05|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter05|Add0~1_sumout\ = SUM(( \counter05|rapido\(11) ) + ( GND ) + ( \counter05|Add0~82\ ))
-- \counter05|Add0~2\ = CARRY(( \counter05|rapido\(11) ) + ( GND ) + ( \counter05|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \counter05|ALT_INV_rapido\(11),
	cin => \counter05|Add0~82\,
	sumout => \counter05|Add0~1_sumout\,
	cout => \counter05|Add0~2\);

-- Location: FF_X19_Y2_N35
\counter05|rapido[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \counter05|Add0~1_sumout\,
	sclr => \counter05|Equal0~5_combout\,
	ena => \counter05|rapido[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter05|rapido\(11));

-- Location: LABCELL_X19_Y2_N36
\counter05|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter05|Add0~25_sumout\ = SUM(( \counter05|rapido[12]~DUPLICATE_q\ ) + ( GND ) + ( \counter05|Add0~2\ ))
-- \counter05|Add0~26\ = CARRY(( \counter05|rapido[12]~DUPLICATE_q\ ) + ( GND ) + ( \counter05|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \counter05|ALT_INV_rapido[12]~DUPLICATE_q\,
	cin => \counter05|Add0~2\,
	sumout => \counter05|Add0~25_sumout\,
	cout => \counter05|Add0~26\);

-- Location: FF_X19_Y2_N38
\counter05|rapido[12]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \counter05|Add0~25_sumout\,
	sclr => \counter05|Equal0~5_combout\,
	ena => \counter05|rapido[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter05|rapido[12]~DUPLICATE_q\);

-- Location: LABCELL_X19_Y2_N39
\counter05|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter05|Add0~21_sumout\ = SUM(( \counter05|rapido\(13) ) + ( GND ) + ( \counter05|Add0~26\ ))
-- \counter05|Add0~22\ = CARRY(( \counter05|rapido\(13) ) + ( GND ) + ( \counter05|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \counter05|ALT_INV_rapido\(13),
	cin => \counter05|Add0~26\,
	sumout => \counter05|Add0~21_sumout\,
	cout => \counter05|Add0~22\);

-- Location: FF_X19_Y2_N41
\counter05|rapido[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \counter05|Add0~21_sumout\,
	sclr => \counter05|Equal0~5_combout\,
	ena => \counter05|rapido[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter05|rapido\(13));

-- Location: LABCELL_X19_Y2_N42
\counter05|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter05|Add0~17_sumout\ = SUM(( \counter05|rapido\(14) ) + ( GND ) + ( \counter05|Add0~22\ ))
-- \counter05|Add0~18\ = CARRY(( \counter05|rapido\(14) ) + ( GND ) + ( \counter05|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \counter05|ALT_INV_rapido\(14),
	cin => \counter05|Add0~22\,
	sumout => \counter05|Add0~17_sumout\,
	cout => \counter05|Add0~18\);

-- Location: FF_X19_Y2_N43
\counter05|rapido[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \counter05|Add0~17_sumout\,
	sclr => \counter05|Equal0~5_combout\,
	ena => \counter05|rapido[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter05|rapido\(14));

-- Location: LABCELL_X19_Y2_N45
\counter05|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter05|Add0~13_sumout\ = SUM(( \counter05|rapido[15]~DUPLICATE_q\ ) + ( GND ) + ( \counter05|Add0~18\ ))
-- \counter05|Add0~14\ = CARRY(( \counter05|rapido[15]~DUPLICATE_q\ ) + ( GND ) + ( \counter05|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \counter05|ALT_INV_rapido[15]~DUPLICATE_q\,
	cin => \counter05|Add0~18\,
	sumout => \counter05|Add0~13_sumout\,
	cout => \counter05|Add0~14\);

-- Location: FF_X19_Y2_N47
\counter05|rapido[15]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \counter05|Add0~13_sumout\,
	sclr => \counter05|Equal0~5_combout\,
	ena => \counter05|rapido[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter05|rapido[15]~DUPLICATE_q\);

-- Location: LABCELL_X19_Y2_N48
\counter05|Add0~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter05|Add0~121_sumout\ = SUM(( \counter05|rapido[16]~DUPLICATE_q\ ) + ( GND ) + ( \counter05|Add0~14\ ))
-- \counter05|Add0~122\ = CARRY(( \counter05|rapido[16]~DUPLICATE_q\ ) + ( GND ) + ( \counter05|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \counter05|ALT_INV_rapido[16]~DUPLICATE_q\,
	cin => \counter05|Add0~14\,
	sumout => \counter05|Add0~121_sumout\,
	cout => \counter05|Add0~122\);

-- Location: FF_X19_Y2_N50
\counter05|rapido[16]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \counter05|Add0~121_sumout\,
	sclr => \counter05|Equal0~5_combout\,
	ena => \counter05|rapido[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter05|rapido[16]~DUPLICATE_q\);

-- Location: LABCELL_X19_Y2_N51
\counter05|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter05|Add0~5_sumout\ = SUM(( \counter05|rapido\(17) ) + ( GND ) + ( \counter05|Add0~122\ ))
-- \counter05|Add0~6\ = CARRY(( \counter05|rapido\(17) ) + ( GND ) + ( \counter05|Add0~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \counter05|ALT_INV_rapido\(17),
	cin => \counter05|Add0~122\,
	sumout => \counter05|Add0~5_sumout\,
	cout => \counter05|Add0~6\);

-- Location: FF_X19_Y2_N52
\counter05|rapido[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \counter05|Add0~5_sumout\,
	sclr => \counter05|Equal0~5_combout\,
	ena => \counter05|rapido[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter05|rapido\(17));

-- Location: LABCELL_X19_Y2_N54
\counter05|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter05|Add0~49_sumout\ = SUM(( \counter05|rapido\(18) ) + ( GND ) + ( \counter05|Add0~6\ ))
-- \counter05|Add0~50\ = CARRY(( \counter05|rapido\(18) ) + ( GND ) + ( \counter05|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \counter05|ALT_INV_rapido\(18),
	cin => \counter05|Add0~6\,
	sumout => \counter05|Add0~49_sumout\,
	cout => \counter05|Add0~50\);

-- Location: FF_X19_Y2_N56
\counter05|rapido[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \counter05|Add0~49_sumout\,
	sclr => \counter05|Equal0~5_combout\,
	ena => \counter05|rapido[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter05|rapido\(18));

-- Location: LABCELL_X19_Y2_N57
\counter05|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter05|Add0~45_sumout\ = SUM(( \counter05|rapido\(19) ) + ( GND ) + ( \counter05|Add0~50\ ))
-- \counter05|Add0~46\ = CARRY(( \counter05|rapido\(19) ) + ( GND ) + ( \counter05|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \counter05|ALT_INV_rapido\(19),
	cin => \counter05|Add0~50\,
	sumout => \counter05|Add0~45_sumout\,
	cout => \counter05|Add0~46\);

-- Location: FF_X19_Y2_N59
\counter05|rapido[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \counter05|Add0~45_sumout\,
	sclr => \counter05|Equal0~5_combout\,
	ena => \counter05|rapido[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter05|rapido\(19));

-- Location: LABCELL_X19_Y1_N0
\counter05|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter05|Add0~41_sumout\ = SUM(( \counter05|rapido\(20) ) + ( GND ) + ( \counter05|Add0~46\ ))
-- \counter05|Add0~42\ = CARRY(( \counter05|rapido\(20) ) + ( GND ) + ( \counter05|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \counter05|ALT_INV_rapido\(20),
	cin => \counter05|Add0~46\,
	sumout => \counter05|Add0~41_sumout\,
	cout => \counter05|Add0~42\);

-- Location: FF_X19_Y1_N2
\counter05|rapido[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \counter05|Add0~41_sumout\,
	sclr => \counter05|Equal0~5_combout\,
	ena => \counter05|rapido[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter05|rapido\(20));

-- Location: LABCELL_X19_Y1_N3
\counter05|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter05|Add0~37_sumout\ = SUM(( \counter05|rapido\(21) ) + ( GND ) + ( \counter05|Add0~42\ ))
-- \counter05|Add0~38\ = CARRY(( \counter05|rapido\(21) ) + ( GND ) + ( \counter05|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \counter05|ALT_INV_rapido\(21),
	cin => \counter05|Add0~42\,
	sumout => \counter05|Add0~37_sumout\,
	cout => \counter05|Add0~38\);

-- Location: FF_X19_Y1_N5
\counter05|rapido[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \counter05|Add0~37_sumout\,
	sclr => \counter05|Equal0~5_combout\,
	ena => \counter05|rapido[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter05|rapido\(21));

-- Location: LABCELL_X19_Y1_N6
\counter05|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter05|Add0~33_sumout\ = SUM(( \counter05|rapido\(22) ) + ( GND ) + ( \counter05|Add0~38\ ))
-- \counter05|Add0~34\ = CARRY(( \counter05|rapido\(22) ) + ( GND ) + ( \counter05|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \counter05|ALT_INV_rapido\(22),
	cin => \counter05|Add0~38\,
	sumout => \counter05|Add0~33_sumout\,
	cout => \counter05|Add0~34\);

-- Location: FF_X19_Y1_N7
\counter05|rapido[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \counter05|Add0~33_sumout\,
	sclr => \counter05|Equal0~5_combout\,
	ena => \counter05|rapido[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter05|rapido\(22));

-- Location: LABCELL_X19_Y1_N9
\counter05|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter05|Add0~29_sumout\ = SUM(( \counter05|rapido\(23) ) + ( GND ) + ( \counter05|Add0~34\ ))
-- \counter05|Add0~30\ = CARRY(( \counter05|rapido\(23) ) + ( GND ) + ( \counter05|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \counter05|ALT_INV_rapido\(23),
	cin => \counter05|Add0~34\,
	sumout => \counter05|Add0~29_sumout\,
	cout => \counter05|Add0~30\);

-- Location: FF_X19_Y1_N11
\counter05|rapido[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \counter05|Add0~29_sumout\,
	sclr => \counter05|Equal0~5_combout\,
	ena => \counter05|rapido[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter05|rapido\(23));

-- Location: LABCELL_X19_Y1_N54
\counter05|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter05|Equal0~1_combout\ = ( \counter05|rapido\(22) & ( \counter05|rapido\(19) & ( (\counter05|rapido\(21) & (!\counter05|rapido\(23) & (\counter05|rapido\(20) & \counter05|rapido\(18)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \counter05|ALT_INV_rapido\(21),
	datab => \counter05|ALT_INV_rapido\(23),
	datac => \counter05|ALT_INV_rapido\(20),
	datad => \counter05|ALT_INV_rapido\(18),
	datae => \counter05|ALT_INV_rapido\(22),
	dataf => \counter05|ALT_INV_rapido\(19),
	combout => \counter05|Equal0~1_combout\);

-- Location: FF_X19_Y2_N22
\counter05|rapido[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \counter05|Add0~93_sumout\,
	sclr => \counter05|Equal0~5_combout\,
	ena => \counter05|rapido[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter05|rapido\(7));

-- Location: LABCELL_X19_Y1_N12
\counter05|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter05|Add0~73_sumout\ = SUM(( \counter05|rapido\(24) ) + ( GND ) + ( \counter05|Add0~30\ ))
-- \counter05|Add0~74\ = CARRY(( \counter05|rapido\(24) ) + ( GND ) + ( \counter05|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \counter05|ALT_INV_rapido\(24),
	cin => \counter05|Add0~30\,
	sumout => \counter05|Add0~73_sumout\,
	cout => \counter05|Add0~74\);

-- Location: FF_X19_Y1_N14
\counter05|rapido[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \counter05|Add0~73_sumout\,
	sclr => \counter05|Equal0~5_combout\,
	ena => \counter05|rapido[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter05|rapido\(24));

-- Location: LABCELL_X19_Y1_N15
\counter05|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter05|Add0~69_sumout\ = SUM(( \counter05|rapido[25]~DUPLICATE_q\ ) + ( GND ) + ( \counter05|Add0~74\ ))
-- \counter05|Add0~70\ = CARRY(( \counter05|rapido[25]~DUPLICATE_q\ ) + ( GND ) + ( \counter05|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \counter05|ALT_INV_rapido[25]~DUPLICATE_q\,
	cin => \counter05|Add0~74\,
	sumout => \counter05|Add0~69_sumout\,
	cout => \counter05|Add0~70\);

-- Location: FF_X19_Y1_N17
\counter05|rapido[25]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \counter05|Add0~69_sumout\,
	sclr => \counter05|Equal0~5_combout\,
	ena => \counter05|rapido[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter05|rapido[25]~DUPLICATE_q\);

-- Location: LABCELL_X19_Y1_N18
\counter05|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter05|Add0~65_sumout\ = SUM(( \counter05|rapido\(26) ) + ( GND ) + ( \counter05|Add0~70\ ))
-- \counter05|Add0~66\ = CARRY(( \counter05|rapido\(26) ) + ( GND ) + ( \counter05|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \counter05|ALT_INV_rapido\(26),
	cin => \counter05|Add0~70\,
	sumout => \counter05|Add0~65_sumout\,
	cout => \counter05|Add0~66\);

-- Location: FF_X19_Y1_N20
\counter05|rapido[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \counter05|Add0~65_sumout\,
	sclr => \counter05|Equal0~5_combout\,
	ena => \counter05|rapido[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter05|rapido\(26));

-- Location: LABCELL_X19_Y1_N21
\counter05|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter05|Add0~61_sumout\ = SUM(( \counter05|rapido\(27) ) + ( GND ) + ( \counter05|Add0~66\ ))
-- \counter05|Add0~62\ = CARRY(( \counter05|rapido\(27) ) + ( GND ) + ( \counter05|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \counter05|ALT_INV_rapido\(27),
	cin => \counter05|Add0~66\,
	sumout => \counter05|Add0~61_sumout\,
	cout => \counter05|Add0~62\);

-- Location: FF_X19_Y1_N23
\counter05|rapido[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \counter05|Add0~61_sumout\,
	sclr => \counter05|Equal0~5_combout\,
	ena => \counter05|rapido[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter05|rapido\(27));

-- Location: LABCELL_X19_Y1_N24
\counter05|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter05|Add0~57_sumout\ = SUM(( \counter05|rapido\(28) ) + ( GND ) + ( \counter05|Add0~62\ ))
-- \counter05|Add0~58\ = CARRY(( \counter05|rapido\(28) ) + ( GND ) + ( \counter05|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \counter05|ALT_INV_rapido\(28),
	cin => \counter05|Add0~62\,
	sumout => \counter05|Add0~57_sumout\,
	cout => \counter05|Add0~58\);

-- Location: FF_X19_Y1_N26
\counter05|rapido[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \counter05|Add0~57_sumout\,
	sclr => \counter05|Equal0~5_combout\,
	ena => \counter05|rapido[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter05|rapido\(28));

-- Location: LABCELL_X19_Y1_N27
\counter05|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter05|Add0~53_sumout\ = SUM(( \counter05|rapido\(29) ) + ( GND ) + ( \counter05|Add0~58\ ))
-- \counter05|Add0~54\ = CARRY(( \counter05|rapido\(29) ) + ( GND ) + ( \counter05|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \counter05|ALT_INV_rapido\(29),
	cin => \counter05|Add0~58\,
	sumout => \counter05|Add0~53_sumout\,
	cout => \counter05|Add0~54\);

-- Location: FF_X19_Y1_N28
\counter05|rapido[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \counter05|Add0~53_sumout\,
	sclr => \counter05|Equal0~5_combout\,
	ena => \counter05|rapido[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter05|rapido\(29));

-- Location: LABCELL_X19_Y1_N30
\counter05|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter05|Add0~77_sumout\ = SUM(( \counter05|rapido\(30) ) + ( GND ) + ( \counter05|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \counter05|ALT_INV_rapido\(30),
	cin => \counter05|Add0~54\,
	sumout => \counter05|Add0~77_sumout\);

-- Location: FF_X19_Y1_N32
\counter05|rapido[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \counter05|Add0~77_sumout\,
	sclr => \counter05|Equal0~5_combout\,
	ena => \counter05|rapido[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter05|rapido\(30));

-- Location: LABCELL_X19_Y1_N48
\counter05|Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter05|Equal0~3_combout\ = ( !\counter05|rapido\(9) & ( !\counter05|rapido\(6) & ( (!\counter05|rapido\(7) & (!\counter05|rapido\(30) & (!\counter05|rapido\(10) & !\counter05|rapido\(8)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \counter05|ALT_INV_rapido\(7),
	datab => \counter05|ALT_INV_rapido\(30),
	datac => \counter05|ALT_INV_rapido\(10),
	datad => \counter05|ALT_INV_rapido\(8),
	datae => \counter05|ALT_INV_rapido\(9),
	dataf => \counter05|ALT_INV_rapido\(6),
	combout => \counter05|Equal0~3_combout\);

-- Location: FF_X19_Y1_N25
\counter05|rapido[28]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \counter05|Add0~57_sumout\,
	sclr => \counter05|Equal0~5_combout\,
	ena => \counter05|rapido[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter05|rapido[28]~DUPLICATE_q\);

-- Location: FF_X19_Y1_N22
\counter05|rapido[27]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \counter05|Add0~61_sumout\,
	sclr => \counter05|Equal0~5_combout\,
	ena => \counter05|rapido[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter05|rapido[27]~DUPLICATE_q\);

-- Location: FF_X19_Y1_N19
\counter05|rapido[26]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \counter05|Add0~65_sumout\,
	sclr => \counter05|Equal0~5_combout\,
	ena => \counter05|rapido[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter05|rapido[26]~DUPLICATE_q\);

-- Location: FF_X19_Y1_N13
\counter05|rapido[24]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \counter05|Add0~73_sumout\,
	sclr => \counter05|Equal0~5_combout\,
	ena => \counter05|rapido[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter05|rapido[24]~DUPLICATE_q\);

-- Location: FF_X19_Y1_N16
\counter05|rapido[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \counter05|Add0~69_sumout\,
	sclr => \counter05|Equal0~5_combout\,
	ena => \counter05|rapido[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter05|rapido\(25));

-- Location: LABCELL_X20_Y1_N12
\counter05|Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter05|Equal0~2_combout\ = ( \counter05|rapido[24]~DUPLICATE_q\ & ( !\counter05|rapido\(25) & ( (!\counter05|rapido\(29) & (!\counter05|rapido[28]~DUPLICATE_q\ & (!\counter05|rapido[27]~DUPLICATE_q\ & !\counter05|rapido[26]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \counter05|ALT_INV_rapido\(29),
	datab => \counter05|ALT_INV_rapido[28]~DUPLICATE_q\,
	datac => \counter05|ALT_INV_rapido[27]~DUPLICATE_q\,
	datad => \counter05|ALT_INV_rapido[26]~DUPLICATE_q\,
	datae => \counter05|ALT_INV_rapido[24]~DUPLICATE_q\,
	dataf => \counter05|ALT_INV_rapido\(25),
	combout => \counter05|Equal0~2_combout\);

-- Location: FF_X19_Y2_N46
\counter05|rapido[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \counter05|Add0~13_sumout\,
	sclr => \counter05|Equal0~5_combout\,
	ena => \counter05|rapido[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter05|rapido\(15));

-- Location: FF_X19_Y2_N37
\counter05|rapido[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \counter05|Add0~25_sumout\,
	sclr => \counter05|Equal0~5_combout\,
	ena => \counter05|rapido[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter05|rapido\(12));

-- Location: FF_X19_Y2_N4
\counter05|rapido[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \counter05|Add0~9_sumout\,
	sclr => \counter05|Equal0~5_combout\,
	ena => \counter05|rapido[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter05|rapido\(1));

-- Location: LABCELL_X20_Y2_N0
\counter05|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter05|Equal0~0_combout\ = ( \counter05|rapido\(13) & ( !\counter05|rapido\(17) & ( (!\counter05|rapido\(15) & (\counter05|rapido\(14) & (\counter05|rapido\(12) & \counter05|rapido\(1)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000001000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \counter05|ALT_INV_rapido\(15),
	datab => \counter05|ALT_INV_rapido\(14),
	datac => \counter05|ALT_INV_rapido\(12),
	datad => \counter05|ALT_INV_rapido\(1),
	datae => \counter05|ALT_INV_rapido\(13),
	dataf => \counter05|ALT_INV_rapido\(17),
	combout => \counter05|Equal0~0_combout\);

-- Location: FF_X19_Y2_N13
\counter05|rapido[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \counter05|Add0~105_sumout\,
	sclr => \counter05|Equal0~5_combout\,
	ena => \counter05|rapido[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter05|rapido\(4));

-- Location: FF_X19_Y2_N10
\counter05|rapido[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \counter05|Add0~109_sumout\,
	sclr => \counter05|Equal0~5_combout\,
	ena => \counter05|rapido[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter05|rapido\(3));

-- Location: FF_X19_Y2_N1
\counter05|rapido[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \counter05|Add0~117_sumout\,
	sclr => \counter05|Equal0~5_combout\,
	ena => \counter05|rapido[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter05|rapido\(0));

-- Location: FF_X19_Y2_N49
\counter05|rapido[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \counter05|Add0~121_sumout\,
	sclr => \counter05|Equal0~5_combout\,
	ena => \counter05|rapido[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter05|rapido\(16));

-- Location: FF_X19_Y2_N16
\counter05|rapido[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \counter05|Add0~101_sumout\,
	sclr => \counter05|Equal0~5_combout\,
	ena => \counter05|rapido[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter05|rapido\(5));

-- Location: LABCELL_X20_Y2_N57
\counter05|Equal0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter05|Equal0~4_combout\ = ( \counter05|rapido\(16) & ( \counter05|rapido\(5) & ( (\counter05|rapido\(4) & (\counter05|rapido\(3) & (\counter05|rapido\(0) & \counter05|rapido\(2)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \counter05|ALT_INV_rapido\(4),
	datab => \counter05|ALT_INV_rapido\(3),
	datac => \counter05|ALT_INV_rapido\(0),
	datad => \counter05|ALT_INV_rapido\(2),
	datae => \counter05|ALT_INV_rapido\(16),
	dataf => \counter05|ALT_INV_rapido\(5),
	combout => \counter05|Equal0~4_combout\);

-- Location: LABCELL_X19_Y1_N42
\counter05|Equal0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter05|Equal0~5_combout\ = ( \counter05|Equal0~0_combout\ & ( \counter05|Equal0~4_combout\ & ( (\counter05|Equal0~1_combout\ & (\counter05|rapido\(11) & (\counter05|Equal0~3_combout\ & \counter05|Equal0~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \counter05|ALT_INV_Equal0~1_combout\,
	datab => \counter05|ALT_INV_rapido\(11),
	datac => \counter05|ALT_INV_Equal0~3_combout\,
	datad => \counter05|ALT_INV_Equal0~2_combout\,
	datae => \counter05|ALT_INV_Equal0~0_combout\,
	dataf => \counter05|ALT_INV_Equal0~4_combout\,
	combout => \counter05|Equal0~5_combout\);

-- Location: LABCELL_X19_Y1_N39
\counter05|rollover~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter05|rollover~0_combout\ = ( \counter05|Equal0~5_combout\ & ( \enable_counter05~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_enable_counter05~q\,
	dataf => \counter05|ALT_INV_Equal0~5_combout\,
	combout => \counter05|rollover~0_combout\);

-- Location: FF_X19_Y1_N41
\counter05|lento[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \counter05|lento[0]~0_combout\,
	clrn => \reset_counter05~q\,
	sload => VCC,
	ena => \counter05|rollover~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter05|lento\(0));

-- Location: FF_X19_Y1_N38
\counter05|rollover\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \counter05|lento\(0),
	clrn => \reset_counter05~q\,
	sload => VCC,
	ena => \counter05|rollover~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter05|rollover~q\);

-- Location: LABCELL_X16_Y2_N27
\counter_low|lento[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_low|lento[0]~0_combout\ = !\counter_low|lento\(0)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \counter_low|ALT_INV_lento\(0),
	combout => \counter_low|lento[0]~0_combout\);

-- Location: LABCELL_X17_Y2_N57
\Selector5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = ( \reset_counter_low~q\ & ( \state.COUNT_05~q\ ) ) # ( !\reset_counter_low~q\ & ( \state.COUNT_05~q\ & ( (!\counter_low|rollover~q\ & \state.COUNT_LOW~q\) ) ) ) # ( \reset_counter_low~q\ & ( !\state.COUNT_05~q\ & ( 
-- ((!\counter_low|rollover~q\ & \state.COUNT_LOW~q\)) # (\state.COUNT_15~q\) ) ) ) # ( !\reset_counter_low~q\ & ( !\state.COUNT_05~q\ & ( (!\counter_low|rollover~q\ & \state.COUNT_LOW~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000011111010111100000000101010101111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \counter_low|ALT_INV_rollover~q\,
	datac => \ALT_INV_state.COUNT_15~q\,
	datad => \ALT_INV_state.COUNT_LOW~q\,
	datae => \ALT_INV_reset_counter_low~q\,
	dataf => \ALT_INV_state.COUNT_05~q\,
	combout => \Selector5~0_combout\);

-- Location: FF_X17_Y2_N59
reset_counter_low : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector5~0_combout\,
	clrn => \reset~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reset_counter_low~q\);

-- Location: LABCELL_X17_Y2_N18
\Selector2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = ( \enable_counter_low~q\ & ( \state.COUNT_05~q\ ) ) # ( !\enable_counter_low~q\ & ( \state.COUNT_05~q\ & ( (\state.COUNT_LOW~q\ & !\counter_low|rollover~q\) ) ) ) # ( \enable_counter_low~q\ & ( !\state.COUNT_05~q\ & ( 
-- ((\state.COUNT_LOW~q\ & !\counter_low|rollover~q\)) # (\state.COUNT_15~q\) ) ) ) # ( !\enable_counter_low~q\ & ( !\state.COUNT_05~q\ & ( (\state.COUNT_LOW~q\ & !\counter_low|rollover~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000011100110111001101010000010100001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.COUNT_LOW~q\,
	datab => \ALT_INV_state.COUNT_15~q\,
	datac => \counter_low|ALT_INV_rollover~q\,
	datae => \ALT_INV_enable_counter_low~q\,
	dataf => \ALT_INV_state.COUNT_05~q\,
	combout => \Selector2~0_combout\);

-- Location: FF_X17_Y2_N20
enable_counter_low : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector2~0_combout\,
	clrn => \reset~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \enable_counter_low~q\);

-- Location: LABCELL_X16_Y2_N33
\counter_low|rapido[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_low|rapido[0]~0_combout\ = ( \reset_counter_low~q\ & ( \enable_counter_low~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_reset_counter_low~q\,
	dataf => \ALT_INV_enable_counter_low~q\,
	combout => \counter_low|rapido[0]~0_combout\);

-- Location: FF_X13_Y2_N41
\counter_low|rapido[13]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \counter_low|Add0~1_sumout\,
	sclr => \counter_low|Equal0~5_combout\,
	ena => \counter_low|rapido[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_low|rapido[13]~DUPLICATE_q\);

-- Location: MLABCELL_X13_Y2_N0
\counter_low|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_low|Add0~77_sumout\ = SUM(( \counter_low|rapido[0]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))
-- \counter_low|Add0~78\ = CARRY(( \counter_low|rapido[0]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \counter_low|ALT_INV_rapido[0]~DUPLICATE_q\,
	cin => GND,
	sumout => \counter_low|Add0~77_sumout\,
	cout => \counter_low|Add0~78\);

-- Location: FF_X13_Y2_N2
\counter_low|rapido[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \counter_low|Add0~77_sumout\,
	sclr => \counter_low|Equal0~5_combout\,
	ena => \counter_low|rapido[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_low|rapido[0]~DUPLICATE_q\);

-- Location: MLABCELL_X13_Y2_N3
\counter_low|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_low|Add0~53_sumout\ = SUM(( \counter_low|rapido\(1) ) + ( GND ) + ( \counter_low|Add0~78\ ))
-- \counter_low|Add0~54\ = CARRY(( \counter_low|rapido\(1) ) + ( GND ) + ( \counter_low|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \counter_low|ALT_INV_rapido\(1),
	cin => \counter_low|Add0~78\,
	sumout => \counter_low|Add0~53_sumout\,
	cout => \counter_low|Add0~54\);

-- Location: FF_X13_Y2_N5
\counter_low|rapido[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \counter_low|Add0~53_sumout\,
	sclr => \counter_low|Equal0~5_combout\,
	ena => \counter_low|rapido[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_low|rapido\(1));

-- Location: MLABCELL_X13_Y2_N6
\counter_low|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_low|Add0~5_sumout\ = SUM(( \counter_low|rapido\(2) ) + ( GND ) + ( \counter_low|Add0~54\ ))
-- \counter_low|Add0~6\ = CARRY(( \counter_low|rapido\(2) ) + ( GND ) + ( \counter_low|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \counter_low|ALT_INV_rapido\(2),
	cin => \counter_low|Add0~54\,
	sumout => \counter_low|Add0~5_sumout\,
	cout => \counter_low|Add0~6\);

-- Location: FF_X13_Y2_N7
\counter_low|rapido[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \counter_low|Add0~5_sumout\,
	sclr => \counter_low|Equal0~5_combout\,
	ena => \counter_low|rapido[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_low|rapido\(2));

-- Location: MLABCELL_X13_Y2_N9
\counter_low|Add0~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_low|Add0~121_sumout\ = SUM(( \counter_low|rapido[3]~DUPLICATE_q\ ) + ( GND ) + ( \counter_low|Add0~6\ ))
-- \counter_low|Add0~122\ = CARRY(( \counter_low|rapido[3]~DUPLICATE_q\ ) + ( GND ) + ( \counter_low|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \counter_low|ALT_INV_rapido[3]~DUPLICATE_q\,
	cin => \counter_low|Add0~6\,
	sumout => \counter_low|Add0~121_sumout\,
	cout => \counter_low|Add0~122\);

-- Location: FF_X13_Y2_N11
\counter_low|rapido[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \counter_low|Add0~121_sumout\,
	sclr => \counter_low|Equal0~5_combout\,
	ena => \counter_low|rapido[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_low|rapido[3]~DUPLICATE_q\);

-- Location: MLABCELL_X13_Y2_N12
\counter_low|Add0~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_low|Add0~117_sumout\ = SUM(( \counter_low|rapido[4]~DUPLICATE_q\ ) + ( GND ) + ( \counter_low|Add0~122\ ))
-- \counter_low|Add0~118\ = CARRY(( \counter_low|rapido[4]~DUPLICATE_q\ ) + ( GND ) + ( \counter_low|Add0~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \counter_low|ALT_INV_rapido[4]~DUPLICATE_q\,
	cin => \counter_low|Add0~122\,
	sumout => \counter_low|Add0~117_sumout\,
	cout => \counter_low|Add0~118\);

-- Location: FF_X13_Y2_N14
\counter_low|rapido[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \counter_low|Add0~117_sumout\,
	sclr => \counter_low|Equal0~5_combout\,
	ena => \counter_low|rapido[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_low|rapido[4]~DUPLICATE_q\);

-- Location: MLABCELL_X13_Y2_N15
\counter_low|Add0~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_low|Add0~113_sumout\ = SUM(( \counter_low|rapido[5]~DUPLICATE_q\ ) + ( GND ) + ( \counter_low|Add0~118\ ))
-- \counter_low|Add0~114\ = CARRY(( \counter_low|rapido[5]~DUPLICATE_q\ ) + ( GND ) + ( \counter_low|Add0~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \counter_low|ALT_INV_rapido[5]~DUPLICATE_q\,
	cin => \counter_low|Add0~118\,
	sumout => \counter_low|Add0~113_sumout\,
	cout => \counter_low|Add0~114\);

-- Location: FF_X13_Y2_N17
\counter_low|rapido[5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \counter_low|Add0~113_sumout\,
	sclr => \counter_low|Equal0~5_combout\,
	ena => \counter_low|rapido[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_low|rapido[5]~DUPLICATE_q\);

-- Location: MLABCELL_X13_Y2_N18
\counter_low|Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_low|Add0~109_sumout\ = SUM(( \counter_low|rapido[6]~DUPLICATE_q\ ) + ( GND ) + ( \counter_low|Add0~114\ ))
-- \counter_low|Add0~110\ = CARRY(( \counter_low|rapido[6]~DUPLICATE_q\ ) + ( GND ) + ( \counter_low|Add0~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \counter_low|ALT_INV_rapido[6]~DUPLICATE_q\,
	cin => \counter_low|Add0~114\,
	sumout => \counter_low|Add0~109_sumout\,
	cout => \counter_low|Add0~110\);

-- Location: FF_X13_Y2_N20
\counter_low|rapido[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \counter_low|Add0~109_sumout\,
	sclr => \counter_low|Equal0~5_combout\,
	ena => \counter_low|rapido[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_low|rapido[6]~DUPLICATE_q\);

-- Location: MLABCELL_X13_Y2_N21
\counter_low|Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_low|Add0~105_sumout\ = SUM(( \counter_low|rapido[7]~DUPLICATE_q\ ) + ( GND ) + ( \counter_low|Add0~110\ ))
-- \counter_low|Add0~106\ = CARRY(( \counter_low|rapido[7]~DUPLICATE_q\ ) + ( GND ) + ( \counter_low|Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \counter_low|ALT_INV_rapido[7]~DUPLICATE_q\,
	cin => \counter_low|Add0~110\,
	sumout => \counter_low|Add0~105_sumout\,
	cout => \counter_low|Add0~106\);

-- Location: FF_X13_Y2_N23
\counter_low|rapido[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \counter_low|Add0~105_sumout\,
	sclr => \counter_low|Equal0~5_combout\,
	ena => \counter_low|rapido[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_low|rapido[7]~DUPLICATE_q\);

-- Location: MLABCELL_X13_Y2_N24
\counter_low|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_low|Add0~97_sumout\ = SUM(( \counter_low|rapido[8]~DUPLICATE_q\ ) + ( GND ) + ( \counter_low|Add0~106\ ))
-- \counter_low|Add0~98\ = CARRY(( \counter_low|rapido[8]~DUPLICATE_q\ ) + ( GND ) + ( \counter_low|Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \counter_low|ALT_INV_rapido[8]~DUPLICATE_q\,
	cin => \counter_low|Add0~106\,
	sumout => \counter_low|Add0~97_sumout\,
	cout => \counter_low|Add0~98\);

-- Location: FF_X13_Y2_N26
\counter_low|rapido[8]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \counter_low|Add0~97_sumout\,
	sclr => \counter_low|Equal0~5_combout\,
	ena => \counter_low|rapido[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_low|rapido[8]~DUPLICATE_q\);

-- Location: MLABCELL_X13_Y2_N27
\counter_low|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_low|Add0~93_sumout\ = SUM(( \counter_low|rapido[9]~DUPLICATE_q\ ) + ( GND ) + ( \counter_low|Add0~98\ ))
-- \counter_low|Add0~94\ = CARRY(( \counter_low|rapido[9]~DUPLICATE_q\ ) + ( GND ) + ( \counter_low|Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \counter_low|ALT_INV_rapido[9]~DUPLICATE_q\,
	cin => \counter_low|Add0~98\,
	sumout => \counter_low|Add0~93_sumout\,
	cout => \counter_low|Add0~94\);

-- Location: FF_X13_Y2_N29
\counter_low|rapido[9]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \counter_low|Add0~93_sumout\,
	sclr => \counter_low|Equal0~5_combout\,
	ena => \counter_low|rapido[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_low|rapido[9]~DUPLICATE_q\);

-- Location: MLABCELL_X13_Y2_N30
\counter_low|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_low|Add0~89_sumout\ = SUM(( \counter_low|rapido\(10) ) + ( GND ) + ( \counter_low|Add0~94\ ))
-- \counter_low|Add0~90\ = CARRY(( \counter_low|rapido\(10) ) + ( GND ) + ( \counter_low|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \counter_low|ALT_INV_rapido\(10),
	cin => \counter_low|Add0~94\,
	sumout => \counter_low|Add0~89_sumout\,
	cout => \counter_low|Add0~90\);

-- Location: FF_X13_Y2_N31
\counter_low|rapido[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \counter_low|Add0~89_sumout\,
	sclr => \counter_low|Equal0~5_combout\,
	ena => \counter_low|rapido[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_low|rapido\(10));

-- Location: MLABCELL_X13_Y2_N33
\counter_low|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_low|Add0~85_sumout\ = SUM(( \counter_low|rapido[11]~DUPLICATE_q\ ) + ( GND ) + ( \counter_low|Add0~90\ ))
-- \counter_low|Add0~86\ = CARRY(( \counter_low|rapido[11]~DUPLICATE_q\ ) + ( GND ) + ( \counter_low|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \counter_low|ALT_INV_rapido[11]~DUPLICATE_q\,
	cin => \counter_low|Add0~90\,
	sumout => \counter_low|Add0~85_sumout\,
	cout => \counter_low|Add0~86\);

-- Location: FF_X13_Y2_N35
\counter_low|rapido[11]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \counter_low|Add0~85_sumout\,
	sclr => \counter_low|Equal0~5_combout\,
	ena => \counter_low|rapido[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_low|rapido[11]~DUPLICATE_q\);

-- Location: MLABCELL_X13_Y2_N36
\counter_low|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_low|Add0~81_sumout\ = SUM(( \counter_low|rapido[12]~DUPLICATE_q\ ) + ( GND ) + ( \counter_low|Add0~86\ ))
-- \counter_low|Add0~82\ = CARRY(( \counter_low|rapido[12]~DUPLICATE_q\ ) + ( GND ) + ( \counter_low|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \counter_low|ALT_INV_rapido[12]~DUPLICATE_q\,
	cin => \counter_low|Add0~86\,
	sumout => \counter_low|Add0~81_sumout\,
	cout => \counter_low|Add0~82\);

-- Location: FF_X13_Y2_N38
\counter_low|rapido[12]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \counter_low|Add0~81_sumout\,
	sclr => \counter_low|Equal0~5_combout\,
	ena => \counter_low|rapido[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_low|rapido[12]~DUPLICATE_q\);

-- Location: MLABCELL_X13_Y2_N39
\counter_low|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_low|Add0~1_sumout\ = SUM(( \counter_low|rapido[13]~DUPLICATE_q\ ) + ( GND ) + ( \counter_low|Add0~82\ ))
-- \counter_low|Add0~2\ = CARRY(( \counter_low|rapido[13]~DUPLICATE_q\ ) + ( GND ) + ( \counter_low|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \counter_low|ALT_INV_rapido[13]~DUPLICATE_q\,
	cin => \counter_low|Add0~82\,
	sumout => \counter_low|Add0~1_sumout\,
	cout => \counter_low|Add0~2\);

-- Location: FF_X13_Y2_N40
\counter_low|rapido[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \counter_low|Add0~1_sumout\,
	sclr => \counter_low|Equal0~5_combout\,
	ena => \counter_low|rapido[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_low|rapido\(13));

-- Location: FF_X13_Y2_N47
\counter_low|rapido[15]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \counter_low|Add0~21_sumout\,
	sclr => \counter_low|Equal0~5_combout\,
	ena => \counter_low|rapido[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_low|rapido[15]~DUPLICATE_q\);

-- Location: MLABCELL_X13_Y2_N42
\counter_low|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_low|Add0~25_sumout\ = SUM(( \counter_low|rapido\(14) ) + ( GND ) + ( \counter_low|Add0~2\ ))
-- \counter_low|Add0~26\ = CARRY(( \counter_low|rapido\(14) ) + ( GND ) + ( \counter_low|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \counter_low|ALT_INV_rapido\(14),
	cin => \counter_low|Add0~2\,
	sumout => \counter_low|Add0~25_sumout\,
	cout => \counter_low|Add0~26\);

-- Location: FF_X14_Y2_N2
\counter_low|rapido[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \counter_low|Add0~25_sumout\,
	sclr => \counter_low|Equal0~5_combout\,
	sload => VCC,
	ena => \counter_low|rapido[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_low|rapido\(14));

-- Location: MLABCELL_X13_Y2_N45
\counter_low|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_low|Add0~21_sumout\ = SUM(( \counter_low|rapido[15]~DUPLICATE_q\ ) + ( GND ) + ( \counter_low|Add0~26\ ))
-- \counter_low|Add0~22\ = CARRY(( \counter_low|rapido[15]~DUPLICATE_q\ ) + ( GND ) + ( \counter_low|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \counter_low|ALT_INV_rapido[15]~DUPLICATE_q\,
	cin => \counter_low|Add0~26\,
	sumout => \counter_low|Add0~21_sumout\,
	cout => \counter_low|Add0~22\);

-- Location: FF_X13_Y2_N46
\counter_low|rapido[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \counter_low|Add0~21_sumout\,
	sclr => \counter_low|Equal0~5_combout\,
	ena => \counter_low|rapido[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_low|rapido\(15));

-- Location: MLABCELL_X13_Y2_N48
\counter_low|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_low|Add0~17_sumout\ = SUM(( \counter_low|rapido[16]~DUPLICATE_q\ ) + ( GND ) + ( \counter_low|Add0~22\ ))
-- \counter_low|Add0~18\ = CARRY(( \counter_low|rapido[16]~DUPLICATE_q\ ) + ( GND ) + ( \counter_low|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \counter_low|ALT_INV_rapido[16]~DUPLICATE_q\,
	cin => \counter_low|Add0~22\,
	sumout => \counter_low|Add0~17_sumout\,
	cout => \counter_low|Add0~18\);

-- Location: FF_X13_Y2_N50
\counter_low|rapido[16]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \counter_low|Add0~17_sumout\,
	sclr => \counter_low|Equal0~5_combout\,
	ena => \counter_low|rapido[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_low|rapido[16]~DUPLICATE_q\);

-- Location: MLABCELL_X13_Y2_N51
\counter_low|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_low|Add0~13_sumout\ = SUM(( \counter_low|rapido\(17) ) + ( GND ) + ( \counter_low|Add0~18\ ))
-- \counter_low|Add0~14\ = CARRY(( \counter_low|rapido\(17) ) + ( GND ) + ( \counter_low|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \counter_low|ALT_INV_rapido\(17),
	cin => \counter_low|Add0~18\,
	sumout => \counter_low|Add0~13_sumout\,
	cout => \counter_low|Add0~14\);

-- Location: FF_X13_Y2_N52
\counter_low|rapido[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \counter_low|Add0~13_sumout\,
	sclr => \counter_low|Equal0~5_combout\,
	ena => \counter_low|rapido[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_low|rapido\(17));

-- Location: FF_X13_Y2_N49
\counter_low|rapido[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \counter_low|Add0~17_sumout\,
	sclr => \counter_low|Equal0~5_combout\,
	ena => \counter_low|rapido[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_low|rapido\(16));

-- Location: FF_X13_Y2_N56
\counter_low|rapido[18]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \counter_low|Add0~9_sumout\,
	sclr => \counter_low|Equal0~5_combout\,
	ena => \counter_low|rapido[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_low|rapido[18]~DUPLICATE_q\);

-- Location: MLABCELL_X13_Y2_N54
\counter_low|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_low|Add0~9_sumout\ = SUM(( \counter_low|rapido[18]~DUPLICATE_q\ ) + ( GND ) + ( \counter_low|Add0~14\ ))
-- \counter_low|Add0~10\ = CARRY(( \counter_low|rapido[18]~DUPLICATE_q\ ) + ( GND ) + ( \counter_low|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \counter_low|ALT_INV_rapido[18]~DUPLICATE_q\,
	cin => \counter_low|Add0~14\,
	sumout => \counter_low|Add0~9_sumout\,
	cout => \counter_low|Add0~10\);

-- Location: FF_X13_Y2_N55
\counter_low|rapido[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \counter_low|Add0~9_sumout\,
	sclr => \counter_low|Equal0~5_combout\,
	ena => \counter_low|rapido[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_low|rapido\(18));

-- Location: LABCELL_X14_Y2_N42
\counter_low|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_low|Equal0~0_combout\ = ( \counter_low|rapido\(14) & ( \counter_low|rapido\(18) & ( (!\counter_low|rapido\(15) & (\counter_low|rapido\(2) & (!\counter_low|rapido\(17) & !\counter_low|rapido\(16)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \counter_low|ALT_INV_rapido\(15),
	datab => \counter_low|ALT_INV_rapido\(2),
	datac => \counter_low|ALT_INV_rapido\(17),
	datad => \counter_low|ALT_INV_rapido\(16),
	datae => \counter_low|ALT_INV_rapido\(14),
	dataf => \counter_low|ALT_INV_rapido\(18),
	combout => \counter_low|Equal0~0_combout\);

-- Location: FF_X13_Y2_N1
\counter_low|rapido[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \counter_low|Add0~77_sumout\,
	sclr => \counter_low|Equal0~5_combout\,
	ena => \counter_low|rapido[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_low|rapido\(0));

-- Location: FF_X13_Y2_N28
\counter_low|rapido[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \counter_low|Add0~93_sumout\,
	sclr => \counter_low|Equal0~5_combout\,
	ena => \counter_low|rapido[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_low|rapido\(9));

-- Location: FF_X13_Y2_N25
\counter_low|rapido[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \counter_low|Add0~97_sumout\,
	sclr => \counter_low|Equal0~5_combout\,
	ena => \counter_low|rapido[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_low|rapido\(8));

-- Location: FF_X13_Y2_N34
\counter_low|rapido[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \counter_low|Add0~85_sumout\,
	sclr => \counter_low|Equal0~5_combout\,
	ena => \counter_low|rapido[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_low|rapido\(11));

-- Location: FF_X13_Y2_N37
\counter_low|rapido[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \counter_low|Add0~81_sumout\,
	sclr => \counter_low|Equal0~5_combout\,
	ena => \counter_low|rapido[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_low|rapido\(12));

-- Location: LABCELL_X14_Y2_N24
\counter_low|Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_low|Equal0~3_combout\ = ( \counter_low|rapido\(11) & ( !\counter_low|rapido\(12) & ( (!\counter_low|rapido\(10) & (\counter_low|rapido\(0) & (\counter_low|rapido\(9) & \counter_low|rapido\(8)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000001000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \counter_low|ALT_INV_rapido\(10),
	datab => \counter_low|ALT_INV_rapido\(0),
	datac => \counter_low|ALT_INV_rapido\(9),
	datad => \counter_low|ALT_INV_rapido\(8),
	datae => \counter_low|ALT_INV_rapido\(11),
	dataf => \counter_low|ALT_INV_rapido\(12),
	combout => \counter_low|Equal0~3_combout\);

-- Location: FF_X13_Y2_N13
\counter_low|rapido[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \counter_low|Add0~117_sumout\,
	sclr => \counter_low|Equal0~5_combout\,
	ena => \counter_low|rapido[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_low|rapido\(4));

-- Location: FF_X13_Y2_N16
\counter_low|rapido[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \counter_low|Add0~113_sumout\,
	sclr => \counter_low|Equal0~5_combout\,
	ena => \counter_low|rapido[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_low|rapido\(5));

-- Location: FF_X13_Y2_N22
\counter_low|rapido[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \counter_low|Add0~105_sumout\,
	sclr => \counter_low|Equal0~5_combout\,
	ena => \counter_low|rapido[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_low|rapido\(7));

-- Location: FF_X13_Y2_N10
\counter_low|rapido[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \counter_low|Add0~121_sumout\,
	sclr => \counter_low|Equal0~5_combout\,
	ena => \counter_low|rapido[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_low|rapido\(3));

-- Location: FF_X13_Y2_N59
\counter_low|rapido[19]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \counter_low|Add0~101_sumout\,
	sclr => \counter_low|Equal0~5_combout\,
	ena => \counter_low|rapido[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_low|rapido[19]~DUPLICATE_q\);

-- Location: MLABCELL_X13_Y2_N57
\counter_low|Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_low|Add0~101_sumout\ = SUM(( \counter_low|rapido[19]~DUPLICATE_q\ ) + ( GND ) + ( \counter_low|Add0~10\ ))
-- \counter_low|Add0~102\ = CARRY(( \counter_low|rapido[19]~DUPLICATE_q\ ) + ( GND ) + ( \counter_low|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \counter_low|ALT_INV_rapido[19]~DUPLICATE_q\,
	cin => \counter_low|Add0~10\,
	sumout => \counter_low|Add0~101_sumout\,
	cout => \counter_low|Add0~102\);

-- Location: FF_X13_Y2_N58
\counter_low|rapido[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \counter_low|Add0~101_sumout\,
	sclr => \counter_low|Equal0~5_combout\,
	ena => \counter_low|rapido[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_low|rapido\(19));

-- Location: FF_X13_Y2_N19
\counter_low|rapido[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \counter_low|Add0~109_sumout\,
	sclr => \counter_low|Equal0~5_combout\,
	ena => \counter_low|rapido[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_low|rapido\(6));

-- Location: LABCELL_X14_Y2_N6
\counter_low|Equal0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_low|Equal0~4_combout\ = ( \counter_low|rapido\(19) & ( !\counter_low|rapido\(6) & ( (\counter_low|rapido\(4) & (\counter_low|rapido\(5) & (!\counter_low|rapido\(7) & \counter_low|rapido\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \counter_low|ALT_INV_rapido\(4),
	datab => \counter_low|ALT_INV_rapido\(5),
	datac => \counter_low|ALT_INV_rapido\(7),
	datad => \counter_low|ALT_INV_rapido\(3),
	datae => \counter_low|ALT_INV_rapido\(19),
	dataf => \counter_low|ALT_INV_rapido\(6),
	combout => \counter_low|Equal0~4_combout\);

-- Location: MLABCELL_X13_Y1_N0
\counter_low|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_low|Add0~49_sumout\ = SUM(( \counter_low|rapido\(20) ) + ( GND ) + ( \counter_low|Add0~102\ ))
-- \counter_low|Add0~50\ = CARRY(( \counter_low|rapido\(20) ) + ( GND ) + ( \counter_low|Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \counter_low|ALT_INV_rapido\(20),
	cin => \counter_low|Add0~102\,
	sumout => \counter_low|Add0~49_sumout\,
	cout => \counter_low|Add0~50\);

-- Location: FF_X13_Y1_N2
\counter_low|rapido[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \counter_low|Add0~49_sumout\,
	sclr => \counter_low|Equal0~5_combout\,
	ena => \counter_low|rapido[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_low|rapido\(20));

-- Location: MLABCELL_X13_Y1_N3
\counter_low|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_low|Add0~45_sumout\ = SUM(( \counter_low|rapido\(21) ) + ( GND ) + ( \counter_low|Add0~50\ ))
-- \counter_low|Add0~46\ = CARRY(( \counter_low|rapido\(21) ) + ( GND ) + ( \counter_low|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \counter_low|ALT_INV_rapido\(21),
	cin => \counter_low|Add0~50\,
	sumout => \counter_low|Add0~45_sumout\,
	cout => \counter_low|Add0~46\);

-- Location: FF_X13_Y1_N5
\counter_low|rapido[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \counter_low|Add0~45_sumout\,
	sclr => \counter_low|Equal0~5_combout\,
	ena => \counter_low|rapido[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_low|rapido\(21));

-- Location: MLABCELL_X13_Y1_N6
\counter_low|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_low|Add0~41_sumout\ = SUM(( \counter_low|rapido\(22) ) + ( GND ) + ( \counter_low|Add0~46\ ))
-- \counter_low|Add0~42\ = CARRY(( \counter_low|rapido\(22) ) + ( GND ) + ( \counter_low|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \counter_low|ALT_INV_rapido\(22),
	cin => \counter_low|Add0~46\,
	sumout => \counter_low|Add0~41_sumout\,
	cout => \counter_low|Add0~42\);

-- Location: FF_X13_Y1_N8
\counter_low|rapido[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \counter_low|Add0~41_sumout\,
	sclr => \counter_low|Equal0~5_combout\,
	ena => \counter_low|rapido[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_low|rapido\(22));

-- Location: MLABCELL_X13_Y1_N9
\counter_low|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_low|Add0~37_sumout\ = SUM(( \counter_low|rapido[23]~DUPLICATE_q\ ) + ( GND ) + ( \counter_low|Add0~42\ ))
-- \counter_low|Add0~38\ = CARRY(( \counter_low|rapido[23]~DUPLICATE_q\ ) + ( GND ) + ( \counter_low|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \counter_low|ALT_INV_rapido[23]~DUPLICATE_q\,
	cin => \counter_low|Add0~42\,
	sumout => \counter_low|Add0~37_sumout\,
	cout => \counter_low|Add0~38\);

-- Location: FF_X13_Y1_N11
\counter_low|rapido[23]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \counter_low|Add0~37_sumout\,
	sclr => \counter_low|Equal0~5_combout\,
	ena => \counter_low|rapido[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_low|rapido[23]~DUPLICATE_q\);

-- Location: MLABCELL_X13_Y1_N12
\counter_low|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_low|Add0~33_sumout\ = SUM(( \counter_low|rapido\(24) ) + ( GND ) + ( \counter_low|Add0~38\ ))
-- \counter_low|Add0~34\ = CARRY(( \counter_low|rapido\(24) ) + ( GND ) + ( \counter_low|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \counter_low|ALT_INV_rapido\(24),
	cin => \counter_low|Add0~38\,
	sumout => \counter_low|Add0~33_sumout\,
	cout => \counter_low|Add0~34\);

-- Location: FF_X13_Y1_N14
\counter_low|rapido[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \counter_low|Add0~33_sumout\,
	sclr => \counter_low|Equal0~5_combout\,
	ena => \counter_low|rapido[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_low|rapido\(24));

-- Location: MLABCELL_X13_Y1_N15
\counter_low|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_low|Add0~29_sumout\ = SUM(( \counter_low|rapido\(25) ) + ( GND ) + ( \counter_low|Add0~34\ ))
-- \counter_low|Add0~30\ = CARRY(( \counter_low|rapido\(25) ) + ( GND ) + ( \counter_low|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \counter_low|ALT_INV_rapido\(25),
	cin => \counter_low|Add0~34\,
	sumout => \counter_low|Add0~29_sumout\,
	cout => \counter_low|Add0~30\);

-- Location: FF_X13_Y1_N17
\counter_low|rapido[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \counter_low|Add0~29_sumout\,
	sclr => \counter_low|Equal0~5_combout\,
	ena => \counter_low|rapido[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_low|rapido\(25));

-- Location: FF_X13_Y1_N10
\counter_low|rapido[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \counter_low|Add0~37_sumout\,
	sclr => \counter_low|Equal0~5_combout\,
	ena => \counter_low|rapido[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_low|rapido\(23));

-- Location: MLABCELL_X13_Y1_N48
\counter_low|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_low|Equal0~1_combout\ = ( !\counter_low|rapido\(23) & ( !\counter_low|rapido\(24) & ( (!\counter_low|rapido\(21) & (\counter_low|rapido\(22) & (!\counter_low|rapido\(20) & !\counter_low|rapido\(25)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \counter_low|ALT_INV_rapido\(21),
	datab => \counter_low|ALT_INV_rapido\(22),
	datac => \counter_low|ALT_INV_rapido\(20),
	datad => \counter_low|ALT_INV_rapido\(25),
	datae => \counter_low|ALT_INV_rapido\(23),
	dataf => \counter_low|ALT_INV_rapido\(24),
	combout => \counter_low|Equal0~1_combout\);

-- Location: MLABCELL_X13_Y1_N18
\counter_low|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_low|Add0~73_sumout\ = SUM(( \counter_low|rapido\(26) ) + ( GND ) + ( \counter_low|Add0~30\ ))
-- \counter_low|Add0~74\ = CARRY(( \counter_low|rapido\(26) ) + ( GND ) + ( \counter_low|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \counter_low|ALT_INV_rapido\(26),
	cin => \counter_low|Add0~30\,
	sumout => \counter_low|Add0~73_sumout\,
	cout => \counter_low|Add0~74\);

-- Location: FF_X13_Y1_N20
\counter_low|rapido[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \counter_low|Add0~73_sumout\,
	sclr => \counter_low|Equal0~5_combout\,
	ena => \counter_low|rapido[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_low|rapido\(26));

-- Location: MLABCELL_X13_Y1_N21
\counter_low|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_low|Add0~69_sumout\ = SUM(( \counter_low|rapido\(27) ) + ( GND ) + ( \counter_low|Add0~74\ ))
-- \counter_low|Add0~70\ = CARRY(( \counter_low|rapido\(27) ) + ( GND ) + ( \counter_low|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \counter_low|ALT_INV_rapido\(27),
	cin => \counter_low|Add0~74\,
	sumout => \counter_low|Add0~69_sumout\,
	cout => \counter_low|Add0~70\);

-- Location: FF_X13_Y1_N23
\counter_low|rapido[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \counter_low|Add0~69_sumout\,
	sclr => \counter_low|Equal0~5_combout\,
	ena => \counter_low|rapido[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_low|rapido\(27));

-- Location: MLABCELL_X13_Y1_N24
\counter_low|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_low|Add0~65_sumout\ = SUM(( \counter_low|rapido\(28) ) + ( GND ) + ( \counter_low|Add0~70\ ))
-- \counter_low|Add0~66\ = CARRY(( \counter_low|rapido\(28) ) + ( GND ) + ( \counter_low|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \counter_low|ALT_INV_rapido\(28),
	cin => \counter_low|Add0~70\,
	sumout => \counter_low|Add0~65_sumout\,
	cout => \counter_low|Add0~66\);

-- Location: FF_X13_Y1_N26
\counter_low|rapido[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \counter_low|Add0~65_sumout\,
	sclr => \counter_low|Equal0~5_combout\,
	ena => \counter_low|rapido[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_low|rapido\(28));

-- Location: MLABCELL_X13_Y1_N27
\counter_low|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_low|Add0~61_sumout\ = SUM(( \counter_low|rapido\(29) ) + ( GND ) + ( \counter_low|Add0~66\ ))
-- \counter_low|Add0~62\ = CARRY(( \counter_low|rapido\(29) ) + ( GND ) + ( \counter_low|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \counter_low|ALT_INV_rapido\(29),
	cin => \counter_low|Add0~66\,
	sumout => \counter_low|Add0~61_sumout\,
	cout => \counter_low|Add0~62\);

-- Location: FF_X13_Y1_N28
\counter_low|rapido[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \counter_low|Add0~61_sumout\,
	sclr => \counter_low|Equal0~5_combout\,
	ena => \counter_low|rapido[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_low|rapido\(29));

-- Location: MLABCELL_X13_Y1_N30
\counter_low|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_low|Add0~57_sumout\ = SUM(( \counter_low|rapido\(30) ) + ( GND ) + ( \counter_low|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \counter_low|ALT_INV_rapido\(30),
	cin => \counter_low|Add0~62\,
	sumout => \counter_low|Add0~57_sumout\);

-- Location: FF_X13_Y1_N32
\counter_low|rapido[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \counter_low|Add0~57_sumout\,
	sclr => \counter_low|Equal0~5_combout\,
	ena => \counter_low|rapido[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_low|rapido\(30));

-- Location: MLABCELL_X13_Y1_N54
\counter_low|Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_low|Equal0~2_combout\ = ( !\counter_low|rapido\(27) & ( \counter_low|rapido\(1) & ( (!\counter_low|rapido\(28) & (!\counter_low|rapido\(30) & (!\counter_low|rapido\(26) & !\counter_low|rapido\(29)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \counter_low|ALT_INV_rapido\(28),
	datab => \counter_low|ALT_INV_rapido\(30),
	datac => \counter_low|ALT_INV_rapido\(26),
	datad => \counter_low|ALT_INV_rapido\(29),
	datae => \counter_low|ALT_INV_rapido\(27),
	dataf => \counter_low|ALT_INV_rapido\(1),
	combout => \counter_low|Equal0~2_combout\);

-- Location: LABCELL_X14_Y2_N12
\counter_low|Equal0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_low|Equal0~5_combout\ = ( \counter_low|Equal0~1_combout\ & ( \counter_low|Equal0~2_combout\ & ( (!\counter_low|rapido\(13) & (\counter_low|Equal0~0_combout\ & (\counter_low|Equal0~3_combout\ & \counter_low|Equal0~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \counter_low|ALT_INV_rapido\(13),
	datab => \counter_low|ALT_INV_Equal0~0_combout\,
	datac => \counter_low|ALT_INV_Equal0~3_combout\,
	datad => \counter_low|ALT_INV_Equal0~4_combout\,
	datae => \counter_low|ALT_INV_Equal0~1_combout\,
	dataf => \counter_low|ALT_INV_Equal0~2_combout\,
	combout => \counter_low|Equal0~5_combout\);

-- Location: LABCELL_X16_Y2_N24
\counter_low|rollover~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_low|rollover~0_combout\ = ( \counter_low|Equal0~5_combout\ & ( \enable_counter_low~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_enable_counter_low~q\,
	dataf => \counter_low|ALT_INV_Equal0~5_combout\,
	combout => \counter_low|rollover~0_combout\);

-- Location: FF_X16_Y2_N29
\counter_low|lento[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \counter_low|lento[0]~0_combout\,
	clrn => \reset_counter_low~q\,
	ena => \counter_low|rollover~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_low|lento\(0));

-- Location: FF_X16_Y2_N26
\counter_low|rollover\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \counter_low|lento\(0),
	clrn => \reset_counter_low~q\,
	sload => VCC,
	ena => \counter_low|rollover~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_low|rollover~q\);

-- Location: LABCELL_X17_Y4_N36
\Selector10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector10~0_combout\ = ( \state.IDLE~q\ & ( \counter_low|rollover~q\ & ( (!\state.COUNT_05~q\ & (!\counter15|rollover~q\ & (!\state.COUNT_LOW~q\))) # (\state.COUNT_05~q\ & (((!\counter05|rollover~q\)))) ) ) ) # ( \state.IDLE~q\ & ( 
-- !\counter_low|rollover~q\ & ( (!\state.COUNT_05~q\ & ((!\counter15|rollover~q\) # ((\state.COUNT_LOW~q\)))) # (\state.COUNT_05~q\ & (((!\counter05|rollover~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101111111000110000000000000000001011001110000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \counter15|ALT_INV_rollover~q\,
	datab => \ALT_INV_state.COUNT_05~q\,
	datac => \ALT_INV_state.COUNT_LOW~q\,
	datad => \counter05|ALT_INV_rollover~q\,
	datae => \ALT_INV_state.IDLE~q\,
	dataf => \counter_low|ALT_INV_rollover~q\,
	combout => \Selector10~0_combout\);

-- Location: LABCELL_X17_Y5_N24
\Selector10~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector10~1_combout\ = ( \state.COUNT_05~q\ & ( \Selector10~0_combout\ & ( (!\state.SHIFT~q\) # ((!\Equal0~0_combout\ & !\current_bit~q\)) ) ) ) # ( !\state.COUNT_05~q\ & ( \Selector10~0_combout\ & ( (!\Equal0~0_combout\ & (!\current_bit~q\ & 
-- \state.SHIFT~q\)) ) ) ) # ( \state.COUNT_05~q\ & ( !\Selector10~0_combout\ & ( (!\Equal0~0_combout\ & (!\current_bit~q\ & \state.SHIFT~q\)) ) ) ) # ( !\state.COUNT_05~q\ & ( !\Selector10~0_combout\ & ( (!\Equal0~0_combout\ & (!\current_bit~q\ & 
-- \state.SHIFT~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100000001000000010001111100011111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datab => \ALT_INV_current_bit~q\,
	datac => \ALT_INV_state.SHIFT~q\,
	datae => \ALT_INV_state.COUNT_05~q\,
	dataf => \ALT_INV_Selector10~0_combout\,
	combout => \Selector10~1_combout\);

-- Location: FF_X17_Y5_N26
\state.COUNT_05\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector10~1_combout\,
	clrn => \ALT_INV_current_bit~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.COUNT_05~q\);

-- Location: LABCELL_X16_Y5_N57
\Selector4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = ( \state.COUNT_15~q\ & ( (!\counter15|rollover~q\) # ((\reset_counter15~q\ & ((\state.COUNT_05~q\) # (\state.COUNT_LOW~q\)))) ) ) # ( !\state.COUNT_15~q\ & ( (\reset_counter15~q\ & ((\state.COUNT_05~q\) # (\state.COUNT_LOW~q\))) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001011111000000000101111111001100110111111100110011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.COUNT_LOW~q\,
	datab => \counter15|ALT_INV_rollover~q\,
	datac => \ALT_INV_state.COUNT_05~q\,
	datad => \ALT_INV_reset_counter15~q\,
	dataf => \ALT_INV_state.COUNT_15~q\,
	combout => \Selector4~0_combout\);

-- Location: FF_X16_Y5_N59
reset_counter15 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector4~0_combout\,
	clrn => \reset~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reset_counter15~q\);

-- Location: LABCELL_X17_Y4_N33
\Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = ( \enable_counter15~q\ & ( \state.COUNT_LOW~q\ ) ) # ( !\enable_counter15~q\ & ( \state.COUNT_LOW~q\ & ( (!\counter15|rollover~q\ & \state.COUNT_15~q\) ) ) ) # ( \enable_counter15~q\ & ( !\state.COUNT_LOW~q\ & ( 
-- ((!\counter15|rollover~q\ & \state.COUNT_15~q\)) # (\state.COUNT_05~q\) ) ) ) # ( !\enable_counter15~q\ & ( !\state.COUNT_LOW~q\ & ( (!\counter15|rollover~q\ & \state.COUNT_15~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001011110010111100100010001000101111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \counter15|ALT_INV_rollover~q\,
	datab => \ALT_INV_state.COUNT_15~q\,
	datac => \ALT_INV_state.COUNT_05~q\,
	datae => \ALT_INV_enable_counter15~q\,
	dataf => \ALT_INV_state.COUNT_LOW~q\,
	combout => \Selector1~0_combout\);

-- Location: FF_X17_Y4_N35
enable_counter15 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector1~0_combout\,
	clrn => \reset~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \enable_counter15~q\);

-- Location: LABCELL_X16_Y6_N0
\counter15|Add0~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter15|Add0~121_sumout\ = SUM(( \counter15|rapido\(0) ) + ( VCC ) + ( !VCC ))
-- \counter15|Add0~122\ = CARRY(( \counter15|rapido\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \counter15|ALT_INV_rapido\(0),
	cin => GND,
	sumout => \counter15|Add0~121_sumout\,
	cout => \counter15|Add0~122\);

-- Location: LABCELL_X16_Y5_N54
\counter15|rapido[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter15|rapido[0]~0_combout\ = ( \enable_counter15~q\ & ( \reset_counter15~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_reset_counter15~q\,
	dataf => \ALT_INV_enable_counter15~q\,
	combout => \counter15|rapido[0]~0_combout\);

-- Location: FF_X16_Y6_N2
\counter15|rapido[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \counter15|Add0~121_sumout\,
	sclr => \counter15|Equal0~5_combout\,
	ena => \counter15|rapido[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter15|rapido\(0));

-- Location: LABCELL_X16_Y6_N3
\counter15|Add0~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter15|Add0~117_sumout\ = SUM(( \counter15|rapido[1]~DUPLICATE_q\ ) + ( GND ) + ( \counter15|Add0~122\ ))
-- \counter15|Add0~118\ = CARRY(( \counter15|rapido[1]~DUPLICATE_q\ ) + ( GND ) + ( \counter15|Add0~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \counter15|ALT_INV_rapido[1]~DUPLICATE_q\,
	cin => \counter15|Add0~122\,
	sumout => \counter15|Add0~117_sumout\,
	cout => \counter15|Add0~118\);

-- Location: FF_X16_Y6_N5
\counter15|rapido[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \counter15|Add0~117_sumout\,
	sclr => \counter15|Equal0~5_combout\,
	ena => \counter15|rapido[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter15|rapido[1]~DUPLICATE_q\);

-- Location: LABCELL_X16_Y6_N6
\counter15|Add0~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter15|Add0~113_sumout\ = SUM(( \counter15|rapido[2]~DUPLICATE_q\ ) + ( GND ) + ( \counter15|Add0~118\ ))
-- \counter15|Add0~114\ = CARRY(( \counter15|rapido[2]~DUPLICATE_q\ ) + ( GND ) + ( \counter15|Add0~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \counter15|ALT_INV_rapido[2]~DUPLICATE_q\,
	cin => \counter15|Add0~118\,
	sumout => \counter15|Add0~113_sumout\,
	cout => \counter15|Add0~114\);

-- Location: FF_X16_Y6_N7
\counter15|rapido[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \counter15|Add0~113_sumout\,
	sclr => \counter15|Equal0~5_combout\,
	ena => \counter15|rapido[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter15|rapido[2]~DUPLICATE_q\);

-- Location: LABCELL_X16_Y6_N9
\counter15|Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter15|Add0~109_sumout\ = SUM(( \counter15|rapido[3]~DUPLICATE_q\ ) + ( GND ) + ( \counter15|Add0~114\ ))
-- \counter15|Add0~110\ = CARRY(( \counter15|rapido[3]~DUPLICATE_q\ ) + ( GND ) + ( \counter15|Add0~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \counter15|ALT_INV_rapido[3]~DUPLICATE_q\,
	cin => \counter15|Add0~114\,
	sumout => \counter15|Add0~109_sumout\,
	cout => \counter15|Add0~110\);

-- Location: FF_X16_Y6_N11
\counter15|rapido[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \counter15|Add0~109_sumout\,
	sclr => \counter15|Equal0~5_combout\,
	ena => \counter15|rapido[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter15|rapido[3]~DUPLICATE_q\);

-- Location: LABCELL_X16_Y6_N12
\counter15|Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter15|Add0~105_sumout\ = SUM(( \counter15|rapido\(4) ) + ( GND ) + ( \counter15|Add0~110\ ))
-- \counter15|Add0~106\ = CARRY(( \counter15|rapido\(4) ) + ( GND ) + ( \counter15|Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \counter15|ALT_INV_rapido\(4),
	cin => \counter15|Add0~110\,
	sumout => \counter15|Add0~105_sumout\,
	cout => \counter15|Add0~106\);

-- Location: FF_X16_Y6_N14
\counter15|rapido[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \counter15|Add0~105_sumout\,
	sclr => \counter15|Equal0~5_combout\,
	ena => \counter15|rapido[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter15|rapido\(4));

-- Location: LABCELL_X16_Y6_N15
\counter15|Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter15|Add0~101_sumout\ = SUM(( \counter15|rapido[5]~DUPLICATE_q\ ) + ( GND ) + ( \counter15|Add0~106\ ))
-- \counter15|Add0~102\ = CARRY(( \counter15|rapido[5]~DUPLICATE_q\ ) + ( GND ) + ( \counter15|Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \counter15|ALT_INV_rapido[5]~DUPLICATE_q\,
	cin => \counter15|Add0~106\,
	sumout => \counter15|Add0~101_sumout\,
	cout => \counter15|Add0~102\);

-- Location: FF_X16_Y6_N17
\counter15|rapido[5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \counter15|Add0~101_sumout\,
	sclr => \counter15|Equal0~5_combout\,
	ena => \counter15|rapido[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter15|rapido[5]~DUPLICATE_q\);

-- Location: LABCELL_X16_Y6_N18
\counter15|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter15|Add0~97_sumout\ = SUM(( \counter15|rapido[6]~DUPLICATE_q\ ) + ( GND ) + ( \counter15|Add0~102\ ))
-- \counter15|Add0~98\ = CARRY(( \counter15|rapido[6]~DUPLICATE_q\ ) + ( GND ) + ( \counter15|Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \counter15|ALT_INV_rapido[6]~DUPLICATE_q\,
	cin => \counter15|Add0~102\,
	sumout => \counter15|Add0~97_sumout\,
	cout => \counter15|Add0~98\);

-- Location: FF_X16_Y6_N20
\counter15|rapido[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \counter15|Add0~97_sumout\,
	sclr => \counter15|Equal0~5_combout\,
	ena => \counter15|rapido[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter15|rapido[6]~DUPLICATE_q\);

-- Location: LABCELL_X16_Y6_N21
\counter15|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter15|Add0~93_sumout\ = SUM(( \counter15|rapido\(7) ) + ( GND ) + ( \counter15|Add0~98\ ))
-- \counter15|Add0~94\ = CARRY(( \counter15|rapido\(7) ) + ( GND ) + ( \counter15|Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \counter15|ALT_INV_rapido\(7),
	cin => \counter15|Add0~98\,
	sumout => \counter15|Add0~93_sumout\,
	cout => \counter15|Add0~94\);

-- Location: FF_X16_Y6_N23
\counter15|rapido[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \counter15|Add0~93_sumout\,
	sclr => \counter15|Equal0~5_combout\,
	ena => \counter15|rapido[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter15|rapido\(7));

-- Location: LABCELL_X16_Y6_N24
\counter15|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter15|Add0~89_sumout\ = SUM(( \counter15|rapido[8]~DUPLICATE_q\ ) + ( GND ) + ( \counter15|Add0~94\ ))
-- \counter15|Add0~90\ = CARRY(( \counter15|rapido[8]~DUPLICATE_q\ ) + ( GND ) + ( \counter15|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \counter15|ALT_INV_rapido[8]~DUPLICATE_q\,
	cin => \counter15|Add0~94\,
	sumout => \counter15|Add0~89_sumout\,
	cout => \counter15|Add0~90\);

-- Location: FF_X16_Y6_N26
\counter15|rapido[8]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \counter15|Add0~89_sumout\,
	sclr => \counter15|Equal0~5_combout\,
	ena => \counter15|rapido[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter15|rapido[8]~DUPLICATE_q\);

-- Location: LABCELL_X16_Y6_N27
\counter15|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter15|Add0~85_sumout\ = SUM(( \counter15|rapido\(9) ) + ( GND ) + ( \counter15|Add0~90\ ))
-- \counter15|Add0~86\ = CARRY(( \counter15|rapido\(9) ) + ( GND ) + ( \counter15|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \counter15|ALT_INV_rapido\(9),
	cin => \counter15|Add0~90\,
	sumout => \counter15|Add0~85_sumout\,
	cout => \counter15|Add0~86\);

-- Location: FF_X16_Y6_N29
\counter15|rapido[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \counter15|Add0~85_sumout\,
	sclr => \counter15|Equal0~5_combout\,
	ena => \counter15|rapido[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter15|rapido\(9));

-- Location: LABCELL_X16_Y6_N30
\counter15|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter15|Add0~81_sumout\ = SUM(( \counter15|rapido\(10) ) + ( GND ) + ( \counter15|Add0~86\ ))
-- \counter15|Add0~82\ = CARRY(( \counter15|rapido\(10) ) + ( GND ) + ( \counter15|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \counter15|ALT_INV_rapido\(10),
	cin => \counter15|Add0~86\,
	sumout => \counter15|Add0~81_sumout\,
	cout => \counter15|Add0~82\);

-- Location: FF_X16_Y6_N31
\counter15|rapido[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \counter15|Add0~81_sumout\,
	sclr => \counter15|Equal0~5_combout\,
	ena => \counter15|rapido[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter15|rapido\(10));

-- Location: LABCELL_X16_Y6_N33
\counter15|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter15|Add0~77_sumout\ = SUM(( \counter15|rapido\(11) ) + ( GND ) + ( \counter15|Add0~82\ ))
-- \counter15|Add0~78\ = CARRY(( \counter15|rapido\(11) ) + ( GND ) + ( \counter15|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \counter15|ALT_INV_rapido\(11),
	cin => \counter15|Add0~82\,
	sumout => \counter15|Add0~77_sumout\,
	cout => \counter15|Add0~78\);

-- Location: FF_X16_Y6_N35
\counter15|rapido[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \counter15|Add0~77_sumout\,
	sclr => \counter15|Equal0~5_combout\,
	ena => \counter15|rapido[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter15|rapido\(11));

-- Location: LABCELL_X16_Y6_N36
\counter15|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter15|Add0~1_sumout\ = SUM(( \counter15|rapido\(12) ) + ( GND ) + ( \counter15|Add0~78\ ))
-- \counter15|Add0~2\ = CARRY(( \counter15|rapido\(12) ) + ( GND ) + ( \counter15|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \counter15|ALT_INV_rapido\(12),
	cin => \counter15|Add0~78\,
	sumout => \counter15|Add0~1_sumout\,
	cout => \counter15|Add0~2\);

-- Location: FF_X16_Y6_N38
\counter15|rapido[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \counter15|Add0~1_sumout\,
	sclr => \counter15|Equal0~5_combout\,
	ena => \counter15|rapido[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter15|rapido\(12));

-- Location: LABCELL_X16_Y6_N39
\counter15|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter15|Add0~25_sumout\ = SUM(( \counter15|rapido[13]~DUPLICATE_q\ ) + ( GND ) + ( \counter15|Add0~2\ ))
-- \counter15|Add0~26\ = CARRY(( \counter15|rapido[13]~DUPLICATE_q\ ) + ( GND ) + ( \counter15|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \counter15|ALT_INV_rapido[13]~DUPLICATE_q\,
	cin => \counter15|Add0~2\,
	sumout => \counter15|Add0~25_sumout\,
	cout => \counter15|Add0~26\);

-- Location: FF_X16_Y6_N41
\counter15|rapido[13]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \counter15|Add0~25_sumout\,
	sclr => \counter15|Equal0~5_combout\,
	ena => \counter15|rapido[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter15|rapido[13]~DUPLICATE_q\);

-- Location: LABCELL_X16_Y6_N42
\counter15|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter15|Add0~21_sumout\ = SUM(( \counter15|rapido\(14) ) + ( GND ) + ( \counter15|Add0~26\ ))
-- \counter15|Add0~22\ = CARRY(( \counter15|rapido\(14) ) + ( GND ) + ( \counter15|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \counter15|ALT_INV_rapido\(14),
	cin => \counter15|Add0~26\,
	sumout => \counter15|Add0~21_sumout\,
	cout => \counter15|Add0~22\);

-- Location: FF_X16_Y6_N43
\counter15|rapido[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \counter15|Add0~21_sumout\,
	sclr => \counter15|Equal0~5_combout\,
	ena => \counter15|rapido[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter15|rapido\(14));

-- Location: LABCELL_X16_Y6_N45
\counter15|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter15|Add0~17_sumout\ = SUM(( \counter15|rapido\(15) ) + ( GND ) + ( \counter15|Add0~22\ ))
-- \counter15|Add0~18\ = CARRY(( \counter15|rapido\(15) ) + ( GND ) + ( \counter15|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \counter15|ALT_INV_rapido\(15),
	cin => \counter15|Add0~22\,
	sumout => \counter15|Add0~17_sumout\,
	cout => \counter15|Add0~18\);

-- Location: FF_X16_Y6_N47
\counter15|rapido[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \counter15|Add0~17_sumout\,
	sclr => \counter15|Equal0~5_combout\,
	ena => \counter15|rapido[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter15|rapido\(15));

-- Location: LABCELL_X16_Y6_N48
\counter15|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter15|Add0~13_sumout\ = SUM(( \counter15|rapido\(16) ) + ( GND ) + ( \counter15|Add0~18\ ))
-- \counter15|Add0~14\ = CARRY(( \counter15|rapido\(16) ) + ( GND ) + ( \counter15|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \counter15|ALT_INV_rapido\(16),
	cin => \counter15|Add0~18\,
	sumout => \counter15|Add0~13_sumout\,
	cout => \counter15|Add0~14\);

-- Location: FF_X16_Y6_N50
\counter15|rapido[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \counter15|Add0~13_sumout\,
	sclr => \counter15|Equal0~5_combout\,
	ena => \counter15|rapido[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter15|rapido\(16));

-- Location: LABCELL_X16_Y6_N51
\counter15|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter15|Add0~9_sumout\ = SUM(( \counter15|rapido[17]~DUPLICATE_q\ ) + ( GND ) + ( \counter15|Add0~14\ ))
-- \counter15|Add0~10\ = CARRY(( \counter15|rapido[17]~DUPLICATE_q\ ) + ( GND ) + ( \counter15|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \counter15|ALT_INV_rapido[17]~DUPLICATE_q\,
	cin => \counter15|Add0~14\,
	sumout => \counter15|Add0~9_sumout\,
	cout => \counter15|Add0~10\);

-- Location: FF_X16_Y6_N52
\counter15|rapido[17]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \counter15|Add0~9_sumout\,
	sclr => \counter15|Equal0~5_combout\,
	ena => \counter15|rapido[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter15|rapido[17]~DUPLICATE_q\);

-- Location: LABCELL_X16_Y6_N54
\counter15|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter15|Add0~5_sumout\ = SUM(( \counter15|rapido[18]~DUPLICATE_q\ ) + ( GND ) + ( \counter15|Add0~10\ ))
-- \counter15|Add0~6\ = CARRY(( \counter15|rapido[18]~DUPLICATE_q\ ) + ( GND ) + ( \counter15|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \counter15|ALT_INV_rapido[18]~DUPLICATE_q\,
	cin => \counter15|Add0~10\,
	sumout => \counter15|Add0~5_sumout\,
	cout => \counter15|Add0~6\);

-- Location: FF_X16_Y6_N56
\counter15|rapido[18]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \counter15|Add0~5_sumout\,
	sclr => \counter15|Equal0~5_combout\,
	ena => \counter15|rapido[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter15|rapido[18]~DUPLICATE_q\);

-- Location: LABCELL_X16_Y6_N57
\counter15|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter15|Add0~49_sumout\ = SUM(( \counter15|rapido\(19) ) + ( GND ) + ( \counter15|Add0~6\ ))
-- \counter15|Add0~50\ = CARRY(( \counter15|rapido\(19) ) + ( GND ) + ( \counter15|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \counter15|ALT_INV_rapido\(19),
	cin => \counter15|Add0~6\,
	sumout => \counter15|Add0~49_sumout\,
	cout => \counter15|Add0~50\);

-- Location: FF_X16_Y6_N59
\counter15|rapido[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \counter15|Add0~49_sumout\,
	sclr => \counter15|Equal0~5_combout\,
	ena => \counter15|rapido[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter15|rapido\(19));

-- Location: LABCELL_X16_Y5_N0
\counter15|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter15|Add0~45_sumout\ = SUM(( \counter15|rapido\(20) ) + ( GND ) + ( \counter15|Add0~50\ ))
-- \counter15|Add0~46\ = CARRY(( \counter15|rapido\(20) ) + ( GND ) + ( \counter15|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \counter15|ALT_INV_rapido\(20),
	cin => \counter15|Add0~50\,
	sumout => \counter15|Add0~45_sumout\,
	cout => \counter15|Add0~46\);

-- Location: FF_X16_Y5_N2
\counter15|rapido[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \counter15|Add0~45_sumout\,
	sclr => \counter15|Equal0~5_combout\,
	ena => \counter15|rapido[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter15|rapido\(20));

-- Location: LABCELL_X16_Y5_N3
\counter15|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter15|Add0~41_sumout\ = SUM(( \counter15|rapido\(21) ) + ( GND ) + ( \counter15|Add0~46\ ))
-- \counter15|Add0~42\ = CARRY(( \counter15|rapido\(21) ) + ( GND ) + ( \counter15|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \counter15|ALT_INV_rapido\(21),
	cin => \counter15|Add0~46\,
	sumout => \counter15|Add0~41_sumout\,
	cout => \counter15|Add0~42\);

-- Location: FF_X16_Y5_N5
\counter15|rapido[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \counter15|Add0~41_sumout\,
	sclr => \counter15|Equal0~5_combout\,
	ena => \counter15|rapido[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter15|rapido\(21));

-- Location: LABCELL_X16_Y5_N6
\counter15|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter15|Add0~37_sumout\ = SUM(( \counter15|rapido[22]~DUPLICATE_q\ ) + ( GND ) + ( \counter15|Add0~42\ ))
-- \counter15|Add0~38\ = CARRY(( \counter15|rapido[22]~DUPLICATE_q\ ) + ( GND ) + ( \counter15|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \counter15|ALT_INV_rapido[22]~DUPLICATE_q\,
	cin => \counter15|Add0~42\,
	sumout => \counter15|Add0~37_sumout\,
	cout => \counter15|Add0~38\);

-- Location: FF_X16_Y5_N7
\counter15|rapido[22]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \counter15|Add0~37_sumout\,
	sclr => \counter15|Equal0~5_combout\,
	ena => \counter15|rapido[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter15|rapido[22]~DUPLICATE_q\);

-- Location: LABCELL_X16_Y5_N9
\counter15|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter15|Add0~33_sumout\ = SUM(( \counter15|rapido\(23) ) + ( GND ) + ( \counter15|Add0~38\ ))
-- \counter15|Add0~34\ = CARRY(( \counter15|rapido\(23) ) + ( GND ) + ( \counter15|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \counter15|ALT_INV_rapido\(23),
	cin => \counter15|Add0~38\,
	sumout => \counter15|Add0~33_sumout\,
	cout => \counter15|Add0~34\);

-- Location: FF_X16_Y5_N11
\counter15|rapido[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \counter15|Add0~33_sumout\,
	sclr => \counter15|Equal0~5_combout\,
	ena => \counter15|rapido[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter15|rapido\(23));

-- Location: LABCELL_X16_Y5_N12
\counter15|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter15|Add0~29_sumout\ = SUM(( \counter15|rapido\(24) ) + ( GND ) + ( \counter15|Add0~34\ ))
-- \counter15|Add0~30\ = CARRY(( \counter15|rapido\(24) ) + ( GND ) + ( \counter15|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \counter15|ALT_INV_rapido\(24),
	cin => \counter15|Add0~34\,
	sumout => \counter15|Add0~29_sumout\,
	cout => \counter15|Add0~30\);

-- Location: FF_X16_Y5_N14
\counter15|rapido[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \counter15|Add0~29_sumout\,
	sclr => \counter15|Equal0~5_combout\,
	ena => \counter15|rapido[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter15|rapido\(24));

-- Location: LABCELL_X16_Y5_N15
\counter15|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter15|Add0~73_sumout\ = SUM(( \counter15|rapido\(25) ) + ( GND ) + ( \counter15|Add0~30\ ))
-- \counter15|Add0~74\ = CARRY(( \counter15|rapido\(25) ) + ( GND ) + ( \counter15|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \counter15|ALT_INV_rapido\(25),
	cin => \counter15|Add0~30\,
	sumout => \counter15|Add0~73_sumout\,
	cout => \counter15|Add0~74\);

-- Location: FF_X16_Y5_N17
\counter15|rapido[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \counter15|Add0~73_sumout\,
	sclr => \counter15|Equal0~5_combout\,
	ena => \counter15|rapido[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter15|rapido\(25));

-- Location: LABCELL_X16_Y5_N18
\counter15|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter15|Add0~69_sumout\ = SUM(( \counter15|rapido\(26) ) + ( GND ) + ( \counter15|Add0~74\ ))
-- \counter15|Add0~70\ = CARRY(( \counter15|rapido\(26) ) + ( GND ) + ( \counter15|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \counter15|ALT_INV_rapido\(26),
	cin => \counter15|Add0~74\,
	sumout => \counter15|Add0~69_sumout\,
	cout => \counter15|Add0~70\);

-- Location: FF_X16_Y5_N20
\counter15|rapido[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \counter15|Add0~69_sumout\,
	sclr => \counter15|Equal0~5_combout\,
	ena => \counter15|rapido[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter15|rapido\(26));

-- Location: LABCELL_X16_Y5_N21
\counter15|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter15|Add0~65_sumout\ = SUM(( \counter15|rapido\(27) ) + ( GND ) + ( \counter15|Add0~70\ ))
-- \counter15|Add0~66\ = CARRY(( \counter15|rapido\(27) ) + ( GND ) + ( \counter15|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \counter15|ALT_INV_rapido\(27),
	cin => \counter15|Add0~70\,
	sumout => \counter15|Add0~65_sumout\,
	cout => \counter15|Add0~66\);

-- Location: FF_X16_Y5_N23
\counter15|rapido[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \counter15|Add0~65_sumout\,
	sclr => \counter15|Equal0~5_combout\,
	ena => \counter15|rapido[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter15|rapido\(27));

-- Location: LABCELL_X16_Y5_N24
\counter15|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter15|Add0~61_sumout\ = SUM(( \counter15|rapido\(28) ) + ( GND ) + ( \counter15|Add0~66\ ))
-- \counter15|Add0~62\ = CARRY(( \counter15|rapido\(28) ) + ( GND ) + ( \counter15|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \counter15|ALT_INV_rapido\(28),
	cin => \counter15|Add0~66\,
	sumout => \counter15|Add0~61_sumout\,
	cout => \counter15|Add0~62\);

-- Location: FF_X16_Y5_N26
\counter15|rapido[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \counter15|Add0~61_sumout\,
	sclr => \counter15|Equal0~5_combout\,
	ena => \counter15|rapido[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter15|rapido\(28));

-- Location: LABCELL_X16_Y5_N27
\counter15|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter15|Add0~57_sumout\ = SUM(( \counter15|rapido\(29) ) + ( GND ) + ( \counter15|Add0~62\ ))
-- \counter15|Add0~58\ = CARRY(( \counter15|rapido\(29) ) + ( GND ) + ( \counter15|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \counter15|ALT_INV_rapido\(29),
	cin => \counter15|Add0~62\,
	sumout => \counter15|Add0~57_sumout\,
	cout => \counter15|Add0~58\);

-- Location: FF_X16_Y5_N29
\counter15|rapido[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \counter15|Add0~57_sumout\,
	sclr => \counter15|Equal0~5_combout\,
	ena => \counter15|rapido[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter15|rapido\(29));

-- Location: LABCELL_X16_Y5_N30
\counter15|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter15|Add0~53_sumout\ = SUM(( \counter15|rapido\(30) ) + ( GND ) + ( \counter15|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \counter15|ALT_INV_rapido\(30),
	cin => \counter15|Add0~58\,
	sumout => \counter15|Add0~53_sumout\);

-- Location: FF_X16_Y5_N32
\counter15|rapido[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \counter15|Add0~53_sumout\,
	sclr => \counter15|Equal0~5_combout\,
	ena => \counter15|rapido[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter15|rapido\(30));

-- Location: LABCELL_X16_Y5_N42
\counter15|Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter15|Equal0~2_combout\ = ( !\counter15|rapido\(29) & ( \counter15|rapido\(26) & ( (!\counter15|rapido\(27) & (!\counter15|rapido\(30) & (!\counter15|rapido\(28) & !\counter15|rapido\(25)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \counter15|ALT_INV_rapido\(27),
	datab => \counter15|ALT_INV_rapido\(30),
	datac => \counter15|ALT_INV_rapido\(28),
	datad => \counter15|ALT_INV_rapido\(25),
	datae => \counter15|ALT_INV_rapido\(29),
	dataf => \counter15|ALT_INV_rapido\(26),
	combout => \counter15|Equal0~2_combout\);

-- Location: FF_X16_Y6_N19
\counter15|rapido[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \counter15|Add0~97_sumout\,
	sclr => \counter15|Equal0~5_combout\,
	ena => \counter15|rapido[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter15|rapido\(6));

-- Location: FF_X16_Y6_N25
\counter15|rapido[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \counter15|Add0~89_sumout\,
	sclr => \counter15|Equal0~5_combout\,
	ena => \counter15|rapido[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter15|rapido\(8));

-- Location: LABCELL_X17_Y5_N48
\counter15|Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter15|Equal0~3_combout\ = ( !\counter15|rapido\(9) & ( !\counter15|rapido\(10) & ( (\counter15|rapido\(7) & (!\counter15|rapido\(6) & (\counter15|rapido\(11) & !\counter15|rapido\(8)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \counter15|ALT_INV_rapido\(7),
	datab => \counter15|ALT_INV_rapido\(6),
	datac => \counter15|ALT_INV_rapido\(11),
	datad => \counter15|ALT_INV_rapido\(8),
	datae => \counter15|ALT_INV_rapido\(9),
	dataf => \counter15|ALT_INV_rapido\(10),
	combout => \counter15|Equal0~3_combout\);

-- Location: FF_X16_Y5_N8
\counter15|rapido[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \counter15|Add0~37_sumout\,
	sclr => \counter15|Equal0~5_combout\,
	ena => \counter15|rapido[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter15|rapido\(22));

-- Location: LABCELL_X16_Y5_N48
\counter15|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter15|Equal0~1_combout\ = ( \counter15|rapido\(19) & ( \counter15|rapido\(22) & ( (\counter15|rapido\(21) & (!\counter15|rapido\(24) & (\counter15|rapido\(20) & !\counter15|rapido\(23)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \counter15|ALT_INV_rapido\(21),
	datab => \counter15|ALT_INV_rapido\(24),
	datac => \counter15|ALT_INV_rapido\(20),
	datad => \counter15|ALT_INV_rapido\(23),
	datae => \counter15|ALT_INV_rapido\(19),
	dataf => \counter15|ALT_INV_rapido\(22),
	combout => \counter15|Equal0~1_combout\);

-- Location: FF_X16_Y6_N16
\counter15|rapido[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \counter15|Add0~101_sumout\,
	sclr => \counter15|Equal0~5_combout\,
	ena => \counter15|rapido[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter15|rapido\(5));

-- Location: FF_X16_Y6_N10
\counter15|rapido[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \counter15|Add0~109_sumout\,
	sclr => \counter15|Equal0~5_combout\,
	ena => \counter15|rapido[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter15|rapido\(3));

-- Location: FF_X16_Y6_N8
\counter15|rapido[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \counter15|Add0~113_sumout\,
	sclr => \counter15|Equal0~5_combout\,
	ena => \counter15|rapido[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter15|rapido\(2));

-- Location: FF_X16_Y6_N4
\counter15|rapido[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \counter15|Add0~117_sumout\,
	sclr => \counter15|Equal0~5_combout\,
	ena => \counter15|rapido[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter15|rapido\(1));

-- Location: LABCELL_X17_Y5_N54
\counter15|Equal0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter15|Equal0~4_combout\ = ( \counter15|rapido\(4) & ( \counter15|rapido\(0) & ( (\counter15|rapido\(5) & (\counter15|rapido\(3) & (\counter15|rapido\(2) & \counter15|rapido\(1)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \counter15|ALT_INV_rapido\(5),
	datab => \counter15|ALT_INV_rapido\(3),
	datac => \counter15|ALT_INV_rapido\(2),
	datad => \counter15|ALT_INV_rapido\(1),
	datae => \counter15|ALT_INV_rapido\(4),
	dataf => \counter15|ALT_INV_rapido\(0),
	combout => \counter15|Equal0~4_combout\);

-- Location: FF_X16_Y6_N46
\counter15|rapido[15]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \counter15|Add0~17_sumout\,
	sclr => \counter15|Equal0~5_combout\,
	ena => \counter15|rapido[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter15|rapido[15]~DUPLICATE_q\);

-- Location: FF_X16_Y6_N49
\counter15|rapido[16]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \counter15|Add0~13_sumout\,
	sclr => \counter15|Equal0~5_combout\,
	ena => \counter15|rapido[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter15|rapido[16]~DUPLICATE_q\);

-- Location: FF_X16_Y6_N55
\counter15|rapido[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \counter15|Add0~5_sumout\,
	sclr => \counter15|Equal0~5_combout\,
	ena => \counter15|rapido[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter15|rapido\(18));

-- Location: FF_X16_Y6_N40
\counter15|rapido[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \counter15|Add0~25_sumout\,
	sclr => \counter15|Equal0~5_combout\,
	ena => \counter15|rapido[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter15|rapido\(13));

-- Location: FF_X16_Y6_N53
\counter15|rapido[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \counter15|Add0~9_sumout\,
	sclr => \counter15|Equal0~5_combout\,
	ena => \counter15|rapido[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter15|rapido\(17));

-- Location: LABCELL_X17_Y5_N42
\counter15|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter15|Equal0~0_combout\ = ( \counter15|rapido\(13) & ( !\counter15|rapido\(17) & ( (\counter15|rapido\(14) & (!\counter15|rapido[15]~DUPLICATE_q\ & (!\counter15|rapido[16]~DUPLICATE_q\ & !\counter15|rapido\(18)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \counter15|ALT_INV_rapido\(14),
	datab => \counter15|ALT_INV_rapido[15]~DUPLICATE_q\,
	datac => \counter15|ALT_INV_rapido[16]~DUPLICATE_q\,
	datad => \counter15|ALT_INV_rapido\(18),
	datae => \counter15|ALT_INV_rapido\(13),
	dataf => \counter15|ALT_INV_rapido\(17),
	combout => \counter15|Equal0~0_combout\);

-- Location: LABCELL_X17_Y5_N12
\counter15|Equal0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter15|Equal0~5_combout\ = ( \counter15|Equal0~4_combout\ & ( \counter15|Equal0~0_combout\ & ( (!\counter15|rapido\(12) & (\counter15|Equal0~2_combout\ & (\counter15|Equal0~3_combout\ & \counter15|Equal0~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \counter15|ALT_INV_rapido\(12),
	datab => \counter15|ALT_INV_Equal0~2_combout\,
	datac => \counter15|ALT_INV_Equal0~3_combout\,
	datad => \counter15|ALT_INV_Equal0~1_combout\,
	datae => \counter15|ALT_INV_Equal0~4_combout\,
	dataf => \counter15|ALT_INV_Equal0~0_combout\,
	combout => \counter15|Equal0~5_combout\);

-- Location: LABCELL_X17_Y5_N36
\counter15|rollover~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter15|rollover~0_combout\ = ( \counter15|Equal0~5_combout\ & ( \enable_counter15~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_enable_counter15~q\,
	dataf => \counter15|ALT_INV_Equal0~5_combout\,
	combout => \counter15|rollover~0_combout\);

-- Location: FF_X17_Y5_N41
\counter15|lento[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \counter15|lento[0]~0_combout\,
	clrn => \reset_counter15~q\,
	ena => \counter15|rollover~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter15|lento\(0));

-- Location: FF_X17_Y5_N38
\counter15|rollover\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \counter15|lento\(0),
	clrn => \reset_counter15~q\,
	sload => VCC,
	ena => \counter15|rollover~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter15|rollover~q\);

-- Location: LABCELL_X17_Y4_N57
\Selector12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector12~0_combout\ = ( \state.COUNT_LOW~q\ & ( \state.COUNT_15~q\ & ( ((!\counter_low|rollover~q\) # ((\state.COUNT_05~q\ & \counter05|rollover~q\))) # (\counter15|rollover~q\) ) ) ) # ( !\state.COUNT_LOW~q\ & ( \state.COUNT_15~q\ & ( 
-- ((\state.COUNT_05~q\ & \counter05|rollover~q\)) # (\counter15|rollover~q\) ) ) ) # ( \state.COUNT_LOW~q\ & ( !\state.COUNT_15~q\ & ( (!\counter_low|rollover~q\) # ((\state.COUNT_05~q\ & \counter05|rollover~q\)) ) ) ) # ( !\state.COUNT_LOW~q\ & ( 
-- !\state.COUNT_15~q\ & ( (\state.COUNT_05~q\ & \counter05|rollover~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011111100001111001101010101011101111111010111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \counter15|ALT_INV_rollover~q\,
	datab => \ALT_INV_state.COUNT_05~q\,
	datac => \counter_low|ALT_INV_rollover~q\,
	datad => \counter05|ALT_INV_rollover~q\,
	datae => \ALT_INV_state.COUNT_LOW~q\,
	dataf => \ALT_INV_state.COUNT_15~q\,
	combout => \Selector12~0_combout\);

-- Location: FF_X17_Y4_N58
\state.COUNT_LOW\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector12~0_combout\,
	clrn => \ALT_INV_current_bit~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.COUNT_LOW~q\);

-- Location: LABCELL_X17_Y3_N36
\Selector13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector13~0_combout\ = ( \state.COUNT_LOW~q\ & ( \counter_low|rollover~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_state.COUNT_LOW~q\,
	dataf => \counter_low|ALT_INV_rollover~q\,
	combout => \Selector13~0_combout\);

-- Location: MLABCELL_X18_Y3_N6
\Selector13~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector13~1_combout\ = ( \Selector13~0_combout\ ) # ( !\Selector13~0_combout\ & ( (\start~2_combout\ & !\state.IDLE~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_start~2_combout\,
	datac => \ALT_INV_state.IDLE~q\,
	dataf => \ALT_INV_Selector13~0_combout\,
	combout => \Selector13~1_combout\);

-- Location: FF_X18_Y3_N8
\state.SHIFT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector13~1_combout\,
	clrn => \ALT_INV_current_bit~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.SHIFT~q\);

-- Location: LABCELL_X17_Y4_N15
\Selector14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector14~0_combout\ = ( \signal_out~reg0_q\ & ( (((!\state.IDLE~q\) # (\state.COUNT_15~q\)) # (\state.COUNT_05~q\)) # (\state.SHIFT~q\) ) ) # ( !\signal_out~reg0_q\ & ( (\state.COUNT_15~q\) # (\state.COUNT_05~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100111111111111110111111100111111001111111111111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.SHIFT~q\,
	datab => \ALT_INV_state.COUNT_05~q\,
	datac => \ALT_INV_state.COUNT_15~q\,
	datad => \ALT_INV_state.IDLE~q\,
	datae => \ALT_INV_signal_out~reg0_q\,
	combout => \Selector14~0_combout\);

-- Location: FF_X17_Y4_N16
\signal_out~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector14~0_combout\,
	clrn => \reset~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \signal_out~reg0_q\);

-- Location: LABCELL_X44_Y9_N0
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


