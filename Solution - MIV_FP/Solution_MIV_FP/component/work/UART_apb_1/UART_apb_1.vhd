----------------------------------------------------------------------
-- Created by SmartDesign Mon Mar 16 12:49:30 2020
-- Version: v12.3 12.800.0.16
----------------------------------------------------------------------

----------------------------------------------------------------------
-- Libraries
----------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;

library polarfire;
use polarfire.all;
library COREUARTAPB_LIB;
use COREUARTAPB_LIB.all;
use COREUARTAPB_LIB.UART_apb_1_UART_apb_1_0_components.all;
----------------------------------------------------------------------
-- UART_apb_1 entity declaration
----------------------------------------------------------------------
entity UART_apb_1 is
    -- Port list
    port(
        -- Inputs
        PADDR       : in  std_logic_vector(4 downto 0);
        PCLK        : in  std_logic;
        PENABLE     : in  std_logic;
        PRESETN     : in  std_logic;
        PSEL        : in  std_logic;
        PWDATA      : in  std_logic_vector(7 downto 0);
        PWRITE      : in  std_logic;
        RX          : in  std_logic;
        -- Outputs
        FRAMING_ERR : out std_logic;
        OVERFLOW    : out std_logic;
        PARITY_ERR  : out std_logic;
        PRDATA      : out std_logic_vector(7 downto 0);
        PREADY      : out std_logic;
        PSLVERR     : out std_logic;
        RXRDY       : out std_logic;
        TX          : out std_logic;
        TXRDY       : out std_logic
        );
end UART_apb_1;
----------------------------------------------------------------------
-- UART_apb_1 architecture body
----------------------------------------------------------------------
architecture RTL of UART_apb_1 is
----------------------------------------------------------------------
-- Component declarations
----------------------------------------------------------------------
-- UART_apb_1_UART_apb_1_0_CoreUARTapb   -   Actel:DirectCore:CoreUARTapb:5.6.102
component UART_apb_1_UART_apb_1_0_CoreUARTapb
    generic( 
        BAUD_VAL_FRCTN    : integer := 0 ;
        BAUD_VAL_FRCTN_EN : integer := 0 ;
        BAUD_VALUE        : integer := 1 ;
        FAMILY            : integer := 8 ;
        FIXEDMODE         : integer := 0 ;
        PRG_BIT8          : integer := 0 ;
        PRG_PARITY        : integer := 0 ;
        RX_FIFO           : integer := 0 ;
        RX_LEGACY_MODE    : integer := 0 ;
        TX_FIFO           : integer := 0 
        );
    -- Port list
    port(
        -- Inputs
        PADDR       : in  std_logic_vector(4 downto 0);
        PCLK        : in  std_logic;
        PENABLE     : in  std_logic;
        PRESETN     : in  std_logic;
        PSEL        : in  std_logic;
        PWDATA      : in  std_logic_vector(7 downto 0);
        PWRITE      : in  std_logic;
        RX          : in  std_logic;
        -- Outputs
        FRAMING_ERR : out std_logic;
        OVERFLOW    : out std_logic;
        PARITY_ERR  : out std_logic;
        PRDATA      : out std_logic_vector(7 downto 0);
        PREADY      : out std_logic;
        PSLVERR     : out std_logic;
        RXRDY       : out std_logic;
        TX          : out std_logic;
        TXRDY       : out std_logic
        );
end component;
----------------------------------------------------------------------
-- Signal declarations
----------------------------------------------------------------------
signal APB_bif_PRDATA        : std_logic_vector(7 downto 0);
signal APB_bif_PREADY        : std_logic;
signal APB_bif_PSLVERR       : std_logic;
signal FRAMING_ERR_net_0     : std_logic;
signal OVERFLOW_net_0        : std_logic;
signal PARITY_ERR_net_0      : std_logic;
signal RXRDY_net_0           : std_logic;
signal TX_net_0              : std_logic;
signal TXRDY_net_0           : std_logic;
signal TXRDY_net_1           : std_logic;
signal RXRDY_net_1           : std_logic;
signal PARITY_ERR_net_1      : std_logic;
signal OVERFLOW_net_1        : std_logic;
signal TX_net_1              : std_logic;
signal FRAMING_ERR_net_1     : std_logic;
signal APB_bif_PRDATA_net_0  : std_logic_vector(7 downto 0);
signal APB_bif_PREADY_net_0  : std_logic;
signal APB_bif_PSLVERR_net_0 : std_logic;

begin
----------------------------------------------------------------------
-- Top level output port assignments
----------------------------------------------------------------------
 TXRDY_net_1           <= TXRDY_net_0;
 TXRDY                 <= TXRDY_net_1;
 RXRDY_net_1           <= RXRDY_net_0;
 RXRDY                 <= RXRDY_net_1;
 PARITY_ERR_net_1      <= PARITY_ERR_net_0;
 PARITY_ERR            <= PARITY_ERR_net_1;
 OVERFLOW_net_1        <= OVERFLOW_net_0;
 OVERFLOW              <= OVERFLOW_net_1;
 TX_net_1              <= TX_net_0;
 TX                    <= TX_net_1;
 FRAMING_ERR_net_1     <= FRAMING_ERR_net_0;
 FRAMING_ERR           <= FRAMING_ERR_net_1;
 APB_bif_PRDATA_net_0  <= APB_bif_PRDATA;
 PRDATA(7 downto 0)    <= APB_bif_PRDATA_net_0;
 APB_bif_PREADY_net_0  <= APB_bif_PREADY;
 PREADY                <= APB_bif_PREADY_net_0;
 APB_bif_PSLVERR_net_0 <= APB_bif_PSLVERR;
 PSLVERR               <= APB_bif_PSLVERR_net_0;
----------------------------------------------------------------------
-- Component instances
----------------------------------------------------------------------
-- UART_apb_1_0   -   Actel:DirectCore:CoreUARTapb:5.6.102
UART_apb_1_0 : UART_apb_1_UART_apb_1_0_CoreUARTapb
    generic map( 
        BAUD_VAL_FRCTN    => ( 0 ),
        BAUD_VAL_FRCTN_EN => ( 0 ),
        BAUD_VALUE        => ( 1 ),
        FAMILY            => ( 8 ),
        FIXEDMODE         => ( 0 ),
        PRG_BIT8          => ( 0 ),
        PRG_PARITY        => ( 0 ),
        RX_FIFO           => ( 0 ),
        RX_LEGACY_MODE    => ( 0 ),
        TX_FIFO           => ( 0 )
        )
    port map( 
        -- Inputs
        PCLK        => PCLK,
        PRESETN     => PRESETN,
        PADDR       => PADDR,
        PSEL        => PSEL,
        PENABLE     => PENABLE,
        PWRITE      => PWRITE,
        PWDATA      => PWDATA,
        RX          => RX,
        -- Outputs
        PRDATA      => APB_bif_PRDATA,
        TXRDY       => TXRDY_net_0,
        RXRDY       => RXRDY_net_0,
        PARITY_ERR  => PARITY_ERR_net_0,
        OVERFLOW    => OVERFLOW_net_0,
        TX          => TX_net_0,
        PREADY      => APB_bif_PREADY,
        PSLVERR     => APB_bif_PSLVERR,
        FRAMING_ERR => FRAMING_ERR_net_0 
        );

end RTL;
