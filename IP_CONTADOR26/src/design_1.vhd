--Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
--Date        : Mon Oct 16 13:48:43 2023
--Host        : HP-Z1-G8-AGV running 64-bit major release  (build 9200)
--Command     : generate_target design_1.bd
--Design      : design_1
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1 is
  port (
    Vp_Vn_0_v_n : in STD_LOGIC;
    Vp_Vn_0_v_p : in STD_LOGIC;
    alarm_out_0 : out STD_LOGIC;
    busy_out_0 : out STD_LOGIC;
    channel_out_0 : out STD_LOGIC_VECTOR ( 4 downto 0 );
    dclk_in_0 : in STD_LOGIC;
    eoc_out_0 : out STD_LOGIC;
    eos_out_0 : out STD_LOGIC;
    ot_out_0 : out STD_LOGIC;
    reset_in_0 : in STD_LOGIC;
    s_drp_0_daddr : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s_drp_0_den : in STD_LOGIC;
    s_drp_0_di : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_drp_0_do : out STD_LOGIC_VECTOR ( 15 downto 0 );
    s_drp_0_drdy : out STD_LOGIC;
    s_drp_0_dwe : in STD_LOGIC;
    user_temp_alarm_out_0 : out STD_LOGIC;
    vccaux_alarm_out_0 : out STD_LOGIC;
    vccint_alarm_out_0 : out STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of design_1 : entity is "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=1,numReposBlks=1,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of design_1 : entity is "design_1.hwdef";
end design_1;

architecture STRUCTURE of design_1 is
  component design_1_xadc_wiz_0_0 is
  port (
    di_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    daddr_in : in STD_LOGIC_VECTOR ( 6 downto 0 );
    den_in : in STD_LOGIC;
    dwe_in : in STD_LOGIC;
    drdy_out : out STD_LOGIC;
    do_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    dclk_in : in STD_LOGIC;
    reset_in : in STD_LOGIC;
    vp_in : in STD_LOGIC;
    vn_in : in STD_LOGIC;
    user_temp_alarm_out : out STD_LOGIC;
    vccint_alarm_out : out STD_LOGIC;
    vccaux_alarm_out : out STD_LOGIC;
    ot_out : out STD_LOGIC;
    channel_out : out STD_LOGIC_VECTOR ( 4 downto 0 );
    eoc_out : out STD_LOGIC;
    alarm_out : out STD_LOGIC;
    eos_out : out STD_LOGIC;
    busy_out : out STD_LOGIC
  );
  end component design_1_xadc_wiz_0_0;
  signal Vp_Vn_0_1_V_N : STD_LOGIC;
  signal Vp_Vn_0_1_V_P : STD_LOGIC;
  signal dclk_in_0_1 : STD_LOGIC;
  signal reset_in_0_1 : STD_LOGIC;
  signal s_drp_0_1_DADDR : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal s_drp_0_1_DEN : STD_LOGIC;
  signal s_drp_0_1_DI : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal s_drp_0_1_DO : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal s_drp_0_1_DRDY : STD_LOGIC;
  signal s_drp_0_1_DWE : STD_LOGIC;
  signal xadc_wiz_0_alarm_out : STD_LOGIC;
  signal xadc_wiz_0_busy_out : STD_LOGIC;
  signal xadc_wiz_0_channel_out : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal xadc_wiz_0_eoc_out : STD_LOGIC;
  signal xadc_wiz_0_eos_out : STD_LOGIC;
  signal xadc_wiz_0_ot_out : STD_LOGIC;
  signal xadc_wiz_0_user_temp_alarm_out : STD_LOGIC;
  signal xadc_wiz_0_vccaux_alarm_out : STD_LOGIC;
  signal xadc_wiz_0_vccint_alarm_out : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of Vp_Vn_0_v_n : signal is "xilinx.com:interface:diff_analog_io:1.0 Vp_Vn_0 V_N";
  attribute X_INTERFACE_INFO of Vp_Vn_0_v_p : signal is "xilinx.com:interface:diff_analog_io:1.0 Vp_Vn_0 V_P";
  attribute X_INTERFACE_INFO of dclk_in_0 : signal is "xilinx.com:signal:clock:1.0 CLK.DCLK_IN_0 CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of dclk_in_0 : signal is "XIL_INTERFACENAME CLK.DCLK_IN_0, CLK_DOMAIN design_1_dclk_in_0, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000";
  attribute X_INTERFACE_INFO of reset_in_0 : signal is "xilinx.com:signal:reset:1.0 RST.RESET_IN_0 RST";
  attribute X_INTERFACE_PARAMETER of reset_in_0 : signal is "XIL_INTERFACENAME RST.RESET_IN_0, INSERT_VIP 0, POLARITY ACTIVE_HIGH";
  attribute X_INTERFACE_INFO of s_drp_0_den : signal is "xilinx.com:interface:drp:1.0 s_drp_0 DEN";
  attribute X_INTERFACE_INFO of s_drp_0_drdy : signal is "xilinx.com:interface:drp:1.0 s_drp_0 DRDY";
  attribute X_INTERFACE_INFO of s_drp_0_dwe : signal is "xilinx.com:interface:drp:1.0 s_drp_0 DWE";
  attribute X_INTERFACE_INFO of s_drp_0_daddr : signal is "xilinx.com:interface:drp:1.0 s_drp_0 DADDR";
  attribute X_INTERFACE_INFO of s_drp_0_di : signal is "xilinx.com:interface:drp:1.0 s_drp_0 DI";
  attribute X_INTERFACE_INFO of s_drp_0_do : signal is "xilinx.com:interface:drp:1.0 s_drp_0 DO";
begin
  Vp_Vn_0_1_V_N <= Vp_Vn_0_v_n;
  Vp_Vn_0_1_V_P <= Vp_Vn_0_v_p;
  alarm_out_0 <= xadc_wiz_0_alarm_out;
  busy_out_0 <= xadc_wiz_0_busy_out;
  channel_out_0(4 downto 0) <= xadc_wiz_0_channel_out(4 downto 0);
  dclk_in_0_1 <= dclk_in_0;
  eoc_out_0 <= xadc_wiz_0_eoc_out;
  eos_out_0 <= xadc_wiz_0_eos_out;
  ot_out_0 <= xadc_wiz_0_ot_out;
  reset_in_0_1 <= reset_in_0;
  s_drp_0_1_DADDR(6 downto 0) <= s_drp_0_daddr(6 downto 0);
  s_drp_0_1_DEN <= s_drp_0_den;
  s_drp_0_1_DI(15 downto 0) <= s_drp_0_di(15 downto 0);
  s_drp_0_1_DWE <= s_drp_0_dwe;
  s_drp_0_do(15 downto 0) <= s_drp_0_1_DO(15 downto 0);
  s_drp_0_drdy <= s_drp_0_1_DRDY;
  user_temp_alarm_out_0 <= xadc_wiz_0_user_temp_alarm_out;
  vccaux_alarm_out_0 <= xadc_wiz_0_vccaux_alarm_out;
  vccint_alarm_out_0 <= xadc_wiz_0_vccint_alarm_out;
xadc_wiz_0: component design_1_xadc_wiz_0_0
     port map (
      alarm_out => xadc_wiz_0_alarm_out,
      busy_out => xadc_wiz_0_busy_out,
      channel_out(4 downto 0) => xadc_wiz_0_channel_out(4 downto 0),
      daddr_in(6 downto 0) => s_drp_0_1_DADDR(6 downto 0),
      dclk_in => dclk_in_0_1,
      den_in => s_drp_0_1_DEN,
      di_in(15 downto 0) => s_drp_0_1_DI(15 downto 0),
      do_out(15 downto 0) => s_drp_0_1_DO(15 downto 0),
      drdy_out => s_drp_0_1_DRDY,
      dwe_in => s_drp_0_1_DWE,
      eoc_out => xadc_wiz_0_eoc_out,
      eos_out => xadc_wiz_0_eos_out,
      ot_out => xadc_wiz_0_ot_out,
      reset_in => reset_in_0_1,
      user_temp_alarm_out => xadc_wiz_0_user_temp_alarm_out,
      vccaux_alarm_out => xadc_wiz_0_vccaux_alarm_out,
      vccint_alarm_out => xadc_wiz_0_vccint_alarm_out,
      vn_in => Vp_Vn_0_1_V_N,
      vp_in => Vp_Vn_0_1_V_P
    );
end STRUCTURE;
