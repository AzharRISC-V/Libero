----------------------------------------------------------------------
-- Created by SmartDesign Tue Mar 24 13:10:12 2020
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
-- LVDS_UART_TOP entity declaration
----------------------------------------------------------------------
entity LVDS_UART_TOP is
    -- Port list
    port(
        -- Inputs
        PADDR     : in  std_logic_vector(4 downto 0);
        PADDR_0   : in  std_logic_vector(4 downto 0);
        PADDR_1   : in  std_logic_vector(4 downto 0);
        PADDR_2   : in  std_logic_vector(4 downto 0);
        PADDR_3   : in  std_logic_vector(4 downto 0);
        PADDR_4   : in  std_logic_vector(4 downto 0);
        PADDR_5   : in  std_logic_vector(4 downto 0);
        PADDR_6   : in  std_logic_vector(4 downto 0);
        PADDR_7   : in  std_logic_vector(4 downto 0);
        PADDR_8   : in  std_logic_vector(4 downto 0);
        PCLK      : in  std_logic;
        PENABLE   : in  std_logic;
        PENABLE_0 : in  std_logic;
        PENABLE_1 : in  std_logic;
        PENABLE_2 : in  std_logic;
        PENABLE_3 : in  std_logic;
        PENABLE_4 : in  std_logic;
        PENABLE_5 : in  std_logic;
        PENABLE_6 : in  std_logic;
        PENABLE_7 : in  std_logic;
        PENABLE_8 : in  std_logic;
        PRESETN   : in  std_logic;
        PSEL      : in  std_logic;
        PSEL_0    : in  std_logic;
        PSEL_1    : in  std_logic;
        PSEL_2    : in  std_logic;
        PSEL_3    : in  std_logic;
        PSEL_4    : in  std_logic;
        PSEL_5    : in  std_logic;
        PSEL_6    : in  std_logic;
        PSEL_7    : in  std_logic;
        PSEL_8    : in  std_logic;
        PWDATA    : in  std_logic_vector(7 downto 0);
        PWDATA_0  : in  std_logic_vector(7 downto 0);
        PWDATA_1  : in  std_logic_vector(7 downto 0);
        PWDATA_2  : in  std_logic_vector(7 downto 0);
        PWDATA_3  : in  std_logic_vector(7 downto 0);
        PWDATA_4  : in  std_logic_vector(7 downto 0);
        PWDATA_5  : in  std_logic_vector(7 downto 0);
        PWDATA_6  : in  std_logic_vector(7 downto 0);
        PWDATA_7  : in  std_logic_vector(7 downto 0);
        PWDATA_8  : in  std_logic_vector(7 downto 0);
        PWRITE    : in  std_logic;
        PWRITE_0  : in  std_logic;
        PWRITE_1  : in  std_logic;
        PWRITE_2  : in  std_logic;
        PWRITE_3  : in  std_logic;
        PWRITE_4  : in  std_logic;
        PWRITE_5  : in  std_logic;
        PWRITE_6  : in  std_logic;
        PWRITE_7  : in  std_logic;
        PWRITE_8  : in  std_logic;
        RXN_0     : in  std_logic;
        RXN_1     : in  std_logic;
        RXN_2     : in  std_logic;
        RXN_3     : in  std_logic;
        RXN_4     : in  std_logic;
        RXN_5     : in  std_logic;
        RXN_6     : in  std_logic;
        RXN_7     : in  std_logic;
        RXN_8     : in  std_logic;
        RXN_9     : in  std_logic;
        RXP_0     : in  std_logic;
        RXP_1     : in  std_logic;
        RXP_2     : in  std_logic;
        RXP_3     : in  std_logic;
        RXP_4     : in  std_logic;
        RXP_5     : in  std_logic;
        RXP_6     : in  std_logic;
        RXP_7     : in  std_logic;
        RXP_8     : in  std_logic;
        RXP_9     : in  std_logic;
        -- Outputs
        PRDATA    : out std_logic_vector(7 downto 0);
        PRDATA_0  : out std_logic_vector(7 downto 0);
        PRDATA_1  : out std_logic_vector(7 downto 0);
        PRDATA_2  : out std_logic_vector(7 downto 0);
        PRDATA_3  : out std_logic_vector(7 downto 0);
        PRDATA_4  : out std_logic_vector(7 downto 0);
        PRDATA_5  : out std_logic_vector(7 downto 0);
        PRDATA_6  : out std_logic_vector(7 downto 0);
        PRDATA_7  : out std_logic_vector(7 downto 0);
        PRDATA_8  : out std_logic_vector(7 downto 0);
        PREADY    : out std_logic;
        PREADY_0  : out std_logic;
        PREADY_1  : out std_logic;
        PREADY_2  : out std_logic;
        PREADY_3  : out std_logic;
        PREADY_4  : out std_logic;
        PREADY_5  : out std_logic;
        PREADY_6  : out std_logic;
        PREADY_7  : out std_logic;
        PREADY_8  : out std_logic;
        PSLVERR   : out std_logic;
        PSLVERR_0 : out std_logic;
        PSLVERR_1 : out std_logic;
        PSLVERR_2 : out std_logic;
        PSLVERR_3 : out std_logic;
        PSLVERR_4 : out std_logic;
        PSLVERR_5 : out std_logic;
        PSLVERR_6 : out std_logic;
        PSLVERR_7 : out std_logic;
        PSLVERR_8 : out std_logic;
        RXRDY     : out std_logic_vector(9 downto 0);
        TXN_0     : out std_logic;
        TXN_1     : out std_logic;
        TXN_2     : out std_logic;
        TXN_3     : out std_logic;
        TXN_4     : out std_logic;
        TXN_5     : out std_logic;
        TXN_6     : out std_logic;
        TXN_7     : out std_logic;
        TXN_8     : out std_logic;
        TXN_9     : out std_logic;
        TXP_0     : out std_logic;
        TXP_1     : out std_logic;
        TXP_2     : out std_logic;
        TXP_3     : out std_logic;
        TXP_4     : out std_logic;
        TXP_5     : out std_logic;
        TXP_6     : out std_logic;
        TXP_7     : out std_logic;
        TXP_8     : out std_logic;
        TXP_9     : out std_logic;
        TXRDY     : out std_logic_vector(9 downto 0);
        bit_error : out std_logic_vector(9 downto 0);
        e_cnt_0   : out std_logic_vector(15 downto 0);
        e_cnt_1   : out std_logic_vector(15 downto 0);
        e_cnt_2   : out std_logic_vector(15 downto 0);
        e_cnt_3   : out std_logic_vector(15 downto 0);
        e_cnt_4   : out std_logic_vector(15 downto 0);
        e_cnt_5   : out std_logic_vector(15 downto 0);
        e_cnt_6   : out std_logic_vector(15 downto 0);
        e_cnt_7   : out std_logic_vector(15 downto 0);
        e_cnt_8   : out std_logic_vector(15 downto 0);
        e_cnt_9   : out std_logic_vector(15 downto 0);
        empty     : out std_logic_vector(9 downto 0);
        f_cnt_0   : out std_logic_vector(15 downto 0);
        f_cnt_1   : out std_logic_vector(15 downto 0);
        f_cnt_2   : out std_logic_vector(15 downto 0);
        f_cnt_3   : out std_logic_vector(15 downto 0);
        f_cnt_4   : out std_logic_vector(15 downto 0);
        f_cnt_5   : out std_logic_vector(15 downto 0);
        f_cnt_6   : out std_logic_vector(15 downto 0);
        f_cnt_7   : out std_logic_vector(15 downto 0);
        f_cnt_8   : out std_logic_vector(15 downto 0);
        f_cnt_9   : out std_logic_vector(15 downto 0);
        full      : out std_logic_vector(9 downto 0)
        );
