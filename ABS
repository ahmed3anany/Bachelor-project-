----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/05/2022 04:16:54 PM
-- Design Name: 
-- Module Name: ABSS - Behavioral
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

entity ABSS is
    Port ( A : in STD_LOGIC_VECTOR (13 downto 0);
           OUTT : out STD_LOGIC_VECTOR (13 downto 0));
end ABSS;

architecture Behavioral of ABSS is
signal x :UNSIGNED(13 downto 0):="00000000000000";
signal y :UNSIGNED(13 downto 0):="00000000000001";
begin

x<= UNSIGNED(NOT(A))+ y when A(13)='1'ELSE
    UNSIGNED(A);
OUTT <= STD_LOGIC_VECTOR((x));

end Behavioral;
