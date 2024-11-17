--Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
--Date        : Sun Nov 17 13:57:02 2024
--Host        : workstation running 64-bit major release  (build 9200)
--Command     : generate_target DDS_MULT_ADDER.bd
--Design      : DDS_MULT_ADDER
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity DDS_MULT_ADDER is
  port (
    TX_SIGNAL : out STD_LOGIC_VECTOR ( 24 downto 0 );
    aresetn : in STD_LOGIC;
    clk_192MHz : in STD_LOGIC;
    clk_576MHz : in STD_LOGIC;
    data_in : in STD_LOGIC_VECTOR ( 11 downto 0 );
    din_valid : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of DDS_MULT_ADDER : entity is "DDS_MULT_ADDER,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=DDS_MULT_ADDER,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=8,numReposBlks=8,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=2,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of DDS_MULT_ADDER : entity is "DDS_MULT_ADDER.hwdef";
end DDS_MULT_ADDER;

architecture STRUCTURE of DDS_MULT_ADDER is
  component DDS_MULT_ADDER_dds_compiler_0_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    m_axis_data_tvalid : out STD_LOGIC;
    m_axis_data_tdata : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axis_phase_tvalid : out STD_LOGIC;
    m_axis_phase_tdata : out STD_LOGIC_VECTOR ( 23 downto 0 )
  );
  end component DDS_MULT_ADDER_dds_compiler_0_0;
  component DDS_MULT_ADDER_fir_compiler_0_0 is
  port (
    aclk : in STD_LOGIC;
    s_axis_data_tvalid : in STD_LOGIC;
    s_axis_data_tready : out STD_LOGIC;
    s_axis_data_tdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axis_data_tvalid : out STD_LOGIC;
    m_axis_data_tdata : out STD_LOGIC_VECTOR ( 23 downto 0 )
  );
  end component DDS_MULT_ADDER_fir_compiler_0_0;
  component DDS_MULT_ADDER_fir_compiler_0_1 is
  port (
    aclk : in STD_LOGIC;
    s_axis_data_tvalid : in STD_LOGIC;
    s_axis_data_tready : out STD_LOGIC;
    s_axis_data_tdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axis_data_tvalid : out STD_LOGIC;
    m_axis_data_tdata : out STD_LOGIC_VECTOR ( 23 downto 0 )
  );
  end component DDS_MULT_ADDER_fir_compiler_0_1;
  component DDS_MULT_ADDER_DDS_splitter_0_0 is
  port (
    data_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    high_byte : out STD_LOGIC_VECTOR ( 7 downto 0 );
    low_byte : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component DDS_MULT_ADDER_DDS_splitter_0_0;
  component DDS_MULT_ADDER_mult_gen_0_0 is
  port (
    CLK : in STD_LOGIC;
    A : in STD_LOGIC_VECTOR ( 15 downto 0 );
    B : in STD_LOGIC_VECTOR ( 7 downto 0 );
    P : out STD_LOGIC_VECTOR ( 23 downto 0 )
  );
  end component DDS_MULT_ADDER_mult_gen_0_0;
  component DDS_MULT_ADDER_mult_gen_0_1 is
  port (
    CLK : in STD_LOGIC;
    A : in STD_LOGIC_VECTOR ( 15 downto 0 );
    B : in STD_LOGIC_VECTOR ( 7 downto 0 );
    P : out STD_LOGIC_VECTOR ( 23 downto 0 )
  );
  end component DDS_MULT_ADDER_mult_gen_0_1;
  component DDS_MULT_ADDER_c_addsub_0_0 is
  port (
    A : in STD_LOGIC_VECTOR ( 23 downto 0 );
    B : in STD_LOGIC_VECTOR ( 23 downto 0 );
    CLK : in STD_LOGIC;
    S : out STD_LOGIC_VECTOR ( 24 downto 0 )
  );
  end component DDS_MULT_ADDER_c_addsub_0_0;
  component DDS_MULT_ADDER_QAM_mapper_0_0 is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    data_in : in STD_LOGIC_VECTOR ( 11 downto 0 );
    din_valid : in STD_LOGIC;
    data_out_i : out STD_LOGIC_VECTOR ( 2 downto 0 );
    data_out_q : out STD_LOGIC_VECTOR ( 2 downto 0 );
    dout_valid : out STD_LOGIC
  );
  end component DDS_MULT_ADDER_QAM_mapper_0_0;
  signal DDS_splitter_high_byte : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal DDS_splitter_low_byte : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal I_RRC_m_axis_data_tdata : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal I_mult_P : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal QAM_mapper_0_data_out_i : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal QAM_mapper_0_data_out_q : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal QAM_mapper_0_dout_valid : STD_LOGIC;
  signal Q_RRC_m_axis_data_tdata : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal Q_mult_P : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal aresetn_0_1 : STD_LOGIC;
  signal c_addsub_0_S : STD_LOGIC_VECTOR ( 24 downto 0 );
  signal clk_192MHz_1 : STD_LOGIC;
  signal clk_576MHz_1 : STD_LOGIC;
  signal data_in_0_1 : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal dds_compiler_0_m_axis_data_tdata : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal din_valid_0_1 : STD_LOGIC;
  signal rst_0_1 : STD_LOGIC;
  signal NLW_I_RRC_m_axis_data_tvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_I_RRC_s_axis_data_tready_UNCONNECTED : STD_LOGIC;
  signal NLW_Q_RRC_m_axis_data_tvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_Q_RRC_s_axis_data_tready_UNCONNECTED : STD_LOGIC;
  signal NLW_dds_compiler_0_m_axis_data_tvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_dds_compiler_0_m_axis_phase_tvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_dds_compiler_0_m_axis_phase_tdata_UNCONNECTED : STD_LOGIC_VECTOR ( 23 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of aresetn : signal is "xilinx.com:signal:reset:1.0 RST.ARESETN RST";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of aresetn : signal is "XIL_INTERFACENAME RST.ARESETN, INSERT_VIP 0, POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of clk_192MHz : signal is "xilinx.com:signal:clock:1.0 CLK.CLK_192MHZ CLK";
  attribute X_INTERFACE_PARAMETER of clk_192MHz : signal is "XIL_INTERFACENAME CLK.CLK_192MHZ, ASSOCIATED_RESET aresetn:rst, CLK_DOMAIN DDS_MULT_ADDER_clk_192MHz, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
  attribute X_INTERFACE_INFO of clk_576MHz : signal is "xilinx.com:signal:clock:1.0 CLK.CLK_576MHZ CLK";
  attribute X_INTERFACE_PARAMETER of clk_576MHz : signal is "XIL_INTERFACENAME CLK.CLK_576MHZ, ASSOCIATED_RESET aresetn, CLK_DOMAIN DDS_MULT_ADDER_clk_576MHz, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
  attribute X_INTERFACE_INFO of rst : signal is "xilinx.com:signal:reset:1.0 RST.RST RST";
  attribute X_INTERFACE_PARAMETER of rst : signal is "XIL_INTERFACENAME RST.RST, INSERT_VIP 0, POLARITY ACTIVE_HIGH";
  attribute X_INTERFACE_INFO of TX_SIGNAL : signal is "xilinx.com:signal:data:1.0 DATA.TX_SIGNAL DATA";
  attribute X_INTERFACE_PARAMETER of TX_SIGNAL : signal is "XIL_INTERFACENAME DATA.TX_SIGNAL, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency bitwidth format long minimum {} maximum {}} value 25} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type generated dependency signed format bool minimum {} maximum {}} value TRUE}}}} DATA_WIDTH 25}";
begin
  TX_SIGNAL(24 downto 0) <= c_addsub_0_S(24 downto 0);
  aresetn_0_1 <= aresetn;
  clk_192MHz_1 <= clk_192MHz;
  clk_576MHz_1 <= clk_576MHz;
  data_in_0_1(11 downto 0) <= data_in(11 downto 0);
  din_valid_0_1 <= din_valid;
  rst_0_1 <= rst;
DDS_splitter: component DDS_MULT_ADDER_DDS_splitter_0_0
     port map (
      data_in(15 downto 0) => dds_compiler_0_m_axis_data_tdata(15 downto 0),
      high_byte(7 downto 0) => DDS_splitter_high_byte(7 downto 0),
      low_byte(7 downto 0) => DDS_splitter_low_byte(7 downto 0)
    );
I_RRC: component DDS_MULT_ADDER_fir_compiler_0_1
     port map (
      aclk => clk_192MHz_1,
      m_axis_data_tdata(23 downto 0) => I_RRC_m_axis_data_tdata(23 downto 0),
      m_axis_data_tvalid => NLW_I_RRC_m_axis_data_tvalid_UNCONNECTED,
      s_axis_data_tdata(15 downto 3) => B"0000000000000",
      s_axis_data_tdata(2 downto 0) => QAM_mapper_0_data_out_i(2 downto 0),
      s_axis_data_tready => NLW_I_RRC_s_axis_data_tready_UNCONNECTED,
      s_axis_data_tvalid => QAM_mapper_0_dout_valid
    );
I_mult: component DDS_MULT_ADDER_mult_gen_0_1
     port map (
      A(15 downto 0) => I_RRC_m_axis_data_tdata(15 downto 0),
      B(7 downto 0) => DDS_splitter_low_byte(7 downto 0),
      CLK => clk_576MHz_1,
      P(23 downto 0) => I_mult_P(23 downto 0)
    );
QAM_mapper_0: component DDS_MULT_ADDER_QAM_mapper_0_0
     port map (
      clk => clk_192MHz_1,
      data_in(11 downto 0) => data_in_0_1(11 downto 0),
      data_out_i(2 downto 0) => QAM_mapper_0_data_out_i(2 downto 0),
      data_out_q(2 downto 0) => QAM_mapper_0_data_out_q(2 downto 0),
      din_valid => din_valid_0_1,
      dout_valid => QAM_mapper_0_dout_valid,
      rst => rst_0_1
    );
Q_RRC: component DDS_MULT_ADDER_fir_compiler_0_0
     port map (
      aclk => clk_192MHz_1,
      m_axis_data_tdata(23 downto 0) => Q_RRC_m_axis_data_tdata(23 downto 0),
      m_axis_data_tvalid => NLW_Q_RRC_m_axis_data_tvalid_UNCONNECTED,
      s_axis_data_tdata(15 downto 3) => B"0000000000000",
      s_axis_data_tdata(2 downto 0) => QAM_mapper_0_data_out_q(2 downto 0),
      s_axis_data_tready => NLW_Q_RRC_s_axis_data_tready_UNCONNECTED,
      s_axis_data_tvalid => QAM_mapper_0_dout_valid
    );
Q_mult: component DDS_MULT_ADDER_mult_gen_0_0
     port map (
      A(15 downto 0) => Q_RRC_m_axis_data_tdata(15 downto 0),
      B(7 downto 0) => DDS_splitter_high_byte(7 downto 0),
      CLK => clk_576MHz_1,
      P(23 downto 0) => Q_mult_P(23 downto 0)
    );
c_addsub_0: component DDS_MULT_ADDER_c_addsub_0_0
     port map (
      A(23 downto 0) => Q_mult_P(23 downto 0),
      B(23 downto 0) => I_mult_P(23 downto 0),
      CLK => clk_576MHz_1,
      S(24 downto 0) => c_addsub_0_S(24 downto 0)
    );
dds_compiler_0: component DDS_MULT_ADDER_dds_compiler_0_0
     port map (
      aclk => clk_576MHz_1,
      aresetn => aresetn_0_1,
      m_axis_data_tdata(15 downto 0) => dds_compiler_0_m_axis_data_tdata(15 downto 0),
      m_axis_data_tvalid => NLW_dds_compiler_0_m_axis_data_tvalid_UNCONNECTED,
      m_axis_phase_tdata(23 downto 0) => NLW_dds_compiler_0_m_axis_phase_tdata_UNCONNECTED(23 downto 0),
      m_axis_phase_tvalid => NLW_dds_compiler_0_m_axis_phase_tvalid_UNCONNECTED
    );
end STRUCTURE;
