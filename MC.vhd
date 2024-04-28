----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/29/2022 05:04:01 PM
-- Design Name: 
-- Module Name: MC - Behavioral
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

entity MC is
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
end MC;

architecture Behavioral of MC is
COMPONENT MUX_14BIT_2INPUT is
    Port ( A : in STD_LOGIC_VECTOR (13 downto 0);
           B : in STD_LOGIC_VECTOR (13 downto 0);
           C : in STD_LOGIC;
           OUTT : out STD_LOGIC_VECTOR (13 downto 0));
end COMPONENT;
COMPONENT SUM_4INPUT_14BIT is
    Port ( A : in STD_LOGIC_VECTOR (13 downto 0);
           B : in STD_LOGIC_VECTOR (13 downto 0);
           C : in STD_LOGIC_VECTOR (13 downto 0);
           D : in STD_LOGIC_VECTOR (13 downto 0);
           OUTT : out STD_LOGIC_VECTOR (13 downto 0));
end COMPONENT;
COMPONENT SUM_D is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           C : in STD_LOGIC;
           D : in STD_LOGIC;
           OUTT : out STD_LOGIC_VECTOR (13 downto 0));
end COMPONENT;
COMPONENT ACC_N is
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
--           control : in STD_LOGIC;
           A : in STD_LOGIC_VECTOR (13 downto 0);
           OUTT : out STD_LOGIC_VECTOR (13 downto 0));
end COMPONENT;
COMPONENT ACC_D is
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           A : in STD_LOGIC_VECTOR (13 downto 0);
           OUTT : out STD_LOGIC_VECTOR (13 downto 0));
end COMPONENT;
COMPONENT DIV is
    Port ( A : in STD_LOGIC_VECTOR (13 downto 0);
           B : in STD_LOGIC_VECTOR (13 downto 0);
           OUTT : out STD_LOGIC_VECTOR (13 downto 0));
end COMPONENT;
COMPONENT REG_K is
    Port ( A : in STD_LOGIC_VECTOR (13 downto 0);
           clk,reset :STD_LOGIC;
           OUTT : out STD_LOGIC_VECTOR (13 downto 0));
end COMPONENT;
COMPONENT comp_k_0 is
    Port ( A : in STD_LOGIC_VECTOR (13 downto 0);
           OUTT : out STD_LOGIC);
end COMPONENT;
SIGNAL X,Y,Z,W,OUT_SUMN,OUT_SUMD,OUT_ACCN,OUT_ACCD,OUT_DIV,out_reg : STD_LOGIC_VECTOR(13 DOWNTO 0):="00000000000000";
signal out_comp : std_logic:='0';
begin
MUX1: MUX_14BIT_2INPUT PORT MAP("00000000000000",P1,V1,X);
MUX2: MUX_14BIT_2INPUT PORT MAP("00000000000000",P2,V2,Y);
MUX3: MUX_14BIT_2INPUT PORT MAP("00000000000000",P3,V3,Z);
MUX4: MUX_14BIT_2INPUT PORT MAP("00000000000000",P4,V4,W);
SUM_N1: SUM_4INPUT_14BIT PORT MAP(X,Y,Z,W,OUT_SUMN);
SUM_D1: SUM_D PORT MAP(V1,V2,V3,V4,OUT_SUMD);
ACC1: ACC_N PORT MAP(clk,reset,OUT_SUMN,OUT_ACCN);
ACC2: ACC_D PORT MAP(clk,reset,OUT_SUMD,OUT_ACCD);
DIV1: DIV PORT MAP(OUT_ACCN,OUT_ACCD,OUT_DIV);
REG1: REG_K PORT MAP(OUT_DIV,clk,reset,out_reg);
comp1: comp_k_0 port map(OUT_SUMD,out_comp);
mux5: MUX_14BIT_2INPUT PORT MAP(out_reg,OUT_DIV,out_comp,OUTT);
end Behavioral;
