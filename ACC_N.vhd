----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/17/2022 07:43:38 PM
-- Design Name: 
-- Module Name: ACC_N - Behavioral
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

entity ACC_N is
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
--           control : in STD_LOGIC;
           A : in STD_LOGIC_VECTOR (13 downto 0);
           OUTT : out STD_LOGIC_VECTOR (13 downto 0));
end ACC_N;

architecture Behavioral of ACC_N is
signal x : UNSIGNED(13 DOWNTO 0):= "00000000000000";
signal y : UNSIGNED(13 downto 0):="00000000000000";
begin
process(clk)
begin
if(rising_edge(clk) and clk='1')then
             y <= unsigned(A)+ unsigned(x);
             OUTT <= STD_LOGIC_VECTOR((y));
             x <= y;
 end if;
 end process;
        
end Behavioral;
