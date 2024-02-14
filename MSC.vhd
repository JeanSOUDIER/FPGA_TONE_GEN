library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity MSC is
	port (
		CLK, RST, A_I2C : in std_logic;
		DATA_VOL : in std_logic_vector(7 downto 0);
		DATA_I2C, INS_I2C : out std_logic_vector(7 downto 0);
		St_I2C, St_CPT, St_I2S : out std_logic
	);
end entity;

architecture dfl of MSC is
type t_State is (Starter, SendI2C_A, SendI2C_St, SendI2C_A1, SendI2C_St1, SendI2C_A2, SendI2C_St2, SendI2C_A3, SendI2C_St3, SendI2C_A4, SendI2C_St4, SendI2C_A5, SendI2C_St5, SendI2C_A6, SendI2C_St6, Sgo1, Svol1, Svol2);
signal State : t_State;
begin
	process(CLK, RST)
	variable Cpte : integer range 0 to 31 := 0;
	begin
		if (RST = '0') then
			St_I2C <= '0';
			St_CPT <= '0';
			St_I2S <= '0';
			State <= Starter;
			DATA_I2C <= "00000000";
			INS_I2C <= "00000000";
		else
			if (rising_edge(CLK)) then
				case State is
					when Starter =>
						St_I2C <= '0';
						St_CPT <= '0';
						St_I2S <= '0';
						DATA_I2C <= "00000000";
						INS_I2C <= "00000000";
						State <= SendI2C_A;
					when SendI2C_A =>
						St_I2C <= '0';
						St_CPT <= '0';
						St_I2S <= '0';
						DATA_I2C <= "10110000";
						INS_I2C <= "00000101";
						State <= SendI2C_St;
					when SendI2C_St =>
						St_I2C <= '1';
						St_CPT <= '0';
						St_I2S <= '0';
						DATA_I2C <= "10110000";
						INS_I2C <= "00000101";
						if(A_I2C = '1') then
							State <= SendI2C_A1;
						else
							State <= SendI2C_St;
						end if;
					when SendI2C_A1 =>
						St_I2C <= '0';
						St_CPT <= '0';
						St_I2S <= '0';
						DATA_I2C <= "10110000";
						INS_I2C <= "00000111";
						State <= SendI2C_St1;
					when SendI2C_St1 =>
						St_I2C <= '1';
						St_CPT <= '0';
						St_I2S <= '0';
						DATA_I2C <= "10110000";
						INS_I2C <= "00000111";
						if(A_I2C = '1') then
							State <= SendI2C_A2;
						else
							State <= SendI2C_St1;
						end if;
					when SendI2C_A2 =>
						St_I2C <= '0';
						St_CPT <= '0';
						St_I2S <= '0';
						DATA_I2C <= "00010010";
						INS_I2C <= "00001000";
						State <= SendI2C_St2;
					when SendI2C_St2 =>
						St_I2C <= '1';
						St_CPT <= '0';
						St_I2S <= '0';
						DATA_I2C <= "00010010";
						INS_I2C <= "00001000";
						if(A_I2C = '1') then
							State <= SendI2C_A3;
						else
							State <= SendI2C_St2;
						end if;
					when SendI2C_A3 =>
						St_I2C <= '0';
						St_CPT <= '0';
						St_I2S <= '0';
						DATA_I2C <= "00000000";
						INS_I2C <= "00001010";
						State <= SendI2C_St3;
					when SendI2C_St3 =>
						St_I2C <= '1';
						St_CPT <= '0';
						St_I2S <= '0';
						DATA_I2C <= "00000000";
						INS_I2C <= "00001010";
						if(A_I2C = '1') then
							State <= SendI2C_A4;
						else
							State <= SendI2C_St3;
						end if;
					when SendI2C_A4 =>
						St_I2C <= '0';
						St_CPT <= '0';
						St_I2S <= '0';
						DATA_I2C <= "00000111";
						INS_I2C <= "00001100";
						State <= SendI2C_St4;
					when SendI2C_St4 =>
						St_I2C <= '1';
						St_CPT <= '0';
						St_I2S <= '0';
						DATA_I2C <= "00000111";
						INS_I2C <= "00001100";
						if(A_I2C = '1') then
							State <= SendI2C_A5;
						else
							State <= SendI2C_St4;
						end if;
					when SendI2C_A5 =>
						St_I2C <= '0';
						St_CPT <= '0';
						St_I2S <= '0';
						DATA_I2C <= "00001110";
						INS_I2C <= "00001110";
						State <= SendI2C_St5;
					when SendI2C_St5 =>
						St_I2C <= '1';
						St_CPT <= '0';
						St_I2S <= '0';
						DATA_I2C <= "00001110";
						INS_I2C <= "00001110";
						if(A_I2C = '1') then
							State <= SendI2C_A6;
						else
							State <= SendI2C_St5;
						end if;
					when SendI2C_A6 =>
						St_I2C <= '0';
						St_CPT <= '0';
						St_I2S <= '0';
						DATA_I2C <= "00001110";
						INS_I2C <= "00001110";
						State <= SendI2C_St6;
					when SendI2C_St6 =>
						St_I2C <= '1';
						St_CPT <= '0';
						St_I2S <= '0';
						DATA_I2C <= "00001110";
						INS_I2C <= "00001110";
						if(A_I2C = '1') then
							State <= Sgo1;
						else
							State <= SendI2C_St6;
						end if;
					when Sgo1 =>
						St_I2C <= '0';
						St_CPT <= '1';
						St_I2S <= '0';
						DATA_I2C <= "00000010";
						INS_I2C <= "00000000";
						State <= Svol1;
					when Svol1 =>
						St_I2C <= '0';
						St_CPT <= '0';
						St_I2S <= '1';
						DATA_I2C <= DATA_VOL;
						INS_I2C <= "00000000";
						State <= Svol2;
					when Svol2 =>
						St_I2C <= '0'; --1
						St_CPT <= '0';
						St_I2S <= '1';
						DATA_I2C <= DATA_VOL;
						INS_I2C <= "00000000";
						if(A_I2C = '1') then
							State <= Svol1;
						else
							State <= Svol2;
						end if;
				end case;
			end if;
		end if;
	end process;
end architecture;
