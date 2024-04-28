----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/05/2022 01:04:10 AM
-- Design Name: 
-- Module Name: adder - Behavioral
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
use work.fixed_float_types.all;
use work.fixed_pkg.all;
use work.float_pkg.all;
--use ieee.fixed_pkg.all;
-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity adder is
    Port ( A : in STD_LOGIC_VECTOR (13 downto 0);
           B : in STD_LOGIC_VECTOR (13 downto 0);
           OUTT : out STD_LOGIC_VECTOR (13 downto 0)
           );
end adder;

architecture Behavioral of adder is
signal x :UNSIGNED(13 downto 0):="00000000000000";
signal a_d,b_d,outt_d :ufixed(1 downto -12);
signal x_d :ufixed(2 downto -12);
begin
a_d <=ufixed(A);
b_d <=ufixed(B);
x_d <= a_d + b_d ;
OUTT <= STD_LOGIC_VECTOR((x_d(1 downto -12)));



end Behavioral;
