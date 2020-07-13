----------------------------------------------------------------------
-- Created by SmartDesign Tue Mar 24 13:09:53 2020
-- Version: v12.3 12.800.0.16
----------------------------------------------------------------------

----------------------------------------------------------------------
-- Libraries
----------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;

library polarfire;
use polarfire.all;
----------------------------------------------------------------------
-- GPIO_TOP entity declaration
----------------------------------------------------------------------
entity GPIO_TOP is
    -- Port list
    port(
        -- Inputs
        PADDR   : in    std_logic_vector(7 downto 0);
        PCLK    : in    std_logic;
        PENABLE : in    std_logic;
        PRESETN : in    std_logic;
        PSEL    : in    std_logic;
        PWDATA  : in    std_logic_vector(31 downto 0);
        PWRITE  : in    std_logic;
        -- Outputs
        INT     : out   std_logic_vector(31 downto 0);
        PRDATA  : out   std_logic_vector(31 downto 0);
        PREADY  : out   std_logic;
        PSLVERR : out   std_logic;
        -- Inouts
        GPIO_0  : inout std_logic;
        GPIO_1  : inout std_logic;
        GPIO_10 : inout std_logic;
        GPIO_11 : inout std_logic;
        GPIO_12 : inout std_logic;
        GPIO_13 : inout std_logic;
        GPIO_14 : inout std_logic;
        GPIO_15 : inout std_logic;
        GPIO_16 : inout std_logic;
        GPIO_17 : inout std_logic;
        GPIO_18 : inout std_logic;
        GPIO_19 : inout std_logic;
        GPIO_2  : inout std_logic;
        GPIO_20 : inout std_logic;
        GPIO_21 : inout std_logic;
        GPIO_22 : inout std_logic;
        GPIO_23 : inout std_logic;
        GPIO_24 : inout std_logic;
        GPIO_25 : inout std_logic;
        GPIO_26 : inout std_logic;
        GPIO_27 : inout std_logic;
        GPIO_28 : inout std_logic;
        GPIO_29 : inout std_logic;
        GPIO_3  : inout std_logic;
        GPIO_30 : inout std_logic;
        GPIO_31 : inout std_logic;
        GPIO_4  : inout std_logic;
        GPIO_5  : inout std_logic;
        GPIO_6  : inout std_logic;
        GPIO_7  : inout std_logic;
        GPIO_8  : inout std_logic;
        GPIO_9  : inout std_logic
        );
end GPIO_TOP;
----------------------------------------------------------------------
-- GPIO_TOP architecture body
----------------------------------------------------------------------
architecture RTL of GPIO_TOP is
----------------------------------------------------------------------
-- Component declarations
----------------------------------------------------------------------
-- COREGPIO_0
component COREGPIO_0
    -- Port list
    port(
        -- Inputs
        GPIO_IN  : in  std_logic_vector(31 downto 0);
        PADDR    : in  std_logic_vector(7 downto 0);
        PCLK     : in  std_logic;
        PENABLE  : in  std_logic;
        PRESETN  : in  std_logic;
        PSEL     : in  std_logic;
        PWDATA   : in  std_logic_vector(31 downto 0);
        PWRITE   : in  std_logic;
        -- Outputs
        GPIO_OUT : out std_logic_vector(31 downto 0);
        INT      : out std_logic_vector(31 downto 0);
        PRDATA   : out std_logic_vector(31 downto 0);
        PREADY   : out std_logic;
        PSLVERR  : out std_logic
        );
end component;
-- PF_IO_GPIO
component PF_IO_GPIO
    -- Port list
    port(
        -- Inputs
        D   : in    std_logic;
        E   : in    std_logic;
        -- Outputs
        Y   : out   std_logic;
        -- Inouts
        PAD : inout std_logic
        );
