library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity MSC_TB is
end entity;

architecture test of MSC_TB is
	component MSC is
	port (
		CLK, RST, A_I2C : in std_logic;
		DATA_VOL : in std_logic_vector(7 downto 0);
		DATA_I2C, INS_I2C : out std_logic_vector(7 downto 0);
		St_I2C, St_CPT, St_I2S : out std_logic
	);
	end component;
	signal CLK_TB, RST_TB, A_I2C_TB, St_I2C_TB, St_CPT_TB, St_I2S_TB : std_logic;
	signal DATA_I2C_TB : std_logic_vector(7 downto 0) := (others=>'Z');
	signal DATA_VOL_TB : std_logic_vector(7 downto 0);
begin
	U1 : entity work.MSC (dfl)
		port map (CLK=>CLK_TB,RST=>RST_TB,A_I2C=>A_I2C_TB,St_I2C=>St_I2C_TB,St_CPT=>St_CPT_TB,St_I2S=>St_I2S_TB,DATA_I2C=>DATA_I2C_TB,DATA_VOL=>DATA_VOL_TB);
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
		DATA_VOL_TB <= "01011101";
		wait for 5 ns;
		RST_TB <= '1';
		wait;
	end process;
	P3 : process
	begin
		A_I2C_TB <= '0';
		wait until St_I2C_TB = '1';
		A_I2C_TB <= '1';
		wait for 4 ns;
	end process;
end architecture;
