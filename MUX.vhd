----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/06/2022 04:17:47 AM
-- Design Name: 
-- Module Name: MUX - Behavioral
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
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity MUX is
    Port ( A : in STD_LOGIC_VECTOR (13 downto 0);
           B : in STD_LOGIC_VECTOR (3 downto 0);
           C : in STD_LOGIC_VECTOR (13 downto 0);
           CS : in STD_LOGIC_VECTOR (1 downto 0);
           OUTT : out STD_LOGIC_VECTOR (13 downto 0));
end MUX;

architecture Behavioral of MUX is

begin
OUTT <= A WHEN CS="00"ELSE
        "0000000000"& B WHEN CS="01"ELSE
        C WHEN CS="10";

end Behavioral;
