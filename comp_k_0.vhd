----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/26/2022 04:40:52 AM
-- Design Name: 
-- Module Name: comp_k_0 - Behavioral
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

entity comp_k_0 is
    Port ( A : in STD_LOGIC_VECTOR (13 downto 0);
           OUTT : out STD_LOGIC);
end comp_k_0;

architecture Behavioral of comp_k_0 is
signal x : STD_LOGIC_VECTOR(13 DOWNTO 0):="00000000000000";
begin
OUTT <= '0' when A = x else
        '1';

end Behavioral;