end LVDS_UART_TOP;
----------------------------------------------------------------------
-- LVDS_UART_TOP architecture body
----------------------------------------------------------------------
architecture RTL of LVDS_UART_TOP is
----------------------------------------------------------------------
-- Component declarations
----------------------------------------------------------------------
-- LVDS_UART
component LVDS_UART
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
end component;
----------------------------------------------------------------------
-- Signal declarations
----------------------------------------------------------------------
signal APB_bif_0_PRDATA        : std_logic_vector(7 downto 0);
signal APB_bif_0_PREADY        : std_logic;
signal APB_bif_0_PSLVERR       : std_logic;
signal APB_bif_1_PRDATA        : std_logic_vector(7 downto 0);
signal APB_bif_1_PREADY        : std_logic;
signal APB_bif_1_PSLVERR       : std_logic;
signal APB_bif_2_PRDATA        : std_logic_vector(7 downto 0);
signal APB_bif_2_PREADY        : std_logic;
signal APB_bif_2_PSLVERR       : std_logic;
signal APB_bif_3_PRDATA        : std_logic_vector(7 downto 0);
signal APB_bif_3_PREADY        : std_logic;
signal APB_bif_3_PSLVERR       : std_logic;
signal APB_bif_4_PRDATA        : std_logic_vector(7 downto 0);
signal APB_bif_4_PREADY        : std_logic;
signal APB_bif_4_PSLVERR       : std_logic;
signal APB_bif_5_PRDATA        : std_logic_vector(7 downto 0);
signal APB_bif_5_PREADY        : std_logic;
signal APB_bif_5_PSLVERR       : std_logic;
signal APB_bif_6_PRDATA        : std_logic_vector(7 downto 0);
signal APB_bif_6_PREADY        : std_logic;
signal APB_bif_6_PSLVERR       : std_logic;
signal APB_bif_7_PRDATA        : std_logic_vector(7 downto 0);
signal APB_bif_7_PREADY        : std_logic;
signal APB_bif_7_PSLVERR       : std_logic;
signal APB_bif_8_PRDATA        : std_logic_vector(7 downto 0);
signal APB_bif_8_PREADY        : std_logic;
signal APB_bif_8_PSLVERR       : std_logic;
signal APB_bif_9_PRDATA        : std_logic_vector(7 downto 0);
signal APB_bif_9_PREADY        : std_logic;
signal APB_bif_9_PSLVERR       : std_logic;
signal bit_error_net_0         : std_logic;
signal bit_error_0             : std_logic;
signal bit_error_1             : std_logic;
signal bit_error_2             : std_logic;
signal bit_error_3             : std_logic;
signal bit_error_4             : std_logic;
signal bit_error_5             : std_logic;
signal bit_error_6             : std_logic;
signal bit_error_7             : std_logic;
signal bit_error_8             : std_logic;
signal e_cnt_0_net_0           : std_logic_vector(15 downto 0);
signal e_cnt_1_net_0           : std_logic_vector(15 downto 0);
signal e_cnt_2_net_0           : std_logic_vector(15 downto 0);
signal e_cnt_3_net_0           : std_logic_vector(15 downto 0);
signal e_cnt_4_net_0           : std_logic_vector(15 downto 0);
signal e_cnt_5_net_0           : std_logic_vector(15 downto 0);
signal e_cnt_6_net_0           : std_logic_vector(15 downto 0);
signal e_cnt_7_net_0           : std_logic_vector(15 downto 0);
signal e_cnt_8_net_0           : std_logic_vector(15 downto 0);
signal e_cnt_9_net_0           : std_logic_vector(15 downto 0);
signal empty_net_0             : std_logic;
signal empty_0                 : std_logic;
signal empty_1                 : std_logic;
signal empty_2                 : std_logic;
signal empty_3                 : std_logic;
signal empty_4                 : std_logic;
signal empty_5                 : std_logic;
signal empty_6                 : std_logic;
signal empty_7                 : std_logic;
signal empty_8                 : std_logic;
signal f_cnt_0_net_0           : std_logic_vector(15 downto 0);
signal f_cnt_1_net_0           : std_logic_vector(15 downto 0);
signal f_cnt_2_net_0           : std_logic_vector(15 downto 0);
signal f_cnt_3_net_0           : std_logic_vector(15 downto 0);
signal f_cnt_4_net_0           : std_logic_vector(15 downto 0);
signal f_cnt_5_net_0           : std_logic_vector(15 downto 0);
signal f_cnt_6_net_0           : std_logic_vector(15 downto 0);
signal f_cnt_7_net_0           : std_logic_vector(15 downto 0);
signal f_cnt_8_net_0           : std_logic_vector(15 downto 0);
signal f_cnt_9_net_0           : std_logic_vector(15 downto 0);
signal full_net_0              : std_logic;
signal full_0                  : std_logic;
signal full_1                  : std_logic;
signal full_2                  : std_logic;
signal full_3                  : std_logic;
signal full_4                  : std_logic;
signal full_5                  : std_logic;
signal full_6                  : std_logic;
signal full_7                  : std_logic;
signal full_8                  : std_logic;
signal RXRDY_net_0             : std_logic;
signal RXRDY_0                 : std_logic;
signal RXRDY_1                 : std_logic;
signal RXRDY_2                 : std_logic;
signal RXRDY_3                 : std_logic;
signal RXRDY_4                 : std_logic;
signal RXRDY_5                 : std_logic;
signal RXRDY_6                 : std_logic;
signal RXRDY_7                 : std_logic;
signal RXRDY_8                 : std_logic;
signal TXN_0_net_0             : std_logic;
signal TXN_1_net_0             : std_logic;
signal TXN_2_net_0             : std_logic;
signal TXN_3_net_0             : std_logic;
signal TXN_4_net_0             : std_logic;
signal TXN_5_net_0             : std_logic;
signal TXN_6_net_0             : std_logic;
signal TXN_7_net_0             : std_logic;
signal TXN_8_net_0             : std_logic;
signal TXN_9_net_0             : std_logic;
signal TXP_0_net_0             : std_logic;
signal TXP_1_net_0             : std_logic;
signal TXP_2_net_0             : std_logic;
signal TXP_3_net_0             : std_logic;
signal TXP_4_net_0             : std_logic;
signal TXP_5_net_0             : std_logic;
signal TXP_6_net_0             : std_logic;
signal TXP_7_net_0             : std_logic;
signal TXP_8_net_0             : std_logic;
signal TXP_9_net_0             : std_logic;
signal TXRDY_net_0             : std_logic;
signal TXRDY_0                 : std_logic;
signal TXRDY_1                 : std_logic;
signal TXRDY_2                 : std_logic;
signal TXRDY_3                 : std_logic;
signal TXRDY_4                 : std_logic;
signal TXRDY_5                 : std_logic;
signal TXRDY_6                 : std_logic;
signal TXRDY_7                 : std_logic;
signal TXRDY_8                 : std_logic;
signal TXP_0_net_1             : std_logic;
signal TXN_0_net_1             : std_logic;
signal TXP_1_net_1             : std_logic;
signal TXN_1_net_1             : std_logic;
signal TXP_2_net_1             : std_logic;
signal TXN_2_net_1             : std_logic;
signal TXP_3_net_1             : std_logic;
signal TXN_3_net_1             : std_logic;
signal TXP_4_net_1             : std_logic;
signal TXN_4_net_1             : std_logic;
signal TXP_5_net_1             : std_logic;
signal TXN_5_net_1             : std_logic;
signal TXP_6_net_1             : std_logic;
signal TXN_6_net_1             : std_logic;
signal TXP_7_net_1             : std_logic;
signal TXN_7_net_1             : std_logic;
signal TXP_8_net_1             : std_logic;
signal TXN_8_net_1             : std_logic;
signal TXP_9_net_1             : std_logic;
signal TXN_9_net_1             : std_logic;
signal APB_bif_0_PREADY_net_0  : std_logic;
signal APB_bif_0_PSLVERR_net_0 : std_logic;
signal APB_bif_1_PREADY_net_0  : std_logic;
signal APB_bif_1_PSLVERR_net_0 : std_logic;
signal APB_bif_2_PREADY_net_0  : std_logic;
signal APB_bif_2_PSLVERR_net_0 : std_logic;
signal APB_bif_3_PREADY_net_0  : std_logic;
signal APB_bif_3_PSLVERR_net_0 : std_logic;
signal APB_bif_4_PREADY_net_0  : std_logic;
signal APB_bif_4_PSLVERR_net_0 : std_logic;
signal APB_bif_5_PREADY_net_0  : std_logic;
signal APB_bif_5_PSLVERR_net_0 : std_logic;
signal APB_bif_6_PREADY_net_0  : std_logic;
signal APB_bif_6_PSLVERR_net_0 : std_logic;
signal APB_bif_7_PREADY_net_0  : std_logic;
signal APB_bif_7_PSLVERR_net_0 : std_logic;
signal APB_bif_8_PREADY_net_0  : std_logic;
signal APB_bif_8_PSLVERR_net_0 : std_logic;
signal APB_bif_9_PREADY_net_0  : std_logic;
signal APB_bif_9_PSLVERR_net_0 : std_logic;
signal bit_error_net_1         : std_logic_vector(0 to 0);
signal bit_error_4_net_0       : std_logic_vector(1 to 1);
signal bit_error_0_net_0       : std_logic_vector(2 to 2);
signal bit_error_1_net_0       : std_logic_vector(3 to 3);
signal bit_error_2_net_0       : std_logic_vector(4 to 4);
signal bit_error_3_net_0       : std_logic_vector(5 to 5);
signal bit_error_5_net_0       : std_logic_vector(6 to 6);
signal bit_error_6_net_0       : std_logic_vector(7 to 7);
signal bit_error_7_net_0       : std_logic_vector(8 to 8);
signal bit_error_8_net_0       : std_logic_vector(9 to 9);
signal full_7_net_0            : std_logic_vector(0 to 0);
signal full_8_net_0            : std_logic_vector(1 to 1);
signal full_6_net_0            : std_logic_vector(2 to 2);
signal full_5_net_0            : std_logic_vector(3 to 3);
signal full_2_net_0            : std_logic_vector(4 to 4);
signal full_4_net_0            : std_logic_vector(5 to 5);
signal full_3_net_0            : std_logic_vector(6 to 6);
signal full_1_net_0            : std_logic_vector(7 to 7);
signal full_0_net_0            : std_logic_vector(8 to 8);
signal full_net_1              : std_logic_vector(9 to 9);
signal empty_7_net_0           : std_logic_vector(0 to 0);
signal empty_8_net_0           : std_logic_vector(1 to 1);
signal empty_6_net_0           : std_logic_vector(2 to 2);
signal empty_5_net_0           : std_logic_vector(3 to 3);
signal empty_2_net_0           : std_logic_vector(4 to 4);
signal empty_4_net_0           : std_logic_vector(5 to 5);
signal empty_3_net_0           : std_logic_vector(6 to 6);
signal empty_1_net_0           : std_logic_vector(7 to 7);
signal empty_0_net_0           : std_logic_vector(8 to 8);
signal empty_net_1             : std_logic_vector(9 to 9);
signal RXRDY_7_net_0           : std_logic_vector(0 to 0);
signal RXRDY_8_net_0           : std_logic_vector(1 to 1);
signal RXRDY_6_net_0           : std_logic_vector(2 to 2);
signal RXRDY_5_net_0           : std_logic_vector(3 to 3);
signal RXRDY_2_net_0           : std_logic_vector(4 to 4);
signal RXRDY_4_net_0           : std_logic_vector(5 to 5);
signal RXRDY_3_net_0           : std_logic_vector(6 to 6);
signal RXRDY_1_net_0           : std_logic_vector(7 to 7);
signal RXRDY_0_net_0           : std_logic_vector(8 to 8);
signal RXRDY_net_1             : std_logic_vector(9 to 9);
signal TXRDY_net_1             : std_logic_vector(0 to 0);
signal TXRDY_1_net_0           : std_logic_vector(1 to 1);
signal TXRDY_0_net_0           : std_logic_vector(2 to 2);
signal TXRDY_2_net_0           : std_logic_vector(3 to 3);
signal TXRDY_3_net_0           : std_logic_vector(4 to 4);
signal TXRDY_4_net_0           : std_logic_vector(5 to 5);
signal TXRDY_5_net_0           : std_logic_vector(6 to 6);
signal TXRDY_6_net_0           : std_logic_vector(7 to 7);
signal TXRDY_7_net_0           : std_logic_vector(8 to 8);
signal TXRDY_8_net_0           : std_logic_vector(9 to 9);
signal e_cnt_0_net_1           : std_logic_vector(15 downto 0);
signal f_cnt_0_net_1           : std_logic_vector(15 downto 0);
signal e_cnt_1_net_1           : std_logic_vector(15 downto 0);
signal f_cnt_1_net_1           : std_logic_vector(15 downto 0);
signal e_cnt_2_net_1           : std_logic_vector(15 downto 0);
signal f_cnt_2_net_1           : std_logic_vector(15 downto 0);
signal e_cnt_3_net_1           : std_logic_vector(15 downto 0);
signal f_cnt_3_net_1           : std_logic_vector(15 downto 0);
signal e_cnt_4_net_1           : std_logic_vector(15 downto 0);
signal f_cnt_4_net_1           : std_logic_vector(15 downto 0);
signal e_cnt_5_net_1           : std_logic_vector(15 downto 0);
signal f_cnt_5_net_1           : std_logic_vector(15 downto 0);
signal e_cnt_6_net_1           : std_logic_vector(15 downto 0);
signal f_cnt_6_net_1           : std_logic_vector(15 downto 0);
signal e_cnt_7_net_1           : std_logic_vector(15 downto 0);
signal f_cnt_7_net_1           : std_logic_vector(15 downto 0);
signal e_cnt_8_net_1           : std_logic_vector(15 downto 0);
signal f_cnt_8_net_1           : std_logic_vector(15 downto 0);
signal e_cnt_9_net_1           : std_logic_vector(15 downto 0);
signal f_cnt_9_net_1           : std_logic_vector(15 downto 0);
signal APB_bif_0_PRDATA_net_0  : std_logic_vector(7 downto 0);
signal APB_bif_1_PRDATA_net_0  : std_logic_vector(7 downto 0);
signal APB_bif_2_PRDATA_net_0  : std_logic_vector(7 downto 0);
signal APB_bif_3_PRDATA_net_0  : std_logic_vector(7 downto 0);
signal APB_bif_4_PRDATA_net_0  : std_logic_vector(7 downto 0);
signal APB_bif_5_PRDATA_net_0  : std_logic_vector(7 downto 0);
signal APB_bif_6_PRDATA_net_0  : std_logic_vector(7 downto 0);
signal APB_bif_7_PRDATA_net_0  : std_logic_vector(7 downto 0);
signal APB_bif_8_PRDATA_net_0  : std_logic_vector(7 downto 0);
signal APB_bif_9_PRDATA_net_0  : std_logic_vector(7 downto 0);
----------------------------------------------------------------------
-- Inverted Signals
----------------------------------------------------------------------
signal PRESETN_IN_POST_INV0_0  : std_logic;

