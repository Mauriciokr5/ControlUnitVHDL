library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
entity ROM is
port( Clock : in std_logic;
Reset : in std_logic;
Enable : in std_logic;
Read : in std_logic;
Address : in std_logic_vector(5 downto 0);
Data_out: out std_logic_vector(27 downto 0)
);
end ROM;
--------------------------------------------------------------
architecture Behav of ROM is
constant x: std_logic_vector(9 downto 0):= "0000000001";
constant y: std_logic_vector(9 downto 0):= "0000000010";
constant z: std_logic_vector(9 downto 0):= "0000000011";
constant w: std_logic_vector(9 downto 0):= "0000000100";
type ROM_Array is array (0 to 31)
of std_logic_vector(27 downto 0);
constant Content: ROM_Array := (
0 => "000010010000001101" & X, -- MULTIPLICACION 13 Y X
1 => "000110010000010111" & Y, -- MULTIPLICACION 23 Y Y 
2 => "1010011100000000000000000001", -- SUMA REGISTRO A Y REGISTRO B, EL 1 EN EL BIT MAS SIGNIFICATIVO INDICA QUE SE TRABAJA CON REGISTROS
3 => "00001010" & W & "0000000100", -- DIVISION W / 4 
4 => "1011100000000000100000000000", -- RESTA REGISTRO C CON REGISTRO A, RESULTADO FINAL
5 => "0000000000000000000000000000", -- PAUSA EN SISTEMA
--6 => "1111111001", -- -7 
--7 => "1111111011", -- -5
--8 => "0000000101", -- 5
--9 => "0000000001", -- X = 1
--10 => "0000000010", -- Y = 2
--11 => "0000000011", -- Z = 3
--12 => "0000000100", -- W = 4
--13 => "0000001011", -- Comienza EC.1 LOAD #13, DIRECCION 0
--14 => "0010011001", -- MULT #X, DIR 9
OTHERS => "1111111111111111111111111111" --
);
begin
process(Clock, Reset, Read, Address)
begin
if( Reset = '1' ) then
Data_out <= "ZZZZZZZZZZZZZZZZZZZZZZZZZZZZ";
elsif( Clock'event and Clock = '1' ) then
if Enable = '1' then
if( Read = '1' ) then
Data_out <= Content(conv_integer(Address));
else
Data_out <= "ZZZZZZZZZZZZZZZZZZZZZZZZZZZZ";
end if;
end if;
end if;
end process;
end Behav;