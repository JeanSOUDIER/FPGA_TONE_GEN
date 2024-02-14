library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity CPT is
	port (
		CLK, RST : in std_logic;
		DATA_I : in std_logic_vector(9 downto 0);
		DATA_O : out std_logic_vector(9 downto 0)
	);
end entity;

architecture dfl of CPT is
begin
	process(CLK, RST)
	variable Cpte : integer range 0 to 255 := 0;
	variable Cpts : integer range 0 to 1023 := 0;
	variable Cptr : integer range 0 to 1023 := 0;
	begin
		if (RST = '0') then
			Cpte := 0;
			Cpts := to_integer(unsigned(DATA_I));
			DATA_O <= DATA_I;
		else
			if (rising_edge(CLK)) then
				if(Cpte < 255) then	
					Cpte := Cpte+1;
				else
					Cpte := 0;
					Cpts := to_integer(unsigned(DATA_I));
				end if;
				Cptr := Cpte+Cpts;
				DATA_O <= std_logic_vector(to_unsigned(Cptr,10));
			end if;
		end if;
	end process;
end architecture;