end component;
----------------------------------------------------------------------
-- Signal declarations
----------------------------------------------------------------------
signal APB_bif_PRDATA              : std_logic_vector(31 downto 0);
signal APB_bif_PREADY              : std_logic;
signal APB_bif_PSLVERR             : std_logic;
signal COREGPIO_0_0_GPIO_OUT0to0   : std_logic_vector(0 to 0);
signal COREGPIO_0_0_GPIO_OUT1to1   : std_logic_vector(1 to 1);
signal COREGPIO_0_0_GPIO_OUT2to2   : std_logic_vector(2 to 2);
signal COREGPIO_0_0_GPIO_OUT3to3   : std_logic_vector(3 to 3);
signal COREGPIO_0_0_GPIO_OUT4to4   : std_logic_vector(4 to 4);
signal COREGPIO_0_0_GPIO_OUT5to5   : std_logic_vector(5 to 5);
signal COREGPIO_0_0_GPIO_OUT6to6   : std_logic_vector(6 to 6);
signal COREGPIO_0_0_GPIO_OUT7to7   : std_logic_vector(7 to 7);
signal COREGPIO_0_0_GPIO_OUT8to8   : std_logic_vector(8 to 8);
signal COREGPIO_0_0_GPIO_OUT9to9   : std_logic_vector(9 to 9);
signal COREGPIO_0_0_GPIO_OUT10to10 : std_logic_vector(10 to 10);
signal COREGPIO_0_0_GPIO_OUT11to11 : std_logic_vector(11 to 11);
signal COREGPIO_0_0_GPIO_OUT12to12 : std_logic_vector(12 to 12);
signal COREGPIO_0_0_GPIO_OUT13to13 : std_logic_vector(13 to 13);
signal COREGPIO_0_0_GPIO_OUT14to14 : std_logic_vector(14 to 14);
signal COREGPIO_0_0_GPIO_OUT15to15 : std_logic_vector(15 to 15);
signal COREGPIO_0_0_GPIO_OUT16to16 : std_logic_vector(16 to 16);
signal COREGPIO_0_0_GPIO_OUT17to17 : std_logic_vector(17 to 17);
signal COREGPIO_0_0_GPIO_OUT18to18 : std_logic_vector(18 to 18);
signal COREGPIO_0_0_GPIO_OUT19to19 : std_logic_vector(19 to 19);
signal COREGPIO_0_0_GPIO_OUT20to20 : std_logic_vector(20 to 20);
signal COREGPIO_0_0_GPIO_OUT21to21 : std_logic_vector(21 to 21);
signal COREGPIO_0_0_GPIO_OUT22to22 : std_logic_vector(22 to 22);
signal COREGPIO_0_0_GPIO_OUT23to23 : std_logic_vector(23 to 23);
signal COREGPIO_0_0_GPIO_OUT24to24 : std_logic_vector(24 to 24);
signal COREGPIO_0_0_GPIO_OUT25to25 : std_logic_vector(25 to 25);
signal COREGPIO_0_0_GPIO_OUT26to26 : std_logic_vector(26 to 26);
signal COREGPIO_0_0_GPIO_OUT27to27 : std_logic_vector(27 to 27);
signal COREGPIO_0_0_GPIO_OUT28to28 : std_logic_vector(28 to 28);
signal COREGPIO_0_0_GPIO_OUT29to29 : std_logic_vector(29 to 29);
signal COREGPIO_0_0_GPIO_OUT30to30 : std_logic_vector(30 to 30);
signal COREGPIO_0_0_GPIO_OUT31to31 : std_logic_vector(31 to 31);
signal INT_net_0                   : std_logic_vector(31 downto 0);
signal PF_IO_GPIO_0_Y              : std_logic;
signal PF_IO_GPIO_1_Y              : std_logic;
signal PF_IO_GPIO_2_Y              : std_logic;
signal PF_IO_GPIO_3_Y              : std_logic;
signal PF_IO_GPIO_4_Y              : std_logic;
signal PF_IO_GPIO_5_Y              : std_logic;
signal PF_IO_GPIO_6_Y              : std_logic;
signal PF_IO_GPIO_7_Y              : std_logic;
signal PF_IO_GPIO_8_Y              : std_logic;
signal PF_IO_GPIO_9_Y              : std_logic;
signal PF_IO_GPIO_10_Y             : std_logic;
signal PF_IO_GPIO_11_Y             : std_logic;
signal PF_IO_GPIO_12_Y             : std_logic;
signal PF_IO_GPIO_13_Y             : std_logic;
signal PF_IO_GPIO_14_Y             : std_logic;
signal PF_IO_GPIO_15_Y             : std_logic;
signal PF_IO_GPIO_16_Y             : std_logic;
signal PF_IO_GPIO_17_Y             : std_logic;
signal PF_IO_GPIO_18_Y             : std_logic;
signal PF_IO_GPIO_19_Y             : std_logic;
signal PF_IO_GPIO_20_Y             : std_logic;
signal PF_IO_GPIO_21_Y             : std_logic;
signal PF_IO_GPIO_22_Y             : std_logic;
signal PF_IO_GPIO_23_Y             : std_logic;
signal PF_IO_GPIO_24_Y             : std_logic;
signal PF_IO_GPIO_25_Y             : std_logic;
signal PF_IO_GPIO_26_Y             : std_logic;
signal PF_IO_GPIO_27_Y             : std_logic;
signal PF_IO_GPIO_28_Y             : std_logic;
signal PF_IO_GPIO_29_Y             : std_logic;
signal PF_IO_GPIO_30_Y             : std_logic;
signal PF_IO_GPIO_31_Y             : std_logic;
signal APB_bif_PREADY_net_0        : std_logic;
signal APB_bif_PSLVERR_net_0       : std_logic;
signal INT_net_1                   : std_logic_vector(31 downto 0);
signal APB_bif_PRDATA_net_0        : std_logic_vector(31 downto 0);
signal GPIO_IN_net_0               : std_logic_vector(31 downto 0);
signal GPIO_OUT_net_0              : std_logic_vector(31 downto 0);
----------------------------------------------------------------------
-- TiedOff Signals
----------------------------------------------------------------------
signal GND_net                     : std_logic;

