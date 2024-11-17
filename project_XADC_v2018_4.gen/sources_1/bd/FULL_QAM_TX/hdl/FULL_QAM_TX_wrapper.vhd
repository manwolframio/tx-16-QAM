--Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
--Date        : Sun Nov 17 17:17:31 2024
--Host        : workstation running 64-bit major release  (build 9200)
--Command     : generate_target FULL_QAM_TX_wrapper.bd
--Design      : FULL_QAM_TX_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity FULL_QAM_TX_wrapper is
  port (
    TX_SIGNAL_0 : out STD_LOGIC_VECTOR ( 24 downto 0 );
    channel_out_0_0 : out STD_LOGIC_VECTOR ( 4 downto 0 );
    clk_in_36MHz_0 : in STD_LOGIC;
    eoc_out_0_0 : out STD_LOGIC;
    fifo_din_0 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    rst_0 : in STD_LOGIC;
    s_drp_0_0_daddr : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s_drp_0_0_den : in STD_LOGIC;
    s_drp_0_0_di : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_drp_0_0_do : out STD_LOGIC_VECTOR ( 15 downto 0 );
    s_drp_0_0_drdy : out STD_LOGIC;
    s_drp_0_0_dwe : in STD_LOGIC
  );
end FULL_QAM_TX_wrapper;

architecture STRUCTURE of FULL_QAM_TX_wrapper is
  component FULL_QAM_TX is
  port (
    rst_0 : in STD_LOGIC;
    clk_in_36MHz_0 : in STD_LOGIC;
    channel_out_0_0 : out STD_LOGIC_VECTOR ( 4 downto 0 );
    eoc_out_0_0 : out STD_LOGIC;
    TX_SIGNAL_0 : out STD_LOGIC_VECTOR ( 24 downto 0 );
    fifo_din_0 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_drp_0_0_daddr : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s_drp_0_0_den : in STD_LOGIC;
    s_drp_0_0_di : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_drp_0_0_do : out STD_LOGIC_VECTOR ( 15 downto 0 );
    s_drp_0_0_drdy : out STD_LOGIC;
    s_drp_0_0_dwe : in STD_LOGIC
  );
  end component FULL_QAM_TX;
begin
FULL_QAM_TX_i: component FULL_QAM_TX
     port map (
      TX_SIGNAL_0(24 downto 0) => TX_SIGNAL_0(24 downto 0),
      channel_out_0_0(4 downto 0) => channel_out_0_0(4 downto 0),
      clk_in_36MHz_0 => clk_in_36MHz_0,
      eoc_out_0_0 => eoc_out_0_0,
      fifo_din_0(11 downto 0) => fifo_din_0(11 downto 0),
      rst_0 => rst_0,
      s_drp_0_0_daddr(6 downto 0) => s_drp_0_0_daddr(6 downto 0),
      s_drp_0_0_den => s_drp_0_0_den,
      s_drp_0_0_di(15 downto 0) => s_drp_0_0_di(15 downto 0),
      s_drp_0_0_do(15 downto 0) => s_drp_0_0_do(15 downto 0),
      s_drp_0_0_drdy => s_drp_0_0_drdy,
      s_drp_0_0_dwe => s_drp_0_0_dwe
    );
end STRUCTURE;
