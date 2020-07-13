----------------------------------------------------------------------
-- Created by SmartDesign Tue Mar 24 13:10:06 2020
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
-- LVDS_UART entity declaration
----------------------------------------------------------------------
entity LVDS_UART is
    -- Port list
    port(
        -- Inputs
        PADDR     : in  std_logic_vector(4 downto 0);
        PCLK      : in  std_logic;
        PENABLE   : in  std_logic;
        PRESETN   : in  std_logic;
        PSEL      : in  std_logic;
        PWDATA    : in  std_logic_vector(7 downto 0);
        PWRITE    : in  std_logic;
        RXN       : in  std_logic;
        RXP       : in  std_logic;
        -- Outputs
        PRDATA    : out std_logic_vector(7 downto 0);
        PREADY    : out std_logic;
        PSLVERR   : out std_logic;
        RXRDY     : out std_logic;
        TXN       : out std_logic;
        TXP       : out std_logic;
        TXRDY     : out std_logic;
        bit_error : out std_logic;
        e_cnt     : out std_logic_vector(15 downto 0);
        empty     : out std_logic;
        f_cnt     : out std_logic_vector(15 downto 0);
        full      : out std_logic
        );
end LVDS_UART;
----------------------------------------------------------------------
-- LVDS_UART architecture body
----------------------------------------------------------------------
architecture RTL of LVDS_UART is
----------------------------------------------------------------------
-- Component declarations
----------------------------------------------------------------------
-- PF_IN_C1
component PF_IN_C1
    -- Port list
    port(
        -- Inputs
        PADIN : in  std_logic;
        PADIP : in  std_logic;
        -- Outputs
        Y     : out std_logic
        );
end component;
-- PF_OUT_C2
component PF_OUT_C2
    -- Port list
    port(
        -- Inputs
        D     : in  std_logic;
        -- Outputs
        PADON : out std_logic;
        PADOP : out std_logic
        );
end component;
-- UART_apb_1
component UART_apb_1
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
-- uart_fifo
component uart_fifo
    -- Port list
    port(
        -- Inputs
        clk       : in  std_logic;
        din       : in  std_logic_vector(7 downto 0);
        rd_en     : in  std_logic;
        rst_L     : in  std_logic;
        wr_en     : in  std_logic;
        -- Outputs
        bit_error : out std_logic;
        dout      : out std_logic_vector(7 downto 0);
        e_cnt     : out std_logic_vector(15 downto 0);
        empty     : out std_logic;
        f_cnt     : out std_logic_vector(15 downto 0);
        full      : out std_logic
        );
end component;
----------------------------------------------------------------------
-- Signal declarations
----------------------------------------------------------------------
signal bit_error_net_0     : std_logic;
signal e_cnt_net_0         : std_logic_vector(15 downto 0);
signal empty_net_0         : std_logic;
signal f_cnt_net_0         : std_logic_vector(15 downto 0);
signal full_net_0          : std_logic;
signal PF_IN_C1_0_Y        : std_logic;
signal PRDATA_net_0        : std_logic_vector(7 downto 0);
signal PREADY_net_0        : std_logic;
signal PSLVERR_net_0       : std_logic;
signal RXRDY_net_0         : std_logic;
signal TXN_net_0           : std_logic;
signal TXP_net_0           : std_logic;
signal TXRDY_net_0         : std_logic;
signal UART_apb_1_0_PRDATA : std_logic_vector(7 downto 0);
signal UART_apb_1_0_TX     : std_logic;
signal full_net_1          : std_logic;
signal empty_net_1         : std_logic;
signal bit_error_net_1     : std_logic;
signal TXP_net_1           : std_logic;
signal TXN_net_1           : std_logic;
signal RXRDY_net_1         : std_logic;
signal TXRDY_net_1         : std_logic;
signal PREADY_net_1        : std_logic;
signal PSLVERR_net_1       : std_logic;
signal f_cnt_net_1         : std_logic_vector(15 downto 0);
signal e_cnt_net_1         : std_logic_vector(15 downto 0);
signal PRDATA_net_1        : std_logic_vector(7 downto 0);

begin
----------------------------------------------------------------------
-- Top level output port assignments
----------------------------------------------------------------------
 full_net_1         <= full_net_0;
 full               <= full_net_1;
 empty_net_1        <= empty_net_0;
 empty              <= empty_net_1;
 bit_error_net_1    <= bit_error_net_0;
 bit_error          <= bit_error_net_1;
 TXP_net_1          <= TXP_net_0;
 TXP                <= TXP_net_1;
 TXN_net_1          <= TXN_net_0;
 TXN                <= TXN_net_1;
 RXRDY_net_1        <= RXRDY_net_0;
 RXRDY              <= RXRDY_net_1;
 TXRDY_net_1        <= TXRDY_net_0;
 TXRDY              <= TXRDY_net_1;
 PREADY_net_1       <= PREADY_net_0;
 PREADY             <= PREADY_net_1;
 PSLVERR_net_1      <= PSLVERR_net_0;
 PSLVERR            <= PSLVERR_net_1;
 f_cnt_net_1        <= f_cnt_net_0;
 f_cnt(15 downto 0) <= f_cnt_net_1;
 e_cnt_net_1        <= e_cnt_net_0;
 e_cnt(15 downto 0) <= e_cnt_net_1;
 PRDATA_net_1       <= PRDATA_net_0;
 PRDATA(7 downto 0) <= PRDATA_net_1;
----------------------------------------------------------------------
-- Component instances
----------------------------------------------------------------------
-- PF_IN_C1_0
PF_IN_C1_0 : PF_IN_C1
    port map( 
        -- Inputs
        PADIP => RXP,
        PADIN => RXN,
        -- Outputs
        Y     => PF_IN_C1_0_Y 
        );
-- PF_OUT_C2_0
PF_OUT_C2_0 : PF_OUT_C2
    port map( 
        -- Inputs
        D     => UART_apb_1_0_TX,
        -- Outputs
        PADOP => TXP_net_0,
        PADON => TXN_net_0 
        );
-- UART_apb_1_0
UART_apb_1_0 : UART_apb_1
    port map( 
        -- Inputs
        PCLK        => PCLK,
        PRESETN     => PRESETN,
        RX          => PF_IN_C1_0_Y,
        PSEL        => PSEL,
        PENABLE     => PENABLE,
        PWRITE      => PWRITE,
        PADDR       => PADDR,
        PWDATA      => PWDATA,
        -- Outputs
        TXRDY       => TXRDY_net_0,
        RXRDY       => RXRDY_net_0,
        PARITY_ERR  => OPEN,
        OVERFLOW    => OPEN,
        TX          => UART_apb_1_0_TX,
        FRAMING_ERR => OPEN,
        PREADY      => PREADY_net_0,
        PSLVERR     => PSLVERR_net_0,
        PRDATA      => UART_apb_1_0_PRDATA 
        );
-- uart_fifo_0
uart_fifo_0 : uart_fifo
    port map( 
        -- Inputs
        clk       => PCLK,
        rst_L     => PRESETN,
        wr_en     => PWRITE,
        rd_en     => PWRITE,
        din       => UART_apb_1_0_PRDATA,
        -- Outputs
        bit_error => bit_error_net_0,
        empty     => empty_net_0,
        full      => full_net_0,
        dout      => PRDATA_net_0,
        f_cnt     => f_cnt_net_0,
        e_cnt     => e_cnt_net_0 
        );

end RTL;
