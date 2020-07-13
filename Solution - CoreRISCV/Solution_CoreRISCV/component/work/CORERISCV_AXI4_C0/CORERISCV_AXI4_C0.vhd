----------------------------------------------------------------------
-- Created by SmartDesign Fri Apr  3 11:02:12 2020
-- Version: v12.3 12.800.0.16
----------------------------------------------------------------------

----------------------------------------------------------------------
-- Libraries
----------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;

library polarfire;
use polarfire.all;
library CORERISCV_AXI4_LIB;
use CORERISCV_AXI4_LIB.all;
----------------------------------------------------------------------
-- CORERISCV_AXI4_C0 entity declaration
----------------------------------------------------------------------
entity CORERISCV_AXI4_C0 is
    -- Port list
    port(
        -- Inputs
        AXI_MST_MEM_ARREADY   : in  std_logic;
        AXI_MST_MEM_AWREADY   : in  std_logic;
        AXI_MST_MEM_BID       : in  std_logic_vector(4 downto 0);
        AXI_MST_MEM_BRESP     : in  std_logic_vector(1 downto 0);
        AXI_MST_MEM_BUSER     : in  std_logic;
        AXI_MST_MEM_BVALID    : in  std_logic;
        AXI_MST_MEM_RDATA     : in  std_logic_vector(63 downto 0);
        AXI_MST_MEM_RID       : in  std_logic_vector(4 downto 0);
        AXI_MST_MEM_RLAST     : in  std_logic;
        AXI_MST_MEM_RRESP     : in  std_logic_vector(1 downto 0);
        AXI_MST_MEM_RUSER     : in  std_logic;
        AXI_MST_MEM_RVALID    : in  std_logic;
        AXI_MST_MEM_WREADY    : in  std_logic;
        AXI_MST_MMIO_ARREADY  : in  std_logic;
        AXI_MST_MMIO_AWREADY  : in  std_logic;
        AXI_MST_MMIO_BID      : in  std_logic_vector(4 downto 0);
        AXI_MST_MMIO_BRESP    : in  std_logic_vector(1 downto 0);
        AXI_MST_MMIO_BUSER    : in  std_logic;
        AXI_MST_MMIO_BVALID   : in  std_logic;
        AXI_MST_MMIO_RDATA    : in  std_logic_vector(63 downto 0);
        AXI_MST_MMIO_RID      : in  std_logic_vector(4 downto 0);
        AXI_MST_MMIO_RLAST    : in  std_logic;
        AXI_MST_MMIO_RRESP    : in  std_logic_vector(1 downto 0);
        AXI_MST_MMIO_RUSER    : in  std_logic;
        AXI_MST_MMIO_RVALID   : in  std_logic;
        AXI_MST_MMIO_WREADY   : in  std_logic;
        CLK                   : in  std_logic;
        IRQ                   : in  std_logic_vector(30 downto 0);
        RESET                 : in  std_logic;
        TCK                   : in  std_logic;
        TDI                   : in  std_logic;
        TMS                   : in  std_logic;
        TRST                  : in  std_logic;
        -- Outputs
        AXI_MST_MEM_ARADDR    : out std_logic_vector(31 downto 0);
        AXI_MST_MEM_ARBURST   : out std_logic_vector(1 downto 0);
        AXI_MST_MEM_ARCACHE   : out std_logic_vector(3 downto 0);
        AXI_MST_MEM_ARID      : out std_logic_vector(4 downto 0);
        AXI_MST_MEM_ARLEN     : out std_logic_vector(7 downto 0);
        AXI_MST_MEM_ARLOCK    : out std_logic;
        AXI_MST_MEM_ARPROT    : out std_logic_vector(2 downto 0);
        AXI_MST_MEM_ARQOS     : out std_logic_vector(3 downto 0);
        AXI_MST_MEM_ARREGION  : out std_logic_vector(3 downto 0);
        AXI_MST_MEM_ARSIZE    : out std_logic_vector(2 downto 0);
        AXI_MST_MEM_ARUSER    : out std_logic;
        AXI_MST_MEM_ARVALID   : out std_logic;
        AXI_MST_MEM_AWADDR    : out std_logic_vector(31 downto 0);
        AXI_MST_MEM_AWBURST   : out std_logic_vector(1 downto 0);
        AXI_MST_MEM_AWCACHE   : out std_logic_vector(3 downto 0);
        AXI_MST_MEM_AWID      : out std_logic_vector(4 downto 0);
        AXI_MST_MEM_AWLEN     : out std_logic_vector(7 downto 0);
        AXI_MST_MEM_AWLOCK    : out std_logic;
        AXI_MST_MEM_AWPROT    : out std_logic_vector(2 downto 0);
        AXI_MST_MEM_AWQOS     : out std_logic_vector(3 downto 0);
        AXI_MST_MEM_AWREGION  : out std_logic_vector(3 downto 0);
        AXI_MST_MEM_AWSIZE    : out std_logic_vector(2 downto 0);
        AXI_MST_MEM_AWUSER    : out std_logic;
        AXI_MST_MEM_AWVALID   : out std_logic;
        AXI_MST_MEM_BREADY    : out std_logic;
        AXI_MST_MEM_RREADY    : out std_logic;
        AXI_MST_MEM_WDATA     : out std_logic_vector(63 downto 0);
        AXI_MST_MEM_WID       : out std_logic_vector(4 downto 0);
        AXI_MST_MEM_WLAST     : out std_logic;
        AXI_MST_MEM_WSTRB     : out std_logic_vector(7 downto 0);
        AXI_MST_MEM_WUSER     : out std_logic;
        AXI_MST_MEM_WVALID    : out std_logic;
        AXI_MST_MMIO_ARADDR   : out std_logic_vector(31 downto 0);
        AXI_MST_MMIO_ARBURST  : out std_logic_vector(1 downto 0);
        AXI_MST_MMIO_ARCACHE  : out std_logic_vector(3 downto 0);
        AXI_MST_MMIO_ARID     : out std_logic_vector(4 downto 0);
        AXI_MST_MMIO_ARLEN    : out std_logic_vector(7 downto 0);
        AXI_MST_MMIO_ARLOCK   : out std_logic;
        AXI_MST_MMIO_ARPROT   : out std_logic_vector(2 downto 0);
        AXI_MST_MMIO_ARQOS    : out std_logic_vector(3 downto 0);
        AXI_MST_MMIO_ARREGION : out std_logic_vector(3 downto 0);
        AXI_MST_MMIO_ARSIZE   : out std_logic_vector(2 downto 0);
        AXI_MST_MMIO_ARUSER   : out std_logic;
        AXI_MST_MMIO_ARVALID  : out std_logic;
        AXI_MST_MMIO_AWADDR   : out std_logic_vector(31 downto 0);
        AXI_MST_MMIO_AWBURST  : out std_logic_vector(1 downto 0);
        AXI_MST_MMIO_AWCACHE  : out std_logic_vector(3 downto 0);
        AXI_MST_MMIO_AWID     : out std_logic_vector(4 downto 0);
        AXI_MST_MMIO_AWLEN    : out std_logic_vector(7 downto 0);
        AXI_MST_MMIO_AWLOCK   : out std_logic;
        AXI_MST_MMIO_AWPROT   : out std_logic_vector(2 downto 0);
        AXI_MST_MMIO_AWQOS    : out std_logic_vector(3 downto 0);
        AXI_MST_MMIO_AWREGION : out std_logic_vector(3 downto 0);
        AXI_MST_MMIO_AWSIZE   : out std_logic_vector(2 downto 0);
        AXI_MST_MMIO_AWUSER   : out std_logic;
        AXI_MST_MMIO_AWVALID  : out std_logic;
        AXI_MST_MMIO_BREADY   : out std_logic;
        AXI_MST_MMIO_RREADY   : out std_logic;
        AXI_MST_MMIO_WDATA    : out std_logic_vector(63 downto 0);
        AXI_MST_MMIO_WID      : out std_logic_vector(4 downto 0);
        AXI_MST_MMIO_WLAST    : out std_logic;
        AXI_MST_MMIO_WSTRB    : out std_logic_vector(7 downto 0);
        AXI_MST_MMIO_WUSER    : out std_logic;
        AXI_MST_MMIO_WVALID   : out std_logic;
        DRV_TDO               : out std_logic;
        TDO                   : out std_logic
        );
