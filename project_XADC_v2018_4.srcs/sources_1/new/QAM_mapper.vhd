library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity QAM_mapper is 
	port (
		clk, rst       : in  STD_LOGIC; 
		data_in        : in  STD_LOGIC_VECTOR(11 downto 0); -- Señal de entrada de 12 bits
		din_valid      : in  STD_LOGIC;                    -- Datos vienen de la FIFO a ráfagas 
		data_out_i     : out STD_LOGIC_VECTOR(2 downto 0); -- Salida de (-3,-1,1,3) en 3 bits i
		data_out_q     : out STD_LOGIC_VECTOR(2 downto 0); -- Salida de (-3,-1,1,3) en 3 bits q
		dout_valid     : out STD_LOGIC
	);
end QAM_mapper;

architecture Behavioral of QAM_mapper is
	type Array3Bit is array (0 to 15) of STD_LOGIC_VECTOR(2 downto 0);
	-- valores +1,+3 -1, -3 para los simbolos 0 a 15 de 16 QAM 
	constant tabla_mapeado_I : Array3Bit := ("011","011","001","001","111","111","101","101","101","111","101","111","001","011","001","011"); --(-3,-1,1,3)
    constant tabla_mapeado_Q : Array3Bit := ("001","011","001","011","001","011","011","001","111","111","101","101","111","111","101","101"); --(-3,-1,1,3)
begin 
	process(clk) 
		variable contador : integer; 
		variable simbolo1, simbolo2, simbolo3 : std_logic_vector(3 downto 0);
		variable transmitiendo_dato : std_logic;
	begin 
		if rising_edge(clk) then
			if rst = '1' then
				contador := 0; 
				data_out_i <= "000"; 
				data_out_q <= "000"; 
				transmitiendo_dato := '0';
				dout_valid <= '0';
			else 
				if (din_valid = '1' and transmitiendo_dato = '0') then
					-- se capturan los 3 símbolos de 4 bits en el dato de 12 bits entrada
					simbolo1 := data_in(3 downto 0);    
					simbolo2 := data_in(7 downto 4);   
					simbolo3 := data_in(11 downto 8);
					transmitiendo_dato := '1';  -- se comienza la emisión de los 3 simbolos 1:32 zero-padding
					contador := 0; 
				end if;
				
				if (transmitiendo_dato = '1') then 
					dout_valid <= '1';
					if contador = 0 then     
					   data_out_i <= tabla_mapeado_I(to_integer(unsigned(simbolo1)));  
					   data_out_q <= tabla_mapeado_Q(to_integer(unsigned(simbolo1)));
					elsif contador = 32 then 
					   data_out_i <= tabla_mapeado_I(to_integer(unsigned(simbolo2)));  
					   data_out_q <= tabla_mapeado_Q(to_integer(unsigned(simbolo1)));
					elsif contador = 64 then 
					   data_out_i <= tabla_mapeado_I(to_integer(unsigned(simbolo3)));  
					   data_out_q <= tabla_mapeado_Q(to_integer(unsigned(simbolo1)));
					else                     
					   data_out_i <= (others => '0'); 
					   data_out_q <= (others => '0');
					end if;
					
					contador := contador + 1;
					if contador = 3 * 32 then    -- fin envio de los 3*32 valores					
						transmitiendo_dato := '0';
					end if;  
				else
					dout_valid <= '0';
				end if; 
			end if;
		end if; 
	end process; 
end Behavioral;