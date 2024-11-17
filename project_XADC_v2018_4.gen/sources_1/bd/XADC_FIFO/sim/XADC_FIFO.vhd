--Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
--Date        : Sun Nov 17 14:50:10 2024
--Host        : workstation running 64-bit major release  (build 9200)
--Command     : generate_target XADC_FIFO.bd
--Design      : XADC_FIFO
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity XADC_FIFO is
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
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of XADC_FIFO : entity is "XADC_FIFO,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=XADC_FIFO,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=5,numReposBlks=5,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of XADC_FIFO : entity is "XADC_FIFO.hwdef";
end XADC_FIFO;

architecture STRUCTURE of XADC_FIFO is
  component XADC_FIFO_Contador_26_0_1 is
  port (
    CLK : in STD_LOGIC;
    RST : in STD_LOGIC;
    rd_clk : out STD_LOGIC
  );
  end component XADC_FIFO_Contador_26_0_1;
  component XADC_FIFO_Contador_52_0_1 is
  port (
    CLK : in STD_LOGIC;
    RST : in STD_LOGIC;
    wr_clk : out STD_LOGIC
  );
  end component XADC_FIFO_Contador_52_0_1;
  component XADC_FIFO_FSM_FIFO_Entregable_0_1 is
  port (
    rd_clk_fifo : in STD_LOGIC;
    clk : in STD_LOGIC;
    rst_fifo : in STD_LOGIC;
    rd_rst_busy : in STD_LOGIC;
    prog_full : in STD_LOGIC;
    rd_empty : in STD_LOGIC;
    locked : in STD_LOGIC;
    rd_en_fifo : out STD_LOGIC
  );
  end component XADC_FIFO_FSM_FIFO_Entregable_0_1;
  component XADC_FIFO_fifo_generator_0_1 is
  port (
    rst : in STD_LOGIC;
    wr_clk : in STD_LOGIC;
    rd_clk : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 11 downto 0 );
    wr_en : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 11 downto 0 );
    full : out STD_LOGIC;
    empty : out STD_LOGIC;
    rd_data_count : out STD_LOGIC_VECTOR ( 7 downto 0 );
    wr_data_count : out STD_LOGIC_VECTOR ( 7 downto 0 );
    prog_full : out STD_LOGIC;
    wr_rst_busy : out STD_LOGIC;
    rd_rst_busy : out STD_LOGIC
  );
  end component XADC_FIFO_fifo_generator_0_1;
  component XADC_FIFO_xadc_wiz_0_1 is
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
  end component XADC_FIFO_xadc_wiz_0_1;
  signal Contador_26_0_rd_clk : STD_LOGIC;
  signal Contador_52_0_wr_clk : STD_LOGIC;
  signal FSM_FIFO_Entregable_0_rd_en_fifo : STD_LOGIC;
  signal Vp_Vn_0_1_V_N : STD_LOGIC;
  signal Vp_Vn_0_1_V_P : STD_LOGIC;
  signal clk_wiz_0_clk_out1 : STD_LOGIC;
  signal clk_wiz_0_locked : STD_LOGIC;
  signal fifo_din_1 : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal fifo_generator_0_dout : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal fifo_generator_0_empty : STD_LOGIC;
  signal fifo_generator_0_full : STD_LOGIC;
  signal fifo_generator_0_prog_full : STD_LOGIC;
  signal fifo_generator_0_rd_data_count : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal fifo_generator_0_rd_rst_busy : STD_LOGIC;
  signal fifo_generator_0_wr_data_count : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal fifo_generator_0_wr_rst_busy : STD_LOGIC;
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
  attribute X_INTERFACE_INFO of reset_in_0 : signal is "xilinx.com:signal:reset:1.0 RST.RESET_IN_0 RST";
  attribute X_INTERFACE_PARAMETER : string;
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
  clk_out <= clk_wiz_0_clk_out1;
  clk_wiz_0_clk_out1 <= clk_52MHz;
  clk_wiz_0_locked <= locked_clk;
  eoc_out_0 <= xadc_wiz_0_eoc_out;
  eos_out_0 <= xadc_wiz_0_eos_out;
  fifo_din_1(11 downto 0) <= fifo_din(11 downto 0);
  fifo_dout(11 downto 0) <= fifo_generator_0_dout(11 downto 0);
  fifo_full <= fifo_generator_0_full;
  locked <= clk_wiz_0_locked;
  ot_out_0 <= xadc_wiz_0_ot_out;
  rd_data_count_0(7 downto 0) <= fifo_generator_0_rd_data_count(7 downto 0);
  rd_en_fifo <= FSM_FIFO_Entregable_0_rd_en_fifo;
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
  wr_clk <= Contador_52_0_wr_clk;
  wr_data_count_0(7 downto 0) <= fifo_generator_0_wr_data_count(7 downto 0);
  wr_rst_busy_0 <= fifo_generator_0_wr_rst_busy;
Contador_26_0: component XADC_FIFO_Contador_26_0_1
     port map (
      CLK => clk_wiz_0_clk_out1,
      RST => reset_in_0_1,
      rd_clk => Contador_26_0_rd_clk
    );
Contador_52_0: component XADC_FIFO_Contador_52_0_1
     port map (
      CLK => clk_wiz_0_clk_out1,
      RST => reset_in_0_1,
      wr_clk => Contador_52_0_wr_clk
    );
FSM_FIFO_Entregable_0: component XADC_FIFO_FSM_FIFO_Entregable_0_1
     port map (
      clk => clk_wiz_0_clk_out1,
      locked => clk_wiz_0_locked,
      prog_full => fifo_generator_0_prog_full,
      rd_clk_fifo => Contador_26_0_rd_clk,
      rd_empty => fifo_generator_0_empty,
      rd_en_fifo => FSM_FIFO_Entregable_0_rd_en_fifo,
      rd_rst_busy => fifo_generator_0_rd_rst_busy,
      rst_fifo => reset_in_0_1
    );
fifo_generator_0: component XADC_FIFO_fifo_generator_0_1
     port map (
      din(11 downto 0) => fifo_din_1(11 downto 0),
      dout(11 downto 0) => fifo_generator_0_dout(11 downto 0),
      empty => fifo_generator_0_empty,
      full => fifo_generator_0_full,
      prog_full => fifo_generator_0_prog_full,
      rd_clk => clk_wiz_0_clk_out1,
      rd_data_count(7 downto 0) => fifo_generator_0_rd_data_count(7 downto 0),
      rd_en => FSM_FIFO_Entregable_0_rd_en_fifo,
      rd_rst_busy => fifo_generator_0_rd_rst_busy,
      rst => reset_in_0_1,
      wr_clk => clk_wiz_0_clk_out1,
      wr_data_count(7 downto 0) => fifo_generator_0_wr_data_count(7 downto 0),
      wr_en => Contador_52_0_wr_clk,
      wr_rst_busy => fifo_generator_0_wr_rst_busy
    );
xadc_wiz_0: component XADC_FIFO_xadc_wiz_0_1
     port map (
      alarm_out => xadc_wiz_0_alarm_out,
      busy_out => xadc_wiz_0_busy_out,
      channel_out(4 downto 0) => xadc_wiz_0_channel_out(4 downto 0),
      daddr_in(6 downto 0) => s_drp_0_1_DADDR(6 downto 0),
      dclk_in => clk_wiz_0_clk_out1,
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