end CORERISCV_AXI4_C0;
----------------------------------------------------------------------
-- CORERISCV_AXI4_C0 architecture body
----------------------------------------------------------------------
architecture RTL of CORERISCV_AXI4_C0 is
----------------------------------------------------------------------
-- Component declarations
----------------------------------------------------------------------
-- CORERISCV_AXI4_C0_CORERISCV_AXI4_C0_0_CORERISCV_AXI4   -   Actel:DirectCore:CORERISCV_AXI4:2.0.102
component CORERISCV_AXI4_C0_CORERISCV_AXI4_C0_0_CORERISCV_AXI4
    generic( 
        RESET_VECTOR_ADDR : integer := 16#60000000# 
        );
    -- Port list
    port(
        -- Inputs
        AXI_MST_MEM_ARREADY   : in  std_logic;
        AXI_MST_MEM_AWREADY   : in  std_logic;
        AXI_MST_MEM_BID       : in  std_logic_vector(4 downto 0);
        AXI_MST_MEM_BRESP     : in  std_logic_vector(1 downto 0);
        AXI_MST_MEM_BUSER     : in  std_logic;
        AXI_MST_MEM_BVALID    : in  std_logic;
        AXI_MST_MEM_RDATA     : in  std_logic_vector(63 downto 0);
        AXI_MST_MEM_RID       : in  std_logic_vector(4 downto 0);
        AXI_MST_MEM_RLAST     : in  std_logic;
        AXI_MST_MEM_RRESP     : in  std_logic_vector(1 downto 0);
        AXI_MST_MEM_RUSER     : in  std_logic;
        AXI_MST_MEM_RVALID    : in  std_logic;
        AXI_MST_MEM_WREADY    : in  std_logic;
        AXI_MST_MMIO_ARREADY  : in  std_logic;
        AXI_MST_MMIO_AWREADY  : in  std_logic;
        AXI_MST_MMIO_BID      : in  std_logic_vector(4 downto 0);
        AXI_MST_MMIO_BRESP    : in  std_logic_vector(1 downto 0);
        AXI_MST_MMIO_BUSER    : in  std_logic;
        AXI_MST_MMIO_BVALID   : in  std_logic;
        AXI_MST_MMIO_RDATA    : in  std_logic_vector(63 downto 0);
        AXI_MST_MMIO_RID      : in  std_logic_vector(4 downto 0);
        AXI_MST_MMIO_RLAST    : in  std_logic;
        AXI_MST_MMIO_RRESP    : in  std_logic_vector(1 downto 0);
        AXI_MST_MMIO_RUSER    : in  std_logic;
        AXI_MST_MMIO_RVALID   : in  std_logic;
        AXI_MST_MMIO_WREADY   : in  std_logic;
        CLK                   : in  std_logic;
        IRQ                   : in  std_logic_vector(30 downto 0);
        RESET                 : in  std_logic;
        TCK                   : in  std_logic;
        TDI                   : in  std_logic;
        TMS                   : in  std_logic;
        TRST                  : in  std_logic;
        -- Outputs
        AXI_MST_MEM_ARADDR    : out std_logic_vector(31 downto 0);
        AXI_MST_MEM_ARBURST   : out std_logic_vector(1 downto 0);
        AXI_MST_MEM_ARCACHE   : out std_logic_vector(3 downto 0);
        AXI_MST_MEM_ARID      : out std_logic_vector(4 downto 0);
        AXI_MST_MEM_ARLEN     : out std_logic_vector(7 downto 0);
        AXI_MST_MEM_ARLOCK    : out std_logic;
        AXI_MST_MEM_ARPROT    : out std_logic_vector(2 downto 0);
        AXI_MST_MEM_ARQOS     : out std_logic_vector(3 downto 0);
        AXI_MST_MEM_ARREGION  : out std_logic_vector(3 downto 0);
        AXI_MST_MEM_ARSIZE    : out std_logic_vector(2 downto 0);
        AXI_MST_MEM_ARUSER    : out std_logic;
        AXI_MST_MEM_ARVALID   : out std_logic;
        AXI_MST_MEM_AWADDR    : out std_logic_vector(31 downto 0);
        AXI_MST_MEM_AWBURST   : out std_logic_vector(1 downto 0);
        AXI_MST_MEM_AWCACHE   : out std_logic_vector(3 downto 0);
        AXI_MST_MEM_AWID      : out std_logic_vector(4 downto 0);
        AXI_MST_MEM_AWLEN     : out std_logic_vector(7 downto 0);
        AXI_MST_MEM_AWLOCK    : out std_logic;
        AXI_MST_MEM_AWPROT    : out std_logic_vector(2 downto 0);
        AXI_MST_MEM_AWQOS     : out std_logic_vector(3 downto 0);
        AXI_MST_MEM_AWREGION  : out std_logic_vector(3 downto 0);
        AXI_MST_MEM_AWSIZE    : out std_logic_vector(2 downto 0);
        AXI_MST_MEM_AWUSER    : out std_logic;
        AXI_MST_MEM_AWVALID   : out std_logic;
        AXI_MST_MEM_BREADY    : out std_logic;
        AXI_MST_MEM_RREADY    : out std_logic;
        AXI_MST_MEM_WDATA     : out std_logic_vector(63 downto 0);
        AXI_MST_MEM_WID       : out std_logic_vector(4 downto 0);
        AXI_MST_MEM_WLAST     : out std_logic;
        AXI_MST_MEM_WSTRB     : out std_logic_vector(7 downto 0);
        AXI_MST_MEM_WUSER     : out std_logic;
        AXI_MST_MEM_WVALID    : out std_logic;
        AXI_MST_MMIO_ARADDR   : out std_logic_vector(31 downto 0);
        AXI_MST_MMIO_ARBURST  : out std_logic_vector(1 downto 0);
        AXI_MST_MMIO_ARCACHE  : out std_logic_vector(3 downto 0);
        AXI_MST_MMIO_ARID     : out std_logic_vector(4 downto 0);
        AXI_MST_MMIO_ARLEN    : out std_logic_vector(7 downto 0);
        AXI_MST_MMIO_ARLOCK   : out std_logic;
        AXI_MST_MMIO_ARPROT   : out std_logic_vector(2 downto 0);
        AXI_MST_MMIO_ARQOS    : out std_logic_vector(3 downto 0);
        AXI_MST_MMIO_ARREGION : out std_logic_vector(3 downto 0);
        AXI_MST_MMIO_ARSIZE   : out std_logic_vector(2 downto 0);
        AXI_MST_MMIO_ARUSER   : out std_logic;
        AXI_MST_MMIO_ARVALID  : out std_logic;
        AXI_MST_MMIO_AWADDR   : out std_logic_vector(31 downto 0);
        AXI_MST_MMIO_AWBURST  : out std_logic_vector(1 downto 0);
        AXI_MST_MMIO_AWCACHE  : out std_logic_vector(3 downto 0);
        AXI_MST_MMIO_AWID     : out std_logic_vector(4 downto 0);
        AXI_MST_MMIO_AWLEN    : out std_logic_vector(7 downto 0);
        AXI_MST_MMIO_AWLOCK   : out std_logic;
        AXI_MST_MMIO_AWPROT   : out std_logic_vector(2 downto 0);
        AXI_MST_MMIO_AWQOS    : out std_logic_vector(3 downto 0);
        AXI_MST_MMIO_AWREGION : out std_logic_vector(3 downto 0);
        AXI_MST_MMIO_AWSIZE   : out std_logic_vector(2 downto 0);
        AXI_MST_MMIO_AWUSER   : out std_logic;
        AXI_MST_MMIO_AWVALID  : out std_logic;
        AXI_MST_MMIO_BREADY   : out std_logic;
        AXI_MST_MMIO_RREADY   : out std_logic;
        AXI_MST_MMIO_WDATA    : out std_logic_vector(63 downto 0);
        AXI_MST_MMIO_WID      : out std_logic_vector(4 downto 0);
        AXI_MST_MMIO_WLAST    : out std_logic;
        AXI_MST_MMIO_WSTRB    : out std_logic_vector(7 downto 0);
        AXI_MST_MMIO_WUSER    : out std_logic;
        AXI_MST_MMIO_WVALID   : out std_logic;
        DRV_TDO               : out std_logic;
        TDO                   : out std_logic
        );
