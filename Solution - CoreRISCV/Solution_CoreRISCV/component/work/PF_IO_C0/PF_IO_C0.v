//////////////////////////////////////////////////////////////////////
// Created by SmartDesign Thu Mar 12 18:29:22 2020
// Version: v12.3 12.800.0.16
//////////////////////////////////////////////////////////////////////

`timescale 1ns / 100ps

// PF_IO_C0
module PF_IO_C0(
    // Inputs
    D,
    E,
    // Outputs
    Y,
    // Inouts
    PAD
);

//--------------------------------------------------------------------
// Input
//--------------------------------------------------------------------
input  D;
input  E;
//--------------------------------------------------------------------
// Output
//--------------------------------------------------------------------
output Y;
//--------------------------------------------------------------------
// Inout
//--------------------------------------------------------------------
inout  PAD;
//--------------------------------------------------------------------
// Nets
//--------------------------------------------------------------------
wire   D;
wire   E;
wire   PAD;
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
        .DIFFERENTIAL      ( 0 ),
        .DIRECTION         ( 0 ),
        .DYN_DELAY_LINE_EN ( 0 ),
        .MODE              ( 0 ) )
PF_IO_C0_0(
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
        .E                       ( E ),
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
        .PAD                     ( PAD ),
        .PADP                    ( GND_net ), // tied to 1'b0 from definition
        .PADN                    ( GND_net )  // tied to 1'b0 from definition
        );


endmodule
