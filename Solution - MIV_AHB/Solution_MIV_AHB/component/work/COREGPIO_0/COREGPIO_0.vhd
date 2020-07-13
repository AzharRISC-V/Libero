----------------------------------------------------------------------
-- Created by SmartDesign Tue Mar 24 12:28:26 2020
-- Version: v12.3 12.800.0.16
----------------------------------------------------------------------

----------------------------------------------------------------------
-- Libraries
----------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;

library polarfire;
use polarfire.all;
library COREGPIO_LIB;
use COREGPIO_LIB.all;
use COREGPIO_LIB.COREGPIO_0_COREGPIO_0_0_components.all;
----------------------------------------------------------------------
-- COREGPIO_0 entity declaration
----------------------------------------------------------------------
entity COREGPIO_0 is
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
end COREGPIO_0;
----------------------------------------------------------------------
-- COREGPIO_0 architecture body
----------------------------------------------------------------------
architecture RTL of COREGPIO_0 is
----------------------------------------------------------------------
-- Component declarations
----------------------------------------------------------------------
-- COREGPIO_0_COREGPIO_0_0_CoreGPIO   -   Actel:DirectCore:CoreGPIO:3.2.102
component COREGPIO_0_COREGPIO_0_0_CoreGPIO
    generic( 
        APB_WIDTH       : integer := 32 ;
        FIXED_CONFIG_0  : integer := 1 ;
        FIXED_CONFIG_1  : integer := 1 ;
        FIXED_CONFIG_2  : integer := 1 ;
        FIXED_CONFIG_3  : integer := 1 ;
        FIXED_CONFIG_4  : integer := 1 ;
        FIXED_CONFIG_5  : integer := 1 ;
        FIXED_CONFIG_6  : integer := 1 ;
        FIXED_CONFIG_7  : integer := 1 ;
        FIXED_CONFIG_8  : integer := 1 ;
        FIXED_CONFIG_9  : integer := 1 ;
        FIXED_CONFIG_10 : integer := 1 ;
        FIXED_CONFIG_11 : integer := 1 ;
        FIXED_CONFIG_12 : integer := 1 ;
        FIXED_CONFIG_13 : integer := 1 ;
        FIXED_CONFIG_14 : integer := 1 ;
        FIXED_CONFIG_15 : integer := 1 ;
        FIXED_CONFIG_16 : integer := 1 ;
        FIXED_CONFIG_17 : integer := 1 ;
        FIXED_CONFIG_18 : integer := 1 ;
        FIXED_CONFIG_19 : integer := 1 ;
        FIXED_CONFIG_20 : integer := 1 ;
        FIXED_CONFIG_21 : integer := 1 ;
        FIXED_CONFIG_22 : integer := 1 ;
        FIXED_CONFIG_23 : integer := 1 ;
        FIXED_CONFIG_24 : integer := 1 ;
        FIXED_CONFIG_25 : integer := 1 ;
        FIXED_CONFIG_26 : integer := 1 ;
        FIXED_CONFIG_27 : integer := 1 ;
        FIXED_CONFIG_28 : integer := 1 ;
        FIXED_CONFIG_29 : integer := 1 ;
        FIXED_CONFIG_30 : integer := 1 ;
        FIXED_CONFIG_31 : integer := 1 ;
        INT_BUS         : integer := 0 ;
        IO_INT_TYPE_0   : integer := 7 ;
        IO_INT_TYPE_1   : integer := 7 ;
        IO_INT_TYPE_2   : integer := 7 ;
        IO_INT_TYPE_3   : integer := 7 ;
        IO_INT_TYPE_4   : integer := 7 ;
        IO_INT_TYPE_5   : integer := 7 ;
        IO_INT_TYPE_6   : integer := 7 ;
        IO_INT_TYPE_7   : integer := 7 ;
        IO_INT_TYPE_8   : integer := 7 ;
        IO_INT_TYPE_9   : integer := 7 ;
        IO_INT_TYPE_10  : integer := 7 ;
        IO_INT_TYPE_11  : integer := 7 ;
        IO_INT_TYPE_12  : integer := 7 ;
        IO_INT_TYPE_13  : integer := 7 ;
        IO_INT_TYPE_14  : integer := 7 ;
        IO_INT_TYPE_15  : integer := 7 ;
        IO_INT_TYPE_16  : integer := 7 ;
        IO_INT_TYPE_17  : integer := 7 ;
        IO_INT_TYPE_18  : integer := 7 ;
        IO_INT_TYPE_19  : integer := 7 ;
        IO_INT_TYPE_20  : integer := 7 ;
        IO_INT_TYPE_21  : integer := 7 ;
        IO_INT_TYPE_22  : integer := 7 ;
        IO_INT_TYPE_23  : integer := 7 ;
        IO_INT_TYPE_24  : integer := 7 ;
        IO_INT_TYPE_25  : integer := 7 ;
        IO_INT_TYPE_26  : integer := 7 ;
        IO_INT_TYPE_27  : integer := 7 ;
        IO_INT_TYPE_28  : integer := 7 ;
        IO_INT_TYPE_29  : integer := 7 ;
        IO_INT_TYPE_30  : integer := 7 ;
        IO_INT_TYPE_31  : integer := 7 ;
        IO_NUM          : integer := 32 ;
        IO_TYPE_0       : integer := 2 ;
        IO_TYPE_1       : integer := 2 ;
        IO_TYPE_2       : integer := 2 ;
        IO_TYPE_3       : integer := 2 ;
        IO_TYPE_4       : integer := 2 ;
        IO_TYPE_5       : integer := 2 ;
        IO_TYPE_6       : integer := 2 ;
        IO_TYPE_7       : integer := 2 ;
        IO_TYPE_8       : integer := 2 ;
        IO_TYPE_9       : integer := 2 ;
        IO_TYPE_10      : integer := 2 ;
        IO_TYPE_11      : integer := 2 ;
        IO_TYPE_12      : integer := 2 ;
        IO_TYPE_13      : integer := 2 ;
        IO_TYPE_14      : integer := 2 ;
        IO_TYPE_15      : integer := 2 ;
        IO_TYPE_16      : integer := 2 ;
        IO_TYPE_17      : integer := 2 ;
        IO_TYPE_18      : integer := 2 ;
        IO_TYPE_19      : integer := 2 ;
        IO_TYPE_20      : integer := 2 ;
        IO_TYPE_21      : integer := 2 ;
        IO_TYPE_22      : integer := 2 ;
        IO_TYPE_23      : integer := 2 ;
        IO_TYPE_24      : integer := 2 ;
        IO_TYPE_25      : integer := 2 ;
        IO_TYPE_26      : integer := 2 ;
        IO_TYPE_27      : integer := 2 ;
        IO_TYPE_28      : integer := 2 ;
        IO_TYPE_29      : integer := 2 ;
        IO_TYPE_30      : integer := 2 ;
        IO_TYPE_31      : integer := 2 ;
        IO_VAL_0        : integer := 0 ;
        IO_VAL_1        : integer := 0 ;
        IO_VAL_2        : integer := 0 ;
        IO_VAL_3        : integer := 0 ;
        IO_VAL_4        : integer := 0 ;
        IO_VAL_5        : integer := 0 ;
        IO_VAL_6        : integer := 0 ;
        IO_VAL_7        : integer := 0 ;
        IO_VAL_8        : integer := 0 ;
        IO_VAL_9        : integer := 0 ;
        IO_VAL_10       : integer := 0 ;
        IO_VAL_11       : integer := 0 ;
        IO_VAL_12       : integer := 0 ;
        IO_VAL_13       : integer := 0 ;
        IO_VAL_14       : integer := 0 ;
        IO_VAL_15       : integer := 0 ;
        IO_VAL_16       : integer := 0 ;
        IO_VAL_17       : integer := 0 ;
        IO_VAL_18       : integer := 0 ;
        IO_VAL_19       : integer := 0 ;
        IO_VAL_20       : integer := 0 ;
        IO_VAL_21       : integer := 0 ;
        IO_VAL_22       : integer := 0 ;
        IO_VAL_23       : integer := 0 ;
        IO_VAL_24       : integer := 0 ;
        IO_VAL_25       : integer := 0 ;
        IO_VAL_26       : integer := 0 ;
        IO_VAL_27       : integer := 0 ;
        IO_VAL_28       : integer := 0 ;
        IO_VAL_29       : integer := 0 ;
        IO_VAL_30       : integer := 0 ;
        IO_VAL_31       : integer := 0 ;
        OE_TYPE         : integer := 1 
        );
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
        GPIO_OE  : out std_logic_vector(31 downto 0);
        GPIO_OUT : out std_logic_vector(31 downto 0);
        INT      : out std_logic_vector(31 downto 0);
        INT_OR   : out std_logic;
        PRDATA   : out std_logic_vector(31 downto 0);
        PREADY   : out std_logic;
        PSLVERR  : out std_logic
        );
