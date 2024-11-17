library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity FULL_QAM_TX_tb is
-- No se definen puertos en el testbench.
end FULL_QAM_TX_tb;

architecture TB of FULL_QAM_TX_tb is

    -- Señales para conectar al DUT (Device Under Test)
    signal TX_SIGNAL_0      : STD_LOGIC_VECTOR (24 downto 0);
    signal channel_out_0_0  : STD_LOGIC_VECTOR (4 downto 0);
    signal clk_in_36MHz_0   : STD_LOGIC := '0';
    signal eoc_out_0_0      : STD_LOGIC;
    signal rst_0            : STD_LOGIC := '0';
    signal s_drp_0_0_daddr  : STD_LOGIC_VECTOR (6 downto 0) := (others => '0');
    signal s_drp_0_0_den    : STD_LOGIC := '0';
    signal s_drp_0_0_di     : STD_LOGIC_VECTOR (15 downto 0) := (others => '0');
    signal s_drp_0_0_do     : STD_LOGIC_VECTOR (15 downto 0);
    signal s_drp_0_0_drdy   : STD_LOGIC;
    signal s_drp_0_0_dwe    : STD_LOGIC := '0';

    -- Instanciación del DUT
    component FULL_QAM_TX_wrapper
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
    end component;
    constant TCLK_per: time := 27778 ps;
begin

    -- Instanciar el componente bajo prueba
    DUT: FULL_QAM_TX_wrapper
        port map (
            fifo_din_0        => s_drp_0_0_do(15 downto 4), 
            TX_SIGNAL_0       => TX_SIGNAL_0,
            channel_out_0_0   => channel_out_0_0,
            clk_in_36MHz_0    => clk_in_36MHz_0,
            eoc_out_0_0       => eoc_out_0_0,
            rst_0             => rst_0,
            s_drp_0_0_daddr   => s_drp_0_0_daddr,
            s_drp_0_0_den     => s_drp_0_0_den,
            s_drp_0_0_di      => s_drp_0_0_di,
            s_drp_0_0_do      => s_drp_0_0_do,
            s_drp_0_0_drdy    => s_drp_0_0_drdy,
            s_drp_0_0_dwe     => s_drp_0_0_dwe
        );
    
    s_drp_0_0_dwe <= '1';
    
    
    -- Generador de reloj
    clock_gen: process
    begin
        while true loop
            clk_in_36MHz_0 <= '0';
            wait for TCLK_per/2; -- Periodo de 36 MHz
            clk_in_36MHz_0 <= '1';
            wait for TCLK_per/2;
        end loop;
    end process;
    
    
    -- Proceso de estímulos
    stim_proc: process
    begin
        -- Reinicio
        rst_0 <= '1';
        wait for 5* TCLK_per;
        rst_0 <= '0';

        -- Enviar valores iniciales
        s_drp_0_0_daddr <= "0000011";
        s_drp_0_0_di <= (others =>'0');
        s_drp_0_0_den <= '0';
        
        wait until clk_in_36MHz_0 = '0';
        for i in 0 to 1000 loop
           wait until eoc_out_0_0 <= '1';
           wait for TCLK_per; -- TCLK_periodo
           s_drp_0_0_den <= '1';
           wait for TCLK_per;
           s_drp_0_0_den <= '0';
           wait until s_drp_0_0_drdy = '1';        
        end loop;
        -- Finalizar simulación
        wait for 500 ns;
        assert false report "Simulation Ended" severity note;
        wait;
    end process;

end TB;
