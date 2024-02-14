library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity DIV_TB is
end entity;

architecture test of DIV_TB is
	component DIV is
	port (
		CLK, RST : in std_logic;
		DATA : in std_logic_vector(7 downto 0);
		CLKs : out std_logic
	);
	end component;
	signal CLK_TB, RST_TB, CLKs_TB : std_logic;
	signal DATA_TB : std_logic_vector(7 downto 0) := (others=>'Z');
begin
	U1 : entity work.DIV (dfl)
		port map (CLK=>CLK_TB, RST=>RST_TB, CLKs=>CLKs_TB, DATA=>DATA_TB);
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
	P3 : process
	begin
		DATA_TB <= "00000000";
		wait for 50 ns;
		DATA_TB <= "00000010";
		wait for 50 ns;
		DATA_TB <= "11111111";
		wait for 50 ns;
	end process;
end architecture;
