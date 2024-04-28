----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/13/2022 11:48:50 PM
-- Design Name: 
-- Module Name: CP - Behavioral
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

entity CP is
    Port ( D1 : in STD_LOGIC_VECTOR (13 downto 0);
           D2 : in STD_LOGIC_VECTOR (13 downto 0);
           D3 : in STD_LOGIC_VECTOR (13 downto 0);
           D4 : in STD_LOGIC_VECTOR (13 downto 0);
           V1 : out STD_LOGIC;
           V2 : out STD_LOGIC;
           V3 : out STD_LOGIC;
           V4 : out STD_LOGIC);
end CP;

architecture Behavioral of CP is
COMPONENT COMP is
    Port ( A : in STD_LOGIC_VECTOR (13 downto 0);
           B : in STD_LOGIC_VECTOR (13 downto 0);
           C : in STD_LOGIC_VECTOR (13 downto 0);
           D : in STD_LOGIC_VECTOR (13 downto 0);
           OUTT : out STD_LOGIC);
end COMPONENT;
COMPONENT MUX_1BIT is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           C : in STD_LOGIC;
           OUTT : out STD_LOGIC);
end COMPONENT;
signal x,y,y1,z,z1,w,w1,m,n : STD_LOGIC:='0';
begin
COMP1: COMP PORT MAP(D1,D2,D3,D4,x);
COMP2: COMP PORT MAP(D2,D1,D3,D4,y);
COMP3: COMP PORT MAP(D3,D2,D1,D4,z);
COMP4: COMP PORT MAP(D4,D2,D3,D1,w);
mux1: MUX_1BIT port map(y,'0',x,y1); 
m <= x or y1;
mux2: MUX_1BIT port map(z,'0',m,z1);
n<= x or y1 or z1;
mux3: MUX_1BIT port map(w,'0',n,w1);
V1 <= x;
V2 <= y1;
V3 <= z1;
V4 <= w1;
end Behavioral;
