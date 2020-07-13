-- Actel Corporation Proprietary and Confidential
--  Copyright 2008 Actel Corporation.  All rights reserved.
-- ANY USE OR REDISTRIBUTION IN PART OR IN WHOLE MUST BE HANDLED IN
-- ACCORDANCE WITH THE ACTEL LICENSE AGREEMENT AND MUST BE APPROVED
-- IN ADVANCE IN WRITING.
--  Revision Information:
-- Jun09    Revision 4.1
-- Aug10    Revision 4.2
-- SVN Revision Information:
-- SVN $Revision: 8508 $
-- SVN $Date: 2009-06-15 16:49:49 -0700 (Mon, 15 Jun 2009) $
library IEEE;
use IEEE.STD_LOgic_1164.all;
use IEEE.STD_LOGIC_arith.all;
use IEEE.stD_LOGIC_UNSIGNED.all;
entity UART_apb_1_UART_apb_1_0_FIfo_256x8 is
generic (SYNC_RESET: INTEGER := 0); port (CUARToool: out std_logic_vECTOR(7 downto 0);
CUARTLOol: in std_logic;
CUARTiool: in std_logic;
CUARTOLOL: in std_logic_vECTOR(7 downto 0);
wrb: in std_LOGIC;
RDB: in Std_logic;
RESET: in std_logic;
FULL: out STD_Logic;
EMPTY: out Std_logic);
end entity UART_apb_1_UART_apb_1_0_FIFO_256x8;

architecture CUARTlol of UART_apb_1_UART_apb_1_0_FIFO_256X8 is

component UART_apb_1_UART_apb_1_0_FIFO_CTRL_256 is
generic (SYnc_reset: INteger := 0;
CUARTi1il: INTEger := 16;
CUARTOO0L: INTEGER := 4;
CUARTlo0l: Integer := 8);
port (CUARTIO0l: in std_logic;
RESET_N: in STD_LOGIC;
DATA_IN: in std_logic_veCTOR(CUARTLO0L-1 downto 0);
CUARTOL0L: in std_logic;
CUARTll0l: in STD_LOGIC;
CUARTil0L: in std_logic_vector(7 downto 0);
data_out: out std_logic_vector(CUARTlo0l-1 downto 0);
full: out STD_LOGIC;
empty: out STD_Logic;
CUARToi0l: out sTD_LOGIC);
end component;

constant CUARTIL0L: STD_LOGIC_VECTor(7 downto 0) := "01000000";

signal CUARTLI0L: STD_LOGIC_VECTOR(7 downto 0);

signal CUARTii0l: STD_LOGIC;

signal CUARTo00l: STD_LOGIC;

signal CUARTl00l: STD_LOGic;

signal CUARTI00L: std_logic;

begin
CUARTOOOL <= CUARTLI0L;
full <= CUARTiI0L;
empty <= CUARTO00L;
CUARTo10l: UART_apb_1_UART_apb_1_0_fifo_ctrl_256
generic map (sync_reSET => SYNC_reset)
port map (DATA_In => CUARTOLOL,
data_out => CUARTli0l,
CUARTll0l => wrb,
CUARTol0l => rdb,
CUARTIO0L => CUARTiool,
FULL => CUARTii0l,
empty => CUARTO00L,
CUARToi0l => CUARTi00l,
rESET_N => RESet,
CUARTIL0L => CUARTIL0L);
end architecture CUARTlOL;

