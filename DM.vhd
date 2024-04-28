----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/03/2022 03:50:38 PM
-- Design Name: 
-- Module Name: DM_FOREVERYC - Behavioral
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

entity DM_FOREVERYC is
  Port (clk,reset: IN STD_LOGIC;
        CS : in STD_LOGIC_VECTOR(1 DOWNTO 0);
        P1_X : in STD_LOGIC_VECTOR (13 downto 0);
        P1_Y : in STD_LOGIC_VECTOR (13 downto 0);
        C1_X,C1_Y,C2_X,C2_Y,C3_X,C3_Y,C4_X,C4_Y : IN STD_LOGIC_VECTOR(13 DOWNTO 0);
        D1,D2,D3,D4 : OUT STD_LOGIC_VECTOR(13 DOWNTO 0)
         );
end DM_FOREVERYC;

architecture Behavioral of DM_FOREVERYC is
COMPONENT DM is
    Port ( CLK,RESET: IN STD_LOGIC;
           CS : in STD_LOGIC_VECTOR(1 DOWNTO 0);
           P1 : in STD_LOGIC_VECTOR(13 DOWNTO 0);
           P2 : in STD_LOGIC_VECTOR(13 DOWNTO 0);
           C1 : in STD_LOGIC_VECTOR(13 DOWNTO 0);
           C2 : in STD_LOGIC_VECTOR(13 DOWNTO 0);
           D : out STD_LOGIC_VECTOR(13 DOWNTO 0));
end COMPONENT;
begin
DM1: DM PORT MAP(clk,reset,CS,P1_X,P1_Y,C1_X,C1_Y,D1); 
DM2: DM PORT MAP(clk,reset,CS,P1_X,P1_Y,C2_X,C2_Y,D2); 
DM3: DM PORT MAP(clk,reset,CS,P1_X,P1_Y,C3_X,C3_Y,D3); 
DM4: DM PORT MAP(clk,reset,CS,P1_X,P1_Y,C4_X,C4_Y,D4); 
end Behavioral;
