--Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
--Date        : Fri Nov  1 18:14:38 2024
--Host        : Vivobook-manso running 64-bit major release  (build 9200)
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
  attribute CORE_GENERATION_INFO of CLOCKS : entity is "CLOCKS,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=CLOCKS,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=1,numReposBlks=1,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of CLOCKS : entity is "CLOCKS.hwdef";
end CLOCKS;

architecture STRUCTURE of CLOCKS is
  component CLOCKS_clk_wiz_0_0 is
  port (
    reset : in STD_LOGIC;
    clk_in1 : in STD_LOGIC;
    clk_576MHz : out STD_LOGIC;
    clk_192MHz : out STD_LOGIC;
    clk_52MHz : out STD_LOGIC;
    locked : out STD_LOGIC
  );
  end component CLOCKS_clk_wiz_0_0;
  signal clk_in1_0_1 : STD_LOGIC;
  signal clk_wiz_0_clk_192MHz : STD_LOGIC;
  signal clk_wiz_0_clk_52MHz : STD_LOGIC;
  signal clk_wiz_0_clk_576MHz : STD_LOGIC;
  signal clk_wiz_0_locked : STD_LOGIC;
  signal reset_0_1 : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk_192MHz : signal is "xilinx.com:signal:clock:1.0 CLK.CLK_192MHZ CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk_192MHz : signal is "XIL_INTERFACENAME CLK.CLK_192MHZ, CLK_DOMAIN /pll_clk_clk_out1, FREQ_HZ 191666666, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
  attribute X_INTERFACE_INFO of clk_52MHz : signal is "xilinx.com:signal:clock:1.0 CLK.CLK_52MHZ CLK";
  attribute X_INTERFACE_PARAMETER of clk_52MHz : signal is "XIL_INTERFACENAME CLK.CLK_52MHZ, CLK_DOMAIN /pll_clk_clk_out1, FREQ_HZ 52272727, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
  attribute X_INTERFACE_INFO of clk_576MHz : signal is "xilinx.com:signal:clock:1.0 CLK.CLK_576MHZ CLK";
  attribute X_INTERFACE_PARAMETER of clk_576MHz : signal is "XIL_INTERFACENAME CLK.CLK_576MHZ, CLK_DOMAIN /pll_clk_clk_out1, FREQ_HZ 575000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
  attribute X_INTERFACE_INFO of clk_in_36MHz : signal is "xilinx.com:signal:clock:1.0 CLK.CLK_IN_36MHZ CLK";
  attribute X_INTERFACE_PARAMETER of clk_in_36MHz : signal is "XIL_INTERFACENAME CLK.CLK_IN_36MHZ, CLK_DOMAIN CLOCKS_clk_in1_0, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
  attribute X_INTERFACE_INFO of rst : signal is "xilinx.com:signal:reset:1.0 RST.RST RST";
  attribute X_INTERFACE_PARAMETER of rst : signal is "XIL_INTERFACENAME RST.RST, INSERT_VIP 0, POLARITY ACTIVE_HIGH";
begin
  clk_192MHz <= clk_wiz_0_clk_192MHz;
  clk_52MHz <= clk_wiz_0_clk_52MHz;
  clk_576MHz <= clk_wiz_0_clk_576MHz;
  clk_in1_0_1 <= clk_in_36MHz;
  locked <= clk_wiz_0_locked;
  reset_0_1 <= rst;
pll_clk: component CLOCKS_clk_wiz_0_0
     port map (
      clk_192MHz => clk_wiz_0_clk_192MHz,
      clk_52MHz => clk_wiz_0_clk_52MHz,
      clk_576MHz => clk_wiz_0_clk_576MHz,
      clk_in1 => clk_in1_0_1,
      locked => clk_wiz_0_locked,
      reset => reset_0_1
    );
end STRUCTURE;
