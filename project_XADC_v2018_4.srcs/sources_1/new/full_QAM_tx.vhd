----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01.11.2024 18:31:46
-- Design Name: 
-- Module Name: FIFO_XADC_CLOCKING - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity full_QAM_tx is
--  Port ( );
end full_QAM_tx;

architecture Behavioral of full_QAM_tx is
    component CLOCKS_wrapper
        port (clk_192MHz   : out std_logic;
              clk_52MHz    : out std_logic;
              clk_576MHz   : out std_logic;
              clk_in_36MHz : in std_logic;
              locked       : out std_logic;
              rst          : in std_logic);
    end component;

  component XADC_FIFO_wrapper
        port (Vp_Vn_0_v_n           : in std_logic;
              Vp_Vn_0_v_p           : in std_logic;
              alarm_out_0           : out std_logic;
              busy_out_0            : out std_logic;
              channel_out_0         : out std_logic_vector (4 downto 0 );
              clk_52MHz             : in std_logic;
              clk_out               : out std_logic;
              eoc_out_0             : out std_logic;
              eos_out_0             : out std_logic;
              fifo_din              : in std_logic_vector (11 downto 0 );
              fifo_dout             : out std_logic_vector (11 downto 0 );
              fifo_full             : out std_logic;
              locked                : out std_logic;
              locked_clk            : in std_logic;
              ot_out_0              : out std_logic;
              rd_data_count_0       : out std_logic_vector (7 downto 0 );
              rd_en_fifo            : out std_logic;
              reset_in_0            : in std_logic;
              s_drp_0_daddr         : in std_logic_vector (6 downto 0 );
              s_drp_0_den           : in std_logic;
              s_drp_0_di            : in std_logic_vector (15 downto 0 );
              s_drp_0_do            : out std_logic_vector (15 downto 0 );
              s_drp_0_drdy          : out std_logic;
              s_drp_0_dwe           : in std_logic;
              user_temp_alarm_out_0 : out std_logic;
              vccaux_alarm_out_0    : out std_logic;
              vccint_alarm_out_0    : out std_logic;
              wr_clk                : out std_logic;
              wr_data_count_0       : out std_logic_vector (7 downto 0 );
              wr_rst_busy_0         : out std_logic);
    end component;

    signal Vp_Vn_0_v_n           : std_logic;
    signal Vp_Vn_0_v_p           : std_logic;
    signal alarm_out_0           : std_logic;
    signal busy_out_0            : std_logic;
    signal channel_out_0         : std_logic_vector (4 downto 0 );
    signal clk_52MHz             : std_logic;
    signal clk_out               : std_logic;
    signal eoc_out_0             : std_logic;
    signal eos_out_0             : std_logic;
    signal fifo_din              : std_logic_vector (11 downto 0 );
    signal fifo_dout             : std_logic_vector (11 downto 0 );
    signal fifo_full             : std_logic;
    signal locked                : std_logic;
    signal locked_clk            : std_logic;
    signal ot_out_0              : std_logic;
    signal rd_data_count_0       : std_logic_vector (7 downto 0 );
    signal rd_en_fifo            : std_logic;
    signal reset_in_0            : std_logic;
    signal s_drp_0_daddr         : std_logic_vector (6 downto 0 );
    signal s_drp_0_den           : std_logic;
    signal s_drp_0_di            : std_logic_vector (15 downto 0 );
    signal s_drp_0_do            : std_logic_vector (15 downto 0 );
    signal s_drp_0_drdy          : std_logic;
    signal s_drp_0_dwe           : std_logic;
    signal user_temp_alarm_out_0 : std_logic;
    signal vccaux_alarm_out_0    : std_logic;
    signal vccint_alarm_out_0    : std_logic;
    signal wr_clk                : std_logic;
    signal wr_data_count_0       : std_logic_vector (7 downto 0 );
    signal wr_rst_busy_0         : std_logic;

    signal clk_192MHz_gen   : std_logic;
    signal clk_52MHz_gen    : std_logic;
    signal clk_576MHz_gen   : std_logic;
    signal clk : std_logic;
    signal locked_gen       : std_logic;
    signal rst          : std_logic;

    constant TbPeriod : time := 1000 ns; -- EDIT Put right period here
    signal TbClock : std_logic := '0';
    signal TbSimEnded : std_logic := '0';

    

begin

    clocking_block : CLOCKS_wrapper
    port map (clk_192MHz   => clk_192MHz_gen,
              clk_52MHz    => clk_52MHz_gen,
              clk_576MHz   => clk_576MHz_gen,
              clk_in_36MHz => clk,
              locked       => locked_gen,
              rst          => rst);
          
   XADC_FIFO : XADC_FIFO_wrapper
    port map (Vp_Vn_0_v_n           => Vp_Vn_0_v_n,
              Vp_Vn_0_v_p           => Vp_Vn_0_v_p,
              alarm_out_0           => alarm_out_0,
              busy_out_0            => busy_out_0,
              channel_out_0         => channel_out_0,
              clk_52MHz             => clk_52MHz,
              clk_out               => clk_out,
              eoc_out_0             => eoc_out_0,
              eos_out_0             => eos_out_0,
              fifo_din              => fifo_din,
              fifo_dout             => fifo_dout,
              fifo_full             => fifo_full,
              locked                => locked,
              locked_clk            => locked_clk,
              ot_out_0              => ot_out_0,
              rd_data_count_0       => rd_data_count_0,
              rd_en_fifo            => rd_en_fifo,
              reset_in_0            => reset_in_0,
              s_drp_0_daddr         => s_drp_0_daddr,
              s_drp_0_den           => s_drp_0_den,
              s_drp_0_di            => s_drp_0_di,
              s_drp_0_do            => s_drp_0_do,
              s_drp_0_drdy          => s_drp_0_drdy,
              s_drp_0_dwe           => s_drp_0_dwe,
              user_temp_alarm_out_0 => user_temp_alarm_out_0,
              vccaux_alarm_out_0    => vccaux_alarm_out_0,
              vccint_alarm_out_0    => vccint_alarm_out_0,
              wr_clk                => wr_clk,
              wr_data_count_0       => wr_data_count_0,
              wr_rst_busy_0         => wr_rst_busy_0);
           
          

end Behavioral;
