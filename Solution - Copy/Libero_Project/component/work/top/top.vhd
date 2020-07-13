----------------------------------------------------------------------
-- Created by SmartDesign Fri Apr  3 11:14:09 2020
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
-- top entity declaration
----------------------------------------------------------------------
entity top is
    -- Port list
    port(
        -- Inputs
        REF_CLK_0   : in    std_logic;
        RX          : in    std_logic;
        RXN_0       : in    std_logic;
        RXN_1       : in    std_logic;
        RXN_2       : in    std_logic;
        RXN_3       : in    std_logic;
        RXN_4       : in    std_logic;
        RXN_5       : in    std_logic;
        RXN_6       : in    std_logic;
        RXN_7       : in    std_logic;
        RXN_8       : in    std_logic;
        RXN_9       : in    std_logic;
        RXP_0       : in    std_logic;
        RXP_1       : in    std_logic;
        RXP_2       : in    std_logic;
        RXP_3       : in    std_logic;
        RXP_4       : in    std_logic;
        RXP_5       : in    std_logic;
        RXP_6       : in    std_logic;
        RXP_7       : in    std_logic;
        RXP_8       : in    std_logic;
        RXP_9       : in    std_logic;
        SPISDI      : in    std_logic;
        TCK         : in    std_logic;
        TDI         : in    std_logic;
        TMS         : in    std_logic;
        TRSTB       : in    std_logic;
        resetn      : in    std_logic;
        -- Outputs
        A           : out   std_logic_vector(15 downto 0);
        BA          : out   std_logic_vector(2 downto 0);
        CAS_N       : out   std_logic;
        CK0         : out   std_logic;
        CK0_N       : out   std_logic;
        CKE         : out   std_logic;
        CS_N        : out   std_logic;
        CTRLR_READY : out   std_logic;
        DM          : out   std_logic_vector(1 downto 0);
        ODT         : out   std_logic;
        RAS_N       : out   std_logic;
        RESET_N     : out   std_logic;
        SHIELD0     : out   std_logic;
        SHIELD1     : out   std_logic;
        SPISCLKO    : out   std_logic;
        SPISDO      : out   std_logic;
        SPISS_0     : out   std_logic;
        SPISS_1     : out   std_logic;
        SPISS_2     : out   std_logic;
        SPISS_3     : out   std_logic;
        SPISS_4     : out   std_logic;
        SPISS_5     : out   std_logic;
        TDO         : out   std_logic;
        TX          : out   std_logic;
        TXN_0       : out   std_logic;
        TXN_1       : out   std_logic;
        TXN_2       : out   std_logic;
        TXN_3       : out   std_logic;
        TXN_4       : out   std_logic;
        TXN_5       : out   std_logic;
        TXN_6       : out   std_logic;
        TXN_7       : out   std_logic;
        TXN_8       : out   std_logic;
        TXN_9       : out   std_logic;
        TXP_0       : out   std_logic;
        TXP_1       : out   std_logic;
        TXP_2       : out   std_logic;
        TXP_3       : out   std_logic;
        TXP_4       : out   std_logic;
        TXP_5       : out   std_logic;
        TXP_6       : out   std_logic;
        TXP_7       : out   std_logic;
        TXP_8       : out   std_logic;
        TXP_9       : out   std_logic;
        WE_N        : out   std_logic;
        -- Inouts
        DQ          : inout std_logic_vector(15 downto 0);
        DQS         : inout std_logic_vector(1 downto 0);
        DQS_N       : inout std_logic_vector(1 downto 0);
        GPIO_0      : inout std_logic;
        GPIO_1      : inout std_logic;
        GPIO_10     : inout std_logic;
        GPIO_11     : inout std_logic;
        GPIO_12     : inout std_logic;
        GPIO_13     : inout std_logic;
        GPIO_14     : inout std_logic;
        GPIO_15     : inout std_logic;
        GPIO_16     : inout std_logic;
        GPIO_17     : inout std_logic;
        GPIO_18     : inout std_logic;
        GPIO_19     : inout std_logic;
        GPIO_2      : inout std_logic;
        GPIO_20     : inout std_logic;
        GPIO_21     : inout std_logic;
        GPIO_22     : inout std_logic;
        GPIO_23     : inout std_logic;
        GPIO_24     : inout std_logic;
        GPIO_25     : inout std_logic;
        GPIO_26     : inout std_logic;
        GPIO_27     : inout std_logic;
        GPIO_28     : inout std_logic;
        GPIO_29     : inout std_logic;
        GPIO_3      : inout std_logic;
        GPIO_30     : inout std_logic;
        GPIO_31     : inout std_logic;
        GPIO_4      : inout std_logic;
        GPIO_5      : inout std_logic;
        GPIO_6      : inout std_logic;
        GPIO_7      : inout std_logic;
        GPIO_8      : inout std_logic;
        GPIO_9      : inout std_logic;
        SCL_INOUT   : inout std_logic;
        SDA_INOUT   : inout std_logic
        );
end top;
----------------------------------------------------------------------
-- top architecture body
----------------------------------------------------------------------
architecture RTL of top is
----------------------------------------------------------------------
-- Component declarations
----------------------------------------------------------------------
-- APB3
component APB3
    -- Port list
    port(
        -- Inputs
        PADDR      : in  std_logic_vector(31 downto 0);
        PENABLE    : in  std_logic;
        PRDATAS0   : in  std_logic_vector(31 downto 0);
        PRDATAS1   : in  std_logic_vector(31 downto 0);
        PRDATAS10  : in  std_logic_vector(31 downto 0);
        PRDATAS11  : in  std_logic_vector(31 downto 0);
        PRDATAS12  : in  std_logic_vector(31 downto 0);
        PRDATAS13  : in  std_logic_vector(31 downto 0);
        PRDATAS2   : in  std_logic_vector(31 downto 0);
        PRDATAS3   : in  std_logic_vector(31 downto 0);
        PRDATAS4   : in  std_logic_vector(31 downto 0);
        PRDATAS5   : in  std_logic_vector(31 downto 0);
        PRDATAS6   : in  std_logic_vector(31 downto 0);
        PRDATAS7   : in  std_logic_vector(31 downto 0);
        PRDATAS8   : in  std_logic_vector(31 downto 0);
        PRDATAS9   : in  std_logic_vector(31 downto 0);
        PREADYS0   : in  std_logic;
        PREADYS1   : in  std_logic;
        PREADYS10  : in  std_logic;
        PREADYS11  : in  std_logic;
        PREADYS12  : in  std_logic;
        PREADYS13  : in  std_logic;
        PREADYS2   : in  std_logic;
        PREADYS3   : in  std_logic;
        PREADYS4   : in  std_logic;
        PREADYS5   : in  std_logic;
        PREADYS6   : in  std_logic;
        PREADYS7   : in  std_logic;
        PREADYS8   : in  std_logic;
        PREADYS9   : in  std_logic;
        PSEL       : in  std_logic;
        PSLVERRS0  : in  std_logic;
        PSLVERRS1  : in  std_logic;
        PSLVERRS10 : in  std_logic;
        PSLVERRS11 : in  std_logic;
        PSLVERRS12 : in  std_logic;
        PSLVERRS13 : in  std_logic;
        PSLVERRS2  : in  std_logic;
        PSLVERRS3  : in  std_logic;
        PSLVERRS4  : in  std_logic;
        PSLVERRS5  : in  std_logic;
        PSLVERRS6  : in  std_logic;
        PSLVERRS7  : in  std_logic;
        PSLVERRS8  : in  std_logic;
        PSLVERRS9  : in  std_logic;
        PWDATA     : in  std_logic_vector(31 downto 0);
        PWRITE     : in  std_logic;
        -- Outputs
        PADDRS     : out std_logic_vector(31 downto 0);
        PENABLES   : out std_logic;
        PRDATA     : out std_logic_vector(31 downto 0);
        PREADY     : out std_logic;
        PSELS0     : out std_logic;
        PSELS1     : out std_logic;
        PSELS10    : out std_logic;
        PSELS11    : out std_logic;
        PSELS12    : out std_logic;
        PSELS13    : out std_logic;
        PSELS2     : out std_logic;
        PSELS3     : out std_logic;
        PSELS4     : out std_logic;
        PSELS5     : out std_logic;
        PSELS6     : out std_logic;
        PSELS7     : out std_logic;
        PSELS8     : out std_logic;
        PSELS9     : out std_logic;
        PSLVERR    : out std_logic;
        PWDATAS    : out std_logic_vector(31 downto 0);
        PWRITES    : out std_logic
        );
end component;
-- AXI4_Interconnect
component AXI4_Interconnect
    -- Port list
    port(
        -- Inputs
        ACLK             : in  std_logic;
        ARESETN          : in  std_logic;
        MASTER0_ARADDR   : in  std_logic_vector(31 downto 0);
        MASTER0_ARBURST  : in  std_logic_vector(1 downto 0);
        MASTER0_ARCACHE  : in  std_logic_vector(3 downto 0);
        MASTER0_ARID     : in  std_logic_vector(3 downto 0);
        MASTER0_ARLEN    : in  std_logic_vector(7 downto 0);
        MASTER0_ARLOCK   : in  std_logic_vector(1 downto 0);
        MASTER0_ARPROT   : in  std_logic_vector(2 downto 0);
        MASTER0_ARQOS    : in  std_logic_vector(3 downto 0);
        MASTER0_ARREGION : in  std_logic_vector(3 downto 0);
        MASTER0_ARSIZE   : in  std_logic_vector(2 downto 0);
        MASTER0_ARUSER   : in  std_logic_vector(0 to 0);
        MASTER0_ARVALID  : in  std_logic;
        MASTER0_AWADDR   : in  std_logic_vector(31 downto 0);
        MASTER0_AWBURST  : in  std_logic_vector(1 downto 0);
        MASTER0_AWCACHE  : in  std_logic_vector(3 downto 0);
        MASTER0_AWID     : in  std_logic_vector(3 downto 0);
        MASTER0_AWLEN    : in  std_logic_vector(7 downto 0);
        MASTER0_AWLOCK   : in  std_logic_vector(1 downto 0);
        MASTER0_AWPROT   : in  std_logic_vector(2 downto 0);
        MASTER0_AWQOS    : in  std_logic_vector(3 downto 0);
        MASTER0_AWREGION : in  std_logic_vector(3 downto 0);
        MASTER0_AWSIZE   : in  std_logic_vector(2 downto 0);
        MASTER0_AWUSER   : in  std_logic_vector(0 to 0);
        MASTER0_AWVALID  : in  std_logic;
        MASTER0_BREADY   : in  std_logic;
        MASTER0_RREADY   : in  std_logic;
        MASTER0_WDATA    : in  std_logic_vector(63 downto 0);
        MASTER0_WLAST    : in  std_logic;
        MASTER0_WSTRB    : in  std_logic_vector(7 downto 0);
        MASTER0_WUSER    : in  std_logic_vector(0 to 0);
        MASTER0_WVALID   : in  std_logic;
        MASTER1_ARADDR   : in  std_logic_vector(31 downto 0);
        MASTER1_ARBURST  : in  std_logic_vector(1 downto 0);
        MASTER1_ARCACHE  : in  std_logic_vector(3 downto 0);
        MASTER1_ARID     : in  std_logic_vector(3 downto 0);
        MASTER1_ARLEN    : in  std_logic_vector(7 downto 0);
        MASTER1_ARLOCK   : in  std_logic_vector(1 downto 0);
        MASTER1_ARPROT   : in  std_logic_vector(2 downto 0);
        MASTER1_ARQOS    : in  std_logic_vector(3 downto 0);
        MASTER1_ARREGION : in  std_logic_vector(3 downto 0);
        MASTER1_ARSIZE   : in  std_logic_vector(2 downto 0);
        MASTER1_ARUSER   : in  std_logic_vector(0 to 0);
        MASTER1_ARVALID  : in  std_logic;
        MASTER1_AWADDR   : in  std_logic_vector(31 downto 0);
        MASTER1_AWBURST  : in  std_logic_vector(1 downto 0);
        MASTER1_AWCACHE  : in  std_logic_vector(3 downto 0);
        MASTER1_AWID     : in  std_logic_vector(3 downto 0);
        MASTER1_AWLEN    : in  std_logic_vector(7 downto 0);
        MASTER1_AWLOCK   : in  std_logic_vector(1 downto 0);
        MASTER1_AWPROT   : in  std_logic_vector(2 downto 0);
        MASTER1_AWQOS    : in  std_logic_vector(3 downto 0);
        MASTER1_AWREGION : in  std_logic_vector(3 downto 0);
        MASTER1_AWSIZE   : in  std_logic_vector(2 downto 0);
        MASTER1_AWUSER   : in  std_logic_vector(0 to 0);
        MASTER1_AWVALID  : in  std_logic;
        MASTER1_BREADY   : in  std_logic;
        MASTER1_RREADY   : in  std_logic;
        MASTER1_WDATA    : in  std_logic_vector(63 downto 0);
        MASTER1_WLAST    : in  std_logic;
        MASTER1_WSTRB    : in  std_logic_vector(7 downto 0);
        MASTER1_WUSER    : in  std_logic_vector(0 to 0);
        MASTER1_WVALID   : in  std_logic;
        SLAVE0_ARREADY   : in  std_logic;
        SLAVE0_AWREADY   : in  std_logic;
        SLAVE0_BID       : in  std_logic_vector(4 downto 0);
        SLAVE0_BRESP     : in  std_logic_vector(1 downto 0);
        SLAVE0_BUSER     : in  std_logic_vector(0 to 0);
        SLAVE0_BVALID    : in  std_logic;
        SLAVE0_RDATA     : in  std_logic_vector(63 downto 0);
        SLAVE0_RID       : in  std_logic_vector(4 downto 0);
        SLAVE0_RLAST     : in  std_logic;
        SLAVE0_RRESP     : in  std_logic_vector(1 downto 0);
        SLAVE0_RUSER     : in  std_logic_vector(0 to 0);
        SLAVE0_RVALID    : in  std_logic;
        SLAVE0_WREADY    : in  std_logic;
        SLAVE1_ARREADY   : in  std_logic;
        SLAVE1_AWREADY   : in  std_logic;
        SLAVE1_BID       : in  std_logic_vector(4 downto 0);
        SLAVE1_BRESP     : in  std_logic_vector(1 downto 0);
        SLAVE1_BUSER     : in  std_logic_vector(0 to 0);
        SLAVE1_BVALID    : in  std_logic;
        SLAVE1_RDATA     : in  std_logic_vector(63 downto 0);
        SLAVE1_RID       : in  std_logic_vector(4 downto 0);
        SLAVE1_RLAST     : in  std_logic;
        SLAVE1_RRESP     : in  std_logic_vector(1 downto 0);
        SLAVE1_RUSER     : in  std_logic_vector(0 to 0);
        SLAVE1_RVALID    : in  std_logic;
        SLAVE1_WREADY    : in  std_logic;
        SLAVE2_ARREADY   : in  std_logic;
        SLAVE2_AWREADY   : in  std_logic;
        SLAVE2_BID       : in  std_logic_vector(4 downto 0);
        SLAVE2_BRESP     : in  std_logic_vector(1 downto 0);
        SLAVE2_BUSER     : in  std_logic_vector(0 to 0);
        SLAVE2_BVALID    : in  std_logic;
        SLAVE2_RDATA     : in  std_logic_vector(63 downto 0);
        SLAVE2_RID       : in  std_logic_vector(4 downto 0);
        SLAVE2_RLAST     : in  std_logic;
        SLAVE2_RRESP     : in  std_logic_vector(1 downto 0);
        SLAVE2_RUSER     : in  std_logic_vector(0 to 0);
        SLAVE2_RVALID    : in  std_logic;
        SLAVE2_WREADY    : in  std_logic;
        S_CLK1           : in  std_logic;
        -- Outputs
        MASTER0_ARREADY  : out std_logic;
        MASTER0_AWREADY  : out std_logic;
        MASTER0_BID      : out std_logic_vector(3 downto 0);
        MASTER0_BRESP    : out std_logic_vector(1 downto 0);
        MASTER0_BUSER    : out std_logic_vector(0 to 0);
        MASTER0_BVALID   : out std_logic;
        MASTER0_RDATA    : out std_logic_vector(63 downto 0);
        MASTER0_RID      : out std_logic_vector(3 downto 0);
        MASTER0_RLAST    : out std_logic;
        MASTER0_RRESP    : out std_logic_vector(1 downto 0);
        MASTER0_RUSER    : out std_logic_vector(0 to 0);
        MASTER0_RVALID   : out std_logic;
        MASTER0_WREADY   : out std_logic;
        MASTER1_ARREADY  : out std_logic;
        MASTER1_AWREADY  : out std_logic;
        MASTER1_BID      : out std_logic_vector(3 downto 0);
        MASTER1_BRESP    : out std_logic_vector(1 downto 0);
        MASTER1_BUSER    : out std_logic_vector(0 to 0);
        MASTER1_BVALID   : out std_logic;
        MASTER1_RDATA    : out std_logic_vector(63 downto 0);
        MASTER1_RID      : out std_logic_vector(3 downto 0);
        MASTER1_RLAST    : out std_logic;
        MASTER1_RRESP    : out std_logic_vector(1 downto 0);
        MASTER1_RUSER    : out std_logic_vector(0 to 0);
        MASTER1_RVALID   : out std_logic;
        MASTER1_WREADY   : out std_logic;
        SLAVE0_ARADDR    : out std_logic_vector(31 downto 0);
        SLAVE0_ARBURST   : out std_logic_vector(1 downto 0);
        SLAVE0_ARCACHE   : out std_logic_vector(3 downto 0);
        SLAVE0_ARID      : out std_logic_vector(4 downto 0);
        SLAVE0_ARLEN     : out std_logic_vector(7 downto 0);
        SLAVE0_ARLOCK    : out std_logic_vector(1 downto 0);
        SLAVE0_ARPROT    : out std_logic_vector(2 downto 0);
        SLAVE0_ARQOS     : out std_logic_vector(3 downto 0);
        SLAVE0_ARREGION  : out std_logic_vector(3 downto 0);
        SLAVE0_ARSIZE    : out std_logic_vector(2 downto 0);
        SLAVE0_ARUSER    : out std_logic_vector(0 to 0);
        SLAVE0_ARVALID   : out std_logic;
        SLAVE0_AWADDR    : out std_logic_vector(31 downto 0);
        SLAVE0_AWBURST   : out std_logic_vector(1 downto 0);
        SLAVE0_AWCACHE   : out std_logic_vector(3 downto 0);
        SLAVE0_AWID      : out std_logic_vector(4 downto 0);
        SLAVE0_AWLEN     : out std_logic_vector(7 downto 0);
        SLAVE0_AWLOCK    : out std_logic_vector(1 downto 0);
        SLAVE0_AWPROT    : out std_logic_vector(2 downto 0);
        SLAVE0_AWQOS     : out std_logic_vector(3 downto 0);
        SLAVE0_AWREGION  : out std_logic_vector(3 downto 0);
        SLAVE0_AWSIZE    : out std_logic_vector(2 downto 0);
        SLAVE0_AWUSER    : out std_logic_vector(0 to 0);
        SLAVE0_AWVALID   : out std_logic;
        SLAVE0_BREADY    : out std_logic;
        SLAVE0_RREADY    : out std_logic;
        SLAVE0_WDATA     : out std_logic_vector(63 downto 0);
        SLAVE0_WLAST     : out std_logic;
        SLAVE0_WSTRB     : out std_logic_vector(7 downto 0);
        SLAVE0_WUSER     : out std_logic_vector(0 to 0);
        SLAVE0_WVALID    : out std_logic;
        SLAVE1_ARADDR    : out std_logic_vector(31 downto 0);
        SLAVE1_ARBURST   : out std_logic_vector(1 downto 0);
        SLAVE1_ARCACHE   : out std_logic_vector(3 downto 0);
        SLAVE1_ARID      : out std_logic_vector(4 downto 0);
        SLAVE1_ARLEN     : out std_logic_vector(7 downto 0);
        SLAVE1_ARLOCK    : out std_logic_vector(1 downto 0);
        SLAVE1_ARPROT    : out std_logic_vector(2 downto 0);
        SLAVE1_ARQOS     : out std_logic_vector(3 downto 0);
        SLAVE1_ARREGION  : out std_logic_vector(3 downto 0);
        SLAVE1_ARSIZE    : out std_logic_vector(2 downto 0);
        SLAVE1_ARUSER    : out std_logic_vector(0 to 0);
        SLAVE1_ARVALID   : out std_logic;
        SLAVE1_AWADDR    : out std_logic_vector(31 downto 0);
        SLAVE1_AWBURST   : out std_logic_vector(1 downto 0);
        SLAVE1_AWCACHE   : out std_logic_vector(3 downto 0);
        SLAVE1_AWID      : out std_logic_vector(4 downto 0);
        SLAVE1_AWLEN     : out std_logic_vector(7 downto 0);
        SLAVE1_AWLOCK    : out std_logic_vector(1 downto 0);
        SLAVE1_AWPROT    : out std_logic_vector(2 downto 0);
        SLAVE1_AWQOS     : out std_logic_vector(3 downto 0);
        SLAVE1_AWREGION  : out std_logic_vector(3 downto 0);
        SLAVE1_AWSIZE    : out std_logic_vector(2 downto 0);
        SLAVE1_AWUSER    : out std_logic_vector(0 to 0);
        SLAVE1_AWVALID   : out std_logic;
        SLAVE1_BREADY    : out std_logic;
        SLAVE1_RREADY    : out std_logic;
        SLAVE1_WDATA     : out std_logic_vector(63 downto 0);
        SLAVE1_WLAST     : out std_logic;
        SLAVE1_WSTRB     : out std_logic_vector(7 downto 0);
        SLAVE1_WUSER     : out std_logic_vector(0 to 0);
        SLAVE1_WVALID    : out std_logic;
        SLAVE2_ARADDR    : out std_logic_vector(31 downto 0);
        SLAVE2_ARBURST   : out std_logic_vector(1 downto 0);
        SLAVE2_ARCACHE   : out std_logic_vector(3 downto 0);
        SLAVE2_ARID      : out std_logic_vector(4 downto 0);
        SLAVE2_ARLEN     : out std_logic_vector(7 downto 0);
        SLAVE2_ARLOCK    : out std_logic_vector(1 downto 0);
        SLAVE2_ARPROT    : out std_logic_vector(2 downto 0);
        SLAVE2_ARSIZE    : out std_logic_vector(2 downto 0);
        SLAVE2_ARUSER    : out std_logic_vector(0 to 0);
        SLAVE2_ARVALID   : out std_logic;
        SLAVE2_AWADDR    : out std_logic_vector(31 downto 0);
        SLAVE2_AWBURST   : out std_logic_vector(1 downto 0);
        SLAVE2_AWCACHE   : out std_logic_vector(3 downto 0);
        SLAVE2_AWID      : out std_logic_vector(4 downto 0);
        SLAVE2_AWLEN     : out std_logic_vector(7 downto 0);
        SLAVE2_AWLOCK    : out std_logic_vector(1 downto 0);
        SLAVE2_AWPROT    : out std_logic_vector(2 downto 0);
        SLAVE2_AWSIZE    : out std_logic_vector(2 downto 0);
        SLAVE2_AWUSER    : out std_logic_vector(0 to 0);
        SLAVE2_AWVALID   : out std_logic;
        SLAVE2_BREADY    : out std_logic;
        SLAVE2_RREADY    : out std_logic;
        SLAVE2_WDATA     : out std_logic_vector(63 downto 0);
        SLAVE2_WID       : out std_logic_vector(4 downto 0);
        SLAVE2_WLAST     : out std_logic;
        SLAVE2_WSTRB     : out std_logic_vector(7 downto 0);
        SLAVE2_WUSER     : out std_logic_vector(0 to 0);
        SLAVE2_WVALID    : out std_logic
        );
end component;
-- CCC_0
component CCC_0
    -- Port list
    port(
        -- Inputs
        REF_CLK_0     : in  std_logic;
        -- Outputs
        OUT0_FABCLK_0 : out std_logic;
        PLL_LOCK_0    : out std_logic
        );