begin
----------------------------------------------------------------------
-- Inversions
----------------------------------------------------------------------
 PRESETN_IN_POST_INV0_0 <= NOT PRESETN;
----------------------------------------------------------------------
-- Top level output port assignments
----------------------------------------------------------------------
 TXP_0_net_1             <= TXP_0_net_0;
 TXP_0                   <= TXP_0_net_1;
 TXN_0_net_1             <= TXN_0_net_0;
 TXN_0                   <= TXN_0_net_1;
 TXP_1_net_1             <= TXP_1_net_0;
 TXP_1                   <= TXP_1_net_1;
 TXN_1_net_1             <= TXN_1_net_0;
 TXN_1                   <= TXN_1_net_1;
 TXP_2_net_1             <= TXP_2_net_0;
 TXP_2                   <= TXP_2_net_1;
 TXN_2_net_1             <= TXN_2_net_0;
 TXN_2                   <= TXN_2_net_1;
 TXP_3_net_1             <= TXP_3_net_0;
 TXP_3                   <= TXP_3_net_1;
 TXN_3_net_1             <= TXN_3_net_0;
 TXN_3                   <= TXN_3_net_1;
 TXP_4_net_1             <= TXP_4_net_0;
 TXP_4                   <= TXP_4_net_1;
 TXN_4_net_1             <= TXN_4_net_0;
 TXN_4                   <= TXN_4_net_1;
 TXP_5_net_1             <= TXP_5_net_0;
 TXP_5                   <= TXP_5_net_1;
 TXN_5_net_1             <= TXN_5_net_0;
 TXN_5                   <= TXN_5_net_1;
 TXP_6_net_1             <= TXP_6_net_0;
 TXP_6                   <= TXP_6_net_1;
 TXN_6_net_1             <= TXN_6_net_0;
 TXN_6                   <= TXN_6_net_1;
 TXP_7_net_1             <= TXP_7_net_0;
 TXP_7                   <= TXP_7_net_1;
 TXN_7_net_1             <= TXN_7_net_0;
 TXN_7                   <= TXN_7_net_1;
 TXP_8_net_1             <= TXP_8_net_0;
 TXP_8                   <= TXP_8_net_1;
 TXN_8_net_1             <= TXN_8_net_0;
 TXN_8                   <= TXN_8_net_1;
 TXP_9_net_1             <= TXP_9_net_0;
 TXP_9                   <= TXP_9_net_1;
 TXN_9_net_1             <= TXN_9_net_0;
 TXN_9                   <= TXN_9_net_1;
 APB_bif_0_PREADY_net_0  <= APB_bif_0_PREADY;
 PREADY                  <= APB_bif_0_PREADY_net_0;
 APB_bif_0_PSLVERR_net_0 <= APB_bif_0_PSLVERR;
 PSLVERR                 <= APB_bif_0_PSLVERR_net_0;
 APB_bif_1_PREADY_net_0  <= APB_bif_1_PREADY;
 PREADY_0                <= APB_bif_1_PREADY_net_0;
 APB_bif_1_PSLVERR_net_0 <= APB_bif_1_PSLVERR;
 PSLVERR_0               <= APB_bif_1_PSLVERR_net_0;
 APB_bif_2_PREADY_net_0  <= APB_bif_2_PREADY;
 PREADY_1                <= APB_bif_2_PREADY_net_0;
 APB_bif_2_PSLVERR_net_0 <= APB_bif_2_PSLVERR;
 PSLVERR_1               <= APB_bif_2_PSLVERR_net_0;
 APB_bif_3_PREADY_net_0  <= APB_bif_3_PREADY;
 PREADY_2                <= APB_bif_3_PREADY_net_0;
 APB_bif_3_PSLVERR_net_0 <= APB_bif_3_PSLVERR;
 PSLVERR_2               <= APB_bif_3_PSLVERR_net_0;
 APB_bif_4_PREADY_net_0  <= APB_bif_4_PREADY;
 PREADY_3                <= APB_bif_4_PREADY_net_0;
 APB_bif_4_PSLVERR_net_0 <= APB_bif_4_PSLVERR;
 PSLVERR_3               <= APB_bif_4_PSLVERR_net_0;
 APB_bif_5_PREADY_net_0  <= APB_bif_5_PREADY;
 PREADY_4                <= APB_bif_5_PREADY_net_0;
 APB_bif_5_PSLVERR_net_0 <= APB_bif_5_PSLVERR;
 PSLVERR_4               <= APB_bif_5_PSLVERR_net_0;
 APB_bif_6_PREADY_net_0  <= APB_bif_6_PREADY;
 PREADY_5                <= APB_bif_6_PREADY_net_0;
 APB_bif_6_PSLVERR_net_0 <= APB_bif_6_PSLVERR;
 PSLVERR_5               <= APB_bif_6_PSLVERR_net_0;
 APB_bif_7_PREADY_net_0  <= APB_bif_7_PREADY;
 PREADY_6                <= APB_bif_7_PREADY_net_0;
 APB_bif_7_PSLVERR_net_0 <= APB_bif_7_PSLVERR;
 PSLVERR_6               <= APB_bif_7_PSLVERR_net_0;
 APB_bif_8_PREADY_net_0  <= APB_bif_8_PREADY;
 PREADY_7                <= APB_bif_8_PREADY_net_0;
 APB_bif_8_PSLVERR_net_0 <= APB_bif_8_PSLVERR;
 PSLVERR_7               <= APB_bif_8_PSLVERR_net_0;
 APB_bif_9_PREADY_net_0  <= APB_bif_9_PREADY;
 PREADY_8                <= APB_bif_9_PREADY_net_0;
 APB_bif_9_PSLVERR_net_0 <= APB_bif_9_PSLVERR;
 PSLVERR_8               <= APB_bif_9_PSLVERR_net_0;
 bit_error_net_1(0)      <= bit_error_net_0;
 bit_error(0)            <= bit_error_net_1(0);
 bit_error_4_net_0(1)    <= bit_error_4;
 bit_error(1)            <= bit_error_4_net_0(1);
 bit_error_0_net_0(2)    <= bit_error_0;
 bit_error(2)            <= bit_error_0_net_0(2);
 bit_error_1_net_0(3)    <= bit_error_1;
 bit_error(3)            <= bit_error_1_net_0(3);
 bit_error_2_net_0(4)    <= bit_error_2;
 bit_error(4)            <= bit_error_2_net_0(4);
 bit_error_3_net_0(5)    <= bit_error_3;
 bit_error(5)            <= bit_error_3_net_0(5);
 bit_error_5_net_0(6)    <= bit_error_5;
 bit_error(6)            <= bit_error_5_net_0(6);
 bit_error_6_net_0(7)    <= bit_error_6;
 bit_error(7)            <= bit_error_6_net_0(7);
 bit_error_7_net_0(8)    <= bit_error_7;
 bit_error(8)            <= bit_error_7_net_0(8);
 bit_error_8_net_0(9)    <= bit_error_8;
 bit_error(9)            <= bit_error_8_net_0(9);
 full_7_net_0(0)         <= full_7;
 full(0)                 <= full_7_net_0(0);
 full_8_net_0(1)         <= full_8;
 full(1)                 <= full_8_net_0(1);
 full_6_net_0(2)         <= full_6;
 full(2)                 <= full_6_net_0(2);
 full_5_net_0(3)         <= full_5;
 full(3)                 <= full_5_net_0(3);
 full_2_net_0(4)         <= full_2;
 full(4)                 <= full_2_net_0(4);
 full_4_net_0(5)         <= full_4;
 full(5)                 <= full_4_net_0(5);
 full_3_net_0(6)         <= full_3;
 full(6)                 <= full_3_net_0(6);
 full_1_net_0(7)         <= full_1;
 full(7)                 <= full_1_net_0(7);
 full_0_net_0(8)         <= full_0;
 full(8)                 <= full_0_net_0(8);
 full_net_1(9)           <= full_net_0;
 full(9)                 <= full_net_1(9);
 empty_7_net_0(0)        <= empty_7;
 empty(0)                <= empty_7_net_0(0);
 empty_8_net_0(1)        <= empty_8;
 empty(1)                <= empty_8_net_0(1);
 empty_6_net_0(2)        <= empty_6;
 empty(2)                <= empty_6_net_0(2);
 empty_5_net_0(3)        <= empty_5;
 empty(3)                <= empty_5_net_0(3);
 empty_2_net_0(4)        <= empty_2;
 empty(4)                <= empty_2_net_0(4);
 empty_4_net_0(5)        <= empty_4;
 empty(5)                <= empty_4_net_0(5);
 empty_3_net_0(6)        <= empty_3;
 empty(6)                <= empty_3_net_0(6);
 empty_1_net_0(7)        <= empty_1;
 empty(7)                <= empty_1_net_0(7);
 empty_0_net_0(8)        <= empty_0;
 empty(8)                <= empty_0_net_0(8);
 empty_net_1(9)          <= empty_net_0;
 empty(9)                <= empty_net_1(9);
 RXRDY_7_net_0(0)        <= RXRDY_7;
 RXRDY(0)                <= RXRDY_7_net_0(0);
 RXRDY_8_net_0(1)        <= RXRDY_8;
 RXRDY(1)                <= RXRDY_8_net_0(1);
 RXRDY_6_net_0(2)        <= RXRDY_6;
 RXRDY(2)                <= RXRDY_6_net_0(2);
 RXRDY_5_net_0(3)        <= RXRDY_5;
 RXRDY(3)                <= RXRDY_5_net_0(3);
 RXRDY_2_net_0(4)        <= RXRDY_2;
 RXRDY(4)                <= RXRDY_2_net_0(4);
 RXRDY_4_net_0(5)        <= RXRDY_4;
 RXRDY(5)                <= RXRDY_4_net_0(5);
 RXRDY_3_net_0(6)        <= RXRDY_3;
 RXRDY(6)                <= RXRDY_3_net_0(6);
 RXRDY_1_net_0(7)        <= RXRDY_1;
 RXRDY(7)                <= RXRDY_1_net_0(7);
 RXRDY_0_net_0(8)        <= RXRDY_0;
 RXRDY(8)                <= RXRDY_0_net_0(8);
 RXRDY_net_1(9)          <= RXRDY_net_0;
 RXRDY(9)                <= RXRDY_net_1(9);
 TXRDY_net_1(0)          <= TXRDY_net_0;
 TXRDY(0)                <= TXRDY_net_1(0);
 TXRDY_1_net_0(1)        <= TXRDY_1;
 TXRDY(1)                <= TXRDY_1_net_0(1);
 TXRDY_0_net_0(2)        <= TXRDY_0;
 TXRDY(2)                <= TXRDY_0_net_0(2);
 TXRDY_2_net_0(3)        <= TXRDY_2;
 TXRDY(3)                <= TXRDY_2_net_0(3);
 TXRDY_3_net_0(4)        <= TXRDY_3;
 TXRDY(4)                <= TXRDY_3_net_0(4);
 TXRDY_4_net_0(5)        <= TXRDY_4;
 TXRDY(5)                <= TXRDY_4_net_0(5);
 TXRDY_5_net_0(6)        <= TXRDY_5;
 TXRDY(6)                <= TXRDY_5_net_0(6);
 TXRDY_6_net_0(7)        <= TXRDY_6;
 TXRDY(7)                <= TXRDY_6_net_0(7);
 TXRDY_7_net_0(8)        <= TXRDY_7;
 TXRDY(8)                <= TXRDY_7_net_0(8);
 TXRDY_8_net_0(9)        <= TXRDY_8;
 TXRDY(9)                <= TXRDY_8_net_0(9);
 e_cnt_0_net_1           <= e_cnt_0_net_0;
 e_cnt_0(15 downto 0)    <= e_cnt_0_net_1;
 f_cnt_0_net_1           <= f_cnt_0_net_0;
 f_cnt_0(15 downto 0)    <= f_cnt_0_net_1;
 e_cnt_1_net_1           <= e_cnt_1_net_0;
 e_cnt_1(15 downto 0)    <= e_cnt_1_net_1;
 f_cnt_1_net_1           <= f_cnt_1_net_0;
 f_cnt_1(15 downto 0)    <= f_cnt_1_net_1;
 e_cnt_2_net_1           <= e_cnt_2_net_0;
 e_cnt_2(15 downto 0)    <= e_cnt_2_net_1;
 f_cnt_2_net_1           <= f_cnt_2_net_0;
 f_cnt_2(15 downto 0)    <= f_cnt_2_net_1;
 e_cnt_3_net_1           <= e_cnt_3_net_0;
 e_cnt_3(15 downto 0)    <= e_cnt_3_net_1;
 f_cnt_3_net_1           <= f_cnt_3_net_0;
 f_cnt_3(15 downto 0)    <= f_cnt_3_net_1;
 e_cnt_4_net_1           <= e_cnt_4_net_0;
 e_cnt_4(15 downto 0)    <= e_cnt_4_net_1;
 f_cnt_4_net_1           <= f_cnt_4_net_0;
 f_cnt_4(15 downto 0)    <= f_cnt_4_net_1;
 e_cnt_5_net_1           <= e_cnt_5_net_0;
 e_cnt_5(15 downto 0)    <= e_cnt_5_net_1;
 f_cnt_5_net_1           <= f_cnt_5_net_0;
 f_cnt_5(15 downto 0)    <= f_cnt_5_net_1;
 e_cnt_6_net_1           <= e_cnt_6_net_0;
 e_cnt_6(15 downto 0)    <= e_cnt_6_net_1;
 f_cnt_6_net_1           <= f_cnt_6_net_0;
 f_cnt_6(15 downto 0)    <= f_cnt_6_net_1;
 e_cnt_7_net_1           <= e_cnt_7_net_0;
 e_cnt_7(15 downto 0)    <= e_cnt_7_net_1;
 f_cnt_7_net_1           <= f_cnt_7_net_0;
 f_cnt_7(15 downto 0)    <= f_cnt_7_net_1;
 e_cnt_8_net_1           <= e_cnt_8_net_0;
 e_cnt_8(15 downto 0)    <= e_cnt_8_net_1;
 f_cnt_8_net_1           <= f_cnt_8_net_0;
 f_cnt_8(15 downto 0)    <= f_cnt_8_net_1;
 e_cnt_9_net_1           <= e_cnt_9_net_0;
 e_cnt_9(15 downto 0)    <= e_cnt_9_net_1;
 f_cnt_9_net_1           <= f_cnt_9_net_0;
 f_cnt_9(15 downto 0)    <= f_cnt_9_net_1;
 APB_bif_0_PRDATA_net_0  <= APB_bif_0_PRDATA;
 PRDATA(7 downto 0)      <= APB_bif_0_PRDATA_net_0;
 APB_bif_1_PRDATA_net_0  <= APB_bif_1_PRDATA;
 PRDATA_0(7 downto 0)    <= APB_bif_1_PRDATA_net_0;
 APB_bif_2_PRDATA_net_0  <= APB_bif_2_PRDATA;
 PRDATA_1(7 downto 0)    <= APB_bif_2_PRDATA_net_0;
 APB_bif_3_PRDATA_net_0  <= APB_bif_3_PRDATA;
 PRDATA_2(7 downto 0)    <= APB_bif_3_PRDATA_net_0;
 APB_bif_4_PRDATA_net_0  <= APB_bif_4_PRDATA;
 PRDATA_3(7 downto 0)    <= APB_bif_4_PRDATA_net_0;
 APB_bif_5_PRDATA_net_0  <= APB_bif_5_PRDATA;
 PRDATA_4(7 downto 0)    <= APB_bif_5_PRDATA_net_0;
 APB_bif_6_PRDATA_net_0  <= APB_bif_6_PRDATA;
 PRDATA_5(7 downto 0)    <= APB_bif_6_PRDATA_net_0;
 APB_bif_7_PRDATA_net_0  <= APB_bif_7_PRDATA;
 PRDATA_6(7 downto 0)    <= APB_bif_7_PRDATA_net_0;
 APB_bif_8_PRDATA_net_0  <= APB_bif_8_PRDATA;
 PRDATA_7(7 downto 0)    <= APB_bif_8_PRDATA_net_0;
 APB_bif_9_PRDATA_net_0  <= APB_bif_9_PRDATA;
 PRDATA_8(7 downto 0)    <= APB_bif_9_PRDATA_net_0;
