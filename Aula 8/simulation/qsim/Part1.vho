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

-- DATE "10/08/2024 17:30:24"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
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

ENTITY 	fsm IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	w : IN std_logic;
	z : BUFFER std_logic
	);
END fsm;

-- Design Ports Information
-- z	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF fsm IS
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
SIGNAL ww_w : std_logic;
SIGNAL ww_z : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \w~input_o\ : std_logic;
SIGNAL \state.A_0~feeder_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \state.A_0~q\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \state.B_0~q\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \state.C_0~q\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \state.D_0~q\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \state.E_1~q\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \state.F_0~q\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \state.G_0~q\ : std_logic;
SIGNAL \Selector7~0_combout\ : std_logic;
SIGNAL \state.H_0~q\ : std_logic;
SIGNAL \Selector8~0_combout\ : std_logic;
SIGNAL \state.I_1~q\ : std_logic;
SIGNAL \WideNor0~combout\ : std_logic;
SIGNAL \ALT_INV_w~input_o\ : std_logic;
SIGNAL \ALT_INV_reset~input_o\ : std_logic;
SIGNAL \ALT_INV_state.A_0~q\ : std_logic;
SIGNAL \ALT_INV_state.F_0~q\ : std_logic;
SIGNAL \ALT_INV_state.B_0~q\ : std_logic;
SIGNAL \ALT_INV_state.G_0~q\ : std_logic;
SIGNAL \ALT_INV_state.C_0~q\ : std_logic;
SIGNAL \ALT_INV_state.H_0~q\ : std_logic;
SIGNAL \ALT_INV_state.D_0~q\ : std_logic;
SIGNAL \ALT_INV_state.I_1~q\ : std_logic;
SIGNAL \ALT_INV_state.E_1~q\ : std_logic;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_w <= w;
z <= ww_z;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_w~input_o\ <= NOT \w~input_o\;
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;
\ALT_INV_state.A_0~q\ <= NOT \state.A_0~q\;
\ALT_INV_state.F_0~q\ <= NOT \state.F_0~q\;
\ALT_INV_state.B_0~q\ <= NOT \state.B_0~q\;
\ALT_INV_state.G_0~q\ <= NOT \state.G_0~q\;
\ALT_INV_state.C_0~q\ <= NOT \state.C_0~q\;
\ALT_INV_state.H_0~q\ <= NOT \state.H_0~q\;
\ALT_INV_state.D_0~q\ <= NOT \state.D_0~q\;
\ALT_INV_state.I_1~q\ <= NOT \state.I_1~q\;
\ALT_INV_state.E_1~q\ <= NOT \state.E_1~q\;

-- Location: IOOBUF_X8_Y0_N36
\z~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \WideNor0~combout\,
	devoe => ww_devoe,
	o => ww_z);

-- Location: IOIBUF_X89_Y35_N61
\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G10
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

-- Location: IOIBUF_X8_Y0_N52
\w~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w,
	o => \w~input_o\);

-- Location: LABCELL_X9_Y1_N9
\state.A_0~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \state.A_0~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \state.A_0~feeder_combout\);

-- Location: IOIBUF_X8_Y0_N1
\reset~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: FF_X9_Y1_N11
\state.A_0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \state.A_0~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.A_0~q\);

