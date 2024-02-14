-------------------------------------------------------------------declaration des librairies utilisee------------------------------------------------------------------------------------------------
Library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

--------------------------------------------------------------------declaration de l'entitee----------------------------------------------------------------------------------------------------------
entity reset_dem is
	--declaration du port
	port(Master_clk, Reset_n :in std_logic;	--entrees
		Reset_n_out :out std_logic -- sortie
	);
end reset_dem;

-------------------------------------------------------------------declaration de l'architecture de notre entite--------------------------------------------------------------------------------------
architecture bhv of reset_dem is

	type state is (IDLE, State_Wait, State_End);
	signal CS: state:= IDLE;

-------------------------------------------------------------------description de la fonction de notre composant--------------------------------------------------------------------------------------
begin
	--declaration de notre procedure
	process(Master_clk, Reset_n)

	variable count:integer range 0 to 4:=4;
--------------------------------------------------------------debut la procedure----------------------------------------------------------------------------------------------------------------------
	begin
		if Reset_n='0' then
			Reset_n_out <= '0';
			count := 4;
			CS <= IDLE;
		elsif rising_edge(Master_clk) then
			case CS is
				when IDLE =>
					Reset_n_out <= '0';
					count := 4;
					CS <= State_Wait;
				when State_Wait =>
					Reset_n_out <= '0';
					if count = 0 then
						CS <= State_End;
					else
						count := count-1;
						CS <= State_Wait;
					end if;
				when State_End =>
					Reset_n_out <= '1';
				when others =>
					CS <= IDLE;
			end case;
		end if;
	end process;
end bhv;