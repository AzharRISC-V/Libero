//////////////////////////////////////////////////////////////////////
// Created by SmartDesign Mon Nov 25 15:57:07 2019
// Version: v12.2 12.700.0.21
//////////////////////////////////////////////////////////////////////

`timescale 1ns / 100ps

// reset_syn_1
module reset_syn_1(
    // Inputs
    CLK,
    EXT_RST_N,
    FF_US_RESTORE,
    INIT_DONE,
    PLL_LOCK,
    SS_BUSY,
    // Outputs
    FABRIC_RESET_N
);

//--------------------------------------------------------------------
// Input
//--------------------------------------------------------------------
input  CLK;
input  EXT_RST_N;
input  FF_US_RESTORE;
input  INIT_DONE;
input  PLL_LOCK;
input  SS_BUSY;
//--------------------------------------------------------------------
// Output
//--------------------------------------------------------------------
output FABRIC_RESET_N;
//--------------------------------------------------------------------
// Nets
//--------------------------------------------------------------------
wire   CLK;
wire   EXT_RST_N;
wire   FABRIC_RESET_N_net_0;
wire   FF_US_RESTORE;
wire   INIT_DONE;
wire   PLL_LOCK;
wire   SS_BUSY;
wire   FABRIC_RESET_N_net_1;
//--------------------------------------------------------------------
// Top level output port assignments
//--------------------------------------------------------------------
assign FABRIC_RESET_N_net_1 = FABRIC_RESET_N_net_0;
assign FABRIC_RESET_N       = FABRIC_RESET_N_net_1;
//--------------------------------------------------------------------
// Component instances
//--------------------------------------------------------------------
//--------reset_syn_1_reset_syn_1_0_CORERESET_PF   -   Actel:DirectCore:CORERESET_PF:2.1.100
reset_syn_1_reset_syn_1_0_CORERESET_PF reset_syn_1_0(
        // Inputs
        .CLK            ( CLK ),
        .EXT_RST_N      ( EXT_RST_N ),
        .PLL_LOCK       ( PLL_LOCK ),
        .SS_BUSY        ( SS_BUSY ),
        .INIT_DONE      ( INIT_DONE ),
        .FF_US_RESTORE  ( FF_US_RESTORE ),
        // Outputs
        .FABRIC_RESET_N ( FABRIC_RESET_N_net_0 ) 
        );


endmodule
