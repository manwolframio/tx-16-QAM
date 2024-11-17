----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 27.09.2024 11:03:17
-- Design Name: 
-- Module Name: fsm_fifo - Behavioral
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

entity FSM_FIFO_Entregable is
  Port ( rd_clk_fifo    : in STD_LOGIC;
         clk            : in STD_LOGIC;
         rst_fifo       : in STD_LOGIC;
         rd_rst_busy    : in STD_LOGIC;
         prog_full      : in STD_LOGIC;
         rd_empty       : in STD_LOGIC;
         locked         : in STD_LOGIC;
         rd_en_fifo     : out STD_LOGIC
         );
end FSM_FIFO_Entregable;

architecture Behavioral of FSM_FIFO_Entregable is
    signal estado : std_logic; -- 0 parado , 1 leyendo
    signal cuenta : integer range 0 to 5200;
    signal enable : std_logic;
begin
    process(clk)
    begin
        if(rising_edge(clk)) then
            if(rst_fifo = '1' or rd_rst_busy = '1') then
                estado <= '0';
                cuenta <= 0;
                enable <= '0';
            else
                if(locked = '1') then
                    if(estado = '0') then
                        if(prog_full = '1') then
                            enable <= '1';
                            estado <= '1';
                            cuenta <= 0;
                        end if;
                    else
                        cuenta <= cuenta+1;
                        if(rd_empty = '1' or cuenta = 5199) then
                            enable <= '0';
                            cuenta <= 0;
                            estado <= '0';
                        end if;
                    end if;
                end if;
            end if;
        end if;
    end process;
    rd_en_fifo <= enable and rd_clk_fifo;
end Behavioral;