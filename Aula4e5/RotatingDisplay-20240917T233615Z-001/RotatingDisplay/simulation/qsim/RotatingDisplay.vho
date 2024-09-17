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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 21.1.0 Build 842 10/21/2021 SJ Lite Edition"

-- DATE "09/17/2024 16:05:40"

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

ENTITY 	RotatingDisplay IS
    PORT (
	CLK : IN std_logic;
	RESET : IN std_logic;
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	HEX1 : OUT std_logic_vector(6 DOWNTO 0);
	HEX2 : OUT std_logic_vector(6 DOWNTO 0);
	HEX3 : OUT std_logic_vector(6 DOWNTO 0)
	);
END RotatingDisplay;

-- Design Ports Information
-- HEX0[0]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_Y9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[0]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[1]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[2]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[3]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[4]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[5]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[6]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[0]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[1]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[2]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[3]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[4]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[5]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[6]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESET	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF RotatingDisplay IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_RESET : std_logic;
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputCLKENA0_outclk\ : std_logic;
SIGNAL \RESET~input_o\ : std_logic;
SIGNAL \Add1~85_sumout\ : std_logic;
SIGNAL \Add1~86\ : std_logic;
SIGNAL \Add1~73_sumout\ : std_logic;
SIGNAL \Add1~74\ : std_logic;
SIGNAL \Add1~5_sumout\ : std_logic;
SIGNAL \Add1~6\ : std_logic;
SIGNAL \Add1~1_sumout\ : std_logic;
SIGNAL \Add1~2\ : std_logic;
SIGNAL \Add1~29_sumout\ : std_logic;
SIGNAL \Add1~30\ : std_logic;
SIGNAL \Add1~25_sumout\ : std_logic;
SIGNAL \Add1~26\ : std_logic;
SIGNAL \Add1~21_sumout\ : std_logic;
SIGNAL \Add1~22\ : std_logic;
SIGNAL \Add1~17_sumout\ : std_logic;
SIGNAL \Add1~18\ : std_logic;
SIGNAL \Add1~13_sumout\ : std_logic;
SIGNAL \Add1~14\ : std_logic;
SIGNAL \Add1~9_sumout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Add1~10\ : std_logic;
SIGNAL \Add1~53_sumout\ : std_logic;
SIGNAL \Add1~54\ : std_logic;
SIGNAL \Add1~49_sumout\ : std_logic;
SIGNAL \Add1~50\ : std_logic;
SIGNAL \Add1~45_sumout\ : std_logic;
SIGNAL \Add1~46\ : std_logic;
SIGNAL \Add1~41_sumout\ : std_logic;
SIGNAL \Add1~42\ : std_logic;
SIGNAL \Add1~37_sumout\ : std_logic;
SIGNAL \Add1~38\ : std_logic;
SIGNAL \Add1~33_sumout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \clk_div[2]~DUPLICATE_q\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Add1~34\ : std_logic;
SIGNAL \Add1~77_sumout\ : std_logic;
SIGNAL \clk_div[16]~DUPLICATE_q\ : std_logic;
SIGNAL \Add1~78\ : std_logic;
SIGNAL \Add1~81_sumout\ : std_logic;
SIGNAL \Add1~82\ : std_logic;
SIGNAL \Add1~69_sumout\ : std_logic;
SIGNAL \Add1~70\ : std_logic;
SIGNAL \Add1~65_sumout\ : std_logic;
SIGNAL \clk_div[19]~DUPLICATE_q\ : std_logic;
SIGNAL \Add1~66\ : std_logic;
SIGNAL \Add1~61_sumout\ : std_logic;
SIGNAL \Add1~62\ : std_logic;
SIGNAL \Add1~57_sumout\ : std_logic;
SIGNAL \Add1~58\ : std_logic;
SIGNAL \Add1~125_sumout\ : std_logic;
SIGNAL \Add1~126\ : std_logic;
SIGNAL \Add1~121_sumout\ : std_logic;
SIGNAL \Add1~122\ : std_logic;
SIGNAL \Add1~117_sumout\ : std_logic;
SIGNAL \Add1~118\ : std_logic;
SIGNAL \Add1~113_sumout\ : std_logic;
SIGNAL \Add1~114\ : std_logic;
SIGNAL \Add1~109_sumout\ : std_logic;
SIGNAL \Add1~110\ : std_logic;
SIGNAL \Add1~105_sumout\ : std_logic;
SIGNAL \Add1~106\ : std_logic;
SIGNAL \Add1~101_sumout\ : std_logic;
SIGNAL \Add1~102\ : std_logic;
SIGNAL \Add1~97_sumout\ : std_logic;
SIGNAL \Add1~98\ : std_logic;
SIGNAL \Add1~93_sumout\ : std_logic;
SIGNAL \Add1~94\ : std_logic;
SIGNAL \Add1~89_sumout\ : std_logic;
SIGNAL \clk_div[0]~DUPLICATE_q\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \clk_div[1]~DUPLICATE_q\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \count[0]~0_combout\ : std_logic;
SIGNAL \count[0]~DUPLICATE_q\ : std_logic;
SIGNAL \count[1]~1_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux2~2_combout\ : std_logic;
SIGNAL clk_div : std_logic_vector(31 DOWNTO 0);
SIGNAL count : std_logic_vector(1 DOWNTO 0);
SIGNAL \ALT_INV_count[0]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_clk_div[0]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_clk_div[16]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_clk_div[1]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_clk_div[19]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_clk_div[2]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_RESET~input_o\ : std_logic;
SIGNAL \ALT_INV_Equal0~6_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~5_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~4_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL ALT_INV_count : std_logic_vector(1 DOWNTO 0);
SIGNAL ALT_INV_clk_div : std_logic_vector(31 DOWNTO 0);

