----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/08/2022 08:50:37 PM
-- Design Name: 
-- Module Name: adder_16bit - Behavioral
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

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity adder_16bit is
  Port ( A : in STD_LOGIC_VECTOR (27 downto 0);
           B : in STD_LOGIC_VECTOR (27 downto 0);
           OUTT : out STD_LOGIC_VECTOR (27 downto 0)
           );
end adder_16bit;

architecture Behavioral of adder_16bit is
signal x :UNSIGNED(27 downto 0):="0000000000000000000000000000";
signal a_d,b_d,outt_d :ufixed(3 downto -24);
signal x_d : ufixed(4 downto -24);
begin
a_d <=ufixed(A);
b_d <=ufixed(B);
x_d <= a_d + b_d ;
OUTT <= STD_LOGIC_VECTOR((x_d(3 downto -24)));



end Behavioral;