-- Location: LABCELL_X9_Y1_N36
\Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = ( \state.G_0~q\ & ( \state.I_1~q\ & ( !\w~input_o\ ) ) ) # ( !\state.G_0~q\ & ( \state.I_1~q\ & ( !\w~input_o\ ) ) ) # ( \state.G_0~q\ & ( !\state.I_1~q\ & ( !\w~input_o\ ) ) ) # ( !\state.G_0~q\ & ( !\state.I_1~q\ & ( 
-- (!\w~input_o\ & (((!\state.A_0~q\) # (\state.H_0~q\)) # (\state.F_0~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_w~input_o\,
	datab => \ALT_INV_state.F_0~q\,
	datac => \ALT_INV_state.H_0~q\,
	datad => \ALT_INV_state.A_0~q\,
	datae => \ALT_INV_state.G_0~q\,
	dataf => \ALT_INV_state.I_1~q\,
	combout => \Selector1~0_combout\);

-- Location: FF_X9_Y1_N38
\state.B_0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector1~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.B_0~q\);

-- Location: LABCELL_X9_Y1_N51
\Selector2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = ( !\w~input_o\ & ( \state.B_0~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_w~input_o\,
	dataf => \ALT_INV_state.B_0~q\,
	combout => \Selector2~0_combout\);

-- Location: FF_X9_Y1_N53
\state.C_0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector2~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.C_0~q\);

-- Location: LABCELL_X9_Y1_N12
\Selector3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = ( !\w~input_o\ & ( \state.C_0~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_w~input_o\,
	dataf => \ALT_INV_state.C_0~q\,
	combout => \Selector3~0_combout\);

-- Location: FF_X9_Y1_N14
\state.D_0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector3~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.D_0~q\);

-- Location: LABCELL_X9_Y1_N24
\Selector4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = ( \state.E_1~q\ & ( \state.D_0~q\ ) ) # ( !\state.E_1~q\ & ( \state.D_0~q\ ) ) # ( \state.E_1~q\ & ( !\state.D_0~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_state.E_1~q\,
	dataf => \ALT_INV_state.D_0~q\,
	combout => \Selector4~0_combout\);

-- Location: FF_X9_Y1_N26
\state.E_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector4~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \w~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.E_1~q\);

-- Location: LABCELL_X9_Y1_N42
\Selector5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = ( \state.B_0~q\ & ( \state.E_1~q\ & ( \w~input_o\ ) ) ) # ( !\state.B_0~q\ & ( \state.E_1~q\ & ( \w~input_o\ ) ) ) # ( \state.B_0~q\ & ( !\state.E_1~q\ & ( \w~input_o\ ) ) ) # ( !\state.B_0~q\ & ( !\state.E_1~q\ & ( (\w~input_o\ & 
-- ((!\state.A_0~q\) # ((\state.D_0~q\) # (\state.C_0~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_w~input_o\,
	datab => \ALT_INV_state.A_0~q\,
	datac => \ALT_INV_state.C_0~q\,
	datad => \ALT_INV_state.D_0~q\,
	datae => \ALT_INV_state.B_0~q\,
	dataf => \ALT_INV_state.E_1~q\,
	combout => \Selector5~0_combout\);

-- Location: FF_X9_Y1_N44
\state.F_0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector5~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.F_0~q\);

-- Location: LABCELL_X9_Y1_N54
\Selector6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = ( \w~input_o\ & ( \state.F_0~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_w~input_o\,
	dataf => \ALT_INV_state.F_0~q\,
	combout => \Selector6~0_combout\);

-- Location: FF_X9_Y1_N56
\state.G_0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector6~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.G_0~q\);

-- Location: LABCELL_X9_Y1_N33
\Selector7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector7~0_combout\ = ( \w~input_o\ & ( \state.G_0~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_w~input_o\,
	dataf => \ALT_INV_state.G_0~q\,
	combout => \Selector7~0_combout\);

-- Location: FF_X9_Y1_N35
\state.H_0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector7~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.H_0~q\);

-- Location: MLABCELL_X8_Y1_N3
\Selector8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector8~0_combout\ = ( \state.I_1~q\ & ( \state.H_0~q\ ) ) # ( !\state.I_1~q\ & ( \state.H_0~q\ ) ) # ( \state.I_1~q\ & ( !\state.H_0~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_state.I_1~q\,
	dataf => \ALT_INV_state.H_0~q\,
	combout => \Selector8~0_combout\);

-- Location: FF_X8_Y1_N5
\state.I_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector8~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \ALT_INV_w~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.I_1~q\);

-- Location: LABCELL_X9_Y1_N6
WideNor0 : cyclonev_lcell_comb
-- Equation(s):
-- \WideNor0~combout\ = ( \state.E_1~q\ ) # ( !\state.E_1~q\ & ( \state.I_1~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_state.I_1~q\,
	dataf => \ALT_INV_state.E_1~q\,
	combout => \WideNor0~combout\);

-- Location: LABCELL_X29_Y47_N0
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


