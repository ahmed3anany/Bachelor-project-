----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/17/2022 05:20:14 PM
-- Design Name: 
-- Module Name: MUX_14BIT_2INPUT - Behavioral
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

entity MUX_14BIT_2INPUT is
    Port ( A : in STD_LOGIC_VECTOR (13 downto 0);
           B : in STD_LOGIC_VECTOR (13 downto 0);
           C : in STD_LOGIC;
           OUTT : out STD_LOGIC_VECTOR (13 downto 0));
end MUX_14BIT_2INPUT;

architecture Behavioral of MUX_14BIT_2INPUT is

begin
OUTT <= A WHEN C ='0'ELSE
        B;

end Behavioral;
