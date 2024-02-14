library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity FREQ_DIV_TB is
end entity;

architecture test of FREQ_DIV_TB is
	component FREQ_DIV is
	generic(constant DIV : integer := 1);
	port (
		CLK, RST : in std_logic;
		CLKs : out std_logic
	);
	end component;
	constant DIV_TB : natural := 20;
	signal CLK_TB, RST_TB, CLKs_TB : std_logic;
begin
	U1 : entity work.FREQ_DIV (dfl)
	generic map(DIV=>DIV_TB)
	port map (CLK=>CLK_TB, RST=>RST_TB, CLKs=>CLKs_TB);
	P1 : process
	begin
		CLK_TB <= '0';
		wait for 1 ns;
		CLK_TB <= '1';
		wait for 1 ns;
	end process;
	P2 : process
	begin
		RST_TB <= '1';
		wait for 5 ns;
		RST_TB <= '0';
		wait;
	end process;
end architecture;