end component;
-- CORAXITOAHBL_0
component CORAXITOAHBL_0
    -- Port list
    port(
        -- Inputs
        ACLK     : in  std_logic;
        ARADDR   : in  std_logic_vector(31 downto 0);
        ARBURST  : in  std_logic_vector(1 downto 0);
        ARESETN  : in  std_logic;
        ARID     : in  std_logic_vector(3 downto 0);
        ARLEN    : in  std_logic_vector(3 downto 0);
        ARSIZE   : in  std_logic_vector(2 downto 0);
        ARVALID  : in  std_logic;
        AWADDR   : in  std_logic_vector(31 downto 0);
        AWBURST  : in  std_logic_vector(1 downto 0);
        AWID     : in  std_logic_vector(3 downto 0);
        AWLEN    : in  std_logic_vector(3 downto 0);
        AWSIZE   : in  std_logic_vector(2 downto 0);
        AWVALID  : in  std_logic;
        BREADY   : in  std_logic;
        HCLK     : in  std_logic;
        HRDATA   : in  std_logic_vector(31 downto 0);
        HREADYIN : in  std_logic;
        HRESETN  : in  std_logic;
        HRESP    : in  std_logic;
        RREADY   : in  std_logic;
        WDATA    : in  std_logic_vector(63 downto 0);
        WID_BIF  : in  std_logic_vector(3 downto 0);
        WLAST    : in  std_logic;
        WSTRB    : in  std_logic_vector(7 downto 0);
        WVALID   : in  std_logic;
        -- Outputs
        ARREADY  : out std_logic;
        AWREADY  : out std_logic;
        BID      : out std_logic_vector(3 downto 0);
        BRESP    : out std_logic_vector(1 downto 0);
        BVALID   : out std_logic;
        HADDR    : out std_logic_vector(31 downto 0);
        HBURST   : out std_logic_vector(2 downto 0);
        HSIZE    : out std_logic_vector(2 downto 0);
        HTRANS   : out std_logic_vector(1 downto 0);
        HWDATA   : out std_logic_vector(31 downto 0);
        HWRITE   : out std_logic;
        RDATA    : out std_logic_vector(63 downto 0);
        RID      : out std_logic_vector(3 downto 0);
        RLAST    : out std_logic;
        RRESP    : out std_logic_vector(1 downto 0);
        RVALID   : out std_logic;
        WREADY   : out std_logic
        );
end component;
-- COREAHBLITE_0
component COREAHBLITE_0
    -- Port list
    port(
        -- Inputs
        HADDR_M0     : in  std_logic_vector(31 downto 0);
        HBURST_M0    : in  std_logic_vector(2 downto 0);
        HCLK         : in  std_logic;
        HMASTLOCK_M0 : in  std_logic;
        HPROT_M0     : in  std_logic_vector(3 downto 0);
        HRDATA_S6    : in  std_logic_vector(31 downto 0);
        HREADYOUT_S6 : in  std_logic;
        HRESETN      : in  std_logic;
        HRESP_S6     : in  std_logic_vector(1 downto 0);
        HSIZE_M0     : in  std_logic_vector(2 downto 0);
        HTRANS_M0    : in  std_logic_vector(1 downto 0);
        HWDATA_M0    : in  std_logic_vector(31 downto 0);
        HWRITE_M0    : in  std_logic;
        REMAP_M0     : in  std_logic;
        -- Outputs
        HADDR_S6     : out std_logic_vector(31 downto 0);
        HBURST_S6    : out std_logic_vector(2 downto 0);
        HMASTLOCK_S6 : out std_logic;
        HPROT_S6     : out std_logic_vector(3 downto 0);
        HRDATA_M0    : out std_logic_vector(31 downto 0);
        HREADY_M0    : out std_logic;
        HREADY_S6    : out std_logic;
        HRESP_M0     : out std_logic_vector(1 downto 0);
        HSEL_S6      : out std_logic;
        HSIZE_S6     : out std_logic_vector(2 downto 0);
        HTRANS_S6    : out std_logic_vector(1 downto 0);
        HWDATA_S6    : out std_logic_vector(31 downto 0);
        HWRITE_S6    : out std_logic
        );
end component;
-- COREAHBTOAPB3_0
component COREAHBTOAPB3_0
    -- Port list
    port(
        -- Inputs
        HADDR     : in  std_logic_vector(31 downto 0);
        HCLK      : in  std_logic;
        HREADY    : in  std_logic;
        HRESETN   : in  std_logic;
        HSEL      : in  std_logic;
        HTRANS    : in  std_logic_vector(1 downto 0);
        HWDATA    : in  std_logic_vector(31 downto 0);
        HWRITE    : in  std_logic;
        PRDATA    : in  std_logic_vector(31 downto 0);
        PREADY    : in  std_logic;
        PSLVERR   : in  std_logic;
        -- Outputs
        HRDATA    : out std_logic_vector(31 downto 0);
        HREADYOUT : out std_logic;
        HRESP     : out std_logic_vector(1 downto 0);
        PADDR     : out std_logic_vector(31 downto 0);
        PENABLE   : out std_logic;
        PSEL      : out std_logic;
        PWDATA    : out std_logic_vector(31 downto 0);
        PWRITE    : out std_logic
        );
end component;
-- COREI2C_C0
component COREI2C_C0
    -- Port list
    port(
        -- Inputs
        PADDR   : in  std_logic_vector(8 downto 0);
        PCLK    : in  std_logic;
        PENABLE : in  std_logic;
        PRESETN : in  std_logic;
        PSEL    : in  std_logic;
        PWDATA  : in  std_logic_vector(7 downto 0);
        PWRITE  : in  std_logic;
        SCLI    : in  std_logic_vector(0 to 0);
        SDAI    : in  std_logic_vector(0 to 0);
        -- Outputs
        INT     : out std_logic_vector(0 to 0);
        PRDATA  : out std_logic_vector(7 downto 0);
        SCLO    : out std_logic_vector(0 to 0);
        SDAO    : out std_logic_vector(0 to 0)
        );
end component;
-- COREJTAGDebug_0
component COREJTAGDebug_0
    -- Port list
    port(
        -- Inputs
        TCK         : in  std_logic;
        TDI         : in  std_logic;
        TGT_TDO_0   : in  std_logic;
        TMS         : in  std_logic;
        TRSTB       : in  std_logic;
        -- Outputs
        TDO         : out std_logic;
        TGT_TCK_0   : out std_logic;
        TGT_TDI_0   : out std_logic;
        TGT_TMS_0   : out std_logic;
        TGT_TRSTB_0 : out std_logic
        );
end component;
-- DDR3_0
component DDR3_0
    -- Port list
    port(
        -- Inputs
        PLL_REF_CLK  : in    std_logic;
        SYS_RESET_N  : in    std_logic;
        axi0_araddr  : in    std_logic_vector(31 downto 0);
        axi0_arburst : in    std_logic_vector(1 downto 0);
        axi0_arcache : in    std_logic_vector(3 downto 0);
        axi0_arid    : in    std_logic_vector(3 downto 0);
        axi0_arlen   : in    std_logic_vector(7 downto 0);
        axi0_arlock  : in    std_logic_vector(1 downto 0);
        axi0_arprot  : in    std_logic_vector(2 downto 0);
        axi0_arsize  : in    std_logic_vector(2 downto 0);
        axi0_arvalid : in    std_logic;
        axi0_awaddr  : in    std_logic_vector(31 downto 0);
        axi0_awburst : in    std_logic_vector(1 downto 0);
        axi0_awcache : in    std_logic_vector(3 downto 0);
        axi0_awid    : in    std_logic_vector(3 downto 0);
        axi0_awlen   : in    std_logic_vector(7 downto 0);
        axi0_awlock  : in    std_logic_vector(1 downto 0);
        axi0_awprot  : in    std_logic_vector(2 downto 0);
        axi0_awsize  : in    std_logic_vector(2 downto 0);
        axi0_awvalid : in    std_logic;
        axi0_bready  : in    std_logic;
        axi0_rready  : in    std_logic;
        axi0_wdata   : in    std_logic_vector(63 downto 0);
        axi0_wlast   : in    std_logic;
        axi0_wstrb   : in    std_logic_vector(7 downto 0);
        axi0_wvalid  : in    std_logic;
        -- Outputs
        A            : out   std_logic_vector(15 downto 0);
        BA           : out   std_logic_vector(2 downto 0);
        CAS_N        : out   std_logic;
        CK0          : out   std_logic;
        CK0_N        : out   std_logic;
        CKE          : out   std_logic;
        CS_N         : out   std_logic;
        CTRLR_READY  : out   std_logic;
        DM           : out   std_logic_vector(1 downto 0);
        ODT          : out   std_logic;
        PLL_LOCK     : out   std_logic;
        RAS_N        : out   std_logic;
        RESET_N      : out   std_logic;
        SHIELD0      : out   std_logic;
        SHIELD1      : out   std_logic;
        SYS_CLK      : out   std_logic;
        WE_N         : out   std_logic;
        axi0_arready : out   std_logic;
        axi0_awready : out   std_logic;
        axi0_bid     : out   std_logic_vector(3 downto 0);
        axi0_bresp   : out   std_logic_vector(1 downto 0);
        axi0_bvalid  : out   std_logic;
        axi0_rdata   : out   std_logic_vector(63 downto 0);
        axi0_rid     : out   std_logic_vector(3 downto 0);
        axi0_rlast   : out   std_logic;
        axi0_rresp   : out   std_logic_vector(1 downto 0);
        axi0_rvalid  : out   std_logic;
        axi0_wready  : out   std_logic;
        -- Inouts
        DQ           : inout std_logic_vector(15 downto 0);
        DQS          : inout std_logic_vector(1 downto 0);
        DQS_N        : inout std_logic_vector(1 downto 0)
        );
end component;
-- GPIO_TOP
component GPIO_TOP
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
end component;
-- INIT_Monitor
component INIT_Monitor
    -- Port list
    port(
        -- Outputs
        AUTOCALIB_DONE             : out std_logic;
        BANK_1_CALIB_STATUS        : out std_logic;
        DEVICE_INIT_DONE           : out std_logic;
        FABRIC_POR_N               : out std_logic;
        PCIE_INIT_DONE             : out std_logic;
        SRAM_INIT_DONE             : out std_logic;
        SRAM_INIT_FROM_SNVM_DONE   : out std_logic;
        SRAM_INIT_FROM_SPI_DONE    : out std_logic;
        SRAM_INIT_FROM_UPROM_DONE  : out std_logic;
        USRAM_INIT_DONE            : out std_logic;
        USRAM_INIT_FROM_SNVM_DONE  : out std_logic;
        USRAM_INIT_FROM_SPI_DONE   : out std_logic;
        USRAM_INIT_FROM_UPROM_DONE : out std_logic;
        XCVR_INIT_DONE             : out std_logic
        );
end component;
-- LSRAM
component LSRAM
    -- Port list
    port(
        -- Inputs
        ACLK    : in  std_logic;
        ARADDR  : in  std_logic_vector(31 downto 0);
        ARBURST : in  std_logic_vector(1 downto 0);
        ARCACHE : in  std_logic_vector(3 downto 0);
        ARESETN : in  std_logic;
        ARID    : in  std_logic_vector(4 downto 0);
        ARLEN   : in  std_logic_vector(7 downto 0);
        ARLOCK  : in  std_logic_vector(1 downto 0);
        ARPROT  : in  std_logic_vector(2 downto 0);
        ARSIZE  : in  std_logic_vector(2 downto 0);
        ARVALID : in  std_logic;
        AWADDR  : in  std_logic_vector(31 downto 0);
        AWBURST : in  std_logic_vector(1 downto 0);
        AWCACHE : in  std_logic_vector(3 downto 0);
        AWID    : in  std_logic_vector(4 downto 0);
        AWLEN   : in  std_logic_vector(7 downto 0);
        AWLOCK  : in  std_logic_vector(1 downto 0);
        AWPROT  : in  std_logic_vector(2 downto 0);
        AWSIZE  : in  std_logic_vector(2 downto 0);
        AWVALID : in  std_logic;
        BREADY  : in  std_logic;
        RREADY  : in  std_logic;
        WDATA   : in  std_logic_vector(63 downto 0);
        WLAST   : in  std_logic;
        WSTRB   : in  std_logic_vector(7 downto 0);
        WVALID  : in  std_logic;
        -- Outputs
        ARREADY : out std_logic;
        AWREADY : out std_logic;
        BID     : out std_logic_vector(4 downto 0);
        BRESP   : out std_logic_vector(1 downto 0);
        BVALID  : out std_logic;
        RDATA   : out std_logic_vector(63 downto 0);
        RID     : out std_logic_vector(4 downto 0);
        RLAST   : out std_logic;
        RRESP   : out std_logic_vector(1 downto 0);
        RVALID  : out std_logic;
        WREADY  : out std_logic
        );
end component;
-- LVDS_UART_TOP
component LVDS_UART_TOP
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
end component;
-- MiV_AXI
component MiV_AXI
    -- Port list
    port(
        -- Inputs
        CLK                      : in  std_logic;
        IRQ                      : in  std_logic_vector(30 downto 0);
        MEM_AXI_0_AR_READY       : in  std_logic;
        MEM_AXI_0_AW_READY       : in  std_logic;
        MEM_AXI_0_B_BITS_ID      : in  std_logic_vector(3 downto 0);
        MEM_AXI_0_B_BITS_RESP    : in  std_logic_vector(1 downto 0);
        MEM_AXI_0_B_VALID        : in  std_logic;
        MEM_AXI_0_R_BITS_DATA    : in  std_logic_vector(63 downto 0);
        MEM_AXI_0_R_BITS_ID      : in  std_logic_vector(3 downto 0);
        MEM_AXI_0_R_BITS_LAST    : in  std_logic;
        MEM_AXI_0_R_BITS_RESP    : in  std_logic_vector(1 downto 0);
        MEM_AXI_0_R_VALID        : in  std_logic;
        MEM_AXI_0_W_READY        : in  std_logic;
        MMIO_AXI_0_AR_READY      : in  std_logic;
        MMIO_AXI_0_AW_READY      : in  std_logic;
        MMIO_AXI_0_B_BITS_ID     : in  std_logic_vector(3 downto 0);
        MMIO_AXI_0_B_BITS_RESP   : in  std_logic_vector(1 downto 0);
        MMIO_AXI_0_B_VALID       : in  std_logic;
        MMIO_AXI_0_R_BITS_DATA   : in  std_logic_vector(63 downto 0);
        MMIO_AXI_0_R_BITS_ID     : in  std_logic_vector(3 downto 0);
        MMIO_AXI_0_R_BITS_LAST   : in  std_logic;
        MMIO_AXI_0_R_BITS_RESP   : in  std_logic_vector(1 downto 0);
        MMIO_AXI_0_R_VALID       : in  std_logic;
        MMIO_AXI_0_W_READY       : in  std_logic;
        RESETN                   : in  std_logic;
        TCK                      : in  std_logic;
        TDI                      : in  std_logic;
        TMS                      : in  std_logic;
        TRST                     : in  std_logic;
        -- Outputs
        DRV_TDO                  : out std_logic;
        EXT_RESETN               : out std_logic;
        MEM_AXI_0_AR_BITS_ADDR   : out std_logic_vector(31 downto 0);
        MEM_AXI_0_AR_BITS_BURST  : out std_logic_vector(1 downto 0);
        MEM_AXI_0_AR_BITS_CACHE  : out std_logic_vector(3 downto 0);
        MEM_AXI_0_AR_BITS_ID     : out std_logic_vector(3 downto 0);
        MEM_AXI_0_AR_BITS_LEN    : out std_logic_vector(7 downto 0);
        MEM_AXI_0_AR_BITS_LOCK   : out std_logic;
        MEM_AXI_0_AR_BITS_PROT   : out std_logic_vector(2 downto 0);
        MEM_AXI_0_AR_BITS_QOS    : out std_logic_vector(3 downto 0);
        MEM_AXI_0_AR_BITS_SIZE   : out std_logic_vector(2 downto 0);
        MEM_AXI_0_AR_VALID       : out std_logic;
        MEM_AXI_0_AW_BITS_ADDR   : out std_logic_vector(31 downto 0);
        MEM_AXI_0_AW_BITS_BURST  : out std_logic_vector(1 downto 0);
        MEM_AXI_0_AW_BITS_CACHE  : out std_logic_vector(3 downto 0);
        MEM_AXI_0_AW_BITS_ID     : out std_logic_vector(3 downto 0);
        MEM_AXI_0_AW_BITS_LEN    : out std_logic_vector(7 downto 0);
        MEM_AXI_0_AW_BITS_LOCK   : out std_logic;
        MEM_AXI_0_AW_BITS_PROT   : out std_logic_vector(2 downto 0);
        MEM_AXI_0_AW_BITS_QOS    : out std_logic_vector(3 downto 0);
        MEM_AXI_0_AW_BITS_SIZE   : out std_logic_vector(2 downto 0);
        MEM_AXI_0_AW_VALID       : out std_logic;
        MEM_AXI_0_B_READY        : out std_logic;
        MEM_AXI_0_R_READY        : out std_logic;
        MEM_AXI_0_W_BITS_DATA    : out std_logic_vector(63 downto 0);
        MEM_AXI_0_W_BITS_LAST    : out std_logic;
        MEM_AXI_0_W_BITS_STRB    : out std_logic_vector(7 downto 0);
        MEM_AXI_0_W_VALID        : out std_logic;
        MEM_AXI_WID              : out std_logic_vector(3 downto 0);
        MMIO_AXI_0_AR_BITS_ADDR  : out std_logic_vector(30 downto 0);
        MMIO_AXI_0_AR_BITS_BURST : out std_logic_vector(1 downto 0);
        MMIO_AXI_0_AR_BITS_CACHE : out std_logic_vector(3 downto 0);
        MMIO_AXI_0_AR_BITS_ID    : out std_logic_vector(3 downto 0);
        MMIO_AXI_0_AR_BITS_LEN   : out std_logic_vector(7 downto 0);
        MMIO_AXI_0_AR_BITS_LOCK  : out std_logic;
        MMIO_AXI_0_AR_BITS_PROT  : out std_logic_vector(2 downto 0);
        MMIO_AXI_0_AR_BITS_QOS   : out std_logic_vector(3 downto 0);
        MMIO_AXI_0_AR_BITS_SIZE  : out std_logic_vector(2 downto 0);
        MMIO_AXI_0_AR_VALID      : out std_logic;
        MMIO_AXI_0_AW_BITS_ADDR  : out std_logic_vector(30 downto 0);
        MMIO_AXI_0_AW_BITS_BURST : out std_logic_vector(1 downto 0);
        MMIO_AXI_0_AW_BITS_CACHE : out std_logic_vector(3 downto 0);
        MMIO_AXI_0_AW_BITS_ID    : out std_logic_vector(3 downto 0);
        MMIO_AXI_0_AW_BITS_LEN   : out std_logic_vector(7 downto 0);
        MMIO_AXI_0_AW_BITS_LOCK  : out std_logic;
        MMIO_AXI_0_AW_BITS_PROT  : out std_logic_vector(2 downto 0);
        MMIO_AXI_0_AW_BITS_QOS   : out std_logic_vector(3 downto 0);
        MMIO_AXI_0_AW_BITS_SIZE  : out std_logic_vector(2 downto 0);
        MMIO_AXI_0_AW_VALID      : out std_logic;
        MMIO_AXI_0_B_READY       : out std_logic;
        MMIO_AXI_0_R_READY       : out std_logic;
        MMIO_AXI_0_W_BITS_DATA   : out std_logic_vector(63 downto 0);
        MMIO_AXI_0_W_BITS_LAST   : out std_logic;
        MMIO_AXI_0_W_BITS_STRB   : out std_logic_vector(7 downto 0);
        MMIO_AXI_0_W_VALID       : out std_logic;
        MMIO_AXI_WID             : out std_logic_vector(3 downto 0);
        TDO                      : out std_logic
        );
end component;
-- PF_IO_C0
component PF_IO_C0
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
-- PF_IO_I2C_SDA_0
component PF_IO_I2C_SDA_0
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
-- reset_syn_0
component reset_syn_0
    -- Port list
    port(
        -- Inputs
        CLK            : in  std_logic;
        EXT_RST_N      : in  std_logic;
        FF_US_RESTORE  : in  std_logic;
        INIT_DONE      : in  std_logic;
        PLL_LOCK       : in  std_logic;
        SS_BUSY        : in  std_logic;
        -- Outputs
        FABRIC_RESET_N : out std_logic
        );
end component;
-- reset_syn_1
component reset_syn_1
    -- Port list
    port(
        -- Inputs
        CLK            : in  std_logic;
        EXT_RST_N      : in  std_logic;
        FF_US_RESTORE  : in  std_logic;
        INIT_DONE      : in  std_logic;
        PLL_LOCK       : in  std_logic;
        SS_BUSY        : in  std_logic;
        -- Outputs
        FABRIC_RESET_N : out std_logic
        );
end component;
-- SPI_Controller
component SPI_Controller
    -- Port list
    port(
        -- Inputs
        PADDR      : in  std_logic_vector(6 downto 0);
        PCLK       : in  std_logic;
        PENABLE    : in  std_logic;
        PRESETN    : in  std_logic;
        PSEL       : in  std_logic;
        PWDATA     : in  std_logic_vector(31 downto 0);
        PWRITE     : in  std_logic;
        SPICLKI    : in  std_logic;
        SPISDI     : in  std_logic;
        SPISSI     : in  std_logic;
        -- Outputs
        PRDATA     : out std_logic_vector(31 downto 0);
        PREADY     : out std_logic;
        PSLVERR    : out std_logic;
        SPIINT     : out std_logic;
        SPIMODE    : out std_logic;
        SPIOEN     : out std_logic;
        SPIRXAVAIL : out std_logic;
        SPISCLKO   : out std_logic;
        SPISDO     : out std_logic;
        SPISS      : out std_logic_vector(7 downto 0);
        SPITXRFM   : out std_logic
        );