BEGIN

ww_CLK <= CLK;
ww_RESET <= RESET;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_count[0]~DUPLICATE_q\ <= NOT \count[0]~DUPLICATE_q\;
\ALT_INV_clk_div[0]~DUPLICATE_q\ <= NOT \clk_div[0]~DUPLICATE_q\;
\ALT_INV_clk_div[16]~DUPLICATE_q\ <= NOT \clk_div[16]~DUPLICATE_q\;
\ALT_INV_clk_div[1]~DUPLICATE_q\ <= NOT \clk_div[1]~DUPLICATE_q\;
\ALT_INV_clk_div[19]~DUPLICATE_q\ <= NOT \clk_div[19]~DUPLICATE_q\;
\ALT_INV_clk_div[2]~DUPLICATE_q\ <= NOT \clk_div[2]~DUPLICATE_q\;
\ALT_INV_RESET~input_o\ <= NOT \RESET~input_o\;
\ALT_INV_Equal0~6_combout\ <= NOT \Equal0~6_combout\;
\ALT_INV_Equal0~5_combout\ <= NOT \Equal0~5_combout\;
\ALT_INV_Equal0~4_combout\ <= NOT \Equal0~4_combout\;
\ALT_INV_Equal0~3_combout\ <= NOT \Equal0~3_combout\;
\ALT_INV_Equal0~2_combout\ <= NOT \Equal0~2_combout\;
\ALT_INV_Equal0~1_combout\ <= NOT \Equal0~1_combout\;
\ALT_INV_Equal0~0_combout\ <= NOT \Equal0~0_combout\;
\ALT_INV_Mux4~0_combout\ <= NOT \Mux4~0_combout\;
\ALT_INV_Mux7~0_combout\ <= NOT \Mux7~0_combout\;
ALT_INV_count(1) <= NOT count(1);
ALT_INV_count(0) <= NOT count(0);
ALT_INV_clk_div(22) <= NOT clk_div(22);
ALT_INV_clk_div(23) <= NOT clk_div(23);
ALT_INV_clk_div(24) <= NOT clk_div(24);
ALT_INV_clk_div(25) <= NOT clk_div(25);
ALT_INV_clk_div(26) <= NOT clk_div(26);
ALT_INV_clk_div(27) <= NOT clk_div(27);
ALT_INV_clk_div(28) <= NOT clk_div(28);
ALT_INV_clk_div(29) <= NOT clk_div(29);
ALT_INV_clk_div(30) <= NOT clk_div(30);
ALT_INV_clk_div(31) <= NOT clk_div(31);
ALT_INV_clk_div(0) <= NOT clk_div(0);
ALT_INV_clk_div(17) <= NOT clk_div(17);
ALT_INV_clk_div(16) <= NOT clk_div(16);
ALT_INV_clk_div(1) <= NOT clk_div(1);
ALT_INV_clk_div(18) <= NOT clk_div(18);
ALT_INV_clk_div(19) <= NOT clk_div(19);
ALT_INV_clk_div(20) <= NOT clk_div(20);
ALT_INV_clk_div(21) <= NOT clk_div(21);
ALT_INV_clk_div(10) <= NOT clk_div(10);
ALT_INV_clk_div(11) <= NOT clk_div(11);
ALT_INV_clk_div(12) <= NOT clk_div(12);
ALT_INV_clk_div(13) <= NOT clk_div(13);
ALT_INV_clk_div(14) <= NOT clk_div(14);
ALT_INV_clk_div(15) <= NOT clk_div(15);
ALT_INV_clk_div(4) <= NOT clk_div(4);
ALT_INV_clk_div(5) <= NOT clk_div(5);
ALT_INV_clk_div(6) <= NOT clk_div(6);
ALT_INV_clk_div(7) <= NOT clk_div(7);
ALT_INV_clk_div(8) <= NOT clk_div(8);
ALT_INV_clk_div(9) <= NOT clk_div(9);
ALT_INV_clk_div(2) <= NOT clk_div(2);
ALT_INV_clk_div(3) <= NOT clk_div(3);

