----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/20/2024 08:22:56 PM
-- Design Name: 
-- Module Name: Main_tb - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use STD.ENV.FINISH;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Main_tb is
--  Port ( );
end Main_tb;

architecture Behavioral of Main_tb is
constant d_w_c: integer := 4;
signal A1,B1,A2,B2,A3,B3,A4,B4:std_logic_vector(d_w_c-1 downto 0);
signal S1,S2,S3,S4,S5,S6,S7,S8,S9,S10,S11,S12: std_logic_vector(4 downto 0);
signal M1,M2,M3,M4,M5,M6,M7,M8,M9,M10,M15,M16: std_logic_vector(1 downto 0);
signal M11,M12,M13,M14: std_logic_vector(2 downto 0);
signal O1,O2,O3,O4: std_logic_vector(d_w_c-1 downto 0);
begin
instance: entity work.Main (Behavioral)
port map(A1=>A1,B1=>B1,A2=>A2,B2=>B2,A3=>A3,B3=>B3,A4=>A4,B4=>B4,
         S1=>S1,S2=>S2,S3=>S3,S4=>S4,S5=>S5,S6=>S6,S7=>S7,S8=>S8,S9=>S9,S10=>S10,S11=>S11,S12=>S12,
         M1=>M1,M2=>M2,M3=>M3,M4=>M4,M5=>M5,M6=>M6,M7=>M7,M8=>M8,M9=>M9,M10=>M10,M11=>M11,M12=>M12,M13=>M13,M14=>M14,M15=>M15,M16=>M16,
         O1=>O1,O2=>O2,O3=>O3,O4=>O4);
process
begin
--CASE 1
A1<="1001";B1<="0010";A2<="1000";B2<="0011";A3<="1011";B3<="0010";A4<="1010";B4<="0011";
S1<="10000";S2<="10001";S3<="10100";S4<="10101";
M1<="00";M2<="11";M3<="01";M4<="10";M5<="11";M6<="10";M7<="01";M8<="00";
S5<="10010";S6<="00011";S7<="01111";S8<="01101";
M9<="00";M10<="11";M11<="001";M12<="111";M13<="010";M14<="110";M15<="11";M16<="10";
S9<="01110";S10<="00100";S11<="10011";S12<="00101";wait for 500ns;

--CASE 2
A1<="1011";B1<="0011";A2<="0100";B2<="0010";A3<="1100";B3<="0011";A4<="1001";B4<="0010";
S1<="10100";S2<="10001";S3<="10101";S4<="10000";
M1<="10";M2<="00";M3<="11";M4<="01";M5<="01";M6<="10";M7<="00";M8<="00";
S5<="00101";S6<="00010";S7<="00011";S8<="10010";
M9<="10";M10<="00";M11<="110";M12<="010";M13<="111";M14<="001";M15<="01";M16<="11";
S9<="10011";S10<="01111";S11<="01001";S12<="01110";wait for 500ns;
wait;
end process;
end Behavioral;
