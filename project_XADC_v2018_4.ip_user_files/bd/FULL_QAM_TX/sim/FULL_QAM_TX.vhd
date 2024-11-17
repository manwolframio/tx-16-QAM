--Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
--Date        : Sun Nov 17 17:17:31 2024
--Host        : workstation running 64-bit major release  (build 9200)
--Command     : generate_target FULL_QAM_TX.bd
--Design      : FULL_QAM_TX
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity FULL_QAM_TX is
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
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of FULL_QAM_TX : entity is "FULL_QAM_TX,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=FULL_QAM_TX,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=20,numReposBlks=17,numNonXlnxBlks=0,numHierBlks=3,maxHierDepth=1,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=4,numPkgbdBlks=3,bdsource=USER,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of FULL_QAM_TX : entity is "FULL_QAM_TX.hwdef";
end FULL_QAM_TX;

architecture STRUCTURE of FULL_QAM_TX is
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
  component DDS_MULT_ADDER_inst_0 is
  port (
    TX_SIGNAL : out STD_LOGIC_VECTOR ( 24 downto 0 );
    clk_192MHz : in STD_LOGIC;
    clk_576MHz : in STD_LOGIC;
    data_in : in STD_LOGIC_VECTOR ( 11 downto 0 );
    din_valid : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  end component DDS_MULT_ADDER_inst_0;
  component XADC_FIFO_inst_0 is
  port (
    Vp_Vn_0_v_n : in STD_LOGIC;
    Vp_Vn_0_v_p : in STD_LOGIC;
    alarm_out_0 : out STD_LOGIC;
    busy_out_0 : out STD_LOGIC;
    channel_out_0 : out STD_LOGIC_VECTOR ( 4 downto 0 );
    clk_52MHz : in STD_LOGIC;
    clk_out : out STD_LOGIC;
    eoc_out_0 : out STD_LOGIC;
    eos_out_0 : out STD_LOGIC;
    fifo_din : in STD_LOGIC_VECTOR ( 11 downto 0 );
    fifo_dout : out STD_LOGIC_VECTOR ( 11 downto 0 );
    fifo_full : out STD_LOGIC;
    locked : out STD_LOGIC;
    locked_clk : in STD_LOGIC;
    ot_out_0 : out STD_LOGIC;
    rd_data_count_0 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    rd_en_fifo : out STD_LOGIC;
    reset_in_0 : in STD_LOGIC;
    s_drp_0_daddr : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s_drp_0_den : in STD_LOGIC;
    s_drp_0_di : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_drp_0_do : out STD_LOGIC_VECTOR ( 15 downto 0 );
    s_drp_0_drdy : out STD_LOGIC;
    s_drp_0_dwe : in STD_LOGIC;
    user_temp_alarm_out_0 : out STD_LOGIC;
    vccaux_alarm_out_0 : out STD_LOGIC;
    vccint_alarm_out_0 : out STD_LOGIC;
    wr_clk : out STD_LOGIC;
    wr_data_count_0 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    wr_rst_busy_0 : out STD_LOGIC
  );
  end component XADC_FIFO_inst_0;
  signal CLOCKS_0_clk_192MHz : STD_LOGIC;
  signal CLOCKS_0_clk_52MHz : STD_LOGIC;
  signal CLOCKS_0_clk_576MHz : STD_LOGIC;
  signal CLOCKS_0_locked : STD_LOGIC;
  signal DDS_MULT_ADDER_0_TX_SIGNAL : STD_LOGIC_VECTOR ( 24 downto 0 );
  signal XADC_FIFO_0_channel_out_0 : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal XADC_FIFO_0_eoc_out_0 : STD_LOGIC;
  signal XADC_FIFO_0_fifo_dout : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal XADC_FIFO_0_rd_en_fifo : STD_LOGIC;
  signal clk_in_36MHz_0_1 : STD_LOGIC;
  signal fifo_din_0_1 : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal rst_0_1 : STD_LOGIC;
  signal s_drp_0_0_1_DADDR : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal s_drp_0_0_1_DEN : STD_LOGIC;
  signal s_drp_0_0_1_DI : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal s_drp_0_0_1_DO : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal s_drp_0_0_1_DRDY : STD_LOGIC;
  signal s_drp_0_0_1_DWE : STD_LOGIC;
  signal NLW_XADC_FIFO_0_alarm_out_0_UNCONNECTED : STD_LOGIC;
  signal NLW_XADC_FIFO_0_busy_out_0_UNCONNECTED : STD_LOGIC;
  signal NLW_XADC_FIFO_0_clk_out_UNCONNECTED : STD_LOGIC;
  signal NLW_XADC_FIFO_0_eos_out_0_UNCONNECTED : STD_LOGIC;
  signal NLW_XADC_FIFO_0_fifo_full_UNCONNECTED : STD_LOGIC;
  signal NLW_XADC_FIFO_0_locked_UNCONNECTED : STD_LOGIC;
  signal NLW_XADC_FIFO_0_ot_out_0_UNCONNECTED : STD_LOGIC;
  signal NLW_XADC_FIFO_0_user_temp_alarm_out_0_UNCONNECTED : STD_LOGIC;
  signal NLW_XADC_FIFO_0_vccaux_alarm_out_0_UNCONNECTED : STD_LOGIC;
  signal NLW_XADC_FIFO_0_vccint_alarm_out_0_UNCONNECTED : STD_LOGIC;
  signal NLW_XADC_FIFO_0_wr_clk_UNCONNECTED : STD_LOGIC;
  signal NLW_XADC_FIFO_0_wr_rst_busy_0_UNCONNECTED : STD_LOGIC;
  signal NLW_XADC_FIFO_0_rd_data_count_0_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_XADC_FIFO_0_wr_data_count_0_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk_in_36MHz_0 : signal is "xilinx.com:signal:clock:1.0 CLK.CLK_IN_36MHZ_0 CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk_in_36MHz_0 : signal is "XIL_INTERFACENAME CLK.CLK_IN_36MHZ_0, CLK_DOMAIN FULL_QAM_TX_clk_in_36MHz_0, FREQ_HZ 36000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
  attribute X_INTERFACE_INFO of rst_0 : signal is "xilinx.com:signal:reset:1.0 RST.RST_0 RST";
  attribute X_INTERFACE_PARAMETER of rst_0 : signal is "XIL_INTERFACENAME RST.RST_0, INSERT_VIP 0, POLARITY ACTIVE_HIGH";
  attribute X_INTERFACE_INFO of s_drp_0_0_den : signal is "xilinx.com:interface:drp:1.0 s_drp_0_0 DEN";
  attribute X_INTERFACE_INFO of s_drp_0_0_drdy : signal is "xilinx.com:interface:drp:1.0 s_drp_0_0 DRDY";
  attribute X_INTERFACE_INFO of s_drp_0_0_dwe : signal is "xilinx.com:interface:drp:1.0 s_drp_0_0 DWE";
  attribute X_INTERFACE_INFO of TX_SIGNAL_0 : signal is "xilinx.com:signal:data:1.0 DATA.TX_SIGNAL_0 DATA";
  attribute X_INTERFACE_PARAMETER of TX_SIGNAL_0 : signal is "XIL_INTERFACENAME DATA.TX_SIGNAL_0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency bitwidth format long minimum {} maximum {}} value 25} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type generated dependency signed format bool minimum {} maximum {}} value TRUE}}}} DATA_WIDTH 25}";
  attribute X_INTERFACE_INFO of s_drp_0_0_daddr : signal is "xilinx.com:interface:drp:1.0 s_drp_0_0 DADDR";
  attribute X_INTERFACE_INFO of s_drp_0_0_di : signal is "xilinx.com:interface:drp:1.0 s_drp_0_0 DI";
  attribute X_INTERFACE_INFO of s_drp_0_0_do : signal is "xilinx.com:interface:drp:1.0 s_drp_0_0 DO";
begin
  TX_SIGNAL_0(24 downto 0) <= DDS_MULT_ADDER_0_TX_SIGNAL(24 downto 0);
  channel_out_0_0(4 downto 0) <= XADC_FIFO_0_channel_out_0(4 downto 0);
  clk_in_36MHz_0_1 <= clk_in_36MHz_0;
  eoc_out_0_0 <= XADC_FIFO_0_eoc_out_0;
  fifo_din_0_1(11 downto 0) <= fifo_din_0(11 downto 0);
  rst_0_1 <= rst_0;
  s_drp_0_0_1_DADDR(6 downto 0) <= s_drp_0_0_daddr(6 downto 0);
  s_drp_0_0_1_DEN <= s_drp_0_0_den;
  s_drp_0_0_1_DI(15 downto 0) <= s_drp_0_0_di(15 downto 0);
  s_drp_0_0_1_DWE <= s_drp_0_0_dwe;
  s_drp_0_0_do(15 downto 0) <= s_drp_0_0_1_DO(15 downto 0);
  s_drp_0_0_drdy <= s_drp_0_0_1_DRDY;
CLOCKS_0: component CLOCKS_inst_0
     port map (
      clk_192MHz => CLOCKS_0_clk_192MHz,
      clk_52MHz => CLOCKS_0_clk_52MHz,
      clk_576MHz => CLOCKS_0_clk_576MHz,
      clk_in_36MHz => clk_in_36MHz_0_1,
      locked => CLOCKS_0_locked,
      rst => rst_0_1
    );
DDS_MULT_ADDER_0: component DDS_MULT_ADDER_inst_0
     port map (
      TX_SIGNAL(24 downto 0) => DDS_MULT_ADDER_0_TX_SIGNAL(24 downto 0),
      clk_192MHz => CLOCKS_0_clk_192MHz,
      clk_576MHz => CLOCKS_0_clk_576MHz,
      data_in(11 downto 0) => XADC_FIFO_0_fifo_dout(11 downto 0),
      din_valid => XADC_FIFO_0_rd_en_fifo,
      rst => rst_0_1
    );
XADC_FIFO_0: component XADC_FIFO_inst_0
     port map (
      Vp_Vn_0_v_n => '0',
      Vp_Vn_0_v_p => '0',
      alarm_out_0 => NLW_XADC_FIFO_0_alarm_out_0_UNCONNECTED,
      busy_out_0 => NLW_XADC_FIFO_0_busy_out_0_UNCONNECTED,
      channel_out_0(4 downto 0) => XADC_FIFO_0_channel_out_0(4 downto 0),
      clk_52MHz => CLOCKS_0_clk_52MHz,
      clk_out => NLW_XADC_FIFO_0_clk_out_UNCONNECTED,
      eoc_out_0 => XADC_FIFO_0_eoc_out_0,
      eos_out_0 => NLW_XADC_FIFO_0_eos_out_0_UNCONNECTED,
      fifo_din(11 downto 0) => fifo_din_0_1(11 downto 0),
      fifo_dout(11 downto 0) => XADC_FIFO_0_fifo_dout(11 downto 0),
      fifo_full => NLW_XADC_FIFO_0_fifo_full_UNCONNECTED,
      locked => NLW_XADC_FIFO_0_locked_UNCONNECTED,
      locked_clk => CLOCKS_0_locked,
      ot_out_0 => NLW_XADC_FIFO_0_ot_out_0_UNCONNECTED,
      rd_data_count_0(7 downto 0) => NLW_XADC_FIFO_0_rd_data_count_0_UNCONNECTED(7 downto 0),
      rd_en_fifo => XADC_FIFO_0_rd_en_fifo,
      reset_in_0 => rst_0_1,
      s_drp_0_daddr(6 downto 0) => s_drp_0_0_1_DADDR(6 downto 0),
      s_drp_0_den => s_drp_0_0_1_DEN,
      s_drp_0_di(15 downto 0) => s_drp_0_0_1_DI(15 downto 0),
      s_drp_0_do(15 downto 0) => s_drp_0_0_1_DO(15 downto 0),
      s_drp_0_drdy => s_drp_0_0_1_DRDY,
      s_drp_0_dwe => s_drp_0_0_1_DWE,
      user_temp_alarm_out_0 => NLW_XADC_FIFO_0_user_temp_alarm_out_0_UNCONNECTED,
      vccaux_alarm_out_0 => NLW_XADC_FIFO_0_vccaux_alarm_out_0_UNCONNECTED,
      vccint_alarm_out_0 => NLW_XADC_FIFO_0_vccint_alarm_out_0_UNCONNECTED,
      wr_clk => NLW_XADC_FIFO_0_wr_clk_UNCONNECTED,
      wr_data_count_0(7 downto 0) => NLW_XADC_FIFO_0_wr_data_count_0_UNCONNECTED(7 downto 0),
      wr_rst_busy_0 => NLW_XADC_FIFO_0_wr_rst_busy_0_UNCONNECTED
    );
end STRUCTURE;
