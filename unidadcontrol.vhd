library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

entity FSM is
    Port ( 
		selector: in std_logic_vector(1 downto 0);
		OUTT_DISPLAY:OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
		SIG,IDET:OUT STD_LOGIC;
		SALIDA: OUT STD_LOGIC_VECTOR(12 DOWNTO 0);
		m_clk: inOUT std_logic;
		rst: in std_logic);
		
end FSM;

architecture Behavioral of FSM is


    
    
    -- declaraciones modelo FSM
    type STATES is (fetch, decodeexecute, pausa);
    signal edo_presente, edo_futuro: STATES;
	
	-- signals registros especializados
	
	signal IR: std_logic_vector(7 downto 0);
	signal PC: std_logic_vector(5 downto 0):="000110";
	signal MBR: std_logic_vector(27 downto 0);
	signal MAR: std_logic_vector(5 downto 0);
	
	-- signal ResultadoOP
	signal S_sel: STD_LOGIC_VECTOR(1 DOWNTO 0);
	signal ResultadoOP: std_logic_vector(12 downto 0); -- SIGNAL PARA RECUPERAR EL RESULTADO DE LA ALU
	SIGNAL A: STD_LOGIC_VECTOR(9 DOWNTO 0);
	SIGNAL B: STD_LOGIC_VECTOR(9 DOWNTO 0);
	SIGNAL A_AUX, B_AUX: STD_LOGIC_VECTOR(11 DOWNTO 0);
	SIGNAL FLAG_FINDECO : std_logic;
	
	------------Registros de proposito general
	SIGNAL RA: std_logic_vector(9 downto 0);
	SIGNAL RB: std_logic_vector(9 downto 0);
	SIGNAL RC: std_logic_vector(9 downto 0);
	SIGNAL RD: std_logic_vector(9 downto 0);
	
	
	COMPONENT ROM is
		port( Clock : in std_logic;
		Reset : in std_logic;
		Enable : in std_logic;
		Read : in std_logic;
		Address : in std_logic_vector(5 downto 0);
		Data_out: out std_logic_vector(27 downto 0)
		);
	end COMPONENT;
	
	COMPONENT ALU IS
		PORT (ENTRADA:IN STD_LOGIC_VECTOR(11 DOWNTO 0);
			  ENTRADAB: IN STD_LOGIC_VECTOR(11 DOWNTO 0);
			  SEL4:IN STD_LOGIC_VECTOR(3 DOWNTO 0);
			  OUT_ALU:OUT STD_LOGIC_VECTOR(12 DOWNTO 0);
			  SIGNO,INDET:OUT STD_LOGIC
			  );
				
	END COMPONENT;
	

begin
	s_sel <= selector;
    -- registro de estados
    process(m_clk)
    begin
        if m_clk'event and m_clk='1' then
            if RST='1' then 
                edo_presente <= fetch;
            else 
                edo_presente <= edo_futuro;
            end if;
         end if;
    end process;
	
	
	
	

    -- L?gica de estado siguiente (circuito combinacional)
    process (edo_presente)
	
    begin
        edo_futuro <= edo_presente; 
		IR<= MBR(27 downto 20);
        case edo_presente is 
        when fetch =>
            IF(MBR = "0000000000000000000000000000") THEN
				edo_futuro <= pausa;
			ELSE 
				edo_futuro <= decodeexecute;
			end if;
        when decodeexecute =>
            edo_futuro <= FETCH;
        when pausa =>
            IF( SELECTOR = S_SEL) THEN
				 edo_futuro <= pausa;
				  ELSE
				   edo_futuro <= fetch;
			 end if;
        end case;
		
    end process;
    
    -- salida tipo Moore
    process (edo_presente)
    begin
        -- estableciendo la salida por defecto
        -- nos aseguramos de crear un circuito
        -- combinacional sin latches.
        
        case edo_presente is 
        when fetch => 
			MAR<=PC;
			PC<= PC + "000001";
			--IR<= MBR(27 downto 20);
			IF(IR(7 DOWNTO 6) = "00") THEN
			
				A<=MBR(19 DOWNTO 10);
				B<=MBR(9 DOWNTO 0);
				
			ELSIF(IR(7 DOWNTO 6) = "01") THEN
			
				A<=MBR(19 DOWNTO 10);
				IF(MBR(1 DOWNTO 0) = "00") THEN
					B<=RA;
				ELSIF(MBR(1 DOWNTO 0) = "01") THEN
					B<=RB;
				ELSIF(MBR(1 DOWNTO 0) = "10") THEN
					B<=RC;
				ELSIF(MBR(1 DOWNTO 0) = "11") THEN
					B<=RD;
				END IF;
				
			ELSIF(IR(7 DOWNTO 6) = "10") THEN
			
				IF(MBR(11 DOWNTO 10) = "00") THEN
					A<=RA;
				ELSIF(MBR(11 DOWNTO 10) = "01") THEN
					A<=RB;
				ELSIF(MBR(11 DOWNTO 10) = "10") THEN
					A<=RC;
				ELSIF(MBR(11 DOWNTO 10) = "11") THEN
					A<=RD;
				END IF;
				
				B<=MBR(9 DOWNTO 0);
				
			ELSIF(IR(7 DOWNTO 6) = "11") THEN
			
				IF(MBR(11 DOWNTO 10) = "00") THEN
					A<=RA;
				ELSIF(MBR(11 DOWNTO 10) = "01") THEN
					A<=RB;
				ELSIF(MBR(11 DOWNTO 10) = "10") THEN
					A<=RC;
				ELSIF(MBR(11 DOWNTO 10) = "11") THEN
					A<=RD;
				END IF;
				
				IF(MBR(1 DOWNTO 0) = "00") THEN
					B<=RA;
				ELSIF(MBR(1 DOWNTO 0) = "01") THEN
					B<=RB;
				ELSIF(MBR(1 DOWNTO 0) = "10") THEN
					B<=RC;
				ELSIF(MBR(1 DOWNTO 0) = "11") THEN
					B<=RD;
				END IF;
				
			END IF;
			
        when decodeexecute =>
			
			IF(IR(5 DOWNTO 4) = "00") THEN
					ra <= ResultadoOP(9 DOWNTO 0);
				ELSIF(IR(5 DOWNTO 4) = "01") THEN
					rb <= ResultadoOP(9 DOWNTO 0);
				ELSIF(IR(5 DOWNTO 4) = "10") THEN
					rc <= ResultadoOP(9 DOWNTO 0);
				ELSIF (IR(5 DOWNTO 4) = "11") THEN
					rd <= ResultadoOP(9 DOWNTO 0);
			END IF;    
        when pausa =>
			SALIDA<="000"&rd;
        end case; 
    end process;    
	
	CALL0: ROM PORT MAP (M_CLK,'0','1','1', MAR(5 DOWNTO 0), MBR(27 DOWNTO 0));
	A_AUX <= "00" & A;
	B_AUX <= "00" & B;
	CALL1: ALU PORT MAP (
			  ENTRADA=>A_AUX,
			  ENTRADAB=> B_AUX,
			  SEL4=> IR(3 DOWNTO 0),
			  OUT_ALU => ResultadoOP,
			  SIGNO => SIG,
			  INDET => IDET);
	 SALIDA <= ResultadoOP;

end Behavioral;