begin
----------------------------------------------------------------------
-- Constant assignments
----------------------------------------------------------------------
 GND_net <= '0';
----------------------------------------------------------------------
-- Top level output port assignments
----------------------------------------------------------------------
 APB_bif_PREADY_net_0  <= APB_bif_PREADY;
 PREADY                <= APB_bif_PREADY_net_0;
 APB_bif_PSLVERR_net_0 <= APB_bif_PSLVERR;
 PSLVERR               <= APB_bif_PSLVERR_net_0;
 INT_net_1             <= INT_net_0;
 INT(31 downto 0)      <= INT_net_1;
 APB_bif_PRDATA_net_0  <= APB_bif_PRDATA;
 PRDATA(31 downto 0)   <= APB_bif_PRDATA_net_0;
----------------------------------------------------------------------
-- Slices assignments
----------------------------------------------------------------------
 COREGPIO_0_0_GPIO_OUT0to0(0)    <= GPIO_OUT_net_0(0);
 COREGPIO_0_0_GPIO_OUT1to1(1)    <= GPIO_OUT_net_0(1);
 COREGPIO_0_0_GPIO_OUT2to2(2)    <= GPIO_OUT_net_0(2);
 COREGPIO_0_0_GPIO_OUT3to3(3)    <= GPIO_OUT_net_0(3);
 COREGPIO_0_0_GPIO_OUT4to4(4)    <= GPIO_OUT_net_0(4);
 COREGPIO_0_0_GPIO_OUT5to5(5)    <= GPIO_OUT_net_0(5);
 COREGPIO_0_0_GPIO_OUT6to6(6)    <= GPIO_OUT_net_0(6);
 COREGPIO_0_0_GPIO_OUT7to7(7)    <= GPIO_OUT_net_0(7);
 COREGPIO_0_0_GPIO_OUT8to8(8)    <= GPIO_OUT_net_0(8);
 COREGPIO_0_0_GPIO_OUT9to9(9)    <= GPIO_OUT_net_0(9);
 COREGPIO_0_0_GPIO_OUT10to10(10) <= GPIO_OUT_net_0(10);
 COREGPIO_0_0_GPIO_OUT11to11(11) <= GPIO_OUT_net_0(11);
 COREGPIO_0_0_GPIO_OUT12to12(12) <= GPIO_OUT_net_0(12);
 COREGPIO_0_0_GPIO_OUT13to13(13) <= GPIO_OUT_net_0(13);
 COREGPIO_0_0_GPIO_OUT14to14(14) <= GPIO_OUT_net_0(14);
 COREGPIO_0_0_GPIO_OUT15to15(15) <= GPIO_OUT_net_0(15);
 COREGPIO_0_0_GPIO_OUT16to16(16) <= GPIO_OUT_net_0(16);
 COREGPIO_0_0_GPIO_OUT17to17(17) <= GPIO_OUT_net_0(17);
 COREGPIO_0_0_GPIO_OUT18to18(18) <= GPIO_OUT_net_0(18);
 COREGPIO_0_0_GPIO_OUT19to19(19) <= GPIO_OUT_net_0(19);
 COREGPIO_0_0_GPIO_OUT20to20(20) <= GPIO_OUT_net_0(20);
 COREGPIO_0_0_GPIO_OUT21to21(21) <= GPIO_OUT_net_0(21);
 COREGPIO_0_0_GPIO_OUT22to22(22) <= GPIO_OUT_net_0(22);
 COREGPIO_0_0_GPIO_OUT23to23(23) <= GPIO_OUT_net_0(23);
 COREGPIO_0_0_GPIO_OUT24to24(24) <= GPIO_OUT_net_0(24);
 COREGPIO_0_0_GPIO_OUT25to25(25) <= GPIO_OUT_net_0(25);
 COREGPIO_0_0_GPIO_OUT26to26(26) <= GPIO_OUT_net_0(26);
 COREGPIO_0_0_GPIO_OUT27to27(27) <= GPIO_OUT_net_0(27);
 COREGPIO_0_0_GPIO_OUT28to28(28) <= GPIO_OUT_net_0(28);
 COREGPIO_0_0_GPIO_OUT29to29(29) <= GPIO_OUT_net_0(29);
 COREGPIO_0_0_GPIO_OUT30to30(30) <= GPIO_OUT_net_0(30);
 COREGPIO_0_0_GPIO_OUT31to31(31) <= GPIO_OUT_net_0(31);
