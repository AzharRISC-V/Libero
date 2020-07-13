----------------------------------------------------------------------
-- Created by SmartDesign Fri Apr  3 10:37:11 2020
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
-- COREAHBLTOAXI_C0 entity declaration
----------------------------------------------------------------------
entity COREAHBLTOAXI_C0 is
    -- Port list
    port(
        -- Inputs
        ACLK      : in  std_logic;
        ARESETn   : in  std_logic;
        ARREADY   : in  std_logic;
        AWREADY   : in  std_logic;
        BID       : in  std_logic_vector(3 downto 0);
        BRESP     : in  std_logic_vector(1 downto 0);
        BVALID    : in  std_logic;
        HADDR     : in  std_logic_vector(31 downto 0);
        HBURST    : in  std_logic_vector(2 downto 0);
        HCLK      : in  std_logic;
        HMASTLOCK : in  std_logic;
        HREADY    : in  std_logic;
        HRESETn   : in  std_logic;
        HSEL      : in  std_logic;
        HSIZE     : in  std_logic_vector(2 downto 0);
        HTRANS    : in  std_logic_vector(1 downto 0);
        HWDATA    : in  std_logic_vector(31 downto 0);
        HWRITE    : in  std_logic;
        RDATA     : in  std_logic_vector(63 downto 0);
        RID       : in  std_logic_vector(3 downto 0);
        RLAST     : in  std_logic;
        RRESP     : in  std_logic_vector(1 downto 0);
        RVALID    : in  std_logic;
        WREADY    : in  std_logic;
        -- Outputs
        ARADDR    : out std_logic_vector(31 downto 0);
        ARBURST   : out std_logic_vector(1 downto 0);
        ARID      : out std_logic_vector(3 downto 0);
        ARLEN     : out std_logic_vector(3 downto 0);
        ARLOCK    : out std_logic_vector(1 downto 0);
        ARSIZE    : out std_logic_vector(2 downto 0);
        ARVALID   : out std_logic;
        AWADDR    : out std_logic_vector(31 downto 0);
        AWBURST   : out std_logic_vector(1 downto 0);
        AWID      : out std_logic_vector(3 downto 0);
        AWLEN     : out std_logic_vector(3 downto 0);
        AWLOCK    : out std_logic_vector(1 downto 0);
        AWSIZE    : out std_logic_vector(2 downto 0);
        AWVALID   : out std_logic;
        BREADY    : out std_logic;
        HRDATA    : out std_logic_vector(31 downto 0);
        HREADYOUT : out std_logic;
        HRESP     : out std_logic_vector(1 downto 0);
        RREADY    : out std_logic;
        WDATA     : out std_logic_vector(63 downto 0);
        WID       : out std_logic_vector(3 downto 0);
        WLAST     : out std_logic;
        WSTRB     : out std_logic_vector(7 downto 0);
        WVALID    : out std_logic
        );
