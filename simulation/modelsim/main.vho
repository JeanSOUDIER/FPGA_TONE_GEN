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

-- DATE "10/27/2020 11:54:00"

-- 
-- Device: Altera 5CSEMA5F31C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	main IS
    PORT (
	I2C_SDAT : OUT std_logic;
	MASTER_CLK : IN std_logic;
	MASTER_R : IN std_logic;
	I2C_SCLK : OUT std_logic;
	AUD_DACDAT : OUT std_logic;
	SEL0 : IN std_logic;
	SEL1 : IN std_logic;
	AUD_DACLRCK : OUT std_logic;
	AUD_XCK : OUT std_logic;
	LED_BLINK : OUT std_logic;
	LED_R : OUT std_logic
	);
END main;

-- Design Ports Information
-- I2C_SDAT	=>  Location: PIN_K12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I2C_SCLK	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUD_DACDAT	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUD_DACLRCK	=>  Location: PIN_H8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUD_XCK	=>  Location: PIN_G7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_BLINK	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_R	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MASTER_CLK	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MASTER_R	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEL1	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEL0	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF main IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_I2C_SDAT : std_logic;
SIGNAL ww_MASTER_CLK : std_logic;
SIGNAL ww_MASTER_R : std_logic;
SIGNAL ww_I2C_SCLK : std_logic;
SIGNAL ww_AUD_DACDAT : std_logic;
SIGNAL ww_SEL0 : std_logic;
SIGNAL ww_SEL1 : std_logic;
SIGNAL ww_AUD_DACLRCK : std_logic;
SIGNAL ww_AUD_XCK : std_logic;
SIGNAL ww_LED_BLINK : std_logic;
SIGNAL ww_LED_R : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \MASTER_CLK~input_o\ : std_logic;
SIGNAL \MASTER_CLK~inputCLKENA0_outclk\ : std_logic;
SIGNAL \MASTER_R~input_o\ : std_logic;
SIGNAL \inst30|CS.State_End~q\ : std_logic;
SIGNAL \inst30|Selector1~0_combout\ : std_logic;
SIGNAL \inst30|Selector2~0_combout\ : std_logic;
SIGNAL \inst30|Selector0~0_combout\ : std_logic;
SIGNAL \inst30|Selector3~0_combout\ : std_logic;
SIGNAL \inst30|CS.State_Wait~q\ : std_logic;
SIGNAL \inst30|CS.State_End~0_combout\ : std_logic;
SIGNAL \inst30|CS.State_End~DUPLICATE_q\ : std_logic;
SIGNAL \inst30|Reset_n_out~q\ : std_logic;
SIGNAL \inst24|Add0~33_sumout\ : std_logic;
SIGNAL \inst24|Add0~14\ : std_logic;
SIGNAL \inst24|Add0~17_sumout\ : std_logic;
SIGNAL \inst24|Add0~18\ : std_logic;
SIGNAL \inst24|Add0~21_sumout\ : std_logic;
SIGNAL \inst24|Equal0~1_combout\ : std_logic;
SIGNAL \inst24|Cpte~0_combout\ : std_logic;
SIGNAL \inst24|Cpte~1_combout\ : std_logic;
SIGNAL \inst24|Add0~34\ : std_logic;
SIGNAL \inst24|Add0~1_sumout\ : std_logic;
SIGNAL \inst24|Add0~2\ : std_logic;
SIGNAL \inst24|Add0~29_sumout\ : std_logic;
SIGNAL \inst24|Add0~30\ : std_logic;
SIGNAL \inst24|Add0~25_sumout\ : std_logic;
SIGNAL \inst24|Add0~26\ : std_logic;
SIGNAL \inst24|Add0~5_sumout\ : std_logic;
SIGNAL \inst24|Add0~6\ : std_logic;
SIGNAL \inst24|Add0~9_sumout\ : std_logic;
SIGNAL \inst24|Add0~10\ : std_logic;
SIGNAL \inst24|Add0~13_sumout\ : std_logic;
SIGNAL \inst24|Equal0~0_combout\ : std_logic;
SIGNAL \inst24|temp~0_combout\ : std_logic;
SIGNAL \inst24|temp~q\ : std_logic;
SIGNAL \inst24|CLKs~combout\ : std_logic;
SIGNAL \inst20|State.SendEnd~DUPLICATE_q\ : std_logic;
SIGNAL \inst20|Cpte[1]~DUPLICATE_q\ : std_logic;
SIGNAL \inst20|Cpte[2]~DUPLICATE_q\ : std_logic;
SIGNAL \inst20|LessThan0~0_combout\ : std_logic;
SIGNAL \inst20|Add0~0_combout\ : std_logic;
SIGNAL \inst20|Vs~q\ : std_logic;
SIGNAL \inst21|State.Starter~feeder_combout\ : std_logic;
SIGNAL \inst21|State.Starter~q\ : std_logic;
SIGNAL \inst21|State.SendI2C_A~0_combout\ : std_logic;
SIGNAL \inst21|State.SendI2C_A~q\ : std_logic;
SIGNAL \inst21|Selector7~0_combout\ : std_logic;
SIGNAL \inst21|State.SendI2C_St~q\ : std_logic;
SIGNAL \inst21|State~22_combout\ : std_logic;
SIGNAL \inst21|State.SendI2C_A1~q\ : std_logic;
SIGNAL \inst21|Selector8~0_combout\ : std_logic;
SIGNAL \inst21|State.SendI2C_St1~q\ : std_logic;
SIGNAL \inst21|State~23_combout\ : std_logic;
SIGNAL \inst21|State.SendI2C_A2~q\ : std_logic;
SIGNAL \inst21|Selector9~0_combout\ : std_logic;
SIGNAL \inst21|State.SendI2C_St2~q\ : std_logic;
SIGNAL \inst21|State~28_combout\ : std_logic;
SIGNAL \inst21|State.SendI2C_A3~q\ : std_logic;
SIGNAL \inst21|Selector10~0_combout\ : std_logic;
SIGNAL \inst21|State.SendI2C_St3~q\ : std_logic;
SIGNAL \inst21|State~26_combout\ : std_logic;
SIGNAL \inst21|State.SendI2C_A4~q\ : std_logic;
SIGNAL \inst21|Selector11~0_combout\ : std_logic;
SIGNAL \inst21|State.SendI2C_St4~q\ : std_logic;
SIGNAL \inst21|State~24_combout\ : std_logic;
SIGNAL \inst21|State.SendI2C_A5~q\ : std_logic;
SIGNAL \inst21|Selector12~0_combout\ : std_logic;
SIGNAL \inst21|State.SendI2C_St5~q\ : std_logic;
SIGNAL \inst21|State~25_combout\ : std_logic;
SIGNAL \inst21|State.SendI2C_A6~q\ : std_logic;
SIGNAL \inst21|Selector13~0_combout\ : std_logic;
SIGNAL \inst21|State.SendI2C_St6~q\ : std_logic;
SIGNAL \inst21|WideOr0~0_combout\ : std_logic;
SIGNAL \inst21|WideOr0~combout\ : std_logic;
SIGNAL \inst21|St_I2C~q\ : std_logic;
SIGNAL \inst20|Selector11~0_combout\ : std_logic;
SIGNAL \inst20|State.Ender~q\ : std_logic;
SIGNAL \inst20|Selector1~1_combout\ : std_logic;
SIGNAL \inst20|Selector9~0_combout\ : std_logic;
SIGNAL \inst20|State.Ack2~q\ : std_logic;
SIGNAL \inst20|Selector10~4_combout\ : std_logic;
SIGNAL \inst20|State.SendEnd~q\ : std_logic;
SIGNAL \inst20|Selector4~1_combout\ : std_logic;
SIGNAL \inst20|State.Starter~q\ : std_logic;
SIGNAL \inst20|State~20_combout\ : std_logic;
SIGNAL \inst20|Selector5~0_combout\ : std_logic;
SIGNAL \inst20|State.SendAddr~q\ : std_logic;
SIGNAL \inst20|Selector1~0_combout\ : std_logic;
SIGNAL \inst20|Selector3~0_combout\ : std_logic;
SIGNAL \inst20|Selector3~1_combout\ : std_logic;
SIGNAL \inst20|Cpte[0]~DUPLICATE_q\ : std_logic;
SIGNAL \inst20|Selector0~0_combout\ : std_logic;
SIGNAL \inst20|Selector0~1_combout\ : std_logic;
SIGNAL \inst20|State.SendIns~q\ : std_logic;
SIGNAL \inst20|State.SendIns~0_combout\ : std_logic;
SIGNAL \inst20|State.SendIns~DUPLICATE_q\ : std_logic;
SIGNAL \inst20|Selector7~0_combout\ : std_logic;
SIGNAL \inst20|State.Ack1~q\ : std_logic;
SIGNAL \inst20|Selector8~0_combout\ : std_logic;
SIGNAL \inst20|State.SendData~q\ : std_logic;
SIGNAL \inst20|Selector2~0_combout\ : std_logic;
SIGNAL \inst20|Selector2~1_combout\ : std_logic;
SIGNAL \inst20|Mux0~0_combout\ : std_logic;
SIGNAL \inst21|WideOr2~0_combout\ : std_logic;
SIGNAL \inst21|State~27_combout\ : std_logic;
SIGNAL \inst21|State.Sgo1~q\ : std_logic;
SIGNAL \inst21|Selector14~0_combout\ : std_logic;
SIGNAL \inst21|State.Svol1~q\ : std_logic;
SIGNAL \inst21|Selector15~0_combout\ : std_logic;
SIGNAL \inst21|State.Svol2~q\ : std_logic;
SIGNAL \inst21|WideOr12~0_combout\ : std_logic;
SIGNAL \inst21|WideOr13~combout\ : std_logic;
SIGNAL \inst21|WideOr6~0_combout\ : std_logic;
SIGNAL \inst21|WideOr14~combout\ : std_logic;
SIGNAL \inst21|WideOr12~combout\ : std_logic;
SIGNAL \inst20|Mux1~0_combout\ : std_logic;
SIGNAL \inst20|Selector12~0_combout\ : std_logic;
SIGNAL \inst21|WideOr8~0_combout\ : std_logic;
SIGNAL \inst21|DATA_I2C[3]~feeder_combout\ : std_logic;
SIGNAL \inst21|DATA_I2C~2_combout\ : std_logic;
SIGNAL \inst21|WideOr4~combout\ : std_logic;
SIGNAL \inst21|WideOr10~combout\ : std_logic;
SIGNAL \inst20|Mux2~1_combout\ : std_logic;
SIGNAL \inst20|Mux2~0_combout\ : std_logic;
SIGNAL \inst20|Selector12~1_combout\ : std_logic;
SIGNAL \inst20|Selector12~2_combout\ : std_logic;
SIGNAL \inst20|S~reg0_q\ : std_logic;
SIGNAL \inst20|S~en_q\ : std_logic;
SIGNAL \inst20|Selector4~0_combout\ : std_logic;
SIGNAL \inst20|AND_O~q\ : std_logic;
SIGNAL \inst6~combout\ : std_logic;
SIGNAL \inst26|Add0~30\ : std_logic;
SIGNAL \inst26|Add0~33_sumout\ : std_logic;
SIGNAL \inst26|Cpte[1]~DUPLICATE_q\ : std_logic;
SIGNAL \inst26|Add0~34\ : std_logic;
SIGNAL \inst26|Add0~37_sumout\ : std_logic;
SIGNAL \inst26|Add0~38\ : std_logic;
SIGNAL \inst26|Add0~41_sumout\ : std_logic;
SIGNAL \inst26|Add0~42\ : std_logic;
SIGNAL \inst26|Add0~45_sumout\ : std_logic;
SIGNAL \inst26|Cpte[4]~DUPLICATE_q\ : std_logic;
SIGNAL \inst26|Add0~46\ : std_logic;
SIGNAL \inst26|Add0~17_sumout\ : std_logic;
SIGNAL \inst26|Add0~18\ : std_logic;
SIGNAL \inst26|Add0~21_sumout\ : std_logic;
SIGNAL \inst26|Add0~22\ : std_logic;
SIGNAL \inst26|Add0~25_sumout\ : std_logic;
SIGNAL \inst26|Add0~26\ : std_logic;
SIGNAL \inst26|Add0~1_sumout\ : std_logic;
SIGNAL \inst26|Equal0~0_combout\ : std_logic;
SIGNAL \inst26|Add0~2\ : std_logic;
SIGNAL \inst26|Add0~13_sumout\ : std_logic;
SIGNAL \inst26|Add0~14\ : std_logic;
SIGNAL \inst26|Add0~5_sumout\ : std_logic;
SIGNAL \inst26|Add0~6\ : std_logic;
SIGNAL \inst26|Add0~9_sumout\ : std_logic;
SIGNAL \inst26|Equal0~1_combout\ : std_logic;
SIGNAL \inst26|Equal0~2_combout\ : std_logic;
SIGNAL \inst26|Cpte~0_combout\ : std_logic;
SIGNAL \inst26|Cpte~1_combout\ : std_logic;
SIGNAL \inst26|Cpte[0]~DUPLICATE_q\ : std_logic;
SIGNAL \inst26|Add0~29_sumout\ : std_logic;
SIGNAL \inst26|temp~0_combout\ : std_logic;
SIGNAL \inst26|temp~feeder_combout\ : std_logic;
SIGNAL \inst26|temp~q\ : std_logic;
SIGNAL \inst26|CLKs~combout\ : std_logic;
SIGNAL \inst22|State.SendR~DUPLICATE_q\ : std_logic;
SIGNAL \inst22|Selector7~0_combout\ : std_logic;
SIGNAL \inst22|Selector5~0_combout\ : std_logic;
SIGNAL \inst22|Selector4~0_combout\ : std_logic;
SIGNAL \inst22|Selector3~0_combout\ : std_logic;
SIGNAL \inst22|Cpte[2]~feeder_combout\ : std_logic;
SIGNAL \inst22|Cpte[2]~DUPLICATE_q\ : std_logic;
SIGNAL \inst21|DATA_I2C~3_combout\ : std_logic;
SIGNAL \inst21|St_I2S~q\ : std_logic;
SIGNAL \inst22|State.Starter~0_combout\ : std_logic;
SIGNAL \inst22|State.Starter~q\ : std_logic;
SIGNAL \inst22|Selector8~0_combout\ : std_logic;
SIGNAL \inst22|State.Starter1~q\ : std_logic;
SIGNAL \inst22|Add0~0_combout\ : std_logic;
SIGNAL \inst22|Selector2~0_combout\ : std_logic;
SIGNAL \inst22|Cpte[3]~DUPLICATE_q\ : std_logic;
SIGNAL \inst22|LessThan1~1_combout\ : std_logic;
SIGNAL \inst22|Selector1~0_combout\ : std_logic;
SIGNAL \inst22|LessThan1~0_combout\ : std_logic;
SIGNAL \inst22|State.SendR~0_combout\ : std_logic;
SIGNAL \inst22|State.SendR~feeder_combout\ : std_logic;
SIGNAL \inst22|State.SendR~q\ : std_logic;
SIGNAL \inst22|Selector10~0_combout\ : std_logic;
SIGNAL \inst22|State.SendL~q\ : std_logic;
SIGNAL \inst22|Selector6~0_combout\ : std_logic;
SIGNAL \inst22|SIDx2~q\ : std_logic;
SIGNAL \inst23|temp~0_combout\ : std_logic;
SIGNAL \inst23|Add1~17_sumout\ : std_logic;
SIGNAL \inst23|Cpte[0]~DUPLICATE_q\ : std_logic;
SIGNAL \inst23|Add1~18\ : std_logic;
SIGNAL \inst23|Add1~13_sumout\ : std_logic;
SIGNAL \inst23|Add1~14\ : std_logic;
SIGNAL \inst23|Add1~9_sumout\ : std_logic;
SIGNAL \inst23|Add1~10\ : std_logic;
SIGNAL \inst23|Add1~5_sumout\ : std_logic;
SIGNAL \inst23|Cpte[3]~feeder_combout\ : std_logic;
SIGNAL \inst23|Add1~6\ : std_logic;
SIGNAL \inst23|Add1~1_sumout\ : std_logic;
SIGNAL \inst23|Add1~2\ : std_logic;
SIGNAL \inst23|Add1~29_sumout\ : std_logic;
SIGNAL \inst23|Cpte[5]~feeder_combout\ : std_logic;
SIGNAL \inst23|Add1~30\ : std_logic;
SIGNAL \inst23|Add1~25_sumout\ : std_logic;
SIGNAL \inst23|Add1~26\ : std_logic;
SIGNAL \inst23|Add1~21_sumout\ : std_logic;
SIGNAL \inst23|Equal0~0_combout\ : std_logic;
SIGNAL \inst23|Equal0~1_combout\ : std_logic;
SIGNAL \inst23|temp~q\ : std_logic;
SIGNAL \inst23|CLKs~combout\ : std_logic;
SIGNAL \inst21|St_CPT~q\ : std_logic;
SIGNAL \SEL0~input_o\ : std_logic;
SIGNAL \inst3|Cpts[8]~5_combout\ : std_logic;
SIGNAL \inst3|Cpts[8]~7_combout\ : std_logic;
SIGNAL \inst3|Add0~17_sumout\ : std_logic;
SIGNAL \inst3|Cpte[0]~DUPLICATE_q\ : std_logic;
SIGNAL \inst3|Add0~18\ : std_logic;
SIGNAL \inst3|Add0~13_sumout\ : std_logic;
SIGNAL \inst3|Add0~14\ : std_logic;
SIGNAL \inst3|Add0~9_sumout\ : std_logic;
SIGNAL \inst3|Add0~10\ : std_logic;
SIGNAL \inst3|Add0~5_sumout\ : std_logic;
SIGNAL \inst3|Cpte[3]~DUPLICATE_q\ : std_logic;
SIGNAL \inst3|Add0~6\ : std_logic;
SIGNAL \inst3|Add0~29_sumout\ : std_logic;
SIGNAL \inst3|Cpte[4]~DUPLICATE_q\ : std_logic;
SIGNAL \inst3|Add0~30\ : std_logic;
SIGNAL \inst3|Add0~25_sumout\ : std_logic;
SIGNAL \inst3|Cpte[5]~DUPLICATE_q\ : std_logic;
SIGNAL \inst3|Add0~26\ : std_logic;
SIGNAL \inst3|Add0~21_sumout\ : std_logic;
SIGNAL \inst3|Cpte[6]~DUPLICATE_q\ : std_logic;
SIGNAL \inst3|Add0~22\ : std_logic;
SIGNAL \inst3|Add0~1_sumout\ : std_logic;
SIGNAL \inst3|Cpte[7]~DUPLICATE_q\ : std_logic;
SIGNAL \inst3|Cpte[1]~DUPLICATE_q\ : std_logic;
SIGNAL \inst|Mux2~2_combout\ : std_logic;
SIGNAL \inst3|LessThan0~0_combout\ : std_logic;
SIGNAL \inst3|Cpts[8]~_emulated_q\ : std_logic;
SIGNAL \inst3|Cpts[8]~6_combout\ : std_logic;
SIGNAL \inst|Mux22~0_combout\ : std_logic;
SIGNAL \inst|Mux31~1_combout\ : std_logic;
SIGNAL \inst|Mux31~0_combout\ : std_logic;
SIGNAL \inst|Mux31~3_combout\ : std_logic;
SIGNAL \inst|Mux31~2_combout\ : std_logic;
SIGNAL \inst|Mux31~4_combout\ : std_logic;
SIGNAL \inst|Mux2~1_combout\ : std_logic;
SIGNAL \SEL1~input_o\ : std_logic;
SIGNAL \inst3|Cpts[9]~1_combout\ : std_logic;
SIGNAL \inst3|Cpts[9]~3_combout\ : std_logic;
SIGNAL \inst3|Cpts[9]~_emulated_q\ : std_logic;
SIGNAL \inst3|Cpts[9]~2_combout\ : std_logic;
SIGNAL \inst|Mux31~5_combout\ : std_logic;
SIGNAL \inst22|DtR[0]~0_combout\ : std_logic;
SIGNAL \inst22|DtL[0]~0_combout\ : std_logic;
SIGNAL \inst22|Selector0~3_combout\ : std_logic;
SIGNAL \inst|Mux2~0_combout\ : std_logic;
SIGNAL \inst|Mux15~0_combout\ : std_logic;
SIGNAL \inst|Mux28~5_combout\ : std_logic;
SIGNAL \inst|Mux28~4_combout\ : std_logic;
SIGNAL \inst|Mux28~6_combout\ : std_logic;
SIGNAL \inst|Mux28~1_combout\ : std_logic;
SIGNAL \inst|Mux28~2_combout\ : std_logic;
SIGNAL \inst|Mux28~3_combout\ : std_logic;
SIGNAL \inst|Mux28~0_combout\ : std_logic;
SIGNAL \inst|Mux30~6_combout\ : std_logic;
SIGNAL \inst|Mux30~7_combout\ : std_logic;
SIGNAL \inst|Mux30~8_combout\ : std_logic;
SIGNAL \inst|Mux30~0_combout\ : std_logic;
SIGNAL \inst|Mux30~3_combout\ : std_logic;
SIGNAL \inst|Mux30~4_combout\ : std_logic;
SIGNAL \inst|Mux30~5_combout\ : std_logic;
SIGNAL \inst|Mux30~2_combout\ : std_logic;
SIGNAL \inst|Mux30~1_combout\ : std_logic;
SIGNAL \inst|Mux29~5_combout\ : std_logic;
SIGNAL \inst|Mux29~4_combout\ : std_logic;
SIGNAL \inst|Mux29~6_combout\ : std_logic;
SIGNAL \inst|Mux29~1_combout\ : std_logic;
SIGNAL \inst|Mux29~2_combout\ : std_logic;
SIGNAL \inst|Mux29~3_combout\ : std_logic;
SIGNAL \inst|Mux29~0_combout\ : std_logic;
SIGNAL \inst22|S~5_combout\ : std_logic;
SIGNAL \inst|Mux24~3_combout\ : std_logic;
SIGNAL \inst|Mux24~4_combout\ : std_logic;
SIGNAL \inst|Mux24~5_combout\ : std_logic;
SIGNAL \inst|Mux24~0_combout\ : std_logic;
SIGNAL \inst|Mux24~2_combout\ : std_logic;
SIGNAL \inst|Mux24~1_combout\ : std_logic;
SIGNAL \inst|Mux25~0_combout\ : std_logic;
SIGNAL \inst|Mux25~4_combout\ : std_logic;
SIGNAL \inst|Mux25~3_combout\ : std_logic;
SIGNAL \inst|Mux25~5_combout\ : std_logic;
SIGNAL \inst|Mux25~2_combout\ : std_logic;
SIGNAL \inst|Mux25~1_combout\ : std_logic;
SIGNAL \inst|Mux26~6_combout\ : std_logic;
SIGNAL \inst|Mux26~7_combout\ : std_logic;
SIGNAL \inst|Mux26~8_combout\ : std_logic;
SIGNAL \inst|Mux26~0_combout\ : std_logic;
SIGNAL \inst|Mux26~3_combout\ : std_logic;
SIGNAL \inst|Mux26~4_combout\ : std_logic;
SIGNAL \inst|Mux26~5_combout\ : std_logic;
SIGNAL \inst|Mux26~2_combout\ : std_logic;
SIGNAL \inst|Mux26~1_combout\ : std_logic;
SIGNAL \inst|Mux27~3_combout\ : std_logic;
SIGNAL \inst|Mux27~4_combout\ : std_logic;
SIGNAL \inst|Mux27~5_combout\ : std_logic;
SIGNAL \inst|Mux27~6_combout\ : std_logic;
SIGNAL \inst|Mux27~7_combout\ : std_logic;
SIGNAL \inst|Mux27~8_combout\ : std_logic;
SIGNAL \inst|Mux27~0_combout\ : std_logic;
SIGNAL \inst|Mux27~2_combout\ : std_logic;
SIGNAL \inst|Mux27~1_combout\ : std_logic;
SIGNAL \inst22|S~4_combout\ : std_logic;
SIGNAL \inst22|S~6_combout\ : std_logic;
SIGNAL \inst22|S~7_combout\ : std_logic;
SIGNAL \inst22|S~8_combout\ : std_logic;
SIGNAL \inst22|S~9_combout\ : std_logic;
SIGNAL \inst22|Selector0~2_combout\ : std_logic;
SIGNAL \inst22|Cpte[1]~DUPLICATE_q\ : std_logic;
SIGNAL \inst|Mux9~4_combout\ : std_logic;
SIGNAL \inst|Mux9~5_combout\ : std_logic;
SIGNAL \inst|Mux9~6_combout\ : std_logic;
SIGNAL \inst|Mux9~1_combout\ : std_logic;
SIGNAL \inst|Mux9~2_combout\ : std_logic;
SIGNAL \inst|Mux9~3_combout\ : std_logic;
SIGNAL \inst|Mux9~0_combout\ : std_logic;
SIGNAL \inst|Mux5~7_combout\ : std_logic;
SIGNAL \inst|Mux5~0_combout\ : std_logic;
SIGNAL \inst|Mux5~8_combout\ : std_logic;
SIGNAL \inst|Mux5~3_combout\ : std_logic;
SIGNAL \inst|Mux5~9_combout\ : std_logic;
SIGNAL \inst|Mux5~2_combout\ : std_logic;
SIGNAL \inst|Mux5~6_combout\ : std_logic;
SIGNAL \inst|Mux5~5_combout\ : std_logic;
SIGNAL \inst|Mux5~1_combout\ : std_logic;
SIGNAL \inst|Mux5~4_combout\ : std_logic;
SIGNAL \inst|Mux1~3_combout\ : std_logic;
SIGNAL \inst|Mux1~1_combout\ : std_logic;
SIGNAL \inst|Mux2~3_combout\ : std_logic;
SIGNAL \inst|Mux1~2_combout\ : std_logic;
SIGNAL \inst|Mux1~0_combout\ : std_logic;
SIGNAL \inst|Mux13~3_combout\ : std_logic;
SIGNAL \inst|Mux13~4_combout\ : std_logic;
SIGNAL \inst|Mux13~5_combout\ : std_logic;
SIGNAL \inst|Mux13~0_combout\ : std_logic;
SIGNAL \inst|Mux13~2_combout\ : std_logic;
SIGNAL \inst|Mux13~1_combout\ : std_logic;
SIGNAL \inst22|S~17_combout\ : std_logic;
SIGNAL \inst|Mux12~4_combout\ : std_logic;
SIGNAL \inst|Mux12~3_combout\ : std_logic;
SIGNAL \inst|Mux12~5_combout\ : std_logic;
SIGNAL \inst|Mux12~0_combout\ : std_logic;
SIGNAL \inst|Mux12~7_combout\ : std_logic;
SIGNAL \inst|Mux12~6_combout\ : std_logic;
SIGNAL \inst|Mux12~8_combout\ : std_logic;
SIGNAL \inst|Mux12~2_combout\ : std_logic;
SIGNAL \inst|Mux12~1_combout\ : std_logic;
SIGNAL \inst|Mux4~8_combout\ : std_logic;
SIGNAL \inst|Mux4~1_combout\ : std_logic;
SIGNAL \inst|Mux4~9_combout\ : std_logic;
SIGNAL \inst|Mux4~3_combout\ : std_logic;
SIGNAL \inst|Mux4~0_combout\ : std_logic;
SIGNAL \inst|Mux4~2_combout\ : std_logic;
SIGNAL \inst|Mux4~4_combout\ : std_logic;
SIGNAL \inst|Mux4~5_combout\ : std_logic;
SIGNAL \inst|Mux4~10_combout\ : std_logic;
SIGNAL \inst|Mux4~6_combout\ : std_logic;
SIGNAL \inst|Mux4~7_combout\ : std_logic;
SIGNAL \inst|Mux8~4_combout\ : std_logic;
SIGNAL \inst|Mux8~2_combout\ : std_logic;
SIGNAL \inst|Mux8~5_combout\ : std_logic;
SIGNAL \inst|Mux8~1_combout\ : std_logic;
SIGNAL \inst|Mux8~3_combout\ : std_logic;
SIGNAL \inst|Mux8~0_combout\ : std_logic;
SIGNAL \inst|Mux0~0_combout\ : std_logic;
SIGNAL \inst|Mux0~1_combout\ : std_logic;
SIGNAL \inst22|DtR[31]~feeder_combout\ : std_logic;
SIGNAL \inst22|S~18_combout\ : std_logic;
SIGNAL \inst|Mux10~0_combout\ : std_logic;
SIGNAL \inst|Mux10~3_combout\ : std_logic;
SIGNAL \inst|Mux10~4_combout\ : std_logic;
SIGNAL \inst|Mux10~5_combout\ : std_logic;
SIGNAL \inst|Mux10~2_combout\ : std_logic;
SIGNAL \inst|Mux10~1_combout\ : std_logic;
SIGNAL \inst22|DtR[21]~feeder_combout\ : std_logic;
SIGNAL \inst|Mux14~5_combout\ : std_logic;
SIGNAL \inst|Mux14~4_combout\ : std_logic;
SIGNAL \inst|Mux14~6_combout\ : std_logic;
SIGNAL \inst|Mux14~2_combout\ : std_logic;
SIGNAL \inst|Mux14~1_combout\ : std_logic;
SIGNAL \inst|Mux14~3_combout\ : std_logic;
SIGNAL \inst|Mux14~0_combout\ : std_logic;
SIGNAL \inst|Mux2~14_combout\ : std_logic;
SIGNAL \inst|Mux2~4_combout\ : std_logic;
SIGNAL \inst|Mux2~9_combout\ : std_logic;
SIGNAL \inst|Mux2~10_combout\ : std_logic;
SIGNAL \inst|Mux2~5_combout\ : std_logic;
SIGNAL \inst|Mux2~13_combout\ : std_logic;
SIGNAL \inst|Mux2~12_combout\ : std_logic;
SIGNAL \inst|Mux2~7_combout\ : std_logic;
SIGNAL \inst|Mux2~11_combout\ : std_logic;
SIGNAL \inst|Mux2~6_combout\ : std_logic;
SIGNAL \inst|Mux2~8_combout\ : std_logic;
SIGNAL \inst|Mux6~3_combout\ : std_logic;
SIGNAL \inst|Mux6~4_combout\ : std_logic;
SIGNAL \inst|Mux6~1_combout\ : std_logic;
SIGNAL \inst|Mux6~2_combout\ : std_logic;
SIGNAL \inst|Mux7~0_combout\ : std_logic;
SIGNAL \inst|Mux6~7_combout\ : std_logic;
SIGNAL \inst|Mux6~0_combout\ : std_logic;
SIGNAL \inst|Mux6~8_combout\ : std_logic;
SIGNAL \inst|Mux6~5_combout\ : std_logic;
SIGNAL \inst|Mux6~6_combout\ : std_logic;
SIGNAL \inst22|S~16_combout\ : std_logic;
SIGNAL \inst|Mux7~2_combout\ : std_logic;
SIGNAL \inst|Mux7~1_combout\ : std_logic;
SIGNAL \inst|Mux7~3_combout\ : std_logic;
SIGNAL \inst|Mux7~6_combout\ : std_logic;
SIGNAL \inst|Mux7~5_combout\ : std_logic;
SIGNAL \inst|Mux7~7_combout\ : std_logic;
SIGNAL \inst|Mux7~4_combout\ : std_logic;
SIGNAL \inst22|DtR[24]~feeder_combout\ : std_logic;
SIGNAL \inst|Mux11~4_combout\ : std_logic;
SIGNAL \inst|Mux11~5_combout\ : std_logic;
SIGNAL \inst|Mux11~6_combout\ : std_logic;
SIGNAL \inst|Mux11~2_combout\ : std_logic;
SIGNAL \inst|Mux11~1_combout\ : std_logic;
SIGNAL \inst|Mux11~3_combout\ : std_logic;
SIGNAL \inst|Mux11~0_combout\ : std_logic;
SIGNAL \inst22|DtR[20]~feeder_combout\ : std_logic;
SIGNAL \inst|Mux3~4_combout\ : std_logic;
SIGNAL \inst|Mux3~5_combout\ : std_logic;
SIGNAL \inst|Mux3~1_combout\ : std_logic;
SIGNAL \inst|Mux3~8_combout\ : std_logic;
SIGNAL \inst|Mux3~2_combout\ : std_logic;
SIGNAL \inst|Mux3~7_combout\ : std_logic;
SIGNAL \inst|Mux3~3_combout\ : std_logic;
SIGNAL \inst|Mux3~6_combout\ : std_logic;
SIGNAL \inst|Mux3~0_combout\ : std_logic;
SIGNAL \inst|Mux3~9_combout\ : std_logic;
SIGNAL \inst|Mux15~4_combout\ : std_logic;
SIGNAL \inst|Mux15~5_combout\ : std_logic;
SIGNAL \inst|Mux15~6_combout\ : std_logic;
SIGNAL \inst|Mux15~1_combout\ : std_logic;
SIGNAL \inst|Mux15~3_combout\ : std_logic;
SIGNAL \inst|Mux15~2_combout\ : std_logic;
SIGNAL \inst22|S~15_combout\ : std_logic;
SIGNAL \inst22|S~19_combout\ : std_logic;
SIGNAL \inst22|S~10_combout\ : std_logic;
SIGNAL \inst22|S~11_combout\ : std_logic;
SIGNAL \inst22|S~12_combout\ : std_logic;
SIGNAL \inst22|S~13_combout\ : std_logic;
SIGNAL \inst22|S~14_combout\ : std_logic;
SIGNAL \inst22|Selector0~4_combout\ : std_logic;
SIGNAL \inst|Mux16~4_combout\ : std_logic;
SIGNAL \inst|Mux16~3_combout\ : std_logic;
SIGNAL \inst|Mux16~5_combout\ : std_logic;
SIGNAL \inst|Mux16~0_combout\ : std_logic;
SIGNAL \inst|Mux16~7_combout\ : std_logic;
SIGNAL \inst|Mux16~6_combout\ : std_logic;
SIGNAL \inst|Mux16~8_combout\ : std_logic;
SIGNAL \inst|Mux16~2_combout\ : std_logic;
SIGNAL \inst|Mux16~1_combout\ : std_logic;
SIGNAL \inst|Mux19~3_combout\ : std_logic;
SIGNAL \inst|Mux19~4_combout\ : std_logic;
SIGNAL \inst|Mux19~5_combout\ : std_logic;
SIGNAL \inst|Mux19~0_combout\ : std_logic;
SIGNAL \inst|Mux19~2_combout\ : std_logic;
SIGNAL \inst|Mux19~1_combout\ : std_logic;
SIGNAL \inst|Mux18~0_combout\ : std_logic;
SIGNAL \inst|Mux18~4_combout\ : std_logic;
SIGNAL \inst|Mux18~3_combout\ : std_logic;
SIGNAL \inst|Mux18~5_combout\ : std_logic;
SIGNAL \inst|Mux18~7_combout\ : std_logic;
SIGNAL \inst|Mux18~6_combout\ : std_logic;
SIGNAL \inst|Mux18~8_combout\ : std_logic;
SIGNAL \inst|Mux18~2_combout\ : std_logic;
SIGNAL \inst|Mux18~1_combout\ : std_logic;
SIGNAL \inst|Mux17~0_combout\ : std_logic;
SIGNAL \inst|Mux17~4_combout\ : std_logic;
SIGNAL \inst|Mux17~3_combout\ : std_logic;
SIGNAL \inst|Mux17~5_combout\ : std_logic;
SIGNAL \inst|Mux17~2_combout\ : std_logic;
SIGNAL \inst|Mux17~1_combout\ : std_logic;
SIGNAL \inst22|S~2_combout\ : std_logic;
SIGNAL \inst22|DtR[13]~feeder_combout\ : std_logic;
SIGNAL \inst22|S~0_combout\ : std_logic;
SIGNAL \inst|Mux22~5_combout\ : std_logic;
SIGNAL \inst|Mux22~4_combout\ : std_logic;
SIGNAL \inst|Mux22~6_combout\ : std_logic;
SIGNAL \inst|Mux22~1_combout\ : std_logic;
SIGNAL \inst|Mux22~8_combout\ : std_logic;
SIGNAL \inst|Mux22~7_combout\ : std_logic;
SIGNAL \inst|Mux22~9_combout\ : std_logic;
SIGNAL \inst|Mux22~3_combout\ : std_logic;
SIGNAL \inst|Mux22~2_combout\ : std_logic;
SIGNAL \inst|Mux21~5_combout\ : std_logic;
SIGNAL \inst|Mux21~4_combout\ : std_logic;
SIGNAL \inst|Mux21~6_combout\ : std_logic;
SIGNAL \inst|Mux21~2_combout\ : std_logic;
SIGNAL \inst|Mux21~1_combout\ : std_logic;
SIGNAL \inst|Mux21~3_combout\ : std_logic;
SIGNAL \inst|Mux21~0_combout\ : std_logic;
SIGNAL \inst|Mux23~4_combout\ : std_logic;
SIGNAL \inst|Mux23~3_combout\ : std_logic;
SIGNAL \inst|Mux23~5_combout\ : std_logic;
SIGNAL \inst|Mux23~0_combout\ : std_logic;
SIGNAL \inst|Mux23~2_combout\ : std_logic;
SIGNAL \inst|Mux23~1_combout\ : std_logic;
SIGNAL \inst|Mux20~0_combout\ : std_logic;
SIGNAL \inst|Mux20~3_combout\ : std_logic;
SIGNAL \inst|Mux20~4_combout\ : std_logic;
SIGNAL \inst|Mux20~5_combout\ : std_logic;
SIGNAL \inst|Mux20~2_combout\ : std_logic;
SIGNAL \inst|Mux20~1_combout\ : std_logic;
SIGNAL \inst22|S~1_combout\ : std_logic;
SIGNAL \inst22|Selector0~0_combout\ : std_logic;
SIGNAL \inst22|DtL[10]~feeder_combout\ : std_logic;
SIGNAL \inst22|S~3_combout\ : std_logic;
SIGNAL \inst22|Selector0~1_combout\ : std_logic;
SIGNAL \inst22|Selector0~5_combout\ : std_logic;
SIGNAL \inst22|S~q\ : std_logic;
SIGNAL \inst22|SID~q\ : std_logic;
SIGNAL \inst22|AND_O~q\ : std_logic;
SIGNAL \inst5~combout\ : std_logic;
SIGNAL \inst27|Add0~29_sumout\ : std_logic;
SIGNAL \inst27|Cpte[0]~DUPLICATE_q\ : std_logic;
SIGNAL \inst27|Add0~30\ : std_logic;
SIGNAL \inst27|Add0~33_sumout\ : std_logic;
SIGNAL \inst27|Add0~34\ : std_logic;
SIGNAL \inst27|Add0~37_sumout\ : std_logic;
SIGNAL \inst27|Add0~38\ : std_logic;
SIGNAL \inst27|Add0~25_sumout\ : std_logic;
SIGNAL \inst27|Add0~26\ : std_logic;
SIGNAL \inst27|Add0~41_sumout\ : std_logic;
SIGNAL \inst27|Add0~42\ : std_logic;
SIGNAL \inst27|Add0~17_sumout\ : std_logic;
SIGNAL \inst27|Add0~18\ : std_logic;
SIGNAL \inst27|Add0~21_sumout\ : std_logic;
SIGNAL \inst27|Add0~22\ : std_logic;
SIGNAL \inst27|Add0~45_sumout\ : std_logic;
SIGNAL \inst27|Add0~46\ : std_logic;
SIGNAL \inst27|Add0~49_sumout\ : std_logic;
SIGNAL \inst27|Add0~50\ : std_logic;
SIGNAL \inst27|Add0~53_sumout\ : std_logic;
SIGNAL \inst27|Add0~54\ : std_logic;
SIGNAL \inst27|Add0~61_sumout\ : std_logic;
SIGNAL \inst27|Add0~62\ : std_logic;
SIGNAL \inst27|Add0~57_sumout\ : std_logic;
SIGNAL \inst27|Add0~58\ : std_logic;
SIGNAL \inst27|Add0~65_sumout\ : std_logic;
SIGNAL \inst27|Cpte[12]~DUPLICATE_q\ : std_logic;
SIGNAL \inst27|Add0~66\ : std_logic;
SIGNAL \inst27|Add0~69_sumout\ : std_logic;
SIGNAL \inst27|Add0~70\ : std_logic;
SIGNAL \inst27|Add0~73_sumout\ : std_logic;
SIGNAL \inst27|Add0~74\ : std_logic;
SIGNAL \inst27|Add0~77_sumout\ : std_logic;
SIGNAL \inst27|Add0~78\ : std_logic;
SIGNAL \inst27|Add0~13_sumout\ : std_logic;
SIGNAL \inst27|Add0~14\ : std_logic;
SIGNAL \inst27|Add0~9_sumout\ : std_logic;
SIGNAL \inst27|Add0~10\ : std_logic;
SIGNAL \inst27|Add0~5_sumout\ : std_logic;
SIGNAL \inst27|Add0~6\ : std_logic;
SIGNAL \inst27|Add0~81_sumout\ : std_logic;
SIGNAL \inst27|Add0~82\ : std_logic;
SIGNAL \inst27|Add0~85_sumout\ : std_logic;
SIGNAL \inst27|Add0~86\ : std_logic;
SIGNAL \inst27|Add0~89_sumout\ : std_logic;
SIGNAL \inst27|Add0~90\ : std_logic;
SIGNAL \inst27|Add0~93_sumout\ : std_logic;
SIGNAL \inst27|Add0~94\ : std_logic;
SIGNAL \inst27|Add0~97_sumout\ : std_logic;
SIGNAL \inst27|Add0~98\ : std_logic;
SIGNAL \inst27|Add0~1_sumout\ : std_logic;
SIGNAL \inst27|Add0~2\ : std_logic;
SIGNAL \inst27|Add0~101_sumout\ : std_logic;
SIGNAL \inst27|Cpte[24]~DUPLICATE_q\ : std_logic;
SIGNAL \inst27|LessThan0~4_combout\ : std_logic;
SIGNAL \inst27|LessThan0~0_combout\ : std_logic;
SIGNAL \inst27|Cpte[16]~DUPLICATE_q\ : std_logic;
SIGNAL \inst27|LessThan0~2_combout\ : std_logic;
SIGNAL \inst27|Cpte[11]~DUPLICATE_q\ : std_logic;
SIGNAL \inst27|LessThan0~1_combout\ : std_logic;
SIGNAL \inst27|LessThan0~3_combout\ : std_logic;
SIGNAL \inst27|LessThan0~5_combout\ : std_logic;
SIGNAL \inst27|So~0_combout\ : std_logic;
SIGNAL \inst27|So~q\ : std_logic;
SIGNAL \inst27|Cpte\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \inst24|Cpte\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \inst3|Cpte\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst26|Cpte\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst22|DtL\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst23|Cpte\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst22|Cpte\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst20|Cpte\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst22|DtR\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst21|DATA_I2C\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst21|INS_I2C\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|Q\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst30|count\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst|ALT_INV_Mux3~7_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux3~6_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux5~8_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux5~7_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux2~10_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux2~9_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux3~5_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux3~4_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux4~9_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux4~8_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux5~6_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux5~5_combout\ : std_logic;
SIGNAL \inst20|ALT_INV_Mux2~1_combout\ : std_logic;
SIGNAL \inst23|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \inst23|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \inst26|ALT_INV_Cpte~0_combout\ : std_logic;
SIGNAL \inst26|ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \inst23|ALT_INV_temp~q\ : std_logic;
SIGNAL \inst3|ALT_INV_Cpts[8]~6_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Cpts[8]~_emulated_q\ : std_logic;
SIGNAL \inst3|ALT_INV_Cpts[9]~2_combout\ : std_logic;
SIGNAL \inst21|ALT_INV_St_CPT~q\ : std_logic;
SIGNAL \inst3|ALT_INV_Cpts[9]~_emulated_q\ : std_logic;
SIGNAL \inst24|ALT_INV_Cpte~0_combout\ : std_logic;
SIGNAL \inst20|ALT_INV_Vs~q\ : std_logic;
SIGNAL \inst26|ALT_INV_temp~0_combout\ : std_logic;
SIGNAL \inst26|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \inst26|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux4~6_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux4~5_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux4~4_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux4~3_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux4~2_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux4~1_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux12~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux5~3_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux5~2_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux5~1_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux13~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux2~7_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux2~6_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux2~5_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux2~4_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux2~3_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux2~2_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux6~5_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux6~4_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux6~3_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux6~2_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux6~1_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux10~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux3~3_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux3~2_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux3~1_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux7~3_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux7~2_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux7~1_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux15~1_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux31~4_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux31~3_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux31~2_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux31~1_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux31~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux30~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux24~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux25~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux26~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux27~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux20~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux22~1_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux23~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux16~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux17~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux2~1_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux18~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux19~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux15~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux22~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \inst30|ALT_INV_CS.State_Wait~q\ : std_logic;
SIGNAL \inst30|ALT_INV_count\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst24|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \inst24|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \inst21|ALT_INV_WideOr0~0_combout\ : std_logic;
SIGNAL \inst21|ALT_INV_State.SendI2C_St3~q\ : std_logic;
SIGNAL \inst21|ALT_INV_State.SendI2C_A3~q\ : std_logic;
SIGNAL \inst21|ALT_INV_WideOr12~0_combout\ : std_logic;
SIGNAL \inst21|ALT_INV_State.Svol2~q\ : std_logic;
SIGNAL \inst21|ALT_INV_State.Svol1~q\ : std_logic;
SIGNAL \inst21|ALT_INV_State.Starter~q\ : std_logic;
SIGNAL \inst21|ALT_INV_State.Sgo1~q\ : std_logic;
SIGNAL \inst21|ALT_INV_WideOr6~0_combout\ : std_logic;
SIGNAL \inst21|ALT_INV_WideOr8~0_combout\ : std_logic;
SIGNAL \inst21|ALT_INV_State.SendI2C_St4~q\ : std_logic;
SIGNAL \inst21|ALT_INV_State.SendI2C_A4~q\ : std_logic;
SIGNAL \inst21|ALT_INV_State.SendI2C_St6~q\ : std_logic;
SIGNAL \inst21|ALT_INV_State.SendI2C_St5~q\ : std_logic;
SIGNAL \inst21|ALT_INV_State.SendI2C_A6~q\ : std_logic;
SIGNAL \inst21|ALT_INV_State.SendI2C_A5~q\ : std_logic;
SIGNAL \inst21|ALT_INV_WideOr2~0_combout\ : std_logic;
SIGNAL \inst21|ALT_INV_State.SendI2C_St2~q\ : std_logic;
SIGNAL \inst21|ALT_INV_State.SendI2C_A2~q\ : std_logic;
SIGNAL \inst21|ALT_INV_State.SendI2C_St1~q\ : std_logic;
SIGNAL \inst21|ALT_INV_State.SendI2C_A1~q\ : std_logic;
SIGNAL \inst21|ALT_INV_State.SendI2C_St~q\ : std_logic;
SIGNAL \inst21|ALT_INV_State.SendI2C_A~q\ : std_logic;
SIGNAL \inst20|ALT_INV_Selector3~0_combout\ : std_logic;
SIGNAL \inst20|ALT_INV_Add0~0_combout\ : std_logic;
SIGNAL \inst20|ALT_INV_Selector0~0_combout\ : std_logic;
SIGNAL \inst20|ALT_INV_Selector2~0_combout\ : std_logic;
SIGNAL \inst20|ALT_INV_Selector1~0_combout\ : std_logic;
SIGNAL \inst26|ALT_INV_temp~q\ : std_logic;
SIGNAL \inst|ALT_INV_Q\ : std_logic_vector(31 DOWNTO 10);
SIGNAL \inst21|ALT_INV_St_I2S~q\ : std_logic;
SIGNAL \inst22|ALT_INV_State.SendR~0_combout\ : std_logic;
SIGNAL \inst22|ALT_INV_Selector3~0_combout\ : std_logic;
SIGNAL \inst22|ALT_INV_Add0~0_combout\ : std_logic;
SIGNAL \inst22|ALT_INV_State.Starter1~q\ : std_logic;
SIGNAL \inst22|ALT_INV_State.Starter~q\ : std_logic;
SIGNAL \inst22|ALT_INV_LessThan1~1_combout\ : std_logic;
SIGNAL \inst30|ALT_INV_CS.State_End~q\ : std_logic;
SIGNAL \inst24|ALT_INV_temp~q\ : std_logic;
SIGNAL \inst21|ALT_INV_St_I2C~q\ : std_logic;
SIGNAL \inst20|ALT_INV_State~20_combout\ : std_logic;
SIGNAL \inst20|ALT_INV_State.Ack2~q\ : std_logic;
SIGNAL \inst20|ALT_INV_State.Ack1~q\ : std_logic;
SIGNAL \inst20|ALT_INV_Selector12~1_combout\ : std_logic;
SIGNAL \inst20|ALT_INV_Selector12~0_combout\ : std_logic;
SIGNAL \inst20|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \inst21|ALT_INV_INS_I2C\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst20|ALT_INV_State.SendIns~q\ : std_logic;
SIGNAL \inst20|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \inst20|ALT_INV_State.SendAddr~q\ : std_logic;
SIGNAL \inst20|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \inst21|ALT_INV_DATA_I2C\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst20|ALT_INV_State.SendData~q\ : std_logic;
SIGNAL \inst20|ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \inst20|ALT_INV_Cpte\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst20|ALT_INV_State.SendEnd~q\ : std_logic;
SIGNAL \inst27|ALT_INV_LessThan0~5_combout\ : std_logic;
SIGNAL \inst27|ALT_INV_LessThan0~4_combout\ : std_logic;
SIGNAL \inst27|ALT_INV_LessThan0~3_combout\ : std_logic;
SIGNAL \inst27|ALT_INV_LessThan0~2_combout\ : std_logic;
SIGNAL \inst27|ALT_INV_LessThan0~1_combout\ : std_logic;
SIGNAL \inst27|ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \inst22|ALT_INV_Selector7~0_combout\ : std_logic;
SIGNAL \inst22|ALT_INV_Selector0~4_combout\ : std_logic;
SIGNAL \inst22|ALT_INV_S~19_combout\ : std_logic;
SIGNAL \inst22|ALT_INV_S~18_combout\ : std_logic;
SIGNAL \inst22|ALT_INV_DtR\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst22|ALT_INV_S~17_combout\ : std_logic;
SIGNAL \inst22|ALT_INV_S~16_combout\ : std_logic;
SIGNAL \inst22|ALT_INV_S~15_combout\ : std_logic;
SIGNAL \inst22|ALT_INV_S~14_combout\ : std_logic;
SIGNAL \inst22|ALT_INV_S~13_combout\ : std_logic;
SIGNAL \inst22|ALT_INV_DtL\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst22|ALT_INV_S~12_combout\ : std_logic;
SIGNAL \inst22|ALT_INV_S~11_combout\ : std_logic;
SIGNAL \inst22|ALT_INV_S~10_combout\ : std_logic;
SIGNAL \inst22|ALT_INV_Selector0~3_combout\ : std_logic;
SIGNAL \inst22|ALT_INV_Selector0~2_combout\ : std_logic;
SIGNAL \inst22|ALT_INV_S~9_combout\ : std_logic;
SIGNAL \inst22|ALT_INV_S~8_combout\ : std_logic;
SIGNAL \inst22|ALT_INV_S~7_combout\ : std_logic;
SIGNAL \inst22|ALT_INV_S~6_combout\ : std_logic;
SIGNAL \inst22|ALT_INV_S~5_combout\ : std_logic;
SIGNAL \inst22|ALT_INV_S~4_combout\ : std_logic;
SIGNAL \inst22|ALT_INV_Selector0~1_combout\ : std_logic;
SIGNAL \inst22|ALT_INV_S~3_combout\ : std_logic;
SIGNAL \inst22|ALT_INV_S~2_combout\ : std_logic;
SIGNAL \inst22|ALT_INV_State.SendL~q\ : std_logic;
SIGNAL \inst22|ALT_INV_Selector0~0_combout\ : std_logic;
SIGNAL \inst22|ALT_INV_S~1_combout\ : std_logic;
SIGNAL \inst22|ALT_INV_S~0_combout\ : std_logic;
SIGNAL \inst22|ALT_INV_State.SendR~q\ : std_logic;
SIGNAL \inst22|ALT_INV_LessThan1~0_combout\ : std_logic;
SIGNAL \inst22|ALT_INV_Cpte\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst30|ALT_INV_Reset_n_out~q\ : std_logic;
SIGNAL \inst20|ALT_INV_State.Ender~q\ : std_logic;
SIGNAL \inst20|ALT_INV_State.Starter~q\ : std_logic;
SIGNAL \inst20|ALT_INV_S~en_q\ : std_logic;
SIGNAL \inst27|ALT_INV_So~q\ : std_logic;
SIGNAL \inst22|ALT_INV_AND_O~q\ : std_logic;
SIGNAL \inst20|ALT_INV_AND_O~q\ : std_logic;
SIGNAL \inst|ALT_INV_Mux4~10_combout\ : std_logic;
SIGNAL \inst23|ALT_INV_Add1~29_sumout\ : std_logic;
SIGNAL \inst23|ALT_INV_Add1~5_sumout\ : std_logic;
SIGNAL \inst23|ALT_INV_Cpte\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst26|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \inst26|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \inst26|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \inst26|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \inst26|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \inst26|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \inst26|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \inst24|ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \inst24|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \inst24|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \inst24|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \inst24|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \inst24|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \inst24|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \inst24|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \inst24|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \inst26|ALT_INV_Cpte\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst3|ALT_INV_Cpte\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst24|ALT_INV_Cpte\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \inst27|ALT_INV_Cpte\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \inst30|ALT_INV_CS.State_End~DUPLICATE_q\ : std_logic;
SIGNAL \inst20|ALT_INV_State.SendIns~DUPLICATE_q\ : std_logic;
SIGNAL \inst20|ALT_INV_Cpte[0]~DUPLICATE_q\ : std_logic;
SIGNAL \inst20|ALT_INV_Cpte[2]~DUPLICATE_q\ : std_logic;
SIGNAL \inst20|ALT_INV_State.SendEnd~DUPLICATE_q\ : std_logic;
SIGNAL \inst20|ALT_INV_Cpte[1]~DUPLICATE_q\ : std_logic;
SIGNAL \inst22|ALT_INV_State.SendR~DUPLICATE_q\ : std_logic;
SIGNAL \inst22|ALT_INV_Cpte[1]~DUPLICATE_q\ : std_logic;
SIGNAL \inst22|ALT_INV_Cpte[2]~DUPLICATE_q\ : std_logic;
SIGNAL \inst22|ALT_INV_Cpte[3]~DUPLICATE_q\ : std_logic;
SIGNAL \inst23|ALT_INV_Cpte[0]~DUPLICATE_q\ : std_logic;
SIGNAL \inst26|ALT_INV_Cpte[4]~DUPLICATE_q\ : std_logic;
SIGNAL \inst26|ALT_INV_Cpte[1]~DUPLICATE_q\ : std_logic;
SIGNAL \inst26|ALT_INV_Cpte[0]~DUPLICATE_q\ : std_logic;
SIGNAL \inst3|ALT_INV_Cpte[4]~DUPLICATE_q\ : std_logic;
SIGNAL \inst3|ALT_INV_Cpte[5]~DUPLICATE_q\ : std_logic;
SIGNAL \inst3|ALT_INV_Cpte[6]~DUPLICATE_q\ : std_logic;
SIGNAL \inst3|ALT_INV_Cpte[0]~DUPLICATE_q\ : std_logic;
SIGNAL \inst3|ALT_INV_Cpte[1]~DUPLICATE_q\ : std_logic;
SIGNAL \inst3|ALT_INV_Cpte[3]~DUPLICATE_q\ : std_logic;
SIGNAL \inst3|ALT_INV_Cpte[7]~DUPLICATE_q\ : std_logic;
SIGNAL \inst27|ALT_INV_Cpte[12]~DUPLICATE_q\ : std_logic;
SIGNAL \inst27|ALT_INV_Cpte[11]~DUPLICATE_q\ : std_logic;
SIGNAL \inst27|ALT_INV_Cpte[0]~DUPLICATE_q\ : std_logic;
SIGNAL \inst27|ALT_INV_Cpte[16]~DUPLICATE_q\ : std_logic;
SIGNAL \inst27|ALT_INV_Cpte[24]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_SEL0~input_o\ : std_logic;
SIGNAL \ALT_INV_SEL1~input_o\ : std_logic;
SIGNAL \ALT_INV_MASTER_CLK~input_o\ : std_logic;
SIGNAL \inst3|ALT_INV_Cpts[8]~5_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Cpts[9]~1_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux19~5_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux19~4_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux19~3_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux18~8_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux18~7_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux18~6_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux18~5_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux18~4_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux18~3_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux17~5_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux17~4_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux17~3_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux16~8_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux16~7_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux16~6_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux16~5_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux16~4_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux16~3_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux23~5_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux23~4_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux23~3_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux22~9_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux22~8_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux22~7_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux22~6_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux22~5_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux22~4_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux21~6_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux21~5_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux21~4_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux21~3_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux21~2_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux21~1_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux20~5_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux20~4_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux20~3_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux27~8_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux27~7_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux27~6_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux27~5_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux27~4_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux27~3_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux26~8_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux26~7_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux26~6_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux26~5_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux26~4_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux26~3_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux25~5_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux25~4_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux25~3_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux24~5_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux24~4_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux24~3_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux30~8_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux30~7_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux30~6_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux30~5_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux30~4_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux30~3_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux29~6_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux29~5_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux29~4_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux29~3_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux29~2_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux29~1_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux28~6_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux28~5_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux28~4_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux28~3_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux28~2_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux28~1_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux15~6_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux15~5_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux15~4_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux11~6_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux11~5_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux11~4_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux11~3_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux11~2_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux11~1_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux7~7_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux7~6_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux7~5_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux14~6_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux14~5_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux14~4_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux14~3_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux14~2_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux14~1_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux10~5_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux10~4_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux10~3_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux2~14_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux13~5_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux13~4_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux13~3_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux9~6_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux9~5_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux9~4_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux9~3_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux9~2_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux9~1_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux12~8_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux12~7_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux12~6_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux12~5_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux12~4_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux12~3_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux8~5_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux8~4_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux8~3_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux8~2_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux8~1_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux26~2_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux1~3_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux1~2_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux1~1_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux12~2_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux5~9_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux6~8_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux30~2_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux27~2_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux22~3_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux16~2_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux18~2_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux2~13_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux2~12_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux2~11_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux6~7_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux3~8_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux13~2_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux24~2_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux25~2_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux20~2_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux10~2_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux15~3_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux23~2_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux17~2_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux19~2_combout\ : std_logic;

BEGIN

I2C_SDAT <= ww_I2C_SDAT;
ww_MASTER_CLK <= MASTER_CLK;
ww_MASTER_R <= MASTER_R;
I2C_SCLK <= ww_I2C_SCLK;
AUD_DACDAT <= ww_AUD_DACDAT;
ww_SEL0 <= SEL0;
ww_SEL1 <= SEL1;
AUD_DACLRCK <= ww_AUD_DACLRCK;
AUD_XCK <= ww_AUD_XCK;
LED_BLINK <= ww_LED_BLINK;
LED_R <= ww_LED_R;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\inst|ALT_INV_Mux3~7_combout\ <= NOT \inst|Mux3~7_combout\;
\inst|ALT_INV_Mux3~6_combout\ <= NOT \inst|Mux3~6_combout\;
\inst|ALT_INV_Mux5~8_combout\ <= NOT \inst|Mux5~8_combout\;
\inst|ALT_INV_Mux5~7_combout\ <= NOT \inst|Mux5~7_combout\;
\inst|ALT_INV_Mux2~10_combout\ <= NOT \inst|Mux2~10_combout\;
\inst|ALT_INV_Mux2~9_combout\ <= NOT \inst|Mux2~9_combout\;
\inst|ALT_INV_Mux3~5_combout\ <= NOT \inst|Mux3~5_combout\;
\inst|ALT_INV_Mux3~4_combout\ <= NOT \inst|Mux3~4_combout\;
\inst|ALT_INV_Mux4~9_combout\ <= NOT \inst|Mux4~9_combout\;
\inst|ALT_INV_Mux4~8_combout\ <= NOT \inst|Mux4~8_combout\;
\inst|ALT_INV_Mux5~6_combout\ <= NOT \inst|Mux5~6_combout\;
\inst|ALT_INV_Mux5~5_combout\ <= NOT \inst|Mux5~5_combout\;
\inst20|ALT_INV_Mux2~1_combout\ <= NOT \inst20|Mux2~1_combout\;
\inst23|ALT_INV_Equal0~1_combout\ <= NOT \inst23|Equal0~1_combout\;
\inst23|ALT_INV_Equal0~0_combout\ <= NOT \inst23|Equal0~0_combout\;
\inst26|ALT_INV_Cpte~0_combout\ <= NOT \inst26|Cpte~0_combout\;
\inst26|ALT_INV_Equal0~2_combout\ <= NOT \inst26|Equal0~2_combout\;
\inst23|ALT_INV_temp~q\ <= NOT \inst23|temp~q\;
\inst3|ALT_INV_Cpts[8]~6_combout\ <= NOT \inst3|Cpts[8]~6_combout\;
\inst3|ALT_INV_Cpts[8]~_emulated_q\ <= NOT \inst3|Cpts[8]~_emulated_q\;
\inst3|ALT_INV_Cpts[9]~2_combout\ <= NOT \inst3|Cpts[9]~2_combout\;
\inst21|ALT_INV_St_CPT~q\ <= NOT \inst21|St_CPT~q\;
\inst3|ALT_INV_Cpts[9]~_emulated_q\ <= NOT \inst3|Cpts[9]~_emulated_q\;
\inst24|ALT_INV_Cpte~0_combout\ <= NOT \inst24|Cpte~0_combout\;
\inst20|ALT_INV_Vs~q\ <= NOT \inst20|Vs~q\;
\inst26|ALT_INV_temp~0_combout\ <= NOT \inst26|temp~0_combout\;
\inst26|ALT_INV_Equal0~1_combout\ <= NOT \inst26|Equal0~1_combout\;
\inst26|ALT_INV_Equal0~0_combout\ <= NOT \inst26|Equal0~0_combout\;
\inst|ALT_INV_Mux0~0_combout\ <= NOT \inst|Mux0~0_combout\;
\inst|ALT_INV_Mux4~6_combout\ <= NOT \inst|Mux4~6_combout\;
\inst|ALT_INV_Mux4~5_combout\ <= NOT \inst|Mux4~5_combout\;
\inst|ALT_INV_Mux4~4_combout\ <= NOT \inst|Mux4~4_combout\;
\inst|ALT_INV_Mux4~3_combout\ <= NOT \inst|Mux4~3_combout\;
\inst|ALT_INV_Mux4~2_combout\ <= NOT \inst|Mux4~2_combout\;
\inst|ALT_INV_Mux4~1_combout\ <= NOT \inst|Mux4~1_combout\;
\inst|ALT_INV_Mux4~0_combout\ <= NOT \inst|Mux4~0_combout\;
\inst|ALT_INV_Mux12~0_combout\ <= NOT \inst|Mux12~0_combout\;
\inst|ALT_INV_Mux5~3_combout\ <= NOT \inst|Mux5~3_combout\;
\inst|ALT_INV_Mux5~2_combout\ <= NOT \inst|Mux5~2_combout\;
\inst|ALT_INV_Mux5~1_combout\ <= NOT \inst|Mux5~1_combout\;
\inst|ALT_INV_Mux5~0_combout\ <= NOT \inst|Mux5~0_combout\;
\inst|ALT_INV_Mux13~0_combout\ <= NOT \inst|Mux13~0_combout\;
\inst|ALT_INV_Mux2~7_combout\ <= NOT \inst|Mux2~7_combout\;
\inst|ALT_INV_Mux2~6_combout\ <= NOT \inst|Mux2~6_combout\;
\inst|ALT_INV_Mux2~5_combout\ <= NOT \inst|Mux2~5_combout\;
\inst|ALT_INV_Mux2~4_combout\ <= NOT \inst|Mux2~4_combout\;
\inst|ALT_INV_Mux2~3_combout\ <= NOT \inst|Mux2~3_combout\;
\inst|ALT_INV_Mux2~2_combout\ <= NOT \inst|Mux2~2_combout\;
\inst|ALT_INV_Mux6~5_combout\ <= NOT \inst|Mux6~5_combout\;
\inst|ALT_INV_Mux6~4_combout\ <= NOT \inst|Mux6~4_combout\;
\inst|ALT_INV_Mux6~3_combout\ <= NOT \inst|Mux6~3_combout\;
\inst|ALT_INV_Mux6~2_combout\ <= NOT \inst|Mux6~2_combout\;
\inst|ALT_INV_Mux6~1_combout\ <= NOT \inst|Mux6~1_combout\;
\inst|ALT_INV_Mux6~0_combout\ <= NOT \inst|Mux6~0_combout\;
\inst|ALT_INV_Mux10~0_combout\ <= NOT \inst|Mux10~0_combout\;
\inst|ALT_INV_Mux3~3_combout\ <= NOT \inst|Mux3~3_combout\;
\inst|ALT_INV_Mux3~2_combout\ <= NOT \inst|Mux3~2_combout\;
\inst|ALT_INV_Mux3~1_combout\ <= NOT \inst|Mux3~1_combout\;
\inst|ALT_INV_Mux3~0_combout\ <= NOT \inst|Mux3~0_combout\;
\inst|ALT_INV_Mux7~3_combout\ <= NOT \inst|Mux7~3_combout\;
\inst|ALT_INV_Mux7~2_combout\ <= NOT \inst|Mux7~2_combout\;
\inst|ALT_INV_Mux7~1_combout\ <= NOT \inst|Mux7~1_combout\;
\inst|ALT_INV_Mux7~0_combout\ <= NOT \inst|Mux7~0_combout\;
\inst|ALT_INV_Mux15~1_combout\ <= NOT \inst|Mux15~1_combout\;
\inst|ALT_INV_Mux31~4_combout\ <= NOT \inst|Mux31~4_combout\;
\inst|ALT_INV_Mux31~3_combout\ <= NOT \inst|Mux31~3_combout\;
\inst|ALT_INV_Mux31~2_combout\ <= NOT \inst|Mux31~2_combout\;
\inst|ALT_INV_Mux31~1_combout\ <= NOT \inst|Mux31~1_combout\;
\inst|ALT_INV_Mux31~0_combout\ <= NOT \inst|Mux31~0_combout\;
\inst|ALT_INV_Mux30~0_combout\ <= NOT \inst|Mux30~0_combout\;
\inst|ALT_INV_Mux24~0_combout\ <= NOT \inst|Mux24~0_combout\;
\inst|ALT_INV_Mux25~0_combout\ <= NOT \inst|Mux25~0_combout\;
\inst|ALT_INV_Mux26~0_combout\ <= NOT \inst|Mux26~0_combout\;
\inst|ALT_INV_Mux27~0_combout\ <= NOT \inst|Mux27~0_combout\;
\inst|ALT_INV_Mux20~0_combout\ <= NOT \inst|Mux20~0_combout\;
\inst|ALT_INV_Mux22~1_combout\ <= NOT \inst|Mux22~1_combout\;
\inst|ALT_INV_Mux23~0_combout\ <= NOT \inst|Mux23~0_combout\;
\inst|ALT_INV_Mux16~0_combout\ <= NOT \inst|Mux16~0_combout\;
\inst|ALT_INV_Mux17~0_combout\ <= NOT \inst|Mux17~0_combout\;
\inst|ALT_INV_Mux2~1_combout\ <= NOT \inst|Mux2~1_combout\;
\inst|ALT_INV_Mux18~0_combout\ <= NOT \inst|Mux18~0_combout\;
\inst|ALT_INV_Mux19~0_combout\ <= NOT \inst|Mux19~0_combout\;
\inst|ALT_INV_Mux15~0_combout\ <= NOT \inst|Mux15~0_combout\;
\inst|ALT_INV_Mux22~0_combout\ <= NOT \inst|Mux22~0_combout\;
\inst|ALT_INV_Mux2~0_combout\ <= NOT \inst|Mux2~0_combout\;
\inst30|ALT_INV_CS.State_Wait~q\ <= NOT \inst30|CS.State_Wait~q\;
\inst30|ALT_INV_count\(0) <= NOT \inst30|count\(0);
\inst30|ALT_INV_count\(1) <= NOT \inst30|count\(1);
\inst30|ALT_INV_count\(2) <= NOT \inst30|count\(2);
\inst24|ALT_INV_Equal0~1_combout\ <= NOT \inst24|Equal0~1_combout\;
\inst24|ALT_INV_Equal0~0_combout\ <= NOT \inst24|Equal0~0_combout\;
\inst21|ALT_INV_WideOr0~0_combout\ <= NOT \inst21|WideOr0~0_combout\;
\inst21|ALT_INV_State.SendI2C_St3~q\ <= NOT \inst21|State.SendI2C_St3~q\;
\inst21|ALT_INV_State.SendI2C_A3~q\ <= NOT \inst21|State.SendI2C_A3~q\;
\inst21|ALT_INV_WideOr12~0_combout\ <= NOT \inst21|WideOr12~0_combout\;
\inst21|ALT_INV_State.Svol2~q\ <= NOT \inst21|State.Svol2~q\;
\inst21|ALT_INV_State.Svol1~q\ <= NOT \inst21|State.Svol1~q\;
\inst21|ALT_INV_State.Starter~q\ <= NOT \inst21|State.Starter~q\;
\inst21|ALT_INV_State.Sgo1~q\ <= NOT \inst21|State.Sgo1~q\;
\inst21|ALT_INV_WideOr6~0_combout\ <= NOT \inst21|WideOr6~0_combout\;
\inst21|ALT_INV_WideOr8~0_combout\ <= NOT \inst21|WideOr8~0_combout\;
\inst21|ALT_INV_State.SendI2C_St4~q\ <= NOT \inst21|State.SendI2C_St4~q\;
\inst21|ALT_INV_State.SendI2C_A4~q\ <= NOT \inst21|State.SendI2C_A4~q\;
\inst21|ALT_INV_State.SendI2C_St6~q\ <= NOT \inst21|State.SendI2C_St6~q\;
\inst21|ALT_INV_State.SendI2C_St5~q\ <= NOT \inst21|State.SendI2C_St5~q\;
\inst21|ALT_INV_State.SendI2C_A6~q\ <= NOT \inst21|State.SendI2C_A6~q\;
\inst21|ALT_INV_State.SendI2C_A5~q\ <= NOT \inst21|State.SendI2C_A5~q\;
\inst21|ALT_INV_WideOr2~0_combout\ <= NOT \inst21|WideOr2~0_combout\;
\inst21|ALT_INV_State.SendI2C_St2~q\ <= NOT \inst21|State.SendI2C_St2~q\;
\inst21|ALT_INV_State.SendI2C_A2~q\ <= NOT \inst21|State.SendI2C_A2~q\;
\inst21|ALT_INV_State.SendI2C_St1~q\ <= NOT \inst21|State.SendI2C_St1~q\;
\inst21|ALT_INV_State.SendI2C_A1~q\ <= NOT \inst21|State.SendI2C_A1~q\;
\inst21|ALT_INV_State.SendI2C_St~q\ <= NOT \inst21|State.SendI2C_St~q\;
\inst21|ALT_INV_State.SendI2C_A~q\ <= NOT \inst21|State.SendI2C_A~q\;
\inst20|ALT_INV_Selector3~0_combout\ <= NOT \inst20|Selector3~0_combout\;
\inst20|ALT_INV_Add0~0_combout\ <= NOT \inst20|Add0~0_combout\;
\inst20|ALT_INV_Selector0~0_combout\ <= NOT \inst20|Selector0~0_combout\;
\inst20|ALT_INV_Selector2~0_combout\ <= NOT \inst20|Selector2~0_combout\;
\inst20|ALT_INV_Selector1~0_combout\ <= NOT \inst20|Selector1~0_combout\;
\inst26|ALT_INV_temp~q\ <= NOT \inst26|temp~q\;
\inst|ALT_INV_Q\(31) <= NOT \inst|Q\(31);
\inst|ALT_INV_Q\(21) <= NOT \inst|Q\(21);
\inst|ALT_INV_Q\(24) <= NOT \inst|Q\(24);
\inst|ALT_INV_Q\(20) <= NOT \inst|Q\(20);
\inst21|ALT_INV_St_I2S~q\ <= NOT \inst21|St_I2S~q\;
\inst|ALT_INV_Q\(10) <= NOT \inst|Q\(10);
\inst|ALT_INV_Q\(13) <= NOT \inst|Q\(13);
\inst22|ALT_INV_State.SendR~0_combout\ <= NOT \inst22|State.SendR~0_combout\;
\inst22|ALT_INV_Selector3~0_combout\ <= NOT \inst22|Selector3~0_combout\;
\inst22|ALT_INV_Add0~0_combout\ <= NOT \inst22|Add0~0_combout\;
\inst22|ALT_INV_State.Starter1~q\ <= NOT \inst22|State.Starter1~q\;
\inst22|ALT_INV_State.Starter~q\ <= NOT \inst22|State.Starter~q\;
\inst22|ALT_INV_LessThan1~1_combout\ <= NOT \inst22|LessThan1~1_combout\;
\inst30|ALT_INV_CS.State_End~q\ <= NOT \inst30|CS.State_End~q\;
\inst24|ALT_INV_temp~q\ <= NOT \inst24|temp~q\;
\inst21|ALT_INV_St_I2C~q\ <= NOT \inst21|St_I2C~q\;
\inst20|ALT_INV_State~20_combout\ <= NOT \inst20|State~20_combout\;
\inst20|ALT_INV_State.Ack2~q\ <= NOT \inst20|State.Ack2~q\;
\inst20|ALT_INV_State.Ack1~q\ <= NOT \inst20|State.Ack1~q\;
\inst20|ALT_INV_Selector12~1_combout\ <= NOT \inst20|Selector12~1_combout\;
\inst20|ALT_INV_Selector12~0_combout\ <= NOT \inst20|Selector12~0_combout\;
\inst20|ALT_INV_Mux1~0_combout\ <= NOT \inst20|Mux1~0_combout\;
\inst21|ALT_INV_INS_I2C\(1) <= NOT \inst21|INS_I2C\(1);
\inst21|ALT_INV_INS_I2C\(2) <= NOT \inst21|INS_I2C\(2);
\inst21|ALT_INV_INS_I2C\(3) <= NOT \inst21|INS_I2C\(3);
\inst20|ALT_INV_State.SendIns~q\ <= NOT \inst20|State.SendIns~q\;
\inst20|ALT_INV_Mux0~0_combout\ <= NOT \inst20|Mux0~0_combout\;
\inst20|ALT_INV_State.SendAddr~q\ <= NOT \inst20|State.SendAddr~q\;
\inst20|ALT_INV_Mux2~0_combout\ <= NOT \inst20|Mux2~0_combout\;
\inst21|ALT_INV_DATA_I2C\(1) <= NOT \inst21|DATA_I2C\(1);
\inst21|ALT_INV_DATA_I2C\(0) <= NOT \inst21|DATA_I2C\(0);
\inst21|ALT_INV_DATA_I2C\(3) <= NOT \inst21|DATA_I2C\(3);
\inst21|ALT_INV_DATA_I2C\(2) <= NOT \inst21|DATA_I2C\(2);
\inst21|ALT_INV_INS_I2C\(0) <= NOT \inst21|INS_I2C\(0);
\inst21|ALT_INV_DATA_I2C\(4) <= NOT \inst21|DATA_I2C\(4);
\inst20|ALT_INV_State.SendData~q\ <= NOT \inst20|State.SendData~q\;
\inst20|ALT_INV_LessThan0~0_combout\ <= NOT \inst20|LessThan0~0_combout\;
\inst20|ALT_INV_Cpte\(0) <= NOT \inst20|Cpte\(0);
\inst20|ALT_INV_Cpte\(2) <= NOT \inst20|Cpte\(2);
\inst20|ALT_INV_Cpte\(3) <= NOT \inst20|Cpte\(3);
\inst20|ALT_INV_State.SendEnd~q\ <= NOT \inst20|State.SendEnd~q\;
\inst20|ALT_INV_Cpte\(1) <= NOT \inst20|Cpte\(1);
\inst27|ALT_INV_LessThan0~5_combout\ <= NOT \inst27|LessThan0~5_combout\;
\inst27|ALT_INV_LessThan0~4_combout\ <= NOT \inst27|LessThan0~4_combout\;
\inst27|ALT_INV_LessThan0~3_combout\ <= NOT \inst27|LessThan0~3_combout\;
\inst27|ALT_INV_LessThan0~2_combout\ <= NOT \inst27|LessThan0~2_combout\;
\inst27|ALT_INV_LessThan0~1_combout\ <= NOT \inst27|LessThan0~1_combout\;
\inst27|ALT_INV_LessThan0~0_combout\ <= NOT \inst27|LessThan0~0_combout\;
\inst22|ALT_INV_Selector7~0_combout\ <= NOT \inst22|Selector7~0_combout\;
\inst22|ALT_INV_Selector0~4_combout\ <= NOT \inst22|Selector0~4_combout\;
\inst22|ALT_INV_S~19_combout\ <= NOT \inst22|S~19_combout\;
\inst22|ALT_INV_S~18_combout\ <= NOT \inst22|S~18_combout\;
\inst22|ALT_INV_DtR\(31) <= NOT \inst22|DtR\(31);
\inst22|ALT_INV_DtR\(27) <= NOT \inst22|DtR\(27);
\inst22|ALT_INV_DtR\(23) <= NOT \inst22|DtR\(23);
\inst22|ALT_INV_DtR\(19) <= NOT \inst22|DtR\(19);
\inst22|ALT_INV_S~17_combout\ <= NOT \inst22|S~17_combout\;
\inst22|ALT_INV_DtR\(30) <= NOT \inst22|DtR\(30);
\inst22|ALT_INV_DtR\(26) <= NOT \inst22|DtR\(26);
\inst22|ALT_INV_DtR\(22) <= NOT \inst22|DtR\(22);
\inst22|ALT_INV_DtR\(18) <= NOT \inst22|DtR\(18);
\inst22|ALT_INV_S~16_combout\ <= NOT \inst22|S~16_combout\;
\inst22|ALT_INV_DtR\(29) <= NOT \inst22|DtR\(29);
\inst22|ALT_INV_DtR\(25) <= NOT \inst22|DtR\(25);
\inst22|ALT_INV_DtR\(21) <= NOT \inst22|DtR\(21);
\inst22|ALT_INV_DtR\(17) <= NOT \inst22|DtR\(17);
\inst22|ALT_INV_S~15_combout\ <= NOT \inst22|S~15_combout\;
\inst22|ALT_INV_DtR\(28) <= NOT \inst22|DtR\(28);
\inst22|ALT_INV_DtR\(24) <= NOT \inst22|DtR\(24);
\inst22|ALT_INV_DtR\(20) <= NOT \inst22|DtR\(20);
\inst22|ALT_INV_DtR\(16) <= NOT \inst22|DtR\(16);
\inst22|ALT_INV_S~14_combout\ <= NOT \inst22|S~14_combout\;
\inst22|ALT_INV_S~13_combout\ <= NOT \inst22|S~13_combout\;
\inst22|ALT_INV_DtL\(31) <= NOT \inst22|DtL\(31);
\inst22|ALT_INV_DtL\(27) <= NOT \inst22|DtL\(27);
\inst22|ALT_INV_DtL\(23) <= NOT \inst22|DtL\(23);
\inst22|ALT_INV_DtL\(19) <= NOT \inst22|DtL\(19);
\inst22|ALT_INV_S~12_combout\ <= NOT \inst22|S~12_combout\;
\inst22|ALT_INV_DtL\(30) <= NOT \inst22|DtL\(30);
\inst22|ALT_INV_DtL\(26) <= NOT \inst22|DtL\(26);
\inst22|ALT_INV_DtL\(22) <= NOT \inst22|DtL\(22);
\inst22|ALT_INV_DtL\(18) <= NOT \inst22|DtL\(18);
\inst22|ALT_INV_S~11_combout\ <= NOT \inst22|S~11_combout\;
\inst22|ALT_INV_DtL\(29) <= NOT \inst22|DtL\(29);
\inst22|ALT_INV_DtL\(25) <= NOT \inst22|DtL\(25);
\inst22|ALT_INV_DtL\(21) <= NOT \inst22|DtL\(21);
\inst22|ALT_INV_DtL\(17) <= NOT \inst22|DtL\(17);
\inst22|ALT_INV_S~10_combout\ <= NOT \inst22|S~10_combout\;
\inst22|ALT_INV_DtL\(28) <= NOT \inst22|DtL\(28);
\inst22|ALT_INV_DtL\(24) <= NOT \inst22|DtL\(24);
\inst22|ALT_INV_DtL\(20) <= NOT \inst22|DtL\(20);
\inst22|ALT_INV_DtL\(16) <= NOT \inst22|DtL\(16);
\inst22|ALT_INV_Selector0~3_combout\ <= NOT \inst22|Selector0~3_combout\;
\inst22|ALT_INV_DtL\(0) <= NOT \inst22|DtL\(0);
\inst22|ALT_INV_DtR\(0) <= NOT \inst22|DtR\(0);
\inst22|ALT_INV_Selector0~2_combout\ <= NOT \inst22|Selector0~2_combout\;
\inst22|ALT_INV_S~9_combout\ <= NOT \inst22|S~9_combout\;
\inst22|ALT_INV_DtR\(3) <= NOT \inst22|DtR\(3);
\inst22|ALT_INV_DtR\(2) <= NOT \inst22|DtR\(2);
\inst22|ALT_INV_DtR\(1) <= NOT \inst22|DtR\(1);
\inst22|ALT_INV_S~8_combout\ <= NOT \inst22|S~8_combout\;
\inst22|ALT_INV_DtR\(7) <= NOT \inst22|DtR\(7);
\inst22|ALT_INV_DtR\(6) <= NOT \inst22|DtR\(6);
\inst22|ALT_INV_DtR\(5) <= NOT \inst22|DtR\(5);
\inst22|ALT_INV_DtR\(4) <= NOT \inst22|DtR\(4);
\inst22|ALT_INV_S~7_combout\ <= NOT \inst22|S~7_combout\;
\inst22|ALT_INV_S~6_combout\ <= NOT \inst22|S~6_combout\;
\inst22|ALT_INV_S~5_combout\ <= NOT \inst22|S~5_combout\;
\inst22|ALT_INV_DtL\(3) <= NOT \inst22|DtL\(3);
\inst22|ALT_INV_DtL\(2) <= NOT \inst22|DtL\(2);
\inst22|ALT_INV_DtL\(1) <= NOT \inst22|DtL\(1);
\inst22|ALT_INV_S~4_combout\ <= NOT \inst22|S~4_combout\;
\inst22|ALT_INV_DtL\(7) <= NOT \inst22|DtL\(7);
\inst22|ALT_INV_DtL\(6) <= NOT \inst22|DtL\(6);
\inst22|ALT_INV_DtL\(5) <= NOT \inst22|DtL\(5);
\inst22|ALT_INV_DtL\(4) <= NOT \inst22|DtL\(4);
\inst22|ALT_INV_Selector0~1_combout\ <= NOT \inst22|Selector0~1_combout\;
\inst22|ALT_INV_S~3_combout\ <= NOT \inst22|S~3_combout\;
\inst22|ALT_INV_DtL\(11) <= NOT \inst22|DtL\(11);
\inst22|ALT_INV_DtL\(10) <= NOT \inst22|DtL\(10);
\inst22|ALT_INV_DtL\(9) <= NOT \inst22|DtL\(9);
\inst22|ALT_INV_DtL\(8) <= NOT \inst22|DtL\(8);
\inst22|ALT_INV_S~2_combout\ <= NOT \inst22|S~2_combout\;
\inst22|ALT_INV_DtL\(15) <= NOT \inst22|DtL\(15);
\inst22|ALT_INV_DtL\(14) <= NOT \inst22|DtL\(14);
\inst22|ALT_INV_DtL\(13) <= NOT \inst22|DtL\(13);
\inst22|ALT_INV_DtL\(12) <= NOT \inst22|DtL\(12);
\inst22|ALT_INV_State.SendL~q\ <= NOT \inst22|State.SendL~q\;
\inst22|ALT_INV_Selector0~0_combout\ <= NOT \inst22|Selector0~0_combout\;
\inst22|ALT_INV_S~1_combout\ <= NOT \inst22|S~1_combout\;
\inst22|ALT_INV_DtR\(11) <= NOT \inst22|DtR\(11);
\inst22|ALT_INV_DtR\(10) <= NOT \inst22|DtR\(10);
\inst22|ALT_INV_DtR\(9) <= NOT \inst22|DtR\(9);
\inst22|ALT_INV_DtR\(8) <= NOT \inst22|DtR\(8);
\inst22|ALT_INV_S~0_combout\ <= NOT \inst22|S~0_combout\;
\inst22|ALT_INV_DtR\(15) <= NOT \inst22|DtR\(15);
\inst22|ALT_INV_DtR\(14) <= NOT \inst22|DtR\(14);
\inst22|ALT_INV_DtR\(13) <= NOT \inst22|DtR\(13);
\inst22|ALT_INV_DtR\(12) <= NOT \inst22|DtR\(12);
\inst22|ALT_INV_State.SendR~q\ <= NOT \inst22|State.SendR~q\;
\inst22|ALT_INV_LessThan1~0_combout\ <= NOT \inst22|LessThan1~0_combout\;
\inst22|ALT_INV_Cpte\(0) <= NOT \inst22|Cpte\(0);
\inst22|ALT_INV_Cpte\(1) <= NOT \inst22|Cpte\(1);
\inst22|ALT_INV_Cpte\(2) <= NOT \inst22|Cpte\(2);
\inst22|ALT_INV_Cpte\(3) <= NOT \inst22|Cpte\(3);
\inst22|ALT_INV_Cpte\(4) <= NOT \inst22|Cpte\(4);
\inst30|ALT_INV_Reset_n_out~q\ <= NOT \inst30|Reset_n_out~q\;
\inst20|ALT_INV_State.Ender~q\ <= NOT \inst20|State.Ender~q\;
\inst20|ALT_INV_State.Starter~q\ <= NOT \inst20|State.Starter~q\;
\inst20|ALT_INV_S~en_q\ <= NOT \inst20|S~en_q\;
\inst27|ALT_INV_So~q\ <= NOT \inst27|So~q\;
\inst22|ALT_INV_AND_O~q\ <= NOT \inst22|AND_O~q\;
\inst20|ALT_INV_AND_O~q\ <= NOT \inst20|AND_O~q\;
\inst|ALT_INV_Mux4~10_combout\ <= NOT \inst|Mux4~10_combout\;
\inst23|ALT_INV_Add1~29_sumout\ <= NOT \inst23|Add1~29_sumout\;
\inst23|ALT_INV_Add1~5_sumout\ <= NOT \inst23|Add1~5_sumout\;
\inst23|ALT_INV_Cpte\(5) <= NOT \inst23|Cpte\(5);
\inst23|ALT_INV_Cpte\(6) <= NOT \inst23|Cpte\(6);
\inst23|ALT_INV_Cpte\(7) <= NOT \inst23|Cpte\(7);
\inst23|ALT_INV_Cpte\(0) <= NOT \inst23|Cpte\(0);
\inst23|ALT_INV_Cpte\(1) <= NOT \inst23|Cpte\(1);
\inst23|ALT_INV_Cpte\(2) <= NOT \inst23|Cpte\(2);
\inst23|ALT_INV_Cpte\(3) <= NOT \inst23|Cpte\(3);
\inst23|ALT_INV_Cpte\(4) <= NOT \inst23|Cpte\(4);
\inst26|ALT_INV_Add0~25_sumout\ <= NOT \inst26|Add0~25_sumout\;
\inst26|ALT_INV_Add0~21_sumout\ <= NOT \inst26|Add0~21_sumout\;
\inst26|ALT_INV_Add0~17_sumout\ <= NOT \inst26|Add0~17_sumout\;
\inst26|ALT_INV_Add0~13_sumout\ <= NOT \inst26|Add0~13_sumout\;
\inst26|ALT_INV_Add0~9_sumout\ <= NOT \inst26|Add0~9_sumout\;
\inst26|ALT_INV_Add0~5_sumout\ <= NOT \inst26|Add0~5_sumout\;
\inst26|ALT_INV_Add0~1_sumout\ <= NOT \inst26|Add0~1_sumout\;
\inst24|ALT_INV_Add0~33_sumout\ <= NOT \inst24|Add0~33_sumout\;
\inst24|ALT_INV_Add0~29_sumout\ <= NOT \inst24|Add0~29_sumout\;
\inst24|ALT_INV_Add0~25_sumout\ <= NOT \inst24|Add0~25_sumout\;
\inst24|ALT_INV_Add0~21_sumout\ <= NOT \inst24|Add0~21_sumout\;
\inst24|ALT_INV_Add0~17_sumout\ <= NOT \inst24|Add0~17_sumout\;
\inst24|ALT_INV_Add0~13_sumout\ <= NOT \inst24|Add0~13_sumout\;
\inst24|ALT_INV_Add0~9_sumout\ <= NOT \inst24|Add0~9_sumout\;
\inst24|ALT_INV_Add0~5_sumout\ <= NOT \inst24|Add0~5_sumout\;
\inst24|ALT_INV_Add0~1_sumout\ <= NOT \inst24|Add0~1_sumout\;
\inst26|ALT_INV_Cpte\(7) <= NOT \inst26|Cpte\(7);
\inst26|ALT_INV_Cpte\(4) <= NOT \inst26|Cpte\(4);
\inst26|ALT_INV_Cpte\(11) <= NOT \inst26|Cpte\(11);
\inst26|ALT_INV_Cpte\(10) <= NOT \inst26|Cpte\(10);
\inst26|ALT_INV_Cpte\(9) <= NOT \inst26|Cpte\(9);
\inst26|ALT_INV_Cpte\(6) <= NOT \inst26|Cpte\(6);
\inst26|ALT_INV_Cpte\(5) <= NOT \inst26|Cpte\(5);
\inst26|ALT_INV_Cpte\(3) <= NOT \inst26|Cpte\(3);
\inst26|ALT_INV_Cpte\(2) <= NOT \inst26|Cpte\(2);
\inst26|ALT_INV_Cpte\(1) <= NOT \inst26|Cpte\(1);
\inst26|ALT_INV_Cpte\(0) <= NOT \inst26|Cpte\(0);
\inst26|ALT_INV_Cpte\(8) <= NOT \inst26|Cpte\(8);
\inst3|ALT_INV_Cpte\(4) <= NOT \inst3|Cpte\(4);
\inst3|ALT_INV_Cpte\(5) <= NOT \inst3|Cpte\(5);
\inst3|ALT_INV_Cpte\(6) <= NOT \inst3|Cpte\(6);
\inst3|ALT_INV_Cpte\(0) <= NOT \inst3|Cpte\(0);
\inst3|ALT_INV_Cpte\(1) <= NOT \inst3|Cpte\(1);
\inst3|ALT_INV_Cpte\(2) <= NOT \inst3|Cpte\(2);
\inst3|ALT_INV_Cpte\(3) <= NOT \inst3|Cpte\(3);
\inst3|ALT_INV_Cpte\(7) <= NOT \inst3|Cpte\(7);
\inst24|ALT_INV_Cpte\(2) <= NOT \inst24|Cpte\(2);
\inst24|ALT_INV_Cpte\(3) <= NOT \inst24|Cpte\(3);
\inst24|ALT_INV_Cpte\(4) <= NOT \inst24|Cpte\(4);
\inst24|ALT_INV_Cpte\(5) <= NOT \inst24|Cpte\(5);
\inst24|ALT_INV_Cpte\(6) <= NOT \inst24|Cpte\(6);
\inst24|ALT_INV_Cpte\(7) <= NOT \inst24|Cpte\(7);
\inst24|ALT_INV_Cpte\(8) <= NOT \inst24|Cpte\(8);
\inst24|ALT_INV_Cpte\(0) <= NOT \inst24|Cpte\(0);
\inst24|ALT_INV_Cpte\(1) <= NOT \inst24|Cpte\(1);
\inst27|ALT_INV_Cpte\(25) <= NOT \inst27|Cpte\(25);
\inst27|ALT_INV_Cpte\(23) <= NOT \inst27|Cpte\(23);
\inst27|ALT_INV_Cpte\(22) <= NOT \inst27|Cpte\(22);
\inst27|ALT_INV_Cpte\(21) <= NOT \inst27|Cpte\(21);
\inst27|ALT_INV_Cpte\(20) <= NOT \inst27|Cpte\(20);
\inst27|ALT_INV_Cpte\(19) <= NOT \inst27|Cpte\(19);
\inst27|ALT_INV_Cpte\(15) <= NOT \inst27|Cpte\(15);
\inst27|ALT_INV_Cpte\(14) <= NOT \inst27|Cpte\(14);
\inst27|ALT_INV_Cpte\(13) <= NOT \inst27|Cpte\(13);
\inst27|ALT_INV_Cpte\(12) <= NOT \inst27|Cpte\(12);
\inst27|ALT_INV_Cpte\(10) <= NOT \inst27|Cpte\(10);
\inst27|ALT_INV_Cpte\(11) <= NOT \inst27|Cpte\(11);
\inst27|ALT_INV_Cpte\(9) <= NOT \inst27|Cpte\(9);
\inst27|ALT_INV_Cpte\(8) <= NOT \inst27|Cpte\(8);
\inst27|ALT_INV_Cpte\(7) <= NOT \inst27|Cpte\(7);
\inst27|ALT_INV_Cpte\(4) <= NOT \inst27|Cpte\(4);
\inst27|ALT_INV_Cpte\(2) <= NOT \inst27|Cpte\(2);
\inst27|ALT_INV_Cpte\(1) <= NOT \inst27|Cpte\(1);
\inst27|ALT_INV_Cpte\(0) <= NOT \inst27|Cpte\(0);
\inst27|ALT_INV_Cpte\(3) <= NOT \inst27|Cpte\(3);
\inst27|ALT_INV_Cpte\(6) <= NOT \inst27|Cpte\(6);
\inst27|ALT_INV_Cpte\(5) <= NOT \inst27|Cpte\(5);
\inst27|ALT_INV_Cpte\(16) <= NOT \inst27|Cpte\(16);
\inst27|ALT_INV_Cpte\(17) <= NOT \inst27|Cpte\(17);
\inst27|ALT_INV_Cpte\(18) <= NOT \inst27|Cpte\(18);
\inst27|ALT_INV_Cpte\(24) <= NOT \inst27|Cpte\(24);
\inst30|ALT_INV_CS.State_End~DUPLICATE_q\ <= NOT \inst30|CS.State_End~DUPLICATE_q\;
\inst20|ALT_INV_State.SendIns~DUPLICATE_q\ <= NOT \inst20|State.SendIns~DUPLICATE_q\;
\inst20|ALT_INV_Cpte[0]~DUPLICATE_q\ <= NOT \inst20|Cpte[0]~DUPLICATE_q\;
\inst20|ALT_INV_Cpte[2]~DUPLICATE_q\ <= NOT \inst20|Cpte[2]~DUPLICATE_q\;
\inst20|ALT_INV_State.SendEnd~DUPLICATE_q\ <= NOT \inst20|State.SendEnd~DUPLICATE_q\;
\inst20|ALT_INV_Cpte[1]~DUPLICATE_q\ <= NOT \inst20|Cpte[1]~DUPLICATE_q\;
\inst22|ALT_INV_State.SendR~DUPLICATE_q\ <= NOT \inst22|State.SendR~DUPLICATE_q\;
\inst22|ALT_INV_Cpte[1]~DUPLICATE_q\ <= NOT \inst22|Cpte[1]~DUPLICATE_q\;
\inst22|ALT_INV_Cpte[2]~DUPLICATE_q\ <= NOT \inst22|Cpte[2]~DUPLICATE_q\;
\inst22|ALT_INV_Cpte[3]~DUPLICATE_q\ <= NOT \inst22|Cpte[3]~DUPLICATE_q\;
\inst23|ALT_INV_Cpte[0]~DUPLICATE_q\ <= NOT \inst23|Cpte[0]~DUPLICATE_q\;
\inst26|ALT_INV_Cpte[4]~DUPLICATE_q\ <= NOT \inst26|Cpte[4]~DUPLICATE_q\;
\inst26|ALT_INV_Cpte[1]~DUPLICATE_q\ <= NOT \inst26|Cpte[1]~DUPLICATE_q\;
\inst26|ALT_INV_Cpte[0]~DUPLICATE_q\ <= NOT \inst26|Cpte[0]~DUPLICATE_q\;
\inst3|ALT_INV_Cpte[4]~DUPLICATE_q\ <= NOT \inst3|Cpte[4]~DUPLICATE_q\;
\inst3|ALT_INV_Cpte[5]~DUPLICATE_q\ <= NOT \inst3|Cpte[5]~DUPLICATE_q\;
\inst3|ALT_INV_Cpte[6]~DUPLICATE_q\ <= NOT \inst3|Cpte[6]~DUPLICATE_q\;
\inst3|ALT_INV_Cpte[0]~DUPLICATE_q\ <= NOT \inst3|Cpte[0]~DUPLICATE_q\;
\inst3|ALT_INV_Cpte[1]~DUPLICATE_q\ <= NOT \inst3|Cpte[1]~DUPLICATE_q\;
\inst3|ALT_INV_Cpte[3]~DUPLICATE_q\ <= NOT \inst3|Cpte[3]~DUPLICATE_q\;
\inst3|ALT_INV_Cpte[7]~DUPLICATE_q\ <= NOT \inst3|Cpte[7]~DUPLICATE_q\;
\inst27|ALT_INV_Cpte[12]~DUPLICATE_q\ <= NOT \inst27|Cpte[12]~DUPLICATE_q\;
\inst27|ALT_INV_Cpte[11]~DUPLICATE_q\ <= NOT \inst27|Cpte[11]~DUPLICATE_q\;
\inst27|ALT_INV_Cpte[0]~DUPLICATE_q\ <= NOT \inst27|Cpte[0]~DUPLICATE_q\;
\inst27|ALT_INV_Cpte[16]~DUPLICATE_q\ <= NOT \inst27|Cpte[16]~DUPLICATE_q\;
\inst27|ALT_INV_Cpte[24]~DUPLICATE_q\ <= NOT \inst27|Cpte[24]~DUPLICATE_q\;
\ALT_INV_SEL0~input_o\ <= NOT \SEL0~input_o\;
\ALT_INV_SEL1~input_o\ <= NOT \SEL1~input_o\;
\ALT_INV_MASTER_CLK~input_o\ <= NOT \MASTER_CLK~input_o\;
\inst3|ALT_INV_Cpts[8]~5_combout\ <= NOT \inst3|Cpts[8]~5_combout\;
\inst3|ALT_INV_Cpts[9]~1_combout\ <= NOT \inst3|Cpts[9]~1_combout\;
\inst|ALT_INV_Mux19~5_combout\ <= NOT \inst|Mux19~5_combout\;
\inst|ALT_INV_Mux19~4_combout\ <= NOT \inst|Mux19~4_combout\;
\inst|ALT_INV_Mux19~3_combout\ <= NOT \inst|Mux19~3_combout\;
\inst|ALT_INV_Mux18~8_combout\ <= NOT \inst|Mux18~8_combout\;
\inst|ALT_INV_Mux18~7_combout\ <= NOT \inst|Mux18~7_combout\;
\inst|ALT_INV_Mux18~6_combout\ <= NOT \inst|Mux18~6_combout\;
\inst|ALT_INV_Mux18~5_combout\ <= NOT \inst|Mux18~5_combout\;
\inst|ALT_INV_Mux18~4_combout\ <= NOT \inst|Mux18~4_combout\;
\inst|ALT_INV_Mux18~3_combout\ <= NOT \inst|Mux18~3_combout\;
\inst|ALT_INV_Mux17~5_combout\ <= NOT \inst|Mux17~5_combout\;
\inst|ALT_INV_Mux17~4_combout\ <= NOT \inst|Mux17~4_combout\;
\inst|ALT_INV_Mux17~3_combout\ <= NOT \inst|Mux17~3_combout\;
\inst|ALT_INV_Mux16~8_combout\ <= NOT \inst|Mux16~8_combout\;
\inst|ALT_INV_Mux16~7_combout\ <= NOT \inst|Mux16~7_combout\;
\inst|ALT_INV_Mux16~6_combout\ <= NOT \inst|Mux16~6_combout\;
\inst|ALT_INV_Mux16~5_combout\ <= NOT \inst|Mux16~5_combout\;
\inst|ALT_INV_Mux16~4_combout\ <= NOT \inst|Mux16~4_combout\;
\inst|ALT_INV_Mux16~3_combout\ <= NOT \inst|Mux16~3_combout\;
\inst|ALT_INV_Mux23~5_combout\ <= NOT \inst|Mux23~5_combout\;
\inst|ALT_INV_Mux23~4_combout\ <= NOT \inst|Mux23~4_combout\;
\inst|ALT_INV_Mux23~3_combout\ <= NOT \inst|Mux23~3_combout\;
\inst|ALT_INV_Mux22~9_combout\ <= NOT \inst|Mux22~9_combout\;
\inst|ALT_INV_Mux22~8_combout\ <= NOT \inst|Mux22~8_combout\;
\inst|ALT_INV_Mux22~7_combout\ <= NOT \inst|Mux22~7_combout\;
\inst|ALT_INV_Mux22~6_combout\ <= NOT \inst|Mux22~6_combout\;
\inst|ALT_INV_Mux22~5_combout\ <= NOT \inst|Mux22~5_combout\;
\inst|ALT_INV_Mux22~4_combout\ <= NOT \inst|Mux22~4_combout\;
\inst|ALT_INV_Mux21~6_combout\ <= NOT \inst|Mux21~6_combout\;
\inst|ALT_INV_Mux21~5_combout\ <= NOT \inst|Mux21~5_combout\;
\inst|ALT_INV_Mux21~4_combout\ <= NOT \inst|Mux21~4_combout\;
\inst|ALT_INV_Mux21~3_combout\ <= NOT \inst|Mux21~3_combout\;
\inst|ALT_INV_Mux21~2_combout\ <= NOT \inst|Mux21~2_combout\;
\inst|ALT_INV_Mux21~1_combout\ <= NOT \inst|Mux21~1_combout\;
\inst|ALT_INV_Mux20~5_combout\ <= NOT \inst|Mux20~5_combout\;
\inst|ALT_INV_Mux20~4_combout\ <= NOT \inst|Mux20~4_combout\;
\inst|ALT_INV_Mux20~3_combout\ <= NOT \inst|Mux20~3_combout\;
\inst|ALT_INV_Mux27~8_combout\ <= NOT \inst|Mux27~8_combout\;
\inst|ALT_INV_Mux27~7_combout\ <= NOT \inst|Mux27~7_combout\;
\inst|ALT_INV_Mux27~6_combout\ <= NOT \inst|Mux27~6_combout\;
\inst|ALT_INV_Mux27~5_combout\ <= NOT \inst|Mux27~5_combout\;
\inst|ALT_INV_Mux27~4_combout\ <= NOT \inst|Mux27~4_combout\;
\inst|ALT_INV_Mux27~3_combout\ <= NOT \inst|Mux27~3_combout\;
\inst|ALT_INV_Mux26~8_combout\ <= NOT \inst|Mux26~8_combout\;
\inst|ALT_INV_Mux26~7_combout\ <= NOT \inst|Mux26~7_combout\;
\inst|ALT_INV_Mux26~6_combout\ <= NOT \inst|Mux26~6_combout\;
\inst|ALT_INV_Mux26~5_combout\ <= NOT \inst|Mux26~5_combout\;
\inst|ALT_INV_Mux26~4_combout\ <= NOT \inst|Mux26~4_combout\;
\inst|ALT_INV_Mux26~3_combout\ <= NOT \inst|Mux26~3_combout\;
\inst|ALT_INV_Mux25~5_combout\ <= NOT \inst|Mux25~5_combout\;
\inst|ALT_INV_Mux25~4_combout\ <= NOT \inst|Mux25~4_combout\;
\inst|ALT_INV_Mux25~3_combout\ <= NOT \inst|Mux25~3_combout\;
\inst|ALT_INV_Mux24~5_combout\ <= NOT \inst|Mux24~5_combout\;
\inst|ALT_INV_Mux24~4_combout\ <= NOT \inst|Mux24~4_combout\;
\inst|ALT_INV_Mux24~3_combout\ <= NOT \inst|Mux24~3_combout\;
\inst|ALT_INV_Mux30~8_combout\ <= NOT \inst|Mux30~8_combout\;
\inst|ALT_INV_Mux30~7_combout\ <= NOT \inst|Mux30~7_combout\;
\inst|ALT_INV_Mux30~6_combout\ <= NOT \inst|Mux30~6_combout\;
\inst|ALT_INV_Mux30~5_combout\ <= NOT \inst|Mux30~5_combout\;
\inst|ALT_INV_Mux30~4_combout\ <= NOT \inst|Mux30~4_combout\;
\inst|ALT_INV_Mux30~3_combout\ <= NOT \inst|Mux30~3_combout\;
\inst|ALT_INV_Mux29~6_combout\ <= NOT \inst|Mux29~6_combout\;
\inst|ALT_INV_Mux29~5_combout\ <= NOT \inst|Mux29~5_combout\;
\inst|ALT_INV_Mux29~4_combout\ <= NOT \inst|Mux29~4_combout\;
\inst|ALT_INV_Mux29~3_combout\ <= NOT \inst|Mux29~3_combout\;
\inst|ALT_INV_Mux29~2_combout\ <= NOT \inst|Mux29~2_combout\;
\inst|ALT_INV_Mux29~1_combout\ <= NOT \inst|Mux29~1_combout\;
\inst|ALT_INV_Mux28~6_combout\ <= NOT \inst|Mux28~6_combout\;
\inst|ALT_INV_Mux28~5_combout\ <= NOT \inst|Mux28~5_combout\;
\inst|ALT_INV_Mux28~4_combout\ <= NOT \inst|Mux28~4_combout\;
\inst|ALT_INV_Mux28~3_combout\ <= NOT \inst|Mux28~3_combout\;
\inst|ALT_INV_Mux28~2_combout\ <= NOT \inst|Mux28~2_combout\;
\inst|ALT_INV_Mux28~1_combout\ <= NOT \inst|Mux28~1_combout\;
\inst|ALT_INV_Mux15~6_combout\ <= NOT \inst|Mux15~6_combout\;
\inst|ALT_INV_Mux15~5_combout\ <= NOT \inst|Mux15~5_combout\;
\inst|ALT_INV_Mux15~4_combout\ <= NOT \inst|Mux15~4_combout\;
\inst|ALT_INV_Mux11~6_combout\ <= NOT \inst|Mux11~6_combout\;
\inst|ALT_INV_Mux11~5_combout\ <= NOT \inst|Mux11~5_combout\;
\inst|ALT_INV_Mux11~4_combout\ <= NOT \inst|Mux11~4_combout\;
\inst|ALT_INV_Mux11~3_combout\ <= NOT \inst|Mux11~3_combout\;
\inst|ALT_INV_Mux11~2_combout\ <= NOT \inst|Mux11~2_combout\;
\inst|ALT_INV_Mux11~1_combout\ <= NOT \inst|Mux11~1_combout\;
\inst|ALT_INV_Mux7~7_combout\ <= NOT \inst|Mux7~7_combout\;
\inst|ALT_INV_Mux7~6_combout\ <= NOT \inst|Mux7~6_combout\;
\inst|ALT_INV_Mux7~5_combout\ <= NOT \inst|Mux7~5_combout\;
\inst|ALT_INV_Mux14~6_combout\ <= NOT \inst|Mux14~6_combout\;
\inst|ALT_INV_Mux14~5_combout\ <= NOT \inst|Mux14~5_combout\;
\inst|ALT_INV_Mux14~4_combout\ <= NOT \inst|Mux14~4_combout\;
\inst|ALT_INV_Mux14~3_combout\ <= NOT \inst|Mux14~3_combout\;
\inst|ALT_INV_Mux14~2_combout\ <= NOT \inst|Mux14~2_combout\;
\inst|ALT_INV_Mux14~1_combout\ <= NOT \inst|Mux14~1_combout\;
\inst|ALT_INV_Mux10~5_combout\ <= NOT \inst|Mux10~5_combout\;
\inst|ALT_INV_Mux10~4_combout\ <= NOT \inst|Mux10~4_combout\;
\inst|ALT_INV_Mux10~3_combout\ <= NOT \inst|Mux10~3_combout\;
\inst|ALT_INV_Mux2~14_combout\ <= NOT \inst|Mux2~14_combout\;
\inst|ALT_INV_Mux13~5_combout\ <= NOT \inst|Mux13~5_combout\;
\inst|ALT_INV_Mux13~4_combout\ <= NOT \inst|Mux13~4_combout\;
\inst|ALT_INV_Mux13~3_combout\ <= NOT \inst|Mux13~3_combout\;
\inst|ALT_INV_Mux9~6_combout\ <= NOT \inst|Mux9~6_combout\;
\inst|ALT_INV_Mux9~5_combout\ <= NOT \inst|Mux9~5_combout\;
\inst|ALT_INV_Mux9~4_combout\ <= NOT \inst|Mux9~4_combout\;
\inst|ALT_INV_Mux9~3_combout\ <= NOT \inst|Mux9~3_combout\;
\inst|ALT_INV_Mux9~2_combout\ <= NOT \inst|Mux9~2_combout\;
\inst|ALT_INV_Mux9~1_combout\ <= NOT \inst|Mux9~1_combout\;
\inst|ALT_INV_Mux12~8_combout\ <= NOT \inst|Mux12~8_combout\;
\inst|ALT_INV_Mux12~7_combout\ <= NOT \inst|Mux12~7_combout\;
\inst|ALT_INV_Mux12~6_combout\ <= NOT \inst|Mux12~6_combout\;
\inst|ALT_INV_Mux12~5_combout\ <= NOT \inst|Mux12~5_combout\;
\inst|ALT_INV_Mux12~4_combout\ <= NOT \inst|Mux12~4_combout\;
\inst|ALT_INV_Mux12~3_combout\ <= NOT \inst|Mux12~3_combout\;
\inst|ALT_INV_Mux8~5_combout\ <= NOT \inst|Mux8~5_combout\;
\inst|ALT_INV_Mux8~4_combout\ <= NOT \inst|Mux8~4_combout\;
\inst|ALT_INV_Mux8~3_combout\ <= NOT \inst|Mux8~3_combout\;
\inst|ALT_INV_Mux8~2_combout\ <= NOT \inst|Mux8~2_combout\;
\inst|ALT_INV_Mux8~1_combout\ <= NOT \inst|Mux8~1_combout\;
\inst|ALT_INV_Mux26~2_combout\ <= NOT \inst|Mux26~2_combout\;
\inst|ALT_INV_Mux1~3_combout\ <= NOT \inst|Mux1~3_combout\;
\inst|ALT_INV_Mux1~2_combout\ <= NOT \inst|Mux1~2_combout\;
\inst|ALT_INV_Mux1~1_combout\ <= NOT \inst|Mux1~1_combout\;
\inst|ALT_INV_Mux12~2_combout\ <= NOT \inst|Mux12~2_combout\;
\inst|ALT_INV_Mux5~9_combout\ <= NOT \inst|Mux5~9_combout\;
\inst|ALT_INV_Mux6~8_combout\ <= NOT \inst|Mux6~8_combout\;
\inst|ALT_INV_Mux30~2_combout\ <= NOT \inst|Mux30~2_combout\;
\inst|ALT_INV_Mux27~2_combout\ <= NOT \inst|Mux27~2_combout\;
\inst|ALT_INV_Mux22~3_combout\ <= NOT \inst|Mux22~3_combout\;
\inst|ALT_INV_Mux16~2_combout\ <= NOT \inst|Mux16~2_combout\;
\inst|ALT_INV_Mux18~2_combout\ <= NOT \inst|Mux18~2_combout\;
\inst|ALT_INV_Mux2~13_combout\ <= NOT \inst|Mux2~13_combout\;
\inst|ALT_INV_Mux2~12_combout\ <= NOT \inst|Mux2~12_combout\;
\inst|ALT_INV_Mux2~11_combout\ <= NOT \inst|Mux2~11_combout\;
\inst|ALT_INV_Mux6~7_combout\ <= NOT \inst|Mux6~7_combout\;
\inst|ALT_INV_Mux3~8_combout\ <= NOT \inst|Mux3~8_combout\;
\inst|ALT_INV_Mux13~2_combout\ <= NOT \inst|Mux13~2_combout\;
\inst|ALT_INV_Mux24~2_combout\ <= NOT \inst|Mux24~2_combout\;
\inst|ALT_INV_Mux25~2_combout\ <= NOT \inst|Mux25~2_combout\;
\inst|ALT_INV_Mux20~2_combout\ <= NOT \inst|Mux20~2_combout\;
\inst|ALT_INV_Mux10~2_combout\ <= NOT \inst|Mux10~2_combout\;
\inst|ALT_INV_Mux15~3_combout\ <= NOT \inst|Mux15~3_combout\;
\inst|ALT_INV_Mux23~2_combout\ <= NOT \inst|Mux23~2_combout\;
\inst|ALT_INV_Mux17~2_combout\ <= NOT \inst|Mux17~2_combout\;
\inst|ALT_INV_Mux19~2_combout\ <= NOT \inst|Mux19~2_combout\;

-- Location: IOOBUF_X12_Y81_N2
\I2C_SDAT~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst20|S~reg0_q\,
	oe => \inst20|ALT_INV_S~en_q\,
	devoe => ww_devoe,
	o => ww_I2C_SDAT);

-- Location: IOOBUF_X12_Y81_N19
\I2C_SCLK~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6~combout\,
	devoe => ww_devoe,
	o => ww_I2C_SCLK);

-- Location: IOOBUF_X16_Y81_N2
\AUD_DACDAT~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst22|S~q\,
	devoe => ww_devoe,
	o => ww_AUD_DACDAT);

-- Location: IOOBUF_X24_Y81_N2
\AUD_DACLRCK~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst22|SID~q\,
	devoe => ww_devoe,
	o => ww_AUD_DACLRCK);

-- Location: IOOBUF_X2_Y81_N76
\AUD_XCK~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5~combout\,
	devoe => ww_devoe,
	o => ww_AUD_XCK);

-- Location: IOOBUF_X52_Y0_N2
\LED_BLINK~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst27|So~q\,
	devoe => ww_devoe,
	o => ww_LED_BLINK);

-- Location: IOOBUF_X52_Y0_N19
\LED_R~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MASTER_R~input_o\,
	devoe => ww_devoe,
	o => ww_LED_R);

-- Location: IOIBUF_X32_Y0_N1
\MASTER_CLK~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MASTER_CLK,
	o => \MASTER_CLK~input_o\);

-- Location: CLKCTRL_G6
\MASTER_CLK~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \MASTER_CLK~input_o\,
	outclk => \MASTER_CLK~inputCLKENA0_outclk\);

-- Location: IOIBUF_X36_Y0_N1
\MASTER_R~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MASTER_R,
	o => \MASTER_R~input_o\);

-- Location: FF_X25_Y65_N41
\inst30|CS.State_End\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MASTER_CLK~inputCLKENA0_outclk\,
	d => \inst30|CS.State_End~0_combout\,
	clrn => \MASTER_R~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst30|CS.State_End~q\);

-- Location: MLABCELL_X25_Y65_N24
\inst30|Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst30|Selector1~0_combout\ = ( \inst30|count\(1) & ( \inst30|CS.State_End~DUPLICATE_q\ ) ) # ( !\inst30|count\(1) & ( \inst30|CS.State_End~DUPLICATE_q\ & ( (\inst30|CS.State_Wait~q\ & (!\inst30|count\(0) & !\inst30|count\(2))) ) ) ) # ( 
-- \inst30|count\(1) & ( !\inst30|CS.State_End~DUPLICATE_q\ & ( (\inst30|CS.State_Wait~q\ & \inst30|count\(0)) ) ) ) # ( !\inst30|count\(1) & ( !\inst30|CS.State_End~DUPLICATE_q\ & ( (\inst30|CS.State_Wait~q\ & (!\inst30|count\(0) & !\inst30|count\(2))) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000000000001010000010101010000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|ALT_INV_CS.State_Wait~q\,
	datac => \inst30|ALT_INV_count\(0),
	datad => \inst30|ALT_INV_count\(2),
	datae => \inst30|ALT_INV_count\(1),
	dataf => \inst30|ALT_INV_CS.State_End~DUPLICATE_q\,
	combout => \inst30|Selector1~0_combout\);

-- Location: FF_X25_Y65_N25
\inst30|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MASTER_CLK~inputCLKENA0_outclk\,
	d => \inst30|Selector1~0_combout\,
	clrn => \MASTER_R~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst30|count\(1));

-- Location: MLABCELL_X25_Y65_N21
\inst30|Selector2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst30|Selector2~0_combout\ = ( \inst30|count\(0) & ( \inst30|count\(1) & ( \inst30|CS.State_End~q\ ) ) ) # ( !\inst30|count\(0) & ( \inst30|count\(1) & ( \inst30|CS.State_Wait~q\ ) ) ) # ( \inst30|count\(0) & ( !\inst30|count\(1) & ( 
-- \inst30|CS.State_End~q\ ) ) ) # ( !\inst30|count\(0) & ( !\inst30|count\(1) & ( (\inst30|CS.State_Wait~q\ & !\inst30|count\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100000011110000111101010101010101010000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|ALT_INV_CS.State_Wait~q\,
	datab => \inst30|ALT_INV_count\(2),
	datac => \inst30|ALT_INV_CS.State_End~q\,
	datae => \inst30|ALT_INV_count\(0),
	dataf => \inst30|ALT_INV_count\(1),
	combout => \inst30|Selector2~0_combout\);

-- Location: FF_X25_Y65_N23
\inst30|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MASTER_CLK~inputCLKENA0_outclk\,
	d => \inst30|Selector2~0_combout\,
	clrn => \MASTER_R~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst30|count\(0));

-- Location: MLABCELL_X25_Y65_N42
\inst30|Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst30|Selector0~0_combout\ = ( \inst30|count\(2) & ( \inst30|count\(1) & ( (\inst30|CS.State_End~q\) # (\inst30|CS.State_Wait~q\) ) ) ) # ( \inst30|count\(2) & ( !\inst30|count\(1) & ( (\inst30|CS.State_End~q\) # (\inst30|CS.State_Wait~q\) ) ) ) # ( 
-- !\inst30|count\(2) & ( !\inst30|count\(1) & ( (\inst30|CS.State_Wait~q\ & !\inst30|count\(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010101011111111100000000000000000101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|ALT_INV_CS.State_Wait~q\,
	datac => \inst30|ALT_INV_count\(0),
	datad => \inst30|ALT_INV_CS.State_End~q\,
	datae => \inst30|ALT_INV_count\(2),
	dataf => \inst30|ALT_INV_count\(1),
	combout => \inst30|Selector0~0_combout\);

-- Location: FF_X25_Y65_N44
\inst30|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MASTER_CLK~inputCLKENA0_outclk\,
	d => \inst30|Selector0~0_combout\,
	clrn => \MASTER_R~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst30|count\(2));

-- Location: MLABCELL_X25_Y65_N48
\inst30|Selector3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst30|Selector3~0_combout\ = ( \inst30|CS.State_Wait~q\ & ( \inst30|count\(1) ) ) # ( !\inst30|CS.State_Wait~q\ & ( \inst30|count\(1) & ( !\inst30|CS.State_End~q\ ) ) ) # ( \inst30|CS.State_Wait~q\ & ( !\inst30|count\(1) & ( (!\inst30|count\(2)) # 
-- (\inst30|count\(0)) ) ) ) # ( !\inst30|CS.State_Wait~q\ & ( !\inst30|count\(1) & ( !\inst30|CS.State_End~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000110011111100111111111111000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst30|ALT_INV_count\(2),
	datac => \inst30|ALT_INV_count\(0),
	datad => \inst30|ALT_INV_CS.State_End~q\,
	datae => \inst30|ALT_INV_CS.State_Wait~q\,
	dataf => \inst30|ALT_INV_count\(1),
	combout => \inst30|Selector3~0_combout\);

-- Location: FF_X25_Y65_N50
\inst30|CS.State_Wait\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MASTER_CLK~inputCLKENA0_outclk\,
	d => \inst30|Selector3~0_combout\,
	clrn => \MASTER_R~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst30|CS.State_Wait~q\);

-- Location: MLABCELL_X25_Y65_N39
\inst30|CS.State_End~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst30|CS.State_End~0_combout\ = ( \inst30|CS.State_End~q\ & ( \inst30|count\(1) ) ) # ( \inst30|CS.State_End~q\ & ( !\inst30|count\(1) ) ) # ( !\inst30|CS.State_End~q\ & ( !\inst30|count\(1) & ( (\inst30|CS.State_Wait~q\ & (\inst30|count\(2) & 
-- !\inst30|count\(0))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|ALT_INV_CS.State_Wait~q\,
	datac => \inst30|ALT_INV_count\(2),
	datad => \inst30|ALT_INV_count\(0),
	datae => \inst30|ALT_INV_CS.State_End~q\,
	dataf => \inst30|ALT_INV_count\(1),
	combout => \inst30|CS.State_End~0_combout\);

-- Location: FF_X25_Y65_N40
\inst30|CS.State_End~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MASTER_CLK~inputCLKENA0_outclk\,
	d => \inst30|CS.State_End~0_combout\,
	clrn => \MASTER_R~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst30|CS.State_End~DUPLICATE_q\);

-- Location: FF_X17_Y76_N53
\inst30|Reset_n_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MASTER_CLK~inputCLKENA0_outclk\,
	asdata => \inst30|CS.State_End~DUPLICATE_q\,
	clrn => \MASTER_R~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst30|Reset_n_out~q\);

-- Location: LABCELL_X19_Y78_N0
\inst24|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst24|Add0~33_sumout\ = SUM(( \inst24|Cpte\(0) ) + ( VCC ) + ( !VCC ))
-- \inst24|Add0~34\ = CARRY(( \inst24|Cpte\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst24|ALT_INV_Cpte\(0),
	cin => GND,
	sumout => \inst24|Add0~33_sumout\,
	cout => \inst24|Add0~34\);

-- Location: FF_X19_Y78_N44
\inst24|Cpte[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MASTER_CLK~inputCLKENA0_outclk\,
	asdata => \inst24|Add0~21_sumout\,
	clrn => \inst30|Reset_n_out~q\,
	sclr => \inst24|Cpte~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst24|Cpte\(8));

-- Location: LABCELL_X19_Y78_N18
\inst24|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst24|Add0~13_sumout\ = SUM(( \inst24|Cpte\(6) ) + ( GND ) + ( \inst24|Add0~10\ ))
-- \inst24|Add0~14\ = CARRY(( \inst24|Cpte\(6) ) + ( GND ) + ( \inst24|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst24|ALT_INV_Cpte\(6),
	cin => \inst24|Add0~10\,
	sumout => \inst24|Add0~13_sumout\,
	cout => \inst24|Add0~14\);

-- Location: LABCELL_X19_Y78_N21
\inst24|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst24|Add0~17_sumout\ = SUM(( \inst24|Cpte\(7) ) + ( GND ) + ( \inst24|Add0~14\ ))
-- \inst24|Add0~18\ = CARRY(( \inst24|Cpte\(7) ) + ( GND ) + ( \inst24|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst24|ALT_INV_Cpte\(7),
	cin => \inst24|Add0~14\,
	sumout => \inst24|Add0~17_sumout\,
	cout => \inst24|Add0~18\);

-- Location: FF_X19_Y78_N53
\inst24|Cpte[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MASTER_CLK~inputCLKENA0_outclk\,
	asdata => \inst24|Add0~17_sumout\,
	clrn => \inst30|Reset_n_out~q\,
	sclr => \inst24|Cpte~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst24|Cpte\(7));

-- Location: LABCELL_X19_Y78_N24
\inst24|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst24|Add0~21_sumout\ = SUM(( \inst24|Cpte\(8) ) + ( GND ) + ( \inst24|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst24|ALT_INV_Cpte\(8),
	cin => \inst24|Add0~18\,
	sumout => \inst24|Add0~21_sumout\);

-- Location: LABCELL_X19_Y78_N33
\inst24|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst24|Equal0~1_combout\ = ( !\inst24|Cpte\(3) & ( !\inst24|Cpte\(2) & ( !\inst24|Cpte\(4) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst24|ALT_INV_Cpte\(4),
	datae => \inst24|ALT_INV_Cpte\(3),
	dataf => \inst24|ALT_INV_Cpte\(2),
	combout => \inst24|Equal0~1_combout\);

-- Location: LABCELL_X19_Y78_N42
\inst24|Cpte~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst24|Cpte~0_combout\ = ( \inst24|Add0~1_sumout\ & ( \inst24|Add0~25_sumout\ & ( (\inst24|Equal0~1_combout\ & \inst24|Equal0~0_combout\) ) ) ) # ( !\inst24|Add0~1_sumout\ & ( \inst24|Add0~25_sumout\ & ( (\inst24|Equal0~1_combout\ & 
-- \inst24|Equal0~0_combout\) ) ) ) # ( \inst24|Add0~1_sumout\ & ( !\inst24|Add0~25_sumout\ & ( (!\inst24|Add0~29_sumout\) # ((\inst24|Equal0~1_combout\ & \inst24|Equal0~0_combout\)) ) ) ) # ( !\inst24|Add0~1_sumout\ & ( !\inst24|Add0~25_sumout\ & ( 
-- (!\inst24|Add0~33_sumout\) # ((!\inst24|Add0~29_sumout\) # ((\inst24|Equal0~1_combout\ & \inst24|Equal0~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111110001111111110001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst24|ALT_INV_Equal0~1_combout\,
	datab => \inst24|ALT_INV_Equal0~0_combout\,
	datac => \inst24|ALT_INV_Add0~33_sumout\,
	datad => \inst24|ALT_INV_Add0~29_sumout\,
	datae => \inst24|ALT_INV_Add0~1_sumout\,
	dataf => \inst24|ALT_INV_Add0~25_sumout\,
	combout => \inst24|Cpte~0_combout\);

-- Location: LABCELL_X19_Y78_N51
\inst24|Cpte~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst24|Cpte~1_combout\ = ( \inst24|Add0~17_sumout\ & ( !\inst24|Cpte~0_combout\ & ( (\inst24|Add0~13_sumout\ & (\inst24|Add0~5_sumout\ & (\inst24|Add0~9_sumout\ & \inst24|Add0~21_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst24|ALT_INV_Add0~13_sumout\,
	datab => \inst24|ALT_INV_Add0~5_sumout\,
	datac => \inst24|ALT_INV_Add0~9_sumout\,
	datad => \inst24|ALT_INV_Add0~21_sumout\,
	datae => \inst24|ALT_INV_Add0~17_sumout\,
	dataf => \inst24|ALT_INV_Cpte~0_combout\,
	combout => \inst24|Cpte~1_combout\);

-- Location: FF_X19_Y78_N38
\inst24|Cpte[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MASTER_CLK~inputCLKENA0_outclk\,
	asdata => \inst24|Add0~33_sumout\,
	clrn => \inst30|Reset_n_out~q\,
	sclr => \inst24|Cpte~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst24|Cpte\(0));

-- Location: LABCELL_X19_Y78_N3
\inst24|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst24|Add0~1_sumout\ = SUM(( \inst24|Cpte\(1) ) + ( GND ) + ( \inst24|Add0~34\ ))
-- \inst24|Add0~2\ = CARRY(( \inst24|Cpte\(1) ) + ( GND ) + ( \inst24|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst24|ALT_INV_Cpte\(1),
	cin => \inst24|Add0~34\,
	sumout => \inst24|Add0~1_sumout\,
	cout => \inst24|Add0~2\);

-- Location: FF_X19_Y78_N32
\inst24|Cpte[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MASTER_CLK~inputCLKENA0_outclk\,
	asdata => \inst24|Add0~1_sumout\,
	clrn => \inst30|Reset_n_out~q\,
	sclr => \inst24|Cpte~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst24|Cpte\(1));

-- Location: LABCELL_X19_Y78_N6
\inst24|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst24|Add0~29_sumout\ = SUM(( \inst24|Cpte\(2) ) + ( GND ) + ( \inst24|Add0~2\ ))
-- \inst24|Add0~30\ = CARRY(( \inst24|Cpte\(2) ) + ( GND ) + ( \inst24|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst24|ALT_INV_Cpte\(2),
	cin => \inst24|Add0~2\,
	sumout => \inst24|Add0~29_sumout\,
	cout => \inst24|Add0~30\);

-- Location: FF_X19_Y78_N50
\inst24|Cpte[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MASTER_CLK~inputCLKENA0_outclk\,
	asdata => \inst24|Add0~29_sumout\,
	clrn => \inst30|Reset_n_out~q\,
	sclr => \inst24|Cpte~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst24|Cpte\(2));

-- Location: LABCELL_X19_Y78_N9
\inst24|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst24|Add0~25_sumout\ = SUM(( \inst24|Cpte\(3) ) + ( GND ) + ( \inst24|Add0~30\ ))
-- \inst24|Add0~26\ = CARRY(( \inst24|Cpte\(3) ) + ( GND ) + ( \inst24|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst24|ALT_INV_Cpte\(3),
	cin => \inst24|Add0~30\,
	sumout => \inst24|Add0~25_sumout\,
	cout => \inst24|Add0~26\);

-- Location: FF_X19_Y78_N59
\inst24|Cpte[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MASTER_CLK~inputCLKENA0_outclk\,
	asdata => \inst24|Add0~25_sumout\,
	clrn => \inst30|Reset_n_out~q\,
	sclr => \inst24|Cpte~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst24|Cpte\(3));

-- Location: LABCELL_X19_Y78_N12
\inst24|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst24|Add0~5_sumout\ = SUM(( \inst24|Cpte\(4) ) + ( GND ) + ( \inst24|Add0~26\ ))
-- \inst24|Add0~6\ = CARRY(( \inst24|Cpte\(4) ) + ( GND ) + ( \inst24|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst24|ALT_INV_Cpte\(4),
	cin => \inst24|Add0~26\,
	sumout => \inst24|Add0~5_sumout\,
	cout => \inst24|Add0~6\);

-- Location: FF_X19_Y78_N47
\inst24|Cpte[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MASTER_CLK~inputCLKENA0_outclk\,
	asdata => \inst24|Add0~5_sumout\,
	clrn => \inst30|Reset_n_out~q\,
	sclr => \inst24|Cpte~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst24|Cpte\(4));

-- Location: LABCELL_X19_Y78_N15
\inst24|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst24|Add0~9_sumout\ = SUM(( \inst24|Cpte\(5) ) + ( GND ) + ( \inst24|Add0~6\ ))
-- \inst24|Add0~10\ = CARRY(( \inst24|Cpte\(5) ) + ( GND ) + ( \inst24|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst24|ALT_INV_Cpte\(5),
	cin => \inst24|Add0~6\,
	sumout => \inst24|Add0~9_sumout\,
	cout => \inst24|Add0~10\);

-- Location: FF_X19_Y78_N35
\inst24|Cpte[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MASTER_CLK~inputCLKENA0_outclk\,
	asdata => \inst24|Add0~9_sumout\,
	clrn => \inst30|Reset_n_out~q\,
	sclr => \inst24|Cpte~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst24|Cpte\(5));

-- Location: FF_X19_Y78_N56
\inst24|Cpte[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MASTER_CLK~inputCLKENA0_outclk\,
	asdata => \inst24|Add0~13_sumout\,
	clrn => \inst30|Reset_n_out~q\,
	sclr => \inst24|Cpte~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst24|Cpte\(6));

-- Location: LABCELL_X19_Y78_N39
\inst24|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst24|Equal0~0_combout\ = ( !\inst24|Cpte\(0) & ( !\inst24|Cpte\(7) & ( (!\inst24|Cpte\(6) & (!\inst24|Cpte\(8) & (!\inst24|Cpte\(1) & !\inst24|Cpte\(5)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst24|ALT_INV_Cpte\(6),
	datab => \inst24|ALT_INV_Cpte\(8),
	datac => \inst24|ALT_INV_Cpte\(1),
	datad => \inst24|ALT_INV_Cpte\(5),
	datae => \inst24|ALT_INV_Cpte\(0),
	dataf => \inst24|ALT_INV_Cpte\(7),
	combout => \inst24|Equal0~0_combout\);

-- Location: LABCELL_X19_Y78_N54
\inst24|temp~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst24|temp~0_combout\ = ( \inst24|Equal0~1_combout\ & ( \inst24|temp~q\ & ( !\inst24|Equal0~0_combout\ ) ) ) # ( !\inst24|Equal0~1_combout\ & ( \inst24|temp~q\ ) ) # ( \inst24|Equal0~1_combout\ & ( !\inst24|temp~q\ & ( \inst24|Equal0~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111111111111111111111111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst24|ALT_INV_Equal0~0_combout\,
	datae => \inst24|ALT_INV_Equal0~1_combout\,
	dataf => \inst24|ALT_INV_temp~q\,
	combout => \inst24|temp~0_combout\);

-- Location: FF_X16_Y77_N41
\inst24|temp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MASTER_CLK~inputCLKENA0_outclk\,
	asdata => \inst24|temp~0_combout\,
	clrn => \inst30|Reset_n_out~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst24|temp~q\);

-- Location: LABCELL_X16_Y77_N9
\inst24|CLKs\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst24|CLKs~combout\ = LCELL(( \inst24|temp~q\ & ( \inst30|Reset_n_out~q\ ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst30|ALT_INV_Reset_n_out~q\,
	dataf => \inst24|ALT_INV_temp~q\,
	combout => \inst24|CLKs~combout\);

-- Location: FF_X12_Y77_N28
\inst20|State.SendEnd~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst24|CLKs~combout\,
	asdata => \inst20|Selector10~4_combout\,
	clrn => \inst30|Reset_n_out~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst20|State.SendEnd~DUPLICATE_q\);

-- Location: FF_X16_Y77_N43
\inst20|Cpte[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst24|CLKs~combout\,
	asdata => \inst20|Selector3~1_combout\,
	clrn => \inst30|Reset_n_out~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst20|Cpte\(0));

-- Location: FF_X15_Y77_N31
\inst20|Cpte[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst24|CLKs~combout\,
	asdata => \inst20|Selector2~1_combout\,
	clrn => \inst30|Reset_n_out~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst20|Cpte[1]~DUPLICATE_q\);

-- Location: FF_X16_Y77_N13
\inst20|Cpte[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst24|CLKs~combout\,
	d => \inst20|Selector1~1_combout\,
	clrn => \inst30|Reset_n_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst20|Cpte[2]~DUPLICATE_q\);

-- Location: MLABCELL_X15_Y77_N21
\inst20|LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst20|LessThan0~0_combout\ = ( \inst20|Cpte\(3) ) # ( !\inst20|Cpte\(3) & ( (!\inst20|Cpte[0]~DUPLICATE_q\) # ((!\inst20|Cpte\(1)) # (!\inst20|Cpte[2]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111100111111111111110011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst20|ALT_INV_Cpte[0]~DUPLICATE_q\,
	datac => \inst20|ALT_INV_Cpte\(1),
	datad => \inst20|ALT_INV_Cpte[2]~DUPLICATE_q\,
	dataf => \inst20|ALT_INV_Cpte\(3),
	combout => \inst20|LessThan0~0_combout\);

-- Location: MLABCELL_X15_Y77_N0
\inst20|Add0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst20|Add0~0_combout\ = ( \inst20|Cpte\(2) & ( (\inst20|Cpte\(1) & \inst20|Cpte[0]~DUPLICATE_q\) ) ) # ( !\inst20|Cpte\(2) & ( (!\inst20|Cpte\(1)) # (!\inst20|Cpte[0]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110011111100111111001111110000000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst20|ALT_INV_Cpte\(1),
	datac => \inst20|ALT_INV_Cpte[0]~DUPLICATE_q\,
	dataf => \inst20|ALT_INV_Cpte\(2),
	combout => \inst20|Add0~0_combout\);

-- Location: FF_X16_Y77_N17
\inst20|Vs\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst24|CLKs~combout\,
	asdata => \inst20|State.Ender~q\,
	clrn => \inst30|Reset_n_out~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst20|Vs~q\);

-- Location: LABCELL_X16_Y77_N30
\inst21|State.Starter~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst21|State.Starter~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \inst21|State.Starter~feeder_combout\);

-- Location: FF_X16_Y77_N31
\inst21|State.Starter\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MASTER_CLK~inputCLKENA0_outclk\,
	d => \inst21|State.Starter~feeder_combout\,
	clrn => \inst30|Reset_n_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst21|State.Starter~q\);

-- Location: LABCELL_X13_Y77_N33
\inst21|State.SendI2C_A~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst21|State.SendI2C_A~0_combout\ = ( !\inst21|State.Starter~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst21|ALT_INV_State.Starter~q\,
	combout => \inst21|State.SendI2C_A~0_combout\);

-- Location: FF_X13_Y77_N35
\inst21|State.SendI2C_A\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MASTER_CLK~inputCLKENA0_outclk\,
	d => \inst21|State.SendI2C_A~0_combout\,
	clrn => \inst30|Reset_n_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst21|State.SendI2C_A~q\);

-- Location: LABCELL_X13_Y77_N12
\inst21|Selector7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst21|Selector7~0_combout\ = ( \inst21|State.SendI2C_St~q\ & ( \inst20|Vs~q\ & ( \inst21|State.SendI2C_A~q\ ) ) ) # ( !\inst21|State.SendI2C_St~q\ & ( \inst20|Vs~q\ & ( \inst21|State.SendI2C_A~q\ ) ) ) # ( \inst21|State.SendI2C_St~q\ & ( !\inst20|Vs~q\ 
-- ) ) # ( !\inst21|State.SendI2C_St~q\ & ( !\inst20|Vs~q\ & ( \inst21|State.SendI2C_A~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111111111111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst21|ALT_INV_State.SendI2C_A~q\,
	datae => \inst21|ALT_INV_State.SendI2C_St~q\,
	dataf => \inst20|ALT_INV_Vs~q\,
	combout => \inst21|Selector7~0_combout\);

-- Location: FF_X13_Y77_N14
\inst21|State.SendI2C_St\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MASTER_CLK~inputCLKENA0_outclk\,
	d => \inst21|Selector7~0_combout\,
	clrn => \inst30|Reset_n_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst21|State.SendI2C_St~q\);

-- Location: LABCELL_X13_Y77_N54
\inst21|State~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst21|State~22_combout\ = ( \inst20|Vs~q\ & ( \inst21|State.SendI2C_St~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst21|ALT_INV_State.SendI2C_St~q\,
	dataf => \inst20|ALT_INV_Vs~q\,
	combout => \inst21|State~22_combout\);

-- Location: FF_X13_Y77_N56
\inst21|State.SendI2C_A1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MASTER_CLK~inputCLKENA0_outclk\,
	d => \inst21|State~22_combout\,
	clrn => \inst30|Reset_n_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst21|State.SendI2C_A1~q\);

-- Location: LABCELL_X13_Y77_N0
\inst21|Selector8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst21|Selector8~0_combout\ = ( \inst21|State.SendI2C_St1~q\ & ( \inst20|Vs~q\ & ( \inst21|State.SendI2C_A1~q\ ) ) ) # ( !\inst21|State.SendI2C_St1~q\ & ( \inst20|Vs~q\ & ( \inst21|State.SendI2C_A1~q\ ) ) ) # ( \inst21|State.SendI2C_St1~q\ & ( 
-- !\inst20|Vs~q\ ) ) # ( !\inst21|State.SendI2C_St1~q\ & ( !\inst20|Vs~q\ & ( \inst21|State.SendI2C_A1~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111111111111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst21|ALT_INV_State.SendI2C_A1~q\,
	datae => \inst21|ALT_INV_State.SendI2C_St1~q\,
	dataf => \inst20|ALT_INV_Vs~q\,
	combout => \inst21|Selector8~0_combout\);

-- Location: FF_X13_Y77_N2
\inst21|State.SendI2C_St1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MASTER_CLK~inputCLKENA0_outclk\,
	d => \inst21|Selector8~0_combout\,
	clrn => \inst30|Reset_n_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst21|State.SendI2C_St1~q\);

-- Location: LABCELL_X13_Y76_N54
\inst21|State~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst21|State~23_combout\ = ( \inst20|Vs~q\ & ( \inst21|State.SendI2C_St1~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst21|ALT_INV_State.SendI2C_St1~q\,
	dataf => \inst20|ALT_INV_Vs~q\,
	combout => \inst21|State~23_combout\);

-- Location: FF_X13_Y76_N56
\inst21|State.SendI2C_A2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MASTER_CLK~inputCLKENA0_outclk\,
	d => \inst21|State~23_combout\,
	clrn => \inst30|Reset_n_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst21|State.SendI2C_A2~q\);

-- Location: LABCELL_X13_Y76_N15
\inst21|Selector9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst21|Selector9~0_combout\ = ( \inst21|State.SendI2C_St2~q\ & ( \inst20|Vs~q\ & ( \inst21|State.SendI2C_A2~q\ ) ) ) # ( !\inst21|State.SendI2C_St2~q\ & ( \inst20|Vs~q\ & ( \inst21|State.SendI2C_A2~q\ ) ) ) # ( \inst21|State.SendI2C_St2~q\ & ( 
-- !\inst20|Vs~q\ ) ) # ( !\inst21|State.SendI2C_St2~q\ & ( !\inst20|Vs~q\ & ( \inst21|State.SendI2C_A2~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst21|ALT_INV_State.SendI2C_A2~q\,
	datae => \inst21|ALT_INV_State.SendI2C_St2~q\,
	dataf => \inst20|ALT_INV_Vs~q\,
	combout => \inst21|Selector9~0_combout\);

-- Location: FF_X13_Y76_N17
\inst21|State.SendI2C_St2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MASTER_CLK~inputCLKENA0_outclk\,
	d => \inst21|Selector9~0_combout\,
	clrn => \inst30|Reset_n_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst21|State.SendI2C_St2~q\);

-- Location: LABCELL_X16_Y77_N57
\inst21|State~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst21|State~28_combout\ = ( \inst20|Vs~q\ & ( \inst21|State.SendI2C_St2~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst21|ALT_INV_State.SendI2C_St2~q\,
	dataf => \inst20|ALT_INV_Vs~q\,
	combout => \inst21|State~28_combout\);

-- Location: FF_X16_Y77_N59
\inst21|State.SendI2C_A3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MASTER_CLK~inputCLKENA0_outclk\,
	d => \inst21|State~28_combout\,
	clrn => \inst30|Reset_n_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst21|State.SendI2C_A3~q\);

-- Location: LABCELL_X13_Y77_N27
\inst21|Selector10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst21|Selector10~0_combout\ = ( \inst20|Vs~q\ & ( \inst21|State.SendI2C_A3~q\ ) ) # ( !\inst20|Vs~q\ & ( (\inst21|State.SendI2C_St3~q\) # (\inst21|State.SendI2C_A3~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010111111111010101011111111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst21|ALT_INV_State.SendI2C_A3~q\,
	datad => \inst21|ALT_INV_State.SendI2C_St3~q\,
	dataf => \inst20|ALT_INV_Vs~q\,
	combout => \inst21|Selector10~0_combout\);

-- Location: FF_X13_Y77_N29
\inst21|State.SendI2C_St3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MASTER_CLK~inputCLKENA0_outclk\,
	d => \inst21|Selector10~0_combout\,
	clrn => \inst30|Reset_n_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst21|State.SendI2C_St3~q\);

-- Location: LABCELL_X13_Y76_N24
\inst21|State~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst21|State~26_combout\ = ( \inst21|State.SendI2C_St3~q\ & ( \inst20|Vs~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst20|ALT_INV_Vs~q\,
	datae => \inst21|ALT_INV_State.SendI2C_St3~q\,
	combout => \inst21|State~26_combout\);

-- Location: FF_X13_Y76_N26
\inst21|State.SendI2C_A4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MASTER_CLK~inputCLKENA0_outclk\,
	d => \inst21|State~26_combout\,
	clrn => \inst30|Reset_n_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst21|State.SendI2C_A4~q\);

-- Location: LABCELL_X13_Y76_N0
\inst21|Selector11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst21|Selector11~0_combout\ = ( \inst21|State.SendI2C_St4~q\ & ( \inst20|Vs~q\ & ( \inst21|State.SendI2C_A4~q\ ) ) ) # ( !\inst21|State.SendI2C_St4~q\ & ( \inst20|Vs~q\ & ( \inst21|State.SendI2C_A4~q\ ) ) ) # ( \inst21|State.SendI2C_St4~q\ & ( 
-- !\inst20|Vs~q\ ) ) # ( !\inst21|State.SendI2C_St4~q\ & ( !\inst20|Vs~q\ & ( \inst21|State.SendI2C_A4~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111111111111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst21|ALT_INV_State.SendI2C_A4~q\,
	datae => \inst21|ALT_INV_State.SendI2C_St4~q\,
	dataf => \inst20|ALT_INV_Vs~q\,
	combout => \inst21|Selector11~0_combout\);

-- Location: FF_X13_Y76_N2
\inst21|State.SendI2C_St4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MASTER_CLK~inputCLKENA0_outclk\,
	d => \inst21|Selector11~0_combout\,
	clrn => \inst30|Reset_n_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst21|State.SendI2C_St4~q\);

-- Location: LABCELL_X13_Y76_N36
\inst21|State~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst21|State~24_combout\ = (\inst20|Vs~q\ & \inst21|State.SendI2C_St4~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst20|ALT_INV_Vs~q\,
	datac => \inst21|ALT_INV_State.SendI2C_St4~q\,
	combout => \inst21|State~24_combout\);

-- Location: FF_X13_Y76_N38
\inst21|State.SendI2C_A5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MASTER_CLK~inputCLKENA0_outclk\,
	d => \inst21|State~24_combout\,
	clrn => \inst30|Reset_n_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst21|State.SendI2C_A5~q\);

-- Location: LABCELL_X13_Y77_N45
\inst21|Selector12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst21|Selector12~0_combout\ = ( \inst20|Vs~q\ & ( \inst21|State.SendI2C_A5~q\ ) ) # ( !\inst20|Vs~q\ & ( (\inst21|State.SendI2C_St5~q\) # (\inst21|State.SendI2C_A5~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111111111001100111111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst21|ALT_INV_State.SendI2C_A5~q\,
	datad => \inst21|ALT_INV_State.SendI2C_St5~q\,
	dataf => \inst20|ALT_INV_Vs~q\,
	combout => \inst21|Selector12~0_combout\);

-- Location: FF_X13_Y77_N47
\inst21|State.SendI2C_St5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MASTER_CLK~inputCLKENA0_outclk\,
	d => \inst21|Selector12~0_combout\,
	clrn => \inst30|Reset_n_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst21|State.SendI2C_St5~q\);

-- Location: LABCELL_X13_Y77_N24
\inst21|State~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst21|State~25_combout\ = ( \inst20|Vs~q\ & ( \inst21|State.SendI2C_St5~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst21|ALT_INV_State.SendI2C_St5~q\,
	dataf => \inst20|ALT_INV_Vs~q\,
	combout => \inst21|State~25_combout\);

-- Location: FF_X13_Y77_N26
\inst21|State.SendI2C_A6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MASTER_CLK~inputCLKENA0_outclk\,
	d => \inst21|State~25_combout\,
	clrn => \inst30|Reset_n_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst21|State.SendI2C_A6~q\);

-- Location: LABCELL_X13_Y76_N33
\inst21|Selector13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst21|Selector13~0_combout\ = ( \inst21|State.SendI2C_St6~q\ & ( \inst20|Vs~q\ & ( \inst21|State.SendI2C_A6~q\ ) ) ) # ( !\inst21|State.SendI2C_St6~q\ & ( \inst20|Vs~q\ & ( \inst21|State.SendI2C_A6~q\ ) ) ) # ( \inst21|State.SendI2C_St6~q\ & ( 
-- !\inst20|Vs~q\ ) ) # ( !\inst21|State.SendI2C_St6~q\ & ( !\inst20|Vs~q\ & ( \inst21|State.SendI2C_A6~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101111111111111111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst21|ALT_INV_State.SendI2C_A6~q\,
	datae => \inst21|ALT_INV_State.SendI2C_St6~q\,
	dataf => \inst20|ALT_INV_Vs~q\,
	combout => \inst21|Selector13~0_combout\);

-- Location: FF_X13_Y76_N35
\inst21|State.SendI2C_St6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MASTER_CLK~inputCLKENA0_outclk\,
	d => \inst21|Selector13~0_combout\,
	clrn => \inst30|Reset_n_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst21|State.SendI2C_St6~q\);

-- Location: LABCELL_X12_Y77_N12
\inst21|WideOr0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst21|WideOr0~0_combout\ = ( !\inst21|State.SendI2C_St2~q\ & ( (!\inst21|State.SendI2C_St~q\ & (!\inst21|State.SendI2C_St3~q\ & !\inst21|State.SendI2C_St1~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000101000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst21|ALT_INV_State.SendI2C_St~q\,
	datac => \inst21|ALT_INV_State.SendI2C_St3~q\,
	datad => \inst21|ALT_INV_State.SendI2C_St1~q\,
	dataf => \inst21|ALT_INV_State.SendI2C_St2~q\,
	combout => \inst21|WideOr0~0_combout\);

-- Location: LABCELL_X12_Y77_N51
\inst21|WideOr0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst21|WideOr0~combout\ = ( \inst21|WideOr0~0_combout\ & ( ((\inst21|State.SendI2C_St6~q\) # (\inst21|State.SendI2C_St4~q\)) # (\inst21|State.SendI2C_St5~q\) ) ) # ( !\inst21|WideOr0~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111101011111111111110101111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst21|ALT_INV_State.SendI2C_St5~q\,
	datac => \inst21|ALT_INV_State.SendI2C_St4~q\,
	datad => \inst21|ALT_INV_State.SendI2C_St6~q\,
	dataf => \inst21|ALT_INV_WideOr0~0_combout\,
	combout => \inst21|WideOr0~combout\);

-- Location: FF_X12_Y77_N53
\inst21|St_I2C\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MASTER_CLK~inputCLKENA0_outclk\,
	d => \inst21|WideOr0~combout\,
	clrn => \inst30|Reset_n_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst21|St_I2C~q\);

-- Location: LABCELL_X12_Y77_N45
\inst20|Selector11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst20|Selector11~0_combout\ = ( \inst20|LessThan0~0_combout\ & ( \inst21|St_I2C~q\ & ( \inst20|State.Ender~q\ ) ) ) # ( !\inst20|LessThan0~0_combout\ & ( \inst21|St_I2C~q\ & ( (\inst20|State.Ender~q\) # (\inst20|State.SendEnd~DUPLICATE_q\) ) ) ) # ( 
-- !\inst20|LessThan0~0_combout\ & ( !\inst21|St_I2C~q\ & ( \inst20|State.SendEnd~DUPLICATE_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000001011111010111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|ALT_INV_State.SendEnd~DUPLICATE_q\,
	datac => \inst20|ALT_INV_State.Ender~q\,
	datae => \inst20|ALT_INV_LessThan0~0_combout\,
	dataf => \inst21|ALT_INV_St_I2C~q\,
	combout => \inst20|Selector11~0_combout\);

-- Location: FF_X12_Y77_N59
\inst20|State.Ender\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst24|CLKs~combout\,
	asdata => \inst20|Selector11~0_combout\,
	clrn => \inst30|Reset_n_out~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst20|State.Ender~q\);

-- Location: LABCELL_X16_Y77_N12
\inst20|Selector1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst20|Selector1~1_combout\ = ( !\inst20|State.Ack1~q\ & ( \inst20|State.SendData~q\ & ( (!\inst20|State.Ender~q\ & ((!\inst20|Add0~0_combout\) # ((!\inst20|LessThan0~0_combout\ & \inst20|Selector1~0_combout\)))) ) ) ) # ( !\inst20|State.Ack1~q\ & ( 
-- !\inst20|State.SendData~q\ & ( (!\inst20|State.Ender~q\ & ((!\inst20|Add0~0_combout\) # (\inst20|Selector1~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100111100000000000000000000000011001110000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|ALT_INV_LessThan0~0_combout\,
	datab => \inst20|ALT_INV_Add0~0_combout\,
	datac => \inst20|ALT_INV_Selector1~0_combout\,
	datad => \inst20|ALT_INV_State.Ender~q\,
	datae => \inst20|ALT_INV_State.Ack1~q\,
	dataf => \inst20|ALT_INV_State.SendData~q\,
	combout => \inst20|Selector1~1_combout\);

-- Location: FF_X16_Y77_N14
\inst20|Cpte[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst24|CLKs~combout\,
	d => \inst20|Selector1~1_combout\,
	clrn => \inst30|Reset_n_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst20|Cpte\(2));

-- Location: LABCELL_X16_Y78_N12
\inst20|Selector9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst20|Selector9~0_combout\ = ( \inst20|State.SendData~q\ & ( \inst20|Cpte\(2) & ( (\inst20|Cpte[1]~DUPLICATE_q\ & (!\inst20|Cpte\(3) & \inst20|Cpte[0]~DUPLICATE_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|ALT_INV_Cpte[1]~DUPLICATE_q\,
	datab => \inst20|ALT_INV_Cpte\(3),
	datac => \inst20|ALT_INV_Cpte[0]~DUPLICATE_q\,
	datae => \inst20|ALT_INV_State.SendData~q\,
	dataf => \inst20|ALT_INV_Cpte\(2),
	combout => \inst20|Selector9~0_combout\);

-- Location: FF_X16_Y78_N14
\inst20|State.Ack2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst24|CLKs~combout\,
	d => \inst20|Selector9~0_combout\,
	clrn => \inst30|Reset_n_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst20|State.Ack2~q\);

-- Location: LABCELL_X12_Y77_N36
\inst20|Selector10~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst20|Selector10~4_combout\ = ( \inst20|Cpte\(2) & ( \inst20|State.Ack2~q\ ) ) # ( !\inst20|Cpte\(2) & ( \inst20|State.Ack2~q\ ) ) # ( \inst20|Cpte\(2) & ( !\inst20|State.Ack2~q\ & ( (\inst20|State.SendEnd~DUPLICATE_q\ & (((!\inst20|Cpte\(0)) # 
-- (!\inst20|Cpte[1]~DUPLICATE_q\)) # (\inst20|Cpte\(3)))) ) ) ) # ( !\inst20|Cpte\(2) & ( !\inst20|State.Ack2~q\ & ( \inst20|State.SendEnd~DUPLICATE_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011000111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|ALT_INV_Cpte\(3),
	datab => \inst20|ALT_INV_State.SendEnd~DUPLICATE_q\,
	datac => \inst20|ALT_INV_Cpte\(0),
	datad => \inst20|ALT_INV_Cpte[1]~DUPLICATE_q\,
	datae => \inst20|ALT_INV_Cpte\(2),
	dataf => \inst20|ALT_INV_State.Ack2~q\,
	combout => \inst20|Selector10~4_combout\);

-- Location: FF_X12_Y77_N29
\inst20|State.SendEnd\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst24|CLKs~combout\,
	asdata => \inst20|Selector10~4_combout\,
	clrn => \inst30|Reset_n_out~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst20|State.SendEnd~q\);

-- Location: LABCELL_X12_Y77_N9
\inst20|Selector4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst20|Selector4~1_combout\ = ( \inst21|St_I2C~q\ ) # ( !\inst21|St_I2C~q\ & ( (\inst20|State.Starter~q\ & !\inst20|State.Ender~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|ALT_INV_State.Starter~q\,
	datac => \inst20|ALT_INV_State.Ender~q\,
	dataf => \inst21|ALT_INV_St_I2C~q\,
	combout => \inst20|Selector4~1_combout\);

-- Location: FF_X12_Y77_N41
\inst20|State.Starter\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst24|CLKs~combout\,
	asdata => \inst20|Selector4~1_combout\,
	clrn => \inst30|Reset_n_out~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst20|State.Starter~q\);

-- Location: LABCELL_X12_Y77_N48
\inst20|State~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst20|State~20_combout\ = ( \inst20|State.Ack2~q\ ) # ( !\inst20|State.Ack2~q\ & ( \inst20|State.Ack1~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst20|ALT_INV_State.Ack1~q\,
	dataf => \inst20|ALT_INV_State.Ack2~q\,
	combout => \inst20|State~20_combout\);

-- Location: LABCELL_X12_Y77_N30
\inst20|Selector5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst20|Selector5~0_combout\ = ( !\inst20|State~20_combout\ & ( \inst21|St_I2C~q\ & ( (!\inst20|State.Starter~q\) # ((\inst20|State.SendAddr~q\ & \inst20|LessThan0~0_combout\)) ) ) ) # ( !\inst20|State~20_combout\ & ( !\inst21|St_I2C~q\ & ( 
-- (\inst20|State.SendAddr~q\ & (!\inst20|State.Ender~q\ & \inst20|LessThan0~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000100000000000000000011110000111101010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|ALT_INV_State.SendAddr~q\,
	datab => \inst20|ALT_INV_State.Ender~q\,
	datac => \inst20|ALT_INV_State.Starter~q\,
	datad => \inst20|ALT_INV_LessThan0~0_combout\,
	datae => \inst20|ALT_INV_State~20_combout\,
	dataf => \inst21|ALT_INV_St_I2C~q\,
	combout => \inst20|Selector5~0_combout\);

-- Location: FF_X12_Y77_N2
\inst20|State.SendAddr\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst24|CLKs~combout\,
	asdata => \inst20|Selector5~0_combout\,
	clrn => \inst30|Reset_n_out~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst20|State.SendAddr~q\);

-- Location: LABCELL_X12_Y77_N21
\inst20|Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst20|Selector1~0_combout\ = ( !\inst20|State.SendAddr~q\ & ( !\inst20|State.SendIns~DUPLICATE_q\ & ( !\inst20|State.SendEnd~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst20|ALT_INV_State.SendEnd~q\,
	datae => \inst20|ALT_INV_State.SendAddr~q\,
	dataf => \inst20|ALT_INV_State.SendIns~DUPLICATE_q\,
	combout => \inst20|Selector1~0_combout\);

-- Location: LABCELL_X12_Y77_N54
\inst20|Selector3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst20|Selector3~0_combout\ = ( !\inst20|State.Ack1~q\ & ( \inst20|State.Starter~q\ & ( !\inst20|State.Ender~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst20|ALT_INV_State.Ender~q\,
	datae => \inst20|ALT_INV_State.Ack1~q\,
	dataf => \inst20|ALT_INV_State.Starter~q\,
	combout => \inst20|Selector3~0_combout\);

-- Location: MLABCELL_X15_Y77_N12
\inst20|Selector3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst20|Selector3~1_combout\ = ( \inst20|Selector3~0_combout\ & ( (!\inst20|Cpte[0]~DUPLICATE_q\) # ((\inst20|Selector1~0_combout\ & ((!\inst20|State.SendData~q\) # (!\inst20|LessThan0~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001111110011101100111111001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|ALT_INV_State.SendData~q\,
	datab => \inst20|ALT_INV_Cpte[0]~DUPLICATE_q\,
	datac => \inst20|ALT_INV_Selector1~0_combout\,
	datad => \inst20|ALT_INV_LessThan0~0_combout\,
	dataf => \inst20|ALT_INV_Selector3~0_combout\,
	combout => \inst20|Selector3~1_combout\);

-- Location: FF_X16_Y77_N44
\inst20|Cpte[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst24|CLKs~combout\,
	asdata => \inst20|Selector3~1_combout\,
	clrn => \inst30|Reset_n_out~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst20|Cpte[0]~DUPLICATE_q\);

-- Location: MLABCELL_X15_Y77_N3
\inst20|Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst20|Selector0~0_combout\ = ( \inst20|Cpte\(3) & ( (!\inst20|Cpte[0]~DUPLICATE_q\) # ((!\inst20|Cpte\(1)) # (!\inst20|Cpte\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111110111111101111111011111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|ALT_INV_Cpte[0]~DUPLICATE_q\,
	datab => \inst20|ALT_INV_Cpte\(1),
	datac => \inst20|ALT_INV_Cpte\(2),
	dataf => \inst20|ALT_INV_Cpte\(3),
	combout => \inst20|Selector0~0_combout\);

-- Location: LABCELL_X16_Y77_N18
\inst20|Selector0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst20|Selector0~1_combout\ = ( \inst20|State.SendData~q\ & ( (!\inst20|State.Starter~q\) # (\inst20|Selector0~0_combout\) ) ) # ( !\inst20|State.SendData~q\ & ( (!\inst20|State.Starter~q\) # ((\inst20|Selector0~0_combout\ & 
-- !\inst20|Selector1~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100110000111111110011000011111111001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst20|ALT_INV_Selector0~0_combout\,
	datac => \inst20|ALT_INV_Selector1~0_combout\,
	datad => \inst20|ALT_INV_State.Starter~q\,
	dataf => \inst20|ALT_INV_State.SendData~q\,
	combout => \inst20|Selector0~1_combout\);

-- Location: FF_X16_Y77_N20
\inst20|Cpte[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst24|CLKs~combout\,
	d => \inst20|Selector0~1_combout\,
	clrn => \inst30|Reset_n_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst20|Cpte\(3));

-- Location: FF_X15_Y77_N10
\inst20|State.SendIns\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst24|CLKs~combout\,
	asdata => \inst20|State.SendIns~0_combout\,
	clrn => \inst30|Reset_n_out~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst20|State.SendIns~q\);

-- Location: LABCELL_X16_Y77_N45
\inst20|State.SendIns~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst20|State.SendIns~0_combout\ = ( \inst20|Cpte\(0) & ( \inst20|Cpte[1]~DUPLICATE_q\ & ( (!\inst20|Cpte\(3) & ((!\inst20|Cpte\(2) & (\inst20|State.SendIns~q\)) # (\inst20|Cpte\(2) & ((\inst20|State.SendAddr~q\))))) # (\inst20|Cpte\(3) & 
-- (\inst20|State.SendIns~q\)) ) ) ) # ( !\inst20|Cpte\(0) & ( \inst20|Cpte[1]~DUPLICATE_q\ & ( \inst20|State.SendIns~q\ ) ) ) # ( \inst20|Cpte\(0) & ( !\inst20|Cpte[1]~DUPLICATE_q\ & ( \inst20|State.SendIns~q\ ) ) ) # ( !\inst20|Cpte\(0) & ( 
-- !\inst20|Cpte[1]~DUPLICATE_q\ & ( \inst20|State.SendIns~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011000100111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|ALT_INV_Cpte\(3),
	datab => \inst20|ALT_INV_State.SendIns~q\,
	datac => \inst20|ALT_INV_Cpte\(2),
	datad => \inst20|ALT_INV_State.SendAddr~q\,
	datae => \inst20|ALT_INV_Cpte\(0),
	dataf => \inst20|ALT_INV_Cpte[1]~DUPLICATE_q\,
	combout => \inst20|State.SendIns~0_combout\);

-- Location: FF_X15_Y77_N11
\inst20|State.SendIns~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst24|CLKs~combout\,
	asdata => \inst20|State.SendIns~0_combout\,
	clrn => \inst30|Reset_n_out~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst20|State.SendIns~DUPLICATE_q\);

-- Location: MLABCELL_X15_Y77_N36
\inst20|Selector7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst20|Selector7~0_combout\ = ( !\inst20|Cpte\(3) & ( (\inst20|State.SendIns~DUPLICATE_q\ & (\inst20|Cpte\(2) & (\inst20|Cpte\(0) & \inst20|Cpte\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|ALT_INV_State.SendIns~DUPLICATE_q\,
	datab => \inst20|ALT_INV_Cpte\(2),
	datac => \inst20|ALT_INV_Cpte\(0),
	datad => \inst20|ALT_INV_Cpte\(1),
	dataf => \inst20|ALT_INV_Cpte\(3),
	combout => \inst20|Selector7~0_combout\);

-- Location: FF_X15_Y77_N38
\inst20|State.Ack1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst24|CLKs~combout\,
	d => \inst20|Selector7~0_combout\,
	clrn => \inst30|Reset_n_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst20|State.Ack1~q\);

-- Location: MLABCELL_X15_Y77_N18
\inst20|Selector8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst20|Selector8~0_combout\ = ( \inst20|LessThan0~0_combout\ & ( (!\inst20|State.Ack2~q\ & ((\inst20|State.SendData~q\) # (\inst20|State.Ack1~q\))) ) ) # ( !\inst20|LessThan0~0_combout\ & ( (\inst20|State.Ack1~q\ & !\inst20|State.Ack2~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000001011111000000000101111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|ALT_INV_State.Ack1~q\,
	datac => \inst20|ALT_INV_State.SendData~q\,
	datad => \inst20|ALT_INV_State.Ack2~q\,
	dataf => \inst20|ALT_INV_LessThan0~0_combout\,
	combout => \inst20|Selector8~0_combout\);

-- Location: FF_X16_Y77_N49
\inst20|State.SendData\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst24|CLKs~combout\,
	asdata => \inst20|Selector8~0_combout\,
	clrn => \inst30|Reset_n_out~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst20|State.SendData~q\);

-- Location: LABCELL_X12_Y77_N15
\inst20|Selector2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst20|Selector2~0_combout\ = ( !\inst20|State.Ack2~q\ & ( (!\inst20|State.Ack1~q\ & !\inst20|State.Ender~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst20|ALT_INV_State.Ack1~q\,
	datad => \inst20|ALT_INV_State.Ender~q\,
	dataf => \inst20|ALT_INV_State.Ack2~q\,
	combout => \inst20|Selector2~0_combout\);

-- Location: MLABCELL_X15_Y77_N45
\inst20|Selector2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst20|Selector2~1_combout\ = ( \inst20|LessThan0~0_combout\ & ( \inst20|Selector2~0_combout\ & ( (!\inst20|State.SendData~q\ & ((!\inst20|Cpte\(1) $ (!\inst20|Cpte[0]~DUPLICATE_q\)) # (\inst20|Selector1~0_combout\))) # (\inst20|State.SendData~q\ & 
-- ((!\inst20|Cpte\(1) $ (!\inst20|Cpte[0]~DUPLICATE_q\)))) ) ) ) # ( !\inst20|LessThan0~0_combout\ & ( \inst20|Selector2~0_combout\ & ( (!\inst20|Cpte\(1) $ (!\inst20|Cpte[0]~DUPLICATE_q\)) # (\inst20|Selector1~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000111111111100110010111111110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|ALT_INV_State.SendData~q\,
	datab => \inst20|ALT_INV_Selector1~0_combout\,
	datac => \inst20|ALT_INV_Cpte\(1),
	datad => \inst20|ALT_INV_Cpte[0]~DUPLICATE_q\,
	datae => \inst20|ALT_INV_LessThan0~0_combout\,
	dataf => \inst20|ALT_INV_Selector2~0_combout\,
	combout => \inst20|Selector2~1_combout\);

-- Location: FF_X15_Y77_N32
\inst20|Cpte[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst24|CLKs~combout\,
	asdata => \inst20|Selector2~1_combout\,
	clrn => \inst30|Reset_n_out~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst20|Cpte\(1));

-- Location: MLABCELL_X15_Y77_N51
\inst20|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst20|Mux0~0_combout\ = ( \inst20|Cpte[0]~DUPLICATE_q\ & ( (!\inst20|Cpte\(3) & (!\inst20|Cpte\(1) $ (!\inst20|Cpte\(2)))) ) ) # ( !\inst20|Cpte[0]~DUPLICATE_q\ & ( (\inst20|Cpte\(1) & (!\inst20|Cpte\(3) $ (\inst20|Cpte\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000100100001001000010010000100101000001010000010100000101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|ALT_INV_Cpte\(3),
	datab => \inst20|ALT_INV_Cpte\(1),
	datac => \inst20|ALT_INV_Cpte\(2),
	dataf => \inst20|ALT_INV_Cpte[0]~DUPLICATE_q\,
	combout => \inst20|Mux0~0_combout\);

-- Location: LABCELL_X13_Y77_N21
\inst21|WideOr2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst21|WideOr2~0_combout\ = ( \inst21|State.SendI2C_A1~q\ & ( \inst21|State.SendI2C_A~q\ ) ) # ( !\inst21|State.SendI2C_A1~q\ & ( \inst21|State.SendI2C_A~q\ ) ) # ( \inst21|State.SendI2C_A1~q\ & ( !\inst21|State.SendI2C_A~q\ ) ) # ( 
-- !\inst21|State.SendI2C_A1~q\ & ( !\inst21|State.SendI2C_A~q\ & ( (\inst21|State.SendI2C_St1~q\) # (\inst21|State.SendI2C_St~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst21|ALT_INV_State.SendI2C_St~q\,
	datad => \inst21|ALT_INV_State.SendI2C_St1~q\,
	datae => \inst21|ALT_INV_State.SendI2C_A1~q\,
	dataf => \inst21|ALT_INV_State.SendI2C_A~q\,
	combout => \inst21|WideOr2~0_combout\);

-- Location: FF_X15_Y77_N2
\inst21|INS_I2C[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MASTER_CLK~inputCLKENA0_outclk\,
	asdata => \inst21|WideOr2~0_combout\,
	clrn => \inst30|Reset_n_out~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst21|INS_I2C\(0));

-- Location: LABCELL_X16_Y77_N3
\inst21|State~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst21|State~27_combout\ = ( \inst20|Vs~q\ & ( \inst21|State.SendI2C_St6~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst21|ALT_INV_State.SendI2C_St6~q\,
	dataf => \inst20|ALT_INV_Vs~q\,
	combout => \inst21|State~27_combout\);

-- Location: FF_X16_Y77_N5
\inst21|State.Sgo1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MASTER_CLK~inputCLKENA0_outclk\,
	d => \inst21|State~27_combout\,
	clrn => \inst30|Reset_n_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst21|State.Sgo1~q\);

-- Location: LABCELL_X16_Y76_N42
\inst21|Selector14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst21|Selector14~0_combout\ = ( \inst20|Vs~q\ & ( (\inst21|State.Sgo1~q\) # (\inst21|State.Svol2~q\) ) ) # ( !\inst20|Vs~q\ & ( \inst21|State.Sgo1~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst21|ALT_INV_State.Svol2~q\,
	datad => \inst21|ALT_INV_State.Sgo1~q\,
	dataf => \inst20|ALT_INV_Vs~q\,
	combout => \inst21|Selector14~0_combout\);

-- Location: FF_X16_Y76_N44
\inst21|State.Svol1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MASTER_CLK~inputCLKENA0_outclk\,
	d => \inst21|Selector14~0_combout\,
	clrn => \inst30|Reset_n_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst21|State.Svol1~q\);

-- Location: LABCELL_X16_Y77_N6
\inst21|Selector15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst21|Selector15~0_combout\ = ( \inst20|Vs~q\ & ( \inst21|State.Svol1~q\ ) ) # ( !\inst20|Vs~q\ & ( (\inst21|State.Svol2~q\) # (\inst21|State.Svol1~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst21|ALT_INV_State.Svol1~q\,
	datad => \inst21|ALT_INV_State.Svol2~q\,
	dataf => \inst20|ALT_INV_Vs~q\,
	combout => \inst21|Selector15~0_combout\);

-- Location: FF_X16_Y77_N8
\inst21|State.Svol2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MASTER_CLK~inputCLKENA0_outclk\,
	d => \inst21|Selector15~0_combout\,
	clrn => \inst30|Reset_n_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst21|State.Svol2~q\);

-- Location: LABCELL_X16_Y77_N0
\inst21|WideOr12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst21|WideOr12~0_combout\ = ( !\inst21|State.Svol1~q\ & ( (!\inst21|State.Svol2~q\ & (\inst21|State.Starter~q\ & !\inst21|State.Sgo1~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000000000011000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst21|ALT_INV_State.Svol2~q\,
	datac => \inst21|ALT_INV_State.Starter~q\,
	datad => \inst21|ALT_INV_State.Sgo1~q\,
	dataf => \inst21|ALT_INV_State.Svol1~q\,
	combout => \inst21|WideOr12~0_combout\);

-- Location: LABCELL_X16_Y77_N33
\inst21|WideOr13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst21|WideOr13~combout\ = ( !\inst21|State.SendI2C_A2~q\ & ( (\inst21|WideOr12~0_combout\ & (!\inst21|State.SendI2C_St3~q\ & (!\inst21|State.SendI2C_A3~q\ & !\inst21|State.SendI2C_St2~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000010000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst21|ALT_INV_WideOr12~0_combout\,
	datab => \inst21|ALT_INV_State.SendI2C_St3~q\,
	datac => \inst21|ALT_INV_State.SendI2C_A3~q\,
	datad => \inst21|ALT_INV_State.SendI2C_St2~q\,
	dataf => \inst21|ALT_INV_State.SendI2C_A2~q\,
	combout => \inst21|WideOr13~combout\);

-- Location: FF_X16_Y77_N35
\inst21|INS_I2C[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MASTER_CLK~inputCLKENA0_outclk\,
	d => \inst21|WideOr13~combout\,
	clrn => \inst30|Reset_n_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst21|INS_I2C\(2));

-- Location: LABCELL_X13_Y77_N42
\inst21|WideOr6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst21|WideOr6~0_combout\ = ( \inst21|State.SendI2C_St6~q\ ) # ( !\inst21|State.SendI2C_St6~q\ & ( ((\inst21|State.SendI2C_St5~q\) # (\inst21|State.SendI2C_A6~q\)) # (\inst21|State.SendI2C_A5~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111111111111001111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst21|ALT_INV_State.SendI2C_A5~q\,
	datac => \inst21|ALT_INV_State.SendI2C_A6~q\,
	datad => \inst21|ALT_INV_State.SendI2C_St5~q\,
	dataf => \inst21|ALT_INV_State.SendI2C_St6~q\,
	combout => \inst21|WideOr6~0_combout\);

-- Location: LABCELL_X13_Y77_N36
\inst21|WideOr14\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst21|WideOr14~combout\ = ( \inst21|State.SendI2C_St3~q\ & ( \inst21|State.SendI2C_A1~q\ ) ) # ( !\inst21|State.SendI2C_St3~q\ & ( \inst21|State.SendI2C_A1~q\ ) ) # ( \inst21|State.SendI2C_St3~q\ & ( !\inst21|State.SendI2C_A1~q\ ) ) # ( 
-- !\inst21|State.SendI2C_St3~q\ & ( !\inst21|State.SendI2C_A1~q\ & ( ((\inst21|WideOr6~0_combout\) # (\inst21|State.SendI2C_St1~q\)) # (\inst21|State.SendI2C_A3~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst21|ALT_INV_State.SendI2C_A3~q\,
	datac => \inst21|ALT_INV_State.SendI2C_St1~q\,
	datad => \inst21|ALT_INV_WideOr6~0_combout\,
	datae => \inst21|ALT_INV_State.SendI2C_St3~q\,
	dataf => \inst21|ALT_INV_State.SendI2C_A1~q\,
	combout => \inst21|WideOr14~combout\);

-- Location: FF_X13_Y77_N38
\inst21|INS_I2C[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MASTER_CLK~inputCLKENA0_outclk\,
	d => \inst21|WideOr14~combout\,
	clrn => \inst30|Reset_n_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst21|INS_I2C\(1));

-- Location: LABCELL_X13_Y77_N9
\inst21|WideOr12\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst21|WideOr12~combout\ = ( !\inst21|WideOr2~0_combout\ & ( \inst21|WideOr12~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \inst21|ALT_INV_WideOr2~0_combout\,
	dataf => \inst21|ALT_INV_WideOr12~0_combout\,
	combout => \inst21|WideOr12~combout\);

-- Location: FF_X13_Y77_N10
\inst21|INS_I2C[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MASTER_CLK~inputCLKENA0_outclk\,
	d => \inst21|WideOr12~combout\,
	clrn => \inst30|Reset_n_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst21|INS_I2C\(3));

-- Location: MLABCELL_X15_Y77_N33
\inst20|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst20|Mux1~0_combout\ = ( \inst21|INS_I2C\(1) & ( \inst21|INS_I2C\(3) & ( (!\inst20|Cpte\(0)) # ((!\inst20|Cpte[1]~DUPLICATE_q\ & ((\inst21|INS_I2C\(2)))) # (\inst20|Cpte[1]~DUPLICATE_q\ & (\inst21|INS_I2C\(0)))) ) ) ) # ( !\inst21|INS_I2C\(1) & ( 
-- \inst21|INS_I2C\(3) & ( (!\inst20|Cpte[1]~DUPLICATE_q\ & (((!\inst20|Cpte\(0)) # (\inst21|INS_I2C\(2))))) # (\inst20|Cpte[1]~DUPLICATE_q\ & (\inst21|INS_I2C\(0) & (\inst20|Cpte\(0)))) ) ) ) # ( \inst21|INS_I2C\(1) & ( !\inst21|INS_I2C\(3) & ( 
-- (!\inst20|Cpte[1]~DUPLICATE_q\ & (((\inst20|Cpte\(0) & \inst21|INS_I2C\(2))))) # (\inst20|Cpte[1]~DUPLICATE_q\ & (((!\inst20|Cpte\(0))) # (\inst21|INS_I2C\(0)))) ) ) ) # ( !\inst21|INS_I2C\(1) & ( !\inst21|INS_I2C\(3) & ( (\inst20|Cpte\(0) & 
-- ((!\inst20|Cpte[1]~DUPLICATE_q\ & ((\inst21|INS_I2C\(2)))) # (\inst20|Cpte[1]~DUPLICATE_q\ & (\inst21|INS_I2C\(0))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100001101001100010011110111000001110011011111000111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst21|ALT_INV_INS_I2C\(0),
	datab => \inst20|ALT_INV_Cpte[1]~DUPLICATE_q\,
	datac => \inst20|ALT_INV_Cpte\(0),
	datad => \inst21|ALT_INV_INS_I2C\(2),
	datae => \inst21|ALT_INV_INS_I2C\(1),
	dataf => \inst21|ALT_INV_INS_I2C\(3),
	combout => \inst20|Mux1~0_combout\);

-- Location: MLABCELL_X15_Y77_N39
\inst20|Selector12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst20|Selector12~0_combout\ = ( \inst20|Mux1~0_combout\ & ( (!\inst20|State.SendIns~DUPLICATE_q\ & (((\inst20|State.SendAddr~q\ & \inst20|Mux0~0_combout\)))) # (\inst20|State.SendIns~DUPLICATE_q\ & (((\inst20|State.SendAddr~q\ & 
-- \inst20|Mux0~0_combout\)) # (\inst20|Cpte\(2)))) ) ) # ( !\inst20|Mux1~0_combout\ & ( (\inst20|State.SendAddr~q\ & \inst20|Mux0~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100010001000111110001000100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|ALT_INV_State.SendIns~DUPLICATE_q\,
	datab => \inst20|ALT_INV_Cpte\(2),
	datac => \inst20|ALT_INV_State.SendAddr~q\,
	datad => \inst20|ALT_INV_Mux0~0_combout\,
	dataf => \inst20|ALT_INV_Mux1~0_combout\,
	combout => \inst20|Selector12~0_combout\);

-- Location: LABCELL_X13_Y76_N51
\inst21|WideOr8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst21|WideOr8~0_combout\ = ( \inst21|State.SendI2C_A5~q\ & ( \inst21|State.SendI2C_St6~q\ ) ) # ( !\inst21|State.SendI2C_A5~q\ & ( \inst21|State.SendI2C_St6~q\ ) ) # ( \inst21|State.SendI2C_A5~q\ & ( !\inst21|State.SendI2C_St6~q\ ) ) # ( 
-- !\inst21|State.SendI2C_A5~q\ & ( !\inst21|State.SendI2C_St6~q\ & ( (((\inst21|State.SendI2C_A6~q\) # (\inst21|State.SendI2C_St5~q\)) # (\inst21|State.SendI2C_A4~q\)) # (\inst21|State.SendI2C_St4~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst21|ALT_INV_State.SendI2C_St4~q\,
	datab => \inst21|ALT_INV_State.SendI2C_A4~q\,
	datac => \inst21|ALT_INV_State.SendI2C_St5~q\,
	datad => \inst21|ALT_INV_State.SendI2C_A6~q\,
	datae => \inst21|ALT_INV_State.SendI2C_A5~q\,
	dataf => \inst21|ALT_INV_State.SendI2C_St6~q\,
	combout => \inst21|WideOr8~0_combout\);

-- Location: FF_X13_Y76_N29
\inst21|DATA_I2C[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MASTER_CLK~inputCLKENA0_outclk\,
	asdata => \inst21|WideOr8~0_combout\,
	clrn => \inst30|Reset_n_out~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst21|DATA_I2C\(2));

-- Location: LABCELL_X13_Y77_N51
\inst21|DATA_I2C[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst21|DATA_I2C[3]~feeder_combout\ = ( \inst21|WideOr6~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst21|ALT_INV_WideOr6~0_combout\,
	combout => \inst21|DATA_I2C[3]~feeder_combout\);

-- Location: FF_X13_Y77_N52
\inst21|DATA_I2C[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MASTER_CLK~inputCLKENA0_outclk\,
	d => \inst21|DATA_I2C[3]~feeder_combout\,
	clrn => \inst30|Reset_n_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst21|DATA_I2C\(3));

-- Location: MLABCELL_X15_Y77_N48
\inst21|DATA_I2C~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst21|DATA_I2C~2_combout\ = ( \inst21|State.SendI2C_A4~q\ ) # ( !\inst21|State.SendI2C_A4~q\ & ( \inst21|State.SendI2C_St4~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst21|ALT_INV_State.SendI2C_St4~q\,
	dataf => \inst21|ALT_INV_State.SendI2C_A4~q\,
	combout => \inst21|DATA_I2C~2_combout\);

-- Location: FF_X15_Y77_N50
\inst21|DATA_I2C[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MASTER_CLK~inputCLKENA0_outclk\,
	d => \inst21|DATA_I2C~2_combout\,
	clrn => \inst30|Reset_n_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst21|DATA_I2C\(0));

-- Location: LABCELL_X16_Y77_N36
\inst21|WideOr4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst21|WideOr4~combout\ = ( \inst21|State.SendI2C_A1~q\ & ( \inst21|State.SendI2C_St~q\ ) ) # ( !\inst21|State.SendI2C_A1~q\ & ( \inst21|State.SendI2C_St~q\ ) ) # ( \inst21|State.SendI2C_A1~q\ & ( !\inst21|State.SendI2C_St~q\ ) ) # ( 
-- !\inst21|State.SendI2C_A1~q\ & ( !\inst21|State.SendI2C_St~q\ & ( (((\inst21|State.SendI2C_St1~q\) # (\inst21|State.SendI2C_A2~q\)) # (\inst21|State.SendI2C_St2~q\)) # (\inst21|State.SendI2C_A~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst21|ALT_INV_State.SendI2C_A~q\,
	datab => \inst21|ALT_INV_State.SendI2C_St2~q\,
	datac => \inst21|ALT_INV_State.SendI2C_A2~q\,
	datad => \inst21|ALT_INV_State.SendI2C_St1~q\,
	datae => \inst21|ALT_INV_State.SendI2C_A1~q\,
	dataf => \inst21|ALT_INV_State.SendI2C_St~q\,
	combout => \inst21|WideOr4~combout\);

-- Location: FF_X16_Y77_N37
\inst21|DATA_I2C[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MASTER_CLK~inputCLKENA0_outclk\,
	d => \inst21|WideOr4~combout\,
	clrn => \inst30|Reset_n_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst21|DATA_I2C\(4));

-- Location: LABCELL_X13_Y76_N18
\inst21|WideOr10\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst21|WideOr10~combout\ = ( \inst21|State.Sgo1~q\ & ( \inst21|WideOr8~0_combout\ ) ) # ( !\inst21|State.Sgo1~q\ & ( \inst21|WideOr8~0_combout\ ) ) # ( \inst21|State.Sgo1~q\ & ( !\inst21|WideOr8~0_combout\ ) ) # ( !\inst21|State.Sgo1~q\ & ( 
-- !\inst21|WideOr8~0_combout\ & ( (\inst21|State.SendI2C_St2~q\) # (\inst21|State.SendI2C_A2~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst21|ALT_INV_State.SendI2C_A2~q\,
	datad => \inst21|ALT_INV_State.SendI2C_St2~q\,
	datae => \inst21|ALT_INV_State.Sgo1~q\,
	dataf => \inst21|ALT_INV_WideOr8~0_combout\,
	combout => \inst21|WideOr10~combout\);

-- Location: FF_X13_Y76_N19
\inst21|DATA_I2C[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MASTER_CLK~inputCLKENA0_outclk\,
	d => \inst21|WideOr10~combout\,
	clrn => \inst30|Reset_n_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst21|DATA_I2C\(1));

-- Location: MLABCELL_X15_Y77_N6
\inst20|Mux2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst20|Mux2~1_combout\ = ( \inst21|DATA_I2C\(4) & ( \inst21|DATA_I2C\(1) & ( (!\inst20|Cpte\(2) & (((\inst20|Cpte\(0)) # (\inst21|INS_I2C\(0))))) # (\inst20|Cpte\(2) & (((!\inst20|Cpte\(0))) # (\inst21|DATA_I2C\(0)))) ) ) ) # ( !\inst21|DATA_I2C\(4) & ( 
-- \inst21|DATA_I2C\(1) & ( (!\inst20|Cpte\(2) & (((\inst21|INS_I2C\(0) & !\inst20|Cpte\(0))))) # (\inst20|Cpte\(2) & (((!\inst20|Cpte\(0))) # (\inst21|DATA_I2C\(0)))) ) ) ) # ( \inst21|DATA_I2C\(4) & ( !\inst21|DATA_I2C\(1) & ( (!\inst20|Cpte\(2) & 
-- (((\inst20|Cpte\(0)) # (\inst21|INS_I2C\(0))))) # (\inst20|Cpte\(2) & (\inst21|DATA_I2C\(0) & ((\inst20|Cpte\(0))))) ) ) ) # ( !\inst21|DATA_I2C\(4) & ( !\inst21|DATA_I2C\(1) & ( (!\inst20|Cpte\(2) & (((\inst21|INS_I2C\(0) & !\inst20|Cpte\(0))))) # 
-- (\inst20|Cpte\(2) & (\inst21|DATA_I2C\(0) & ((\inst20|Cpte\(0))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000010001000011001101110100111111000100010011111111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst21|ALT_INV_DATA_I2C\(0),
	datab => \inst20|ALT_INV_Cpte\(2),
	datac => \inst21|ALT_INV_INS_I2C\(0),
	datad => \inst20|ALT_INV_Cpte\(0),
	datae => \inst21|ALT_INV_DATA_I2C\(4),
	dataf => \inst21|ALT_INV_DATA_I2C\(1),
	combout => \inst20|Mux2~1_combout\);

-- Location: MLABCELL_X15_Y77_N24
\inst20|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst20|Mux2~0_combout\ = ( \inst20|Cpte\(1) & ( \inst20|Mux2~1_combout\ ) ) # ( !\inst20|Cpte\(1) & ( \inst20|Mux2~1_combout\ & ( (!\inst20|Cpte\(2) & (!\inst20|Cpte\(0))) # (\inst20|Cpte\(2) & ((!\inst20|Cpte\(0) & ((\inst21|DATA_I2C\(3)))) # 
-- (\inst20|Cpte\(0) & (\inst21|DATA_I2C\(2))))) ) ) ) # ( !\inst20|Cpte\(1) & ( !\inst20|Mux2~1_combout\ & ( (\inst20|Cpte\(2) & ((!\inst20|Cpte\(0) & ((\inst21|DATA_I2C\(3)))) # (\inst20|Cpte\(0) & (\inst21|DATA_I2C\(2))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101000101000000000000000010001001110011011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|ALT_INV_Cpte\(2),
	datab => \inst20|ALT_INV_Cpte\(0),
	datac => \inst21|ALT_INV_DATA_I2C\(2),
	datad => \inst21|ALT_INV_DATA_I2C\(3),
	datae => \inst20|ALT_INV_Cpte\(1),
	dataf => \inst20|ALT_INV_Mux2~1_combout\,
	combout => \inst20|Mux2~0_combout\);

-- Location: MLABCELL_X15_Y77_N15
\inst20|Selector12~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst20|Selector12~1_combout\ = ( \inst21|DATA_I2C\(0) & ( ((\inst20|State.SendIns~DUPLICATE_q\ & \inst21|INS_I2C\(0))) # (\inst20|State.SendData~q\) ) ) # ( !\inst21|DATA_I2C\(0) & ( (\inst20|State.SendIns~DUPLICATE_q\ & \inst21|INS_I2C\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111101010101010111110101010101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|ALT_INV_State.SendData~q\,
	datac => \inst20|ALT_INV_State.SendIns~DUPLICATE_q\,
	datad => \inst21|ALT_INV_INS_I2C\(0),
	dataf => \inst21|ALT_INV_DATA_I2C\(0),
	combout => \inst20|Selector12~1_combout\);

-- Location: MLABCELL_X15_Y77_N54
\inst20|Selector12~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst20|Selector12~2_combout\ = ( !\inst20|LessThan0~0_combout\ & ( (((\inst20|Cpte\(1) & (\inst20|State.SendEnd~DUPLICATE_q\))) # (\inst20|Selector12~1_combout\)) ) ) # ( \inst20|LessThan0~0_combout\ & ( ((!\inst20|Cpte\(1) & (\inst20|State.SendData~q\ & 
-- ((\inst20|Mux2~0_combout\)))) # (\inst20|Cpte\(1) & (((\inst20|State.SendData~q\ & \inst20|Mux2~0_combout\)) # (\inst20|State.SendEnd~DUPLICATE_q\)))) # (\inst20|Selector12~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111101011111001100110111011100001111010111110011111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|ALT_INV_Cpte\(1),
	datab => \inst20|ALT_INV_Selector12~0_combout\,
	datac => \inst20|ALT_INV_State.SendData~q\,
	datad => \inst20|ALT_INV_State.SendEnd~DUPLICATE_q\,
	datae => \inst20|ALT_INV_LessThan0~0_combout\,
	dataf => \inst20|ALT_INV_Mux2~0_combout\,
	datag => \inst20|ALT_INV_Selector12~1_combout\,
	combout => \inst20|Selector12~2_combout\);

-- Location: FF_X15_Y77_N56
\inst20|S~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst24|CLKs~combout\,
	d => \inst20|Selector12~2_combout\,
	clrn => \inst30|Reset_n_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst20|S~reg0_q\);

-- Location: FF_X12_Y77_N47
\inst20|S~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst24|CLKs~combout\,
	asdata => \inst20|State~20_combout\,
	clrn => \inst30|Reset_n_out~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst20|S~en_q\);

-- Location: LABCELL_X12_Y77_N24
\inst20|Selector4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst20|Selector4~0_combout\ = ( !\inst20|State.Ender~q\ & ( \inst20|State.Starter~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \inst20|ALT_INV_State.Ender~q\,
	dataf => \inst20|ALT_INV_State.Starter~q\,
	combout => \inst20|Selector4~0_combout\);

-- Location: FF_X16_Y77_N29
\inst20|AND_O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst24|CLKs~combout\,
	asdata => \inst20|Selector4~0_combout\,
	clrn => \inst30|Reset_n_out~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst20|AND_O~q\);

-- Location: LABCELL_X12_Y77_N0
inst6 : cyclonev_lcell_comb
-- Equation(s):
-- \inst6~combout\ = ( \MASTER_CLK~input_o\ & ( \inst20|AND_O~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst20|ALT_INV_AND_O~q\,
	dataf => \ALT_INV_MASTER_CLK~input_o\,
	combout => \inst6~combout\);

-- Location: FF_X17_Y76_N26
\inst26|Cpte[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MASTER_CLK~inputCLKENA0_outclk\,
	d => \inst26|Add0~1_sumout\,
	clrn => \inst30|Reset_n_out~q\,
	sclr => \inst26|Cpte~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst26|Cpte\(8));

-- Location: LABCELL_X17_Y76_N0
\inst26|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst26|Add0~29_sumout\ = SUM(( \inst26|Cpte[0]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))
-- \inst26|Add0~30\ = CARRY(( \inst26|Cpte[0]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst26|ALT_INV_Cpte[0]~DUPLICATE_q\,
	cin => GND,
	sumout => \inst26|Add0~29_sumout\,
	cout => \inst26|Add0~30\);

-- Location: LABCELL_X17_Y76_N3
\inst26|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst26|Add0~33_sumout\ = SUM(( \inst26|Cpte[1]~DUPLICATE_q\ ) + ( GND ) + ( \inst26|Add0~30\ ))
-- \inst26|Add0~34\ = CARRY(( \inst26|Cpte[1]~DUPLICATE_q\ ) + ( GND ) + ( \inst26|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst26|ALT_INV_Cpte[1]~DUPLICATE_q\,
	cin => \inst26|Add0~30\,
	sumout => \inst26|Add0~33_sumout\,
	cout => \inst26|Add0~34\);

-- Location: FF_X17_Y76_N5
\inst26|Cpte[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MASTER_CLK~inputCLKENA0_outclk\,
	d => \inst26|Add0~33_sumout\,
	clrn => \inst30|Reset_n_out~q\,
	sclr => \inst26|Cpte~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst26|Cpte[1]~DUPLICATE_q\);

-- Location: LABCELL_X17_Y76_N6
\inst26|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst26|Add0~37_sumout\ = SUM(( \inst26|Cpte\(2) ) + ( GND ) + ( \inst26|Add0~34\ ))
-- \inst26|Add0~38\ = CARRY(( \inst26|Cpte\(2) ) + ( GND ) + ( \inst26|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst26|ALT_INV_Cpte\(2),
	cin => \inst26|Add0~34\,
	sumout => \inst26|Add0~37_sumout\,
	cout => \inst26|Add0~38\);

-- Location: FF_X17_Y76_N7
\inst26|Cpte[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MASTER_CLK~inputCLKENA0_outclk\,
	d => \inst26|Add0~37_sumout\,
	clrn => \inst30|Reset_n_out~q\,
	sclr => \inst26|Cpte~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst26|Cpte\(2));

-- Location: LABCELL_X17_Y76_N9
\inst26|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst26|Add0~41_sumout\ = SUM(( \inst26|Cpte\(3) ) + ( GND ) + ( \inst26|Add0~38\ ))
-- \inst26|Add0~42\ = CARRY(( \inst26|Cpte\(3) ) + ( GND ) + ( \inst26|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst26|ALT_INV_Cpte\(3),
	cin => \inst26|Add0~38\,
	sumout => \inst26|Add0~41_sumout\,
	cout => \inst26|Add0~42\);

-- Location: FF_X17_Y76_N11
\inst26|Cpte[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MASTER_CLK~inputCLKENA0_outclk\,
	d => \inst26|Add0~41_sumout\,
	clrn => \inst30|Reset_n_out~q\,
	sclr => \inst26|Cpte~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst26|Cpte\(3));

-- Location: LABCELL_X17_Y76_N12
\inst26|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst26|Add0~45_sumout\ = SUM(( \inst26|Cpte[4]~DUPLICATE_q\ ) + ( GND ) + ( \inst26|Add0~42\ ))
-- \inst26|Add0~46\ = CARRY(( \inst26|Cpte[4]~DUPLICATE_q\ ) + ( GND ) + ( \inst26|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst26|ALT_INV_Cpte[4]~DUPLICATE_q\,
	cin => \inst26|Add0~42\,
	sumout => \inst26|Add0~45_sumout\,
	cout => \inst26|Add0~46\);

-- Location: FF_X17_Y76_N14
\inst26|Cpte[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MASTER_CLK~inputCLKENA0_outclk\,
	d => \inst26|Add0~45_sumout\,
	clrn => \inst30|Reset_n_out~q\,
	sclr => \inst26|Cpte~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst26|Cpte[4]~DUPLICATE_q\);

-- Location: LABCELL_X17_Y76_N15
\inst26|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst26|Add0~17_sumout\ = SUM(( \inst26|Cpte\(5) ) + ( GND ) + ( \inst26|Add0~46\ ))
-- \inst26|Add0~18\ = CARRY(( \inst26|Cpte\(5) ) + ( GND ) + ( \inst26|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst26|ALT_INV_Cpte\(5),
	cin => \inst26|Add0~46\,
	sumout => \inst26|Add0~17_sumout\,
	cout => \inst26|Add0~18\);

-- Location: FF_X17_Y76_N38
\inst26|Cpte[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MASTER_CLK~inputCLKENA0_outclk\,
	asdata => \inst26|Add0~17_sumout\,
	clrn => \inst30|Reset_n_out~q\,
	sclr => \inst26|Cpte~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst26|Cpte\(5));

-- Location: LABCELL_X17_Y76_N18
\inst26|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst26|Add0~21_sumout\ = SUM(( \inst26|Cpte\(6) ) + ( GND ) + ( \inst26|Add0~18\ ))
-- \inst26|Add0~22\ = CARRY(( \inst26|Cpte\(6) ) + ( GND ) + ( \inst26|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst26|ALT_INV_Cpte\(6),
	cin => \inst26|Add0~18\,
	sumout => \inst26|Add0~21_sumout\,
	cout => \inst26|Add0~22\);

-- Location: FF_X17_Y76_N41
\inst26|Cpte[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MASTER_CLK~inputCLKENA0_outclk\,
	asdata => \inst26|Add0~21_sumout\,
	clrn => \inst30|Reset_n_out~q\,
	sclr => \inst26|Cpte~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst26|Cpte\(6));

-- Location: LABCELL_X17_Y76_N21
\inst26|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst26|Add0~25_sumout\ = SUM(( \inst26|Cpte\(7) ) + ( GND ) + ( \inst26|Add0~22\ ))
-- \inst26|Add0~26\ = CARRY(( \inst26|Cpte\(7) ) + ( GND ) + ( \inst26|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst26|ALT_INV_Cpte\(7),
	cin => \inst26|Add0~22\,
	sumout => \inst26|Add0~25_sumout\,
	cout => \inst26|Add0~26\);

-- Location: FF_X17_Y76_N23
\inst26|Cpte[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MASTER_CLK~inputCLKENA0_outclk\,
	d => \inst26|Add0~25_sumout\,
	clrn => \inst30|Reset_n_out~q\,
	sclr => \inst26|Cpte~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst26|Cpte\(7));

-- Location: LABCELL_X17_Y76_N24
\inst26|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst26|Add0~1_sumout\ = SUM(( \inst26|Cpte\(8) ) + ( GND ) + ( \inst26|Add0~26\ ))
-- \inst26|Add0~2\ = CARRY(( \inst26|Cpte\(8) ) + ( GND ) + ( \inst26|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst26|ALT_INV_Cpte\(8),
	cin => \inst26|Add0~26\,
	sumout => \inst26|Add0~1_sumout\,
	cout => \inst26|Add0~2\);

-- Location: FF_X17_Y76_N4
\inst26|Cpte[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MASTER_CLK~inputCLKENA0_outclk\,
	d => \inst26|Add0~33_sumout\,
	clrn => \inst30|Reset_n_out~q\,
	sclr => \inst26|Cpte~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst26|Cpte\(1));

-- Location: LABCELL_X18_Y76_N33
\inst26|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst26|Equal0~0_combout\ = ( !\inst26|Cpte\(3) & ( (!\inst26|Cpte\(2) & (!\inst26|Cpte\(5) & (!\inst26|Cpte\(1) & !\inst26|Cpte\(6)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst26|ALT_INV_Cpte\(2),
	datab => \inst26|ALT_INV_Cpte\(5),
	datac => \inst26|ALT_INV_Cpte\(1),
	datad => \inst26|ALT_INV_Cpte\(6),
	datae => \inst26|ALT_INV_Cpte\(3),
	combout => \inst26|Equal0~0_combout\);

-- Location: LABCELL_X17_Y76_N27
\inst26|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst26|Add0~13_sumout\ = SUM(( \inst26|Cpte\(9) ) + ( GND ) + ( \inst26|Add0~2\ ))
-- \inst26|Add0~14\ = CARRY(( \inst26|Cpte\(9) ) + ( GND ) + ( \inst26|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst26|ALT_INV_Cpte\(9),
	cin => \inst26|Add0~2\,
	sumout => \inst26|Add0~13_sumout\,
	cout => \inst26|Add0~14\);

-- Location: FF_X17_Y76_N29
\inst26|Cpte[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MASTER_CLK~inputCLKENA0_outclk\,
	d => \inst26|Add0~13_sumout\,
	clrn => \inst30|Reset_n_out~q\,
	sclr => \inst26|Cpte~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst26|Cpte\(9));

-- Location: FF_X17_Y76_N13
\inst26|Cpte[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MASTER_CLK~inputCLKENA0_outclk\,
	d => \inst26|Add0~45_sumout\,
	clrn => \inst30|Reset_n_out~q\,
	sclr => \inst26|Cpte~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst26|Cpte\(4));

-- Location: LABCELL_X17_Y76_N30
\inst26|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst26|Add0~5_sumout\ = SUM(( \inst26|Cpte\(10) ) + ( GND ) + ( \inst26|Add0~14\ ))
-- \inst26|Add0~6\ = CARRY(( \inst26|Cpte\(10) ) + ( GND ) + ( \inst26|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst26|ALT_INV_Cpte\(10),
	cin => \inst26|Add0~14\,
	sumout => \inst26|Add0~5_sumout\,
	cout => \inst26|Add0~6\);

-- Location: FF_X17_Y76_N32
\inst26|Cpte[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MASTER_CLK~inputCLKENA0_outclk\,
	d => \inst26|Add0~5_sumout\,
	clrn => \inst30|Reset_n_out~q\,
	sclr => \inst26|Cpte~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst26|Cpte\(10));

-- Location: LABCELL_X17_Y76_N33
\inst26|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst26|Add0~9_sumout\ = SUM(( \inst26|Cpte\(11) ) + ( GND ) + ( \inst26|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst26|ALT_INV_Cpte\(11),
	cin => \inst26|Add0~6\,
	sumout => \inst26|Add0~9_sumout\);

-- Location: FF_X17_Y76_N35
\inst26|Cpte[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MASTER_CLK~inputCLKENA0_outclk\,
	d => \inst26|Add0~9_sumout\,
	clrn => \inst30|Reset_n_out~q\,
	sclr => \inst26|Cpte~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst26|Cpte\(11));

-- Location: LABCELL_X18_Y76_N27
\inst26|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst26|Equal0~1_combout\ = ( !\inst26|Cpte\(10) & ( (!\inst26|Cpte\(9) & (!\inst26|Cpte\(4) & (!\inst26|Cpte\(11) & !\inst26|Cpte\(7)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst26|ALT_INV_Cpte\(9),
	datab => \inst26|ALT_INV_Cpte\(4),
	datac => \inst26|ALT_INV_Cpte\(11),
	datad => \inst26|ALT_INV_Cpte\(7),
	dataf => \inst26|ALT_INV_Cpte\(10),
	combout => \inst26|Equal0~1_combout\);

-- Location: LABCELL_X18_Y76_N51
\inst26|Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst26|Equal0~2_combout\ = (\inst26|Equal0~0_combout\ & (!\inst26|Cpte\(8) & (!\inst26|Cpte\(0) & \inst26|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000000000000100000000000000010000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst26|ALT_INV_Equal0~0_combout\,
	datab => \inst26|ALT_INV_Cpte\(8),
	datac => \inst26|ALT_INV_Cpte\(0),
	datad => \inst26|ALT_INV_Equal0~1_combout\,
	combout => \inst26|Equal0~2_combout\);

-- Location: LABCELL_X17_Y76_N39
\inst26|Cpte~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst26|Cpte~0_combout\ = ( \inst26|Add0~17_sumout\ & ( (\inst26|Add0~25_sumout\ & \inst26|Add0~21_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst26|ALT_INV_Add0~25_sumout\,
	datad => \inst26|ALT_INV_Add0~21_sumout\,
	dataf => \inst26|ALT_INV_Add0~17_sumout\,
	combout => \inst26|Cpte~0_combout\);

-- Location: LABCELL_X17_Y76_N48
\inst26|Cpte~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst26|Cpte~1_combout\ = ( \inst26|Add0~13_sumout\ & ( \inst26|Cpte~0_combout\ & ( (!\inst26|Equal0~2_combout\ & (\inst26|Add0~9_sumout\ & \inst26|Add0~5_sumout\)) ) ) ) # ( !\inst26|Add0~13_sumout\ & ( \inst26|Cpte~0_combout\ & ( (\inst26|Add0~1_sumout\ 
-- & (!\inst26|Equal0~2_combout\ & (\inst26|Add0~9_sumout\ & \inst26|Add0~5_sumout\))) ) ) ) # ( \inst26|Add0~13_sumout\ & ( !\inst26|Cpte~0_combout\ & ( (!\inst26|Equal0~2_combout\ & (\inst26|Add0~9_sumout\ & \inst26|Add0~5_sumout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000110000000000000001000000000000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst26|ALT_INV_Add0~1_sumout\,
	datab => \inst26|ALT_INV_Equal0~2_combout\,
	datac => \inst26|ALT_INV_Add0~9_sumout\,
	datad => \inst26|ALT_INV_Add0~5_sumout\,
	datae => \inst26|ALT_INV_Add0~13_sumout\,
	dataf => \inst26|ALT_INV_Cpte~0_combout\,
	combout => \inst26|Cpte~1_combout\);

-- Location: FF_X17_Y76_N2
\inst26|Cpte[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MASTER_CLK~inputCLKENA0_outclk\,
	d => \inst26|Add0~29_sumout\,
	clrn => \inst30|Reset_n_out~q\,
	sclr => \inst26|Cpte~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst26|Cpte[0]~DUPLICATE_q\);

-- Location: FF_X17_Y76_N1
\inst26|Cpte[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MASTER_CLK~inputCLKENA0_outclk\,
	d => \inst26|Add0~29_sumout\,
	clrn => \inst30|Reset_n_out~q\,
	sclr => \inst26|Cpte~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst26|Cpte\(0));

-- Location: LABCELL_X19_Y76_N9
\inst26|temp~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst26|temp~0_combout\ = ( \inst26|Equal0~1_combout\ & ( \inst26|temp~q\ & ( ((!\inst26|Equal0~0_combout\) # (\inst26|Cpte\(8))) # (\inst26|Cpte\(0)) ) ) ) # ( !\inst26|Equal0~1_combout\ & ( \inst26|temp~q\ ) ) # ( \inst26|Equal0~1_combout\ & ( 
-- !\inst26|temp~q\ & ( (!\inst26|Cpte\(0) & (\inst26|Equal0~0_combout\ & !\inst26|Cpte\(8))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000000010000011111111111111111101111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst26|ALT_INV_Cpte\(0),
	datab => \inst26|ALT_INV_Equal0~0_combout\,
	datac => \inst26|ALT_INV_Cpte\(8),
	datae => \inst26|ALT_INV_Equal0~1_combout\,
	dataf => \inst26|ALT_INV_temp~q\,
	combout => \inst26|temp~0_combout\);

-- Location: LABCELL_X19_Y76_N54
\inst26|temp~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst26|temp~feeder_combout\ = ( \inst26|temp~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst26|ALT_INV_temp~0_combout\,
	combout => \inst26|temp~feeder_combout\);

-- Location: FF_X19_Y76_N56
\inst26|temp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MASTER_CLK~inputCLKENA0_outclk\,
	d => \inst26|temp~feeder_combout\,
	clrn => \inst30|Reset_n_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst26|temp~q\);

-- Location: LABCELL_X19_Y76_N18
\inst26|CLKs\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst26|CLKs~combout\ = LCELL(( \inst26|temp~q\ & ( \inst30|Reset_n_out~q\ ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \inst26|ALT_INV_temp~q\,
	dataf => \inst30|ALT_INV_Reset_n_out~q\,
	combout => \inst26|CLKs~combout\);

-- Location: FF_X18_Y76_N40
\inst22|State.SendR~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst26|CLKs~combout\,
	d => \inst22|State.SendR~feeder_combout\,
	clrn => \inst30|Reset_n_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst22|State.SendR~DUPLICATE_q\);

-- Location: LABCELL_X18_Y75_N21
\inst22|Selector7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst22|Selector7~0_combout\ = ( \inst22|State.SendR~DUPLICATE_q\ & ( \inst22|State.SendL~q\ ) ) # ( !\inst22|State.SendR~DUPLICATE_q\ & ( \inst22|State.SendL~q\ ) ) # ( \inst22|State.SendR~DUPLICATE_q\ & ( !\inst22|State.SendL~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \inst22|ALT_INV_State.SendR~DUPLICATE_q\,
	dataf => \inst22|ALT_INV_State.SendL~q\,
	combout => \inst22|Selector7~0_combout\);

-- Location: LABCELL_X19_Y76_N30
\inst22|Selector5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst22|Selector5~0_combout\ = ( !\inst22|Cpte\(0) & ( \inst22|Selector7~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \inst22|ALT_INV_Cpte\(0),
	dataf => \inst22|ALT_INV_Selector7~0_combout\,
	combout => \inst22|Selector5~0_combout\);

-- Location: FF_X18_Y76_N44
\inst22|Cpte[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst26|CLKs~combout\,
	asdata => \inst22|Selector5~0_combout\,
	clrn => \inst30|Reset_n_out~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst22|Cpte\(0));

-- Location: LABCELL_X18_Y76_N42
\inst22|Selector4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst22|Selector4~0_combout\ = ( \inst22|Cpte\(0) & ( \inst22|Selector7~0_combout\ & ( !\inst22|Cpte\(1) ) ) ) # ( !\inst22|Cpte\(0) & ( \inst22|Selector7~0_combout\ & ( \inst22|Cpte\(1) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011111111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst22|ALT_INV_Cpte\(1),
	datae => \inst22|ALT_INV_Cpte\(0),
	dataf => \inst22|ALT_INV_Selector7~0_combout\,
	combout => \inst22|Selector4~0_combout\);

-- Location: FF_X18_Y76_N5
\inst22|Cpte[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst26|CLKs~combout\,
	asdata => \inst22|Selector4~0_combout\,
	clrn => \inst30|Reset_n_out~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst22|Cpte\(1));

-- Location: FF_X18_Y76_N37
\inst22|Cpte[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst26|CLKs~combout\,
	d => \inst22|Cpte[2]~feeder_combout\,
	clrn => \inst30|Reset_n_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst22|Cpte\(2));

-- Location: LABCELL_X18_Y77_N6
\inst22|Selector3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst22|Selector3~0_combout\ = ( \inst22|Cpte\(2) & ( \inst22|Selector7~0_combout\ & ( (!\inst22|Cpte\(1)) # (!\inst22|Cpte\(0)) ) ) ) # ( !\inst22|Cpte\(2) & ( \inst22|Selector7~0_combout\ & ( (\inst22|Cpte\(1) & \inst22|Cpte\(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011111111111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst22|ALT_INV_Cpte\(1),
	datad => \inst22|ALT_INV_Cpte\(0),
	datae => \inst22|ALT_INV_Cpte\(2),
	dataf => \inst22|ALT_INV_Selector7~0_combout\,
	combout => \inst22|Selector3~0_combout\);

-- Location: LABCELL_X18_Y76_N36
\inst22|Cpte[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst22|Cpte[2]~feeder_combout\ = ( \inst22|Selector3~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst22|ALT_INV_Selector3~0_combout\,
	combout => \inst22|Cpte[2]~feeder_combout\);

-- Location: FF_X18_Y76_N38
\inst22|Cpte[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst26|CLKs~combout\,
	d => \inst22|Cpte[2]~feeder_combout\,
	clrn => \inst30|Reset_n_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst22|Cpte[2]~DUPLICATE_q\);

-- Location: LABCELL_X18_Y76_N24
\inst21|DATA_I2C~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst21|DATA_I2C~3_combout\ = ( \inst21|State.Svol1~q\ ) # ( !\inst21|State.Svol1~q\ & ( \inst21|State.Svol2~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst21|ALT_INV_State.Svol2~q\,
	dataf => \inst21|ALT_INV_State.Svol1~q\,
	combout => \inst21|DATA_I2C~3_combout\);

-- Location: FF_X18_Y76_N26
\inst21|St_I2S\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MASTER_CLK~inputCLKENA0_outclk\,
	d => \inst21|DATA_I2C~3_combout\,
	clrn => \inst30|Reset_n_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst21|St_I2S~q\);

-- Location: LABCELL_X18_Y76_N9
\inst22|State.Starter~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst22|State.Starter~0_combout\ = ( \inst22|State.Starter1~q\ & ( \inst21|St_I2S~q\ ) ) # ( !\inst22|State.Starter1~q\ & ( \inst21|St_I2S~q\ ) ) # ( \inst22|State.Starter1~q\ & ( !\inst21|St_I2S~q\ ) ) # ( !\inst22|State.Starter1~q\ & ( 
-- !\inst21|St_I2S~q\ & ( (!\inst22|LessThan1~0_combout\ & (((\inst22|State.Starter~q\)))) # (\inst22|LessThan1~0_combout\ & (((!\inst22|State.SendR~q\ & \inst22|State.Starter~q\)) # (\inst22|State.SendL~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100111011111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|ALT_INV_State.SendR~q\,
	datab => \inst22|ALT_INV_State.SendL~q\,
	datac => \inst22|ALT_INV_State.Starter~q\,
	datad => \inst22|ALT_INV_LessThan1~0_combout\,
	datae => \inst22|ALT_INV_State.Starter1~q\,
	dataf => \inst21|ALT_INV_St_I2S~q\,
	combout => \inst22|State.Starter~0_combout\);

-- Location: FF_X18_Y76_N8
\inst22|State.Starter\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst26|CLKs~combout\,
	asdata => \inst22|State.Starter~0_combout\,
	clrn => \inst30|Reset_n_out~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst22|State.Starter~q\);

-- Location: LABCELL_X17_Y76_N54
\inst22|Selector8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst22|Selector8~0_combout\ = (!\inst22|State.Starter~q\ & \inst21|St_I2S~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst22|ALT_INV_State.Starter~q\,
	datad => \inst21|ALT_INV_St_I2S~q\,
	combout => \inst22|Selector8~0_combout\);

-- Location: FF_X17_Y76_N56
\inst22|State.Starter1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst26|CLKs~combout\,
	d => \inst22|Selector8~0_combout\,
	clrn => \inst30|Reset_n_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst22|State.Starter1~q\);

-- Location: LABCELL_X18_Y75_N24
\inst22|Add0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst22|Add0~0_combout\ = ( \inst22|Cpte[2]~DUPLICATE_q\ & ( !\inst22|Cpte[3]~DUPLICATE_q\ $ (((\inst22|Cpte\(1) & \inst22|Cpte\(0)))) ) ) # ( !\inst22|Cpte[2]~DUPLICATE_q\ & ( !\inst22|Cpte[3]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010100110011010101010011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|ALT_INV_Cpte[3]~DUPLICATE_q\,
	datab => \inst22|ALT_INV_Cpte\(1),
	datad => \inst22|ALT_INV_Cpte\(0),
	dataf => \inst22|ALT_INV_Cpte[2]~DUPLICATE_q\,
	combout => \inst22|Add0~0_combout\);

-- Location: LABCELL_X17_Y76_N42
\inst22|Selector2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst22|Selector2~0_combout\ = ( \inst22|State.Starter~q\ & ( (!\inst22|State.Starter1~q\ & ((!\inst22|Selector7~0_combout\) # (!\inst22|Add0~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110000001100110011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst22|ALT_INV_State.Starter1~q\,
	datac => \inst22|ALT_INV_Selector7~0_combout\,
	datad => \inst22|ALT_INV_Add0~0_combout\,
	dataf => \inst22|ALT_INV_State.Starter~q\,
	combout => \inst22|Selector2~0_combout\);

-- Location: FF_X17_Y76_N43
\inst22|Cpte[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst26|CLKs~combout\,
	d => \inst22|Selector2~0_combout\,
	clrn => \inst30|Reset_n_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst22|Cpte[3]~DUPLICATE_q\);

-- Location: LABCELL_X18_Y75_N42
\inst22|LessThan1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst22|LessThan1~1_combout\ = ( \inst22|Cpte[2]~DUPLICATE_q\ & ( (\inst22|Cpte\(1) & (\inst22|Cpte[3]~DUPLICATE_q\ & \inst22|Cpte\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst22|ALT_INV_Cpte\(1),
	datac => \inst22|ALT_INV_Cpte[3]~DUPLICATE_q\,
	datad => \inst22|ALT_INV_Cpte\(0),
	dataf => \inst22|ALT_INV_Cpte[2]~DUPLICATE_q\,
	combout => \inst22|LessThan1~1_combout\);

-- Location: LABCELL_X18_Y76_N18
\inst22|Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst22|Selector1~0_combout\ = ( \inst22|LessThan1~1_combout\ & ( (!\inst22|State.Starter1~q\ & (\inst22|State.Starter~q\ & ((!\inst22|Cpte\(4)) # (!\inst22|Selector7~0_combout\)))) ) ) # ( !\inst22|LessThan1~1_combout\ & ( (!\inst22|State.Starter1~q\ & 
-- (\inst22|State.Starter~q\ & ((!\inst22|Selector7~0_combout\) # (\inst22|Cpte\(4))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011010000000000001101000000000000111000000000000011100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|ALT_INV_Cpte\(4),
	datab => \inst22|ALT_INV_Selector7~0_combout\,
	datac => \inst22|ALT_INV_State.Starter1~q\,
	datad => \inst22|ALT_INV_State.Starter~q\,
	dataf => \inst22|ALT_INV_LessThan1~1_combout\,
	combout => \inst22|Selector1~0_combout\);

-- Location: FF_X17_Y76_N59
\inst22|Cpte[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst26|CLKs~combout\,
	asdata => \inst22|Selector1~0_combout\,
	clrn => \inst30|Reset_n_out~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst22|Cpte\(4));

-- Location: FF_X17_Y76_N44
\inst22|Cpte[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst26|CLKs~combout\,
	d => \inst22|Selector2~0_combout\,
	clrn => \inst30|Reset_n_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst22|Cpte\(3));

-- Location: LABCELL_X17_Y76_N36
\inst22|LessThan1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst22|LessThan1~0_combout\ = ( \inst22|Cpte\(3) & ( (\inst22|Cpte\(0) & (\inst22|Cpte[2]~DUPLICATE_q\ & (\inst22|Cpte\(1) & \inst22|Cpte\(4)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|ALT_INV_Cpte\(0),
	datab => \inst22|ALT_INV_Cpte[2]~DUPLICATE_q\,
	datac => \inst22|ALT_INV_Cpte\(1),
	datad => \inst22|ALT_INV_Cpte\(4),
	dataf => \inst22|ALT_INV_Cpte\(3),
	combout => \inst22|LessThan1~0_combout\);

-- Location: LABCELL_X18_Y76_N15
\inst22|State.SendR~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst22|State.SendR~0_combout\ = ( \inst22|LessThan1~0_combout\ & ( \inst22|State.SendL~q\ ) ) # ( !\inst22|LessThan1~0_combout\ & ( \inst22|State.SendR~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst22|ALT_INV_State.SendL~q\,
	datac => \inst22|ALT_INV_State.SendR~q\,
	dataf => \inst22|ALT_INV_LessThan1~0_combout\,
	combout => \inst22|State.SendR~0_combout\);

-- Location: LABCELL_X18_Y76_N39
\inst22|State.SendR~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst22|State.SendR~feeder_combout\ = \inst22|State.SendR~0_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst22|ALT_INV_State.SendR~0_combout\,
	combout => \inst22|State.SendR~feeder_combout\);

-- Location: FF_X18_Y76_N41
\inst22|State.SendR\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst26|CLKs~combout\,
	d => \inst22|State.SendR~feeder_combout\,
	clrn => \inst30|Reset_n_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst22|State.SendR~q\);

-- Location: LABCELL_X18_Y76_N54
\inst22|Selector10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst22|Selector10~0_combout\ = ( \inst22|State.Starter1~q\ & ( \inst22|LessThan1~0_combout\ ) ) # ( !\inst22|State.Starter1~q\ & ( \inst22|LessThan1~0_combout\ & ( (\inst22|State.SendR~q\ & (\inst22|State.Starter~q\ & (\inst21|St_I2S~q\ & 
-- !\inst22|State.SendL~q\))) ) ) ) # ( \inst22|State.Starter1~q\ & ( !\inst22|LessThan1~0_combout\ ) ) # ( !\inst22|State.Starter1~q\ & ( !\inst22|LessThan1~0_combout\ & ( (\inst22|State.SendL~q\ & ((!\inst21|St_I2S~q\) # (\inst22|State.Starter~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110011111111111111111100000001000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|ALT_INV_State.SendR~q\,
	datab => \inst22|ALT_INV_State.Starter~q\,
	datac => \inst21|ALT_INV_St_I2S~q\,
	datad => \inst22|ALT_INV_State.SendL~q\,
	datae => \inst22|ALT_INV_State.Starter1~q\,
	dataf => \inst22|ALT_INV_LessThan1~0_combout\,
	combout => \inst22|Selector10~0_combout\);

-- Location: FF_X18_Y76_N47
\inst22|State.SendL\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst26|CLKs~combout\,
	asdata => \inst22|Selector10~0_combout\,
	clrn => \inst30|Reset_n_out~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst22|State.SendL~q\);

-- Location: LABCELL_X18_Y76_N0
\inst22|Selector6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst22|Selector6~0_combout\ = ( !\inst22|Cpte\(4) & ( (\inst22|Selector7~0_combout\ & !\inst22|LessThan1~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000000000000000000000110011000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst22|ALT_INV_Selector7~0_combout\,
	datad => \inst22|ALT_INV_LessThan1~1_combout\,
	datae => \inst22|ALT_INV_Cpte\(4),
	combout => \inst22|Selector6~0_combout\);

-- Location: FF_X18_Y76_N2
\inst22|SIDx2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst26|CLKs~combout\,
	d => \inst22|Selector6~0_combout\,
	clrn => \inst30|Reset_n_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst22|SIDx2~q\);

-- Location: LABCELL_X16_Y76_N27
\inst23|temp~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst23|temp~0_combout\ = !\inst23|temp~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst23|ALT_INV_temp~q\,
	combout => \inst23|temp~0_combout\);

-- Location: LABCELL_X16_Y76_N0
\inst23|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst23|Add1~17_sumout\ = SUM(( \inst23|Cpte[0]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))
-- \inst23|Add1~18\ = CARRY(( \inst23|Cpte[0]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst23|ALT_INV_Cpte[0]~DUPLICATE_q\,
	cin => GND,
	sumout => \inst23|Add1~17_sumout\,
	cout => \inst23|Add1~18\);

-- Location: FF_X16_Y76_N59
\inst23|Cpte[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst22|SIDx2~q\,
	asdata => \inst23|Add1~17_sumout\,
	clrn => \inst30|Reset_n_out~q\,
	sclr => \inst23|ALT_INV_Equal0~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst23|Cpte[0]~DUPLICATE_q\);

-- Location: LABCELL_X16_Y76_N3
\inst23|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst23|Add1~13_sumout\ = SUM(( \inst23|Cpte\(1) ) + ( GND ) + ( \inst23|Add1~18\ ))
-- \inst23|Add1~14\ = CARRY(( \inst23|Cpte\(1) ) + ( GND ) + ( \inst23|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst23|ALT_INV_Cpte\(1),
	cin => \inst23|Add1~18\,
	sumout => \inst23|Add1~13_sumout\,
	cout => \inst23|Add1~14\);

-- Location: FF_X16_Y76_N32
\inst23|Cpte[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst22|SIDx2~q\,
	asdata => \inst23|Add1~13_sumout\,
	clrn => \inst30|Reset_n_out~q\,
	sclr => \inst23|ALT_INV_Equal0~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst23|Cpte\(1));

-- Location: LABCELL_X16_Y76_N6
\inst23|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst23|Add1~9_sumout\ = SUM(( \inst23|Cpte\(2) ) + ( GND ) + ( \inst23|Add1~14\ ))
-- \inst23|Add1~10\ = CARRY(( \inst23|Cpte\(2) ) + ( GND ) + ( \inst23|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst23|ALT_INV_Cpte\(2),
	cin => \inst23|Add1~14\,
	sumout => \inst23|Add1~9_sumout\,
	cout => \inst23|Add1~10\);

-- Location: FF_X16_Y76_N56
\inst23|Cpte[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst22|SIDx2~q\,
	asdata => \inst23|Add1~9_sumout\,
	clrn => \inst30|Reset_n_out~q\,
	sclr => \inst23|ALT_INV_Equal0~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst23|Cpte\(2));

-- Location: LABCELL_X16_Y76_N9
\inst23|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst23|Add1~5_sumout\ = SUM(( \inst23|Cpte\(3) ) + ( GND ) + ( \inst23|Add1~10\ ))
-- \inst23|Add1~6\ = CARRY(( \inst23|Cpte\(3) ) + ( GND ) + ( \inst23|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst23|ALT_INV_Cpte\(3),
	cin => \inst23|Add1~10\,
	sumout => \inst23|Add1~5_sumout\,
	cout => \inst23|Add1~6\);

-- Location: LABCELL_X16_Y76_N39
\inst23|Cpte[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst23|Cpte[3]~feeder_combout\ = ( \inst23|Add1~5_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst23|ALT_INV_Add1~5_sumout\,
	combout => \inst23|Cpte[3]~feeder_combout\);

-- Location: FF_X16_Y76_N41
\inst23|Cpte[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst22|SIDx2~q\,
	d => \inst23|Cpte[3]~feeder_combout\,
	clrn => \inst30|Reset_n_out~q\,
	sclr => \inst23|ALT_INV_Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst23|Cpte\(3));

-- Location: LABCELL_X16_Y76_N12
\inst23|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst23|Add1~1_sumout\ = SUM(( \inst23|Cpte\(4) ) + ( GND ) + ( \inst23|Add1~6\ ))
-- \inst23|Add1~2\ = CARRY(( \inst23|Cpte\(4) ) + ( GND ) + ( \inst23|Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst23|ALT_INV_Cpte\(4),
	cin => \inst23|Add1~6\,
	sumout => \inst23|Add1~1_sumout\,
	cout => \inst23|Add1~2\);

-- Location: FF_X16_Y76_N35
\inst23|Cpte[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst22|SIDx2~q\,
	asdata => \inst23|Add1~1_sumout\,
	clrn => \inst30|Reset_n_out~q\,
	sclr => \inst23|ALT_INV_Equal0~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst23|Cpte\(4));

-- Location: LABCELL_X16_Y76_N15
\inst23|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst23|Add1~29_sumout\ = SUM(( \inst23|Cpte\(5) ) + ( GND ) + ( \inst23|Add1~2\ ))
-- \inst23|Add1~30\ = CARRY(( \inst23|Cpte\(5) ) + ( GND ) + ( \inst23|Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst23|ALT_INV_Cpte\(5),
	cin => \inst23|Add1~2\,
	sumout => \inst23|Add1~29_sumout\,
	cout => \inst23|Add1~30\);

-- Location: LABCELL_X16_Y76_N36
\inst23|Cpte[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst23|Cpte[5]~feeder_combout\ = ( \inst23|Add1~29_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst23|ALT_INV_Add1~29_sumout\,
	combout => \inst23|Cpte[5]~feeder_combout\);

-- Location: FF_X16_Y76_N38
\inst23|Cpte[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst22|SIDx2~q\,
	d => \inst23|Cpte[5]~feeder_combout\,
	clrn => \inst30|Reset_n_out~q\,
	sclr => \inst23|ALT_INV_Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst23|Cpte\(5));

-- Location: LABCELL_X16_Y76_N18
\inst23|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst23|Add1~25_sumout\ = SUM(( \inst23|Cpte\(6) ) + ( GND ) + ( \inst23|Add1~30\ ))
-- \inst23|Add1~26\ = CARRY(( \inst23|Cpte\(6) ) + ( GND ) + ( \inst23|Add1~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst23|ALT_INV_Cpte\(6),
	cin => \inst23|Add1~30\,
	sumout => \inst23|Add1~25_sumout\,
	cout => \inst23|Add1~26\);

-- Location: FF_X16_Y76_N53
\inst23|Cpte[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst22|SIDx2~q\,
	asdata => \inst23|Add1~25_sumout\,
	clrn => \inst30|Reset_n_out~q\,
	sclr => \inst23|ALT_INV_Equal0~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst23|Cpte\(6));

-- Location: LABCELL_X16_Y76_N21
\inst23|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst23|Add1~21_sumout\ = SUM(( \inst23|Cpte\(7) ) + ( GND ) + ( \inst23|Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|ALT_INV_Cpte\(7),
	cin => \inst23|Add1~26\,
	sumout => \inst23|Add1~21_sumout\);

-- Location: FF_X16_Y76_N50
\inst23|Cpte[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst22|SIDx2~q\,
	asdata => \inst23|Add1~21_sumout\,
	clrn => \inst30|Reset_n_out~q\,
	sclr => \inst23|ALT_INV_Equal0~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst23|Cpte\(7));

-- Location: FF_X16_Y76_N58
\inst23|Cpte[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst22|SIDx2~q\,
	asdata => \inst23|Add1~17_sumout\,
	clrn => \inst30|Reset_n_out~q\,
	sclr => \inst23|ALT_INV_Equal0~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst23|Cpte\(0));

-- Location: LABCELL_X16_Y76_N24
\inst23|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst23|Equal0~0_combout\ = ( !\inst23|Cpte\(0) & ( (!\inst23|Cpte\(6) & (!\inst23|Cpte\(7) & !\inst23|Cpte\(5))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000101000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|ALT_INV_Cpte\(6),
	datac => \inst23|ALT_INV_Cpte\(7),
	datad => \inst23|ALT_INV_Cpte\(5),
	dataf => \inst23|ALT_INV_Cpte\(0),
	combout => \inst23|Equal0~0_combout\);

-- Location: LABCELL_X16_Y76_N45
\inst23|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst23|Equal0~1_combout\ = ( !\inst23|Cpte\(4) & ( (\inst23|Equal0~0_combout\ & (!\inst23|Cpte\(1) & (!\inst23|Cpte\(3) & !\inst23|Cpte\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000010000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|ALT_INV_Equal0~0_combout\,
	datab => \inst23|ALT_INV_Cpte\(1),
	datac => \inst23|ALT_INV_Cpte\(3),
	datad => \inst23|ALT_INV_Cpte\(2),
	dataf => \inst23|ALT_INV_Cpte\(4),
	combout => \inst23|Equal0~1_combout\);

-- Location: FF_X16_Y76_N26
\inst23|temp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst22|SIDx2~q\,
	asdata => \inst23|temp~0_combout\,
	clrn => \inst30|Reset_n_out~q\,
	sload => VCC,
	ena => \inst23|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst23|temp~q\);

-- Location: LABCELL_X16_Y76_N54
\inst23|CLKs\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst23|CLKs~combout\ = LCELL(( \inst23|temp~q\ & ( \inst30|Reset_n_out~q\ ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst30|ALT_INV_Reset_n_out~q\,
	dataf => \inst23|ALT_INV_temp~q\,
	combout => \inst23|CLKs~combout\);

-- Location: FF_X16_Y75_N53
\inst21|St_CPT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MASTER_CLK~inputCLKENA0_outclk\,
	asdata => \inst21|State.Sgo1~q\,
	clrn => \inst30|Reset_n_out~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst21|St_CPT~q\);

-- Location: IOIBUF_X12_Y0_N18
\SEL0~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SEL0,
	o => \SEL0~input_o\);

-- Location: LABCELL_X13_Y75_N45
\inst3|Cpts[8]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Cpts[8]~5_combout\ = ( \SEL0~input_o\ & ( (!\inst21|St_CPT~q\) # (\inst3|Cpts[8]~5_combout\) ) ) # ( !\SEL0~input_o\ & ( (\inst21|St_CPT~q\ & \inst3|Cpts[8]~5_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst21|ALT_INV_St_CPT~q\,
	datad => \inst3|ALT_INV_Cpts[8]~5_combout\,
	dataf => \ALT_INV_SEL0~input_o\,
	combout => \inst3|Cpts[8]~5_combout\);

-- Location: LABCELL_X13_Y75_N33
\inst3|Cpts[8]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Cpts[8]~7_combout\ = ( \inst3|Cpts[8]~5_combout\ & ( !\SEL0~input_o\ ) ) # ( !\inst3|Cpts[8]~5_combout\ & ( \SEL0~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010110101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SEL0~input_o\,
	dataf => \inst3|ALT_INV_Cpts[8]~5_combout\,
	combout => \inst3|Cpts[8]~7_combout\);

-- Location: FF_X16_Y75_N14
\inst3|Cpte[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst23|CLKs~combout\,
	asdata => \inst3|Add0~25_sumout\,
	clrn => \inst21|St_CPT~q\,
	sclr => \inst3|LessThan0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|Cpte\(5));

-- Location: MLABCELL_X15_Y75_N0
\inst3|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add0~17_sumout\ = SUM(( \inst3|Cpte[0]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))
-- \inst3|Add0~18\ = CARRY(( \inst3|Cpte[0]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst3|ALT_INV_Cpte[0]~DUPLICATE_q\,
	cin => GND,
	sumout => \inst3|Add0~17_sumout\,
	cout => \inst3|Add0~18\);

-- Location: FF_X15_Y75_N38
\inst3|Cpte[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst23|CLKs~combout\,
	asdata => \inst3|Add0~17_sumout\,
	clrn => \inst21|St_CPT~q\,
	sclr => \inst3|LessThan0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|Cpte[0]~DUPLICATE_q\);

-- Location: MLABCELL_X15_Y75_N3
\inst3|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add0~13_sumout\ = SUM(( \inst3|Cpte\(1) ) + ( GND ) + ( \inst3|Add0~18\ ))
-- \inst3|Add0~14\ = CARRY(( \inst3|Cpte\(1) ) + ( GND ) + ( \inst3|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst3|ALT_INV_Cpte\(1),
	cin => \inst3|Add0~18\,
	sumout => \inst3|Add0~13_sumout\,
	cout => \inst3|Add0~14\);

-- Location: FF_X16_Y75_N4
\inst3|Cpte[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst23|CLKs~combout\,
	asdata => \inst3|Add0~13_sumout\,
	clrn => \inst21|St_CPT~q\,
	sclr => \inst3|LessThan0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|Cpte\(1));

-- Location: MLABCELL_X15_Y75_N6
\inst3|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add0~9_sumout\ = SUM(( \inst3|Cpte\(2) ) + ( GND ) + ( \inst3|Add0~14\ ))
-- \inst3|Add0~10\ = CARRY(( \inst3|Cpte\(2) ) + ( GND ) + ( \inst3|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst3|ALT_INV_Cpte\(2),
	cin => \inst3|Add0~14\,
	sumout => \inst3|Add0~9_sumout\,
	cout => \inst3|Add0~10\);

-- Location: FF_X16_Y75_N11
\inst3|Cpte[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst23|CLKs~combout\,
	asdata => \inst3|Add0~9_sumout\,
	clrn => \inst21|St_CPT~q\,
	sclr => \inst3|LessThan0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|Cpte\(2));

-- Location: MLABCELL_X15_Y75_N9
\inst3|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add0~5_sumout\ = SUM(( \inst3|Cpte[3]~DUPLICATE_q\ ) + ( GND ) + ( \inst3|Add0~10\ ))
-- \inst3|Add0~6\ = CARRY(( \inst3|Cpte[3]~DUPLICATE_q\ ) + ( GND ) + ( \inst3|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst3|ALT_INV_Cpte[3]~DUPLICATE_q\,
	cin => \inst3|Add0~10\,
	sumout => \inst3|Add0~5_sumout\,
	cout => \inst3|Add0~6\);

-- Location: FF_X16_Y74_N20
\inst3|Cpte[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst23|CLKs~combout\,
	asdata => \inst3|Add0~5_sumout\,
	clrn => \inst21|St_CPT~q\,
	sclr => \inst3|LessThan0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|Cpte[3]~DUPLICATE_q\);

-- Location: MLABCELL_X15_Y75_N12
\inst3|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add0~29_sumout\ = SUM(( \inst3|Cpte[4]~DUPLICATE_q\ ) + ( GND ) + ( \inst3|Add0~6\ ))
-- \inst3|Add0~30\ = CARRY(( \inst3|Cpte[4]~DUPLICATE_q\ ) + ( GND ) + ( \inst3|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ALT_INV_Cpte[4]~DUPLICATE_q\,
	cin => \inst3|Add0~6\,
	sumout => \inst3|Add0~29_sumout\,
	cout => \inst3|Add0~30\);

-- Location: FF_X16_Y75_N26
\inst3|Cpte[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst23|CLKs~combout\,
	asdata => \inst3|Add0~29_sumout\,
	clrn => \inst21|St_CPT~q\,
	sclr => \inst3|LessThan0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|Cpte[4]~DUPLICATE_q\);

-- Location: MLABCELL_X15_Y75_N15
\inst3|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add0~25_sumout\ = SUM(( \inst3|Cpte\(5) ) + ( GND ) + ( \inst3|Add0~30\ ))
-- \inst3|Add0~26\ = CARRY(( \inst3|Cpte\(5) ) + ( GND ) + ( \inst3|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst3|ALT_INV_Cpte\(5),
	cin => \inst3|Add0~30\,
	sumout => \inst3|Add0~25_sumout\,
	cout => \inst3|Add0~26\);

-- Location: FF_X16_Y75_N13
\inst3|Cpte[5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst23|CLKs~combout\,
	asdata => \inst3|Add0~25_sumout\,
	clrn => \inst21|St_CPT~q\,
	sclr => \inst3|LessThan0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|Cpte[5]~DUPLICATE_q\);

-- Location: FF_X16_Y75_N38
\inst3|Cpte[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst23|CLKs~combout\,
	asdata => \inst3|Add0~21_sumout\,
	clrn => \inst21|St_CPT~q\,
	sclr => \inst3|LessThan0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|Cpte\(6));

-- Location: MLABCELL_X15_Y75_N18
\inst3|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add0~21_sumout\ = SUM(( \inst3|Cpte\(6) ) + ( GND ) + ( \inst3|Add0~26\ ))
-- \inst3|Add0~22\ = CARRY(( \inst3|Cpte\(6) ) + ( GND ) + ( \inst3|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst3|ALT_INV_Cpte\(6),
	cin => \inst3|Add0~26\,
	sumout => \inst3|Add0~21_sumout\,
	cout => \inst3|Add0~22\);

-- Location: FF_X16_Y75_N37
\inst3|Cpte[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst23|CLKs~combout\,
	asdata => \inst3|Add0~21_sumout\,
	clrn => \inst21|St_CPT~q\,
	sclr => \inst3|LessThan0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|Cpte[6]~DUPLICATE_q\);

-- Location: MLABCELL_X15_Y75_N21
\inst3|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Add0~1_sumout\ = SUM(( \inst3|Cpte[7]~DUPLICATE_q\ ) + ( GND ) + ( \inst3|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst3|ALT_INV_Cpte[7]~DUPLICATE_q\,
	cin => \inst3|Add0~22\,
	sumout => \inst3|Add0~1_sumout\);

-- Location: FF_X17_Y74_N41
\inst3|Cpte[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst23|CLKs~combout\,
	asdata => \inst3|Add0~1_sumout\,
	clrn => \inst21|St_CPT~q\,
	sclr => \inst3|LessThan0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|Cpte[7]~DUPLICATE_q\);

-- Location: FF_X16_Y75_N25
\inst3|Cpte[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst23|CLKs~combout\,
	asdata => \inst3|Add0~29_sumout\,
	clrn => \inst21|St_CPT~q\,
	sclr => \inst3|LessThan0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|Cpte\(4));

-- Location: FF_X16_Y75_N5
\inst3|Cpte[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst23|CLKs~combout\,
	asdata => \inst3|Add0~13_sumout\,
	clrn => \inst21|St_CPT~q\,
	sclr => \inst3|LessThan0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|Cpte[1]~DUPLICATE_q\);

-- Location: FF_X16_Y74_N19
\inst3|Cpte[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst23|CLKs~combout\,
	asdata => \inst3|Add0~5_sumout\,
	clrn => \inst21|St_CPT~q\,
	sclr => \inst3|LessThan0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|Cpte\(3));

-- Location: MLABCELL_X15_Y75_N48
\inst|Mux2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux2~2_combout\ = ( \inst3|Cpte\(3) & ( (\inst3|Cpte[1]~DUPLICATE_q\ & \inst3|Cpte\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst3|ALT_INV_Cpte[1]~DUPLICATE_q\,
	datad => \inst3|ALT_INV_Cpte\(2),
	dataf => \inst3|ALT_INV_Cpte\(3),
	combout => \inst|Mux2~2_combout\);

-- Location: LABCELL_X16_Y72_N39
\inst3|LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|LessThan0~0_combout\ = ( \inst3|Cpte[0]~DUPLICATE_q\ & ( \inst|Mux2~2_combout\ & ( (\inst3|Cpte[5]~DUPLICATE_q\ & (\inst3|Cpte[6]~DUPLICATE_q\ & (\inst3|Cpte[7]~DUPLICATE_q\ & \inst3|Cpte\(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Cpte[5]~DUPLICATE_q\,
	datab => \inst3|ALT_INV_Cpte[6]~DUPLICATE_q\,
	datac => \inst3|ALT_INV_Cpte[7]~DUPLICATE_q\,
	datad => \inst3|ALT_INV_Cpte\(4),
	datae => \inst3|ALT_INV_Cpte[0]~DUPLICATE_q\,
	dataf => \inst|ALT_INV_Mux2~2_combout\,
	combout => \inst3|LessThan0~0_combout\);

-- Location: FF_X13_Y75_N20
\inst3|Cpts[8]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst23|CLKs~combout\,
	asdata => \inst3|Cpts[8]~7_combout\,
	clrn => \inst21|St_CPT~q\,
	sload => VCC,
	ena => \inst3|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|Cpts[8]~_emulated_q\);

-- Location: LABCELL_X13_Y75_N54
\inst3|Cpts[8]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Cpts[8]~6_combout\ = ( \inst21|St_CPT~q\ & ( !\inst3|Cpts[8]~5_combout\ $ (!\inst3|Cpts[8]~_emulated_q\) ) ) # ( !\inst21|St_CPT~q\ & ( \SEL0~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100111100001111000011110000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ALT_INV_Cpts[8]~5_combout\,
	datac => \inst3|ALT_INV_Cpts[8]~_emulated_q\,
	datad => \ALT_INV_SEL0~input_o\,
	dataf => \inst21|ALT_INV_St_CPT~q\,
	combout => \inst3|Cpts[8]~6_combout\);

-- Location: LABCELL_X16_Y73_N51
\inst|Mux22~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux22~0_combout\ = ( !\inst3|Cpte[4]~DUPLICATE_q\ & ( (!\inst3|Cpte[6]~DUPLICATE_q\ & !\inst3|Cpte[5]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000000000101010100000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Cpte[6]~DUPLICATE_q\,
	datad => \inst3|ALT_INV_Cpte[5]~DUPLICATE_q\,
	dataf => \inst3|ALT_INV_Cpte[4]~DUPLICATE_q\,
	combout => \inst|Mux22~0_combout\);

-- Location: MLABCELL_X15_Y75_N51
\inst|Mux31~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux31~1_combout\ = ( \inst3|Cpte\(5) & ( !\inst3|Cpte\(6) $ (((!\inst3|Cpte[0]~DUPLICATE_q\ & (\inst3|Cpte[3]~DUPLICATE_q\)) # (\inst3|Cpte[0]~DUPLICATE_q\ & (!\inst3|Cpte[3]~DUPLICATE_q\ & !\inst3|Cpte[4]~DUPLICATE_q\)))) ) ) # ( !\inst3|Cpte\(5) & 
-- ( (!\inst3|Cpte[4]~DUPLICATE_q\ & (!\inst3|Cpte[0]~DUPLICATE_q\ $ (((\inst3|Cpte[3]~DUPLICATE_q\ & \inst3|Cpte\(6)))))) # (\inst3|Cpte[4]~DUPLICATE_q\ & (!\inst3|Cpte[0]~DUPLICATE_q\ & (!\inst3|Cpte[3]~DUPLICATE_q\ $ (!\inst3|Cpte\(6))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010100100101000101010010010100010010110110100101001011011010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Cpte[0]~DUPLICATE_q\,
	datab => \inst3|ALT_INV_Cpte[3]~DUPLICATE_q\,
	datac => \inst3|ALT_INV_Cpte\(6),
	datad => \inst3|ALT_INV_Cpte[4]~DUPLICATE_q\,
	dataf => \inst3|ALT_INV_Cpte\(5),
	combout => \inst|Mux31~1_combout\);

-- Location: LABCELL_X17_Y74_N51
\inst|Mux31~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux31~0_combout\ = ( \inst3|Cpte[3]~DUPLICATE_q\ & ( \inst3|Cpte[0]~DUPLICATE_q\ & ( (!\inst3|Cpte\(4) & \inst3|Cpte[5]~DUPLICATE_q\) ) ) ) # ( !\inst3|Cpte[3]~DUPLICATE_q\ & ( \inst3|Cpte[0]~DUPLICATE_q\ & ( (!\inst3|Cpte\(4) & 
-- ((\inst3|Cpte[5]~DUPLICATE_q\) # (\inst3|Cpte[6]~DUPLICATE_q\))) # (\inst3|Cpte\(4) & (\inst3|Cpte[6]~DUPLICATE_q\ & \inst3|Cpte[5]~DUPLICATE_q\)) ) ) ) # ( \inst3|Cpte[3]~DUPLICATE_q\ & ( !\inst3|Cpte[0]~DUPLICATE_q\ & ( (!\inst3|Cpte\(4) & 
-- (!\inst3|Cpte[6]~DUPLICATE_q\ & \inst3|Cpte[5]~DUPLICATE_q\)) # (\inst3|Cpte\(4) & (\inst3|Cpte[6]~DUPLICATE_q\ & !\inst3|Cpte[5]~DUPLICATE_q\)) ) ) ) # ( !\inst3|Cpte[3]~DUPLICATE_q\ & ( !\inst3|Cpte[0]~DUPLICATE_q\ & ( (!\inst3|Cpte\(4) & 
-- (((!\inst3|Cpte[6]~DUPLICATE_q\ & !\inst3|Cpte[7]~DUPLICATE_q\)) # (\inst3|Cpte[5]~DUPLICATE_q\))) # (\inst3|Cpte\(4) & (!\inst3|Cpte[6]~DUPLICATE_q\ $ (((!\inst3|Cpte[5]~DUPLICATE_q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001000111101110000100011000100000100010101110110000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Cpte\(4),
	datab => \inst3|ALT_INV_Cpte[6]~DUPLICATE_q\,
	datac => \inst3|ALT_INV_Cpte[7]~DUPLICATE_q\,
	datad => \inst3|ALT_INV_Cpte[5]~DUPLICATE_q\,
	datae => \inst3|ALT_INV_Cpte[3]~DUPLICATE_q\,
	dataf => \inst3|ALT_INV_Cpte[0]~DUPLICATE_q\,
	combout => \inst|Mux31~0_combout\);

-- Location: FF_X15_Y75_N37
\inst3|Cpte[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst23|CLKs~combout\,
	asdata => \inst3|Add0~17_sumout\,
	clrn => \inst21|St_CPT~q\,
	sclr => \inst3|LessThan0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|Cpte\(0));

-- Location: LABCELL_X17_Y74_N0
\inst|Mux31~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux31~3_combout\ = ( \inst3|Cpte[3]~DUPLICATE_q\ & ( \inst3|Cpte\(4) & ( (!\inst3|Cpte[5]~DUPLICATE_q\ & ((!\inst3|Cpte[6]~DUPLICATE_q\) # (\inst3|Cpte\(0)))) # (\inst3|Cpte[5]~DUPLICATE_q\ & (!\inst3|Cpte[6]~DUPLICATE_q\ & \inst3|Cpte\(0))) ) ) ) # 
-- ( !\inst3|Cpte[3]~DUPLICATE_q\ & ( \inst3|Cpte\(4) & ( !\inst3|Cpte[5]~DUPLICATE_q\ $ (((!\inst3|Cpte[6]~DUPLICATE_q\ & !\inst3|Cpte\(0)))) ) ) ) # ( \inst3|Cpte[3]~DUPLICATE_q\ & ( !\inst3|Cpte\(4) & ( (!\inst3|Cpte[5]~DUPLICATE_q\ & 
-- (!\inst3|Cpte[6]~DUPLICATE_q\)) # (\inst3|Cpte[5]~DUPLICATE_q\ & (\inst3|Cpte[6]~DUPLICATE_q\ & !\inst3|Cpte\(0))) ) ) ) # ( !\inst3|Cpte[3]~DUPLICATE_q\ & ( !\inst3|Cpte\(4) & ( (!\inst3|Cpte\(0) & (!\inst3|Cpte[5]~DUPLICATE_q\ $ 
-- (!\inst3|Cpte[6]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011000000000100110011000100001100110101010101000100011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Cpte[5]~DUPLICATE_q\,
	datab => \inst3|ALT_INV_Cpte[6]~DUPLICATE_q\,
	datad => \inst3|ALT_INV_Cpte\(0),
	datae => \inst3|ALT_INV_Cpte[3]~DUPLICATE_q\,
	dataf => \inst3|ALT_INV_Cpte\(4),
	combout => \inst|Mux31~3_combout\);

-- Location: LABCELL_X16_Y74_N3
\inst|Mux31~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux31~2_combout\ = ( \inst3|Cpte\(4) & ( (!\inst3|Cpte\(5) & (\inst3|Cpte\(0) & (!\inst3|Cpte[6]~DUPLICATE_q\ $ (!\inst3|Cpte\(3))))) # (\inst3|Cpte\(5) & (!\inst3|Cpte[6]~DUPLICATE_q\ & ((!\inst3|Cpte\(0)) # (!\inst3|Cpte\(3))))) ) ) # ( 
-- !\inst3|Cpte\(4) & ( (!\inst3|Cpte\(5) & \inst3|Cpte[6]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101001010010011000000101001001100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Cpte\(5),
	datab => \inst3|ALT_INV_Cpte\(0),
	datac => \inst3|ALT_INV_Cpte[6]~DUPLICATE_q\,
	datad => \inst3|ALT_INV_Cpte\(3),
	dataf => \inst3|ALT_INV_Cpte\(4),
	combout => \inst|Mux31~2_combout\);

-- Location: LABCELL_X17_Y74_N54
\inst|Mux31~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux31~4_combout\ = ( \inst|Mux31~3_combout\ & ( \inst|Mux31~2_combout\ & ( (!\inst3|Cpte\(1) & (((!\inst|Mux31~0_combout\) # (\inst3|Cpte\(2))))) # (\inst3|Cpte\(1) & (\inst|Mux31~1_combout\ & ((!\inst3|Cpte\(2))))) ) ) ) # ( !\inst|Mux31~3_combout\ 
-- & ( \inst|Mux31~2_combout\ & ( ((!\inst3|Cpte\(1) & ((!\inst|Mux31~0_combout\))) # (\inst3|Cpte\(1) & (\inst|Mux31~1_combout\))) # (\inst3|Cpte\(2)) ) ) ) # ( \inst|Mux31~3_combout\ & ( !\inst|Mux31~2_combout\ & ( (!\inst3|Cpte\(2) & ((!\inst3|Cpte\(1) & 
-- ((!\inst|Mux31~0_combout\))) # (\inst3|Cpte\(1) & (\inst|Mux31~1_combout\)))) ) ) ) # ( !\inst|Mux31~3_combout\ & ( !\inst|Mux31~2_combout\ & ( (!\inst3|Cpte\(1) & (((!\inst|Mux31~0_combout\ & !\inst3|Cpte\(2))))) # (\inst3|Cpte\(1) & (((\inst3|Cpte\(2))) 
-- # (\inst|Mux31~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101000100110011110100010000000011010001111111111101000111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Mux31~1_combout\,
	datab => \inst3|ALT_INV_Cpte\(1),
	datac => \inst|ALT_INV_Mux31~0_combout\,
	datad => \inst3|ALT_INV_Cpte\(2),
	datae => \inst|ALT_INV_Mux31~3_combout\,
	dataf => \inst|ALT_INV_Mux31~2_combout\,
	combout => \inst|Mux31~4_combout\);

-- Location: LABCELL_X17_Y73_N27
\inst|Mux2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux2~1_combout\ = ( !\inst3|Cpte[0]~DUPLICATE_q\ & ( !\inst3|Cpte\(3) & ( (!\inst3|Cpte\(1) & !\inst3|Cpte\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Cpte\(1),
	datad => \inst3|ALT_INV_Cpte\(2),
	datae => \inst3|ALT_INV_Cpte[0]~DUPLICATE_q\,
	dataf => \inst3|ALT_INV_Cpte\(3),
	combout => \inst|Mux2~1_combout\);

-- Location: IOIBUF_X16_Y0_N1
\SEL1~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SEL1,
	o => \SEL1~input_o\);

-- Location: LABCELL_X17_Y75_N6
\inst3|Cpts[9]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Cpts[9]~1_combout\ = ( \inst3|Cpts[9]~1_combout\ & ( (\SEL1~input_o\) # (\inst21|St_CPT~q\) ) ) # ( !\inst3|Cpts[9]~1_combout\ & ( (!\inst21|St_CPT~q\ & \SEL1~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst21|ALT_INV_St_CPT~q\,
	datad => \ALT_INV_SEL1~input_o\,
	dataf => \inst3|ALT_INV_Cpts[9]~1_combout\,
	combout => \inst3|Cpts[9]~1_combout\);

-- Location: LABCELL_X13_Y75_N36
\inst3|Cpts[9]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Cpts[9]~3_combout\ = ( \inst3|Cpts[9]~1_combout\ & ( !\SEL1~input_o\ ) ) # ( !\inst3|Cpts[9]~1_combout\ & ( \SEL1~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_SEL1~input_o\,
	dataf => \inst3|ALT_INV_Cpts[9]~1_combout\,
	combout => \inst3|Cpts[9]~3_combout\);

-- Location: FF_X15_Y75_N35
\inst3|Cpts[9]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst23|CLKs~combout\,
	asdata => \inst3|Cpts[9]~3_combout\,
	clrn => \inst21|St_CPT~q\,
	sload => VCC,
	ena => \inst3|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|Cpts[9]~_emulated_q\);

-- Location: LABCELL_X17_Y75_N18
\inst3|Cpts[9]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Cpts[9]~2_combout\ = ( \inst21|St_CPT~q\ & ( !\inst3|Cpts[9]~1_combout\ $ (!\inst3|Cpts[9]~_emulated_q\) ) ) # ( !\inst21|St_CPT~q\ & ( \SEL1~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100111100001111000011110000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ALT_INV_Cpts[9]~1_combout\,
	datac => \inst3|ALT_INV_Cpts[9]~_emulated_q\,
	datad => \ALT_INV_SEL1~input_o\,
	dataf => \inst21|ALT_INV_St_CPT~q\,
	combout => \inst3|Cpts[9]~2_combout\);

-- Location: LABCELL_X17_Y74_N18
\inst|Mux31~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux31~5_combout\ = ( \inst3|Cpte[7]~DUPLICATE_q\ & ( \inst3|Cpts[9]~2_combout\ & ( (!\inst3|Cpts[8]~6_combout\ & (\inst|Mux22~0_combout\ & \inst|Mux2~1_combout\)) ) ) ) # ( !\inst3|Cpte[7]~DUPLICATE_q\ & ( \inst3|Cpts[9]~2_combout\ & ( 
-- (\inst|Mux22~0_combout\ & \inst|Mux2~1_combout\) ) ) ) # ( \inst3|Cpte[7]~DUPLICATE_q\ & ( !\inst3|Cpts[9]~2_combout\ & ( (\inst|Mux31~4_combout\) # (\inst3|Cpts[8]~6_combout\) ) ) ) # ( !\inst3|Cpte[7]~DUPLICATE_q\ & ( !\inst3|Cpts[9]~2_combout\ & ( 
-- (\inst|Mux31~4_combout\) # (\inst3|Cpts[8]~6_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101011111010111110101111100000000001100110000000000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Cpts[8]~6_combout\,
	datab => \inst|ALT_INV_Mux22~0_combout\,
	datac => \inst|ALT_INV_Mux31~4_combout\,
	datad => \inst|ALT_INV_Mux2~1_combout\,
	datae => \inst3|ALT_INV_Cpte[7]~DUPLICATE_q\,
	dataf => \inst3|ALT_INV_Cpts[9]~2_combout\,
	combout => \inst|Mux31~5_combout\);

-- Location: FF_X17_Y74_N20
\inst|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst23|CLKs~combout\,
	d => \inst|Mux31~5_combout\,
	clrn => \inst30|Reset_n_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Q\(0));

-- Location: LABCELL_X17_Y76_N57
\inst22|DtR[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst22|DtR[0]~0_combout\ = ( \inst30|Reset_n_out~q\ & ( (\inst22|State.SendL~q\ & \inst22|LessThan1~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|ALT_INV_State.SendL~q\,
	datad => \inst22|ALT_INV_LessThan1~0_combout\,
	dataf => \inst30|ALT_INV_Reset_n_out~q\,
	combout => \inst22|DtR[0]~0_combout\);

-- Location: FF_X18_Y75_N11
\inst22|DtR[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst26|CLKs~combout\,
	asdata => \inst|Q\(0),
	sload => VCC,
	ena => \inst22|DtR[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst22|DtR\(0));

-- Location: LABCELL_X17_Y76_N45
\inst22|DtL[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst22|DtL[0]~0_combout\ = ( \inst30|Reset_n_out~q\ & ( (!\inst22|State.SendR~q\ & (\inst22|State.Starter1~q\)) # (\inst22|State.SendR~q\ & ((\inst22|LessThan1~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010000010111110101000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|ALT_INV_State.Starter1~q\,
	datac => \inst22|ALT_INV_State.SendR~q\,
	datad => \inst22|ALT_INV_LessThan1~0_combout\,
	dataf => \inst30|ALT_INV_Reset_n_out~q\,
	combout => \inst22|DtL[0]~0_combout\);

-- Location: FF_X18_Y75_N25
\inst22|DtL[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst26|CLKs~combout\,
	asdata => \inst|Q\(0),
	sload => VCC,
	ena => \inst22|DtL[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst22|DtL\(0));

-- Location: LABCELL_X16_Y76_N33
\inst22|Selector0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst22|Selector0~3_combout\ = ( \inst22|DtR\(0) & ( \inst22|DtL\(0) & ( (\inst22|State.SendR~q\) # (\inst22|State.SendL~q\) ) ) ) # ( !\inst22|DtR\(0) & ( \inst22|DtL\(0) & ( \inst22|State.SendL~q\ ) ) ) # ( \inst22|DtR\(0) & ( !\inst22|DtL\(0) & ( 
-- \inst22|State.SendR~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100001111000011110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst22|ALT_INV_State.SendL~q\,
	datad => \inst22|ALT_INV_State.SendR~q\,
	datae => \inst22|ALT_INV_DtR\(0),
	dataf => \inst22|ALT_INV_DtL\(0),
	combout => \inst22|Selector0~3_combout\);

-- Location: LABCELL_X17_Y75_N0
\inst|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux2~0_combout\ = ( !\inst3|Cpte\(3) & ( (\inst3|Cpts[9]~2_combout\ & (!\inst3|Cpte\(0) & (!\inst3|Cpte\(1) & !\inst3|Cpte\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000010000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Cpts[9]~2_combout\,
	datab => \inst3|ALT_INV_Cpte\(0),
	datac => \inst3|ALT_INV_Cpte\(1),
	datad => \inst3|ALT_INV_Cpte\(2),
	dataf => \inst3|ALT_INV_Cpte\(3),
	combout => \inst|Mux2~0_combout\);

-- Location: LABCELL_X17_Y75_N21
\inst|Mux15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux15~0_combout\ = ( \inst3|Cpte[7]~DUPLICATE_q\ & ( (\inst|Mux2~0_combout\ & (\inst|Mux22~0_combout\ & !\inst3|Cpts[8]~6_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000101000000000000010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Mux2~0_combout\,
	datac => \inst|ALT_INV_Mux22~0_combout\,
	datad => \inst3|ALT_INV_Cpts[8]~6_combout\,
	dataf => \inst3|ALT_INV_Cpte[7]~DUPLICATE_q\,
	combout => \inst|Mux15~0_combout\);

-- Location: LABCELL_X17_Y73_N36
\inst|Mux28~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux28~5_combout\ = ( \inst3|Cpte\(2) & ( \inst3|Cpte[6]~DUPLICATE_q\ & ( (!\inst3|Cpte[5]~DUPLICATE_q\ & (((\inst3|Cpte\(1) & !\inst3|Cpte\(4))))) # (\inst3|Cpte[5]~DUPLICATE_q\ & (\inst3|Cpte\(4) & ((\inst3|Cpte\(1)) # (\inst3|Cpte\(3))))) ) ) ) # 
-- ( !\inst3|Cpte\(2) & ( \inst3|Cpte[6]~DUPLICATE_q\ & ( (\inst3|Cpte\(1) & (((\inst3|Cpte\(3) & !\inst3|Cpte\(4))) # (\inst3|Cpte[5]~DUPLICATE_q\))) ) ) ) # ( \inst3|Cpte\(2) & ( !\inst3|Cpte[6]~DUPLICATE_q\ & ( (!\inst3|Cpte\(1) & 
-- ((!\inst3|Cpte[5]~DUPLICATE_q\) # ((!\inst3|Cpte\(3) & \inst3|Cpte\(4))))) ) ) ) # ( !\inst3|Cpte\(2) & ( !\inst3|Cpte[6]~DUPLICATE_q\ & ( (!\inst3|Cpte[5]~DUPLICATE_q\ & (!\inst3|Cpte\(4) & ((!\inst3|Cpte\(3)) # (!\inst3|Cpte\(1))))) # 
-- (\inst3|Cpte[5]~DUPLICATE_q\ & (((!\inst3|Cpte\(1) & \inst3|Cpte\(4))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010100001010000101000001110000000000111000001010000101000010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Cpte[5]~DUPLICATE_q\,
	datab => \inst3|ALT_INV_Cpte\(3),
	datac => \inst3|ALT_INV_Cpte\(1),
	datad => \inst3|ALT_INV_Cpte\(4),
	datae => \inst3|ALT_INV_Cpte\(2),
	dataf => \inst3|ALT_INV_Cpte[6]~DUPLICATE_q\,
	combout => \inst|Mux28~5_combout\);

-- Location: LABCELL_X17_Y73_N18
\inst|Mux28~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux28~4_combout\ = ( \inst3|Cpte\(2) & ( \inst3|Cpte[6]~DUPLICATE_q\ & ( (!\inst3|Cpte[5]~DUPLICATE_q\ & ((!\inst3|Cpte\(4) & (\inst3|Cpte\(1) & \inst3|Cpte\(3))) # (\inst3|Cpte\(4) & ((!\inst3|Cpte\(3)))))) # (\inst3|Cpte[5]~DUPLICATE_q\ & 
-- (!\inst3|Cpte\(4))) ) ) ) # ( !\inst3|Cpte\(2) & ( \inst3|Cpte[6]~DUPLICATE_q\ & ( (!\inst3|Cpte\(1) & (\inst3|Cpte\(3) & (!\inst3|Cpte[5]~DUPLICATE_q\ $ (!\inst3|Cpte\(4))))) # (\inst3|Cpte\(1) & (!\inst3|Cpte[5]~DUPLICATE_q\ $ ((!\inst3|Cpte\(4))))) ) ) 
-- ) # ( \inst3|Cpte\(2) & ( !\inst3|Cpte[6]~DUPLICATE_q\ & ( (!\inst3|Cpte[5]~DUPLICATE_q\ & (\inst3|Cpte\(4))) # (\inst3|Cpte[5]~DUPLICATE_q\ & (!\inst3|Cpte\(4) & ((\inst3|Cpte\(3)) # (\inst3|Cpte\(1))))) ) ) ) # ( !\inst3|Cpte\(2) & ( 
-- !\inst3|Cpte[6]~DUPLICATE_q\ & ( (!\inst3|Cpte\(3) & ((!\inst3|Cpte\(4) & (!\inst3|Cpte[5]~DUPLICATE_q\ & !\inst3|Cpte\(1))) # (\inst3|Cpte\(4) & ((\inst3|Cpte\(1)))))) # (\inst3|Cpte\(3) & (!\inst3|Cpte[5]~DUPLICATE_q\ $ ((!\inst3|Cpte\(4))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000001101100110001001100110011000000110011001100110011001001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Cpte[5]~DUPLICATE_q\,
	datab => \inst3|ALT_INV_Cpte\(4),
	datac => \inst3|ALT_INV_Cpte\(1),
	datad => \inst3|ALT_INV_Cpte\(3),
	datae => \inst3|ALT_INV_Cpte\(2),
	dataf => \inst3|ALT_INV_Cpte[6]~DUPLICATE_q\,
	combout => \inst|Mux28~4_combout\);

-- Location: LABCELL_X17_Y73_N6
\inst|Mux28~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux28~6_combout\ = ( \inst|Mux28~5_combout\ & ( \inst|Mux28~4_combout\ & ( \inst3|Cpte[0]~DUPLICATE_q\ ) ) ) # ( \inst|Mux28~5_combout\ & ( !\inst|Mux28~4_combout\ ) ) # ( !\inst|Mux28~5_combout\ & ( !\inst|Mux28~4_combout\ & ( 
-- !\inst3|Cpte[0]~DUPLICATE_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst3|ALT_INV_Cpte[0]~DUPLICATE_q\,
	datae => \inst|ALT_INV_Mux28~5_combout\,
	dataf => \inst|ALT_INV_Mux28~4_combout\,
	combout => \inst|Mux28~6_combout\);

-- Location: LABCELL_X16_Y73_N24
\inst|Mux28~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux28~1_combout\ = ( \inst3|Cpte[6]~DUPLICATE_q\ & ( \inst3|Cpte\(2) & ( (!\inst3|Cpte\(3) & ((!\inst3|Cpte[5]~DUPLICATE_q\ $ (!\inst3|Cpte\(4))))) # (\inst3|Cpte\(3) & (\inst3|Cpte\(1) & ((!\inst3|Cpte\(4))))) ) ) ) # ( !\inst3|Cpte[6]~DUPLICATE_q\ 
-- & ( \inst3|Cpte\(2) & ( (!\inst3|Cpte\(3) & (\inst3|Cpte\(1) & (!\inst3|Cpte[5]~DUPLICATE_q\ & \inst3|Cpte\(4)))) # (\inst3|Cpte\(3) & ((!\inst3|Cpte[5]~DUPLICATE_q\ $ (!\inst3|Cpte\(4))))) ) ) ) # ( \inst3|Cpte[6]~DUPLICATE_q\ & ( !\inst3|Cpte\(2) & ( 
-- (!\inst3|Cpte[5]~DUPLICATE_q\ & (\inst3|Cpte\(4) & (!\inst3|Cpte\(1) $ (!\inst3|Cpte\(3))))) # (\inst3|Cpte[5]~DUPLICATE_q\ & (!\inst3|Cpte\(4) & ((\inst3|Cpte\(3)) # (\inst3|Cpte\(1))))) ) ) ) # ( !\inst3|Cpte[6]~DUPLICATE_q\ & ( !\inst3|Cpte\(2) & ( 
-- (!\inst3|Cpte\(3) & (\inst3|Cpte\(1) & ((\inst3|Cpte\(4))))) # (\inst3|Cpte\(3) & ((!\inst3|Cpte[5]~DUPLICATE_q\ $ (!\inst3|Cpte\(4))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101110100000001110110000000000011011100000001110111000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Cpte\(1),
	datab => \inst3|ALT_INV_Cpte\(3),
	datac => \inst3|ALT_INV_Cpte[5]~DUPLICATE_q\,
	datad => \inst3|ALT_INV_Cpte\(4),
	datae => \inst3|ALT_INV_Cpte[6]~DUPLICATE_q\,
	dataf => \inst3|ALT_INV_Cpte\(2),
	combout => \inst|Mux28~1_combout\);

-- Location: MLABCELL_X15_Y74_N45
\inst|Mux28~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux28~2_combout\ = ( \inst3|Cpte\(2) & ( \inst3|Cpte[3]~DUPLICATE_q\ & ( (!\inst3|Cpte\(5) & ((!\inst3|Cpte\(1) & ((\inst3|Cpte\(4)))) # (\inst3|Cpte\(1) & (\inst3|Cpte[6]~DUPLICATE_q\)))) # (\inst3|Cpte\(5) & (\inst3|Cpte[6]~DUPLICATE_q\ & 
-- (\inst3|Cpte\(4)))) ) ) ) # ( !\inst3|Cpte\(2) & ( \inst3|Cpte[3]~DUPLICATE_q\ & ( (!\inst3|Cpte\(5) & (!\inst3|Cpte\(4) & (!\inst3|Cpte[6]~DUPLICATE_q\ $ (\inst3|Cpte\(1))))) # (\inst3|Cpte\(5) & (!\inst3|Cpte\(1) $ (((\inst3|Cpte[6]~DUPLICATE_q\ & 
-- \inst3|Cpte\(4)))))) ) ) ) # ( \inst3|Cpte\(2) & ( !\inst3|Cpte[3]~DUPLICATE_q\ & ( (!\inst3|Cpte\(5) & (!\inst3|Cpte\(1) $ (((\inst3|Cpte\(4)) # (\inst3|Cpte[6]~DUPLICATE_q\))))) # (\inst3|Cpte\(5) & (\inst3|Cpte\(4) & (!\inst3|Cpte[6]~DUPLICATE_q\ $ 
-- (\inst3|Cpte\(1))))) ) ) ) # ( !\inst3|Cpte\(2) & ( !\inst3|Cpte[3]~DUPLICATE_q\ & ( (!\inst3|Cpte\(5) & (!\inst3|Cpte[6]~DUPLICATE_q\ & (!\inst3|Cpte\(4)))) # (\inst3|Cpte\(5) & ((!\inst3|Cpte\(1) & (!\inst3|Cpte[6]~DUPLICATE_q\)) # (\inst3|Cpte\(1) & 
-- ((!\inst3|Cpte\(4)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010001010110000100000100100110110110010010000010000110101000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Cpte[6]~DUPLICATE_q\,
	datab => \inst3|ALT_INV_Cpte\(5),
	datac => \inst3|ALT_INV_Cpte\(4),
	datad => \inst3|ALT_INV_Cpte\(1),
	datae => \inst3|ALT_INV_Cpte\(2),
	dataf => \inst3|ALT_INV_Cpte[3]~DUPLICATE_q\,
	combout => \inst|Mux28~2_combout\);

-- Location: LABCELL_X16_Y74_N45
\inst|Mux28~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux28~3_combout\ = ( \inst|Mux28~2_combout\ & ( (!\inst3|Cpte[0]~DUPLICATE_q\ & \inst|Mux28~1_combout\) ) ) # ( !\inst|Mux28~2_combout\ & ( (\inst|Mux28~1_combout\) # (\inst3|Cpte[0]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010111111111010101011111111100000000101010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Cpte[0]~DUPLICATE_q\,
	datad => \inst|ALT_INV_Mux28~1_combout\,
	dataf => \inst|ALT_INV_Mux28~2_combout\,
	combout => \inst|Mux28~3_combout\);

-- Location: LABCELL_X17_Y74_N15
\inst|Mux28~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux28~0_combout\ = ( \inst|Mux28~6_combout\ & ( \inst|Mux28~3_combout\ & ( ((!\inst3|Cpts[9]~2_combout\ & ((!\inst3|Cpts[8]~6_combout\) # (\inst3|Cpte[7]~DUPLICATE_q\)))) # (\inst|Mux15~0_combout\) ) ) ) # ( !\inst|Mux28~6_combout\ & ( 
-- \inst|Mux28~3_combout\ & ( ((\inst3|Cpte[7]~DUPLICATE_q\ & !\inst3|Cpts[9]~2_combout\)) # (\inst|Mux15~0_combout\) ) ) ) # ( \inst|Mux28~6_combout\ & ( !\inst|Mux28~3_combout\ & ( ((!\inst3|Cpts[9]~2_combout\ & (!\inst3|Cpts[8]~6_combout\ $ 
-- (\inst3|Cpte[7]~DUPLICATE_q\)))) # (\inst|Mux15~0_combout\) ) ) ) # ( !\inst|Mux28~6_combout\ & ( !\inst|Mux28~3_combout\ & ( ((\inst3|Cpts[8]~6_combout\ & (\inst3|Cpte[7]~DUPLICATE_q\ & !\inst3|Cpts[9]~2_combout\))) # (\inst|Mux15~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011100110011101101110011001100111111001100111011111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Cpts[8]~6_combout\,
	datab => \inst|ALT_INV_Mux15~0_combout\,
	datac => \inst3|ALT_INV_Cpte[7]~DUPLICATE_q\,
	datad => \inst3|ALT_INV_Cpts[9]~2_combout\,
	datae => \inst|ALT_INV_Mux28~6_combout\,
	dataf => \inst|ALT_INV_Mux28~3_combout\,
	combout => \inst|Mux28~0_combout\);

-- Location: FF_X17_Y74_N17
\inst|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst23|CLKs~combout\,
	d => \inst|Mux28~0_combout\,
	clrn => \inst30|Reset_n_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Q\(3));

-- Location: FF_X18_Y74_N16
\inst22|DtL[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst26|CLKs~combout\,
	asdata => \inst|Q\(3),
	sload => VCC,
	ena => \inst22|DtL[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst22|DtL\(3));

-- Location: LABCELL_X16_Y75_N0
\inst|Mux30~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux30~6_combout\ = ( \inst3|Cpte[1]~DUPLICATE_q\ & ( \inst3|Cpte\(0) & ( (!\inst3|Cpte\(2) & (!\inst3|Cpte\(6) & ((!\inst3|Cpte\(5)) # (\inst3|Cpte[4]~DUPLICATE_q\)))) # (\inst3|Cpte\(2) & ((!\inst3|Cpte\(5) & ((!\inst3|Cpte[4]~DUPLICATE_q\))) # 
-- (\inst3|Cpte\(5) & (!\inst3|Cpte\(6))))) ) ) ) # ( !\inst3|Cpte[1]~DUPLICATE_q\ & ( \inst3|Cpte\(0) & ( (!\inst3|Cpte\(6) & (\inst3|Cpte\(2) & ((\inst3|Cpte\(5))))) # (\inst3|Cpte\(6) & (((!\inst3|Cpte\(2) & !\inst3|Cpte\(5))) # 
-- (\inst3|Cpte[4]~DUPLICATE_q\))) ) ) ) # ( \inst3|Cpte[1]~DUPLICATE_q\ & ( !\inst3|Cpte\(0) & ( (!\inst3|Cpte\(6) & (!\inst3|Cpte\(2) $ ((\inst3|Cpte[4]~DUPLICATE_q\)))) # (\inst3|Cpte\(6) & (!\inst3|Cpte\(2) & ((!\inst3|Cpte[4]~DUPLICATE_q\) # 
-- (!\inst3|Cpte\(5))))) ) ) ) # ( !\inst3|Cpte[1]~DUPLICATE_q\ & ( !\inst3|Cpte\(0) & ( (!\inst3|Cpte\(2) & (!\inst3|Cpte\(5) $ (((!\inst3|Cpte[4]~DUPLICATE_q\) # (\inst3|Cpte\(6)))))) # (\inst3|Cpte\(2) & ((!\inst3|Cpte\(6) & (!\inst3|Cpte[4]~DUPLICATE_q\ 
-- & !\inst3|Cpte\(5))) # (\inst3|Cpte\(6) & (\inst3|Cpte[4]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010100111000101110001101100001001000101001001111011100000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Cpte\(6),
	datab => \inst3|ALT_INV_Cpte\(2),
	datac => \inst3|ALT_INV_Cpte[4]~DUPLICATE_q\,
	datad => \inst3|ALT_INV_Cpte\(5),
	datae => \inst3|ALT_INV_Cpte[1]~DUPLICATE_q\,
	dataf => \inst3|ALT_INV_Cpte\(0),
	combout => \inst|Mux30~6_combout\);

-- Location: LABCELL_X16_Y75_N39
\inst|Mux30~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux30~7_combout\ = ( \inst3|Cpte[1]~DUPLICATE_q\ & ( \inst3|Cpte\(0) & ( (!\inst3|Cpte\(6) & ((!\inst3|Cpte[4]~DUPLICATE_q\) # ((\inst3|Cpte\(5) & \inst3|Cpte\(2))))) # (\inst3|Cpte\(6) & (!\inst3|Cpte\(5) & (!\inst3|Cpte\(2)))) ) ) ) # ( 
-- !\inst3|Cpte[1]~DUPLICATE_q\ & ( \inst3|Cpte\(0) & ( (!\inst3|Cpte\(5) & (\inst3|Cpte\(6) & ((!\inst3|Cpte\(2)) # (!\inst3|Cpte[4]~DUPLICATE_q\)))) # (\inst3|Cpte\(5) & ((!\inst3|Cpte\(2) & ((\inst3|Cpte[4]~DUPLICATE_q\))) # (\inst3|Cpte\(2) & 
-- (\inst3|Cpte\(6))))) ) ) ) # ( \inst3|Cpte[1]~DUPLICATE_q\ & ( !\inst3|Cpte\(0) & ( (!\inst3|Cpte\(6) & (\inst3|Cpte\(2) & ((\inst3|Cpte[4]~DUPLICATE_q\) # (\inst3|Cpte\(5))))) # (\inst3|Cpte\(6) & ((!\inst3|Cpte\(2) $ (\inst3|Cpte[4]~DUPLICATE_q\)))) ) ) 
-- ) # ( !\inst3|Cpte[1]~DUPLICATE_q\ & ( !\inst3|Cpte\(0) & ( (!\inst3|Cpte\(6) & (!\inst3|Cpte[4]~DUPLICATE_q\ & ((!\inst3|Cpte\(5)) # (\inst3|Cpte\(2))))) # (\inst3|Cpte\(6) & (\inst3|Cpte\(5) & ((\inst3|Cpte[4]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000101000010001010100100000111101000101011100011110101001000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Cpte\(6),
	datab => \inst3|ALT_INV_Cpte\(5),
	datac => \inst3|ALT_INV_Cpte\(2),
	datad => \inst3|ALT_INV_Cpte[4]~DUPLICATE_q\,
	datae => \inst3|ALT_INV_Cpte[1]~DUPLICATE_q\,
	dataf => \inst3|ALT_INV_Cpte\(0),
	combout => \inst|Mux30~7_combout\);

-- Location: LABCELL_X16_Y74_N54
\inst|Mux30~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux30~8_combout\ = ( \inst|Mux30~7_combout\ & ( (\inst|Mux30~6_combout\) # (\inst3|Cpte[3]~DUPLICATE_q\) ) ) # ( !\inst|Mux30~7_combout\ & ( (!\inst3|Cpte[3]~DUPLICATE_q\ & \inst|Mux30~6_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst3|ALT_INV_Cpte[3]~DUPLICATE_q\,
	datad => \inst|ALT_INV_Mux30~6_combout\,
	dataf => \inst|ALT_INV_Mux30~7_combout\,
	combout => \inst|Mux30~8_combout\);

-- Location: MLABCELL_X15_Y76_N0
\inst|Mux30~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux30~0_combout\ = ( \inst3|Cpte[5]~DUPLICATE_q\ & ( (!\inst3|Cpte[0]~DUPLICATE_q\ & (!\inst3|Cpte\(2) $ (((\inst3|Cpte\(3) & !\inst3|Cpte\(6)))))) # (\inst3|Cpte[0]~DUPLICATE_q\ & (\inst3|Cpte\(2) & (!\inst3|Cpte\(3) $ (\inst3|Cpte\(6))))) ) ) # ( 
-- !\inst3|Cpte[5]~DUPLICATE_q\ & ( (!\inst3|Cpte\(6) & (!\inst3|Cpte\(2) $ (((!\inst3|Cpte[0]~DUPLICATE_q\))))) # (\inst3|Cpte\(6) & (((!\inst3|Cpte\(3)) # (!\inst3|Cpte[0]~DUPLICATE_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101011111100010110101111110010010100101000011001010010100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Cpte\(2),
	datab => \inst3|ALT_INV_Cpte\(3),
	datac => \inst3|ALT_INV_Cpte[0]~DUPLICATE_q\,
	datad => \inst3|ALT_INV_Cpte\(6),
	dataf => \inst3|ALT_INV_Cpte[5]~DUPLICATE_q\,
	combout => \inst|Mux30~0_combout\);

-- Location: LABCELL_X16_Y79_N6
\inst|Mux30~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux30~3_combout\ = ( \inst3|Cpte\(0) & ( \inst3|Cpte\(2) & ( (\inst3|Cpte\(4) & ((!\inst3|Cpte\(6) & ((!\inst3|Cpte\(3)) # (\inst3|Cpte[5]~DUPLICATE_q\))) # (\inst3|Cpte\(6) & ((!\inst3|Cpte[5]~DUPLICATE_q\))))) ) ) ) # ( !\inst3|Cpte\(0) & ( 
-- \inst3|Cpte\(2) & ( (\inst3|Cpte\(4) & (!\inst3|Cpte[5]~DUPLICATE_q\ & ((!\inst3|Cpte\(6)) # (\inst3|Cpte\(3))))) ) ) ) # ( \inst3|Cpte\(0) & ( !\inst3|Cpte\(2) & ( (\inst3|Cpte\(4) & ((!\inst3|Cpte[5]~DUPLICATE_q\ & (\inst3|Cpte\(6))) # 
-- (\inst3|Cpte[5]~DUPLICATE_q\ & ((\inst3|Cpte\(3)))))) ) ) ) # ( !\inst3|Cpte\(0) & ( !\inst3|Cpte\(2) & ( (\inst3|Cpte\(4) & ((!\inst3|Cpte\(3)) # (\inst3|Cpte\(6)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110100001101000001010000001100001011000000000000110100001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Cpte\(6),
	datab => \inst3|ALT_INV_Cpte\(3),
	datac => \inst3|ALT_INV_Cpte\(4),
	datad => \inst3|ALT_INV_Cpte[5]~DUPLICATE_q\,
	datae => \inst3|ALT_INV_Cpte\(0),
	dataf => \inst3|ALT_INV_Cpte\(2),
	combout => \inst|Mux30~3_combout\);

-- Location: LABCELL_X16_Y79_N36
\inst|Mux30~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux30~4_combout\ = ( \inst3|Cpte\(0) & ( \inst3|Cpte\(2) & ( (!\inst3|Cpte[5]~DUPLICATE_q\ & (((\inst3|Cpte\(3) & !\inst3|Cpte\(4))))) # (\inst3|Cpte[5]~DUPLICATE_q\ & (((\inst3|Cpte\(3) & \inst3|Cpte\(4))) # (\inst3|Cpte\(6)))) ) ) ) # ( 
-- !\inst3|Cpte\(0) & ( \inst3|Cpte\(2) & ( (!\inst3|Cpte\(3) & (!\inst3|Cpte[5]~DUPLICATE_q\ $ (((\inst3|Cpte\(4)) # (\inst3|Cpte\(6)))))) # (\inst3|Cpte\(3) & (!\inst3|Cpte[5]~DUPLICATE_q\ & (!\inst3|Cpte\(6) $ (!\inst3|Cpte\(4))))) ) ) ) # ( 
-- \inst3|Cpte\(0) & ( !\inst3|Cpte\(2) & ( (!\inst3|Cpte\(6) & (!\inst3|Cpte[5]~DUPLICATE_q\ $ (((\inst3|Cpte\(3) & \inst3|Cpte\(4)))))) # (\inst3|Cpte\(6) & ((!\inst3|Cpte\(3) & (!\inst3|Cpte\(4) & \inst3|Cpte[5]~DUPLICATE_q\)) # (\inst3|Cpte\(3) & 
-- (\inst3|Cpte\(4) & !\inst3|Cpte[5]~DUPLICATE_q\)))) ) ) ) # ( !\inst3|Cpte\(0) & ( !\inst3|Cpte\(2) & ( (!\inst3|Cpte\(3) & (\inst3|Cpte[5]~DUPLICATE_q\ & (!\inst3|Cpte\(6) $ (!\inst3|Cpte\(4))))) # (\inst3|Cpte\(3) & (!\inst3|Cpte[5]~DUPLICATE_q\ $ 
-- (((\inst3|Cpte\(6) & \inst3|Cpte\(4)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001001001001101010010100001010010010010011000011000001010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Cpte\(6),
	datab => \inst3|ALT_INV_Cpte\(3),
	datac => \inst3|ALT_INV_Cpte\(4),
	datad => \inst3|ALT_INV_Cpte[5]~DUPLICATE_q\,
	datae => \inst3|ALT_INV_Cpte\(0),
	dataf => \inst3|ALT_INV_Cpte\(2),
	combout => \inst|Mux30~4_combout\);

-- Location: LABCELL_X17_Y79_N3
\inst|Mux30~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux30~5_combout\ = ( \inst|Mux30~3_combout\ & ( \inst|Mux30~4_combout\ & ( \inst3|Cpte\(1) ) ) ) # ( !\inst|Mux30~3_combout\ & ( \inst|Mux30~4_combout\ ) ) # ( !\inst|Mux30~3_combout\ & ( !\inst|Mux30~4_combout\ & ( !\inst3|Cpte\(1) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000000000000000000011111111111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst3|ALT_INV_Cpte\(1),
	datae => \inst|ALT_INV_Mux30~3_combout\,
	dataf => \inst|ALT_INV_Mux30~4_combout\,
	combout => \inst|Mux30~5_combout\);

-- Location: LABCELL_X16_Y74_N12
\inst|Mux30~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux30~2_combout\ = ( \inst3|Cpte[7]~DUPLICATE_q\ & ( \inst|Mux30~5_combout\ & ( \inst|Mux30~8_combout\ ) ) ) # ( !\inst3|Cpte[7]~DUPLICATE_q\ & ( \inst|Mux30~5_combout\ & ( ((\inst|Mux30~0_combout\) # (\inst3|Cpte\(1))) # (\inst3|Cpte\(4)) ) ) ) # ( 
-- \inst3|Cpte[7]~DUPLICATE_q\ & ( !\inst|Mux30~5_combout\ & ( \inst|Mux30~8_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111101110111111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Cpte\(4),
	datab => \inst3|ALT_INV_Cpte\(1),
	datac => \inst|ALT_INV_Mux30~8_combout\,
	datad => \inst|ALT_INV_Mux30~0_combout\,
	datae => \inst3|ALT_INV_Cpte[7]~DUPLICATE_q\,
	dataf => \inst|ALT_INV_Mux30~5_combout\,
	combout => \inst|Mux30~2_combout\);

-- Location: LABCELL_X16_Y74_N24
\inst|Mux30~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux30~1_combout\ = ( \inst|Mux22~0_combout\ & ( \inst|Mux30~2_combout\ & ( (!\inst3|Cpts[8]~6_combout\ & ((!\inst3|Cpts[9]~2_combout\) # ((\inst3|Cpte[7]~DUPLICATE_q\ & \inst|Mux2~1_combout\)))) # (\inst3|Cpts[8]~6_combout\ & 
-- (!\inst3|Cpts[9]~2_combout\ & (\inst3|Cpte[7]~DUPLICATE_q\))) ) ) ) # ( !\inst|Mux22~0_combout\ & ( \inst|Mux30~2_combout\ & ( (!\inst3|Cpts[9]~2_combout\ & ((!\inst3|Cpts[8]~6_combout\) # (\inst3|Cpte[7]~DUPLICATE_q\))) ) ) ) # ( \inst|Mux22~0_combout\ & 
-- ( !\inst|Mux30~2_combout\ & ( (\inst3|Cpte[7]~DUPLICATE_q\ & ((!\inst3|Cpts[8]~6_combout\ & (\inst3|Cpts[9]~2_combout\ & \inst|Mux2~1_combout\)) # (\inst3|Cpts[8]~6_combout\ & (!\inst3|Cpts[9]~2_combout\)))) ) ) ) # ( !\inst|Mux22~0_combout\ & ( 
-- !\inst|Mux30~2_combout\ & ( (\inst3|Cpts[8]~6_combout\ & (!\inst3|Cpts[9]~2_combout\ & \inst3|Cpte[7]~DUPLICATE_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000011010001100100011001000110010001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Cpts[8]~6_combout\,
	datab => \inst3|ALT_INV_Cpts[9]~2_combout\,
	datac => \inst3|ALT_INV_Cpte[7]~DUPLICATE_q\,
	datad => \inst|ALT_INV_Mux2~1_combout\,
	datae => \inst|ALT_INV_Mux22~0_combout\,
	dataf => \inst|ALT_INV_Mux30~2_combout\,
	combout => \inst|Mux30~1_combout\);

-- Location: FF_X16_Y74_N26
\inst|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst23|CLKs~combout\,
	d => \inst|Mux30~1_combout\,
	clrn => \inst30|Reset_n_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Q\(1));

-- Location: FF_X18_Y74_N58
\inst22|DtL[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst26|CLKs~combout\,
	asdata => \inst|Q\(1),
	sload => VCC,
	ena => \inst22|DtL[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst22|DtL\(1));

-- Location: LABCELL_X13_Y75_N24
\inst|Mux29~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux29~5_combout\ = ( \inst3|Cpte\(2) & ( \inst3|Cpte\(1) & ( (!\inst3|Cpte\(5) & (!\inst3|Cpte\(6) & (!\inst3|Cpte[3]~DUPLICATE_q\ $ (\inst3|Cpte[4]~DUPLICATE_q\)))) # (\inst3|Cpte\(5) & (\inst3|Cpte[3]~DUPLICATE_q\ & ((!\inst3|Cpte[4]~DUPLICATE_q\) 
-- # (\inst3|Cpte\(6))))) ) ) ) # ( !\inst3|Cpte\(2) & ( \inst3|Cpte\(1) & ( (!\inst3|Cpte\(5) & (((\inst3|Cpte\(6))) # (\inst3|Cpte[3]~DUPLICATE_q\))) # (\inst3|Cpte\(5) & (\inst3|Cpte\(6) & (!\inst3|Cpte[3]~DUPLICATE_q\ $ (\inst3|Cpte[4]~DUPLICATE_q\)))) ) 
-- ) ) # ( \inst3|Cpte\(2) & ( !\inst3|Cpte\(1) & ( (!\inst3|Cpte\(5) & (!\inst3|Cpte\(6) & (!\inst3|Cpte[3]~DUPLICATE_q\ $ (\inst3|Cpte[4]~DUPLICATE_q\)))) # (\inst3|Cpte\(5) & ((!\inst3|Cpte[3]~DUPLICATE_q\) # ((!\inst3|Cpte\(6))))) ) ) ) # ( 
-- !\inst3|Cpte\(2) & ( !\inst3|Cpte\(1) & ( (!\inst3|Cpte\(5) & (!\inst3|Cpte[3]~DUPLICATE_q\ & ((!\inst3|Cpte\(6)) # (\inst3|Cpte[4]~DUPLICATE_q\)))) # (\inst3|Cpte\(5) & (\inst3|Cpte\(6) & (!\inst3|Cpte[3]~DUPLICATE_q\ $ (\inst3|Cpte[4]~DUPLICATE_q\)))) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000010010001001110101000111010000101110001010111001000100100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Cpte\(5),
	datab => \inst3|ALT_INV_Cpte[3]~DUPLICATE_q\,
	datac => \inst3|ALT_INV_Cpte\(6),
	datad => \inst3|ALT_INV_Cpte[4]~DUPLICATE_q\,
	datae => \inst3|ALT_INV_Cpte\(2),
	dataf => \inst3|ALT_INV_Cpte\(1),
	combout => \inst|Mux29~5_combout\);

-- Location: MLABCELL_X15_Y75_N24
\inst|Mux29~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux29~4_combout\ = ( \inst3|Cpte[3]~DUPLICATE_q\ & ( \inst3|Cpte[4]~DUPLICATE_q\ & ( (\inst3|Cpte[1]~DUPLICATE_q\ & !\inst3|Cpte\(5)) ) ) ) # ( !\inst3|Cpte[3]~DUPLICATE_q\ & ( \inst3|Cpte[4]~DUPLICATE_q\ & ( (!\inst3|Cpte[1]~DUPLICATE_q\ & 
-- (!\inst3|Cpte\(6) & (\inst3|Cpte\(2)))) # (\inst3|Cpte[1]~DUPLICATE_q\ & ((!\inst3|Cpte\(6) & (!\inst3|Cpte\(2) & \inst3|Cpte\(5))) # (\inst3|Cpte\(6) & (!\inst3|Cpte\(2) $ (\inst3|Cpte\(5)))))) ) ) ) # ( \inst3|Cpte[3]~DUPLICATE_q\ & ( 
-- !\inst3|Cpte[4]~DUPLICATE_q\ & ( (!\inst3|Cpte\(6) & (\inst3|Cpte[1]~DUPLICATE_q\ & (!\inst3|Cpte\(2) $ (\inst3|Cpte\(5))))) # (\inst3|Cpte\(6) & (\inst3|Cpte\(2) & ((!\inst3|Cpte[1]~DUPLICATE_q\) # (!\inst3|Cpte\(5))))) ) ) ) # ( 
-- !\inst3|Cpte[3]~DUPLICATE_q\ & ( !\inst3|Cpte[4]~DUPLICATE_q\ & ( (!\inst3|Cpte[1]~DUPLICATE_q\ & (!\inst3|Cpte\(2) & ((!\inst3|Cpte\(6)) # (\inst3|Cpte\(5))))) # (\inst3|Cpte[1]~DUPLICATE_q\ & (((\inst3|Cpte\(5))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000011110101010000110000011000011000010010010101010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Cpte[1]~DUPLICATE_q\,
	datab => \inst3|ALT_INV_Cpte\(6),
	datac => \inst3|ALT_INV_Cpte\(2),
	datad => \inst3|ALT_INV_Cpte\(5),
	datae => \inst3|ALT_INV_Cpte[3]~DUPLICATE_q\,
	dataf => \inst3|ALT_INV_Cpte[4]~DUPLICATE_q\,
	combout => \inst|Mux29~4_combout\);

-- Location: MLABCELL_X15_Y75_N57
\inst|Mux29~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux29~6_combout\ = ( \inst|Mux29~4_combout\ & ( (\inst|Mux29~5_combout\ & \inst3|Cpte[0]~DUPLICATE_q\) ) ) # ( !\inst|Mux29~4_combout\ & ( (!\inst3|Cpte[0]~DUPLICATE_q\) # (\inst|Mux29~5_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100001111111111110000111100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_Mux29~5_combout\,
	datad => \inst3|ALT_INV_Cpte[0]~DUPLICATE_q\,
	dataf => \inst|ALT_INV_Mux29~4_combout\,
	combout => \inst|Mux29~6_combout\);

-- Location: MLABCELL_X15_Y78_N24
\inst|Mux29~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux29~1_combout\ = ( \inst3|Cpte\(2) & ( \inst3|Cpte[4]~DUPLICATE_q\ & ( (!\inst3|Cpte\(3) & ((!\inst3|Cpte\(6) & (\inst3|Cpte[5]~DUPLICATE_q\ & !\inst3|Cpte\(1))) # (\inst3|Cpte\(6) & ((\inst3|Cpte\(1)))))) # (\inst3|Cpte\(3) & 
-- (((!\inst3|Cpte[5]~DUPLICATE_q\)))) ) ) ) # ( !\inst3|Cpte\(2) & ( \inst3|Cpte[4]~DUPLICATE_q\ & ( (!\inst3|Cpte\(6) & (((\inst3|Cpte[5]~DUPLICATE_q\ & !\inst3|Cpte\(3))) # (\inst3|Cpte\(1)))) # (\inst3|Cpte\(6) & ((!\inst3|Cpte\(1) & 
-- (!\inst3|Cpte[5]~DUPLICATE_q\)) # (\inst3|Cpte\(1) & ((!\inst3|Cpte\(3)))))) ) ) ) # ( \inst3|Cpte\(2) & ( !\inst3|Cpte[4]~DUPLICATE_q\ & ( (!\inst3|Cpte\(3) & ((!\inst3|Cpte\(1) & ((\inst3|Cpte[5]~DUPLICATE_q\))) # (\inst3|Cpte\(1) & (\inst3|Cpte\(6))))) 
-- # (\inst3|Cpte\(3) & (((\inst3|Cpte\(6) & !\inst3|Cpte[5]~DUPLICATE_q\)) # (\inst3|Cpte\(1)))) ) ) ) # ( !\inst3|Cpte\(2) & ( !\inst3|Cpte[4]~DUPLICATE_q\ & ( (!\inst3|Cpte\(3) & (((\inst3|Cpte[5]~DUPLICATE_q\)))) # (\inst3|Cpte\(3) & (!\inst3|Cpte\(6) & 
-- ((\inst3|Cpte\(1)) # (\inst3|Cpte[5]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001000111010001101000101111101100100111110100010110001011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Cpte\(6),
	datab => \inst3|ALT_INV_Cpte[5]~DUPLICATE_q\,
	datac => \inst3|ALT_INV_Cpte\(3),
	datad => \inst3|ALT_INV_Cpte\(1),
	datae => \inst3|ALT_INV_Cpte\(2),
	dataf => \inst3|ALT_INV_Cpte[4]~DUPLICATE_q\,
	combout => \inst|Mux29~1_combout\);

-- Location: LABCELL_X16_Y78_N42
\inst|Mux29~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux29~2_combout\ = ( \inst3|Cpte[4]~DUPLICATE_q\ & ( \inst3|Cpte\(1) & ( (!\inst3|Cpte[5]~DUPLICATE_q\ & ((!\inst3|Cpte\(3) & ((\inst3|Cpte\(2)))) # (\inst3|Cpte\(3) & (\inst3|Cpte[6]~DUPLICATE_q\)))) # (\inst3|Cpte[5]~DUPLICATE_q\ & 
-- (\inst3|Cpte[6]~DUPLICATE_q\ & (!\inst3|Cpte\(3) $ (\inst3|Cpte\(2))))) ) ) ) # ( !\inst3|Cpte[4]~DUPLICATE_q\ & ( \inst3|Cpte\(1) & ( (!\inst3|Cpte[5]~DUPLICATE_q\ & ((!\inst3|Cpte\(3) & (!\inst3|Cpte[6]~DUPLICATE_q\ & \inst3|Cpte\(2))) # 
-- (\inst3|Cpte\(3) & ((!\inst3|Cpte\(2)))))) # (\inst3|Cpte[5]~DUPLICATE_q\ & ((!\inst3|Cpte\(3) & ((!\inst3|Cpte\(2)))) # (\inst3|Cpte\(3) & ((\inst3|Cpte\(2)) # (\inst3|Cpte[6]~DUPLICATE_q\))))) ) ) ) # ( \inst3|Cpte[4]~DUPLICATE_q\ & ( !\inst3|Cpte\(1) & 
-- ( (!\inst3|Cpte[5]~DUPLICATE_q\ & ((!\inst3|Cpte\(3) & ((!\inst3|Cpte[6]~DUPLICATE_q\) # (!\inst3|Cpte\(2)))) # (\inst3|Cpte\(3) & ((\inst3|Cpte\(2)))))) # (\inst3|Cpte[5]~DUPLICATE_q\ & ((!\inst3|Cpte\(3) & ((\inst3|Cpte\(2)))) # (\inst3|Cpte\(3) & 
-- (\inst3|Cpte[6]~DUPLICATE_q\ & !\inst3|Cpte\(2))))) ) ) ) # ( !\inst3|Cpte[4]~DUPLICATE_q\ & ( !\inst3|Cpte\(1) & ( (!\inst3|Cpte[5]~DUPLICATE_q\ & (!\inst3|Cpte[6]~DUPLICATE_q\ & (!\inst3|Cpte\(3) $ (\inst3|Cpte\(2))))) # (\inst3|Cpte[5]~DUPLICATE_q\ & 
-- ((!\inst3|Cpte\(3) & (!\inst3|Cpte[6]~DUPLICATE_q\)) # (\inst3|Cpte\(3) & ((!\inst3|Cpte\(2)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101000101100000100010011110011001100111100100010000011010001011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Cpte[5]~DUPLICATE_q\,
	datab => \inst3|ALT_INV_Cpte\(3),
	datac => \inst3|ALT_INV_Cpte[6]~DUPLICATE_q\,
	datad => \inst3|ALT_INV_Cpte\(2),
	datae => \inst3|ALT_INV_Cpte[4]~DUPLICATE_q\,
	dataf => \inst3|ALT_INV_Cpte\(1),
	combout => \inst|Mux29~2_combout\);

-- Location: LABCELL_X16_Y78_N39
\inst|Mux29~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux29~3_combout\ = ( \inst|Mux29~2_combout\ & ( (!\inst3|Cpte[0]~DUPLICATE_q\ & \inst|Mux29~1_combout\) ) ) # ( !\inst|Mux29~2_combout\ & ( (\inst|Mux29~1_combout\) # (\inst3|Cpte[0]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100111111001111110011111100001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ALT_INV_Cpte[0]~DUPLICATE_q\,
	datac => \inst|ALT_INV_Mux29~1_combout\,
	dataf => \inst|ALT_INV_Mux29~2_combout\,
	combout => \inst|Mux29~3_combout\);

-- Location: LABCELL_X17_Y75_N30
\inst|Mux29~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux29~0_combout\ = ( \inst|Mux29~6_combout\ & ( \inst|Mux29~3_combout\ & ( ((!\inst3|Cpts[9]~2_combout\ & ((!\inst3|Cpts[8]~6_combout\) # (\inst3|Cpte[7]~DUPLICATE_q\)))) # (\inst|Mux15~0_combout\) ) ) ) # ( !\inst|Mux29~6_combout\ & ( 
-- \inst|Mux29~3_combout\ & ( ((!\inst3|Cpts[9]~2_combout\ & \inst3|Cpte[7]~DUPLICATE_q\)) # (\inst|Mux15~0_combout\) ) ) ) # ( \inst|Mux29~6_combout\ & ( !\inst|Mux29~3_combout\ & ( ((!\inst3|Cpts[9]~2_combout\ & (!\inst3|Cpts[8]~6_combout\ $ 
-- (\inst3|Cpte[7]~DUPLICATE_q\)))) # (\inst|Mux15~0_combout\) ) ) ) # ( !\inst|Mux29~6_combout\ & ( !\inst|Mux29~3_combout\ & ( ((\inst3|Cpts[8]~6_combout\ & (!\inst3|Cpts[9]~2_combout\ & \inst3|Cpte[7]~DUPLICATE_q\))) # (\inst|Mux15~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101110011101100110111001100110011111100111011001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Cpts[8]~6_combout\,
	datab => \inst|ALT_INV_Mux15~0_combout\,
	datac => \inst3|ALT_INV_Cpts[9]~2_combout\,
	datad => \inst3|ALT_INV_Cpte[7]~DUPLICATE_q\,
	datae => \inst|ALT_INV_Mux29~6_combout\,
	dataf => \inst|ALT_INV_Mux29~3_combout\,
	combout => \inst|Mux29~0_combout\);

-- Location: FF_X17_Y75_N32
\inst|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst23|CLKs~combout\,
	d => \inst|Mux29~0_combout\,
	clrn => \inst30|Reset_n_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Q\(2));

-- Location: FF_X17_Y75_N29
\inst22|DtL[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst26|CLKs~combout\,
	asdata => \inst|Q\(2),
	sload => VCC,
	ena => \inst22|DtL[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst22|DtL\(2));

-- Location: LABCELL_X18_Y76_N12
\inst22|S~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst22|S~5_combout\ = ( \inst22|Cpte\(0) & ( (\inst22|Cpte\(1) & \inst22|Cpte[2]~DUPLICATE_q\) ) ) # ( !\inst22|Cpte\(0) & ( \inst22|Cpte[2]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst22|ALT_INV_Cpte\(1),
	datad => \inst22|ALT_INV_Cpte[2]~DUPLICATE_q\,
	dataf => \inst22|ALT_INV_Cpte\(0),
	combout => \inst22|S~5_combout\);

-- Location: LABCELL_X17_Y75_N36
\inst|Mux24~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux24~3_combout\ = ( \inst3|Cpte\(1) & ( \inst3|Cpte\(3) & ( (!\inst3|Cpte\(6) & (((!\inst3|Cpte\(4) & !\inst3|Cpte\(2))))) # (\inst3|Cpte\(6) & ((!\inst3|Cpte\(4) $ (!\inst3|Cpte\(2))) # (\inst3|Cpte[5]~DUPLICATE_q\))) ) ) ) # ( !\inst3|Cpte\(1) & 
-- ( \inst3|Cpte\(3) & ( (!\inst3|Cpte[5]~DUPLICATE_q\ & (!\inst3|Cpte\(4))) # (\inst3|Cpte[5]~DUPLICATE_q\ & ((!\inst3|Cpte\(2) & (\inst3|Cpte\(4))) # (\inst3|Cpte\(2) & ((\inst3|Cpte\(6)))))) ) ) ) # ( \inst3|Cpte\(1) & ( !\inst3|Cpte\(3) & ( 
-- (!\inst3|Cpte\(6) & ((!\inst3|Cpte[5]~DUPLICATE_q\) # (!\inst3|Cpte\(4) $ (!\inst3|Cpte\(2))))) # (\inst3|Cpte\(6) & (((\inst3|Cpte\(4) & \inst3|Cpte\(2))))) ) ) ) # ( !\inst3|Cpte\(1) & ( !\inst3|Cpte\(3) & ( (!\inst3|Cpte[5]~DUPLICATE_q\ & 
-- ((!\inst3|Cpte\(2) & (\inst3|Cpte\(4))) # (\inst3|Cpte\(2) & ((!\inst3|Cpte\(6)))))) # (\inst3|Cpte[5]~DUPLICATE_q\ & (\inst3|Cpte\(4))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011101100110001101111100000001110011000100111011100000001111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Cpte[5]~DUPLICATE_q\,
	datab => \inst3|ALT_INV_Cpte\(4),
	datac => \inst3|ALT_INV_Cpte\(2),
	datad => \inst3|ALT_INV_Cpte\(6),
	datae => \inst3|ALT_INV_Cpte\(1),
	dataf => \inst3|ALT_INV_Cpte\(3),
	combout => \inst|Mux24~3_combout\);

-- Location: LABCELL_X17_Y75_N12
\inst|Mux24~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux24~4_combout\ = ( \inst3|Cpte\(1) & ( \inst3|Cpte\(3) & ( (!\inst3|Cpte\(2) & (((\inst3|Cpte\(4) & \inst3|Cpte\(6))))) # (\inst3|Cpte\(2) & (!\inst3|Cpte\(6) & ((!\inst3|Cpte[5]~DUPLICATE_q\) # (!\inst3|Cpte\(4))))) ) ) ) # ( !\inst3|Cpte\(1) & ( 
-- \inst3|Cpte\(3) & ( (!\inst3|Cpte[5]~DUPLICATE_q\ & (!\inst3|Cpte\(6) $ (((\inst3|Cpte\(4) & \inst3|Cpte\(2)))))) # (\inst3|Cpte[5]~DUPLICATE_q\ & (((!\inst3|Cpte\(4) & !\inst3|Cpte\(2))) # (\inst3|Cpte\(6)))) ) ) ) # ( \inst3|Cpte\(1) & ( 
-- !\inst3|Cpte\(3) & ( (!\inst3|Cpte[5]~DUPLICATE_q\ & ((!\inst3|Cpte\(6)) # ((\inst3|Cpte\(4) & \inst3|Cpte\(2))))) # (\inst3|Cpte[5]~DUPLICATE_q\ & (!\inst3|Cpte\(6) $ (((\inst3|Cpte\(2)) # (\inst3|Cpte\(4)))))) ) ) ) # ( !\inst3|Cpte\(1) & ( 
-- !\inst3|Cpte\(3) & ( (!\inst3|Cpte\(2) & (\inst3|Cpte\(6) & ((\inst3|Cpte\(4)) # (\inst3|Cpte[5]~DUPLICATE_q\)))) # (\inst3|Cpte\(2) & (((!\inst3|Cpte\(4) & !\inst3|Cpte\(6))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110001110000111010100001011111101000010101110000111000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Cpte[5]~DUPLICATE_q\,
	datab => \inst3|ALT_INV_Cpte\(4),
	datac => \inst3|ALT_INV_Cpte\(2),
	datad => \inst3|ALT_INV_Cpte\(6),
	datae => \inst3|ALT_INV_Cpte\(1),
	dataf => \inst3|ALT_INV_Cpte\(3),
	combout => \inst|Mux24~4_combout\);

-- Location: LABCELL_X17_Y75_N3
\inst|Mux24~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux24~5_combout\ = ( \inst|Mux24~4_combout\ & ( (\inst|Mux24~3_combout\) # (\inst3|Cpte\(0)) ) ) # ( !\inst|Mux24~4_combout\ & ( (!\inst3|Cpte\(0) & \inst|Mux24~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ALT_INV_Cpte\(0),
	datad => \inst|ALT_INV_Mux24~3_combout\,
	dataf => \inst|ALT_INV_Mux24~4_combout\,
	combout => \inst|Mux24~5_combout\);

-- Location: MLABCELL_X15_Y75_N54
\inst|Mux24~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux24~0_combout\ = ( \inst3|Cpte\(3) & ( (!\inst3|Cpte\(6) & ((!\inst3|Cpte[1]~DUPLICATE_q\ & ((!\inst3|Cpte[5]~DUPLICATE_q\))) # (\inst3|Cpte[1]~DUPLICATE_q\ & (!\inst3|Cpte\(2))))) # (\inst3|Cpte\(6) & ((!\inst3|Cpte[5]~DUPLICATE_q\ $ 
-- (\inst3|Cpte[1]~DUPLICATE_q\)) # (\inst3|Cpte\(2)))) ) ) # ( !\inst3|Cpte\(3) & ( (!\inst3|Cpte\(6) & ((!\inst3|Cpte[5]~DUPLICATE_q\) # ((\inst3|Cpte\(2) & \inst3|Cpte[1]~DUPLICATE_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000100110000001100010011110001100110111111000110011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Cpte\(2),
	datab => \inst3|ALT_INV_Cpte\(6),
	datac => \inst3|ALT_INV_Cpte[5]~DUPLICATE_q\,
	datad => \inst3|ALT_INV_Cpte[1]~DUPLICATE_q\,
	dataf => \inst3|ALT_INV_Cpte\(3),
	combout => \inst|Mux24~0_combout\);

-- Location: LABCELL_X17_Y75_N9
\inst|Mux24~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux24~2_combout\ = ( \inst|Mux24~0_combout\ & ( (!\inst|Mux24~5_combout\ & (!\inst3|Cpte[7]~DUPLICATE_q\ & ((\inst3|Cpte\(0)) # (\inst3|Cpte\(4))))) # (\inst|Mux24~5_combout\ & (\inst3|Cpte[7]~DUPLICATE_q\)) ) ) # ( !\inst|Mux24~0_combout\ & ( 
-- (!\inst|Mux24~5_combout\ & (!\inst3|Cpte[7]~DUPLICATE_q\)) # (\inst|Mux24~5_combout\ & (((!\inst3|Cpte\(4) & !\inst3|Cpte\(0))) # (\inst3|Cpte[7]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101100110011001110110011001100100011001100110010001100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Mux24~5_combout\,
	datab => \inst3|ALT_INV_Cpte[7]~DUPLICATE_q\,
	datac => \inst3|ALT_INV_Cpte\(4),
	datad => \inst3|ALT_INV_Cpte\(0),
	dataf => \inst|ALT_INV_Mux24~0_combout\,
	combout => \inst|Mux24~2_combout\);

-- Location: LABCELL_X17_Y77_N42
\inst|Mux24~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux24~1_combout\ = ( \inst|Mux22~0_combout\ & ( \inst3|Cpts[9]~2_combout\ & ( (!\inst3|Cpts[8]~6_combout\ & (\inst|Mux2~0_combout\ & \inst3|Cpte[7]~DUPLICATE_q\)) ) ) ) # ( \inst|Mux22~0_combout\ & ( !\inst3|Cpts[9]~2_combout\ & ( 
-- (!\inst3|Cpts[8]~6_combout\ & (((\inst|Mux2~0_combout\ & \inst3|Cpte[7]~DUPLICATE_q\)) # (\inst|Mux24~2_combout\))) # (\inst3|Cpts[8]~6_combout\ & (((\inst3|Cpte[7]~DUPLICATE_q\)))) ) ) ) # ( !\inst|Mux22~0_combout\ & ( !\inst3|Cpts[9]~2_combout\ & ( 
-- (!\inst3|Cpts[8]~6_combout\ & ((\inst|Mux24~2_combout\))) # (\inst3|Cpts[8]~6_combout\ & (\inst3|Cpte[7]~DUPLICATE_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110101111000001111010111100000000000000000000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Cpts[8]~6_combout\,
	datab => \inst|ALT_INV_Mux2~0_combout\,
	datac => \inst3|ALT_INV_Cpte[7]~DUPLICATE_q\,
	datad => \inst|ALT_INV_Mux24~2_combout\,
	datae => \inst|ALT_INV_Mux22~0_combout\,
	dataf => \inst3|ALT_INV_Cpts[9]~2_combout\,
	combout => \inst|Mux24~1_combout\);

-- Location: FF_X17_Y77_N44
\inst|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst23|CLKs~combout\,
	d => \inst|Mux24~1_combout\,
	clrn => \inst30|Reset_n_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Q\(7));

-- Location: FF_X17_Y75_N56
\inst22|DtL[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst26|CLKs~combout\,
	asdata => \inst|Q\(7),
	sload => VCC,
	ena => \inst22|DtL[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst22|DtL\(7));

-- Location: MLABCELL_X15_Y78_N30
\inst|Mux25~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux25~0_combout\ = ( \inst3|Cpte[4]~DUPLICATE_q\ & ( (!\inst3|Cpte\(3) & (!\inst3|Cpte\(6) $ (((\inst3|Cpte[5]~DUPLICATE_q\) # (\inst3|Cpte\(1)))))) # (\inst3|Cpte\(3) & ((!\inst3|Cpte[5]~DUPLICATE_q\ & ((!\inst3|Cpte\(6)))) # 
-- (\inst3|Cpte[5]~DUPLICATE_q\ & (\inst3|Cpte\(1))))) ) ) # ( !\inst3|Cpte[4]~DUPLICATE_q\ & ( (!\inst3|Cpte[5]~DUPLICATE_q\ & (!\inst3|Cpte\(1) $ (((!\inst3|Cpte\(6)) # (\inst3|Cpte\(3)))))) # (\inst3|Cpte[5]~DUPLICATE_q\ & (\inst3|Cpte\(6) & 
-- ((\inst3|Cpte\(1)) # (\inst3|Cpte\(3))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011100100000111001110010000011111010010000110111101001000011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Cpte\(3),
	datab => \inst3|ALT_INV_Cpte\(1),
	datac => \inst3|ALT_INV_Cpte\(6),
	datad => \inst3|ALT_INV_Cpte[5]~DUPLICATE_q\,
	dataf => \inst3|ALT_INV_Cpte[4]~DUPLICATE_q\,
	combout => \inst|Mux25~0_combout\);

-- Location: MLABCELL_X15_Y78_N0
\inst|Mux25~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux25~4_combout\ = ( \inst3|Cpte\(2) & ( \inst3|Cpte[4]~DUPLICATE_q\ & ( (!\inst3|Cpte\(3) & ((!\inst3|Cpte[5]~DUPLICATE_q\ & ((\inst3|Cpte\(1)))) # (\inst3|Cpte[5]~DUPLICATE_q\ & (\inst3|Cpte\(6))))) # (\inst3|Cpte\(3) & 
-- (!\inst3|Cpte[5]~DUPLICATE_q\ $ (((\inst3|Cpte\(6) & !\inst3|Cpte\(1)))))) ) ) ) # ( !\inst3|Cpte\(2) & ( \inst3|Cpte[4]~DUPLICATE_q\ & ( (!\inst3|Cpte\(3) & (!\inst3|Cpte\(1) & ((\inst3|Cpte\(6)) # (\inst3|Cpte[5]~DUPLICATE_q\)))) # (\inst3|Cpte\(3) & 
-- (\inst3|Cpte[5]~DUPLICATE_q\ & ((!\inst3|Cpte\(6)) # (!\inst3|Cpte\(1))))) ) ) ) # ( \inst3|Cpte\(2) & ( !\inst3|Cpte[4]~DUPLICATE_q\ & ( (!\inst3|Cpte\(3) & (!\inst3|Cpte[5]~DUPLICATE_q\ & ((\inst3|Cpte\(1)) # (\inst3|Cpte\(6))))) # (\inst3|Cpte\(3) & 
-- (\inst3|Cpte\(1) & ((!\inst3|Cpte[5]~DUPLICATE_q\) # (!\inst3|Cpte\(6))))) ) ) ) # ( !\inst3|Cpte\(2) & ( !\inst3|Cpte[4]~DUPLICATE_q\ & ( (!\inst3|Cpte\(3) & (!\inst3|Cpte[5]~DUPLICATE_q\ $ (((!\inst3|Cpte\(1)) # (\inst3|Cpte\(6)))))) # (\inst3|Cpte\(3) 
-- & ((!\inst3|Cpte[5]~DUPLICATE_q\ & (!\inst3|Cpte\(6))) # (\inst3|Cpte[5]~DUPLICATE_q\ & ((!\inst3|Cpte\(1)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111001111000010000010001101110000111011000100000100001111001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Cpte\(3),
	datab => \inst3|ALT_INV_Cpte[5]~DUPLICATE_q\,
	datac => \inst3|ALT_INV_Cpte\(6),
	datad => \inst3|ALT_INV_Cpte\(1),
	datae => \inst3|ALT_INV_Cpte\(2),
	dataf => \inst3|ALT_INV_Cpte[4]~DUPLICATE_q\,
	combout => \inst|Mux25~4_combout\);

-- Location: MLABCELL_X15_Y78_N42
\inst|Mux25~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux25~3_combout\ = ( \inst3|Cpte\(6) & ( \inst3|Cpte[4]~DUPLICATE_q\ & ( (!\inst3|Cpte\(3) & (!\inst3|Cpte[5]~DUPLICATE_q\ & (!\inst3|Cpte\(1) $ (\inst3|Cpte\(2))))) # (\inst3|Cpte\(3) & ((!\inst3|Cpte[5]~DUPLICATE_q\) # ((!\inst3|Cpte\(1) & 
-- !\inst3|Cpte\(2))))) ) ) ) # ( !\inst3|Cpte\(6) & ( \inst3|Cpte[4]~DUPLICATE_q\ & ( (!\inst3|Cpte\(2) & ((!\inst3|Cpte\(1) & ((\inst3|Cpte[5]~DUPLICATE_q\))) # (\inst3|Cpte\(1) & (!\inst3|Cpte\(3))))) # (\inst3|Cpte\(2) & (\inst3|Cpte\(3) & 
-- ((!\inst3|Cpte\(1)) # (\inst3|Cpte[5]~DUPLICATE_q\)))) ) ) ) # ( \inst3|Cpte\(6) & ( !\inst3|Cpte[4]~DUPLICATE_q\ & ( (!\inst3|Cpte\(3) & (!\inst3|Cpte\(1) $ (((!\inst3|Cpte\(2) & !\inst3|Cpte[5]~DUPLICATE_q\))))) # (\inst3|Cpte\(3) & ((!\inst3|Cpte\(1) & 
-- (!\inst3|Cpte\(2) & !\inst3|Cpte[5]~DUPLICATE_q\)) # (\inst3|Cpte\(1) & (\inst3|Cpte\(2))))) ) ) ) # ( !\inst3|Cpte\(6) & ( !\inst3|Cpte[4]~DUPLICATE_q\ & ( (!\inst3|Cpte\(3) & (((\inst3|Cpte[5]~DUPLICATE_q\)))) # (\inst3|Cpte\(3) & (!\inst3|Cpte\(2) & 
-- ((!\inst3|Cpte\(1)) # (\inst3|Cpte[5]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000011111010011010011000100100100100111001011101011101000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Cpte\(3),
	datab => \inst3|ALT_INV_Cpte\(1),
	datac => \inst3|ALT_INV_Cpte\(2),
	datad => \inst3|ALT_INV_Cpte[5]~DUPLICATE_q\,
	datae => \inst3|ALT_INV_Cpte\(6),
	dataf => \inst3|ALT_INV_Cpte[4]~DUPLICATE_q\,
	combout => \inst|Mux25~3_combout\);

-- Location: MLABCELL_X15_Y78_N9
\inst|Mux25~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux25~5_combout\ = ( \inst|Mux25~4_combout\ & ( \inst|Mux25~3_combout\ & ( !\inst3|Cpte[0]~DUPLICATE_q\ ) ) ) # ( !\inst|Mux25~4_combout\ & ( \inst|Mux25~3_combout\ ) ) # ( !\inst|Mux25~4_combout\ & ( !\inst|Mux25~3_combout\ & ( 
-- \inst3|Cpte[0]~DUPLICATE_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000011111111111111111111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst3|ALT_INV_Cpte[0]~DUPLICATE_q\,
	datae => \inst|ALT_INV_Mux25~4_combout\,
	dataf => \inst|ALT_INV_Mux25~3_combout\,
	combout => \inst|Mux25~5_combout\);

-- Location: MLABCELL_X15_Y78_N18
\inst|Mux25~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux25~2_combout\ = ( \inst3|Cpte[0]~DUPLICATE_q\ & ( \inst|Mux25~5_combout\ & ( \inst3|Cpte[7]~DUPLICATE_q\ ) ) ) # ( !\inst3|Cpte[0]~DUPLICATE_q\ & ( \inst|Mux25~5_combout\ & ( ((!\inst3|Cpte\(2) & \inst|Mux25~0_combout\)) # 
-- (\inst3|Cpte[7]~DUPLICATE_q\) ) ) ) # ( \inst3|Cpte[0]~DUPLICATE_q\ & ( !\inst|Mux25~5_combout\ & ( !\inst3|Cpte[7]~DUPLICATE_q\ ) ) ) # ( !\inst3|Cpte[0]~DUPLICATE_q\ & ( !\inst|Mux25~5_combout\ & ( (!\inst3|Cpte[7]~DUPLICATE_q\ & 
-- ((\inst|Mux25~0_combout\) # (\inst3|Cpte\(2)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110011001100110011001100110000110011111100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ALT_INV_Cpte[7]~DUPLICATE_q\,
	datac => \inst3|ALT_INV_Cpte\(2),
	datad => \inst|ALT_INV_Mux25~0_combout\,
	datae => \inst3|ALT_INV_Cpte[0]~DUPLICATE_q\,
	dataf => \inst|ALT_INV_Mux25~5_combout\,
	combout => \inst|Mux25~2_combout\);

-- Location: LABCELL_X16_Y79_N24
\inst|Mux25~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux25~1_combout\ = ( \inst|Mux22~0_combout\ & ( \inst3|Cpts[9]~2_combout\ & ( (!\inst3|Cpts[8]~6_combout\ & (\inst|Mux2~0_combout\ & \inst3|Cpte[7]~DUPLICATE_q\)) ) ) ) # ( \inst|Mux22~0_combout\ & ( !\inst3|Cpts[9]~2_combout\ & ( 
-- (!\inst3|Cpts[8]~6_combout\ & (((\inst|Mux2~0_combout\ & \inst3|Cpte[7]~DUPLICATE_q\)) # (\inst|Mux25~2_combout\))) # (\inst3|Cpts[8]~6_combout\ & (((\inst3|Cpte[7]~DUPLICATE_q\)))) ) ) ) # ( !\inst|Mux22~0_combout\ & ( !\inst3|Cpts[9]~2_combout\ & ( 
-- (!\inst3|Cpts[8]~6_combout\ & ((\inst|Mux25~2_combout\))) # (\inst3|Cpts[8]~6_combout\ & (\inst3|Cpte[7]~DUPLICATE_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110101111000001111010111100000000000000000000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Cpts[8]~6_combout\,
	datab => \inst|ALT_INV_Mux2~0_combout\,
	datac => \inst3|ALT_INV_Cpte[7]~DUPLICATE_q\,
	datad => \inst|ALT_INV_Mux25~2_combout\,
	datae => \inst|ALT_INV_Mux22~0_combout\,
	dataf => \inst3|ALT_INV_Cpts[9]~2_combout\,
	combout => \inst|Mux25~1_combout\);

-- Location: FF_X16_Y79_N26
\inst|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst23|CLKs~combout\,
	d => \inst|Mux25~1_combout\,
	clrn => \inst30|Reset_n_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Q\(6));

-- Location: FF_X17_Y77_N17
\inst22|DtL[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst26|CLKs~combout\,
	asdata => \inst|Q\(6),
	sload => VCC,
	ena => \inst22|DtL[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst22|DtL\(6));

-- Location: LABCELL_X17_Y78_N0
\inst|Mux26~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux26~6_combout\ = ( \inst3|Cpte[6]~DUPLICATE_q\ & ( \inst3|Cpte[4]~DUPLICATE_q\ & ( (\inst3|Cpte\(2) & ((!\inst3|Cpte[5]~DUPLICATE_q\ & ((!\inst3|Cpte[0]~DUPLICATE_q\))) # (\inst3|Cpte[5]~DUPLICATE_q\ & (!\inst3|Cpte[1]~DUPLICATE_q\)))) ) ) ) # ( 
-- !\inst3|Cpte[6]~DUPLICATE_q\ & ( \inst3|Cpte[4]~DUPLICATE_q\ & ( (\inst3|Cpte\(2) & ((!\inst3|Cpte[5]~DUPLICATE_q\ & (\inst3|Cpte[1]~DUPLICATE_q\ & \inst3|Cpte[0]~DUPLICATE_q\)) # (\inst3|Cpte[5]~DUPLICATE_q\ & (!\inst3|Cpte[1]~DUPLICATE_q\)))) ) ) ) # ( 
-- \inst3|Cpte[6]~DUPLICATE_q\ & ( !\inst3|Cpte[4]~DUPLICATE_q\ & ( (\inst3|Cpte\(2) & (!\inst3|Cpte[1]~DUPLICATE_q\ & ((!\inst3|Cpte[5]~DUPLICATE_q\) # (!\inst3|Cpte[0]~DUPLICATE_q\)))) ) ) ) # ( !\inst3|Cpte[6]~DUPLICATE_q\ & ( !\inst3|Cpte[4]~DUPLICATE_q\ 
-- & ( (\inst3|Cpte\(2) & ((!\inst3|Cpte[1]~DUPLICATE_q\ & (!\inst3|Cpte[5]~DUPLICATE_q\ & !\inst3|Cpte[0]~DUPLICATE_q\)) # (\inst3|Cpte[1]~DUPLICATE_q\ & ((\inst3|Cpte[0]~DUPLICATE_q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000101010100000100000000010000000101000101010000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Cpte\(2),
	datab => \inst3|ALT_INV_Cpte[5]~DUPLICATE_q\,
	datac => \inst3|ALT_INV_Cpte[1]~DUPLICATE_q\,
	datad => \inst3|ALT_INV_Cpte[0]~DUPLICATE_q\,
	datae => \inst3|ALT_INV_Cpte[6]~DUPLICATE_q\,
	dataf => \inst3|ALT_INV_Cpte[4]~DUPLICATE_q\,
	combout => \inst|Mux26~6_combout\);

-- Location: LABCELL_X17_Y78_N30
\inst|Mux26~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux26~7_combout\ = ( \inst3|Cpte[0]~DUPLICATE_q\ & ( \inst3|Cpte[4]~DUPLICATE_q\ & ( (!\inst3|Cpte[1]~DUPLICATE_q\ & (\inst3|Cpte[6]~DUPLICATE_q\ & ((!\inst3|Cpte\(2)) # (\inst3|Cpte[5]~DUPLICATE_q\)))) # (\inst3|Cpte[1]~DUPLICATE_q\ & 
-- (!\inst3|Cpte[6]~DUPLICATE_q\ & ((\inst3|Cpte\(2)) # (\inst3|Cpte[5]~DUPLICATE_q\)))) ) ) ) # ( !\inst3|Cpte[0]~DUPLICATE_q\ & ( \inst3|Cpte[4]~DUPLICATE_q\ & ( (\inst3|Cpte\(2) & ((!\inst3|Cpte[6]~DUPLICATE_q\) # (!\inst3|Cpte[1]~DUPLICATE_q\ $ 
-- (!\inst3|Cpte[5]~DUPLICATE_q\)))) ) ) ) # ( \inst3|Cpte[0]~DUPLICATE_q\ & ( !\inst3|Cpte[4]~DUPLICATE_q\ & ( (!\inst3|Cpte[5]~DUPLICATE_q\ & (\inst3|Cpte[1]~DUPLICATE_q\ & ((!\inst3|Cpte\(2)) # (\inst3|Cpte[6]~DUPLICATE_q\)))) # 
-- (\inst3|Cpte[5]~DUPLICATE_q\ & (!\inst3|Cpte\(2) $ (((!\inst3|Cpte[6]~DUPLICATE_q\) # (\inst3|Cpte[1]~DUPLICATE_q\))))) ) ) ) # ( !\inst3|Cpte[0]~DUPLICATE_q\ & ( !\inst3|Cpte[4]~DUPLICATE_q\ & ( (!\inst3|Cpte[1]~DUPLICATE_q\ & (\inst3|Cpte\(2) & 
-- ((!\inst3|Cpte[5]~DUPLICATE_q\) # (!\inst3|Cpte[6]~DUPLICATE_q\)))) # (\inst3|Cpte[1]~DUPLICATE_q\ & ((!\inst3|Cpte[6]~DUPLICATE_q\ & (\inst3|Cpte[5]~DUPLICATE_q\)) # (\inst3|Cpte[6]~DUPLICATE_q\ & ((\inst3|Cpte\(2)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100001101010000110110010100001111000001100001010110100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Cpte[1]~DUPLICATE_q\,
	datab => \inst3|ALT_INV_Cpte[5]~DUPLICATE_q\,
	datac => \inst3|ALT_INV_Cpte\(2),
	datad => \inst3|ALT_INV_Cpte[6]~DUPLICATE_q\,
	datae => \inst3|ALT_INV_Cpte[0]~DUPLICATE_q\,
	dataf => \inst3|ALT_INV_Cpte[4]~DUPLICATE_q\,
	combout => \inst|Mux26~7_combout\);

-- Location: LABCELL_X17_Y78_N39
\inst|Mux26~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux26~8_combout\ = ( \inst|Mux26~7_combout\ & ( (!\inst3|Cpte[3]~DUPLICATE_q\ & !\inst|Mux26~6_combout\) ) ) # ( !\inst|Mux26~7_combout\ & ( (!\inst|Mux26~6_combout\) # (\inst3|Cpte[3]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100001111111111110000111111110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst3|ALT_INV_Cpte[3]~DUPLICATE_q\,
	datad => \inst|ALT_INV_Mux26~6_combout\,
	dataf => \inst|ALT_INV_Mux26~7_combout\,
	combout => \inst|Mux26~8_combout\);

-- Location: LABCELL_X16_Y78_N18
\inst|Mux26~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux26~0_combout\ = ( \inst3|Cpte[0]~DUPLICATE_q\ & ( (!\inst3|Cpte\(1) & ((!\inst3|Cpte[6]~DUPLICATE_q\ & ((!\inst3|Cpte[4]~DUPLICATE_q\))) # (\inst3|Cpte[6]~DUPLICATE_q\ & (\inst3|Cpte[5]~DUPLICATE_q\ & \inst3|Cpte[4]~DUPLICATE_q\)))) # 
-- (\inst3|Cpte\(1) & ((!\inst3|Cpte[6]~DUPLICATE_q\ $ (!\inst3|Cpte[4]~DUPLICATE_q\)) # (\inst3|Cpte[5]~DUPLICATE_q\))) ) ) # ( !\inst3|Cpte[0]~DUPLICATE_q\ & ( (!\inst3|Cpte[5]~DUPLICATE_q\ & ((!\inst3|Cpte\(1) & (\inst3|Cpte[6]~DUPLICATE_q\)) # 
-- (\inst3|Cpte\(1) & (!\inst3|Cpte[6]~DUPLICATE_q\ & !\inst3|Cpte[4]~DUPLICATE_q\)))) # (\inst3|Cpte[5]~DUPLICATE_q\ & (\inst3|Cpte[4]~DUPLICATE_q\ & (!\inst3|Cpte\(1) $ (\inst3|Cpte[6]~DUPLICATE_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010100001001001001010000100100111010011001101011101001100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Cpte[5]~DUPLICATE_q\,
	datab => \inst3|ALT_INV_Cpte\(1),
	datac => \inst3|ALT_INV_Cpte[6]~DUPLICATE_q\,
	datad => \inst3|ALT_INV_Cpte[4]~DUPLICATE_q\,
	dataf => \inst3|ALT_INV_Cpte[0]~DUPLICATE_q\,
	combout => \inst|Mux26~0_combout\);

-- Location: LABCELL_X17_Y78_N54
\inst|Mux26~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux26~3_combout\ = ( \inst3|Cpte\(2) & ( \inst3|Cpte[4]~DUPLICATE_q\ & ( (!\inst3|Cpte[5]~DUPLICATE_q\ & ((!\inst3|Cpte[0]~DUPLICATE_q\ & ((!\inst3|Cpte[6]~DUPLICATE_q\))) # (\inst3|Cpte[0]~DUPLICATE_q\ & (!\inst3|Cpte[1]~DUPLICATE_q\)))) # 
-- (\inst3|Cpte[5]~DUPLICATE_q\ & (\inst3|Cpte[1]~DUPLICATE_q\)) ) ) ) # ( !\inst3|Cpte\(2) & ( \inst3|Cpte[4]~DUPLICATE_q\ & ( (!\inst3|Cpte[6]~DUPLICATE_q\ & ((!\inst3|Cpte[1]~DUPLICATE_q\ & (\inst3|Cpte[5]~DUPLICATE_q\ & !\inst3|Cpte[0]~DUPLICATE_q\)) # 
-- (\inst3|Cpte[1]~DUPLICATE_q\ & ((\inst3|Cpte[0]~DUPLICATE_q\))))) # (\inst3|Cpte[6]~DUPLICATE_q\ & (!\inst3|Cpte[5]~DUPLICATE_q\ $ (((\inst3|Cpte[0]~DUPLICATE_q\) # (\inst3|Cpte[1]~DUPLICATE_q\))))) ) ) ) # ( \inst3|Cpte\(2) & ( 
-- !\inst3|Cpte[4]~DUPLICATE_q\ & ( (!\inst3|Cpte[6]~DUPLICATE_q\ & (!\inst3|Cpte[1]~DUPLICATE_q\ $ (((!\inst3|Cpte[5]~DUPLICATE_q\ & !\inst3|Cpte[0]~DUPLICATE_q\))))) # (\inst3|Cpte[6]~DUPLICATE_q\ & (((\inst3|Cpte[5]~DUPLICATE_q\ & 
-- \inst3|Cpte[0]~DUPLICATE_q\)) # (\inst3|Cpte[1]~DUPLICATE_q\))) ) ) ) # ( !\inst3|Cpte\(2) & ( !\inst3|Cpte[4]~DUPLICATE_q\ & ( (!\inst3|Cpte[1]~DUPLICATE_q\ & (!\inst3|Cpte[5]~DUPLICATE_q\ & ((!\inst3|Cpte[0]~DUPLICATE_q\) # 
-- (!\inst3|Cpte[6]~DUPLICATE_q\)))) # (\inst3|Cpte[1]~DUPLICATE_q\ & (!\inst3|Cpte[0]~DUPLICATE_q\ $ (((\inst3|Cpte[6]~DUPLICATE_q\) # (\inst3|Cpte[5]~DUPLICATE_q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100100110000101011010100101011100100101100100111101100100011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Cpte[1]~DUPLICATE_q\,
	datab => \inst3|ALT_INV_Cpte[5]~DUPLICATE_q\,
	datac => \inst3|ALT_INV_Cpte[0]~DUPLICATE_q\,
	datad => \inst3|ALT_INV_Cpte[6]~DUPLICATE_q\,
	datae => \inst3|ALT_INV_Cpte\(2),
	dataf => \inst3|ALT_INV_Cpte[4]~DUPLICATE_q\,
	combout => \inst|Mux26~3_combout\);

-- Location: LABCELL_X17_Y78_N18
\inst|Mux26~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux26~4_combout\ = ( \inst3|Cpte[0]~DUPLICATE_q\ & ( \inst3|Cpte[4]~DUPLICATE_q\ & ( (!\inst3|Cpte[1]~DUPLICATE_q\ & (\inst3|Cpte[6]~DUPLICATE_q\ & ((!\inst3|Cpte\(2)) # (\inst3|Cpte[5]~DUPLICATE_q\)))) # (\inst3|Cpte[1]~DUPLICATE_q\ & 
-- ((!\inst3|Cpte[5]~DUPLICATE_q\ & ((\inst3|Cpte\(2)))) # (\inst3|Cpte[5]~DUPLICATE_q\ & (!\inst3|Cpte[6]~DUPLICATE_q\)))) ) ) ) # ( !\inst3|Cpte[0]~DUPLICATE_q\ & ( \inst3|Cpte[4]~DUPLICATE_q\ & ( (!\inst3|Cpte[6]~DUPLICATE_q\ & (((\inst3|Cpte\(2))))) # 
-- (\inst3|Cpte[6]~DUPLICATE_q\ & ((!\inst3|Cpte[1]~DUPLICATE_q\ & (\inst3|Cpte\(2) & \inst3|Cpte[5]~DUPLICATE_q\)) # (\inst3|Cpte[1]~DUPLICATE_q\ & ((!\inst3|Cpte[5]~DUPLICATE_q\))))) ) ) ) # ( \inst3|Cpte[0]~DUPLICATE_q\ & ( !\inst3|Cpte[4]~DUPLICATE_q\ & 
-- ( (!\inst3|Cpte\(2) & (!\inst3|Cpte[1]~DUPLICATE_q\ $ (((!\inst3|Cpte[5]~DUPLICATE_q\))))) # (\inst3|Cpte\(2) & ((!\inst3|Cpte[6]~DUPLICATE_q\ & ((\inst3|Cpte[5]~DUPLICATE_q\))) # (\inst3|Cpte[6]~DUPLICATE_q\ & (\inst3|Cpte[1]~DUPLICATE_q\)))) ) ) ) # ( 
-- !\inst3|Cpte[0]~DUPLICATE_q\ & ( !\inst3|Cpte[4]~DUPLICATE_q\ & ( (!\inst3|Cpte[1]~DUPLICATE_q\ & (\inst3|Cpte\(2) & ((!\inst3|Cpte[6]~DUPLICATE_q\) # (!\inst3|Cpte[5]~DUPLICATE_q\)))) # (\inst3|Cpte[1]~DUPLICATE_q\ & ((!\inst3|Cpte[6]~DUPLICATE_q\ & 
-- ((\inst3|Cpte[5]~DUPLICATE_q\))) # (\inst3|Cpte[6]~DUPLICATE_q\ & (\inst3|Cpte\(2))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101101001101010100011010110100011101000011100010010101100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Cpte[1]~DUPLICATE_q\,
	datab => \inst3|ALT_INV_Cpte[6]~DUPLICATE_q\,
	datac => \inst3|ALT_INV_Cpte\(2),
	datad => \inst3|ALT_INV_Cpte[5]~DUPLICATE_q\,
	datae => \inst3|ALT_INV_Cpte[0]~DUPLICATE_q\,
	dataf => \inst3|ALT_INV_Cpte[4]~DUPLICATE_q\,
	combout => \inst|Mux26~4_combout\);

-- Location: LABCELL_X17_Y78_N36
\inst|Mux26~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux26~5_combout\ = ( \inst|Mux26~4_combout\ & ( (!\inst|Mux26~3_combout\) # (\inst3|Cpte[3]~DUPLICATE_q\) ) ) # ( !\inst|Mux26~4_combout\ & ( (!\inst3|Cpte[3]~DUPLICATE_q\ & !\inst|Mux26~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000000000110011000000000011111111001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ALT_INV_Cpte[3]~DUPLICATE_q\,
	datad => \inst|ALT_INV_Mux26~3_combout\,
	dataf => \inst|ALT_INV_Mux26~4_combout\,
	combout => \inst|Mux26~5_combout\);

-- Location: LABCELL_X17_Y78_N45
\inst|Mux26~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux26~2_combout\ = ( \inst|Mux26~5_combout\ & ( \inst3|Cpte[7]~DUPLICATE_q\ ) ) # ( \inst|Mux26~5_combout\ & ( !\inst3|Cpte[7]~DUPLICATE_q\ & ( (\inst|Mux26~8_combout\ & (((\inst3|Cpte\(2)) # (\inst|Mux26~0_combout\)) # (\inst3|Cpte\(3)))) ) ) ) # ( 
-- !\inst|Mux26~5_combout\ & ( !\inst3|Cpte[7]~DUPLICATE_q\ & ( (\inst|Mux26~8_combout\ & (((\inst3|Cpte\(2)) # (\inst|Mux26~0_combout\)) # (\inst3|Cpte\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001100110011000100110011001100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Cpte\(3),
	datab => \inst|ALT_INV_Mux26~8_combout\,
	datac => \inst|ALT_INV_Mux26~0_combout\,
	datad => \inst3|ALT_INV_Cpte\(2),
	datae => \inst|ALT_INV_Mux26~5_combout\,
	dataf => \inst3|ALT_INV_Cpte[7]~DUPLICATE_q\,
	combout => \inst|Mux26~2_combout\);

-- Location: LABCELL_X17_Y78_N48
\inst|Mux26~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux26~1_combout\ = ( \inst|Mux22~0_combout\ & ( \inst|Mux26~2_combout\ & ( (!\inst3|Cpts[9]~2_combout\ & ((!\inst3|Cpts[8]~6_combout\) # ((\inst3|Cpte[7]~DUPLICATE_q\)))) # (\inst3|Cpts[9]~2_combout\ & (!\inst3|Cpts[8]~6_combout\ & 
-- (\inst|Mux2~1_combout\ & \inst3|Cpte[7]~DUPLICATE_q\))) ) ) ) # ( !\inst|Mux22~0_combout\ & ( \inst|Mux26~2_combout\ & ( (!\inst3|Cpts[9]~2_combout\ & ((!\inst3|Cpts[8]~6_combout\) # (\inst3|Cpte[7]~DUPLICATE_q\))) ) ) ) # ( \inst|Mux22~0_combout\ & ( 
-- !\inst|Mux26~2_combout\ & ( (\inst3|Cpte[7]~DUPLICATE_q\ & ((!\inst3|Cpts[9]~2_combout\ & (\inst3|Cpts[8]~6_combout\)) # (\inst3|Cpts[9]~2_combout\ & (!\inst3|Cpts[8]~6_combout\ & \inst|Mux2~1_combout\)))) ) ) ) # ( !\inst|Mux22~0_combout\ & ( 
-- !\inst|Mux26~2_combout\ & ( (!\inst3|Cpts[9]~2_combout\ & (\inst3|Cpts[8]~6_combout\ & \inst3|Cpte[7]~DUPLICATE_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100010000000000010011010001000101010101000100010101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Cpts[9]~2_combout\,
	datab => \inst3|ALT_INV_Cpts[8]~6_combout\,
	datac => \inst|ALT_INV_Mux2~1_combout\,
	datad => \inst3|ALT_INV_Cpte[7]~DUPLICATE_q\,
	datae => \inst|ALT_INV_Mux22~0_combout\,
	dataf => \inst|ALT_INV_Mux26~2_combout\,
	combout => \inst|Mux26~1_combout\);

-- Location: FF_X17_Y78_N50
\inst|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst23|CLKs~combout\,
	d => \inst|Mux26~1_combout\,
	clrn => \inst30|Reset_n_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Q\(5));

-- Location: FF_X17_Y77_N1
\inst22|DtL[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst26|CLKs~combout\,
	asdata => \inst|Q\(5),
	sload => VCC,
	ena => \inst22|DtL[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst22|DtL\(5));

-- Location: LABCELL_X16_Y77_N51
\inst|Mux27~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux27~3_combout\ = ( \inst3|Cpte\(4) & ( \inst3|Cpte\(3) & ( (\inst3|Cpte[5]~DUPLICATE_q\ & ((!\inst3|Cpte\(2) & (\inst3|Cpte\(1) & \inst3|Cpte[6]~DUPLICATE_q\)) # (\inst3|Cpte\(2) & ((!\inst3|Cpte[6]~DUPLICATE_q\))))) ) ) ) # ( !\inst3|Cpte\(4) & ( 
-- \inst3|Cpte\(3) & ( (\inst3|Cpte[5]~DUPLICATE_q\ & ((!\inst3|Cpte[6]~DUPLICATE_q\ & (!\inst3|Cpte\(1))) # (\inst3|Cpte[6]~DUPLICATE_q\ & ((!\inst3|Cpte\(2)))))) ) ) ) # ( \inst3|Cpte\(4) & ( !\inst3|Cpte\(3) & ( (\inst3|Cpte[5]~DUPLICATE_q\ & 
-- ((!\inst3|Cpte\(2) & ((\inst3|Cpte[6]~DUPLICATE_q\))) # (\inst3|Cpte\(2) & (\inst3|Cpte\(1) & !\inst3|Cpte[6]~DUPLICATE_q\)))) ) ) ) # ( !\inst3|Cpte\(4) & ( !\inst3|Cpte\(3) & ( (!\inst3|Cpte[6]~DUPLICATE_q\ & (\inst3|Cpte[5]~DUPLICATE_q\ & 
-- ((\inst3|Cpte\(2)) # (\inst3|Cpte\(1))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001110000000000000001110000000000101011000000000000110100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Cpte\(1),
	datab => \inst3|ALT_INV_Cpte\(2),
	datac => \inst3|ALT_INV_Cpte[6]~DUPLICATE_q\,
	datad => \inst3|ALT_INV_Cpte[5]~DUPLICATE_q\,
	datae => \inst3|ALT_INV_Cpte\(4),
	dataf => \inst3|ALT_INV_Cpte\(3),
	combout => \inst|Mux27~3_combout\);

-- Location: LABCELL_X16_Y77_N24
\inst|Mux27~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux27~4_combout\ = ( \inst3|Cpte\(4) & ( \inst3|Cpte\(3) & ( (!\inst3|Cpte\(2) & (!\inst3|Cpte[5]~DUPLICATE_q\ & (!\inst3|Cpte[6]~DUPLICATE_q\ & !\inst3|Cpte\(1)))) # (\inst3|Cpte\(2) & (!\inst3|Cpte[5]~DUPLICATE_q\ $ (!\inst3|Cpte[6]~DUPLICATE_q\ $ 
-- (\inst3|Cpte\(1))))) ) ) ) # ( !\inst3|Cpte\(4) & ( \inst3|Cpte\(3) & ( (!\inst3|Cpte[5]~DUPLICATE_q\ & (\inst3|Cpte[6]~DUPLICATE_q\)) # (\inst3|Cpte[5]~DUPLICATE_q\ & ((!\inst3|Cpte\(1) & (\inst3|Cpte[6]~DUPLICATE_q\)) # (\inst3|Cpte\(1) & 
-- ((!\inst3|Cpte\(2)))))) ) ) ) # ( \inst3|Cpte\(4) & ( !\inst3|Cpte\(3) & ( (!\inst3|Cpte[5]~DUPLICATE_q\ & ((!\inst3|Cpte\(1) & ((\inst3|Cpte\(2)))) # (\inst3|Cpte\(1) & (!\inst3|Cpte[6]~DUPLICATE_q\)))) # (\inst3|Cpte[5]~DUPLICATE_q\ & 
-- (!\inst3|Cpte[6]~DUPLICATE_q\)) ) ) ) # ( !\inst3|Cpte\(4) & ( !\inst3|Cpte\(3) & ( (!\inst3|Cpte\(2) & (!\inst3|Cpte[5]~DUPLICATE_q\ $ (!\inst3|Cpte[6]~DUPLICATE_q\ $ (!\inst3|Cpte\(1))))) # (\inst3|Cpte\(2) & (\inst3|Cpte[5]~DUPLICATE_q\ & 
-- (\inst3|Cpte[6]~DUPLICATE_q\ & \inst3|Cpte\(1)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001011000000001010011001110110000110111001100101000000001101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Cpte[5]~DUPLICATE_q\,
	datab => \inst3|ALT_INV_Cpte[6]~DUPLICATE_q\,
	datac => \inst3|ALT_INV_Cpte\(1),
	datad => \inst3|ALT_INV_Cpte\(2),
	datae => \inst3|ALT_INV_Cpte\(4),
	dataf => \inst3|ALT_INV_Cpte\(3),
	combout => \inst|Mux27~4_combout\);

-- Location: LABCELL_X16_Y77_N54
\inst|Mux27~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux27~5_combout\ = ( \inst|Mux27~4_combout\ & ( (!\inst|Mux27~3_combout\) # (\inst3|Cpte[0]~DUPLICATE_q\) ) ) # ( !\inst|Mux27~4_combout\ & ( (!\inst|Mux27~3_combout\ & !\inst3|Cpte[0]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000011110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_Mux27~3_combout\,
	datad => \inst3|ALT_INV_Cpte[0]~DUPLICATE_q\,
	dataf => \inst|ALT_INV_Mux27~4_combout\,
	combout => \inst|Mux27~5_combout\);

-- Location: LABCELL_X16_Y75_N45
\inst|Mux27~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux27~6_combout\ = ( \inst3|Cpte[1]~DUPLICATE_q\ & ( \inst3|Cpte[3]~DUPLICATE_q\ & ( (!\inst3|Cpte\(6) & (\inst3|Cpte\(2) & (!\inst3|Cpte[4]~DUPLICATE_q\ $ (\inst3|Cpte\(5))))) # (\inst3|Cpte\(6) & (!\inst3|Cpte\(2) $ (((\inst3|Cpte[4]~DUPLICATE_q\ 
-- & !\inst3|Cpte\(5)))))) ) ) ) # ( !\inst3|Cpte[1]~DUPLICATE_q\ & ( \inst3|Cpte[3]~DUPLICATE_q\ & ( !\inst3|Cpte\(5) $ (((!\inst3|Cpte[4]~DUPLICATE_q\) # ((\inst3|Cpte\(2) & !\inst3|Cpte\(6))))) ) ) ) # ( \inst3|Cpte[1]~DUPLICATE_q\ & ( 
-- !\inst3|Cpte[3]~DUPLICATE_q\ & ( (!\inst3|Cpte\(6) & (!\inst3|Cpte\(2) $ (((!\inst3|Cpte\(5)) # (\inst3|Cpte[4]~DUPLICATE_q\))))) # (\inst3|Cpte\(6) & (!\inst3|Cpte\(2) & (!\inst3|Cpte[4]~DUPLICATE_q\ $ (\inst3|Cpte\(5))))) ) ) ) # ( 
-- !\inst3|Cpte[1]~DUPLICATE_q\ & ( !\inst3|Cpte[3]~DUPLICATE_q\ & ( (!\inst3|Cpte[4]~DUPLICATE_q\ & (\inst3|Cpte\(2) & (!\inst3|Cpte\(5) $ (!\inst3|Cpte\(6))))) # (\inst3|Cpte[4]~DUPLICATE_q\ & (!\inst3|Cpte\(5) $ (((!\inst3|Cpte\(2) & \inst3|Cpte\(6)))))) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011000011100001011011001000001100011011001100000100110110100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Cpte[4]~DUPLICATE_q\,
	datab => \inst3|ALT_INV_Cpte\(5),
	datac => \inst3|ALT_INV_Cpte\(2),
	datad => \inst3|ALT_INV_Cpte\(6),
	datae => \inst3|ALT_INV_Cpte[1]~DUPLICATE_q\,
	dataf => \inst3|ALT_INV_Cpte[3]~DUPLICATE_q\,
	combout => \inst|Mux27~6_combout\);

-- Location: MLABCELL_X15_Y75_N42
\inst|Mux27~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux27~7_combout\ = ( \inst3|Cpte[4]~DUPLICATE_q\ & ( \inst3|Cpte\(3) & ( (!\inst3|Cpte[1]~DUPLICATE_q\ & (!\inst3|Cpte\(6) & (!\inst3|Cpte\(5) $ (\inst3|Cpte\(2))))) # (\inst3|Cpte[1]~DUPLICATE_q\ & (\inst3|Cpte\(2) & ((!\inst3|Cpte\(5)) # 
-- (\inst3|Cpte\(6))))) ) ) ) # ( !\inst3|Cpte[4]~DUPLICATE_q\ & ( \inst3|Cpte\(3) & ( (!\inst3|Cpte\(5) & (((\inst3|Cpte\(6))))) # (\inst3|Cpte\(5) & (!\inst3|Cpte\(2) $ (((!\inst3|Cpte[1]~DUPLICATE_q\ & \inst3|Cpte\(6)))))) ) ) ) # ( 
-- \inst3|Cpte[4]~DUPLICATE_q\ & ( !\inst3|Cpte\(3) & ( (!\inst3|Cpte\(5) & (!\inst3|Cpte\(2) $ (((!\inst3|Cpte[1]~DUPLICATE_q\) # (\inst3|Cpte\(6)))))) # (\inst3|Cpte\(5) & (((!\inst3|Cpte\(6))))) ) ) ) # ( !\inst3|Cpte[4]~DUPLICATE_q\ & ( !\inst3|Cpte\(3) 
-- & ( (!\inst3|Cpte[1]~DUPLICATE_q\ & (!\inst3|Cpte\(2) & ((!\inst3|Cpte\(6)) # (\inst3|Cpte\(5))))) # (\inst3|Cpte[1]~DUPLICATE_q\ & (\inst3|Cpte\(6) & (!\inst3|Cpte\(5) $ (\inst3|Cpte\(2))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000001100001011110110000110000110000110111101000011000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Cpte[1]~DUPLICATE_q\,
	datab => \inst3|ALT_INV_Cpte\(5),
	datac => \inst3|ALT_INV_Cpte\(2),
	datad => \inst3|ALT_INV_Cpte\(6),
	datae => \inst3|ALT_INV_Cpte[4]~DUPLICATE_q\,
	dataf => \inst3|ALT_INV_Cpte\(3),
	combout => \inst|Mux27~7_combout\);

-- Location: LABCELL_X16_Y77_N21
\inst|Mux27~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux27~8_combout\ = ( \inst|Mux27~7_combout\ & ( (!\inst3|Cpte[0]~DUPLICATE_q\ & \inst|Mux27~6_combout\) ) ) # ( !\inst|Mux27~7_combout\ & ( (\inst|Mux27~6_combout\) # (\inst3|Cpte[0]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010111111111010101011111111100000000101010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Cpte[0]~DUPLICATE_q\,
	datad => \inst|ALT_INV_Mux27~6_combout\,
	dataf => \inst|ALT_INV_Mux27~7_combout\,
	combout => \inst|Mux27~8_combout\);

-- Location: MLABCELL_X15_Y76_N3
\inst|Mux27~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux27~0_combout\ = ( \inst3|Cpte\(4) & ( (!\inst3|Cpte\(2) & ((!\inst3|Cpte\(6) & ((!\inst3|Cpte\(1)))) # (\inst3|Cpte\(6) & (\inst3|Cpte\(3))))) # (\inst3|Cpte\(2) & (!\inst3|Cpte\(6) $ (((!\inst3|Cpte\(1)) # (\inst3|Cpte\(3)))))) ) ) # ( 
-- !\inst3|Cpte\(4) & ( (!\inst3|Cpte\(1) & (!\inst3|Cpte\(3) & (!\inst3|Cpte\(2) $ (\inst3|Cpte\(6))))) # (\inst3|Cpte\(1) & (!\inst3|Cpte\(2) $ (((!\inst3|Cpte\(6)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000010001011010100001000101101010100111010000111010011101000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Cpte\(2),
	datab => \inst3|ALT_INV_Cpte\(3),
	datac => \inst3|ALT_INV_Cpte\(6),
	datad => \inst3|ALT_INV_Cpte\(1),
	dataf => \inst3|ALT_INV_Cpte\(4),
	combout => \inst|Mux27~0_combout\);

-- Location: LABCELL_X17_Y78_N12
\inst|Mux27~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux27~2_combout\ = ( \inst3|Cpte[5]~DUPLICATE_q\ & ( \inst3|Cpte[7]~DUPLICATE_q\ & ( \inst|Mux27~8_combout\ ) ) ) # ( !\inst3|Cpte[5]~DUPLICATE_q\ & ( \inst3|Cpte[7]~DUPLICATE_q\ & ( \inst|Mux27~8_combout\ ) ) ) # ( \inst3|Cpte[5]~DUPLICATE_q\ & ( 
-- !\inst3|Cpte[7]~DUPLICATE_q\ & ( \inst|Mux27~5_combout\ ) ) ) # ( !\inst3|Cpte[5]~DUPLICATE_q\ & ( !\inst3|Cpte[7]~DUPLICATE_q\ & ( (\inst|Mux27~5_combout\ & ((!\inst|Mux27~0_combout\) # (\inst3|Cpte[0]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010101010101010101010100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Mux27~5_combout\,
	datab => \inst|ALT_INV_Mux27~8_combout\,
	datac => \inst|ALT_INV_Mux27~0_combout\,
	datad => \inst3|ALT_INV_Cpte[0]~DUPLICATE_q\,
	datae => \inst3|ALT_INV_Cpte[5]~DUPLICATE_q\,
	dataf => \inst3|ALT_INV_Cpte[7]~DUPLICATE_q\,
	combout => \inst|Mux27~2_combout\);

-- Location: LABCELL_X17_Y78_N51
\inst|Mux27~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux27~1_combout\ = ( \inst|Mux22~0_combout\ & ( \inst|Mux27~2_combout\ & ( (!\inst3|Cpts[9]~2_combout\ & ((!\inst3|Cpts[8]~6_combout\) # ((\inst3|Cpte[7]~DUPLICATE_q\)))) # (\inst3|Cpts[9]~2_combout\ & (!\inst3|Cpts[8]~6_combout\ & 
-- (\inst3|Cpte[7]~DUPLICATE_q\ & \inst|Mux2~1_combout\))) ) ) ) # ( !\inst|Mux22~0_combout\ & ( \inst|Mux27~2_combout\ & ( (!\inst3|Cpts[9]~2_combout\ & ((!\inst3|Cpts[8]~6_combout\) # (\inst3|Cpte[7]~DUPLICATE_q\))) ) ) ) # ( \inst|Mux22~0_combout\ & ( 
-- !\inst|Mux27~2_combout\ & ( (\inst3|Cpte[7]~DUPLICATE_q\ & ((!\inst3|Cpts[9]~2_combout\ & (\inst3|Cpts[8]~6_combout\)) # (\inst3|Cpts[9]~2_combout\ & (!\inst3|Cpts[8]~6_combout\ & \inst|Mux2~1_combout\)))) ) ) ) # ( !\inst|Mux22~0_combout\ & ( 
-- !\inst|Mux27~2_combout\ & ( (!\inst3|Cpts[9]~2_combout\ & (\inst3|Cpts[8]~6_combout\ & \inst3|Cpte[7]~DUPLICATE_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000011010001010100010101000101010001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Cpts[9]~2_combout\,
	datab => \inst3|ALT_INV_Cpts[8]~6_combout\,
	datac => \inst3|ALT_INV_Cpte[7]~DUPLICATE_q\,
	datad => \inst|ALT_INV_Mux2~1_combout\,
	datae => \inst|ALT_INV_Mux22~0_combout\,
	dataf => \inst|ALT_INV_Mux27~2_combout\,
	combout => \inst|Mux27~1_combout\);

-- Location: FF_X17_Y78_N53
\inst|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst23|CLKs~combout\,
	d => \inst|Mux27~1_combout\,
	clrn => \inst30|Reset_n_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Q\(4));

-- Location: FF_X17_Y77_N41
\inst22|DtL[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst26|CLKs~combout\,
	asdata => \inst|Q\(4),
	sload => VCC,
	ena => \inst22|DtL[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst22|DtL\(4));

-- Location: LABCELL_X17_Y75_N57
\inst22|S~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst22|S~4_combout\ = ( \inst22|Cpte\(0) & ( \inst22|DtL\(4) & ( (\inst22|Cpte\(1)) # (\inst22|DtL\(6)) ) ) ) # ( !\inst22|Cpte\(0) & ( \inst22|DtL\(4) & ( (!\inst22|Cpte\(1) & (\inst22|DtL\(7))) # (\inst22|Cpte\(1) & ((\inst22|DtL\(5)))) ) ) ) # ( 
-- \inst22|Cpte\(0) & ( !\inst22|DtL\(4) & ( (\inst22|DtL\(6) & !\inst22|Cpte\(1)) ) ) ) # ( !\inst22|Cpte\(0) & ( !\inst22|DtL\(4) & ( (!\inst22|Cpte\(1) & (\inst22|DtL\(7))) # (\inst22|Cpte\(1) & ((\inst22|DtL\(5)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001011111001100000011000001010000010111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|ALT_INV_DtL\(7),
	datab => \inst22|ALT_INV_DtL\(6),
	datac => \inst22|ALT_INV_Cpte\(1),
	datad => \inst22|ALT_INV_DtL\(5),
	datae => \inst22|ALT_INV_Cpte\(0),
	dataf => \inst22|ALT_INV_DtL\(4),
	combout => \inst22|S~4_combout\);

-- Location: LABCELL_X18_Y76_N21
\inst22|S~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst22|S~6_combout\ = (!\inst22|Cpte\(1) & \inst22|Cpte[2]~DUPLICATE_q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst22|ALT_INV_Cpte\(1),
	datad => \inst22|ALT_INV_Cpte[2]~DUPLICATE_q\,
	combout => \inst22|S~6_combout\);

-- Location: LABCELL_X17_Y75_N24
\inst22|S~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst22|S~7_combout\ = ( \inst22|S~4_combout\ & ( \inst22|S~6_combout\ & ( (!\inst22|S~5_combout\ & ((\inst22|DtL\(2)))) # (\inst22|S~5_combout\ & (\inst22|DtL\(3))) ) ) ) # ( !\inst22|S~4_combout\ & ( \inst22|S~6_combout\ & ( (!\inst22|S~5_combout\ & 
-- ((\inst22|DtL\(2)))) # (\inst22|S~5_combout\ & (\inst22|DtL\(3))) ) ) ) # ( \inst22|S~4_combout\ & ( !\inst22|S~6_combout\ & ( (!\inst22|S~5_combout\) # (\inst22|DtL\(1)) ) ) ) # ( !\inst22|S~4_combout\ & ( !\inst22|S~6_combout\ & ( (\inst22|DtL\(1) & 
-- \inst22|S~5_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011111111110011001100001111010101010000111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|ALT_INV_DtL\(3),
	datab => \inst22|ALT_INV_DtL\(1),
	datac => \inst22|ALT_INV_DtL\(2),
	datad => \inst22|ALT_INV_S~5_combout\,
	datae => \inst22|ALT_INV_S~4_combout\,
	dataf => \inst22|ALT_INV_S~6_combout\,
	combout => \inst22|S~7_combout\);

-- Location: FF_X17_Y78_N17
\inst22|DtR[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst26|CLKs~combout\,
	asdata => \inst|Q\(3),
	sload => VCC,
	ena => \inst22|DtR[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst22|DtR\(3));

-- Location: FF_X17_Y78_N35
\inst22|DtR[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst26|CLKs~combout\,
	asdata => \inst|Q\(7),
	sload => VCC,
	ena => \inst22|DtR[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst22|DtR\(7));

-- Location: FF_X17_Y78_N59
\inst22|DtR[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst26|CLKs~combout\,
	asdata => \inst|Q\(4),
	sload => VCC,
	ena => \inst22|DtR[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst22|DtR\(4));

-- Location: FF_X17_Y78_N5
\inst22|DtR[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst26|CLKs~combout\,
	asdata => \inst|Q\(5),
	sload => VCC,
	ena => \inst22|DtR[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst22|DtR\(5));

-- Location: FF_X17_Y78_N11
\inst22|DtR[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst26|CLKs~combout\,
	asdata => \inst|Q\(6),
	sload => VCC,
	ena => \inst22|DtR[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst22|DtR\(6));

-- Location: LABCELL_X17_Y78_N24
\inst22|S~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst22|S~8_combout\ = ( \inst22|DtR\(5) & ( \inst22|DtR\(6) & ( (!\inst22|Cpte\(0) & (((\inst22|DtR\(7))) # (\inst22|Cpte\(1)))) # (\inst22|Cpte\(0) & ((!\inst22|Cpte\(1)) # ((\inst22|DtR\(4))))) ) ) ) # ( !\inst22|DtR\(5) & ( \inst22|DtR\(6) & ( 
-- (!\inst22|Cpte\(0) & (!\inst22|Cpte\(1) & (\inst22|DtR\(7)))) # (\inst22|Cpte\(0) & ((!\inst22|Cpte\(1)) # ((\inst22|DtR\(4))))) ) ) ) # ( \inst22|DtR\(5) & ( !\inst22|DtR\(6) & ( (!\inst22|Cpte\(0) & (((\inst22|DtR\(7))) # (\inst22|Cpte\(1)))) # 
-- (\inst22|Cpte\(0) & (\inst22|Cpte\(1) & ((\inst22|DtR\(4))))) ) ) ) # ( !\inst22|DtR\(5) & ( !\inst22|DtR\(6) & ( (!\inst22|Cpte\(0) & (!\inst22|Cpte\(1) & (\inst22|DtR\(7)))) # (\inst22|Cpte\(0) & (\inst22|Cpte\(1) & ((\inst22|DtR\(4))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000011001001010100011101101001100010111010110111001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|ALT_INV_Cpte\(0),
	datab => \inst22|ALT_INV_Cpte\(1),
	datac => \inst22|ALT_INV_DtR\(7),
	datad => \inst22|ALT_INV_DtR\(4),
	datae => \inst22|ALT_INV_DtR\(5),
	dataf => \inst22|ALT_INV_DtR\(6),
	combout => \inst22|S~8_combout\);

-- Location: FF_X17_Y78_N43
\inst22|DtR[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst26|CLKs~combout\,
	asdata => \inst|Q\(1),
	sload => VCC,
	ena => \inst22|DtR[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst22|DtR\(1));

-- Location: FF_X18_Y75_N37
\inst22|DtR[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst26|CLKs~combout\,
	asdata => \inst|Q\(2),
	sload => VCC,
	ena => \inst22|DtR[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst22|DtR\(2));

-- Location: LABCELL_X17_Y78_N6
\inst22|S~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst22|S~9_combout\ = ( \inst22|DtR\(1) & ( \inst22|DtR\(2) & ( (!\inst22|S~6_combout\ & (((\inst22|S~5_combout\) # (\inst22|S~8_combout\)))) # (\inst22|S~6_combout\ & (((!\inst22|S~5_combout\)) # (\inst22|DtR\(3)))) ) ) ) # ( !\inst22|DtR\(1) & ( 
-- \inst22|DtR\(2) & ( (!\inst22|S~6_combout\ & (((\inst22|S~8_combout\ & !\inst22|S~5_combout\)))) # (\inst22|S~6_combout\ & (((!\inst22|S~5_combout\)) # (\inst22|DtR\(3)))) ) ) ) # ( \inst22|DtR\(1) & ( !\inst22|DtR\(2) & ( (!\inst22|S~6_combout\ & 
-- (((\inst22|S~5_combout\) # (\inst22|S~8_combout\)))) # (\inst22|S~6_combout\ & (\inst22|DtR\(3) & ((\inst22|S~5_combout\)))) ) ) ) # ( !\inst22|DtR\(1) & ( !\inst22|DtR\(2) & ( (!\inst22|S~6_combout\ & (((\inst22|S~8_combout\ & !\inst22|S~5_combout\)))) # 
-- (\inst22|S~6_combout\ & (\inst22|DtR\(3) & ((\inst22|S~5_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000010001000010101011101101011111000100010101111110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|ALT_INV_S~6_combout\,
	datab => \inst22|ALT_INV_DtR\(3),
	datac => \inst22|ALT_INV_S~8_combout\,
	datad => \inst22|ALT_INV_S~5_combout\,
	datae => \inst22|ALT_INV_DtR\(1),
	dataf => \inst22|ALT_INV_DtR\(2),
	combout => \inst22|S~9_combout\);

-- Location: LABCELL_X18_Y77_N33
\inst22|Selector0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst22|Selector0~2_combout\ = ( \inst22|S~7_combout\ & ( \inst22|S~9_combout\ & ( (\inst22|Cpte[3]~DUPLICATE_q\ & ((\inst22|State.SendL~q\) # (\inst22|State.SendR~q\))) ) ) ) # ( !\inst22|S~7_combout\ & ( \inst22|S~9_combout\ & ( (\inst22|State.SendR~q\ 
-- & \inst22|Cpte[3]~DUPLICATE_q\) ) ) ) # ( \inst22|S~7_combout\ & ( !\inst22|S~9_combout\ & ( (\inst22|State.SendL~q\ & \inst22|Cpte[3]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000001100110000000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst22|ALT_INV_State.SendR~q\,
	datac => \inst22|ALT_INV_State.SendL~q\,
	datad => \inst22|ALT_INV_Cpte[3]~DUPLICATE_q\,
	datae => \inst22|ALT_INV_S~7_combout\,
	dataf => \inst22|ALT_INV_S~9_combout\,
	combout => \inst22|Selector0~2_combout\);

-- Location: FF_X18_Y76_N4
\inst22|Cpte[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst26|CLKs~combout\,
	asdata => \inst22|Selector4~0_combout\,
	clrn => \inst30|Reset_n_out~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst22|Cpte[1]~DUPLICATE_q\);

-- Location: LABCELL_X17_Y74_N36
\inst|Mux9~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux9~4_combout\ = ( \inst3|Cpte\(2) & ( \inst3|Cpte\(1) & ( (!\inst3|Cpte\(4) & (((\inst3|Cpte\(3)) # (\inst3|Cpte[6]~DUPLICATE_q\)))) # (\inst3|Cpte\(4) & (\inst3|Cpte[5]~DUPLICATE_q\ & ((!\inst3|Cpte\(3))))) ) ) ) # ( !\inst3|Cpte\(2) & ( 
-- \inst3|Cpte\(1) & ( (!\inst3|Cpte\(4) & (!\inst3|Cpte[5]~DUPLICATE_q\ & ((\inst3|Cpte\(3))))) # (\inst3|Cpte\(4) & (((!\inst3|Cpte[6]~DUPLICATE_q\) # (!\inst3|Cpte\(3))))) ) ) ) # ( \inst3|Cpte\(2) & ( !\inst3|Cpte\(1) & ( (!\inst3|Cpte[5]~DUPLICATE_q\ & 
-- (!\inst3|Cpte[6]~DUPLICATE_q\ & ((!\inst3|Cpte\(4)) # (\inst3|Cpte\(3))))) # (\inst3|Cpte[5]~DUPLICATE_q\ & (\inst3|Cpte[6]~DUPLICATE_q\ & ((!\inst3|Cpte\(3)) # (\inst3|Cpte\(4))))) ) ) ) # ( !\inst3|Cpte\(2) & ( !\inst3|Cpte\(1) & ( 
-- (!\inst3|Cpte[6]~DUPLICATE_q\ & ((!\inst3|Cpte\(4) $ (\inst3|Cpte\(3))))) # (\inst3|Cpte[6]~DUPLICATE_q\ & (!\inst3|Cpte\(4) & ((\inst3|Cpte\(3)) # (\inst3|Cpte[5]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101000000111100100100011000100100001111101011000011010111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Cpte[5]~DUPLICATE_q\,
	datab => \inst3|ALT_INV_Cpte[6]~DUPLICATE_q\,
	datac => \inst3|ALT_INV_Cpte\(4),
	datad => \inst3|ALT_INV_Cpte\(3),
	datae => \inst3|ALT_INV_Cpte\(2),
	dataf => \inst3|ALT_INV_Cpte\(1),
	combout => \inst|Mux9~4_combout\);

-- Location: LABCELL_X17_Y74_N27
\inst|Mux9~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux9~5_combout\ = ( \inst3|Cpte\(2) & ( \inst3|Cpte\(1) & ( (!\inst3|Cpte[3]~DUPLICATE_q\ & (!\inst3|Cpte[6]~DUPLICATE_q\ & ((!\inst3|Cpte[5]~DUPLICATE_q\) # (\inst3|Cpte\(4))))) # (\inst3|Cpte[3]~DUPLICATE_q\ & (!\inst3|Cpte[6]~DUPLICATE_q\ $ 
-- ((!\inst3|Cpte\(4))))) ) ) ) # ( !\inst3|Cpte\(2) & ( \inst3|Cpte\(1) & ( (!\inst3|Cpte\(4) & (!\inst3|Cpte[6]~DUPLICATE_q\ $ (((\inst3|Cpte[3]~DUPLICATE_q\ & !\inst3|Cpte[5]~DUPLICATE_q\))))) # (\inst3|Cpte\(4) & (((\inst3|Cpte[6]~DUPLICATE_q\ & 
-- !\inst3|Cpte[5]~DUPLICATE_q\)))) ) ) ) # ( \inst3|Cpte\(2) & ( !\inst3|Cpte\(1) & ( (!\inst3|Cpte\(4) & (((!\inst3|Cpte[6]~DUPLICATE_q\ & \inst3|Cpte[5]~DUPLICATE_q\)))) # (\inst3|Cpte\(4) & (!\inst3|Cpte[6]~DUPLICATE_q\ $ (((!\inst3|Cpte[5]~DUPLICATE_q\) 
-- # (\inst3|Cpte[3]~DUPLICATE_q\))))) ) ) ) # ( !\inst3|Cpte\(2) & ( !\inst3|Cpte\(1) & ( (!\inst3|Cpte[3]~DUPLICATE_q\ & (!\inst3|Cpte[6]~DUPLICATE_q\ $ ((!\inst3|Cpte\(4))))) # (\inst3|Cpte[3]~DUPLICATE_q\ & (\inst3|Cpte[6]~DUPLICATE_q\ & 
-- ((!\inst3|Cpte\(4)) # (\inst3|Cpte[5]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011100000111001000000111100100110010011110000001001110000011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Cpte[3]~DUPLICATE_q\,
	datab => \inst3|ALT_INV_Cpte[6]~DUPLICATE_q\,
	datac => \inst3|ALT_INV_Cpte\(4),
	datad => \inst3|ALT_INV_Cpte[5]~DUPLICATE_q\,
	datae => \inst3|ALT_INV_Cpte\(2),
	dataf => \inst3|ALT_INV_Cpte\(1),
	combout => \inst|Mux9~5_combout\);

-- Location: LABCELL_X17_Y74_N6
\inst|Mux9~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux9~6_combout\ = ( \inst|Mux9~4_combout\ & ( \inst|Mux9~5_combout\ & ( \inst3|Cpte\(0) ) ) ) # ( !\inst|Mux9~4_combout\ & ( \inst|Mux9~5_combout\ ) ) # ( !\inst|Mux9~4_combout\ & ( !\inst|Mux9~5_combout\ & ( !\inst3|Cpte\(0) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100000000000000000011111111111111110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ALT_INV_Cpte\(0),
	datae => \inst|ALT_INV_Mux9~4_combout\,
	dataf => \inst|ALT_INV_Mux9~5_combout\,
	combout => \inst|Mux9~6_combout\);

-- Location: MLABCELL_X15_Y74_N36
\inst|Mux9~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux9~1_combout\ = ( \inst3|Cpte\(2) & ( \inst3|Cpte[3]~DUPLICATE_q\ & ( (!\inst3|Cpte\(1) & ((!\inst3|Cpte[6]~DUPLICATE_q\ & (!\inst3|Cpte\(5))) # (\inst3|Cpte[6]~DUPLICATE_q\ & (\inst3|Cpte\(5) & \inst3|Cpte\(4))))) # (\inst3|Cpte\(1) & 
-- (((!\inst3|Cpte\(4))))) ) ) ) # ( !\inst3|Cpte\(2) & ( \inst3|Cpte[3]~DUPLICATE_q\ & ( (!\inst3|Cpte\(4) & ((!\inst3|Cpte\(1) & (\inst3|Cpte[6]~DUPLICATE_q\)) # (\inst3|Cpte\(1) & ((!\inst3|Cpte\(5)))))) # (\inst3|Cpte\(4) & 
-- (!\inst3|Cpte[6]~DUPLICATE_q\)) ) ) ) # ( \inst3|Cpte\(2) & ( !\inst3|Cpte[3]~DUPLICATE_q\ & ( (!\inst3|Cpte\(5) & (!\inst3|Cpte\(4) & (!\inst3|Cpte[6]~DUPLICATE_q\ $ (\inst3|Cpte\(1))))) # (\inst3|Cpte\(5) & (((\inst3|Cpte\(1) & \inst3|Cpte\(4))) # 
-- (\inst3|Cpte[6]~DUPLICATE_q\))) ) ) ) # ( !\inst3|Cpte\(2) & ( !\inst3|Cpte[3]~DUPLICATE_q\ & ( (!\inst3|Cpte\(1) & (\inst3|Cpte\(5) & !\inst3|Cpte\(4))) # (\inst3|Cpte\(1) & ((\inst3|Cpte\(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000001111100101010001001101011100101010101000111110010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Cpte[6]~DUPLICATE_q\,
	datab => \inst3|ALT_INV_Cpte\(5),
	datac => \inst3|ALT_INV_Cpte\(1),
	datad => \inst3|ALT_INV_Cpte\(4),
	datae => \inst3|ALT_INV_Cpte\(2),
	dataf => \inst3|ALT_INV_Cpte[3]~DUPLICATE_q\,
	combout => \inst|Mux9~1_combout\);

-- Location: LABCELL_X17_Y74_N24
\inst|Mux9~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux9~2_combout\ = ( \inst3|Cpte\(2) & ( \inst3|Cpte\(1) & ( (!\inst3|Cpte[3]~DUPLICATE_q\ & (!\inst3|Cpte[6]~DUPLICATE_q\ & ((!\inst3|Cpte[5]~DUPLICATE_q\) # (\inst3|Cpte\(4))))) # (\inst3|Cpte[3]~DUPLICATE_q\ & (!\inst3|Cpte[6]~DUPLICATE_q\ $ 
-- (((!\inst3|Cpte\(4)))))) ) ) ) # ( !\inst3|Cpte\(2) & ( \inst3|Cpte\(1) & ( (!\inst3|Cpte[5]~DUPLICATE_q\ & (!\inst3|Cpte[6]~DUPLICATE_q\ $ (((\inst3|Cpte\(4)) # (\inst3|Cpte[3]~DUPLICATE_q\))))) # (\inst3|Cpte[5]~DUPLICATE_q\ & 
-- (((!\inst3|Cpte[6]~DUPLICATE_q\ & !\inst3|Cpte\(4))))) ) ) ) # ( \inst3|Cpte\(2) & ( !\inst3|Cpte\(1) & ( (!\inst3|Cpte[5]~DUPLICATE_q\ & (((\inst3|Cpte[6]~DUPLICATE_q\ & \inst3|Cpte\(4))))) # (\inst3|Cpte[5]~DUPLICATE_q\ & (!\inst3|Cpte[6]~DUPLICATE_q\ $ 
-- (((\inst3|Cpte[3]~DUPLICATE_q\ & \inst3|Cpte\(4)))))) ) ) ) # ( !\inst3|Cpte\(2) & ( !\inst3|Cpte\(1) & ( (!\inst3|Cpte[3]~DUPLICATE_q\ & (!\inst3|Cpte[6]~DUPLICATE_q\ $ (((!\inst3|Cpte\(4)))))) # (\inst3|Cpte[3]~DUPLICATE_q\ & 
-- (\inst3|Cpte[6]~DUPLICATE_q\ & ((!\inst3|Cpte\(4)) # (\inst3|Cpte[5]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001110001001000011000011100110011100001100001001000111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Cpte[3]~DUPLICATE_q\,
	datab => \inst3|ALT_INV_Cpte[6]~DUPLICATE_q\,
	datac => \inst3|ALT_INV_Cpte[5]~DUPLICATE_q\,
	datad => \inst3|ALT_INV_Cpte\(4),
	datae => \inst3|ALT_INV_Cpte\(2),
	dataf => \inst3|ALT_INV_Cpte\(1),
	combout => \inst|Mux9~2_combout\);

-- Location: LABCELL_X17_Y74_N42
\inst|Mux9~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux9~3_combout\ = ( \inst|Mux9~1_combout\ & ( \inst|Mux9~2_combout\ & ( !\inst3|Cpte\(0) ) ) ) # ( \inst|Mux9~1_combout\ & ( !\inst|Mux9~2_combout\ ) ) # ( !\inst|Mux9~1_combout\ & ( !\inst|Mux9~2_combout\ & ( \inst3|Cpte\(0) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011111111111111111100000000000000001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ALT_INV_Cpte\(0),
	datae => \inst|ALT_INV_Mux9~1_combout\,
	dataf => \inst|ALT_INV_Mux9~2_combout\,
	combout => \inst|Mux9~3_combout\);

-- Location: LABCELL_X17_Y74_N12
\inst|Mux9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux9~0_combout\ = ( \inst|Mux9~6_combout\ & ( \inst|Mux9~3_combout\ & ( ((!\inst3|Cpts[9]~2_combout\ & ((!\inst3|Cpts[8]~6_combout\) # (\inst3|Cpte[7]~DUPLICATE_q\)))) # (\inst|Mux15~0_combout\) ) ) ) # ( !\inst|Mux9~6_combout\ & ( 
-- \inst|Mux9~3_combout\ & ( ((!\inst3|Cpts[9]~2_combout\ & \inst3|Cpte[7]~DUPLICATE_q\)) # (\inst|Mux15~0_combout\) ) ) ) # ( \inst|Mux9~6_combout\ & ( !\inst|Mux9~3_combout\ & ( ((!\inst3|Cpts[9]~2_combout\ & (!\inst3|Cpts[8]~6_combout\ $ 
-- (\inst3|Cpte[7]~DUPLICATE_q\)))) # (\inst|Mux15~0_combout\) ) ) ) # ( !\inst|Mux9~6_combout\ & ( !\inst|Mux9~3_combout\ & ( ((\inst3|Cpts[8]~6_combout\ & (!\inst3|Cpts[9]~2_combout\ & \inst3|Cpte[7]~DUPLICATE_q\))) # (\inst|Mux15~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101110011101100110111001100110011111100111011001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Cpts[8]~6_combout\,
	datab => \inst|ALT_INV_Mux15~0_combout\,
	datac => \inst3|ALT_INV_Cpts[9]~2_combout\,
	datad => \inst3|ALT_INV_Cpte[7]~DUPLICATE_q\,
	datae => \inst|ALT_INV_Mux9~6_combout\,
	dataf => \inst|ALT_INV_Mux9~3_combout\,
	combout => \inst|Mux9~0_combout\);

-- Location: FF_X17_Y74_N14
\inst|Q[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst23|CLKs~combout\,
	d => \inst|Mux9~0_combout\,
	clrn => \inst30|Reset_n_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Q\(22));

-- Location: FF_X18_Y76_N52
\inst22|DtR[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst26|CLKs~combout\,
	asdata => \inst|Q\(22),
	sload => VCC,
	ena => \inst22|DtR[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst22|DtR\(22));

-- Location: LABCELL_X13_Y75_N21
\inst|Mux5~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux5~7_combout\ = ( \inst3|Cpte\(1) & ( \inst3|Cpte\(6) & ( (!\inst3|Cpte\(0) & ((!\inst3|Cpte[3]~DUPLICATE_q\ & (\inst3|Cpte[4]~DUPLICATE_q\)) # (\inst3|Cpte[3]~DUPLICATE_q\ & ((\inst3|Cpte\(5)))))) # (\inst3|Cpte\(0) & 
-- (!\inst3|Cpte[3]~DUPLICATE_q\ $ (((!\inst3|Cpte[4]~DUPLICATE_q\ & !\inst3|Cpte\(5)))))) ) ) ) # ( !\inst3|Cpte\(1) & ( \inst3|Cpte\(6) & ( (!\inst3|Cpte[4]~DUPLICATE_q\ & (((!\inst3|Cpte[3]~DUPLICATE_q\ & \inst3|Cpte\(5))))) # (\inst3|Cpte[4]~DUPLICATE_q\ 
-- & ((!\inst3|Cpte\(5) & ((\inst3|Cpte[3]~DUPLICATE_q\))) # (\inst3|Cpte\(5) & (!\inst3|Cpte\(0))))) ) ) ) # ( \inst3|Cpte\(1) & ( !\inst3|Cpte\(6) & ( (!\inst3|Cpte\(0) & (\inst3|Cpte[4]~DUPLICATE_q\ & (!\inst3|Cpte[3]~DUPLICATE_q\ & \inst3|Cpte\(5)))) # 
-- (\inst3|Cpte\(0) & ((!\inst3|Cpte[3]~DUPLICATE_q\) # ((!\inst3|Cpte[4]~DUPLICATE_q\ & !\inst3|Cpte\(5))))) ) ) ) # ( !\inst3|Cpte\(1) & ( !\inst3|Cpte\(6) & ( (!\inst3|Cpte\(5) & ((!\inst3|Cpte[3]~DUPLICATE_q\) # (!\inst3|Cpte\(0) $ 
-- (\inst3|Cpte[4]~DUPLICATE_q\)))) # (\inst3|Cpte\(5) & (!\inst3|Cpte\(0) & (!\inst3|Cpte[4]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111100110001000010101000111000000000011111000100011010001111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Cpte\(0),
	datab => \inst3|ALT_INV_Cpte[4]~DUPLICATE_q\,
	datac => \inst3|ALT_INV_Cpte[3]~DUPLICATE_q\,
	datad => \inst3|ALT_INV_Cpte\(5),
	datae => \inst3|ALT_INV_Cpte\(1),
	dataf => \inst3|ALT_INV_Cpte\(6),
	combout => \inst|Mux5~7_combout\);

-- Location: LABCELL_X13_Y75_N57
\inst|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux5~0_combout\ = ( !\inst3|Cpts[8]~6_combout\ & ( (!\inst3|Cpts[9]~2_combout\ & (!\inst|Mux5~7_combout\)) # (\inst3|Cpts[9]~2_combout\ & ((\inst3|Cpte\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010101111101000001010111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Mux5~7_combout\,
	datac => \inst3|ALT_INV_Cpts[9]~2_combout\,
	datad => \inst3|ALT_INV_Cpte\(1),
	dataf => \inst3|ALT_INV_Cpts[8]~6_combout\,
	combout => \inst|Mux5~0_combout\);

-- Location: LABCELL_X13_Y75_N3
\inst|Mux5~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux5~8_combout\ = ( \inst3|Cpte\(4) & ( \inst3|Cpte[3]~DUPLICATE_q\ & ( (!\inst3|Cpte\(5) & ((!\inst3|Cpte\(1)) # ((!\inst3|Cpte\(6) & \inst3|Cpte[0]~DUPLICATE_q\)))) # (\inst3|Cpte\(5) & (\inst3|Cpte\(6) & (\inst3|Cpte[0]~DUPLICATE_q\))) ) ) ) # ( 
-- !\inst3|Cpte\(4) & ( \inst3|Cpte[3]~DUPLICATE_q\ & ( (!\inst3|Cpte\(1) & ((!\inst3|Cpte\(6) $ (!\inst3|Cpte\(5))) # (\inst3|Cpte[0]~DUPLICATE_q\))) # (\inst3|Cpte\(1) & (!\inst3|Cpte[0]~DUPLICATE_q\ $ (((\inst3|Cpte\(6) & \inst3|Cpte\(5)))))) ) ) ) # ( 
-- \inst3|Cpte\(4) & ( !\inst3|Cpte[3]~DUPLICATE_q\ & ( (!\inst3|Cpte\(1) & (!\inst3|Cpte\(5) $ (((!\inst3|Cpte\(6)) # (\inst3|Cpte[0]~DUPLICATE_q\))))) # (\inst3|Cpte\(1) & (!\inst3|Cpte\(6) & (!\inst3|Cpte[0]~DUPLICATE_q\ & !\inst3|Cpte\(5)))) ) ) ) # ( 
-- !\inst3|Cpte\(4) & ( !\inst3|Cpte[3]~DUPLICATE_q\ & ( (!\inst3|Cpte\(5) & (!\inst3|Cpte\(6) & (!\inst3|Cpte[0]~DUPLICATE_q\ & \inst3|Cpte\(1)))) # (\inst3|Cpte\(5) & ((!\inst3|Cpte[0]~DUPLICATE_q\ $ (\inst3|Cpte\(1))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100011000011010010001011000001111100101110011111001000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Cpte\(6),
	datab => \inst3|ALT_INV_Cpte[0]~DUPLICATE_q\,
	datac => \inst3|ALT_INV_Cpte\(1),
	datad => \inst3|ALT_INV_Cpte\(5),
	datae => \inst3|ALT_INV_Cpte\(4),
	dataf => \inst3|ALT_INV_Cpte[3]~DUPLICATE_q\,
	combout => \inst|Mux5~8_combout\);

-- Location: LABCELL_X13_Y75_N42
\inst|Mux5~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux5~3_combout\ = ( !\inst3|Cpts[8]~6_combout\ & ( (!\inst3|Cpts[9]~2_combout\ & (((!\inst|Mux5~8_combout\)))) # (\inst3|Cpts[9]~2_combout\ & (!\inst3|Cpte\(1) $ (((\inst3|Cpte[0]~DUPLICATE_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110010010110001111001001011000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Cpts[9]~2_combout\,
	datab => \inst3|ALT_INV_Cpte\(1),
	datac => \inst|ALT_INV_Mux5~8_combout\,
	datad => \inst3|ALT_INV_Cpte[0]~DUPLICATE_q\,
	dataf => \inst3|ALT_INV_Cpts[8]~6_combout\,
	combout => \inst|Mux5~3_combout\);

-- Location: LABCELL_X13_Y75_N0
\inst|Mux5~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux5~9_combout\ = ( \inst3|Cpte\(4) & ( \inst3|Cpte[3]~DUPLICATE_q\ & ( (!\inst3|Cpte\(5) & ((!\inst3|Cpte\(1)) # ((!\inst3|Cpte\(6) & \inst3|Cpte[0]~DUPLICATE_q\)))) # (\inst3|Cpte\(5) & (\inst3|Cpte\(6) & (\inst3|Cpte[0]~DUPLICATE_q\))) ) ) ) # ( 
-- !\inst3|Cpte\(4) & ( \inst3|Cpte[3]~DUPLICATE_q\ & ( (!\inst3|Cpte\(1) & ((!\inst3|Cpte\(6) $ (!\inst3|Cpte\(5))) # (\inst3|Cpte[0]~DUPLICATE_q\))) # (\inst3|Cpte\(1) & (!\inst3|Cpte[0]~DUPLICATE_q\ $ (((\inst3|Cpte\(6) & \inst3|Cpte\(5)))))) ) ) ) # ( 
-- \inst3|Cpte\(4) & ( !\inst3|Cpte[3]~DUPLICATE_q\ & ( (!\inst3|Cpte\(5) & (!\inst3|Cpte[0]~DUPLICATE_q\ & (!\inst3|Cpte\(6) $ (!\inst3|Cpte\(1))))) # (\inst3|Cpte\(5) & (!\inst3|Cpte\(1) & ((!\inst3|Cpte\(6)) # (\inst3|Cpte[0]~DUPLICATE_q\)))) ) ) ) # ( 
-- !\inst3|Cpte\(4) & ( !\inst3|Cpte[3]~DUPLICATE_q\ & ( (!\inst3|Cpte\(5) & (!\inst3|Cpte\(6) & (!\inst3|Cpte[0]~DUPLICATE_q\ & \inst3|Cpte\(1)))) # (\inst3|Cpte\(5) & ((!\inst3|Cpte[0]~DUPLICATE_q\ $ (\inst3|Cpte\(1))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110010000011010010111000000001111011110010011111000100100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Cpte\(6),
	datab => \inst3|ALT_INV_Cpte[0]~DUPLICATE_q\,
	datac => \inst3|ALT_INV_Cpte\(5),
	datad => \inst3|ALT_INV_Cpte\(1),
	datae => \inst3|ALT_INV_Cpte\(4),
	dataf => \inst3|ALT_INV_Cpte[3]~DUPLICATE_q\,
	combout => \inst|Mux5~9_combout\);

-- Location: LABCELL_X13_Y75_N30
\inst|Mux5~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux5~2_combout\ = ( \inst3|Cpts[8]~6_combout\ & ( \inst3|Cpts[9]~2_combout\ ) ) # ( !\inst3|Cpts[8]~6_combout\ & ( (!\inst3|Cpts[9]~2_combout\ & ((!\inst|Mux5~9_combout\))) # (\inst3|Cpts[9]~2_combout\ & (\inst3|Cpte\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100111100000011110011110000001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ALT_INV_Cpts[9]~2_combout\,
	datac => \inst3|ALT_INV_Cpte\(1),
	datad => \inst|ALT_INV_Mux5~9_combout\,
	dataf => \inst3|ALT_INV_Cpts[8]~6_combout\,
	combout => \inst|Mux5~2_combout\);

-- Location: LABCELL_X13_Y75_N15
\inst|Mux5~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux5~6_combout\ = (!\inst3|Cpte\(6) & !\inst3|Cpte[4]~DUPLICATE_q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Cpte\(6),
	datab => \inst3|ALT_INV_Cpte[4]~DUPLICATE_q\,
	combout => \inst|Mux5~6_combout\);

-- Location: MLABCELL_X15_Y73_N54
\inst|Mux5~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux5~5_combout\ = ( \inst3|Cpte\(0) & ( \inst3|Cpte[6]~DUPLICATE_q\ & ( (!\inst3|Cpte[3]~DUPLICATE_q\ & ((!\inst3|Cpte\(4) & ((\inst3|Cpte[5]~DUPLICATE_q\))) # (\inst3|Cpte\(4) & (\inst3|Cpte\(1))))) # (\inst3|Cpte[3]~DUPLICATE_q\ & 
-- (!\inst3|Cpte[5]~DUPLICATE_q\ & (!\inst3|Cpte\(1) $ (!\inst3|Cpte\(4))))) ) ) ) # ( !\inst3|Cpte\(0) & ( \inst3|Cpte[6]~DUPLICATE_q\ & ( (!\inst3|Cpte[3]~DUPLICATE_q\ & ((!\inst3|Cpte\(1) & ((\inst3|Cpte[5]~DUPLICATE_q\))) # (\inst3|Cpte\(1) & 
-- (\inst3|Cpte\(4))))) # (\inst3|Cpte[3]~DUPLICATE_q\ & ((!\inst3|Cpte\(1) & (\inst3|Cpte\(4))) # (\inst3|Cpte\(1) & ((\inst3|Cpte[5]~DUPLICATE_q\))))) ) ) ) # ( \inst3|Cpte\(0) & ( !\inst3|Cpte[6]~DUPLICATE_q\ & ( (!\inst3|Cpte[3]~DUPLICATE_q\ & 
-- (((!\inst3|Cpte[5]~DUPLICATE_q\)) # (\inst3|Cpte\(1)))) # (\inst3|Cpte[3]~DUPLICATE_q\ & (!\inst3|Cpte[5]~DUPLICATE_q\ & (!\inst3|Cpte\(1) $ (!\inst3|Cpte\(4))))) ) ) ) # ( !\inst3|Cpte\(0) & ( !\inst3|Cpte[6]~DUPLICATE_q\ & ( (!\inst3|Cpte\(1) & 
-- (!\inst3|Cpte\(4) $ (((!\inst3|Cpte[3]~DUPLICATE_q\ & !\inst3|Cpte[5]~DUPLICATE_q\))))) # (\inst3|Cpte\(1) & (!\inst3|Cpte[3]~DUPLICATE_q\ & (\inst3|Cpte\(4) & \inst3|Cpte[5]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100011000010101111100010001000000110100111110001011010100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Cpte[3]~DUPLICATE_q\,
	datab => \inst3|ALT_INV_Cpte\(1),
	datac => \inst3|ALT_INV_Cpte\(4),
	datad => \inst3|ALT_INV_Cpte[5]~DUPLICATE_q\,
	datae => \inst3|ALT_INV_Cpte\(0),
	dataf => \inst3|ALT_INV_Cpte[6]~DUPLICATE_q\,
	combout => \inst|Mux5~5_combout\);

-- Location: LABCELL_X13_Y75_N48
\inst|Mux5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux5~1_combout\ = ( \inst|Mux5~5_combout\ & ( \inst3|Cpts[8]~6_combout\ & ( \inst3|Cpts[9]~2_combout\ ) ) ) # ( !\inst|Mux5~5_combout\ & ( \inst3|Cpts[8]~6_combout\ & ( \inst3|Cpts[9]~2_combout\ ) ) ) # ( \inst|Mux5~5_combout\ & ( 
-- !\inst3|Cpts[8]~6_combout\ & ( (\inst3|Cpts[9]~2_combout\ & (!\inst3|Cpte\(1) $ (\inst3|Cpte[0]~DUPLICATE_q\))) ) ) ) # ( !\inst|Mux5~5_combout\ & ( !\inst3|Cpts[8]~6_combout\ & ( (!\inst3|Cpts[9]~2_combout\) # ((!\inst3|Cpte\(1) & (!\inst|Mux5~6_combout\ 
-- & !\inst3|Cpte[0]~DUPLICATE_q\)) # (\inst3|Cpte\(1) & ((\inst3|Cpte[0]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110101010101111010100000000010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Cpts[9]~2_combout\,
	datab => \inst|ALT_INV_Mux5~6_combout\,
	datac => \inst3|ALT_INV_Cpte\(1),
	datad => \inst3|ALT_INV_Cpte[0]~DUPLICATE_q\,
	datae => \inst|ALT_INV_Mux5~5_combout\,
	dataf => \inst3|ALT_INV_Cpts[8]~6_combout\,
	combout => \inst|Mux5~1_combout\);

-- Location: LABCELL_X13_Y75_N6
\inst|Mux5~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux5~4_combout\ = ( \inst|Mux5~2_combout\ & ( \inst|Mux5~1_combout\ & ( (!\inst3|Cpte\(2) & (\inst|Mux5~0_combout\ & ((!\inst3|Cpte[7]~DUPLICATE_q\)))) # (\inst3|Cpte\(2) & (((!\inst|Mux5~3_combout\) # (!\inst3|Cpte[7]~DUPLICATE_q\)))) ) ) ) # ( 
-- !\inst|Mux5~2_combout\ & ( \inst|Mux5~1_combout\ & ( (!\inst3|Cpte\(2) & (\inst|Mux5~0_combout\ & ((!\inst3|Cpte[7]~DUPLICATE_q\)))) # (\inst3|Cpte\(2) & (((!\inst|Mux5~3_combout\ & \inst3|Cpte[7]~DUPLICATE_q\)))) ) ) ) # ( \inst|Mux5~2_combout\ & ( 
-- !\inst|Mux5~1_combout\ & ( (!\inst3|Cpte\(2) & (((\inst3|Cpte[7]~DUPLICATE_q\)) # (\inst|Mux5~0_combout\))) # (\inst3|Cpte\(2) & (((!\inst|Mux5~3_combout\) # (!\inst3|Cpte[7]~DUPLICATE_q\)))) ) ) ) # ( !\inst|Mux5~2_combout\ & ( !\inst|Mux5~1_combout\ & ( 
-- (!\inst3|Cpte\(2) & (((\inst3|Cpte[7]~DUPLICATE_q\)) # (\inst|Mux5~0_combout\))) # (\inst3|Cpte\(2) & (((!\inst|Mux5~3_combout\ & \inst3|Cpte[7]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000011111100010111111111110001010000000011000101111100001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Mux5~0_combout\,
	datab => \inst|ALT_INV_Mux5~3_combout\,
	datac => \inst3|ALT_INV_Cpte\(2),
	datad => \inst3|ALT_INV_Cpte[7]~DUPLICATE_q\,
	datae => \inst|ALT_INV_Mux5~2_combout\,
	dataf => \inst|ALT_INV_Mux5~1_combout\,
	combout => \inst|Mux5~4_combout\);

-- Location: FF_X13_Y75_N8
\inst|Q[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst23|CLKs~combout\,
	d => \inst|Mux5~4_combout\,
	clrn => \inst30|Reset_n_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Q\(26));

-- Location: FF_X18_Y75_N5
\inst22|DtR[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst26|CLKs~combout\,
	asdata => \inst|Q\(26),
	sload => VCC,
	ena => \inst22|DtR[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst22|DtR\(26));

-- Location: LABCELL_X19_Y73_N12
\inst|Mux1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux1~3_combout\ = ( \inst3|Cpte\(4) & ( \inst|Mux2~1_combout\ & ( (\inst3|Cpts[9]~2_combout\ & (!\inst3|Cpte[7]~DUPLICATE_q\ $ (!\inst3|Cpte[5]~DUPLICATE_q\))) ) ) ) # ( !\inst3|Cpte\(4) & ( \inst|Mux2~1_combout\ & ( (\inst3|Cpts[9]~2_combout\ & 
-- (((\inst3|Cpte[7]~DUPLICATE_q\ & !\inst3|Cpte[6]~DUPLICATE_q\)) # (\inst3|Cpte[5]~DUPLICATE_q\))) ) ) ) # ( \inst3|Cpte\(4) & ( !\inst|Mux2~1_combout\ & ( (\inst3|Cpts[9]~2_combout\ & (!\inst3|Cpte[7]~DUPLICATE_q\ $ (!\inst3|Cpte[5]~DUPLICATE_q\))) ) ) ) 
-- # ( !\inst3|Cpte\(4) & ( !\inst|Mux2~1_combout\ & ( (!\inst3|Cpts[9]~2_combout\ & (\inst3|Cpte[7]~DUPLICATE_q\ & (!\inst3|Cpte[6]~DUPLICATE_q\ & !\inst3|Cpte[5]~DUPLICATE_q\))) # (\inst3|Cpts[9]~2_combout\ & (!\inst3|Cpte[7]~DUPLICATE_q\ $ 
-- (((!\inst3|Cpte[5]~DUPLICATE_q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000101000100000100010100010000010000010101010001000101000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Cpts[9]~2_combout\,
	datab => \inst3|ALT_INV_Cpte[7]~DUPLICATE_q\,
	datac => \inst3|ALT_INV_Cpte[6]~DUPLICATE_q\,
	datad => \inst3|ALT_INV_Cpte[5]~DUPLICATE_q\,
	datae => \inst3|ALT_INV_Cpte\(4),
	dataf => \inst|ALT_INV_Mux2~1_combout\,
	combout => \inst|Mux1~3_combout\);

-- Location: LABCELL_X19_Y74_N12
\inst|Mux1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux1~1_combout\ = ( \inst3|Cpte\(2) & ( \inst3|Cpte\(1) & ( (!\inst3|Cpte\(5) & (!\inst3|Cpte[6]~DUPLICATE_q\ & !\inst3|Cpte\(4))) # (\inst3|Cpte\(5) & (\inst3|Cpte[6]~DUPLICATE_q\ & \inst3|Cpte\(4))) ) ) ) # ( !\inst3|Cpte\(2) & ( \inst3|Cpte\(1) & 
-- ( (!\inst3|Cpte\(5) & (!\inst3|Cpte[6]~DUPLICATE_q\ & ((!\inst3|Cpte[3]~DUPLICATE_q\) # (!\inst3|Cpte\(4))))) # (\inst3|Cpte\(5) & (((\inst3|Cpte[6]~DUPLICATE_q\ & \inst3|Cpte\(4))))) ) ) ) # ( \inst3|Cpte\(2) & ( !\inst3|Cpte\(1) & ( (!\inst3|Cpte\(5) & 
-- (!\inst3|Cpte[6]~DUPLICATE_q\ & ((!\inst3|Cpte[3]~DUPLICATE_q\) # (!\inst3|Cpte\(4))))) # (\inst3|Cpte\(5) & (((\inst3|Cpte[6]~DUPLICATE_q\ & \inst3|Cpte\(4))))) ) ) ) # ( !\inst3|Cpte\(2) & ( !\inst3|Cpte\(1) & ( (!\inst3|Cpte\(5) & 
-- (!\inst3|Cpte[6]~DUPLICATE_q\ & ((!\inst3|Cpte[3]~DUPLICATE_q\) # (!\inst3|Cpte\(4))))) # (\inst3|Cpte\(5) & (((\inst3|Cpte[6]~DUPLICATE_q\ & \inst3|Cpte\(4))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010000101101000001000010110100000100001011010000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Cpte\(5),
	datab => \inst3|ALT_INV_Cpte[3]~DUPLICATE_q\,
	datac => \inst3|ALT_INV_Cpte[6]~DUPLICATE_q\,
	datad => \inst3|ALT_INV_Cpte\(4),
	datae => \inst3|ALT_INV_Cpte\(2),
	dataf => \inst3|ALT_INV_Cpte\(1),
	combout => \inst|Mux1~1_combout\);

-- Location: FF_X17_Y74_N40
\inst3|Cpte[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst23|CLKs~combout\,
	asdata => \inst3|Add0~1_sumout\,
	clrn => \inst21|St_CPT~q\,
	sclr => \inst3|LessThan0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|Cpte\(7));

-- Location: LABCELL_X19_Y74_N39
\inst|Mux2~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux2~3_combout\ = ( \inst3|Cpte\(2) & ( \inst3|Cpte[0]~DUPLICATE_q\ & ( \inst3|Cpte[3]~DUPLICATE_q\ ) ) ) # ( !\inst3|Cpte\(2) & ( \inst3|Cpte[0]~DUPLICATE_q\ & ( (\inst3|Cpte\(1) & \inst3|Cpte[3]~DUPLICATE_q\) ) ) ) # ( \inst3|Cpte\(2) & ( 
-- !\inst3|Cpte[0]~DUPLICATE_q\ & ( \inst3|Cpte[3]~DUPLICATE_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000101000001010000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Cpte\(1),
	datac => \inst3|ALT_INV_Cpte[3]~DUPLICATE_q\,
	datae => \inst3|ALT_INV_Cpte\(2),
	dataf => \inst3|ALT_INV_Cpte[0]~DUPLICATE_q\,
	combout => \inst|Mux2~3_combout\);

-- Location: LABCELL_X19_Y74_N18
\inst|Mux1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux1~2_combout\ = ( \inst3|Cpte\(7) & ( \inst|Mux2~3_combout\ & ( (!\inst3|Cpte[6]~DUPLICATE_q\ & (((\inst3|Cpte\(4) & \inst|Mux1~1_combout\)))) # (\inst3|Cpte[6]~DUPLICATE_q\ & (\inst3|Cpte\(5))) ) ) ) # ( !\inst3|Cpte\(7) & ( \inst|Mux2~3_combout\ 
-- & ( (!\inst3|Cpte[6]~DUPLICATE_q\ & ((!\inst|Mux1~1_combout\))) # (\inst3|Cpte[6]~DUPLICATE_q\ & (!\inst3|Cpte\(5))) ) ) ) # ( \inst3|Cpte\(7) & ( !\inst|Mux2~3_combout\ & ( (\inst|Mux1~1_combout\ & ((!\inst3|Cpte[6]~DUPLICATE_q\ & ((\inst3|Cpte\(4)))) # 
-- (\inst3|Cpte[6]~DUPLICATE_q\ & (\inst3|Cpte\(5))))) ) ) ) # ( !\inst3|Cpte\(7) & ( !\inst|Mux2~3_combout\ & ( (!\inst|Mux1~1_combout\) # ((!\inst3|Cpte\(5) & \inst3|Cpte[6]~DUPLICATE_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100001010000000000011010111111010000010100000010100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Cpte\(5),
	datab => \inst3|ALT_INV_Cpte\(4),
	datac => \inst3|ALT_INV_Cpte[6]~DUPLICATE_q\,
	datad => \inst|ALT_INV_Mux1~1_combout\,
	datae => \inst3|ALT_INV_Cpte\(7),
	dataf => \inst|ALT_INV_Mux2~3_combout\,
	combout => \inst|Mux1~2_combout\);

-- Location: LABCELL_X19_Y77_N24
\inst|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux1~0_combout\ = ( \inst3|Cpts[8]~6_combout\ & ( \inst|Mux1~2_combout\ & ( (!\inst3|Cpts[9]~2_combout\ & (\inst3|Cpte[7]~DUPLICATE_q\)) # (\inst3|Cpts[9]~2_combout\ & ((\inst3|Cpte[6]~DUPLICATE_q\))) ) ) ) # ( !\inst3|Cpts[8]~6_combout\ & ( 
-- \inst|Mux1~2_combout\ & ( (!\inst3|Cpts[9]~2_combout\) # (\inst|Mux1~3_combout\) ) ) ) # ( \inst3|Cpts[8]~6_combout\ & ( !\inst|Mux1~2_combout\ & ( (!\inst3|Cpts[9]~2_combout\ & (\inst3|Cpte[7]~DUPLICATE_q\)) # (\inst3|Cpts[9]~2_combout\ & 
-- ((\inst3|Cpte[6]~DUPLICATE_q\))) ) ) ) # ( !\inst3|Cpts[8]~6_combout\ & ( !\inst|Mux1~2_combout\ & ( \inst|Mux1~3_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000010100101111110111011101110110000101001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Cpts[9]~2_combout\,
	datab => \inst|ALT_INV_Mux1~3_combout\,
	datac => \inst3|ALT_INV_Cpte[7]~DUPLICATE_q\,
	datad => \inst3|ALT_INV_Cpte[6]~DUPLICATE_q\,
	datae => \inst3|ALT_INV_Cpts[8]~6_combout\,
	dataf => \inst|ALT_INV_Mux1~2_combout\,
	combout => \inst|Mux1~0_combout\);

-- Location: FF_X19_Y77_N26
\inst|Q[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst23|CLKs~combout\,
	d => \inst|Mux1~0_combout\,
	clrn => \inst30|Reset_n_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Q\(30));

-- Location: FF_X18_Y76_N49
\inst22|DtR[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst26|CLKs~combout\,
	asdata => \inst|Q\(30),
	sload => VCC,
	ena => \inst22|DtR[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst22|DtR\(30));

-- Location: LABCELL_X18_Y73_N36
\inst|Mux13~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux13~3_combout\ = ( \inst3|Cpte\(1) & ( \inst3|Cpte\(2) & ( (!\inst3|Cpte\(3) & (!\inst3|Cpte\(4) $ (((!\inst3|Cpte[6]~DUPLICATE_q\ & !\inst3|Cpte[5]~DUPLICATE_q\))))) # (\inst3|Cpte\(3) & ((!\inst3|Cpte[5]~DUPLICATE_q\) # (!\inst3|Cpte\(4) $ 
-- (\inst3|Cpte[6]~DUPLICATE_q\)))) ) ) ) # ( !\inst3|Cpte\(1) & ( \inst3|Cpte\(2) & ( (!\inst3|Cpte\(4) & (\inst3|Cpte\(3) & \inst3|Cpte[6]~DUPLICATE_q\)) # (\inst3|Cpte\(4) & (!\inst3|Cpte\(3) & !\inst3|Cpte[6]~DUPLICATE_q\)) ) ) ) # ( \inst3|Cpte\(1) & ( 
-- !\inst3|Cpte\(2) & ( (!\inst3|Cpte\(3) & ((!\inst3|Cpte\(4) $ (\inst3|Cpte[6]~DUPLICATE_q\)) # (\inst3|Cpte[5]~DUPLICATE_q\))) # (\inst3|Cpte\(3) & (!\inst3|Cpte\(4) $ (((!\inst3|Cpte[6]~DUPLICATE_q\) # (!\inst3|Cpte[5]~DUPLICATE_q\))))) ) ) ) # ( 
-- !\inst3|Cpte\(1) & ( !\inst3|Cpte\(2) & ( (!\inst3|Cpte\(4) & (!\inst3|Cpte\(3) $ (\inst3|Cpte[5]~DUPLICATE_q\))) # (\inst3|Cpte\(4) & (\inst3|Cpte\(3) & !\inst3|Cpte[5]~DUPLICATE_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001100100100010100101011101111001000010010000100111101110101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Cpte\(4),
	datab => \inst3|ALT_INV_Cpte\(3),
	datac => \inst3|ALT_INV_Cpte[6]~DUPLICATE_q\,
	datad => \inst3|ALT_INV_Cpte[5]~DUPLICATE_q\,
	datae => \inst3|ALT_INV_Cpte\(1),
	dataf => \inst3|ALT_INV_Cpte\(2),
	combout => \inst|Mux13~3_combout\);

-- Location: LABCELL_X18_Y73_N54
\inst|Mux13~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux13~4_combout\ = ( \inst3|Cpte\(1) & ( \inst3|Cpte\(2) & ( (!\inst3|Cpte[5]~DUPLICATE_q\ & (((!\inst3|Cpte[6]~DUPLICATE_q\)))) # (\inst3|Cpte[5]~DUPLICATE_q\ & (!\inst3|Cpte\(3) & ((\inst3|Cpte\(4))))) ) ) ) # ( !\inst3|Cpte\(1) & ( 
-- \inst3|Cpte\(2) & ( (!\inst3|Cpte[6]~DUPLICATE_q\ & ((!\inst3|Cpte\(3) & ((!\inst3|Cpte\(4)))) # (\inst3|Cpte\(3) & (!\inst3|Cpte[5]~DUPLICATE_q\ & \inst3|Cpte\(4))))) # (\inst3|Cpte[6]~DUPLICATE_q\ & ((!\inst3|Cpte[5]~DUPLICATE_q\ $ (\inst3|Cpte\(4))))) 
-- ) ) ) # ( \inst3|Cpte\(1) & ( !\inst3|Cpte\(2) & ( (!\inst3|Cpte[6]~DUPLICATE_q\ & ((!\inst3|Cpte[5]~DUPLICATE_q\ $ (\inst3|Cpte\(4))))) # (\inst3|Cpte[6]~DUPLICATE_q\ & ((!\inst3|Cpte\(3) & (\inst3|Cpte[5]~DUPLICATE_q\ & !\inst3|Cpte\(4))) # 
-- (\inst3|Cpte\(3) & ((\inst3|Cpte\(4)))))) ) ) ) # ( !\inst3|Cpte\(1) & ( !\inst3|Cpte\(2) & ( (!\inst3|Cpte[5]~DUPLICATE_q\ & (\inst3|Cpte\(3) & ((!\inst3|Cpte\(4))))) # (\inst3|Cpte[5]~DUPLICATE_q\ & (((\inst3|Cpte[6]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011100000011110000100011010110101100010000111100000011100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Cpte\(3),
	datab => \inst3|ALT_INV_Cpte[5]~DUPLICATE_q\,
	datac => \inst3|ALT_INV_Cpte[6]~DUPLICATE_q\,
	datad => \inst3|ALT_INV_Cpte\(4),
	datae => \inst3|ALT_INV_Cpte\(1),
	dataf => \inst3|ALT_INV_Cpte\(2),
	combout => \inst|Mux13~4_combout\);

-- Location: LABCELL_X18_Y73_N12
\inst|Mux13~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux13~5_combout\ = ( \inst3|Cpte[0]~DUPLICATE_q\ & ( \inst|Mux13~4_combout\ ) ) # ( !\inst3|Cpte[0]~DUPLICATE_q\ & ( !\inst|Mux13~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_Mux13~3_combout\,
	datad => \inst|ALT_INV_Mux13~4_combout\,
	dataf => \inst3|ALT_INV_Cpte[0]~DUPLICATE_q\,
	combout => \inst|Mux13~5_combout\);

-- Location: MLABCELL_X15_Y73_N24
\inst|Mux13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux13~0_combout\ = ( \inst3|Cpte[6]~DUPLICATE_q\ & ( \inst3|Cpte\(4) & ( (!\inst3|Cpte[5]~DUPLICATE_q\ & (\inst3|Cpte\(3) & !\inst3|Cpte\(2))) ) ) ) # ( !\inst3|Cpte[6]~DUPLICATE_q\ & ( \inst3|Cpte\(4) & ( (!\inst3|Cpte\(3) & ((\inst3|Cpte\(2)))) # 
-- (\inst3|Cpte\(3) & (!\inst3|Cpte[5]~DUPLICATE_q\ & !\inst3|Cpte\(2))) ) ) ) # ( \inst3|Cpte[6]~DUPLICATE_q\ & ( !\inst3|Cpte\(4) & ( !\inst3|Cpte\(3) $ (((\inst3|Cpte\(2)) # (\inst3|Cpte[5]~DUPLICATE_q\))) ) ) ) # ( !\inst3|Cpte[6]~DUPLICATE_q\ & ( 
-- !\inst3|Cpte\(4) & ( (\inst3|Cpte[5]~DUPLICATE_q\ & (\inst3|Cpte\(3) & !\inst3|Cpte\(2))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000000100110010011001100100010110011000010001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Cpte[5]~DUPLICATE_q\,
	datab => \inst3|ALT_INV_Cpte\(3),
	datad => \inst3|ALT_INV_Cpte\(2),
	datae => \inst3|ALT_INV_Cpte[6]~DUPLICATE_q\,
	dataf => \inst3|ALT_INV_Cpte\(4),
	combout => \inst|Mux13~0_combout\);

-- Location: LABCELL_X18_Y73_N45
\inst|Mux13~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux13~2_combout\ = ( \inst|Mux13~0_combout\ & ( (!\inst3|Cpte[7]~DUPLICATE_q\ & ((!\inst|Mux13~5_combout\) # ((!\inst3|Cpte[0]~DUPLICATE_q\ & !\inst3|Cpte\(1))))) # (\inst3|Cpte[7]~DUPLICATE_q\ & (((\inst|Mux13~5_combout\)))) ) ) # ( 
-- !\inst|Mux13~0_combout\ & ( (!\inst3|Cpte[7]~DUPLICATE_q\ & (!\inst|Mux13~5_combout\ & ((\inst3|Cpte\(1)) # (\inst3|Cpte[0]~DUPLICATE_q\)))) # (\inst3|Cpte[7]~DUPLICATE_q\ & (((\inst|Mux13~5_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100001111000011010000111100001111001011110000111100101111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Cpte[0]~DUPLICATE_q\,
	datab => \inst3|ALT_INV_Cpte[7]~DUPLICATE_q\,
	datac => \inst|ALT_INV_Mux13~5_combout\,
	datad => \inst3|ALT_INV_Cpte\(1),
	dataf => \inst|ALT_INV_Mux13~0_combout\,
	combout => \inst|Mux13~2_combout\);

-- Location: LABCELL_X18_Y73_N24
\inst|Mux13~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux13~1_combout\ = ( \inst|Mux13~2_combout\ & ( \inst3|Cpts[9]~2_combout\ & ( (\inst3|Cpte[7]~DUPLICATE_q\ & (\inst|Mux2~0_combout\ & (\inst|Mux22~0_combout\ & !\inst3|Cpts[8]~6_combout\))) ) ) ) # ( !\inst|Mux13~2_combout\ & ( 
-- \inst3|Cpts[9]~2_combout\ & ( (\inst3|Cpte[7]~DUPLICATE_q\ & (\inst|Mux2~0_combout\ & (\inst|Mux22~0_combout\ & !\inst3|Cpts[8]~6_combout\))) ) ) ) # ( \inst|Mux13~2_combout\ & ( !\inst3|Cpts[9]~2_combout\ & ( (!\inst3|Cpts[8]~6_combout\) # 
-- (\inst3|Cpte[7]~DUPLICATE_q\) ) ) ) # ( !\inst|Mux13~2_combout\ & ( !\inst3|Cpts[9]~2_combout\ & ( (\inst3|Cpte[7]~DUPLICATE_q\ & (((\inst|Mux2~0_combout\ & \inst|Mux22~0_combout\)) # (\inst3|Cpts[8]~6_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101010101111111110101010100000001000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Cpte[7]~DUPLICATE_q\,
	datab => \inst|ALT_INV_Mux2~0_combout\,
	datac => \inst|ALT_INV_Mux22~0_combout\,
	datad => \inst3|ALT_INV_Cpts[8]~6_combout\,
	datae => \inst|ALT_INV_Mux13~2_combout\,
	dataf => \inst3|ALT_INV_Cpts[9]~2_combout\,
	combout => \inst|Mux13~1_combout\);

-- Location: FF_X18_Y73_N26
\inst|Q[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst23|CLKs~combout\,
	d => \inst|Mux13~1_combout\,
	clrn => \inst30|Reset_n_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Q\(18));

-- Location: FF_X18_Y75_N31
\inst22|DtR[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst26|CLKs~combout\,
	asdata => \inst|Q\(18),
	sload => VCC,
	ena => \inst22|DtR[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst22|DtR\(18));

-- Location: LABCELL_X18_Y75_N54
\inst22|S~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst22|S~17_combout\ = ( \inst22|Cpte[3]~DUPLICATE_q\ & ( \inst22|DtR\(18) & ( (\inst22|DtR\(22)) # (\inst22|Cpte[2]~DUPLICATE_q\) ) ) ) # ( !\inst22|Cpte[3]~DUPLICATE_q\ & ( \inst22|DtR\(18) & ( (!\inst22|Cpte[2]~DUPLICATE_q\ & ((\inst22|DtR\(30)))) # 
-- (\inst22|Cpte[2]~DUPLICATE_q\ & (\inst22|DtR\(26))) ) ) ) # ( \inst22|Cpte[3]~DUPLICATE_q\ & ( !\inst22|DtR\(18) & ( (!\inst22|Cpte[2]~DUPLICATE_q\ & \inst22|DtR\(22)) ) ) ) # ( !\inst22|Cpte[3]~DUPLICATE_q\ & ( !\inst22|DtR\(18) & ( 
-- (!\inst22|Cpte[2]~DUPLICATE_q\ & ((\inst22|DtR\(30)))) # (\inst22|Cpte[2]~DUPLICATE_q\ & (\inst22|DtR\(26))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110101111001000100010001000000101101011110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|ALT_INV_Cpte[2]~DUPLICATE_q\,
	datab => \inst22|ALT_INV_DtR\(22),
	datac => \inst22|ALT_INV_DtR\(26),
	datad => \inst22|ALT_INV_DtR\(30),
	datae => \inst22|ALT_INV_Cpte[3]~DUPLICATE_q\,
	dataf => \inst22|ALT_INV_DtR\(18),
	combout => \inst22|S~17_combout\);

-- Location: LABCELL_X18_Y73_N3
\inst|Mux12~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux12~4_combout\ = ( \inst3|Cpte\(4) & ( \inst3|Cpte\(2) & ( (!\inst3|Cpte\(3) & (!\inst3|Cpte\(1) $ (!\inst3|Cpte[5]~DUPLICATE_q\ $ (\inst3|Cpte[6]~DUPLICATE_q\)))) # (\inst3|Cpte\(3) & (!\inst3|Cpte\(1) & ((!\inst3|Cpte[5]~DUPLICATE_q\) # 
-- (\inst3|Cpte[6]~DUPLICATE_q\)))) ) ) ) # ( !\inst3|Cpte\(4) & ( \inst3|Cpte\(2) & ( (!\inst3|Cpte\(3) & ((!\inst3|Cpte\(1)) # ((!\inst3|Cpte[5]~DUPLICATE_q\ & \inst3|Cpte[6]~DUPLICATE_q\)))) # (\inst3|Cpte\(3) & (((\inst3|Cpte[6]~DUPLICATE_q\)))) ) ) ) # 
-- ( \inst3|Cpte\(4) & ( !\inst3|Cpte\(2) & ( (!\inst3|Cpte\(3) & (((!\inst3|Cpte[6]~DUPLICATE_q\)))) # (\inst3|Cpte\(3) & (((\inst3|Cpte[5]~DUPLICATE_q\ & !\inst3|Cpte[6]~DUPLICATE_q\)) # (\inst3|Cpte\(1)))) ) ) ) # ( !\inst3|Cpte\(4) & ( !\inst3|Cpte\(2) & 
-- ( (!\inst3|Cpte\(3) & (\inst3|Cpte\(1) & ((!\inst3|Cpte[6]~DUPLICATE_q\) # (\inst3|Cpte[5]~DUPLICATE_q\)))) # (\inst3|Cpte\(3) & (!\inst3|Cpte\(1) $ (!\inst3|Cpte[5]~DUPLICATE_q\ $ (!\inst3|Cpte[6]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110010100010110110111110001000110001000111110110110100010100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Cpte\(1),
	datab => \inst3|ALT_INV_Cpte\(3),
	datac => \inst3|ALT_INV_Cpte[5]~DUPLICATE_q\,
	datad => \inst3|ALT_INV_Cpte[6]~DUPLICATE_q\,
	datae => \inst3|ALT_INV_Cpte\(4),
	dataf => \inst3|ALT_INV_Cpte\(2),
	combout => \inst|Mux12~4_combout\);

-- Location: LABCELL_X18_Y73_N30
\inst|Mux12~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux12~3_combout\ = ( \inst3|Cpte\(1) & ( \inst3|Cpte\(2) & ( (\inst3|Cpte\(3) & ((!\inst3|Cpte\(4) & (!\inst3|Cpte[5]~DUPLICATE_q\ $ (!\inst3|Cpte[6]~DUPLICATE_q\))) # (\inst3|Cpte\(4) & ((!\inst3|Cpte[5]~DUPLICATE_q\) # 
-- (\inst3|Cpte[6]~DUPLICATE_q\))))) ) ) ) # ( !\inst3|Cpte\(1) & ( \inst3|Cpte\(2) & ( (\inst3|Cpte\(3) & ((!\inst3|Cpte\(4) & (\inst3|Cpte[5]~DUPLICATE_q\)) # (\inst3|Cpte\(4) & ((!\inst3|Cpte[5]~DUPLICATE_q\) # (!\inst3|Cpte[6]~DUPLICATE_q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000011101100000000001101101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Cpte\(4),
	datab => \inst3|ALT_INV_Cpte[5]~DUPLICATE_q\,
	datac => \inst3|ALT_INV_Cpte[6]~DUPLICATE_q\,
	datad => \inst3|ALT_INV_Cpte\(3),
	datae => \inst3|ALT_INV_Cpte\(1),
	dataf => \inst3|ALT_INV_Cpte\(2),
	combout => \inst|Mux12~3_combout\);

-- Location: LABCELL_X18_Y73_N15
\inst|Mux12~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux12~5_combout\ = ( \inst|Mux12~3_combout\ & ( (\inst3|Cpte[0]~DUPLICATE_q\ & \inst|Mux12~4_combout\) ) ) # ( !\inst|Mux12~3_combout\ & ( (!\inst3|Cpte[0]~DUPLICATE_q\) # (\inst|Mux12~4_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101011111111101010101111111100000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Cpte[0]~DUPLICATE_q\,
	datad => \inst|ALT_INV_Mux12~4_combout\,
	dataf => \inst|ALT_INV_Mux12~3_combout\,
	combout => \inst|Mux12~5_combout\);

-- Location: LABCELL_X17_Y73_N57
\inst|Mux12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux12~0_combout\ = ( \inst3|Cpte\(2) & ( \inst3|Cpte[6]~DUPLICATE_q\ & ( (!\inst3|Cpte\(1) & ((!\inst3|Cpte[5]~DUPLICATE_q\) # (!\inst3|Cpte\(4)))) ) ) ) # ( !\inst3|Cpte\(2) & ( \inst3|Cpte[6]~DUPLICATE_q\ & ( !\inst3|Cpte[5]~DUPLICATE_q\ $ 
-- (!\inst3|Cpte\(4)) ) ) ) # ( \inst3|Cpte\(2) & ( !\inst3|Cpte[6]~DUPLICATE_q\ & ( (!\inst3|Cpte\(1) & (!\inst3|Cpte[5]~DUPLICATE_q\ $ (!\inst3|Cpte\(4)))) ) ) ) # ( !\inst3|Cpte\(2) & ( !\inst3|Cpte[6]~DUPLICATE_q\ & ( (!\inst3|Cpte\(4)) # 
-- (\inst3|Cpte[5]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111010111110101010110100000000001011010010110101111101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Cpte[5]~DUPLICATE_q\,
	datac => \inst3|ALT_INV_Cpte\(4),
	datad => \inst3|ALT_INV_Cpte\(1),
	datae => \inst3|ALT_INV_Cpte\(2),
	dataf => \inst3|ALT_INV_Cpte[6]~DUPLICATE_q\,
	combout => \inst|Mux12~0_combout\);

-- Location: MLABCELL_X15_Y73_N48
\inst|Mux12~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux12~7_combout\ = ( \inst3|Cpte[6]~DUPLICATE_q\ & ( \inst3|Cpte\(1) & ( (!\inst3|Cpte[5]~DUPLICATE_q\ & ((!\inst3|Cpte\(2) & (!\inst3|Cpte\(3))) # (\inst3|Cpte\(2) & ((\inst3|Cpte\(4)))))) # (\inst3|Cpte[5]~DUPLICATE_q\ & (!\inst3|Cpte\(3) $ 
-- (!\inst3|Cpte\(4) $ (\inst3|Cpte\(2))))) ) ) ) # ( !\inst3|Cpte[6]~DUPLICATE_q\ & ( \inst3|Cpte\(1) & ( (!\inst3|Cpte[5]~DUPLICATE_q\ & ((!\inst3|Cpte\(3) & (!\inst3|Cpte\(4) & \inst3|Cpte\(2))) # (\inst3|Cpte\(3) & ((!\inst3|Cpte\(4)) # 
-- (\inst3|Cpte\(2)))))) # (\inst3|Cpte[5]~DUPLICATE_q\ & (((\inst3|Cpte\(2))))) ) ) ) # ( \inst3|Cpte[6]~DUPLICATE_q\ & ( !\inst3|Cpte\(1) & ( (!\inst3|Cpte[5]~DUPLICATE_q\ & (((!\inst3|Cpte\(2))))) # (\inst3|Cpte[5]~DUPLICATE_q\ & ((!\inst3|Cpte\(3) & 
-- ((!\inst3|Cpte\(2)) # (\inst3|Cpte\(4)))) # (\inst3|Cpte\(3) & (\inst3|Cpte\(4) & !\inst3|Cpte\(2))))) ) ) ) # ( !\inst3|Cpte[6]~DUPLICATE_q\ & ( !\inst3|Cpte\(1) & ( (!\inst3|Cpte[5]~DUPLICATE_q\ & (!\inst3|Cpte\(3) $ (!\inst3|Cpte\(4) $ 
-- (!\inst3|Cpte\(2))))) # (\inst3|Cpte[5]~DUPLICATE_q\ & ((!\inst3|Cpte\(2) & ((!\inst3|Cpte\(4)))) # (\inst3|Cpte\(2) & (\inst3|Cpte\(3))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101001000111001111011110000010000100000111101111001110001001011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Cpte[5]~DUPLICATE_q\,
	datab => \inst3|ALT_INV_Cpte\(3),
	datac => \inst3|ALT_INV_Cpte\(4),
	datad => \inst3|ALT_INV_Cpte\(2),
	datae => \inst3|ALT_INV_Cpte[6]~DUPLICATE_q\,
	dataf => \inst3|ALT_INV_Cpte\(1),
	combout => \inst|Mux12~7_combout\);

-- Location: LABCELL_X18_Y73_N9
\inst|Mux12~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux12~6_combout\ = ( \inst3|Cpte\(4) & ( \inst3|Cpte\(2) & ( (!\inst3|Cpte\(3) & (((!\inst3|Cpte[5]~DUPLICATE_q\ & !\inst3|Cpte\(1))))) # (\inst3|Cpte\(3) & ((!\inst3|Cpte[5]~DUPLICATE_q\) # (!\inst3|Cpte[6]~DUPLICATE_q\ $ (\inst3|Cpte\(1))))) ) ) ) 
-- # ( !\inst3|Cpte\(4) & ( \inst3|Cpte\(2) & ( (!\inst3|Cpte[6]~DUPLICATE_q\ & (\inst3|Cpte[5]~DUPLICATE_q\ & ((!\inst3|Cpte\(1)) # (\inst3|Cpte\(3))))) # (\inst3|Cpte[6]~DUPLICATE_q\ & (!\inst3|Cpte\(1) $ (((\inst3|Cpte\(3) & 
-- !\inst3|Cpte[5]~DUPLICATE_q\))))) ) ) ) # ( \inst3|Cpte\(4) & ( !\inst3|Cpte\(2) & ( (!\inst3|Cpte\(3) & (!\inst3|Cpte[6]~DUPLICATE_q\ $ (!\inst3|Cpte[5]~DUPLICATE_q\))) ) ) ) # ( !\inst3|Cpte\(4) & ( !\inst3|Cpte\(2) & ( (!\inst3|Cpte\(3) & 
-- (((!\inst3|Cpte[6]~DUPLICATE_q\ & \inst3|Cpte\(1))) # (\inst3|Cpte[5]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110010001100010010000100100001001111000100101111001000110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Cpte[6]~DUPLICATE_q\,
	datab => \inst3|ALT_INV_Cpte\(3),
	datac => \inst3|ALT_INV_Cpte[5]~DUPLICATE_q\,
	datad => \inst3|ALT_INV_Cpte\(1),
	datae => \inst3|ALT_INV_Cpte\(4),
	dataf => \inst3|ALT_INV_Cpte\(2),
	combout => \inst|Mux12~6_combout\);

-- Location: LABCELL_X18_Y73_N42
\inst|Mux12~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux12~8_combout\ = ( \inst|Mux12~6_combout\ & ( (!\inst3|Cpte[0]~DUPLICATE_q\) # (\inst|Mux12~7_combout\) ) ) # ( !\inst|Mux12~6_combout\ & ( (\inst3|Cpte[0]~DUPLICATE_q\ & \inst|Mux12~7_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010110101010111111111010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Cpte[0]~DUPLICATE_q\,
	datad => \inst|ALT_INV_Mux12~7_combout\,
	dataf => \inst|ALT_INV_Mux12~6_combout\,
	combout => \inst|Mux12~8_combout\);

-- Location: LABCELL_X18_Y73_N48
\inst|Mux12~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux12~2_combout\ = ( \inst|Mux12~0_combout\ & ( \inst|Mux12~8_combout\ & ( ((\inst|Mux12~5_combout\ & ((\inst3|Cpte\(3)) # (\inst3|Cpte[0]~DUPLICATE_q\)))) # (\inst3|Cpte[7]~DUPLICATE_q\) ) ) ) # ( !\inst|Mux12~0_combout\ & ( \inst|Mux12~8_combout\ 
-- & ( (\inst|Mux12~5_combout\) # (\inst3|Cpte[7]~DUPLICATE_q\) ) ) ) # ( \inst|Mux12~0_combout\ & ( !\inst|Mux12~8_combout\ & ( (!\inst3|Cpte[7]~DUPLICATE_q\ & (\inst|Mux12~5_combout\ & ((\inst3|Cpte\(3)) # (\inst3|Cpte[0]~DUPLICATE_q\)))) ) ) ) # ( 
-- !\inst|Mux12~0_combout\ & ( !\inst|Mux12~8_combout\ & ( (!\inst3|Cpte[7]~DUPLICATE_q\ & \inst|Mux12~5_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000000100110000110011111111110011001101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Cpte[0]~DUPLICATE_q\,
	datab => \inst3|ALT_INV_Cpte[7]~DUPLICATE_q\,
	datac => \inst3|ALT_INV_Cpte\(3),
	datad => \inst|ALT_INV_Mux12~5_combout\,
	datae => \inst|ALT_INV_Mux12~0_combout\,
	dataf => \inst|ALT_INV_Mux12~8_combout\,
	combout => \inst|Mux12~2_combout\);

-- Location: LABCELL_X18_Y73_N18
\inst|Mux12~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux12~1_combout\ = ( !\inst3|Cpts[8]~6_combout\ & ( \inst3|Cpts[9]~2_combout\ & ( (\inst3|Cpte[7]~DUPLICATE_q\ & (\inst|Mux2~1_combout\ & \inst|Mux22~0_combout\)) ) ) ) # ( \inst3|Cpts[8]~6_combout\ & ( !\inst3|Cpts[9]~2_combout\ & ( 
-- \inst3|Cpte[7]~DUPLICATE_q\ ) ) ) # ( !\inst3|Cpts[8]~6_combout\ & ( !\inst3|Cpts[9]~2_combout\ & ( \inst|Mux12~2_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111010101010101010100000000000100010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Cpte[7]~DUPLICATE_q\,
	datab => \inst|ALT_INV_Mux2~1_combout\,
	datac => \inst|ALT_INV_Mux12~2_combout\,
	datad => \inst|ALT_INV_Mux22~0_combout\,
	datae => \inst3|ALT_INV_Cpts[8]~6_combout\,
	dataf => \inst3|ALT_INV_Cpts[9]~2_combout\,
	combout => \inst|Mux12~1_combout\);

-- Location: FF_X18_Y73_N20
\inst|Q[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst23|CLKs~combout\,
	d => \inst|Mux12~1_combout\,
	clrn => \inst30|Reset_n_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Q\(19));

-- Location: FF_X18_Y73_N7
\inst22|DtR[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst26|CLKs~combout\,
	asdata => \inst|Q\(19),
	sload => VCC,
	ena => \inst22|DtR[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst22|DtR\(19));

-- Location: LABCELL_X16_Y75_N9
\inst|Mux4~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux4~8_combout\ = ( \inst3|Cpte[4]~DUPLICATE_q\ & ( (!\inst3|Cpte\(0) & ((!\inst3|Cpte\(5)) # ((!\inst3|Cpte[1]~DUPLICATE_q\)))) # (\inst3|Cpte\(0) & ((!\inst3|Cpte[6]~DUPLICATE_q\ & ((!\inst3|Cpte[1]~DUPLICATE_q\))) # (\inst3|Cpte[6]~DUPLICATE_q\ & 
-- (!\inst3|Cpte\(5))))) ) ) # ( !\inst3|Cpte[4]~DUPLICATE_q\ & ( (!\inst3|Cpte\(5) & (!\inst3|Cpte[6]~DUPLICATE_q\ & (!\inst3|Cpte\(0) $ (!\inst3|Cpte[1]~DUPLICATE_q\)))) # (\inst3|Cpte\(5) & (\inst3|Cpte[1]~DUPLICATE_q\ & ((\inst3|Cpte[6]~DUPLICATE_q\) # 
-- (\inst3|Cpte\(0))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000010010011010000001001001111111110100011001111111010001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Cpte\(0),
	datab => \inst3|ALT_INV_Cpte\(5),
	datac => \inst3|ALT_INV_Cpte[6]~DUPLICATE_q\,
	datad => \inst3|ALT_INV_Cpte[1]~DUPLICATE_q\,
	dataf => \inst3|ALT_INV_Cpte[4]~DUPLICATE_q\,
	combout => \inst|Mux4~8_combout\);

-- Location: LABCELL_X16_Y75_N30
\inst|Mux4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux4~1_combout\ = ( \inst3|Cpte\(5) & ( (!\inst3|Cpte\(0) & ((!\inst3|Cpte\(6) & ((!\inst3|Cpte[4]~DUPLICATE_q\))) # (\inst3|Cpte\(6) & (!\inst3|Cpte\(1))))) # (\inst3|Cpte\(0) & (!\inst3|Cpte\(1) & (!\inst3|Cpte[4]~DUPLICATE_q\ $ 
-- (\inst3|Cpte\(6))))) ) ) # ( !\inst3|Cpte\(5) & ( (!\inst3|Cpte\(1) & (!\inst3|Cpte\(0) & (\inst3|Cpte[4]~DUPLICATE_q\ & \inst3|Cpte\(6)))) # (\inst3|Cpte\(1) & (((!\inst3|Cpte\(6))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100001000001100110000100011100000100011001110000010001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Cpte\(0),
	datab => \inst3|ALT_INV_Cpte\(1),
	datac => \inst3|ALT_INV_Cpte[4]~DUPLICATE_q\,
	datad => \inst3|ALT_INV_Cpte\(6),
	dataf => \inst3|ALT_INV_Cpte\(5),
	combout => \inst|Mux4~1_combout\);

-- Location: LABCELL_X16_Y75_N48
\inst|Mux4~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux4~9_combout\ = ( \inst|Mux4~8_combout\ & ( \inst3|Cpte\(0) & ( \inst3|Cpte\(2) ) ) ) # ( !\inst|Mux4~8_combout\ & ( \inst3|Cpte\(0) & ( \inst3|Cpte\(2) ) ) ) # ( \inst|Mux4~8_combout\ & ( !\inst3|Cpte\(0) & ( !\inst3|Cpte\(2) $ 
-- (\inst3|Cpte[1]~DUPLICATE_q\) ) ) ) # ( !\inst|Mux4~8_combout\ & ( !\inst3|Cpte\(0) & ( (!\inst3|Cpte\(2) & (!\inst3|Cpte[1]~DUPLICATE_q\ & ((\inst3|Cpte[6]~DUPLICATE_q\) # (\inst3|Cpte\(5))))) # (\inst3|Cpte\(2) & (((\inst3|Cpte[1]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100001111000011110000111100001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Cpte\(5),
	datab => \inst3|ALT_INV_Cpte\(2),
	datac => \inst3|ALT_INV_Cpte[1]~DUPLICATE_q\,
	datad => \inst3|ALT_INV_Cpte[6]~DUPLICATE_q\,
	datae => \inst|ALT_INV_Mux4~8_combout\,
	dataf => \inst3|ALT_INV_Cpte\(0),
	combout => \inst|Mux4~9_combout\);

-- Location: LABCELL_X19_Y75_N6
\inst|Mux4~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux4~3_combout\ = ( !\inst3|Cpts[9]~2_combout\ & ( \inst|Mux4~9_combout\ & ( ((!\inst3|Cpte\(2) & (\inst|Mux4~8_combout\)) # (\inst3|Cpte\(2) & ((\inst|Mux4~1_combout\)))) # (\inst3|Cpts[8]~6_combout\) ) ) ) # ( \inst3|Cpts[9]~2_combout\ & ( 
-- !\inst|Mux4~9_combout\ & ( !\inst3|Cpts[8]~6_combout\ ) ) ) # ( !\inst3|Cpts[9]~2_combout\ & ( !\inst|Mux4~9_combout\ & ( ((!\inst3|Cpte\(2) & (\inst|Mux4~8_combout\)) # (\inst3|Cpte\(2) & ((\inst|Mux4~1_combout\)))) # (\inst3|Cpts[8]~6_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011100111111110011001100110001110111001111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Mux4~8_combout\,
	datab => \inst3|ALT_INV_Cpts[8]~6_combout\,
	datac => \inst|ALT_INV_Mux4~1_combout\,
	datad => \inst3|ALT_INV_Cpte\(2),
	datae => \inst3|ALT_INV_Cpts[9]~2_combout\,
	dataf => \inst|ALT_INV_Mux4~9_combout\,
	combout => \inst|Mux4~3_combout\);

-- Location: LABCELL_X19_Y75_N42
\inst|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux4~0_combout\ = ( \inst3|Cpte\(1) & ( (!\inst3|Cpte\(5) & ((!\inst3|Cpte\(6) & (\inst3|Cpte\(0))) # (\inst3|Cpte\(6) & ((!\inst3|Cpte\(4)))))) # (\inst3|Cpte\(5) & (((!\inst3|Cpte\(0) & !\inst3|Cpte\(6))) # (\inst3|Cpte\(4)))) ) ) # ( 
-- !\inst3|Cpte\(1) & ( (!\inst3|Cpte\(5) & (((!\inst3|Cpte\(4) & \inst3|Cpte\(6))))) # (\inst3|Cpte\(5) & ((!\inst3|Cpte\(4)) # ((\inst3|Cpte\(0) & \inst3|Cpte\(6))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000011110001001100001111000101100111110000110110011111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Cpte\(0),
	datab => \inst3|ALT_INV_Cpte\(5),
	datac => \inst3|ALT_INV_Cpte\(4),
	datad => \inst3|ALT_INV_Cpte\(6),
	dataf => \inst3|ALT_INV_Cpte\(1),
	combout => \inst|Mux4~0_combout\);

-- Location: LABCELL_X19_Y75_N51
\inst|Mux4~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux4~2_combout\ = ( \inst|Mux4~1_combout\ & ( (!\inst3|Cpts[8]~6_combout\ & ((!\inst3|Cpte\(2) & (\inst|Mux4~0_combout\ & !\inst3|Cpts[9]~2_combout\)) # (\inst3|Cpte\(2) & ((\inst3|Cpts[9]~2_combout\))))) ) ) # ( !\inst|Mux4~1_combout\ & ( 
-- (!\inst3|Cpts[8]~6_combout\ & (((\inst|Mux4~0_combout\ & !\inst3|Cpts[9]~2_combout\)) # (\inst3|Cpte\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101000100010001010100010001000001000001000100000100000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Cpts[8]~6_combout\,
	datab => \inst3|ALT_INV_Cpte\(2),
	datac => \inst|ALT_INV_Mux4~0_combout\,
	datad => \inst3|ALT_INV_Cpts[9]~2_combout\,
	dataf => \inst|ALT_INV_Mux4~1_combout\,
	combout => \inst|Mux4~2_combout\);

-- Location: LABCELL_X13_Y75_N12
\inst|Mux4~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux4~4_combout\ = ( \inst3|Cpte\(0) & ( (!\inst3|Cpte\(6) & ((!\inst3|Cpte[4]~DUPLICATE_q\ & (!\inst3|Cpte\(5))) # (\inst3|Cpte[4]~DUPLICATE_q\ & ((\inst3|Cpte\(1)) # (\inst3|Cpte\(5)))))) # (\inst3|Cpte\(6) & (!\inst3|Cpte\(1) $ 
-- (((\inst3|Cpte[4]~DUPLICATE_q\ & !\inst3|Cpte\(5)))))) ) ) # ( !\inst3|Cpte\(0) & ( (!\inst3|Cpte[4]~DUPLICATE_q\ & ((!\inst3|Cpte\(1) & (\inst3|Cpte\(6))) # (\inst3|Cpte\(1) & ((!\inst3|Cpte\(5)))))) # (\inst3|Cpte[4]~DUPLICATE_q\ & (!\inst3|Cpte\(5) $ 
-- (((!\inst3|Cpte\(6)) # (!\inst3|Cpte\(1)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011111010010010001111101001011000111101100101100011110110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Cpte\(6),
	datab => \inst3|ALT_INV_Cpte[4]~DUPLICATE_q\,
	datac => \inst3|ALT_INV_Cpte\(5),
	datad => \inst3|ALT_INV_Cpte\(1),
	dataf => \inst3|ALT_INV_Cpte\(0),
	combout => \inst|Mux4~4_combout\);

-- Location: LABCELL_X13_Y75_N39
\inst|Mux4~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux4~5_combout\ = ( \inst3|Cpte\(0) & ( (!\inst3|Cpte\(1) & ((!\inst3|Cpte\(6)) # ((!\inst3|Cpte\(5))))) # (\inst3|Cpte\(1) & ((!\inst3|Cpte\(6) $ (!\inst3|Cpte[4]~DUPLICATE_q\)) # (\inst3|Cpte\(5)))) ) ) # ( !\inst3|Cpte\(0) & ( (!\inst3|Cpte\(6) & 
-- (((!\inst3|Cpte[4]~DUPLICATE_q\) # (\inst3|Cpte\(5))) # (\inst3|Cpte\(1)))) # (\inst3|Cpte\(6) & ((!\inst3|Cpte[4]~DUPLICATE_q\ & ((!\inst3|Cpte\(5)))) # (\inst3|Cpte[4]~DUPLICATE_q\ & (!\inst3|Cpte\(1))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111011010101110111101101010111011011110101110111101111010111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Cpte\(6),
	datab => \inst3|ALT_INV_Cpte\(1),
	datac => \inst3|ALT_INV_Cpte[4]~DUPLICATE_q\,
	datad => \inst3|ALT_INV_Cpte\(5),
	dataf => \inst3|ALT_INV_Cpte\(0),
	combout => \inst|Mux4~5_combout\);

-- Location: LABCELL_X19_Y75_N0
\inst|Mux4~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux4~10_combout\ = ( !\inst3|Cpte\(2) & ( ((!\inst3|Cpts[9]~2_combout\ & (!\inst|Mux4~5_combout\)) # (\inst3|Cpts[9]~2_combout\ & (((\inst3|Cpte\(1)) # (\inst3|Cpte\(0)))))) # (\inst3|Cpts[8]~6_combout\) ) ) # ( \inst3|Cpte\(2) & ( 
-- ((!\inst3|Cpts[9]~2_combout\ & (!\inst|Mux4~4_combout\)) # (\inst3|Cpts[9]~2_combout\ & (((!\inst3|Cpte\(0) & !\inst3|Cpte\(1)))))) # (\inst3|Cpts[8]~6_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "1011001111110111111101111011001111110111111101111011001110110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Cpts[9]~2_combout\,
	datab => \inst3|ALT_INV_Cpts[8]~6_combout\,
	datac => \inst|ALT_INV_Mux4~4_combout\,
	datad => \inst3|ALT_INV_Cpte\(0),
	datae => \inst3|ALT_INV_Cpte\(2),
	dataf => \inst3|ALT_INV_Cpte\(1),
	datag => \inst|ALT_INV_Mux4~5_combout\,
	combout => \inst|Mux4~10_combout\);

-- Location: LABCELL_X19_Y75_N48
\inst|Mux4~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux4~6_combout\ = ( \inst|Mux4~4_combout\ & ( (!\inst3|Cpts[8]~6_combout\ & (((!\inst3|Cpts[9]~2_combout\ & \inst|Mux4~5_combout\)) # (\inst3|Cpte\(2)))) # (\inst3|Cpts[8]~6_combout\ & (((\inst3|Cpts[9]~2_combout\)))) ) ) # ( !\inst|Mux4~4_combout\ 
-- & ( (!\inst3|Cpts[8]~6_combout\ & ((!\inst3|Cpte\(2) & (!\inst3|Cpts[9]~2_combout\ & \inst|Mux4~5_combout\)) # (\inst3|Cpte\(2) & (\inst3|Cpts[9]~2_combout\)))) # (\inst3|Cpts[8]~6_combout\ & (((\inst3|Cpts[9]~2_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011110000111000001111000011100100111101001110010011110100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Cpts[8]~6_combout\,
	datab => \inst3|ALT_INV_Cpte\(2),
	datac => \inst3|ALT_INV_Cpts[9]~2_combout\,
	datad => \inst|ALT_INV_Mux4~5_combout\,
	dataf => \inst|ALT_INV_Mux4~4_combout\,
	combout => \inst|Mux4~6_combout\);

-- Location: LABCELL_X19_Y75_N54
\inst|Mux4~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux4~7_combout\ = ( \inst3|Cpte\(3) & ( \inst|Mux4~6_combout\ & ( (!\inst3|Cpte[7]~DUPLICATE_q\) # (\inst|Mux4~10_combout\) ) ) ) # ( !\inst3|Cpte\(3) & ( \inst|Mux4~6_combout\ & ( (!\inst3|Cpte[7]~DUPLICATE_q\ & ((\inst|Mux4~2_combout\))) # 
-- (\inst3|Cpte[7]~DUPLICATE_q\ & (\inst|Mux4~3_combout\)) ) ) ) # ( \inst3|Cpte\(3) & ( !\inst|Mux4~6_combout\ & ( (\inst|Mux4~10_combout\ & \inst3|Cpte[7]~DUPLICATE_q\) ) ) ) # ( !\inst3|Cpte\(3) & ( !\inst|Mux4~6_combout\ & ( (!\inst3|Cpte[7]~DUPLICATE_q\ 
-- & ((\inst|Mux4~2_combout\))) # (\inst3|Cpte[7]~DUPLICATE_q\ & (\inst|Mux4~3_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101010101000000000000111100110011010101011111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Mux4~3_combout\,
	datab => \inst|ALT_INV_Mux4~2_combout\,
	datac => \inst|ALT_INV_Mux4~10_combout\,
	datad => \inst3|ALT_INV_Cpte[7]~DUPLICATE_q\,
	datae => \inst3|ALT_INV_Cpte\(3),
	dataf => \inst|ALT_INV_Mux4~6_combout\,
	combout => \inst|Mux4~7_combout\);

-- Location: FF_X19_Y75_N56
\inst|Q[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst23|CLKs~combout\,
	d => \inst|Mux4~7_combout\,
	clrn => \inst30|Reset_n_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Q\(27));

-- Location: FF_X18_Y75_N59
\inst22|DtR[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst26|CLKs~combout\,
	asdata => \inst|Q\(27),
	sload => VCC,
	ena => \inst22|DtR[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst22|DtR\(27));

-- Location: MLABCELL_X15_Y74_N30
\inst|Mux8~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux8~4_combout\ = ( \inst3|Cpte\(2) & ( \inst3|Cpte[3]~DUPLICATE_q\ & ( (!\inst3|Cpte\(4) & ((!\inst3|Cpte[6]~DUPLICATE_q\ & ((!\inst3|Cpte\(5)))) # (\inst3|Cpte[6]~DUPLICATE_q\ & (!\inst3|Cpte\(1))))) # (\inst3|Cpte\(4) & ((!\inst3|Cpte\(1) & 
-- (!\inst3|Cpte[6]~DUPLICATE_q\)) # (\inst3|Cpte\(1) & (\inst3|Cpte[6]~DUPLICATE_q\ & \inst3|Cpte\(5))))) ) ) ) # ( !\inst3|Cpte\(2) & ( \inst3|Cpte[3]~DUPLICATE_q\ & ( (!\inst3|Cpte\(1) & (!\inst3|Cpte\(4) $ (((!\inst3|Cpte\(5)))))) # (\inst3|Cpte\(1) & 
-- (!\inst3|Cpte\(5) & ((!\inst3|Cpte\(4)) # (!\inst3|Cpte[6]~DUPLICATE_q\)))) ) ) ) # ( \inst3|Cpte\(2) & ( !\inst3|Cpte[3]~DUPLICATE_q\ & ( (!\inst3|Cpte\(5) & (!\inst3|Cpte\(1) & (!\inst3|Cpte\(4) $ (!\inst3|Cpte[6]~DUPLICATE_q\)))) # (\inst3|Cpte\(5) & 
-- (((\inst3|Cpte[6]~DUPLICATE_q\) # (\inst3|Cpte\(4))))) ) ) ) # ( !\inst3|Cpte\(2) & ( !\inst3|Cpte[3]~DUPLICATE_q\ & ( (!\inst3|Cpte\(4) & (((!\inst3|Cpte[6]~DUPLICATE_q\ & !\inst3|Cpte\(5))))) # (\inst3|Cpte\(4) & ((!\inst3|Cpte\(1) & 
-- (!\inst3|Cpte[6]~DUPLICATE_q\ $ (!\inst3|Cpte\(5)))) # (\inst3|Cpte\(1) & (\inst3|Cpte[6]~DUPLICATE_q\ & \inst3|Cpte\(5))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001000100001001010000011111101110110100010001110100000101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Cpte\(1),
	datab => \inst3|ALT_INV_Cpte\(4),
	datac => \inst3|ALT_INV_Cpte[6]~DUPLICATE_q\,
	datad => \inst3|ALT_INV_Cpte\(5),
	datae => \inst3|ALT_INV_Cpte\(2),
	dataf => \inst3|ALT_INV_Cpte[3]~DUPLICATE_q\,
	combout => \inst|Mux8~4_combout\);

-- Location: MLABCELL_X15_Y74_N12
\inst|Mux8~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux8~2_combout\ = ( \inst3|Cpte\(5) & ( \inst3|Cpte[3]~DUPLICATE_q\ & ( (!\inst3|Cpte\(2) & (\inst3|Cpte[6]~DUPLICATE_q\ & \inst3|Cpte[4]~DUPLICATE_q\)) # (\inst3|Cpte\(2) & (!\inst3|Cpte[6]~DUPLICATE_q\ $ (!\inst3|Cpte[4]~DUPLICATE_q\))) ) ) ) # ( 
-- !\inst3|Cpte\(5) & ( \inst3|Cpte[3]~DUPLICATE_q\ & ( (!\inst3|Cpte\(1) & (((\inst3|Cpte[4]~DUPLICATE_q\) # (\inst3|Cpte[6]~DUPLICATE_q\)))) # (\inst3|Cpte\(1) & (\inst3|Cpte[4]~DUPLICATE_q\ & ((!\inst3|Cpte\(2)) # (\inst3|Cpte[6]~DUPLICATE_q\)))) ) ) ) # 
-- ( \inst3|Cpte\(5) & ( !\inst3|Cpte[3]~DUPLICATE_q\ & ( (!\inst3|Cpte\(1) & (!\inst3|Cpte[4]~DUPLICATE_q\ & ((!\inst3|Cpte[6]~DUPLICATE_q\) # (\inst3|Cpte\(2))))) # (\inst3|Cpte\(1) & (((!\inst3|Cpte[6]~DUPLICATE_q\) # (!\inst3|Cpte[4]~DUPLICATE_q\)))) ) ) 
-- ) # ( !\inst3|Cpte\(5) & ( !\inst3|Cpte[3]~DUPLICATE_q\ & ( (!\inst3|Cpte\(2) & (!\inst3|Cpte[6]~DUPLICATE_q\ $ (!\inst3|Cpte[4]~DUPLICATE_q\))) # (\inst3|Cpte\(2) & (!\inst3|Cpte[6]~DUPLICATE_q\ & !\inst3|Cpte[4]~DUPLICATE_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101010100000111101110011000000001100111011110000010101011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Cpte\(2),
	datab => \inst3|ALT_INV_Cpte\(1),
	datac => \inst3|ALT_INV_Cpte[6]~DUPLICATE_q\,
	datad => \inst3|ALT_INV_Cpte[4]~DUPLICATE_q\,
	datae => \inst3|ALT_INV_Cpte\(5),
	dataf => \inst3|ALT_INV_Cpte[3]~DUPLICATE_q\,
	combout => \inst|Mux8~2_combout\);

-- Location: LABCELL_X16_Y74_N0
\inst|Mux8~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux8~5_combout\ = (!\inst3|Cpte\(0) & (!\inst|Mux8~4_combout\)) # (\inst3|Cpte\(0) & ((\inst|Mux8~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011110011110000001111001111000000111100111100000011110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ALT_INV_Cpte\(0),
	datac => \inst|ALT_INV_Mux8~4_combout\,
	datad => \inst|ALT_INV_Mux8~2_combout\,
	combout => \inst|Mux8~5_combout\);

-- Location: MLABCELL_X15_Y74_N54
\inst|Mux8~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux8~1_combout\ = ( \inst3|Cpte\(5) & ( \inst3|Cpte\(1) & ( (!\inst3|Cpte\(2) & (!\inst3|Cpte[3]~DUPLICATE_q\ & (\inst3|Cpte[6]~DUPLICATE_q\ & \inst3|Cpte[4]~DUPLICATE_q\))) # (\inst3|Cpte\(2) & ((!\inst3|Cpte[3]~DUPLICATE_q\ & 
-- ((\inst3|Cpte[4]~DUPLICATE_q\) # (\inst3|Cpte[6]~DUPLICATE_q\))) # (\inst3|Cpte[3]~DUPLICATE_q\ & (\inst3|Cpte[6]~DUPLICATE_q\ & \inst3|Cpte[4]~DUPLICATE_q\)))) ) ) ) # ( !\inst3|Cpte\(5) & ( \inst3|Cpte\(1) & ( (!\inst3|Cpte\(2) & 
-- ((!\inst3|Cpte[3]~DUPLICATE_q\ & (!\inst3|Cpte[6]~DUPLICATE_q\ & !\inst3|Cpte[4]~DUPLICATE_q\)) # (\inst3|Cpte[3]~DUPLICATE_q\ & ((!\inst3|Cpte[6]~DUPLICATE_q\) # (!\inst3|Cpte[4]~DUPLICATE_q\))))) # (\inst3|Cpte\(2) & (\inst3|Cpte[3]~DUPLICATE_q\ & 
-- (!\inst3|Cpte[6]~DUPLICATE_q\ & !\inst3|Cpte[4]~DUPLICATE_q\))) ) ) ) # ( \inst3|Cpte\(5) & ( !\inst3|Cpte\(1) & ( (!\inst3|Cpte[3]~DUPLICATE_q\ & ((!\inst3|Cpte[6]~DUPLICATE_q\ & ((\inst3|Cpte[4]~DUPLICATE_q\))) # (\inst3|Cpte[6]~DUPLICATE_q\ & 
-- (\inst3|Cpte\(2))))) # (\inst3|Cpte[3]~DUPLICATE_q\ & (!\inst3|Cpte[4]~DUPLICATE_q\ $ (((\inst3|Cpte\(2) & !\inst3|Cpte[6]~DUPLICATE_q\))))) ) ) ) # ( !\inst3|Cpte\(5) & ( !\inst3|Cpte\(1) & ( (!\inst3|Cpte\(2) & (\inst3|Cpte[4]~DUPLICATE_q\ & 
-- ((\inst3|Cpte[6]~DUPLICATE_q\) # (\inst3|Cpte[3]~DUPLICATE_q\)))) # (\inst3|Cpte\(2) & ((!\inst3|Cpte[6]~DUPLICATE_q\ & ((\inst3|Cpte[4]~DUPLICATE_q\) # (\inst3|Cpte[3]~DUPLICATE_q\))) # (\inst3|Cpte[6]~DUPLICATE_q\ & ((!\inst3|Cpte[4]~DUPLICATE_q\))))) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010101111010001001111101010010110010001000000000010001001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Cpte\(2),
	datab => \inst3|ALT_INV_Cpte[3]~DUPLICATE_q\,
	datac => \inst3|ALT_INV_Cpte[6]~DUPLICATE_q\,
	datad => \inst3|ALT_INV_Cpte[4]~DUPLICATE_q\,
	datae => \inst3|ALT_INV_Cpte\(5),
	dataf => \inst3|ALT_INV_Cpte\(1),
	combout => \inst|Mux8~1_combout\);

-- Location: MLABCELL_X15_Y74_N51
\inst|Mux8~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux8~3_combout\ = ( \inst|Mux8~2_combout\ & ( (!\inst3|Cpte\(0) & \inst|Mux8~1_combout\) ) ) # ( !\inst|Mux8~2_combout\ & ( (\inst|Mux8~1_combout\) # (\inst3|Cpte\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111100000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst3|ALT_INV_Cpte\(0),
	datad => \inst|ALT_INV_Mux8~1_combout\,
	dataf => \inst|ALT_INV_Mux8~2_combout\,
	combout => \inst|Mux8~3_combout\);

-- Location: LABCELL_X17_Y75_N33
\inst|Mux8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux8~0_combout\ = ( \inst|Mux8~5_combout\ & ( \inst|Mux8~3_combout\ & ( ((!\inst3|Cpts[9]~2_combout\ & ((!\inst3|Cpts[8]~6_combout\) # (\inst3|Cpte[7]~DUPLICATE_q\)))) # (\inst|Mux15~0_combout\) ) ) ) # ( !\inst|Mux8~5_combout\ & ( 
-- \inst|Mux8~3_combout\ & ( ((\inst3|Cpte[7]~DUPLICATE_q\ & !\inst3|Cpts[9]~2_combout\)) # (\inst|Mux15~0_combout\) ) ) ) # ( \inst|Mux8~5_combout\ & ( !\inst|Mux8~3_combout\ & ( ((!\inst3|Cpts[9]~2_combout\ & (!\inst3|Cpts[8]~6_combout\ $ 
-- (\inst3|Cpte[7]~DUPLICATE_q\)))) # (\inst|Mux15~0_combout\) ) ) ) # ( !\inst|Mux8~5_combout\ & ( !\inst|Mux8~3_combout\ & ( ((\inst3|Cpts[8]~6_combout\ & (\inst3|Cpte[7]~DUPLICATE_q\ & !\inst3|Cpts[9]~2_combout\))) # (\inst|Mux15~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011100110011101101110011001100111111001100111011111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Cpts[8]~6_combout\,
	datab => \inst|ALT_INV_Mux15~0_combout\,
	datac => \inst3|ALT_INV_Cpte[7]~DUPLICATE_q\,
	datad => \inst3|ALT_INV_Cpts[9]~2_combout\,
	datae => \inst|ALT_INV_Mux8~5_combout\,
	dataf => \inst|ALT_INV_Mux8~3_combout\,
	combout => \inst|Mux8~0_combout\);

-- Location: FF_X17_Y75_N35
\inst|Q[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst23|CLKs~combout\,
	d => \inst|Mux8~0_combout\,
	clrn => \inst30|Reset_n_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Q\(23));

-- Location: FF_X18_Y78_N52
\inst22|DtR[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst26|CLKs~combout\,
	asdata => \inst|Q\(23),
	sload => VCC,
	ena => \inst22|DtR[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst22|DtR\(23));

-- Location: LABCELL_X17_Y77_N51
\inst|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux0~0_combout\ = ( \inst|Mux2~1_combout\ & ( (!\inst3|Cpte[5]~DUPLICATE_q\ & !\inst3|Cpte[4]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst3|ALT_INV_Cpte[5]~DUPLICATE_q\,
	datad => \inst3|ALT_INV_Cpte[4]~DUPLICATE_q\,
	dataf => \inst|ALT_INV_Mux2~1_combout\,
	combout => \inst|Mux0~0_combout\);

-- Location: LABCELL_X17_Y77_N48
\inst|Mux0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux0~1_combout\ = ( \inst3|Cpts[9]~2_combout\ & ( (!\inst3|Cpte\(6) & (!\inst3|Cpte[7]~DUPLICATE_q\)) # (\inst3|Cpte\(6) & ((!\inst3|Cpte[7]~DUPLICATE_q\ & ((\inst3|Cpts[8]~6_combout\))) # (\inst3|Cpte[7]~DUPLICATE_q\ & (!\inst|Mux0~0_combout\ & 
-- !\inst3|Cpts[8]~6_combout\)))) ) ) # ( !\inst3|Cpts[9]~2_combout\ & ( (!\inst3|Cpte[7]~DUPLICATE_q\ & (((\inst3|Cpts[8]~6_combout\)))) # (\inst3|Cpte[7]~DUPLICATE_q\ & (!\inst3|Cpts[8]~6_combout\ & ((!\inst|Mux0~0_combout\) # (\inst3|Cpte\(6))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000111001100001100011100110010011000110011001001100011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Cpte\(6),
	datab => \inst3|ALT_INV_Cpte[7]~DUPLICATE_q\,
	datac => \inst|ALT_INV_Mux0~0_combout\,
	datad => \inst3|ALT_INV_Cpts[8]~6_combout\,
	dataf => \inst3|ALT_INV_Cpts[9]~2_combout\,
	combout => \inst|Mux0~1_combout\);

-- Location: FF_X17_Y77_N50
\inst|Q[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst23|CLKs~combout\,
	d => \inst|Mux0~1_combout\,
	clrn => \inst30|Reset_n_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Q\(31));

-- Location: LABCELL_X18_Y75_N39
\inst22|DtR[31]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst22|DtR[31]~feeder_combout\ = ( \inst|Q\(31) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst|ALT_INV_Q\(31),
	combout => \inst22|DtR[31]~feeder_combout\);

-- Location: FF_X18_Y75_N41
\inst22|DtR[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst26|CLKs~combout\,
	d => \inst22|DtR[31]~feeder_combout\,
	ena => \inst22|DtR[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst22|DtR\(31));

-- Location: LABCELL_X18_Y75_N12
\inst22|S~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst22|S~18_combout\ = ( \inst22|DtR\(23) & ( \inst22|DtR\(31) & ( (!\inst22|Cpte[2]~DUPLICATE_q\) # ((!\inst22|Cpte[3]~DUPLICATE_q\ & ((\inst22|DtR\(27)))) # (\inst22|Cpte[3]~DUPLICATE_q\ & (\inst22|DtR\(19)))) ) ) ) # ( !\inst22|DtR\(23) & ( 
-- \inst22|DtR\(31) & ( (!\inst22|Cpte[2]~DUPLICATE_q\ & (((!\inst22|Cpte[3]~DUPLICATE_q\)))) # (\inst22|Cpte[2]~DUPLICATE_q\ & ((!\inst22|Cpte[3]~DUPLICATE_q\ & ((\inst22|DtR\(27)))) # (\inst22|Cpte[3]~DUPLICATE_q\ & (\inst22|DtR\(19))))) ) ) ) # ( 
-- \inst22|DtR\(23) & ( !\inst22|DtR\(31) & ( (!\inst22|Cpte[2]~DUPLICATE_q\ & (((\inst22|Cpte[3]~DUPLICATE_q\)))) # (\inst22|Cpte[2]~DUPLICATE_q\ & ((!\inst22|Cpte[3]~DUPLICATE_q\ & ((\inst22|DtR\(27)))) # (\inst22|Cpte[3]~DUPLICATE_q\ & 
-- (\inst22|DtR\(19))))) ) ) ) # ( !\inst22|DtR\(23) & ( !\inst22|DtR\(31) & ( (\inst22|Cpte[2]~DUPLICATE_q\ & ((!\inst22|Cpte[3]~DUPLICATE_q\ & ((\inst22|DtR\(27)))) # (\inst22|Cpte[3]~DUPLICATE_q\ & (\inst22|DtR\(19))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100110001000011010011110111000001111100011100110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|ALT_INV_DtR\(19),
	datab => \inst22|ALT_INV_Cpte[2]~DUPLICATE_q\,
	datac => \inst22|ALT_INV_Cpte[3]~DUPLICATE_q\,
	datad => \inst22|ALT_INV_DtR\(27),
	datae => \inst22|ALT_INV_DtR\(23),
	dataf => \inst22|ALT_INV_DtR\(31),
	combout => \inst22|S~18_combout\);

-- Location: LABCELL_X16_Y73_N48
\inst|Mux10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux10~0_combout\ = ( \inst3|Cpte\(2) & ( (!\inst3|Cpte[6]~DUPLICATE_q\ & (!\inst3|Cpte[5]~DUPLICATE_q\ & !\inst3|Cpte\(3))) # (\inst3|Cpte[6]~DUPLICATE_q\ & (\inst3|Cpte[5]~DUPLICATE_q\ & \inst3|Cpte\(3))) ) ) # ( !\inst3|Cpte\(2) & ( 
-- (!\inst3|Cpte[6]~DUPLICATE_q\ & ((!\inst3|Cpte\(3) & ((!\inst3|Cpte\(4)) # (\inst3|Cpte[5]~DUPLICATE_q\))) # (\inst3|Cpte\(3) & ((\inst3|Cpte\(4)))))) # (\inst3|Cpte[6]~DUPLICATE_q\ & (!\inst3|Cpte\(4) $ (((!\inst3|Cpte[5]~DUPLICATE_q\ & 
-- !\inst3|Cpte\(3)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011010101101010101101010110101010000001100000011000000110000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Cpte[6]~DUPLICATE_q\,
	datab => \inst3|ALT_INV_Cpte[5]~DUPLICATE_q\,
	datac => \inst3|ALT_INV_Cpte\(3),
	datad => \inst3|ALT_INV_Cpte\(4),
	dataf => \inst3|ALT_INV_Cpte\(2),
	combout => \inst|Mux10~0_combout\);

-- Location: LABCELL_X16_Y73_N3
\inst|Mux10~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux10~3_combout\ = ( \inst3|Cpte[6]~DUPLICATE_q\ & ( \inst3|Cpte\(2) & ( (!\inst3|Cpte[5]~DUPLICATE_q\ & (((!\inst3|Cpte\(1))))) # (\inst3|Cpte[5]~DUPLICATE_q\ & ((!\inst3|Cpte\(1) & ((!\inst3|Cpte\(3)))) # (\inst3|Cpte\(1) & 
-- (!\inst3|Cpte[4]~DUPLICATE_q\)))) ) ) ) # ( !\inst3|Cpte[6]~DUPLICATE_q\ & ( \inst3|Cpte\(2) & ( (!\inst3|Cpte\(3) & (\inst3|Cpte[5]~DUPLICATE_q\ & ((!\inst3|Cpte\(1)) # (\inst3|Cpte[4]~DUPLICATE_q\)))) # (\inst3|Cpte\(3) & ((!\inst3|Cpte\(1)) # 
-- (!\inst3|Cpte[4]~DUPLICATE_q\ $ (!\inst3|Cpte[5]~DUPLICATE_q\)))) ) ) ) # ( \inst3|Cpte[6]~DUPLICATE_q\ & ( !\inst3|Cpte\(2) & ( (!\inst3|Cpte\(3) & (!\inst3|Cpte[4]~DUPLICATE_q\ $ (!\inst3|Cpte[5]~DUPLICATE_q\ $ (!\inst3|Cpte\(1))))) # (\inst3|Cpte\(3) & 
-- ((!\inst3|Cpte[4]~DUPLICATE_q\ & (!\inst3|Cpte[5]~DUPLICATE_q\ & \inst3|Cpte\(1))) # (\inst3|Cpte[4]~DUPLICATE_q\ & ((!\inst3|Cpte\(1)))))) ) ) ) # ( !\inst3|Cpte[6]~DUPLICATE_q\ & ( !\inst3|Cpte\(2) & ( (!\inst3|Cpte\(1) & ((!\inst3|Cpte\(3) & 
-- ((!\inst3|Cpte[5]~DUPLICATE_q\))) # (\inst3|Cpte\(3) & (!\inst3|Cpte[4]~DUPLICATE_q\)))) # (\inst3|Cpte\(1) & (\inst3|Cpte[4]~DUPLICATE_q\ & ((!\inst3|Cpte[5]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110001001010000100101010110100000111111000101101111110000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Cpte[4]~DUPLICATE_q\,
	datab => \inst3|ALT_INV_Cpte\(3),
	datac => \inst3|ALT_INV_Cpte[5]~DUPLICATE_q\,
	datad => \inst3|ALT_INV_Cpte\(1),
	datae => \inst3|ALT_INV_Cpte[6]~DUPLICATE_q\,
	dataf => \inst3|ALT_INV_Cpte\(2),
	combout => \inst|Mux10~3_combout\);

-- Location: LABCELL_X16_Y73_N9
\inst|Mux10~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux10~4_combout\ = ( \inst3|Cpte[6]~DUPLICATE_q\ & ( \inst3|Cpte\(2) & ( (!\inst3|Cpte\(3) & (!\inst3|Cpte[5]~DUPLICATE_q\ $ (((\inst3|Cpte[4]~DUPLICATE_q\ & \inst3|Cpte\(1)))))) # (\inst3|Cpte\(3) & (!\inst3|Cpte[4]~DUPLICATE_q\ & 
-- ((!\inst3|Cpte\(1)) # (\inst3|Cpte[5]~DUPLICATE_q\)))) ) ) ) # ( !\inst3|Cpte[6]~DUPLICATE_q\ & ( \inst3|Cpte\(2) & ( (!\inst3|Cpte[4]~DUPLICATE_q\ & (\inst3|Cpte\(3) & ((\inst3|Cpte\(1)) # (\inst3|Cpte[5]~DUPLICATE_q\)))) # (\inst3|Cpte[4]~DUPLICATE_q\ & 
-- ((!\inst3|Cpte\(3) & ((!\inst3|Cpte\(1)))) # (\inst3|Cpte\(3) & (!\inst3|Cpte[5]~DUPLICATE_q\)))) ) ) ) # ( \inst3|Cpte[6]~DUPLICATE_q\ & ( !\inst3|Cpte\(2) & ( (!\inst3|Cpte[4]~DUPLICATE_q\ & ((!\inst3|Cpte\(3) & (\inst3|Cpte[5]~DUPLICATE_q\)) # 
-- (\inst3|Cpte\(3) & ((\inst3|Cpte\(1)))))) # (\inst3|Cpte[4]~DUPLICATE_q\ & (!\inst3|Cpte\(3) & ((!\inst3|Cpte[5]~DUPLICATE_q\) # (!\inst3|Cpte\(1))))) ) ) ) # ( !\inst3|Cpte[6]~DUPLICATE_q\ & ( !\inst3|Cpte\(2) & ( (!\inst3|Cpte\(3) & 
-- (\inst3|Cpte[4]~DUPLICATE_q\ & ((!\inst3|Cpte[5]~DUPLICATE_q\) # (\inst3|Cpte\(1))))) # (\inst3|Cpte\(3) & (!\inst3|Cpte[5]~DUPLICATE_q\ $ (((\inst3|Cpte\(1)) # (\inst3|Cpte[4]~DUPLICATE_q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110000101000111010011000110101001010110001100101110001010000110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Cpte[4]~DUPLICATE_q\,
	datab => \inst3|ALT_INV_Cpte\(3),
	datac => \inst3|ALT_INV_Cpte[5]~DUPLICATE_q\,
	datad => \inst3|ALT_INV_Cpte\(1),
	datae => \inst3|ALT_INV_Cpte[6]~DUPLICATE_q\,
	dataf => \inst3|ALT_INV_Cpte\(2),
	combout => \inst|Mux10~4_combout\);

-- Location: LABCELL_X16_Y73_N12
\inst|Mux10~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux10~5_combout\ = ( \inst|Mux10~4_combout\ & ( (!\inst|Mux10~3_combout\) # (\inst3|Cpte[0]~DUPLICATE_q\) ) ) # ( !\inst|Mux10~4_combout\ & ( (!\inst3|Cpte[0]~DUPLICATE_q\ & !\inst|Mux10~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000011111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst3|ALT_INV_Cpte[0]~DUPLICATE_q\,
	datad => \inst|ALT_INV_Mux10~3_combout\,
	dataf => \inst|ALT_INV_Mux10~4_combout\,
	combout => \inst|Mux10~5_combout\);

-- Location: LABCELL_X16_Y73_N21
\inst|Mux10~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux10~2_combout\ = ( \inst|Mux10~0_combout\ & ( \inst|Mux10~5_combout\ & ( \inst3|Cpte[7]~DUPLICATE_q\ ) ) ) # ( !\inst|Mux10~0_combout\ & ( \inst|Mux10~5_combout\ & ( ((!\inst3|Cpte\(1) & !\inst3|Cpte[0]~DUPLICATE_q\)) # 
-- (\inst3|Cpte[7]~DUPLICATE_q\) ) ) ) # ( \inst|Mux10~0_combout\ & ( !\inst|Mux10~5_combout\ & ( (!\inst3|Cpte[7]~DUPLICATE_q\ & ((\inst3|Cpte[0]~DUPLICATE_q\) # (\inst3|Cpte\(1)))) ) ) ) # ( !\inst|Mux10~0_combout\ & ( !\inst|Mux10~5_combout\ & ( 
-- !\inst3|Cpte[7]~DUPLICATE_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010000010101010101011110101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Cpte[7]~DUPLICATE_q\,
	datac => \inst3|ALT_INV_Cpte\(1),
	datad => \inst3|ALT_INV_Cpte[0]~DUPLICATE_q\,
	datae => \inst|ALT_INV_Mux10~0_combout\,
	dataf => \inst|ALT_INV_Mux10~5_combout\,
	combout => \inst|Mux10~2_combout\);

-- Location: LABCELL_X17_Y75_N45
\inst|Mux10~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux10~1_combout\ = ( \inst|Mux22~0_combout\ & ( \inst|Mux10~2_combout\ & ( (!\inst3|Cpts[9]~2_combout\ & (((!\inst3|Cpts[8]~6_combout\) # (\inst3|Cpte[7]~DUPLICATE_q\)))) # (\inst3|Cpts[9]~2_combout\ & (\inst|Mux2~0_combout\ & 
-- (\inst3|Cpte[7]~DUPLICATE_q\ & !\inst3|Cpts[8]~6_combout\))) ) ) ) # ( !\inst|Mux22~0_combout\ & ( \inst|Mux10~2_combout\ & ( (!\inst3|Cpts[9]~2_combout\ & ((!\inst3|Cpts[8]~6_combout\) # (\inst3|Cpte[7]~DUPLICATE_q\))) ) ) ) # ( \inst|Mux22~0_combout\ & 
-- ( !\inst|Mux10~2_combout\ & ( (\inst3|Cpte[7]~DUPLICATE_q\ & ((!\inst3|Cpts[8]~6_combout\ & ((\inst|Mux2~0_combout\))) # (\inst3|Cpts[8]~6_combout\ & (!\inst3|Cpts[9]~2_combout\)))) ) ) ) # ( !\inst|Mux22~0_combout\ & ( !\inst|Mux10~2_combout\ & ( 
-- (!\inst3|Cpts[9]~2_combout\ & (\inst3|Cpte[7]~DUPLICATE_q\ & \inst3|Cpts[8]~6_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010000000110000101010101010000010101010101100001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Cpts[9]~2_combout\,
	datab => \inst|ALT_INV_Mux2~0_combout\,
	datac => \inst3|ALT_INV_Cpte[7]~DUPLICATE_q\,
	datad => \inst3|ALT_INV_Cpts[8]~6_combout\,
	datae => \inst|ALT_INV_Mux22~0_combout\,
	dataf => \inst|ALT_INV_Mux10~2_combout\,
	combout => \inst|Mux10~1_combout\);

-- Location: FF_X17_Y75_N47
\inst|Q[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst23|CLKs~combout\,
	d => \inst|Mux10~1_combout\,
	clrn => \inst30|Reset_n_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Q\(21));

-- Location: LABCELL_X18_Y75_N36
\inst22|DtR[21]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst22|DtR[21]~feeder_combout\ = ( \inst|Q\(21) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst|ALT_INV_Q\(21),
	combout => \inst22|DtR[21]~feeder_combout\);

-- Location: FF_X18_Y75_N38
\inst22|DtR[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst26|CLKs~combout\,
	d => \inst22|DtR[21]~feeder_combout\,
	ena => \inst22|DtR[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst22|DtR\(21));

-- Location: LABCELL_X16_Y73_N36
\inst|Mux14~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux14~5_combout\ = ( \inst3|Cpte\(2) & ( \inst3|Cpte[0]~DUPLICATE_q\ & ( (!\inst3|Cpte[5]~DUPLICATE_q\ & ((!\inst3|Cpte[4]~DUPLICATE_q\ & ((\inst3|Cpte\(1)))) # (\inst3|Cpte[4]~DUPLICATE_q\ & (\inst3|Cpte[6]~DUPLICATE_q\)))) # 
-- (\inst3|Cpte[5]~DUPLICATE_q\ & (!\inst3|Cpte[4]~DUPLICATE_q\ $ (((\inst3|Cpte[6]~DUPLICATE_q\ & \inst3|Cpte\(1)))))) ) ) ) # ( !\inst3|Cpte\(2) & ( \inst3|Cpte[0]~DUPLICATE_q\ & ( (!\inst3|Cpte[6]~DUPLICATE_q\ & ((!\inst3|Cpte[4]~DUPLICATE_q\ & 
-- (!\inst3|Cpte\(1) & \inst3|Cpte[5]~DUPLICATE_q\)) # (\inst3|Cpte[4]~DUPLICATE_q\ & ((!\inst3|Cpte\(1)) # (\inst3|Cpte[5]~DUPLICATE_q\))))) # (\inst3|Cpte[6]~DUPLICATE_q\ & (((\inst3|Cpte\(1) & !\inst3|Cpte[5]~DUPLICATE_q\)))) ) ) ) # ( \inst3|Cpte\(2) & ( 
-- !\inst3|Cpte[0]~DUPLICATE_q\ & ( (!\inst3|Cpte[4]~DUPLICATE_q\ & (!\inst3|Cpte[5]~DUPLICATE_q\ $ (((!\inst3|Cpte[6]~DUPLICATE_q\ & \inst3|Cpte\(1)))))) # (\inst3|Cpte[4]~DUPLICATE_q\ & (!\inst3|Cpte[6]~DUPLICATE_q\ & (\inst3|Cpte\(1)))) ) ) ) # ( 
-- !\inst3|Cpte\(2) & ( !\inst3|Cpte[0]~DUPLICATE_q\ & ( (!\inst3|Cpte\(1) & ((!\inst3|Cpte[4]~DUPLICATE_q\ & ((!\inst3|Cpte[6]~DUPLICATE_q\) # (\inst3|Cpte[5]~DUPLICATE_q\))) # (\inst3|Cpte[4]~DUPLICATE_q\ & ((!\inst3|Cpte[5]~DUPLICATE_q\) # 
-- (\inst3|Cpte[6]~DUPLICATE_q\))))) # (\inst3|Cpte\(1) & (!\inst3|Cpte[4]~DUPLICATE_q\ $ (((\inst3|Cpte[5]~DUPLICATE_q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101101010110101101001100000110001000011110001000001101110101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Cpte[4]~DUPLICATE_q\,
	datab => \inst3|ALT_INV_Cpte[6]~DUPLICATE_q\,
	datac => \inst3|ALT_INV_Cpte\(1),
	datad => \inst3|ALT_INV_Cpte[5]~DUPLICATE_q\,
	datae => \inst3|ALT_INV_Cpte\(2),
	dataf => \inst3|ALT_INV_Cpte[0]~DUPLICATE_q\,
	combout => \inst|Mux14~5_combout\);

-- Location: LABCELL_X16_Y73_N33
\inst|Mux14~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux14~4_combout\ = ( \inst3|Cpte\(2) & ( \inst3|Cpte[0]~DUPLICATE_q\ & ( (!\inst3|Cpte\(1) & ((!\inst3|Cpte[5]~DUPLICATE_q\ & (\inst3|Cpte[6]~DUPLICATE_q\ & !\inst3|Cpte[4]~DUPLICATE_q\)) # (\inst3|Cpte[5]~DUPLICATE_q\ & 
-- (!\inst3|Cpte[6]~DUPLICATE_q\)))) # (\inst3|Cpte\(1) & (\inst3|Cpte[6]~DUPLICATE_q\ & ((!\inst3|Cpte[5]~DUPLICATE_q\) # (!\inst3|Cpte[4]~DUPLICATE_q\)))) ) ) ) # ( !\inst3|Cpte\(2) & ( \inst3|Cpte[0]~DUPLICATE_q\ & ( (!\inst3|Cpte[5]~DUPLICATE_q\ & 
-- (!\inst3|Cpte[4]~DUPLICATE_q\ $ (((\inst3|Cpte[6]~DUPLICATE_q\) # (\inst3|Cpte\(1)))))) # (\inst3|Cpte[5]~DUPLICATE_q\ & ((!\inst3|Cpte[4]~DUPLICATE_q\ & ((!\inst3|Cpte[6]~DUPLICATE_q\))) # (\inst3|Cpte[4]~DUPLICATE_q\ & (!\inst3|Cpte\(1))))) ) ) ) # ( 
-- \inst3|Cpte\(2) & ( !\inst3|Cpte[0]~DUPLICATE_q\ & ( (!\inst3|Cpte[5]~DUPLICATE_q\ & (\inst3|Cpte\(1) & !\inst3|Cpte[4]~DUPLICATE_q\)) # (\inst3|Cpte[5]~DUPLICATE_q\ & ((\inst3|Cpte[4]~DUPLICATE_q\))) ) ) ) # ( !\inst3|Cpte\(2) & ( 
-- !\inst3|Cpte[0]~DUPLICATE_q\ & ( (!\inst3|Cpte[4]~DUPLICATE_q\ & ((!\inst3|Cpte\(1) & (!\inst3|Cpte[5]~DUPLICATE_q\ & !\inst3|Cpte[6]~DUPLICATE_q\)) # (\inst3|Cpte\(1) & ((\inst3|Cpte[6]~DUPLICATE_q\))))) # (\inst3|Cpte[4]~DUPLICATE_q\ & 
-- ((!\inst3|Cpte[5]~DUPLICATE_q\ $ (!\inst3|Cpte[6]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000010100111100010001000011001110110000011011100010110100100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Cpte\(1),
	datab => \inst3|ALT_INV_Cpte[5]~DUPLICATE_q\,
	datac => \inst3|ALT_INV_Cpte[6]~DUPLICATE_q\,
	datad => \inst3|ALT_INV_Cpte[4]~DUPLICATE_q\,
	datae => \inst3|ALT_INV_Cpte\(2),
	dataf => \inst3|ALT_INV_Cpte[0]~DUPLICATE_q\,
	combout => \inst|Mux14~4_combout\);

-- Location: LABCELL_X16_Y73_N15
\inst|Mux14~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux14~6_combout\ = ( \inst|Mux14~4_combout\ & ( (\inst3|Cpte\(3) & !\inst|Mux14~5_combout\) ) ) # ( !\inst|Mux14~4_combout\ & ( (!\inst3|Cpte\(3)) # (!\inst|Mux14~5_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111110000111111111111000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst3|ALT_INV_Cpte\(3),
	datad => \inst|ALT_INV_Mux14~5_combout\,
	dataf => \inst|ALT_INV_Mux14~4_combout\,
	combout => \inst|Mux14~6_combout\);

-- Location: MLABCELL_X15_Y73_N36
\inst|Mux14~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux14~2_combout\ = ( \inst3|Cpte[6]~DUPLICATE_q\ & ( \inst3|Cpte\(2) & ( (!\inst3|Cpte\(4) & (!\inst3|Cpte[5]~DUPLICATE_q\ $ (((!\inst3|Cpte\(1) & \inst3|Cpte\(0)))))) # (\inst3|Cpte\(4) & (\inst3|Cpte\(0) & ((!\inst3|Cpte[5]~DUPLICATE_q\) # 
-- (\inst3|Cpte\(1))))) ) ) ) # ( !\inst3|Cpte[6]~DUPLICATE_q\ & ( \inst3|Cpte\(2) & ( (!\inst3|Cpte\(0) & (!\inst3|Cpte\(1) $ (((\inst3|Cpte[5]~DUPLICATE_q\) # (\inst3|Cpte\(4)))))) # (\inst3|Cpte\(0) & (!\inst3|Cpte\(4) & ((\inst3|Cpte[5]~DUPLICATE_q\) # 
-- (\inst3|Cpte\(1))))) ) ) ) # ( \inst3|Cpte[6]~DUPLICATE_q\ & ( !\inst3|Cpte\(2) & ( (!\inst3|Cpte\(1) & (!\inst3|Cpte\(0) & ((\inst3|Cpte[5]~DUPLICATE_q\) # (\inst3|Cpte\(4))))) # (\inst3|Cpte\(1) & (!\inst3|Cpte[5]~DUPLICATE_q\ $ (((!\inst3|Cpte\(0) & 
-- \inst3|Cpte\(4)))))) ) ) ) # ( !\inst3|Cpte[6]~DUPLICATE_q\ & ( !\inst3|Cpte\(2) & ( (!\inst3|Cpte\(4) & ((!\inst3|Cpte[5]~DUPLICATE_q\ & ((!\inst3|Cpte\(0)))) # (\inst3|Cpte[5]~DUPLICATE_q\ & (!\inst3|Cpte\(1))))) # (\inst3|Cpte\(4) & ((!\inst3|Cpte\(1) 
-- & ((!\inst3|Cpte[5]~DUPLICATE_q\) # (\inst3|Cpte\(0)))) # (\inst3|Cpte\(1) & ((\inst3|Cpte[5]~DUPLICATE_q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100101010100111010110011000110010010100011101001101001100100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Cpte\(1),
	datab => \inst3|ALT_INV_Cpte\(0),
	datac => \inst3|ALT_INV_Cpte\(4),
	datad => \inst3|ALT_INV_Cpte[5]~DUPLICATE_q\,
	datae => \inst3|ALT_INV_Cpte[6]~DUPLICATE_q\,
	dataf => \inst3|ALT_INV_Cpte\(2),
	combout => \inst|Mux14~2_combout\);

-- Location: MLABCELL_X15_Y73_N6
\inst|Mux14~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux14~1_combout\ = ( \inst3|Cpte[5]~DUPLICATE_q\ & ( \inst3|Cpte\(2) & ( (!\inst3|Cpte\(0) & (\inst3|Cpte\(4))) # (\inst3|Cpte\(0) & ((!\inst3|Cpte[6]~DUPLICATE_q\ & ((!\inst3|Cpte\(1)))) # (\inst3|Cpte[6]~DUPLICATE_q\ & (!\inst3|Cpte\(4) & 
-- \inst3|Cpte\(1))))) ) ) ) # ( !\inst3|Cpte[5]~DUPLICATE_q\ & ( \inst3|Cpte\(2) & ( (!\inst3|Cpte\(0) & (!\inst3|Cpte\(4) & ((\inst3|Cpte\(1))))) # (\inst3|Cpte\(0) & (\inst3|Cpte[6]~DUPLICATE_q\ & ((!\inst3|Cpte\(4)) # (\inst3|Cpte\(1))))) ) ) ) # ( 
-- \inst3|Cpte[5]~DUPLICATE_q\ & ( !\inst3|Cpte\(2) & ( (!\inst3|Cpte\(4) & ((!\inst3|Cpte\(0) & (\inst3|Cpte[6]~DUPLICATE_q\ & \inst3|Cpte\(1))) # (\inst3|Cpte\(0) & (!\inst3|Cpte[6]~DUPLICATE_q\)))) # (\inst3|Cpte\(4) & ((!\inst3|Cpte\(0) & 
-- (!\inst3|Cpte[6]~DUPLICATE_q\)) # (\inst3|Cpte\(0) & ((!\inst3|Cpte\(1)))))) ) ) ) # ( !\inst3|Cpte[5]~DUPLICATE_q\ & ( !\inst3|Cpte\(2) & ( (!\inst3|Cpte\(0) & (\inst3|Cpte[6]~DUPLICATE_q\ & ((\inst3|Cpte\(1)) # (\inst3|Cpte\(4))))) # (\inst3|Cpte\(0) & 
-- (!\inst3|Cpte\(4) $ (((\inst3|Cpte\(1)) # (\inst3|Cpte[6]~DUPLICATE_q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010010100011101011100010110100000000010100010110111010001000110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Cpte\(4),
	datab => \inst3|ALT_INV_Cpte\(0),
	datac => \inst3|ALT_INV_Cpte[6]~DUPLICATE_q\,
	datad => \inst3|ALT_INV_Cpte\(1),
	datae => \inst3|ALT_INV_Cpte[5]~DUPLICATE_q\,
	dataf => \inst3|ALT_INV_Cpte\(2),
	combout => \inst|Mux14~1_combout\);

-- Location: MLABCELL_X15_Y73_N42
\inst|Mux14~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux14~3_combout\ = ( \inst|Mux14~2_combout\ & ( \inst|Mux14~1_combout\ ) ) # ( !\inst|Mux14~2_combout\ & ( \inst|Mux14~1_combout\ & ( !\inst3|Cpte\(3) ) ) ) # ( \inst|Mux14~2_combout\ & ( !\inst|Mux14~1_combout\ & ( \inst3|Cpte\(3) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001111001100110011001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ALT_INV_Cpte\(3),
	datae => \inst|ALT_INV_Mux14~2_combout\,
	dataf => \inst|ALT_INV_Mux14~1_combout\,
	combout => \inst|Mux14~3_combout\);

-- Location: LABCELL_X17_Y77_N18
\inst|Mux14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux14~0_combout\ = ( \inst|Mux14~3_combout\ & ( \inst3|Cpts[9]~2_combout\ & ( \inst|Mux15~0_combout\ ) ) ) # ( !\inst|Mux14~3_combout\ & ( \inst3|Cpts[9]~2_combout\ & ( \inst|Mux15~0_combout\ ) ) ) # ( \inst|Mux14~3_combout\ & ( 
-- !\inst3|Cpts[9]~2_combout\ & ( (((\inst|Mux14~6_combout\ & !\inst3|Cpts[8]~6_combout\)) # (\inst3|Cpte[7]~DUPLICATE_q\)) # (\inst|Mux15~0_combout\) ) ) ) # ( !\inst|Mux14~3_combout\ & ( !\inst3|Cpts[9]~2_combout\ & ( ((!\inst3|Cpts[8]~6_combout\ & 
-- (\inst|Mux14~6_combout\ & !\inst3|Cpte[7]~DUPLICATE_q\)) # (\inst3|Cpts[8]~6_combout\ & ((\inst3|Cpte[7]~DUPLICATE_q\)))) # (\inst|Mux15~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111001100111111011100111111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Mux14~6_combout\,
	datab => \inst|ALT_INV_Mux15~0_combout\,
	datac => \inst3|ALT_INV_Cpts[8]~6_combout\,
	datad => \inst3|ALT_INV_Cpte[7]~DUPLICATE_q\,
	datae => \inst|ALT_INV_Mux14~3_combout\,
	dataf => \inst3|ALT_INV_Cpts[9]~2_combout\,
	combout => \inst|Mux14~0_combout\);

-- Location: FF_X17_Y77_N20
\inst|Q[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst23|CLKs~combout\,
	d => \inst|Mux14~0_combout\,
	clrn => \inst30|Reset_n_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Q\(17));

-- Location: FF_X18_Y76_N19
\inst22|DtR[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst26|CLKs~combout\,
	asdata => \inst|Q\(17),
	sload => VCC,
	ena => \inst22|DtR[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst22|DtR\(17));

-- Location: LABCELL_X19_Y77_N15
\inst|Mux2~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux2~14_combout\ = ( \inst3|Cpte\(2) & ( (!\inst3|Cpte\(6) & ((\inst3|Cpte[3]~DUPLICATE_q\) # (\inst3|Cpte\(1)))) # (\inst3|Cpte\(6) & (\inst3|Cpte\(1) & \inst3|Cpte[3]~DUPLICATE_q\)) ) ) # ( !\inst3|Cpte\(2) & ( (!\inst3|Cpte\(6) & 
-- \inst3|Cpte[3]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101000100010101110110010001010111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Cpte\(6),
	datab => \inst3|ALT_INV_Cpte\(1),
	datad => \inst3|ALT_INV_Cpte[3]~DUPLICATE_q\,
	dataf => \inst3|ALT_INV_Cpte\(2),
	combout => \inst|Mux2~14_combout\);

-- Location: LABCELL_X19_Y77_N0
\inst|Mux2~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux2~4_combout\ = ( \inst3|Cpte\(4) & ( !\inst3|Cpts[8]~6_combout\ & ( (!\inst|Mux2~14_combout\) # (\inst3|Cpts[9]~2_combout\) ) ) ) # ( !\inst3|Cpte\(4) & ( !\inst3|Cpts[8]~6_combout\ & ( (!\inst3|Cpts[9]~2_combout\ & ((\inst|Mux2~3_combout\) # 
-- (\inst3|Cpte\(6)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110001001100111111110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Cpte\(6),
	datab => \inst3|ALT_INV_Cpts[9]~2_combout\,
	datac => \inst|ALT_INV_Mux2~3_combout\,
	datad => \inst|ALT_INV_Mux2~14_combout\,
	datae => \inst3|ALT_INV_Cpte\(4),
	dataf => \inst3|ALT_INV_Cpts[8]~6_combout\,
	combout => \inst|Mux2~4_combout\);

-- Location: LABCELL_X17_Y73_N12
\inst|Mux2~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux2~9_combout\ = ( \inst3|Cpte\(2) & ( \inst3|Cpte[0]~DUPLICATE_q\ & ( (!\inst3|Cpte\(1) & (!\inst3|Cpte[6]~DUPLICATE_q\ & (!\inst3|Cpte\(4) $ (\inst3|Cpte\(3))))) # (\inst3|Cpte\(1) & ((!\inst3|Cpte\(3) & ((!\inst3|Cpte[6]~DUPLICATE_q\))) # 
-- (\inst3|Cpte\(3) & (\inst3|Cpte\(4))))) ) ) ) # ( !\inst3|Cpte\(2) & ( \inst3|Cpte[0]~DUPLICATE_q\ & ( (!\inst3|Cpte[6]~DUPLICATE_q\ & ((!\inst3|Cpte\(4) & ((!\inst3|Cpte\(1)) # (!\inst3|Cpte\(3)))) # (\inst3|Cpte\(4) & ((\inst3|Cpte\(3)))))) ) ) ) # ( 
-- \inst3|Cpte\(2) & ( !\inst3|Cpte[0]~DUPLICATE_q\ & ( (!\inst3|Cpte\(1) & (!\inst3|Cpte[6]~DUPLICATE_q\ & (!\inst3|Cpte\(4) $ (\inst3|Cpte\(3))))) # (\inst3|Cpte\(1) & ((!\inst3|Cpte\(3) & ((!\inst3|Cpte[6]~DUPLICATE_q\))) # (\inst3|Cpte\(3) & 
-- (\inst3|Cpte\(4))))) ) ) ) # ( !\inst3|Cpte\(2) & ( !\inst3|Cpte[0]~DUPLICATE_q\ & ( (!\inst3|Cpte[6]~DUPLICATE_q\ & (((\inst3|Cpte\(1) & !\inst3|Cpte\(4))) # (\inst3|Cpte\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000011110000110100000011000111000000101100001101000000110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Cpte\(1),
	datab => \inst3|ALT_INV_Cpte\(4),
	datac => \inst3|ALT_INV_Cpte[6]~DUPLICATE_q\,
	datad => \inst3|ALT_INV_Cpte\(3),
	datae => \inst3|ALT_INV_Cpte\(2),
	dataf => \inst3|ALT_INV_Cpte[0]~DUPLICATE_q\,
	combout => \inst|Mux2~9_combout\);

-- Location: LABCELL_X19_Y74_N42
\inst|Mux2~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux2~10_combout\ = ( \inst3|Cpte\(2) & ( \inst3|Cpte[0]~DUPLICATE_q\ & ( \inst3|Cpte\(4) ) ) ) # ( !\inst3|Cpte\(2) & ( \inst3|Cpte[0]~DUPLICATE_q\ & ( \inst3|Cpte\(4) ) ) ) # ( \inst3|Cpte\(2) & ( !\inst3|Cpte[0]~DUPLICATE_q\ & ( \inst3|Cpte\(4) ) 
-- ) ) # ( !\inst3|Cpte\(2) & ( !\inst3|Cpte[0]~DUPLICATE_q\ & ( (!\inst3|Cpte\(4) & (\inst3|Cpte[6]~DUPLICATE_q\ & !\inst3|Cpte\(1))) # (\inst3|Cpte\(4) & ((\inst3|Cpte\(1)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100001101000011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Cpte[6]~DUPLICATE_q\,
	datab => \inst3|ALT_INV_Cpte\(4),
	datac => \inst3|ALT_INV_Cpte\(1),
	datae => \inst3|ALT_INV_Cpte\(2),
	dataf => \inst3|ALT_INV_Cpte[0]~DUPLICATE_q\,
	combout => \inst|Mux2~10_combout\);

-- Location: LABCELL_X19_Y77_N39
\inst|Mux2~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux2~5_combout\ = ( \inst|Mux2~10_combout\ & ( \inst3|Cpts[8]~6_combout\ & ( !\inst3|Cpts[9]~2_combout\ ) ) ) # ( !\inst|Mux2~10_combout\ & ( \inst3|Cpts[8]~6_combout\ & ( !\inst3|Cpts[9]~2_combout\ ) ) ) # ( \inst|Mux2~10_combout\ & ( 
-- !\inst3|Cpts[8]~6_combout\ & ( (!\inst3|Cpts[9]~2_combout\ & (((\inst|Mux2~9_combout\)))) # (\inst3|Cpts[9]~2_combout\ & (!\inst3|Cpte\(4) & (\inst3|Cpte\(3)))) ) ) ) # ( !\inst|Mux2~10_combout\ & ( !\inst3|Cpts[8]~6_combout\ & ( 
-- (!\inst3|Cpts[9]~2_combout\ & (((\inst|Mux2~9_combout\)))) # (\inst3|Cpts[9]~2_combout\ & ((!\inst3|Cpte\(4)) # ((!\inst3|Cpte\(3))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001011111110000000101100111011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Cpte\(4),
	datab => \inst3|ALT_INV_Cpts[9]~2_combout\,
	datac => \inst3|ALT_INV_Cpte\(3),
	datad => \inst|ALT_INV_Mux2~9_combout\,
	datae => \inst|ALT_INV_Mux2~10_combout\,
	dataf => \inst3|ALT_INV_Cpts[8]~6_combout\,
	combout => \inst|Mux2~5_combout\);

-- Location: LABCELL_X19_Y77_N54
\inst|Mux2~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux2~13_combout\ = ( !\inst3|Cpte\(2) & ( (!\inst3|Cpte\(1) & !\inst3|Cpte[0]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000110000001100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ALT_INV_Cpte\(1),
	datac => \inst3|ALT_INV_Cpte[0]~DUPLICATE_q\,
	dataf => \inst3|ALT_INV_Cpte\(2),
	combout => \inst|Mux2~13_combout\);

-- Location: LABCELL_X19_Y74_N30
\inst|Mux2~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux2~12_combout\ = ( \inst3|Cpte\(2) & ( \inst3|Cpte[0]~DUPLICATE_q\ & ( (\inst3|Cpte[6]~DUPLICATE_q\ & ((!\inst3|Cpte\(4) & ((!\inst3|Cpte[3]~DUPLICATE_q\))) # (\inst3|Cpte\(4) & ((\inst3|Cpte[3]~DUPLICATE_q\) # (\inst3|Cpte\(1)))))) ) ) ) # ( 
-- !\inst3|Cpte\(2) & ( \inst3|Cpte[0]~DUPLICATE_q\ & ( (!\inst3|Cpte\(1) & ((!\inst3|Cpte[3]~DUPLICATE_q\ & ((!\inst3|Cpte\(4)))) # (\inst3|Cpte[3]~DUPLICATE_q\ & (\inst3|Cpte[6]~DUPLICATE_q\)))) # (\inst3|Cpte\(1) & (\inst3|Cpte[6]~DUPLICATE_q\ & 
-- (!\inst3|Cpte\(4) $ (\inst3|Cpte[3]~DUPLICATE_q\)))) ) ) ) # ( \inst3|Cpte\(2) & ( !\inst3|Cpte[0]~DUPLICATE_q\ & ( (\inst3|Cpte[6]~DUPLICATE_q\ & ((!\inst3|Cpte\(4) & ((!\inst3|Cpte[3]~DUPLICATE_q\))) # (\inst3|Cpte\(4) & ((\inst3|Cpte[3]~DUPLICATE_q\) # 
-- (\inst3|Cpte\(1)))))) ) ) ) # ( !\inst3|Cpte\(2) & ( !\inst3|Cpte[0]~DUPLICATE_q\ & ( (!\inst3|Cpte[3]~DUPLICATE_q\ & ((!\inst3|Cpte\(4)))) # (\inst3|Cpte[3]~DUPLICATE_q\ & (\inst3|Cpte[6]~DUPLICATE_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110001010101010001010001000111000100010100010100010100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Cpte[6]~DUPLICATE_q\,
	datab => \inst3|ALT_INV_Cpte\(4),
	datac => \inst3|ALT_INV_Cpte\(1),
	datad => \inst3|ALT_INV_Cpte[3]~DUPLICATE_q\,
	datae => \inst3|ALT_INV_Cpte\(2),
	dataf => \inst3|ALT_INV_Cpte[0]~DUPLICATE_q\,
	combout => \inst|Mux2~12_combout\);

-- Location: LABCELL_X19_Y77_N18
\inst|Mux2~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux2~7_combout\ = ( \inst|Mux2~12_combout\ & ( !\inst3|Cpts[8]~6_combout\ & ( (\inst3|Cpts[9]~2_combout\ & (!\inst3|Cpte\(4) $ (((!\inst|Mux2~13_combout\) # (\inst3|Cpte\(3)))))) ) ) ) # ( !\inst|Mux2~12_combout\ & ( !\inst3|Cpts[8]~6_combout\ & ( 
-- (!\inst3|Cpts[9]~2_combout\) # (!\inst3|Cpte\(4) $ (((!\inst|Mux2~13_combout\) # (\inst3|Cpte\(3))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101111011001111000100100000001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Mux2~13_combout\,
	datab => \inst3|ALT_INV_Cpts[9]~2_combout\,
	datac => \inst3|ALT_INV_Cpte\(4),
	datad => \inst3|ALT_INV_Cpte\(3),
	datae => \inst|ALT_INV_Mux2~12_combout\,
	dataf => \inst3|ALT_INV_Cpts[8]~6_combout\,
	combout => \inst|Mux2~7_combout\);

-- Location: LABCELL_X19_Y74_N27
\inst|Mux2~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux2~11_combout\ = ( \inst3|Cpte\(2) & ( \inst3|Cpte[0]~DUPLICATE_q\ & ( (\inst3|Cpte[6]~DUPLICATE_q\ & ((!\inst3|Cpte\(4) & ((!\inst3|Cpte[3]~DUPLICATE_q\))) # (\inst3|Cpte\(4) & ((\inst3|Cpte[3]~DUPLICATE_q\) # (\inst3|Cpte\(1)))))) ) ) ) # ( 
-- !\inst3|Cpte\(2) & ( \inst3|Cpte[0]~DUPLICATE_q\ & ( (!\inst3|Cpte\(1) & ((!\inst3|Cpte[3]~DUPLICATE_q\ & ((!\inst3|Cpte\(4)))) # (\inst3|Cpte[3]~DUPLICATE_q\ & (\inst3|Cpte[6]~DUPLICATE_q\)))) # (\inst3|Cpte\(1) & (\inst3|Cpte[6]~DUPLICATE_q\ & 
-- (!\inst3|Cpte\(4) $ (\inst3|Cpte[3]~DUPLICATE_q\)))) ) ) ) # ( \inst3|Cpte\(2) & ( !\inst3|Cpte[0]~DUPLICATE_q\ & ( (\inst3|Cpte[6]~DUPLICATE_q\ & ((!\inst3|Cpte\(4) & ((!\inst3|Cpte[3]~DUPLICATE_q\))) # (\inst3|Cpte\(4) & ((\inst3|Cpte[3]~DUPLICATE_q\) # 
-- (\inst3|Cpte\(1)))))) ) ) ) # ( !\inst3|Cpte\(2) & ( !\inst3|Cpte[0]~DUPLICATE_q\ & ( (!\inst3|Cpte[3]~DUPLICATE_q\ & ((!\inst3|Cpte\(4)))) # (\inst3|Cpte[3]~DUPLICATE_q\ & (\inst3|Cpte[6]~DUPLICATE_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000001010101010100010000010111010000010001010101000100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Cpte[6]~DUPLICATE_q\,
	datab => \inst3|ALT_INV_Cpte\(1),
	datac => \inst3|ALT_INV_Cpte\(4),
	datad => \inst3|ALT_INV_Cpte[3]~DUPLICATE_q\,
	datae => \inst3|ALT_INV_Cpte\(2),
	dataf => \inst3|ALT_INV_Cpte[0]~DUPLICATE_q\,
	combout => \inst|Mux2~11_combout\);

-- Location: LABCELL_X19_Y77_N51
\inst|Mux2~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux2~6_combout\ = ( \inst|Mux2~11_combout\ & ( \inst3|Cpts[8]~6_combout\ & ( \inst3|Cpts[9]~2_combout\ ) ) ) # ( !\inst|Mux2~11_combout\ & ( \inst3|Cpts[8]~6_combout\ & ( \inst3|Cpts[9]~2_combout\ ) ) ) # ( \inst|Mux2~11_combout\ & ( 
-- !\inst3|Cpts[8]~6_combout\ & ( (\inst3|Cpts[9]~2_combout\ & \inst3|Cpte\(4)) ) ) ) # ( !\inst|Mux2~11_combout\ & ( !\inst3|Cpts[8]~6_combout\ & ( (!\inst3|Cpts[9]~2_combout\) # (\inst3|Cpte\(4)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011111111000000000011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ALT_INV_Cpts[9]~2_combout\,
	datad => \inst3|ALT_INV_Cpte\(4),
	datae => \inst|ALT_INV_Mux2~11_combout\,
	dataf => \inst3|ALT_INV_Cpts[8]~6_combout\,
	combout => \inst|Mux2~6_combout\);

-- Location: LABCELL_X19_Y77_N42
\inst|Mux2~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux2~8_combout\ = ( \inst|Mux2~7_combout\ & ( \inst|Mux2~6_combout\ & ( (!\inst3|Cpte\(5) & ((!\inst3|Cpte[7]~DUPLICATE_q\ & (\inst|Mux2~4_combout\)) # (\inst3|Cpte[7]~DUPLICATE_q\ & ((\inst|Mux2~5_combout\))))) # (\inst3|Cpte\(5) & 
-- (((!\inst3|Cpte[7]~DUPLICATE_q\)))) ) ) ) # ( !\inst|Mux2~7_combout\ & ( \inst|Mux2~6_combout\ & ( ((!\inst3|Cpte[7]~DUPLICATE_q\ & (\inst|Mux2~4_combout\)) # (\inst3|Cpte[7]~DUPLICATE_q\ & ((\inst|Mux2~5_combout\)))) # (\inst3|Cpte\(5)) ) ) ) # ( 
-- \inst|Mux2~7_combout\ & ( !\inst|Mux2~6_combout\ & ( (!\inst3|Cpte\(5) & ((!\inst3|Cpte[7]~DUPLICATE_q\ & (\inst|Mux2~4_combout\)) # (\inst3|Cpte[7]~DUPLICATE_q\ & ((\inst|Mux2~5_combout\))))) ) ) ) # ( !\inst|Mux2~7_combout\ & ( !\inst|Mux2~6_combout\ & 
-- ( (!\inst3|Cpte\(5) & ((!\inst3|Cpte[7]~DUPLICATE_q\ & (\inst|Mux2~4_combout\)) # (\inst3|Cpte[7]~DUPLICATE_q\ & ((\inst|Mux2~5_combout\))))) # (\inst3|Cpte\(5) & (((\inst3|Cpte[7]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000111111010100000011000001011111001111110101111100110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Mux2~4_combout\,
	datab => \inst|ALT_INV_Mux2~5_combout\,
	datac => \inst3|ALT_INV_Cpte\(5),
	datad => \inst3|ALT_INV_Cpte[7]~DUPLICATE_q\,
	datae => \inst|ALT_INV_Mux2~7_combout\,
	dataf => \inst|ALT_INV_Mux2~6_combout\,
	combout => \inst|Mux2~8_combout\);

-- Location: FF_X19_Y77_N44
\inst|Q[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst23|CLKs~combout\,
	d => \inst|Mux2~8_combout\,
	clrn => \inst30|Reset_n_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Q\(29));

-- Location: FF_X18_Y75_N2
\inst22|DtR[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst26|CLKs~combout\,
	asdata => \inst|Q\(29),
	sload => VCC,
	ena => \inst22|DtR[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst22|DtR\(29));

-- Location: LABCELL_X16_Y75_N15
\inst|Mux6~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux6~3_combout\ = ( \inst3|Cpte[3]~DUPLICATE_q\ & ( (!\inst3|Cpte\(5) & (!\inst3|Cpte[4]~DUPLICATE_q\ $ (((!\inst3|Cpte\(6)))))) # (\inst3|Cpte\(5) & (!\inst3|Cpte[4]~DUPLICATE_q\ & (!\inst3|Cpte\(2)))) ) ) # ( !\inst3|Cpte[3]~DUPLICATE_q\ & ( 
-- (!\inst3|Cpte\(5) & (\inst3|Cpte[4]~DUPLICATE_q\ & (\inst3|Cpte\(2)))) # (\inst3|Cpte\(5) & (!\inst3|Cpte[4]~DUPLICATE_q\ $ (((!\inst3|Cpte\(6)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010100011010010110001010100000010101000110100101100010101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Cpte[4]~DUPLICATE_q\,
	datab => \inst3|ALT_INV_Cpte\(2),
	datac => \inst3|ALT_INV_Cpte\(5),
	datad => \inst3|ALT_INV_Cpte\(6),
	datae => \inst3|ALT_INV_Cpte[3]~DUPLICATE_q\,
	combout => \inst|Mux6~3_combout\);

-- Location: MLABCELL_X15_Y76_N18
\inst|Mux6~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux6~4_combout\ = ( \inst|Mux6~3_combout\ & ( (!\inst3|Cpts[9]~2_combout\ & ((\inst3|Cpte[7]~DUPLICATE_q\))) # (\inst3|Cpts[9]~2_combout\ & (\inst3|Cpts[8]~6_combout\)) ) ) # ( !\inst|Mux6~3_combout\ & ( !\inst3|Cpts[8]~6_combout\ $ 
-- (((\inst3|Cpte[7]~DUPLICATE_q\) # (\inst3|Cpts[9]~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001100100110011100110010011001100010001101110110001000110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Cpts[9]~2_combout\,
	datab => \inst3|ALT_INV_Cpts[8]~6_combout\,
	datad => \inst3|ALT_INV_Cpte[7]~DUPLICATE_q\,
	dataf => \inst|ALT_INV_Mux6~3_combout\,
	combout => \inst|Mux6~4_combout\);

-- Location: MLABCELL_X15_Y76_N24
\inst|Mux6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux6~1_combout\ = ( \inst3|Cpte[5]~DUPLICATE_q\ & ( (!\inst3|Cpte\(4) & (\inst3|Cpte\(2) & (!\inst3|Cpte\(3) $ (!\inst3|Cpte\(6))))) # (\inst3|Cpte\(4) & (((!\inst3|Cpte\(3)) # (!\inst3|Cpte\(6))))) ) ) # ( !\inst3|Cpte[5]~DUPLICATE_q\ & ( 
-- (!\inst3|Cpte\(2) & (!\inst3|Cpte\(3) & ((!\inst3|Cpte\(4)) # (!\inst3|Cpte\(6))))) # (\inst3|Cpte\(2) & ((!\inst3|Cpte\(3)) # ((\inst3|Cpte\(4) & !\inst3|Cpte\(6))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110111000100110011011100010000011111010011000001111101001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Cpte\(2),
	datab => \inst3|ALT_INV_Cpte\(3),
	datac => \inst3|ALT_INV_Cpte\(4),
	datad => \inst3|ALT_INV_Cpte\(6),
	dataf => \inst3|ALT_INV_Cpte[5]~DUPLICATE_q\,
	combout => \inst|Mux6~1_combout\);

-- Location: MLABCELL_X15_Y76_N51
\inst|Mux6~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux6~2_combout\ = ( \inst|Mux6~1_combout\ & ( !\inst3|Cpts[8]~6_combout\ $ (((!\inst3|Cpts[9]~2_combout\ & \inst3|Cpte[7]~DUPLICATE_q\))) ) ) # ( !\inst|Mux6~1_combout\ & ( (!\inst3|Cpts[9]~2_combout\ & ((\inst3|Cpte[7]~DUPLICATE_q\))) # 
-- (\inst3|Cpts[9]~2_combout\ & (!\inst3|Cpts[8]~6_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100111001001110010011100100111011000110110001101100011011000110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Cpts[9]~2_combout\,
	datab => \inst3|ALT_INV_Cpts[8]~6_combout\,
	datac => \inst3|ALT_INV_Cpte[7]~DUPLICATE_q\,
	dataf => \inst|ALT_INV_Mux6~1_combout\,
	combout => \inst|Mux6~2_combout\);

-- Location: LABCELL_X16_Y76_N48
\inst|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux7~0_combout\ = ( !\inst3|Cpte[3]~DUPLICATE_q\ & ( (!\inst3|Cpte\(4) & (!\inst3|Cpte\(6) & (!\inst3|Cpte[5]~DUPLICATE_q\ & !\inst3|Cpte\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Cpte\(4),
	datab => \inst3|ALT_INV_Cpte\(6),
	datac => \inst3|ALT_INV_Cpte[5]~DUPLICATE_q\,
	datad => \inst3|ALT_INV_Cpte\(2),
	datae => \inst3|ALT_INV_Cpte[3]~DUPLICATE_q\,
	combout => \inst|Mux7~0_combout\);

-- Location: LABCELL_X16_Y78_N30
\inst|Mux6~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux6~7_combout\ = ( \inst3|Cpte[5]~DUPLICATE_q\ & ( \inst3|Cpte\(2) & ( !\inst3|Cpte[7]~DUPLICATE_q\ $ ((((!\inst3|Cpte[4]~DUPLICATE_q\ & \inst3|Cpte\(3))) # (\inst3|Cpte[6]~DUPLICATE_q\))) ) ) ) # ( !\inst3|Cpte[5]~DUPLICATE_q\ & ( \inst3|Cpte\(2) 
-- & ( !\inst3|Cpte[7]~DUPLICATE_q\ $ (((!\inst3|Cpte[6]~DUPLICATE_q\) # ((\inst3|Cpte[4]~DUPLICATE_q\ & !\inst3|Cpte\(3))))) ) ) ) # ( \inst3|Cpte[5]~DUPLICATE_q\ & ( !\inst3|Cpte\(2) & ( !\inst3|Cpte[7]~DUPLICATE_q\ $ (((\inst3|Cpte[4]~DUPLICATE_q\ & 
-- ((\inst3|Cpte[6]~DUPLICATE_q\) # (\inst3|Cpte\(3)))))) ) ) ) # ( !\inst3|Cpte[5]~DUPLICATE_q\ & ( !\inst3|Cpte\(2) & ( (!\inst3|Cpte\(3) & ((!\inst3|Cpte[7]~DUPLICATE_q\ & ((\inst3|Cpte[6]~DUPLICATE_q\))) # (\inst3|Cpte[7]~DUPLICATE_q\ & 
-- (\inst3|Cpte[4]~DUPLICATE_q\ & !\inst3|Cpte[6]~DUPLICATE_q\)))) # (\inst3|Cpte\(3) & (!\inst3|Cpte[7]~DUPLICATE_q\ $ ((!\inst3|Cpte[4]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001011010100110101010011001100101010101100110101010011001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Cpte[7]~DUPLICATE_q\,
	datab => \inst3|ALT_INV_Cpte[4]~DUPLICATE_q\,
	datac => \inst3|ALT_INV_Cpte\(3),
	datad => \inst3|ALT_INV_Cpte[6]~DUPLICATE_q\,
	datae => \inst3|ALT_INV_Cpte[5]~DUPLICATE_q\,
	dataf => \inst3|ALT_INV_Cpte\(2),
	combout => \inst|Mux6~7_combout\);

-- Location: MLABCELL_X15_Y76_N21
\inst|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux6~0_combout\ = ( \inst|Mux6~7_combout\ & ( (!\inst3|Cpts[9]~2_combout\ & ((!\inst3|Cpts[8]~6_combout\) # ((\inst3|Cpte[7]~DUPLICATE_q\)))) # (\inst3|Cpts[9]~2_combout\ & (!\inst3|Cpts[8]~6_combout\ & (\inst3|Cpte[7]~DUPLICATE_q\ & 
-- \inst|Mux7~0_combout\))) ) ) # ( !\inst|Mux6~7_combout\ & ( (\inst3|Cpte[7]~DUPLICATE_q\ & ((!\inst3|Cpts[9]~2_combout\ & (\inst3|Cpts[8]~6_combout\)) # (\inst3|Cpts[9]~2_combout\ & (!\inst3|Cpts[8]~6_combout\ & \inst|Mux7~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000110000000100000011010001010100011101000101010001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Cpts[9]~2_combout\,
	datab => \inst3|ALT_INV_Cpts[8]~6_combout\,
	datac => \inst3|ALT_INV_Cpte[7]~DUPLICATE_q\,
	datad => \inst|ALT_INV_Mux7~0_combout\,
	dataf => \inst|ALT_INV_Mux6~7_combout\,
	combout => \inst|Mux6~0_combout\);

-- Location: MLABCELL_X15_Y74_N48
\inst|Mux6~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux6~8_combout\ = ( \inst3|Cpte\(4) & ( (!\inst3|Cpte\(5) & ((!\inst3|Cpte[3]~DUPLICATE_q\ $ (\inst3|Cpte[6]~DUPLICATE_q\)) # (\inst3|Cpte\(2)))) # (\inst3|Cpte\(5) & (!\inst3|Cpte[3]~DUPLICATE_q\)) ) ) # ( !\inst3|Cpte\(4) & ( 
-- (!\inst3|Cpte[3]~DUPLICATE_q\ & ((!\inst3|Cpte[6]~DUPLICATE_q\) # ((\inst3|Cpte\(5) & \inst3|Cpte\(2))))) # (\inst3|Cpte[3]~DUPLICATE_q\ & (\inst3|Cpte\(5) & (!\inst3|Cpte[6]~DUPLICATE_q\ & \inst3|Cpte\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011010100110000001101010011000110111011101100011011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Cpte\(5),
	datab => \inst3|ALT_INV_Cpte[3]~DUPLICATE_q\,
	datac => \inst3|ALT_INV_Cpte[6]~DUPLICATE_q\,
	datad => \inst3|ALT_INV_Cpte\(2),
	dataf => \inst3|ALT_INV_Cpte\(4),
	combout => \inst|Mux6~8_combout\);

-- Location: MLABCELL_X15_Y76_N48
\inst|Mux6~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux6~5_combout\ = ( \inst|Mux6~8_combout\ & ( (!\inst3|Cpts[9]~2_combout\ & !\inst3|Cpte[7]~DUPLICATE_q\) ) ) # ( !\inst|Mux6~8_combout\ & ( (!\inst3|Cpts[9]~2_combout\ & (!\inst3|Cpts[8]~6_combout\ $ (!\inst3|Cpte[7]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001010001000001000101000100010101010000000001010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Cpts[9]~2_combout\,
	datab => \inst3|ALT_INV_Cpts[8]~6_combout\,
	datad => \inst3|ALT_INV_Cpte[7]~DUPLICATE_q\,
	dataf => \inst|ALT_INV_Mux6~8_combout\,
	combout => \inst|Mux6~5_combout\);

-- Location: MLABCELL_X15_Y76_N6
\inst|Mux6~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux6~6_combout\ = ( \inst|Mux6~0_combout\ & ( \inst|Mux6~5_combout\ & ( (!\inst3|Cpte\(1) & (((!\inst3|Cpte\(0)) # (\inst|Mux6~2_combout\)))) # (\inst3|Cpte\(1) & (\inst|Mux6~4_combout\ & ((!\inst3|Cpte\(0))))) ) ) ) # ( !\inst|Mux6~0_combout\ & ( 
-- \inst|Mux6~5_combout\ & ( (!\inst3|Cpte\(1) & (((\inst|Mux6~2_combout\ & \inst3|Cpte\(0))))) # (\inst3|Cpte\(1) & (\inst|Mux6~4_combout\ & ((!\inst3|Cpte\(0))))) ) ) ) # ( \inst|Mux6~0_combout\ & ( !\inst|Mux6~5_combout\ & ( (!\inst3|Cpte\(1) & 
-- (((!\inst3|Cpte\(0)) # (\inst|Mux6~2_combout\)))) # (\inst3|Cpte\(1) & (((\inst3|Cpte\(0))) # (\inst|Mux6~4_combout\))) ) ) ) # ( !\inst|Mux6~0_combout\ & ( !\inst|Mux6~5_combout\ & ( (!\inst3|Cpte\(1) & (((\inst|Mux6~2_combout\ & \inst3|Cpte\(0))))) # 
-- (\inst3|Cpte\(1) & (((\inst3|Cpte\(0))) # (\inst|Mux6~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100111111111101010011111100000101001100001111010100110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Mux6~4_combout\,
	datab => \inst|ALT_INV_Mux6~2_combout\,
	datac => \inst3|ALT_INV_Cpte\(1),
	datad => \inst3|ALT_INV_Cpte\(0),
	datae => \inst|ALT_INV_Mux6~0_combout\,
	dataf => \inst|ALT_INV_Mux6~5_combout\,
	combout => \inst|Mux6~6_combout\);

-- Location: FF_X15_Y76_N8
\inst|Q[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst23|CLKs~combout\,
	d => \inst|Mux6~6_combout\,
	clrn => \inst30|Reset_n_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Q\(25));

-- Location: FF_X18_Y75_N8
\inst22|DtR[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst26|CLKs~combout\,
	asdata => \inst|Q\(25),
	sload => VCC,
	ena => \inst22|DtR[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst22|DtR\(25));

-- Location: LABCELL_X18_Y75_N0
\inst22|S~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst22|S~16_combout\ = ( \inst22|DtR\(29) & ( \inst22|DtR\(25) & ( (!\inst22|Cpte[3]~DUPLICATE_q\) # ((!\inst22|Cpte[2]~DUPLICATE_q\ & (\inst22|DtR\(21))) # (\inst22|Cpte[2]~DUPLICATE_q\ & ((\inst22|DtR\(17))))) ) ) ) # ( !\inst22|DtR\(29) & ( 
-- \inst22|DtR\(25) & ( (!\inst22|Cpte[3]~DUPLICATE_q\ & (\inst22|Cpte[2]~DUPLICATE_q\)) # (\inst22|Cpte[3]~DUPLICATE_q\ & ((!\inst22|Cpte[2]~DUPLICATE_q\ & (\inst22|DtR\(21))) # (\inst22|Cpte[2]~DUPLICATE_q\ & ((\inst22|DtR\(17)))))) ) ) ) # ( 
-- \inst22|DtR\(29) & ( !\inst22|DtR\(25) & ( (!\inst22|Cpte[3]~DUPLICATE_q\ & (!\inst22|Cpte[2]~DUPLICATE_q\)) # (\inst22|Cpte[3]~DUPLICATE_q\ & ((!\inst22|Cpte[2]~DUPLICATE_q\ & (\inst22|DtR\(21))) # (\inst22|Cpte[2]~DUPLICATE_q\ & ((\inst22|DtR\(17)))))) 
-- ) ) ) # ( !\inst22|DtR\(29) & ( !\inst22|DtR\(25) & ( (\inst22|Cpte[3]~DUPLICATE_q\ & ((!\inst22|Cpte[2]~DUPLICATE_q\ & (\inst22|DtR\(21))) # (\inst22|Cpte[2]~DUPLICATE_q\ & ((\inst22|DtR\(17)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000010101100011001001110100100110001101111010111010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|ALT_INV_Cpte[3]~DUPLICATE_q\,
	datab => \inst22|ALT_INV_Cpte[2]~DUPLICATE_q\,
	datac => \inst22|ALT_INV_DtR\(21),
	datad => \inst22|ALT_INV_DtR\(17),
	datae => \inst22|ALT_INV_DtR\(29),
	dataf => \inst22|ALT_INV_DtR\(25),
	combout => \inst22|S~16_combout\);

-- Location: MLABCELL_X15_Y76_N36
\inst|Mux7~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux7~2_combout\ = ( \inst3|Cpte[4]~DUPLICATE_q\ & ( \inst3|Cpte[5]~DUPLICATE_q\ & ( (!\inst3|Cpte\(6) & (\inst3|Cpte\(3) & ((!\inst3|Cpte\(1)) # (\inst3|Cpte\(2))))) # (\inst3|Cpte\(6) & (!\inst3|Cpte\(3) & ((\inst3|Cpte\(1)) # (\inst3|Cpte\(2))))) 
-- ) ) ) # ( !\inst3|Cpte[4]~DUPLICATE_q\ & ( \inst3|Cpte[5]~DUPLICATE_q\ & ( (!\inst3|Cpte\(6) & (((\inst3|Cpte\(1) & \inst3|Cpte\(3))))) # (\inst3|Cpte\(6) & (!\inst3|Cpte\(2) $ (((!\inst3|Cpte\(1) & !\inst3|Cpte\(3)))))) ) ) ) # ( 
-- \inst3|Cpte[4]~DUPLICATE_q\ & ( !\inst3|Cpte[5]~DUPLICATE_q\ & ( (!\inst3|Cpte\(6) & ((!\inst3|Cpte\(1) & ((\inst3|Cpte\(3)))) # (\inst3|Cpte\(1) & (\inst3|Cpte\(2))))) # (\inst3|Cpte\(6) & (((\inst3|Cpte\(1) & !\inst3|Cpte\(3))))) ) ) ) # ( 
-- !\inst3|Cpte[4]~DUPLICATE_q\ & ( !\inst3|Cpte[5]~DUPLICATE_q\ & ( (!\inst3|Cpte\(6) & (!\inst3|Cpte\(3) $ (((\inst3|Cpte\(1)) # (\inst3|Cpte\(2)))))) # (\inst3|Cpte\(6) & ((!\inst3|Cpte\(2) & ((!\inst3|Cpte\(1)) # (!\inst3|Cpte\(3)))) # (\inst3|Cpte\(2) & 
-- (!\inst3|Cpte\(1) & !\inst3|Cpte\(3))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011001001101100000001111100010000010010001011100001001111000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Cpte\(2),
	datab => \inst3|ALT_INV_Cpte\(6),
	datac => \inst3|ALT_INV_Cpte\(1),
	datad => \inst3|ALT_INV_Cpte\(3),
	datae => \inst3|ALT_INV_Cpte[4]~DUPLICATE_q\,
	dataf => \inst3|ALT_INV_Cpte[5]~DUPLICATE_q\,
	combout => \inst|Mux7~2_combout\);

-- Location: MLABCELL_X15_Y76_N30
\inst|Mux7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux7~1_combout\ = ( \inst3|Cpte[4]~DUPLICATE_q\ & ( \inst3|Cpte[5]~DUPLICATE_q\ & ( (!\inst3|Cpte\(6) & ((!\inst3|Cpte\(2) & (!\inst3|Cpte\(1) & \inst3|Cpte\(3))) # (\inst3|Cpte\(2) & (\inst3|Cpte\(1) & !\inst3|Cpte\(3))))) # (\inst3|Cpte\(6) & 
-- (((!\inst3|Cpte\(3))))) ) ) ) # ( !\inst3|Cpte[4]~DUPLICATE_q\ & ( \inst3|Cpte[5]~DUPLICATE_q\ & ( (!\inst3|Cpte\(6) & (((!\inst3|Cpte\(1)) # (!\inst3|Cpte\(3))))) # (\inst3|Cpte\(6) & (!\inst3|Cpte\(1) & ((!\inst3|Cpte\(2)) # (!\inst3|Cpte\(3))))) ) ) ) 
-- # ( \inst3|Cpte[4]~DUPLICATE_q\ & ( !\inst3|Cpte[5]~DUPLICATE_q\ & ( (!\inst3|Cpte\(6) & (\inst3|Cpte\(1) & ((\inst3|Cpte\(3)) # (\inst3|Cpte\(2))))) # (\inst3|Cpte\(6) & (((\inst3|Cpte\(3)) # (\inst3|Cpte\(1))))) ) ) ) # ( !\inst3|Cpte[4]~DUPLICATE_q\ & 
-- ( !\inst3|Cpte[5]~DUPLICATE_q\ & ( (!\inst3|Cpte\(6) & (((\inst3|Cpte\(3))))) # (\inst3|Cpte\(6) & ((!\inst3|Cpte\(2) & (!\inst3|Cpte\(1) & \inst3|Cpte\(3))) # (\inst3|Cpte\(2) & (\inst3|Cpte\(1) & !\inst3|Cpte\(3))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111101100000001110011111111111100111000000011011110000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Cpte\(2),
	datab => \inst3|ALT_INV_Cpte\(6),
	datac => \inst3|ALT_INV_Cpte\(1),
	datad => \inst3|ALT_INV_Cpte\(3),
	datae => \inst3|ALT_INV_Cpte[4]~DUPLICATE_q\,
	dataf => \inst3|ALT_INV_Cpte[5]~DUPLICATE_q\,
	combout => \inst|Mux7~1_combout\);

-- Location: MLABCELL_X15_Y76_N42
\inst|Mux7~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux7~3_combout\ = ( \inst|Mux7~0_combout\ & ( \inst|Mux7~1_combout\ & ( (!\inst3|Cpts[9]~2_combout\ & (((!\inst|Mux7~2_combout\) # (\inst3|Cpte[0]~DUPLICATE_q\)))) # (\inst3|Cpts[9]~2_combout\ & (!\inst3|Cpte\(1) & ((!\inst3|Cpte[0]~DUPLICATE_q\)))) 
-- ) ) ) # ( !\inst|Mux7~0_combout\ & ( \inst|Mux7~1_combout\ & ( (!\inst3|Cpts[9]~2_combout\ & ((!\inst|Mux7~2_combout\) # (\inst3|Cpte[0]~DUPLICATE_q\))) ) ) ) # ( \inst|Mux7~0_combout\ & ( !\inst|Mux7~1_combout\ & ( (!\inst3|Cpte[0]~DUPLICATE_q\ & 
-- ((!\inst3|Cpts[9]~2_combout\ & ((!\inst|Mux7~2_combout\))) # (\inst3|Cpts[9]~2_combout\ & (!\inst3|Cpte\(1))))) ) ) ) # ( !\inst|Mux7~0_combout\ & ( !\inst|Mux7~1_combout\ & ( (!\inst3|Cpts[9]~2_combout\ & (!\inst|Mux7~2_combout\ & 
-- !\inst3|Cpte[0]~DUPLICATE_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000111000100000000011000000110011001110001011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Cpte\(1),
	datab => \inst3|ALT_INV_Cpts[9]~2_combout\,
	datac => \inst|ALT_INV_Mux7~2_combout\,
	datad => \inst3|ALT_INV_Cpte[0]~DUPLICATE_q\,
	datae => \inst|ALT_INV_Mux7~0_combout\,
	dataf => \inst|ALT_INV_Mux7~1_combout\,
	combout => \inst|Mux7~3_combout\);

-- Location: MLABCELL_X15_Y76_N33
\inst|Mux7~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux7~6_combout\ = ( \inst3|Cpte[4]~DUPLICATE_q\ & ( \inst3|Cpte[5]~DUPLICATE_q\ & ( (!\inst3|Cpte\(6) & ((!\inst3|Cpte\(2) & (\inst3|Cpte\(3) & !\inst3|Cpte\(1))) # (\inst3|Cpte\(2) & (!\inst3|Cpte\(3) & \inst3|Cpte\(1))))) # (\inst3|Cpte\(6) & 
-- (((!\inst3|Cpte\(3))))) ) ) ) # ( !\inst3|Cpte[4]~DUPLICATE_q\ & ( \inst3|Cpte[5]~DUPLICATE_q\ & ( (!\inst3|Cpte\(6) & (((!\inst3|Cpte\(3)) # (!\inst3|Cpte\(1))))) # (\inst3|Cpte\(6) & (!\inst3|Cpte\(1) & ((!\inst3|Cpte\(2)) # (!\inst3|Cpte\(3))))) ) ) ) 
-- # ( \inst3|Cpte[4]~DUPLICATE_q\ & ( !\inst3|Cpte[5]~DUPLICATE_q\ & ( (!\inst3|Cpte\(6) & (\inst3|Cpte\(1) & ((\inst3|Cpte\(3)) # (\inst3|Cpte\(2))))) # (\inst3|Cpte\(6) & (((\inst3|Cpte\(1)) # (\inst3|Cpte\(3))))) ) ) ) # ( !\inst3|Cpte[4]~DUPLICATE_q\ & 
-- ( !\inst3|Cpte[5]~DUPLICATE_q\ & ( (!\inst3|Cpte\(6) & (((\inst3|Cpte\(3))))) # (\inst3|Cpte\(6) & ((!\inst3|Cpte\(2) & (\inst3|Cpte\(3) & !\inst3|Cpte\(1))) # (\inst3|Cpte\(2) & (!\inst3|Cpte\(3) & \inst3|Cpte\(1))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111000011100000000110111111111111110110000000011100001110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Cpte\(2),
	datab => \inst3|ALT_INV_Cpte\(6),
	datac => \inst3|ALT_INV_Cpte\(3),
	datad => \inst3|ALT_INV_Cpte\(1),
	datae => \inst3|ALT_INV_Cpte[4]~DUPLICATE_q\,
	dataf => \inst3|ALT_INV_Cpte[5]~DUPLICATE_q\,
	combout => \inst|Mux7~6_combout\);

-- Location: MLABCELL_X15_Y76_N12
\inst|Mux7~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux7~5_combout\ = ( \inst3|Cpte\(3) & ( \inst3|Cpte[5]~DUPLICATE_q\ & ( (!\inst3|Cpte\(4) & ((!\inst3|Cpte\(6) & (\inst3|Cpte\(1))) # (\inst3|Cpte\(6) & ((!\inst3|Cpte\(2)))))) # (\inst3|Cpte\(4) & (!\inst3|Cpte\(6) & ((!\inst3|Cpte\(1)) # 
-- (\inst3|Cpte\(2))))) ) ) ) # ( !\inst3|Cpte\(3) & ( \inst3|Cpte[5]~DUPLICATE_q\ & ( (\inst3|Cpte\(6) & ((!\inst3|Cpte\(1) & ((\inst3|Cpte\(2)))) # (\inst3|Cpte\(1) & ((!\inst3|Cpte\(2)) # (\inst3|Cpte\(4)))))) ) ) ) # ( \inst3|Cpte\(3) & ( 
-- !\inst3|Cpte[5]~DUPLICATE_q\ & ( (!\inst3|Cpte\(4) & (!\inst3|Cpte\(6) $ (((!\inst3|Cpte\(1) & !\inst3|Cpte\(2)))))) # (\inst3|Cpte\(4) & (!\inst3|Cpte\(6) & ((!\inst3|Cpte\(1)) # (\inst3|Cpte\(2))))) ) ) ) # ( !\inst3|Cpte\(3) & ( 
-- !\inst3|Cpte[5]~DUPLICATE_q\ & ( (!\inst3|Cpte\(1) & (!\inst3|Cpte\(4) & ((\inst3|Cpte\(6))))) # (\inst3|Cpte\(1) & ((!\inst3|Cpte\(2) & ((\inst3|Cpte\(6)))) # (\inst3|Cpte\(2) & (\inst3|Cpte\(4))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000110111001011011111000000000000000001111010110011110100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Cpte\(4),
	datab => \inst3|ALT_INV_Cpte\(1),
	datac => \inst3|ALT_INV_Cpte\(2),
	datad => \inst3|ALT_INV_Cpte\(6),
	datae => \inst3|ALT_INV_Cpte\(3),
	dataf => \inst3|ALT_INV_Cpte[5]~DUPLICATE_q\,
	combout => \inst|Mux7~5_combout\);

-- Location: MLABCELL_X15_Y76_N27
\inst|Mux7~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux7~7_combout\ = ( \inst|Mux7~5_combout\ & ( (!\inst3|Cpte[0]~DUPLICATE_q\) # (!\inst|Mux7~6_combout\) ) ) # ( !\inst|Mux7~5_combout\ & ( (\inst3|Cpte[0]~DUPLICATE_q\ & !\inst|Mux7~6_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000011111111111100001111111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst3|ALT_INV_Cpte[0]~DUPLICATE_q\,
	datad => \inst|ALT_INV_Mux7~6_combout\,
	dataf => \inst|ALT_INV_Mux7~5_combout\,
	combout => \inst|Mux7~7_combout\);

-- Location: MLABCELL_X15_Y76_N54
\inst|Mux7~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux7~4_combout\ = ( \inst3|Cpts[8]~6_combout\ & ( \inst|Mux7~7_combout\ & ( (!\inst3|Cpts[9]~2_combout\ & ((\inst3|Cpte[7]~DUPLICATE_q\))) # (\inst3|Cpts[9]~2_combout\ & (\inst3|Cpte[0]~DUPLICATE_q\)) ) ) ) # ( !\inst3|Cpts[8]~6_combout\ & ( 
-- \inst|Mux7~7_combout\ & ( (!\inst3|Cpte[7]~DUPLICATE_q\ & (!\inst3|Cpts[9]~2_combout\)) # (\inst3|Cpte[7]~DUPLICATE_q\ & ((\inst|Mux7~3_combout\))) ) ) ) # ( \inst3|Cpts[8]~6_combout\ & ( !\inst|Mux7~7_combout\ & ( (!\inst3|Cpts[9]~2_combout\ & 
-- ((\inst3|Cpte[7]~DUPLICATE_q\))) # (\inst3|Cpts[9]~2_combout\ & (\inst3|Cpte[0]~DUPLICATE_q\)) ) ) ) # ( !\inst3|Cpts[8]~6_combout\ & ( !\inst|Mux7~7_combout\ & ( (\inst|Mux7~3_combout\ & \inst3|Cpte[7]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000001011010111110101010001100110000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Cpts[9]~2_combout\,
	datab => \inst|ALT_INV_Mux7~3_combout\,
	datac => \inst3|ALT_INV_Cpte[0]~DUPLICATE_q\,
	datad => \inst3|ALT_INV_Cpte[7]~DUPLICATE_q\,
	datae => \inst3|ALT_INV_Cpts[8]~6_combout\,
	dataf => \inst|ALT_INV_Mux7~7_combout\,
	combout => \inst|Mux7~4_combout\);

-- Location: FF_X15_Y76_N56
\inst|Q[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst23|CLKs~combout\,
	d => \inst|Mux7~4_combout\,
	clrn => \inst30|Reset_n_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Q\(24));

-- Location: LABCELL_X19_Y76_N39
\inst22|DtR[24]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst22|DtR[24]~feeder_combout\ = ( \inst|Q\(24) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst|ALT_INV_Q\(24),
	combout => \inst22|DtR[24]~feeder_combout\);

-- Location: FF_X19_Y76_N40
\inst22|DtR[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst26|CLKs~combout\,
	d => \inst22|DtR[24]~feeder_combout\,
	ena => \inst22|DtR[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst22|DtR\(24));

-- Location: LABCELL_X16_Y78_N48
\inst|Mux11~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux11~4_combout\ = ( \inst3|Cpte\(1) & ( \inst3|Cpte[4]~DUPLICATE_q\ & ( (!\inst3|Cpte[5]~DUPLICATE_q\ & ((!\inst3|Cpte\(3) & ((\inst3|Cpte\(2)))) # (\inst3|Cpte\(3) & (\inst3|Cpte[6]~DUPLICATE_q\ & !\inst3|Cpte\(2))))) # 
-- (\inst3|Cpte[5]~DUPLICATE_q\ & (!\inst3|Cpte\(3) $ ((\inst3|Cpte[6]~DUPLICATE_q\)))) ) ) ) # ( !\inst3|Cpte\(1) & ( \inst3|Cpte[4]~DUPLICATE_q\ & ( (!\inst3|Cpte\(2) & (!\inst3|Cpte[5]~DUPLICATE_q\ $ (((!\inst3|Cpte[6]~DUPLICATE_q\))))) # (\inst3|Cpte\(2) 
-- & ((!\inst3|Cpte\(3) & ((\inst3|Cpte[6]~DUPLICATE_q\))) # (\inst3|Cpte\(3) & (\inst3|Cpte[5]~DUPLICATE_q\)))) ) ) ) # ( \inst3|Cpte\(1) & ( !\inst3|Cpte[4]~DUPLICATE_q\ & ( (!\inst3|Cpte[5]~DUPLICATE_q\ & (!\inst3|Cpte\(3) $ 
-- ((\inst3|Cpte[6]~DUPLICATE_q\)))) # (\inst3|Cpte[5]~DUPLICATE_q\ & ((!\inst3|Cpte\(3) & (!\inst3|Cpte[6]~DUPLICATE_q\ & \inst3|Cpte\(2))) # (\inst3|Cpte\(3) & ((!\inst3|Cpte\(2)))))) ) ) ) # ( !\inst3|Cpte\(1) & ( !\inst3|Cpte[4]~DUPLICATE_q\ & ( 
-- (!\inst3|Cpte\(3) & ((!\inst3|Cpte[5]~DUPLICATE_q\ & ((!\inst3|Cpte[6]~DUPLICATE_q\) # (\inst3|Cpte\(2)))) # (\inst3|Cpte[5]~DUPLICATE_q\ & ((!\inst3|Cpte\(2)))))) # (\inst3|Cpte\(3) & (!\inst3|Cpte[6]~DUPLICATE_q\ $ (((!\inst3|Cpte[5]~DUPLICATE_q\ & 
-- !\inst3|Cpte\(2)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101011010111000100100111100001001011010000111010100001111001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Cpte[5]~DUPLICATE_q\,
	datab => \inst3|ALT_INV_Cpte\(3),
	datac => \inst3|ALT_INV_Cpte[6]~DUPLICATE_q\,
	datad => \inst3|ALT_INV_Cpte\(2),
	datae => \inst3|ALT_INV_Cpte\(1),
	dataf => \inst3|ALT_INV_Cpte[4]~DUPLICATE_q\,
	combout => \inst|Mux11~4_combout\);

-- Location: LABCELL_X16_Y78_N9
\inst|Mux11~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux11~5_combout\ = ( \inst3|Cpte[5]~DUPLICATE_q\ & ( \inst3|Cpte\(1) & ( (!\inst3|Cpte[6]~DUPLICATE_q\ & (\inst3|Cpte\(3) & (!\inst3|Cpte[4]~DUPLICATE_q\ $ (\inst3|Cpte\(2))))) # (\inst3|Cpte[6]~DUPLICATE_q\ & (((!\inst3|Cpte[4]~DUPLICATE_q\)))) ) ) 
-- ) # ( !\inst3|Cpte[5]~DUPLICATE_q\ & ( \inst3|Cpte\(1) & ( (!\inst3|Cpte\(3) & ((!\inst3|Cpte[4]~DUPLICATE_q\ & (\inst3|Cpte\(2) & \inst3|Cpte[6]~DUPLICATE_q\)) # (\inst3|Cpte[4]~DUPLICATE_q\ & (!\inst3|Cpte\(2) $ (!\inst3|Cpte[6]~DUPLICATE_q\))))) # 
-- (\inst3|Cpte\(3) & (!\inst3|Cpte[4]~DUPLICATE_q\ $ (!\inst3|Cpte\(2) $ (\inst3|Cpte[6]~DUPLICATE_q\)))) ) ) ) # ( \inst3|Cpte[5]~DUPLICATE_q\ & ( !\inst3|Cpte\(1) & ( (!\inst3|Cpte\(3) & (!\inst3|Cpte[4]~DUPLICATE_q\ $ (!\inst3|Cpte\(2) $ 
-- (!\inst3|Cpte[6]~DUPLICATE_q\)))) # (\inst3|Cpte\(3) & ((!\inst3|Cpte[4]~DUPLICATE_q\ & (!\inst3|Cpte\(2) $ (!\inst3|Cpte[6]~DUPLICATE_q\))) # (\inst3|Cpte[4]~DUPLICATE_q\ & (!\inst3|Cpte\(2) & !\inst3|Cpte[6]~DUPLICATE_q\)))) ) ) ) # ( 
-- !\inst3|Cpte[5]~DUPLICATE_q\ & ( !\inst3|Cpte\(1) & ( (!\inst3|Cpte[6]~DUPLICATE_q\ & (((\inst3|Cpte[4]~DUPLICATE_q\)))) # (\inst3|Cpte[6]~DUPLICATE_q\ & (!\inst3|Cpte\(3) & (!\inst3|Cpte[4]~DUPLICATE_q\ $ (\inst3|Cpte\(2))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001110000010100101100110100000010110011010010100000111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Cpte\(3),
	datab => \inst3|ALT_INV_Cpte[4]~DUPLICATE_q\,
	datac => \inst3|ALT_INV_Cpte\(2),
	datad => \inst3|ALT_INV_Cpte[6]~DUPLICATE_q\,
	datae => \inst3|ALT_INV_Cpte[5]~DUPLICATE_q\,
	dataf => \inst3|ALT_INV_Cpte\(1),
	combout => \inst|Mux11~5_combout\);

-- Location: LABCELL_X16_Y78_N24
\inst|Mux11~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux11~6_combout\ = ( \inst|Mux11~5_combout\ & ( (!\inst|Mux11~4_combout\) # (\inst3|Cpte[0]~DUPLICATE_q\) ) ) # ( !\inst|Mux11~5_combout\ & ( (!\inst|Mux11~4_combout\ & !\inst3|Cpte[0]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000011110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_Mux11~4_combout\,
	datad => \inst3|ALT_INV_Cpte[0]~DUPLICATE_q\,
	dataf => \inst|ALT_INV_Mux11~5_combout\,
	combout => \inst|Mux11~6_combout\);

-- Location: MLABCELL_X15_Y75_N39
\inst|Mux11~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux11~2_combout\ = ( \inst3|Cpte[3]~DUPLICATE_q\ & ( \inst3|Cpte\(6) & ( (!\inst3|Cpte\(2) & (!\inst3|Cpte[4]~DUPLICATE_q\ & ((\inst3|Cpte[1]~DUPLICATE_q\) # (\inst3|Cpte\(5))))) # (\inst3|Cpte\(2) & (\inst3|Cpte[1]~DUPLICATE_q\ & (!\inst3|Cpte\(5) 
-- $ (!\inst3|Cpte[4]~DUPLICATE_q\)))) ) ) ) # ( !\inst3|Cpte[3]~DUPLICATE_q\ & ( \inst3|Cpte\(6) & ( !\inst3|Cpte[4]~DUPLICATE_q\ $ (((!\inst3|Cpte\(2) & (!\inst3|Cpte\(5) $ (!\inst3|Cpte[1]~DUPLICATE_q\))) # (\inst3|Cpte\(2) & (!\inst3|Cpte\(5) & 
-- !\inst3|Cpte[1]~DUPLICATE_q\)))) ) ) ) # ( \inst3|Cpte[3]~DUPLICATE_q\ & ( !\inst3|Cpte\(6) & ( !\inst3|Cpte[4]~DUPLICATE_q\ $ (((!\inst3|Cpte\(2) & ((!\inst3|Cpte\(5)) # (!\inst3|Cpte[1]~DUPLICATE_q\))) # (\inst3|Cpte\(2) & (!\inst3|Cpte\(5) $ 
-- (\inst3|Cpte[1]~DUPLICATE_q\))))) ) ) ) # ( !\inst3|Cpte[3]~DUPLICATE_q\ & ( !\inst3|Cpte\(6) & ( (!\inst3|Cpte\(2) & (!\inst3|Cpte[1]~DUPLICATE_q\ & (!\inst3|Cpte\(5) $ (!\inst3|Cpte[4]~DUPLICATE_q\)))) # (\inst3|Cpte\(2) & (\inst3|Cpte[4]~DUPLICATE_q\ & 
-- ((!\inst3|Cpte\(5)) # (!\inst3|Cpte[1]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010110100000100000111100110100110010110011110000010000010110100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Cpte\(2),
	datab => \inst3|ALT_INV_Cpte\(5),
	datac => \inst3|ALT_INV_Cpte[4]~DUPLICATE_q\,
	datad => \inst3|ALT_INV_Cpte[1]~DUPLICATE_q\,
	datae => \inst3|ALT_INV_Cpte[3]~DUPLICATE_q\,
	dataf => \inst3|ALT_INV_Cpte\(6),
	combout => \inst|Mux11~2_combout\);

-- Location: LABCELL_X16_Y75_N27
\inst|Mux11~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux11~1_combout\ = ( \inst3|Cpte\(6) & ( \inst3|Cpte[4]~DUPLICATE_q\ & ( (!\inst3|Cpte[1]~DUPLICATE_q\ & ((!\inst3|Cpte\(2) & ((!\inst3|Cpte\(5)))) # (\inst3|Cpte\(2) & ((!\inst3|Cpte[3]~DUPLICATE_q\) # (\inst3|Cpte\(5)))))) # 
-- (\inst3|Cpte[1]~DUPLICATE_q\ & (!\inst3|Cpte[3]~DUPLICATE_q\ $ (((!\inst3|Cpte\(2)) # (\inst3|Cpte\(5)))))) ) ) ) # ( !\inst3|Cpte\(6) & ( \inst3|Cpte[4]~DUPLICATE_q\ & ( (!\inst3|Cpte[3]~DUPLICATE_q\ & ((!\inst3|Cpte\(2) & ((\inst3|Cpte\(5)))) # 
-- (\inst3|Cpte\(2) & (\inst3|Cpte[1]~DUPLICATE_q\)))) # (\inst3|Cpte[3]~DUPLICATE_q\ & (!\inst3|Cpte[1]~DUPLICATE_q\ & ((\inst3|Cpte\(5))))) ) ) ) # ( \inst3|Cpte\(6) & ( !\inst3|Cpte[4]~DUPLICATE_q\ & ( (!\inst3|Cpte\(2) & (!\inst3|Cpte[3]~DUPLICATE_q\ $ 
-- (((!\inst3|Cpte\(5)) # (\inst3|Cpte[1]~DUPLICATE_q\))))) # (\inst3|Cpte\(2) & (!\inst3|Cpte\(5) & (!\inst3|Cpte[1]~DUPLICATE_q\ $ (\inst3|Cpte[3]~DUPLICATE_q\)))) ) ) ) # ( !\inst3|Cpte\(6) & ( !\inst3|Cpte[4]~DUPLICATE_q\ & ( 
-- (!\inst3|Cpte[1]~DUPLICATE_q\ & ((!\inst3|Cpte\(2) & ((\inst3|Cpte\(5)))) # (\inst3|Cpte\(2) & ((!\inst3|Cpte\(5)) # (\inst3|Cpte[3]~DUPLICATE_q\))))) # (\inst3|Cpte[1]~DUPLICATE_q\ & (!\inst3|Cpte[3]~DUPLICATE_q\ $ (((!\inst3|Cpte\(2) & 
-- \inst3|Cpte\(5)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100111010110110001110011001000000000100111001101011110000011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Cpte[1]~DUPLICATE_q\,
	datab => \inst3|ALT_INV_Cpte[3]~DUPLICATE_q\,
	datac => \inst3|ALT_INV_Cpte\(2),
	datad => \inst3|ALT_INV_Cpte\(5),
	datae => \inst3|ALT_INV_Cpte\(6),
	dataf => \inst3|ALT_INV_Cpte[4]~DUPLICATE_q\,
	combout => \inst|Mux11~1_combout\);

-- Location: LABCELL_X16_Y75_N6
\inst|Mux11~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux11~3_combout\ = (!\inst3|Cpte\(0) & ((\inst|Mux11~1_combout\))) # (\inst3|Cpte\(0) & (!\inst|Mux11~2_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000011111010010100001111101001010000111110100101000011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Cpte\(0),
	datac => \inst|ALT_INV_Mux11~2_combout\,
	datad => \inst|ALT_INV_Mux11~1_combout\,
	combout => \inst|Mux11~3_combout\);

-- Location: LABCELL_X17_Y75_N48
\inst|Mux11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux11~0_combout\ = ( \inst|Mux11~6_combout\ & ( \inst|Mux11~3_combout\ & ( ((!\inst3|Cpts[9]~2_combout\ & ((!\inst3|Cpts[8]~6_combout\) # (\inst3|Cpte[7]~DUPLICATE_q\)))) # (\inst|Mux15~0_combout\) ) ) ) # ( !\inst|Mux11~6_combout\ & ( 
-- \inst|Mux11~3_combout\ & ( ((!\inst3|Cpts[9]~2_combout\ & \inst3|Cpte[7]~DUPLICATE_q\)) # (\inst|Mux15~0_combout\) ) ) ) # ( \inst|Mux11~6_combout\ & ( !\inst|Mux11~3_combout\ & ( ((!\inst3|Cpts[9]~2_combout\ & (!\inst3|Cpts[8]~6_combout\ $ 
-- (\inst3|Cpte[7]~DUPLICATE_q\)))) # (\inst|Mux15~0_combout\) ) ) ) # ( !\inst|Mux11~6_combout\ & ( !\inst|Mux11~3_combout\ & ( ((\inst3|Cpts[8]~6_combout\ & (!\inst3|Cpts[9]~2_combout\ & \inst3|Cpte[7]~DUPLICATE_q\))) # (\inst|Mux15~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101110011101100110111001100110011111100111011001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Cpts[8]~6_combout\,
	datab => \inst|ALT_INV_Mux15~0_combout\,
	datac => \inst3|ALT_INV_Cpts[9]~2_combout\,
	datad => \inst3|ALT_INV_Cpte[7]~DUPLICATE_q\,
	datae => \inst|ALT_INV_Mux11~6_combout\,
	dataf => \inst|ALT_INV_Mux11~3_combout\,
	combout => \inst|Mux11~0_combout\);

-- Location: FF_X17_Y75_N50
\inst|Q[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst23|CLKs~combout\,
	d => \inst|Mux11~0_combout\,
	clrn => \inst30|Reset_n_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Q\(20));

-- Location: LABCELL_X18_Y75_N30
\inst22|DtR[20]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst22|DtR[20]~feeder_combout\ = ( \inst|Q\(20) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst|ALT_INV_Q\(20),
	combout => \inst22|DtR[20]~feeder_combout\);

-- Location: FF_X18_Y75_N32
\inst22|DtR[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst26|CLKs~combout\,
	d => \inst22|DtR[20]~feeder_combout\,
	ena => \inst22|DtR[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst22|DtR\(20));

-- Location: MLABCELL_X15_Y75_N30
\inst|Mux3~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux3~4_combout\ = ( \inst3|Cpte\(2) & ( \inst3|Cpte\(5) & ( (!\inst3|Cpte[3]~DUPLICATE_q\ & (((!\inst3|Cpte\(6)) # (\inst3|Cpte[1]~DUPLICATE_q\)) # (\inst3|Cpte[0]~DUPLICATE_q\))) ) ) ) # ( !\inst3|Cpte\(2) & ( \inst3|Cpte\(5) & ( 
-- (!\inst3|Cpte[0]~DUPLICATE_q\ & (((\inst3|Cpte[3]~DUPLICATE_q\)))) # (\inst3|Cpte[0]~DUPLICATE_q\ & ((!\inst3|Cpte[1]~DUPLICATE_q\ & ((\inst3|Cpte[3]~DUPLICATE_q\))) # (\inst3|Cpte[1]~DUPLICATE_q\ & (!\inst3|Cpte\(6))))) ) ) ) # ( \inst3|Cpte\(2) & ( 
-- !\inst3|Cpte\(5) & ( (!\inst3|Cpte\(6) & ((!\inst3|Cpte[1]~DUPLICATE_q\) # (\inst3|Cpte[3]~DUPLICATE_q\))) ) ) ) # ( !\inst3|Cpte\(2) & ( !\inst3|Cpte\(5) & ( (!\inst3|Cpte\(6) & ((!\inst3|Cpte[0]~DUPLICATE_q\ & (\inst3|Cpte[1]~DUPLICATE_q\ & 
-- !\inst3|Cpte[3]~DUPLICATE_q\)) # (\inst3|Cpte[0]~DUPLICATE_q\ & ((!\inst3|Cpte[3]~DUPLICATE_q\) # (\inst3|Cpte[1]~DUPLICATE_q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110000000100110000001100110000000100111111101101111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Cpte[0]~DUPLICATE_q\,
	datab => \inst3|ALT_INV_Cpte\(6),
	datac => \inst3|ALT_INV_Cpte[1]~DUPLICATE_q\,
	datad => \inst3|ALT_INV_Cpte[3]~DUPLICATE_q\,
	datae => \inst3|ALT_INV_Cpte\(2),
	dataf => \inst3|ALT_INV_Cpte\(5),
	combout => \inst|Mux3~4_combout\);

-- Location: LABCELL_X19_Y75_N45
\inst|Mux3~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux3~5_combout\ = ( \inst3|Cpte\(3) & ( (\inst3|Cpte\(1)) # (\inst3|Cpte\(0)) ) ) # ( !\inst3|Cpte\(3) & ( (!\inst3|Cpte\(0) & (!\inst3|Cpte\(1) & ((\inst3|Cpte\(6)) # (\inst3|Cpte\(5))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000010100000001000001010000001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Cpte\(0),
	datab => \inst3|ALT_INV_Cpte\(5),
	datac => \inst3|ALT_INV_Cpte\(1),
	datad => \inst3|ALT_INV_Cpte\(6),
	dataf => \inst3|ALT_INV_Cpte\(3),
	combout => \inst|Mux3~5_combout\);

-- Location: LABCELL_X19_Y75_N30
\inst|Mux3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux3~1_combout\ = ( \inst|Mux3~5_combout\ & ( \inst3|Cpte\(2) & ( (!\inst3|Cpts[9]~2_combout\ & (((\inst|Mux3~4_combout\)) # (\inst3|Cpts[8]~6_combout\))) # (\inst3|Cpts[9]~2_combout\ & (!\inst3|Cpts[8]~6_combout\ & ((!\inst3|Cpte\(3))))) ) ) ) # ( 
-- !\inst|Mux3~5_combout\ & ( \inst3|Cpte\(2) & ( (!\inst3|Cpts[9]~2_combout\ & (((\inst|Mux3~4_combout\)) # (\inst3|Cpts[8]~6_combout\))) # (\inst3|Cpts[9]~2_combout\ & (!\inst3|Cpts[8]~6_combout\ & ((!\inst3|Cpte\(3))))) ) ) ) # ( \inst|Mux3~5_combout\ & ( 
-- !\inst3|Cpte\(2) & ( (!\inst3|Cpts[9]~2_combout\ & ((\inst|Mux3~4_combout\) # (\inst3|Cpts[8]~6_combout\))) ) ) ) # ( !\inst|Mux3~5_combout\ & ( !\inst3|Cpte\(2) & ( (!\inst3|Cpts[9]~2_combout\ & ((\inst|Mux3~4_combout\) # (\inst3|Cpts[8]~6_combout\))) # 
-- (\inst3|Cpts[9]~2_combout\ & (!\inst3|Cpts[8]~6_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110111001101110001010100010101001101110001010100110111000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Cpts[9]~2_combout\,
	datab => \inst3|ALT_INV_Cpts[8]~6_combout\,
	datac => \inst|ALT_INV_Mux3~4_combout\,
	datad => \inst3|ALT_INV_Cpte\(3),
	datae => \inst|ALT_INV_Mux3~5_combout\,
	dataf => \inst3|ALT_INV_Cpte\(2),
	combout => \inst|Mux3~1_combout\);

-- Location: LABCELL_X19_Y75_N39
\inst|Mux3~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux3~8_combout\ = ( \inst3|Cpte\(0) & ( \inst3|Cpte\(5) & ( (\inst3|Cpte\(6) & ((!\inst3|Cpte\(2) & ((!\inst3|Cpte\(3)) # (\inst3|Cpte\(1)))) # (\inst3|Cpte\(2) & ((!\inst3|Cpte\(1)) # (\inst3|Cpte\(3)))))) ) ) ) # ( !\inst3|Cpte\(0) & ( 
-- \inst3|Cpte\(5) & ( (\inst3|Cpte\(6) & (!\inst3|Cpte\(2) $ (((!\inst3|Cpte\(1)) # (\inst3|Cpte\(3)))))) ) ) ) # ( \inst3|Cpte\(0) & ( !\inst3|Cpte\(5) & ( (!\inst3|Cpte\(2) & (((\inst3|Cpte\(3))))) # (\inst3|Cpte\(2) & ((!\inst3|Cpte\(1) & 
-- (\inst3|Cpte\(6))) # (\inst3|Cpte\(1) & ((!\inst3|Cpte\(3)))))) ) ) ) # ( !\inst3|Cpte\(0) & ( !\inst3|Cpte\(5) & ( (!\inst3|Cpte\(2) & (((\inst3|Cpte\(3))))) # (\inst3|Cpte\(2) & ((!\inst3|Cpte\(1) & (\inst3|Cpte\(6) & \inst3|Cpte\(3))) # 
-- (\inst3|Cpte\(1) & ((!\inst3|Cpte\(3)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000110101110000101011010111000000110000001010000111000000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Cpte\(2),
	datab => \inst3|ALT_INV_Cpte\(1),
	datac => \inst3|ALT_INV_Cpte\(6),
	datad => \inst3|ALT_INV_Cpte\(3),
	datae => \inst3|ALT_INV_Cpte\(0),
	dataf => \inst3|ALT_INV_Cpte\(5),
	combout => \inst|Mux3~8_combout\);

-- Location: LABCELL_X19_Y75_N18
\inst|Mux3~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux3~2_combout\ = ( \inst|Mux3~8_combout\ & ( (\inst3|Cpts[9]~2_combout\ & ((\inst3|Cpte\(3)) # (\inst3|Cpts[8]~6_combout\))) ) ) # ( !\inst|Mux3~8_combout\ & ( (!\inst3|Cpts[9]~2_combout\ & (!\inst3|Cpts[8]~6_combout\)) # (\inst3|Cpts[9]~2_combout\ 
-- & ((\inst3|Cpte\(3)) # (\inst3|Cpts[8]~6_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001110110011101100111011001110100010101000101010001010100010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Cpts[9]~2_combout\,
	datab => \inst3|ALT_INV_Cpts[8]~6_combout\,
	datac => \inst3|ALT_INV_Cpte\(3),
	dataf => \inst|ALT_INV_Mux3~8_combout\,
	combout => \inst|Mux3~2_combout\);

-- Location: LABCELL_X19_Y75_N36
\inst|Mux3~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux3~7_combout\ = ( \inst3|Cpte\(0) & ( \inst3|Cpte\(5) & ( (\inst3|Cpte\(6) & ((!\inst3|Cpte\(2) & ((!\inst3|Cpte\(3)) # (\inst3|Cpte\(1)))) # (\inst3|Cpte\(2) & ((!\inst3|Cpte\(1)) # (\inst3|Cpte\(3)))))) ) ) ) # ( !\inst3|Cpte\(0) & ( 
-- \inst3|Cpte\(5) & ( (\inst3|Cpte\(6) & (!\inst3|Cpte\(2) $ (((!\inst3|Cpte\(1)) # (\inst3|Cpte\(3)))))) ) ) ) # ( \inst3|Cpte\(0) & ( !\inst3|Cpte\(5) & ( (!\inst3|Cpte\(2) & (((\inst3|Cpte\(3))))) # (\inst3|Cpte\(2) & ((!\inst3|Cpte\(1) & 
-- ((\inst3|Cpte\(6)))) # (\inst3|Cpte\(1) & (!\inst3|Cpte\(3))))) ) ) ) # ( !\inst3|Cpte\(0) & ( !\inst3|Cpte\(5) & ( (!\inst3|Cpte\(2) & (((\inst3|Cpte\(3))))) # (\inst3|Cpte\(2) & ((!\inst3|Cpte\(1) & (\inst3|Cpte\(3) & \inst3|Cpte\(6))) # 
-- (\inst3|Cpte\(1) & (!\inst3|Cpte\(3))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101000011110000110100101111000000000011001010000000011100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Cpte\(2),
	datab => \inst3|ALT_INV_Cpte\(1),
	datac => \inst3|ALT_INV_Cpte\(3),
	datad => \inst3|ALT_INV_Cpte\(6),
	datae => \inst3|ALT_INV_Cpte\(0),
	dataf => \inst3|ALT_INV_Cpte\(5),
	combout => \inst|Mux3~7_combout\);

-- Location: LABCELL_X19_Y75_N12
\inst|Mux3~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux3~3_combout\ = ( \inst3|Cpte\(0) & ( \inst3|Cpts[9]~2_combout\ & ( !\inst3|Cpte\(3) ) ) ) # ( !\inst3|Cpte\(0) & ( \inst3|Cpts[9]~2_combout\ & ( !\inst3|Cpte\(3) $ (((!\inst3|Cpte\(1) & !\inst3|Cpte\(2)))) ) ) ) # ( \inst3|Cpte\(0) & ( 
-- !\inst3|Cpts[9]~2_combout\ & ( \inst|Mux3~7_combout\ ) ) ) # ( !\inst3|Cpte\(0) & ( !\inst3|Cpts[9]~2_combout\ & ( \inst|Mux3~7_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111101100110101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Cpte\(3),
	datab => \inst3|ALT_INV_Cpte\(1),
	datac => \inst|ALT_INV_Mux3~7_combout\,
	datad => \inst3|ALT_INV_Cpte\(2),
	datae => \inst3|ALT_INV_Cpte\(0),
	dataf => \inst3|ALT_INV_Cpts[9]~2_combout\,
	combout => \inst|Mux3~3_combout\);

-- Location: LABCELL_X19_Y77_N33
\inst|Mux3~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux3~6_combout\ = ( \inst3|Cpte[0]~DUPLICATE_q\ & ( \inst3|Cpte\(2) & ( (!\inst3|Cpte[5]~DUPLICATE_q\ & (!\inst3|Cpte\(6) & ((!\inst3|Cpte\(1)) # (\inst3|Cpte\(3))))) # (\inst3|Cpte[5]~DUPLICATE_q\ & (!\inst3|Cpte\(3))) ) ) ) # ( 
-- !\inst3|Cpte[0]~DUPLICATE_q\ & ( \inst3|Cpte\(2) & ( (!\inst3|Cpte\(3) & ((!\inst3|Cpte\(1) & ((!\inst3|Cpte\(6)))) # (\inst3|Cpte\(1) & (\inst3|Cpte[5]~DUPLICATE_q\)))) # (\inst3|Cpte\(3) & (!\inst3|Cpte[5]~DUPLICATE_q\ & ((!\inst3|Cpte\(6))))) ) ) ) # ( 
-- \inst3|Cpte[0]~DUPLICATE_q\ & ( !\inst3|Cpte\(2) & ( (!\inst3|Cpte\(1) & ((!\inst3|Cpte\(3) & (!\inst3|Cpte[5]~DUPLICATE_q\ & !\inst3|Cpte\(6))) # (\inst3|Cpte\(3) & (\inst3|Cpte[5]~DUPLICATE_q\)))) # (\inst3|Cpte\(1) & (((!\inst3|Cpte\(6))))) ) ) ) # ( 
-- !\inst3|Cpte[0]~DUPLICATE_q\ & ( !\inst3|Cpte\(2) & ( (!\inst3|Cpte\(3) & (!\inst3|Cpte[5]~DUPLICATE_q\ & !\inst3|Cpte\(6))) # (\inst3|Cpte\(3) & (\inst3|Cpte[5]~DUPLICATE_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001100100010001100111110001000011100110000000101110011000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Cpte\(3),
	datab => \inst3|ALT_INV_Cpte[5]~DUPLICATE_q\,
	datac => \inst3|ALT_INV_Cpte\(1),
	datad => \inst3|ALT_INV_Cpte\(6),
	datae => \inst3|ALT_INV_Cpte[0]~DUPLICATE_q\,
	dataf => \inst3|ALT_INV_Cpte\(2),
	combout => \inst|Mux3~6_combout\);

-- Location: LABCELL_X19_Y75_N21
\inst|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux3~0_combout\ = ( \inst3|Cpts[9]~2_combout\ & ( (!\inst3|Cpts[8]~6_combout\ & \inst3|Cpte\(3)) ) ) # ( !\inst3|Cpts[9]~2_combout\ & ( (!\inst3|Cpts[8]~6_combout\ & !\inst|Mux3~6_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000000000110011000000000000001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ALT_INV_Cpts[8]~6_combout\,
	datac => \inst3|ALT_INV_Cpte\(3),
	datad => \inst|ALT_INV_Mux3~6_combout\,
	dataf => \inst3|ALT_INV_Cpts[9]~2_combout\,
	combout => \inst|Mux3~0_combout\);

-- Location: LABCELL_X19_Y75_N24
\inst|Mux3~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux3~9_combout\ = ( !\inst3|Cpte[4]~DUPLICATE_q\ & ( ((!\inst3|Cpte[7]~DUPLICATE_q\ & (((\inst|Mux3~0_combout\)))) # (\inst3|Cpte[7]~DUPLICATE_q\ & (\inst|Mux3~1_combout\))) ) ) # ( \inst3|Cpte[4]~DUPLICATE_q\ & ( ((!\inst3|Cpte[7]~DUPLICATE_q\ & 
-- (\inst|Mux3~2_combout\)) # (\inst3|Cpte[7]~DUPLICATE_q\ & (((\inst|Mux3~3_combout\) # (\inst3|Cpts[8]~6_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111101010101001100110000111100001111010101010011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Mux3~1_combout\,
	datab => \inst|ALT_INV_Mux3~2_combout\,
	datac => \inst3|ALT_INV_Cpts[8]~6_combout\,
	datad => \inst3|ALT_INV_Cpte[7]~DUPLICATE_q\,
	datae => \inst3|ALT_INV_Cpte[4]~DUPLICATE_q\,
	dataf => \inst|ALT_INV_Mux3~3_combout\,
	datag => \inst|ALT_INV_Mux3~0_combout\,
	combout => \inst|Mux3~9_combout\);

-- Location: FF_X19_Y75_N26
\inst|Q[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst23|CLKs~combout\,
	d => \inst|Mux3~9_combout\,
	clrn => \inst30|Reset_n_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Q\(28));

-- Location: FF_X18_Y75_N53
\inst22|DtR[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst26|CLKs~combout\,
	asdata => \inst|Q\(28),
	sload => VCC,
	ena => \inst22|DtR[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst22|DtR\(28));

-- Location: LABCELL_X16_Y73_N57
\inst|Mux15~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux15~4_combout\ = ( \inst3|Cpte[6]~DUPLICATE_q\ & ( \inst3|Cpte\(2) & ( (!\inst3|Cpte[4]~DUPLICATE_q\ & (!\inst3|Cpte\(3) $ (((\inst3|Cpte\(1)) # (\inst3|Cpte[5]~DUPLICATE_q\))))) # (\inst3|Cpte[4]~DUPLICATE_q\ & ((!\inst3|Cpte\(3) & 
-- ((!\inst3|Cpte[5]~DUPLICATE_q\) # (!\inst3|Cpte\(1)))) # (\inst3|Cpte\(3) & (!\inst3|Cpte[5]~DUPLICATE_q\ & !\inst3|Cpte\(1))))) ) ) ) # ( !\inst3|Cpte[6]~DUPLICATE_q\ & ( \inst3|Cpte\(2) & ( (!\inst3|Cpte[4]~DUPLICATE_q\ & (!\inst3|Cpte\(1) $ 
-- (((!\inst3|Cpte\(3) & !\inst3|Cpte[5]~DUPLICATE_q\))))) # (\inst3|Cpte[4]~DUPLICATE_q\ & (!\inst3|Cpte\(3) $ ((\inst3|Cpte[5]~DUPLICATE_q\)))) ) ) ) # ( \inst3|Cpte[6]~DUPLICATE_q\ & ( !\inst3|Cpte\(2) & ( (!\inst3|Cpte\(3) & (!\inst3|Cpte[4]~DUPLICATE_q\ 
-- & (!\inst3|Cpte[5]~DUPLICATE_q\ $ (!\inst3|Cpte\(1))))) # (\inst3|Cpte\(3) & (((!\inst3|Cpte[4]~DUPLICATE_q\ & !\inst3|Cpte\(1))) # (\inst3|Cpte[5]~DUPLICATE_q\))) ) ) ) # ( !\inst3|Cpte[6]~DUPLICATE_q\ & ( !\inst3|Cpte\(2) & ( 
-- (!\inst3|Cpte[4]~DUPLICATE_q\ & ((!\inst3|Cpte\(3) & (\inst3|Cpte[5]~DUPLICATE_q\ & !\inst3|Cpte\(1))) # (\inst3|Cpte\(3) & (!\inst3|Cpte[5]~DUPLICATE_q\ $ (\inst3|Cpte\(1)))))) # (\inst3|Cpte[4]~DUPLICATE_q\ & (!\inst3|Cpte\(3) $ (((!\inst3|Cpte\(1)))))) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011100101000110001010111000001101101011110000011101011001100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Cpte[4]~DUPLICATE_q\,
	datab => \inst3|ALT_INV_Cpte\(3),
	datac => \inst3|ALT_INV_Cpte[5]~DUPLICATE_q\,
	datad => \inst3|ALT_INV_Cpte\(1),
	datae => \inst3|ALT_INV_Cpte[6]~DUPLICATE_q\,
	dataf => \inst3|ALT_INV_Cpte\(2),
	combout => \inst|Mux15~4_combout\);

-- Location: MLABCELL_X15_Y73_N12
\inst|Mux15~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux15~5_combout\ = ( \inst3|Cpte[6]~DUPLICATE_q\ & ( \inst3|Cpte[5]~DUPLICATE_q\ & ( (!\inst3|Cpte\(2) & (!\inst3|Cpte\(1) $ (((!\inst3|Cpte\(4)) # (\inst3|Cpte\(3)))))) # (\inst3|Cpte\(2) & (!\inst3|Cpte\(3) & ((!\inst3|Cpte\(1)) # 
-- (\inst3|Cpte\(4))))) ) ) ) # ( !\inst3|Cpte[6]~DUPLICATE_q\ & ( \inst3|Cpte[5]~DUPLICATE_q\ & ( (!\inst3|Cpte\(2) & (\inst3|Cpte\(3) & ((\inst3|Cpte\(1)) # (\inst3|Cpte\(4))))) # (\inst3|Cpte\(2) & ((!\inst3|Cpte\(3) & (\inst3|Cpte\(4))) # 
-- (\inst3|Cpte\(3) & ((!\inst3|Cpte\(1)))))) ) ) ) # ( \inst3|Cpte[6]~DUPLICATE_q\ & ( !\inst3|Cpte[5]~DUPLICATE_q\ & ( (!\inst3|Cpte\(2) & ((!\inst3|Cpte\(3) & ((\inst3|Cpte\(1)))) # (\inst3|Cpte\(3) & (!\inst3|Cpte\(4))))) # (\inst3|Cpte\(2) & 
-- (!\inst3|Cpte\(3) & ((!\inst3|Cpte\(4)) # (!\inst3|Cpte\(1))))) ) ) ) # ( !\inst3|Cpte[6]~DUPLICATE_q\ & ( !\inst3|Cpte[5]~DUPLICATE_q\ & ( (!\inst3|Cpte\(2) & (\inst3|Cpte\(3) & ((!\inst3|Cpte\(4)) # (\inst3|Cpte\(1))))) # (\inst3|Cpte\(2) & 
-- (!\inst3|Cpte\(1) $ (((!\inst3|Cpte\(4) & \inst3|Cpte\(3)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000010011110001111101000100000010001011111000111100100001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Cpte\(4),
	datab => \inst3|ALT_INV_Cpte\(2),
	datac => \inst3|ALT_INV_Cpte\(1),
	datad => \inst3|ALT_INV_Cpte\(3),
	datae => \inst3|ALT_INV_Cpte[6]~DUPLICATE_q\,
	dataf => \inst3|ALT_INV_Cpte[5]~DUPLICATE_q\,
	combout => \inst|Mux15~5_combout\);

-- Location: LABCELL_X16_Y75_N21
\inst|Mux15~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux15~6_combout\ = ( \inst|Mux15~5_combout\ & ( (!\inst3|Cpte[0]~DUPLICATE_q\ & \inst|Mux15~4_combout\) ) ) # ( !\inst|Mux15~5_combout\ & ( (\inst|Mux15~4_combout\) # (\inst3|Cpte[0]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111100000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst3|ALT_INV_Cpte[0]~DUPLICATE_q\,
	datad => \inst|ALT_INV_Mux15~4_combout\,
	dataf => \inst|ALT_INV_Mux15~5_combout\,
	combout => \inst|Mux15~6_combout\);

-- Location: LABCELL_X16_Y75_N18
\inst|Mux15~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux15~1_combout\ = ( \inst3|Cpte\(5) & ( (!\inst3|Cpte[3]~DUPLICATE_q\ & (!\inst3|Cpte[4]~DUPLICATE_q\ $ (((!\inst3|Cpte\(2)) # (!\inst3|Cpte\(6)))))) # (\inst3|Cpte[3]~DUPLICATE_q\ & ((!\inst3|Cpte\(2) & (!\inst3|Cpte[4]~DUPLICATE_q\ & 
-- !\inst3|Cpte\(6))) # (\inst3|Cpte\(2) & (\inst3|Cpte[4]~DUPLICATE_q\ & \inst3|Cpte\(6))))) ) ) # ( !\inst3|Cpte\(5) & ( (!\inst3|Cpte[3]~DUPLICATE_q\ & (!\inst3|Cpte\(2) $ (((!\inst3|Cpte[4]~DUPLICATE_q\ & !\inst3|Cpte\(6)))))) # 
-- (\inst3|Cpte[3]~DUPLICATE_q\ & ((!\inst3|Cpte\(2) & (\inst3|Cpte[4]~DUPLICATE_q\ & \inst3|Cpte\(6))) # (\inst3|Cpte\(2) & (!\inst3|Cpte[4]~DUPLICATE_q\ $ (!\inst3|Cpte\(6)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010100110011100001010011001110001001010001010010100101000101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Cpte[3]~DUPLICATE_q\,
	datab => \inst3|ALT_INV_Cpte\(2),
	datac => \inst3|ALT_INV_Cpte[4]~DUPLICATE_q\,
	datad => \inst3|ALT_INV_Cpte\(6),
	dataf => \inst3|ALT_INV_Cpte\(5),
	combout => \inst|Mux15~1_combout\);

-- Location: LABCELL_X16_Y75_N33
\inst|Mux15~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux15~3_combout\ = ( \inst|Mux15~1_combout\ & ( (!\inst3|Cpte\(7) & ((!\inst|Mux15~6_combout\) # ((!\inst3|Cpte\(0) & !\inst3|Cpte\(1))))) # (\inst3|Cpte\(7) & (((\inst|Mux15~6_combout\)))) ) ) # ( !\inst|Mux15~1_combout\ & ( (!\inst3|Cpte\(7) & 
-- (!\inst|Mux15~6_combout\ & ((\inst3|Cpte\(1)) # (\inst3|Cpte\(0))))) # (\inst3|Cpte\(7) & (((\inst|Mux15~6_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000000001111011100000000111111110000100011111111000010001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Cpte\(0),
	datab => \inst3|ALT_INV_Cpte\(1),
	datac => \inst3|ALT_INV_Cpte\(7),
	datad => \inst|ALT_INV_Mux15~6_combout\,
	dataf => \inst|ALT_INV_Mux15~1_combout\,
	combout => \inst|Mux15~3_combout\);

-- Location: LABCELL_X17_Y75_N42
\inst|Mux15~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux15~2_combout\ = ( \inst|Mux22~0_combout\ & ( \inst|Mux15~3_combout\ & ( (!\inst3|Cpts[9]~2_combout\ & (((!\inst3|Cpts[8]~6_combout\) # (\inst3|Cpte[7]~DUPLICATE_q\)))) # (\inst3|Cpts[9]~2_combout\ & (\inst|Mux2~0_combout\ & 
-- (!\inst3|Cpts[8]~6_combout\ & \inst3|Cpte[7]~DUPLICATE_q\))) ) ) ) # ( !\inst|Mux22~0_combout\ & ( \inst|Mux15~3_combout\ & ( (!\inst3|Cpts[9]~2_combout\ & ((!\inst3|Cpts[8]~6_combout\) # (\inst3|Cpte[7]~DUPLICATE_q\))) ) ) ) # ( \inst|Mux22~0_combout\ & 
-- ( !\inst|Mux15~3_combout\ & ( (\inst3|Cpte[7]~DUPLICATE_q\ & ((!\inst3|Cpts[8]~6_combout\ & ((\inst|Mux2~0_combout\))) # (\inst3|Cpts[8]~6_combout\ & (!\inst3|Cpts[9]~2_combout\)))) ) ) ) # ( !\inst|Mux22~0_combout\ & ( !\inst|Mux15~3_combout\ & ( 
-- (!\inst3|Cpts[9]~2_combout\ & (\inst3|Cpts[8]~6_combout\ & \inst3|Cpte[7]~DUPLICATE_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010000000000011101010100000101010101010000010111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Cpts[9]~2_combout\,
	datab => \inst|ALT_INV_Mux2~0_combout\,
	datac => \inst3|ALT_INV_Cpts[8]~6_combout\,
	datad => \inst3|ALT_INV_Cpte[7]~DUPLICATE_q\,
	datae => \inst|ALT_INV_Mux22~0_combout\,
	dataf => \inst|ALT_INV_Mux15~3_combout\,
	combout => \inst|Mux15~2_combout\);

-- Location: FF_X17_Y75_N44
\inst|Q[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst23|CLKs~combout\,
	d => \inst|Mux15~2_combout\,
	clrn => \inst30|Reset_n_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Q\(16));

-- Location: FF_X18_Y75_N50
\inst22|DtR[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst26|CLKs~combout\,
	asdata => \inst|Q\(16),
	sload => VCC,
	ena => \inst22|DtR[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst22|DtR\(16));

-- Location: LABCELL_X18_Y75_N51
\inst22|S~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst22|S~15_combout\ = ( \inst22|DtR\(28) & ( \inst22|DtR\(16) & ( (!\inst22|Cpte[2]~DUPLICATE_q\ & (((!\inst22|Cpte[3]~DUPLICATE_q\) # (\inst22|DtR\(20))))) # (\inst22|Cpte[2]~DUPLICATE_q\ & (((\inst22|Cpte[3]~DUPLICATE_q\)) # (\inst22|DtR\(24)))) ) ) ) 
-- # ( !\inst22|DtR\(28) & ( \inst22|DtR\(16) & ( (!\inst22|Cpte[2]~DUPLICATE_q\ & (((\inst22|DtR\(20) & \inst22|Cpte[3]~DUPLICATE_q\)))) # (\inst22|Cpte[2]~DUPLICATE_q\ & (((\inst22|Cpte[3]~DUPLICATE_q\)) # (\inst22|DtR\(24)))) ) ) ) # ( \inst22|DtR\(28) & 
-- ( !\inst22|DtR\(16) & ( (!\inst22|Cpte[2]~DUPLICATE_q\ & (((!\inst22|Cpte[3]~DUPLICATE_q\) # (\inst22|DtR\(20))))) # (\inst22|Cpte[2]~DUPLICATE_q\ & (\inst22|DtR\(24) & ((!\inst22|Cpte[3]~DUPLICATE_q\)))) ) ) ) # ( !\inst22|DtR\(28) & ( !\inst22|DtR\(16) 
-- & ( (!\inst22|Cpte[2]~DUPLICATE_q\ & (((\inst22|DtR\(20) & \inst22|Cpte[3]~DUPLICATE_q\)))) # (\inst22|Cpte[2]~DUPLICATE_q\ & (\inst22|DtR\(24) & ((!\inst22|Cpte[3]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100001010101110110000101000010001010111111011101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|ALT_INV_Cpte[2]~DUPLICATE_q\,
	datab => \inst22|ALT_INV_DtR\(24),
	datac => \inst22|ALT_INV_DtR\(20),
	datad => \inst22|ALT_INV_Cpte[3]~DUPLICATE_q\,
	datae => \inst22|ALT_INV_DtR\(28),
	dataf => \inst22|ALT_INV_DtR\(16),
	combout => \inst22|S~15_combout\);

-- Location: LABCELL_X18_Y75_N6
\inst22|S~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst22|S~19_combout\ = ( \inst22|S~16_combout\ & ( \inst22|S~15_combout\ & ( ((!\inst22|Cpte\(0) & ((\inst22|S~18_combout\))) # (\inst22|Cpte\(0) & (\inst22|S~17_combout\))) # (\inst22|Cpte[1]~DUPLICATE_q\) ) ) ) # ( !\inst22|S~16_combout\ & ( 
-- \inst22|S~15_combout\ & ( (!\inst22|Cpte[1]~DUPLICATE_q\ & ((!\inst22|Cpte\(0) & ((\inst22|S~18_combout\))) # (\inst22|Cpte\(0) & (\inst22|S~17_combout\)))) # (\inst22|Cpte[1]~DUPLICATE_q\ & (\inst22|Cpte\(0))) ) ) ) # ( \inst22|S~16_combout\ & ( 
-- !\inst22|S~15_combout\ & ( (!\inst22|Cpte[1]~DUPLICATE_q\ & ((!\inst22|Cpte\(0) & ((\inst22|S~18_combout\))) # (\inst22|Cpte\(0) & (\inst22|S~17_combout\)))) # (\inst22|Cpte[1]~DUPLICATE_q\ & (!\inst22|Cpte\(0))) ) ) ) # ( !\inst22|S~16_combout\ & ( 
-- !\inst22|S~15_combout\ & ( (!\inst22|Cpte[1]~DUPLICATE_q\ & ((!\inst22|Cpte\(0) & ((\inst22|S~18_combout\))) # (\inst22|Cpte\(0) & (\inst22|S~17_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010010001101100111000010011100110110101011111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|ALT_INV_Cpte[1]~DUPLICATE_q\,
	datab => \inst22|ALT_INV_Cpte\(0),
	datac => \inst22|ALT_INV_S~17_combout\,
	datad => \inst22|ALT_INV_S~18_combout\,
	datae => \inst22|ALT_INV_S~16_combout\,
	dataf => \inst22|ALT_INV_S~15_combout\,
	combout => \inst22|S~19_combout\);

-- Location: FF_X19_Y76_N7
\inst22|DtL[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst26|CLKs~combout\,
	asdata => \inst|Q\(24),
	sload => VCC,
	ena => \inst22|DtL[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst22|DtL\(24));

-- Location: FF_X18_Y77_N20
\inst22|DtL[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst26|CLKs~combout\,
	asdata => \inst|Q\(16),
	sload => VCC,
	ena => \inst22|DtL[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst22|DtL\(16));

-- Location: FF_X17_Y75_N40
\inst22|DtL[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst26|CLKs~combout\,
	asdata => \inst|Q\(20),
	sload => VCC,
	ena => \inst22|DtL[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst22|DtL\(20));

-- Location: FF_X18_Y77_N44
\inst22|DtL[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst26|CLKs~combout\,
	asdata => \inst|Q\(28),
	sload => VCC,
	ena => \inst22|DtL[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst22|DtL\(28));

-- Location: LABCELL_X18_Y77_N42
\inst22|S~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst22|S~10_combout\ = ( \inst22|DtL\(28) & ( \inst22|Cpte\(2) & ( (!\inst22|Cpte[3]~DUPLICATE_q\ & (\inst22|DtL\(24))) # (\inst22|Cpte[3]~DUPLICATE_q\ & ((\inst22|DtL\(16)))) ) ) ) # ( !\inst22|DtL\(28) & ( \inst22|Cpte\(2) & ( 
-- (!\inst22|Cpte[3]~DUPLICATE_q\ & (\inst22|DtL\(24))) # (\inst22|Cpte[3]~DUPLICATE_q\ & ((\inst22|DtL\(16)))) ) ) ) # ( \inst22|DtL\(28) & ( !\inst22|Cpte\(2) & ( (!\inst22|Cpte[3]~DUPLICATE_q\) # (\inst22|DtL\(20)) ) ) ) # ( !\inst22|DtL\(28) & ( 
-- !\inst22|Cpte\(2) & ( (\inst22|Cpte[3]~DUPLICATE_q\ & \inst22|DtL\(20)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101101010101111111100100111001001110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|ALT_INV_Cpte[3]~DUPLICATE_q\,
	datab => \inst22|ALT_INV_DtL\(24),
	datac => \inst22|ALT_INV_DtL\(16),
	datad => \inst22|ALT_INV_DtL\(20),
	datae => \inst22|ALT_INV_DtL\(28),
	dataf => \inst22|ALT_INV_Cpte\(2),
	combout => \inst22|S~10_combout\);

-- Location: FF_X19_Y76_N16
\inst22|DtL[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst26|CLKs~combout\,
	asdata => \inst|Q\(25),
	sload => VCC,
	ena => \inst22|DtL[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst22|DtL\(25));

-- Location: FF_X18_Y77_N23
\inst22|DtL[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst26|CLKs~combout\,
	asdata => \inst|Q\(29),
	sload => VCC,
	ena => \inst22|DtL[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst22|DtL\(29));

-- Location: FF_X17_Y77_N58
\inst22|DtL[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst26|CLKs~combout\,
	asdata => \inst|Q\(17),
	sload => VCC,
	ena => \inst22|DtL[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst22|DtL\(17));

-- Location: FF_X18_Y77_N46
\inst22|DtL[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst26|CLKs~combout\,
	asdata => \inst|Q\(21),
	sload => VCC,
	ena => \inst22|DtL[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst22|DtL\(21));

-- Location: LABCELL_X18_Y77_N24
\inst22|S~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst22|S~11_combout\ = ( \inst22|DtL\(17) & ( \inst22|DtL\(21) & ( ((!\inst22|Cpte\(2) & ((\inst22|DtL\(29)))) # (\inst22|Cpte\(2) & (\inst22|DtL\(25)))) # (\inst22|Cpte\(3)) ) ) ) # ( !\inst22|DtL\(17) & ( \inst22|DtL\(21) & ( (!\inst22|Cpte\(2) & 
-- (((\inst22|Cpte\(3)) # (\inst22|DtL\(29))))) # (\inst22|Cpte\(2) & (\inst22|DtL\(25) & ((!\inst22|Cpte\(3))))) ) ) ) # ( \inst22|DtL\(17) & ( !\inst22|DtL\(21) & ( (!\inst22|Cpte\(2) & (((\inst22|DtL\(29) & !\inst22|Cpte\(3))))) # (\inst22|Cpte\(2) & 
-- (((\inst22|Cpte\(3))) # (\inst22|DtL\(25)))) ) ) ) # ( !\inst22|DtL\(17) & ( !\inst22|DtL\(21) & ( (!\inst22|Cpte\(3) & ((!\inst22|Cpte\(2) & ((\inst22|DtL\(29)))) # (\inst22|Cpte\(2) & (\inst22|DtL\(25))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100000000000111010011001100011101110011000001110111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|ALT_INV_DtL\(25),
	datab => \inst22|ALT_INV_Cpte\(2),
	datac => \inst22|ALT_INV_DtL\(29),
	datad => \inst22|ALT_INV_Cpte\(3),
	datae => \inst22|ALT_INV_DtL\(17),
	dataf => \inst22|ALT_INV_DtL\(21),
	combout => \inst22|S~11_combout\);

-- Location: FF_X18_Y75_N28
\inst22|DtL[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst26|CLKs~combout\,
	asdata => \inst|Q\(26),
	sload => VCC,
	ena => \inst22|DtL[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst22|DtL\(26));

-- Location: FF_X18_Y77_N59
\inst22|DtL[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst26|CLKs~combout\,
	asdata => \inst|Q\(22),
	sload => VCC,
	ena => \inst22|DtL[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst22|DtL\(22));

-- Location: FF_X18_Y77_N31
\inst22|DtL[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst26|CLKs~combout\,
	asdata => \inst|Q\(30),
	sload => VCC,
	ena => \inst22|DtL[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst22|DtL\(30));

-- Location: FF_X18_Y74_N22
\inst22|DtL[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst26|CLKs~combout\,
	asdata => \inst|Q\(18),
	sload => VCC,
	ena => \inst22|DtL[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst22|DtL\(18));

-- Location: LABCELL_X18_Y77_N54
\inst22|S~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst22|S~12_combout\ = ( \inst22|DtL\(18) & ( \inst22|Cpte\(3) & ( (\inst22|Cpte\(2)) # (\inst22|DtL\(22)) ) ) ) # ( !\inst22|DtL\(18) & ( \inst22|Cpte\(3) & ( (\inst22|DtL\(22) & !\inst22|Cpte\(2)) ) ) ) # ( \inst22|DtL\(18) & ( !\inst22|Cpte\(3) & ( 
-- (!\inst22|Cpte\(2) & ((\inst22|DtL\(30)))) # (\inst22|Cpte\(2) & (\inst22|DtL\(26))) ) ) ) # ( !\inst22|DtL\(18) & ( !\inst22|Cpte\(3) & ( (!\inst22|Cpte\(2) & ((\inst22|DtL\(30)))) # (\inst22|Cpte\(2) & (\inst22|DtL\(26))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000011110101010100110011000000000011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|ALT_INV_DtL\(26),
	datab => \inst22|ALT_INV_DtL\(22),
	datac => \inst22|ALT_INV_DtL\(30),
	datad => \inst22|ALT_INV_Cpte\(2),
	datae => \inst22|ALT_INV_DtL\(18),
	dataf => \inst22|ALT_INV_Cpte\(3),
	combout => \inst22|S~12_combout\);

-- Location: FF_X17_Y75_N16
\inst22|DtL[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst26|CLKs~combout\,
	asdata => \inst|Q\(23),
	sload => VCC,
	ena => \inst22|DtL[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst22|DtL\(23));

-- Location: FF_X18_Y77_N29
\inst22|DtL[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst26|CLKs~combout\,
	asdata => \inst|Q\(27),
	sload => VCC,
	ena => \inst22|DtL[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst22|DtL\(27));

-- Location: FF_X18_Y74_N41
\inst22|DtL[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst26|CLKs~combout\,
	asdata => \inst|Q\(19),
	sload => VCC,
	ena => \inst22|DtL[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst22|DtL\(19));

-- Location: FF_X17_Y77_N25
\inst22|DtL[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst26|CLKs~combout\,
	asdata => \inst|Q\(31),
	sload => VCC,
	ena => \inst22|DtL[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst22|DtL\(31));

-- Location: LABCELL_X17_Y77_N54
\inst22|S~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst22|S~13_combout\ = ( \inst22|DtL\(19) & ( \inst22|DtL\(31) & ( (!\inst22|Cpte\(3) & ((!\inst22|Cpte\(2)) # ((\inst22|DtL\(27))))) # (\inst22|Cpte\(3) & (((\inst22|DtL\(23))) # (\inst22|Cpte\(2)))) ) ) ) # ( !\inst22|DtL\(19) & ( \inst22|DtL\(31) & ( 
-- (!\inst22|Cpte\(3) & ((!\inst22|Cpte\(2)) # ((\inst22|DtL\(27))))) # (\inst22|Cpte\(3) & (!\inst22|Cpte\(2) & (\inst22|DtL\(23)))) ) ) ) # ( \inst22|DtL\(19) & ( !\inst22|DtL\(31) & ( (!\inst22|Cpte\(3) & (\inst22|Cpte\(2) & ((\inst22|DtL\(27))))) # 
-- (\inst22|Cpte\(3) & (((\inst22|DtL\(23))) # (\inst22|Cpte\(2)))) ) ) ) # ( !\inst22|DtL\(19) & ( !\inst22|DtL\(31) & ( (!\inst22|Cpte\(3) & (\inst22|Cpte\(2) & ((\inst22|DtL\(27))))) # (\inst22|Cpte\(3) & (!\inst22|Cpte\(2) & (\inst22|DtL\(23)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000100110000101010011011110001100101011101001110110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|ALT_INV_Cpte\(3),
	datab => \inst22|ALT_INV_Cpte\(2),
	datac => \inst22|ALT_INV_DtL\(23),
	datad => \inst22|ALT_INV_DtL\(27),
	datae => \inst22|ALT_INV_DtL\(19),
	dataf => \inst22|ALT_INV_DtL\(31),
	combout => \inst22|S~13_combout\);

-- Location: LABCELL_X18_Y77_N18
\inst22|S~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst22|S~14_combout\ = ( \inst22|S~12_combout\ & ( \inst22|S~13_combout\ & ( (!\inst22|Cpte\(1)) # ((!\inst22|Cpte\(0) & ((\inst22|S~11_combout\))) # (\inst22|Cpte\(0) & (\inst22|S~10_combout\))) ) ) ) # ( !\inst22|S~12_combout\ & ( \inst22|S~13_combout\ 
-- & ( (!\inst22|Cpte\(1) & (((!\inst22|Cpte\(0))))) # (\inst22|Cpte\(1) & ((!\inst22|Cpte\(0) & ((\inst22|S~11_combout\))) # (\inst22|Cpte\(0) & (\inst22|S~10_combout\)))) ) ) ) # ( \inst22|S~12_combout\ & ( !\inst22|S~13_combout\ & ( (!\inst22|Cpte\(1) & 
-- (((\inst22|Cpte\(0))))) # (\inst22|Cpte\(1) & ((!\inst22|Cpte\(0) & ((\inst22|S~11_combout\))) # (\inst22|Cpte\(0) & (\inst22|S~10_combout\)))) ) ) ) # ( !\inst22|S~12_combout\ & ( !\inst22|S~13_combout\ & ( (\inst22|Cpte\(1) & ((!\inst22|Cpte\(0) & 
-- ((\inst22|S~11_combout\))) # (\inst22|Cpte\(0) & (\inst22|S~10_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100010001000001011011101110101111000100011010111110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|ALT_INV_Cpte\(1),
	datab => \inst22|ALT_INV_S~10_combout\,
	datac => \inst22|ALT_INV_S~11_combout\,
	datad => \inst22|ALT_INV_Cpte\(0),
	datae => \inst22|ALT_INV_S~12_combout\,
	dataf => \inst22|ALT_INV_S~13_combout\,
	combout => \inst22|S~14_combout\);

-- Location: LABCELL_X18_Y77_N36
\inst22|Selector0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst22|Selector0~4_combout\ = ( \inst22|S~19_combout\ & ( \inst22|S~14_combout\ & ( (\inst22|State.SendR~q\) # (\inst22|State.SendL~q\) ) ) ) # ( !\inst22|S~19_combout\ & ( \inst22|S~14_combout\ & ( \inst22|State.SendL~q\ ) ) ) # ( \inst22|S~19_combout\ 
-- & ( !\inst22|S~14_combout\ & ( \inst22|State.SendR~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100110011001100110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst22|ALT_INV_State.SendL~q\,
	datad => \inst22|ALT_INV_State.SendR~q\,
	datae => \inst22|ALT_INV_S~19_combout\,
	dataf => \inst22|ALT_INV_S~14_combout\,
	combout => \inst22|Selector0~4_combout\);

-- Location: LABCELL_X19_Y74_N0
\inst|Mux16~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux16~4_combout\ = ( \inst3|Cpte\(2) & ( \inst3|Cpte\(1) & ( (!\inst3|Cpte\(4) & (!\inst3|Cpte\(5) $ (((!\inst3|Cpte[6]~DUPLICATE_q\) # (\inst3|Cpte[3]~DUPLICATE_q\))))) # (\inst3|Cpte\(4) & ((!\inst3|Cpte\(5) & (!\inst3|Cpte[6]~DUPLICATE_q\)) # 
-- (\inst3|Cpte\(5) & ((!\inst3|Cpte[3]~DUPLICATE_q\))))) ) ) ) # ( !\inst3|Cpte\(2) & ( \inst3|Cpte\(1) & ( (!\inst3|Cpte[6]~DUPLICATE_q\ & ((!\inst3|Cpte\(5)) # ((\inst3|Cpte[3]~DUPLICATE_q\ & \inst3|Cpte\(4))))) # (\inst3|Cpte[6]~DUPLICATE_q\ & 
-- (\inst3|Cpte\(4) & (!\inst3|Cpte[3]~DUPLICATE_q\ $ (!\inst3|Cpte\(5))))) ) ) ) # ( \inst3|Cpte\(2) & ( !\inst3|Cpte\(1) & ( (!\inst3|Cpte[6]~DUPLICATE_q\ & (!\inst3|Cpte\(4) & (!\inst3|Cpte[3]~DUPLICATE_q\ $ (!\inst3|Cpte\(5))))) # 
-- (\inst3|Cpte[6]~DUPLICATE_q\ & (((!\inst3|Cpte[3]~DUPLICATE_q\ & !\inst3|Cpte\(4))) # (\inst3|Cpte\(5)))) ) ) ) # ( !\inst3|Cpte\(2) & ( !\inst3|Cpte\(1) & ( (!\inst3|Cpte\(4) & ((!\inst3|Cpte\(5) & ((\inst3|Cpte[3]~DUPLICATE_q\))) # (\inst3|Cpte\(5) & 
-- (\inst3|Cpte[6]~DUPLICATE_q\)))) # (\inst3|Cpte\(4) & (!\inst3|Cpte\(5) $ (((!\inst3|Cpte[6]~DUPLICATE_q\ & \inst3|Cpte[3]~DUPLICATE_q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010111010010011011010000010110100000101101100100101110101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Cpte[6]~DUPLICATE_q\,
	datab => \inst3|ALT_INV_Cpte[3]~DUPLICATE_q\,
	datac => \inst3|ALT_INV_Cpte\(5),
	datad => \inst3|ALT_INV_Cpte\(4),
	datae => \inst3|ALT_INV_Cpte\(2),
	dataf => \inst3|ALT_INV_Cpte\(1),
	combout => \inst|Mux16~4_combout\);

-- Location: LABCELL_X18_Y74_N18
\inst|Mux16~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux16~3_combout\ = ( \inst3|Cpte\(4) & ( \inst3|Cpte\(3) & ( (!\inst3|Cpte\(5) & (\inst3|Cpte\(6) & ((\inst3|Cpte\(2))))) # (\inst3|Cpte\(5) & ((!\inst3|Cpte[1]~DUPLICATE_q\ & (!\inst3|Cpte\(6))) # (\inst3|Cpte[1]~DUPLICATE_q\ & 
-- ((!\inst3|Cpte\(2)))))) ) ) ) # ( \inst3|Cpte\(4) & ( !\inst3|Cpte\(3) & ( (!\inst3|Cpte[1]~DUPLICATE_q\ & (((\inst3|Cpte\(2) & \inst3|Cpte\(5))))) # (\inst3|Cpte[1]~DUPLICATE_q\ & (!\inst3|Cpte\(5) $ (((\inst3|Cpte\(6) & !\inst3|Cpte\(2)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000110001110000000000000000000000010110111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Cpte\(6),
	datab => \inst3|ALT_INV_Cpte[1]~DUPLICATE_q\,
	datac => \inst3|ALT_INV_Cpte\(2),
	datad => \inst3|ALT_INV_Cpte\(5),
	datae => \inst3|ALT_INV_Cpte\(4),
	dataf => \inst3|ALT_INV_Cpte\(3),
	combout => \inst|Mux16~3_combout\);

-- Location: LABCELL_X18_Y74_N48
\inst|Mux16~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux16~5_combout\ = ( \inst|Mux16~3_combout\ & ( (\inst3|Cpte[0]~DUPLICATE_q\ & \inst|Mux16~4_combout\) ) ) # ( !\inst|Mux16~3_combout\ & ( (!\inst3|Cpte[0]~DUPLICATE_q\) # (\inst|Mux16~4_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011111111111100001111111100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst3|ALT_INV_Cpte[0]~DUPLICATE_q\,
	datad => \inst|ALT_INV_Mux16~4_combout\,
	dataf => \inst|ALT_INV_Mux16~3_combout\,
	combout => \inst|Mux16~5_combout\);

-- Location: LABCELL_X16_Y78_N27
\inst|Mux16~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux16~0_combout\ = ( \inst3|Cpte\(2) & ( !\inst3|Cpte[5]~DUPLICATE_q\ $ (((!\inst3|Cpte\(3) & (!\inst3|Cpte\(1) & !\inst3|Cpte[6]~DUPLICATE_q\)) # (\inst3|Cpte\(3) & (\inst3|Cpte\(1) & \inst3|Cpte[6]~DUPLICATE_q\)))) ) ) # ( !\inst3|Cpte\(2) & ( 
-- (!\inst3|Cpte\(1) & (!\inst3|Cpte\(3) $ (((!\inst3|Cpte[5]~DUPLICATE_q\ & \inst3|Cpte[6]~DUPLICATE_q\))))) # (\inst3|Cpte\(1) & (\inst3|Cpte[5]~DUPLICATE_q\ & ((!\inst3|Cpte[6]~DUPLICATE_q\) # (\inst3|Cpte\(3))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100010101100001110001010110000101101010101010010110101010101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Cpte[5]~DUPLICATE_q\,
	datab => \inst3|ALT_INV_Cpte\(3),
	datac => \inst3|ALT_INV_Cpte\(1),
	datad => \inst3|ALT_INV_Cpte[6]~DUPLICATE_q\,
	dataf => \inst3|ALT_INV_Cpte\(2),
	combout => \inst|Mux16~0_combout\);

-- Location: LABCELL_X16_Y74_N48
\inst|Mux16~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux16~7_combout\ = ( \inst3|Cpte\(2) & ( \inst3|Cpte\(4) & ( (!\inst3|Cpte\(1) & (((\inst3|Cpte\(5) & \inst3|Cpte[6]~DUPLICATE_q\)))) # (\inst3|Cpte\(1) & ((!\inst3|Cpte\(5) & ((!\inst3|Cpte[6]~DUPLICATE_q\))) # (\inst3|Cpte\(5) & 
-- (!\inst3|Cpte[3]~DUPLICATE_q\)))) ) ) ) # ( !\inst3|Cpte\(2) & ( \inst3|Cpte\(4) & ( (!\inst3|Cpte[3]~DUPLICATE_q\ & (!\inst3|Cpte\(5) $ (((\inst3|Cpte\(1) & \inst3|Cpte[6]~DUPLICATE_q\))))) # (\inst3|Cpte[3]~DUPLICATE_q\ & ((!\inst3|Cpte\(5) & 
-- ((\inst3|Cpte[6]~DUPLICATE_q\) # (\inst3|Cpte\(1)))) # (\inst3|Cpte\(5) & ((!\inst3|Cpte[6]~DUPLICATE_q\))))) ) ) ) # ( \inst3|Cpte\(2) & ( !\inst3|Cpte\(4) & ( (!\inst3|Cpte[3]~DUPLICATE_q\ & ((!\inst3|Cpte\(5) & ((\inst3|Cpte[6]~DUPLICATE_q\))) # 
-- (\inst3|Cpte\(5) & ((!\inst3|Cpte\(1)) # (!\inst3|Cpte[6]~DUPLICATE_q\))))) # (\inst3|Cpte[3]~DUPLICATE_q\ & (!\inst3|Cpte\(5) $ (((\inst3|Cpte[6]~DUPLICATE_q\) # (\inst3|Cpte\(1)))))) ) ) ) # ( !\inst3|Cpte\(2) & ( !\inst3|Cpte\(4) & ( (!\inst3|Cpte\(1) 
-- & ((!\inst3|Cpte\(5) & (\inst3|Cpte[3]~DUPLICATE_q\)) # (\inst3|Cpte\(5) & ((\inst3|Cpte[6]~DUPLICATE_q\))))) # (\inst3|Cpte\(1) & (((!\inst3|Cpte\(5) & !\inst3|Cpte[6]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000001001100010010111010110110110101110100100011001000001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Cpte[3]~DUPLICATE_q\,
	datab => \inst3|ALT_INV_Cpte\(1),
	datac => \inst3|ALT_INV_Cpte\(5),
	datad => \inst3|ALT_INV_Cpte[6]~DUPLICATE_q\,
	datae => \inst3|ALT_INV_Cpte\(2),
	dataf => \inst3|ALT_INV_Cpte\(4),
	combout => \inst|Mux16~7_combout\);

-- Location: LABCELL_X17_Y74_N30
\inst|Mux16~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux16~6_combout\ = ( \inst3|Cpte\(2) & ( \inst3|Cpte[5]~DUPLICATE_q\ & ( (!\inst3|Cpte[3]~DUPLICATE_q\ & (!\inst3|Cpte\(1) & ((!\inst3|Cpte[6]~DUPLICATE_q\) # (\inst3|Cpte\(4))))) # (\inst3|Cpte[3]~DUPLICATE_q\ & ((!\inst3|Cpte[6]~DUPLICATE_q\ & 
-- (!\inst3|Cpte\(1) & \inst3|Cpte\(4))) # (\inst3|Cpte[6]~DUPLICATE_q\ & (\inst3|Cpte\(1) & !\inst3|Cpte\(4))))) ) ) ) # ( !\inst3|Cpte\(2) & ( \inst3|Cpte[5]~DUPLICATE_q\ & ( (!\inst3|Cpte[3]~DUPLICATE_q\ & (!\inst3|Cpte\(4) $ 
-- (((\inst3|Cpte[6]~DUPLICATE_q\ & \inst3|Cpte\(1)))))) # (\inst3|Cpte[3]~DUPLICATE_q\ & (((!\inst3|Cpte[6]~DUPLICATE_q\ & \inst3|Cpte\(4))) # (\inst3|Cpte\(1)))) ) ) ) # ( \inst3|Cpte\(2) & ( !\inst3|Cpte[5]~DUPLICATE_q\ & ( (!\inst3|Cpte[3]~DUPLICATE_q\ & 
-- (((\inst3|Cpte[6]~DUPLICATE_q\ & !\inst3|Cpte\(4))) # (\inst3|Cpte\(1)))) # (\inst3|Cpte[3]~DUPLICATE_q\ & ((!\inst3|Cpte[6]~DUPLICATE_q\ & ((!\inst3|Cpte\(4)))) # (\inst3|Cpte[6]~DUPLICATE_q\ & ((!\inst3|Cpte\(1)) # (\inst3|Cpte\(4)))))) ) ) ) # ( 
-- !\inst3|Cpte\(2) & ( !\inst3|Cpte[5]~DUPLICATE_q\ & ( (!\inst3|Cpte[3]~DUPLICATE_q\ & (!\inst3|Cpte[6]~DUPLICATE_q\ & (\inst3|Cpte\(1) & \inst3|Cpte\(4)))) # (\inst3|Cpte[3]~DUPLICATE_q\ & (\inst3|Cpte[6]~DUPLICATE_q\ & (!\inst3|Cpte\(1) & 
-- !\inst3|Cpte\(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000001000011111100001101110101101010001111000000111100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Cpte[3]~DUPLICATE_q\,
	datab => \inst3|ALT_INV_Cpte[6]~DUPLICATE_q\,
	datac => \inst3|ALT_INV_Cpte\(1),
	datad => \inst3|ALT_INV_Cpte\(4),
	datae => \inst3|ALT_INV_Cpte\(2),
	dataf => \inst3|ALT_INV_Cpte[5]~DUPLICATE_q\,
	combout => \inst|Mux16~6_combout\);

-- Location: LABCELL_X18_Y74_N51
\inst|Mux16~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux16~8_combout\ = ( \inst|Mux16~6_combout\ & ( (!\inst3|Cpte[0]~DUPLICATE_q\) # (!\inst|Mux16~7_combout\) ) ) # ( !\inst|Mux16~6_combout\ & ( (\inst3|Cpte[0]~DUPLICATE_q\ & !\inst|Mux16~7_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000011111010111110101111101011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Cpte[0]~DUPLICATE_q\,
	datac => \inst|ALT_INV_Mux16~7_combout\,
	dataf => \inst|ALT_INV_Mux16~6_combout\,
	combout => \inst|Mux16~8_combout\);

-- Location: LABCELL_X18_Y74_N36
\inst|Mux16~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux16~2_combout\ = ( \inst|Mux16~0_combout\ & ( \inst|Mux16~8_combout\ & ( ((\inst|Mux16~5_combout\ & ((\inst3|Cpte\(4)) # (\inst3|Cpte[0]~DUPLICATE_q\)))) # (\inst3|Cpte\(7)) ) ) ) # ( !\inst|Mux16~0_combout\ & ( \inst|Mux16~8_combout\ & ( 
-- (\inst3|Cpte\(7)) # (\inst|Mux16~5_combout\) ) ) ) # ( \inst|Mux16~0_combout\ & ( !\inst|Mux16~8_combout\ & ( (\inst|Mux16~5_combout\ & (!\inst3|Cpte\(7) & ((\inst3|Cpte\(4)) # (\inst3|Cpte[0]~DUPLICATE_q\)))) ) ) ) # ( !\inst|Mux16~0_combout\ & ( 
-- !\inst|Mux16~8_combout\ & ( (\inst|Mux16~5_combout\ & !\inst3|Cpte\(7)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000001110000000000001111111111110000011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Cpte[0]~DUPLICATE_q\,
	datab => \inst3|ALT_INV_Cpte\(4),
	datac => \inst|ALT_INV_Mux16~5_combout\,
	datad => \inst3|ALT_INV_Cpte\(7),
	datae => \inst|ALT_INV_Mux16~0_combout\,
	dataf => \inst|ALT_INV_Mux16~8_combout\,
	combout => \inst|Mux16~2_combout\);

-- Location: LABCELL_X18_Y74_N24
\inst|Mux16~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux16~1_combout\ = ( \inst|Mux22~0_combout\ & ( \inst|Mux16~2_combout\ & ( (!\inst3|Cpts[8]~6_combout\ & ((!\inst3|Cpts[9]~2_combout\) # ((\inst3|Cpte[7]~DUPLICATE_q\ & \inst|Mux2~1_combout\)))) # (\inst3|Cpts[8]~6_combout\ & 
-- (!\inst3|Cpts[9]~2_combout\ & (\inst3|Cpte[7]~DUPLICATE_q\))) ) ) ) # ( !\inst|Mux22~0_combout\ & ( \inst|Mux16~2_combout\ & ( (!\inst3|Cpts[9]~2_combout\ & ((!\inst3|Cpts[8]~6_combout\) # (\inst3|Cpte[7]~DUPLICATE_q\))) ) ) ) # ( \inst|Mux22~0_combout\ & 
-- ( !\inst|Mux16~2_combout\ & ( (\inst3|Cpte[7]~DUPLICATE_q\ & ((!\inst3|Cpts[8]~6_combout\ & (\inst3|Cpts[9]~2_combout\ & \inst|Mux2~1_combout\)) # (\inst3|Cpts[8]~6_combout\ & (!\inst3|Cpts[9]~2_combout\)))) ) ) ) # ( !\inst|Mux22~0_combout\ & ( 
-- !\inst|Mux16~2_combout\ & ( (\inst3|Cpts[8]~6_combout\ & (!\inst3|Cpts[9]~2_combout\ & \inst3|Cpte[7]~DUPLICATE_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000011010001100100011001000110010001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Cpts[8]~6_combout\,
	datab => \inst3|ALT_INV_Cpts[9]~2_combout\,
	datac => \inst3|ALT_INV_Cpte[7]~DUPLICATE_q\,
	datad => \inst|ALT_INV_Mux2~1_combout\,
	datae => \inst|ALT_INV_Mux22~0_combout\,
	dataf => \inst|ALT_INV_Mux16~2_combout\,
	combout => \inst|Mux16~1_combout\);

-- Location: FF_X18_Y74_N26
\inst|Q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst23|CLKs~combout\,
	d => \inst|Mux16~1_combout\,
	clrn => \inst30|Reset_n_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Q\(15));

-- Location: FF_X18_Y74_N20
\inst22|DtL[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst26|CLKs~combout\,
	asdata => \inst|Q\(15),
	sload => VCC,
	ena => \inst22|DtL[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst22|DtL\(15));

-- Location: LABCELL_X19_Y74_N6
\inst|Mux19~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux19~3_combout\ = ( \inst3|Cpte\(2) & ( \inst3|Cpte\(1) & ( (!\inst3|Cpte\(4) & ((!\inst3|Cpte[6]~DUPLICATE_q\ & (\inst3|Cpte\(5))) # (\inst3|Cpte[6]~DUPLICATE_q\ & ((\inst3|Cpte[3]~DUPLICATE_q\))))) # (\inst3|Cpte\(4) & 
-- ((!\inst3|Cpte[6]~DUPLICATE_q\ & ((\inst3|Cpte[3]~DUPLICATE_q\))) # (\inst3|Cpte[6]~DUPLICATE_q\ & (!\inst3|Cpte\(5) & !\inst3|Cpte[3]~DUPLICATE_q\)))) ) ) ) # ( !\inst3|Cpte\(2) & ( \inst3|Cpte\(1) & ( (!\inst3|Cpte\(4) & ((!\inst3|Cpte[6]~DUPLICATE_q\ & 
-- (\inst3|Cpte\(5) & \inst3|Cpte[3]~DUPLICATE_q\)) # (\inst3|Cpte[6]~DUPLICATE_q\ & ((!\inst3|Cpte[3]~DUPLICATE_q\))))) # (\inst3|Cpte\(4) & ((!\inst3|Cpte[6]~DUPLICATE_q\ & ((!\inst3|Cpte[3]~DUPLICATE_q\))) # (\inst3|Cpte[6]~DUPLICATE_q\ & 
-- (!\inst3|Cpte\(5))))) ) ) ) # ( \inst3|Cpte\(2) & ( !\inst3|Cpte\(1) & ( (!\inst3|Cpte\(5) & (((\inst3|Cpte\(4) & \inst3|Cpte[6]~DUPLICATE_q\)) # (\inst3|Cpte[3]~DUPLICATE_q\))) # (\inst3|Cpte\(5) & ((!\inst3|Cpte[3]~DUPLICATE_q\) # ((!\inst3|Cpte\(4) & 
-- !\inst3|Cpte[6]~DUPLICATE_q\)))) ) ) ) # ( !\inst3|Cpte\(2) & ( !\inst3|Cpte\(1) & ( (!\inst3|Cpte\(4) & (\inst3|Cpte\(5) & (\inst3|Cpte[6]~DUPLICATE_q\ & \inst3|Cpte[3]~DUPLICATE_q\))) # (\inst3|Cpte\(4) & ((!\inst3|Cpte[3]~DUPLICATE_q\) # 
-- ((!\inst3|Cpte\(5) & !\inst3|Cpte[6]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100100100010101111110101000111110010000100100001001111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Cpte\(5),
	datab => \inst3|ALT_INV_Cpte\(4),
	datac => \inst3|ALT_INV_Cpte[6]~DUPLICATE_q\,
	datad => \inst3|ALT_INV_Cpte[3]~DUPLICATE_q\,
	datae => \inst3|ALT_INV_Cpte\(2),
	dataf => \inst3|ALT_INV_Cpte\(1),
	combout => \inst|Mux19~3_combout\);

-- Location: LABCELL_X18_Y74_N42
\inst|Mux19~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux19~4_combout\ = ( \inst3|Cpte\(2) & ( \inst3|Cpte\(3) & ( (!\inst3|Cpte\(4) & (!\inst3|Cpte\(5) $ (((\inst3|Cpte\(6)) # (\inst3|Cpte[1]~DUPLICATE_q\))))) # (\inst3|Cpte\(4) & (!\inst3|Cpte[1]~DUPLICATE_q\ $ (((!\inst3|Cpte\(6) & 
-- !\inst3|Cpte\(5)))))) ) ) ) # ( !\inst3|Cpte\(2) & ( \inst3|Cpte\(3) & ( (\inst3|Cpte\(4) & ((!\inst3|Cpte[1]~DUPLICATE_q\) # ((!\inst3|Cpte\(6) & \inst3|Cpte\(5))))) ) ) ) # ( \inst3|Cpte\(2) & ( !\inst3|Cpte\(3) & ( (!\inst3|Cpte\(4) & 
-- (((\inst3|Cpte\(6) & !\inst3|Cpte\(5))) # (\inst3|Cpte[1]~DUPLICATE_q\))) ) ) ) # ( !\inst3|Cpte\(2) & ( !\inst3|Cpte\(3) & ( (!\inst3|Cpte\(4) & (!\inst3|Cpte[1]~DUPLICATE_q\ $ (((!\inst3|Cpte\(6)) # (!\inst3|Cpte\(5)))))) # (\inst3|Cpte\(4) & 
-- (!\inst3|Cpte\(5) $ (((\inst3|Cpte[1]~DUPLICATE_q\ & \inst3|Cpte\(6)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011000101001001010100010001001000100010101001001010001101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Cpte\(4),
	datab => \inst3|ALT_INV_Cpte[1]~DUPLICATE_q\,
	datac => \inst3|ALT_INV_Cpte\(6),
	datad => \inst3|ALT_INV_Cpte\(5),
	datae => \inst3|ALT_INV_Cpte\(2),
	dataf => \inst3|ALT_INV_Cpte\(3),
	combout => \inst|Mux19~4_combout\);

-- Location: LABCELL_X18_Y74_N30
\inst|Mux19~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux19~5_combout\ = ( \inst|Mux19~4_combout\ & ( (!\inst3|Cpte[0]~DUPLICATE_q\ & \inst|Mux19~3_combout\) ) ) # ( !\inst|Mux19~4_combout\ & ( (\inst|Mux19~3_combout\) # (\inst3|Cpte[0]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111100000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst3|ALT_INV_Cpte[0]~DUPLICATE_q\,
	datad => \inst|ALT_INV_Mux19~3_combout\,
	dataf => \inst|ALT_INV_Mux19~4_combout\,
	combout => \inst|Mux19~5_combout\);

-- Location: LABCELL_X18_Y74_N33
\inst|Mux19~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux19~0_combout\ = ( \inst3|Cpte\(3) & ( (!\inst3|Cpte\(6) & ((!\inst3|Cpte[1]~DUPLICATE_q\ & ((\inst3|Cpte\(2)))) # (\inst3|Cpte[1]~DUPLICATE_q\ & (\inst3|Cpte\(5))))) # (\inst3|Cpte\(6) & (!\inst3|Cpte\(2) $ (((!\inst3|Cpte\(5)) # 
-- (\inst3|Cpte[1]~DUPLICATE_q\))))) ) ) # ( !\inst3|Cpte\(3) & ( (!\inst3|Cpte\(5) & (!\inst3|Cpte\(2) & (!\inst3|Cpte\(6) $ (\inst3|Cpte[1]~DUPLICATE_q\)))) # (\inst3|Cpte\(5) & (!\inst3|Cpte\(2) $ (((!\inst3|Cpte\(6)) # (!\inst3|Cpte[1]~DUPLICATE_q\))))) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001000100001110100100010000111000000110110110110000011011011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Cpte\(6),
	datab => \inst3|ALT_INV_Cpte[1]~DUPLICATE_q\,
	datac => \inst3|ALT_INV_Cpte\(5),
	datad => \inst3|ALT_INV_Cpte\(2),
	dataf => \inst3|ALT_INV_Cpte\(3),
	combout => \inst|Mux19~0_combout\);

-- Location: LABCELL_X18_Y74_N6
\inst|Mux19~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux19~2_combout\ = ( \inst|Mux19~0_combout\ & ( (!\inst3|Cpte\(7) & (!\inst|Mux19~5_combout\ & ((\inst3|Cpte\(4)) # (\inst3|Cpte[0]~DUPLICATE_q\)))) # (\inst3|Cpte\(7) & (((\inst|Mux19~5_combout\)))) ) ) # ( !\inst|Mux19~0_combout\ & ( 
-- (!\inst3|Cpte\(7) & ((!\inst|Mux19~5_combout\) # ((!\inst3|Cpte[0]~DUPLICATE_q\ & !\inst3|Cpte\(4))))) # (\inst3|Cpte\(7) & (((\inst|Mux19~5_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110010110011110011001011001101001100001100110100110000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Cpte[0]~DUPLICATE_q\,
	datab => \inst3|ALT_INV_Cpte\(7),
	datac => \inst3|ALT_INV_Cpte\(4),
	datad => \inst|ALT_INV_Mux19~5_combout\,
	dataf => \inst|ALT_INV_Mux19~0_combout\,
	combout => \inst|Mux19~2_combout\);

-- Location: LABCELL_X18_Y74_N0
\inst|Mux19~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux19~1_combout\ = ( \inst|Mux22~0_combout\ & ( \inst|Mux19~2_combout\ & ( (!\inst3|Cpts[8]~6_combout\ & ((!\inst3|Cpts[9]~2_combout\) # ((\inst|Mux2~0_combout\ & \inst3|Cpte[7]~DUPLICATE_q\)))) # (\inst3|Cpts[8]~6_combout\ & 
-- (((\inst3|Cpte[7]~DUPLICATE_q\ & !\inst3|Cpts[9]~2_combout\)))) ) ) ) # ( !\inst|Mux22~0_combout\ & ( \inst|Mux19~2_combout\ & ( (!\inst3|Cpts[9]~2_combout\ & ((!\inst3|Cpts[8]~6_combout\) # (\inst3|Cpte[7]~DUPLICATE_q\))) ) ) ) # ( \inst|Mux22~0_combout\ 
-- & ( !\inst|Mux19~2_combout\ & ( (\inst3|Cpte[7]~DUPLICATE_q\ & ((!\inst3|Cpts[8]~6_combout\ & (\inst|Mux2~0_combout\)) # (\inst3|Cpts[8]~6_combout\ & ((!\inst3|Cpts[9]~2_combout\))))) ) ) ) # ( !\inst|Mux22~0_combout\ & ( !\inst|Mux19~2_combout\ & ( 
-- (\inst3|Cpts[8]~6_combout\ & (\inst3|Cpte[7]~DUPLICATE_q\ & !\inst3|Cpts[9]~2_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000000001110000001010101111000000001010111100000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Cpts[8]~6_combout\,
	datab => \inst|ALT_INV_Mux2~0_combout\,
	datac => \inst3|ALT_INV_Cpte[7]~DUPLICATE_q\,
	datad => \inst3|ALT_INV_Cpts[9]~2_combout\,
	datae => \inst|ALT_INV_Mux22~0_combout\,
	dataf => \inst|ALT_INV_Mux19~2_combout\,
	combout => \inst|Mux19~1_combout\);

-- Location: FF_X18_Y74_N2
\inst|Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst23|CLKs~combout\,
	d => \inst|Mux19~1_combout\,
	clrn => \inst30|Reset_n_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Q\(12));

-- Location: FF_X18_Y74_N44
\inst22|DtL[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst26|CLKs~combout\,
	asdata => \inst|Q\(12),
	sload => VCC,
	ena => \inst22|DtL[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst22|DtL\(12));

-- Location: LABCELL_X16_Y74_N42
\inst|Mux18~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux18~0_combout\ = ( \inst3|Cpte\(4) & ( (!\inst3|Cpte[6]~DUPLICATE_q\ & (!\inst3|Cpte[0]~DUPLICATE_q\ $ (!\inst3|Cpte\(1) $ (\inst3|Cpte[3]~DUPLICATE_q\)))) # (\inst3|Cpte[6]~DUPLICATE_q\ & (!\inst3|Cpte[3]~DUPLICATE_q\ & 
-- ((!\inst3|Cpte[0]~DUPLICATE_q\) # (\inst3|Cpte\(1))))) ) ) # ( !\inst3|Cpte\(4) & ( !\inst3|Cpte[3]~DUPLICATE_q\ $ (((!\inst3|Cpte[0]~DUPLICATE_q\ & ((!\inst3|Cpte[6]~DUPLICATE_q\) # (\inst3|Cpte\(1)))) # (\inst3|Cpte[0]~DUPLICATE_q\ & (\inst3|Cpte\(1) & 
-- !\inst3|Cpte[6]~DUPLICATE_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100101111010010010010111101001001101001101100000110100110110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Cpte[0]~DUPLICATE_q\,
	datab => \inst3|ALT_INV_Cpte\(1),
	datac => \inst3|ALT_INV_Cpte[3]~DUPLICATE_q\,
	datad => \inst3|ALT_INV_Cpte[6]~DUPLICATE_q\,
	dataf => \inst3|ALT_INV_Cpte\(4),
	combout => \inst|Mux18~0_combout\);

-- Location: LABCELL_X16_Y75_N54
\inst|Mux18~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux18~4_combout\ = ( \inst3|Cpte[1]~DUPLICATE_q\ & ( \inst3|Cpte[3]~DUPLICATE_q\ & ( (!\inst3|Cpte\(5) & ((!\inst3|Cpte[6]~DUPLICATE_q\ & (!\inst3|Cpte\(0))) # (\inst3|Cpte[6]~DUPLICATE_q\ & ((\inst3|Cpte[4]~DUPLICATE_q\))))) # (\inst3|Cpte\(5) & 
-- ((!\inst3|Cpte\(0) & (!\inst3|Cpte[4]~DUPLICATE_q\)) # (\inst3|Cpte\(0) & ((\inst3|Cpte[6]~DUPLICATE_q\) # (\inst3|Cpte[4]~DUPLICATE_q\))))) ) ) ) # ( !\inst3|Cpte[1]~DUPLICATE_q\ & ( \inst3|Cpte[3]~DUPLICATE_q\ & ( (!\inst3|Cpte\(5) & (\inst3|Cpte\(0))) 
-- # (\inst3|Cpte\(5) & (!\inst3|Cpte[6]~DUPLICATE_q\ $ (((!\inst3|Cpte\(0) & !\inst3|Cpte[4]~DUPLICATE_q\))))) ) ) ) # ( \inst3|Cpte[1]~DUPLICATE_q\ & ( !\inst3|Cpte[3]~DUPLICATE_q\ & ( (\inst3|Cpte[4]~DUPLICATE_q\ & ((!\inst3|Cpte\(0) & (\inst3|Cpte\(5))) 
-- # (\inst3|Cpte\(0) & (!\inst3|Cpte\(5) & \inst3|Cpte[6]~DUPLICATE_q\)))) ) ) ) # ( !\inst3|Cpte[1]~DUPLICATE_q\ & ( !\inst3|Cpte[3]~DUPLICATE_q\ & ( (!\inst3|Cpte\(0) & (!\inst3|Cpte\(5) & (!\inst3|Cpte[4]~DUPLICATE_q\ $ (!\inst3|Cpte[6]~DUPLICATE_q\)))) 
-- # (\inst3|Cpte\(0) & ((!\inst3|Cpte\(5) & (!\inst3|Cpte[4]~DUPLICATE_q\ & !\inst3|Cpte[6]~DUPLICATE_q\)) # (\inst3|Cpte\(5) & ((\inst3|Cpte[6]~DUPLICATE_q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100010010001000000100000011001010111011001001010100100111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Cpte\(0),
	datab => \inst3|ALT_INV_Cpte\(5),
	datac => \inst3|ALT_INV_Cpte[4]~DUPLICATE_q\,
	datad => \inst3|ALT_INV_Cpte[6]~DUPLICATE_q\,
	datae => \inst3|ALT_INV_Cpte[1]~DUPLICATE_q\,
	dataf => \inst3|ALT_INV_Cpte[3]~DUPLICATE_q\,
	combout => \inst|Mux18~4_combout\);

-- Location: MLABCELL_X15_Y73_N18
\inst|Mux18~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux18~3_combout\ = ( \inst3|Cpte[6]~DUPLICATE_q\ & ( \inst3|Cpte[5]~DUPLICATE_q\ & ( (!\inst3|Cpte\(1) & (((!\inst3|Cpte\(3) & \inst3|Cpte\(4))) # (\inst3|Cpte\(0)))) # (\inst3|Cpte\(1) & (\inst3|Cpte\(3) & ((!\inst3|Cpte\(4)) # 
-- (!\inst3|Cpte\(0))))) ) ) ) # ( !\inst3|Cpte[6]~DUPLICATE_q\ & ( \inst3|Cpte[5]~DUPLICATE_q\ & ( (!\inst3|Cpte\(1) & ((!\inst3|Cpte\(0) & (\inst3|Cpte\(3))) # (\inst3|Cpte\(0) & ((\inst3|Cpte\(4)))))) # (\inst3|Cpte\(1) & (((\inst3|Cpte\(4) & 
-- !\inst3|Cpte\(0))) # (\inst3|Cpte\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110111000110110001100110111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Cpte\(1),
	datab => \inst3|ALT_INV_Cpte\(3),
	datac => \inst3|ALT_INV_Cpte\(4),
	datad => \inst3|ALT_INV_Cpte\(0),
	datae => \inst3|ALT_INV_Cpte[6]~DUPLICATE_q\,
	dataf => \inst3|ALT_INV_Cpte[5]~DUPLICATE_q\,
	combout => \inst|Mux18~3_combout\);

-- Location: LABCELL_X18_Y72_N15
\inst|Mux18~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux18~5_combout\ = ( \inst|Mux18~4_combout\ & ( \inst|Mux18~3_combout\ & ( \inst3|Cpte\(2) ) ) ) # ( \inst|Mux18~4_combout\ & ( !\inst|Mux18~3_combout\ ) ) # ( !\inst|Mux18~4_combout\ & ( !\inst|Mux18~3_combout\ & ( !\inst3|Cpte\(2) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst3|ALT_INV_Cpte\(2),
	datae => \inst|ALT_INV_Mux18~4_combout\,
	dataf => \inst|ALT_INV_Mux18~3_combout\,
	combout => \inst|Mux18~5_combout\);

-- Location: MLABCELL_X15_Y74_N0
\inst|Mux18~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux18~7_combout\ = ( \inst3|Cpte\(0) & ( \inst3|Cpte[3]~DUPLICATE_q\ & ( (!\inst3|Cpte\(1) & ((!\inst3|Cpte\(5)) # ((!\inst3|Cpte[6]~DUPLICATE_q\)))) # (\inst3|Cpte\(1) & ((!\inst3|Cpte\(5) & (\inst3|Cpte[6]~DUPLICATE_q\ & \inst3|Cpte\(4))) # 
-- (\inst3|Cpte\(5) & ((\inst3|Cpte\(4)) # (\inst3|Cpte[6]~DUPLICATE_q\))))) ) ) ) # ( !\inst3|Cpte\(0) & ( \inst3|Cpte[3]~DUPLICATE_q\ & ( (!\inst3|Cpte\(5) & (\inst3|Cpte\(1) & ((!\inst3|Cpte[6]~DUPLICATE_q\) # (\inst3|Cpte\(4))))) # (\inst3|Cpte\(5) & 
-- (!\inst3|Cpte\(4) $ (((!\inst3|Cpte\(1) & !\inst3|Cpte[6]~DUPLICATE_q\))))) ) ) ) # ( \inst3|Cpte\(0) & ( !\inst3|Cpte[3]~DUPLICATE_q\ & ( (!\inst3|Cpte\(4) & (!\inst3|Cpte\(1) & (!\inst3|Cpte\(5) $ (\inst3|Cpte[6]~DUPLICATE_q\)))) # (\inst3|Cpte\(4) & 
-- (\inst3|Cpte[6]~DUPLICATE_q\ & (!\inst3|Cpte\(1) $ (!\inst3|Cpte\(5))))) ) ) ) # ( !\inst3|Cpte\(0) & ( !\inst3|Cpte[3]~DUPLICATE_q\ & ( (!\inst3|Cpte\(1) & (!\inst3|Cpte\(5) & (!\inst3|Cpte[6]~DUPLICATE_q\ $ (!\inst3|Cpte\(4))))) # (\inst3|Cpte\(1) & 
-- (\inst3|Cpte\(5) & ((\inst3|Cpte\(4))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100010010001100000100000011001010011011001001010100110111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Cpte\(1),
	datab => \inst3|ALT_INV_Cpte\(5),
	datac => \inst3|ALT_INV_Cpte[6]~DUPLICATE_q\,
	datad => \inst3|ALT_INV_Cpte\(4),
	datae => \inst3|ALT_INV_Cpte\(0),
	dataf => \inst3|ALT_INV_Cpte[3]~DUPLICATE_q\,
	combout => \inst|Mux18~7_combout\);

-- Location: MLABCELL_X15_Y74_N18
\inst|Mux18~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux18~6_combout\ = ( \inst3|Cpte\(0) & ( \inst3|Cpte[3]~DUPLICATE_q\ & ( (!\inst3|Cpte\(4) & (!\inst3|Cpte[6]~DUPLICATE_q\ & (!\inst3|Cpte\(5) $ (!\inst3|Cpte\(1))))) # (\inst3|Cpte\(4) & (\inst3|Cpte\(1) & (!\inst3|Cpte[6]~DUPLICATE_q\ $ 
-- (\inst3|Cpte\(5))))) ) ) ) # ( !\inst3|Cpte\(0) & ( \inst3|Cpte[3]~DUPLICATE_q\ & ( (!\inst3|Cpte\(1) & (!\inst3|Cpte[6]~DUPLICATE_q\ $ ((\inst3|Cpte\(5))))) # (\inst3|Cpte\(1) & (((!\inst3|Cpte\(5) & !\inst3|Cpte\(4))))) ) ) ) # ( \inst3|Cpte\(0) & ( 
-- !\inst3|Cpte[3]~DUPLICATE_q\ & ( (!\inst3|Cpte[6]~DUPLICATE_q\ & ((!\inst3|Cpte\(5) & (!\inst3|Cpte\(1))) # (\inst3|Cpte\(5) & ((!\inst3|Cpte\(4)) # (\inst3|Cpte\(1)))))) # (\inst3|Cpte[6]~DUPLICATE_q\ & (((!\inst3|Cpte\(5) & !\inst3|Cpte\(4))) # 
-- (\inst3|Cpte\(1)))) ) ) ) # ( !\inst3|Cpte\(0) & ( !\inst3|Cpte[3]~DUPLICATE_q\ & ( (!\inst3|Cpte\(5) & ((!\inst3|Cpte\(1) & ((!\inst3|Cpte\(4)) # (\inst3|Cpte[6]~DUPLICATE_q\))) # (\inst3|Cpte\(1) & ((\inst3|Cpte\(4)))))) # (\inst3|Cpte\(5) & 
-- ((!\inst3|Cpte\(4)) # (!\inst3|Cpte[6]~DUPLICATE_q\ $ (\inst3|Cpte\(1))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111001101101101111001111000011110011100100100000010100000001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Cpte[6]~DUPLICATE_q\,
	datab => \inst3|ALT_INV_Cpte\(5),
	datac => \inst3|ALT_INV_Cpte\(1),
	datad => \inst3|ALT_INV_Cpte\(4),
	datae => \inst3|ALT_INV_Cpte\(0),
	dataf => \inst3|ALT_INV_Cpte[3]~DUPLICATE_q\,
	combout => \inst|Mux18~6_combout\);

-- Location: MLABCELL_X15_Y74_N6
\inst|Mux18~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux18~8_combout\ = ( !\inst|Mux18~7_combout\ & ( \inst|Mux18~6_combout\ & ( \inst3|Cpte\(2) ) ) ) # ( \inst|Mux18~7_combout\ & ( !\inst|Mux18~6_combout\ & ( !\inst3|Cpte\(2) ) ) ) # ( !\inst|Mux18~7_combout\ & ( !\inst|Mux18~6_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111100001111000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst3|ALT_INV_Cpte\(2),
	datae => \inst|ALT_INV_Mux18~7_combout\,
	dataf => \inst|ALT_INV_Mux18~6_combout\,
	combout => \inst|Mux18~8_combout\);

-- Location: LABCELL_X18_Y74_N57
\inst|Mux18~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux18~2_combout\ = ( \inst|Mux18~5_combout\ & ( \inst|Mux18~8_combout\ & ( (((\inst|Mux18~0_combout\) # (\inst3|Cpte\(5))) # (\inst3|Cpte\(7))) # (\inst3|Cpte\(2)) ) ) ) # ( !\inst|Mux18~5_combout\ & ( \inst|Mux18~8_combout\ & ( \inst3|Cpte\(7) ) ) 
-- ) # ( \inst|Mux18~5_combout\ & ( !\inst|Mux18~8_combout\ & ( (!\inst3|Cpte\(7) & (((\inst|Mux18~0_combout\) # (\inst3|Cpte\(5))) # (\inst3|Cpte\(2)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010011001100110000110011001100110111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Cpte\(2),
	datab => \inst3|ALT_INV_Cpte\(7),
	datac => \inst3|ALT_INV_Cpte\(5),
	datad => \inst|ALT_INV_Mux18~0_combout\,
	datae => \inst|ALT_INV_Mux18~5_combout\,
	dataf => \inst|ALT_INV_Mux18~8_combout\,
	combout => \inst|Mux18~2_combout\);

-- Location: LABCELL_X18_Y74_N27
\inst|Mux18~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux18~1_combout\ = ( \inst|Mux22~0_combout\ & ( \inst|Mux18~2_combout\ & ( (!\inst3|Cpts[8]~6_combout\ & ((!\inst3|Cpts[9]~2_combout\) # ((\inst|Mux2~1_combout\ & \inst3|Cpte[7]~DUPLICATE_q\)))) # (\inst3|Cpts[8]~6_combout\ & 
-- (!\inst3|Cpts[9]~2_combout\ & ((\inst3|Cpte[7]~DUPLICATE_q\)))) ) ) ) # ( !\inst|Mux22~0_combout\ & ( \inst|Mux18~2_combout\ & ( (!\inst3|Cpts[9]~2_combout\ & ((!\inst3|Cpts[8]~6_combout\) # (\inst3|Cpte[7]~DUPLICATE_q\))) ) ) ) # ( \inst|Mux22~0_combout\ 
-- & ( !\inst|Mux18~2_combout\ & ( (\inst3|Cpte[7]~DUPLICATE_q\ & ((!\inst3|Cpts[8]~6_combout\ & (\inst3|Cpts[9]~2_combout\ & \inst|Mux2~1_combout\)) # (\inst3|Cpts[8]~6_combout\ & (!\inst3|Cpts[9]~2_combout\)))) ) ) ) # ( !\inst|Mux22~0_combout\ & ( 
-- !\inst|Mux18~2_combout\ & ( (\inst3|Cpts[8]~6_combout\ & (!\inst3|Cpts[9]~2_combout\ & \inst3|Cpte[7]~DUPLICATE_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000100000000000100011010001000110011001000100011001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Cpts[8]~6_combout\,
	datab => \inst3|ALT_INV_Cpts[9]~2_combout\,
	datac => \inst|ALT_INV_Mux2~1_combout\,
	datad => \inst3|ALT_INV_Cpte[7]~DUPLICATE_q\,
	datae => \inst|ALT_INV_Mux22~0_combout\,
	dataf => \inst|ALT_INV_Mux18~2_combout\,
	combout => \inst|Mux18~1_combout\);

-- Location: FF_X18_Y74_N29
\inst|Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst23|CLKs~combout\,
	d => \inst|Mux18~1_combout\,
	clrn => \inst30|Reset_n_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Q\(13));

-- Location: FF_X18_Y74_N56
\inst22|DtL[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst26|CLKs~combout\,
	asdata => \inst|Q\(13),
	sload => VCC,
	ena => \inst22|DtL[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst22|DtL\(13));

-- Location: MLABCELL_X15_Y78_N36
\inst|Mux17~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux17~0_combout\ = ( \inst3|Cpte\(6) & ( \inst3|Cpte[4]~DUPLICATE_q\ & ( (!\inst3|Cpte\(3) & (!\inst3|Cpte[5]~DUPLICATE_q\ $ (!\inst3|Cpte\(1)))) ) ) ) # ( !\inst3|Cpte\(6) & ( \inst3|Cpte[4]~DUPLICATE_q\ & ( ((!\inst3|Cpte[5]~DUPLICATE_q\ & 
-- !\inst3|Cpte\(1))) # (\inst3|Cpte\(3)) ) ) ) # ( \inst3|Cpte\(6) & ( !\inst3|Cpte[4]~DUPLICATE_q\ & ( (!\inst3|Cpte\(1)) # ((\inst3|Cpte\(3) & !\inst3|Cpte[5]~DUPLICATE_q\)) ) ) ) # ( !\inst3|Cpte\(6) & ( !\inst3|Cpte[4]~DUPLICATE_q\ & ( 
-- (!\inst3|Cpte[5]~DUPLICATE_q\ & ((\inst3|Cpte\(1)))) # (\inst3|Cpte[5]~DUPLICATE_q\ & (!\inst3|Cpte\(3))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010111000101110111101001111010011010101110101010010100000101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Cpte\(3),
	datab => \inst3|ALT_INV_Cpte[5]~DUPLICATE_q\,
	datac => \inst3|ALT_INV_Cpte\(1),
	datae => \inst3|ALT_INV_Cpte\(6),
	dataf => \inst3|ALT_INV_Cpte[4]~DUPLICATE_q\,
	combout => \inst|Mux17~0_combout\);

-- Location: MLABCELL_X15_Y78_N54
\inst|Mux17~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux17~4_combout\ = ( \inst3|Cpte\(2) & ( \inst3|Cpte[4]~DUPLICATE_q\ & ( (!\inst3|Cpte\(6) & ((!\inst3|Cpte\(3) & ((!\inst3|Cpte[5]~DUPLICATE_q\) # (\inst3|Cpte\(1)))) # (\inst3|Cpte\(3) & (\inst3|Cpte\(1) & !\inst3|Cpte[5]~DUPLICATE_q\)))) ) ) ) # 
-- ( !\inst3|Cpte\(2) & ( \inst3|Cpte[4]~DUPLICATE_q\ & ( (!\inst3|Cpte\(1) & (!\inst3|Cpte\(3) & ((!\inst3|Cpte\(6)) # (!\inst3|Cpte[5]~DUPLICATE_q\)))) # (\inst3|Cpte\(1) & (((!\inst3|Cpte\(6) & !\inst3|Cpte[5]~DUPLICATE_q\)))) ) ) ) # ( \inst3|Cpte\(2) & 
-- ( !\inst3|Cpte[4]~DUPLICATE_q\ & ( (!\inst3|Cpte\(1) & (((\inst3|Cpte\(6) & \inst3|Cpte[5]~DUPLICATE_q\)))) # (\inst3|Cpte\(1) & (\inst3|Cpte\(3) & ((\inst3|Cpte[5]~DUPLICATE_q\) # (\inst3|Cpte\(6))))) ) ) ) # ( !\inst3|Cpte\(2) & ( 
-- !\inst3|Cpte[4]~DUPLICATE_q\ & ( (\inst3|Cpte\(6) & ((!\inst3|Cpte\(3) & (!\inst3|Cpte\(1) & \inst3|Cpte[5]~DUPLICATE_q\)) # (\inst3|Cpte\(3) & ((!\inst3|Cpte\(1)) # (\inst3|Cpte[5]~DUPLICATE_q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000001101000000010001110110111000100000001011000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Cpte\(3),
	datab => \inst3|ALT_INV_Cpte\(1),
	datac => \inst3|ALT_INV_Cpte\(6),
	datad => \inst3|ALT_INV_Cpte[5]~DUPLICATE_q\,
	datae => \inst3|ALT_INV_Cpte\(2),
	dataf => \inst3|ALT_INV_Cpte[4]~DUPLICATE_q\,
	combout => \inst|Mux17~4_combout\);

-- Location: MLABCELL_X15_Y78_N48
\inst|Mux17~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux17~3_combout\ = ( \inst3|Cpte\(2) & ( \inst3|Cpte[4]~DUPLICATE_q\ & ( (!\inst3|Cpte\(3) & ((!\inst3|Cpte\(1) & (\inst3|Cpte\(6) & !\inst3|Cpte[5]~DUPLICATE_q\)) # (\inst3|Cpte\(1) & ((\inst3|Cpte[5]~DUPLICATE_q\))))) # (\inst3|Cpte\(3) & 
-- (!\inst3|Cpte\(6) $ (((\inst3|Cpte[5]~DUPLICATE_q\) # (\inst3|Cpte\(1)))))) ) ) ) # ( !\inst3|Cpte\(2) & ( \inst3|Cpte[4]~DUPLICATE_q\ & ( (!\inst3|Cpte\(3) & ((!\inst3|Cpte\(1) & (!\inst3|Cpte\(6) $ (\inst3|Cpte[5]~DUPLICATE_q\))) # (\inst3|Cpte\(1) & 
-- (\inst3|Cpte\(6) & !\inst3|Cpte[5]~DUPLICATE_q\)))) # (\inst3|Cpte\(3) & (((!\inst3|Cpte\(6))))) ) ) ) # ( \inst3|Cpte\(2) & ( !\inst3|Cpte[4]~DUPLICATE_q\ & ( (!\inst3|Cpte\(3) & (!\inst3|Cpte\(6) $ (((\inst3|Cpte[5]~DUPLICATE_q\) # (\inst3|Cpte\(1)))))) 
-- # (\inst3|Cpte\(3) & (((!\inst3|Cpte\(6) & \inst3|Cpte[5]~DUPLICATE_q\)))) ) ) ) # ( !\inst3|Cpte\(2) & ( !\inst3|Cpte[4]~DUPLICATE_q\ & ( (!\inst3|Cpte\(3) & ((!\inst3|Cpte\(1)) # ((!\inst3|Cpte\(6))))) # (\inst3|Cpte\(3) & ((!\inst3|Cpte\(1) & 
-- (\inst3|Cpte\(6))) # (\inst3|Cpte\(1) & ((!\inst3|Cpte[5]~DUPLICATE_q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011110110101100100000100101101011010010010110000100100100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Cpte\(3),
	datab => \inst3|ALT_INV_Cpte\(1),
	datac => \inst3|ALT_INV_Cpte\(6),
	datad => \inst3|ALT_INV_Cpte[5]~DUPLICATE_q\,
	datae => \inst3|ALT_INV_Cpte\(2),
	dataf => \inst3|ALT_INV_Cpte[4]~DUPLICATE_q\,
	combout => \inst|Mux17~3_combout\);

-- Location: MLABCELL_X15_Y78_N33
\inst|Mux17~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux17~5_combout\ = ( \inst|Mux17~3_combout\ & ( (\inst3|Cpte[0]~DUPLICATE_q\ & !\inst|Mux17~4_combout\) ) ) # ( !\inst|Mux17~3_combout\ & ( (!\inst3|Cpte[0]~DUPLICATE_q\) # (!\inst|Mux17~4_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111110000111111111111000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst3|ALT_INV_Cpte[0]~DUPLICATE_q\,
	datad => \inst|ALT_INV_Mux17~4_combout\,
	dataf => \inst|ALT_INV_Mux17~3_combout\,
	combout => \inst|Mux17~5_combout\);

-- Location: MLABCELL_X15_Y78_N15
\inst|Mux17~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux17~2_combout\ = ( \inst|Mux17~0_combout\ & ( \inst|Mux17~5_combout\ & ( ((!\inst3|Cpte\(2) & !\inst3|Cpte[0]~DUPLICATE_q\)) # (\inst3|Cpte[7]~DUPLICATE_q\) ) ) ) # ( !\inst|Mux17~0_combout\ & ( \inst|Mux17~5_combout\ & ( 
-- \inst3|Cpte[7]~DUPLICATE_q\ ) ) ) # ( \inst|Mux17~0_combout\ & ( !\inst|Mux17~5_combout\ & ( !\inst3|Cpte[7]~DUPLICATE_q\ ) ) ) # ( !\inst|Mux17~0_combout\ & ( !\inst|Mux17~5_combout\ & ( (!\inst3|Cpte[7]~DUPLICATE_q\ & ((\inst3|Cpte[0]~DUPLICATE_q\) # 
-- (\inst3|Cpte\(2)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110001001100110011001100110000110011001100111011001110110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Cpte\(2),
	datab => \inst3|ALT_INV_Cpte[7]~DUPLICATE_q\,
	datac => \inst3|ALT_INV_Cpte[0]~DUPLICATE_q\,
	datae => \inst|ALT_INV_Mux17~0_combout\,
	dataf => \inst|ALT_INV_Mux17~5_combout\,
	combout => \inst|Mux17~2_combout\);

-- Location: LABCELL_X18_Y74_N3
\inst|Mux17~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux17~1_combout\ = ( \inst|Mux22~0_combout\ & ( \inst|Mux17~2_combout\ & ( (!\inst3|Cpts[8]~6_combout\ & ((!\inst3|Cpts[9]~2_combout\) # ((\inst|Mux2~0_combout\ & \inst3|Cpte[7]~DUPLICATE_q\)))) # (\inst3|Cpts[8]~6_combout\ & 
-- (((!\inst3|Cpts[9]~2_combout\ & \inst3|Cpte[7]~DUPLICATE_q\)))) ) ) ) # ( !\inst|Mux22~0_combout\ & ( \inst|Mux17~2_combout\ & ( (!\inst3|Cpts[9]~2_combout\ & ((!\inst3|Cpts[8]~6_combout\) # (\inst3|Cpte[7]~DUPLICATE_q\))) ) ) ) # ( \inst|Mux22~0_combout\ 
-- & ( !\inst|Mux17~2_combout\ & ( (\inst3|Cpte[7]~DUPLICATE_q\ & ((!\inst3|Cpts[8]~6_combout\ & (\inst|Mux2~0_combout\)) # (\inst3|Cpts[8]~6_combout\ & ((!\inst3|Cpts[9]~2_combout\))))) ) ) ) # ( !\inst|Mux22~0_combout\ & ( !\inst|Mux17~2_combout\ & ( 
-- (\inst3|Cpts[8]~6_combout\ & (!\inst3|Cpts[9]~2_combout\ & \inst3|Cpte[7]~DUPLICATE_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000000000000111001010100000111100001010000011110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Cpts[8]~6_combout\,
	datab => \inst|ALT_INV_Mux2~0_combout\,
	datac => \inst3|ALT_INV_Cpts[9]~2_combout\,
	datad => \inst3|ALT_INV_Cpte[7]~DUPLICATE_q\,
	datae => \inst|ALT_INV_Mux22~0_combout\,
	dataf => \inst|ALT_INV_Mux17~2_combout\,
	combout => \inst|Mux17~1_combout\);

-- Location: FF_X18_Y74_N5
\inst|Q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst23|CLKs~combout\,
	d => \inst|Mux17~1_combout\,
	clrn => \inst30|Reset_n_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Q\(14));

-- Location: FF_X18_Y74_N11
\inst22|DtL[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst26|CLKs~combout\,
	asdata => \inst|Q\(14),
	sload => VCC,
	ena => \inst22|DtL[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst22|DtL\(14));

-- Location: LABCELL_X18_Y74_N12
\inst22|S~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst22|S~2_combout\ = ( \inst22|DtL\(13) & ( \inst22|DtL\(14) & ( (!\inst22|Cpte[1]~DUPLICATE_q\ & (((\inst22|DtL\(15))) # (\inst22|Cpte\(0)))) # (\inst22|Cpte[1]~DUPLICATE_q\ & ((!\inst22|Cpte\(0)) # ((\inst22|DtL\(12))))) ) ) ) # ( !\inst22|DtL\(13) & 
-- ( \inst22|DtL\(14) & ( (!\inst22|Cpte[1]~DUPLICATE_q\ & (((\inst22|DtL\(15))) # (\inst22|Cpte\(0)))) # (\inst22|Cpte[1]~DUPLICATE_q\ & (\inst22|Cpte\(0) & ((\inst22|DtL\(12))))) ) ) ) # ( \inst22|DtL\(13) & ( !\inst22|DtL\(14) & ( 
-- (!\inst22|Cpte[1]~DUPLICATE_q\ & (!\inst22|Cpte\(0) & (\inst22|DtL\(15)))) # (\inst22|Cpte[1]~DUPLICATE_q\ & ((!\inst22|Cpte\(0)) # ((\inst22|DtL\(12))))) ) ) ) # ( !\inst22|DtL\(13) & ( !\inst22|DtL\(14) & ( (!\inst22|Cpte[1]~DUPLICATE_q\ & 
-- (!\inst22|Cpte\(0) & (\inst22|DtL\(15)))) # (\inst22|Cpte[1]~DUPLICATE_q\ & (\inst22|Cpte\(0) & ((\inst22|DtL\(12))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000011001010011000101110100101010001110110110111001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|ALT_INV_Cpte[1]~DUPLICATE_q\,
	datab => \inst22|ALT_INV_Cpte\(0),
	datac => \inst22|ALT_INV_DtL\(15),
	datad => \inst22|ALT_INV_DtL\(12),
	datae => \inst22|ALT_INV_DtL\(13),
	dataf => \inst22|ALT_INV_DtL\(14),
	combout => \inst22|S~2_combout\);

-- Location: LABCELL_X18_Y75_N33
\inst22|DtR[13]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst22|DtR[13]~feeder_combout\ = ( \inst|Q\(13) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst|ALT_INV_Q\(13),
	combout => \inst22|DtR[13]~feeder_combout\);

-- Location: FF_X18_Y75_N34
\inst22|DtR[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst26|CLKs~combout\,
	d => \inst22|DtR[13]~feeder_combout\,
	ena => \inst22|DtR[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst22|DtR\(13));

-- Location: FF_X18_Y75_N46
\inst22|DtR[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst26|CLKs~combout\,
	asdata => \inst|Q\(12),
	sload => VCC,
	ena => \inst22|DtR[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst22|DtR\(12));

-- Location: FF_X18_Y75_N20
\inst22|DtR[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst26|CLKs~combout\,
	asdata => \inst|Q\(14),
	sload => VCC,
	ena => \inst22|DtR[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst22|DtR\(14));

-- Location: FF_X18_Y75_N16
\inst22|DtR[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst26|CLKs~combout\,
	asdata => \inst|Q\(15),
	sload => VCC,
	ena => \inst22|DtR[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst22|DtR\(15));

-- Location: LABCELL_X19_Y76_N45
\inst22|S~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst22|S~0_combout\ = ( \inst22|DtR\(14) & ( \inst22|DtR\(15) & ( (!\inst22|Cpte[1]~DUPLICATE_q\) # ((!\inst22|Cpte\(0) & (\inst22|DtR\(13))) # (\inst22|Cpte\(0) & ((\inst22|DtR\(12))))) ) ) ) # ( !\inst22|DtR\(14) & ( \inst22|DtR\(15) & ( 
-- (!\inst22|Cpte[1]~DUPLICATE_q\ & (!\inst22|Cpte\(0))) # (\inst22|Cpte[1]~DUPLICATE_q\ & ((!\inst22|Cpte\(0) & (\inst22|DtR\(13))) # (\inst22|Cpte\(0) & ((\inst22|DtR\(12)))))) ) ) ) # ( \inst22|DtR\(14) & ( !\inst22|DtR\(15) & ( 
-- (!\inst22|Cpte[1]~DUPLICATE_q\ & (\inst22|Cpte\(0))) # (\inst22|Cpte[1]~DUPLICATE_q\ & ((!\inst22|Cpte\(0) & (\inst22|DtR\(13))) # (\inst22|Cpte\(0) & ((\inst22|DtR\(12)))))) ) ) ) # ( !\inst22|DtR\(14) & ( !\inst22|DtR\(15) & ( 
-- (\inst22|Cpte[1]~DUPLICATE_q\ & ((!\inst22|Cpte\(0) & (\inst22|DtR\(13))) # (\inst22|Cpte\(0) & ((\inst22|DtR\(12)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000010101001001100011011110001100100111011010111010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|ALT_INV_Cpte[1]~DUPLICATE_q\,
	datab => \inst22|ALT_INV_Cpte\(0),
	datac => \inst22|ALT_INV_DtR\(13),
	datad => \inst22|ALT_INV_DtR\(12),
	datae => \inst22|ALT_INV_DtR\(14),
	dataf => \inst22|ALT_INV_DtR\(15),
	combout => \inst22|S~0_combout\);

-- Location: LABCELL_X16_Y74_N9
\inst|Mux22~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux22~5_combout\ = ( \inst3|Cpte\(3) & ( \inst3|Cpte[1]~DUPLICATE_q\ & ( (!\inst3|Cpte\(4) & ((!\inst3|Cpte\(5) $ (!\inst3|Cpte[6]~DUPLICATE_q\)) # (\inst3|Cpte\(2)))) # (\inst3|Cpte\(4) & (\inst3|Cpte\(5) & (\inst3|Cpte[6]~DUPLICATE_q\))) ) ) ) # ( 
-- !\inst3|Cpte\(3) & ( \inst3|Cpte[1]~DUPLICATE_q\ & ( (!\inst3|Cpte\(4) & (!\inst3|Cpte[6]~DUPLICATE_q\ $ (((!\inst3|Cpte\(5)) # (!\inst3|Cpte\(2)))))) # (\inst3|Cpte\(4) & (\inst3|Cpte\(5) & ((!\inst3|Cpte[6]~DUPLICATE_q\) # (\inst3|Cpte\(2))))) ) ) ) # ( 
-- \inst3|Cpte\(3) & ( !\inst3|Cpte[1]~DUPLICATE_q\ & ( (!\inst3|Cpte\(4) & (!\inst3|Cpte\(5) & ((!\inst3|Cpte\(2)) # (\inst3|Cpte[6]~DUPLICATE_q\)))) # (\inst3|Cpte\(4) & (!\inst3|Cpte[6]~DUPLICATE_q\ $ (((!\inst3|Cpte\(5) & !\inst3|Cpte\(2)))))) ) ) ) # ( 
-- !\inst3|Cpte\(3) & ( !\inst3|Cpte[1]~DUPLICATE_q\ & ( (!\inst3|Cpte\(4) & (!\inst3|Cpte\(5) & (!\inst3|Cpte[6]~DUPLICATE_q\))) # (\inst3|Cpte\(4) & ((!\inst3|Cpte\(2)) # (!\inst3|Cpte\(5) $ (!\inst3|Cpte[6]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011001110010010100110100011100000011100010110010100100111001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Cpte\(5),
	datab => \inst3|ALT_INV_Cpte\(4),
	datac => \inst3|ALT_INV_Cpte[6]~DUPLICATE_q\,
	datad => \inst3|ALT_INV_Cpte\(2),
	datae => \inst3|ALT_INV_Cpte\(3),
	dataf => \inst3|ALT_INV_Cpte[1]~DUPLICATE_q\,
	combout => \inst|Mux22~5_combout\);

-- Location: MLABCELL_X15_Y74_N24
\inst|Mux22~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux22~4_combout\ = ( \inst3|Cpte\(2) & ( \inst3|Cpte\(5) & ( (!\inst3|Cpte\(1) & (!\inst3|Cpte[3]~DUPLICATE_q\)) # (\inst3|Cpte\(1) & (!\inst3|Cpte[6]~DUPLICATE_q\ $ (((\inst3|Cpte\(4)) # (\inst3|Cpte[3]~DUPLICATE_q\))))) ) ) ) # ( \inst3|Cpte\(2) & 
-- ( !\inst3|Cpte\(5) & ( ((\inst3|Cpte\(1) & ((!\inst3|Cpte\(4)) # (\inst3|Cpte[6]~DUPLICATE_q\)))) # (\inst3|Cpte[3]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011101110011011100000000000000001100100110001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Cpte\(1),
	datab => \inst3|ALT_INV_Cpte[3]~DUPLICATE_q\,
	datac => \inst3|ALT_INV_Cpte[6]~DUPLICATE_q\,
	datad => \inst3|ALT_INV_Cpte\(4),
	datae => \inst3|ALT_INV_Cpte\(2),
	dataf => \inst3|ALT_INV_Cpte\(5),
	combout => \inst|Mux22~4_combout\);

-- Location: LABCELL_X16_Y74_N39
\inst|Mux22~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux22~6_combout\ = ( \inst|Mux22~4_combout\ & ( (\inst3|Cpte\(0) & \inst|Mux22~5_combout\) ) ) # ( !\inst|Mux22~4_combout\ & ( (!\inst3|Cpte\(0)) # (\inst|Mux22~5_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011111111111100001111111100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst3|ALT_INV_Cpte\(0),
	datad => \inst|ALT_INV_Mux22~5_combout\,
	dataf => \inst|ALT_INV_Mux22~4_combout\,
	combout => \inst|Mux22~6_combout\);

-- Location: LABCELL_X16_Y74_N36
\inst|Mux22~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux22~1_combout\ = ( \inst3|Cpte\(4) & ( (!\inst3|Cpte\(5) & ((!\inst3|Cpte[3]~DUPLICATE_q\ & ((\inst3|Cpte[6]~DUPLICATE_q\))) # (\inst3|Cpte[3]~DUPLICATE_q\ & (\inst3|Cpte\(1) & !\inst3|Cpte[6]~DUPLICATE_q\)))) # (\inst3|Cpte\(5) & 
-- (!\inst3|Cpte\(1) & ((!\inst3|Cpte[6]~DUPLICATE_q\)))) ) ) # ( !\inst3|Cpte\(4) & ( (\inst3|Cpte[6]~DUPLICATE_q\ & ((!\inst3|Cpte\(5)) # ((\inst3|Cpte\(1) & \inst3|Cpte[3]~DUPLICATE_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101011000000001010101101000110101000000100011010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Cpte\(5),
	datab => \inst3|ALT_INV_Cpte\(1),
	datac => \inst3|ALT_INV_Cpte[3]~DUPLICATE_q\,
	datad => \inst3|ALT_INV_Cpte[6]~DUPLICATE_q\,
	dataf => \inst3|ALT_INV_Cpte\(4),
	combout => \inst|Mux22~1_combout\);

-- Location: LABCELL_X16_Y74_N6
\inst|Mux22~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux22~8_combout\ = ( \inst3|Cpte\(3) & ( \inst3|Cpte[1]~DUPLICATE_q\ & ( (!\inst3|Cpte\(4) & ((!\inst3|Cpte\(5) $ (!\inst3|Cpte[6]~DUPLICATE_q\)) # (\inst3|Cpte\(2)))) # (\inst3|Cpte\(4) & (\inst3|Cpte\(5) & ((\inst3|Cpte[6]~DUPLICATE_q\)))) ) ) ) # 
-- ( !\inst3|Cpte\(3) & ( \inst3|Cpte[1]~DUPLICATE_q\ & ( (!\inst3|Cpte\(4) & (!\inst3|Cpte[6]~DUPLICATE_q\ $ (((!\inst3|Cpte\(5)) # (!\inst3|Cpte\(2)))))) # (\inst3|Cpte\(4) & (\inst3|Cpte\(5) & ((!\inst3|Cpte[6]~DUPLICATE_q\) # (\inst3|Cpte\(2))))) ) ) ) # 
-- ( \inst3|Cpte\(3) & ( !\inst3|Cpte[1]~DUPLICATE_q\ & ( (!\inst3|Cpte\(4) & (!\inst3|Cpte\(5) & ((!\inst3|Cpte\(2)) # (\inst3|Cpte[6]~DUPLICATE_q\)))) # (\inst3|Cpte\(4) & (!\inst3|Cpte[6]~DUPLICATE_q\ $ (((!\inst3|Cpte\(5) & !\inst3|Cpte\(2)))))) ) ) ) # 
-- ( !\inst3|Cpte\(3) & ( !\inst3|Cpte[1]~DUPLICATE_q\ & ( (!\inst3|Cpte\(4) & (!\inst3|Cpte\(5) & ((!\inst3|Cpte[6]~DUPLICATE_q\)))) # (\inst3|Cpte\(4) & ((!\inst3|Cpte\(2)) # (!\inst3|Cpte\(5) $ (!\inst3|Cpte[6]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011100100110010100100111010100000010101110010010100110010011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Cpte\(5),
	datab => \inst3|ALT_INV_Cpte\(4),
	datac => \inst3|ALT_INV_Cpte\(2),
	datad => \inst3|ALT_INV_Cpte[6]~DUPLICATE_q\,
	datae => \inst3|ALT_INV_Cpte\(3),
	dataf => \inst3|ALT_INV_Cpte[1]~DUPLICATE_q\,
	combout => \inst|Mux22~8_combout\);

-- Location: LABCELL_X16_Y74_N21
\inst|Mux22~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux22~7_combout\ = ( \inst3|Cpte\(2) & ( \inst3|Cpte\(4) & ( (!\inst3|Cpte\(1) & (!\inst3|Cpte\(5) $ (((\inst3|Cpte[3]~DUPLICATE_q\))))) # (\inst3|Cpte\(1) & (!\inst3|Cpte[6]~DUPLICATE_q\ & ((!\inst3|Cpte[3]~DUPLICATE_q\) # (\inst3|Cpte\(5))))) ) ) 
-- ) # ( !\inst3|Cpte\(2) & ( \inst3|Cpte\(4) & ( (!\inst3|Cpte\(5) & ((!\inst3|Cpte[6]~DUPLICATE_q\ & (\inst3|Cpte\(1) & \inst3|Cpte[3]~DUPLICATE_q\)) # (\inst3|Cpte[6]~DUPLICATE_q\ & ((!\inst3|Cpte[3]~DUPLICATE_q\))))) # (\inst3|Cpte\(5) & 
-- (!\inst3|Cpte[6]~DUPLICATE_q\ & (!\inst3|Cpte\(1)))) ) ) ) # ( \inst3|Cpte\(2) & ( !\inst3|Cpte\(4) & ( (!\inst3|Cpte\(5) & (((!\inst3|Cpte\(1) & !\inst3|Cpte[3]~DUPLICATE_q\)))) # (\inst3|Cpte\(5) & (!\inst3|Cpte[3]~DUPLICATE_q\ $ 
-- (((!\inst3|Cpte[6]~DUPLICATE_q\) # (!\inst3|Cpte\(1)))))) ) ) ) # ( !\inst3|Cpte\(2) & ( !\inst3|Cpte\(4) & ( (!\inst3|Cpte\(5) & (((!\inst3|Cpte\(1) & !\inst3|Cpte[3]~DUPLICATE_q\)) # (\inst3|Cpte[6]~DUPLICATE_q\))) # (\inst3|Cpte\(5) & 
-- (\inst3|Cpte[6]~DUPLICATE_q\ & (\inst3|Cpte\(1) & \inst3|Cpte[3]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010001000100011101000010101010001100010010010001010110001010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Cpte\(5),
	datab => \inst3|ALT_INV_Cpte[6]~DUPLICATE_q\,
	datac => \inst3|ALT_INV_Cpte\(1),
	datad => \inst3|ALT_INV_Cpte[3]~DUPLICATE_q\,
	datae => \inst3|ALT_INV_Cpte\(2),
	dataf => \inst3|ALT_INV_Cpte\(4),
	combout => \inst|Mux22~7_combout\);

-- Location: LABCELL_X16_Y74_N57
\inst|Mux22~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux22~9_combout\ = ( \inst|Mux22~7_combout\ & ( (!\inst|Mux22~8_combout\ & \inst3|Cpte[0]~DUPLICATE_q\) ) ) # ( !\inst|Mux22~7_combout\ & ( (!\inst|Mux22~8_combout\) # (!\inst3|Cpte[0]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111110000111111111111000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_Mux22~8_combout\,
	datad => \inst3|ALT_INV_Cpte[0]~DUPLICATE_q\,
	dataf => \inst|ALT_INV_Mux22~7_combout\,
	combout => \inst|Mux22~9_combout\);

-- Location: LABCELL_X16_Y74_N30
\inst|Mux22~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux22~3_combout\ = ( \inst|Mux22~1_combout\ & ( \inst|Mux22~9_combout\ & ( (\inst|Mux22~6_combout\) # (\inst3|Cpte[7]~DUPLICATE_q\) ) ) ) # ( !\inst|Mux22~1_combout\ & ( \inst|Mux22~9_combout\ & ( ((\inst|Mux22~6_combout\ & 
-- ((\inst3|Cpte[0]~DUPLICATE_q\) # (\inst3|Cpte\(2))))) # (\inst3|Cpte[7]~DUPLICATE_q\) ) ) ) # ( \inst|Mux22~1_combout\ & ( !\inst|Mux22~9_combout\ & ( (!\inst3|Cpte[7]~DUPLICATE_q\ & \inst|Mux22~6_combout\) ) ) ) # ( !\inst|Mux22~1_combout\ & ( 
-- !\inst|Mux22~9_combout\ & ( (!\inst3|Cpte[7]~DUPLICATE_q\ & (\inst|Mux22~6_combout\ & ((\inst3|Cpte[0]~DUPLICATE_q\) # (\inst3|Cpte\(2))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001001100000000001100110000110011011111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Cpte\(2),
	datab => \inst3|ALT_INV_Cpte[7]~DUPLICATE_q\,
	datac => \inst3|ALT_INV_Cpte[0]~DUPLICATE_q\,
	datad => \inst|ALT_INV_Mux22~6_combout\,
	datae => \inst|ALT_INV_Mux22~1_combout\,
	dataf => \inst|ALT_INV_Mux22~9_combout\,
	combout => \inst|Mux22~3_combout\);

-- Location: LABCELL_X16_Y74_N27
\inst|Mux22~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux22~2_combout\ = ( \inst|Mux22~0_combout\ & ( \inst|Mux22~3_combout\ & ( (!\inst3|Cpts[8]~6_combout\ & ((!\inst3|Cpts[9]~2_combout\) # ((\inst|Mux2~1_combout\ & \inst3|Cpte[7]~DUPLICATE_q\)))) # (\inst3|Cpts[8]~6_combout\ & 
-- (!\inst3|Cpts[9]~2_combout\ & ((\inst3|Cpte[7]~DUPLICATE_q\)))) ) ) ) # ( !\inst|Mux22~0_combout\ & ( \inst|Mux22~3_combout\ & ( (!\inst3|Cpts[9]~2_combout\ & ((!\inst3|Cpts[8]~6_combout\) # (\inst3|Cpte[7]~DUPLICATE_q\))) ) ) ) # ( \inst|Mux22~0_combout\ 
-- & ( !\inst|Mux22~3_combout\ & ( (\inst3|Cpte[7]~DUPLICATE_q\ & ((!\inst3|Cpts[8]~6_combout\ & (\inst3|Cpts[9]~2_combout\ & \inst|Mux2~1_combout\)) # (\inst3|Cpts[8]~6_combout\ & (!\inst3|Cpts[9]~2_combout\)))) ) ) ) # ( !\inst|Mux22~0_combout\ & ( 
-- !\inst|Mux22~3_combout\ & ( (\inst3|Cpts[8]~6_combout\ & (!\inst3|Cpts[9]~2_combout\ & \inst3|Cpte[7]~DUPLICATE_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000100000000000100011010001000110011001000100011001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Cpts[8]~6_combout\,
	datab => \inst3|ALT_INV_Cpts[9]~2_combout\,
	datac => \inst|ALT_INV_Mux2~1_combout\,
	datad => \inst3|ALT_INV_Cpte[7]~DUPLICATE_q\,
	datae => \inst|ALT_INV_Mux22~0_combout\,
	dataf => \inst|ALT_INV_Mux22~3_combout\,
	combout => \inst|Mux22~2_combout\);

-- Location: FF_X16_Y74_N29
\inst|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst23|CLKs~combout\,
	d => \inst|Mux22~2_combout\,
	clrn => \inst30|Reset_n_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Q\(9));

-- Location: FF_X18_Y76_N16
\inst22|DtR[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst26|CLKs~combout\,
	asdata => \inst|Q\(9),
	sload => VCC,
	ena => \inst22|DtR[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst22|DtR\(9));

-- Location: LABCELL_X17_Y73_N3
\inst|Mux21~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux21~5_combout\ = ( \inst3|Cpte\(4) & ( \inst3|Cpte[5]~DUPLICATE_q\ & ( (!\inst3|Cpte\(1) & (!\inst3|Cpte\(2) $ (!\inst3|Cpte\(3) $ (!\inst3|Cpte[6]~DUPLICATE_q\)))) # (\inst3|Cpte\(1) & ((!\inst3|Cpte\(2) & (\inst3|Cpte\(3) & 
-- \inst3|Cpte[6]~DUPLICATE_q\)) # (\inst3|Cpte\(2) & (!\inst3|Cpte\(3) & !\inst3|Cpte[6]~DUPLICATE_q\)))) ) ) ) # ( !\inst3|Cpte\(4) & ( \inst3|Cpte[5]~DUPLICATE_q\ & ( (!\inst3|Cpte\(2) & (!\inst3|Cpte\(1) & ((\inst3|Cpte[6]~DUPLICATE_q\)))) # 
-- (\inst3|Cpte\(2) & (!\inst3|Cpte\(1) $ ((!\inst3|Cpte\(3))))) ) ) ) # ( \inst3|Cpte\(4) & ( !\inst3|Cpte[5]~DUPLICATE_q\ & ( (!\inst3|Cpte\(2) & (!\inst3|Cpte\(1) $ ((!\inst3|Cpte\(3))))) # (\inst3|Cpte\(2) & (\inst3|Cpte\(1) & 
-- ((!\inst3|Cpte[6]~DUPLICATE_q\)))) ) ) ) # ( !\inst3|Cpte\(4) & ( !\inst3|Cpte[5]~DUPLICATE_q\ & ( (!\inst3|Cpte\(1) & ((!\inst3|Cpte\(2) & (\inst3|Cpte\(3) & \inst3|Cpte[6]~DUPLICATE_q\)) # (\inst3|Cpte\(2) & (!\inst3|Cpte\(3) & 
-- !\inst3|Cpte[6]~DUPLICATE_q\)))) # (\inst3|Cpte\(1) & (!\inst3|Cpte\(2) $ (!\inst3|Cpte\(3) $ (\inst3|Cpte[6]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010001001001010110010100100000010010100110101001001000101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Cpte\(1),
	datab => \inst3|ALT_INV_Cpte\(2),
	datac => \inst3|ALT_INV_Cpte\(3),
	datad => \inst3|ALT_INV_Cpte[6]~DUPLICATE_q\,
	datae => \inst3|ALT_INV_Cpte\(4),
	dataf => \inst3|ALT_INV_Cpte[5]~DUPLICATE_q\,
	combout => \inst|Mux21~5_combout\);

-- Location: LABCELL_X17_Y73_N48
\inst|Mux21~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux21~4_combout\ = ( \inst3|Cpte\(2) & ( \inst3|Cpte\(3) & ( (!\inst3|Cpte\(4) & (((\inst3|Cpte[5]~DUPLICATE_q\)))) # (\inst3|Cpte\(4) & (\inst3|Cpte[6]~DUPLICATE_q\ & ((!\inst3|Cpte\(1)) # (\inst3|Cpte[5]~DUPLICATE_q\)))) ) ) ) # ( !\inst3|Cpte\(2) 
-- & ( \inst3|Cpte\(3) & ( (!\inst3|Cpte\(4) & ((!\inst3|Cpte\(1) & (!\inst3|Cpte[6]~DUPLICATE_q\)) # (\inst3|Cpte\(1) & ((!\inst3|Cpte[5]~DUPLICATE_q\))))) # (\inst3|Cpte\(4) & (((\inst3|Cpte[6]~DUPLICATE_q\)))) ) ) ) # ( \inst3|Cpte\(2) & ( 
-- !\inst3|Cpte\(3) & ( (!\inst3|Cpte\(4) & (((!\inst3|Cpte[6]~DUPLICATE_q\)))) # (\inst3|Cpte\(4) & (!\inst3|Cpte\(1) $ (((\inst3|Cpte[5]~DUPLICATE_q\))))) ) ) ) # ( !\inst3|Cpte\(2) & ( !\inst3|Cpte\(3) & ( (!\inst3|Cpte\(4) & 
-- ((!\inst3|Cpte[5]~DUPLICATE_q\ & ((!\inst3|Cpte[6]~DUPLICATE_q\))) # (\inst3|Cpte[5]~DUPLICATE_q\ & (!\inst3|Cpte\(1))))) # (\inst3|Cpte\(4) & (\inst3|Cpte\(1) & ((!\inst3|Cpte[5]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101000110001000111000101101000111000111100000110000001011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Cpte\(1),
	datab => \inst3|ALT_INV_Cpte\(4),
	datac => \inst3|ALT_INV_Cpte[6]~DUPLICATE_q\,
	datad => \inst3|ALT_INV_Cpte[5]~DUPLICATE_q\,
	datae => \inst3|ALT_INV_Cpte\(2),
	dataf => \inst3|ALT_INV_Cpte\(3),
	combout => \inst|Mux21~4_combout\);

-- Location: LABCELL_X17_Y73_N33
\inst|Mux21~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux21~6_combout\ = ( \inst|Mux21~5_combout\ & ( \inst|Mux21~4_combout\ & ( \inst3|Cpte[0]~DUPLICATE_q\ ) ) ) # ( \inst|Mux21~5_combout\ & ( !\inst|Mux21~4_combout\ ) ) # ( !\inst|Mux21~5_combout\ & ( !\inst|Mux21~4_combout\ & ( 
-- !\inst3|Cpte[0]~DUPLICATE_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Cpte[0]~DUPLICATE_q\,
	datae => \inst|ALT_INV_Mux21~5_combout\,
	dataf => \inst|ALT_INV_Mux21~4_combout\,
	combout => \inst|Mux21~6_combout\);

-- Location: LABCELL_X17_Y73_N0
\inst|Mux21~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux21~2_combout\ = ( \inst3|Cpte\(4) & ( \inst3|Cpte[5]~DUPLICATE_q\ & ( (!\inst3|Cpte\(1) & (!\inst3|Cpte\(2) $ (!\inst3|Cpte[6]~DUPLICATE_q\ $ (!\inst3|Cpte\(3))))) # (\inst3|Cpte\(1) & ((!\inst3|Cpte\(2) & (\inst3|Cpte[6]~DUPLICATE_q\ & 
-- \inst3|Cpte\(3))) # (\inst3|Cpte\(2) & (!\inst3|Cpte[6]~DUPLICATE_q\ & !\inst3|Cpte\(3))))) ) ) ) # ( !\inst3|Cpte\(4) & ( \inst3|Cpte[5]~DUPLICATE_q\ & ( (!\inst3|Cpte\(2) & (!\inst3|Cpte\(1) & (\inst3|Cpte[6]~DUPLICATE_q\))) # (\inst3|Cpte\(2) & 
-- (!\inst3|Cpte\(1) $ (((!\inst3|Cpte\(3)))))) ) ) ) # ( \inst3|Cpte\(4) & ( !\inst3|Cpte[5]~DUPLICATE_q\ & ( (!\inst3|Cpte\(2) & (!\inst3|Cpte\(1) $ (((!\inst3|Cpte\(3)))))) # (\inst3|Cpte\(2) & (\inst3|Cpte\(1) & (!\inst3|Cpte[6]~DUPLICATE_q\))) ) ) ) # ( 
-- !\inst3|Cpte\(4) & ( !\inst3|Cpte[5]~DUPLICATE_q\ & ( (!\inst3|Cpte\(1) & ((!\inst3|Cpte\(2) & (\inst3|Cpte[6]~DUPLICATE_q\ & \inst3|Cpte\(3))) # (\inst3|Cpte\(2) & (!\inst3|Cpte[6]~DUPLICATE_q\ & !\inst3|Cpte\(3))))) # (\inst3|Cpte\(1) & 
-- (!\inst3|Cpte\(2) $ (!\inst3|Cpte[6]~DUPLICATE_q\ $ (\inst3|Cpte\(3))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010001001001010101001001100000011001001010101001001000101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Cpte\(1),
	datab => \inst3|ALT_INV_Cpte\(2),
	datac => \inst3|ALT_INV_Cpte[6]~DUPLICATE_q\,
	datad => \inst3|ALT_INV_Cpte\(3),
	datae => \inst3|ALT_INV_Cpte\(4),
	dataf => \inst3|ALT_INV_Cpte[5]~DUPLICATE_q\,
	combout => \inst|Mux21~2_combout\);

-- Location: LABCELL_X16_Y73_N45
\inst|Mux21~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux21~1_combout\ = ( \inst3|Cpte[5]~DUPLICATE_q\ & ( \inst3|Cpte[3]~DUPLICATE_q\ & ( (!\inst3|Cpte\(4) & (((!\inst3|Cpte\(1) & !\inst3|Cpte[6]~DUPLICATE_q\)) # (\inst3|Cpte\(2)))) # (\inst3|Cpte\(4) & (((\inst3|Cpte[6]~DUPLICATE_q\)))) ) ) ) # ( 
-- !\inst3|Cpte[5]~DUPLICATE_q\ & ( \inst3|Cpte[3]~DUPLICATE_q\ & ( (!\inst3|Cpte[6]~DUPLICATE_q\ & (((!\inst3|Cpte\(4) & !\inst3|Cpte\(2))))) # (\inst3|Cpte[6]~DUPLICATE_q\ & ((!\inst3|Cpte\(1) & (\inst3|Cpte\(4))) # (\inst3|Cpte\(1) & 
-- ((!\inst3|Cpte\(2)))))) ) ) ) # ( \inst3|Cpte[5]~DUPLICATE_q\ & ( !\inst3|Cpte[3]~DUPLICATE_q\ & ( (!\inst3|Cpte\(4) & ((!\inst3|Cpte\(2) & (!\inst3|Cpte\(1))) # (\inst3|Cpte\(2) & ((!\inst3|Cpte[6]~DUPLICATE_q\))))) # (\inst3|Cpte\(4) & (\inst3|Cpte\(1) 
-- & ((\inst3|Cpte\(2))))) ) ) ) # ( !\inst3|Cpte[5]~DUPLICATE_q\ & ( !\inst3|Cpte[3]~DUPLICATE_q\ & ( (!\inst3|Cpte\(4) & (!\inst3|Cpte[6]~DUPLICATE_q\ & ((\inst3|Cpte\(2)) # (\inst3|Cpte\(1))))) # (\inst3|Cpte\(4) & (!\inst3|Cpte\(1) $ 
-- (((!\inst3|Cpte\(2)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000111100010100010001101000111000111000000101000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Cpte\(1),
	datab => \inst3|ALT_INV_Cpte\(4),
	datac => \inst3|ALT_INV_Cpte[6]~DUPLICATE_q\,
	datad => \inst3|ALT_INV_Cpte\(2),
	datae => \inst3|ALT_INV_Cpte[5]~DUPLICATE_q\,
	dataf => \inst3|ALT_INV_Cpte[3]~DUPLICATE_q\,
	combout => \inst|Mux21~1_combout\);

-- Location: LABCELL_X17_Y73_N42
\inst|Mux21~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux21~3_combout\ = ( \inst|Mux21~2_combout\ & ( \inst|Mux21~1_combout\ & ( !\inst3|Cpte[0]~DUPLICATE_q\ ) ) ) # ( !\inst|Mux21~2_combout\ & ( \inst|Mux21~1_combout\ ) ) # ( !\inst|Mux21~2_combout\ & ( !\inst|Mux21~1_combout\ & ( 
-- \inst3|Cpte[0]~DUPLICATE_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000011111111111111111111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst3|ALT_INV_Cpte[0]~DUPLICATE_q\,
	datae => \inst|ALT_INV_Mux21~2_combout\,
	dataf => \inst|ALT_INV_Mux21~1_combout\,
	combout => \inst|Mux21~3_combout\);

-- Location: LABCELL_X17_Y75_N51
\inst|Mux21~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux21~0_combout\ = ( \inst|Mux21~6_combout\ & ( \inst|Mux21~3_combout\ & ( ((!\inst3|Cpts[9]~2_combout\ & ((!\inst3|Cpts[8]~6_combout\) # (\inst3|Cpte[7]~DUPLICATE_q\)))) # (\inst|Mux15~0_combout\) ) ) ) # ( !\inst|Mux21~6_combout\ & ( 
-- \inst|Mux21~3_combout\ & ( ((\inst3|Cpte[7]~DUPLICATE_q\ & !\inst3|Cpts[9]~2_combout\)) # (\inst|Mux15~0_combout\) ) ) ) # ( \inst|Mux21~6_combout\ & ( !\inst|Mux21~3_combout\ & ( ((!\inst3|Cpts[9]~2_combout\ & (!\inst3|Cpts[8]~6_combout\ $ 
-- (\inst3|Cpte[7]~DUPLICATE_q\)))) # (\inst|Mux15~0_combout\) ) ) ) # ( !\inst|Mux21~6_combout\ & ( !\inst|Mux21~3_combout\ & ( ((\inst3|Cpts[8]~6_combout\ & (\inst3|Cpte[7]~DUPLICATE_q\ & !\inst3|Cpts[9]~2_combout\))) # (\inst|Mux15~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011100110011101101110011001100111111001100111011111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Cpts[8]~6_combout\,
	datab => \inst|ALT_INV_Mux15~0_combout\,
	datac => \inst3|ALT_INV_Cpte[7]~DUPLICATE_q\,
	datad => \inst3|ALT_INV_Cpts[9]~2_combout\,
	datae => \inst|ALT_INV_Mux21~6_combout\,
	dataf => \inst|ALT_INV_Mux21~3_combout\,
	combout => \inst|Mux21~0_combout\);

-- Location: FF_X17_Y75_N53
\inst|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst23|CLKs~combout\,
	d => \inst|Mux21~0_combout\,
	clrn => \inst30|Reset_n_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Q\(10));

-- Location: FF_X18_Y76_N31
\inst22|DtR[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst26|CLKs~combout\,
	asdata => \inst|Q\(10),
	sload => VCC,
	ena => \inst22|DtR[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst22|DtR\(10));

-- Location: LABCELL_X17_Y77_N36
\inst|Mux23~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux23~4_combout\ = ( \inst3|Cpte\(2) & ( \inst3|Cpte\(4) & ( (!\inst3|Cpte\(1) & (!\inst3|Cpte[6]~DUPLICATE_q\ & (!\inst3|Cpte\(3)))) # (\inst3|Cpte\(1) & ((!\inst3|Cpte\(3) & ((!\inst3|Cpte[5]~DUPLICATE_q\))) # (\inst3|Cpte\(3) & 
-- (!\inst3|Cpte[6]~DUPLICATE_q\)))) ) ) ) # ( !\inst3|Cpte\(2) & ( \inst3|Cpte\(4) & ( (!\inst3|Cpte[5]~DUPLICATE_q\ & (!\inst3|Cpte[6]~DUPLICATE_q\ $ (!\inst3|Cpte\(1) $ (\inst3|Cpte\(3))))) # (\inst3|Cpte[5]~DUPLICATE_q\ & (((!\inst3|Cpte[6]~DUPLICATE_q\ 
-- & \inst3|Cpte\(3))) # (\inst3|Cpte\(1)))) ) ) ) # ( \inst3|Cpte\(2) & ( !\inst3|Cpte\(4) & ( (!\inst3|Cpte[5]~DUPLICATE_q\ & ((!\inst3|Cpte\(1)) # ((\inst3|Cpte[6]~DUPLICATE_q\ & !\inst3|Cpte\(3))))) # (\inst3|Cpte[5]~DUPLICATE_q\ & 
-- (!\inst3|Cpte[6]~DUPLICATE_q\ $ (!\inst3|Cpte\(1) $ (!\inst3|Cpte\(3))))) ) ) ) # ( !\inst3|Cpte\(2) & ( !\inst3|Cpte\(4) & ( (!\inst3|Cpte\(1) & ((!\inst3|Cpte\(3) & (\inst3|Cpte[6]~DUPLICATE_q\)) # (\inst3|Cpte\(3) & ((\inst3|Cpte[5]~DUPLICATE_q\))))) # 
-- (\inst3|Cpte\(1) & (\inst3|Cpte[6]~DUPLICATE_q\ & (\inst3|Cpte\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000101001101110111001001011001101001001110111011001010000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Cpte[6]~DUPLICATE_q\,
	datab => \inst3|ALT_INV_Cpte\(1),
	datac => \inst3|ALT_INV_Cpte\(3),
	datad => \inst3|ALT_INV_Cpte[5]~DUPLICATE_q\,
	datae => \inst3|ALT_INV_Cpte\(2),
	dataf => \inst3|ALT_INV_Cpte\(4),
	combout => \inst|Mux23~4_combout\);

-- Location: LABCELL_X17_Y77_N3
\inst|Mux23~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux23~3_combout\ = ( \inst3|Cpte\(2) & ( \inst3|Cpte\(3) & ( (!\inst3|Cpte[6]~DUPLICATE_q\ & ((!\inst3|Cpte[5]~DUPLICATE_q\) # ((!\inst3|Cpte\(1) & \inst3|Cpte\(4))))) # (\inst3|Cpte[6]~DUPLICATE_q\ & ((!\inst3|Cpte[5]~DUPLICATE_q\ & 
-- (\inst3|Cpte\(1))) # (\inst3|Cpte[5]~DUPLICATE_q\ & ((!\inst3|Cpte\(4)))))) ) ) ) # ( !\inst3|Cpte\(2) & ( \inst3|Cpte\(3) & ( (!\inst3|Cpte[6]~DUPLICATE_q\ & (!\inst3|Cpte\(1) & ((!\inst3|Cpte[5]~DUPLICATE_q\) # (!\inst3|Cpte\(4))))) # 
-- (\inst3|Cpte[6]~DUPLICATE_q\ & (((!\inst3|Cpte\(1) & \inst3|Cpte\(4))) # (\inst3|Cpte[5]~DUPLICATE_q\))) ) ) ) # ( \inst3|Cpte\(2) & ( !\inst3|Cpte\(3) & ( (!\inst3|Cpte\(1) & (!\inst3|Cpte[6]~DUPLICATE_q\ $ (((!\inst3|Cpte\(4)) # 
-- (\inst3|Cpte[5]~DUPLICATE_q\))))) # (\inst3|Cpte\(1) & (!\inst3|Cpte[6]~DUPLICATE_q\ & (!\inst3|Cpte[5]~DUPLICATE_q\))) ) ) ) # ( !\inst3|Cpte\(2) & ( !\inst3|Cpte\(3) & ( (\inst3|Cpte\(1) & (((!\inst3|Cpte[6]~DUPLICATE_q\ & \inst3|Cpte\(4))) # 
-- (\inst3|Cpte[5]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100100011011001001010010010001101110001011011010110111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Cpte[6]~DUPLICATE_q\,
	datab => \inst3|ALT_INV_Cpte\(1),
	datac => \inst3|ALT_INV_Cpte[5]~DUPLICATE_q\,
	datad => \inst3|ALT_INV_Cpte\(4),
	datae => \inst3|ALT_INV_Cpte\(2),
	dataf => \inst3|ALT_INV_Cpte\(3),
	combout => \inst|Mux23~3_combout\);

-- Location: LABCELL_X17_Y77_N6
\inst|Mux23~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux23~5_combout\ = ( \inst3|Cpte[0]~DUPLICATE_q\ & ( !\inst|Mux23~4_combout\ ) ) # ( !\inst3|Cpte[0]~DUPLICATE_q\ & ( \inst|Mux23~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_Mux23~4_combout\,
	datad => \inst|ALT_INV_Mux23~3_combout\,
	dataf => \inst3|ALT_INV_Cpte[0]~DUPLICATE_q\,
	combout => \inst|Mux23~5_combout\);

-- Location: LABCELL_X17_Y77_N9
\inst|Mux23~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux23~0_combout\ = ( \inst3|Cpte[6]~DUPLICATE_q\ & ( (!\inst3|Cpte[5]~DUPLICATE_q\ & (!\inst3|Cpte\(4) & (!\inst3|Cpte\(1) & \inst3|Cpte\(2)))) # (\inst3|Cpte[5]~DUPLICATE_q\ & ((!\inst3|Cpte\(1) $ (!\inst3|Cpte\(2))))) ) ) # ( 
-- !\inst3|Cpte[6]~DUPLICATE_q\ & ( (!\inst3|Cpte\(2) & (!\inst3|Cpte\(1) $ (((\inst3|Cpte[5]~DUPLICATE_q\) # (\inst3|Cpte\(4)))))) # (\inst3|Cpte\(2) & (!\inst3|Cpte[5]~DUPLICATE_q\ & ((\inst3|Cpte\(1)) # (\inst3|Cpte\(4))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000011101001100100001110100110000000011101100000000001110110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Cpte\(4),
	datab => \inst3|ALT_INV_Cpte[5]~DUPLICATE_q\,
	datac => \inst3|ALT_INV_Cpte\(1),
	datad => \inst3|ALT_INV_Cpte\(2),
	dataf => \inst3|ALT_INV_Cpte[6]~DUPLICATE_q\,
	combout => \inst|Mux23~0_combout\);

-- Location: LABCELL_X17_Y77_N27
\inst|Mux23~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux23~2_combout\ = ( \inst|Mux23~0_combout\ & ( (!\inst|Mux23~5_combout\ & (!\inst3|Cpte[7]~DUPLICATE_q\ & ((\inst3|Cpte[3]~DUPLICATE_q\) # (\inst3|Cpte[0]~DUPLICATE_q\)))) # (\inst|Mux23~5_combout\ & (((\inst3|Cpte[7]~DUPLICATE_q\)))) ) ) # ( 
-- !\inst|Mux23~0_combout\ & ( (!\inst|Mux23~5_combout\ & (((!\inst3|Cpte[7]~DUPLICATE_q\)))) # (\inst|Mux23~5_combout\ & (((!\inst3|Cpte[0]~DUPLICATE_q\ & !\inst3|Cpte[3]~DUPLICATE_q\)) # (\inst3|Cpte[7]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110110000110011111011000011001101001100001100110100110000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Cpte[0]~DUPLICATE_q\,
	datab => \inst|ALT_INV_Mux23~5_combout\,
	datac => \inst3|ALT_INV_Cpte[3]~DUPLICATE_q\,
	datad => \inst3|ALT_INV_Cpte[7]~DUPLICATE_q\,
	dataf => \inst|ALT_INV_Mux23~0_combout\,
	combout => \inst|Mux23~2_combout\);

-- Location: LABCELL_X17_Y77_N33
\inst|Mux23~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux23~1_combout\ = ( \inst|Mux22~0_combout\ & ( \inst|Mux23~2_combout\ & ( (!\inst3|Cpte[7]~DUPLICATE_q\ & (!\inst3|Cpts[8]~6_combout\ & ((!\inst3|Cpts[9]~2_combout\)))) # (\inst3|Cpte[7]~DUPLICATE_q\ & ((!\inst3|Cpts[9]~2_combout\) # 
-- ((!\inst3|Cpts[8]~6_combout\ & \inst|Mux2~0_combout\)))) ) ) ) # ( !\inst|Mux22~0_combout\ & ( \inst|Mux23~2_combout\ & ( (!\inst3|Cpts[9]~2_combout\ & ((!\inst3|Cpts[8]~6_combout\) # (\inst3|Cpte[7]~DUPLICATE_q\))) ) ) ) # ( \inst|Mux22~0_combout\ & ( 
-- !\inst|Mux23~2_combout\ & ( (\inst3|Cpte[7]~DUPLICATE_q\ & ((!\inst3|Cpts[8]~6_combout\ & (\inst|Mux2~0_combout\)) # (\inst3|Cpts[8]~6_combout\ & ((!\inst3|Cpts[9]~2_combout\))))) ) ) ) # ( !\inst|Mux22~0_combout\ & ( !\inst|Mux23~2_combout\ & ( 
-- (\inst3|Cpte[7]~DUPLICATE_q\ & (\inst3|Cpts[8]~6_combout\ & !\inst3|Cpts[9]~2_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000000000101010000010011011101000000001101110100000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Cpte[7]~DUPLICATE_q\,
	datab => \inst3|ALT_INV_Cpts[8]~6_combout\,
	datac => \inst|ALT_INV_Mux2~0_combout\,
	datad => \inst3|ALT_INV_Cpts[9]~2_combout\,
	datae => \inst|ALT_INV_Mux22~0_combout\,
	dataf => \inst|ALT_INV_Mux23~2_combout\,
	combout => \inst|Mux23~1_combout\);

-- Location: FF_X17_Y77_N35
\inst|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst23|CLKs~combout\,
	d => \inst|Mux23~1_combout\,
	clrn => \inst30|Reset_n_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Q\(8));

-- Location: FF_X18_Y76_N58
\inst22|DtR[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst26|CLKs~combout\,
	asdata => \inst|Q\(8),
	sload => VCC,
	ena => \inst22|DtR[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst22|DtR\(8));

-- Location: LABCELL_X16_Y78_N36
\inst|Mux20~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux20~0_combout\ = ( \inst3|Cpte\(3) & ( (\inst3|Cpte[0]~DUPLICATE_q\ & ((!\inst3|Cpte[5]~DUPLICATE_q\ & (!\inst3|Cpte[6]~DUPLICATE_q\)) # (\inst3|Cpte[5]~DUPLICATE_q\ & ((\inst3|Cpte[4]~DUPLICATE_q\))))) ) ) # ( !\inst3|Cpte\(3) & ( 
-- (!\inst3|Cpte[0]~DUPLICATE_q\ & ((!\inst3|Cpte[5]~DUPLICATE_q\ & (!\inst3|Cpte[6]~DUPLICATE_q\)) # (\inst3|Cpte[5]~DUPLICATE_q\ & (\inst3|Cpte[6]~DUPLICATE_q\ & \inst3|Cpte[4]~DUPLICATE_q\)))) # (\inst3|Cpte[0]~DUPLICATE_q\ & (!\inst3|Cpte[5]~DUPLICATE_q\ 
-- $ (((!\inst3|Cpte[6]~DUPLICATE_q\ & !\inst3|Cpte[4]~DUPLICATE_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001001010100110100100101010011000100000001100010010000000110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Cpte[5]~DUPLICATE_q\,
	datab => \inst3|ALT_INV_Cpte[0]~DUPLICATE_q\,
	datac => \inst3|ALT_INV_Cpte[6]~DUPLICATE_q\,
	datad => \inst3|ALT_INV_Cpte[4]~DUPLICATE_q\,
	dataf => \inst3|ALT_INV_Cpte\(3),
	combout => \inst|Mux20~0_combout\);

-- Location: LABCELL_X16_Y78_N54
\inst|Mux20~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux20~3_combout\ = ( \inst3|Cpte[4]~DUPLICATE_q\ & ( \inst3|Cpte\(5) & ( (!\inst3|Cpte\(0) & (!\inst3|Cpte\(2) $ (((!\inst3|Cpte[6]~DUPLICATE_q\) # (\inst3|Cpte\(3)))))) # (\inst3|Cpte\(0) & (((\inst3|Cpte\(3))) # (\inst3|Cpte\(2)))) ) ) ) # ( 
-- !\inst3|Cpte[4]~DUPLICATE_q\ & ( \inst3|Cpte\(5) & ( (!\inst3|Cpte[6]~DUPLICATE_q\ & (!\inst3|Cpte\(3) & (!\inst3|Cpte\(0) $ (!\inst3|Cpte\(2))))) ) ) ) # ( \inst3|Cpte[4]~DUPLICATE_q\ & ( !\inst3|Cpte\(5) & ( (!\inst3|Cpte[6]~DUPLICATE_q\ & 
-- (!\inst3|Cpte\(2) & ((!\inst3|Cpte\(3)) # (\inst3|Cpte\(0))))) # (\inst3|Cpte[6]~DUPLICATE_q\ & ((!\inst3|Cpte\(0) & (\inst3|Cpte\(2) & \inst3|Cpte\(3))) # (\inst3|Cpte\(0) & ((!\inst3|Cpte\(3)))))) ) ) ) # ( !\inst3|Cpte[4]~DUPLICATE_q\ & ( 
-- !\inst3|Cpte\(5) & ( (!\inst3|Cpte\(2) & (\inst3|Cpte\(0) & (!\inst3|Cpte[6]~DUPLICATE_q\ $ (!\inst3|Cpte\(3))))) # (\inst3|Cpte\(2) & (((!\inst3|Cpte\(3)) # (\inst3|Cpte[6]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011101000011110001010100001001100000000000000011100101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Cpte\(0),
	datab => \inst3|ALT_INV_Cpte\(2),
	datac => \inst3|ALT_INV_Cpte[6]~DUPLICATE_q\,
	datad => \inst3|ALT_INV_Cpte\(3),
	datae => \inst3|ALT_INV_Cpte[4]~DUPLICATE_q\,
	dataf => \inst3|ALT_INV_Cpte\(5),
	combout => \inst|Mux20~3_combout\);

-- Location: LABCELL_X17_Y77_N12
\inst|Mux20~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux20~4_combout\ = ( \inst3|Cpte\(2) & ( \inst3|Cpte[6]~DUPLICATE_q\ & ( (!\inst3|Cpte[5]~DUPLICATE_q\ & (!\inst3|Cpte\(4) $ (((\inst3|Cpte[0]~DUPLICATE_q\ & \inst3|Cpte[3]~DUPLICATE_q\))))) # (\inst3|Cpte[5]~DUPLICATE_q\ & 
-- ((!\inst3|Cpte[3]~DUPLICATE_q\ & (\inst3|Cpte[0]~DUPLICATE_q\)) # (\inst3|Cpte[3]~DUPLICATE_q\ & ((!\inst3|Cpte\(4)))))) ) ) ) # ( !\inst3|Cpte\(2) & ( \inst3|Cpte[6]~DUPLICATE_q\ & ( (!\inst3|Cpte[5]~DUPLICATE_q\ & (!\inst3|Cpte\(4) $ 
-- (((!\inst3|Cpte[0]~DUPLICATE_q\ & \inst3|Cpte[3]~DUPLICATE_q\))))) # (\inst3|Cpte[5]~DUPLICATE_q\ & ((!\inst3|Cpte[3]~DUPLICATE_q\ & (!\inst3|Cpte[0]~DUPLICATE_q\)) # (\inst3|Cpte[3]~DUPLICATE_q\ & ((\inst3|Cpte\(4)))))) ) ) ) # ( \inst3|Cpte\(2) & ( 
-- !\inst3|Cpte[6]~DUPLICATE_q\ & ( (!\inst3|Cpte[5]~DUPLICATE_q\ & ((!\inst3|Cpte[3]~DUPLICATE_q\ & ((!\inst3|Cpte\(4)))) # (\inst3|Cpte[3]~DUPLICATE_q\ & (!\inst3|Cpte[0]~DUPLICATE_q\)))) # (\inst3|Cpte[5]~DUPLICATE_q\ & (!\inst3|Cpte[3]~DUPLICATE_q\ $ 
-- (((\inst3|Cpte\(4)) # (\inst3|Cpte[0]~DUPLICATE_q\))))) ) ) ) # ( !\inst3|Cpte\(2) & ( !\inst3|Cpte[6]~DUPLICATE_q\ & ( (!\inst3|Cpte\(4) & (\inst3|Cpte[0]~DUPLICATE_q\ & ((!\inst3|Cpte[5]~DUPLICATE_q\) # (\inst3|Cpte[3]~DUPLICATE_q\)))) # 
-- (\inst3|Cpte\(4) & (((!\inst3|Cpte[0]~DUPLICATE_q\ & !\inst3|Cpte[3]~DUPLICATE_q\)) # (\inst3|Cpte[5]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100101101010011111000001001101111100010010010111101000110110100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Cpte[0]~DUPLICATE_q\,
	datab => \inst3|ALT_INV_Cpte[5]~DUPLICATE_q\,
	datac => \inst3|ALT_INV_Cpte\(4),
	datad => \inst3|ALT_INV_Cpte[3]~DUPLICATE_q\,
	datae => \inst3|ALT_INV_Cpte\(2),
	dataf => \inst3|ALT_INV_Cpte[6]~DUPLICATE_q\,
	combout => \inst|Mux20~4_combout\);

-- Location: LABCELL_X16_Y78_N21
\inst|Mux20~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux20~5_combout\ = ( \inst|Mux20~4_combout\ & ( (\inst|Mux20~3_combout\) # (\inst3|Cpte\(1)) ) ) # ( !\inst|Mux20~4_combout\ & ( (!\inst3|Cpte\(1) & \inst|Mux20~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ALT_INV_Cpte\(1),
	datad => \inst|ALT_INV_Mux20~3_combout\,
	dataf => \inst|ALT_INV_Mux20~4_combout\,
	combout => \inst|Mux20~5_combout\);

-- Location: LABCELL_X16_Y78_N3
\inst|Mux20~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux20~2_combout\ = ( \inst|Mux20~0_combout\ & ( \inst|Mux20~5_combout\ & ( \inst3|Cpte[7]~DUPLICATE_q\ ) ) ) # ( !\inst|Mux20~0_combout\ & ( \inst|Mux20~5_combout\ & ( ((!\inst3|Cpte\(2) & !\inst3|Cpte\(1))) # (\inst3|Cpte[7]~DUPLICATE_q\) ) ) ) # ( 
-- \inst|Mux20~0_combout\ & ( !\inst|Mux20~5_combout\ & ( (!\inst3|Cpte[7]~DUPLICATE_q\ & ((\inst3|Cpte\(1)) # (\inst3|Cpte\(2)))) ) ) ) # ( !\inst|Mux20~0_combout\ & ( !\inst|Mux20~5_combout\ & ( !\inst3|Cpte[7]~DUPLICATE_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010001010100010101011010101110101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Cpte[7]~DUPLICATE_q\,
	datab => \inst3|ALT_INV_Cpte\(2),
	datac => \inst3|ALT_INV_Cpte\(1),
	datae => \inst|ALT_INV_Mux20~0_combout\,
	dataf => \inst|ALT_INV_Mux20~5_combout\,
	combout => \inst|Mux20~2_combout\);

-- Location: LABCELL_X17_Y77_N30
\inst|Mux20~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux20~1_combout\ = ( \inst|Mux22~0_combout\ & ( \inst|Mux20~2_combout\ & ( (!\inst3|Cpte[7]~DUPLICATE_q\ & (!\inst3|Cpts[8]~6_combout\ & (!\inst3|Cpts[9]~2_combout\))) # (\inst3|Cpte[7]~DUPLICATE_q\ & ((!\inst3|Cpts[9]~2_combout\) # 
-- ((!\inst3|Cpts[8]~6_combout\ & \inst|Mux2~0_combout\)))) ) ) ) # ( !\inst|Mux22~0_combout\ & ( \inst|Mux20~2_combout\ & ( (!\inst3|Cpts[9]~2_combout\ & ((!\inst3|Cpts[8]~6_combout\) # (\inst3|Cpte[7]~DUPLICATE_q\))) ) ) ) # ( \inst|Mux22~0_combout\ & ( 
-- !\inst|Mux20~2_combout\ & ( (\inst3|Cpte[7]~DUPLICATE_q\ & ((!\inst3|Cpts[8]~6_combout\ & ((\inst|Mux2~0_combout\))) # (\inst3|Cpts[8]~6_combout\ & (!\inst3|Cpts[9]~2_combout\)))) ) ) ) # ( !\inst|Mux22~0_combout\ & ( !\inst|Mux20~2_combout\ & ( 
-- (\inst3|Cpte[7]~DUPLICATE_q\ & (\inst3|Cpts[8]~6_combout\ & !\inst3|Cpts[9]~2_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010000000100000101010011010000110100001101000011010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Cpte[7]~DUPLICATE_q\,
	datab => \inst3|ALT_INV_Cpts[8]~6_combout\,
	datac => \inst3|ALT_INV_Cpts[9]~2_combout\,
	datad => \inst|ALT_INV_Mux2~0_combout\,
	datae => \inst|ALT_INV_Mux22~0_combout\,
	dataf => \inst|ALT_INV_Mux20~2_combout\,
	combout => \inst|Mux20~1_combout\);

-- Location: FF_X17_Y77_N32
\inst|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst23|CLKs~combout\,
	d => \inst|Mux20~1_combout\,
	clrn => \inst30|Reset_n_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Q\(11));

-- Location: FF_X18_Y76_N56
\inst22|DtR[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst26|CLKs~combout\,
	asdata => \inst|Q\(11),
	sload => VCC,
	ena => \inst22|DtR[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst22|DtR\(11));

-- Location: LABCELL_X19_Y76_N27
\inst22|S~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst22|S~1_combout\ = ( \inst22|DtR\(8) & ( \inst22|DtR\(11) & ( (!\inst22|Cpte[1]~DUPLICATE_q\ & (((!\inst22|Cpte\(0)) # (\inst22|DtR\(10))))) # (\inst22|Cpte[1]~DUPLICATE_q\ & (((\inst22|Cpte\(0))) # (\inst22|DtR\(9)))) ) ) ) # ( !\inst22|DtR\(8) & ( 
-- \inst22|DtR\(11) & ( (!\inst22|Cpte[1]~DUPLICATE_q\ & (((!\inst22|Cpte\(0)) # (\inst22|DtR\(10))))) # (\inst22|Cpte[1]~DUPLICATE_q\ & (\inst22|DtR\(9) & (!\inst22|Cpte\(0)))) ) ) ) # ( \inst22|DtR\(8) & ( !\inst22|DtR\(11) & ( 
-- (!\inst22|Cpte[1]~DUPLICATE_q\ & (((\inst22|Cpte\(0) & \inst22|DtR\(10))))) # (\inst22|Cpte[1]~DUPLICATE_q\ & (((\inst22|Cpte\(0))) # (\inst22|DtR\(9)))) ) ) ) # ( !\inst22|DtR\(8) & ( !\inst22|DtR\(11) & ( (!\inst22|Cpte[1]~DUPLICATE_q\ & 
-- (((\inst22|Cpte\(0) & \inst22|DtR\(10))))) # (\inst22|Cpte[1]~DUPLICATE_q\ & (\inst22|DtR\(9) & (!\inst22|Cpte\(0)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000011010000101010001111110110000101110101011010110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|ALT_INV_Cpte[1]~DUPLICATE_q\,
	datab => \inst22|ALT_INV_DtR\(9),
	datac => \inst22|ALT_INV_Cpte\(0),
	datad => \inst22|ALT_INV_DtR\(10),
	datae => \inst22|ALT_INV_DtR\(8),
	dataf => \inst22|ALT_INV_DtR\(11),
	combout => \inst22|S~1_combout\);

-- Location: LABCELL_X19_Y76_N0
\inst22|Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst22|Selector0~0_combout\ = ( \inst22|S~0_combout\ & ( \inst22|S~1_combout\ & ( \inst22|State.SendR~q\ ) ) ) # ( !\inst22|S~0_combout\ & ( \inst22|S~1_combout\ & ( (\inst22|State.SendR~q\ & \inst22|Cpte[2]~DUPLICATE_q\) ) ) ) # ( \inst22|S~0_combout\ & 
-- ( !\inst22|S~1_combout\ & ( (\inst22|State.SendR~q\ & !\inst22|Cpte[2]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010000000000000000010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|ALT_INV_State.SendR~q\,
	datad => \inst22|ALT_INV_Cpte[2]~DUPLICATE_q\,
	datae => \inst22|ALT_INV_S~0_combout\,
	dataf => \inst22|ALT_INV_S~1_combout\,
	combout => \inst22|Selector0~0_combout\);

-- Location: FF_X19_Y76_N22
\inst22|DtL[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst26|CLKs~combout\,
	asdata => \inst|Q\(9),
	sload => VCC,
	ena => \inst22|DtL[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst22|DtL\(9));

-- Location: LABCELL_X18_Y77_N15
\inst22|DtL[10]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst22|DtL[10]~feeder_combout\ = ( \inst|Q\(10) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst|ALT_INV_Q\(10),
	combout => \inst22|DtL[10]~feeder_combout\);

-- Location: FF_X18_Y77_N17
\inst22|DtL[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst26|CLKs~combout\,
	d => \inst22|DtL[10]~feeder_combout\,
	ena => \inst22|DtL[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst22|DtL\(10));

-- Location: FF_X18_Y77_N14
\inst22|DtL[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst26|CLKs~combout\,
	asdata => \inst|Q\(11),
	sload => VCC,
	ena => \inst22|DtL[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst22|DtL\(11));

-- Location: FF_X18_Y74_N46
\inst22|DtL[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst26|CLKs~combout\,
	asdata => \inst|Q\(8),
	sload => VCC,
	ena => \inst22|DtL[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst22|DtL\(8));

-- Location: LABCELL_X18_Y77_N48
\inst22|S~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst22|S~3_combout\ = ( \inst22|Cpte\(0) & ( \inst22|DtL\(8) & ( (\inst22|Cpte[1]~DUPLICATE_q\) # (\inst22|DtL\(10)) ) ) ) # ( !\inst22|Cpte\(0) & ( \inst22|DtL\(8) & ( (!\inst22|Cpte[1]~DUPLICATE_q\ & ((\inst22|DtL\(11)))) # 
-- (\inst22|Cpte[1]~DUPLICATE_q\ & (\inst22|DtL\(9))) ) ) ) # ( \inst22|Cpte\(0) & ( !\inst22|DtL\(8) & ( (\inst22|DtL\(10) & !\inst22|Cpte[1]~DUPLICATE_q\) ) ) ) # ( !\inst22|Cpte\(0) & ( !\inst22|DtL\(8) & ( (!\inst22|Cpte[1]~DUPLICATE_q\ & 
-- ((\inst22|DtL\(11)))) # (\inst22|Cpte[1]~DUPLICATE_q\ & (\inst22|DtL\(9))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101001100000011000000000101111101010011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|ALT_INV_DtL\(9),
	datab => \inst22|ALT_INV_DtL\(10),
	datac => \inst22|ALT_INV_Cpte[1]~DUPLICATE_q\,
	datad => \inst22|ALT_INV_DtL\(11),
	datae => \inst22|ALT_INV_Cpte\(0),
	dataf => \inst22|ALT_INV_DtL\(8),
	combout => \inst22|S~3_combout\);

-- Location: LABCELL_X19_Y76_N48
\inst22|Selector0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst22|Selector0~1_combout\ = ( \inst22|Selector0~0_combout\ & ( \inst22|S~3_combout\ & ( !\inst22|Cpte[3]~DUPLICATE_q\ ) ) ) # ( !\inst22|Selector0~0_combout\ & ( \inst22|S~3_combout\ & ( (!\inst22|Cpte[3]~DUPLICATE_q\ & (\inst22|State.SendL~q\ & 
-- ((\inst22|Cpte[2]~DUPLICATE_q\) # (\inst22|S~2_combout\)))) ) ) ) # ( \inst22|Selector0~0_combout\ & ( !\inst22|S~3_combout\ & ( !\inst22|Cpte[3]~DUPLICATE_q\ ) ) ) # ( !\inst22|Selector0~0_combout\ & ( !\inst22|S~3_combout\ & ( (\inst22|S~2_combout\ & 
-- (!\inst22|Cpte[2]~DUPLICATE_q\ & (!\inst22|Cpte[3]~DUPLICATE_q\ & \inst22|State.SendL~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000111100001111000000000000011100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|ALT_INV_S~2_combout\,
	datab => \inst22|ALT_INV_Cpte[2]~DUPLICATE_q\,
	datac => \inst22|ALT_INV_Cpte[3]~DUPLICATE_q\,
	datad => \inst22|ALT_INV_State.SendL~q\,
	datae => \inst22|ALT_INV_Selector0~0_combout\,
	dataf => \inst22|ALT_INV_S~3_combout\,
	combout => \inst22|Selector0~1_combout\);

-- Location: LABCELL_X18_Y77_N0
\inst22|Selector0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst22|Selector0~5_combout\ = ( \inst22|Selector0~4_combout\ & ( \inst22|Selector0~1_combout\ & ( ((!\inst22|Cpte\(4)) # (!\inst22|LessThan1~0_combout\)) # (\inst22|Selector0~3_combout\) ) ) ) # ( !\inst22|Selector0~4_combout\ & ( 
-- \inst22|Selector0~1_combout\ & ( (!\inst22|LessThan1~0_combout\ & ((\inst22|Cpte\(4)))) # (\inst22|LessThan1~0_combout\ & (\inst22|Selector0~3_combout\)) ) ) ) # ( \inst22|Selector0~4_combout\ & ( !\inst22|Selector0~1_combout\ & ( (!\inst22|Cpte\(4)) # 
-- ((!\inst22|LessThan1~0_combout\ & ((\inst22|Selector0~2_combout\))) # (\inst22|LessThan1~0_combout\ & (\inst22|Selector0~3_combout\))) ) ) ) # ( !\inst22|Selector0~4_combout\ & ( !\inst22|Selector0~1_combout\ & ( (!\inst22|LessThan1~0_combout\ & 
-- (((\inst22|Cpte\(4) & \inst22|Selector0~2_combout\)))) # (\inst22|LessThan1~0_combout\ & (\inst22|Selector0~3_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101010101110011111101110100110011010101011111111111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|ALT_INV_Selector0~3_combout\,
	datab => \inst22|ALT_INV_Cpte\(4),
	datac => \inst22|ALT_INV_Selector0~2_combout\,
	datad => \inst22|ALT_INV_LessThan1~0_combout\,
	datae => \inst22|ALT_INV_Selector0~4_combout\,
	dataf => \inst22|ALT_INV_Selector0~1_combout\,
	combout => \inst22|Selector0~5_combout\);

-- Location: FF_X18_Y77_N2
\inst22|S\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst26|CLKs~combout\,
	d => \inst22|Selector0~5_combout\,
	clrn => \inst30|Reset_n_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst22|S~q\);

-- Location: FF_X18_Y77_N40
\inst22|SID\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst26|CLKs~combout\,
	asdata => \inst22|State.SendR~q\,
	clrn => \inst30|Reset_n_out~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst22|SID~q\);

-- Location: FF_X18_Y77_N52
\inst22|AND_O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst26|CLKs~combout\,
	asdata => \inst22|Selector7~0_combout\,
	clrn => \inst30|Reset_n_out~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst22|AND_O~q\);

-- Location: LABCELL_X12_Y77_N6
inst5 : cyclonev_lcell_comb
-- Equation(s):
-- \inst5~combout\ = ( \MASTER_CLK~input_o\ & ( \inst22|AND_O~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst22|ALT_INV_AND_O~q\,
	dataf => \ALT_INV_MASTER_CLK~input_o\,
	combout => \inst5~combout\);

-- Location: LABCELL_X18_Y79_N30
\inst27|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst27|Add0~29_sumout\ = SUM(( \inst27|Cpte[0]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))
-- \inst27|Add0~30\ = CARRY(( \inst27|Cpte[0]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst27|ALT_INV_Cpte[0]~DUPLICATE_q\,
	cin => GND,
	sumout => \inst27|Add0~29_sumout\,
	cout => \inst27|Add0~30\);

-- Location: FF_X18_Y79_N31
\inst27|Cpte[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MASTER_CLK~inputCLKENA0_outclk\,
	d => \inst27|Add0~29_sumout\,
	clrn => \inst30|Reset_n_out~q\,
	sclr => \inst27|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst27|Cpte[0]~DUPLICATE_q\);

-- Location: LABCELL_X18_Y79_N33
\inst27|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst27|Add0~33_sumout\ = SUM(( \inst27|Cpte\(1) ) + ( GND ) + ( \inst27|Add0~30\ ))
-- \inst27|Add0~34\ = CARRY(( \inst27|Cpte\(1) ) + ( GND ) + ( \inst27|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst27|ALT_INV_Cpte\(1),
	cin => \inst27|Add0~30\,
	sumout => \inst27|Add0~33_sumout\,
	cout => \inst27|Add0~34\);

-- Location: FF_X18_Y79_N35
\inst27|Cpte[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MASTER_CLK~inputCLKENA0_outclk\,
	d => \inst27|Add0~33_sumout\,
	clrn => \inst30|Reset_n_out~q\,
	sclr => \inst27|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst27|Cpte\(1));

-- Location: LABCELL_X18_Y79_N36
\inst27|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst27|Add0~37_sumout\ = SUM(( \inst27|Cpte\(2) ) + ( GND ) + ( \inst27|Add0~34\ ))
-- \inst27|Add0~38\ = CARRY(( \inst27|Cpte\(2) ) + ( GND ) + ( \inst27|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst27|ALT_INV_Cpte\(2),
	cin => \inst27|Add0~34\,
	sumout => \inst27|Add0~37_sumout\,
	cout => \inst27|Add0~38\);

-- Location: FF_X18_Y79_N38
\inst27|Cpte[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MASTER_CLK~inputCLKENA0_outclk\,
	d => \inst27|Add0~37_sumout\,
	clrn => \inst30|Reset_n_out~q\,
	sclr => \inst27|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst27|Cpte\(2));

-- Location: LABCELL_X18_Y79_N39
\inst27|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst27|Add0~25_sumout\ = SUM(( \inst27|Cpte\(3) ) + ( GND ) + ( \inst27|Add0~38\ ))
-- \inst27|Add0~26\ = CARRY(( \inst27|Cpte\(3) ) + ( GND ) + ( \inst27|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst27|ALT_INV_Cpte\(3),
	cin => \inst27|Add0~38\,
	sumout => \inst27|Add0~25_sumout\,
	cout => \inst27|Add0~26\);

-- Location: FF_X18_Y79_N41
\inst27|Cpte[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MASTER_CLK~inputCLKENA0_outclk\,
	d => \inst27|Add0~25_sumout\,
	clrn => \inst30|Reset_n_out~q\,
	sclr => \inst27|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst27|Cpte\(3));

-- Location: LABCELL_X18_Y79_N42
\inst27|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst27|Add0~41_sumout\ = SUM(( \inst27|Cpte\(4) ) + ( GND ) + ( \inst27|Add0~26\ ))
-- \inst27|Add0~42\ = CARRY(( \inst27|Cpte\(4) ) + ( GND ) + ( \inst27|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst27|ALT_INV_Cpte\(4),
	cin => \inst27|Add0~26\,
	sumout => \inst27|Add0~41_sumout\,
	cout => \inst27|Add0~42\);

-- Location: FF_X18_Y79_N43
\inst27|Cpte[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MASTER_CLK~inputCLKENA0_outclk\,
	d => \inst27|Add0~41_sumout\,
	clrn => \inst30|Reset_n_out~q\,
	sclr => \inst27|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst27|Cpte\(4));

-- Location: LABCELL_X18_Y79_N45
\inst27|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst27|Add0~17_sumout\ = SUM(( \inst27|Cpte\(5) ) + ( GND ) + ( \inst27|Add0~42\ ))
-- \inst27|Add0~18\ = CARRY(( \inst27|Cpte\(5) ) + ( GND ) + ( \inst27|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst27|ALT_INV_Cpte\(5),
	cin => \inst27|Add0~42\,
	sumout => \inst27|Add0~17_sumout\,
	cout => \inst27|Add0~18\);

-- Location: FF_X18_Y79_N47
\inst27|Cpte[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MASTER_CLK~inputCLKENA0_outclk\,
	d => \inst27|Add0~17_sumout\,
	clrn => \inst30|Reset_n_out~q\,
	sclr => \inst27|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst27|Cpte\(5));

-- Location: LABCELL_X18_Y79_N48
\inst27|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst27|Add0~21_sumout\ = SUM(( \inst27|Cpte\(6) ) + ( GND ) + ( \inst27|Add0~18\ ))
-- \inst27|Add0~22\ = CARRY(( \inst27|Cpte\(6) ) + ( GND ) + ( \inst27|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst27|ALT_INV_Cpte\(6),
	cin => \inst27|Add0~18\,
	sumout => \inst27|Add0~21_sumout\,
	cout => \inst27|Add0~22\);

-- Location: FF_X18_Y79_N50
\inst27|Cpte[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MASTER_CLK~inputCLKENA0_outclk\,
	d => \inst27|Add0~21_sumout\,
	clrn => \inst30|Reset_n_out~q\,
	sclr => \inst27|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst27|Cpte\(6));

-- Location: LABCELL_X18_Y79_N51
\inst27|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst27|Add0~45_sumout\ = SUM(( \inst27|Cpte\(7) ) + ( GND ) + ( \inst27|Add0~22\ ))
-- \inst27|Add0~46\ = CARRY(( \inst27|Cpte\(7) ) + ( GND ) + ( \inst27|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst27|ALT_INV_Cpte\(7),
	cin => \inst27|Add0~22\,
	sumout => \inst27|Add0~45_sumout\,
	cout => \inst27|Add0~46\);

-- Location: FF_X18_Y79_N52
\inst27|Cpte[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MASTER_CLK~inputCLKENA0_outclk\,
	d => \inst27|Add0~45_sumout\,
	clrn => \inst30|Reset_n_out~q\,
	sclr => \inst27|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst27|Cpte\(7));

-- Location: LABCELL_X18_Y79_N54
\inst27|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst27|Add0~49_sumout\ = SUM(( \inst27|Cpte\(8) ) + ( GND ) + ( \inst27|Add0~46\ ))
-- \inst27|Add0~50\ = CARRY(( \inst27|Cpte\(8) ) + ( GND ) + ( \inst27|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst27|ALT_INV_Cpte\(8),
	cin => \inst27|Add0~46\,
	sumout => \inst27|Add0~49_sumout\,
	cout => \inst27|Add0~50\);

-- Location: FF_X18_Y79_N55
\inst27|Cpte[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MASTER_CLK~inputCLKENA0_outclk\,
	d => \inst27|Add0~49_sumout\,
	clrn => \inst30|Reset_n_out~q\,
	sclr => \inst27|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst27|Cpte\(8));

-- Location: LABCELL_X18_Y79_N57
\inst27|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst27|Add0~53_sumout\ = SUM(( \inst27|Cpte\(9) ) + ( GND ) + ( \inst27|Add0~50\ ))
-- \inst27|Add0~54\ = CARRY(( \inst27|Cpte\(9) ) + ( GND ) + ( \inst27|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst27|ALT_INV_Cpte\(9),
	cin => \inst27|Add0~50\,
	sumout => \inst27|Add0~53_sumout\,
	cout => \inst27|Add0~54\);

-- Location: FF_X18_Y79_N59
\inst27|Cpte[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MASTER_CLK~inputCLKENA0_outclk\,
	d => \inst27|Add0~53_sumout\,
	clrn => \inst30|Reset_n_out~q\,
	sclr => \inst27|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst27|Cpte\(9));

-- Location: LABCELL_X18_Y78_N0
\inst27|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst27|Add0~61_sumout\ = SUM(( \inst27|Cpte\(10) ) + ( GND ) + ( \inst27|Add0~54\ ))
-- \inst27|Add0~62\ = CARRY(( \inst27|Cpte\(10) ) + ( GND ) + ( \inst27|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst27|ALT_INV_Cpte\(10),
	cin => \inst27|Add0~54\,
	sumout => \inst27|Add0~61_sumout\,
	cout => \inst27|Add0~62\);

-- Location: FF_X18_Y78_N2
\inst27|Cpte[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MASTER_CLK~inputCLKENA0_outclk\,
	d => \inst27|Add0~61_sumout\,
	clrn => \inst30|Reset_n_out~q\,
	sclr => \inst27|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst27|Cpte\(10));

-- Location: LABCELL_X18_Y78_N3
\inst27|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst27|Add0~57_sumout\ = SUM(( \inst27|Cpte\(11) ) + ( GND ) + ( \inst27|Add0~62\ ))
-- \inst27|Add0~58\ = CARRY(( \inst27|Cpte\(11) ) + ( GND ) + ( \inst27|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst27|ALT_INV_Cpte\(11),
	cin => \inst27|Add0~62\,
	sumout => \inst27|Add0~57_sumout\,
	cout => \inst27|Add0~58\);

-- Location: FF_X18_Y78_N5
\inst27|Cpte[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MASTER_CLK~inputCLKENA0_outclk\,
	d => \inst27|Add0~57_sumout\,
	clrn => \inst30|Reset_n_out~q\,
	sclr => \inst27|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst27|Cpte\(11));

-- Location: LABCELL_X18_Y78_N6
\inst27|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst27|Add0~65_sumout\ = SUM(( \inst27|Cpte[12]~DUPLICATE_q\ ) + ( GND ) + ( \inst27|Add0~58\ ))
-- \inst27|Add0~66\ = CARRY(( \inst27|Cpte[12]~DUPLICATE_q\ ) + ( GND ) + ( \inst27|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst27|ALT_INV_Cpte[12]~DUPLICATE_q\,
	cin => \inst27|Add0~58\,
	sumout => \inst27|Add0~65_sumout\,
	cout => \inst27|Add0~66\);

-- Location: FF_X18_Y78_N8
\inst27|Cpte[12]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MASTER_CLK~inputCLKENA0_outclk\,
	d => \inst27|Add0~65_sumout\,
	clrn => \inst30|Reset_n_out~q\,
	sclr => \inst27|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst27|Cpte[12]~DUPLICATE_q\);

-- Location: LABCELL_X18_Y78_N9
\inst27|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst27|Add0~69_sumout\ = SUM(( \inst27|Cpte\(13) ) + ( GND ) + ( \inst27|Add0~66\ ))
-- \inst27|Add0~70\ = CARRY(( \inst27|Cpte\(13) ) + ( GND ) + ( \inst27|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst27|ALT_INV_Cpte\(13),
	cin => \inst27|Add0~66\,
	sumout => \inst27|Add0~69_sumout\,
	cout => \inst27|Add0~70\);

-- Location: FF_X18_Y78_N11
\inst27|Cpte[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MASTER_CLK~inputCLKENA0_outclk\,
	d => \inst27|Add0~69_sumout\,
	clrn => \inst30|Reset_n_out~q\,
	sclr => \inst27|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst27|Cpte\(13));

-- Location: LABCELL_X18_Y78_N12
\inst27|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst27|Add0~73_sumout\ = SUM(( \inst27|Cpte\(14) ) + ( GND ) + ( \inst27|Add0~70\ ))
-- \inst27|Add0~74\ = CARRY(( \inst27|Cpte\(14) ) + ( GND ) + ( \inst27|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst27|ALT_INV_Cpte\(14),
	cin => \inst27|Add0~70\,
	sumout => \inst27|Add0~73_sumout\,
	cout => \inst27|Add0~74\);

-- Location: FF_X18_Y78_N14
\inst27|Cpte[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MASTER_CLK~inputCLKENA0_outclk\,
	d => \inst27|Add0~73_sumout\,
	clrn => \inst30|Reset_n_out~q\,
	sclr => \inst27|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst27|Cpte\(14));

-- Location: LABCELL_X18_Y78_N15
\inst27|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst27|Add0~77_sumout\ = SUM(( \inst27|Cpte\(15) ) + ( GND ) + ( \inst27|Add0~74\ ))
-- \inst27|Add0~78\ = CARRY(( \inst27|Cpte\(15) ) + ( GND ) + ( \inst27|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst27|ALT_INV_Cpte\(15),
	cin => \inst27|Add0~74\,
	sumout => \inst27|Add0~77_sumout\,
	cout => \inst27|Add0~78\);

-- Location: FF_X18_Y78_N17
\inst27|Cpte[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MASTER_CLK~inputCLKENA0_outclk\,
	d => \inst27|Add0~77_sumout\,
	clrn => \inst30|Reset_n_out~q\,
	sclr => \inst27|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst27|Cpte\(15));

-- Location: LABCELL_X18_Y78_N18
\inst27|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst27|Add0~13_sumout\ = SUM(( \inst27|Cpte\(16) ) + ( GND ) + ( \inst27|Add0~78\ ))
-- \inst27|Add0~14\ = CARRY(( \inst27|Cpte\(16) ) + ( GND ) + ( \inst27|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst27|ALT_INV_Cpte\(16),
	cin => \inst27|Add0~78\,
	sumout => \inst27|Add0~13_sumout\,
	cout => \inst27|Add0~14\);

-- Location: FF_X18_Y78_N20
\inst27|Cpte[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MASTER_CLK~inputCLKENA0_outclk\,
	d => \inst27|Add0~13_sumout\,
	clrn => \inst30|Reset_n_out~q\,
	sclr => \inst27|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst27|Cpte\(16));

-- Location: LABCELL_X18_Y78_N21
\inst27|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst27|Add0~9_sumout\ = SUM(( \inst27|Cpte\(17) ) + ( GND ) + ( \inst27|Add0~14\ ))
-- \inst27|Add0~10\ = CARRY(( \inst27|Cpte\(17) ) + ( GND ) + ( \inst27|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst27|ALT_INV_Cpte\(17),
	cin => \inst27|Add0~14\,
	sumout => \inst27|Add0~9_sumout\,
	cout => \inst27|Add0~10\);

-- Location: FF_X18_Y78_N23
\inst27|Cpte[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MASTER_CLK~inputCLKENA0_outclk\,
	d => \inst27|Add0~9_sumout\,
	clrn => \inst30|Reset_n_out~q\,
	sclr => \inst27|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst27|Cpte\(17));

-- Location: LABCELL_X18_Y78_N24
\inst27|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst27|Add0~5_sumout\ = SUM(( \inst27|Cpte\(18) ) + ( GND ) + ( \inst27|Add0~10\ ))
-- \inst27|Add0~6\ = CARRY(( \inst27|Cpte\(18) ) + ( GND ) + ( \inst27|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst27|ALT_INV_Cpte\(18),
	cin => \inst27|Add0~10\,
	sumout => \inst27|Add0~5_sumout\,
	cout => \inst27|Add0~6\);

-- Location: FF_X18_Y78_N26
\inst27|Cpte[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MASTER_CLK~inputCLKENA0_outclk\,
	d => \inst27|Add0~5_sumout\,
	clrn => \inst30|Reset_n_out~q\,
	sclr => \inst27|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst27|Cpte\(18));

-- Location: LABCELL_X18_Y78_N27
\inst27|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst27|Add0~81_sumout\ = SUM(( \inst27|Cpte\(19) ) + ( GND ) + ( \inst27|Add0~6\ ))
-- \inst27|Add0~82\ = CARRY(( \inst27|Cpte\(19) ) + ( GND ) + ( \inst27|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst27|ALT_INV_Cpte\(19),
	cin => \inst27|Add0~6\,
	sumout => \inst27|Add0~81_sumout\,
	cout => \inst27|Add0~82\);

-- Location: FF_X18_Y78_N29
\inst27|Cpte[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MASTER_CLK~inputCLKENA0_outclk\,
	d => \inst27|Add0~81_sumout\,
	clrn => \inst30|Reset_n_out~q\,
	sclr => \inst27|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst27|Cpte\(19));

-- Location: LABCELL_X18_Y78_N30
\inst27|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst27|Add0~85_sumout\ = SUM(( \inst27|Cpte\(20) ) + ( GND ) + ( \inst27|Add0~82\ ))
-- \inst27|Add0~86\ = CARRY(( \inst27|Cpte\(20) ) + ( GND ) + ( \inst27|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst27|ALT_INV_Cpte\(20),
	cin => \inst27|Add0~82\,
	sumout => \inst27|Add0~85_sumout\,
	cout => \inst27|Add0~86\);

-- Location: FF_X18_Y78_N32
\inst27|Cpte[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MASTER_CLK~inputCLKENA0_outclk\,
	d => \inst27|Add0~85_sumout\,
	clrn => \inst30|Reset_n_out~q\,
	sclr => \inst27|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst27|Cpte\(20));

-- Location: LABCELL_X18_Y78_N33
\inst27|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst27|Add0~89_sumout\ = SUM(( \inst27|Cpte\(21) ) + ( GND ) + ( \inst27|Add0~86\ ))
-- \inst27|Add0~90\ = CARRY(( \inst27|Cpte\(21) ) + ( GND ) + ( \inst27|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst27|ALT_INV_Cpte\(21),
	cin => \inst27|Add0~86\,
	sumout => \inst27|Add0~89_sumout\,
	cout => \inst27|Add0~90\);

-- Location: FF_X18_Y78_N35
\inst27|Cpte[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MASTER_CLK~inputCLKENA0_outclk\,
	d => \inst27|Add0~89_sumout\,
	clrn => \inst30|Reset_n_out~q\,
	sclr => \inst27|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst27|Cpte\(21));

-- Location: LABCELL_X18_Y78_N36
\inst27|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst27|Add0~93_sumout\ = SUM(( \inst27|Cpte\(22) ) + ( GND ) + ( \inst27|Add0~90\ ))
-- \inst27|Add0~94\ = CARRY(( \inst27|Cpte\(22) ) + ( GND ) + ( \inst27|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst27|ALT_INV_Cpte\(22),
	cin => \inst27|Add0~90\,
	sumout => \inst27|Add0~93_sumout\,
	cout => \inst27|Add0~94\);

-- Location: FF_X18_Y78_N38
\inst27|Cpte[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MASTER_CLK~inputCLKENA0_outclk\,
	d => \inst27|Add0~93_sumout\,
	clrn => \inst30|Reset_n_out~q\,
	sclr => \inst27|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst27|Cpte\(22));

-- Location: LABCELL_X18_Y78_N39
\inst27|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst27|Add0~97_sumout\ = SUM(( \inst27|Cpte\(23) ) + ( GND ) + ( \inst27|Add0~94\ ))
-- \inst27|Add0~98\ = CARRY(( \inst27|Cpte\(23) ) + ( GND ) + ( \inst27|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst27|ALT_INV_Cpte\(23),
	cin => \inst27|Add0~94\,
	sumout => \inst27|Add0~97_sumout\,
	cout => \inst27|Add0~98\);

-- Location: FF_X18_Y78_N41
\inst27|Cpte[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MASTER_CLK~inputCLKENA0_outclk\,
	d => \inst27|Add0~97_sumout\,
	clrn => \inst30|Reset_n_out~q\,
	sclr => \inst27|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst27|Cpte\(23));

-- Location: LABCELL_X18_Y78_N42
\inst27|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst27|Add0~1_sumout\ = SUM(( \inst27|Cpte\(24) ) + ( GND ) + ( \inst27|Add0~98\ ))
-- \inst27|Add0~2\ = CARRY(( \inst27|Cpte\(24) ) + ( GND ) + ( \inst27|Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst27|ALT_INV_Cpte\(24),
	cin => \inst27|Add0~98\,
	sumout => \inst27|Add0~1_sumout\,
	cout => \inst27|Add0~2\);

-- Location: FF_X18_Y78_N44
\inst27|Cpte[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MASTER_CLK~inputCLKENA0_outclk\,
	d => \inst27|Add0~1_sumout\,
	clrn => \inst30|Reset_n_out~q\,
	sclr => \inst27|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst27|Cpte\(24));

-- Location: LABCELL_X18_Y78_N45
\inst27|Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst27|Add0~101_sumout\ = SUM(( \inst27|Cpte\(25) ) + ( GND ) + ( \inst27|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst27|ALT_INV_Cpte\(25),
	cin => \inst27|Add0~2\,
	sumout => \inst27|Add0~101_sumout\);

-- Location: FF_X18_Y78_N47
\inst27|Cpte[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MASTER_CLK~inputCLKENA0_outclk\,
	d => \inst27|Add0~101_sumout\,
	clrn => \inst30|Reset_n_out~q\,
	sclr => \inst27|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst27|Cpte\(25));

-- Location: FF_X18_Y78_N43
\inst27|Cpte[24]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MASTER_CLK~inputCLKENA0_outclk\,
	d => \inst27|Add0~1_sumout\,
	clrn => \inst30|Reset_n_out~q\,
	sclr => \inst27|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst27|Cpte[24]~DUPLICATE_q\);

-- Location: LABCELL_X18_Y78_N57
\inst27|LessThan0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst27|LessThan0~4_combout\ = ( \inst27|Cpte\(22) & ( \inst27|Cpte\(21) & ( (\inst27|Cpte\(23) & (\inst27|Cpte\(20) & \inst27|Cpte\(19))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst27|ALT_INV_Cpte\(23),
	datac => \inst27|ALT_INV_Cpte\(20),
	datad => \inst27|ALT_INV_Cpte\(19),
	datae => \inst27|ALT_INV_Cpte\(22),
	dataf => \inst27|ALT_INV_Cpte\(21),
	combout => \inst27|LessThan0~4_combout\);

-- Location: FF_X18_Y79_N32
\inst27|Cpte[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MASTER_CLK~inputCLKENA0_outclk\,
	d => \inst27|Add0~29_sumout\,
	clrn => \inst30|Reset_n_out~q\,
	sclr => \inst27|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst27|Cpte\(0));

-- Location: LABCELL_X18_Y79_N24
\inst27|LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst27|LessThan0~0_combout\ = ( \inst27|Cpte\(0) & ( (\inst27|Cpte\(2) & (\inst27|Cpte\(3) & (\inst27|Cpte\(1) & \inst27|Cpte\(4)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst27|ALT_INV_Cpte\(2),
	datab => \inst27|ALT_INV_Cpte\(3),
	datac => \inst27|ALT_INV_Cpte\(1),
	datad => \inst27|ALT_INV_Cpte\(4),
	dataf => \inst27|ALT_INV_Cpte\(0),
	combout => \inst27|LessThan0~0_combout\);

-- Location: FF_X18_Y78_N19
\inst27|Cpte[16]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MASTER_CLK~inputCLKENA0_outclk\,
	d => \inst27|Add0~13_sumout\,
	clrn => \inst30|Reset_n_out~q\,
	sclr => \inst27|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst27|Cpte[16]~DUPLICATE_q\);

-- Location: FF_X18_Y78_N7
\inst27|Cpte[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MASTER_CLK~inputCLKENA0_outclk\,
	d => \inst27|Add0~65_sumout\,
	clrn => \inst30|Reset_n_out~q\,
	sclr => \inst27|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst27|Cpte\(12));

-- Location: LABCELL_X18_Y78_N48
\inst27|LessThan0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst27|LessThan0~2_combout\ = ( \inst27|Cpte\(12) & ( \inst27|Cpte\(14) & ( (\inst27|Cpte\(13) & \inst27|Cpte\(15)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst27|ALT_INV_Cpte\(13),
	datad => \inst27|ALT_INV_Cpte\(15),
	datae => \inst27|ALT_INV_Cpte\(12),
	dataf => \inst27|ALT_INV_Cpte\(14),
	combout => \inst27|LessThan0~2_combout\);

-- Location: FF_X18_Y78_N4
\inst27|Cpte[11]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MASTER_CLK~inputCLKENA0_outclk\,
	d => \inst27|Add0~57_sumout\,
	clrn => \inst30|Reset_n_out~q\,
	sclr => \inst27|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst27|Cpte[11]~DUPLICATE_q\);

-- Location: LABCELL_X18_Y79_N6
\inst27|LessThan0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst27|LessThan0~1_combout\ = ( !\inst27|Cpte\(8) & ( !\inst27|Cpte\(10) & ( (!\inst27|Cpte\(9) & (!\inst27|Cpte[11]~DUPLICATE_q\ & !\inst27|Cpte\(7))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst27|ALT_INV_Cpte\(9),
	datac => \inst27|ALT_INV_Cpte[11]~DUPLICATE_q\,
	datad => \inst27|ALT_INV_Cpte\(7),
	datae => \inst27|ALT_INV_Cpte\(8),
	dataf => \inst27|ALT_INV_Cpte\(10),
	combout => \inst27|LessThan0~1_combout\);

-- Location: LABCELL_X18_Y79_N12
\inst27|LessThan0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst27|LessThan0~3_combout\ = ( \inst27|LessThan0~2_combout\ & ( \inst27|LessThan0~1_combout\ & ( (!\inst27|Cpte[16]~DUPLICATE_q\ & ((!\inst27|Cpte\(6)) # ((!\inst27|Cpte\(5)) # (!\inst27|LessThan0~0_combout\)))) ) ) ) # ( !\inst27|LessThan0~2_combout\ & 
-- ( \inst27|LessThan0~1_combout\ & ( !\inst27|Cpte[16]~DUPLICATE_q\ ) ) ) # ( !\inst27|LessThan0~2_combout\ & ( !\inst27|LessThan0~1_combout\ & ( !\inst27|Cpte[16]~DUPLICATE_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000000000000000000011111111000000001111111000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst27|ALT_INV_Cpte\(6),
	datab => \inst27|ALT_INV_Cpte\(5),
	datac => \inst27|ALT_INV_LessThan0~0_combout\,
	datad => \inst27|ALT_INV_Cpte[16]~DUPLICATE_q\,
	datae => \inst27|ALT_INV_LessThan0~2_combout\,
	dataf => \inst27|ALT_INV_LessThan0~1_combout\,
	combout => \inst27|LessThan0~3_combout\);

-- Location: LABCELL_X18_Y79_N18
\inst27|LessThan0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst27|LessThan0~5_combout\ = ( \inst27|Cpte\(18) & ( \inst27|LessThan0~3_combout\ & ( (\inst27|Cpte\(25) & ((\inst27|LessThan0~4_combout\) # (\inst27|Cpte[24]~DUPLICATE_q\))) ) ) ) # ( !\inst27|Cpte\(18) & ( \inst27|LessThan0~3_combout\ & ( 
-- (\inst27|Cpte\(25) & \inst27|Cpte[24]~DUPLICATE_q\) ) ) ) # ( \inst27|Cpte\(18) & ( !\inst27|LessThan0~3_combout\ & ( (\inst27|Cpte\(25) & ((\inst27|LessThan0~4_combout\) # (\inst27|Cpte[24]~DUPLICATE_q\))) ) ) ) # ( !\inst27|Cpte\(18) & ( 
-- !\inst27|LessThan0~3_combout\ & ( (\inst27|Cpte\(25) & (((\inst27|Cpte\(17) & \inst27|LessThan0~4_combout\)) # (\inst27|Cpte[24]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100010011000000110011001100000011000000110000001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst27|ALT_INV_Cpte\(17),
	datab => \inst27|ALT_INV_Cpte\(25),
	datac => \inst27|ALT_INV_Cpte[24]~DUPLICATE_q\,
	datad => \inst27|ALT_INV_LessThan0~4_combout\,
	datae => \inst27|ALT_INV_Cpte\(18),
	dataf => \inst27|ALT_INV_LessThan0~3_combout\,
	combout => \inst27|LessThan0~5_combout\);

-- Location: LABCELL_X18_Y79_N27
\inst27|So~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst27|So~0_combout\ = ( \inst27|LessThan0~5_combout\ & ( !\inst30|Reset_n_out~q\ $ (!\inst27|So~q\) ) ) # ( !\inst27|LessThan0~5_combout\ & ( \inst27|So~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst30|ALT_INV_Reset_n_out~q\,
	datad => \inst27|ALT_INV_So~q\,
	dataf => \inst27|ALT_INV_LessThan0~5_combout\,
	combout => \inst27|So~0_combout\);

-- Location: FF_X18_Y79_N28
\inst27|So\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MASTER_CLK~inputCLKENA0_outclk\,
	d => \inst27|So~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst27|So~q\);

-- Location: LABCELL_X51_Y9_N0
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


