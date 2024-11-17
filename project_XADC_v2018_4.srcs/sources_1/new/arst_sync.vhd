library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity arst_sinc is
    port (
        input_signal : in std_logic;  -- Se�al de entrada
        output_signal : out std_logic -- Se�al de salida negada
    );
end arst_sinc;

architecture Behavioral of arst_sinc is
begin
    -- Proceso para implementar la operaci�n NOT
    process(input_signal)
    begin
        output_signal <= not input_signal; -- Negaci�n de la se�al de entrada
    end process;

end Behavioral;