-- Location: IOOBUF_X36_Y45_N53
\HEX0[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_count[0]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_HEX0(0));

-- Location: IOOBUF_X33_Y0_N93
\HEX0[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(1));

-- Location: IOOBUF_X33_Y0_N42
\HEX0[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(2));

-- Location: IOOBUF_X25_Y0_N19
\HEX0[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(3));

-- Location: IOOBUF_X23_Y0_N76
\HEX0[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(4));

-- Location: IOOBUF_X38_Y45_N36
\HEX0[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_count[0]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_HEX0(5));

-- Location: IOOBUF_X34_Y0_N53
\HEX0[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => count(1),
	devoe => ww_devoe,
	o => ww_HEX0(6));

-- Location: IOOBUF_X36_Y45_N19
\HEX1[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \count[0]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_HEX1(0));

-- Location: IOOBUF_X29_Y0_N2
\HEX1[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux7~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(1));

-- Location: IOOBUF_X29_Y0_N36
\HEX1[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux7~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(2));

-- Location: IOOBUF_X34_Y0_N19
\HEX1[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(3));

-- Location: IOOBUF_X34_Y0_N2
\HEX1[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(4));

-- Location: IOOBUF_X36_Y45_N36
\HEX1[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \count[0]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_HEX1(5));

-- Location: IOOBUF_X24_Y0_N19
\HEX1[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(6));

-- Location: IOOBUF_X40_Y0_N42
\HEX2[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_count[0]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_HEX2(0));

-- Location: IOOBUF_X36_Y0_N2
\HEX2[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~2_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(1));

-- Location: IOOBUF_X36_Y0_N19
\HEX2[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~2_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(2));

-- Location: IOOBUF_X33_Y0_N59
\HEX2[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux7~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(3));

-- Location: IOOBUF_X33_Y0_N76
\HEX2[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux7~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(4));

-- Location: IOOBUF_X34_Y45_N53
\HEX2[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_count[0]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_HEX2(5));

-- Location: IOOBUF_X34_Y0_N36
\HEX2[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_count(1),
	devoe => ww_devoe,
	o => ww_HEX2(6));

-- Location: IOOBUF_X32_Y45_N59
\HEX3[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \count[0]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_HEX3(0));

-- Location: IOOBUF_X23_Y0_N42
\HEX3[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(1));

-- Location: IOOBUF_X25_Y0_N2
\HEX3[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(2));

-- Location: IOOBUF_X36_Y0_N53
\HEX3[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~2_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(3));

-- Location: IOOBUF_X36_Y0_N36
\HEX3[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~2_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(4));

-- Location: IOOBUF_X40_Y0_N59
\HEX3[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \count[0]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_HEX3(5));

-- Location: IOOBUF_X24_Y0_N53
\HEX3[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(6));

-- Location: IOIBUF_X54_Y18_N61
\CLK~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: CLKCTRL_G10
\CLK~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~input_o\,
	outclk => \CLK~inputCLKENA0_outclk\);

-- Location: IOIBUF_X29_Y0_N18
\RESET~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RESET,
	o => \RESET~input_o\);

-- Location: FF_X28_Y3_N41
\count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \count[0]~0_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(0));