end component;
----------------------------------------------------------------------
-- Signal declarations
----------------------------------------------------------------------
signal AXI_MST_MEM_ARADDR_net_0    : std_logic_vector(31 downto 0);
signal AXI_MST_MEM_ARBURST_net_0   : std_logic_vector(1 downto 0);
signal AXI_MST_MEM_ARCACHE_net_0   : std_logic_vector(3 downto 0);
signal AXI_MST_MEM_ARID_net_0      : std_logic_vector(4 downto 0);
signal AXI_MST_MEM_ARLEN_net_0     : std_logic_vector(7 downto 0);
signal AXI_MST_MEM_ARLOCK_net_0    : std_logic;
signal AXI_MST_MEM_ARPROT_net_0    : std_logic_vector(2 downto 0);
signal AXI_MST_MEM_ARQOS_net_0     : std_logic_vector(3 downto 0);
signal AXI_MST_MEM_ARREGION_net_0  : std_logic_vector(3 downto 0);
signal AXI_MST_MEM_ARSIZE_net_0    : std_logic_vector(2 downto 0);
signal AXI_MST_MEM_ARUSER_net_0    : std_logic;
signal AXI_MST_MEM_ARVALID_net_0   : std_logic;
signal AXI_MST_MEM_AWADDR_net_0    : std_logic_vector(31 downto 0);
signal AXI_MST_MEM_AWBURST_net_0   : std_logic_vector(1 downto 0);
signal AXI_MST_MEM_AWCACHE_net_0   : std_logic_vector(3 downto 0);
signal AXI_MST_MEM_AWID_net_0      : std_logic_vector(4 downto 0);
signal AXI_MST_MEM_AWLEN_net_0     : std_logic_vector(7 downto 0);
signal AXI_MST_MEM_AWLOCK_net_0    : std_logic;
signal AXI_MST_MEM_AWPROT_net_0    : std_logic_vector(2 downto 0);
signal AXI_MST_MEM_AWQOS_net_0     : std_logic_vector(3 downto 0);
signal AXI_MST_MEM_AWREGION_net_0  : std_logic_vector(3 downto 0);
signal AXI_MST_MEM_AWSIZE_net_0    : std_logic_vector(2 downto 0);
signal AXI_MST_MEM_AWUSER_net_0    : std_logic;
signal AXI_MST_MEM_AWVALID_net_0   : std_logic;
signal AXI_MST_MEM_BREADY_net_0    : std_logic;
signal AXI_MST_MEM_RREADY_net_0    : std_logic;
signal AXI_MST_MEM_WDATA_net_0     : std_logic_vector(63 downto 0);
signal AXI_MST_MEM_WLAST_net_0     : std_logic;
signal AXI_MST_MEM_WSTRB_net_0     : std_logic_vector(7 downto 0);
signal AXI_MST_MEM_WUSER_net_0     : std_logic;
signal AXI_MST_MEM_WVALID_net_0    : std_logic;
signal AXI_MST_MEM_WID_net_0       : std_logic_vector(4 downto 0);
signal AXI_MST_MMIO_ARADDR_net_0   : std_logic_vector(31 downto 0);
signal AXI_MST_MMIO_ARBURST_net_0  : std_logic_vector(1 downto 0);
signal AXI_MST_MMIO_ARCACHE_net_0  : std_logic_vector(3 downto 0);
signal AXI_MST_MMIO_ARID_net_0     : std_logic_vector(4 downto 0);
signal AXI_MST_MMIO_ARLEN_net_0    : std_logic_vector(7 downto 0);
signal AXI_MST_MMIO_ARLOCK_net_0   : std_logic;
signal AXI_MST_MMIO_ARPROT_net_0   : std_logic_vector(2 downto 0);
signal AXI_MST_MMIO_ARQOS_net_0    : std_logic_vector(3 downto 0);
signal AXI_MST_MMIO_ARREGION_net_0 : std_logic_vector(3 downto 0);
signal AXI_MST_MMIO_ARSIZE_net_0   : std_logic_vector(2 downto 0);
signal AXI_MST_MMIO_ARUSER_net_0   : std_logic;
signal AXI_MST_MMIO_ARVALID_net_0  : std_logic;
signal AXI_MST_MMIO_AWADDR_net_0   : std_logic_vector(31 downto 0);
signal AXI_MST_MMIO_AWBURST_net_0  : std_logic_vector(1 downto 0);
signal AXI_MST_MMIO_AWCACHE_net_0  : std_logic_vector(3 downto 0);
signal AXI_MST_MMIO_AWID_net_0     : std_logic_vector(4 downto 0);
signal AXI_MST_MMIO_AWLEN_net_0    : std_logic_vector(7 downto 0);
signal AXI_MST_MMIO_AWLOCK_net_0   : std_logic;
signal AXI_MST_MMIO_AWPROT_net_0   : std_logic_vector(2 downto 0);
signal AXI_MST_MMIO_AWQOS_net_0    : std_logic_vector(3 downto 0);
signal AXI_MST_MMIO_AWREGION_net_0 : std_logic_vector(3 downto 0);
signal AXI_MST_MMIO_AWSIZE_net_0   : std_logic_vector(2 downto 0);
signal AXI_MST_MMIO_AWUSER_net_0   : std_logic;
signal AXI_MST_MMIO_AWVALID_net_0  : std_logic;
signal AXI_MST_MMIO_BREADY_net_0   : std_logic;
signal AXI_MST_MMIO_RREADY_net_0   : std_logic;
signal AXI_MST_MMIO_WDATA_net_0    : std_logic_vector(63 downto 0);
signal AXI_MST_MMIO_WLAST_net_0    : std_logic;
signal AXI_MST_MMIO_WSTRB_net_0    : std_logic_vector(7 downto 0);
signal AXI_MST_MMIO_WUSER_net_0    : std_logic;
signal AXI_MST_MMIO_WVALID_net_0   : std_logic;
signal AXI_MST_MMIO_WID_net_0      : std_logic_vector(4 downto 0);
signal DRV_TDO_net_0               : std_logic;
signal TDO_net_0                   : std_logic;
signal TDO_net_1                   : std_logic;
signal DRV_TDO_net_1               : std_logic;
signal AXI_MST_MEM_WID_net_1       : std_logic_vector(4 downto 0);
signal AXI_MST_MMIO_WID_net_1      : std_logic_vector(4 downto 0);
signal AXI_MST_MEM_AWID_net_1      : std_logic_vector(4 downto 0);
signal AXI_MST_MEM_AWADDR_net_1    : std_logic_vector(31 downto 0);
signal AXI_MST_MEM_AWLEN_net_1     : std_logic_vector(7 downto 0);
signal AXI_MST_MEM_AWSIZE_net_1    : std_logic_vector(2 downto 0);
signal AXI_MST_MEM_AWBURST_net_1   : std_logic_vector(1 downto 0);
signal AXI_MST_MEM_AWLOCK_net_1    : std_logic;
signal AXI_MST_MEM_AWCACHE_net_1   : std_logic_vector(3 downto 0);
signal AXI_MST_MEM_AWPROT_net_1    : std_logic_vector(2 downto 0);
signal AXI_MST_MEM_AWQOS_net_1     : std_logic_vector(3 downto 0);
signal AXI_MST_MEM_AWREGION_net_1  : std_logic_vector(3 downto 0);
signal AXI_MST_MEM_AWVALID_net_1   : std_logic;
signal AXI_MST_MEM_WDATA_net_1     : std_logic_vector(63 downto 0);
signal AXI_MST_MEM_WSTRB_net_1     : std_logic_vector(7 downto 0);
signal AXI_MST_MEM_WLAST_net_1     : std_logic;
signal AXI_MST_MEM_WVALID_net_1    : std_logic;
signal AXI_MST_MEM_BREADY_net_1    : std_logic;
signal AXI_MST_MEM_ARID_net_1      : std_logic_vector(4 downto 0);
signal AXI_MST_MEM_ARADDR_net_1    : std_logic_vector(31 downto 0);
signal AXI_MST_MEM_ARLEN_net_1     : std_logic_vector(7 downto 0);
signal AXI_MST_MEM_ARSIZE_net_1    : std_logic_vector(2 downto 0);
signal AXI_MST_MEM_ARBURST_net_1   : std_logic_vector(1 downto 0);
signal AXI_MST_MEM_ARLOCK_net_1    : std_logic;
signal AXI_MST_MEM_ARCACHE_net_1   : std_logic_vector(3 downto 0);
signal AXI_MST_MEM_ARPROT_net_1    : std_logic_vector(2 downto 0);
signal AXI_MST_MEM_ARQOS_net_1     : std_logic_vector(3 downto 0);
signal AXI_MST_MEM_ARREGION_net_1  : std_logic_vector(3 downto 0);
signal AXI_MST_MEM_ARVALID_net_1   : std_logic;
signal AXI_MST_MEM_RREADY_net_1    : std_logic;
signal AXI_MST_MEM_AWUSER_net_1    : std_logic;
signal AXI_MST_MEM_WUSER_net_1     : std_logic;
signal AXI_MST_MEM_ARUSER_net_1    : std_logic;
signal AXI_MST_MMIO_AWID_net_1     : std_logic_vector(4 downto 0);
signal AXI_MST_MMIO_AWADDR_net_1   : std_logic_vector(31 downto 0);
signal AXI_MST_MMIO_AWLEN_net_1    : std_logic_vector(7 downto 0);
signal AXI_MST_MMIO_AWSIZE_net_1   : std_logic_vector(2 downto 0);
signal AXI_MST_MMIO_AWBURST_net_1  : std_logic_vector(1 downto 0);
signal AXI_MST_MMIO_AWLOCK_net_1   : std_logic;
signal AXI_MST_MMIO_AWCACHE_net_1  : std_logic_vector(3 downto 0);
signal AXI_MST_MMIO_AWPROT_net_1   : std_logic_vector(2 downto 0);
signal AXI_MST_MMIO_AWQOS_net_1    : std_logic_vector(3 downto 0);
signal AXI_MST_MMIO_AWREGION_net_1 : std_logic_vector(3 downto 0);
signal AXI_MST_MMIO_AWVALID_net_1  : std_logic;
signal AXI_MST_MMIO_WDATA_net_1    : std_logic_vector(63 downto 0);
signal AXI_MST_MMIO_WSTRB_net_1    : std_logic_vector(7 downto 0);
signal AXI_MST_MMIO_WLAST_net_1    : std_logic;
signal AXI_MST_MMIO_WVALID_net_1   : std_logic;
signal AXI_MST_MMIO_BREADY_net_1   : std_logic;
signal AXI_MST_MMIO_ARID_net_1     : std_logic_vector(4 downto 0);
signal AXI_MST_MMIO_ARADDR_net_1   : std_logic_vector(31 downto 0);
signal AXI_MST_MMIO_ARLEN_net_1    : std_logic_vector(7 downto 0);
signal AXI_MST_MMIO_ARSIZE_net_1   : std_logic_vector(2 downto 0);
signal AXI_MST_MMIO_ARBURST_net_1  : std_logic_vector(1 downto 0);
signal AXI_MST_MMIO_ARLOCK_net_1   : std_logic;
signal AXI_MST_MMIO_ARCACHE_net_1  : std_logic_vector(3 downto 0);
signal AXI_MST_MMIO_ARPROT_net_1   : std_logic_vector(2 downto 0);
signal AXI_MST_MMIO_ARQOS_net_1    : std_logic_vector(3 downto 0);
signal AXI_MST_MMIO_ARREGION_net_1 : std_logic_vector(3 downto 0);
signal AXI_MST_MMIO_ARVALID_net_1  : std_logic;
signal AXI_MST_MMIO_RREADY_net_1   : std_logic;
signal AXI_MST_MMIO_AWUSER_net_1   : std_logic;
signal AXI_MST_MMIO_WUSER_net_1    : std_logic;
signal AXI_MST_MMIO_ARUSER_net_1   : std_logic;

