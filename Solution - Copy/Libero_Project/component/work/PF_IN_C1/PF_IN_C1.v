//////////////////////////////////////////////////////////////////////
// Created by SmartDesign Tue Mar 24 13:11:05 2020
// Version: v12.3 12.800.0.16
//////////////////////////////////////////////////////////////////////

`timescale 1ns / 100ps

// PF_IN_C1
module PF_IN_C1(
    // Inputs
    PADIN,
    PADIP,
    // Outputs
    Y
);

//--------------------------------------------------------------------
// Input
//--------------------------------------------------------------------
input  PADIN;
input  PADIP;
//--------------------------------------------------------------------
// Output
//--------------------------------------------------------------------
output Y;
//--------------------------------------------------------------------
// Nets
//--------------------------------------------------------------------
wire   PADIN;
wire   PADIP;
wire   Y_net_0;
wire   Y_net_1;
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
assign Y_net_1 = Y_net_0;
assign Y       = Y_net_1;
//--------------------------------------------------------------------
// Component instances
//--------------------------------------------------------------------
//--------PF_IO   -   Actel:SgCore:PF_IO:1.0.104
PF_IO #( 
        .DIFFERENTIAL      ( 1 ),
        .DIRECTION         ( 1 ),
        .DYN_DELAY_LINE_EN ( 0 ),
        .MODE              ( 0 ) )
PF_IO_C1_0(
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
        .PADIP                   ( PADIP ),
        .PADIN                   ( PADIN ),
        .D                       ( GND_net ), // tied to 1'b0 from definition
        .DF                      ( GND_net ), // tied to 1'b0 from definition
        .DR                      ( GND_net ), // tied to 1'b0 from definition
        .E                       ( GND_net ), // tied to 1'b0 from definition
        // Outputs
        .DELAY_LINE_OUT_OF_RANGE (  ),
        .PADO                    (  ),
        .PADOP                   (  ),
        .PADON                   (  ),
        .QF                      (  ),
        .QR                      (  ),
        .Q                       (  ),
        .Y                       ( Y_net_0 ),
        // Inouts
        .PAD                     ( GND_net ), // tied to 1'b0 from definition
        .PADP                    ( GND_net ), // tied to 1'b0 from definition
        .PADN                    ( GND_net )  // tied to 1'b0 from definition
        );


endmodule