----------------------------------------------------------------------
-- Concatenation assignments
----------------------------------------------------------------------
 GPIO_IN_net_0 <= ( PF_IO_GPIO_31_Y & PF_IO_GPIO_30_Y & PF_IO_GPIO_29_Y & PF_IO_GPIO_28_Y & PF_IO_GPIO_27_Y & PF_IO_GPIO_26_Y & PF_IO_GPIO_25_Y & PF_IO_GPIO_24_Y & PF_IO_GPIO_23_Y & PF_IO_GPIO_22_Y & PF_IO_GPIO_21_Y & PF_IO_GPIO_20_Y & PF_IO_GPIO_19_Y & PF_IO_GPIO_18_Y & PF_IO_GPIO_17_Y & PF_IO_GPIO_16_Y & PF_IO_GPIO_15_Y & PF_IO_GPIO_14_Y & PF_IO_GPIO_13_Y & PF_IO_GPIO_12_Y & PF_IO_GPIO_11_Y & PF_IO_GPIO_10_Y & PF_IO_GPIO_9_Y & PF_IO_GPIO_8_Y & PF_IO_GPIO_7_Y & PF_IO_GPIO_6_Y & PF_IO_GPIO_5_Y & PF_IO_GPIO_4_Y & PF_IO_GPIO_3_Y & PF_IO_GPIO_2_Y & PF_IO_GPIO_1_Y & PF_IO_GPIO_0_Y );
----------------------------------------------------------------------
-- Component instances
----------------------------------------------------------------------
-- COREGPIO_0_0
COREGPIO_0_0 : COREGPIO_0
    port map( 
        -- Inputs
        PRESETN  => PRESETN,
        PCLK     => PCLK,
        PSEL     => PSEL,
        PENABLE  => PENABLE,
        PWRITE   => PWRITE,
        PADDR    => PADDR,
        PWDATA   => PWDATA,
        GPIO_IN  => GPIO_IN_net_0,
        -- Outputs
        PREADY   => APB_bif_PREADY,
        PSLVERR  => APB_bif_PSLVERR,
        PRDATA   => APB_bif_PRDATA,
        INT      => INT_net_0,
        GPIO_OUT => GPIO_OUT_net_0 
        );
