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
    port (
        clk_32MHz : in std_logic;   
        rst       : in std_logic;   -- Reset global
        Modulated_output : out std_logic_vector(15 downto 0) -- Salida del sumador
    );

end full_QAM_tx;

architecture RTL of full_QAM_tx is
component  DDS_MULT_ADDER_wrapper
  port (
    TX_SIGNAL : out STD_LOGIC_VECTOR ( 24 downto 0 );
    aresetn : in STD_LOGIC;
    clk_192MHz : in STD_LOGIC;
    clk_576MHz : in STD_LOGIC;
    data_in : in STD_LOGIC_VECTOR ( 11 downto 0 );
    din_valid : in STD_LOGIC;
    rst : in STD_LOGIC
  );
end component ;

component XADC_FIFO_wrapper
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
end component;

component  CLOCKS_wrapper
  port (
    clk_192MHz : out STD_LOGIC;
    clk_52MHz : out STD_LOGIC;
    clk_576MHz : out STD_LOGIC;
    clk_in_36MHz : in STD_LOGIC;
    locked : out STD_LOGIC;
    rst : in STD_LOGIC
  );
end component;



begin

   

end RTL;