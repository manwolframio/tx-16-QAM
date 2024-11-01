----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 28.09.2024 19:33:59
-- Design Name: 
-- Module Name: prescaler52 - Behavioral
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

entity Contador_52 is
    Port ( CLK : in STD_LOGIC;
         RST : in STD_LOGIC;
         wr_clk : out STD_LOGIC);
end Contador_52;

architecture Behavioral of Contador_52 is
    constant CTE_DISP         : integer := 52;    --Simulación
    signal   counter_reg   : integer range 0 to CTE_DISP-1; --Regsitro para contar hasta la constante del prescaler
begin
    process(CLK, RST)
    begin   --Prescaler Contador
        if RST='1' then --Si señal de reset a 1
            counter_reg<=0;
        elsif CLK'event and CLK = '1' then
              if counter_reg = CTE_DISP-1 then
                counter_reg <= 0;
              else
                counter_reg <= counter_reg+1;
              end if;
        end if;
     end process;
    
    process (CLK, RST)
    begin  -- Prescaler Generación de señal CE para Contador
        if RST = '1' then
           wr_clk   <= '0';
        elsif CLK'event and CLK = '1' then
           if counter_reg = CTE_DISP-1 then
              wr_clk <= '1';
           else
              wr_clk <= '0';
           end if;
        end if;
    end process;
end Behavioral;