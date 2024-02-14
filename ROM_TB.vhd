library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ROM_TB is
end entity;

architecture test of ROM_TB is
	component ROM is
	generic(constant ROM_SIZE_X : natural := 5; constant ROM_SIZE_Y : natural := 2; constant DATA_WIDTH : natural := 32);
	port (
		CLK, RST : std_logic;
		ADDR : in std_logic_vector((ROM_SIZE_X)*(ROM_SIZE_Y)-1 downto 0);
		Q : out std_logic_vector(DATA_WIDTH-1 downto 0)
	);
	end component;
	constant ROM_SIZE_X_TB : natural := 5;
	constant ROM_SIZE_Y_TB : natural := 2;
	constant DATA_WIDTH_TB : natural := 32;
	signal ADDR_TB : std_logic_vector((ROM_SIZE_X_TB)*(ROM_SIZE_Y_TB)-1 downto 0) := (others=>'Z');
	signal Q_TB : std_logic_vector(DATA_WIDTH_TB-1 downto 0);
	signal CLK_TB, RST_TB : std_logic;
begin
	U1 : entity work.ROM (bhv)
		generic map(ROM_SIZE_X=>ROM_SIZE_X_TB,ROM_SIZE_Y=>ROM_SIZE_Y_TB,DATA_WIDTH=>DATA_WIDTH_TB)
		port map (Q=>Q_TB, ADDR=>ADDR_TB, CLK=>CLK_TB, RST=>RST_TB);
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
	variable cpt : integer range 0 to 2**(ROM_SIZE_X_TB*ROM_SIZE_Y_TB)-1 := 0;
	begin
		wait for 10 ns;
		if(cpt < 2**(ROM_SIZE_X_TB*ROM_SIZE_Y_TB)-1) then
			cpt := cpt+1;
		else
			cpt := 0;
		end if;
		ADDR_TB <= std_logic_vector(to_unsigned(cpt, (ROM_SIZE_X_TB*ROM_SIZE_Y_TB)));
		wait for 5 ns;
	end process;
end architecture;
