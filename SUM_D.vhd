----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/18/2022 12:17:02 AM
-- Design Name: 
-- Module Name: SUM_D - Behavioral
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

entity SUM_D is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           C : in STD_LOGIC;
           D : in STD_LOGIC;
           OUTT : out STD_LOGIC_VECTOR (13 downto 0));
end SUM_D;

architecture Behavioral of SUM_D is
signal O :UNSIGNED(13 downto 0):="00000000000000";
signal X,Y,Z,W :STD_LOGIC_VECTOR(13 downto 0):="00000000000000";
begin
X <= "0000000000000" & A;
Y <= "0000000000000" & B;
Z <= "0000000000000" & C;
W <= "0000000000000" & D;
O <= unsigned(X)+ unsigned(Y)+ unsigned(Z)+ unsigned(W);
OUTT <= STD_LOGIC_VECTOR((O));


end Behavioral;
