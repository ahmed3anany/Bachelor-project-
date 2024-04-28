----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/13/2022 01:15:08 AM
-- Design Name: 
-- Module Name: COMP - Behavioral
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

entity COMP is
    Port ( A : in STD_LOGIC_VECTOR (13 downto 0);
           B : in STD_LOGIC_VECTOR (13 downto 0);
           C : in STD_LOGIC_VECTOR (13 downto 0);
           D : in STD_LOGIC_VECTOR (13 downto 0);
           OUTT : out STD_LOGIC);
end COMP;

architecture Behavioral of COMP is
signal x,y,z :UNSIGNED(13 downto 0):="00000000000000";
signal SX,SY,SZ:STD_LOGIC_VECTOR(13 DOWNTO 0):="00000000000000";
begin
x <= unsigned(A) - unsigned(B);
y <= unsigned(A) - unsigned(C);
z <= unsigned(A) - unsigned(D);
SX <= STD_LOGIC_VECTOR((x));
SY <= STD_LOGIC_VECTOR((y));
SZ <= STD_LOGIC_VECTOR((z));
OUTT<= '1' when((SX(13)='1' AND SY(13)='1' and SZ(13)='1')OR(SX ="00000000000000" AND SY(13)='1' and SZ(13)='1')OR(SY ="00000000000000" AND SX(13)='1' and SZ(13)='1') OR(SZ ="00000000000000" AND SY(13)='1' and SX(13)='1'))else
      '0';
end Behavioral;