end component;
----------------------------------------------------------------------
-- Signal declarations
----------------------------------------------------------------------
signal APB_bif_PRDATA        : std_logic_vector(31 downto 0);
signal APB_bif_PREADY        : std_logic;
signal APB_bif_PSLVERR       : std_logic;
signal GPIO_OUT_4            : std_logic_vector(31 downto 0);
signal INT_4                 : std_logic_vector(31 downto 0);
signal APB_bif_PRDATA_net_0  : std_logic_vector(31 downto 0);
signal APB_bif_PREADY_net_0  : std_logic;
signal APB_bif_PSLVERR_net_0 : std_logic;
signal INT_4_net_0           : std_logic_vector(31 downto 0);
signal GPIO_OUT_4_net_0      : std_logic_vector(31 downto 0);

begin
----------------------------------------------------------------------
-- Top level output port assignments
----------------------------------------------------------------------
 APB_bif_PRDATA_net_0  <= APB_bif_PRDATA;
 PRDATA(31 downto 0)   <= APB_bif_PRDATA_net_0;
 APB_bif_PREADY_net_0  <= APB_bif_PREADY;
 PREADY                <= APB_bif_PREADY_net_0;
 APB_bif_PSLVERR_net_0 <= APB_bif_PSLVERR;
 PSLVERR               <= APB_bif_PSLVERR_net_0;
 INT_4_net_0           <= INT_4;
 INT(31 downto 0)      <= INT_4_net_0;
 GPIO_OUT_4_net_0      <= GPIO_OUT_4;
 GPIO_OUT(31 downto 0) <= GPIO_OUT_4_net_0;