end COREAHBLTOAXI_C0;
----------------------------------------------------------------------
-- COREAHBLTOAXI_C0 architecture body
----------------------------------------------------------------------
architecture RTL of COREAHBLTOAXI_C0 is
----------------------------------------------------------------------
-- Component declarations
----------------------------------------------------------------------
-- COREAHBLTOAXI_C0_COREAHBLTOAXI_C0_0_COREAHBLTOAXI   -   Actel:DirectCore:COREAHBLTOAXI:2.1.101
component COREAHBLTOAXI_C0_COREAHBLTOAXI_C0_0_COREAHBLTOAXI
    generic( 
        AHB_AWIDTH   : integer := 32 ;
        AHB_DWIDTH   : integer := 32 ;
        AXI_AWIDTH   : integer := 32 ;
        AXI_DWIDTH   : integer := 64 ;
        CLOCKS_ASYNC : integer := 0 ;
        FAMILY       : integer := 19 ;
        UNDEF_BURST  : integer := 0 
        );
    -- Port list
    port(
        -- Inputs
        ACLK      : in  std_logic;
        ARESETn   : in  std_logic;
        ARREADY   : in  std_logic;
        AWREADY   : in  std_logic;
        BID       : in  std_logic_vector(3 downto 0);
        BRESP     : in  std_logic_vector(1 downto 0);
        BVALID    : in  std_logic;
        HADDR     : in  std_logic_vector(31 downto 0);
        HBURST    : in  std_logic_vector(2 downto 0);
        HCLK      : in  std_logic;
        HMASTLOCK : in  std_logic;
        HREADY    : in  std_logic;
        HRESETn   : in  std_logic;
        HSEL      : in  std_logic;
        HSIZE     : in  std_logic_vector(2 downto 0);
        HTRANS    : in  std_logic_vector(1 downto 0);
        HWDATA    : in  std_logic_vector(31 downto 0);
        HWRITE    : in  std_logic;
        RDATA     : in  std_logic_vector(63 downto 0);
        RID       : in  std_logic_vector(3 downto 0);
        RLAST     : in  std_logic;
        RRESP     : in  std_logic_vector(1 downto 0);
        RVALID    : in  std_logic;
        WREADY    : in  std_logic;
        -- Outputs
        ARADDR    : out std_logic_vector(31 downto 0);
        ARBURST   : out std_logic_vector(1 downto 0);
        ARID      : out std_logic_vector(3 downto 0);
        ARLEN     : out std_logic_vector(3 downto 0);
        ARLOCK    : out std_logic_vector(1 downto 0);
        ARSIZE    : out std_logic_vector(2 downto 0);
        ARVALID   : out std_logic;
        AWADDR    : out std_logic_vector(31 downto 0);
        AWBURST   : out std_logic_vector(1 downto 0);
        AWID      : out std_logic_vector(3 downto 0);
        AWLEN     : out std_logic_vector(3 downto 0);
        AWLOCK    : out std_logic_vector(1 downto 0);
        AWSIZE    : out std_logic_vector(2 downto 0);
        AWVALID   : out std_logic;
        BREADY    : out std_logic;
        HRDATA    : out std_logic_vector(31 downto 0);
        HREADYOUT : out std_logic;
        HRESP     : out std_logic_vector(1 downto 0);
        RREADY    : out std_logic;
        WDATA     : out std_logic_vector(63 downto 0);
        WID       : out std_logic_vector(3 downto 0);
        WLAST     : out std_logic;
        WSTRB     : out std_logic_vector(7 downto 0);
        WVALID    : out std_logic
        );
end component;
----------------------------------------------------------------------
-- Signal declarations
----------------------------------------------------------------------
signal AHBSlaveIF_HRDATA          : std_logic_vector(31 downto 0);
signal AHBSlaveIF_HREADYOUT       : std_logic;
signal AHBSlaveIF_HRESP           : std_logic_vector(1 downto 0);
signal AXIMasterIF_ARADDR         : std_logic_vector(31 downto 0);
signal AXIMasterIF_ARBURST        : std_logic_vector(1 downto 0);
signal AXIMasterIF_ARID           : std_logic_vector(3 downto 0);
signal AXIMasterIF_ARLEN          : std_logic_vector(3 downto 0);
signal AXIMasterIF_ARLOCK         : std_logic_vector(1 downto 0);
signal AXIMasterIF_ARSIZE         : std_logic_vector(2 downto 0);
signal AXIMasterIF_ARVALID        : std_logic;
signal AXIMasterIF_AWADDR         : std_logic_vector(31 downto 0);
signal AXIMasterIF_AWBURST        : std_logic_vector(1 downto 0);
signal AXIMasterIF_AWID           : std_logic_vector(3 downto 0);
signal AXIMasterIF_AWLEN          : std_logic_vector(3 downto 0);
signal AXIMasterIF_AWLOCK         : std_logic_vector(1 downto 0);
signal AXIMasterIF_AWSIZE         : std_logic_vector(2 downto 0);
signal AXIMasterIF_AWVALID        : std_logic;
signal AXIMasterIF_BREADY         : std_logic;
signal AXIMasterIF_RREADY         : std_logic;
signal AXIMasterIF_WDATA          : std_logic_vector(63 downto 0);
signal AXIMasterIF_WID            : std_logic_vector(3 downto 0);
signal AXIMasterIF_WLAST          : std_logic;
signal AXIMasterIF_WSTRB          : std_logic_vector(7 downto 0);
signal AXIMasterIF_WVALID         : std_logic;
signal AHBSlaveIF_HREADYOUT_net_0 : std_logic;
signal AXIMasterIF_AWVALID_net_0  : std_logic;
signal AXIMasterIF_WLAST_net_0    : std_logic;
signal AXIMasterIF_WVALID_net_0   : std_logic;
signal AXIMasterIF_BREADY_net_0   : std_logic;
signal AXIMasterIF_ARVALID_net_0  : std_logic;
signal AXIMasterIF_RREADY_net_0   : std_logic;
signal AHBSlaveIF_HRDATA_net_0    : std_logic_vector(31 downto 0);
signal AHBSlaveIF_HRESP_net_0     : std_logic_vector(1 downto 0);
signal AXIMasterIF_AWID_net_0     : std_logic_vector(3 downto 0);
signal AXIMasterIF_AWADDR_net_0   : std_logic_vector(31 downto 0);
signal AXIMasterIF_AWLEN_net_0    : std_logic_vector(3 downto 0);
signal AXIMasterIF_AWSIZE_net_0   : std_logic_vector(2 downto 0);
signal AXIMasterIF_AWBURST_net_0  : std_logic_vector(1 downto 0);
signal AXIMasterIF_AWLOCK_net_0   : std_logic_vector(1 downto 0);
signal AXIMasterIF_WID_net_0      : std_logic_vector(3 downto 0);
signal AXIMasterIF_WDATA_net_0    : std_logic_vector(63 downto 0);
signal AXIMasterIF_WSTRB_net_0    : std_logic_vector(7 downto 0);
signal AXIMasterIF_ARID_net_0     : std_logic_vector(3 downto 0);
signal AXIMasterIF_ARADDR_net_0   : std_logic_vector(31 downto 0);
signal AXIMasterIF_ARLEN_net_0    : std_logic_vector(3 downto 0);
signal AXIMasterIF_ARSIZE_net_0   : std_logic_vector(2 downto 0);
signal AXIMasterIF_ARBURST_net_0  : std_logic_vector(1 downto 0);
signal AXIMasterIF_ARLOCK_net_0   : std_logic_vector(1 downto 0);