end component;
-- UART_apb
component UART_apb
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
signal A_net_0                                  : std_logic_vector(15 downto 0);
signal APB3_0_APBmslave0_PENABLE                : std_logic;
signal APB3_0_APBmslave0_PREADY                 : std_logic;
signal APB3_0_APBmslave0_PSELx                  : std_logic;
signal APB3_0_APBmslave0_PSLVERR                : std_logic;
signal APB3_0_APBmslave0_PWRITE                 : std_logic;
signal APB3_0_APBmslave1_PRDATA                 : std_logic_vector(31 downto 0);
signal APB3_0_APBmslave1_PREADY                 : std_logic;
signal APB3_0_APBmslave1_PSELx                  : std_logic;
signal APB3_0_APBmslave1_PSLVERR                : std_logic;
signal APB3_0_APBmslave2_PRDATA                 : std_logic_vector(31 downto 0);
signal APB3_0_APBmslave2_PREADY                 : std_logic;
signal APB3_0_APBmslave2_PSELx                  : std_logic;
signal APB3_0_APBmslave2_PSLVERR                : std_logic;
signal APB3_0_APBmslave3_PSELx                  : std_logic;
signal APB3_0_APBmslave4_PREADY                 : std_logic;
signal APB3_0_APBmslave4_PSELx                  : std_logic;
signal APB3_0_APBmslave4_PSLVERR                : std_logic;
signal APB3_0_APBmslave5_PREADY                 : std_logic;
signal APB3_0_APBmslave5_PSELx                  : std_logic;
signal APB3_0_APBmslave5_PSLVERR                : std_logic;
signal APB3_0_APBmslave6_PREADY                 : std_logic;
signal APB3_0_APBmslave6_PSELx                  : std_logic;
signal APB3_0_APBmslave6_PSLVERR                : std_logic;
signal APB3_0_APBmslave7_PREADY                 : std_logic;
signal APB3_0_APBmslave7_PSELx                  : std_logic;
signal APB3_0_APBmslave7_PSLVERR                : std_logic;
signal APB3_0_APBmslave8_PREADY                 : std_logic;
signal APB3_0_APBmslave8_PSELx                  : std_logic;
signal APB3_0_APBmslave8_PSLVERR                : std_logic;
signal APB3_0_APBmslave9_PREADY                 : std_logic;
signal APB3_0_APBmslave9_PSELx                  : std_logic;
signal APB3_0_APBmslave9_PSLVERR                : std_logic;
signal APB3_0_APBmslave10_PREADY                : std_logic;
signal APB3_0_APBmslave10_PSELx                 : std_logic;
signal APB3_0_APBmslave10_PSLVERR               : std_logic;
signal APB3_0_APBmslave11_PREADY                : std_logic;
signal APB3_0_APBmslave11_PSELx                 : std_logic;
signal APB3_0_APBmslave11_PSLVERR               : std_logic;
signal APB3_0_APBmslave12_PREADY                : std_logic;
signal APB3_0_APBmslave12_PSELx                 : std_logic;
signal APB3_0_APBmslave12_PSLVERR               : std_logic;
signal APB3_0_APBmslave13_PREADY                : std_logic;
signal APB3_0_APBmslave13_PSELx                 : std_logic;
signal APB3_0_APBmslave13_PSLVERR               : std_logic;
signal AXI4_Interconnect_0_AXI3mslave2_ARADDR   : std_logic_vector(31 downto 0);
signal AXI4_Interconnect_0_AXI3mslave2_ARBURST  : std_logic_vector(1 downto 0);
signal AXI4_Interconnect_0_AXI3mslave2_ARCACHE  : std_logic_vector(3 downto 0);
signal AXI4_Interconnect_0_AXI3mslave2_ARLOCK   : std_logic_vector(1 downto 0);
signal AXI4_Interconnect_0_AXI3mslave2_ARPROT   : std_logic_vector(2 downto 0);
signal AXI4_Interconnect_0_AXI3mslave2_ARREADY  : std_logic;
signal AXI4_Interconnect_0_AXI3mslave2_ARSIZE   : std_logic_vector(2 downto 0);
signal AXI4_Interconnect_0_AXI3mslave2_ARUSER   : std_logic_vector(0 to 0);
signal AXI4_Interconnect_0_AXI3mslave2_ARVALID  : std_logic;
signal AXI4_Interconnect_0_AXI3mslave2_AWADDR   : std_logic_vector(31 downto 0);
signal AXI4_Interconnect_0_AXI3mslave2_AWBURST  : std_logic_vector(1 downto 0);
signal AXI4_Interconnect_0_AXI3mslave2_AWCACHE  : std_logic_vector(3 downto 0);
signal AXI4_Interconnect_0_AXI3mslave2_AWLOCK   : std_logic_vector(1 downto 0);
signal AXI4_Interconnect_0_AXI3mslave2_AWPROT   : std_logic_vector(2 downto 0);
signal AXI4_Interconnect_0_AXI3mslave2_AWREADY  : std_logic;
signal AXI4_Interconnect_0_AXI3mslave2_AWSIZE   : std_logic_vector(2 downto 0);
signal AXI4_Interconnect_0_AXI3mslave2_AWUSER   : std_logic_vector(0 to 0);
signal AXI4_Interconnect_0_AXI3mslave2_AWVALID  : std_logic;
signal AXI4_Interconnect_0_AXI3mslave2_BREADY   : std_logic;
signal AXI4_Interconnect_0_AXI3mslave2_BRESP    : std_logic_vector(1 downto 0);
signal AXI4_Interconnect_0_AXI3mslave2_BVALID   : std_logic;
signal AXI4_Interconnect_0_AXI3mslave2_RDATA    : std_logic_vector(63 downto 0);
signal AXI4_Interconnect_0_AXI3mslave2_RLAST    : std_logic;
signal AXI4_Interconnect_0_AXI3mslave2_RREADY   : std_logic;
signal AXI4_Interconnect_0_AXI3mslave2_RRESP    : std_logic_vector(1 downto 0);
signal AXI4_Interconnect_0_AXI3mslave2_RVALID   : std_logic;
signal AXI4_Interconnect_0_AXI3mslave2_WDATA    : std_logic_vector(63 downto 0);
signal AXI4_Interconnect_0_AXI3mslave2_WLAST    : std_logic;
signal AXI4_Interconnect_0_AXI3mslave2_WREADY   : std_logic;
signal AXI4_Interconnect_0_AXI3mslave2_WSTRB    : std_logic_vector(7 downto 0);
signal AXI4_Interconnect_0_AXI3mslave2_WUSER    : std_logic_vector(0 to 0);
signal AXI4_Interconnect_0_AXI3mslave2_WVALID   : std_logic;
signal AXI4_Interconnect_0_AXI4mslave0_ARADDR   : std_logic_vector(31 downto 0);
signal AXI4_Interconnect_0_AXI4mslave0_ARBURST  : std_logic_vector(1 downto 0);
signal AXI4_Interconnect_0_AXI4mslave0_ARCACHE  : std_logic_vector(3 downto 0);
signal AXI4_Interconnect_0_AXI4mslave0_ARID     : std_logic_vector(4 downto 0);
signal AXI4_Interconnect_0_AXI4mslave0_ARLEN    : std_logic_vector(7 downto 0);
signal AXI4_Interconnect_0_AXI4mslave0_ARLOCK   : std_logic_vector(1 downto 0);
signal AXI4_Interconnect_0_AXI4mslave0_ARPROT   : std_logic_vector(2 downto 0);
signal AXI4_Interconnect_0_AXI4mslave0_ARQOS    : std_logic_vector(3 downto 0);
signal AXI4_Interconnect_0_AXI4mslave0_ARREADY  : std_logic;
signal AXI4_Interconnect_0_AXI4mslave0_ARREGION : std_logic_vector(3 downto 0);
signal AXI4_Interconnect_0_AXI4mslave0_ARSIZE   : std_logic_vector(2 downto 0);
signal AXI4_Interconnect_0_AXI4mslave0_ARUSER   : std_logic_vector(0 to 0);
signal AXI4_Interconnect_0_AXI4mslave0_ARVALID  : std_logic;
signal AXI4_Interconnect_0_AXI4mslave0_AWADDR   : std_logic_vector(31 downto 0);
signal AXI4_Interconnect_0_AXI4mslave0_AWBURST  : std_logic_vector(1 downto 0);
signal AXI4_Interconnect_0_AXI4mslave0_AWCACHE  : std_logic_vector(3 downto 0);
signal AXI4_Interconnect_0_AXI4mslave0_AWID     : std_logic_vector(4 downto 0);
signal AXI4_Interconnect_0_AXI4mslave0_AWLEN    : std_logic_vector(7 downto 0);
signal AXI4_Interconnect_0_AXI4mslave0_AWLOCK   : std_logic_vector(1 downto 0);
signal AXI4_Interconnect_0_AXI4mslave0_AWPROT   : std_logic_vector(2 downto 0);
signal AXI4_Interconnect_0_AXI4mslave0_AWQOS    : std_logic_vector(3 downto 0);
signal AXI4_Interconnect_0_AXI4mslave0_AWREADY  : std_logic;
signal AXI4_Interconnect_0_AXI4mslave0_AWREGION : std_logic_vector(3 downto 0);
signal AXI4_Interconnect_0_AXI4mslave0_AWSIZE   : std_logic_vector(2 downto 0);
signal AXI4_Interconnect_0_AXI4mslave0_AWUSER   : std_logic_vector(0 to 0);
signal AXI4_Interconnect_0_AXI4mslave0_AWVALID  : std_logic;
signal AXI4_Interconnect_0_AXI4mslave0_BID      : std_logic_vector(4 downto 0);
signal AXI4_Interconnect_0_AXI4mslave0_BREADY   : std_logic;
signal AXI4_Interconnect_0_AXI4mslave0_BRESP    : std_logic_vector(1 downto 0);
signal AXI4_Interconnect_0_AXI4mslave0_BVALID   : std_logic;
signal AXI4_Interconnect_0_AXI4mslave0_RDATA    : std_logic_vector(63 downto 0);
signal AXI4_Interconnect_0_AXI4mslave0_RID      : std_logic_vector(4 downto 0);
signal AXI4_Interconnect_0_AXI4mslave0_RLAST    : std_logic;
signal AXI4_Interconnect_0_AXI4mslave0_RREADY   : std_logic;
signal AXI4_Interconnect_0_AXI4mslave0_RRESP    : std_logic_vector(1 downto 0);
signal AXI4_Interconnect_0_AXI4mslave0_RVALID   : std_logic;
signal AXI4_Interconnect_0_AXI4mslave0_WDATA    : std_logic_vector(63 downto 0);
signal AXI4_Interconnect_0_AXI4mslave0_WLAST    : std_logic;
signal AXI4_Interconnect_0_AXI4mslave0_WREADY   : std_logic;
signal AXI4_Interconnect_0_AXI4mslave0_WSTRB    : std_logic_vector(7 downto 0);
signal AXI4_Interconnect_0_AXI4mslave0_WUSER    : std_logic_vector(0 to 0);
signal AXI4_Interconnect_0_AXI4mslave0_WVALID   : std_logic;
signal AXI4_Interconnect_0_AXI4mslave1_ARADDR   : std_logic_vector(31 downto 0);
signal AXI4_Interconnect_0_AXI4mslave1_ARBURST  : std_logic_vector(1 downto 0);
signal AXI4_Interconnect_0_AXI4mslave1_ARCACHE  : std_logic_vector(3 downto 0);
signal AXI4_Interconnect_0_AXI4mslave1_ARLEN    : std_logic_vector(7 downto 0);
signal AXI4_Interconnect_0_AXI4mslave1_ARLOCK   : std_logic_vector(1 downto 0);
signal AXI4_Interconnect_0_AXI4mslave1_ARPROT   : std_logic_vector(2 downto 0);
signal AXI4_Interconnect_0_AXI4mslave1_ARQOS    : std_logic_vector(3 downto 0);
signal AXI4_Interconnect_0_AXI4mslave1_ARREADY  : std_logic;
signal AXI4_Interconnect_0_AXI4mslave1_ARREGION : std_logic_vector(3 downto 0);
signal AXI4_Interconnect_0_AXI4mslave1_ARSIZE   : std_logic_vector(2 downto 0);
signal AXI4_Interconnect_0_AXI4mslave1_ARUSER   : std_logic_vector(0 to 0);
signal AXI4_Interconnect_0_AXI4mslave1_ARVALID  : std_logic;
signal AXI4_Interconnect_0_AXI4mslave1_AWADDR   : std_logic_vector(31 downto 0);
signal AXI4_Interconnect_0_AXI4mslave1_AWBURST  : std_logic_vector(1 downto 0);
signal AXI4_Interconnect_0_AXI4mslave1_AWCACHE  : std_logic_vector(3 downto 0);
signal AXI4_Interconnect_0_AXI4mslave1_AWLEN    : std_logic_vector(7 downto 0);
signal AXI4_Interconnect_0_AXI4mslave1_AWLOCK   : std_logic_vector(1 downto 0);
signal AXI4_Interconnect_0_AXI4mslave1_AWPROT   : std_logic_vector(2 downto 0);
signal AXI4_Interconnect_0_AXI4mslave1_AWQOS    : std_logic_vector(3 downto 0);
signal AXI4_Interconnect_0_AXI4mslave1_AWREADY  : std_logic;
signal AXI4_Interconnect_0_AXI4mslave1_AWREGION : std_logic_vector(3 downto 0);
signal AXI4_Interconnect_0_AXI4mslave1_AWSIZE   : std_logic_vector(2 downto 0);
signal AXI4_Interconnect_0_AXI4mslave1_AWUSER   : std_logic_vector(0 to 0);
signal AXI4_Interconnect_0_AXI4mslave1_AWVALID  : std_logic;
signal AXI4_Interconnect_0_AXI4mslave1_BREADY   : std_logic;
signal AXI4_Interconnect_0_AXI4mslave1_BRESP    : std_logic_vector(1 downto 0);
signal AXI4_Interconnect_0_AXI4mslave1_BVALID   : std_logic;
signal AXI4_Interconnect_0_AXI4mslave1_RDATA    : std_logic_vector(63 downto 0);
signal AXI4_Interconnect_0_AXI4mslave1_RLAST    : std_logic;
signal AXI4_Interconnect_0_AXI4mslave1_RREADY   : std_logic;
signal AXI4_Interconnect_0_AXI4mslave1_RRESP    : std_logic_vector(1 downto 0);
signal AXI4_Interconnect_0_AXI4mslave1_RVALID   : std_logic;
signal AXI4_Interconnect_0_AXI4mslave1_WDATA    : std_logic_vector(63 downto 0);
signal AXI4_Interconnect_0_AXI4mslave1_WLAST    : std_logic;
signal AXI4_Interconnect_0_AXI4mslave1_WREADY   : std_logic;
signal AXI4_Interconnect_0_AXI4mslave1_WSTRB    : std_logic_vector(7 downto 0);
signal AXI4_Interconnect_0_AXI4mslave1_WUSER    : std_logic_vector(0 to 0);
signal AXI4_Interconnect_0_AXI4mslave1_WVALID   : std_logic;
signal BA_net_0                                 : std_logic_vector(2 downto 0);
signal CAS_N_net_0                              : std_logic;
signal CCC_0_0_OUT0_FABCLK_0                    : std_logic;
signal CCC_0_0_PLL_LOCK_0                       : std_logic;
signal CK0_net_0                                : std_logic;
signal CK0_N_net_0                              : std_logic;
signal CKE_net_0                                : std_logic;
signal CORAXITOAHBL_0_0_AHBMasterIF_HADDR       : std_logic_vector(31 downto 0);
signal CORAXITOAHBL_0_0_AHBMasterIF_HBURST      : std_logic_vector(2 downto 0);
signal CORAXITOAHBL_0_0_AHBMasterIF_HRDATA      : std_logic_vector(31 downto 0);
signal CORAXITOAHBL_0_0_AHBMasterIF_HREADY      : std_logic;
signal CORAXITOAHBL_0_0_AHBMasterIF_HSIZE       : std_logic_vector(2 downto 0);
signal CORAXITOAHBL_0_0_AHBMasterIF_HTRANS      : std_logic_vector(1 downto 0);
signal CORAXITOAHBL_0_0_AHBMasterIF_HWDATA      : std_logic_vector(31 downto 0);
signal CORAXITOAHBL_0_0_AHBMasterIF_HWRITE      : std_logic;
signal COREAHBLITE_0_0_AHBmslave6_HADDR         : std_logic_vector(31 downto 0);
signal COREAHBLITE_0_0_AHBmslave6_HBURST        : std_logic_vector(2 downto 0);
signal COREAHBLITE_0_0_AHBmslave6_HMASTLOCK     : std_logic;
signal COREAHBLITE_0_0_AHBmslave6_HPROT         : std_logic_vector(3 downto 0);
signal COREAHBLITE_0_0_AHBmslave6_HRDATA        : std_logic_vector(31 downto 0);
signal COREAHBLITE_0_0_AHBmslave6_HREADY        : std_logic;
signal COREAHBLITE_0_0_AHBmslave6_HREADYOUT     : std_logic;
signal COREAHBLITE_0_0_AHBmslave6_HRESP         : std_logic_vector(1 downto 0);
signal COREAHBLITE_0_0_AHBmslave6_HSELx         : std_logic;
signal COREAHBLITE_0_0_AHBmslave6_HSIZE         : std_logic_vector(2 downto 0);
signal COREAHBLITE_0_0_AHBmslave6_HTRANS        : std_logic_vector(1 downto 0);
signal COREAHBLITE_0_0_AHBmslave6_HWDATA        : std_logic_vector(31 downto 0);
signal COREAHBLITE_0_0_AHBmslave6_HWRITE        : std_logic;
signal COREAHBTOAPB3_0_0_APBmaster_PADDR        : std_logic_vector(31 downto 0);
signal COREAHBTOAPB3_0_0_APBmaster_PENABLE      : std_logic;
signal COREAHBTOAPB3_0_0_APBmaster_PRDATA       : std_logic_vector(31 downto 0);
signal COREAHBTOAPB3_0_0_APBmaster_PREADY       : std_logic;
signal COREAHBTOAPB3_0_0_APBmaster_PSELx        : std_logic;
signal COREAHBTOAPB3_0_0_APBmaster_PSLVERR      : std_logic;
signal COREAHBTOAPB3_0_0_APBmaster_PWDATA       : std_logic_vector(31 downto 0);
signal COREAHBTOAPB3_0_0_APBmaster_PWRITE       : std_logic;
signal COREI2C_C0_0_INT                         : std_logic_vector(0 to 0);
signal COREI2C_C0_0_SCLO                        : std_logic_vector(0 to 0);
signal COREI2C_C0_0_SDAO                        : std_logic_vector(0 to 0);
signal COREJTAGDebug_0_0_TGT_TCK_0              : std_logic;
signal COREJTAGDebug_0_0_TGT_TDI_0              : std_logic;
signal COREJTAGDebug_0_0_TGT_TMS_0              : std_logic;
signal COREJTAGDebug_0_0_TGT_TRSTB_0            : std_logic;
signal CS_N_net_0                               : std_logic;
signal CTRLR_READY_net_0                        : std_logic;
signal DDR3_0_0_SYS_CLK                         : std_logic;
signal DM_net_0                                 : std_logic_vector(1 downto 0);
signal INIT_Monitor_0_BANK_1_CALIB_STATUS       : std_logic;
signal INIT_Monitor_0_DEVICE_INIT_DONE          : std_logic;
signal MiV_AXI_0_MEM_MST_AXI4_ARADDR            : std_logic_vector(31 downto 0);
signal MiV_AXI_0_MEM_MST_AXI4_ARBURST           : std_logic_vector(1 downto 0);
signal MiV_AXI_0_MEM_MST_AXI4_ARCACHE           : std_logic_vector(3 downto 0);
signal MiV_AXI_0_MEM_MST_AXI4_ARID              : std_logic_vector(3 downto 0);
signal MiV_AXI_0_MEM_MST_AXI4_ARLEN             : std_logic_vector(7 downto 0);
signal MiV_AXI_0_MEM_MST_AXI4_ARPROT            : std_logic_vector(2 downto 0);
signal MiV_AXI_0_MEM_MST_AXI4_ARQOS             : std_logic_vector(3 downto 0);
signal MiV_AXI_0_MEM_MST_AXI4_ARREADY           : std_logic;
signal MiV_AXI_0_MEM_MST_AXI4_ARSIZE            : std_logic_vector(2 downto 0);
signal MiV_AXI_0_MEM_MST_AXI4_ARVALID           : std_logic;
signal MiV_AXI_0_MEM_MST_AXI4_AWADDR            : std_logic_vector(31 downto 0);
signal MiV_AXI_0_MEM_MST_AXI4_AWBURST           : std_logic_vector(1 downto 0);
signal MiV_AXI_0_MEM_MST_AXI4_AWCACHE           : std_logic_vector(3 downto 0);
signal MiV_AXI_0_MEM_MST_AXI4_AWID              : std_logic_vector(3 downto 0);
signal MiV_AXI_0_MEM_MST_AXI4_AWLEN             : std_logic_vector(7 downto 0);
signal MiV_AXI_0_MEM_MST_AXI4_AWPROT            : std_logic_vector(2 downto 0);
signal MiV_AXI_0_MEM_MST_AXI4_AWQOS             : std_logic_vector(3 downto 0);
signal MiV_AXI_0_MEM_MST_AXI4_AWREADY           : std_logic;
signal MiV_AXI_0_MEM_MST_AXI4_AWSIZE            : std_logic_vector(2 downto 0);
signal MiV_AXI_0_MEM_MST_AXI4_AWVALID           : std_logic;
signal MiV_AXI_0_MEM_MST_AXI4_BID               : std_logic_vector(3 downto 0);
signal MiV_AXI_0_MEM_MST_AXI4_BREADY            : std_logic;
signal MiV_AXI_0_MEM_MST_AXI4_BRESP             : std_logic_vector(1 downto 0);
signal MiV_AXI_0_MEM_MST_AXI4_BUSER             : std_logic_vector(0 to 0);
signal MiV_AXI_0_MEM_MST_AXI4_BVALID            : std_logic;
signal MiV_AXI_0_MEM_MST_AXI4_RDATA             : std_logic_vector(63 downto 0);
signal MiV_AXI_0_MEM_MST_AXI4_RID               : std_logic_vector(3 downto 0);
signal MiV_AXI_0_MEM_MST_AXI4_RLAST             : std_logic;
signal MiV_AXI_0_MEM_MST_AXI4_RREADY            : std_logic;
signal MiV_AXI_0_MEM_MST_AXI4_RRESP             : std_logic_vector(1 downto 0);
signal MiV_AXI_0_MEM_MST_AXI4_RUSER             : std_logic_vector(0 to 0);
signal MiV_AXI_0_MEM_MST_AXI4_RVALID            : std_logic;
signal MiV_AXI_0_MEM_MST_AXI4_WDATA             : std_logic_vector(63 downto 0);
signal MiV_AXI_0_MEM_MST_AXI4_WLAST             : std_logic;
signal MiV_AXI_0_MEM_MST_AXI4_WREADY            : std_logic;
signal MiV_AXI_0_MEM_MST_AXI4_WSTRB             : std_logic_vector(7 downto 0);
signal MiV_AXI_0_MEM_MST_AXI4_WVALID            : std_logic;
signal MiV_AXI_0_MMIO_MST_AXI4_ARBURST          : std_logic_vector(1 downto 0);
signal MiV_AXI_0_MMIO_MST_AXI4_ARCACHE          : std_logic_vector(3 downto 0);
signal MiV_AXI_0_MMIO_MST_AXI4_ARID             : std_logic_vector(3 downto 0);
signal MiV_AXI_0_MMIO_MST_AXI4_ARLEN            : std_logic_vector(7 downto 0);
signal MiV_AXI_0_MMIO_MST_AXI4_ARPROT           : std_logic_vector(2 downto 0);
signal MiV_AXI_0_MMIO_MST_AXI4_ARQOS            : std_logic_vector(3 downto 0);
signal MiV_AXI_0_MMIO_MST_AXI4_ARREADY          : std_logic;
signal MiV_AXI_0_MMIO_MST_AXI4_ARSIZE           : std_logic_vector(2 downto 0);
signal MiV_AXI_0_MMIO_MST_AXI4_ARVALID          : std_logic;
signal MiV_AXI_0_MMIO_MST_AXI4_AWBURST          : std_logic_vector(1 downto 0);
signal MiV_AXI_0_MMIO_MST_AXI4_AWCACHE          : std_logic_vector(3 downto 0);
signal MiV_AXI_0_MMIO_MST_AXI4_AWID             : std_logic_vector(3 downto 0);
signal MiV_AXI_0_MMIO_MST_AXI4_AWLEN            : std_logic_vector(7 downto 0);
signal MiV_AXI_0_MMIO_MST_AXI4_AWPROT           : std_logic_vector(2 downto 0);
signal MiV_AXI_0_MMIO_MST_AXI4_AWQOS            : std_logic_vector(3 downto 0);
signal MiV_AXI_0_MMIO_MST_AXI4_AWREADY          : std_logic;
signal MiV_AXI_0_MMIO_MST_AXI4_AWSIZE           : std_logic_vector(2 downto 0);
signal MiV_AXI_0_MMIO_MST_AXI4_AWVALID          : std_logic;
signal MiV_AXI_0_MMIO_MST_AXI4_BID              : std_logic_vector(3 downto 0);
signal MiV_AXI_0_MMIO_MST_AXI4_BREADY           : std_logic;
signal MiV_AXI_0_MMIO_MST_AXI4_BRESP            : std_logic_vector(1 downto 0);
signal MiV_AXI_0_MMIO_MST_AXI4_BUSER            : std_logic_vector(0 to 0);
signal MiV_AXI_0_MMIO_MST_AXI4_BVALID           : std_logic;
signal MiV_AXI_0_MMIO_MST_AXI4_RDATA            : std_logic_vector(63 downto 0);
signal MiV_AXI_0_MMIO_MST_AXI4_RID              : std_logic_vector(3 downto 0);
signal MiV_AXI_0_MMIO_MST_AXI4_RLAST            : std_logic;
signal MiV_AXI_0_MMIO_MST_AXI4_RREADY           : std_logic;
signal MiV_AXI_0_MMIO_MST_AXI4_RRESP            : std_logic_vector(1 downto 0);
signal MiV_AXI_0_MMIO_MST_AXI4_RUSER            : std_logic_vector(0 to 0);
signal MiV_AXI_0_MMIO_MST_AXI4_RVALID           : std_logic;
signal MiV_AXI_0_MMIO_MST_AXI4_WDATA            : std_logic_vector(63 downto 0);
signal MiV_AXI_0_MMIO_MST_AXI4_WLAST            : std_logic;
signal MiV_AXI_0_MMIO_MST_AXI4_WREADY           : std_logic;
signal MiV_AXI_0_MMIO_MST_AXI4_WSTRB            : std_logic_vector(7 downto 0);
signal MiV_AXI_0_MMIO_MST_AXI4_WVALID           : std_logic;
signal MiV_AXI_0_TDO                            : std_logic;
signal net_6                                    : std_logic;
signal ODT_net_0                                : std_logic;
signal PF_IO_I2C_SCL_0_Y                        : std_logic;
signal PF_IO_I2C_SDA_0_Y                        : std_logic;
signal RAS_N_net_0                              : std_logic;
signal RESET_N_net_0                            : std_logic;
signal reset_syn_0_0_FABRIC_RESET_N             : std_logic;
signal reset_syn_1_0_FABRIC_RESET_N             : std_logic;
signal SHIELD0_net_0                            : std_logic;
signal SHIELD1_net_0                            : std_logic;
signal SPISCLKO_net_0                           : std_logic;
signal SPISDO_net_0                             : std_logic;
signal SPISS_0_net_0                            : std_logic_vector(0 to 0);
signal SPISS_1_net_0                            : std_logic_vector(1 to 1);
signal SPISS_2_net_0                            : std_logic_vector(2 to 2);
signal SPISS_3_net_0                            : std_logic_vector(3 to 3);
signal SPISS_4_net_0                            : std_logic_vector(4 to 4);
signal SPISS_5_net_0                            : std_logic_vector(5 to 5);
signal TDO_net_0                                : std_logic;
signal TXN_0_net_0                              : std_logic;
signal TXN_1_net_0                              : std_logic;
signal TXN_2_net_0                              : std_logic;
signal TXN_3_net_0                              : std_logic;
signal TXN_4_net_0                              : std_logic;
signal TXN_5_net_0                              : std_logic;
signal TXN_6_net_0                              : std_logic;
signal TXN_7_net_0                              : std_logic;
signal TXN_8_net_0                              : std_logic;
signal TXN_9_net_0                              : std_logic;
signal TXP_0_net_0                              : std_logic;
signal TXP_1_net_0                              : std_logic;
signal TXP_2_net_0                              : std_logic;
signal TXP_3_net_0                              : std_logic;
signal TXP_4_net_0                              : std_logic;
signal TXP_5_net_0                              : std_logic;
signal TXP_6_net_0                              : std_logic;
signal TXP_7_net_0                              : std_logic;
signal TXP_8_net_0                              : std_logic;
signal TXP_9_net_0                              : std_logic;
signal WE_N_net_0                               : std_logic;
signal CKE_net_1                                : std_logic;
signal CS_N_net_1                               : std_logic;
signal ODT_net_1                                : std_logic;
signal RAS_N_net_1                              : std_logic;
signal CAS_N_net_1                              : std_logic;
signal WE_N_net_1                               : std_logic;
signal RESET_N_net_1                            : std_logic;
signal CK0_net_1                                : std_logic;
signal CK0_N_net_1                              : std_logic;
signal SHIELD0_net_1                            : std_logic;
signal SHIELD1_net_1                            : std_logic;
signal TDO_net_1                                : std_logic;
signal CTRLR_READY_net_1                        : std_logic;
signal SPISCLKO_net_1                           : std_logic;
signal SPISDO_net_1                             : std_logic;
signal SPISS_0_net_1                            : std_logic;
signal net_6_net_0                              : std_logic;
signal SPISS_1_net_1                            : std_logic;
signal SPISS_2_net_1                            : std_logic;
signal SPISS_3_net_1                            : std_logic;
signal SPISS_5_net_1                            : std_logic;
signal SPISS_4_net_1                            : std_logic;
signal TXP_0_net_1                              : std_logic;
signal TXN_0_net_1                              : std_logic;
signal TXP_1_net_1                              : std_logic;
signal TXN_1_net_1                              : std_logic;
signal TXP_2_net_1                              : std_logic;
signal TXN_2_net_1                              : std_logic;
signal TXP_3_net_1                              : std_logic;
signal TXN_3_net_1                              : std_logic;
signal TXP_4_net_1                              : std_logic;
signal TXN_4_net_1                              : std_logic;
signal TXP_5_net_1                              : std_logic;
signal TXN_5_net_1                              : std_logic;
signal TXP_6_net_1                              : std_logic;
signal TXN_6_net_1                              : std_logic;
signal TXP_7_net_1                              : std_logic;
signal TXN_7_net_1                              : std_logic;
signal TXP_8_net_1                              : std_logic;
signal TXN_8_net_1                              : std_logic;
signal TXP_9_net_1                              : std_logic;
signal TXN_9_net_1                              : std_logic;
signal DM_net_1                                 : std_logic_vector(1 downto 0);
signal BA_net_1                                 : std_logic_vector(2 downto 0);
signal A_net_1                                  : std_logic_vector(15 downto 0);
signal SPISS_slice_0                            : std_logic_vector(6 to 6);
signal SPISS_slice_1                            : std_logic_vector(7 to 7);
signal IRQ_net_0                                : std_logic_vector(30 downto 0);
signal SPISS_net_0                              : std_logic_vector(7 downto 0);
----------------------------------------------------------------------
-- TiedOff Signals
----------------------------------------------------------------------
signal GND_net                                  : std_logic;
signal IRQ_const_net_0                          : std_logic_vector(30 downto 5);
signal IRQ_const_net_1                          : std_logic_vector(3 downto 0);
signal VCC_net                                  : std_logic;
signal MASTER0_AWREGION_const_net_0             : std_logic_vector(3 downto 0);
signal MASTER0_ARREGION_const_net_0             : std_logic_vector(3 downto 0);
signal MASTER1_AWREGION_const_net_0             : std_logic_vector(3 downto 0);
signal MASTER1_ARREGION_const_net_0             : std_logic_vector(3 downto 0);
signal HPROT_M0_const_net_0                     : std_logic_vector(3 downto 0);
----------------------------------------------------------------------
-- Inverted Signals
----------------------------------------------------------------------
signal E_IN_POST_INV0_0                         : std_logic;
signal E_IN_POST_INV1_0                         : std_logic;
----------------------------------------------------------------------
-- Bus Interface Nets Declarations - Unequal Pin Widths
----------------------------------------------------------------------
signal APB3_0_APBmslave0_PADDR_3_8to0           : std_logic_vector(8 downto 0);
signal APB3_0_APBmslave0_PADDR_3                : std_logic_vector(8 downto 0);
signal APB3_0_APBmslave0_PADDR_6_4to0           : std_logic_vector(4 downto 0);
signal APB3_0_APBmslave0_PADDR_6                : std_logic_vector(4 downto 0);
signal APB3_0_APBmslave0_PADDR_7_4to0           : std_logic_vector(4 downto 0);
signal APB3_0_APBmslave0_PADDR_7                : std_logic_vector(4 downto 0);
signal APB3_0_APBmslave0_PADDR_8_4to0           : std_logic_vector(4 downto 0);
signal APB3_0_APBmslave0_PADDR_8                : std_logic_vector(4 downto 0);
signal APB3_0_APBmslave0_PADDR_9_4to0           : std_logic_vector(4 downto 0);
signal APB3_0_APBmslave0_PADDR_9                : std_logic_vector(4 downto 0);
signal APB3_0_APBmslave0_PADDR_10_4to0          : std_logic_vector(4 downto 0);
signal APB3_0_APBmslave0_PADDR_10               : std_logic_vector(4 downto 0);
signal APB3_0_APBmslave0_PADDR_11_4to0          : std_logic_vector(4 downto 0);
signal APB3_0_APBmslave0_PADDR_11               : std_logic_vector(4 downto 0);
signal APB3_0_APBmslave0_PADDR_4_4to0           : std_logic_vector(4 downto 0);
signal APB3_0_APBmslave0_PADDR_4                : std_logic_vector(4 downto 0);
signal APB3_0_APBmslave0_PADDR_5_4to0           : std_logic_vector(4 downto 0);
signal APB3_0_APBmslave0_PADDR_5                : std_logic_vector(4 downto 0);
signal APB3_0_APBmslave0_PADDR_12_4to0          : std_logic_vector(4 downto 0);
signal APB3_0_APBmslave0_PADDR_12               : std_logic_vector(4 downto 0);
signal APB3_0_APBmslave0_PADDR_13_4to0          : std_logic_vector(4 downto 0);
signal APB3_0_APBmslave0_PADDR_13               : std_logic_vector(4 downto 0);
signal APB3_0_APBmslave0_PADDR_0_4to0           : std_logic_vector(4 downto 0);
signal APB3_0_APBmslave0_PADDR_0                : std_logic_vector(4 downto 0);
signal APB3_0_APBmslave0_PADDR_1_7to0           : std_logic_vector(7 downto 0);
signal APB3_0_APBmslave0_PADDR_1                : std_logic_vector(7 downto 0);
signal APB3_0_APBmslave0_PADDR_2_6to0           : std_logic_vector(6 downto 0);
signal APB3_0_APBmslave0_PADDR_2                : std_logic_vector(6 downto 0);
signal APB3_0_APBmslave0_PADDR                  : std_logic_vector(31 downto 0);

