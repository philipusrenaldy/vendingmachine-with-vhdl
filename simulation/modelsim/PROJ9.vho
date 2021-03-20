-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "05/04/2020 16:53:55"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	VM IS
    PORT (
	CHITEM : IN std_logic_vector(2 DOWNTO 0);
	MoneyIn : IN std_logic_vector(2 DOWNTO 0);
	MoneyOut : INOUT std_logic_vector(2 DOWNTO 0);
	wren : IN std_logic;
	alamat : IN std_logic_vector(4 DOWNTO 0);
	q : OUT std_logic_vector(3 DOWNTO 0);
	CLK : IN std_logic
	);
END VM;

-- Design Ports Information
-- q[0]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[1]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[2]	=>  Location: PIN_Y20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[3]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MoneyOut[0]	=>  Location: PIN_U16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MoneyOut[1]	=>  Location: PIN_U17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MoneyOut[2]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wren	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alamat[0]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alamat[1]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alamat[2]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alamat[3]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alamat[4]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MoneyIn[0]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MoneyIn[1]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MoneyIn[2]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CHITEM[0]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CHITEM[1]	=>  Location: PIN_V19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CHITEM[2]	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF VM IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CHITEM : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_MoneyIn : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_wren : std_logic;
SIGNAL ww_alamat : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_q : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_CLK : std_logic;
SIGNAL \RAM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \RAM|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \RAM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \MoneyOut[0]~input_o\ : std_logic;
SIGNAL \MoneyOut[1]~input_o\ : std_logic;
SIGNAL \MoneyOut[2]~input_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputCLKENA0_outclk\ : std_logic;
SIGNAL \CHITEM[1]~input_o\ : std_logic;
SIGNAL \MoneyIn[2]~input_o\ : std_logic;
SIGNAL \MoneyIn[0]~input_o\ : std_logic;
SIGNAL \CHITEM[0]~input_o\ : std_logic;
SIGNAL \CHITEM[2]~input_o\ : std_logic;
SIGNAL \NEXT_STATE.Chips~0_combout\ : std_logic;
SIGNAL \STATE.Chips~q\ : std_logic;
SIGNAL \NEXT_STATE.Soda~0_combout\ : std_logic;
SIGNAL \STATE.Soda~q\ : std_logic;
SIGNAL \MoneyIn[1]~input_o\ : std_logic;
SIGNAL \NEXT_STATE.coffee~0_combout\ : std_logic;
SIGNAL \STATE.coffee~q\ : std_logic;
SIGNAL \Selector2~2_combout\ : std_logic;
SIGNAL \NEXT_STATE.Doll~0_combout\ : std_logic;
SIGNAL \STATE.Doll~q\ : std_logic;
SIGNAL \WideOr1~1_combout\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \STATE.IDLE~q\ : std_logic;
SIGNAL \Selector2~3_combout\ : std_logic;
SIGNAL \NEXT_STATE.KeyChain~0_combout\ : std_logic;
SIGNAL \STATE.KeyChain~q\ : std_logic;
SIGNAL \NEXT_STATE.Pen~0_combout\ : std_logic;
SIGNAL \STATE.Pen~q\ : std_logic;
SIGNAL \Selector2~1_combout\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \Selector2~4_combout\ : std_logic;
SIGNAL \STATE.PICKITEM~q\ : std_logic;
SIGNAL \NEXT_STATE.Croissant~0_combout\ : std_logic;
SIGNAL \STATE.Croissant~q\ : std_logic;
SIGNAL \WideOr1~0_combout\ : std_logic;
SIGNAL \WideOr1~2_combout\ : std_logic;
SIGNAL \NEXT_STATE.Out61~0_combout\ : std_logic;
SIGNAL \STATE.Out61~q\ : std_logic;
SIGNAL \NEXT_STATE.Out25~0_combout\ : std_logic;
SIGNAL \STATE.Out25~q\ : std_logic;
SIGNAL \NEXT_STATE.Out11~0_combout\ : std_logic;
SIGNAL \STATE.Out11~q\ : std_logic;
SIGNAL \NEXT_STATE.Out31~0_combout\ : std_logic;
SIGNAL \STATE.Out31~q\ : std_logic;
SIGNAL \NEXT_STATE.Out15~0_combout\ : std_logic;
SIGNAL \STATE.Out15~q\ : std_logic;
SIGNAL \NEXT_STATE.Out41~0_combout\ : std_logic;
SIGNAL \STATE.Out41~q\ : std_logic;
SIGNAL \NEXT_STATE.Out51~0_combout\ : std_logic;
SIGNAL \STATE.Out51~q\ : std_logic;
SIGNAL \WideOr14~1_combout\ : std_logic;
SIGNAL \NEXT_STATE.Out21~0_combout\ : std_logic;
SIGNAL \STATE.Out21~q\ : std_logic;
SIGNAL \NEXT_STATE.Out13~0_combout\ : std_logic;
SIGNAL \STATE.Out13~q\ : std_logic;
SIGNAL \NEXT_STATE.Out43~0_combout\ : std_logic;
SIGNAL \STATE.Out43~q\ : std_logic;
SIGNAL \NEXT_STATE.Out33~0_combout\ : std_logic;
SIGNAL \STATE.Out33~q\ : std_logic;
SIGNAL \NEXT_STATE.Out23~0_combout\ : std_logic;
SIGNAL \STATE.Out23~q\ : std_logic;
SIGNAL \WideOr14~0_combout\ : std_logic;
SIGNAL \WideOr14~combout\ : std_logic;
SIGNAL \MoneyOut[0]$latch~combout\ : std_logic;
SIGNAL \NEXT_STATE.Out22~0_combout\ : std_logic;
SIGNAL \STATE.Out22~q\ : std_logic;
SIGNAL \NEXT_STATE.Out32~0_combout\ : std_logic;
SIGNAL \STATE.Out32~q\ : std_logic;
SIGNAL \NEXT_STATE.Out12~0_combout\ : std_logic;
SIGNAL \STATE.Out12~q\ : std_logic;
SIGNAL \NEXT_STATE.Out16~0_combout\ : std_logic;
SIGNAL \STATE.Out16~q\ : std_logic;
SIGNAL \WideOr12~0_combout\ : std_logic;
SIGNAL \NEXT_STATE.Out42~0_combout\ : std_logic;
SIGNAL \STATE.Out42~q\ : std_logic;
SIGNAL \NEXT_STATE.Out52~0_combout\ : std_logic;
SIGNAL \STATE.Out52~q\ : std_logic;
SIGNAL \WideOr12~combout\ : std_logic;
SIGNAL \MoneyOut[1]$latch~combout\ : std_logic;
SIGNAL \NEXT_STATE.Out14~0_combout\ : std_logic;
SIGNAL \STATE.Out14~q\ : std_logic;
SIGNAL \NEXT_STATE.Out24~0_combout\ : std_logic;
SIGNAL \STATE.Out24~q\ : std_logic;
SIGNAL \NEXT_STATE.Out34~0_combout\ : std_logic;
SIGNAL \STATE.Out34~q\ : std_logic;
SIGNAL \WideOr10~combout\ : std_logic;
SIGNAL \MoneyOut[2]$latch~combout\ : std_logic;
SIGNAL \wren~input_o\ : std_logic;
SIGNAL \NEXT_STATE.Out2~0_combout\ : std_logic;
SIGNAL \STATE.Out2~q\ : std_logic;
SIGNAL \NEXT_STATE.Out6~0_combout\ : std_logic;
SIGNAL \STATE.Out6~q\ : std_logic;
SIGNAL \WideOr6~0_combout\ : std_logic;
SIGNAL \NEXT_STATE.Out4~0_combout\ : std_logic;
SIGNAL \STATE.Out4~q\ : std_logic;
SIGNAL \WideOr4~0_combout\ : std_logic;
SIGNAL \WideOr8~combout\ : std_logic;
SIGNAL \alamat[0]~input_o\ : std_logic;
SIGNAL \alamat[1]~input_o\ : std_logic;
SIGNAL \alamat[2]~input_o\ : std_logic;
SIGNAL \alamat[3]~input_o\ : std_logic;
SIGNAL \alamat[4]~input_o\ : std_logic;
SIGNAL \NEXT_STATE.Out3~0_combout\ : std_logic;
SIGNAL \STATE.Out3~q\ : std_logic;
SIGNAL \NEXT_STATE.Out7~0_combout\ : std_logic;
SIGNAL \STATE.Out7~q\ : std_logic;
SIGNAL \WideOr6~1_combout\ : std_logic;
SIGNAL \WideOr6~combout\ : std_logic;
SIGNAL \NEXT_STATE.Out5~0_combout\ : std_logic;
SIGNAL \STATE.Out5~q\ : std_logic;
SIGNAL \WideOr4~1_combout\ : std_logic;
SIGNAL \WideOr4~combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \RAM|altsyncram_component|auto_generated|q_a\ : std_logic_vector(3 DOWNTO 0);
SIGNAL OUTITEM : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_CHITEM[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_CHITEM[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_CHITEM[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_MoneyIn[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_MoneyIn[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_MoneyIn[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_MoneyOut[2]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_MoneyOut[1]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_MoneyOut[0]$latch~combout\ : std_logic;
SIGNAL ALT_INV_OUTITEM : std_logic_vector(2 DOWNTO 0);
SIGNAL \ALT_INV_WideOr4~1_combout\ : std_logic;
SIGNAL \ALT_INV_WideOr10~combout\ : std_logic;
SIGNAL \ALT_INV_STATE.Out14~q\ : std_logic;
SIGNAL \ALT_INV_WideOr12~combout\ : std_logic;
SIGNAL \ALT_INV_WideOr12~0_combout\ : std_logic;
SIGNAL \ALT_INV_STATE.Out16~q\ : std_logic;
SIGNAL \ALT_INV_STATE.Out12~q\ : std_logic;
SIGNAL \ALT_INV_WideOr14~combout\ : std_logic;
SIGNAL \ALT_INV_WideOr14~1_combout\ : std_logic;
SIGNAL \ALT_INV_STATE.Out15~q\ : std_logic;
SIGNAL \ALT_INV_STATE.Out11~q\ : std_logic;
SIGNAL \ALT_INV_WideOr14~0_combout\ : std_logic;
SIGNAL \ALT_INV_STATE.Out13~q\ : std_logic;
SIGNAL \ALT_INV_Selector2~3_combout\ : std_logic;
SIGNAL \ALT_INV_Selector2~2_combout\ : std_logic;
SIGNAL \ALT_INV_Selector2~1_combout\ : std_logic;
SIGNAL \ALT_INV_Selector2~0_combout\ : std_logic;
SIGNAL \ALT_INV_WideOr4~combout\ : std_logic;
SIGNAL \ALT_INV_STATE.Out51~q\ : std_logic;
SIGNAL \ALT_INV_STATE.Out5~q\ : std_logic;
SIGNAL \ALT_INV_STATE.Out52~q\ : std_logic;
SIGNAL \ALT_INV_WideOr6~combout\ : std_logic;
SIGNAL \ALT_INV_WideOr6~1_combout\ : std_logic;
SIGNAL \ALT_INV_STATE.Out33~q\ : std_logic;
SIGNAL \ALT_INV_STATE.Out32~q\ : std_logic;
SIGNAL \ALT_INV_STATE.Out31~q\ : std_logic;
SIGNAL \ALT_INV_STATE.Out7~q\ : std_logic;
SIGNAL \ALT_INV_STATE.Out3~q\ : std_logic;
SIGNAL \ALT_INV_STATE.Out34~q\ : std_logic;
SIGNAL \ALT_INV_WideOr1~2_combout\ : std_logic;
SIGNAL \ALT_INV_WideOr1~1_combout\ : std_logic;
SIGNAL \ALT_INV_STATE.coffee~q\ : std_logic;
SIGNAL \ALT_INV_STATE.Chips~q\ : std_logic;
SIGNAL \ALT_INV_STATE.Doll~q\ : std_logic;
SIGNAL \ALT_INV_WideOr1~0_combout\ : std_logic;
SIGNAL \ALT_INV_STATE.Pen~q\ : std_logic;
SIGNAL \ALT_INV_STATE.KeyChain~q\ : std_logic;
SIGNAL \ALT_INV_STATE.Croissant~q\ : std_logic;
SIGNAL \ALT_INV_STATE.Soda~q\ : std_logic;
SIGNAL \ALT_INV_STATE.PICKITEM~q\ : std_logic;
SIGNAL \ALT_INV_STATE.IDLE~q\ : std_logic;
SIGNAL \ALT_INV_WideOr8~combout\ : std_logic;
SIGNAL \ALT_INV_WideOr4~0_combout\ : std_logic;
SIGNAL \ALT_INV_STATE.Out43~q\ : std_logic;
SIGNAL \ALT_INV_STATE.Out42~q\ : std_logic;
SIGNAL \ALT_INV_STATE.Out41~q\ : std_logic;
SIGNAL \ALT_INV_STATE.Out4~q\ : std_logic;
SIGNAL \ALT_INV_WideOr6~0_combout\ : std_logic;
SIGNAL \ALT_INV_STATE.Out24~q\ : std_logic;
SIGNAL \ALT_INV_STATE.Out23~q\ : std_logic;
SIGNAL \ALT_INV_STATE.Out22~q\ : std_logic;
SIGNAL \ALT_INV_STATE.Out6~q\ : std_logic;
SIGNAL \ALT_INV_STATE.Out2~q\ : std_logic;
SIGNAL \ALT_INV_STATE.Out61~q\ : std_logic;
SIGNAL \ALT_INV_STATE.Out25~q\ : std_logic;
SIGNAL \ALT_INV_STATE.Out21~q\ : std_logic;

BEGIN

ww_CHITEM <= CHITEM;
ww_MoneyIn <= MoneyIn;
ww_wren <= wren;
ww_alamat <= alamat;
q <= ww_q;
ww_CLK <= CLK;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\RAM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & \~GND~combout\ & OUTITEM(2) & OUTITEM(1) & OUTITEM(0));

\RAM|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\alamat[4]~input_o\ & \alamat[3]~input_o\ & \alamat[2]~input_o\ & \alamat[1]~input_o\ & \alamat[0]~input_o\);

\RAM|altsyncram_component|auto_generated|q_a\(0) <= \RAM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\RAM|altsyncram_component|auto_generated|q_a\(1) <= \RAM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\RAM|altsyncram_component|auto_generated|q_a\(2) <= \RAM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\RAM|altsyncram_component|auto_generated|q_a\(3) <= \RAM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\ALT_INV_CHITEM[2]~input_o\ <= NOT \CHITEM[2]~input_o\;
\ALT_INV_CHITEM[1]~input_o\ <= NOT \CHITEM[1]~input_o\;
\ALT_INV_CHITEM[0]~input_o\ <= NOT \CHITEM[0]~input_o\;
\ALT_INV_MoneyIn[2]~input_o\ <= NOT \MoneyIn[2]~input_o\;
\ALT_INV_MoneyIn[1]~input_o\ <= NOT \MoneyIn[1]~input_o\;
\ALT_INV_MoneyIn[0]~input_o\ <= NOT \MoneyIn[0]~input_o\;
\ALT_INV_MoneyOut[2]$latch~combout\ <= NOT \MoneyOut[2]$latch~combout\;
\ALT_INV_MoneyOut[1]$latch~combout\ <= NOT \MoneyOut[1]$latch~combout\;
\ALT_INV_MoneyOut[0]$latch~combout\ <= NOT \MoneyOut[0]$latch~combout\;
ALT_INV_OUTITEM(2) <= NOT OUTITEM(2);
ALT_INV_OUTITEM(1) <= NOT OUTITEM(1);
ALT_INV_OUTITEM(0) <= NOT OUTITEM(0);
\ALT_INV_WideOr4~1_combout\ <= NOT \WideOr4~1_combout\;
\ALT_INV_WideOr10~combout\ <= NOT \WideOr10~combout\;
\ALT_INV_STATE.Out14~q\ <= NOT \STATE.Out14~q\;
\ALT_INV_WideOr12~combout\ <= NOT \WideOr12~combout\;
\ALT_INV_WideOr12~0_combout\ <= NOT \WideOr12~0_combout\;
\ALT_INV_STATE.Out16~q\ <= NOT \STATE.Out16~q\;
\ALT_INV_STATE.Out12~q\ <= NOT \STATE.Out12~q\;
\ALT_INV_WideOr14~combout\ <= NOT \WideOr14~combout\;
\ALT_INV_WideOr14~1_combout\ <= NOT \WideOr14~1_combout\;
\ALT_INV_STATE.Out15~q\ <= NOT \STATE.Out15~q\;
\ALT_INV_STATE.Out11~q\ <= NOT \STATE.Out11~q\;
\ALT_INV_WideOr14~0_combout\ <= NOT \WideOr14~0_combout\;
\ALT_INV_STATE.Out13~q\ <= NOT \STATE.Out13~q\;
\ALT_INV_Selector2~3_combout\ <= NOT \Selector2~3_combout\;
\ALT_INV_Selector2~2_combout\ <= NOT \Selector2~2_combout\;
\ALT_INV_Selector2~1_combout\ <= NOT \Selector2~1_combout\;
\ALT_INV_Selector2~0_combout\ <= NOT \Selector2~0_combout\;
\ALT_INV_WideOr4~combout\ <= NOT \WideOr4~combout\;
\ALT_INV_STATE.Out51~q\ <= NOT \STATE.Out51~q\;
\ALT_INV_STATE.Out5~q\ <= NOT \STATE.Out5~q\;
\ALT_INV_STATE.Out52~q\ <= NOT \STATE.Out52~q\;
\ALT_INV_WideOr6~combout\ <= NOT \WideOr6~combout\;
\ALT_INV_WideOr6~1_combout\ <= NOT \WideOr6~1_combout\;
\ALT_INV_STATE.Out33~q\ <= NOT \STATE.Out33~q\;
\ALT_INV_STATE.Out32~q\ <= NOT \STATE.Out32~q\;
\ALT_INV_STATE.Out31~q\ <= NOT \STATE.Out31~q\;
\ALT_INV_STATE.Out7~q\ <= NOT \STATE.Out7~q\;
\ALT_INV_STATE.Out3~q\ <= NOT \STATE.Out3~q\;
\ALT_INV_STATE.Out34~q\ <= NOT \STATE.Out34~q\;
\ALT_INV_WideOr1~2_combout\ <= NOT \WideOr1~2_combout\;
\ALT_INV_WideOr1~1_combout\ <= NOT \WideOr1~1_combout\;
\ALT_INV_STATE.coffee~q\ <= NOT \STATE.coffee~q\;
\ALT_INV_STATE.Chips~q\ <= NOT \STATE.Chips~q\;
\ALT_INV_STATE.Doll~q\ <= NOT \STATE.Doll~q\;
\ALT_INV_WideOr1~0_combout\ <= NOT \WideOr1~0_combout\;
\ALT_INV_STATE.Pen~q\ <= NOT \STATE.Pen~q\;
\ALT_INV_STATE.KeyChain~q\ <= NOT \STATE.KeyChain~q\;
\ALT_INV_STATE.Croissant~q\ <= NOT \STATE.Croissant~q\;
\ALT_INV_STATE.Soda~q\ <= NOT \STATE.Soda~q\;
\ALT_INV_STATE.PICKITEM~q\ <= NOT \STATE.PICKITEM~q\;
\ALT_INV_STATE.IDLE~q\ <= NOT \STATE.IDLE~q\;
\ALT_INV_WideOr8~combout\ <= NOT \WideOr8~combout\;
\ALT_INV_WideOr4~0_combout\ <= NOT \WideOr4~0_combout\;
\ALT_INV_STATE.Out43~q\ <= NOT \STATE.Out43~q\;
\ALT_INV_STATE.Out42~q\ <= NOT \STATE.Out42~q\;
\ALT_INV_STATE.Out41~q\ <= NOT \STATE.Out41~q\;
\ALT_INV_STATE.Out4~q\ <= NOT \STATE.Out4~q\;
\ALT_INV_WideOr6~0_combout\ <= NOT \WideOr6~0_combout\;
\ALT_INV_STATE.Out24~q\ <= NOT \STATE.Out24~q\;
\ALT_INV_STATE.Out23~q\ <= NOT \STATE.Out23~q\;
\ALT_INV_STATE.Out22~q\ <= NOT \STATE.Out22~q\;
\ALT_INV_STATE.Out6~q\ <= NOT \STATE.Out6~q\;
\ALT_INV_STATE.Out2~q\ <= NOT \STATE.Out2~q\;
\ALT_INV_STATE.Out61~q\ <= NOT \STATE.Out61~q\;
\ALT_INV_STATE.Out25~q\ <= NOT \STATE.Out25~q\;
\ALT_INV_STATE.Out21~q\ <= NOT \STATE.Out21~q\;

-- Location: IOOBUF_X66_Y0_N76
\q[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|altsyncram_component|auto_generated|q_a\(0),
	devoe => ww_devoe,
	o => ww_q(0));

-- Location: IOOBUF_X66_Y0_N93
\q[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|altsyncram_component|auto_generated|q_a\(1),
	devoe => ww_devoe,
	o => ww_q(1));

-- Location: IOOBUF_X66_Y0_N59
\q[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|altsyncram_component|auto_generated|q_a\(2),
	devoe => ww_devoe,
	o => ww_q(2));

-- Location: IOOBUF_X64_Y0_N19
\q[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|altsyncram_component|auto_generated|q_a\(3),
	devoe => ww_devoe,
	o => ww_q(3));

-- Location: IOOBUF_X72_Y0_N19
\MoneyOut[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MoneyOut[0]$latch~combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => MoneyOut(0));

-- Location: IOOBUF_X72_Y0_N2
\MoneyOut[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MoneyOut[1]$latch~combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => MoneyOut(1));

-- Location: IOOBUF_X72_Y0_N53
\MoneyOut[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MoneyOut[2]$latch~combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => MoneyOut(2));

-- Location: IOIBUF_X89_Y35_N61
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

-- Location: IOIBUF_X70_Y0_N18
\CHITEM[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CHITEM(1),
	o => \CHITEM[1]~input_o\);

-- Location: IOIBUF_X70_Y0_N1
\MoneyIn[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MoneyIn(2),
	o => \MoneyIn[2]~input_o\);

-- Location: IOIBUF_X70_Y0_N52
\MoneyIn[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MoneyIn(0),
	o => \MoneyIn[0]~input_o\);

-- Location: IOIBUF_X68_Y0_N18
\CHITEM[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CHITEM(0),
	o => \CHITEM[0]~input_o\);

-- Location: IOIBUF_X72_Y0_N35
\CHITEM[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CHITEM(2),
	o => \CHITEM[2]~input_o\);

-- Location: LABCELL_X73_Y2_N57
\NEXT_STATE.Chips~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \NEXT_STATE.Chips~0_combout\ = ( \STATE.PICKITEM~q\ & ( (!\CHITEM[0]~input_o\ & (\CHITEM[1]~input_o\ & !\CHITEM[2]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100010000000000010001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_CHITEM[0]~input_o\,
	datab => \ALT_INV_CHITEM[1]~input_o\,
	datad => \ALT_INV_CHITEM[2]~input_o\,
	dataf => \ALT_INV_STATE.PICKITEM~q\,
	combout => \NEXT_STATE.Chips~0_combout\);

-- Location: FF_X73_Y2_N59
\STATE.Chips\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \NEXT_STATE.Chips~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STATE.Chips~q\);

-- Location: LABCELL_X73_Y2_N54
\NEXT_STATE.Soda~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \NEXT_STATE.Soda~0_combout\ = ( \STATE.PICKITEM~q\ & ( (\CHITEM[0]~input_o\ & (!\CHITEM[1]~input_o\ & !\CHITEM[2]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000000010000000100000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_CHITEM[0]~input_o\,
	datab => \ALT_INV_CHITEM[1]~input_o\,
	datac => \ALT_INV_CHITEM[2]~input_o\,
	dataf => \ALT_INV_STATE.PICKITEM~q\,
	combout => \NEXT_STATE.Soda~0_combout\);

-- Location: FF_X73_Y2_N56
\STATE.Soda\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \NEXT_STATE.Soda~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STATE.Soda~q\);

-- Location: IOIBUF_X70_Y0_N35
\MoneyIn[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MoneyIn(1),
	o => \MoneyIn[1]~input_o\);

-- Location: LABCELL_X73_Y2_N6
\NEXT_STATE.coffee~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \NEXT_STATE.coffee~0_combout\ = ( \STATE.PICKITEM~q\ & ( (\CHITEM[1]~input_o\ & (\CHITEM[0]~input_o\ & !\CHITEM[2]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011000000000000001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_CHITEM[1]~input_o\,
	datac => \ALT_INV_CHITEM[0]~input_o\,
	datad => \ALT_INV_CHITEM[2]~input_o\,
	dataf => \ALT_INV_STATE.PICKITEM~q\,
	combout => \NEXT_STATE.coffee~0_combout\);

-- Location: FF_X73_Y2_N8
\STATE.coffee\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \NEXT_STATE.coffee~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STATE.coffee~q\);

-- Location: LABCELL_X74_Y2_N27
\Selector2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector2~2_combout\ = ( !\STATE.Croissant~q\ & ( \STATE.coffee~q\ & ( (\MoneyIn[0]~input_o\ & \MoneyIn[1]~input_o\) ) ) ) # ( !\STATE.Croissant~q\ & ( !\STATE.coffee~q\ & ( ((!\STATE.Chips~q\ & ((!\STATE.Soda~q\) # (\MoneyIn[0]~input_o\)))) # 
-- (\MoneyIn[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100010011111111000000000000000000000000010101010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_MoneyIn[0]~input_o\,
	datab => \ALT_INV_STATE.Chips~q\,
	datac => \ALT_INV_STATE.Soda~q\,
	datad => \ALT_INV_MoneyIn[1]~input_o\,
	datae => \ALT_INV_STATE.Croissant~q\,
	dataf => \ALT_INV_STATE.coffee~q\,
	combout => \Selector2~2_combout\);

-- Location: LABCELL_X73_Y2_N39
\NEXT_STATE.Doll~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \NEXT_STATE.Doll~0_combout\ = ( \STATE.PICKITEM~q\ & ( (\CHITEM[0]~input_o\ & (\CHITEM[1]~input_o\ & \CHITEM[2]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_CHITEM[0]~input_o\,
	datac => \ALT_INV_CHITEM[1]~input_o\,
	datad => \ALT_INV_CHITEM[2]~input_o\,
	dataf => \ALT_INV_STATE.PICKITEM~q\,
	combout => \NEXT_STATE.Doll~0_combout\);

-- Location: FF_X73_Y2_N41
\STATE.Doll\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \NEXT_STATE.Doll~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STATE.Doll~q\);

-- Location: LABCELL_X73_Y2_N15
\WideOr1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \WideOr1~1_combout\ = ( !\STATE.Doll~q\ & ( (!\STATE.coffee~q\ & !\STATE.Chips~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_STATE.coffee~q\,
	datad => \ALT_INV_STATE.Chips~q\,
	dataf => \ALT_INV_STATE.Doll~q\,
	combout => \WideOr1~1_combout\);

-- Location: LABCELL_X73_Y2_N42
\Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = ( \STATE.IDLE~q\ & ( \WideOr1~1_combout\ & ( !\WideOr1~0_combout\ ) ) ) # ( !\STATE.IDLE~q\ & ( \WideOr1~1_combout\ & ( (!\WideOr1~0_combout\ & (((\MoneyIn[0]~input_o\) # (\MoneyIn[2]~input_o\)) # (\MoneyIn[1]~input_o\))) ) ) ) # ( 
-- \STATE.IDLE~q\ & ( !\WideOr1~1_combout\ ) ) # ( !\STATE.IDLE~q\ & ( !\WideOr1~1_combout\ & ( ((\MoneyIn[0]~input_o\) # (\MoneyIn[2]~input_o\)) # (\MoneyIn[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011111111111111111111111111101110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_MoneyIn[1]~input_o\,
	datab => \ALT_INV_MoneyIn[2]~input_o\,
	datac => \ALT_INV_WideOr1~0_combout\,
	datad => \ALT_INV_MoneyIn[0]~input_o\,
	datae => \ALT_INV_STATE.IDLE~q\,
	dataf => \ALT_INV_WideOr1~1_combout\,
	combout => \Selector1~0_combout\);

-- Location: FF_X73_Y2_N44
\STATE.IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STATE.IDLE~q\);

-- Location: LABCELL_X73_Y2_N51
\Selector2~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector2~3_combout\ = ( \STATE.IDLE~q\ & ( (!\STATE.Doll~q\) # ((\MoneyIn[1]~input_o\ & (\MoneyIn[2]~input_o\ & \MoneyIn[0]~input_o\))) ) ) # ( !\STATE.IDLE~q\ & ( (!\MoneyIn[1]~input_o\ & (!\MoneyIn[2]~input_o\ & (!\STATE.Doll~q\ & 
-- !\MoneyIn[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000011110000111100011111000011110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_MoneyIn[1]~input_o\,
	datab => \ALT_INV_MoneyIn[2]~input_o\,
	datac => \ALT_INV_STATE.Doll~q\,
	datad => \ALT_INV_MoneyIn[0]~input_o\,
	dataf => \ALT_INV_STATE.IDLE~q\,
	combout => \Selector2~3_combout\);

-- Location: LABCELL_X73_Y2_N33
\NEXT_STATE.KeyChain~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \NEXT_STATE.KeyChain~0_combout\ = ( \STATE.PICKITEM~q\ & ( (\CHITEM[0]~input_o\ & (!\CHITEM[1]~input_o\ & \CHITEM[2]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010001000000000001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_CHITEM[0]~input_o\,
	datab => \ALT_INV_CHITEM[1]~input_o\,
	datad => \ALT_INV_CHITEM[2]~input_o\,
	dataf => \ALT_INV_STATE.PICKITEM~q\,
	combout => \NEXT_STATE.KeyChain~0_combout\);

-- Location: FF_X73_Y2_N35
\STATE.KeyChain\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \NEXT_STATE.KeyChain~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STATE.KeyChain~q\);

-- Location: LABCELL_X73_Y2_N9
\NEXT_STATE.Pen~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \NEXT_STATE.Pen~0_combout\ = ( \STATE.PICKITEM~q\ & ( (!\CHITEM[0]~input_o\ & (\CHITEM[1]~input_o\ & \CHITEM[2]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001000100000000000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_CHITEM[0]~input_o\,
	datab => \ALT_INV_CHITEM[1]~input_o\,
	datad => \ALT_INV_CHITEM[2]~input_o\,
	dataf => \ALT_INV_STATE.PICKITEM~q\,
	combout => \NEXT_STATE.Pen~0_combout\);

-- Location: FF_X73_Y2_N11
\STATE.Pen\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \NEXT_STATE.Pen~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STATE.Pen~q\);

-- Location: LABCELL_X73_Y2_N0
\Selector2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector2~1_combout\ = ( \STATE.Pen~q\ & ( (\MoneyIn[2]~input_o\ & \MoneyIn[1]~input_o\) ) ) # ( !\STATE.Pen~q\ & ( (!\STATE.KeyChain~q\) # ((\MoneyIn[2]~input_o\ & ((\MoneyIn[0]~input_o\) # (\MoneyIn[1]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000111110101111100011111010100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_MoneyIn[2]~input_o\,
	datab => \ALT_INV_MoneyIn[1]~input_o\,
	datac => \ALT_INV_STATE.KeyChain~q\,
	datad => \ALT_INV_MoneyIn[0]~input_o\,
	dataf => \ALT_INV_STATE.Pen~q\,
	combout => \Selector2~1_combout\);

-- Location: LABCELL_X73_Y2_N30
\Selector2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = ( \STATE.PICKITEM~q\ & ( (!\CHITEM[0]~input_o\ & (!\CHITEM[1]~input_o\ & !\CHITEM[2]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_CHITEM[0]~input_o\,
	datab => \ALT_INV_CHITEM[1]~input_o\,
	datac => \ALT_INV_CHITEM[2]~input_o\,
	dataf => \ALT_INV_STATE.PICKITEM~q\,
	combout => \Selector2~0_combout\);

-- Location: LABCELL_X73_Y2_N12
\Selector2~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector2~4_combout\ = ( \Selector2~0_combout\ ) # ( !\Selector2~0_combout\ & ( (!\Selector2~3_combout\) # ((!\Selector2~1_combout\) # ((!\MoneyIn[2]~input_o\ & !\Selector2~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111000111111111111100011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_MoneyIn[2]~input_o\,
	datab => \ALT_INV_Selector2~2_combout\,
	datac => \ALT_INV_Selector2~3_combout\,
	datad => \ALT_INV_Selector2~1_combout\,
	dataf => \ALT_INV_Selector2~0_combout\,
	combout => \Selector2~4_combout\);

-- Location: FF_X73_Y2_N14
\STATE.PICKITEM\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Selector2~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STATE.PICKITEM~q\);

-- Location: LABCELL_X73_Y2_N21
\NEXT_STATE.Croissant~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \NEXT_STATE.Croissant~0_combout\ = ( !\CHITEM[0]~input_o\ & ( (!\CHITEM[1]~input_o\ & (\STATE.PICKITEM~q\ & \CHITEM[2]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010000000000000101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_CHITEM[1]~input_o\,
	datac => \ALT_INV_STATE.PICKITEM~q\,
	datad => \ALT_INV_CHITEM[2]~input_o\,
	dataf => \ALT_INV_CHITEM[0]~input_o\,
	combout => \NEXT_STATE.Croissant~0_combout\);

-- Location: FF_X73_Y2_N23
\STATE.Croissant\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \NEXT_STATE.Croissant~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STATE.Croissant~q\);

-- Location: LABCELL_X73_Y2_N24
\WideOr1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \WideOr1~0_combout\ = ( \STATE.IDLE~q\ & ( !\STATE.KeyChain~q\ & ( (!\STATE.Croissant~q\ & (!\STATE.PICKITEM~q\ & (!\STATE.Soda~q\ & !\STATE.Pen~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_STATE.Croissant~q\,
	datab => \ALT_INV_STATE.PICKITEM~q\,
	datac => \ALT_INV_STATE.Soda~q\,
	datad => \ALT_INV_STATE.Pen~q\,
	datae => \ALT_INV_STATE.IDLE~q\,
	dataf => \ALT_INV_STATE.KeyChain~q\,
	combout => \WideOr1~0_combout\);

-- Location: MLABCELL_X72_Y2_N39
\WideOr1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \WideOr1~2_combout\ = (!\WideOr1~0_combout\) # (!\WideOr1~1_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111110000111111111111000011111111111100001111111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_WideOr1~0_combout\,
	datad => \ALT_INV_WideOr1~1_combout\,
	combout => \WideOr1~2_combout\);

-- Location: MLABCELL_X72_Y2_N3
\NEXT_STATE.Out61~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \NEXT_STATE.Out61~0_combout\ = (\MoneyIn[1]~input_o\ & (\MoneyIn[2]~input_o\ & (\STATE.Pen~q\ & \MoneyIn[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000100000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_MoneyIn[1]~input_o\,
	datab => \ALT_INV_MoneyIn[2]~input_o\,
	datac => \ALT_INV_STATE.Pen~q\,
	datad => \ALT_INV_MoneyIn[0]~input_o\,
	combout => \NEXT_STATE.Out61~0_combout\);

-- Location: FF_X72_Y2_N5
\STATE.Out61\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \NEXT_STATE.Out61~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STATE.Out61~q\);

-- Location: LABCELL_X70_Y2_N24
\NEXT_STATE.Out25~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \NEXT_STATE.Out25~0_combout\ = ( \MoneyIn[2]~input_o\ & ( \STATE.Chips~q\ & ( (\MoneyIn[1]~input_o\ & \MoneyIn[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_MoneyIn[1]~input_o\,
	datac => \ALT_INV_MoneyIn[0]~input_o\,
	datae => \ALT_INV_MoneyIn[2]~input_o\,
	dataf => \ALT_INV_STATE.Chips~q\,
	combout => \NEXT_STATE.Out25~0_combout\);

-- Location: FF_X71_Y2_N53
\STATE.Out25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \NEXT_STATE.Out25~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STATE.Out25~q\);

-- Location: MLABCELL_X72_Y2_N57
\NEXT_STATE.Out11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \NEXT_STATE.Out11~0_combout\ = ( \STATE.Soda~q\ & ( (\MoneyIn[1]~input_o\ & (!\MoneyIn[2]~input_o\ & !\MoneyIn[0]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000100000000000100010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_MoneyIn[1]~input_o\,
	datab => \ALT_INV_MoneyIn[2]~input_o\,
	datad => \ALT_INV_MoneyIn[0]~input_o\,
	dataf => \ALT_INV_STATE.Soda~q\,
	combout => \NEXT_STATE.Out11~0_combout\);

-- Location: FF_X72_Y2_N58
\STATE.Out11\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \NEXT_STATE.Out11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STATE.Out11~q\);

-- Location: MLABCELL_X72_Y2_N15
\NEXT_STATE.Out31~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \NEXT_STATE.Out31~0_combout\ = ( \STATE.coffee~q\ & ( (!\MoneyIn[1]~input_o\ & (\MoneyIn[2]~input_o\ & !\MoneyIn[0]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001010000000000000101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_MoneyIn[1]~input_o\,
	datac => \ALT_INV_MoneyIn[2]~input_o\,
	datad => \ALT_INV_MoneyIn[0]~input_o\,
	dataf => \ALT_INV_STATE.coffee~q\,
	combout => \NEXT_STATE.Out31~0_combout\);

-- Location: FF_X72_Y2_N17
\STATE.Out31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \NEXT_STATE.Out31~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STATE.Out31~q\);

-- Location: MLABCELL_X72_Y2_N24
\NEXT_STATE.Out15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \NEXT_STATE.Out15~0_combout\ = ( \STATE.Soda~q\ & ( (\MoneyIn[2]~input_o\ & (\MoneyIn[1]~input_o\ & !\MoneyIn[0]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011000000000000001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_MoneyIn[2]~input_o\,
	datac => \ALT_INV_MoneyIn[1]~input_o\,
	datad => \ALT_INV_MoneyIn[0]~input_o\,
	dataf => \ALT_INV_STATE.Soda~q\,
	combout => \NEXT_STATE.Out15~0_combout\);

-- Location: FF_X72_Y2_N26
\STATE.Out15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \NEXT_STATE.Out15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STATE.Out15~q\);

-- Location: LABCELL_X73_Y2_N3
\NEXT_STATE.Out41~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \NEXT_STATE.Out41~0_combout\ = ( \STATE.Croissant~q\ & ( (\MoneyIn[2]~input_o\ & (!\MoneyIn[1]~input_o\ & \MoneyIn[0]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010100000000000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_MoneyIn[2]~input_o\,
	datac => \ALT_INV_MoneyIn[1]~input_o\,
	datad => \ALT_INV_MoneyIn[0]~input_o\,
	dataf => \ALT_INV_STATE.Croissant~q\,
	combout => \NEXT_STATE.Out41~0_combout\);

-- Location: FF_X72_Y2_N47
\STATE.Out41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \NEXT_STATE.Out41~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STATE.Out41~q\);

-- Location: MLABCELL_X72_Y2_N54
\NEXT_STATE.Out51~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \NEXT_STATE.Out51~0_combout\ = ( \STATE.KeyChain~q\ & ( (\MoneyIn[1]~input_o\ & (\MoneyIn[2]~input_o\ & !\MoneyIn[0]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010000000100000001000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_MoneyIn[1]~input_o\,
	datab => \ALT_INV_MoneyIn[2]~input_o\,
	datac => \ALT_INV_MoneyIn[0]~input_o\,
	dataf => \ALT_INV_STATE.KeyChain~q\,
	combout => \NEXT_STATE.Out51~0_combout\);

-- Location: FF_X72_Y2_N56
\STATE.Out51\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \NEXT_STATE.Out51~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STATE.Out51~q\);

-- Location: MLABCELL_X72_Y2_N36
\WideOr14~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \WideOr14~1_combout\ = ( !\STATE.Out51~q\ & ( (!\STATE.Out11~q\ & (!\STATE.Out31~q\ & (!\STATE.Out15~q\ & !\STATE.Out41~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_STATE.Out11~q\,
	datab => \ALT_INV_STATE.Out31~q\,
	datac => \ALT_INV_STATE.Out15~q\,
	datad => \ALT_INV_STATE.Out41~q\,
	dataf => \ALT_INV_STATE.Out51~q\,
	combout => \WideOr14~1_combout\);

-- Location: LABCELL_X70_Y2_N21
\NEXT_STATE.Out21~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \NEXT_STATE.Out21~0_combout\ = ( !\MoneyIn[2]~input_o\ & ( \STATE.Chips~q\ & ( (\MoneyIn[0]~input_o\ & \MoneyIn[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000101000001010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_MoneyIn[0]~input_o\,
	datac => \ALT_INV_MoneyIn[1]~input_o\,
	datae => \ALT_INV_MoneyIn[2]~input_o\,
	dataf => \ALT_INV_STATE.Chips~q\,
	combout => \NEXT_STATE.Out21~0_combout\);

-- Location: FF_X71_Y2_N8
\STATE.Out21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \NEXT_STATE.Out21~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STATE.Out21~q\);

-- Location: MLABCELL_X72_Y2_N33
\NEXT_STATE.Out13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \NEXT_STATE.Out13~0_combout\ = ( \STATE.Soda~q\ & ( (!\MoneyIn[0]~input_o\ & (\MoneyIn[2]~input_o\ & !\MoneyIn[1]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100000001000000010000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_MoneyIn[0]~input_o\,
	datab => \ALT_INV_MoneyIn[2]~input_o\,
	datac => \ALT_INV_MoneyIn[1]~input_o\,
	dataf => \ALT_INV_STATE.Soda~q\,
	combout => \NEXT_STATE.Out13~0_combout\);

-- Location: FF_X72_Y2_N31
\STATE.Out13\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \NEXT_STATE.Out13~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STATE.Out13~q\);

-- Location: LABCELL_X71_Y2_N24
\NEXT_STATE.Out43~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \NEXT_STATE.Out43~0_combout\ = (\MoneyIn[1]~input_o\ & (\MoneyIn[0]~input_o\ & (\MoneyIn[2]~input_o\ & \STATE.Croissant~q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000100000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_MoneyIn[1]~input_o\,
	datab => \ALT_INV_MoneyIn[0]~input_o\,
	datac => \ALT_INV_MoneyIn[2]~input_o\,
	datad => \ALT_INV_STATE.Croissant~q\,
	combout => \NEXT_STATE.Out43~0_combout\);

-- Location: FF_X71_Y2_N26
\STATE.Out43\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \NEXT_STATE.Out43~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STATE.Out43~q\);

-- Location: MLABCELL_X72_Y2_N0
\NEXT_STATE.Out33~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \NEXT_STATE.Out33~0_combout\ = ( \STATE.coffee~q\ & ( (\MoneyIn[1]~input_o\ & (\MoneyIn[2]~input_o\ & !\MoneyIn[0]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010000000100000001000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_MoneyIn[1]~input_o\,
	datab => \ALT_INV_MoneyIn[2]~input_o\,
	datac => \ALT_INV_MoneyIn[0]~input_o\,
	dataf => \ALT_INV_STATE.coffee~q\,
	combout => \NEXT_STATE.Out33~0_combout\);

-- Location: FF_X72_Y2_N52
\STATE.Out33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \NEXT_STATE.Out33~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STATE.Out33~q\);

-- Location: LABCELL_X70_Y2_N0
\NEXT_STATE.Out23~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \NEXT_STATE.Out23~0_combout\ = ( \MoneyIn[2]~input_o\ & ( \STATE.Chips~q\ & ( (!\MoneyIn[1]~input_o\ & \MoneyIn[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_MoneyIn[1]~input_o\,
	datac => \ALT_INV_MoneyIn[0]~input_o\,
	datae => \ALT_INV_MoneyIn[2]~input_o\,
	dataf => \ALT_INV_STATE.Chips~q\,
	combout => \NEXT_STATE.Out23~0_combout\);

-- Location: FF_X71_Y2_N32
\STATE.Out23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \NEXT_STATE.Out23~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STATE.Out23~q\);

-- Location: MLABCELL_X72_Y2_N51
\WideOr14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \WideOr14~0_combout\ = ( !\STATE.Out23~q\ & ( (!\STATE.Out13~q\ & (!\STATE.Out43~q\ & !\STATE.Out33~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000101000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_STATE.Out13~q\,
	datac => \ALT_INV_STATE.Out43~q\,
	datad => \ALT_INV_STATE.Out33~q\,
	dataf => \ALT_INV_STATE.Out23~q\,
	combout => \WideOr14~0_combout\);

-- Location: MLABCELL_X72_Y2_N18
WideOr14 : cyclonev_lcell_comb
-- Equation(s):
-- \WideOr14~combout\ = ( \WideOr14~0_combout\ & ( (((!\WideOr14~1_combout\) # (\STATE.Out21~q\)) # (\STATE.Out25~q\)) # (\STATE.Out61~q\) ) ) # ( !\WideOr14~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111110111111111111111011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_STATE.Out61~q\,
	datab => \ALT_INV_STATE.Out25~q\,
	datac => \ALT_INV_WideOr14~1_combout\,
	datad => \ALT_INV_STATE.Out21~q\,
	dataf => \ALT_INV_WideOr14~0_combout\,
	combout => \WideOr14~combout\);

-- Location: MLABCELL_X72_Y2_N21
\MoneyOut[0]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \MoneyOut[0]$latch~combout\ = ( \WideOr14~combout\ & ( (!\WideOr1~2_combout\) # (\MoneyOut[0]$latch~combout\) ) ) # ( !\WideOr14~combout\ & ( (\WideOr1~2_combout\ & \MoneyOut[0]$latch~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_WideOr1~2_combout\,
	datad => \ALT_INV_MoneyOut[0]$latch~combout\,
	dataf => \ALT_INV_WideOr14~combout\,
	combout => \MoneyOut[0]$latch~combout\);

-- Location: MLABCELL_X72_Y2_N6
\NEXT_STATE.Out22~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \NEXT_STATE.Out22~0_combout\ = ( \STATE.Chips~q\ & ( (\MoneyIn[2]~input_o\ & (!\MoneyIn[1]~input_o\ & !\MoneyIn[0]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110000000000000011000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_MoneyIn[2]~input_o\,
	datac => \ALT_INV_MoneyIn[1]~input_o\,
	datad => \ALT_INV_MoneyIn[0]~input_o\,
	dataf => \ALT_INV_STATE.Chips~q\,
	combout => \NEXT_STATE.Out22~0_combout\);

-- Location: FF_X72_Y2_N8
\STATE.Out22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \NEXT_STATE.Out22~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STATE.Out22~q\);

-- Location: LABCELL_X71_Y2_N3
\NEXT_STATE.Out32~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \NEXT_STATE.Out32~0_combout\ = ( \STATE.coffee~q\ & ( (\MoneyIn[0]~input_o\ & (!\MoneyIn[1]~input_o\ & \MoneyIn[2]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001100000000000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_MoneyIn[0]~input_o\,
	datac => \ALT_INV_MoneyIn[1]~input_o\,
	datad => \ALT_INV_MoneyIn[2]~input_o\,
	dataf => \ALT_INV_STATE.coffee~q\,
	combout => \NEXT_STATE.Out32~0_combout\);

-- Location: FF_X72_Y2_N2
\STATE.Out32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \NEXT_STATE.Out32~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STATE.Out32~q\);

-- Location: LABCELL_X71_Y2_N12
\NEXT_STATE.Out12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \NEXT_STATE.Out12~0_combout\ = ( \STATE.Soda~q\ & ( (\MoneyIn[1]~input_o\ & (\MoneyIn[0]~input_o\ & !\MoneyIn[2]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010000000100000001000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_MoneyIn[1]~input_o\,
	datab => \ALT_INV_MoneyIn[0]~input_o\,
	datac => \ALT_INV_MoneyIn[2]~input_o\,
	dataf => \ALT_INV_STATE.Soda~q\,
	combout => \NEXT_STATE.Out12~0_combout\);

-- Location: FF_X72_Y2_N37
\STATE.Out12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \NEXT_STATE.Out12~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STATE.Out12~q\);

-- Location: LABCELL_X71_Y2_N27
\NEXT_STATE.Out16~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \NEXT_STATE.Out16~0_combout\ = ( \STATE.Soda~q\ & ( (\MoneyIn[1]~input_o\ & (\MoneyIn[0]~input_o\ & \MoneyIn[2]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000100010000000000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_MoneyIn[1]~input_o\,
	datab => \ALT_INV_MoneyIn[0]~input_o\,
	datad => \ALT_INV_MoneyIn[2]~input_o\,
	dataf => \ALT_INV_STATE.Soda~q\,
	combout => \NEXT_STATE.Out16~0_combout\);

-- Location: FF_X72_Y2_N35
\STATE.Out16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \NEXT_STATE.Out16~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STATE.Out16~q\);

-- Location: MLABCELL_X72_Y2_N48
\WideOr12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \WideOr12~0_combout\ = ( !\STATE.Out16~q\ & ( (!\STATE.Out22~q\ & (!\STATE.Out32~q\ & !\STATE.Out12~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_STATE.Out22~q\,
	datac => \ALT_INV_STATE.Out32~q\,
	datad => \ALT_INV_STATE.Out12~q\,
	dataf => \ALT_INV_STATE.Out16~q\,
	combout => \WideOr12~0_combout\);

-- Location: LABCELL_X71_Y2_N0
\NEXT_STATE.Out42~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \NEXT_STATE.Out42~0_combout\ = (\MoneyIn[1]~input_o\ & (!\MoneyIn[0]~input_o\ & (\MoneyIn[2]~input_o\ & \STATE.Croissant~q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000010000000000000001000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_MoneyIn[1]~input_o\,
	datab => \ALT_INV_MoneyIn[0]~input_o\,
	datac => \ALT_INV_MoneyIn[2]~input_o\,
	datad => \ALT_INV_STATE.Croissant~q\,
	combout => \NEXT_STATE.Out42~0_combout\);

-- Location: FF_X71_Y2_N2
\STATE.Out42\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \NEXT_STATE.Out42~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STATE.Out42~q\);

-- Location: LABCELL_X73_Y2_N48
\NEXT_STATE.Out52~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \NEXT_STATE.Out52~0_combout\ = ( \STATE.KeyChain~q\ & ( (\MoneyIn[2]~input_o\ & (\MoneyIn[1]~input_o\ & \MoneyIn[0]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_MoneyIn[2]~input_o\,
	datac => \ALT_INV_MoneyIn[1]~input_o\,
	datad => \ALT_INV_MoneyIn[0]~input_o\,
	dataf => \ALT_INV_STATE.KeyChain~q\,
	combout => \NEXT_STATE.Out52~0_combout\);

-- Location: FF_X72_Y2_N44
\STATE.Out52\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \NEXT_STATE.Out52~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STATE.Out52~q\);

-- Location: MLABCELL_X72_Y2_N9
WideOr12 : cyclonev_lcell_comb
-- Equation(s):
-- \WideOr12~combout\ = ( \WideOr14~0_combout\ & ( (!\WideOr12~0_combout\) # ((\STATE.Out52~q\) # (\STATE.Out42~q\)) ) ) # ( !\WideOr14~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111110101111111111111010111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_WideOr12~0_combout\,
	datac => \ALT_INV_STATE.Out42~q\,
	datad => \ALT_INV_STATE.Out52~q\,
	dataf => \ALT_INV_WideOr14~0_combout\,
	combout => \WideOr12~combout\);

-- Location: MLABCELL_X72_Y2_N27
\MoneyOut[1]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \MoneyOut[1]$latch~combout\ = ( \WideOr12~combout\ & ( (!\WideOr1~2_combout\) # (\MoneyOut[1]$latch~combout\) ) ) # ( !\WideOr12~combout\ & ( (\MoneyOut[1]$latch~combout\ & \WideOr1~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010111110101111101011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_MoneyOut[1]$latch~combout\,
	datac => \ALT_INV_WideOr1~2_combout\,
	dataf => \ALT_INV_WideOr12~combout\,
	combout => \MoneyOut[1]$latch~combout\);

-- Location: LABCELL_X74_Y2_N54
\NEXT_STATE.Out14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \NEXT_STATE.Out14~0_combout\ = ( !\MoneyIn[1]~input_o\ & ( \STATE.Soda~q\ & ( (\MoneyIn[2]~input_o\ & \MoneyIn[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000101000001010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_MoneyIn[2]~input_o\,
	datac => \ALT_INV_MoneyIn[0]~input_o\,
	datae => \ALT_INV_MoneyIn[1]~input_o\,
	dataf => \ALT_INV_STATE.Soda~q\,
	combout => \NEXT_STATE.Out14~0_combout\);

-- Location: FF_X74_Y2_N55
\STATE.Out14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \NEXT_STATE.Out14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STATE.Out14~q\);

-- Location: LABCELL_X70_Y2_N33
\NEXT_STATE.Out24~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \NEXT_STATE.Out24~0_combout\ = ( \MoneyIn[2]~input_o\ & ( \STATE.Chips~q\ & ( (!\MoneyIn[0]~input_o\ & \MoneyIn[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_MoneyIn[0]~input_o\,
	datac => \ALT_INV_MoneyIn[1]~input_o\,
	datae => \ALT_INV_MoneyIn[2]~input_o\,
	dataf => \ALT_INV_STATE.Chips~q\,
	combout => \NEXT_STATE.Out24~0_combout\);

-- Location: FF_X71_Y2_N11
\STATE.Out24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \NEXT_STATE.Out24~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STATE.Out24~q\);

-- Location: LABCELL_X71_Y2_N15
\NEXT_STATE.Out34~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \NEXT_STATE.Out34~0_combout\ = ( \STATE.coffee~q\ & ( (\MoneyIn[0]~input_o\ & (\MoneyIn[1]~input_o\ & \MoneyIn[2]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_MoneyIn[0]~input_o\,
	datac => \ALT_INV_MoneyIn[1]~input_o\,
	datad => \ALT_INV_MoneyIn[2]~input_o\,
	dataf => \ALT_INV_STATE.coffee~q\,
	combout => \NEXT_STATE.Out34~0_combout\);

-- Location: FF_X71_Y2_N17
\STATE.Out34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \NEXT_STATE.Out34~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STATE.Out34~q\);

-- Location: MLABCELL_X72_Y2_N42
WideOr10 : cyclonev_lcell_comb
-- Equation(s):
-- \WideOr10~combout\ = ( \STATE.Out24~q\ & ( \STATE.Out34~q\ ) ) # ( !\STATE.Out24~q\ & ( \STATE.Out34~q\ ) ) # ( \STATE.Out24~q\ & ( !\STATE.Out34~q\ ) ) # ( !\STATE.Out24~q\ & ( !\STATE.Out34~q\ & ( (((\STATE.Out25~q\) # (\STATE.Out16~q\)) # 
-- (\STATE.Out14~q\)) # (\STATE.Out15~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_STATE.Out15~q\,
	datab => \ALT_INV_STATE.Out14~q\,
	datac => \ALT_INV_STATE.Out16~q\,
	datad => \ALT_INV_STATE.Out25~q\,
	datae => \ALT_INV_STATE.Out24~q\,
	dataf => \ALT_INV_STATE.Out34~q\,
	combout => \WideOr10~combout\);

-- Location: MLABCELL_X72_Y2_N12
\MoneyOut[2]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \MoneyOut[2]$latch~combout\ = ( \WideOr1~2_combout\ & ( \MoneyOut[2]$latch~combout\ ) ) # ( !\WideOr1~2_combout\ & ( \WideOr10~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_MoneyOut[2]$latch~combout\,
	datad => \ALT_INV_WideOr10~combout\,
	dataf => \ALT_INV_WideOr1~2_combout\,
	combout => \MoneyOut[2]$latch~combout\);

-- Location: IOIBUF_X64_Y0_N1
\wren~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_wren,
	o => \wren~input_o\);

-- Location: LABCELL_X70_Y2_N6
\NEXT_STATE.Out2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \NEXT_STATE.Out2~0_combout\ = ( !\MoneyIn[2]~input_o\ & ( \STATE.Chips~q\ & ( (\MoneyIn[1]~input_o\ & !\MoneyIn[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110000001100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_MoneyIn[1]~input_o\,
	datac => \ALT_INV_MoneyIn[0]~input_o\,
	datae => \ALT_INV_MoneyIn[2]~input_o\,
	dataf => \ALT_INV_STATE.Chips~q\,
	combout => \NEXT_STATE.Out2~0_combout\);

-- Location: FF_X71_Y2_N50
\STATE.Out2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \NEXT_STATE.Out2~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STATE.Out2~q\);

-- Location: MLABCELL_X72_Y2_N30
\NEXT_STATE.Out6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \NEXT_STATE.Out6~0_combout\ = ( \STATE.Pen~q\ & ( (!\MoneyIn[0]~input_o\ & (\MoneyIn[2]~input_o\ & \MoneyIn[1]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_MoneyIn[0]~input_o\,
	datab => \ALT_INV_MoneyIn[2]~input_o\,
	datac => \ALT_INV_MoneyIn[1]~input_o\,
	dataf => \ALT_INV_STATE.Pen~q\,
	combout => \NEXT_STATE.Out6~0_combout\);

-- Location: FF_X71_Y2_N59
\STATE.Out6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \NEXT_STATE.Out6~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STATE.Out6~q\);

-- Location: LABCELL_X71_Y2_N18
\WideOr6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \WideOr6~0_combout\ = ( !\STATE.Out24~q\ & ( (!\STATE.Out2~q\ & (!\STATE.Out23~q\ & (!\STATE.Out22~q\ & !\STATE.Out6~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_STATE.Out2~q\,
	datab => \ALT_INV_STATE.Out23~q\,
	datac => \ALT_INV_STATE.Out22~q\,
	datad => \ALT_INV_STATE.Out6~q\,
	dataf => \ALT_INV_STATE.Out24~q\,
	combout => \WideOr6~0_combout\);

-- Location: LABCELL_X70_Y2_N57
\NEXT_STATE.Out4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \NEXT_STATE.Out4~0_combout\ = ( \MoneyIn[2]~input_o\ & ( \STATE.Croissant~q\ & ( (!\MoneyIn[0]~input_o\ & !\MoneyIn[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_MoneyIn[0]~input_o\,
	datac => \ALT_INV_MoneyIn[1]~input_o\,
	datae => \ALT_INV_MoneyIn[2]~input_o\,
	dataf => \ALT_INV_STATE.Croissant~q\,
	combout => \NEXT_STATE.Out4~0_combout\);

-- Location: FF_X71_Y2_N38
\STATE.Out4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \NEXT_STATE.Out4~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STATE.Out4~q\);

-- Location: LABCELL_X71_Y2_N57
\WideOr4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \WideOr4~0_combout\ = ( !\STATE.Out43~q\ & ( (!\STATE.Out42~q\ & (!\STATE.Out41~q\ & !\STATE.Out4~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000101000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_STATE.Out42~q\,
	datac => \ALT_INV_STATE.Out41~q\,
	datad => \ALT_INV_STATE.Out4~q\,
	dataf => \ALT_INV_STATE.Out43~q\,
	combout => \WideOr4~0_combout\);

-- Location: LABCELL_X71_Y2_N45
WideOr8 : cyclonev_lcell_comb
-- Equation(s):
-- \WideOr8~combout\ = ( \WideOr4~0_combout\ & ( (!\WideOr6~0_combout\) # (((\STATE.Out21~q\) # (\STATE.Out61~q\)) # (\STATE.Out25~q\)) ) ) # ( !\WideOr4~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111110111111111111111011111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_WideOr6~0_combout\,
	datab => \ALT_INV_STATE.Out25~q\,
	datac => \ALT_INV_STATE.Out61~q\,
	datad => \ALT_INV_STATE.Out21~q\,
	dataf => \ALT_INV_WideOr4~0_combout\,
	combout => \WideOr8~combout\);

-- Location: LABCELL_X71_Y2_N21
\OUTITEM[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- OUTITEM(0) = ( \WideOr8~combout\ & ( (OUTITEM(0) & \WideOr1~2_combout\) ) ) # ( !\WideOr8~combout\ & ( (!\WideOr1~2_combout\) # (OUTITEM(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100001111111111110000111100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_OUTITEM(0),
	datad => \ALT_INV_WideOr1~2_combout\,
	dataf => \ALT_INV_WideOr8~combout\,
	combout => OUTITEM(0));

-- Location: IOIBUF_X68_Y0_N35
\alamat[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alamat(0),
	o => \alamat[0]~input_o\);

-- Location: IOIBUF_X68_Y0_N1
\alamat[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alamat(1),
	o => \alamat[1]~input_o\);

-- Location: IOIBUF_X66_Y0_N41
\alamat[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alamat(2),
	o => \alamat[2]~input_o\);

-- Location: IOIBUF_X68_Y0_N52
\alamat[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alamat(3),
	o => \alamat[3]~input_o\);

-- Location: IOIBUF_X64_Y0_N52
\alamat[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alamat(4),
	o => \alamat[4]~input_o\);

-- Location: LABCELL_X73_Y2_N18
\NEXT_STATE.Out3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \NEXT_STATE.Out3~0_combout\ = ( !\MoneyIn[2]~input_o\ & ( (\STATE.coffee~q\ & (\MoneyIn[1]~input_o\ & \MoneyIn[0]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_STATE.coffee~q\,
	datac => \ALT_INV_MoneyIn[1]~input_o\,
	datad => \ALT_INV_MoneyIn[0]~input_o\,
	dataf => \ALT_INV_MoneyIn[2]~input_o\,
	combout => \NEXT_STATE.Out3~0_combout\);

-- Location: FF_X73_Y2_N20
\STATE.Out3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \NEXT_STATE.Out3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STATE.Out3~q\);

-- Location: LABCELL_X70_Y2_N48
\NEXT_STATE.Out7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \NEXT_STATE.Out7~0_combout\ = ( \MoneyIn[2]~input_o\ & ( \STATE.Doll~q\ & ( (\MoneyIn[1]~input_o\ & \MoneyIn[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_MoneyIn[1]~input_o\,
	datac => \ALT_INV_MoneyIn[0]~input_o\,
	datae => \ALT_INV_MoneyIn[2]~input_o\,
	dataf => \ALT_INV_STATE.Doll~q\,
	combout => \NEXT_STATE.Out7~0_combout\);

-- Location: FF_X70_Y2_N50
\STATE.Out7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \NEXT_STATE.Out7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STATE.Out7~q\);

-- Location: LABCELL_X71_Y2_N51
\WideOr6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \WideOr6~1_combout\ = ( !\STATE.Out7~q\ & ( (!\STATE.Out32~q\ & (!\STATE.Out3~q\ & (!\STATE.Out33~q\ & !\STATE.Out31~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_STATE.Out32~q\,
	datab => \ALT_INV_STATE.Out3~q\,
	datac => \ALT_INV_STATE.Out33~q\,
	datad => \ALT_INV_STATE.Out31~q\,
	dataf => \ALT_INV_STATE.Out7~q\,
	combout => \WideOr6~1_combout\);

-- Location: LABCELL_X71_Y2_N39
WideOr6 : cyclonev_lcell_comb
-- Equation(s):
-- \WideOr6~combout\ = ( \STATE.Out61~q\ & ( \WideOr6~1_combout\ ) ) # ( !\STATE.Out61~q\ & ( \WideOr6~1_combout\ & ( (((!\WideOr6~0_combout\) # (\STATE.Out25~q\)) # (\STATE.Out34~q\)) # (\STATE.Out21~q\) ) ) ) # ( \STATE.Out61~q\ & ( !\WideOr6~1_combout\ ) 
-- ) # ( !\STATE.Out61~q\ & ( !\WideOr6~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111011111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_STATE.Out21~q\,
	datab => \ALT_INV_STATE.Out34~q\,
	datac => \ALT_INV_STATE.Out25~q\,
	datad => \ALT_INV_WideOr6~0_combout\,
	datae => \ALT_INV_STATE.Out61~q\,
	dataf => \ALT_INV_WideOr6~1_combout\,
	combout => \WideOr6~combout\);

-- Location: LABCELL_X71_Y2_N42
\OUTITEM[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- OUTITEM(1) = ( \WideOr6~combout\ & ( (!\WideOr1~2_combout\) # (OUTITEM(1)) ) ) # ( !\WideOr6~combout\ & ( (\WideOr1~2_combout\ & OUTITEM(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_WideOr1~2_combout\,
	datad => ALT_INV_OUTITEM(1),
	dataf => \ALT_INV_WideOr6~combout\,
	combout => OUTITEM(1));

-- Location: LABCELL_X73_Y2_N36
\NEXT_STATE.Out5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \NEXT_STATE.Out5~0_combout\ = ( \STATE.KeyChain~q\ & ( (\MoneyIn[2]~input_o\ & (!\MoneyIn[1]~input_o\ & \MoneyIn[0]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001100000000000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_MoneyIn[2]~input_o\,
	datac => \ALT_INV_MoneyIn[1]~input_o\,
	datad => \ALT_INV_MoneyIn[0]~input_o\,
	dataf => \ALT_INV_STATE.KeyChain~q\,
	combout => \NEXT_STATE.Out5~0_combout\);

-- Location: FF_X72_Y2_N29
\STATE.Out5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \NEXT_STATE.Out5~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STATE.Out5~q\);

-- Location: LABCELL_X71_Y2_N33
\WideOr4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \WideOr4~1_combout\ = ( !\STATE.Out51~q\ & ( !\STATE.Out7~q\ & ( (!\STATE.Out43~q\ & (!\STATE.Out5~q\ & !\STATE.Out6~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_STATE.Out43~q\,
	datab => \ALT_INV_STATE.Out5~q\,
	datac => \ALT_INV_STATE.Out6~q\,
	datae => \ALT_INV_STATE.Out51~q\,
	dataf => \ALT_INV_STATE.Out7~q\,
	combout => \WideOr4~1_combout\);

-- Location: LABCELL_X71_Y2_N6
WideOr4 : cyclonev_lcell_comb
-- Equation(s):
-- \WideOr4~combout\ = ( \STATE.Out4~q\ & ( \WideOr4~1_combout\ ) ) # ( !\STATE.Out4~q\ & ( \WideOr4~1_combout\ & ( (((\STATE.Out61~q\) # (\STATE.Out41~q\)) # (\STATE.Out52~q\)) # (\STATE.Out42~q\) ) ) ) # ( \STATE.Out4~q\ & ( !\WideOr4~1_combout\ ) ) # ( 
-- !\STATE.Out4~q\ & ( !\WideOr4~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111101111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_STATE.Out42~q\,
	datab => \ALT_INV_STATE.Out52~q\,
	datac => \ALT_INV_STATE.Out41~q\,
	datad => \ALT_INV_STATE.Out61~q\,
	datae => \ALT_INV_STATE.Out4~q\,
	dataf => \ALT_INV_WideOr4~1_combout\,
	combout => \WideOr4~combout\);

-- Location: LABCELL_X71_Y2_N54
\OUTITEM[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- OUTITEM(2) = (!\WideOr1~2_combout\ & (\WideOr4~combout\)) # (\WideOr1~2_combout\ & ((OUTITEM(2))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000111111001100000011111100110000001111110011000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_WideOr4~combout\,
	datac => \ALT_INV_WideOr1~2_combout\,
	datad => ALT_INV_OUTITEM(2),
	combout => OUTITEM(2));

-- Location: LABCELL_X68_Y2_N27
\~GND\ : cyclonev_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: M10K_X69_Y2_N0
\RAM|altsyncram_component|auto_generated|ram_block1a0\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAM32x4:RAM|altsyncram:altsyncram_component|altsyncram_hvv3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 20,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 4,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_width => 5,
	port_b_data_width => 20,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \wren~input_o\,
	portare => VCC,
	clk0 => \CLK~inputCLKENA0_outclk\,
	portadatain => \RAM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \RAM|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \RAM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: IOIBUF_X72_Y0_N18
\MoneyOut[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => MoneyOut(0),
	o => \MoneyOut[0]~input_o\);

-- Location: IOIBUF_X72_Y0_N1
\MoneyOut[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => MoneyOut(1),
	o => \MoneyOut[1]~input_o\);

-- Location: IOIBUF_X72_Y0_N52
\MoneyOut[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => MoneyOut(2),
	o => \MoneyOut[2]~input_o\);
END structure;


