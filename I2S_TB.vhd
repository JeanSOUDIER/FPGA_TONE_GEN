library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity I2S_TB is
end entity;

architecture test of I2S_TB is
	component I2S is
	port (
		CLK, RST, Vi : in std_logic;
		DATA_L, DATA_R : in std_logic_vector(31 downto 0);
		S, SID, SIDx2, AND_O, Vs : out std_logic
	);
	end component;
	signal DATA_L_TB, DATA_R_TB : std_logic_vector(31 downto 0) := (others=>'Z');
	signal CLK_TB, RST_TB, S_TB, Vs_TB, SID_TB, SIDx2_TB, AND_O_TB : std_logic;
	signal Vi_TB : std_logic := '0';
begin
	U1 : entity work.I2S (dfl)
		port map (CLK=>CLK_TB,RST=>RST_TB,Vi=>Vi_TB,DATA_R=>DATA_R_TB,DATA_L=>DATA_L_TB,SID=>SID_TB,SIDx2=>SIDx2_TB,S=>S_TB,Vs=>Vs_TB, AND_O=>AND_O_TB);
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
		DATA_R_TB <= "00101100001011000010110000101100";
		DATA_L_TB <= "11010011110100111101001111010011";
		wait for 2 ns;
		Vi_TB <= '1';
		--wait until Vs_TB = '1';
		--wait for 2 ns;
		--Vi_TB <= '0';
		wait for 100 ns;
		DATA_R_TB <= "00000000000000000000000000000000";
		DATA_L_TB <= "11111111111111111111111111111111";
		--Vi_TB <= '1';
		wait;
	end process;
end architecture;