signal APB3_0_APBmslave0_PRDATA                 : std_logic_vector(7 downto 0);
signal APB3_0_APBmslave0_PRDATA_0_31to8         : std_logic_vector(31 downto 8);
signal APB3_0_APBmslave0_PRDATA_0_7to0          : std_logic_vector(7 downto 0);
signal APB3_0_APBmslave0_PRDATA_0               : std_logic_vector(31 downto 0);

signal APB3_0_APBmslave0_PWDATA_1_7to0          : std_logic_vector(7 downto 0);
signal APB3_0_APBmslave0_PWDATA_1               : std_logic_vector(7 downto 0);
signal APB3_0_APBmslave0_PWDATA_4_7to0          : std_logic_vector(7 downto 0);
signal APB3_0_APBmslave0_PWDATA_4               : std_logic_vector(7 downto 0);
signal APB3_0_APBmslave0_PWDATA_5_7to0          : std_logic_vector(7 downto 0);
signal APB3_0_APBmslave0_PWDATA_5               : std_logic_vector(7 downto 0);
signal APB3_0_APBmslave0_PWDATA_6_7to0          : std_logic_vector(7 downto 0);
signal APB3_0_APBmslave0_PWDATA_6               : std_logic_vector(7 downto 0);
signal APB3_0_APBmslave0_PWDATA_7_7to0          : std_logic_vector(7 downto 0);
signal APB3_0_APBmslave0_PWDATA_7               : std_logic_vector(7 downto 0);
signal APB3_0_APBmslave0_PWDATA_8_7to0          : std_logic_vector(7 downto 0);
signal APB3_0_APBmslave0_PWDATA_8               : std_logic_vector(7 downto 0);
signal APB3_0_APBmslave0_PWDATA_2_7to0          : std_logic_vector(7 downto 0);
signal APB3_0_APBmslave0_PWDATA_2               : std_logic_vector(7 downto 0);
signal APB3_0_APBmslave0_PWDATA_3_7to0          : std_logic_vector(7 downto 0);
signal APB3_0_APBmslave0_PWDATA_3               : std_logic_vector(7 downto 0);
signal APB3_0_APBmslave0_PWDATA_0_7to0          : std_logic_vector(7 downto 0);
signal APB3_0_APBmslave0_PWDATA_0               : std_logic_vector(7 downto 0);
signal APB3_0_APBmslave0_PWDATA_9_7to0          : std_logic_vector(7 downto 0);
signal APB3_0_APBmslave0_PWDATA_9               : std_logic_vector(7 downto 0);
signal APB3_0_APBmslave0_PWDATA_10_7to0         : std_logic_vector(7 downto 0);
signal APB3_0_APBmslave0_PWDATA_10              : std_logic_vector(7 downto 0);
signal APB3_0_APBmslave0_PWDATA_11_7to0         : std_logic_vector(7 downto 0);
signal APB3_0_APBmslave0_PWDATA_11              : std_logic_vector(7 downto 0);
signal APB3_0_APBmslave0_PWDATA                 : std_logic_vector(31 downto 0);

signal APB3_0_APBmslave3_PRDATA                 : std_logic_vector(7 downto 0);
signal APB3_0_APBmslave3_PRDATA_0_31to8         : std_logic_vector(31 downto 8);
signal APB3_0_APBmslave3_PRDATA_0_7to0          : std_logic_vector(7 downto 0);
signal APB3_0_APBmslave3_PRDATA_0               : std_logic_vector(31 downto 0);

signal APB3_0_APBmslave4_PRDATA                 : std_logic_vector(7 downto 0);
signal APB3_0_APBmslave4_PRDATA_0_31to8         : std_logic_vector(31 downto 8);
signal APB3_0_APBmslave4_PRDATA_0_7to0          : std_logic_vector(7 downto 0);
signal APB3_0_APBmslave4_PRDATA_0               : std_logic_vector(31 downto 0);

signal APB3_0_APBmslave5_PRDATA                 : std_logic_vector(7 downto 0);
signal APB3_0_APBmslave5_PRDATA_0_31to8         : std_logic_vector(31 downto 8);
signal APB3_0_APBmslave5_PRDATA_0_7to0          : std_logic_vector(7 downto 0);
signal APB3_0_APBmslave5_PRDATA_0               : std_logic_vector(31 downto 0);

signal APB3_0_APBmslave6_PRDATA                 : std_logic_vector(7 downto 0);
signal APB3_0_APBmslave6_PRDATA_0_31to8         : std_logic_vector(31 downto 8);
signal APB3_0_APBmslave6_PRDATA_0_7to0          : std_logic_vector(7 downto 0);
signal APB3_0_APBmslave6_PRDATA_0               : std_logic_vector(31 downto 0);

signal APB3_0_APBmslave7_PRDATA                 : std_logic_vector(7 downto 0);
signal APB3_0_APBmslave7_PRDATA_0_31to8         : std_logic_vector(31 downto 8);
signal APB3_0_APBmslave7_PRDATA_0_7to0          : std_logic_vector(7 downto 0);
signal APB3_0_APBmslave7_PRDATA_0               : std_logic_vector(31 downto 0);

signal APB3_0_APBmslave8_PRDATA                 : std_logic_vector(7 downto 0);
signal APB3_0_APBmslave8_PRDATA_0_31to8         : std_logic_vector(31 downto 8);
signal APB3_0_APBmslave8_PRDATA_0_7to0          : std_logic_vector(7 downto 0);
signal APB3_0_APBmslave8_PRDATA_0               : std_logic_vector(31 downto 0);

signal APB3_0_APBmslave9_PRDATA                 : std_logic_vector(7 downto 0);
signal APB3_0_APBmslave9_PRDATA_0_31to8         : std_logic_vector(31 downto 8);
signal APB3_0_APBmslave9_PRDATA_0_7to0          : std_logic_vector(7 downto 0);
signal APB3_0_APBmslave9_PRDATA_0               : std_logic_vector(31 downto 0);

signal APB3_0_APBmslave10_PRDATA                : std_logic_vector(7 downto 0);
signal APB3_0_APBmslave10_PRDATA_0_31to8        : std_logic_vector(31 downto 8);
signal APB3_0_APBmslave10_PRDATA_0_7to0         : std_logic_vector(7 downto 0);
signal APB3_0_APBmslave10_PRDATA_0              : std_logic_vector(31 downto 0);

signal APB3_0_APBmslave11_PRDATA                : std_logic_vector(7 downto 0);
signal APB3_0_APBmslave11_PRDATA_0_31to8        : std_logic_vector(31 downto 8);
signal APB3_0_APBmslave11_PRDATA_0_7to0         : std_logic_vector(7 downto 0);
signal APB3_0_APBmslave11_PRDATA_0              : std_logic_vector(31 downto 0);

signal APB3_0_APBmslave12_PRDATA_0_31to8        : std_logic_vector(31 downto 8);
signal APB3_0_APBmslave12_PRDATA_0_7to0         : std_logic_vector(7 downto 0);
signal APB3_0_APBmslave12_PRDATA_0              : std_logic_vector(31 downto 0);
signal APB3_0_APBmslave12_PRDATA                : std_logic_vector(7 downto 0);

signal APB3_0_APBmslave13_PRDATA_0_31to8        : std_logic_vector(31 downto 8);
signal APB3_0_APBmslave13_PRDATA_0_7to0         : std_logic_vector(7 downto 0);
signal APB3_0_APBmslave13_PRDATA_0              : std_logic_vector(31 downto 0);
signal APB3_0_APBmslave13_PRDATA                : std_logic_vector(7 downto 0);

signal AXI4_Interconnect_0_AXI3mslave2_ARID     : std_logic_vector(4 downto 0);
signal AXI4_Interconnect_0_AXI3mslave2_ARID_0_3to0: std_logic_vector(3 downto 0);
signal AXI4_Interconnect_0_AXI3mslave2_ARID_0   : std_logic_vector(3 downto 0);

signal AXI4_Interconnect_0_AXI3mslave2_ARLEN    : std_logic_vector(7 downto 0);
signal AXI4_Interconnect_0_AXI3mslave2_ARLEN_0_3to0: std_logic_vector(3 downto 0);
signal AXI4_Interconnect_0_AXI3mslave2_ARLEN_0  : std_logic_vector(3 downto 0);

signal AXI4_Interconnect_0_AXI3mslave2_AWID     : std_logic_vector(4 downto 0);
signal AXI4_Interconnect_0_AXI3mslave2_AWID_0_3to0: std_logic_vector(3 downto 0);
signal AXI4_Interconnect_0_AXI3mslave2_AWID_0   : std_logic_vector(3 downto 0);

signal AXI4_Interconnect_0_AXI3mslave2_AWLEN    : std_logic_vector(7 downto 0);
signal AXI4_Interconnect_0_AXI3mslave2_AWLEN_0_3to0: std_logic_vector(3 downto 0);
signal AXI4_Interconnect_0_AXI3mslave2_AWLEN_0  : std_logic_vector(3 downto 0);

signal AXI4_Interconnect_0_AXI3mslave2_BID_0_4to4: std_logic_vector(4 to 4);
signal AXI4_Interconnect_0_AXI3mslave2_BID_0_3to0: std_logic_vector(3 downto 0);
signal AXI4_Interconnect_0_AXI3mslave2_BID_0    : std_logic_vector(4 downto 0);
signal AXI4_Interconnect_0_AXI3mslave2_BID      : std_logic_vector(3 downto 0);

signal AXI4_Interconnect_0_AXI3mslave2_RID_0_4to4: std_logic_vector(4 to 4);
signal AXI4_Interconnect_0_AXI3mslave2_RID_0_3to0: std_logic_vector(3 downto 0);
signal AXI4_Interconnect_0_AXI3mslave2_RID_0    : std_logic_vector(4 downto 0);
signal AXI4_Interconnect_0_AXI3mslave2_RID      : std_logic_vector(3 downto 0);

signal AXI4_Interconnect_0_AXI3mslave2_WID      : std_logic_vector(4 downto 0);
signal AXI4_Interconnect_0_AXI3mslave2_WID_0_3to0: std_logic_vector(3 downto 0);
signal AXI4_Interconnect_0_AXI3mslave2_WID_0    : std_logic_vector(3 downto 0);

signal AXI4_Interconnect_0_AXI4mslave1_ARID_0_3to0: std_logic_vector(3 downto 0);
signal AXI4_Interconnect_0_AXI4mslave1_ARID_0   : std_logic_vector(3 downto 0);
signal AXI4_Interconnect_0_AXI4mslave1_ARID     : std_logic_vector(4 downto 0);

signal AXI4_Interconnect_0_AXI4mslave1_AWID_0_3to0: std_logic_vector(3 downto 0);
signal AXI4_Interconnect_0_AXI4mslave1_AWID_0   : std_logic_vector(3 downto 0);
signal AXI4_Interconnect_0_AXI4mslave1_AWID     : std_logic_vector(4 downto 0);

signal AXI4_Interconnect_0_AXI4mslave1_BID      : std_logic_vector(3 downto 0);
signal AXI4_Interconnect_0_AXI4mslave1_BID_0_4to4: std_logic_vector(4 to 4);
signal AXI4_Interconnect_0_AXI4mslave1_BID_0_3to0: std_logic_vector(3 downto 0);
signal AXI4_Interconnect_0_AXI4mslave1_BID_0    : std_logic_vector(4 downto 0);

signal AXI4_Interconnect_0_AXI4mslave1_RID      : std_logic_vector(3 downto 0);
signal AXI4_Interconnect_0_AXI4mslave1_RID_0_4to4: std_logic_vector(4 to 4);
signal AXI4_Interconnect_0_AXI4mslave1_RID_0_3to0: std_logic_vector(3 downto 0);
signal AXI4_Interconnect_0_AXI4mslave1_RID_0    : std_logic_vector(4 downto 0);

signal CORAXITOAHBL_0_0_AHBMasterIF_HRESP       : std_logic_vector(1 downto 0);
signal CORAXITOAHBL_0_0_AHBMasterIF_HRESP_0_0to0: std_logic_vector(0 to 0);
signal CORAXITOAHBL_0_0_AHBMasterIF_HRESP_0     : std_logic;

signal MiV_AXI_0_MEM_MST_AXI4_ARLOCK_0_1to1     : std_logic_vector(1 to 1);
signal MiV_AXI_0_MEM_MST_AXI4_ARLOCK_0_0to0     : std_logic_vector(0 to 0);
signal MiV_AXI_0_MEM_MST_AXI4_ARLOCK_0          : std_logic_vector(1 downto 0);
signal MiV_AXI_0_MEM_MST_AXI4_ARLOCK            : std_logic;

signal MiV_AXI_0_MEM_MST_AXI4_AWLOCK_0_1to1     : std_logic_vector(1 to 1);
signal MiV_AXI_0_MEM_MST_AXI4_AWLOCK_0_0to0     : std_logic_vector(0 to 0);
signal MiV_AXI_0_MEM_MST_AXI4_AWLOCK_0          : std_logic_vector(1 downto 0);
signal MiV_AXI_0_MEM_MST_AXI4_AWLOCK            : std_logic;

signal MiV_AXI_0_MMIO_MST_AXI4_ARADDR_0_31to31  : std_logic_vector(31 to 31);
signal MiV_AXI_0_MMIO_MST_AXI4_ARADDR_0_30to0   : std_logic_vector(30 downto 0);
signal MiV_AXI_0_MMIO_MST_AXI4_ARADDR_0         : std_logic_vector(31 downto 0);
signal MiV_AXI_0_MMIO_MST_AXI4_ARADDR           : std_logic_vector(30 downto 0);

signal MiV_AXI_0_MMIO_MST_AXI4_ARLOCK_0_1to1    : std_logic_vector(1 to 1);
signal MiV_AXI_0_MMIO_MST_AXI4_ARLOCK_0_0to0    : std_logic_vector(0 to 0);
signal MiV_AXI_0_MMIO_MST_AXI4_ARLOCK_0         : std_logic_vector(1 downto 0);
signal MiV_AXI_0_MMIO_MST_AXI4_ARLOCK           : std_logic;

signal MiV_AXI_0_MMIO_MST_AXI4_AWADDR_0_31to31  : std_logic_vector(31 to 31);
signal MiV_AXI_0_MMIO_MST_AXI4_AWADDR_0_30to0   : std_logic_vector(30 downto 0);
signal MiV_AXI_0_MMIO_MST_AXI4_AWADDR_0         : std_logic_vector(31 downto 0);
signal MiV_AXI_0_MMIO_MST_AXI4_AWADDR           : std_logic_vector(30 downto 0);

signal MiV_AXI_0_MMIO_MST_AXI4_AWLOCK_0_1to1    : std_logic_vector(1 to 1);
signal MiV_AXI_0_MMIO_MST_AXI4_AWLOCK_0_0to0    : std_logic_vector(0 to 0);
signal MiV_AXI_0_MMIO_MST_AXI4_AWLOCK_0         : std_logic_vector(1 downto 0);
signal MiV_AXI_0_MMIO_MST_AXI4_AWLOCK           : std_logic;


begin
----------------------------------------------------------------------
-- Constant assignments
----------------------------------------------------------------------
 GND_net                      <= '0';
 IRQ_const_net_0              <= B"00000000000000000000000000";
 IRQ_const_net_1              <= B"0000";
 VCC_net                      <= '1';
 MASTER0_AWREGION_const_net_0 <= B"0000";
 MASTER0_ARREGION_const_net_0 <= B"0000";
 MASTER1_AWREGION_const_net_0 <= B"0000";
 MASTER1_ARREGION_const_net_0 <= B"0000";
 HPROT_M0_const_net_0         <= B"0000";
----------------------------------------------------------------------
-- Inversions
----------------------------------------------------------------------
 E_IN_POST_INV0_0 <= NOT COREI2C_C0_0_SCLO(0);
 E_IN_POST_INV1_0 <= NOT COREI2C_C0_0_SDAO(0);