----------------------------------------------------------------------
-- Component instances
----------------------------------------------------------------------
-- LVDS_UART_0
LVDS_UART_0 : LVDS_UART
    port map( 
        -- Inputs
        PCLK      => PCLK,
        PRESETN   => PRESETN_IN_POST_INV0_0,
        RXP       => RXP_0,
        RXN       => RXN_0,
        PSEL      => PSEL,
        PENABLE   => PENABLE,
        PWRITE    => PWRITE,
        PADDR     => PADDR,
        PWDATA    => PWDATA,
        -- Outputs
        full      => full_7,
        empty     => empty_7,
        bit_error => bit_error_net_0,
        TXP       => TXP_0_net_0,
        TXN       => TXN_0_net_0,
        RXRDY     => RXRDY_7,
        TXRDY     => TXRDY_net_0,
        PREADY    => APB_bif_0_PREADY,
        PSLVERR   => APB_bif_0_PSLVERR,
        f_cnt     => f_cnt_0_net_0,
        e_cnt     => e_cnt_0_net_0,
        PRDATA    => APB_bif_0_PRDATA 
        );
-- LVDS_UART_1
LVDS_UART_1 : LVDS_UART
    port map( 
        -- Inputs
        PCLK      => PCLK,
        PRESETN   => PRESETN_IN_POST_INV0_0,
        RXP       => RXP_1,
        RXN       => RXN_1,
        PSEL      => PSEL_0,
        PENABLE   => PENABLE_0,
        PWRITE    => PWRITE_0,
        PADDR     => PADDR_0,
        PWDATA    => PWDATA_0,
        -- Outputs
        full      => full_8,
        empty     => empty_8,
        bit_error => bit_error_4,
        TXP       => TXP_1_net_0,
        TXN       => TXN_1_net_0,
        RXRDY     => RXRDY_8,
        TXRDY     => TXRDY_1,
        PREADY    => APB_bif_1_PREADY,
        PSLVERR   => APB_bif_1_PSLVERR,
        f_cnt     => f_cnt_1_net_0,
        e_cnt     => e_cnt_1_net_0,
        PRDATA    => APB_bif_1_PRDATA 
        );
