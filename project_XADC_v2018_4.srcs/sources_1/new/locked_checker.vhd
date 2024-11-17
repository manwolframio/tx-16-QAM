library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity locked_checker is
    port(
        clk_locked52: in std_logic;
        clk_locke192_576: in std_logic;
        clk_global_lock: out std_logic
    );
end locked_checker; 

architecture RTL of locked_checker is

begin
clk_global_lock <= clk_locke192_576 and clk_locked52 ;

end RTL;