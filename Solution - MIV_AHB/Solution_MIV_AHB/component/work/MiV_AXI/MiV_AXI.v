//////////////////////////////////////////////////////////////////////
// Created by SmartDesign Fri Sep 20 12:12:49 2019
// Version: v12.2 12.700.0.21
//////////////////////////////////////////////////////////////////////

`timescale 1ns / 100ps

// MiV_AXI
module MiV_AXI(
    // Inputs
    CLK,
    IRQ,
    MEM_AXI_0_AR_READY,
    MEM_AXI_0_AW_READY,
    MEM_AXI_0_B_BITS_ID,
    MEM_AXI_0_B_BITS_RESP,
    MEM_AXI_0_B_VALID,
    MEM_AXI_0_R_BITS_DATA,
    MEM_AXI_0_R_BITS_ID,
    MEM_AXI_0_R_BITS_LAST,
    MEM_AXI_0_R_BITS_RESP,
    MEM_AXI_0_R_VALID,
    MEM_AXI_0_W_READY,
    MMIO_AXI_0_AR_READY,
    MMIO_AXI_0_AW_READY,
    MMIO_AXI_0_B_BITS_ID,
    MMIO_AXI_0_B_BITS_RESP,
    MMIO_AXI_0_B_VALID,
    MMIO_AXI_0_R_BITS_DATA,
    MMIO_AXI_0_R_BITS_ID,
    MMIO_AXI_0_R_BITS_LAST,
    MMIO_AXI_0_R_BITS_RESP,
    MMIO_AXI_0_R_VALID,
    MMIO_AXI_0_W_READY,
    RESETN,
    TCK,
    TDI,
    TMS,
    TRST,
    // Outputs
    DRV_TDO,
    EXT_RESETN,
    MEM_AXI_0_AR_BITS_ADDR,
    MEM_AXI_0_AR_BITS_BURST,
    MEM_AXI_0_AR_BITS_CACHE,
    MEM_AXI_0_AR_BITS_ID,
    MEM_AXI_0_AR_BITS_LEN,
    MEM_AXI_0_AR_BITS_LOCK,
    MEM_AXI_0_AR_BITS_PROT,
    MEM_AXI_0_AR_BITS_QOS,
    MEM_AXI_0_AR_BITS_SIZE,
    MEM_AXI_0_AR_VALID,
    MEM_AXI_0_AW_BITS_ADDR,
    MEM_AXI_0_AW_BITS_BURST,
    MEM_AXI_0_AW_BITS_CACHE,
    MEM_AXI_0_AW_BITS_ID,
    MEM_AXI_0_AW_BITS_LEN,
    MEM_AXI_0_AW_BITS_LOCK,
    MEM_AXI_0_AW_BITS_PROT,
    MEM_AXI_0_AW_BITS_QOS,
    MEM_AXI_0_AW_BITS_SIZE,
    MEM_AXI_0_AW_VALID,
    MEM_AXI_0_B_READY,
    MEM_AXI_0_R_READY,
    MEM_AXI_0_W_BITS_DATA,
    MEM_AXI_0_W_BITS_LAST,
    MEM_AXI_0_W_BITS_STRB,
    MEM_AXI_0_W_VALID,
    MEM_AXI_WID,
    MMIO_AXI_0_AR_BITS_ADDR,
    MMIO_AXI_0_AR_BITS_BURST,
    MMIO_AXI_0_AR_BITS_CACHE,
    MMIO_AXI_0_AR_BITS_ID,
    MMIO_AXI_0_AR_BITS_LEN,
    MMIO_AXI_0_AR_BITS_LOCK,
    MMIO_AXI_0_AR_BITS_PROT,
    MMIO_AXI_0_AR_BITS_QOS,
    MMIO_AXI_0_AR_BITS_SIZE,
    MMIO_AXI_0_AR_VALID,
    MMIO_AXI_0_AW_BITS_ADDR,
    MMIO_AXI_0_AW_BITS_BURST,
    MMIO_AXI_0_AW_BITS_CACHE,
    MMIO_AXI_0_AW_BITS_ID,
    MMIO_AXI_0_AW_BITS_LEN,
    MMIO_AXI_0_AW_BITS_LOCK,
    MMIO_AXI_0_AW_BITS_PROT,
    MMIO_AXI_0_AW_BITS_QOS,
    MMIO_AXI_0_AW_BITS_SIZE,
    MMIO_AXI_0_AW_VALID,
    MMIO_AXI_0_B_READY,
    MMIO_AXI_0_R_READY,
    MMIO_AXI_0_W_BITS_DATA,
    MMIO_AXI_0_W_BITS_LAST,
    MMIO_AXI_0_W_BITS_STRB,
    MMIO_AXI_0_W_VALID,
    MMIO_AXI_WID,
    TDO
);

//--------------------------------------------------------------------
// Input
//--------------------------------------------------------------------
input         CLK;
input  [30:0] IRQ;
input         MEM_AXI_0_AR_READY;
input         MEM_AXI_0_AW_READY;
input  [3:0]  MEM_AXI_0_B_BITS_ID;
input  [1:0]  MEM_AXI_0_B_BITS_RESP;
input         MEM_AXI_0_B_VALID;
input  [63:0] MEM_AXI_0_R_BITS_DATA;
input  [3:0]  MEM_AXI_0_R_BITS_ID;
input         MEM_AXI_0_R_BITS_LAST;
input  [1:0]  MEM_AXI_0_R_BITS_RESP;
input         MEM_AXI_0_R_VALID;
input         MEM_AXI_0_W_READY;
input         MMIO_AXI_0_AR_READY;
input         MMIO_AXI_0_AW_READY;
input  [3:0]  MMIO_AXI_0_B_BITS_ID;
input  [1:0]  MMIO_AXI_0_B_BITS_RESP;
input         MMIO_AXI_0_B_VALID;
input  [63:0] MMIO_AXI_0_R_BITS_DATA;
input  [3:0]  MMIO_AXI_0_R_BITS_ID;
input         MMIO_AXI_0_R_BITS_LAST;
input  [1:0]  MMIO_AXI_0_R_BITS_RESP;
input         MMIO_AXI_0_R_VALID;
input         MMIO_AXI_0_W_READY;
input         RESETN;
input         TCK;
input         TDI;
input         TMS;
input         TRST;
//--------------------------------------------------------------------
// Output
//--------------------------------------------------------------------
output        DRV_TDO;
output        EXT_RESETN;
output [31:0] MEM_AXI_0_AR_BITS_ADDR;
output [1:0]  MEM_AXI_0_AR_BITS_BURST;
output [3:0]  MEM_AXI_0_AR_BITS_CACHE;
output [3:0]  MEM_AXI_0_AR_BITS_ID;
output [7:0]  MEM_AXI_0_AR_BITS_LEN;
output        MEM_AXI_0_AR_BITS_LOCK;
output [2:0]  MEM_AXI_0_AR_BITS_PROT;
output [3:0]  MEM_AXI_0_AR_BITS_QOS;
output [2:0]  MEM_AXI_0_AR_BITS_SIZE;
output        MEM_AXI_0_AR_VALID;
output [31:0] MEM_AXI_0_AW_BITS_ADDR;
output [1:0]  MEM_AXI_0_AW_BITS_BURST;
output [3:0]  MEM_AXI_0_AW_BITS_CACHE;
output [3:0]  MEM_AXI_0_AW_BITS_ID;
output [7:0]  MEM_AXI_0_AW_BITS_LEN;
output        MEM_AXI_0_AW_BITS_LOCK;
output [2:0]  MEM_AXI_0_AW_BITS_PROT;
output [3:0]  MEM_AXI_0_AW_BITS_QOS;
output [2:0]  MEM_AXI_0_AW_BITS_SIZE;
output        MEM_AXI_0_AW_VALID;
output        MEM_AXI_0_B_READY;
output        MEM_AXI_0_R_READY;
output [63:0] MEM_AXI_0_W_BITS_DATA;
output        MEM_AXI_0_W_BITS_LAST;
output [7:0]  MEM_AXI_0_W_BITS_STRB;
output        MEM_AXI_0_W_VALID;
output [3:0]  MEM_AXI_WID;
output [30:0] MMIO_AXI_0_AR_BITS_ADDR;
output [1:0]  MMIO_AXI_0_AR_BITS_BURST;
output [3:0]  MMIO_AXI_0_AR_BITS_CACHE;
output [3:0]  MMIO_AXI_0_AR_BITS_ID;
output [7:0]  MMIO_AXI_0_AR_BITS_LEN;
output        MMIO_AXI_0_AR_BITS_LOCK;
output [2:0]  MMIO_AXI_0_AR_BITS_PROT;
output [3:0]  MMIO_AXI_0_AR_BITS_QOS;
output [2:0]  MMIO_AXI_0_AR_BITS_SIZE;
output        MMIO_AXI_0_AR_VALID;
output [30:0] MMIO_AXI_0_AW_BITS_ADDR;
output [1:0]  MMIO_AXI_0_AW_BITS_BURST;
output [3:0]  MMIO_AXI_0_AW_BITS_CACHE;
output [3:0]  MMIO_AXI_0_AW_BITS_ID;
output [7:0]  MMIO_AXI_0_AW_BITS_LEN;
output        MMIO_AXI_0_AW_BITS_LOCK;
output [2:0]  MMIO_AXI_0_AW_BITS_PROT;
output [3:0]  MMIO_AXI_0_AW_BITS_QOS;
output [2:0]  MMIO_AXI_0_AW_BITS_SIZE;
output        MMIO_AXI_0_AW_VALID;
output        MMIO_AXI_0_B_READY;
output        MMIO_AXI_0_R_READY;
output [63:0] MMIO_AXI_0_W_BITS_DATA;
output        MMIO_AXI_0_W_BITS_LAST;
output [7:0]  MMIO_AXI_0_W_BITS_STRB;
output        MMIO_AXI_0_W_VALID;
output [3:0]  MMIO_AXI_WID;
output        TDO;
//--------------------------------------------------------------------
// Nets
//--------------------------------------------------------------------
wire          CLK;
wire          DRV_TDO_net_0;
wire          EXT_RESETN_net_0;
wire   [30:0] IRQ;
wire   [3:0]  MEM_AXI_WID_0;
wire   [31:0] MEM_MST_AXI4_0_ARADDR;
wire   [1:0]  MEM_MST_AXI4_0_ARBURST;
wire   [3:0]  MEM_MST_AXI4_0_ARCACHE;
wire   [3:0]  MEM_MST_AXI4_0_ARID;
wire   [7:0]  MEM_MST_AXI4_0_ARLEN;
wire          MEM_MST_AXI4_0_ARLOCK;
wire   [2:0]  MEM_MST_AXI4_0_ARPROT;
wire   [3:0]  MEM_MST_AXI4_0_ARQOS;
wire          MEM_AXI_0_AR_READY;
wire   [2:0]  MEM_MST_AXI4_0_ARSIZE;
wire          MEM_MST_AXI4_0_ARVALID;
wire   [31:0] MEM_MST_AXI4_0_AWADDR;
wire   [1:0]  MEM_MST_AXI4_0_AWBURST;
wire   [3:0]  MEM_MST_AXI4_0_AWCACHE;
wire   [3:0]  MEM_MST_AXI4_0_AWID;
wire   [7:0]  MEM_MST_AXI4_0_AWLEN;
wire          MEM_MST_AXI4_0_AWLOCK;
wire   [2:0]  MEM_MST_AXI4_0_AWPROT;
wire   [3:0]  MEM_MST_AXI4_0_AWQOS;
wire          MEM_AXI_0_AW_READY;
wire   [2:0]  MEM_MST_AXI4_0_AWSIZE;
wire          MEM_MST_AXI4_0_AWVALID;
wire   [3:0]  MEM_AXI_0_B_BITS_ID;
wire          MEM_MST_AXI4_0_BREADY;
wire   [1:0]  MEM_AXI_0_B_BITS_RESP;
wire          MEM_AXI_0_B_VALID;
wire   [63:0] MEM_AXI_0_R_BITS_DATA;
wire   [3:0]  MEM_AXI_0_R_BITS_ID;
wire          MEM_AXI_0_R_BITS_LAST;
wire          MEM_MST_AXI4_0_RREADY;
wire   [1:0]  MEM_AXI_0_R_BITS_RESP;
wire          MEM_AXI_0_R_VALID;
wire   [63:0] MEM_MST_AXI4_0_WDATA;
wire          MEM_MST_AXI4_0_WLAST;
wire          MEM_AXI_0_W_READY;
wire   [7:0]  MEM_MST_AXI4_0_WSTRB;
wire          MEM_MST_AXI4_0_WVALID;
wire   [3:0]  MMIO_AXI_WID_0;
wire   [30:0] MMIO_MST_AXI4_0_ARADDR;
wire   [1:0]  MMIO_MST_AXI4_0_ARBURST;
wire   [3:0]  MMIO_MST_AXI4_0_ARCACHE;
wire   [3:0]  MMIO_MST_AXI4_0_ARID;
wire   [7:0]  MMIO_MST_AXI4_0_ARLEN;
wire          MMIO_MST_AXI4_0_ARLOCK;
wire   [2:0]  MMIO_MST_AXI4_0_ARPROT;
wire   [3:0]  MMIO_MST_AXI4_0_ARQOS;
wire          MMIO_AXI_0_AR_READY;
wire   [2:0]  MMIO_MST_AXI4_0_ARSIZE;
wire          MMIO_MST_AXI4_0_ARVALID;
wire   [30:0] MMIO_MST_AXI4_0_AWADDR;
wire   [1:0]  MMIO_MST_AXI4_0_AWBURST;
wire   [3:0]  MMIO_MST_AXI4_0_AWCACHE;
wire   [3:0]  MMIO_MST_AXI4_0_AWID;
wire   [7:0]  MMIO_MST_AXI4_0_AWLEN;
wire          MMIO_MST_AXI4_0_AWLOCK;
wire   [2:0]  MMIO_MST_AXI4_0_AWPROT;
wire   [3:0]  MMIO_MST_AXI4_0_AWQOS;
wire          MMIO_AXI_0_AW_READY;
wire   [2:0]  MMIO_MST_AXI4_0_AWSIZE;
wire          MMIO_MST_AXI4_0_AWVALID;
wire   [3:0]  MMIO_AXI_0_B_BITS_ID;
wire          MMIO_MST_AXI4_0_BREADY;
wire   [1:0]  MMIO_AXI_0_B_BITS_RESP;
wire          MMIO_AXI_0_B_VALID;
wire   [63:0] MMIO_AXI_0_R_BITS_DATA;
wire   [3:0]  MMIO_AXI_0_R_BITS_ID;
wire          MMIO_AXI_0_R_BITS_LAST;
wire          MMIO_MST_AXI4_0_RREADY;
wire   [1:0]  MMIO_AXI_0_R_BITS_RESP;
wire          MMIO_AXI_0_R_VALID;
wire   [63:0] MMIO_MST_AXI4_0_WDATA;
wire          MMIO_MST_AXI4_0_WLAST;
wire          MMIO_AXI_0_W_READY;
wire   [7:0]  MMIO_MST_AXI4_0_WSTRB;
wire          MMIO_MST_AXI4_0_WVALID;
wire          RESETN;
wire          TCK;
wire          TDI;
wire          TDO_net_0;
wire          TMS;
wire          TRST;
wire          TDO_net_1;
wire          DRV_TDO_net_1;
wire          EXT_RESETN_net_1;
wire   [3:0]  MEM_AXI_WID_0_net_0;
wire   [3:0]  MMIO_AXI_WID_0_net_0;
wire   [3:0]  MEM_MST_AXI4_0_AWID_net_0;
wire   [31:0] MEM_MST_AXI4_0_AWADDR_net_0;
wire   [7:0]  MEM_MST_AXI4_0_AWLEN_net_0;
wire   [2:0]  MEM_MST_AXI4_0_AWSIZE_net_0;
wire   [1:0]  MEM_MST_AXI4_0_AWBURST_net_0;
wire          MEM_MST_AXI4_0_AWLOCK_net_0;
wire   [3:0]  MEM_MST_AXI4_0_AWCACHE_net_0;
wire   [2:0]  MEM_MST_AXI4_0_AWPROT_net_0;
wire   [3:0]  MEM_MST_AXI4_0_AWQOS_net_0;
wire          MEM_MST_AXI4_0_AWVALID_net_0;
wire   [63:0] MEM_MST_AXI4_0_WDATA_net_0;
wire   [7:0]  MEM_MST_AXI4_0_WSTRB_net_0;
wire          MEM_MST_AXI4_0_WLAST_net_0;
wire          MEM_MST_AXI4_0_WVALID_net_0;
wire          MEM_MST_AXI4_0_BREADY_net_0;
wire   [3:0]  MEM_MST_AXI4_0_ARID_net_0;
wire   [31:0] MEM_MST_AXI4_0_ARADDR_net_0;
wire   [7:0]  MEM_MST_AXI4_0_ARLEN_net_0;
wire   [2:0]  MEM_MST_AXI4_0_ARSIZE_net_0;
wire   [1:0]  MEM_MST_AXI4_0_ARBURST_net_0;
wire          MEM_MST_AXI4_0_ARLOCK_net_0;
wire   [3:0]  MEM_MST_AXI4_0_ARCACHE_net_0;
wire   [2:0]  MEM_MST_AXI4_0_ARPROT_net_0;
wire   [3:0]  MEM_MST_AXI4_0_ARQOS_net_0;
wire          MEM_MST_AXI4_0_ARVALID_net_0;
wire          MEM_MST_AXI4_0_RREADY_net_0;
wire          MMIO_MST_AXI4_0_RREADY_net_0;
wire          MMIO_MST_AXI4_0_ARVALID_net_0;
wire   [3:0]  MMIO_MST_AXI4_0_ARQOS_net_0;
wire   [2:0]  MMIO_MST_AXI4_0_ARPROT_net_0;
wire          MMIO_MST_AXI4_0_WLAST_net_0;
wire   [3:0]  MMIO_MST_AXI4_0_ARCACHE_net_0;
wire          MMIO_MST_AXI4_0_ARLOCK_net_0;
wire   [1:0]  MMIO_MST_AXI4_0_ARBURST_net_0;
wire   [2:0]  MMIO_MST_AXI4_0_ARSIZE_net_0;
wire   [7:0]  MMIO_MST_AXI4_0_ARLEN_net_0;
wire   [30:0] MMIO_MST_AXI4_0_ARADDR_net_0;
wire   [3:0]  MMIO_MST_AXI4_0_ARID_net_0;
wire          MMIO_MST_AXI4_0_BREADY_net_0;
wire          MMIO_MST_AXI4_0_WVALID_net_0;
wire   [7:0]  MMIO_MST_AXI4_0_WSTRB_net_0;
wire   [63:0] MMIO_MST_AXI4_0_WDATA_net_0;
wire          MMIO_MST_AXI4_0_AWVALID_net_0;
wire   [3:0]  MMIO_MST_AXI4_0_AWQOS_net_0;
wire   [2:0]  MMIO_MST_AXI4_0_AWPROT_net_0;
wire   [3:0]  MMIO_MST_AXI4_0_AWCACHE_net_0;
wire          MMIO_MST_AXI4_0_AWLOCK_net_0;
wire   [1:0]  MMIO_MST_AXI4_0_AWBURST_net_0;
wire   [2:0]  MMIO_MST_AXI4_0_AWSIZE_net_0;
wire   [7:0]  MMIO_MST_AXI4_0_AWLEN_net_0;
wire   [30:0] MMIO_MST_AXI4_0_AWADDR_net_0;
wire   [3:0]  MMIO_MST_AXI4_0_AWID_net_0;
//--------------------------------------------------------------------
// Top level output port assignments
//--------------------------------------------------------------------
assign TDO_net_1                     = TDO_net_0;
assign TDO                           = TDO_net_1;
assign DRV_TDO_net_1                 = DRV_TDO_net_0;
assign DRV_TDO                       = DRV_TDO_net_1;
assign EXT_RESETN_net_1              = EXT_RESETN_net_0;
assign EXT_RESETN                    = EXT_RESETN_net_1;
assign MEM_AXI_WID_0_net_0           = MEM_AXI_WID_0;
assign MEM_AXI_WID[3:0]              = MEM_AXI_WID_0_net_0;
assign MMIO_AXI_WID_0_net_0          = MMIO_AXI_WID_0;
assign MMIO_AXI_WID[3:0]             = MMIO_AXI_WID_0_net_0;
assign MEM_MST_AXI4_0_AWID_net_0     = MEM_MST_AXI4_0_AWID;
assign MEM_AXI_0_AW_BITS_ID[3:0]     = MEM_MST_AXI4_0_AWID_net_0;
assign MEM_MST_AXI4_0_AWADDR_net_0   = MEM_MST_AXI4_0_AWADDR;
assign MEM_AXI_0_AW_BITS_ADDR[31:0]  = MEM_MST_AXI4_0_AWADDR_net_0;
assign MEM_MST_AXI4_0_AWLEN_net_0    = MEM_MST_AXI4_0_AWLEN;
assign MEM_AXI_0_AW_BITS_LEN[7:0]    = MEM_MST_AXI4_0_AWLEN_net_0;
assign MEM_MST_AXI4_0_AWSIZE_net_0   = MEM_MST_AXI4_0_AWSIZE;
assign MEM_AXI_0_AW_BITS_SIZE[2:0]   = MEM_MST_AXI4_0_AWSIZE_net_0;
assign MEM_MST_AXI4_0_AWBURST_net_0  = MEM_MST_AXI4_0_AWBURST;
assign MEM_AXI_0_AW_BITS_BURST[1:0]  = MEM_MST_AXI4_0_AWBURST_net_0;
assign MEM_MST_AXI4_0_AWLOCK_net_0   = MEM_MST_AXI4_0_AWLOCK;
assign MEM_AXI_0_AW_BITS_LOCK        = MEM_MST_AXI4_0_AWLOCK_net_0;
assign MEM_MST_AXI4_0_AWCACHE_net_0  = MEM_MST_AXI4_0_AWCACHE;
assign MEM_AXI_0_AW_BITS_CACHE[3:0]  = MEM_MST_AXI4_0_AWCACHE_net_0;
assign MEM_MST_AXI4_0_AWPROT_net_0   = MEM_MST_AXI4_0_AWPROT;
assign MEM_AXI_0_AW_BITS_PROT[2:0]   = MEM_MST_AXI4_0_AWPROT_net_0;
assign MEM_MST_AXI4_0_AWQOS_net_0    = MEM_MST_AXI4_0_AWQOS;
assign MEM_AXI_0_AW_BITS_QOS[3:0]    = MEM_MST_AXI4_0_AWQOS_net_0;
assign MEM_MST_AXI4_0_AWVALID_net_0  = MEM_MST_AXI4_0_AWVALID;
assign MEM_AXI_0_AW_VALID            = MEM_MST_AXI4_0_AWVALID_net_0;
assign MEM_MST_AXI4_0_WDATA_net_0    = MEM_MST_AXI4_0_WDATA;
assign MEM_AXI_0_W_BITS_DATA[63:0]   = MEM_MST_AXI4_0_WDATA_net_0;
assign MEM_MST_AXI4_0_WSTRB_net_0    = MEM_MST_AXI4_0_WSTRB;
assign MEM_AXI_0_W_BITS_STRB[7:0]    = MEM_MST_AXI4_0_WSTRB_net_0;
assign MEM_MST_AXI4_0_WLAST_net_0    = MEM_MST_AXI4_0_WLAST;
assign MEM_AXI_0_W_BITS_LAST         = MEM_MST_AXI4_0_WLAST_net_0;
assign MEM_MST_AXI4_0_WVALID_net_0   = MEM_MST_AXI4_0_WVALID;
assign MEM_AXI_0_W_VALID             = MEM_MST_AXI4_0_WVALID_net_0;
assign MEM_MST_AXI4_0_BREADY_net_0   = MEM_MST_AXI4_0_BREADY;
assign MEM_AXI_0_B_READY             = MEM_MST_AXI4_0_BREADY_net_0;
assign MEM_MST_AXI4_0_ARID_net_0     = MEM_MST_AXI4_0_ARID;
assign MEM_AXI_0_AR_BITS_ID[3:0]     = MEM_MST_AXI4_0_ARID_net_0;
assign MEM_MST_AXI4_0_ARADDR_net_0   = MEM_MST_AXI4_0_ARADDR;
assign MEM_AXI_0_AR_BITS_ADDR[31:0]  = MEM_MST_AXI4_0_ARADDR_net_0;
assign MEM_MST_AXI4_0_ARLEN_net_0    = MEM_MST_AXI4_0_ARLEN;
assign MEM_AXI_0_AR_BITS_LEN[7:0]    = MEM_MST_AXI4_0_ARLEN_net_0;
assign MEM_MST_AXI4_0_ARSIZE_net_0   = MEM_MST_AXI4_0_ARSIZE;
assign MEM_AXI_0_AR_BITS_SIZE[2:0]   = MEM_MST_AXI4_0_ARSIZE_net_0;
assign MEM_MST_AXI4_0_ARBURST_net_0  = MEM_MST_AXI4_0_ARBURST;
assign MEM_AXI_0_AR_BITS_BURST[1:0]  = MEM_MST_AXI4_0_ARBURST_net_0;
assign MEM_MST_AXI4_0_ARLOCK_net_0   = MEM_MST_AXI4_0_ARLOCK;
assign MEM_AXI_0_AR_BITS_LOCK        = MEM_MST_AXI4_0_ARLOCK_net_0;
assign MEM_MST_AXI4_0_ARCACHE_net_0  = MEM_MST_AXI4_0_ARCACHE;
assign MEM_AXI_0_AR_BITS_CACHE[3:0]  = MEM_MST_AXI4_0_ARCACHE_net_0;
assign MEM_MST_AXI4_0_ARPROT_net_0   = MEM_MST_AXI4_0_ARPROT;
assign MEM_AXI_0_AR_BITS_PROT[2:0]   = MEM_MST_AXI4_0_ARPROT_net_0;
assign MEM_MST_AXI4_0_ARQOS_net_0    = MEM_MST_AXI4_0_ARQOS;
assign MEM_AXI_0_AR_BITS_QOS[3:0]    = MEM_MST_AXI4_0_ARQOS_net_0;
assign MEM_MST_AXI4_0_ARVALID_net_0  = MEM_MST_AXI4_0_ARVALID;
assign MEM_AXI_0_AR_VALID            = MEM_MST_AXI4_0_ARVALID_net_0;
assign MEM_MST_AXI4_0_RREADY_net_0   = MEM_MST_AXI4_0_RREADY;
assign MEM_AXI_0_R_READY             = MEM_MST_AXI4_0_RREADY_net_0;
assign MMIO_MST_AXI4_0_RREADY_net_0  = MMIO_MST_AXI4_0_RREADY;
assign MMIO_AXI_0_R_READY            = MMIO_MST_AXI4_0_RREADY_net_0;
assign MMIO_MST_AXI4_0_ARVALID_net_0 = MMIO_MST_AXI4_0_ARVALID;
assign MMIO_AXI_0_AR_VALID           = MMIO_MST_AXI4_0_ARVALID_net_0;
assign MMIO_MST_AXI4_0_ARQOS_net_0   = MMIO_MST_AXI4_0_ARQOS;
assign MMIO_AXI_0_AR_BITS_QOS[3:0]   = MMIO_MST_AXI4_0_ARQOS_net_0;
assign MMIO_MST_AXI4_0_ARPROT_net_0  = MMIO_MST_AXI4_0_ARPROT;
assign MMIO_AXI_0_AR_BITS_PROT[2:0]  = MMIO_MST_AXI4_0_ARPROT_net_0;
assign MMIO_MST_AXI4_0_WLAST_net_0   = MMIO_MST_AXI4_0_WLAST;
assign MMIO_AXI_0_W_BITS_LAST        = MMIO_MST_AXI4_0_WLAST_net_0;
assign MMIO_MST_AXI4_0_ARCACHE_net_0 = MMIO_MST_AXI4_0_ARCACHE;
assign MMIO_AXI_0_AR_BITS_CACHE[3:0] = MMIO_MST_AXI4_0_ARCACHE_net_0;
assign MMIO_MST_AXI4_0_ARLOCK_net_0  = MMIO_MST_AXI4_0_ARLOCK;
assign MMIO_AXI_0_AR_BITS_LOCK       = MMIO_MST_AXI4_0_ARLOCK_net_0;
assign MMIO_MST_AXI4_0_ARBURST_net_0 = MMIO_MST_AXI4_0_ARBURST;
assign MMIO_AXI_0_AR_BITS_BURST[1:0] = MMIO_MST_AXI4_0_ARBURST_net_0;
assign MMIO_MST_AXI4_0_ARSIZE_net_0  = MMIO_MST_AXI4_0_ARSIZE;
assign MMIO_AXI_0_AR_BITS_SIZE[2:0]  = MMIO_MST_AXI4_0_ARSIZE_net_0;
assign MMIO_MST_AXI4_0_ARLEN_net_0   = MMIO_MST_AXI4_0_ARLEN;
assign MMIO_AXI_0_AR_BITS_LEN[7:0]   = MMIO_MST_AXI4_0_ARLEN_net_0;
assign MMIO_MST_AXI4_0_ARADDR_net_0  = MMIO_MST_AXI4_0_ARADDR;
assign MMIO_AXI_0_AR_BITS_ADDR[30:0] = MMIO_MST_AXI4_0_ARADDR_net_0;
assign MMIO_MST_AXI4_0_ARID_net_0    = MMIO_MST_AXI4_0_ARID;
assign MMIO_AXI_0_AR_BITS_ID[3:0]    = MMIO_MST_AXI4_0_ARID_net_0;
assign MMIO_MST_AXI4_0_BREADY_net_0  = MMIO_MST_AXI4_0_BREADY;
assign MMIO_AXI_0_B_READY            = MMIO_MST_AXI4_0_BREADY_net_0;
assign MMIO_MST_AXI4_0_WVALID_net_0  = MMIO_MST_AXI4_0_WVALID;
assign MMIO_AXI_0_W_VALID            = MMIO_MST_AXI4_0_WVALID_net_0;
assign MMIO_MST_AXI4_0_WSTRB_net_0   = MMIO_MST_AXI4_0_WSTRB;
assign MMIO_AXI_0_W_BITS_STRB[7:0]   = MMIO_MST_AXI4_0_WSTRB_net_0;
assign MMIO_MST_AXI4_0_WDATA_net_0   = MMIO_MST_AXI4_0_WDATA;
assign MMIO_AXI_0_W_BITS_DATA[63:0]  = MMIO_MST_AXI4_0_WDATA_net_0;
assign MMIO_MST_AXI4_0_AWVALID_net_0 = MMIO_MST_AXI4_0_AWVALID;
assign MMIO_AXI_0_AW_VALID           = MMIO_MST_AXI4_0_AWVALID_net_0;
assign MMIO_MST_AXI4_0_AWQOS_net_0   = MMIO_MST_AXI4_0_AWQOS;
assign MMIO_AXI_0_AW_BITS_QOS[3:0]   = MMIO_MST_AXI4_0_AWQOS_net_0;
assign MMIO_MST_AXI4_0_AWPROT_net_0  = MMIO_MST_AXI4_0_AWPROT;
assign MMIO_AXI_0_AW_BITS_PROT[2:0]  = MMIO_MST_AXI4_0_AWPROT_net_0;
assign MMIO_MST_AXI4_0_AWCACHE_net_0 = MMIO_MST_AXI4_0_AWCACHE;
assign MMIO_AXI_0_AW_BITS_CACHE[3:0] = MMIO_MST_AXI4_0_AWCACHE_net_0;
assign MMIO_MST_AXI4_0_AWLOCK_net_0  = MMIO_MST_AXI4_0_AWLOCK;
assign MMIO_AXI_0_AW_BITS_LOCK       = MMIO_MST_AXI4_0_AWLOCK_net_0;
assign MMIO_MST_AXI4_0_AWBURST_net_0 = MMIO_MST_AXI4_0_AWBURST;
assign MMIO_AXI_0_AW_BITS_BURST[1:0] = MMIO_MST_AXI4_0_AWBURST_net_0;
assign MMIO_MST_AXI4_0_AWSIZE_net_0  = MMIO_MST_AXI4_0_AWSIZE;
assign MMIO_AXI_0_AW_BITS_SIZE[2:0]  = MMIO_MST_AXI4_0_AWSIZE_net_0;
assign MMIO_MST_AXI4_0_AWLEN_net_0   = MMIO_MST_AXI4_0_AWLEN;
assign MMIO_AXI_0_AW_BITS_LEN[7:0]   = MMIO_MST_AXI4_0_AWLEN_net_0;
assign MMIO_MST_AXI4_0_AWADDR_net_0  = MMIO_MST_AXI4_0_AWADDR;
assign MMIO_AXI_0_AW_BITS_ADDR[30:0] = MMIO_MST_AXI4_0_AWADDR_net_0;
assign MMIO_MST_AXI4_0_AWID_net_0    = MMIO_MST_AXI4_0_AWID;
assign MMIO_AXI_0_AW_BITS_ID[3:0]    = MMIO_MST_AXI4_0_AWID_net_0;
//--------------------------------------------------------------------
// Component instances
//--------------------------------------------------------------------
//--------MiV_AXI_MiV_AXI_0_MIV_RV32IMA_L1_AXI   -   Microsemi:MiV:MIV_RV32IMA_L1_AXI:2.1.100
MiV_AXI_MiV_AXI_0_MIV_RV32IMA_L1_AXI #( 
        .MASTER_TYPE         ( 1 ),
        .MEM_WID             ( 6 ),
        .MMIO_WID            ( 9 ),
        .RESET_VECTOR_ADDR_0 ( 'h0 ),
        .RESET_VECTOR_ADDR_1 ( 'h8000 ) )
MiV_AXI_0(
        // Inputs
        .CLK                      ( CLK ),
        .RESETN                   ( RESETN ),
        .TDI                      ( TDI ),
        .TCK                      ( TCK ),
        .TMS                      ( TMS ),
        .TRST                     ( TRST ),
        .MEM_AXI_0_AW_READY       ( MEM_AXI_0_AW_READY ),
        .MEM_AXI_0_W_READY        ( MEM_AXI_0_W_READY ),
        .MEM_AXI_0_B_VALID        ( MEM_AXI_0_B_VALID ),
        .MEM_AXI_0_AR_READY       ( MEM_AXI_0_AR_READY ),
        .MEM_AXI_0_R_VALID        ( MEM_AXI_0_R_VALID ),
        .MEM_AXI_0_R_BITS_LAST    ( MEM_AXI_0_R_BITS_LAST ),
        .MMIO_AXI_0_AW_READY      ( MMIO_AXI_0_AW_READY ),
        .MMIO_AXI_0_W_READY       ( MMIO_AXI_0_W_READY ),
        .MMIO_AXI_0_B_VALID       ( MMIO_AXI_0_B_VALID ),
        .MMIO_AXI_0_AR_READY      ( MMIO_AXI_0_AR_READY ),
        .MMIO_AXI_0_R_VALID       ( MMIO_AXI_0_R_VALID ),
        .MMIO_AXI_0_R_BITS_LAST   ( MMIO_AXI_0_R_BITS_LAST ),
        .IRQ                      ( IRQ ),
        .MEM_AXI_0_B_BITS_ID      ( MEM_AXI_0_B_BITS_ID ),
        .MEM_AXI_0_B_BITS_RESP    ( MEM_AXI_0_B_BITS_RESP ),
        .MEM_AXI_0_R_BITS_ID      ( MEM_AXI_0_R_BITS_ID ),
        .MEM_AXI_0_R_BITS_DATA    ( MEM_AXI_0_R_BITS_DATA ),
        .MEM_AXI_0_R_BITS_RESP    ( MEM_AXI_0_R_BITS_RESP ),
        .MMIO_AXI_0_B_BITS_ID     ( MMIO_AXI_0_B_BITS_ID ),
        .MMIO_AXI_0_B_BITS_RESP   ( MMIO_AXI_0_B_BITS_RESP ),
        .MMIO_AXI_0_R_BITS_ID     ( MMIO_AXI_0_R_BITS_ID ),
        .MMIO_AXI_0_R_BITS_DATA   ( MMIO_AXI_0_R_BITS_DATA ),
        .MMIO_AXI_0_R_BITS_RESP   ( MMIO_AXI_0_R_BITS_RESP ),
        // Outputs
        .TDO                      ( TDO_net_0 ),
        .DRV_TDO                  ( DRV_TDO_net_0 ),
        .MEM_AXI_0_AW_VALID       ( MEM_MST_AXI4_0_AWVALID ),
        .MEM_AXI_0_AW_BITS_LOCK   ( MEM_MST_AXI4_0_AWLOCK ),
        .MEM_AXI_0_W_VALID        ( MEM_MST_AXI4_0_WVALID ),
        .MEM_AXI_0_W_BITS_LAST    ( MEM_MST_AXI4_0_WLAST ),
        .MEM_AXI_0_B_READY        ( MEM_MST_AXI4_0_BREADY ),
        .MEM_AXI_0_AR_VALID       ( MEM_MST_AXI4_0_ARVALID ),
        .MEM_AXI_0_AR_BITS_LOCK   ( MEM_MST_AXI4_0_ARLOCK ),
        .MEM_AXI_0_R_READY        ( MEM_MST_AXI4_0_RREADY ),
        .MMIO_AXI_0_AW_VALID      ( MMIO_MST_AXI4_0_AWVALID ),
        .MMIO_AXI_0_AW_BITS_LOCK  ( MMIO_MST_AXI4_0_AWLOCK ),
        .MMIO_AXI_0_W_VALID       ( MMIO_MST_AXI4_0_WVALID ),
        .MMIO_AXI_0_W_BITS_LAST   ( MMIO_MST_AXI4_0_WLAST ),
        .MMIO_AXI_0_B_READY       ( MMIO_MST_AXI4_0_BREADY ),
        .MMIO_AXI_0_AR_VALID      ( MMIO_MST_AXI4_0_ARVALID ),
        .MMIO_AXI_0_AR_BITS_LOCK  ( MMIO_MST_AXI4_0_ARLOCK ),
        .MMIO_AXI_0_R_READY       ( MMIO_MST_AXI4_0_RREADY ),
        .EXT_RESETN               ( EXT_RESETN_net_0 ),
        .MEM_AXI_0_AW_BITS_ID     ( MEM_MST_AXI4_0_AWID ),
        .MEM_AXI_0_AW_BITS_ADDR   ( MEM_MST_AXI4_0_AWADDR ),
        .MEM_AXI_0_AW_BITS_LEN    ( MEM_MST_AXI4_0_AWLEN ),
        .MEM_AXI_0_AW_BITS_SIZE   ( MEM_MST_AXI4_0_AWSIZE ),
        .MEM_AXI_0_AW_BITS_BURST  ( MEM_MST_AXI4_0_AWBURST ),
        .MEM_AXI_0_AW_BITS_CACHE  ( MEM_MST_AXI4_0_AWCACHE ),
        .MEM_AXI_0_AW_BITS_PROT   ( MEM_MST_AXI4_0_AWPROT ),
        .MEM_AXI_0_AW_BITS_QOS    ( MEM_MST_AXI4_0_AWQOS ),
        .MEM_AXI_0_W_BITS_DATA    ( MEM_MST_AXI4_0_WDATA ),
        .MEM_AXI_0_W_BITS_STRB    ( MEM_MST_AXI4_0_WSTRB ),
        .MEM_AXI_0_AR_BITS_ID     ( MEM_MST_AXI4_0_ARID ),
        .MEM_AXI_0_AR_BITS_ADDR   ( MEM_MST_AXI4_0_ARADDR ),
        .MEM_AXI_0_AR_BITS_LEN    ( MEM_MST_AXI4_0_ARLEN ),
        .MEM_AXI_0_AR_BITS_SIZE   ( MEM_MST_AXI4_0_ARSIZE ),
        .MEM_AXI_0_AR_BITS_BURST  ( MEM_MST_AXI4_0_ARBURST ),
        .MEM_AXI_0_AR_BITS_CACHE  ( MEM_MST_AXI4_0_ARCACHE ),
        .MEM_AXI_0_AR_BITS_PROT   ( MEM_MST_AXI4_0_ARPROT ),
        .MEM_AXI_0_AR_BITS_QOS    ( MEM_MST_AXI4_0_ARQOS ),
        .MMIO_AXI_0_AW_BITS_ID    ( MMIO_MST_AXI4_0_AWID ),
        .MMIO_AXI_0_AW_BITS_ADDR  ( MMIO_MST_AXI4_0_AWADDR ),
        .MMIO_AXI_0_AW_BITS_LEN   ( MMIO_MST_AXI4_0_AWLEN ),
        .MMIO_AXI_0_AW_BITS_SIZE  ( MMIO_MST_AXI4_0_AWSIZE ),
        .MMIO_AXI_0_AW_BITS_BURST ( MMIO_MST_AXI4_0_AWBURST ),
        .MMIO_AXI_0_AW_BITS_CACHE ( MMIO_MST_AXI4_0_AWCACHE ),
        .MMIO_AXI_0_AW_BITS_PROT  ( MMIO_MST_AXI4_0_AWPROT ),
        .MMIO_AXI_0_AW_BITS_QOS   ( MMIO_MST_AXI4_0_AWQOS ),
        .MMIO_AXI_0_W_BITS_DATA   ( MMIO_MST_AXI4_0_WDATA ),
        .MMIO_AXI_0_W_BITS_STRB   ( MMIO_MST_AXI4_0_WSTRB ),
        .MMIO_AXI_0_AR_BITS_ID    ( MMIO_MST_AXI4_0_ARID ),
        .MMIO_AXI_0_AR_BITS_ADDR  ( MMIO_MST_AXI4_0_ARADDR ),
        .MMIO_AXI_0_AR_BITS_LEN   ( MMIO_MST_AXI4_0_ARLEN ),
        .MMIO_AXI_0_AR_BITS_SIZE  ( MMIO_MST_AXI4_0_ARSIZE ),
        .MMIO_AXI_0_AR_BITS_BURST ( MMIO_MST_AXI4_0_ARBURST ),
        .MMIO_AXI_0_AR_BITS_CACHE ( MMIO_MST_AXI4_0_ARCACHE ),
        .MMIO_AXI_0_AR_BITS_PROT  ( MMIO_MST_AXI4_0_ARPROT ),
        .MMIO_AXI_0_AR_BITS_QOS   ( MMIO_MST_AXI4_0_ARQOS ),
        .MEM_AXI_0_W_BITS_WID     (  ),
        .MMIO_AXI_0_W_BITS_WID    (  ),
        .MEM_AXI_WID              ( MEM_AXI_WID_0 ),
        .MMIO_AXI_WID             ( MMIO_AXI_WID_0 ) 
        );


endmodule
