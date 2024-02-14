Library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity MAIN_COMP is
	--declaration des constantes
	generic(constant ROM_SIZE_X : natural := 5; constant ROM_SIZE_Y : natural := 2; constant DATA_WIDTH : natural := 32; constant ADDR_G : integer := 564; constant EN : integer := 3; constant DIV_I2C : integer := 500; constant DIV_I2S : integer := 3551);
	port(
		M_CLK_I, M_RST_I : in std_logic;
		OCTAVE_SEL_I : in std_logic_vector(1 downto 0);
		DATA_VOL_I, DATA_OCTAVE_I : in std_logic_vector(7 downto 0);
		I2C_D_O, I2C_C_O, I2S_D_O, I2S_S_O, I2S_C_O : out std_logic
	);
end MAIN_COMP;

-------------------------------------------------------------------declaration de l'architecture de notre entite
architecture bhv of MAIN_COMP is

component MSC is
	port (
		CLK, RST, A_I2C : in std_logic;
		DATA_VOL : in std_logic_vector(7 downto 0);
		DATA_I2C, INS_I2C : out std_logic_vector(7 downto 0);
		St_I2C, St_CPT, St_I2S : out std_logic
	);                          								--sortie
end component;

component I2C is
	generic(constant ADDR_G : integer := 564; constant EN : integer := 3);
	port (
		CLK, RST, Vi : in std_logic;
		DATA, INS : in std_logic_vector(7 downto 0);
		S, Vs, AND_O : out std_logic
	);
end component;

component I2S is
	port (
		CLK, RST, Vi : in std_logic;
		DATA_L, DATA_R : in std_logic_vector(31 downto 0);
		S, SID, SIDx2, AND_O, Vs : out std_logic
	);
end component;

component DIV is
	port (
		CLK, RST : in std_logic;
		DATA : in std_logic_vector(7 downto 0);
		CLKs : out std_logic
	);
end component;

component CPT is
	port (
		CLK, RST : in std_logic;
		DATA_I : in std_logic_vector(9 downto 0);
		DATA_O : out std_logic_vector(9 downto 0)
	);
end component;

component ROM is
	generic(constant ROM_SIZE_X : natural := 5; constant ROM_SIZE_Y : natural := 2; constant DATA_WIDTH : natural := 32);
	port (
		CLK, RST : std_logic;
		ADDR : in std_logic_vector((ROM_SIZE_X)*(ROM_SIZE_Y)-1 downto 0);
		Q : out std_logic_vector(DATA_WIDTH-1 downto 0)
	);
end component;

component reset_dem is
	port(Master_clk, Reset_n :in std_logic;	--entrees
		Reset_n_out :out std_logic -- sortie
	);
end component;

component FREQ_DIV is
	generic(constant DIV : integer := 1);
	port (
		CLK, RST : in std_logic;
		CLKs : out std_logic
	);
end component;

signal A_I2C : std_logic;
signal DATA_I2C : std_logic_vector(7 downto 0);
signal INS_I2C : std_logic_vector(7 downto 0);
signal St_I2C : std_logic;
signal St_CPT : std_logic;
signal St_I2S : std_logic;

signal ET_I2C : std_logic;

signal SI : std_logic;
signal ET_I2S : std_logic;
signal Vs : std_logic;

signal CL : std_logic;

signal TempOctave : std_logic_vector(9 downto 0);

signal ADDR : std_logic_vector((ROM_SIZE_X)*(ROM_SIZE_Y)-1 downto 0);
signal Q : std_logic_vector(DATA_WIDTH-1 downto 0);

signal RST : std_logic;

signal CLK_I2C : std_logic;
signal CLK_I2S : std_logic;

signal CLK : std_logic;
signal OCTAVE_SEL : std_logic_vector(1 downto 0);
signal DATA_VOL : std_logic_vector(7 downto 0);
signal DATA_OCTAVE : std_logic_vector(7 downto 0);
signal I2C_D : std_logic;
signal I2C_C : std_logic;
signal I2S_D : std_logic;
signal I2S_S : std_logic;
signal I2S_C : std_logic;

begin
	MSC_CO : component MSC
	port map(CLK=>CLK,RST=>RST,A_I2C=>A_I2C,DATA_VOL=>DATA_VOL,DATA_I2C=>DATA_I2C,INS_I2C=>INS_I2C,St_I2C=>St_I2C,St_CPT=>St_CPT,St_I2S=>St_I2S);

	I2C_CO : component I2C
	generic map(ADDR_G=>ADDR_G,EN=>EN)
	port map(CLK_I2C=>CLK,RST=>RST,St_I2C=>Vi,DATA_I2C=>DATA,INS_I2C=>INS,I2C_D=>S,A_I2C=>Vs,ET_I2C=>AND_O);

	I2S_CO : component I2S
	port map(CLK_I2S=>CLK,RST=>RST,St_I2S=>Vi,Q=>DATA_L,Q=>DATA_R,I2S_D=>S,I2S_S=>SID,SI=>SIDx2,ET_I2S=>AND_O,Vs=>Vs);

	DIV_CO : component DIV
	port map(SI=>CLK,RST=>RST,DATA_VOL=>DATA,CL=>CLKs);

	CPT_CO : component CPT
	port map(CL=>CLK,RST=>RST,TempOctave=>DATA_I,ADDR=>DATA_O);

	ROM_CO : component ROM
	generic map(ROM_SIZE_X=>ROM_SIZE_X_TB,ROM_SIZE_Y=>ROM_SIZE_Y_TB,DATA_WIDTH=>DATA_WIDTH_TB)
	port map(CL=>CLK,RST=>RST,ADDR=>ADDR,Q=>Q);

	reset_dem_CO : component reset_dem
	port map(CLK=>Master_clk,M_RST=>Reset_n,RST=>Reset_n_out);

	FREQ_DIV_I2C : component FREQ_DIV
	generic map(DIV_I2C=>DIV)
	port map(CLK=>CLK,RST=>RST,CLK_I2C=>CLKs);

	FREQ_DIV_I2S : component FREQ_DIV
	generic map(DIV_I2S=>DIV)
	port map(CLK=>CLK,RST=>RST,CLK_I2S=>CLKs);

	process(M_CLK_I, RST_I)
	begin
		I2C_C <= ET_I2C & CLK_I2C;
		I2S_C <= ET_I2S & CLK_I2S;
		TempOctave <= OCTAVE_SEL & DATA_OCTAVE;
		M_RST <= M_RST_I;
		CLK <= M_CLK_I;
		OCTAVE_SEL <= OCTAVE_SEL_I;
		DATA_VOL <= DATA_VOL_I;
		DATA_OCTAVE <= DATA_OCTAVE_I;
		I2C_D <= I2C_D_O;
		I2C_C <= I2C_C_O;
		I2S_D <= I2S_D_O;
		I2S_S <= I2S_S_O;
		I2S_C <= I2S_C_O;
	end process;
end bhv;
