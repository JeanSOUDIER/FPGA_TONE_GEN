library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity BLINK is
	generic(constant RATIO : natural := 50000000);
	port (
		CLK, RST : in std_logic;
		S : out std_logic
	);
end entity;

architecture dfl of BLINK is
signal So : std_logic := '0';
begin
	process(CLK, RST)
	variable Cpte : integer range 0 to RATIO-1 := 0;
	begin
		if (RST = '0') then
			Cpte := 0;
		else
			if (rising_edge(CLK)) then
				if(Cpte < RATIO-1) then
					Cpte := Cpte+1;
				else
					Cpte := 0;
					So <= not(So);
				end if;
				
			end if;
		end if;
		S <= So;
	end process;
end architecture;
