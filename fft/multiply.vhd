-- megafunction wizard: %ALTMULT_ADD%
-- GENERATION: STANDARD
-- VERSION: WM1.0
-- MODULE: ALTMULT_ADD 

-- ============================================================
-- File Name: multiply.vhd
-- Megafunction Name(s):
-- 			ALTMULT_ADD
--
-- Simulation Library Files(s):
-- 			altera_mf
-- ============================================================
-- ************************************************************
-- THIS IS A WIZARD-GENERATED FILE. DO NOT EDIT THIS FILE!
--
-- 13.0.1 Build 232 06/12/2013 SP 1 SJ Web Edition
-- ************************************************************


--Copyright (C) 1991-2013 Altera Corporation
--Your use of Altera Corporation's design tools, logic functions 
--and other software and tools, and its AMPP partner logic 
--functions, and any output files from any of the foregoing 
--(including device programming or simulation files), and any 
--associated documentation or information are expressly subject 
--to the terms and conditions of the Altera Program License 
--Subscription Agreement, Altera MegaCore Function License 
--Agreement, or other applicable license agreement, including, 
--without limitation, that your use is for the sole purpose of 
--programming logic devices manufactured by Altera and sold by 
--Altera or its authorized distributors.  Please refer to the 
--applicable agreement for further details.


LIBRARY ieee;
USE ieee.std_logic_1164.all;

LIBRARY altera_mf;
USE altera_mf.all;

ENTITY multiply IS
	PORT
	(
		clock0		: IN STD_LOGIC  := '1';
		dataa_0		: IN STD_LOGIC_VECTOR (9 DOWNTO 0) :=  (OTHERS => '0');
		dataa_1		: IN STD_LOGIC_VECTOR (9 DOWNTO 0) :=  (OTHERS => '0');
		datab_0		: IN STD_LOGIC_VECTOR (9 DOWNTO 0) :=  (OTHERS => '0');
		datab_1		: IN STD_LOGIC_VECTOR (9 DOWNTO 0) :=  (OTHERS => '0');
		result		: OUT STD_LOGIC_VECTOR (20 DOWNTO 0)
	);
END multiply;


ARCHITECTURE SYN OF multiply IS

	SIGNAL sub_wire0	: STD_LOGIC_VECTOR (20 DOWNTO 0);
	SIGNAL sub_wire1	: STD_LOGIC_VECTOR (9 DOWNTO 0);
	SIGNAL sub_wire2	: STD_LOGIC_VECTOR (19 DOWNTO 0);
	SIGNAL sub_wire3	: STD_LOGIC_VECTOR (9 DOWNTO 0);
	SIGNAL sub_wire4	: STD_LOGIC_VECTOR (9 DOWNTO 0);
	SIGNAL sub_wire5	: STD_LOGIC_VECTOR (19 DOWNTO 0);
	SIGNAL sub_wire6	: STD_LOGIC_VECTOR (9 DOWNTO 0);



	COMPONENT altmult_add
	GENERIC (
		addnsub_multiplier_aclr1		: STRING;
		addnsub_multiplier_pipeline_aclr1		: STRING;
		addnsub_multiplier_pipeline_register1		: STRING;
		addnsub_multiplier_register1		: STRING;
		dedicated_multiplier_circuitry		: STRING;
		input_aclr_a0		: STRING;
		input_aclr_a1		: STRING;
		input_aclr_b0		: STRING;
		input_aclr_b1		: STRING;
		input_register_a0		: STRING;
		input_register_a1		: STRING;
		input_register_b0		: STRING;
		input_register_b1		: STRING;
		input_source_a0		: STRING;
		input_source_a1		: STRING;
		input_source_b0		: STRING;
		input_source_b1		: STRING;
		intended_device_family		: STRING;
		lpm_type		: STRING;
		multiplier1_direction		: STRING;
		multiplier_aclr0		: STRING;
		multiplier_aclr1		: STRING;
		multiplier_register0		: STRING;
		multiplier_register1		: STRING;
		number_of_multipliers		: NATURAL;
		output_aclr		: STRING;
		output_register		: STRING;
		port_addnsub1		: STRING;
		port_signa		: STRING;
		port_signb		: STRING;
		representation_a		: STRING;
		representation_b		: STRING;
		signed_aclr_a		: STRING;
		signed_aclr_b		: STRING;
		signed_pipeline_aclr_a		: STRING;
		signed_pipeline_aclr_b		: STRING;
		signed_pipeline_register_a		: STRING;
		signed_pipeline_register_b		: STRING;
		signed_register_a		: STRING;
		signed_register_b		: STRING;
		width_a		: NATURAL;
		width_b		: NATURAL;
		width_result		: NATURAL
	);
	PORT (
			clock0	: IN STD_LOGIC ;
			dataa	: IN STD_LOGIC_VECTOR (19 DOWNTO 0);
			datab	: IN STD_LOGIC_VECTOR (19 DOWNTO 0);
			result	: OUT STD_LOGIC_VECTOR (20 DOWNTO 0)
	);
	END COMPONENT;