-- LVDS_UART_2
LVDS_UART_2 : LVDS_UART
    port map( 
        -- Inputs
        PCLK      => PCLK,
        PRESETN   => PRESETN_IN_POST_INV0_0,
        RXP       => RXP_2,
        RXN       => RXN_2,
        PSEL      => PSEL_1,
        PENABLE   => PENABLE_1,
        PWRITE    => PWRITE_1,
        PADDR     => PADDR_1,
        PWDATA    => PWDATA_1,
        -- Outputs
        full      => full_6,
        empty     => empty_6,
        bit_error => bit_error_0,
        TXP       => TXP_2_net_0,
        TXN       => TXN_2_net_0,
        RXRDY     => RXRDY_6,
        TXRDY     => TXRDY_0,
        PREADY    => APB_bif_2_PREADY,
        PSLVERR   => APB_bif_2_PSLVERR,
        f_cnt     => f_cnt_2_net_0,
        e_cnt     => e_cnt_2_net_0,
        PRDATA    => APB_bif_2_PRDATA 
        );
-- LVDS_UART_3
LVDS_UART_3 : LVDS_UART
    port map( 
        -- Inputs
        PCLK      => PCLK,
        PRESETN   => PRESETN_IN_POST_INV0_0,
        RXP       => RXP_3,
        RXN       => RXN_3,
        PSEL      => PSEL_2,
        PENABLE   => PENABLE_2,
        PWRITE    => PWRITE_2,
        PADDR     => PADDR_2,
        PWDATA    => PWDATA_2,
        -- Outputs
        full      => full_5,
        empty     => empty_5,
        bit_error => bit_error_1,
        TXP       => TXP_3_net_0,
        TXN       => TXN_3_net_0,
        RXRDY     => RXRDY_5,
        TXRDY     => TXRDY_2,
        PREADY    => APB_bif_3_PREADY,
        PSLVERR   => APB_bif_3_PSLVERR,
        f_cnt     => f_cnt_3_net_0,
        e_cnt     => e_cnt_3_net_0,
        PRDATA    => APB_bif_3_PRDATA 
        );
