//////////////////////////////////////////////////////////////////////
// Created by SmartDesign Thu Sep 19 18:13:55 2019
// Version: v12.2 12.700.0.19
//////////////////////////////////////////////////////////////////////

`timescale 1ns / 100ps

// INIT_Monitor
module INIT_Monitor(
    // Outputs
    AUTOCALIB_DONE,
    BANK_1_CALIB_STATUS,
    DEVICE_INIT_DONE,
    FABRIC_POR_N,
    PCIE_INIT_DONE,
    SRAM_INIT_DONE,
    SRAM_INIT_FROM_SNVM_DONE,
    SRAM_INIT_FROM_SPI_DONE,
    SRAM_INIT_FROM_UPROM_DONE,
    USRAM_INIT_DONE,
    USRAM_INIT_FROM_SNVM_DONE,
    USRAM_INIT_FROM_SPI_DONE,
    USRAM_INIT_FROM_UPROM_DONE,
    XCVR_INIT_DONE
);

//--------------------------------------------------------------------
// Output
//--------------------------------------------------------------------
output AUTOCALIB_DONE;
output BANK_1_CALIB_STATUS;
output DEVICE_INIT_DONE;
output FABRIC_POR_N;
output PCIE_INIT_DONE;
output SRAM_INIT_DONE;
output SRAM_INIT_FROM_SNVM_DONE;
output SRAM_INIT_FROM_SPI_DONE;
output SRAM_INIT_FROM_UPROM_DONE;
output USRAM_INIT_DONE;
output USRAM_INIT_FROM_SNVM_DONE;
output USRAM_INIT_FROM_SPI_DONE;
output USRAM_INIT_FROM_UPROM_DONE;
output XCVR_INIT_DONE;
//--------------------------------------------------------------------
// Nets
//--------------------------------------------------------------------
wire   AUTOCALIB_DONE_net_0;
wire   BANK_1_CALIB_STATUS_net_0;
wire   DEVICE_INIT_DONE_net_0;
wire   FABRIC_POR_N_net_0;
wire   PCIE_INIT_DONE_net_0;
wire   SRAM_INIT_DONE_net_0;
wire   SRAM_INIT_FROM_SNVM_DONE_net_0;
wire   SRAM_INIT_FROM_SPI_DONE_net_0;
wire   SRAM_INIT_FROM_UPROM_DONE_net_0;
wire   USRAM_INIT_DONE_net_0;
wire   USRAM_INIT_FROM_SNVM_DONE_net_0;
wire   USRAM_INIT_FROM_SPI_DONE_net_0;
wire   USRAM_INIT_FROM_UPROM_DONE_net_0;
wire   XCVR_INIT_DONE_net_0;
wire   FABRIC_POR_N_net_1;
wire   PCIE_INIT_DONE_net_1;
wire   USRAM_INIT_DONE_net_1;
wire   SRAM_INIT_DONE_net_1;
wire   DEVICE_INIT_DONE_net_1;
wire   XCVR_INIT_DONE_net_1;
wire   USRAM_INIT_FROM_SNVM_DONE_net_1;
wire   USRAM_INIT_FROM_UPROM_DONE_net_1;
wire   USRAM_INIT_FROM_SPI_DONE_net_1;
wire   SRAM_INIT_FROM_SNVM_DONE_net_1;
wire   SRAM_INIT_FROM_UPROM_DONE_net_1;
wire   SRAM_INIT_FROM_SPI_DONE_net_1;
wire   AUTOCALIB_DONE_net_1;
wire   BANK_1_CALIB_STATUS_net_1;
//--------------------------------------------------------------------
// Top level output port assignments
//--------------------------------------------------------------------
assign FABRIC_POR_N_net_1               = FABRIC_POR_N_net_0;
assign FABRIC_POR_N                     = FABRIC_POR_N_net_1;
assign PCIE_INIT_DONE_net_1             = PCIE_INIT_DONE_net_0;
assign PCIE_INIT_DONE                   = PCIE_INIT_DONE_net_1;
assign USRAM_INIT_DONE_net_1            = USRAM_INIT_DONE_net_0;
assign USRAM_INIT_DONE                  = USRAM_INIT_DONE_net_1;
assign SRAM_INIT_DONE_net_1             = SRAM_INIT_DONE_net_0;
assign SRAM_INIT_DONE                   = SRAM_INIT_DONE_net_1;
assign DEVICE_INIT_DONE_net_1           = DEVICE_INIT_DONE_net_0;
assign DEVICE_INIT_DONE                 = DEVICE_INIT_DONE_net_1;
assign XCVR_INIT_DONE_net_1             = XCVR_INIT_DONE_net_0;
assign XCVR_INIT_DONE                   = XCVR_INIT_DONE_net_1;
assign USRAM_INIT_FROM_SNVM_DONE_net_1  = USRAM_INIT_FROM_SNVM_DONE_net_0;
assign USRAM_INIT_FROM_SNVM_DONE        = USRAM_INIT_FROM_SNVM_DONE_net_1;
assign USRAM_INIT_FROM_UPROM_DONE_net_1 = USRAM_INIT_FROM_UPROM_DONE_net_0;
assign USRAM_INIT_FROM_UPROM_DONE       = USRAM_INIT_FROM_UPROM_DONE_net_1;
assign USRAM_INIT_FROM_SPI_DONE_net_1   = USRAM_INIT_FROM_SPI_DONE_net_0;
assign USRAM_INIT_FROM_SPI_DONE         = USRAM_INIT_FROM_SPI_DONE_net_1;
assign SRAM_INIT_FROM_SNVM_DONE_net_1   = SRAM_INIT_FROM_SNVM_DONE_net_0;
assign SRAM_INIT_FROM_SNVM_DONE         = SRAM_INIT_FROM_SNVM_DONE_net_1;
assign SRAM_INIT_FROM_UPROM_DONE_net_1  = SRAM_INIT_FROM_UPROM_DONE_net_0;
assign SRAM_INIT_FROM_UPROM_DONE        = SRAM_INIT_FROM_UPROM_DONE_net_1;
assign SRAM_INIT_FROM_SPI_DONE_net_1    = SRAM_INIT_FROM_SPI_DONE_net_0;
assign SRAM_INIT_FROM_SPI_DONE          = SRAM_INIT_FROM_SPI_DONE_net_1;
assign AUTOCALIB_DONE_net_1             = AUTOCALIB_DONE_net_0;
assign AUTOCALIB_DONE                   = AUTOCALIB_DONE_net_1;
assign BANK_1_CALIB_STATUS_net_1        = BANK_1_CALIB_STATUS_net_0;
assign BANK_1_CALIB_STATUS              = BANK_1_CALIB_STATUS_net_1;
//--------------------------------------------------------------------
// Component instances
//--------------------------------------------------------------------
//--------INIT_Monitor_INIT_Monitor_0_PF_INIT_MONITOR   -   Actel:SgCore:PF_INIT_MONITOR:2.0.103
INIT_Monitor_INIT_Monitor_0_PF_INIT_MONITOR INIT_Monitor_0(
        // Outputs
        .FABRIC_POR_N               ( FABRIC_POR_N_net_0 ),
        .PCIE_INIT_DONE             ( PCIE_INIT_DONE_net_0 ),
        .USRAM_INIT_DONE            ( USRAM_INIT_DONE_net_0 ),
        .SRAM_INIT_DONE             ( SRAM_INIT_DONE_net_0 ),
        .DEVICE_INIT_DONE           ( DEVICE_INIT_DONE_net_0 ),
        .BANK_1_CALIB_STATUS        ( BANK_1_CALIB_STATUS_net_0 ),
        .XCVR_INIT_DONE             ( XCVR_INIT_DONE_net_0 ),
        .USRAM_INIT_FROM_SNVM_DONE  ( USRAM_INIT_FROM_SNVM_DONE_net_0 ),
        .USRAM_INIT_FROM_UPROM_DONE ( USRAM_INIT_FROM_UPROM_DONE_net_0 ),
        .USRAM_INIT_FROM_SPI_DONE   ( USRAM_INIT_FROM_SPI_DONE_net_0 ),
        .SRAM_INIT_FROM_SNVM_DONE   ( SRAM_INIT_FROM_SNVM_DONE_net_0 ),
        .SRAM_INIT_FROM_UPROM_DONE  ( SRAM_INIT_FROM_UPROM_DONE_net_0 ),
        .SRAM_INIT_FROM_SPI_DONE    ( SRAM_INIT_FROM_SPI_DONE_net_0 ),
        .AUTOCALIB_DONE             ( AUTOCALIB_DONE_net_0 ) 
        );


endmodule