BEGIN
	sub_wire6    <= datab_1(9 DOWNTO 0);
	sub_wire3    <= dataa_1(9 DOWNTO 0);
	result    <= sub_wire0(20 DOWNTO 0);
	sub_wire1    <= dataa_0(9 DOWNTO 0);
	sub_wire2    <= sub_wire3(9 DOWNTO 0) & sub_wire1(9 DOWNTO 0);
	sub_wire4    <= datab_0(9 DOWNTO 0);
	sub_wire5    <= sub_wire6(9 DOWNTO 0) & sub_wire4(9 DOWNTO 0);

	ALTMULT_ADD_component : ALTMULT_ADD
	GENERIC MAP (
		addnsub_multiplier_aclr1 => "UNUSED",
		addnsub_multiplier_pipeline_aclr1 => "UNUSED",
		addnsub_multiplier_pipeline_register1 => "CLOCK0",
		addnsub_multiplier_register1 => "CLOCK0",
		dedicated_multiplier_circuitry => "YES",
		input_aclr_a0 => "UNUSED",
		input_aclr_a1 => "UNUSED",
		input_aclr_b0 => "UNUSED",
		input_aclr_b1 => "UNUSED",
		input_register_a0 => "CLOCK0",
		input_register_a1 => "CLOCK0",
		input_register_b0 => "CLOCK0",
		input_register_b1 => "CLOCK0",
		input_source_a0 => "DATAA",
		input_source_a1 => "DATAA",
		input_source_b0 => "DATAB",
		input_source_b1 => "DATAB",
		intended_device_family => "Cyclone III",
		lpm_type => "altmult_add",
		multiplier1_direction => "ADD",
		multiplier_aclr0 => "UNUSED",
		multiplier_aclr1 => "UNUSED",
		multiplier_register0 => "CLOCK0",
		multiplier_register1 => "CLOCK0",
		number_of_multipliers => 2,
		output_aclr => "UNUSED",
		output_register => "CLOCK0",
		port_addnsub1 => "PORT_UNUSED",
		port_signa => "PORT_UNUSED",
		port_signb => "PORT_UNUSED",
		representation_a => "UNSIGNED",
		representation_b => "UNSIGNED",
		signed_aclr_a => "UNUSED",
		signed_aclr_b => "UNUSED",
		signed_pipeline_aclr_a => "UNUSED",
		signed_pipeline_aclr_b => "UNUSED",
		signed_pipeline_register_a => "CLOCK0",
		signed_pipeline_register_b => "CLOCK0",
		signed_register_a => "CLOCK0",
		signed_register_b => "CLOCK0",
		width_a => 10,
		width_b => 10,
		width_result => 21
	)
	PORT MAP (
		clock0 => clock0,
		dataa => sub_wire2,
		datab => sub_wire5,
		result => sub_wire0
	);



END SYN;