-- LVDS_UART_4
LVDS_UART_4 : LVDS_UART
    port map( 
        -- Inputs
        PCLK      => PCLK,
        PRESETN   => PRESETN_IN_POST_INV0_0,
        RXP       => RXP_4,
        RXN       => RXN_4,
        PSEL      => PSEL_3,
        PENABLE   => PENABLE_3,
        PWRITE    => PWRITE_3,
        PADDR     => PADDR_3,
        PWDATA    => PWDATA_3,
        -- Outputs
        full      => full_2,
        empty     => empty_2,
        bit_error => bit_error_2,
        TXP       => TXP_4_net_0,
        TXN       => TXN_4_net_0,
        RXRDY     => RXRDY_2,
        TXRDY     => TXRDY_3,
        PREADY    => APB_bif_4_PREADY,
        PSLVERR   => APB_bif_4_PSLVERR,
        f_cnt     => f_cnt_4_net_0,
        e_cnt     => e_cnt_4_net_0,
        PRDATA    => APB_bif_4_PRDATA 
        );
-- LVDS_UART_5
LVDS_UART_5 : LVDS_UART
    port map( 
        -- Inputs
        PCLK      => PCLK,
        PRESETN   => PRESETN_IN_POST_INV0_0,
        RXP       => RXP_5,
        RXN       => RXN_5,
        PSEL      => PSEL_4,
        PENABLE   => PENABLE_4,
        PWRITE    => PWRITE_4,
        PADDR     => PADDR_4,
        PWDATA    => PWDATA_4,
        -- Outputs
        full      => full_4,
        empty     => empty_4,
        bit_error => bit_error_3,
        TXP       => TXP_5_net_0,
        TXN       => TXN_5_net_0,
        RXRDY     => RXRDY_4,
        TXRDY     => TXRDY_4,
        PREADY    => APB_bif_5_PREADY,
        PSLVERR   => APB_bif_5_PSLVERR,
        f_cnt     => f_cnt_5_net_0,
        e_cnt     => e_cnt_5_net_0,
        PRDATA    => APB_bif_5_PRDATA 
        );
