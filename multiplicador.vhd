library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity mult_comb_gen is
generic ( 
g_bits : natural := 6 ); 
 	Port ( fact1 : in std_logic_vector (g_bits-1 downto 0); 
 	          fact2 : in std_logic_vector  (g_bits-1 downto 0); 
          prod : out std_logic_vector  (2*g_bits-1 downto 0) ); -- doble para el producto

end mult_comb_gen; 

architecture behavioral of mult_comb_gen is
type t_vector_sumand is array (1 to g_bits) of std_logic_vector  (g_bits-1 downto 0);
 type t_vector_resul is array (1 to g_bits) of std_logic_vector  (g_bits downto 0); 
 signal sum_anded : t_vector_sumand; 
 signal resul : t_vector_resul; 
begin 
-- primera etapa 
sum_anded(1) <= fact1 when fact2(0) = '1' else (others => '0');
 resul(1) <= '0' & sum_anded(1); 
 prod(0) <= resul(1)(0); 
-- resto de etapas 
gen_mult: for i in 1 to g_bits-1 generate
sum_anded(i+1) <= fact1 when fact2(i)='1' else (others =>'0');
resul(i+1) <= ('0' & resul(i)(g_bits downto 1)) + ('0' & sum_anded(i+1));
 prod(i) <= resul(i+1)(0); 
 end generate; 
-- final:
 prod(2*g_bits-1 downto g_bits) <= resul(g_bits)(g_bits downto 1); 
end behavioral;