begin
----------------------------------------------------------------------
-- Top level output port assignments
----------------------------------------------------------------------
 AHBSlaveIF_HREADYOUT_net_0 <= AHBSlaveIF_HREADYOUT;
 HREADYOUT                  <= AHBSlaveIF_HREADYOUT_net_0;
 AXIMasterIF_AWVALID_net_0  <= AXIMasterIF_AWVALID;
 AWVALID                    <= AXIMasterIF_AWVALID_net_0;
 AXIMasterIF_WLAST_net_0    <= AXIMasterIF_WLAST;
 WLAST                      <= AXIMasterIF_WLAST_net_0;
 AXIMasterIF_WVALID_net_0   <= AXIMasterIF_WVALID;
 WVALID                     <= AXIMasterIF_WVALID_net_0;
 AXIMasterIF_BREADY_net_0   <= AXIMasterIF_BREADY;
 BREADY                     <= AXIMasterIF_BREADY_net_0;
 AXIMasterIF_ARVALID_net_0  <= AXIMasterIF_ARVALID;
 ARVALID                    <= AXIMasterIF_ARVALID_net_0;
 AXIMasterIF_RREADY_net_0   <= AXIMasterIF_RREADY;
 RREADY                     <= AXIMasterIF_RREADY_net_0;
 AHBSlaveIF_HRDATA_net_0    <= AHBSlaveIF_HRDATA;
 HRDATA(31 downto 0)        <= AHBSlaveIF_HRDATA_net_0;
 AHBSlaveIF_HRESP_net_0     <= AHBSlaveIF_HRESP;
 HRESP(1 downto 0)          <= AHBSlaveIF_HRESP_net_0;
 AXIMasterIF_AWID_net_0     <= AXIMasterIF_AWID;
 AWID(3 downto 0)           <= AXIMasterIF_AWID_net_0;
 AXIMasterIF_AWADDR_net_0   <= AXIMasterIF_AWADDR;
 AWADDR(31 downto 0)        <= AXIMasterIF_AWADDR_net_0;
 AXIMasterIF_AWLEN_net_0    <= AXIMasterIF_AWLEN;
 AWLEN(3 downto 0)          <= AXIMasterIF_AWLEN_net_0;
 AXIMasterIF_AWSIZE_net_0   <= AXIMasterIF_AWSIZE;
 AWSIZE(2 downto 0)         <= AXIMasterIF_AWSIZE_net_0;
 AXIMasterIF_AWBURST_net_0  <= AXIMasterIF_AWBURST;
 AWBURST(1 downto 0)        <= AXIMasterIF_AWBURST_net_0;
 AXIMasterIF_AWLOCK_net_0   <= AXIMasterIF_AWLOCK;
 AWLOCK(1 downto 0)         <= AXIMasterIF_AWLOCK_net_0;
 AXIMasterIF_WID_net_0      <= AXIMasterIF_WID;
 WID(3 downto 0)            <= AXIMasterIF_WID_net_0;
 AXIMasterIF_WDATA_net_0    <= AXIMasterIF_WDATA;
 WDATA(63 downto 0)         <= AXIMasterIF_WDATA_net_0;
 AXIMasterIF_WSTRB_net_0    <= AXIMasterIF_WSTRB;
 WSTRB(7 downto 0)          <= AXIMasterIF_WSTRB_net_0;
 AXIMasterIF_ARID_net_0     <= AXIMasterIF_ARID;
 ARID(3 downto 0)           <= AXIMasterIF_ARID_net_0;
 AXIMasterIF_ARADDR_net_0   <= AXIMasterIF_ARADDR;
 ARADDR(31 downto 0)        <= AXIMasterIF_ARADDR_net_0;
 AXIMasterIF_ARLEN_net_0    <= AXIMasterIF_ARLEN;
 ARLEN(3 downto 0)          <= AXIMasterIF_ARLEN_net_0;
 AXIMasterIF_ARSIZE_net_0   <= AXIMasterIF_ARSIZE;
 ARSIZE(2 downto 0)         <= AXIMasterIF_ARSIZE_net_0;
 AXIMasterIF_ARBURST_net_0  <= AXIMasterIF_ARBURST;
 ARBURST(1 downto 0)        <= AXIMasterIF_ARBURST_net_0;
 AXIMasterIF_ARLOCK_net_0   <= AXIMasterIF_ARLOCK;
 ARLOCK(1 downto 0)         <= AXIMasterIF_ARLOCK_net_0;
