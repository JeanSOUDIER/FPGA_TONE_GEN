library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity DIV is
	port (
		CLK, RST : in std_logic;
		DATA : in std_logic_vector(7 downto 0);
		CLKs : out std_logic
	);
end entity;

architecture dfl of DIV is
signal temp : std_logic;
begin
	process(CLK, RST)
	variable Cpte : integer range 0 to 512 := 0;
	variable D : integer range 0 to 256 := 0;
	begin
		if (RST = '0') then
			Cpte := 0;
			CLKs <= '0';
			temp <= '0';
			D := 256-to_integer(unsigned(DATA));
		else
			if (rising_edge(CLK)) then
				if(Cpte = 0) then
					temp <= not(temp);
					D := 256-to_integer(unsigned(DATA));
					Cpte := Cpte+1;
				else
					Cpte := Cpte+D;
					if(Cpte > 254) then	
						Cpte := 0;
					end if;
				end if;
			end if;
			CLKs <= temp;
		end if;
	end process;
end architecture;
