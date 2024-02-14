library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity I2C is
	generic(constant ADDR_G : integer := 564; constant EN : integer := 3);
	port (
		CLK, RST, Vi : in std_logic;
		DATA, INS : in std_logic_vector(7 downto 0);
		S, Vs, AND_O : out std_logic
	);
end entity;

architecture dfl of I2C is
type t_State is (Starter, SendAddr, SendIns, Ack1, SendData, Ack2, SendEnd, Ender);
signal State : t_State;
signal temp : std_logic_vector(9 downto 0);
signal temp2 : std_logic_vector(2 downto 0);
begin
	process(CLK, RST)
	variable Cpte : integer range 0 to 9 := 0;
	begin
		if (RST = '0') then
			Vs <= '0';
			Cpte := 7;
			State <= Starter;
			S <= '0';
			AND_O <= '0';
		else
			if (rising_edge(CLK)) then
				case State is
					when Starter =>
						Vs <= '0';
						S <= '0';
						AND_O <= '0';
						Cpte := 9;
						if(Vi = '1') then
							temp <= std_logic_vector(to_unsigned(ADDR_G, 10));
							temp2 <= std_logic_vector(to_unsigned(EN, 3));
							State <= SendAddr;
						end if;
					when SendAddr =>
						Vs <= '0';
						AND_O <= '1';
						if(Cpte > 0) then
							S <= temp(Cpte);
							Cpte := Cpte-1;
						else
							S <= temp(0);
							Cpte := 7;
							State <= SendIns;
						end if;
					when SendIns =>
						Vs <= '0';
						AND_O <= '1';
						if(Cpte > 0) then
							S <= INS(Cpte);
							Cpte := Cpte-1;
						else
							S <= INS(0);
							Cpte := 7;
							State <= Ack1;
						end if;
					when Ack1 =>
						Vs <= '0';
						AND_O <= '1';
						S <= 'Z';
						Cpte := 7;
						State <= SendData;
					when SendData =>
						Vs <= '0';
						AND_O <= '1';
						if(Cpte > 0) then
							S <= DATA(Cpte);
							Cpte := Cpte-1;
						else
							S <= DATA(0);
							Cpte := 0;
							State <= Ack2;
						end if;
					when Ack2 =>
						Vs <= '0';
						AND_O <= '1';
						S <= 'Z';
						Cpte := 2;
						State <= SendEnd;
					when SendEnd =>
						Vs <= '0';
						AND_O <= '1';
						if(Cpte > 0) then
							S <= temp2(Cpte);
							Cpte := Cpte-1;
						else
							S <= temp2(0);
							Cpte := 7;
							State <= Ender;
						end if;
					when Ender =>
						Vs <= '1';
						AND_O <= '0';
						S <= '0';
						Cpte := 7;
						if(Vi = '0') then
							State <= Starter;
						end if;
				end case;
			end if;
		end if;
	end process;
end architecture;
