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
constant x: std_logic_vector(9 downto 0):= "0000000001"; --1
constant y: std_logic_vector(9 downto 0):= "0000000010"; --2
constant z: std_logic_vector(9 downto 0):= "0000000011"; --3
constant w: std_logic_vector(9 downto 0):= "0000000100"; --4
type ROM_Array is array (0 to 31)
of std_logic_vector(27 downto 0);
constant Content: ROM_Array := (
0 => "000010010000001101" & X, -- MULTIPLICACION 13 Y X				--EC1
1 => "000110010000010111" & Y, -- MULTIPLICACION 23 Y Y 
2 => "1110011100000000000000000001", -- SUMA REGISTRO A Y REGISTRO B, EL 1 EN EL BIT MAS SIGNIFICATIVO INDICA QUE SE TRABAJA CON REGISTROS
3 => "00001010" & W & "0000000100", -- DIVISION W / 4 
4 => "1111100000000000100000000000", -- RESTA REGISTRO C(10) CON REGISTRO A(00), RESULTADO FINAL
5 => "0000000000000000000000000000", -- PAUSA EN SISTEMA
6 => "00001001"& x & x, -- RA <= X * X							--EC 2
7 => "0101100100000001010000000000", -- RB <= 5 * RA
8 => "001010010000011110" & x, -- RC <= 30 * X
9 => "1100011100000000010000000010", -- RA <= RB + RC
11 => "00011010"& Z & "0000000010", -- RB <= Z / 2
12 => "1111100000000000000000000001", --<= RA - RB
13 => "0000000000000000000000000000", -- PAUSA EN SISTEMA
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