----------------------------------------------------------------------
-- Component instances
----------------------------------------------------------------------
-- COREGPIO_0_0   -   Actel:DirectCore:CoreGPIO:3.2.102
COREGPIO_0_0 : COREGPIO_0_COREGPIO_0_0_CoreGPIO
    generic map( 
        APB_WIDTH       => ( 32 ),
        FIXED_CONFIG_0  => ( 1 ),
        FIXED_CONFIG_1  => ( 1 ),
        FIXED_CONFIG_2  => ( 1 ),
        FIXED_CONFIG_3  => ( 1 ),
        FIXED_CONFIG_4  => ( 1 ),
        FIXED_CONFIG_5  => ( 1 ),
        FIXED_CONFIG_6  => ( 1 ),
        FIXED_CONFIG_7  => ( 1 ),
        FIXED_CONFIG_8  => ( 1 ),
        FIXED_CONFIG_9  => ( 1 ),
        FIXED_CONFIG_10 => ( 1 ),
        FIXED_CONFIG_11 => ( 1 ),
        FIXED_CONFIG_12 => ( 1 ),
        FIXED_CONFIG_13 => ( 1 ),
        FIXED_CONFIG_14 => ( 1 ),
        FIXED_CONFIG_15 => ( 1 ),
        FIXED_CONFIG_16 => ( 1 ),
        FIXED_CONFIG_17 => ( 1 ),
        FIXED_CONFIG_18 => ( 1 ),
        FIXED_CONFIG_19 => ( 1 ),
        FIXED_CONFIG_20 => ( 1 ),
        FIXED_CONFIG_21 => ( 1 ),
        FIXED_CONFIG_22 => ( 1 ),
        FIXED_CONFIG_23 => ( 1 ),
        FIXED_CONFIG_24 => ( 1 ),
        FIXED_CONFIG_25 => ( 1 ),
        FIXED_CONFIG_26 => ( 1 ),
        FIXED_CONFIG_27 => ( 1 ),
        FIXED_CONFIG_28 => ( 1 ),
        FIXED_CONFIG_29 => ( 1 ),
        FIXED_CONFIG_30 => ( 1 ),
        FIXED_CONFIG_31 => ( 1 ),
        INT_BUS         => ( 0 ),
        IO_INT_TYPE_0   => ( 7 ),
        IO_INT_TYPE_1   => ( 7 ),
        IO_INT_TYPE_2   => ( 7 ),
        IO_INT_TYPE_3   => ( 7 ),
        IO_INT_TYPE_4   => ( 7 ),
        IO_INT_TYPE_5   => ( 7 ),
        IO_INT_TYPE_6   => ( 7 ),
        IO_INT_TYPE_7   => ( 7 ),
        IO_INT_TYPE_8   => ( 7 ),
        IO_INT_TYPE_9   => ( 7 ),
        IO_INT_TYPE_10  => ( 7 ),
        IO_INT_TYPE_11  => ( 7 ),
        IO_INT_TYPE_12  => ( 7 ),
        IO_INT_TYPE_13  => ( 7 ),
        IO_INT_TYPE_14  => ( 7 ),
        IO_INT_TYPE_15  => ( 7 ),
        IO_INT_TYPE_16  => ( 7 ),
        IO_INT_TYPE_17  => ( 7 ),
        IO_INT_TYPE_18  => ( 7 ),
        IO_INT_TYPE_19  => ( 7 ),
        IO_INT_TYPE_20  => ( 7 ),
        IO_INT_TYPE_21  => ( 7 ),
        IO_INT_TYPE_22  => ( 7 ),
        IO_INT_TYPE_23  => ( 7 ),
        IO_INT_TYPE_24  => ( 7 ),
        IO_INT_TYPE_25  => ( 7 ),
        IO_INT_TYPE_26  => ( 7 ),
        IO_INT_TYPE_27  => ( 7 ),
        IO_INT_TYPE_28  => ( 7 ),
        IO_INT_TYPE_29  => ( 7 ),
        IO_INT_TYPE_30  => ( 7 ),
        IO_INT_TYPE_31  => ( 7 ),
        IO_NUM          => ( 32 ),
        IO_TYPE_0       => ( 2 ),
        IO_TYPE_1       => ( 2 ),
        IO_TYPE_2       => ( 2 ),
        IO_TYPE_3       => ( 2 ),
        IO_TYPE_4       => ( 2 ),
        IO_TYPE_5       => ( 2 ),
        IO_TYPE_6       => ( 2 ),
        IO_TYPE_7       => ( 2 ),
        IO_TYPE_8       => ( 2 ),
        IO_TYPE_9       => ( 2 ),
        IO_TYPE_10      => ( 2 ),
        IO_TYPE_11      => ( 2 ),
        IO_TYPE_12      => ( 2 ),
        IO_TYPE_13      => ( 2 ),
        IO_TYPE_14      => ( 2 ),
        IO_TYPE_15      => ( 2 ),
        IO_TYPE_16      => ( 2 ),
        IO_TYPE_17      => ( 2 ),
        IO_TYPE_18      => ( 2 ),
        IO_TYPE_19      => ( 2 ),
        IO_TYPE_20      => ( 2 ),
        IO_TYPE_21      => ( 2 ),
        IO_TYPE_22      => ( 2 ),
        IO_TYPE_23      => ( 2 ),
        IO_TYPE_24      => ( 2 ),
        IO_TYPE_25      => ( 2 ),
        IO_TYPE_26      => ( 2 ),
        IO_TYPE_27      => ( 2 ),
        IO_TYPE_28      => ( 2 ),
        IO_TYPE_29      => ( 2 ),
        IO_TYPE_30      => ( 2 ),
        IO_TYPE_31      => ( 2 ),
        IO_VAL_0        => ( 0 ),
        IO_VAL_1        => ( 0 ),
        IO_VAL_2        => ( 0 ),
        IO_VAL_3        => ( 0 ),
        IO_VAL_4        => ( 0 ),
        IO_VAL_5        => ( 0 ),
        IO_VAL_6        => ( 0 ),
        IO_VAL_7        => ( 0 ),
        IO_VAL_8        => ( 0 ),
        IO_VAL_9        => ( 0 ),
        IO_VAL_10       => ( 0 ),
        IO_VAL_11       => ( 0 ),
        IO_VAL_12       => ( 0 ),
        IO_VAL_13       => ( 0 ),
        IO_VAL_14       => ( 0 ),
        IO_VAL_15       => ( 0 ),
        IO_VAL_16       => ( 0 ),
        IO_VAL_17       => ( 0 ),
        IO_VAL_18       => ( 0 ),
        IO_VAL_19       => ( 0 ),
        IO_VAL_20       => ( 0 ),
        IO_VAL_21       => ( 0 ),
        IO_VAL_22       => ( 0 ),
        IO_VAL_23       => ( 0 ),
        IO_VAL_24       => ( 0 ),
        IO_VAL_25       => ( 0 ),
        IO_VAL_26       => ( 0 ),
        IO_VAL_27       => ( 0 ),
        IO_VAL_28       => ( 0 ),
        IO_VAL_29       => ( 0 ),
        IO_VAL_30       => ( 0 ),
        IO_VAL_31       => ( 0 ),
        OE_TYPE         => ( 1 )
        )
    port map( 
        -- Inputs
        PRESETN  => PRESETN,
        PCLK     => PCLK,
        PSEL     => PSEL,
        PENABLE  => PENABLE,
        PWRITE   => PWRITE,
        PADDR    => PADDR,
        PWDATA   => PWDATA,
        GPIO_IN  => GPIO_IN,
        -- Outputs
        PSLVERR  => APB_bif_PSLVERR,
        PREADY   => APB_bif_PREADY,
        INT_OR   => OPEN,
        PRDATA   => APB_bif_PRDATA,
        INT      => INT_4,
        GPIO_OUT => GPIO_OUT_4,
        GPIO_OE  => OPEN 
        );

end RTL;