----------------------------------------------------------------------
-- Top level output port assignments
----------------------------------------------------------------------
 CKE_net_1         <= CKE_net_0;
 CKE               <= CKE_net_1;
 CS_N_net_1        <= CS_N_net_0;
 CS_N              <= CS_N_net_1;
 ODT_net_1         <= ODT_net_0;
 ODT               <= ODT_net_1;
 RAS_N_net_1       <= RAS_N_net_0;
 RAS_N             <= RAS_N_net_1;
 CAS_N_net_1       <= CAS_N_net_0;
 CAS_N             <= CAS_N_net_1;
 WE_N_net_1        <= WE_N_net_0;
 WE_N              <= WE_N_net_1;
 RESET_N_net_1     <= RESET_N_net_0;
 RESET_N           <= RESET_N_net_1;
 CK0_net_1         <= CK0_net_0;
 CK0               <= CK0_net_1;
 CK0_N_net_1       <= CK0_N_net_0;
 CK0_N             <= CK0_N_net_1;
 SHIELD0_net_1     <= SHIELD0_net_0;
 SHIELD0           <= SHIELD0_net_1;
 SHIELD1_net_1     <= SHIELD1_net_0;
 SHIELD1           <= SHIELD1_net_1;
 TDO_net_1         <= TDO_net_0;
 TDO               <= TDO_net_1;
 CTRLR_READY_net_1 <= CTRLR_READY_net_0;
 CTRLR_READY       <= CTRLR_READY_net_1;
 SPISCLKO_net_1    <= SPISCLKO_net_0;
 SPISCLKO          <= SPISCLKO_net_1;
 SPISDO_net_1      <= SPISDO_net_0;
 SPISDO            <= SPISDO_net_1;
 SPISS_0_net_1     <= SPISS_0_net_0(0);
 SPISS_0           <= SPISS_0_net_1;
 net_6_net_0       <= net_6;
 TX                <= net_6_net_0;
 SPISS_1_net_1     <= SPISS_1_net_0(1);
 SPISS_1           <= SPISS_1_net_1;
 SPISS_2_net_1     <= SPISS_2_net_0(2);
 SPISS_2           <= SPISS_2_net_1;
 SPISS_3_net_1     <= SPISS_3_net_0(3);
 SPISS_3           <= SPISS_3_net_1;
 SPISS_5_net_1     <= SPISS_5_net_0(5);
 SPISS_5           <= SPISS_5_net_1;
 SPISS_4_net_1     <= SPISS_4_net_0(4);
 SPISS_4           <= SPISS_4_net_1;
 TXP_0_net_1       <= TXP_0_net_0;
 TXP_0             <= TXP_0_net_1;
 TXN_0_net_1       <= TXN_0_net_0;
 TXN_0             <= TXN_0_net_1;
 TXP_1_net_1       <= TXP_1_net_0;
 TXP_1             <= TXP_1_net_1;
 TXN_1_net_1       <= TXN_1_net_0;
 TXN_1             <= TXN_1_net_1;
 TXP_2_net_1       <= TXP_2_net_0;
 TXP_2             <= TXP_2_net_1;
 TXN_2_net_1       <= TXN_2_net_0;
 TXN_2             <= TXN_2_net_1;
 TXP_3_net_1       <= TXP_3_net_0;
 TXP_3             <= TXP_3_net_1;
 TXN_3_net_1       <= TXN_3_net_0;
 TXN_3             <= TXN_3_net_1;
 TXP_4_net_1       <= TXP_4_net_0;
 TXP_4             <= TXP_4_net_1;
 TXN_4_net_1       <= TXN_4_net_0;
 TXN_4             <= TXN_4_net_1;
 TXP_5_net_1       <= TXP_5_net_0;
 TXP_5             <= TXP_5_net_1;
 TXN_5_net_1       <= TXN_5_net_0;
 TXN_5             <= TXN_5_net_1;
 TXP_6_net_1       <= TXP_6_net_0;
 TXP_6             <= TXP_6_net_1;
 TXN_6_net_1       <= TXN_6_net_0;
 TXN_6             <= TXN_6_net_1;
 TXP_7_net_1       <= TXP_7_net_0;
 TXP_7             <= TXP_7_net_1;
 TXN_7_net_1       <= TXN_7_net_0;
 TXN_7             <= TXN_7_net_1;
 TXP_8_net_1       <= TXP_8_net_0;
 TXP_8             <= TXP_8_net_1;
 TXN_8_net_1       <= TXN_8_net_0;
 TXN_8             <= TXN_8_net_1;
 TXP_9_net_1       <= TXP_9_net_0;
 TXP_9             <= TXP_9_net_1;
 TXN_9_net_1       <= TXN_9_net_0;
 TXN_9             <= TXN_9_net_1;
 DM_net_1          <= DM_net_0;
 DM(1 downto 0)    <= DM_net_1;
 BA_net_1          <= BA_net_0;
 BA(2 downto 0)    <= BA_net_1;
 A_net_1           <= A_net_0;
 A(15 downto 0)    <= A_net_1;
----------------------------------------------------------------------
-- Slices assignments
----------------------------------------------------------------------
 SPISS_0_net_0(0) <= SPISS_net_0(0);
 SPISS_1_net_0(1) <= SPISS_net_0(1);
 SPISS_2_net_0(2) <= SPISS_net_0(2);
 SPISS_3_net_0(3) <= SPISS_net_0(3);
 SPISS_4_net_0(4) <= SPISS_net_0(4);
 SPISS_5_net_0(5) <= SPISS_net_0(5);
 SPISS_slice_0(6) <= SPISS_net_0(6);
 SPISS_slice_1(7) <= SPISS_net_0(7);
----------------------------------------------------------------------
-- Concatenation assignments
----------------------------------------------------------------------
 IRQ_net_0 <= ( B"00000000000000000000000000" & COREI2C_C0_0_INT(0) & B"0000" );
----------------------------------------------------------------------
-- Bus Interface Nets Assignments - Unequal Pin Widths
----------------------------------------------------------------------
 APB3_0_APBmslave0_PADDR_3_8to0(8 downto 0) <= APB3_0_APBmslave0_PADDR(8 downto 0);
 APB3_0_APBmslave0_PADDR_3 <= ( APB3_0_APBmslave0_PADDR_3_8to0(8 downto 0) );
 APB3_0_APBmslave0_PADDR_6_4to0(4 downto 0) <= APB3_0_APBmslave0_PADDR(4 downto 0);
 APB3_0_APBmslave0_PADDR_6 <= ( APB3_0_APBmslave0_PADDR_6_4to0(4 downto 0) );
 APB3_0_APBmslave0_PADDR_7_4to0(4 downto 0) <= APB3_0_APBmslave0_PADDR(4 downto 0);
 APB3_0_APBmslave0_PADDR_7 <= ( APB3_0_APBmslave0_PADDR_7_4to0(4 downto 0) );
 APB3_0_APBmslave0_PADDR_8_4to0(4 downto 0) <= APB3_0_APBmslave0_PADDR(4 downto 0);
 APB3_0_APBmslave0_PADDR_8 <= ( APB3_0_APBmslave0_PADDR_8_4to0(4 downto 0) );
 APB3_0_APBmslave0_PADDR_9_4to0(4 downto 0) <= APB3_0_APBmslave0_PADDR(4 downto 0);
 APB3_0_APBmslave0_PADDR_9 <= ( APB3_0_APBmslave0_PADDR_9_4to0(4 downto 0) );
 APB3_0_APBmslave0_PADDR_10_4to0(4 downto 0) <= APB3_0_APBmslave0_PADDR(4 downto 0);
 APB3_0_APBmslave0_PADDR_10 <= ( APB3_0_APBmslave0_PADDR_10_4to0(4 downto 0) );
 APB3_0_APBmslave0_PADDR_11_4to0(4 downto 0) <= APB3_0_APBmslave0_PADDR(4 downto 0);
 APB3_0_APBmslave0_PADDR_11 <= ( APB3_0_APBmslave0_PADDR_11_4to0(4 downto 0) );
 APB3_0_APBmslave0_PADDR_4_4to0(4 downto 0) <= APB3_0_APBmslave0_PADDR(4 downto 0);
 APB3_0_APBmslave0_PADDR_4 <= ( APB3_0_APBmslave0_PADDR_4_4to0(4 downto 0) );
 APB3_0_APBmslave0_PADDR_5_4to0(4 downto 0) <= APB3_0_APBmslave0_PADDR(4 downto 0);
 APB3_0_APBmslave0_PADDR_5 <= ( APB3_0_APBmslave0_PADDR_5_4to0(4 downto 0) );
 APB3_0_APBmslave0_PADDR_12_4to0(4 downto 0) <= APB3_0_APBmslave0_PADDR(4 downto 0);
 APB3_0_APBmslave0_PADDR_12 <= ( APB3_0_APBmslave0_PADDR_12_4to0(4 downto 0) );
 APB3_0_APBmslave0_PADDR_13_4to0(4 downto 0) <= APB3_0_APBmslave0_PADDR(4 downto 0);
 APB3_0_APBmslave0_PADDR_13 <= ( APB3_0_APBmslave0_PADDR_13_4to0(4 downto 0) );
 APB3_0_APBmslave0_PADDR_0_4to0(4 downto 0) <= APB3_0_APBmslave0_PADDR(4 downto 0);
 APB3_0_APBmslave0_PADDR_0 <= ( APB3_0_APBmslave0_PADDR_0_4to0(4 downto 0) );
 APB3_0_APBmslave0_PADDR_1_7to0(7 downto 0) <= APB3_0_APBmslave0_PADDR(7 downto 0);
 APB3_0_APBmslave0_PADDR_1 <= ( APB3_0_APBmslave0_PADDR_1_7to0(7 downto 0) );
 APB3_0_APBmslave0_PADDR_2_6to0(6 downto 0) <= APB3_0_APBmslave0_PADDR(6 downto 0);
 APB3_0_APBmslave0_PADDR_2 <= ( APB3_0_APBmslave0_PADDR_2_6to0(6 downto 0) );

 APB3_0_APBmslave0_PRDATA_0_31to8(31 downto 8) <= B"000000000000000000000000";
 APB3_0_APBmslave0_PRDATA_0_7to0(7 downto 0) <= APB3_0_APBmslave0_PRDATA(7 downto 0);
 APB3_0_APBmslave0_PRDATA_0 <= ( APB3_0_APBmslave0_PRDATA_0_31to8(31 downto 8) & APB3_0_APBmslave0_PRDATA_0_7to0(7 downto 0) );

 APB3_0_APBmslave0_PWDATA_1_7to0(7 downto 0) <= APB3_0_APBmslave0_PWDATA(7 downto 0);
 APB3_0_APBmslave0_PWDATA_1 <= ( APB3_0_APBmslave0_PWDATA_1_7to0(7 downto 0) );
 APB3_0_APBmslave0_PWDATA_4_7to0(7 downto 0) <= APB3_0_APBmslave0_PWDATA(7 downto 0);
 APB3_0_APBmslave0_PWDATA_4 <= ( APB3_0_APBmslave0_PWDATA_4_7to0(7 downto 0) );
 APB3_0_APBmslave0_PWDATA_5_7to0(7 downto 0) <= APB3_0_APBmslave0_PWDATA(7 downto 0);
 APB3_0_APBmslave0_PWDATA_5 <= ( APB3_0_APBmslave0_PWDATA_5_7to0(7 downto 0) );
 APB3_0_APBmslave0_PWDATA_6_7to0(7 downto 0) <= APB3_0_APBmslave0_PWDATA(7 downto 0);
 APB3_0_APBmslave0_PWDATA_6 <= ( APB3_0_APBmslave0_PWDATA_6_7to0(7 downto 0) );
 APB3_0_APBmslave0_PWDATA_7_7to0(7 downto 0) <= APB3_0_APBmslave0_PWDATA(7 downto 0);
 APB3_0_APBmslave0_PWDATA_7 <= ( APB3_0_APBmslave0_PWDATA_7_7to0(7 downto 0) );
 APB3_0_APBmslave0_PWDATA_8_7to0(7 downto 0) <= APB3_0_APBmslave0_PWDATA(7 downto 0);
 APB3_0_APBmslave0_PWDATA_8 <= ( APB3_0_APBmslave0_PWDATA_8_7to0(7 downto 0) );
 APB3_0_APBmslave0_PWDATA_2_7to0(7 downto 0) <= APB3_0_APBmslave0_PWDATA(7 downto 0);
 APB3_0_APBmslave0_PWDATA_2 <= ( APB3_0_APBmslave0_PWDATA_2_7to0(7 downto 0) );
 APB3_0_APBmslave0_PWDATA_3_7to0(7 downto 0) <= APB3_0_APBmslave0_PWDATA(7 downto 0);
 APB3_0_APBmslave0_PWDATA_3 <= ( APB3_0_APBmslave0_PWDATA_3_7to0(7 downto 0) );
 APB3_0_APBmslave0_PWDATA_0_7to0(7 downto 0) <= APB3_0_APBmslave0_PWDATA(7 downto 0);
 APB3_0_APBmslave0_PWDATA_0 <= ( APB3_0_APBmslave0_PWDATA_0_7to0(7 downto 0) );
 APB3_0_APBmslave0_PWDATA_9_7to0(7 downto 0) <= APB3_0_APBmslave0_PWDATA(7 downto 0);
 APB3_0_APBmslave0_PWDATA_9 <= ( APB3_0_APBmslave0_PWDATA_9_7to0(7 downto 0) );
 APB3_0_APBmslave0_PWDATA_10_7to0(7 downto 0) <= APB3_0_APBmslave0_PWDATA(7 downto 0);
 APB3_0_APBmslave0_PWDATA_10 <= ( APB3_0_APBmslave0_PWDATA_10_7to0(7 downto 0) );
 APB3_0_APBmslave0_PWDATA_11_7to0(7 downto 0) <= APB3_0_APBmslave0_PWDATA(7 downto 0);
 APB3_0_APBmslave0_PWDATA_11 <= ( APB3_0_APBmslave0_PWDATA_11_7to0(7 downto 0) );

 APB3_0_APBmslave3_PRDATA_0_31to8(31 downto 8) <= B"000000000000000000000000";
 APB3_0_APBmslave3_PRDATA_0_7to0(7 downto 0) <= APB3_0_APBmslave3_PRDATA(7 downto 0);
 APB3_0_APBmslave3_PRDATA_0 <= ( APB3_0_APBmslave3_PRDATA_0_31to8(31 downto 8) & APB3_0_APBmslave3_PRDATA_0_7to0(7 downto 0) );

 APB3_0_APBmslave4_PRDATA_0_31to8(31 downto 8) <= B"000000000000000000000000";
 APB3_0_APBmslave4_PRDATA_0_7to0(7 downto 0) <= APB3_0_APBmslave4_PRDATA(7 downto 0);
 APB3_0_APBmslave4_PRDATA_0 <= ( APB3_0_APBmslave4_PRDATA_0_31to8(31 downto 8) & APB3_0_APBmslave4_PRDATA_0_7to0(7 downto 0) );

 APB3_0_APBmslave5_PRDATA_0_31to8(31 downto 8) <= B"000000000000000000000000";
 APB3_0_APBmslave5_PRDATA_0_7to0(7 downto 0) <= APB3_0_APBmslave5_PRDATA(7 downto 0);
 APB3_0_APBmslave5_PRDATA_0 <= ( APB3_0_APBmslave5_PRDATA_0_31to8(31 downto 8) & APB3_0_APBmslave5_PRDATA_0_7to0(7 downto 0) );

 APB3_0_APBmslave6_PRDATA_0_31to8(31 downto 8) <= B"000000000000000000000000";
 APB3_0_APBmslave6_PRDATA_0_7to0(7 downto 0) <= APB3_0_APBmslave6_PRDATA(7 downto 0);
 APB3_0_APBmslave6_PRDATA_0 <= ( APB3_0_APBmslave6_PRDATA_0_31to8(31 downto 8) & APB3_0_APBmslave6_PRDATA_0_7to0(7 downto 0) );

 APB3_0_APBmslave7_PRDATA_0_31to8(31 downto 8) <= B"000000000000000000000000";
 APB3_0_APBmslave7_PRDATA_0_7to0(7 downto 0) <= APB3_0_APBmslave7_PRDATA(7 downto 0);
 APB3_0_APBmslave7_PRDATA_0 <= ( APB3_0_APBmslave7_PRDATA_0_31to8(31 downto 8) & APB3_0_APBmslave7_PRDATA_0_7to0(7 downto 0) );

 APB3_0_APBmslave8_PRDATA_0_31to8(31 downto 8) <= B"000000000000000000000000";
 APB3_0_APBmslave8_PRDATA_0_7to0(7 downto 0) <= APB3_0_APBmslave8_PRDATA(7 downto 0);
 APB3_0_APBmslave8_PRDATA_0 <= ( APB3_0_APBmslave8_PRDATA_0_31to8(31 downto 8) & APB3_0_APBmslave8_PRDATA_0_7to0(7 downto 0) );

 APB3_0_APBmslave9_PRDATA_0_31to8(31 downto 8) <= B"000000000000000000000000";
 APB3_0_APBmslave9_PRDATA_0_7to0(7 downto 0) <= APB3_0_APBmslave9_PRDATA(7 downto 0);
 APB3_0_APBmslave9_PRDATA_0 <= ( APB3_0_APBmslave9_PRDATA_0_31to8(31 downto 8) & APB3_0_APBmslave9_PRDATA_0_7to0(7 downto 0) );

 APB3_0_APBmslave10_PRDATA_0_31to8(31 downto 8) <= B"000000000000000000000000";
 APB3_0_APBmslave10_PRDATA_0_7to0(7 downto 0) <= APB3_0_APBmslave10_PRDATA(7 downto 0);
 APB3_0_APBmslave10_PRDATA_0 <= ( APB3_0_APBmslave10_PRDATA_0_31to8(31 downto 8) & APB3_0_APBmslave10_PRDATA_0_7to0(7 downto 0) );

 APB3_0_APBmslave11_PRDATA_0_31to8(31 downto 8) <= B"000000000000000000000000";
 APB3_0_APBmslave11_PRDATA_0_7to0(7 downto 0) <= APB3_0_APBmslave11_PRDATA(7 downto 0);
 APB3_0_APBmslave11_PRDATA_0 <= ( APB3_0_APBmslave11_PRDATA_0_31to8(31 downto 8) & APB3_0_APBmslave11_PRDATA_0_7to0(7 downto 0) );

 APB3_0_APBmslave12_PRDATA_0_31to8(31 downto 8) <= B"000000000000000000000000";
 APB3_0_APBmslave12_PRDATA_0_7to0(7 downto 0) <= APB3_0_APBmslave12_PRDATA(7 downto 0);
 APB3_0_APBmslave12_PRDATA_0 <= ( APB3_0_APBmslave12_PRDATA_0_31to8(31 downto 8) & APB3_0_APBmslave12_PRDATA_0_7to0(7 downto 0) );

 APB3_0_APBmslave13_PRDATA_0_31to8(31 downto 8) <= B"000000000000000000000000";
 APB3_0_APBmslave13_PRDATA_0_7to0(7 downto 0) <= APB3_0_APBmslave13_PRDATA(7 downto 0);
 APB3_0_APBmslave13_PRDATA_0 <= ( APB3_0_APBmslave13_PRDATA_0_31to8(31 downto 8) & APB3_0_APBmslave13_PRDATA_0_7to0(7 downto 0) );

 AXI4_Interconnect_0_AXI3mslave2_ARID_0_3to0(3 downto 0) <= AXI4_Interconnect_0_AXI3mslave2_ARID(3 downto 0);
 AXI4_Interconnect_0_AXI3mslave2_ARID_0 <= ( AXI4_Interconnect_0_AXI3mslave2_ARID_0_3to0(3 downto 0) );

 AXI4_Interconnect_0_AXI3mslave2_ARLEN_0_3to0(3 downto 0) <= AXI4_Interconnect_0_AXI3mslave2_ARLEN(3 downto 0);
 AXI4_Interconnect_0_AXI3mslave2_ARLEN_0 <= ( AXI4_Interconnect_0_AXI3mslave2_ARLEN_0_3to0(3 downto 0) );

 AXI4_Interconnect_0_AXI3mslave2_AWID_0_3to0(3 downto 0) <= AXI4_Interconnect_0_AXI3mslave2_AWID(3 downto 0);
 AXI4_Interconnect_0_AXI3mslave2_AWID_0 <= ( AXI4_Interconnect_0_AXI3mslave2_AWID_0_3to0(3 downto 0) );

 AXI4_Interconnect_0_AXI3mslave2_AWLEN_0_3to0(3 downto 0) <= AXI4_Interconnect_0_AXI3mslave2_AWLEN(3 downto 0);
 AXI4_Interconnect_0_AXI3mslave2_AWLEN_0 <= ( AXI4_Interconnect_0_AXI3mslave2_AWLEN_0_3to0(3 downto 0) );

 AXI4_Interconnect_0_AXI3mslave2_BID_0_4to4(4) <= '0';
 AXI4_Interconnect_0_AXI3mslave2_BID_0_3to0(3 downto 0) <= AXI4_Interconnect_0_AXI3mslave2_BID(3 downto 0);
 AXI4_Interconnect_0_AXI3mslave2_BID_0 <= ( AXI4_Interconnect_0_AXI3mslave2_BID_0_4to4(4) & AXI4_Interconnect_0_AXI3mslave2_BID_0_3to0(3 downto 0) );

 AXI4_Interconnect_0_AXI3mslave2_RID_0_4to4(4) <= '0';
 AXI4_Interconnect_0_AXI3mslave2_RID_0_3to0(3 downto 0) <= AXI4_Interconnect_0_AXI3mslave2_RID(3 downto 0);
 AXI4_Interconnect_0_AXI3mslave2_RID_0 <= ( AXI4_Interconnect_0_AXI3mslave2_RID_0_4to4(4) & AXI4_Interconnect_0_AXI3mslave2_RID_0_3to0(3 downto 0) );

 AXI4_Interconnect_0_AXI3mslave2_WID_0_3to0(3 downto 0) <= AXI4_Interconnect_0_AXI3mslave2_WID(3 downto 0);
 AXI4_Interconnect_0_AXI3mslave2_WID_0 <= ( AXI4_Interconnect_0_AXI3mslave2_WID_0_3to0(3 downto 0) );

 AXI4_Interconnect_0_AXI4mslave1_ARID_0_3to0(3 downto 0) <= AXI4_Interconnect_0_AXI4mslave1_ARID(3 downto 0);
 AXI4_Interconnect_0_AXI4mslave1_ARID_0 <= ( AXI4_Interconnect_0_AXI4mslave1_ARID_0_3to0(3 downto 0) );

 AXI4_Interconnect_0_AXI4mslave1_AWID_0_3to0(3 downto 0) <= AXI4_Interconnect_0_AXI4mslave1_AWID(3 downto 0);
 AXI4_Interconnect_0_AXI4mslave1_AWID_0 <= ( AXI4_Interconnect_0_AXI4mslave1_AWID_0_3to0(3 downto 0) );

 AXI4_Interconnect_0_AXI4mslave1_BID_0_4to4(4) <= '0';
 AXI4_Interconnect_0_AXI4mslave1_BID_0_3to0(3 downto 0) <= AXI4_Interconnect_0_AXI4mslave1_BID(3 downto 0);
 AXI4_Interconnect_0_AXI4mslave1_BID_0 <= ( AXI4_Interconnect_0_AXI4mslave1_BID_0_4to4(4) & AXI4_Interconnect_0_AXI4mslave1_BID_0_3to0(3 downto 0) );

 AXI4_Interconnect_0_AXI4mslave1_RID_0_4to4(4) <= '0';
 AXI4_Interconnect_0_AXI4mslave1_RID_0_3to0(3 downto 0) <= AXI4_Interconnect_0_AXI4mslave1_RID(3 downto 0);
 AXI4_Interconnect_0_AXI4mslave1_RID_0 <= ( AXI4_Interconnect_0_AXI4mslave1_RID_0_4to4(4) & AXI4_Interconnect_0_AXI4mslave1_RID_0_3to0(3 downto 0) );

 CORAXITOAHBL_0_0_AHBMasterIF_HRESP_0_0to0(0) <= CORAXITOAHBL_0_0_AHBMasterIF_HRESP(0);
 CORAXITOAHBL_0_0_AHBMasterIF_HRESP_0 <= ( CORAXITOAHBL_0_0_AHBMasterIF_HRESP_0_0to0(0) );

 MiV_AXI_0_MEM_MST_AXI4_ARLOCK_0_1to1(1) <= '0';
 MiV_AXI_0_MEM_MST_AXI4_ARLOCK_0_0to0(0) <= MiV_AXI_0_MEM_MST_AXI4_ARLOCK;
 MiV_AXI_0_MEM_MST_AXI4_ARLOCK_0 <= ( MiV_AXI_0_MEM_MST_AXI4_ARLOCK_0_1to1(1) & MiV_AXI_0_MEM_MST_AXI4_ARLOCK_0_0to0(0) );

 MiV_AXI_0_MEM_MST_AXI4_AWLOCK_0_1to1(1) <= '0';
 MiV_AXI_0_MEM_MST_AXI4_AWLOCK_0_0to0(0) <= MiV_AXI_0_MEM_MST_AXI4_AWLOCK;
 MiV_AXI_0_MEM_MST_AXI4_AWLOCK_0 <= ( MiV_AXI_0_MEM_MST_AXI4_AWLOCK_0_1to1(1) & MiV_AXI_0_MEM_MST_AXI4_AWLOCK_0_0to0(0) );

 MiV_AXI_0_MMIO_MST_AXI4_ARADDR_0_31to31(31) <= '0';
 MiV_AXI_0_MMIO_MST_AXI4_ARADDR_0_30to0(30 downto 0) <= MiV_AXI_0_MMIO_MST_AXI4_ARADDR(30 downto 0);
 MiV_AXI_0_MMIO_MST_AXI4_ARADDR_0 <= ( MiV_AXI_0_MMIO_MST_AXI4_ARADDR_0_31to31(31) & MiV_AXI_0_MMIO_MST_AXI4_ARADDR_0_30to0(30 downto 0) );

 MiV_AXI_0_MMIO_MST_AXI4_ARLOCK_0_1to1(1) <= '0';
 MiV_AXI_0_MMIO_MST_AXI4_ARLOCK_0_0to0(0) <= MiV_AXI_0_MMIO_MST_AXI4_ARLOCK;
 MiV_AXI_0_MMIO_MST_AXI4_ARLOCK_0 <= ( MiV_AXI_0_MMIO_MST_AXI4_ARLOCK_0_1to1(1) & MiV_AXI_0_MMIO_MST_AXI4_ARLOCK_0_0to0(0) );

 MiV_AXI_0_MMIO_MST_AXI4_AWADDR_0_31to31(31) <= '0';
 MiV_AXI_0_MMIO_MST_AXI4_AWADDR_0_30to0(30 downto 0) <= MiV_AXI_0_MMIO_MST_AXI4_AWADDR(30 downto 0);
 MiV_AXI_0_MMIO_MST_AXI4_AWADDR_0 <= ( MiV_AXI_0_MMIO_MST_AXI4_AWADDR_0_31to31(31) & MiV_AXI_0_MMIO_MST_AXI4_AWADDR_0_30to0(30 downto 0) );

 MiV_AXI_0_MMIO_MST_AXI4_AWLOCK_0_1to1(1) <= '0';
 MiV_AXI_0_MMIO_MST_AXI4_AWLOCK_0_0to0(0) <= MiV_AXI_0_MMIO_MST_AXI4_AWLOCK;
 MiV_AXI_0_MMIO_MST_AXI4_AWLOCK_0 <= ( MiV_AXI_0_MMIO_MST_AXI4_AWLOCK_0_1to1(1) & MiV_AXI_0_MMIO_MST_AXI4_AWLOCK_0_0to0(0) );