-- LVDS_UART_6
LVDS_UART_6 : LVDS_UART
    port map( 
        -- Inputs
        PCLK      => PCLK,
        PRESETN   => PRESETN_IN_POST_INV0_0,
        RXP       => RXP_6,
        RXN       => RXN_6,
        PSEL      => PSEL_5,
        PENABLE   => PENABLE_5,
        PWRITE    => PWRITE_5,
        PADDR     => PADDR_5,
        PWDATA    => PWDATA_5,
        -- Outputs
        full      => full_3,
        empty     => empty_3,
        bit_error => bit_error_5,
        TXP       => TXP_6_net_0,
        TXN       => TXN_6_net_0,
        RXRDY     => RXRDY_3,
        TXRDY     => TXRDY_5,
        PREADY    => APB_bif_6_PREADY,
        PSLVERR   => APB_bif_6_PSLVERR,
        f_cnt     => f_cnt_6_net_0,
        e_cnt     => e_cnt_6_net_0,
        PRDATA    => APB_bif_6_PRDATA 
        );
-- LVDS_UART_7
LVDS_UART_7 : LVDS_UART
    port map( 
        -- Inputs
        PCLK      => PCLK,
        PRESETN   => PRESETN_IN_POST_INV0_0,
        RXP       => RXP_7,
        RXN       => RXN_7,
        PSEL      => PSEL_6,
        PENABLE   => PENABLE_6,
        PWRITE    => PWRITE_6,
        PADDR     => PADDR_6,
        PWDATA    => PWDATA_6,
        -- Outputs
        full      => full_1,
        empty     => empty_1,
        bit_error => bit_error_6,
        TXP       => TXP_7_net_0,
        TXN       => TXN_7_net_0,
        RXRDY     => RXRDY_1,
        TXRDY     => TXRDY_6,
        PREADY    => APB_bif_7_PREADY,
        PSLVERR   => APB_bif_7_PSLVERR,
        f_cnt     => f_cnt_7_net_0,
        e_cnt     => e_cnt_7_net_0,
        PRDATA    => APB_bif_7_PRDATA 
        );
