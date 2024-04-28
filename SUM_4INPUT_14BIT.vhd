----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/18/2022 12:06:58 AM
-- Design Name: 
-- Module Name: SUM_4INPUT_14BIT - Behavioral
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

entity SUM_4INPUT_14BIT is
    Port ( A : in STD_LOGIC_VECTOR (13 downto 0);
           B : in STD_LOGIC_VECTOR (13 downto 0);
           C : in STD_LOGIC_VECTOR (13 downto 0);
           D : in STD_LOGIC_VECTOR (13 downto 0);
           OUTT : out STD_LOGIC_VECTOR (13 downto 0));
end SUM_4INPUT_14BIT;

architecture Behavioral of SUM_4INPUT_14BIT is
signal x :UNSIGNED(13 downto 0):="00000000000000";

begin
x <= unsigned(A)+ unsigned(B)+ unsigned(C)+ unsigned(D);
OUTT <= STD_LOGIC_VECTOR((x));


end Behavioral;