----------------------------------------------------------------------
-- Component instances
----------------------------------------------------------------------
-- COREAHBLTOAXI_C0_0   -   Actel:DirectCore:COREAHBLTOAXI:2.1.101
COREAHBLTOAXI_C0_0 : COREAHBLTOAXI_C0_COREAHBLTOAXI_C0_0_COREAHBLTOAXI
    generic map( 
        AHB_AWIDTH   => ( 32 ),
        AHB_DWIDTH   => ( 32 ),
        AXI_AWIDTH   => ( 32 ),
        AXI_DWIDTH   => ( 64 ),
        CLOCKS_ASYNC => ( 0 ),
        FAMILY       => ( 19 ),
        UNDEF_BURST  => ( 0 )
        )
    port map( 
        -- Inputs
        HCLK      => HCLK,
        HRESETn   => HRESETn,
        HSEL      => HSEL,
        HWRITE    => HWRITE,
        HREADY    => HREADY,
        HMASTLOCK => HMASTLOCK,
        ACLK      => ACLK,
        ARESETn   => ARESETn,
        AWREADY   => AWREADY,
        WREADY    => WREADY,
        BVALID    => BVALID,
        ARREADY   => ARREADY,
        RLAST     => RLAST,
        RVALID    => RVALID,
        HADDR     => HADDR,
        HTRANS    => HTRANS,
        HSIZE     => HSIZE,
        HWDATA    => HWDATA,
        HBURST    => HBURST,
        BID       => BID,
        BRESP     => BRESP,
        RID       => RID,
        RDATA     => RDATA,
        RRESP     => RRESP,
        -- Outputs
        HREADYOUT => AHBSlaveIF_HREADYOUT,
        AWVALID   => AXIMasterIF_AWVALID,
        WLAST     => AXIMasterIF_WLAST,
        WVALID    => AXIMasterIF_WVALID,
        BREADY    => AXIMasterIF_BREADY,
        ARVALID   => AXIMasterIF_ARVALID,
        RREADY    => AXIMasterIF_RREADY,
        HRESP     => AHBSlaveIF_HRESP,
        HRDATA    => AHBSlaveIF_HRDATA,
        AWID      => AXIMasterIF_AWID,
        AWADDR    => AXIMasterIF_AWADDR,
        AWLEN     => AXIMasterIF_AWLEN,
        AWSIZE    => AXIMasterIF_AWSIZE,
        AWBURST   => AXIMasterIF_AWBURST,
        AWLOCK    => AXIMasterIF_AWLOCK,
        WID       => AXIMasterIF_WID,
        WDATA     => AXIMasterIF_WDATA,
        ARID      => AXIMasterIF_ARID,
        ARADDR    => AXIMasterIF_ARADDR,
        ARLEN     => AXIMasterIF_ARLEN,
        ARSIZE    => AXIMasterIF_ARSIZE,
        ARBURST   => AXIMasterIF_ARBURST,
        ARLOCK    => AXIMasterIF_ARLOCK,
        WSTRB     => AXIMasterIF_WSTRB 
        );

end RTL;
