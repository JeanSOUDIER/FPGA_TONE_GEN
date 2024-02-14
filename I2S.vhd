library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity I2S is
	port (
		CLK, RST, Vi : in std_logic;
		DATA_L, DATA_R : in std_logic_vector(31 downto 0);
		S, SID, SIDx2, AND_O, Vs : out std_logic
	);
end entity;

architecture dfl of I2S is
type t_State is (Starter, Starter1, SendL, SendR, Ender);
signal State : t_State;
signal DtL, DtR : std_logic_vector(31 downto 0);
begin
	process(CLK, RST)
	variable Cpte : integer range 0 to 31 := 0;
	begin
		if (RST = '0') then
			Vs <= '0';
			SID <= '0';
			SIDx2 <= '0';
			AND_O <= '0';
			S <= '0';
			State <= Starter;
			Cpte := 31;
		else
			if (rising_edge(CLK)) then
				case State is
					when Starter =>
						Vs <= '0';
						S <= '0';
						Cpte := 31;
						SID <= '0';
						SIDx2 <= '0';
						AND_O <= '0';
						if(Vi = '1') then
							State <= Starter1;
						end if;
					when Starter1 =>
						Vs <= '0';
						S <= '0';
						Cpte := 31;
						SID <= '0';
						SIDx2 <= '0';
						AND_O <= '0';
						DtL <= DATA_L;
						State <= SendL;
					when SendL =>
						Vs <= '0';
						SID <= '0';
						AND_O <= '1';
						if(Cpte > 16) then
							SIDx2 <= '1';
						else
							SIDx2 <= '0';
						end if;
						if(Cpte > 0) then
							S <= DtL(Cpte);
							Cpte := Cpte-1;
						else
							S <= DtL(0);
							DtR <= DATA_R;
							Cpte := 31;
							State <= SendR;
						end if;
					when SendR =>
						Vs <= '0';
						SID <= '1';
						AND_O <= '1';
						if(Cpte > 16) then
							SIDx2 <= '1';
						else
							SIDx2 <= '0';
						end if;
						if(Cpte > 0) then
							S <= DtR(Cpte);
							Cpte := Cpte-1;
						else
							S <= DtR(0);
							Cpte := 31;
							DtL <= DATA_L;
							if(vi = '0') then
								State <= Starter;
							else
								State <= SendL;
							end if;
						end if;
					when Ender =>
						Vs <= '1';
						S <= '0';
						SID <= '1';
						SIDx2 <= '1';
						Cpte := 7;
						if(Vi = '0') then
							State <= Starter;
						end if;
				end case;
			end if;
		end if;
	end process;
end architecture;