-- PF_IO_GPIO_0
PF_IO_GPIO_0 : PF_IO_GPIO
    port map( 
        -- Inputs
        E   => COREGPIO_0_0_GPIO_OUT0to0(0),
        D   => GND_net,
        -- Outputs
        Y   => PF_IO_GPIO_0_Y,
        -- Inouts
        PAD => GPIO_0 
        );
-- PF_IO_GPIO_1
PF_IO_GPIO_1 : PF_IO_GPIO
    port map( 
        -- Inputs
        E   => COREGPIO_0_0_GPIO_OUT1to1(1),
        D   => GND_net,
        -- Outputs
        Y   => PF_IO_GPIO_1_Y,
        -- Inouts
        PAD => GPIO_1 
        );
-- PF_IO_GPIO_2
PF_IO_GPIO_2 : PF_IO_GPIO
    port map( 
        -- Inputs
        E   => COREGPIO_0_0_GPIO_OUT2to2(2),
        D   => GND_net,
        -- Outputs
        Y   => PF_IO_GPIO_2_Y,
        -- Inouts
        PAD => GPIO_2 
        );
-- PF_IO_GPIO_3
PF_IO_GPIO_3 : PF_IO_GPIO
    port map( 
        -- Inputs
        E   => COREGPIO_0_0_GPIO_OUT3to3(3),
        D   => GND_net,
        -- Outputs
        Y   => PF_IO_GPIO_3_Y,
        -- Inouts
        PAD => GPIO_3 
        );
-- PF_IO_GPIO_4
PF_IO_GPIO_4 : PF_IO_GPIO
    port map( 
        -- Inputs
        E   => COREGPIO_0_0_GPIO_OUT4to4(4),
        D   => GND_net,
        -- Outputs
        Y   => PF_IO_GPIO_4_Y,
        -- Inouts
        PAD => GPIO_4 
        );
-- PF_IO_GPIO_5
PF_IO_GPIO_5 : PF_IO_GPIO
    port map( 
        -- Inputs
        E   => COREGPIO_0_0_GPIO_OUT5to5(5),
        D   => GND_net,
        -- Outputs
        Y   => PF_IO_GPIO_5_Y,
        -- Inouts
        PAD => GPIO_5 
        );
-- PF_IO_GPIO_6
PF_IO_GPIO_6 : PF_IO_GPIO
    port map( 
        -- Inputs
        E   => COREGPIO_0_0_GPIO_OUT6to6(6),
        D   => GND_net,
        -- Outputs
        Y   => PF_IO_GPIO_6_Y,
        -- Inouts
        PAD => GPIO_6 
        );
-- PF_IO_GPIO_7
PF_IO_GPIO_7 : PF_IO_GPIO
    port map( 
        -- Inputs
        E   => COREGPIO_0_0_GPIO_OUT7to7(7),
        D   => GND_net,
        -- Outputs
        Y   => PF_IO_GPIO_7_Y,
        -- Inouts
        PAD => GPIO_7 
        );
-- PF_IO_GPIO_8
PF_IO_GPIO_8 : PF_IO_GPIO
    port map( 
        -- Inputs
        E   => COREGPIO_0_0_GPIO_OUT8to8(8),
        D   => GND_net,
        -- Outputs
        Y   => PF_IO_GPIO_8_Y,
        -- Inouts
        PAD => GPIO_8 
        );
-- PF_IO_GPIO_9
PF_IO_GPIO_9 : PF_IO_GPIO
    port map( 
        -- Inputs
        E   => COREGPIO_0_0_GPIO_OUT9to9(9),
        D   => GND_net,
        -- Outputs
        Y   => PF_IO_GPIO_9_Y,
        -- Inouts
        PAD => GPIO_9 
        );
