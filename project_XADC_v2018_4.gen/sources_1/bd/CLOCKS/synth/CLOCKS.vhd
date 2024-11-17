--Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
--Date        : Sun Nov 17 14:49:40 2024
--Host        : workstation running 64-bit major release  (build 9200)
--Command     : generate_target CLOCKS.bd
--Design      : CLOCKS
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity CLOCKS is
  port (
    clk_192MHz : out STD_LOGIC;
    clk_52MHz : out STD_LOGIC;
    clk_576MHz : out STD_LOGIC;
    clk_in_36MHz : in STD_LOGIC;
    locked : out STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of CLOCKS : entity is "CLOCKS,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=CLOCKS,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=3,numReposBlks=3,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=1,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of CLOCKS : entity is "CLOCKS.hwdef";
end CLOCKS;

architecture STRUCTURE of CLOCKS is
  component CLOCKS_clk_wiz_0_1 is
  port (
    reset : in STD_LOGIC;
    clk_in1 : in STD_LOGIC;
    clk_out1 : out STD_LOGIC;
    locked : out STD_LOGIC
  );
  end component CLOCKS_clk_wiz_0_1;
  component CLOCKS_clk_wiz_0_2 is
  port (
    reset : in STD_LOGIC;
    clk_in1 : in STD_LOGIC;
    clk_out1 : out STD_LOGIC;
    clk_out2 : out STD_LOGIC;
    locked : out STD_LOGIC
  );
  end component CLOCKS_clk_wiz_0_2;
  component CLOCKS_locked_checker_0_0 is
  port (
    clk_locked52 : in STD_LOGIC;
    clk_locke192_576 : in STD_LOGIC;
    clk_global_lock : out STD_LOGIC
  );
  end component CLOCKS_locked_checker_0_0;
  signal clk_in_36MHz_1 : STD_LOGIC;
  signal clk_wiz_0_clk_out1 : STD_LOGIC;
  signal clk_wiz_0_locked : STD_LOGIC;
  signal clk_wiz_1_clk_out1 : STD_LOGIC;
  signal clk_wiz_1_clk_out2 : STD_LOGIC;
  signal clk_wiz_1_locked : STD_LOGIC;
  signal locked_checker_0_clk_global_lock : STD_LOGIC;
  signal rst_1 : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk_192MHz : signal is "xilinx.com:signal:clock:1.0 CLK.CLK_192MHZ CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk_192MHz : signal is "XIL_INTERFACENAME CLK.CLK_192MHZ, CLK_DOMAIN /clk_wiz_1_clk_out1, FREQ_HZ 192000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
  attribute X_INTERFACE_INFO of clk_52MHz : signal is "xilinx.com:signal:clock:1.0 CLK.CLK_52MHZ CLK";
  attribute X_INTERFACE_PARAMETER of clk_52MHz : signal is "XIL_INTERFACENAME CLK.CLK_52MHZ, CLK_DOMAIN /clk_wiz_0_clk_out1, FREQ_HZ 52000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
  attribute X_INTERFACE_INFO of clk_576MHz : signal is "xilinx.com:signal:clock:1.0 CLK.CLK_576MHZ CLK";
  attribute X_INTERFACE_PARAMETER of clk_576MHz : signal is "XIL_INTERFACENAME CLK.CLK_576MHZ, CLK_DOMAIN /clk_wiz_1_clk_out1, FREQ_HZ 576000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
  attribute X_INTERFACE_INFO of clk_in_36MHz : signal is "xilinx.com:signal:clock:1.0 CLK.CLK_IN_36MHZ CLK";
  attribute X_INTERFACE_PARAMETER of clk_in_36MHz : signal is "XIL_INTERFACENAME CLK.CLK_IN_36MHZ, CLK_DOMAIN CLOCKS_clk_in1_0, FREQ_HZ 36000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
  attribute X_INTERFACE_INFO of rst : signal is "xilinx.com:signal:reset:1.0 RST.RST RST";
  attribute X_INTERFACE_PARAMETER of rst : signal is "XIL_INTERFACENAME RST.RST, INSERT_VIP 0, POLARITY ACTIVE_HIGH";
begin
  clk_192MHz <= clk_wiz_1_clk_out1;
  clk_52MHz <= clk_wiz_0_clk_out1;
  clk_576MHz <= clk_wiz_1_clk_out2;
  clk_in_36MHz_1 <= clk_in_36MHz;
  locked <= locked_checker_0_clk_global_lock;
  rst_1 <= rst;
clk_wiz_0: component CLOCKS_clk_wiz_0_1
     port map (
      clk_in1 => clk_in_36MHz_1,
      clk_out1 => clk_wiz_0_clk_out1,
      locked => clk_wiz_0_locked,
      reset => rst_1
    );
clk_wiz_1: component CLOCKS_clk_wiz_0_2
     port map (
      clk_in1 => clk_in_36MHz_1,
      clk_out1 => clk_wiz_1_clk_out1,
      clk_out2 => clk_wiz_1_clk_out2,
      locked => clk_wiz_1_locked,
      reset => rst_1
    );
locked_checker_0: component CLOCKS_locked_checker_0_0
     port map (
      clk_global_lock => locked_checker_0_clk_global_lock,
      clk_locke192_576 => clk_wiz_1_locked,
      clk_locked52 => clk_wiz_0_locked
    );
end STRUCTURE;