----------------------------------------------------------------------
-- Component instances
----------------------------------------------------------------------
-- APB3_0
APB3_0 : APB3
    port map( 
        -- Inputs
        PSEL       => COREAHBTOAPB3_0_0_APBmaster_PSELx,
        PENABLE    => COREAHBTOAPB3_0_0_APBmaster_PENABLE,
        PWRITE     => COREAHBTOAPB3_0_0_APBmaster_PWRITE,
        PREADYS0   => APB3_0_APBmslave0_PREADY,
        PSLVERRS0  => APB3_0_APBmslave0_PSLVERR,
        PREADYS1   => APB3_0_APBmslave1_PREADY,
        PSLVERRS1  => APB3_0_APBmslave1_PSLVERR,
        PREADYS2   => APB3_0_APBmslave2_PREADY,
        PSLVERRS2  => APB3_0_APBmslave2_PSLVERR,
        PREADYS3   => VCC_net, -- tied to '1' from definition
        PSLVERRS3  => GND_net, -- tied to '0' from definition
        PREADYS4   => APB3_0_APBmslave4_PREADY,
        PSLVERRS4  => APB3_0_APBmslave4_PSLVERR,
        PREADYS5   => APB3_0_APBmslave5_PREADY,
        PSLVERRS5  => APB3_0_APBmslave5_PSLVERR,
        PREADYS6   => APB3_0_APBmslave6_PREADY,
        PSLVERRS6  => APB3_0_APBmslave6_PSLVERR,
        PREADYS7   => APB3_0_APBmslave7_PREADY,
        PSLVERRS7  => APB3_0_APBmslave7_PSLVERR,
        PREADYS8   => APB3_0_APBmslave8_PREADY,
        PSLVERRS8  => APB3_0_APBmslave8_PSLVERR,
        PREADYS9   => APB3_0_APBmslave9_PREADY,
        PSLVERRS9  => APB3_0_APBmslave9_PSLVERR,
        PREADYS10  => APB3_0_APBmslave10_PREADY,
        PSLVERRS10 => APB3_0_APBmslave10_PSLVERR,
        PREADYS11  => APB3_0_APBmslave11_PREADY,
        PSLVERRS11 => APB3_0_APBmslave11_PSLVERR,
        PREADYS12  => APB3_0_APBmslave12_PREADY,
        PSLVERRS12 => APB3_0_APBmslave12_PSLVERR,
        PREADYS13  => APB3_0_APBmslave13_PREADY,
        PSLVERRS13 => APB3_0_APBmslave13_PSLVERR,
        PADDR      => COREAHBTOAPB3_0_0_APBmaster_PADDR,
        PWDATA     => COREAHBTOAPB3_0_0_APBmaster_PWDATA,
        PRDATAS0   => APB3_0_APBmslave0_PRDATA_0,
        PRDATAS1   => APB3_0_APBmslave1_PRDATA,
        PRDATAS2   => APB3_0_APBmslave2_PRDATA,
        PRDATAS3   => APB3_0_APBmslave3_PRDATA_0,
        PRDATAS4   => APB3_0_APBmslave4_PRDATA_0,
        PRDATAS5   => APB3_0_APBmslave5_PRDATA_0,
        PRDATAS6   => APB3_0_APBmslave6_PRDATA_0,
        PRDATAS7   => APB3_0_APBmslave7_PRDATA_0,
        PRDATAS8   => APB3_0_APBmslave8_PRDATA_0,
        PRDATAS9   => APB3_0_APBmslave9_PRDATA_0,
        PRDATAS10  => APB3_0_APBmslave10_PRDATA_0,
        PRDATAS11  => APB3_0_APBmslave11_PRDATA_0,
        PRDATAS12  => APB3_0_APBmslave12_PRDATA_0,
        PRDATAS13  => APB3_0_APBmslave13_PRDATA_0,
        -- Outputs
        PREADY     => COREAHBTOAPB3_0_0_APBmaster_PREADY,
        PSLVERR    => COREAHBTOAPB3_0_0_APBmaster_PSLVERR,
        PSELS0     => APB3_0_APBmslave0_PSELx,
        PENABLES   => APB3_0_APBmslave0_PENABLE,
        PWRITES    => APB3_0_APBmslave0_PWRITE,
        PSELS1     => APB3_0_APBmslave1_PSELx,
        PSELS2     => APB3_0_APBmslave2_PSELx,
        PSELS3     => APB3_0_APBmslave3_PSELx,
        PSELS4     => APB3_0_APBmslave4_PSELx,
        PSELS5     => APB3_0_APBmslave5_PSELx,
        PSELS6     => APB3_0_APBmslave6_PSELx,
        PSELS7     => APB3_0_APBmslave7_PSELx,
        PSELS8     => APB3_0_APBmslave8_PSELx,
        PSELS9     => APB3_0_APBmslave9_PSELx,
        PSELS10    => APB3_0_APBmslave10_PSELx,
        PSELS11    => APB3_0_APBmslave11_PSELx,
        PSELS12    => APB3_0_APBmslave12_PSELx,
        PSELS13    => APB3_0_APBmslave13_PSELx,
        PRDATA     => COREAHBTOAPB3_0_0_APBmaster_PRDATA,
        PADDRS     => APB3_0_APBmslave0_PADDR,
        PWDATAS    => APB3_0_APBmslave0_PWDATA 
        );
-- AXI4_Interconnect_0
AXI4_Interconnect_0 : AXI4_Interconnect
    port map( 
        -- Inputs
        ACLK                       => CCC_0_0_OUT0_FABCLK_0,
        ARESETN                    => reset_syn_0_0_FABRIC_RESET_N,
        S_CLK1                     => DDR3_0_0_SYS_CLK,
        SLAVE0_AWREADY             => AXI4_Interconnect_0_AXI4mslave0_AWREADY,
        SLAVE0_WREADY              => AXI4_Interconnect_0_AXI4mslave0_WREADY,
        SLAVE0_BVALID              => AXI4_Interconnect_0_AXI4mslave0_BVALID,
        SLAVE0_ARREADY             => AXI4_Interconnect_0_AXI4mslave0_ARREADY,
        SLAVE0_RLAST               => AXI4_Interconnect_0_AXI4mslave0_RLAST,
        SLAVE0_RVALID              => AXI4_Interconnect_0_AXI4mslave0_RVALID,
        SLAVE1_AWREADY             => AXI4_Interconnect_0_AXI4mslave1_AWREADY,
        SLAVE1_WREADY              => AXI4_Interconnect_0_AXI4mslave1_WREADY,
        SLAVE1_BVALID              => AXI4_Interconnect_0_AXI4mslave1_BVALID,
        SLAVE1_ARREADY             => AXI4_Interconnect_0_AXI4mslave1_ARREADY,
        SLAVE1_RLAST               => AXI4_Interconnect_0_AXI4mslave1_RLAST,
        SLAVE1_RVALID              => AXI4_Interconnect_0_AXI4mslave1_RVALID,
        MASTER0_AWVALID            => MiV_AXI_0_MEM_MST_AXI4_AWVALID,
        MASTER0_WLAST              => MiV_AXI_0_MEM_MST_AXI4_WLAST,
        MASTER0_WVALID             => MiV_AXI_0_MEM_MST_AXI4_WVALID,
        MASTER0_BREADY             => MiV_AXI_0_MEM_MST_AXI4_BREADY,
        MASTER0_ARVALID            => MiV_AXI_0_MEM_MST_AXI4_ARVALID,
        MASTER0_RREADY             => MiV_AXI_0_MEM_MST_AXI4_RREADY,
        MASTER1_AWVALID            => MiV_AXI_0_MMIO_MST_AXI4_AWVALID,
        MASTER1_WLAST              => MiV_AXI_0_MMIO_MST_AXI4_WLAST,
        MASTER1_WVALID             => MiV_AXI_0_MMIO_MST_AXI4_WVALID,
        MASTER1_BREADY             => MiV_AXI_0_MMIO_MST_AXI4_BREADY,
        MASTER1_ARVALID            => MiV_AXI_0_MMIO_MST_AXI4_ARVALID,
        MASTER1_RREADY             => MiV_AXI_0_MMIO_MST_AXI4_RREADY,
        SLAVE2_AWREADY             => AXI4_Interconnect_0_AXI3mslave2_AWREADY,
        SLAVE2_WREADY              => AXI4_Interconnect_0_AXI3mslave2_WREADY,
        SLAVE2_BVALID              => AXI4_Interconnect_0_AXI3mslave2_BVALID,
        SLAVE2_ARREADY             => AXI4_Interconnect_0_AXI3mslave2_ARREADY,
        SLAVE2_RLAST               => AXI4_Interconnect_0_AXI3mslave2_RLAST,
        SLAVE2_RVALID              => AXI4_Interconnect_0_AXI3mslave2_RVALID,
        SLAVE0_BID                 => AXI4_Interconnect_0_AXI4mslave0_BID,
        SLAVE0_BRESP               => AXI4_Interconnect_0_AXI4mslave0_BRESP,
        SLAVE0_RID                 => AXI4_Interconnect_0_AXI4mslave0_RID,
        SLAVE0_RDATA               => AXI4_Interconnect_0_AXI4mslave0_RDATA,
        SLAVE0_RRESP               => AXI4_Interconnect_0_AXI4mslave0_RRESP,
        SLAVE0_BUSER(0)            => GND_net, -- tied to '0' from definition
        SLAVE0_RUSER(0)            => GND_net, -- tied to '0' from definition
        SLAVE1_BID                 => AXI4_Interconnect_0_AXI4mslave1_BID_0,
        SLAVE1_BRESP               => AXI4_Interconnect_0_AXI4mslave1_BRESP,
        SLAVE1_RID                 => AXI4_Interconnect_0_AXI4mslave1_RID_0,
        SLAVE1_RDATA               => AXI4_Interconnect_0_AXI4mslave1_RDATA,
        SLAVE1_RRESP               => AXI4_Interconnect_0_AXI4mslave1_RRESP,
        SLAVE1_BUSER(0)            => GND_net, -- tied to '0' from definition
        SLAVE1_RUSER(0)            => GND_net, -- tied to '0' from definition
        MASTER0_AWID               => MiV_AXI_0_MEM_MST_AXI4_AWID,
        MASTER0_AWADDR             => MiV_AXI_0_MEM_MST_AXI4_AWADDR,
        MASTER0_AWLEN              => MiV_AXI_0_MEM_MST_AXI4_AWLEN,
        MASTER0_AWSIZE             => MiV_AXI_0_MEM_MST_AXI4_AWSIZE,
        MASTER0_AWBURST            => MiV_AXI_0_MEM_MST_AXI4_AWBURST,
        MASTER0_AWLOCK(1 downto 0) => MiV_AXI_0_MEM_MST_AXI4_AWLOCK_0,
        MASTER0_AWCACHE            => MiV_AXI_0_MEM_MST_AXI4_AWCACHE,
        MASTER0_AWPROT             => MiV_AXI_0_MEM_MST_AXI4_AWPROT,
        MASTER0_AWQOS              => MiV_AXI_0_MEM_MST_AXI4_AWQOS,
        MASTER0_AWREGION           => MASTER0_AWREGION_const_net_0, -- tied to X"0" from definition
        MASTER0_WDATA              => MiV_AXI_0_MEM_MST_AXI4_WDATA,
        MASTER0_WSTRB              => MiV_AXI_0_MEM_MST_AXI4_WSTRB,
        MASTER0_ARID               => MiV_AXI_0_MEM_MST_AXI4_ARID,
        MASTER0_ARADDR             => MiV_AXI_0_MEM_MST_AXI4_ARADDR,
        MASTER0_ARLEN              => MiV_AXI_0_MEM_MST_AXI4_ARLEN,
        MASTER0_ARSIZE             => MiV_AXI_0_MEM_MST_AXI4_ARSIZE,
        MASTER0_ARBURST            => MiV_AXI_0_MEM_MST_AXI4_ARBURST,
        MASTER0_ARLOCK(1 downto 0) => MiV_AXI_0_MEM_MST_AXI4_ARLOCK_0,
        MASTER0_ARCACHE            => MiV_AXI_0_MEM_MST_AXI4_ARCACHE,
        MASTER0_ARPROT             => MiV_AXI_0_MEM_MST_AXI4_ARPROT,
        MASTER0_ARQOS              => MiV_AXI_0_MEM_MST_AXI4_ARQOS,
        MASTER0_ARREGION           => MASTER0_ARREGION_const_net_0, -- tied to X"0" from definition
        MASTER0_AWUSER(0)          => GND_net, -- tied to '0' from definition
        MASTER0_WUSER(0)           => GND_net, -- tied to '0' from definition
        MASTER0_ARUSER(0)          => GND_net, -- tied to '0' from definition
        MASTER1_AWID               => MiV_AXI_0_MMIO_MST_AXI4_AWID,
        MASTER1_AWADDR             => MiV_AXI_0_MMIO_MST_AXI4_AWADDR_0,
        MASTER1_AWLEN              => MiV_AXI_0_MMIO_MST_AXI4_AWLEN,
        MASTER1_AWSIZE             => MiV_AXI_0_MMIO_MST_AXI4_AWSIZE,
        MASTER1_AWBURST            => MiV_AXI_0_MMIO_MST_AXI4_AWBURST,
        MASTER1_AWLOCK(1 downto 0) => MiV_AXI_0_MMIO_MST_AXI4_AWLOCK_0,
        MASTER1_AWCACHE            => MiV_AXI_0_MMIO_MST_AXI4_AWCACHE,
        MASTER1_AWPROT             => MiV_AXI_0_MMIO_MST_AXI4_AWPROT,
        MASTER1_AWQOS              => MiV_AXI_0_MMIO_MST_AXI4_AWQOS,
        MASTER1_AWREGION           => MASTER1_AWREGION_const_net_0, -- tied to X"0" from definition
        MASTER1_WDATA              => MiV_AXI_0_MMIO_MST_AXI4_WDATA,
        MASTER1_WSTRB              => MiV_AXI_0_MMIO_MST_AXI4_WSTRB,
        MASTER1_ARID               => MiV_AXI_0_MMIO_MST_AXI4_ARID,
        MASTER1_ARADDR             => MiV_AXI_0_MMIO_MST_AXI4_ARADDR_0,
        MASTER1_ARLEN              => MiV_AXI_0_MMIO_MST_AXI4_ARLEN,
        MASTER1_ARSIZE             => MiV_AXI_0_MMIO_MST_AXI4_ARSIZE,
        MASTER1_ARBURST            => MiV_AXI_0_MMIO_MST_AXI4_ARBURST,
        MASTER1_ARLOCK(1 downto 0) => MiV_AXI_0_MMIO_MST_AXI4_ARLOCK_0,
        MASTER1_ARCACHE            => MiV_AXI_0_MMIO_MST_AXI4_ARCACHE,
        MASTER1_ARPROT             => MiV_AXI_0_MMIO_MST_AXI4_ARPROT,
        MASTER1_ARQOS              => MiV_AXI_0_MMIO_MST_AXI4_ARQOS,
        MASTER1_ARREGION           => MASTER1_ARREGION_const_net_0, -- tied to X"0" from definition
        MASTER1_AWUSER(0)          => GND_net, -- tied to '0' from definition
        MASTER1_WUSER(0)           => GND_net, -- tied to '0' from definition
        MASTER1_ARUSER(0)          => GND_net, -- tied to '0' from definition
        SLAVE2_BID                 => AXI4_Interconnect_0_AXI3mslave2_BID_0,
        SLAVE2_BRESP               => AXI4_Interconnect_0_AXI3mslave2_BRESP,
        SLAVE2_RID                 => AXI4_Interconnect_0_AXI3mslave2_RID_0,
        SLAVE2_RDATA               => AXI4_Interconnect_0_AXI3mslave2_RDATA,
        SLAVE2_RRESP               => AXI4_Interconnect_0_AXI3mslave2_RRESP,
        SLAVE2_BUSER(0)            => GND_net, -- tied to '0' from definition
        SLAVE2_RUSER(0)            => GND_net, -- tied to '0' from definition
        -- Outputs
        SLAVE0_AWVALID             => AXI4_Interconnect_0_AXI4mslave0_AWVALID,
        SLAVE0_WLAST               => AXI4_Interconnect_0_AXI4mslave0_WLAST,
        SLAVE0_WVALID              => AXI4_Interconnect_0_AXI4mslave0_WVALID,
        SLAVE0_BREADY              => AXI4_Interconnect_0_AXI4mslave0_BREADY,
        SLAVE0_ARVALID             => AXI4_Interconnect_0_AXI4mslave0_ARVALID,
        SLAVE0_RREADY              => AXI4_Interconnect_0_AXI4mslave0_RREADY,
        SLAVE1_AWVALID             => AXI4_Interconnect_0_AXI4mslave1_AWVALID,
        SLAVE1_WLAST               => AXI4_Interconnect_0_AXI4mslave1_WLAST,
        SLAVE1_WVALID              => AXI4_Interconnect_0_AXI4mslave1_WVALID,
        SLAVE1_BREADY              => AXI4_Interconnect_0_AXI4mslave1_BREADY,
        SLAVE1_ARVALID             => AXI4_Interconnect_0_AXI4mslave1_ARVALID,
        SLAVE1_RREADY              => AXI4_Interconnect_0_AXI4mslave1_RREADY,
        MASTER0_AWREADY            => MiV_AXI_0_MEM_MST_AXI4_AWREADY,
        MASTER0_WREADY             => MiV_AXI_0_MEM_MST_AXI4_WREADY,
        MASTER0_BVALID             => MiV_AXI_0_MEM_MST_AXI4_BVALID,
        MASTER0_ARREADY            => MiV_AXI_0_MEM_MST_AXI4_ARREADY,
        MASTER0_RLAST              => MiV_AXI_0_MEM_MST_AXI4_RLAST,
        MASTER0_RVALID             => MiV_AXI_0_MEM_MST_AXI4_RVALID,
        MASTER1_AWREADY            => MiV_AXI_0_MMIO_MST_AXI4_AWREADY,
        MASTER1_WREADY             => MiV_AXI_0_MMIO_MST_AXI4_WREADY,
        MASTER1_BVALID             => MiV_AXI_0_MMIO_MST_AXI4_BVALID,
        MASTER1_ARREADY            => MiV_AXI_0_MMIO_MST_AXI4_ARREADY,
        MASTER1_RLAST              => MiV_AXI_0_MMIO_MST_AXI4_RLAST,
        MASTER1_RVALID             => MiV_AXI_0_MMIO_MST_AXI4_RVALID,
        SLAVE2_AWVALID             => AXI4_Interconnect_0_AXI3mslave2_AWVALID,
        SLAVE2_WLAST               => AXI4_Interconnect_0_AXI3mslave2_WLAST,
        SLAVE2_WVALID              => AXI4_Interconnect_0_AXI3mslave2_WVALID,
        SLAVE2_BREADY              => AXI4_Interconnect_0_AXI3mslave2_BREADY,
        SLAVE2_ARVALID             => AXI4_Interconnect_0_AXI3mslave2_ARVALID,
        SLAVE2_RREADY              => AXI4_Interconnect_0_AXI3mslave2_RREADY,
        SLAVE0_AWID                => AXI4_Interconnect_0_AXI4mslave0_AWID,
        SLAVE0_AWADDR              => AXI4_Interconnect_0_AXI4mslave0_AWADDR,
        SLAVE0_AWLEN               => AXI4_Interconnect_0_AXI4mslave0_AWLEN,
        SLAVE0_AWSIZE              => AXI4_Interconnect_0_AXI4mslave0_AWSIZE,
        SLAVE0_AWBURST             => AXI4_Interconnect_0_AXI4mslave0_AWBURST,
        SLAVE0_AWLOCK              => AXI4_Interconnect_0_AXI4mslave0_AWLOCK,
        SLAVE0_AWCACHE             => AXI4_Interconnect_0_AXI4mslave0_AWCACHE,
        SLAVE0_AWPROT              => AXI4_Interconnect_0_AXI4mslave0_AWPROT,
        SLAVE0_AWQOS               => AXI4_Interconnect_0_AXI4mslave0_AWQOS,
        SLAVE0_AWREGION            => AXI4_Interconnect_0_AXI4mslave0_AWREGION,
        SLAVE0_WDATA               => AXI4_Interconnect_0_AXI4mslave0_WDATA,
        SLAVE0_WSTRB               => AXI4_Interconnect_0_AXI4mslave0_WSTRB,
        SLAVE0_ARID                => AXI4_Interconnect_0_AXI4mslave0_ARID,
        SLAVE0_ARADDR              => AXI4_Interconnect_0_AXI4mslave0_ARADDR,
        SLAVE0_ARLEN               => AXI4_Interconnect_0_AXI4mslave0_ARLEN,
        SLAVE0_ARSIZE              => AXI4_Interconnect_0_AXI4mslave0_ARSIZE,
        SLAVE0_ARBURST             => AXI4_Interconnect_0_AXI4mslave0_ARBURST,
        SLAVE0_ARLOCK              => AXI4_Interconnect_0_AXI4mslave0_ARLOCK,
        SLAVE0_ARCACHE             => AXI4_Interconnect_0_AXI4mslave0_ARCACHE,
        SLAVE0_ARPROT              => AXI4_Interconnect_0_AXI4mslave0_ARPROT,
        SLAVE0_ARQOS               => AXI4_Interconnect_0_AXI4mslave0_ARQOS,
        SLAVE0_ARREGION            => AXI4_Interconnect_0_AXI4mslave0_ARREGION,
        SLAVE0_AWUSER              => AXI4_Interconnect_0_AXI4mslave0_AWUSER,
        SLAVE0_WUSER               => AXI4_Interconnect_0_AXI4mslave0_WUSER,
        SLAVE0_ARUSER              => AXI4_Interconnect_0_AXI4mslave0_ARUSER,
        SLAVE1_AWID                => AXI4_Interconnect_0_AXI4mslave1_AWID,
        SLAVE1_AWADDR              => AXI4_Interconnect_0_AXI4mslave1_AWADDR,
        SLAVE1_AWLEN               => AXI4_Interconnect_0_AXI4mslave1_AWLEN,
        SLAVE1_AWSIZE              => AXI4_Interconnect_0_AXI4mslave1_AWSIZE,
        SLAVE1_AWBURST             => AXI4_Interconnect_0_AXI4mslave1_AWBURST,
        SLAVE1_AWLOCK              => AXI4_Interconnect_0_AXI4mslave1_AWLOCK,
        SLAVE1_AWCACHE             => AXI4_Interconnect_0_AXI4mslave1_AWCACHE,
        SLAVE1_AWPROT              => AXI4_Interconnect_0_AXI4mslave1_AWPROT,
        SLAVE1_AWQOS               => AXI4_Interconnect_0_AXI4mslave1_AWQOS,
        SLAVE1_AWREGION            => AXI4_Interconnect_0_AXI4mslave1_AWREGION,
        SLAVE1_WDATA               => AXI4_Interconnect_0_AXI4mslave1_WDATA,
        SLAVE1_WSTRB               => AXI4_Interconnect_0_AXI4mslave1_WSTRB,
        SLAVE1_ARID                => AXI4_Interconnect_0_AXI4mslave1_ARID,
        SLAVE1_ARADDR              => AXI4_Interconnect_0_AXI4mslave1_ARADDR,
        SLAVE1_ARLEN               => AXI4_Interconnect_0_AXI4mslave1_ARLEN,
        SLAVE1_ARSIZE              => AXI4_Interconnect_0_AXI4mslave1_ARSIZE,
        SLAVE1_ARBURST             => AXI4_Interconnect_0_AXI4mslave1_ARBURST,
        SLAVE1_ARLOCK              => AXI4_Interconnect_0_AXI4mslave1_ARLOCK,
        SLAVE1_ARCACHE             => AXI4_Interconnect_0_AXI4mslave1_ARCACHE,
        SLAVE1_ARPROT              => AXI4_Interconnect_0_AXI4mslave1_ARPROT,
        SLAVE1_ARQOS               => AXI4_Interconnect_0_AXI4mslave1_ARQOS,
        SLAVE1_ARREGION            => AXI4_Interconnect_0_AXI4mslave1_ARREGION,
        SLAVE1_AWUSER              => AXI4_Interconnect_0_AXI4mslave1_AWUSER,
        SLAVE1_WUSER               => AXI4_Interconnect_0_AXI4mslave1_WUSER,
        SLAVE1_ARUSER              => AXI4_Interconnect_0_AXI4mslave1_ARUSER,
        MASTER0_BID                => MiV_AXI_0_MEM_MST_AXI4_BID,
        MASTER0_BRESP              => MiV_AXI_0_MEM_MST_AXI4_BRESP,
        MASTER0_RID                => MiV_AXI_0_MEM_MST_AXI4_RID,
        MASTER0_RDATA              => MiV_AXI_0_MEM_MST_AXI4_RDATA,
        MASTER0_RRESP              => MiV_AXI_0_MEM_MST_AXI4_RRESP,
        MASTER0_BUSER              => MiV_AXI_0_MEM_MST_AXI4_BUSER,
        MASTER0_RUSER              => MiV_AXI_0_MEM_MST_AXI4_RUSER,
        MASTER1_BID                => MiV_AXI_0_MMIO_MST_AXI4_BID,
        MASTER1_BRESP              => MiV_AXI_0_MMIO_MST_AXI4_BRESP,
        MASTER1_RID                => MiV_AXI_0_MMIO_MST_AXI4_RID,
        MASTER1_RDATA              => MiV_AXI_0_MMIO_MST_AXI4_RDATA,
        MASTER1_RRESP              => MiV_AXI_0_MMIO_MST_AXI4_RRESP,
        MASTER1_BUSER              => MiV_AXI_0_MMIO_MST_AXI4_BUSER,
        MASTER1_RUSER              => MiV_AXI_0_MMIO_MST_AXI4_RUSER,
        SLAVE2_AWID                => AXI4_Interconnect_0_AXI3mslave2_AWID,
        SLAVE2_AWADDR              => AXI4_Interconnect_0_AXI3mslave2_AWADDR,
        SLAVE2_AWLEN               => AXI4_Interconnect_0_AXI3mslave2_AWLEN,
        SLAVE2_AWSIZE              => AXI4_Interconnect_0_AXI3mslave2_AWSIZE,
        SLAVE2_AWBURST             => AXI4_Interconnect_0_AXI3mslave2_AWBURST,
        SLAVE2_AWLOCK              => AXI4_Interconnect_0_AXI3mslave2_AWLOCK,
        SLAVE2_AWCACHE             => AXI4_Interconnect_0_AXI3mslave2_AWCACHE,
        SLAVE2_AWPROT              => AXI4_Interconnect_0_AXI3mslave2_AWPROT,
        SLAVE2_WID                 => AXI4_Interconnect_0_AXI3mslave2_WID,
        SLAVE2_WDATA               => AXI4_Interconnect_0_AXI3mslave2_WDATA,
        SLAVE2_WSTRB               => AXI4_Interconnect_0_AXI3mslave2_WSTRB,
        SLAVE2_ARID                => AXI4_Interconnect_0_AXI3mslave2_ARID,
        SLAVE2_ARADDR              => AXI4_Interconnect_0_AXI3mslave2_ARADDR,
        SLAVE2_ARLEN               => AXI4_Interconnect_0_AXI3mslave2_ARLEN,
        SLAVE2_ARSIZE              => AXI4_Interconnect_0_AXI3mslave2_ARSIZE,
        SLAVE2_ARBURST             => AXI4_Interconnect_0_AXI3mslave2_ARBURST,
        SLAVE2_ARLOCK              => AXI4_Interconnect_0_AXI3mslave2_ARLOCK,
        SLAVE2_ARCACHE             => AXI4_Interconnect_0_AXI3mslave2_ARCACHE,
        SLAVE2_ARPROT              => AXI4_Interconnect_0_AXI3mslave2_ARPROT,
        SLAVE2_AWUSER              => AXI4_Interconnect_0_AXI3mslave2_AWUSER,
        SLAVE2_WUSER               => AXI4_Interconnect_0_AXI3mslave2_WUSER,
        SLAVE2_ARUSER              => AXI4_Interconnect_0_AXI3mslave2_ARUSER 
        );
