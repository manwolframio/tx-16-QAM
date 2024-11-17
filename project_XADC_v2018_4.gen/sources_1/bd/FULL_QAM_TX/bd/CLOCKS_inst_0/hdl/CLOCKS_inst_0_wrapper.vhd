--Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
--Date        : Sun Nov 17 17:17:31 2024
--Host        : workstation running 64-bit major release  (build 9200)
--Command     : generate_target CLOCKS_inst_0_wrapper.bd
--Design      : CLOCKS_inst_0_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity CLOCKS_inst_0_wrapper is
  port (
    clk_192MHz : out STD_LOGIC;
    clk_52MHz : out STD_LOGIC;
    clk_576MHz : out STD_LOGIC;
    clk_in_36MHz : in STD_LOGIC;
    locked : out STD_LOGIC;
    rst : in STD_LOGIC
  );
end CLOCKS_inst_0_wrapper;

architecture STRUCTURE of CLOCKS_inst_0_wrapper is
  component CLOCKS_inst_0 is
  port (
    clk_192MHz : out STD_LOGIC;
    clk_52MHz : out STD_LOGIC;
    clk_576MHz : out STD_LOGIC;
    clk_in_36MHz : in STD_LOGIC;
    locked : out STD_LOGIC;
    rst : in STD_LOGIC
  );
  end component CLOCKS_inst_0;
begin
CLOCKS_inst_0_i: component CLOCKS_inst_0
     port map (
      clk_192MHz => clk_192MHz,
      clk_52MHz => clk_52MHz,
      clk_576MHz => clk_576MHz,
      clk_in_36MHz => clk_in_36MHz,
      locked => locked,
      rst => rst
    );
end STRUCTURE;