-- PF_IO_GPIO_10
PF_IO_GPIO_10 : PF_IO_GPIO
    port map( 
        -- Inputs
        E   => COREGPIO_0_0_GPIO_OUT10to10(10),
        D   => GND_net,
        -- Outputs
        Y   => PF_IO_GPIO_10_Y,
        -- Inouts
        PAD => GPIO_10 
        );
-- PF_IO_GPIO_11
PF_IO_GPIO_11 : PF_IO_GPIO
    port map( 
        -- Inputs
        E   => COREGPIO_0_0_GPIO_OUT11to11(11),
        D   => GND_net,
        -- Outputs
        Y   => PF_IO_GPIO_11_Y,
        -- Inouts
        PAD => GPIO_11 
        );
-- PF_IO_GPIO_12
PF_IO_GPIO_12 : PF_IO_GPIO
    port map( 
        -- Inputs
        E   => COREGPIO_0_0_GPIO_OUT12to12(12),
        D   => GND_net,
        -- Outputs
        Y   => PF_IO_GPIO_12_Y,
        -- Inouts
        PAD => GPIO_12 
        );
-- PF_IO_GPIO_13
PF_IO_GPIO_13 : PF_IO_GPIO
    port map( 
        -- Inputs
        E   => COREGPIO_0_0_GPIO_OUT13to13(13),
        D   => GND_net,
        -- Outputs
        Y   => PF_IO_GPIO_13_Y,
        -- Inouts
        PAD => GPIO_13 
        );
-- PF_IO_GPIO_14
PF_IO_GPIO_14 : PF_IO_GPIO
    port map( 
        -- Inputs
        E   => COREGPIO_0_0_GPIO_OUT14to14(14),
        D   => GND_net,
        -- Outputs
        Y   => PF_IO_GPIO_14_Y,
        -- Inouts
        PAD => GPIO_14 
        );
-- PF_IO_GPIO_15
PF_IO_GPIO_15 : PF_IO_GPIO
    port map( 
        -- Inputs
        E   => COREGPIO_0_0_GPIO_OUT15to15(15),
        D   => GND_net,
        -- Outputs
        Y   => PF_IO_GPIO_15_Y,
        -- Inouts
        PAD => GPIO_15 
        );
-- PF_IO_GPIO_16
PF_IO_GPIO_16 : PF_IO_GPIO
    port map( 
        -- Inputs
        E   => COREGPIO_0_0_GPIO_OUT16to16(16),
        D   => GND_net,
        -- Outputs
        Y   => PF_IO_GPIO_16_Y,
        -- Inouts
        PAD => GPIO_16 
        );
-- PF_IO_GPIO_17
PF_IO_GPIO_17 : PF_IO_GPIO
    port map( 
        -- Inputs
        E   => COREGPIO_0_0_GPIO_OUT17to17(17),
        D   => GND_net,
        -- Outputs
        Y   => PF_IO_GPIO_17_Y,
        -- Inouts
        PAD => GPIO_17 
        );
-- PF_IO_GPIO_18
PF_IO_GPIO_18 : PF_IO_GPIO
    port map( 
        -- Inputs
        E   => COREGPIO_0_0_GPIO_OUT18to18(18),
        D   => GND_net,
        -- Outputs
        Y   => PF_IO_GPIO_18_Y,
        -- Inouts
        PAD => GPIO_18 
        );
-- PF_IO_GPIO_19
PF_IO_GPIO_19 : PF_IO_GPIO
    port map( 
        -- Inputs
        E   => COREGPIO_0_0_GPIO_OUT19to19(19),
        D   => GND_net,
        -- Outputs
        Y   => PF_IO_GPIO_19_Y,
        -- Inouts
        PAD => GPIO_19 
        );
-- PF_IO_GPIO_20
PF_IO_GPIO_20 : PF_IO_GPIO
    port map( 
        -- Inputs
        E   => COREGPIO_0_0_GPIO_OUT20to20(20),
        D   => GND_net,
        -- Outputs
        Y   => PF_IO_GPIO_20_Y,
        -- Inouts
        PAD => GPIO_20 
        );