-- CCC_0_0
CCC_0_0 : CCC_0
    port map( 
        -- Inputs
        REF_CLK_0     => REF_CLK_0,
        -- Outputs
        OUT0_FABCLK_0 => CCC_0_0_OUT0_FABCLK_0,
        PLL_LOCK_0    => CCC_0_0_PLL_LOCK_0 
        );
-- CORAXITOAHBL_0_0
CORAXITOAHBL_0_0 : CORAXITOAHBL_0
    port map( 
        -- Inputs
        ACLK     => CCC_0_0_OUT0_FABCLK_0,
        ARESETN  => reset_syn_0_0_FABRIC_RESET_N,
        HCLK     => CCC_0_0_OUT0_FABCLK_0,
        HRESETN  => reset_syn_0_0_FABRIC_RESET_N,
        AWVALID  => AXI4_Interconnect_0_AXI3mslave2_AWVALID,
        WLAST    => AXI4_Interconnect_0_AXI3mslave2_WLAST,
        WVALID   => AXI4_Interconnect_0_AXI3mslave2_WVALID,
        BREADY   => AXI4_Interconnect_0_AXI3mslave2_BREADY,
        ARVALID  => AXI4_Interconnect_0_AXI3mslave2_ARVALID,
        RREADY   => AXI4_Interconnect_0_AXI3mslave2_RREADY,
        HRESP    => CORAXITOAHBL_0_0_AHBMasterIF_HRESP_0,
        HREADYIN => CORAXITOAHBL_0_0_AHBMasterIF_HREADY,
        AWID     => AXI4_Interconnect_0_AXI3mslave2_AWID_0,
        AWADDR   => AXI4_Interconnect_0_AXI3mslave2_AWADDR,
        AWLEN    => AXI4_Interconnect_0_AXI3mslave2_AWLEN_0,
        AWSIZE   => AXI4_Interconnect_0_AXI3mslave2_AWSIZE,
        AWBURST  => AXI4_Interconnect_0_AXI3mslave2_AWBURST,
        WDATA    => AXI4_Interconnect_0_AXI3mslave2_WDATA,
        WSTRB    => AXI4_Interconnect_0_AXI3mslave2_WSTRB,
        ARID     => AXI4_Interconnect_0_AXI3mslave2_ARID_0,
        ARADDR   => AXI4_Interconnect_0_AXI3mslave2_ARADDR,
        ARLEN    => AXI4_Interconnect_0_AXI3mslave2_ARLEN_0,
        ARSIZE   => AXI4_Interconnect_0_AXI3mslave2_ARSIZE,
        ARBURST  => AXI4_Interconnect_0_AXI3mslave2_ARBURST,
        WID_BIF  => AXI4_Interconnect_0_AXI3mslave2_WID_0,
        HRDATA   => CORAXITOAHBL_0_0_AHBMasterIF_HRDATA,
        -- Outputs
        AWREADY  => AXI4_Interconnect_0_AXI3mslave2_AWREADY,
        WREADY   => AXI4_Interconnect_0_AXI3mslave2_WREADY,
        BVALID   => AXI4_Interconnect_0_AXI3mslave2_BVALID,
        ARREADY  => AXI4_Interconnect_0_AXI3mslave2_ARREADY,
        RLAST    => AXI4_Interconnect_0_AXI3mslave2_RLAST,
        RVALID   => AXI4_Interconnect_0_AXI3mslave2_RVALID,
        HWRITE   => CORAXITOAHBL_0_0_AHBMasterIF_HWRITE,
        BID      => AXI4_Interconnect_0_AXI3mslave2_BID,
        BRESP    => AXI4_Interconnect_0_AXI3mslave2_BRESP,
        RID      => AXI4_Interconnect_0_AXI3mslave2_RID,
        RDATA    => AXI4_Interconnect_0_AXI3mslave2_RDATA,
        RRESP    => AXI4_Interconnect_0_AXI3mslave2_RRESP,
        HADDR    => CORAXITOAHBL_0_0_AHBMasterIF_HADDR,
        HTRANS   => CORAXITOAHBL_0_0_AHBMasterIF_HTRANS,
        HSIZE    => CORAXITOAHBL_0_0_AHBMasterIF_HSIZE,
        HBURST   => CORAXITOAHBL_0_0_AHBMasterIF_HBURST,
        HWDATA   => CORAXITOAHBL_0_0_AHBMasterIF_HWDATA 
        );
-- COREAHBLITE_0_0
COREAHBLITE_0_0 : COREAHBLITE_0
    port map( 
        -- Inputs
        HCLK         => CCC_0_0_OUT0_FABCLK_0,
        HRESETN      => reset_syn_0_0_FABRIC_RESET_N,
        REMAP_M0     => GND_net,
        HWRITE_M0    => CORAXITOAHBL_0_0_AHBMasterIF_HWRITE,
        HMASTLOCK_M0 => GND_net, -- tied to '0' from definition
        HREADYOUT_S6 => COREAHBLITE_0_0_AHBmslave6_HREADYOUT,
        HADDR_M0     => CORAXITOAHBL_0_0_AHBMasterIF_HADDR,
        HTRANS_M0    => CORAXITOAHBL_0_0_AHBMasterIF_HTRANS,
        HSIZE_M0     => CORAXITOAHBL_0_0_AHBMasterIF_HSIZE,
        HBURST_M0    => CORAXITOAHBL_0_0_AHBMasterIF_HBURST,
        HPROT_M0     => HPROT_M0_const_net_0, -- tied to X"0" from definition
        HWDATA_M0    => CORAXITOAHBL_0_0_AHBMasterIF_HWDATA,
        HRDATA_S6    => COREAHBLITE_0_0_AHBmslave6_HRDATA,
        HRESP_S6     => COREAHBLITE_0_0_AHBmslave6_HRESP,
        -- Outputs
        HREADY_M0    => CORAXITOAHBL_0_0_AHBMasterIF_HREADY,
        HWRITE_S6    => COREAHBLITE_0_0_AHBmslave6_HWRITE,
        HSEL_S6      => COREAHBLITE_0_0_AHBmslave6_HSELx,
        HREADY_S6    => COREAHBLITE_0_0_AHBmslave6_HREADY,
        HMASTLOCK_S6 => COREAHBLITE_0_0_AHBmslave6_HMASTLOCK,
        HRDATA_M0    => CORAXITOAHBL_0_0_AHBMasterIF_HRDATA,
        HRESP_M0     => CORAXITOAHBL_0_0_AHBMasterIF_HRESP,
        HADDR_S6     => COREAHBLITE_0_0_AHBmslave6_HADDR,
        HTRANS_S6    => COREAHBLITE_0_0_AHBmslave6_HTRANS,
        HSIZE_S6     => COREAHBLITE_0_0_AHBmslave6_HSIZE,
        HWDATA_S6    => COREAHBLITE_0_0_AHBmslave6_HWDATA,
        HBURST_S6    => COREAHBLITE_0_0_AHBmslave6_HBURST,
        HPROT_S6     => COREAHBLITE_0_0_AHBmslave6_HPROT 
        );
-- COREAHBTOAPB3_0_0
COREAHBTOAPB3_0_0 : COREAHBTOAPB3_0
    port map( 
        -- Inputs
        HCLK      => CCC_0_0_OUT0_FABCLK_0,
        HRESETN   => reset_syn_0_0_FABRIC_RESET_N,
        HWRITE    => COREAHBLITE_0_0_AHBmslave6_HWRITE,
        HSEL      => COREAHBLITE_0_0_AHBmslave6_HSELx,
        HREADY    => COREAHBLITE_0_0_AHBmslave6_HREADY,
        PREADY    => COREAHBTOAPB3_0_0_APBmaster_PREADY,
        PSLVERR   => COREAHBTOAPB3_0_0_APBmaster_PSLVERR,
        HADDR     => COREAHBLITE_0_0_AHBmslave6_HADDR,
        HTRANS    => COREAHBLITE_0_0_AHBmslave6_HTRANS,
        HWDATA    => COREAHBLITE_0_0_AHBmslave6_HWDATA,
        PRDATA    => COREAHBTOAPB3_0_0_APBmaster_PRDATA,
        -- Outputs
        HREADYOUT => COREAHBLITE_0_0_AHBmslave6_HREADYOUT,
        PSEL      => COREAHBTOAPB3_0_0_APBmaster_PSELx,
        PENABLE   => COREAHBTOAPB3_0_0_APBmaster_PENABLE,
        PWRITE    => COREAHBTOAPB3_0_0_APBmaster_PWRITE,
        HRDATA    => COREAHBLITE_0_0_AHBmslave6_HRDATA,
        HRESP     => COREAHBLITE_0_0_AHBmslave6_HRESP,
        PADDR     => COREAHBTOAPB3_0_0_APBmaster_PADDR,
        PWDATA    => COREAHBTOAPB3_0_0_APBmaster_PWDATA 
        );
-- COREI2C_C0_0
COREI2C_C0_0 : COREI2C_C0
    port map( 
        -- Inputs
        PCLK    => CCC_0_0_OUT0_FABCLK_0,
        PRESETN => reset_syn_0_0_FABRIC_RESET_N,
        PENABLE => APB3_0_APBmslave0_PENABLE,
        PSEL    => APB3_0_APBmslave3_PSELx,
        PWRITE  => APB3_0_APBmslave0_PWRITE,
        SCLI(0) => PF_IO_I2C_SCL_0_Y,
        SDAI(0) => PF_IO_I2C_SDA_0_Y,
        PADDR   => APB3_0_APBmslave0_PADDR_3,
        PWDATA  => APB3_0_APBmslave0_PWDATA_1,
        -- Outputs
        INT     => COREI2C_C0_0_INT,
        SCLO    => COREI2C_C0_0_SCLO,
        SDAO    => COREI2C_C0_0_SDAO,
        PRDATA  => APB3_0_APBmslave3_PRDATA 
        );
-- COREJTAGDebug_0_0
COREJTAGDebug_0_0 : COREJTAGDebug_0
    port map( 
        -- Inputs
        TRSTB       => TRSTB,
        TCK         => TCK,
        TMS         => TMS,
        TDI         => TDI,
        TGT_TDO_0   => MiV_AXI_0_TDO,
        -- Outputs
        TDO         => TDO_net_0,
        TGT_TRSTB_0 => COREJTAGDebug_0_0_TGT_TRSTB_0,
        TGT_TCK_0   => COREJTAGDebug_0_0_TGT_TCK_0,
        TGT_TMS_0   => COREJTAGDebug_0_0_TGT_TMS_0,
        TGT_TDI_0   => COREJTAGDebug_0_0_TGT_TDI_0 
        );
-- DDR3_0_0
DDR3_0_0 : DDR3_0
    port map( 
        -- Inputs
        PLL_REF_CLK  => CCC_0_0_OUT0_FABCLK_0,
        SYS_RESET_N  => reset_syn_1_0_FABRIC_RESET_N,
        axi0_awvalid => AXI4_Interconnect_0_AXI4mslave1_AWVALID,
        axi0_wlast   => AXI4_Interconnect_0_AXI4mslave1_WLAST,
        axi0_wvalid  => AXI4_Interconnect_0_AXI4mslave1_WVALID,
        axi0_bready  => AXI4_Interconnect_0_AXI4mslave1_BREADY,
        axi0_arvalid => AXI4_Interconnect_0_AXI4mslave1_ARVALID,
        axi0_rready  => AXI4_Interconnect_0_AXI4mslave1_RREADY,
        axi0_awid    => AXI4_Interconnect_0_AXI4mslave1_AWID_0,
        axi0_awaddr  => AXI4_Interconnect_0_AXI4mslave1_AWADDR,
        axi0_awlen   => AXI4_Interconnect_0_AXI4mslave1_AWLEN,
        axi0_awsize  => AXI4_Interconnect_0_AXI4mslave1_AWSIZE,
        axi0_awburst => AXI4_Interconnect_0_AXI4mslave1_AWBURST,
        axi0_awlock  => AXI4_Interconnect_0_AXI4mslave1_AWLOCK,
        axi0_awcache => AXI4_Interconnect_0_AXI4mslave1_AWCACHE,
        axi0_awprot  => AXI4_Interconnect_0_AXI4mslave1_AWPROT,
        axi0_wdata   => AXI4_Interconnect_0_AXI4mslave1_WDATA,
        axi0_wstrb   => AXI4_Interconnect_0_AXI4mslave1_WSTRB,
        axi0_arid    => AXI4_Interconnect_0_AXI4mslave1_ARID_0,
        axi0_araddr  => AXI4_Interconnect_0_AXI4mslave1_ARADDR,
        axi0_arlen   => AXI4_Interconnect_0_AXI4mslave1_ARLEN,
        axi0_arsize  => AXI4_Interconnect_0_AXI4mslave1_ARSIZE,
        axi0_arburst => AXI4_Interconnect_0_AXI4mslave1_ARBURST,
        axi0_arlock  => AXI4_Interconnect_0_AXI4mslave1_ARLOCK,
        axi0_arcache => AXI4_Interconnect_0_AXI4mslave1_ARCACHE,
        axi0_arprot  => AXI4_Interconnect_0_AXI4mslave1_ARPROT,
        -- Outputs
        CKE          => CKE_net_0,
        CS_N         => CS_N_net_0,
        ODT          => ODT_net_0,
        RAS_N        => RAS_N_net_0,
        CAS_N        => CAS_N_net_0,
        WE_N         => WE_N_net_0,
        RESET_N      => RESET_N_net_0,
        CK0          => CK0_net_0,
        CK0_N        => CK0_N_net_0,
        SHIELD0      => SHIELD0_net_0,
        SHIELD1      => SHIELD1_net_0,
        SYS_CLK      => DDR3_0_0_SYS_CLK,
        PLL_LOCK     => OPEN,
        axi0_awready => AXI4_Interconnect_0_AXI4mslave1_AWREADY,
        axi0_wready  => AXI4_Interconnect_0_AXI4mslave1_WREADY,
        axi0_bvalid  => AXI4_Interconnect_0_AXI4mslave1_BVALID,
        axi0_arready => AXI4_Interconnect_0_AXI4mslave1_ARREADY,
        axi0_rlast   => AXI4_Interconnect_0_AXI4mslave1_RLAST,
        axi0_rvalid  => AXI4_Interconnect_0_AXI4mslave1_RVALID,
        CTRLR_READY  => CTRLR_READY_net_0,
        DM           => DM_net_0,
        BA           => BA_net_0,
        A            => A_net_0,
        axi0_bid     => AXI4_Interconnect_0_AXI4mslave1_BID,
        axi0_bresp   => AXI4_Interconnect_0_AXI4mslave1_BRESP,
        axi0_rid     => AXI4_Interconnect_0_AXI4mslave1_RID,
        axi0_rdata   => AXI4_Interconnect_0_AXI4mslave1_RDATA,
        axi0_rresp   => AXI4_Interconnect_0_AXI4mslave1_RRESP,
        -- Inouts
        DQ           => DQ,
        DQS          => DQS,
        DQS_N        => DQS_N 
        );
-- GPIO_TOP_0
GPIO_TOP_0 : GPIO_TOP
    port map( 
        -- Inputs
        PRESETN => reset_syn_0_0_FABRIC_RESET_N,
        PCLK    => CCC_0_0_OUT0_FABCLK_0,
        PSEL    => APB3_0_APBmslave1_PSELx,
        PENABLE => APB3_0_APBmslave0_PENABLE,
        PWRITE  => APB3_0_APBmslave0_PWRITE,
        PADDR   => APB3_0_APBmslave0_PADDR_1,
        PWDATA  => APB3_0_APBmslave0_PWDATA,
        -- Outputs
        PREADY  => APB3_0_APBmslave1_PREADY,
        PSLVERR => APB3_0_APBmslave1_PSLVERR,
        INT     => OPEN,
        PRDATA  => APB3_0_APBmslave1_PRDATA,
        -- Inouts
        GPIO_0  => GPIO_0,
        GPIO_1  => GPIO_1,
        GPIO_2  => GPIO_2,
        GPIO_3  => GPIO_3,
        GPIO_4  => GPIO_4,
        GPIO_5  => GPIO_5,
        GPIO_6  => GPIO_6,
        GPIO_7  => GPIO_7,
        GPIO_8  => GPIO_8,
        GPIO_9  => GPIO_9,
        GPIO_10 => GPIO_10,
        GPIO_11 => GPIO_11,
        GPIO_12 => GPIO_12,
        GPIO_13 => GPIO_13,
        GPIO_14 => GPIO_14,
        GPIO_15 => GPIO_15,
        GPIO_16 => GPIO_16,
        GPIO_17 => GPIO_17,
        GPIO_18 => GPIO_18,
        GPIO_19 => GPIO_19,
        GPIO_20 => GPIO_20,
        GPIO_21 => GPIO_21,
        GPIO_22 => GPIO_22,
        GPIO_23 => GPIO_23,
        GPIO_24 => GPIO_24,
        GPIO_25 => GPIO_25,
        GPIO_26 => GPIO_26,
        GPIO_27 => GPIO_27,
        GPIO_28 => GPIO_28,
        GPIO_29 => GPIO_29,
        GPIO_30 => GPIO_30,
        GPIO_31 => GPIO_31 
        );
-- INIT_Monitor_0
INIT_Monitor_0 : INIT_Monitor
    port map( 
        -- Outputs
        FABRIC_POR_N               => OPEN,
        PCIE_INIT_DONE             => OPEN,
        USRAM_INIT_DONE            => OPEN,
        SRAM_INIT_DONE             => OPEN,
        DEVICE_INIT_DONE           => INIT_Monitor_0_DEVICE_INIT_DONE,
        XCVR_INIT_DONE             => OPEN,
        USRAM_INIT_FROM_SNVM_DONE  => OPEN,
        USRAM_INIT_FROM_UPROM_DONE => OPEN,
        USRAM_INIT_FROM_SPI_DONE   => OPEN,
        SRAM_INIT_FROM_SNVM_DONE   => OPEN,
        SRAM_INIT_FROM_UPROM_DONE  => OPEN,
        SRAM_INIT_FROM_SPI_DONE    => OPEN,
        AUTOCALIB_DONE             => OPEN,
        BANK_1_CALIB_STATUS        => INIT_Monitor_0_BANK_1_CALIB_STATUS 
        );
