library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity FREQ_DIV is
	generic(constant DIV : integer := 1);
	port (
		CLK, RST : in std_logic;
		CLKs : out std_logic
	);
end entity;

architecture dfl of FREQ_DIV is
signal temp : std_logic;
begin
	process(CLK, RST)
	variable Cpte : integer range 0 to DIV+1 := 0;
	begin
		if (RST = '0') then
			Cpte := 0;
			CLKs <= '0';
			temp <= '0';
		else
			if(rising_edge(CLK)) then
				if(Cpte = 0) then
					temp <= not(temp);
					Cpte := Cpte+1;
				else
					Cpte := Cpte+1;
					if(Cpte > DIV) then	
						Cpte := 0;
					end if;
				end if;
			end if;
			CLKs <= temp;
		end if;
	end process;
end architecture;