-- LVDS_UART_8
LVDS_UART_8 : LVDS_UART
    port map( 
        -- Inputs
        PCLK      => PCLK,
        PRESETN   => PRESETN_IN_POST_INV0_0,
        RXP       => RXP_8,
        RXN       => RXN_8,
        PSEL      => PSEL_7,
        PENABLE   => PENABLE_7,
        PWRITE    => PWRITE_7,
        PADDR     => PADDR_7,
        PWDATA    => PWDATA_7,
        -- Outputs
        full      => full_0,
        empty     => empty_0,
        bit_error => bit_error_7,
        TXP       => TXP_8_net_0,
        TXN       => TXN_8_net_0,
        RXRDY     => RXRDY_0,
        TXRDY     => TXRDY_7,
        PREADY    => APB_bif_8_PREADY,
        PSLVERR   => APB_bif_8_PSLVERR,
        f_cnt     => f_cnt_8_net_0,
        e_cnt     => e_cnt_8_net_0,
        PRDATA    => APB_bif_8_PRDATA 
        );
-- LVDS_UART_9
LVDS_UART_9 : LVDS_UART
    port map( 
        -- Inputs
        PCLK      => PCLK,
        PRESETN   => PRESETN_IN_POST_INV0_0,
        RXP       => RXP_9,
        RXN       => RXN_9,
        PSEL      => PSEL_8,
        PENABLE   => PENABLE_8,
        PWRITE    => PWRITE_8,
        PADDR     => PADDR_8,
        PWDATA    => PWDATA_8,
        -- Outputs
        full      => full_net_0,
        empty     => empty_net_0,
        bit_error => bit_error_8,
        TXP       => TXP_9_net_0,
        TXN       => TXN_9_net_0,
        RXRDY     => RXRDY_net_0,
        TXRDY     => TXRDY_8,
        PREADY    => APB_bif_9_PREADY,
        PSLVERR   => APB_bif_9_PSLVERR,
        f_cnt     => f_cnt_9_net_0,
        e_cnt     => e_cnt_9_net_0,
        PRDATA    => APB_bif_9_PRDATA 
        );

end RTL;
