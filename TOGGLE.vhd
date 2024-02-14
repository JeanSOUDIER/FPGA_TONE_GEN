library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity MSC is
	port (
		CLK, RST : in std_logic;
		 : out std_logic
	);
end entity;

architecture dfl of MSC is
type t_State is (Starter, SendL, SendR, Ender);
signal State : t_State;
begin
	process(CLK, RST)
	variable Cpte : integer range 0 to 31 := 0;
	begin
		if (RST = '0') then
			Vs <= '0';
			CLKs <= '0';
			SID <= '0';
			S <= '0';
			State <= Starter;
			Cpte := 31;
		else
			if(State = SendR) or (State = SendL) then
				CLKs <= CLK;
			end if;
			if (rising_edge(CLK)) then
				case State is
					when Starter =>
						Vs <= '0';
						S <= '0';
						CLKs <= '0';
						Cpte := 31;
						SID <= '0';
						if(Vi = '1') then
							State <= SendL;
						end if;
					when SendL =>
						Vs <= '0';
						SID <= '0';
						if(Cpte > 0) then
							S <= DATA_L(Cpte);
							Cpte := Cpte-1;
						else
							S <= DATA_L(0);
							Cpte := 31;
							State <= SendR;
						end if;
					when SendR =>
						Vs <= '0';
						SID <= '1';
						if(Cpte > 0) then
							S <= DATA_R(Cpte);
							Cpte := Cpte-1;
						else
							S <= DATA_R(0);
							Cpte := 0;
							State <= Ender;
						end if;
					when Ender =>
						Vs <= '1';
						S <= '0';
						SID <= '1';
						CLKs <= '0';
						Cpte := 7;
						if(Vi = '0') then
							State <= Starter;
						end if;
				end case;
			end if;
		end if;
	end process;
end architecture;
