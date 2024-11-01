----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05.10.2019 11:24:26
-- Design Name: 
-- Module Name: prueba_xadc_tb - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
library UNISIM;
use UNISIM.VComponents.all;

entity prueba_xadc_tb is
--  Port ( );
end prueba_xadc_tb;

architecture Behavioral of prueba_xadc_tb is

  component design_1
    port (
      Vp_Vn_0_v_n           : in std_logic;
      Vp_Vn_0_v_p           : in std_logic;
      alarm_out_0           : out std_logic;
      busy_out_0            : out std_logic;
      channel_out_0         : out std_logic_vector (4 downto 0 );
      clk_out               : out STD_LOGIC;
      dclk_in_0             : in std_logic;
      eoc_out_0             : out std_logic;
      eos_out_0             : out std_logic;
      locked                : out STD_LOGIC;
      ot_out_0              : out std_logic;
      rd_data_count_0       : out std_logic_vector (7 downto 0 );
      rd_en_fifo            : out STD_LOGIC;
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
      wr_data_count_0       : out std_logic_vector (7 downto 0 );
      wr_rst_busy_0         : out std_logic;
      fifo_din              : in STD_LOGIC_VECTOR ( 11 downto 0 );
      fifo_dout             : out STD_LOGIC_VECTOR ( 11 downto 0 );
      fifo_full             : out STD_LOGIC;
      wr_clk                : out STD_LOGIC
      );    
  end component;

    signal fifo_din              : std_logic_vector (11 downto 0 );
    signal fifo_full             : std_logic;
    signal fifo_dout             : std_logic_vector (11 downto 0 );
    signal Vp_Vn_0_v_n           : std_logic;
    signal Vp_Vn_0_v_p           : std_logic;
    signal alarm_out_0           : std_logic;
    signal busy_out_0            : std_logic;
    signal channel_out_0         : std_logic_vector (4 downto 0 );
    signal dclk_in_0             : std_logic := '0';
    signal eoc_out_0             : std_logic;
    signal eos_out_0             : std_logic;
    signal ot_out_0              : std_logic;
    signal rd_data_count_0       : std_logic_vector (7 downto 0 );
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
    signal wr_data_count_0       : std_logic_vector (7 downto 0 );
    signal wr_rst_busy_0         : std_logic;
    signal rd_en_fifo            : STD_LOGIC;
    signal wr_clk                : STD_LOGIC;
    signal clk_out               : STD_LOGIC;
    signal locked                : STD_LOGIC;


    --constant clk_period : time := 19230 ps;
    constant clk_period : time := 27778 ps;
    --constant clk_period : time := 10 ns;
begin

  uut: design_1 port map ( fifo_dout             => fifo_dout,
                           fifo_full             => fifo_full,
                           fifo_din              => s_drp_0_do (15 downto 4),
                           Vp_Vn_0_v_n           => Vp_Vn_0_v_n,
                           Vp_Vn_0_v_p           => Vp_Vn_0_v_p,
                           clk_out               => clk_out,
                           alarm_out_0           => alarm_out_0,
                           busy_out_0            => busy_out_0,
                           channel_out_0         => channel_out_0,
                           dclk_in_0             => dclk_in_0,
                           eoc_out_0             => eoc_out_0,
                           eos_out_0             => eos_out_0,
                           locked                => locked,
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
                           wr_data_count_0       => wr_data_count_0,
                           wr_clk                => wr_clk,
                           wr_rst_busy_0         => wr_rst_busy_0);

-- seran los valores analogicos de entrada no digitales!!
  Vp_Vn_0_v_n <= '0';
  Vp_Vn_0_v_p <= '0';


    s_drp_0_dwe <='1'; -- solo vamos a leer datos convertidos
    
    
    dclk_in_0 <=  not dclk_in_0 after clk_period/2;  -- reloj de 100 MHz 


  stimulus: process
  begin
  
        -- Put initialisation code here
          reset_in_0 <= '1';  -- reset activo
    
        -- Put test bench stimulus code here
        reset_in_0 <= '0';  -- reset inactivo
     
     s_drp_0_daddr <= std_logic_vector(to_unsigned(3,s_drp_0_daddr'length));    -- registro con el valor convertido de VpVn
     s_drp_0_di <= (others =>'0');
     s_drp_0_den <= '0'; -- no hay data ready para leer
     
     wait until locked = '1'; -- Señal de reloj estable
     wait until  dclk_in_0 ='0'; -- sincroniza con flanco de bajada

     
     
     
      for i in 0 to 1000  -- frec- conversion aprox 1 MHz -> frec triangular 1 KHz para un ciclo 1000 us (modo continuo)
      loop
        wait until eoc_out_0<='1' ; -- fin de una conversion    
        wait for clk_period;     
        s_drp_0_den <= '1'; -- habilitar la salida de un nuevo dato
        
        fifo_din  <= s_drp_0_do (15 downto 4);
        wait for clk_period;      
        s_drp_0_den <= '0'; -- solo dura un ciclo 
        wait until  s_drp_0_drdy='1'; -- sincroniza con flanco de bajada
      end loop;
    
        assert false
        report "Fin simulacion"
        severity failure;
    
         
        wait;
    
    end process;

end Behavioral;
