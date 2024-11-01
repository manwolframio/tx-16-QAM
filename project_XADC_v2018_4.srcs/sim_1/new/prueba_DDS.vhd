-- Testbench automatically generated online
-- at https://vhdl.lapinoo.net
-- Generation date : 1.11.2024 18:41:40 UTC

library ieee;
use ieee.std_logic_1164.all;

entity prueba_dds_tb is
end prueba_dds_tb;

architecture tb of prueba_DDS_tb is

    component DDS_MULT_ADDER_wrapper
        port (M_AXIS_DATA_0_tdata   : out std_logic_vector (15 downto 0 );
              M_AXIS_DATA_0_tvalid  : out std_logic;
              M_AXIS_PHASE_0_tdata  : out std_logic_vector (23 downto 0 );
              M_AXIS_PHASE_0_tvalid : out std_logic;
              aclk_0                : in std_logic);
    end component;

    signal M_AXIS_DATA_0_tdata   : std_logic_vector (15 downto 0 );
    signal M_AXIS_DATA_0_tvalid  : std_logic;
    signal M_AXIS_PHASE_0_tdata  : std_logic_vector (23 downto 0 );
    signal M_AXIS_PHASE_0_tvalid : std_logic;
    signal aclk_0                : std_logic;

    constant TbPeriod : time := 1000 ns; -- EDIT Put right period here
    signal TbClock : std_logic := '0';
    signal TbSimEnded : std_logic := '0';

begin

    dut : DDS_MULT_ADDER_wrapper
    port map (M_AXIS_DATA_0_tdata   => M_AXIS_DATA_0_tdata,
              M_AXIS_DATA_0_tvalid  => M_AXIS_DATA_0_tvalid,
              M_AXIS_PHASE_0_tdata  => M_AXIS_PHASE_0_tdata,
              M_AXIS_PHASE_0_tvalid => M_AXIS_PHASE_0_tvalid,
              aclk_0                => aclk_0);

    -- Clock generation
    TbClock <= not TbClock after TbPeriod/2 when TbSimEnded /= '1' else '0';

    -- EDIT: Check that aclk_0 is really your main clock signal
    aclk_0 <= TbClock;

    stimuli : process
    begin
        -- EDIT Adapt initialization as needed

        -- Reset generation
        --  EDIT: Replace YOURRESETSIGNAL below by the name of your reset as I haven't guessed it
        wait for 100 ns;
        wait for 100 ns;

        -- EDIT Add stimuli here
        wait for 100 * TbPeriod;

        -- Stop the clock and hence terminate the simulation
        TbSimEnded <= '1';
        wait;
    end process;

end tb;

-- Configuration block below is required by some simulators. Usually no need to edit.

configuration cfg_tb_DDS_MULT_ADDER_wrapper of tb_DDS_MULT_ADDER_wrapper is
    for tb
    end for;
end cfg_tb_DDS_MULT_ADDER_wrapper;