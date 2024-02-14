library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity CPT_TB is
end entity;

architecture test of CPT_TB is
	component CPT is
	port (
		CLK, RST : in std_logic;
		DATA_I : in std_logic_vector(9 downto 0);
		DATA_O : out std_logic_vector(9 downto 0)
	);
	end component;
	signal CLK_TB, RST_TB : std_logic;
	signal DATA_I_TB : std_logic_vector(9 downto 0);
	signal DATA_O_TB : std_logic_vector(9 downto 0) := (others=>'Z');
begin
	U1 : entity work.CPT (dfl)
		port map (CLK=>CLK_TB, RST=>RST_TB, DATA_I=>DATA_I_TB, DATA_O=>DATA_O_TB);
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
		DATA_I_TB <= "0100000000";
		wait for 5 ns;
		RST_TB <= '0';
		wait;
	end process;
end architecture;
