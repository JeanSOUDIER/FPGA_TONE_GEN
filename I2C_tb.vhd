library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity I2C_TB is
end entity;

architecture test of I2C_TB is
	component I2C is
	generic(constant ADDR_G : natural := 1);
	port (
		CLK, RST, Vi : in std_logic;
		DATA, INS : in std_logic_vector(7 downto 0);
		S, Vs, AND_O : out std_logic
	);
	end component;
	signal DATA_TB, INS_TB : std_logic_vector(7 downto 0) := (others=>'Z');
	signal CLK_TB, RST_TB, S_TB, Vs_TB, AND_O_TB : std_logic;
	signal Vi_TB : std_logic := '0';
begin
	U1 : entity work.I2C (dfl)
		port map (CLK=>CLK_TB,RST=>RST_TB,Vi=>Vi_TB,DATA=>DATA_TB,S=>S_TB,Vs=>Vs_TB,AND_O=>AND_O_TB,INS=>INS_TB);
	P1 : process
	begin
		CLK_TB <= '0';
		wait for 1 ns;
		CLK_TB <= '1';
		wait for 1 ns;
	end process;
	P2 : process
	begin
		RST_TB <= '0';
		wait for 5 ns;
		RST_TB <= '1';
		wait;
	end process;
	P3 : process
	begin
		wait for 10 ns;
		DATA_TB <= "00101100";
		wait for 2 ns;
		Vi_TB <= '1';
		wait for 38 ns;
		Vi_TB <= '0';
		wait for 2 ns;
		DATA_TB <= "11010011";
		Vi_TB <= '1';
		wait;
	end process;
end architecture;
