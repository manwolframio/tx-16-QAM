--Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
--Date        : Fri Nov  1 20:45:37 2024
--Host        : Vivobook-manso running 64-bit major release  (build 9200)
--Command     : generate_target DDS_MULT_ADDER_wrapper.bd
--Design      : DDS_MULT_ADDER_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity DDS_MULT_ADDER_wrapper is
  port (
    M_AXIS_DATA_0_tdata : out STD_LOGIC_VECTOR ( 15 downto 0 );
    M_AXIS_DATA_0_tvalid : out STD_LOGIC;
    M_AXIS_PHASE_0_tdata : out STD_LOGIC_VECTOR ( 23 downto 0 );
    M_AXIS_PHASE_0_tvalid : out STD_LOGIC;
    aclk_0 : in STD_LOGIC;
    aresetn_0 : in STD_LOGIC
  );
end DDS_MULT_ADDER_wrapper;

architecture STRUCTURE of DDS_MULT_ADDER_wrapper is
  component DDS_MULT_ADDER is
  port (
    aclk_0 : in STD_LOGIC;
    aresetn_0 : in STD_LOGIC;
    M_AXIS_DATA_0_tdata : out STD_LOGIC_VECTOR ( 15 downto 0 );
    M_AXIS_DATA_0_tvalid : out STD_LOGIC;
    M_AXIS_PHASE_0_tdata : out STD_LOGIC_VECTOR ( 23 downto 0 );
    M_AXIS_PHASE_0_tvalid : out STD_LOGIC
  );
  end component DDS_MULT_ADDER;
begin
DDS_MULT_ADDER_i: component DDS_MULT_ADDER
     port map (
      M_AXIS_DATA_0_tdata(15 downto 0) => M_AXIS_DATA_0_tdata(15 downto 0),
      M_AXIS_DATA_0_tvalid => M_AXIS_DATA_0_tvalid,
      M_AXIS_PHASE_0_tdata(23 downto 0) => M_AXIS_PHASE_0_tdata(23 downto 0),
      M_AXIS_PHASE_0_tvalid => M_AXIS_PHASE_0_tvalid,
      aclk_0 => aclk_0,
      aresetn_0 => aresetn_0
    );
end STRUCTURE;
