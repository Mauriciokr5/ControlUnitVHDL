library ieee;

use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity div6 is
	port(
		dividendo: in std_logic_vector(5 downto 0);
		divisor: in std_logic_vector(5 downto 0);
		cociente: out std_logic_vector(5 downto 0);
		indet: out std_logic := '0';
		residuo: out std_logic_vector(5 downto 0)
	);
end div6;

architecture foo of div6 is
	begin
	process(dividendo,divisor)
		variable kosiente: std_logic_vector(5 DOWNTO 0);
		variable reziduo: std_logic_vector(5 DOWNTO 0);
		begin
			indet <= '0';
			if divisor = "0000" then
				indet <= '1';
				cociente<="000000";
			else
				kosiente := (others => '0'); -- "0000"
				reziduo := (others => '0');
				for i in 5 downto 0 loop
					reziduo := reziduo (4 downto 0) & '0'; -- r << 1
					reziduo(0) := dividendo(i); -- operanda is numerator
					if reziduo >= divisor then -- operandb denominator
						reziduo := reziduo - divisor;
						kosiente(i) := '1';
					end if;
				end loop;
				cociente <= kosiente; -- for error keeps
				residuo <= reziduo; -- last value (invalid)
			end if;
end process;

end architecture foo;