-- LSRAM_0
LSRAM_0 : LSRAM
    port map( 
        -- Inputs
        ACLK    => CCC_0_0_OUT0_FABCLK_0,
        ARESETN => reset_syn_0_0_FABRIC_RESET_N,
        AWVALID => AXI4_Interconnect_0_AXI4mslave0_AWVALID,
        WLAST   => AXI4_Interconnect_0_AXI4mslave0_WLAST,
        WVALID  => AXI4_Interconnect_0_AXI4mslave0_WVALID,
        BREADY  => AXI4_Interconnect_0_AXI4mslave0_BREADY,
        ARVALID => AXI4_Interconnect_0_AXI4mslave0_ARVALID,
        RREADY  => AXI4_Interconnect_0_AXI4mslave0_RREADY,
        AWADDR  => AXI4_Interconnect_0_AXI4mslave0_AWADDR,
        AWLEN   => AXI4_Interconnect_0_AXI4mslave0_AWLEN,
        AWSIZE  => AXI4_Interconnect_0_AXI4mslave0_AWSIZE,
        AWBURST => AXI4_Interconnect_0_AXI4mslave0_AWBURST,
        AWLOCK  => AXI4_Interconnect_0_AXI4mslave0_AWLOCK,
        AWCACHE => AXI4_Interconnect_0_AXI4mslave0_AWCACHE,
        AWPROT  => AXI4_Interconnect_0_AXI4mslave0_AWPROT,
        WDATA   => AXI4_Interconnect_0_AXI4mslave0_WDATA,
        WSTRB   => AXI4_Interconnect_0_AXI4mslave0_WSTRB,
        ARADDR  => AXI4_Interconnect_0_AXI4mslave0_ARADDR,
        ARLEN   => AXI4_Interconnect_0_AXI4mslave0_ARLEN,
        ARSIZE  => AXI4_Interconnect_0_AXI4mslave0_ARSIZE,
        ARBURST => AXI4_Interconnect_0_AXI4mslave0_ARBURST,
        ARLOCK  => AXI4_Interconnect_0_AXI4mslave0_ARLOCK,
        ARCACHE => AXI4_Interconnect_0_AXI4mslave0_ARCACHE,
        ARPROT  => AXI4_Interconnect_0_AXI4mslave0_ARPROT,
        AWID    => AXI4_Interconnect_0_AXI4mslave0_AWID,
        ARID    => AXI4_Interconnect_0_AXI4mslave0_ARID,
        -- Outputs
        AWREADY => AXI4_Interconnect_0_AXI4mslave0_AWREADY,
        WREADY  => AXI4_Interconnect_0_AXI4mslave0_WREADY,
        BVALID  => AXI4_Interconnect_0_AXI4mslave0_BVALID,
        ARREADY => AXI4_Interconnect_0_AXI4mslave0_ARREADY,
        RLAST   => AXI4_Interconnect_0_AXI4mslave0_RLAST,
        RVALID  => AXI4_Interconnect_0_AXI4mslave0_RVALID,
        RDATA   => AXI4_Interconnect_0_AXI4mslave0_RDATA,
        RRESP   => AXI4_Interconnect_0_AXI4mslave0_RRESP,
        BRESP   => AXI4_Interconnect_0_AXI4mslave0_BRESP,
        BID     => AXI4_Interconnect_0_AXI4mslave0_BID,
        RID     => AXI4_Interconnect_0_AXI4mslave0_RID 
        );
-- LVDS_UART_TOP_0
LVDS_UART_TOP_0 : LVDS_UART_TOP
    port map( 
        -- Inputs
        RXP_0     => RXP_0,
        RXN_0     => RXN_0,
        RXP_1     => RXP_1,
        RXN_1     => RXN_1,
        RXP_2     => RXP_2,
        RXN_2     => RXN_2,
        RXP_3     => RXP_3,
        RXN_3     => RXN_3,
        RXP_4     => RXP_4,
        RXN_4     => RXN_4,
        RXP_5     => RXP_5,
        RXN_5     => RXN_5,
        RXP_6     => RXP_6,
        RXN_6     => RXN_6,
        RXP_7     => RXP_7,
        RXN_7     => RXN_7,
        RXP_8     => RXP_8,
        RXN_8     => RXN_8,
        RXP_9     => RXP_9,
        RXN_9     => RXN_9,
        PCLK      => CCC_0_0_OUT0_FABCLK_0,
        PRESETN   => reset_syn_0_0_FABRIC_RESET_N,
        PSEL      => APB3_0_APBmslave4_PSELx,
        PENABLE   => APB3_0_APBmslave0_PENABLE,
        PWRITE    => APB3_0_APBmslave0_PWRITE,
        PSEL_0    => APB3_0_APBmslave5_PSELx,
        PENABLE_0 => APB3_0_APBmslave0_PENABLE,
        PWRITE_0  => APB3_0_APBmslave0_PWRITE,
        PSEL_1    => APB3_0_APBmslave6_PSELx,
        PENABLE_1 => APB3_0_APBmslave0_PENABLE,
        PWRITE_1  => APB3_0_APBmslave0_PWRITE,
        PSEL_2    => APB3_0_APBmslave7_PSELx,
        PENABLE_2 => APB3_0_APBmslave0_PENABLE,
        PWRITE_2  => APB3_0_APBmslave0_PWRITE,
        PSEL_3    => APB3_0_APBmslave8_PSELx,
        PENABLE_3 => APB3_0_APBmslave0_PENABLE,
        PWRITE_3  => APB3_0_APBmslave0_PWRITE,
        PSEL_4    => APB3_0_APBmslave9_PSELx,
        PENABLE_4 => APB3_0_APBmslave0_PENABLE,
        PWRITE_4  => APB3_0_APBmslave0_PWRITE,
        PSEL_5    => APB3_0_APBmslave10_PSELx,
        PENABLE_5 => APB3_0_APBmslave0_PENABLE,
        PWRITE_5  => APB3_0_APBmslave0_PWRITE,
        PSEL_6    => APB3_0_APBmslave11_PSELx,
        PENABLE_6 => APB3_0_APBmslave0_PENABLE,
        PWRITE_6  => APB3_0_APBmslave0_PWRITE,
        PSEL_7    => APB3_0_APBmslave12_PSELx,
        PENABLE_7 => APB3_0_APBmslave0_PENABLE,
        PWRITE_7  => APB3_0_APBmslave0_PWRITE,
        PSEL_8    => APB3_0_APBmslave13_PSELx,
        PENABLE_8 => APB3_0_APBmslave0_PENABLE,
        PWRITE_8  => APB3_0_APBmslave0_PWRITE,
        PADDR     => APB3_0_APBmslave0_PADDR_4,
        PWDATA    => APB3_0_APBmslave0_PWDATA_2,
        PADDR_0   => APB3_0_APBmslave0_PADDR_5,
        PWDATA_0  => APB3_0_APBmslave0_PWDATA_3,
        PADDR_1   => APB3_0_APBmslave0_PADDR_6,
        PWDATA_1  => APB3_0_APBmslave0_PWDATA_4,
        PADDR_2   => APB3_0_APBmslave0_PADDR_7,
        PWDATA_2  => APB3_0_APBmslave0_PWDATA_5,
        PADDR_3   => APB3_0_APBmslave0_PADDR_8,
        PWDATA_3  => APB3_0_APBmslave0_PWDATA_6,
        PADDR_4   => APB3_0_APBmslave0_PADDR_9,
        PWDATA_4  => APB3_0_APBmslave0_PWDATA_7,
        PADDR_5   => APB3_0_APBmslave0_PADDR_10,
        PWDATA_5  => APB3_0_APBmslave0_PWDATA_8,
        PADDR_6   => APB3_0_APBmslave0_PADDR_11,
        PWDATA_6  => APB3_0_APBmslave0_PWDATA_9,
        PADDR_7   => APB3_0_APBmslave0_PADDR_12,
        PWDATA_7  => APB3_0_APBmslave0_PWDATA_10,
        PADDR_8   => APB3_0_APBmslave0_PADDR_13,
        PWDATA_8  => APB3_0_APBmslave0_PWDATA_11,
        -- Outputs
        TXP_0     => TXP_0_net_0,
        TXN_0     => TXN_0_net_0,
        TXP_1     => TXP_1_net_0,
        TXN_1     => TXN_1_net_0,
        TXP_2     => TXP_2_net_0,
        TXN_2     => TXN_2_net_0,
        TXP_3     => TXP_3_net_0,
        TXN_3     => TXN_3_net_0,
        TXP_4     => TXP_4_net_0,
        TXN_4     => TXN_4_net_0,
        TXP_5     => TXP_5_net_0,
        TXN_5     => TXN_5_net_0,
        TXP_6     => TXP_6_net_0,
        TXN_6     => TXN_6_net_0,
        TXP_7     => TXP_7_net_0,
        TXN_7     => TXN_7_net_0,
        TXP_8     => TXP_8_net_0,
        TXN_8     => TXN_8_net_0,
        TXP_9     => TXP_9_net_0,
        TXN_9     => TXN_9_net_0,
        PREADY    => APB3_0_APBmslave4_PREADY,
        PSLVERR   => APB3_0_APBmslave4_PSLVERR,
        PREADY_0  => APB3_0_APBmslave5_PREADY,
        PSLVERR_0 => APB3_0_APBmslave5_PSLVERR,
        PREADY_1  => APB3_0_APBmslave6_PREADY,
        PSLVERR_1 => APB3_0_APBmslave6_PSLVERR,
        PREADY_2  => APB3_0_APBmslave7_PREADY,
        PSLVERR_2 => APB3_0_APBmslave7_PSLVERR,
        PREADY_3  => APB3_0_APBmslave8_PREADY,
        PSLVERR_3 => APB3_0_APBmslave8_PSLVERR,
        PREADY_4  => APB3_0_APBmslave9_PREADY,
        PSLVERR_4 => APB3_0_APBmslave9_PSLVERR,
        PREADY_5  => APB3_0_APBmslave10_PREADY,
        PSLVERR_5 => APB3_0_APBmslave10_PSLVERR,
        PREADY_6  => APB3_0_APBmslave11_PREADY,
        PSLVERR_6 => APB3_0_APBmslave11_PSLVERR,
        PREADY_7  => APB3_0_APBmslave12_PREADY,
        PSLVERR_7 => APB3_0_APBmslave12_PSLVERR,
        PREADY_8  => APB3_0_APBmslave13_PREADY,
        PSLVERR_8 => APB3_0_APBmslave13_PSLVERR,
        bit_error => OPEN,
        full      => OPEN,
        empty     => OPEN,
        RXRDY     => OPEN,
        TXRDY     => OPEN,
        e_cnt_0   => OPEN,
        f_cnt_0   => OPEN,
        e_cnt_1   => OPEN,
        f_cnt_1   => OPEN,
        e_cnt_2   => OPEN,
        f_cnt_2   => OPEN,
        e_cnt_3   => OPEN,
        f_cnt_3   => OPEN,
        e_cnt_4   => OPEN,
        f_cnt_4   => OPEN,
        e_cnt_5   => OPEN,
        f_cnt_5   => OPEN,
        e_cnt_6   => OPEN,
        f_cnt_6   => OPEN,
        e_cnt_7   => OPEN,
        f_cnt_7   => OPEN,
        e_cnt_8   => OPEN,
        f_cnt_8   => OPEN,
        e_cnt_9   => OPEN,
        f_cnt_9   => OPEN,
        PRDATA    => APB3_0_APBmslave4_PRDATA,
        PRDATA_0  => APB3_0_APBmslave5_PRDATA,
        PRDATA_1  => APB3_0_APBmslave6_PRDATA,
        PRDATA_2  => APB3_0_APBmslave7_PRDATA,
        PRDATA_3  => APB3_0_APBmslave8_PRDATA,
        PRDATA_4  => APB3_0_APBmslave9_PRDATA,
        PRDATA_5  => APB3_0_APBmslave10_PRDATA,
        PRDATA_6  => APB3_0_APBmslave11_PRDATA,
        PRDATA_7  => APB3_0_APBmslave12_PRDATA,
        PRDATA_8  => APB3_0_APBmslave13_PRDATA 
        );
-- MiV_AXI_0
MiV_AXI_0 : MiV_AXI
    port map( 
        -- Inputs
        CLK                      => CCC_0_0_OUT0_FABCLK_0,
        RESETN                   => reset_syn_0_0_FABRIC_RESET_N,
        TDI                      => COREJTAGDebug_0_0_TGT_TDI_0,
        TCK                      => COREJTAGDebug_0_0_TGT_TCK_0,
        TMS                      => COREJTAGDebug_0_0_TGT_TMS_0,
        TRST                     => COREJTAGDebug_0_0_TGT_TRSTB_0,
        MEM_AXI_0_AW_READY       => MiV_AXI_0_MEM_MST_AXI4_AWREADY,
        MEM_AXI_0_W_READY        => MiV_AXI_0_MEM_MST_AXI4_WREADY,
        MEM_AXI_0_B_VALID        => MiV_AXI_0_MEM_MST_AXI4_BVALID,
        MEM_AXI_0_AR_READY       => MiV_AXI_0_MEM_MST_AXI4_ARREADY,
        MEM_AXI_0_R_BITS_LAST    => MiV_AXI_0_MEM_MST_AXI4_RLAST,
        MEM_AXI_0_R_VALID        => MiV_AXI_0_MEM_MST_AXI4_RVALID,
        MMIO_AXI_0_R_VALID       => MiV_AXI_0_MMIO_MST_AXI4_RVALID,
        MMIO_AXI_0_R_BITS_LAST   => MiV_AXI_0_MMIO_MST_AXI4_RLAST,
        MMIO_AXI_0_AR_READY      => MiV_AXI_0_MMIO_MST_AXI4_ARREADY,
        MMIO_AXI_0_B_VALID       => MiV_AXI_0_MMIO_MST_AXI4_BVALID,
        MMIO_AXI_0_W_READY       => MiV_AXI_0_MMIO_MST_AXI4_WREADY,
        MMIO_AXI_0_AW_READY      => MiV_AXI_0_MMIO_MST_AXI4_AWREADY,
        IRQ                      => IRQ_net_0,
        MEM_AXI_0_B_BITS_ID      => MiV_AXI_0_MEM_MST_AXI4_BID,
        MEM_AXI_0_B_BITS_RESP    => MiV_AXI_0_MEM_MST_AXI4_BRESP,
        MEM_AXI_0_R_BITS_ID      => MiV_AXI_0_MEM_MST_AXI4_RID,
        MEM_AXI_0_R_BITS_DATA    => MiV_AXI_0_MEM_MST_AXI4_RDATA,
        MEM_AXI_0_R_BITS_RESP    => MiV_AXI_0_MEM_MST_AXI4_RRESP,
        MMIO_AXI_0_R_BITS_RESP   => MiV_AXI_0_MMIO_MST_AXI4_RRESP,
        MMIO_AXI_0_R_BITS_DATA   => MiV_AXI_0_MMIO_MST_AXI4_RDATA,
        MMIO_AXI_0_R_BITS_ID     => MiV_AXI_0_MMIO_MST_AXI4_RID,
        MMIO_AXI_0_B_BITS_RESP   => MiV_AXI_0_MMIO_MST_AXI4_BRESP,
        MMIO_AXI_0_B_BITS_ID     => MiV_AXI_0_MMIO_MST_AXI4_BID,
        -- Outputs
        TDO                      => MiV_AXI_0_TDO,
        DRV_TDO                  => OPEN,
        EXT_RESETN               => OPEN,
        MEM_AXI_0_AW_BITS_LOCK   => MiV_AXI_0_MEM_MST_AXI4_AWLOCK,
        MEM_AXI_0_AW_VALID       => MiV_AXI_0_MEM_MST_AXI4_AWVALID,
        MEM_AXI_0_W_BITS_LAST    => MiV_AXI_0_MEM_MST_AXI4_WLAST,
        MEM_AXI_0_W_VALID        => MiV_AXI_0_MEM_MST_AXI4_WVALID,
        MEM_AXI_0_B_READY        => MiV_AXI_0_MEM_MST_AXI4_BREADY,
        MEM_AXI_0_AR_BITS_LOCK   => MiV_AXI_0_MEM_MST_AXI4_ARLOCK,
        MEM_AXI_0_AR_VALID       => MiV_AXI_0_MEM_MST_AXI4_ARVALID,
        MEM_AXI_0_R_READY        => MiV_AXI_0_MEM_MST_AXI4_RREADY,
        MMIO_AXI_0_R_READY       => MiV_AXI_0_MMIO_MST_AXI4_RREADY,
        MMIO_AXI_0_AR_VALID      => MiV_AXI_0_MMIO_MST_AXI4_ARVALID,
        MMIO_AXI_0_W_BITS_LAST   => MiV_AXI_0_MMIO_MST_AXI4_WLAST,
        MMIO_AXI_0_AR_BITS_LOCK  => MiV_AXI_0_MMIO_MST_AXI4_ARLOCK,
        MMIO_AXI_0_B_READY       => MiV_AXI_0_MMIO_MST_AXI4_BREADY,
        MMIO_AXI_0_W_VALID       => MiV_AXI_0_MMIO_MST_AXI4_WVALID,
        MMIO_AXI_0_AW_VALID      => MiV_AXI_0_MMIO_MST_AXI4_AWVALID,
        MMIO_AXI_0_AW_BITS_LOCK  => MiV_AXI_0_MMIO_MST_AXI4_AWLOCK,
        MEM_AXI_WID              => OPEN,
        MMIO_AXI_WID             => OPEN,
        MEM_AXI_0_AW_BITS_ID     => MiV_AXI_0_MEM_MST_AXI4_AWID,
        MEM_AXI_0_AW_BITS_ADDR   => MiV_AXI_0_MEM_MST_AXI4_AWADDR,
        MEM_AXI_0_AW_BITS_LEN    => MiV_AXI_0_MEM_MST_AXI4_AWLEN,
        MEM_AXI_0_AW_BITS_SIZE   => MiV_AXI_0_MEM_MST_AXI4_AWSIZE,
        MEM_AXI_0_AW_BITS_BURST  => MiV_AXI_0_MEM_MST_AXI4_AWBURST,
        MEM_AXI_0_AW_BITS_CACHE  => MiV_AXI_0_MEM_MST_AXI4_AWCACHE,
        MEM_AXI_0_AW_BITS_PROT   => MiV_AXI_0_MEM_MST_AXI4_AWPROT,
        MEM_AXI_0_AW_BITS_QOS    => MiV_AXI_0_MEM_MST_AXI4_AWQOS,
        MEM_AXI_0_W_BITS_DATA    => MiV_AXI_0_MEM_MST_AXI4_WDATA,
        MEM_AXI_0_W_BITS_STRB    => MiV_AXI_0_MEM_MST_AXI4_WSTRB,
        MEM_AXI_0_AR_BITS_ID     => MiV_AXI_0_MEM_MST_AXI4_ARID,
        MEM_AXI_0_AR_BITS_ADDR   => MiV_AXI_0_MEM_MST_AXI4_ARADDR,
        MEM_AXI_0_AR_BITS_LEN    => MiV_AXI_0_MEM_MST_AXI4_ARLEN,
        MEM_AXI_0_AR_BITS_SIZE   => MiV_AXI_0_MEM_MST_AXI4_ARSIZE,
        MEM_AXI_0_AR_BITS_BURST  => MiV_AXI_0_MEM_MST_AXI4_ARBURST,
        MEM_AXI_0_AR_BITS_CACHE  => MiV_AXI_0_MEM_MST_AXI4_ARCACHE,
        MEM_AXI_0_AR_BITS_PROT   => MiV_AXI_0_MEM_MST_AXI4_ARPROT,
        MEM_AXI_0_AR_BITS_QOS    => MiV_AXI_0_MEM_MST_AXI4_ARQOS,
        MMIO_AXI_0_AR_BITS_QOS   => MiV_AXI_0_MMIO_MST_AXI4_ARQOS,
        MMIO_AXI_0_AR_BITS_PROT  => MiV_AXI_0_MMIO_MST_AXI4_ARPROT,
        MMIO_AXI_0_AR_BITS_CACHE => MiV_AXI_0_MMIO_MST_AXI4_ARCACHE,
        MMIO_AXI_0_AR_BITS_BURST => MiV_AXI_0_MMIO_MST_AXI4_ARBURST,
        MMIO_AXI_0_AR_BITS_SIZE  => MiV_AXI_0_MMIO_MST_AXI4_ARSIZE,
        MMIO_AXI_0_AR_BITS_LEN   => MiV_AXI_0_MMIO_MST_AXI4_ARLEN,
        MMIO_AXI_0_AR_BITS_ADDR  => MiV_AXI_0_MMIO_MST_AXI4_ARADDR,
        MMIO_AXI_0_AR_BITS_ID    => MiV_AXI_0_MMIO_MST_AXI4_ARID,
        MMIO_AXI_0_W_BITS_STRB   => MiV_AXI_0_MMIO_MST_AXI4_WSTRB,
        MMIO_AXI_0_W_BITS_DATA   => MiV_AXI_0_MMIO_MST_AXI4_WDATA,
        MMIO_AXI_0_AW_BITS_QOS   => MiV_AXI_0_MMIO_MST_AXI4_AWQOS,
        MMIO_AXI_0_AW_BITS_PROT  => MiV_AXI_0_MMIO_MST_AXI4_AWPROT,
        MMIO_AXI_0_AW_BITS_CACHE => MiV_AXI_0_MMIO_MST_AXI4_AWCACHE,
        MMIO_AXI_0_AW_BITS_BURST => MiV_AXI_0_MMIO_MST_AXI4_AWBURST,
        MMIO_AXI_0_AW_BITS_SIZE  => MiV_AXI_0_MMIO_MST_AXI4_AWSIZE,
        MMIO_AXI_0_AW_BITS_LEN   => MiV_AXI_0_MMIO_MST_AXI4_AWLEN,
        MMIO_AXI_0_AW_BITS_ADDR  => MiV_AXI_0_MMIO_MST_AXI4_AWADDR,
        MMIO_AXI_0_AW_BITS_ID    => MiV_AXI_0_MMIO_MST_AXI4_AWID 
        );
-- PF_IO_I2C_SCL_0
PF_IO_I2C_SCL_0 : PF_IO_C0
    port map( 
        -- Inputs
        E   => E_IN_POST_INV0_0,
        D   => GND_net,
        -- Outputs
        Y   => PF_IO_I2C_SCL_0_Y,
        -- Inouts
        PAD => SCL_INOUT 
        );
-- PF_IO_I2C_SDA_0_inst_0
PF_IO_I2C_SDA_0_inst_0 : PF_IO_I2C_SDA_0
    port map( 
        -- Inputs
        E   => E_IN_POST_INV1_0,
        D   => GND_net,
        -- Outputs
        Y   => PF_IO_I2C_SDA_0_Y,
        -- Inouts
        PAD => SDA_INOUT 
        );
-- reset_syn_0_0
reset_syn_0_0 : reset_syn_0
    port map( 
        -- Inputs
        CLK            => CCC_0_0_OUT0_FABCLK_0,
        EXT_RST_N      => CTRLR_READY_net_0,
        PLL_LOCK       => CCC_0_0_PLL_LOCK_0,
        SS_BUSY        => GND_net,
        INIT_DONE      => INIT_Monitor_0_DEVICE_INIT_DONE,
        FF_US_RESTORE  => GND_net,
        -- Outputs
        FABRIC_RESET_N => reset_syn_0_0_FABRIC_RESET_N 
        );
-- reset_syn_1_0
reset_syn_1_0 : reset_syn_1
    port map( 
        -- Inputs
        CLK            => CCC_0_0_OUT0_FABCLK_0,
        EXT_RST_N      => resetn,
        PLL_LOCK       => CCC_0_0_PLL_LOCK_0,
        SS_BUSY        => GND_net,
        INIT_DONE      => INIT_Monitor_0_BANK_1_CALIB_STATUS,
        FF_US_RESTORE  => GND_net,
        -- Outputs
        FABRIC_RESET_N => reset_syn_1_0_FABRIC_RESET_N 
        );
-- SPI_Controller_0
SPI_Controller_0 : SPI_Controller
    port map( 
        -- Inputs
        PCLK       => CCC_0_0_OUT0_FABCLK_0,
        PRESETN    => reset_syn_0_0_FABRIC_RESET_N,
        SPISSI     => VCC_net,
        SPISDI     => SPISDI,
        SPICLKI    => GND_net,
        PSEL       => APB3_0_APBmslave2_PSELx,
        PENABLE    => APB3_0_APBmslave0_PENABLE,
        PWRITE     => APB3_0_APBmslave0_PWRITE,
        PADDR      => APB3_0_APBmslave0_PADDR_2,
        PWDATA     => APB3_0_APBmslave0_PWDATA,
        -- Outputs
        SPIINT     => OPEN,
        SPIRXAVAIL => OPEN,
        SPITXRFM   => OPEN,
        SPISCLKO   => SPISCLKO_net_0,
        SPIOEN     => OPEN,
        SPISDO     => SPISDO_net_0,
        SPIMODE    => OPEN,
        PREADY     => APB3_0_APBmslave2_PREADY,
        PSLVERR    => APB3_0_APBmslave2_PSLVERR,
        SPISS      => SPISS_net_0,
        PRDATA     => APB3_0_APBmslave2_PRDATA 
        );
-- UART_apb_0
UART_apb_0 : UART_apb
    port map( 
        -- Inputs
        PCLK        => CCC_0_0_OUT0_FABCLK_0,
        PRESETN     => reset_syn_0_0_FABRIC_RESET_N,
        RX          => RX,
        PSEL        => APB3_0_APBmslave0_PSELx,
        PENABLE     => APB3_0_APBmslave0_PENABLE,
        PWRITE      => APB3_0_APBmslave0_PWRITE,
        PADDR       => APB3_0_APBmslave0_PADDR_0,
        PWDATA      => APB3_0_APBmslave0_PWDATA_0,
        -- Outputs
        TXRDY       => OPEN,
        RXRDY       => OPEN,
        PARITY_ERR  => OPEN,
        OVERFLOW    => OPEN,
        TX          => net_6,
        FRAMING_ERR => OPEN,
        PREADY      => APB3_0_APBmslave0_PREADY,
        PSLVERR     => APB3_0_APBmslave0_PSLVERR,
        PRDATA      => APB3_0_APBmslave0_PRDATA 
        );

end RTL;