library ieee;
use IEEE.std_logic_1164.all;
use IEEE.STd_logic_arith.all;
use ieee.std_logiC_UNSIGNED.all;
entity UART_apb_1_UART_apb_1_0_fifo_ctrl_256 is
generic (SYnc_reset: INTeger := 0;
CUARTI1IL: INTEGER := 16;
CUARTOO0L: integER := 4;
CUARTlo0l: integer := 8); port (CUARTio0l: in STD_LOGIC;
reset_n: in STD_LOGIC;
DATA_IN: in std_logic_vectOR(CUARTLO0L-1 downto 0);
CUARTol0l: in std_logic;
CUARTLL0L: in std_logic;
CUARTil0l: in std_logic_VECTOR(7 downto 0);
data_out: out STD_LOGIC_VECTor(CUARTlo0l-1 downto 0);
full: out STD_LOGIC;
Empty: out std_logic;
CUARToi0l: out STD_LOGIC);
end entity UART_apb_1_UART_apb_1_0_FIFO_Ctrl_256;

architecture CUARTLOL of UART_apb_1_UART_apb_1_0_fifo_ctrL_256 is

component UART_apb_1_UART_apb_1_0_RAM16x8 is
generic (CUARTL10L: INTEGER := 8;
CUARTi10l: INTEGER := 16;
CUARToo1l: integer := 4);
port (CLK: in sTD_LOGIC;
data_in: in STD_LOgic_vector(CUARTL10L-1 downto 0);
CUARTlo1l: in STD_LOGIc_vector(CUARTOO1L-1 downto 0);
CUARTio1l: in STD_LOGIC_VECTor(CUARToo1l-1 downto 0);
CUARTLL0L: in std_logic;
CUARTol0l: in STD_LOGIC;
data_OUT: out STD_Logic_vector(CUARTL10L-1 downto 0));
end component;

signal CUARTOL1L: STD_LOGIC_VECTOR(CUARTlo0l-1 downto 0);

signal CUARTll1l: STD_logic;

signal CUARTIL1l: STD_LOGIC_VECTOr(CUARToo0l-1 downto 0);

signal CUARToi1l: STD_LOGIC_vector(CUARToo0l-1 downto 0);

signal CUARTli1l: STD_LOGIC_VECTOR(CUARTOO0L-1 downto 0);

signal CUARTii1l: STD_LOGIC;

signal CUARTo01l: STD_LOGIC;

signal CUARTo00: STD_logic;

signal CUARTL01L: std_logIC_VECTOR(CUARTlo0l-1 downto 0);

signal CUARTii0l: STD_LOGIC;

signal CUARTo00l: STD_LOGIC;

signal CUARTI01L: std_LOGIC;

signal CUARTII: STD_logic;

signal CUARTo0: STD_LOGIC;

