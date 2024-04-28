----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/03/2022 03:23:50 PM
-- Design Name: 
-- Module Name: K-mean - Behavioral
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

entity K_mean is
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           CS : in STD_LOGIC_VECTOR(1 DOWNTO 0);
           P1_X : in STD_LOGIC_VECTOR (13 downto 0);
           P1_Y : in STD_LOGIC_VECTOR (13 downto 0);
           P2_X : in STD_LOGIC_VECTOR (13 downto 0);
           P2_Y : in STD_LOGIC_VECTOR (13 downto 0);
           P3_X : in STD_LOGIC_VECTOR (13 downto 0);
           P3_Y : in STD_LOGIC_VECTOR (13 downto 0);
           P4_X : in STD_LOGIC_VECTOR (13 downto 0);
           P4_Y : in STD_LOGIC_VECTOR (13 downto 0);
           COUNTER : out STD_LOGIC_VECTOR (13 downto 0));
end K_mean;

architecture Behavioral of K_mean is
COMPONENT DM_FOREVERYC is
  Port (clk,reset: IN STD_LOGIC;
        CS : in STD_LOGIC_VECTOR(1 DOWNTO 0);
        P1_X : in STD_LOGIC_VECTOR (13 downto 0);
        P1_Y : in STD_LOGIC_VECTOR (13 downto 0);
        C1_X,C1_Y,C2_X,C2_Y,C3_X,C3_Y,C4_X,C4_Y : IN STD_LOGIC_VECTOR(13 DOWNTO 0);
        D1,D2,D3,D4 : OUT STD_LOGIC_VECTOR(13 DOWNTO 0)
         );
end COMPONENT;
COMPONENT UC is
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
end COMPONENT;
COMPONENT CP is
    Port ( D1 : in STD_LOGIC_VECTOR (13 downto 0);
           D2 : in STD_LOGIC_VECTOR (13 downto 0);
           D3 : in STD_LOGIC_VECTOR (13 downto 0);
           D4 : in STD_LOGIC_VECTOR (13 downto 0);
           V1 : out STD_LOGIC;
           V2 : out STD_LOGIC;
           V3 : out STD_LOGIC;
           V4 : out STD_LOGIC);
end COMPONENT;
COMPONENT CR is
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
end COMPONENT;
--signal counter
signal counter_s :UNSIGNED (13 downto 0):="00000000000000";