-- PF_IO_GPIO_21
PF_IO_GPIO_21 : PF_IO_GPIO
    port map( 
        -- Inputs
        E   => COREGPIO_0_0_GPIO_OUT21to21(21),
        D   => GND_net,
        -- Outputs
        Y   => PF_IO_GPIO_21_Y,
        -- Inouts
        PAD => GPIO_21 
        );
-- PF_IO_GPIO_22
PF_IO_GPIO_22 : PF_IO_GPIO
    port map( 
        -- Inputs
        E   => COREGPIO_0_0_GPIO_OUT22to22(22),
        D   => GND_net,
        -- Outputs
        Y   => PF_IO_GPIO_22_Y,
        -- Inouts
        PAD => GPIO_22 
        );
-- PF_IO_GPIO_23
PF_IO_GPIO_23 : PF_IO_GPIO
    port map( 
        -- Inputs
        E   => COREGPIO_0_0_GPIO_OUT23to23(23),
        D   => GND_net,
        -- Outputs
        Y   => PF_IO_GPIO_23_Y,
        -- Inouts
        PAD => GPIO_23 
        );
-- PF_IO_GPIO_24
PF_IO_GPIO_24 : PF_IO_GPIO
    port map( 
        -- Inputs
        E   => COREGPIO_0_0_GPIO_OUT24to24(24),
        D   => GND_net,
        -- Outputs
        Y   => PF_IO_GPIO_24_Y,
        -- Inouts
        PAD => GPIO_24 
        );
-- PF_IO_GPIO_25
PF_IO_GPIO_25 : PF_IO_GPIO
    port map( 
        -- Inputs
        E   => COREGPIO_0_0_GPIO_OUT25to25(25),
        D   => GND_net,
        -- Outputs
        Y   => PF_IO_GPIO_25_Y,
        -- Inouts
        PAD => GPIO_25 
        );
-- PF_IO_GPIO_26
PF_IO_GPIO_26 : PF_IO_GPIO
    port map( 
        -- Inputs
        E   => COREGPIO_0_0_GPIO_OUT26to26(26),
        D   => GND_net,
        -- Outputs
        Y   => PF_IO_GPIO_26_Y,
        -- Inouts
        PAD => GPIO_26 
        );
-- PF_IO_GPIO_27
PF_IO_GPIO_27 : PF_IO_GPIO
    port map( 
        -- Inputs
        E   => COREGPIO_0_0_GPIO_OUT27to27(27),
        D   => GND_net,
        -- Outputs
        Y   => PF_IO_GPIO_27_Y,
        -- Inouts
        PAD => GPIO_27 
        );
-- PF_IO_GPIO_28
PF_IO_GPIO_28 : PF_IO_GPIO
    port map( 
        -- Inputs
        E   => COREGPIO_0_0_GPIO_OUT28to28(28),
        D   => GND_net,
        -- Outputs
        Y   => PF_IO_GPIO_28_Y,
        -- Inouts
        PAD => GPIO_28 
        );
-- PF_IO_GPIO_29
PF_IO_GPIO_29 : PF_IO_GPIO
    port map( 
        -- Inputs
        E   => COREGPIO_0_0_GPIO_OUT29to29(29),
        D   => GND_net,
        -- Outputs
        Y   => PF_IO_GPIO_29_Y,
        -- Inouts
        PAD => GPIO_29 
        );
-- PF_IO_GPIO_30
PF_IO_GPIO_30 : PF_IO_GPIO
    port map( 
        -- Inputs
        E   => COREGPIO_0_0_GPIO_OUT30to30(30),
        D   => GND_net,
        -- Outputs
        Y   => PF_IO_GPIO_30_Y,
        -- Inouts
        PAD => GPIO_30 
        );
-- PF_IO_GPIO_31
PF_IO_GPIO_31 : PF_IO_GPIO
    port map( 
        -- Inputs
        E   => COREGPIO_0_0_GPIO_OUT31to31(31),
        D   => GND_net,
        -- Outputs
        Y   => PF_IO_GPIO_31_Y,
        -- Inouts
        PAD => GPIO_31 
        );

end RTL;