begin
----------------------------------------------------------------------
-- Top level output port assignments
----------------------------------------------------------------------
 TDO_net_1                         <= TDO_net_0;
 TDO                               <= TDO_net_1;
 DRV_TDO_net_1                     <= DRV_TDO_net_0;
 DRV_TDO                           <= DRV_TDO_net_1;
 AXI_MST_MEM_WID_net_1             <= AXI_MST_MEM_WID_net_0;
 AXI_MST_MEM_WID(4 downto 0)       <= AXI_MST_MEM_WID_net_1;
 AXI_MST_MMIO_WID_net_1            <= AXI_MST_MMIO_WID_net_0;
 AXI_MST_MMIO_WID(4 downto 0)      <= AXI_MST_MMIO_WID_net_1;
 AXI_MST_MEM_AWID_net_1            <= AXI_MST_MEM_AWID_net_0;
 AXI_MST_MEM_AWID(4 downto 0)      <= AXI_MST_MEM_AWID_net_1;
 AXI_MST_MEM_AWADDR_net_1          <= AXI_MST_MEM_AWADDR_net_0;
 AXI_MST_MEM_AWADDR(31 downto 0)   <= AXI_MST_MEM_AWADDR_net_1;
 AXI_MST_MEM_AWLEN_net_1           <= AXI_MST_MEM_AWLEN_net_0;
 AXI_MST_MEM_AWLEN(7 downto 0)     <= AXI_MST_MEM_AWLEN_net_1;
 AXI_MST_MEM_AWSIZE_net_1          <= AXI_MST_MEM_AWSIZE_net_0;
 AXI_MST_MEM_AWSIZE(2 downto 0)    <= AXI_MST_MEM_AWSIZE_net_1;
 AXI_MST_MEM_AWBURST_net_1         <= AXI_MST_MEM_AWBURST_net_0;
 AXI_MST_MEM_AWBURST(1 downto 0)   <= AXI_MST_MEM_AWBURST_net_1;
 AXI_MST_MEM_AWLOCK_net_1          <= AXI_MST_MEM_AWLOCK_net_0;
 AXI_MST_MEM_AWLOCK                <= AXI_MST_MEM_AWLOCK_net_1;
 AXI_MST_MEM_AWCACHE_net_1         <= AXI_MST_MEM_AWCACHE_net_0;
 AXI_MST_MEM_AWCACHE(3 downto 0)   <= AXI_MST_MEM_AWCACHE_net_1;
 AXI_MST_MEM_AWPROT_net_1          <= AXI_MST_MEM_AWPROT_net_0;
 AXI_MST_MEM_AWPROT(2 downto 0)    <= AXI_MST_MEM_AWPROT_net_1;
 AXI_MST_MEM_AWQOS_net_1           <= AXI_MST_MEM_AWQOS_net_0;
 AXI_MST_MEM_AWQOS(3 downto 0)     <= AXI_MST_MEM_AWQOS_net_1;
 AXI_MST_MEM_AWREGION_net_1        <= AXI_MST_MEM_AWREGION_net_0;
 AXI_MST_MEM_AWREGION(3 downto 0)  <= AXI_MST_MEM_AWREGION_net_1;
 AXI_MST_MEM_AWVALID_net_1         <= AXI_MST_MEM_AWVALID_net_0;
 AXI_MST_MEM_AWVALID               <= AXI_MST_MEM_AWVALID_net_1;
 AXI_MST_MEM_WDATA_net_1           <= AXI_MST_MEM_WDATA_net_0;
 AXI_MST_MEM_WDATA(63 downto 0)    <= AXI_MST_MEM_WDATA_net_1;
 AXI_MST_MEM_WSTRB_net_1           <= AXI_MST_MEM_WSTRB_net_0;
 AXI_MST_MEM_WSTRB(7 downto 0)     <= AXI_MST_MEM_WSTRB_net_1;
 AXI_MST_MEM_WLAST_net_1           <= AXI_MST_MEM_WLAST_net_0;
 AXI_MST_MEM_WLAST                 <= AXI_MST_MEM_WLAST_net_1;
 AXI_MST_MEM_WVALID_net_1          <= AXI_MST_MEM_WVALID_net_0;
 AXI_MST_MEM_WVALID                <= AXI_MST_MEM_WVALID_net_1;
 AXI_MST_MEM_BREADY_net_1          <= AXI_MST_MEM_BREADY_net_0;
 AXI_MST_MEM_BREADY                <= AXI_MST_MEM_BREADY_net_1;
 AXI_MST_MEM_ARID_net_1            <= AXI_MST_MEM_ARID_net_0;
 AXI_MST_MEM_ARID(4 downto 0)      <= AXI_MST_MEM_ARID_net_1;
 AXI_MST_MEM_ARADDR_net_1          <= AXI_MST_MEM_ARADDR_net_0;
 AXI_MST_MEM_ARADDR(31 downto 0)   <= AXI_MST_MEM_ARADDR_net_1;
 AXI_MST_MEM_ARLEN_net_1           <= AXI_MST_MEM_ARLEN_net_0;
 AXI_MST_MEM_ARLEN(7 downto 0)     <= AXI_MST_MEM_ARLEN_net_1;
 AXI_MST_MEM_ARSIZE_net_1          <= AXI_MST_MEM_ARSIZE_net_0;
 AXI_MST_MEM_ARSIZE(2 downto 0)    <= AXI_MST_MEM_ARSIZE_net_1;
 AXI_MST_MEM_ARBURST_net_1         <= AXI_MST_MEM_ARBURST_net_0;
 AXI_MST_MEM_ARBURST(1 downto 0)   <= AXI_MST_MEM_ARBURST_net_1;
 AXI_MST_MEM_ARLOCK_net_1          <= AXI_MST_MEM_ARLOCK_net_0;
 AXI_MST_MEM_ARLOCK                <= AXI_MST_MEM_ARLOCK_net_1;
 AXI_MST_MEM_ARCACHE_net_1         <= AXI_MST_MEM_ARCACHE_net_0;
 AXI_MST_MEM_ARCACHE(3 downto 0)   <= AXI_MST_MEM_ARCACHE_net_1;
 AXI_MST_MEM_ARPROT_net_1          <= AXI_MST_MEM_ARPROT_net_0;
 AXI_MST_MEM_ARPROT(2 downto 0)    <= AXI_MST_MEM_ARPROT_net_1;
 AXI_MST_MEM_ARQOS_net_1           <= AXI_MST_MEM_ARQOS_net_0;
 AXI_MST_MEM_ARQOS(3 downto 0)     <= AXI_MST_MEM_ARQOS_net_1;
 AXI_MST_MEM_ARREGION_net_1        <= AXI_MST_MEM_ARREGION_net_0;
 AXI_MST_MEM_ARREGION(3 downto 0)  <= AXI_MST_MEM_ARREGION_net_1;
 AXI_MST_MEM_ARVALID_net_1         <= AXI_MST_MEM_ARVALID_net_0;
 AXI_MST_MEM_ARVALID               <= AXI_MST_MEM_ARVALID_net_1;
 AXI_MST_MEM_RREADY_net_1          <= AXI_MST_MEM_RREADY_net_0;
 AXI_MST_MEM_RREADY                <= AXI_MST_MEM_RREADY_net_1;
 AXI_MST_MEM_AWUSER_net_1          <= AXI_MST_MEM_AWUSER_net_0;
 AXI_MST_MEM_AWUSER                <= AXI_MST_MEM_AWUSER_net_1;
 AXI_MST_MEM_WUSER_net_1           <= AXI_MST_MEM_WUSER_net_0;
 AXI_MST_MEM_WUSER                 <= AXI_MST_MEM_WUSER_net_1;
 AXI_MST_MEM_ARUSER_net_1          <= AXI_MST_MEM_ARUSER_net_0;
 AXI_MST_MEM_ARUSER                <= AXI_MST_MEM_ARUSER_net_1;
 AXI_MST_MMIO_AWID_net_1           <= AXI_MST_MMIO_AWID_net_0;
 AXI_MST_MMIO_AWID(4 downto 0)     <= AXI_MST_MMIO_AWID_net_1;
 AXI_MST_MMIO_AWADDR_net_1         <= AXI_MST_MMIO_AWADDR_net_0;
 AXI_MST_MMIO_AWADDR(31 downto 0)  <= AXI_MST_MMIO_AWADDR_net_1;
 AXI_MST_MMIO_AWLEN_net_1          <= AXI_MST_MMIO_AWLEN_net_0;
 AXI_MST_MMIO_AWLEN(7 downto 0)    <= AXI_MST_MMIO_AWLEN_net_1;
 AXI_MST_MMIO_AWSIZE_net_1         <= AXI_MST_MMIO_AWSIZE_net_0;
 AXI_MST_MMIO_AWSIZE(2 downto 0)   <= AXI_MST_MMIO_AWSIZE_net_1;
 AXI_MST_MMIO_AWBURST_net_1        <= AXI_MST_MMIO_AWBURST_net_0;
 AXI_MST_MMIO_AWBURST(1 downto 0)  <= AXI_MST_MMIO_AWBURST_net_1;
 AXI_MST_MMIO_AWLOCK_net_1         <= AXI_MST_MMIO_AWLOCK_net_0;
 AXI_MST_MMIO_AWLOCK               <= AXI_MST_MMIO_AWLOCK_net_1;
 AXI_MST_MMIO_AWCACHE_net_1        <= AXI_MST_MMIO_AWCACHE_net_0;
 AXI_MST_MMIO_AWCACHE(3 downto 0)  <= AXI_MST_MMIO_AWCACHE_net_1;
 AXI_MST_MMIO_AWPROT_net_1         <= AXI_MST_MMIO_AWPROT_net_0;
 AXI_MST_MMIO_AWPROT(2 downto 0)   <= AXI_MST_MMIO_AWPROT_net_1;
 AXI_MST_MMIO_AWQOS_net_1          <= AXI_MST_MMIO_AWQOS_net_0;
 AXI_MST_MMIO_AWQOS(3 downto 0)    <= AXI_MST_MMIO_AWQOS_net_1;
 AXI_MST_MMIO_AWREGION_net_1       <= AXI_MST_MMIO_AWREGION_net_0;
 AXI_MST_MMIO_AWREGION(3 downto 0) <= AXI_MST_MMIO_AWREGION_net_1;
 AXI_MST_MMIO_AWVALID_net_1        <= AXI_MST_MMIO_AWVALID_net_0;
 AXI_MST_MMIO_AWVALID              <= AXI_MST_MMIO_AWVALID_net_1;
 AXI_MST_MMIO_WDATA_net_1          <= AXI_MST_MMIO_WDATA_net_0;
 AXI_MST_MMIO_WDATA(63 downto 0)   <= AXI_MST_MMIO_WDATA_net_1;
 AXI_MST_MMIO_WSTRB_net_1          <= AXI_MST_MMIO_WSTRB_net_0;
 AXI_MST_MMIO_WSTRB(7 downto 0)    <= AXI_MST_MMIO_WSTRB_net_1;
 AXI_MST_MMIO_WLAST_net_1          <= AXI_MST_MMIO_WLAST_net_0;
 AXI_MST_MMIO_WLAST                <= AXI_MST_MMIO_WLAST_net_1;
 AXI_MST_MMIO_WVALID_net_1         <= AXI_MST_MMIO_WVALID_net_0;
 AXI_MST_MMIO_WVALID               <= AXI_MST_MMIO_WVALID_net_1;
 AXI_MST_MMIO_BREADY_net_1         <= AXI_MST_MMIO_BREADY_net_0;
 AXI_MST_MMIO_BREADY               <= AXI_MST_MMIO_BREADY_net_1;
 AXI_MST_MMIO_ARID_net_1           <= AXI_MST_MMIO_ARID_net_0;
 AXI_MST_MMIO_ARID(4 downto 0)     <= AXI_MST_MMIO_ARID_net_1;
 AXI_MST_MMIO_ARADDR_net_1         <= AXI_MST_MMIO_ARADDR_net_0;
 AXI_MST_MMIO_ARADDR(31 downto 0)  <= AXI_MST_MMIO_ARADDR_net_1;
 AXI_MST_MMIO_ARLEN_net_1          <= AXI_MST_MMIO_ARLEN_net_0;
 AXI_MST_MMIO_ARLEN(7 downto 0)    <= AXI_MST_MMIO_ARLEN_net_1;
 AXI_MST_MMIO_ARSIZE_net_1         <= AXI_MST_MMIO_ARSIZE_net_0;
 AXI_MST_MMIO_ARSIZE(2 downto 0)   <= AXI_MST_MMIO_ARSIZE_net_1;
 AXI_MST_MMIO_ARBURST_net_1        <= AXI_MST_MMIO_ARBURST_net_0;
 AXI_MST_MMIO_ARBURST(1 downto 0)  <= AXI_MST_MMIO_ARBURST_net_1;
 AXI_MST_MMIO_ARLOCK_net_1         <= AXI_MST_MMIO_ARLOCK_net_0;
 AXI_MST_MMIO_ARLOCK               <= AXI_MST_MMIO_ARLOCK_net_1;
 AXI_MST_MMIO_ARCACHE_net_1        <= AXI_MST_MMIO_ARCACHE_net_0;
 AXI_MST_MMIO_ARCACHE(3 downto 0)  <= AXI_MST_MMIO_ARCACHE_net_1;
 AXI_MST_MMIO_ARPROT_net_1         <= AXI_MST_MMIO_ARPROT_net_0;
 AXI_MST_MMIO_ARPROT(2 downto 0)   <= AXI_MST_MMIO_ARPROT_net_1;
 AXI_MST_MMIO_ARQOS_net_1          <= AXI_MST_MMIO_ARQOS_net_0;
 AXI_MST_MMIO_ARQOS(3 downto 0)    <= AXI_MST_MMIO_ARQOS_net_1;
 AXI_MST_MMIO_ARREGION_net_1       <= AXI_MST_MMIO_ARREGION_net_0;
 AXI_MST_MMIO_ARREGION(3 downto 0) <= AXI_MST_MMIO_ARREGION_net_1;
 AXI_MST_MMIO_ARVALID_net_1        <= AXI_MST_MMIO_ARVALID_net_0;
 AXI_MST_MMIO_ARVALID              <= AXI_MST_MMIO_ARVALID_net_1;
 AXI_MST_MMIO_RREADY_net_1         <= AXI_MST_MMIO_RREADY_net_0;
 AXI_MST_MMIO_RREADY               <= AXI_MST_MMIO_RREADY_net_1;
 AXI_MST_MMIO_AWUSER_net_1         <= AXI_MST_MMIO_AWUSER_net_0;
 AXI_MST_MMIO_AWUSER               <= AXI_MST_MMIO_AWUSER_net_1;
 AXI_MST_MMIO_WUSER_net_1          <= AXI_MST_MMIO_WUSER_net_0;
 AXI_MST_MMIO_WUSER                <= AXI_MST_MMIO_WUSER_net_1;
 AXI_MST_MMIO_ARUSER_net_1         <= AXI_MST_MMIO_ARUSER_net_0;
 AXI_MST_MMIO_ARUSER               <= AXI_MST_MMIO_ARUSER_net_1;
