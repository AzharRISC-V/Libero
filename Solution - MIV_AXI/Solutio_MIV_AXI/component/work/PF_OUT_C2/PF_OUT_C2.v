//////////////////////////////////////////////////////////////////////
// Created by SmartDesign Mon Mar 23 12:35:32 2020
// Version: v12.3 12.800.0.16
//////////////////////////////////////////////////////////////////////

`timescale 1ns / 100ps

// PF_OUT_C2
module PF_OUT_C2(
    // Inputs
    D,
    // Outputs
    PADON,
    PADOP
);

//--------------------------------------------------------------------
// Input
//--------------------------------------------------------------------
input  D;
//--------------------------------------------------------------------
// Output
//--------------------------------------------------------------------
output PADON;
output PADOP;
//--------------------------------------------------------------------
// Nets
//--------------------------------------------------------------------
wire   D;
wire   PADON_net_0;
wire   PADOP_net_0;
wire   PADOP_net_1;
wire   PADON_net_1;
//--------------------------------------------------------------------
// TiedOff Nets
//--------------------------------------------------------------------
wire   GND_net;
wire   VCC_net;
//--------------------------------------------------------------------
// Constant assignments
//--------------------------------------------------------------------
assign GND_net = 1'b0;
assign VCC_net = 1'b1;
//--------------------------------------------------------------------
// Top level output port assignments
//--------------------------------------------------------------------
assign PADOP_net_1 = PADOP_net_0;
assign PADOP       = PADOP_net_1;
assign PADON_net_1 = PADON_net_0;
assign PADON       = PADON_net_1;
//--------------------------------------------------------------------
// Component instances
//--------------------------------------------------------------------
//--------PF_IO   -   Actel:SgCore:PF_IO:1.0.104
PF_IO #( 
        .DIFFERENTIAL      ( 1 ),
        .DIRECTION         ( 2 ),
        .DYN_DELAY_LINE_EN ( 0 ),
        .MODE              ( 0 ) )
PF_OUT_C2_0(
        // Inputs
        .DELAY_LINE_MOVE         ( GND_net ), // tied to 1'b0 from definition
        .DELAY_LINE_DIRECTION    ( GND_net ), // tied to 1'b0 from definition
        .DELAY_LINE_LOAD         ( VCC_net ), // tied to 1'b1 from definition
        .RX_CLK                  ( GND_net ), // tied to 1'b0 from definition
        .TX_CLK                  ( GND_net ), // tied to 1'b0 from definition
        .ODT_EN                  ( VCC_net ), // tied to 1'b1 from definition
        .INFF_SL                 ( GND_net ), // tied to 1'b0 from definition
        .INFF_EN                 ( GND_net ), // tied to 1'b0 from definition
        .OUTFF_SL                ( GND_net ), // tied to 1'b0 from definition
        .OUTFF_EN                ( GND_net ), // tied to 1'b0 from definition
        .AL_N                    ( GND_net ), // tied to 1'b0 from definition
        .PADI                    ( GND_net ), // tied to 1'b0 from definition
        .PADIP                   ( GND_net ), // tied to 1'b0 from definition
        .PADIN                   ( GND_net ), // tied to 1'b0 from definition
        .D                       ( D ),
        .DF                      ( GND_net ), // tied to 1'b0 from definition
        .DR                      ( GND_net ), // tied to 1'b0 from definition
        .E                       ( GND_net ), // tied to 1'b0 from definition
        // Outputs
        .DELAY_LINE_OUT_OF_RANGE (  ),
        .PADO                    (  ),
        .PADOP                   ( PADOP_net_0 ),
        .PADON                   ( PADON_net_0 ),
        .QF                      (  ),
        .QR                      (  ),
        .Q                       (  ),
        .Y                       (  ),
        // Inouts
        .PAD                     ( GND_net ), // tied to 1'b0 from definition
        .PADP                    ( GND_net ), // tied to 1'b0 from definition
        .PADN                    ( GND_net )  // tied to 1'b0 from definition
        );


endmodule
