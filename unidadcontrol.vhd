library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

entity FSM is
    Port ( 
	
	selector: in std_logic_vector(1 downto 0);
	CLK_MASTER : inOUT STD_LOGIC;
	SALIDA: OUT STD_LOGIC_VECTOR(12 DOWNTO 0)
	
	);
      
end FSM;



architecture Behavioral of FSM is
COMPONENT ROM is
	port( Clock : in std_logic;
	Reset : in std_logic;
	Enable : in std_logic;
	Read : in std_logic;
	Address : in std_logic_vector(5 downto 0);
	Data_out: out std_logic_vector(27 downto 0)
	);
end COMPONENT;


------------Registros de proposito general
SIGNAL RA: std_logic_vector(9 downto 0);
SIGNAL RB: std_logic_vector(9 downto 0);
SIGNAL RC: std_logic_vector(9 downto 0);
SIGNAL RD: std_logic_vector(9 downto 0);
SIGNAL BCDAUX: STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL A_AUX, B_AUX: STD_LOGIC_VECTOR(11 DOWNTO 0);






--------------Signals estado
type estados is(fetch,decodeexecute,pausa);
signal  edo_presente, edo_futuro: estados;
signal inicio: std_logic:='0';

---------------Signals para la recuperacion en la ROM
signal IR: std_logic_vector(7 downto 0);
signal PC: std_logic_vector(5 downto 0);
signal MBR: std_logic_vector(27 downto 0);
signal MAR: std_logic_vector(5 downto 0);

--------------Signals numero A y B
SIGNAL A: STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL B: STD_LOGIC_VECTOR(9 DOWNTO 0);

-------SIGNAL PARA RECUPERAR EL RESULTADO DE LA ALU
signal aux: std_logic_vector(12 downto 0); 

----------------Selector auxiliar xd
signal S_sel: STD_LOGIC_VECTOR(1 DOWNTO 0);






begin

s_sel <= selector;


--------------Registro de Estados

process(CLK_MASTER,s_sel)
    begin
        if CLK_MASTER'event and CLK_MASTER='1' then
            if inicio='0' then 
               edo_presente <= fetch;
			   inicio<= '1';
  
            else 
                edo_presente <= edo_futuro;
            end if;
         end if;
    end process;
	




 ------- Logica de estado siguiente 
    process (edo_futuro, A, B,mbr,PC,SELECTOR,s_sel,mbr,ra,rc)
	variable aux_pc:std_logic_vector(5 downto 0);
    begin
	aux_pc:=PC;
	
       edo_futuro <= edo_presente; 
	   
        case s_sel is       
		WHEN "00" => aux_pc := "000000";
		WHEN "01" => aux_pc:= "000101";
		WHEN "10" =>aux_pc:= "000010";
		WHEN OTHERS => aux_pc := "000011";
	    END CASE;
		
	case edo_presente is 
		
------------------------------
         --fetch---
-----------------------------	
  when fetch =>
	
	aux_pc:= aux_pc + "000001";
	MAR<=aux_pc;
	
	IR<= MBR(27 downto 20);
	IF(MAR = "0000000000000000000000000000") THEN
		edo_futuro <= pausa;
	ELSE 
		edo_futuro <= decodeexecute;
	end if;		
		
		
------------------------------
         --pausa---
-----------------------------			
		
        when pausa =>
            IF( SELECTOR = S_SEL) THEN
	         EDO_FUTURO <= PAUSA;
	          ELSE
	           EDO_futuro <= FETCH;
	     end if;

------------------------------
         --decodeex---
-----------------------------	
    when decodeexecute =>
	IF(IR(7) = '1') THEN
		IF(MBR(1 DOWNTO 0) = "00") THEN
			B<=RA;
		ELSIF(MBR(1 DOWNTO 0) = "01") THEN
			B<=RB;
		ELSIF(MBR(1 DOWNTO 0) = "10") THEN
			B<=RC;
		ELSIF(MBR(1 DOWNTO 0) = "11") THEN
			B<=RD;
		END IF;
		IF(MBR(10 DOWNTO 9) = "00") THEN
			A<=RA;
		ELSIF(MBR(10 DOWNTO 9) = "01") THEN
			A<=RB;
		ELSIF(MBR(10 DOWNTO 9) = "10") THEN
			A<=RC;
		ELSIF(MBR(10 DOWNTO 9) = "11") THEN
			A<=RD;
		END IF;
	ELSE
		A<=MBR(19 DOWNTO 10);
		B<=MBR(9 DOWNTO 0);
	END IF;
	IF(IR(5 DOWNTO 4) = "00") THEN
			ra <= aux(9 DOWNTO 0);
		ELSIF(IR(5 DOWNTO 4) = "01") THEN
			rb <= aux(9 DOWNTO 0);
		ELSIF(IR(5 DOWNTO 4) = "10") THEN
			rc <= aux(9 DOWNTO 0);
		ELSIF (IR(5 DOWNTO 4) = "11") THEN
			rd <= aux(9 DOWNTO 0);
	END IF;    
		edo_futuro <= FETCH;
      

        end case;
		PC<=aux_pc;	

end process;
	
	
	
	
	

CALL0: ROM PORT MAP (CLK_MASTER,'0','1','1', MAR(5 DOWNTO 0), MBR(27 DOWNTO 0));
A_AUX <= "00" & A;
B_AUX <= "00" & B;










end Behavioral;