----------------------------------------------------------------------
-- Component instances
----------------------------------------------------------------------
-- CORERISCV_AXI4_C0_0   -   Actel:DirectCore:CORERISCV_AXI4:2.0.102
CORERISCV_AXI4_C0_0 : CORERISCV_AXI4_C0_CORERISCV_AXI4_C0_0_CORERISCV_AXI4
    generic map( 
        RESET_VECTOR_ADDR => ( 16#60000000# )
        )
    port map( 
        -- Inputs
        CLK                   => CLK,
        RESET                 => RESET,
        AXI_MST_MEM_AWREADY   => AXI_MST_MEM_AWREADY,
        AXI_MST_MEM_WREADY    => AXI_MST_MEM_WREADY,
        AXI_MST_MEM_BVALID    => AXI_MST_MEM_BVALID,
        AXI_MST_MEM_BRESP     => AXI_MST_MEM_BRESP,
        AXI_MST_MEM_BID       => AXI_MST_MEM_BID,
        AXI_MST_MEM_BUSER     => AXI_MST_MEM_BUSER,
        AXI_MST_MEM_ARREADY   => AXI_MST_MEM_ARREADY,
        AXI_MST_MEM_RVALID    => AXI_MST_MEM_RVALID,
        AXI_MST_MEM_RRESP     => AXI_MST_MEM_RRESP,
        AXI_MST_MEM_RDATA     => AXI_MST_MEM_RDATA,
        AXI_MST_MEM_RLAST     => AXI_MST_MEM_RLAST,
        AXI_MST_MEM_RID       => AXI_MST_MEM_RID,
        AXI_MST_MEM_RUSER     => AXI_MST_MEM_RUSER,
        AXI_MST_MMIO_AWREADY  => AXI_MST_MMIO_AWREADY,
        AXI_MST_MMIO_WREADY   => AXI_MST_MMIO_WREADY,
        AXI_MST_MMIO_BVALID   => AXI_MST_MMIO_BVALID,
        AXI_MST_MMIO_BRESP    => AXI_MST_MMIO_BRESP,
        AXI_MST_MMIO_BID      => AXI_MST_MMIO_BID,
        AXI_MST_MMIO_BUSER    => AXI_MST_MMIO_BUSER,
        AXI_MST_MMIO_ARREADY  => AXI_MST_MMIO_ARREADY,
        AXI_MST_MMIO_RVALID   => AXI_MST_MMIO_RVALID,
        AXI_MST_MMIO_RRESP    => AXI_MST_MMIO_RRESP,
        AXI_MST_MMIO_RDATA    => AXI_MST_MMIO_RDATA,
        AXI_MST_MMIO_RLAST    => AXI_MST_MMIO_RLAST,
        AXI_MST_MMIO_RID      => AXI_MST_MMIO_RID,
        AXI_MST_MMIO_RUSER    => AXI_MST_MMIO_RUSER,
        IRQ                   => IRQ,
        TDI                   => TDI,
        TCK                   => TCK,
        TMS                   => TMS,
        TRST                  => TRST,
        -- Outputs
        AXI_MST_MEM_AWVALID   => AXI_MST_MEM_AWVALID_net_0,
        AXI_MST_MEM_AWADDR    => AXI_MST_MEM_AWADDR_net_0,
        AXI_MST_MEM_AWLEN     => AXI_MST_MEM_AWLEN_net_0,
        AXI_MST_MEM_AWSIZE    => AXI_MST_MEM_AWSIZE_net_0,
        AXI_MST_MEM_AWBURST   => AXI_MST_MEM_AWBURST_net_0,
        AXI_MST_MEM_AWLOCK    => AXI_MST_MEM_AWLOCK_net_0,
        AXI_MST_MEM_AWCACHE   => AXI_MST_MEM_AWCACHE_net_0,
        AXI_MST_MEM_AWPROT    => AXI_MST_MEM_AWPROT_net_0,
        AXI_MST_MEM_AWQOS     => AXI_MST_MEM_AWQOS_net_0,
        AXI_MST_MEM_AWREGION  => AXI_MST_MEM_AWREGION_net_0,
        AXI_MST_MEM_AWID      => AXI_MST_MEM_AWID_net_0,
        AXI_MST_MEM_AWUSER    => AXI_MST_MEM_AWUSER_net_0,
        AXI_MST_MEM_WVALID    => AXI_MST_MEM_WVALID_net_0,
        AXI_MST_MEM_WDATA     => AXI_MST_MEM_WDATA_net_0,
        AXI_MST_MEM_WLAST     => AXI_MST_MEM_WLAST_net_0,
        AXI_MST_MEM_WSTRB     => AXI_MST_MEM_WSTRB_net_0,
        AXI_MST_MEM_WUSER     => AXI_MST_MEM_WUSER_net_0,
        AXI_MST_MEM_BREADY    => AXI_MST_MEM_BREADY_net_0,
        AXI_MST_MEM_ARVALID   => AXI_MST_MEM_ARVALID_net_0,
        AXI_MST_MEM_ARADDR    => AXI_MST_MEM_ARADDR_net_0,
        AXI_MST_MEM_ARLEN     => AXI_MST_MEM_ARLEN_net_0,
        AXI_MST_MEM_ARSIZE    => AXI_MST_MEM_ARSIZE_net_0,
        AXI_MST_MEM_ARBURST   => AXI_MST_MEM_ARBURST_net_0,
        AXI_MST_MEM_ARLOCK    => AXI_MST_MEM_ARLOCK_net_0,
        AXI_MST_MEM_ARCACHE   => AXI_MST_MEM_ARCACHE_net_0,
        AXI_MST_MEM_ARPROT    => AXI_MST_MEM_ARPROT_net_0,
        AXI_MST_MEM_ARQOS     => AXI_MST_MEM_ARQOS_net_0,
        AXI_MST_MEM_ARREGION  => AXI_MST_MEM_ARREGION_net_0,
        AXI_MST_MEM_ARID      => AXI_MST_MEM_ARID_net_0,
        AXI_MST_MEM_ARUSER    => AXI_MST_MEM_ARUSER_net_0,
        AXI_MST_MEM_RREADY    => AXI_MST_MEM_RREADY_net_0,
        AXI_MST_MMIO_AWVALID  => AXI_MST_MMIO_AWVALID_net_0,
        AXI_MST_MMIO_AWADDR   => AXI_MST_MMIO_AWADDR_net_0,
        AXI_MST_MMIO_AWLEN    => AXI_MST_MMIO_AWLEN_net_0,
        AXI_MST_MMIO_AWSIZE   => AXI_MST_MMIO_AWSIZE_net_0,
        AXI_MST_MMIO_AWBURST  => AXI_MST_MMIO_AWBURST_net_0,
        AXI_MST_MMIO_AWLOCK   => AXI_MST_MMIO_AWLOCK_net_0,
        AXI_MST_MMIO_AWCACHE  => AXI_MST_MMIO_AWCACHE_net_0,
        AXI_MST_MMIO_AWPROT   => AXI_MST_MMIO_AWPROT_net_0,
        AXI_MST_MMIO_AWQOS    => AXI_MST_MMIO_AWQOS_net_0,
        AXI_MST_MMIO_AWREGION => AXI_MST_MMIO_AWREGION_net_0,
        AXI_MST_MMIO_AWID     => AXI_MST_MMIO_AWID_net_0,
        AXI_MST_MMIO_AWUSER   => AXI_MST_MMIO_AWUSER_net_0,
        AXI_MST_MMIO_WVALID   => AXI_MST_MMIO_WVALID_net_0,
        AXI_MST_MMIO_WDATA    => AXI_MST_MMIO_WDATA_net_0,
        AXI_MST_MMIO_WLAST    => AXI_MST_MMIO_WLAST_net_0,
        AXI_MST_MMIO_WSTRB    => AXI_MST_MMIO_WSTRB_net_0,
        AXI_MST_MMIO_WUSER    => AXI_MST_MMIO_WUSER_net_0,
        AXI_MST_MMIO_BREADY   => AXI_MST_MMIO_BREADY_net_0,
        AXI_MST_MMIO_ARVALID  => AXI_MST_MMIO_ARVALID_net_0,
        AXI_MST_MMIO_ARADDR   => AXI_MST_MMIO_ARADDR_net_0,
        AXI_MST_MMIO_ARLEN    => AXI_MST_MMIO_ARLEN_net_0,
        AXI_MST_MMIO_ARSIZE   => AXI_MST_MMIO_ARSIZE_net_0,
        AXI_MST_MMIO_ARBURST  => AXI_MST_MMIO_ARBURST_net_0,
        AXI_MST_MMIO_ARLOCK   => AXI_MST_MMIO_ARLOCK_net_0,
        AXI_MST_MMIO_ARCACHE  => AXI_MST_MMIO_ARCACHE_net_0,
        AXI_MST_MMIO_ARPROT   => AXI_MST_MMIO_ARPROT_net_0,
        AXI_MST_MMIO_ARQOS    => AXI_MST_MMIO_ARQOS_net_0,
        AXI_MST_MMIO_ARREGION => AXI_MST_MMIO_ARREGION_net_0,
        AXI_MST_MMIO_ARID     => AXI_MST_MMIO_ARID_net_0,
        AXI_MST_MMIO_ARUSER   => AXI_MST_MMIO_ARUSER_net_0,
        AXI_MST_MMIO_RREADY   => AXI_MST_MMIO_RREADY_net_0,
        TDO                   => TDO_net_0,
        DRV_TDO               => DRV_TDO_net_0,
        AXI_MST_MEM_WID       => AXI_MST_MEM_WID_net_0,
        AXI_MST_MMIO_WID      => AXI_MST_MMIO_WID_net_0 
        );

end RTL;
