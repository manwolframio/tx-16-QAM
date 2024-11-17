--Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
--Date        : Sun Nov 17 17:17:32 2024
--Host        : workstation running 64-bit major release  (build 9200)
--Command     : generate_target DDS_MULT_ADDER_inst_0_wrapper.bd
--Design      : DDS_MULT_ADDER_inst_0_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity DDS_MULT_ADDER_inst_0_wrapper is
  port (
    TX_SIGNAL : out STD_LOGIC_VECTOR ( 24 downto 0 );
    clk_192MHz : in STD_LOGIC;
    clk_576MHz : in STD_LOGIC;
    data_in : in STD_LOGIC_VECTOR ( 11 downto 0 );
    din_valid : in STD_LOGIC;
    rst : in STD_LOGIC
  );
end DDS_MULT_ADDER_inst_0_wrapper;

architecture STRUCTURE of DDS_MULT_ADDER_inst_0_wrapper is
  component DDS_MULT_ADDER_inst_0 is
  port (
    clk_192MHz : in STD_LOGIC;
    clk_576MHz : in STD_LOGIC;
    rst : in STD_LOGIC;
    data_in : in STD_LOGIC_VECTOR ( 11 downto 0 );
    din_valid : in STD_LOGIC;
    TX_SIGNAL : out STD_LOGIC_VECTOR ( 24 downto 0 )
  );
  end component DDS_MULT_ADDER_inst_0;
begin
DDS_MULT_ADDER_inst_0_i: component DDS_MULT_ADDER_inst_0
     port map (
      TX_SIGNAL(24 downto 0) => TX_SIGNAL(24 downto 0),
      clk_192MHz => clk_192MHz,
      clk_576MHz => clk_576MHz,
      data_in(11 downto 0) => data_in(11 downto 0),
      din_valid => din_valid,
      rst => rst
    );
end STRUCTURE;
