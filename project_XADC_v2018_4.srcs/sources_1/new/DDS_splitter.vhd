library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity DDS_splitter is
    Port (
        data_in   : in  std_logic_vector(15 downto 0); -- Señal de entrada de 16 bits
        high_byte : out std_logic_vector(7 downto 0);  -- Byte alto de salida (bits 15 a 8)
        low_byte  : out std_logic_vector(7 downto 0)   -- Byte bajo de salida (bits 7 a 0)
    );
end DDS_splitter;

architecture Behavioral of DDS_splitter is
begin
    -- Asignar los 8 bits superiores a high_byte y los 8 bits inferiores a low_byte
    high_byte <= data_in(15 downto 8); -- Bits 15 a 8 de data_in
    low_byte  <= data_in(7 downto 0);  -- Bits 7 a 0 de data_in

end Behavioral;