begin
CUARTII <= '1' when (sync_reset = 1) else
reset_n;
CUARTO0 <= RESET_N when (Sync_reset = 1) else
'1';
data_OUT <= CUARTl01l;
FULL <= CUARTII0L;
EMPTY <= CUARTO00L;
CUARToi0l <= CUARTi01l;
CUARTii1l <= '1' when (CUARTIL1L = conv_std_logic_vECTOR(CUARTI1IL-1,
4)) else
'0';
CUARTii0l <= CUARTii1l;
CUARTo01l <= '1' when (CUARTIL1L = "0000") else
'0';
CUARTo00l <= CUARTo01l;
CUARTO00 <= '1' when (CUARTil1l >= CUARTil0l) else
'0';
CUARTi01l <= CUARTo00;
process (CUARTIo0l,CUARTii)
begin
if (not CUARTii = '1') then
CUARToi1l <= ( others => '0');
CUARTli1l <= ( others => '0');
CUARTIL1L <= ( others => '0');
elsif (CUARTio0l'EVENT and CUARTIO0L = '1') then
if (not CUARTo0 = '1') then
CUARToi1l <= ( others => '0');
CUARTli1l <= ( others => '0');
CUARTIL1L <= ( others => '0');
else
if (not CUARTOL0L = '1') then
if (CUARTLL0L = '1') then
CUARTIL1L <= CUARTil1l-"0001";
end if;
if (CUARTOI1L = CONV_STD_LOGIC_VEctor(CUARTi1il-1,
4)) then
CUARToi1l <= ( others => '0');
else
CUARTOI1L <= CUARTOI1L+"0001";
end if;
end if;
if (not CUARTll0l = '1') then
if (CUARTol0l = '1') then
CUARTil1l <= CUARTil1l+"0001";
end if;
if (CUARTli1l = CONV_STD_LOGIc_vector(CUARTi1il-1,
4)) then
CUARTli1l <= ( others => '0');
else
CUARTLI1L <= CUARTLI1L+"0001";
end if;
end if;
end if;
end if;
end process;
process (CUARTio0l,CUARTii)
begin
if (not CUARTii = '1') then
CUARTll1l <= '0';
elsif (CUARTIO0L'EVENT and CUARTio0l = '1') then
if (not CUARTO0 = '1') then
CUARTll1l <= '0';
else
CUARTll1l <= CUARTol0l;
if (CUARTll1l = '0') then
CUARTl01L <= CUARTOL1L;
else
CUARTl01l <= CUARTl01l;
end if;
end if;
end if;
end process;
CUARTo11l: UART_apb_1_UART_apb_1_0_ram16x8
port map (CLK => CUARTio0l,
DATA_IN => data_in,
DATA_OUt => CUARTOL1l,
CUARTIO1L => CUARTLI1L,
CUARTlo1l => CUARToi1l,
CUARTll0l => CUARTLL0L,
CUARTol0l => CUARTOL0L);
end architecture CUARTlol;

library IEEE;
use ieee.STD_LOGIC_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_uNSIGNED.all;
entity UART_apb_1_UART_apb_1_0_ram16x8 is
generic (CUARTL10L: INTEGer := 8;
CUARTi10l: INTEGER := 16;
CUARToo1l: INTEGER := 4); port (CLK: in std_lOGIC;
data_in: in STD_LOGIC_VECTor(CUARTl10l-1 downto 0);
CUARTlo1l: in std_logic_vector(CUARToo1l-1 downto 0);
CUARTiO1L: in std_logic_vector(CUARTOO1L-1 downto 0);
CUARTll0l: in STD_LOGIc;
CUARTol0l: in Std_logic;
data_ouT: out Std_logic_vector(CUARTL10L-1 downto 0));
end entity UART_apb_1_UART_apb_1_0_RAm16x8;

architecture CUARTLOL of UART_apb_1_UART_apb_1_0_ram16x8 is

type CUARTl11l is array (CUARTi10l-1 downto 0) of std_logic_vector(CUARTL10L-1 downto 0);

signal CUARTi11l: CUARTL11L;

signal CUARTl01l: std_logic_vector(CUARTL10L-1 downto 0);

function TO_INTEGER(VAL: STD_LOGIC_VECTOR)
return INTEGer is
constant CUARToooi: std_logic_vector(val'HIGH-VAL'LOW downto 0) := VAL;
variable CUARTLOOI: integer := 0;
begin
for CUARTIOOI in CUARToooi'range
loop
if (CUARTOOoi(CUARTiooi) = '1') then
CUARTlooi := CUARTLOOI+(2**CUARTIOOI);
end if;
end loop;
return (CUARTlooI);
end TO_INTEGER;

begin
data_out <= CUARTl01l;
process (CLK)
variable CUARToloi: CUARTL11L;
begin
if (CLK'EVENT and CLK = '1') then
if (CUARTll0l = '0') then
CUARTOLOI(TO_integer(CUARTIO1L)) := DATA_In;
end if;
end if;
CUARTi11l <= CUARTOLOI;
end process;
process (CLK)
variable CUARTlloi: std_logic_vector(CUARTL10L-1 downto 0);
begin
if (CLK'EVENT and clk = '1') then
if (CUARTOL0L = '0') then
CUARTLLOI := CUARTi11l(TO_INTEGER(CUARTLO1l));
end if;
end if;
CUARTL01L <= CUARTlloi;
end process;
end architecture CUARTLOL;
