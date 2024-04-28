----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/26/2022 04:46:00 AM
-- Design Name: 
-- Module Name: REG_K - Behavioral
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

entity REG_K is
    Port ( A : in STD_LOGIC_VECTOR (13 downto 0);
           clk,reset :STD_LOGIC;
           OUTT : out STD_LOGIC_VECTOR (13 downto 0));
end REG_K;

architecture Behavioral of REG_K is
signal x,y : STD_LOGIC_VECTOR(13 DOWNTO 0):="00000000000000";
begin
PROCESS(clk,reset)
begin
if(rising_edge(clk) and clk='1')then
        OUTT <= x;
        x <= A;
        end if;
end process;
end Behavioral;