--signal for the first centroid example
SIGNAL C1X_S,C1Y_S,C4X_S :STD_LOGIC_VECTOR (13 downto 0):="00000000000000";
signal C2X_S :STD_LOGIC_VECTOR (13 downto 0):="00000000001011";
signal C2Y_S :STD_LOGIC_VECTOR (13 downto 0):="00000000000000";
signal C3X_S :STD_LOGIC_VECTOR (13 downto 0):="00000000001011";
signal C3Y_S :STD_LOGIC_VECTOR (13 downto 0):="00000000001011";
signal C4Y_S :STD_LOGIC_VECTOR (13 downto 0):="00000000001011";
--SIGNALS FOR DM
signal C1_X,C1_Y,C2_X,C2_Y,C3_X,C3_Y,C4_X,C4_Y : STD_LOGIC_VECTOR(13 DOWNTO 0):="00000000000000";
signal D1_1,D1_2,D1_3,D1_4,D2_1,D2_2,D2_3,D2_4,D3_1,D3_2,D3_3,D3_4,D4_1,D4_2,D4_3,D4_4 : STD_LOGIC_VECTOR(13 DOWNTO 0):="00000000000000";
--SIGNALS FOR CP
SIGNAL V1_1,V1_2,V1_3,V1_4,V2_1,V2_2,V2_3,V2_4,V3_1,V3_2,V3_3,V3_4,V4_1,V4_2,V4_3,V4_4 : STD_LOGIC := '0';
--signals for uc
signal C1_X_UC,C1_Y_UC,C2_X_UC,C2_Y_UC,C3_X_UC,C3_Y_UC,C4_X_UC,C4_Y_UC : STD_LOGIC_VECTOR(13 DOWNTO 0):="00000000000000";
--signal for cr 
signal C1_X_Cr,C1_Y_Cr,C2_X_Cr,C2_Y_Cr,C3_X_Cr,C3_Y_Cr,C4_X_Cr,C4_Y_Cr : STD_LOGIC_VECTOR(13 DOWNTO 0):="00000000000000";
begin
--DM PART
DM1: DM_FOREVERYC port map (clk,reset,CS,P1_X,P1_Y,C1_X,C1_Y,C2_X,C2_Y,C3_X,C3_Y,C4_X,C4_Y,D1_1,D1_2,D1_3,D1_4);
DM2: DM_FOREVERYC port map (clk,reset,CS,P2_X,P2_Y,C1_X,C1_Y,C2_X,C2_Y,C3_X,C3_Y,C4_X,C4_Y,D2_1,D2_2,D2_3,D2_4);
DM3: DM_FOREVERYC port map (clk,reset,CS,P3_X,P3_Y,C1_X,C1_Y,C2_X,C2_Y,C3_X,C3_Y,C4_X,C4_Y,D3_1,D3_2,D3_3,D3_4);
DM4: DM_FOREVERYC port map (clk,reset,CS,P4_X,P4_Y,C1_X,C1_Y,C2_X,C2_Y,C3_X,C3_Y,C4_X,C4_Y,D4_1,D4_2,D4_3,D4_4);
-- CP PART
CP1: CP PORT MAP(D1_1,D1_2,D1_3,D1_4,V1_1,V1_2,V1_3,V1_4);
CP2: CP PORT MAP(D2_1,D2_2,D2_3,D2_4,V2_1,V2_2,V2_3,V2_4);
CP3: CP PORT MAP(D3_1,D3_2,D3_3,D3_4,V3_1,V3_2,V3_3,V3_4);
CP4: CP PORT MAP(D4_1,D4_2,D4_3,D4_4,V4_1,V4_2,V4_3,V4_4);
--UC PART
UC1: UC PORT MAP(clk,reset,P1_X,P1_Y,P2_X,P2_Y,P3_X,P3_Y,P4_X,P4_Y,V1_1,V1_2,V1_3,V1_4,V2_1,V2_2,V2_3,V2_4,V3_1,V3_2,V3_3,V3_4,V4_1,V4_2,V4_3,V4_4,C1_X_UC,C1_Y_UC,C2_X_UC,C2_Y_UC,C3_X_UC,C3_Y_UC,C4_X_UC,C4_Y_UC);
--CR PART
CR1: CR PORT MAP(clk,reset,C1_X_UC,C1_Y_UC,C2_X_UC,C2_Y_UC,C3_X_UC,C3_Y_UC,C4_X_UC,C4_Y_UC,C1_X_Cr,C1_Y_Cr,C2_X_Cr,C2_Y_Cr,C3_X_Cr,C3_Y_Cr,C4_X_Cr,C4_Y_Cr);
PROCESS(clk,reset)
begin

if(counter_s="00000000000000")then
C1_X<= C1X_S;
C1_Y<= C1Y_S;
C2_X<= C2X_S;
C2_Y<= C2Y_S;
C3_X<= C3X_S;
C3_Y<= C3Y_S;
C4_X<= C4X_S;
C4_Y<= C4Y_S;
ELSE
C1_X <= C1_X_Cr;
C1_Y <= C1_Y_Cr;
C2_X <= C2_X_Cr;
C2_Y <= C2_Y_Cr;
C3_X <= C3_X_Cr;
C3_Y <= C3_Y_Cr;
C4_X <= C4_X_Cr;
C4_Y <= C4_Y_Cr;
END IF;
counter_s <= counter_s + "00000000000001";

COUNTER <= STD_LOGIC_VECTOR(counter_s);

end process;
end Behavioral;
