----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/30/2022 04:06:07 AM
-- Design Name: 
-- Module Name: CR - Behavioral
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

entity CR is
    Port ( CLK,RESET : IN STD_LOGIC;
           C1X : in STD_LOGIC_VECTOR (13 downto 0);
           C1Y : in STD_LOGIC_VECTOR (13 downto 0);
           C2X : in STD_LOGIC_VECTOR (13 downto 0);
           C2Y : in STD_LOGIC_VECTOR (13 downto 0);
           C3X : in STD_LOGIC_VECTOR (13 downto 0);
           C3Y : in STD_LOGIC_VECTOR (13 downto 0);
           C4X : in STD_LOGIC_VECTOR (13 downto 0);
           C4Y : in STD_LOGIC_VECTOR (13 downto 0);
           C1X_OUT : out STD_LOGIC_VECTOR (13 downto 0);
           C1Y_OUT : out STD_LOGIC_VECTOR (13 downto 0);
           C2X_OUT : out STD_LOGIC_VECTOR (13 downto 0);
           C2Y_OUT : out STD_LOGIC_VECTOR (13 downto 0);
           C3X_OUT : out STD_LOGIC_VECTOR (13 downto 0);
           C3Y_OUT : out STD_LOGIC_VECTOR (13 downto 0);
           C4X_OUT : out STD_LOGIC_VECTOR (13 downto 0);
           C4Y_OUT : out STD_LOGIC_VECTOR (13 downto 0));
end CR;

architecture Behavioral of CR is
SIGNAL C1X_S,C1Y_S,C4X_S :STD_LOGIC_VECTOR (13 downto 0):="00000000000000";
signal C2X_S :STD_LOGIC_VECTOR (13 downto 0):="00000000001011";
signal C2Y_S :STD_LOGIC_VECTOR (13 downto 0):="00000000000000";
signal C3X_S :STD_LOGIC_VECTOR (13 downto 0):="00000000001011";
signal C3Y_S :STD_LOGIC_VECTOR (13 downto 0):="00000000001011";
signal C4Y_S :STD_LOGIC_VECTOR (13 downto 0):="00000000001011";
signal x : unsigned(13 downto 0):="00000000000000";
begin
C1X_OUT <= C1X_S;
C1Y_OUT <= C1Y_S;
C2X_OUT <= C2X_S;
C2Y_OUT <= C2Y_S;
C3X_OUT <= C3X_S;
C3Y_OUT <= C3Y_S;
C4X_OUT <= C4X_S;
C4Y_OUT <= C4Y_S;
process(CLK,RESET)
BEGIN 
if(rising_edge(clk) and clk='1' )then
x <= x+1;
if(x="000000000000010")then
C1X_S <= C1X;
C1Y_S <= C1Y;
C2X_S <= C2X;
C2Y_S <= C2Y;
C3X_S <= C3X;
C3Y_S <= C3Y;
C4X_S <= C4X;
C4Y_S <= C4Y;
end if;
if(x="00000000000010")then
x<="00000000000000";
end if;
end if;
end process;
end Behavioral;
