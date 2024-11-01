--Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
--Date        : Fri Nov  1 19:02:25 2024
--Host        : Vivobook-manso running 64-bit major release  (build 9200)
--Command     : generate_target XADC_FIFO_wrapper.bd
--Design      : XADC_FIFO_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity XADC_FIFO_wrapper is
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
end XADC_FIFO_wrapper;

architecture STRUCTURE of XADC_FIFO_wrapper is
  component XADC_FIFO is
  port (
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
    user_temp_alarm_out_0 : out STD_LOGIC;
    vccaux_alarm_out_0 : out STD_LOGIC;
    vccint_alarm_out_0 : out STD_LOGIC;
    wr_clk : out STD_LOGIC;
    wr_data_count_0 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    wr_rst_busy_0 : out STD_LOGIC;
    Vp_Vn_0_v_n : in STD_LOGIC;
    Vp_Vn_0_v_p : in STD_LOGIC;
    s_drp_0_daddr : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s_drp_0_den : in STD_LOGIC;
    s_drp_0_di : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_drp_0_do : out STD_LOGIC_VECTOR ( 15 downto 0 );
    s_drp_0_drdy : out STD_LOGIC;
    s_drp_0_dwe : in STD_LOGIC
  );
  end component XADC_FIFO;
begin
XADC_FIFO_i: component XADC_FIFO
     port map (
      Vp_Vn_0_v_n => Vp_Vn_0_v_n,
      Vp_Vn_0_v_p => Vp_Vn_0_v_p,
      alarm_out_0 => alarm_out_0,
      busy_out_0 => busy_out_0,
      channel_out_0(4 downto 0) => channel_out_0(4 downto 0),
      clk_52MHz => clk_52MHz,
      clk_out => clk_out,
      eoc_out_0 => eoc_out_0,
      eos_out_0 => eos_out_0,
      fifo_din(11 downto 0) => fifo_din(11 downto 0),
      fifo_dout(11 downto 0) => fifo_dout(11 downto 0),
      fifo_full => fifo_full,
      locked => locked,
      locked_clk => locked_clk,
      ot_out_0 => ot_out_0,
      rd_data_count_0(7 downto 0) => rd_data_count_0(7 downto 0),
      rd_en_fifo => rd_en_fifo,
      reset_in_0 => reset_in_0,
      s_drp_0_daddr(6 downto 0) => s_drp_0_daddr(6 downto 0),
      s_drp_0_den => s_drp_0_den,
      s_drp_0_di(15 downto 0) => s_drp_0_di(15 downto 0),
      s_drp_0_do(15 downto 0) => s_drp_0_do(15 downto 0),
      s_drp_0_drdy => s_drp_0_drdy,
      s_drp_0_dwe => s_drp_0_dwe,
      user_temp_alarm_out_0 => user_temp_alarm_out_0,
      vccaux_alarm_out_0 => vccaux_alarm_out_0,
      vccint_alarm_out_0 => vccint_alarm_out_0,
      wr_clk => wr_clk,
      wr_data_count_0(7 downto 0) => wr_data_count_0(7 downto 0),
      wr_rst_busy_0 => wr_rst_busy_0
    );
end STRUCTURE;