-- ============================================================
-- CNX file retrieval info
-- ============================================================
-- Retrieval info: PRIVATE: ADDER1_ROUND_ACLR_SRC NUMERIC "3"
-- Retrieval info: PRIVATE: ADDER1_ROUND_CLK_SRC NUMERIC "0"
-- Retrieval info: PRIVATE: ADDER1_ROUND_OP STRING "Enabled"
-- Retrieval info: PRIVATE: ADDER1_ROUND_PIPE_ACLR_SRC NUMERIC "3"
-- Retrieval info: PRIVATE: ADDER1_ROUND_PIPE_CLK_SRC NUMERIC "0"
-- Retrieval info: PRIVATE: ADDER1_ROUND_PIPE_REG STRING "1"
-- Retrieval info: PRIVATE: ADDER1_ROUND_REG STRING "1"
-- Retrieval info: PRIVATE: ADDER1_SAT_ACLR_SRC NUMERIC "3"
-- Retrieval info: PRIVATE: ADDER1_SAT_CLK_SRC NUMERIC "0"
-- Retrieval info: PRIVATE: ADDER1_SAT_OP STRING "Enabled"
-- Retrieval info: PRIVATE: ADDER1_SAT_OVERFLOW_OUT NUMERIC "0"
-- Retrieval info: PRIVATE: ADDER1_SAT_PIPE_ACLR_SRC NUMERIC "3"
-- Retrieval info: PRIVATE: ADDER1_SAT_PIPE_CLK_SRC NUMERIC "0"
-- Retrieval info: PRIVATE: ADDER1_SAT_PIPE_REG STRING "0"
-- Retrieval info: PRIVATE: ADDER1_SAT_REG STRING "0"
-- Retrieval info: PRIVATE: ADDER3_ROUND_ACLR_SRC NUMERIC "3"
-- Retrieval info: PRIVATE: ADDER3_ROUND_CLK_SRC NUMERIC "0"
-- Retrieval info: PRIVATE: ADDER3_ROUND_OP STRING "Enabled"
-- Retrieval info: PRIVATE: ADDER3_ROUND_PIPE_ACLR_SRC NUMERIC "3"
-- Retrieval info: PRIVATE: ADDER3_ROUND_PIPE_CLK_SRC NUMERIC "0"
-- Retrieval info: PRIVATE: ADDER3_ROUND_PIPE_REG STRING "1"
-- Retrieval info: PRIVATE: ADDER3_ROUND_REG STRING "1"
-- Retrieval info: PRIVATE: ADDNSUB1_ACLR_SRC NUMERIC "3"
-- Retrieval info: PRIVATE: ADDNSUB1_CLK_SRC NUMERIC "0"
-- Retrieval info: PRIVATE: ADDNSUB1_PIPE_ACLR_SRC NUMERIC "3"
-- Retrieval info: PRIVATE: ADDNSUB1_PIPE_CLK_SRC NUMERIC "0"
-- Retrieval info: PRIVATE: ADDNSUB1_PIPE_REG STRING "1"
-- Retrieval info: PRIVATE: ADDNSUB1_REG STRING "1"
-- Retrieval info: PRIVATE: ADDNSUB3_ACLR_SRC NUMERIC "3"
-- Retrieval info: PRIVATE: ADDNSUB3_CLK_SRC NUMERIC "0"
-- Retrieval info: PRIVATE: ADDNSUB3_PIPE_ACLR_SRC NUMERIC "3"
-- Retrieval info: PRIVATE: ADDNSUB3_PIPE_CLK_SRC NUMERIC "0"
-- Retrieval info: PRIVATE: ADDNSUB3_PIPE_REG STRING "1"
-- Retrieval info: PRIVATE: ADDNSUB3_REG STRING "1"
-- Retrieval info: PRIVATE: ADD_ENABLE NUMERIC "0"
-- Retrieval info: PRIVATE: ALL_REG_ACLR NUMERIC "0"
-- Retrieval info: PRIVATE: A_ACLR_SRC_MULT0 NUMERIC "3"
-- Retrieval info: PRIVATE: A_CLK_SRC_MULT0 NUMERIC "0"
-- Retrieval info: PRIVATE: B_ACLR_SRC_MULT0 NUMERIC "3"
-- Retrieval info: PRIVATE: B_CLK_SRC_MULT0 NUMERIC "0"
-- Retrieval info: PRIVATE: HAS_MAC STRING "0"
-- Retrieval info: PRIVATE: HAS_SAT_ROUND STRING "0"
-- Retrieval info: PRIVATE: IMPL_STYLE_DEDICATED NUMERIC "1"
-- Retrieval info: PRIVATE: IMPL_STYLE_DEFAULT NUMERIC "0"
-- Retrieval info: PRIVATE: IMPL_STYLE_LCELL NUMERIC "0"
-- Retrieval info: PRIVATE: INTENDED_DEVICE_FAMILY STRING "Cyclone III"
-- Retrieval info: PRIVATE: MULT01_ROUND_ACLR_SRC NUMERIC "3"
-- Retrieval info: PRIVATE: MULT01_ROUND_CLK_SRC NUMERIC "0"
-- Retrieval info: PRIVATE: MULT01_ROUND_OP STRING "Enabled"
-- Retrieval info: PRIVATE: MULT01_ROUND_PIPE_ACLR_SRC NUMERIC "3"
-- Retrieval info: PRIVATE: MULT01_ROUND_PIPE_CLK_SRC NUMERIC "0"
-- Retrieval info: PRIVATE: MULT01_ROUND_PIPE_REG STRING "0"
-- Retrieval info: PRIVATE: MULT01_ROUND_REG STRING "1"
-- Retrieval info: PRIVATE: MULT01_SAT_ACLR_SRC NUMERIC "3"
-- Retrieval info: PRIVATE: MULT01_SAT_CLK_SRC NUMERIC "0"
-- Retrieval info: PRIVATE: MULT01_SAT_OP STRING "Enabled"
-- Retrieval info: PRIVATE: MULT01_SAT_PIPE_ACLR_SRC NUMERIC "3"
-- Retrieval info: PRIVATE: MULT01_SAT_PIPE_CLK_SRC NUMERIC "0"
-- Retrieval info: PRIVATE: MULT01_SAT_PIPE_REG STRING "0"
-- Retrieval info: PRIVATE: MULT01_SAT_REG STRING "1"
-- Retrieval info: PRIVATE: MULT0_SAT_OVERFLOW_OUT NUMERIC "0"
-- Retrieval info: PRIVATE: MULT1_SAT_OVERFLOW_OUT NUMERIC "0"
-- Retrieval info: PRIVATE: MULT23_ROUND_ACLR_SRC NUMERIC "3"
-- Retrieval info: PRIVATE: MULT23_ROUND_CLK_SRC NUMERIC "0"
-- Retrieval info: PRIVATE: MULT23_ROUND_OP STRING "Enabled"
-- Retrieval info: PRIVATE: MULT23_ROUND_PIPE_ACLR_SRC NUMERIC "3"
-- Retrieval info: PRIVATE: MULT23_ROUND_PIPE_CLK_SRC NUMERIC "0"
-- Retrieval info: PRIVATE: MULT23_ROUND_PIPE_REG STRING "0"
-- Retrieval info: PRIVATE: MULT23_ROUND_REG STRING "1"
-- Retrieval info: PRIVATE: MULT23_SAT_ACLR_SRC NUMERIC "3"
-- Retrieval info: PRIVATE: MULT23_SAT_CLK_SRC NUMERIC "0"
-- Retrieval info: PRIVATE: MULT23_SAT_OP STRING "Enabled"
-- Retrieval info: PRIVATE: MULT23_SAT_PIPE_ACLR_SRC NUMERIC "3"
-- Retrieval info: PRIVATE: MULT23_SAT_PIPE_CLK_SRC NUMERIC "0"
-- Retrieval info: PRIVATE: MULT23_SAT_PIPE_REG STRING "0"
-- Retrieval info: PRIVATE: MULT23_SAT_REG STRING "1"
-- Retrieval info: PRIVATE: MULT2_SAT_OVERFLOW_OUT NUMERIC "0"
-- Retrieval info: PRIVATE: MULT3_SAT_OVERFLOW_OUT NUMERIC "0"
-- Retrieval info: PRIVATE: MULT_REGA0 NUMERIC "1"
-- Retrieval info: PRIVATE: MULT_REGB0 NUMERIC "1"
-- Retrieval info: PRIVATE: MULT_REGOUT0 NUMERIC "1"
-- Retrieval info: PRIVATE: NUM_MULT STRING "2"
-- Retrieval info: PRIVATE: OP1 STRING "Add"
-- Retrieval info: PRIVATE: OP3 STRING "Add"
-- Retrieval info: PRIVATE: OUTPUT_EXTRA_LAT NUMERIC "0"
-- Retrieval info: PRIVATE: OUTPUT_REG_ACLR_SRC NUMERIC "3"
-- Retrieval info: PRIVATE: OUTPUT_REG_CLK_SRC NUMERIC "0"
-- Retrieval info: PRIVATE: Q_ACLR_SRC_MULT0 NUMERIC "3"
-- Retrieval info: PRIVATE: Q_CLK_SRC_MULT0 NUMERIC "0"
-- Retrieval info: PRIVATE: REG_OUT NUMERIC "1"
-- Retrieval info: PRIVATE: RNFORMAT STRING "21"
-- Retrieval info: PRIVATE: RQFORMAT STRING "Q1.15"
-- Retrieval info: PRIVATE: RTS_WIDTH STRING "21"
-- Retrieval info: PRIVATE: SAME_CONFIG NUMERIC "1"
-- Retrieval info: PRIVATE: SAME_CONTROL_SRC_A0 NUMERIC "1"
-- Retrieval info: PRIVATE: SAME_CONTROL_SRC_B0 NUMERIC "1"
-- Retrieval info: PRIVATE: SCANOUTA NUMERIC "0"
-- Retrieval info: PRIVATE: SCANOUTB NUMERIC "0"
-- Retrieval info: PRIVATE: SHIFTOUTA_ACLR_SRC NUMERIC "3"
-- Retrieval info: PRIVATE: SHIFTOUTA_CLK_SRC NUMERIC "0"
-- Retrieval info: PRIVATE: SHIFTOUTA_REG STRING "0"
-- Retrieval info: PRIVATE: SIGNA STRING "UNSIGNED"
-- Retrieval info: PRIVATE: SIGNA_ACLR_SRC NUMERIC "3"
-- Retrieval info: PRIVATE: SIGNA_CLK_SRC NUMERIC "0"
-- Retrieval info: PRIVATE: SIGNA_PIPE_ACLR_SRC NUMERIC "3"
-- Retrieval info: PRIVATE: SIGNA_PIPE_CLK_SRC NUMERIC "0"
-- Retrieval info: PRIVATE: SIGNA_PIPE_REG STRING "1"
-- Retrieval info: PRIVATE: SIGNA_REG STRING "1"
-- Retrieval info: PRIVATE: SIGNB STRING "UNSIGNED"
-- Retrieval info: PRIVATE: SIGNB_ACLR_SRC NUMERIC "3"
-- Retrieval info: PRIVATE: SIGNB_CLK_SRC NUMERIC "0"
-- Retrieval info: PRIVATE: SIGNB_PIPE_ACLR_SRC NUMERIC "3"
-- Retrieval info: PRIVATE: SIGNB_PIPE_CLK_SRC NUMERIC "0"
-- Retrieval info: PRIVATE: SIGNB_PIPE_REG STRING "1"
-- Retrieval info: PRIVATE: SIGNB_REG STRING "1"
-- Retrieval info: PRIVATE: SRCA0 STRING "Multiplier input"
-- Retrieval info: PRIVATE: SRCB0 STRING "Multiplier input"
-- Retrieval info: PRIVATE: SYNTH_WRAPPER_GEN_POSTFIX STRING "0"
-- Retrieval info: PRIVATE: WIDTHA STRING "10"
-- Retrieval info: PRIVATE: WIDTHB STRING "10"
-- Retrieval info: LIBRARY: altera_mf altera_mf.altera_mf_components.all
-- Retrieval info: CONSTANT: ADDNSUB_MULTIPLIER_ACLR1 STRING "UNUSED"
-- Retrieval info: CONSTANT: ADDNSUB_MULTIPLIER_PIPELINE_ACLR1 STRING "UNUSED"
-- Retrieval info: CONSTANT: ADDNSUB_MULTIPLIER_PIPELINE_REGISTER1 STRING "CLOCK0"
-- Retrieval info: CONSTANT: ADDNSUB_MULTIPLIER_REGISTER1 STRING "CLOCK0"
-- Retrieval info: CONSTANT: DEDICATED_MULTIPLIER_CIRCUITRY STRING "YES"
-- Retrieval info: CONSTANT: INPUT_ACLR_A0 STRING "UNUSED"
-- Retrieval info: CONSTANT: INPUT_ACLR_A1 STRING "UNUSED"
-- Retrieval info: CONSTANT: INPUT_ACLR_B0 STRING "UNUSED"
-- Retrieval info: CONSTANT: INPUT_ACLR_B1 STRING "UNUSED"
-- Retrieval info: CONSTANT: INPUT_REGISTER_A0 STRING "CLOCK0"
-- Retrieval info: CONSTANT: INPUT_REGISTER_A1 STRING "CLOCK0"
-- Retrieval info: CONSTANT: INPUT_REGISTER_B0 STRING "CLOCK0"
-- Retrieval info: CONSTANT: INPUT_REGISTER_B1 STRING "CLOCK0"
-- Retrieval info: CONSTANT: INPUT_SOURCE_A0 STRING "DATAA"
-- Retrieval info: CONSTANT: INPUT_SOURCE_A1 STRING "DATAA"
-- Retrieval info: CONSTANT: INPUT_SOURCE_B0 STRING "DATAB"
-- Retrieval info: CONSTANT: INPUT_SOURCE_B1 STRING "DATAB"
-- Retrieval info: CONSTANT: INTENDED_DEVICE_FAMILY STRING "Cyclone III"
-- Retrieval info: CONSTANT: LPM_TYPE STRING "altmult_add"
-- Retrieval info: CONSTANT: MULTIPLIER1_DIRECTION STRING "ADD"
-- Retrieval info: CONSTANT: MULTIPLIER_ACLR0 STRING "UNUSED"
-- Retrieval info: CONSTANT: MULTIPLIER_ACLR1 STRING "UNUSED"
-- Retrieval info: CONSTANT: MULTIPLIER_REGISTER0 STRING "CLOCK0"
-- Retrieval info: CONSTANT: MULTIPLIER_REGISTER1 STRING "CLOCK0"
-- Retrieval info: CONSTANT: NUMBER_OF_MULTIPLIERS NUMERIC "2"
-- Retrieval info: CONSTANT: OUTPUT_ACLR STRING "UNUSED"
-- Retrieval info: CONSTANT: OUTPUT_REGISTER STRING "CLOCK0"
-- Retrieval info: CONSTANT: PORT_ADDNSUB1 STRING "PORT_UNUSED"
-- Retrieval info: CONSTANT: PORT_SIGNA STRING "PORT_UNUSED"
-- Retrieval info: CONSTANT: PORT_SIGNB STRING "PORT_UNUSED"
-- Retrieval info: CONSTANT: REPRESENTATION_A STRING "UNSIGNED"
-- Retrieval info: CONSTANT: REPRESENTATION_B STRING "UNSIGNED"
-- Retrieval info: CONSTANT: SIGNED_ACLR_A STRING "UNUSED"
-- Retrieval info: CONSTANT: SIGNED_ACLR_B STRING "UNUSED"
-- Retrieval info: CONSTANT: SIGNED_PIPELINE_ACLR_A STRING "UNUSED"
-- Retrieval info: CONSTANT: SIGNED_PIPELINE_ACLR_B STRING "UNUSED"
-- Retrieval info: CONSTANT: SIGNED_PIPELINE_REGISTER_A STRING "CLOCK0"
-- Retrieval info: CONSTANT: SIGNED_PIPELINE_REGISTER_B STRING "CLOCK0"
-- Retrieval info: CONSTANT: SIGNED_REGISTER_A STRING "CLOCK0"
-- Retrieval info: CONSTANT: SIGNED_REGISTER_B STRING "CLOCK0"
-- Retrieval info: CONSTANT: WIDTH_A NUMERIC "10"
-- Retrieval info: CONSTANT: WIDTH_B NUMERIC "10"
-- Retrieval info: CONSTANT: WIDTH_RESULT NUMERIC "21"
-- Retrieval info: USED_PORT: clock0 0 0 0 0 INPUT VCC "clock0"
-- Retrieval info: USED_PORT: dataa_0 0 0 10 0 INPUT GND "dataa_0[9..0]"
-- Retrieval info: USED_PORT: dataa_1 0 0 10 0 INPUT GND "dataa_1[9..0]"
-- Retrieval info: USED_PORT: datab_0 0 0 10 0 INPUT GND "datab_0[9..0]"
-- Retrieval info: USED_PORT: datab_1 0 0 10 0 INPUT GND "datab_1[9..0]"
-- Retrieval info: USED_PORT: result 0 0 21 0 OUTPUT GND "result[20..0]"
-- Retrieval info: CONNECT: @clock0 0 0 0 0 clock0 0 0 0 0
-- Retrieval info: CONNECT: @dataa 0 0 10 0 dataa_0 0 0 10 0
-- Retrieval info: CONNECT: @dataa 0 0 10 10 dataa_1 0 0 10 0
-- Retrieval info: CONNECT: @datab 0 0 10 0 datab_0 0 0 10 0
-- Retrieval info: CONNECT: @datab 0 0 10 10 datab_1 0 0 10 0
-- Retrieval info: CONNECT: result 0 0 21 0 @result 0 0 21 0
-- Retrieval info: GEN_FILE: TYPE_NORMAL multiply.vhd TRUE
-- Retrieval info: GEN_FILE: TYPE_NORMAL multiply.inc FALSE
-- Retrieval info: GEN_FILE: TYPE_NORMAL multiply.cmp TRUE
-- Retrieval info: GEN_FILE: TYPE_NORMAL multiply.bsf FALSE
-- Retrieval info: GEN_FILE: TYPE_NORMAL multiply_inst.vhd FALSE
-- Retrieval info: LIB_FILE: altera_mf
