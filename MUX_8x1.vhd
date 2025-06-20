
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/11/2024 03:35:08 PM
-- Design Name: 
-- Module Name: MUX_8x1 - Behavioral
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
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity MUX_8x1 is
Generic(d_w: integer := 4);
 Port ( X1,X2,X3,X4,X5,X6,X7,X8: in std_logic_vector(d_w-1 downto 0);
 S: in std_logic_vector(2 downto 0);
 
 Y: inout std_logic_vector(d_w-1 downto 0)
 );
end MUX_8x1;

architecture Behavioral of MUX_8x1 is

begin
Mux_8x1_proc: process(X1,X2,X3,X4,X5,X6,X7,X8,S) 
 begin
 case S is 
 when "000"=> Y <=X1;
 when "001"=> Y <=X2;
 when "010"=> Y <=X3;
 when "011"=> Y <=X4;
 when "100"=> Y <=X5;
 when "101"=> Y <=X6;
 when "110"=> Y <=X7;
 when "111"=> Y <=X8;
 
 when others=> Y <="XXXX";
 end case;
 end process;
end Behavioral;
