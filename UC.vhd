----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/30/2022 01:48:31 AM
-- Design Name: 
-- Module Name: UC - Behavioral
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

entity UC is
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           P11 : in STD_LOGIC_VECTOR (13 downto 0);
           P12 : in STD_LOGIC_VECTOR (13 downto 0);
           P21 : in STD_LOGIC_VECTOR (13 downto 0);
           P22 : in STD_LOGIC_VECTOR (13 downto 0);
           P31 : in STD_LOGIC_VECTOR (13 downto 0);
           P32 : in STD_LOGIC_VECTOR (13 downto 0);
           P41 : in STD_LOGIC_VECTOR (13 downto 0);
           P42 : in STD_LOGIC_VECTOR (13 downto 0);
           VX1 : in STD_LOGIC;
           VX2 : in STD_LOGIC;
           VX3 : in STD_LOGIC;
           VX4 : in STD_LOGIC;
           VY1 : in STD_LOGIC;
           VY2 : in STD_LOGIC;
           VY3 : in STD_LOGIC;
           VY4 : in STD_LOGIC;
           VZ1 : in STD_LOGIC;
           VZ2 : in STD_LOGIC;
           VZ3 : in STD_LOGIC;
           VZ4 : in STD_LOGIC;
           VW1 : in STD_LOGIC;
           VW2 : in STD_LOGIC;
           VW3 : in STD_LOGIC;
           VW4 : in STD_LOGIC;
           C1X : out STD_LOGIC_VECTOR (13 downto 0);
           C1Y : out STD_LOGIC_VECTOR (13 downto 0);
           C2X : out STD_LOGIC_VECTOR (13 downto 0);
           C2Y : out STD_LOGIC_VECTOR (13 downto 0);
           C3X : out STD_LOGIC_VECTOR (13 downto 0);
           C3Y : out STD_LOGIC_VECTOR (13 downto 0);
           C4X : out STD_LOGIC_VECTOR (13 downto 0);
           C4Y : out STD_LOGIC_VECTOR (13 downto 0));
end UC;

architecture Behavioral of UC is
COMPONENT MC is
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           P1 : in STD_LOGIC_VECTOR (13 downto 0);
           P2 : in STD_LOGIC_VECTOR (13 downto 0);
           P3 : in STD_LOGIC_VECTOR (13 downto 0);
           P4 : in STD_LOGIC_VECTOR (13 downto 0);
           V1 : in STD_LOGIC;
           V2 : in STD_LOGIC;
           V3 : in STD_LOGIC;
           V4 : in STD_LOGIC;
           OUTT : out STD_LOGIC_VECTOR (13 downto 0));
end COMPONENT;
begin
MC1X: MC PORT MAP(clk,reset,P11,P21,P31,P41,VX1,VY1,VZ1,VW1,C1X);
MC1Y: MC PORT MAP(clk,reset,P12,P22,P32,P42,VX1,VY1,VZ1,VW1,C1Y);
MC2X: MC PORT MAP(clk,reset,P11,P21,P31,P41,VX2,VY2,VZ2,VW2,C2X);
MC2Y: MC PORT MAP(clk,reset,P12,P22,P32,P42,VX2,VY2,VZ2,VW2,C2Y);
MC3X: MC PORT MAP(clk,reset,P11,P21,P31,P41,VX3,VY3,VZ3,VW3,C3X);
MC3Y: MC PORT MAP(clk,reset,P12,P22,P32,P42,VX3,VY3,VZ3,VW3,C3Y);
MC4X: MC PORT MAP(clk,reset,P11,P21,P31,P41,VX4,VY4,VZ4,VW4,C4X);
MC4Y: MC PORT MAP(clk,reset,P12,P22,P32,P42,VX4,VY4,VZ4,VW4,C4Y);
end Behavioral;