-- Location: LABCELL_X29_Y4_N0
\Add1~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~85_sumout\ = SUM(( clk_div(0) ) + ( VCC ) + ( !VCC ))
-- \Add1~86\ = CARRY(( clk_div(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_clk_div(0),
	cin => GND,
	sumout => \Add1~85_sumout\,
	cout => \Add1~86\);

-- Location: FF_X29_Y4_N2
\clk_div[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add1~85_sumout\,
	clrn => \ALT_INV_RESET~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div(0));

-- Location: LABCELL_X29_Y4_N3
\Add1~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~73_sumout\ = SUM(( clk_div(1) ) + ( GND ) + ( \Add1~86\ ))
-- \Add1~74\ = CARRY(( clk_div(1) ) + ( GND ) + ( \Add1~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_clk_div(1),
	cin => \Add1~86\,
	sumout => \Add1~73_sumout\,
	cout => \Add1~74\);

-- Location: FF_X29_Y4_N5
\clk_div[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add1~73_sumout\,
	clrn => \ALT_INV_RESET~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div(1));

-- Location: LABCELL_X29_Y4_N6
\Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~5_sumout\ = SUM(( clk_div(2) ) + ( GND ) + ( \Add1~74\ ))
-- \Add1~6\ = CARRY(( clk_div(2) ) + ( GND ) + ( \Add1~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_clk_div(2),
	cin => \Add1~74\,
	sumout => \Add1~5_sumout\,
	cout => \Add1~6\);

-- Location: FF_X29_Y4_N7
\clk_div[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add1~5_sumout\,
	clrn => \ALT_INV_RESET~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div(2));

-- Location: LABCELL_X29_Y4_N9
\Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~1_sumout\ = SUM(( clk_div(3) ) + ( GND ) + ( \Add1~6\ ))
-- \Add1~2\ = CARRY(( clk_div(3) ) + ( GND ) + ( \Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_clk_div(3),
	cin => \Add1~6\,
	sumout => \Add1~1_sumout\,
	cout => \Add1~2\);

-- Location: FF_X29_Y4_N11
\clk_div[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add1~1_sumout\,
	clrn => \ALT_INV_RESET~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div(3));

-- Location: LABCELL_X29_Y4_N12
\Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~29_sumout\ = SUM(( clk_div(4) ) + ( GND ) + ( \Add1~2\ ))
-- \Add1~30\ = CARRY(( clk_div(4) ) + ( GND ) + ( \Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_clk_div(4),
	cin => \Add1~2\,
	sumout => \Add1~29_sumout\,
	cout => \Add1~30\);

-- Location: FF_X29_Y4_N14
\clk_div[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add1~29_sumout\,
	clrn => \ALT_INV_RESET~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div(4));

-- Location: LABCELL_X29_Y4_N15
\Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~25_sumout\ = SUM(( clk_div(5) ) + ( GND ) + ( \Add1~30\ ))
-- \Add1~26\ = CARRY(( clk_div(5) ) + ( GND ) + ( \Add1~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_clk_div(5),
	cin => \Add1~30\,
	sumout => \Add1~25_sumout\,
	cout => \Add1~26\);

-- Location: FF_X29_Y4_N17
\clk_div[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add1~25_sumout\,
	clrn => \ALT_INV_RESET~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div(5));

-- Location: LABCELL_X29_Y4_N18
\Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~21_sumout\ = SUM(( clk_div(6) ) + ( GND ) + ( \Add1~26\ ))
-- \Add1~22\ = CARRY(( clk_div(6) ) + ( GND ) + ( \Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_clk_div(6),
	cin => \Add1~26\,
	sumout => \Add1~21_sumout\,
	cout => \Add1~22\);

-- Location: FF_X29_Y4_N20
\clk_div[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add1~21_sumout\,
	clrn => \ALT_INV_RESET~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div(6));

-- Location: LABCELL_X29_Y4_N21
\Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~17_sumout\ = SUM(( clk_div(7) ) + ( GND ) + ( \Add1~22\ ))
-- \Add1~18\ = CARRY(( clk_div(7) ) + ( GND ) + ( \Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_clk_div(7),
	cin => \Add1~22\,
	sumout => \Add1~17_sumout\,
	cout => \Add1~18\);

-- Location: FF_X29_Y4_N23
\clk_div[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add1~17_sumout\,
	clrn => \ALT_INV_RESET~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div(7));

-- Location: LABCELL_X29_Y4_N24
\Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~13_sumout\ = SUM(( clk_div(8) ) + ( GND ) + ( \Add1~18\ ))
-- \Add1~14\ = CARRY(( clk_div(8) ) + ( GND ) + ( \Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_clk_div(8),
	cin => \Add1~18\,
	sumout => \Add1~13_sumout\,
	cout => \Add1~14\);

-- Location: FF_X29_Y4_N26
\clk_div[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add1~13_sumout\,
	clrn => \ALT_INV_RESET~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div(8));

-- Location: LABCELL_X29_Y4_N27
\Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~9_sumout\ = SUM(( clk_div(9) ) + ( GND ) + ( \Add1~14\ ))
-- \Add1~10\ = CARRY(( clk_div(9) ) + ( GND ) + ( \Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_clk_div(9),
	cin => \Add1~14\,
	sumout => \Add1~9_sumout\,
	cout => \Add1~10\);

-- Location: FF_X29_Y4_N29
\clk_div[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add1~9_sumout\,
	clrn => \ALT_INV_RESET~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div(9));

-- Location: MLABCELL_X28_Y4_N30
\Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = ( !clk_div(9) & ( !clk_div(8) & ( (!clk_div(5) & (!clk_div(4) & (!clk_div(7) & !clk_div(6)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_clk_div(5),
	datab => ALT_INV_clk_div(4),
	datac => ALT_INV_clk_div(7),
	datad => ALT_INV_clk_div(6),
	datae => ALT_INV_clk_div(9),
	dataf => ALT_INV_clk_div(8),
	combout => \Equal0~1_combout\);

-- Location: LABCELL_X29_Y4_N30
\Add1~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~53_sumout\ = SUM(( clk_div(10) ) + ( GND ) + ( \Add1~10\ ))
-- \Add1~54\ = CARRY(( clk_div(10) ) + ( GND ) + ( \Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_clk_div(10),
	cin => \Add1~10\,
	sumout => \Add1~53_sumout\,
	cout => \Add1~54\);

-- Location: FF_X29_Y4_N31
\clk_div[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add1~53_sumout\,
	clrn => \ALT_INV_RESET~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div(10));

-- Location: LABCELL_X29_Y4_N33
\Add1~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~49_sumout\ = SUM(( clk_div(11) ) + ( GND ) + ( \Add1~54\ ))
-- \Add1~50\ = CARRY(( clk_div(11) ) + ( GND ) + ( \Add1~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_clk_div(11),
	cin => \Add1~54\,
	sumout => \Add1~49_sumout\,
	cout => \Add1~50\);

-- Location: FF_X29_Y4_N35
\clk_div[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add1~49_sumout\,
	clrn => \ALT_INV_RESET~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div(11));

-- Location: LABCELL_X29_Y4_N36
\Add1~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~45_sumout\ = SUM(( clk_div(12) ) + ( GND ) + ( \Add1~50\ ))
-- \Add1~46\ = CARRY(( clk_div(12) ) + ( GND ) + ( \Add1~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_clk_div(12),
	cin => \Add1~50\,
	sumout => \Add1~45_sumout\,
	cout => \Add1~46\);

-- Location: FF_X29_Y4_N38
\clk_div[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add1~45_sumout\,
	clrn => \ALT_INV_RESET~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div(12));

-- Location: LABCELL_X29_Y4_N39
\Add1~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~41_sumout\ = SUM(( clk_div(13) ) + ( GND ) + ( \Add1~46\ ))
-- \Add1~42\ = CARRY(( clk_div(13) ) + ( GND ) + ( \Add1~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_clk_div(13),
	cin => \Add1~46\,
	sumout => \Add1~41_sumout\,
	cout => \Add1~42\);

-- Location: FF_X29_Y4_N41
\clk_div[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add1~41_sumout\,
	clrn => \ALT_INV_RESET~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div(13));

-- Location: LABCELL_X29_Y4_N42
\Add1~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~37_sumout\ = SUM(( clk_div(14) ) + ( GND ) + ( \Add1~42\ ))
-- \Add1~38\ = CARRY(( clk_div(14) ) + ( GND ) + ( \Add1~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_clk_div(14),
	cin => \Add1~42\,
	sumout => \Add1~37_sumout\,
	cout => \Add1~38\);

-- Location: FF_X29_Y4_N43
\clk_div[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add1~37_sumout\,
	clrn => \ALT_INV_RESET~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div(14));

-- Location: LABCELL_X29_Y4_N45
\Add1~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~33_sumout\ = SUM(( clk_div(15) ) + ( GND ) + ( \Add1~38\ ))
-- \Add1~34\ = CARRY(( clk_div(15) ) + ( GND ) + ( \Add1~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_clk_div(15),
	cin => \Add1~38\,
	sumout => \Add1~33_sumout\,
	cout => \Add1~34\);

-- Location: FF_X29_Y4_N47
\clk_div[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add1~33_sumout\,
	clrn => \ALT_INV_RESET~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div(15));

-- Location: MLABCELL_X28_Y4_N15
\Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = ( !clk_div(14) & ( !clk_div(13) & ( (!clk_div(11) & (!clk_div(12) & (!clk_div(10) & !clk_div(15)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_clk_div(11),
	datab => ALT_INV_clk_div(12),
	datac => ALT_INV_clk_div(10),
	datad => ALT_INV_clk_div(15),
	datae => ALT_INV_clk_div(14),
	dataf => ALT_INV_clk_div(13),
	combout => \Equal0~2_combout\);

-- Location: FF_X29_Y4_N8
\clk_div[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add1~5_sumout\,
	clrn => \ALT_INV_RESET~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div[2]~DUPLICATE_q\);

-- Location: MLABCELL_X28_Y4_N0
\Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = ( !clk_div(3) & ( !\clk_div[2]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => ALT_INV_clk_div(3),
	dataf => \ALT_INV_clk_div[2]~DUPLICATE_q\,
	combout => \Equal0~0_combout\);

-- Location: LABCELL_X29_Y4_N48
\Add1~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~77_sumout\ = SUM(( \clk_div[16]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~34\ ))
-- \Add1~78\ = CARRY(( \clk_div[16]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_clk_div[16]~DUPLICATE_q\,
	cin => \Add1~34\,
	sumout => \Add1~77_sumout\,
	cout => \Add1~78\);

-- Location: FF_X29_Y4_N50
\clk_div[16]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add1~77_sumout\,
	clrn => \ALT_INV_RESET~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div[16]~DUPLICATE_q\);

-- Location: LABCELL_X29_Y4_N51
\Add1~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~81_sumout\ = SUM(( clk_div(17) ) + ( GND ) + ( \Add1~78\ ))
-- \Add1~82\ = CARRY(( clk_div(17) ) + ( GND ) + ( \Add1~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_clk_div(17),
	cin => \Add1~78\,
	sumout => \Add1~81_sumout\,
	cout => \Add1~82\);

-- Location: FF_X29_Y4_N52
\clk_div[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add1~81_sumout\,
	clrn => \ALT_INV_RESET~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div(17));

-- Location: LABCELL_X29_Y4_N54
\Add1~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~69_sumout\ = SUM(( clk_div(18) ) + ( GND ) + ( \Add1~82\ ))
-- \Add1~70\ = CARRY(( clk_div(18) ) + ( GND ) + ( \Add1~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_clk_div(18),
	cin => \Add1~82\,
	sumout => \Add1~69_sumout\,
	cout => \Add1~70\);

-- Location: FF_X29_Y4_N56
\clk_div[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add1~69_sumout\,
	clrn => \ALT_INV_RESET~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div(18));

-- Location: LABCELL_X29_Y4_N57
\Add1~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~65_sumout\ = SUM(( \clk_div[19]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~70\ ))
-- \Add1~66\ = CARRY(( \clk_div[19]~DUPLICATE_q\ ) + ( GND ) + ( \Add1~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_clk_div[19]~DUPLICATE_q\,
	cin => \Add1~70\,
	sumout => \Add1~65_sumout\,
	cout => \Add1~66\);

-- Location: FF_X29_Y3_N40
\clk_div[19]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \Add1~65_sumout\,
	clrn => \ALT_INV_RESET~input_o\,
	sclr => \Equal0~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div[19]~DUPLICATE_q\);

-- Location: LABCELL_X29_Y3_N0
\Add1~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~61_sumout\ = SUM(( clk_div(20) ) + ( GND ) + ( \Add1~66\ ))
-- \Add1~62\ = CARRY(( clk_div(20) ) + ( GND ) + ( \Add1~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_clk_div(20),
	cin => \Add1~66\,
	sumout => \Add1~61_sumout\,
	cout => \Add1~62\);

-- Location: FF_X29_Y3_N2
\clk_div[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add1~61_sumout\,
	clrn => \ALT_INV_RESET~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div(20));

-- Location: LABCELL_X29_Y3_N3
\Add1~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~57_sumout\ = SUM(( clk_div(21) ) + ( GND ) + ( \Add1~62\ ))
-- \Add1~58\ = CARRY(( clk_div(21) ) + ( GND ) + ( \Add1~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_clk_div(21),
	cin => \Add1~62\,
	sumout => \Add1~57_sumout\,
	cout => \Add1~58\);

-- Location: FF_X29_Y3_N5
\clk_div[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add1~57_sumout\,
	clrn => \ALT_INV_RESET~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div(21));

-- Location: LABCELL_X29_Y3_N6
\Add1~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~125_sumout\ = SUM(( clk_div(22) ) + ( GND ) + ( \Add1~58\ ))
-- \Add1~126\ = CARRY(( clk_div(22) ) + ( GND ) + ( \Add1~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_clk_div(22),
	cin => \Add1~58\,
	sumout => \Add1~125_sumout\,
	cout => \Add1~126\);

-- Location: FF_X29_Y3_N7
\clk_div[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add1~125_sumout\,
	clrn => \ALT_INV_RESET~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div(22));

-- Location: LABCELL_X29_Y3_N9
\Add1~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~121_sumout\ = SUM(( clk_div(23) ) + ( GND ) + ( \Add1~126\ ))
-- \Add1~122\ = CARRY(( clk_div(23) ) + ( GND ) + ( \Add1~126\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_clk_div(23),
	cin => \Add1~126\,
	sumout => \Add1~121_sumout\,
	cout => \Add1~122\);

-- Location: FF_X29_Y3_N11
\clk_div[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add1~121_sumout\,
	clrn => \ALT_INV_RESET~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div(23));

-- Location: LABCELL_X29_Y3_N12
\Add1~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~117_sumout\ = SUM(( clk_div(24) ) + ( GND ) + ( \Add1~122\ ))
-- \Add1~118\ = CARRY(( clk_div(24) ) + ( GND ) + ( \Add1~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_clk_div(24),
	cin => \Add1~122\,
	sumout => \Add1~117_sumout\,
	cout => \Add1~118\);

-- Location: FF_X29_Y3_N14
\clk_div[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add1~117_sumout\,
	clrn => \ALT_INV_RESET~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div(24));

-- Location: LABCELL_X29_Y3_N15
\Add1~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~113_sumout\ = SUM(( clk_div(25) ) + ( GND ) + ( \Add1~118\ ))
-- \Add1~114\ = CARRY(( clk_div(25) ) + ( GND ) + ( \Add1~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_clk_div(25),
	cin => \Add1~118\,
	sumout => \Add1~113_sumout\,
	cout => \Add1~114\);

-- Location: FF_X29_Y3_N17
\clk_div[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add1~113_sumout\,
	clrn => \ALT_INV_RESET~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div(25));

-- Location: LABCELL_X29_Y3_N18
\Add1~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~109_sumout\ = SUM(( clk_div(26) ) + ( GND ) + ( \Add1~114\ ))
-- \Add1~110\ = CARRY(( clk_div(26) ) + ( GND ) + ( \Add1~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_clk_div(26),
	cin => \Add1~114\,
	sumout => \Add1~109_sumout\,
	cout => \Add1~110\);

-- Location: FF_X29_Y3_N20
\clk_div[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add1~109_sumout\,
	clrn => \ALT_INV_RESET~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div(26));

-- Location: LABCELL_X29_Y3_N21
\Add1~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~105_sumout\ = SUM(( clk_div(27) ) + ( GND ) + ( \Add1~110\ ))
-- \Add1~106\ = CARRY(( clk_div(27) ) + ( GND ) + ( \Add1~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_clk_div(27),
	cin => \Add1~110\,
	sumout => \Add1~105_sumout\,
	cout => \Add1~106\);

-- Location: FF_X29_Y3_N23
\clk_div[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add1~105_sumout\,
	clrn => \ALT_INV_RESET~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div(27));

-- Location: LABCELL_X29_Y3_N24
\Add1~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~101_sumout\ = SUM(( clk_div(28) ) + ( GND ) + ( \Add1~106\ ))
-- \Add1~102\ = CARRY(( clk_div(28) ) + ( GND ) + ( \Add1~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_clk_div(28),
	cin => \Add1~106\,
	sumout => \Add1~101_sumout\,
	cout => \Add1~102\);

-- Location: FF_X29_Y3_N26
\clk_div[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add1~101_sumout\,
	clrn => \ALT_INV_RESET~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div(28));

-- Location: LABCELL_X29_Y3_N27
\Add1~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~97_sumout\ = SUM(( clk_div(29) ) + ( GND ) + ( \Add1~102\ ))
-- \Add1~98\ = CARRY(( clk_div(29) ) + ( GND ) + ( \Add1~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_clk_div(29),
	cin => \Add1~102\,
	sumout => \Add1~97_sumout\,
	cout => \Add1~98\);

-- Location: FF_X29_Y3_N29
\clk_div[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add1~97_sumout\,
	clrn => \ALT_INV_RESET~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div(29));

-- Location: LABCELL_X29_Y3_N30
\Add1~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~93_sumout\ = SUM(( clk_div(30) ) + ( GND ) + ( \Add1~98\ ))
-- \Add1~94\ = CARRY(( clk_div(30) ) + ( GND ) + ( \Add1~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_clk_div(30),
	cin => \Add1~98\,
	sumout => \Add1~93_sumout\,
	cout => \Add1~94\);

-- Location: FF_X29_Y3_N32
\clk_div[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add1~93_sumout\,
	clrn => \ALT_INV_RESET~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div(30));

-- Location: LABCELL_X29_Y3_N33
\Add1~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~89_sumout\ = SUM(( clk_div(31) ) + ( GND ) + ( \Add1~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_clk_div(31),
	cin => \Add1~94\,
	sumout => \Add1~89_sumout\);

-- Location: FF_X29_Y3_N35
\clk_div[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add1~89_sumout\,
	clrn => \ALT_INV_RESET~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div(31));

-- Location: FF_X29_Y4_N1
\clk_div[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add1~85_sumout\,
	clrn => \ALT_INV_RESET~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div[0]~DUPLICATE_q\);

-- Location: LABCELL_X29_Y3_N48
\Equal0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = ( \clk_div[0]~DUPLICATE_q\ & ( !clk_div(28) & ( (!clk_div(31) & (!clk_div(30) & (!clk_div(29) & !clk_div(17)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_clk_div(31),
	datab => ALT_INV_clk_div(30),
	datac => ALT_INV_clk_div(29),
	datad => ALT_INV_clk_div(17),
	datae => \ALT_INV_clk_div[0]~DUPLICATE_q\,
	dataf => ALT_INV_clk_div(28),
	combout => \Equal0~4_combout\);

-- Location: LABCELL_X29_Y3_N57
\Equal0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = ( !clk_div(27) & ( !clk_div(23) & ( (!clk_div(22) & (!clk_div(24) & (!clk_div(25) & !clk_div(26)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_clk_div(22),
	datab => ALT_INV_clk_div(24),
	datac => ALT_INV_clk_div(25),
	datad => ALT_INV_clk_div(26),
	datae => ALT_INV_clk_div(27),
	dataf => ALT_INV_clk_div(23),
	combout => \Equal0~5_combout\);

-- Location: FF_X29_Y3_N41
\clk_div[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \Add1~65_sumout\,
	clrn => \ALT_INV_RESET~input_o\,
	sclr => \Equal0~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div(19));

-- Location: FF_X29_Y4_N4
\clk_div[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add1~73_sumout\,
	clrn => \ALT_INV_RESET~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div[1]~DUPLICATE_q\);

-- Location: FF_X29_Y4_N49
\clk_div[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add1~77_sumout\,
	clrn => \ALT_INV_RESET~input_o\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div(16));

-- Location: LABCELL_X29_Y3_N42
\Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = ( !clk_div(20) & ( !clk_div(18) & ( (!clk_div(21) & (!clk_div(19) & (\clk_div[1]~DUPLICATE_q\ & !clk_div(16)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_clk_div(21),
	datab => ALT_INV_clk_div(19),
	datac => \ALT_INV_clk_div[1]~DUPLICATE_q\,
	datad => ALT_INV_clk_div(16),
	datae => ALT_INV_clk_div(20),
	dataf => ALT_INV_clk_div(18),
	combout => \Equal0~3_combout\);

-- Location: LABCELL_X29_Y3_N36
\Equal0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = ( \Equal0~5_combout\ & ( \Equal0~3_combout\ & ( (\Equal0~1_combout\ & (\Equal0~2_combout\ & (\Equal0~0_combout\ & \Equal0~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~1_combout\,
	datab => \ALT_INV_Equal0~2_combout\,
	datac => \ALT_INV_Equal0~0_combout\,
	datad => \ALT_INV_Equal0~4_combout\,
	datae => \ALT_INV_Equal0~5_combout\,
	dataf => \ALT_INV_Equal0~3_combout\,
	combout => \Equal0~6_combout\);

-- Location: MLABCELL_X28_Y3_N39
\count[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \count[0]~0_combout\ = ( !count(0) & ( \Equal0~6_combout\ ) ) # ( count(0) & ( !\Equal0~6_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => ALT_INV_count(0),
	dataf => \ALT_INV_Equal0~6_combout\,
	combout => \count[0]~0_combout\);

-- Location: FF_X28_Y3_N40
\count[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \count[0]~0_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count[0]~DUPLICATE_q\);

-- Location: MLABCELL_X28_Y3_N42
\count[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \count[1]~1_combout\ = ( count(1) & ( \Equal0~6_combout\ & ( !count(0) ) ) ) # ( !count(1) & ( \Equal0~6_combout\ & ( count(0) ) ) ) # ( count(1) & ( !\Equal0~6_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111111111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_count(0),
	datae => ALT_INV_count(1),
	dataf => \ALT_INV_Equal0~6_combout\,
	combout => \count[1]~1_combout\);

-- Location: FF_X28_Y3_N43
\count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \count[1]~1_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(1));

-- Location: MLABCELL_X28_Y3_N27
\Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = ( !count(1) & ( \count[0]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000001010101010101010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_count[0]~DUPLICATE_q\,
	datae => ALT_INV_count(1),
	combout => \Mux2~0_combout\);

-- Location: MLABCELL_X28_Y3_N54
\Mux2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux2~1_combout\ = ( count(1) & ( !\count[0]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_count[0]~DUPLICATE_q\,
	datae => ALT_INV_count(1),
	combout => \Mux2~1_combout\);

-- Location: MLABCELL_X28_Y3_N3
\Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = ( count(1) ) # ( !count(1) & ( \count[0]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101111111111111111101010101010101011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_count[0]~DUPLICATE_q\,
	datae => ALT_INV_count(1),
	combout => \Mux7~0_combout\);

-- Location: MLABCELL_X28_Y3_N30
\Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = ( count(1) & ( !\count[0]~DUPLICATE_q\ ) ) # ( !count(1) & ( \count[0]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111100001111000000001111000011111111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_count[0]~DUPLICATE_q\,
	datae => ALT_INV_count(1),
	combout => \Mux4~0_combout\);

-- Location: MLABCELL_X28_Y3_N15
\Mux2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux2~2_combout\ = ( count(1) & ( \count[0]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_count[0]~DUPLICATE_q\,
	datae => ALT_INV_count(1),
	combout => \Mux2~2_combout\);

-- Location: LABCELL_X12_Y24_N3
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


