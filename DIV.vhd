----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/25/2022 04:37:42 PM
-- Design Name: 
-- Module Name: DIV - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity DIV is
    Port ( A : in STD_LOGIC_VECTOR (13 downto 0);
           B : in STD_LOGIC_VECTOR (13 downto 0);
           OUTT : out STD_LOGIC_VECTOR (13 downto 0));
end DIV;

architecture Behavioral of DIV is
signal x,Y :UNSIGNED(13 downto 0):="00000000000000";
--signal y : ufixed (3 downto -3);
begin
Y <= "00000000000001" WHEN B <= "00000000000000" ELSE
    UNSIGNED(B);
x <= unsigned(A)/ Y;
OUTT <= STD_LOGIC_VECTOR((x));

end Behavioral;
