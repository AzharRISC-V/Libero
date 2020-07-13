//////////////////////////////////////////////////////////////////////
// Created by SmartDesign Mon Mar 23 12:14:47 2020
// Version: v12.3 12.800.0.16
//////////////////////////////////////////////////////////////////////

`timescale 1ns / 100ps

// PF_IOD_LVDS_RX
module PF_IOD_LVDS_RX(
    // Inputs
    ARST_N,
    HS_IO_CLK_PAUSE,
    RXD,
    RXD_N,
    RX_CLK,
    // Outputs
    L0_RXD_DATA,
    RX_CLK_G
);

//--------------------------------------------------------------------
// Input
//--------------------------------------------------------------------
input        ARST_N;
input        HS_IO_CLK_PAUSE;
input  [0:0] RXD;
input  [0:0] RXD_N;
input        RX_CLK;
//--------------------------------------------------------------------
// Output
//--------------------------------------------------------------------
output [9:0] L0_RXD_DATA;
output       RX_CLK_G;
//--------------------------------------------------------------------
// Nets
//--------------------------------------------------------------------
wire         ARST_N;
wire         CLK_0_Y;
wire         HS_IO_CLK_CASCADED_Y;
wire         HS_IO_CLK_FIFO_Y;
wire         HS_IO_CLK_PAUSE;
wire         HS_IO_CLK_RX_Y;
wire   [9:0] L0_RXD_DATA_net_0;
wire         PF_CLK_DIV_FIFO_CLK_DIV_OUT;
wire         PF_CLK_DIV_FIFO_CLK_OUT_HS_IO_CLK;
wire         PF_CLK_DIV_RXCLK_CLK_OUT_HS_IO_CLK;
wire         PF_LANECTRL_0_ARST_N;
wire   [2:0] PF_LANECTRL_0_FIFO_RD_PTR;
wire   [2:0] PF_LANECTRL_0_FIFO_WR_PTR;
wire   [0:0] PF_LANECTRL_0_RX_DQS_90;
wire         PF_LANECTRL_0_RX_SYNC_RST;
wire         PF_LANECTRL_0_TX_SYNC_RST;
wire         RX_CLK;
wire         RX_CLK_G_net_0;
wire   [0:0] RXD;
wire   [0:0] RXD_N;
wire   [9:0] L0_RXD_DATA_net_1;
wire         RX_CLK_G_net_1;
wire   [1:0] HS_IO_CLK_net_0;
//--------------------------------------------------------------------
// TiedOff Nets
//--------------------------------------------------------------------
wire         GND_net;
wire   [2:0] EYE_MONITOR_LANE_WIDTH_const_net_0;
wire   [9:0] TX_DATA_0_const_net_0;
wire   [9:0] TX_DATA_1_const_net_0;
wire   [9:0] TX_DATA_2_const_net_0;
wire   [9:0] TX_DATA_3_const_net_0;
wire   [9:0] TX_DATA_4_const_net_0;
wire   [9:0] TX_DATA_5_const_net_0;
wire   [9:0] TX_DATA_6_const_net_0;
wire   [9:0] TX_DATA_7_const_net_0;
wire   [9:0] TX_DATA_8_const_net_0;
wire   [9:0] TX_DATA_9_const_net_0;
wire   [9:0] TX_DATA_10_const_net_0;
wire   [9:0] TX_DATA_11_const_net_0;
wire   [9:0] TX_DATA_12_const_net_0;
wire   [9:0] TX_DATA_13_const_net_0;
wire   [9:0] TX_DATA_14_const_net_0;
wire   [9:0] TX_DATA_15_const_net_0;
wire   [9:0] TX_DATA_16_const_net_0;
wire   [9:0] TX_DATA_17_const_net_0;
wire   [9:0] TX_DATA_18_const_net_0;
wire   [9:0] TX_DATA_19_const_net_0;
wire   [9:0] TX_DATA_20_const_net_0;
wire   [9:0] TX_DATA_21_const_net_0;
wire   [9:0] TX_DATA_22_const_net_0;
wire   [9:0] TX_DATA_23_const_net_0;
wire   [9:0] TX_DATA_24_const_net_0;
wire   [9:0] TX_DATA_25_const_net_0;
wire   [9:0] TX_DATA_26_const_net_0;
wire   [9:0] TX_DATA_27_const_net_0;
wire   [9:0] TX_DATA_28_const_net_0;
wire   [9:0] TX_DATA_29_const_net_0;
wire   [9:0] TX_DATA_30_const_net_0;
wire   [9:0] TX_DATA_31_const_net_0;
wire   [9:0] TX_DATA_32_const_net_0;
wire   [9:0] TX_DATA_33_const_net_0;
wire   [9:0] TX_DATA_34_const_net_0;
wire   [9:0] TX_DATA_35_const_net_0;
wire   [9:0] TX_DATA_36_const_net_0;
wire   [9:0] TX_DATA_37_const_net_0;
wire   [9:0] TX_DATA_38_const_net_0;
wire   [9:0] TX_DATA_39_const_net_0;
wire   [9:0] TX_DATA_40_const_net_0;
wire   [9:0] TX_DATA_41_const_net_0;
wire   [9:0] TX_DATA_42_const_net_0;
wire   [9:0] TX_DATA_43_const_net_0;
wire   [9:0] TX_DATA_44_const_net_0;
wire   [9:0] TX_DATA_45_const_net_0;
wire   [9:0] TX_DATA_46_const_net_0;
wire   [9:0] TX_DATA_47_const_net_0;
wire   [9:0] TX_DATA_48_const_net_0;
wire   [9:0] TX_DATA_49_const_net_0;
wire   [9:0] TX_DATA_50_const_net_0;
wire   [9:0] TX_DATA_51_const_net_0;
wire   [9:0] TX_DATA_52_const_net_0;
wire   [9:0] TX_DATA_53_const_net_0;
wire   [9:0] TX_DATA_54_const_net_0;
wire   [9:0] TX_DATA_55_const_net_0;
wire   [9:0] TX_DATA_56_const_net_0;
wire   [9:0] TX_DATA_57_const_net_0;
wire   [9:0] TX_DATA_58_const_net_0;
wire   [9:0] TX_DATA_59_const_net_0;
wire   [9:0] TX_DATA_60_const_net_0;
wire   [9:0] TX_DATA_61_const_net_0;
wire   [9:0] TX_DATA_62_const_net_0;
wire   [9:0] TX_DATA_63_const_net_0;
wire   [3:0] OE_DATA_0_const_net_0;
wire   [3:0] OE_DATA_1_const_net_0;
wire   [3:0] OE_DATA_2_const_net_0;
wire   [3:0] OE_DATA_3_const_net_0;
wire   [3:0] OE_DATA_4_const_net_0;
wire   [3:0] OE_DATA_5_const_net_0;
wire   [3:0] OE_DATA_6_const_net_0;
wire   [3:0] OE_DATA_7_const_net_0;
wire   [3:0] OE_DATA_8_const_net_0;
wire   [3:0] OE_DATA_9_const_net_0;
wire   [3:0] OE_DATA_10_const_net_0;
wire   [3:0] OE_DATA_11_const_net_0;
wire   [3:0] OE_DATA_12_const_net_0;
wire   [3:0] OE_DATA_13_const_net_0;
wire   [3:0] OE_DATA_14_const_net_0;
wire   [3:0] OE_DATA_15_const_net_0;
wire   [3:0] OE_DATA_16_const_net_0;
wire   [3:0] OE_DATA_17_const_net_0;
wire   [3:0] OE_DATA_18_const_net_0;
wire   [3:0] OE_DATA_19_const_net_0;
wire   [3:0] OE_DATA_20_const_net_0;
wire   [3:0] OE_DATA_21_const_net_0;
wire   [3:0] OE_DATA_22_const_net_0;
wire   [3:0] OE_DATA_23_const_net_0;
wire   [3:0] OE_DATA_24_const_net_0;
wire   [3:0] OE_DATA_25_const_net_0;
wire   [3:0] OE_DATA_26_const_net_0;
wire   [3:0] OE_DATA_27_const_net_0;
wire   [3:0] OE_DATA_28_const_net_0;
wire   [3:0] OE_DATA_29_const_net_0;
wire   [3:0] OE_DATA_30_const_net_0;
wire   [3:0] OE_DATA_31_const_net_0;
wire   [3:0] OE_DATA_32_const_net_0;
wire   [3:0] OE_DATA_33_const_net_0;
wire   [3:0] OE_DATA_34_const_net_0;
wire   [3:0] OE_DATA_35_const_net_0;
wire   [3:0] OE_DATA_36_const_net_0;
wire   [3:0] OE_DATA_37_const_net_0;
wire   [3:0] OE_DATA_38_const_net_0;
wire   [3:0] OE_DATA_39_const_net_0;
wire   [3:0] OE_DATA_40_const_net_0;
wire   [3:0] OE_DATA_41_const_net_0;
wire   [3:0] OE_DATA_42_const_net_0;
wire   [3:0] OE_DATA_43_const_net_0;
wire   [3:0] OE_DATA_44_const_net_0;
wire   [3:0] OE_DATA_45_const_net_0;
wire   [3:0] OE_DATA_46_const_net_0;
wire   [3:0] OE_DATA_47_const_net_0;
wire   [3:0] OE_DATA_48_const_net_0;
wire   [3:0] OE_DATA_49_const_net_0;
wire   [3:0] OE_DATA_50_const_net_0;
wire   [3:0] OE_DATA_51_const_net_0;
wire   [3:0] OE_DATA_52_const_net_0;
wire   [3:0] OE_DATA_53_const_net_0;
wire   [3:0] OE_DATA_54_const_net_0;
wire   [3:0] OE_DATA_55_const_net_0;
wire   [3:0] OE_DATA_56_const_net_0;
wire   [3:0] OE_DATA_57_const_net_0;
wire   [3:0] OE_DATA_58_const_net_0;
wire   [3:0] OE_DATA_59_const_net_0;
wire   [3:0] OE_DATA_60_const_net_0;
wire   [3:0] OE_DATA_61_const_net_0;
wire   [3:0] OE_DATA_62_const_net_0;
wire   [3:0] OE_DATA_63_const_net_0;
wire   [7:0] DLL_CODE_const_net_0;
wire   [2:0] READ_CLK_SEL_const_net_0;
wire   [2:0] EYE_MONITOR_WIDTH_IN_const_net_0;
wire   [7:0] CDR_CLK_A_SEL_const_net_0;
wire         VCC_net;
wire   [10:0]CDR_CLK_B_SEL_const_net_0;
//--------------------------------------------------------------------
// Inverted Nets
//--------------------------------------------------------------------
wire         RESET_IN_POST_INV0_0;
//--------------------------------------------------------------------
// Constant assignments
//--------------------------------------------------------------------
assign GND_net                            = 1'b0;
assign EYE_MONITOR_LANE_WIDTH_const_net_0 = 3'h0;
assign TX_DATA_0_const_net_0              = 10'h000;
assign TX_DATA_1_const_net_0              = 10'h000;
assign TX_DATA_2_const_net_0              = 10'h000;
assign TX_DATA_3_const_net_0              = 10'h000;
assign TX_DATA_4_const_net_0              = 10'h000;
assign TX_DATA_5_const_net_0              = 10'h000;
assign TX_DATA_6_const_net_0              = 10'h000;
assign TX_DATA_7_const_net_0              = 10'h000;
assign TX_DATA_8_const_net_0              = 10'h000;
assign TX_DATA_9_const_net_0              = 10'h000;
assign TX_DATA_10_const_net_0             = 10'h000;
assign TX_DATA_11_const_net_0             = 10'h000;
assign TX_DATA_12_const_net_0             = 10'h000;
assign TX_DATA_13_const_net_0             = 10'h000;
assign TX_DATA_14_const_net_0             = 10'h000;
assign TX_DATA_15_const_net_0             = 10'h000;
assign TX_DATA_16_const_net_0             = 10'h000;
assign TX_DATA_17_const_net_0             = 10'h000;
assign TX_DATA_18_const_net_0             = 10'h000;
assign TX_DATA_19_const_net_0             = 10'h000;
assign TX_DATA_20_const_net_0             = 10'h000;
assign TX_DATA_21_const_net_0             = 10'h000;
assign TX_DATA_22_const_net_0             = 10'h000;
assign TX_DATA_23_const_net_0             = 10'h000;
assign TX_DATA_24_const_net_0             = 10'h000;
assign TX_DATA_25_const_net_0             = 10'h000;
assign TX_DATA_26_const_net_0             = 10'h000;
assign TX_DATA_27_const_net_0             = 10'h000;
assign TX_DATA_28_const_net_0             = 10'h000;
assign TX_DATA_29_const_net_0             = 10'h000;
assign TX_DATA_30_const_net_0             = 10'h000;
assign TX_DATA_31_const_net_0             = 10'h000;
assign TX_DATA_32_const_net_0             = 10'h000;
assign TX_DATA_33_const_net_0             = 10'h000;
assign TX_DATA_34_const_net_0             = 10'h000;
assign TX_DATA_35_const_net_0             = 10'h000;
assign TX_DATA_36_const_net_0             = 10'h000;
assign TX_DATA_37_const_net_0             = 10'h000;
assign TX_DATA_38_const_net_0             = 10'h000;
assign TX_DATA_39_const_net_0             = 10'h000;
assign TX_DATA_40_const_net_0             = 10'h000;
assign TX_DATA_41_const_net_0             = 10'h000;
assign TX_DATA_42_const_net_0             = 10'h000;
assign TX_DATA_43_const_net_0             = 10'h000;
assign TX_DATA_44_const_net_0             = 10'h000;
assign TX_DATA_45_const_net_0             = 10'h000;
assign TX_DATA_46_const_net_0             = 10'h000;
assign TX_DATA_47_const_net_0             = 10'h000;
assign TX_DATA_48_const_net_0             = 10'h000;
assign TX_DATA_49_const_net_0             = 10'h000;
assign TX_DATA_50_const_net_0             = 10'h000;
assign TX_DATA_51_const_net_0             = 10'h000;
assign TX_DATA_52_const_net_0             = 10'h000;
assign TX_DATA_53_const_net_0             = 10'h000;
assign TX_DATA_54_const_net_0             = 10'h000;
assign TX_DATA_55_const_net_0             = 10'h000;
assign TX_DATA_56_const_net_0             = 10'h000;
assign TX_DATA_57_const_net_0             = 10'h000;
assign TX_DATA_58_const_net_0             = 10'h000;
assign TX_DATA_59_const_net_0             = 10'h000;
assign TX_DATA_60_const_net_0             = 10'h000;
assign TX_DATA_61_const_net_0             = 10'h000;
assign TX_DATA_62_const_net_0             = 10'h000;
assign TX_DATA_63_const_net_0             = 10'h000;
assign OE_DATA_0_const_net_0              = 4'h0;
assign OE_DATA_1_const_net_0              = 4'h0;
assign OE_DATA_2_const_net_0              = 4'h0;
assign OE_DATA_3_const_net_0              = 4'h0;
assign OE_DATA_4_const_net_0              = 4'h0;
assign OE_DATA_5_const_net_0              = 4'h0;
assign OE_DATA_6_const_net_0              = 4'h0;
assign OE_DATA_7_const_net_0              = 4'h0;
assign OE_DATA_8_const_net_0              = 4'h0;
assign OE_DATA_9_const_net_0              = 4'h0;
assign OE_DATA_10_const_net_0             = 4'h0;
assign OE_DATA_11_const_net_0             = 4'h0;
assign OE_DATA_12_const_net_0             = 4'h0;
assign OE_DATA_13_const_net_0             = 4'h0;
assign OE_DATA_14_const_net_0             = 4'h0;
assign OE_DATA_15_const_net_0             = 4'h0;
assign OE_DATA_16_const_net_0             = 4'h0;
assign OE_DATA_17_const_net_0             = 4'h0;
assign OE_DATA_18_const_net_0             = 4'h0;
assign OE_DATA_19_const_net_0             = 4'h0;
assign OE_DATA_20_const_net_0             = 4'h0;
assign OE_DATA_21_const_net_0             = 4'h0;
assign OE_DATA_22_const_net_0             = 4'h0;
assign OE_DATA_23_const_net_0             = 4'h0;
assign OE_DATA_24_const_net_0             = 4'h0;
assign OE_DATA_25_const_net_0             = 4'h0;
assign OE_DATA_26_const_net_0             = 4'h0;
assign OE_DATA_27_const_net_0             = 4'h0;
assign OE_DATA_28_const_net_0             = 4'h0;
assign OE_DATA_29_const_net_0             = 4'h0;
assign OE_DATA_30_const_net_0             = 4'h0;
assign OE_DATA_31_const_net_0             = 4'h0;
assign OE_DATA_32_const_net_0             = 4'h0;
assign OE_DATA_33_const_net_0             = 4'h0;
assign OE_DATA_34_const_net_0             = 4'h0;
assign OE_DATA_35_const_net_0             = 4'h0;
assign OE_DATA_36_const_net_0             = 4'h0;
assign OE_DATA_37_const_net_0             = 4'h0;
assign OE_DATA_38_const_net_0             = 4'h0;
assign OE_DATA_39_const_net_0             = 4'h0;
assign OE_DATA_40_const_net_0             = 4'h0;
assign OE_DATA_41_const_net_0             = 4'h0;
assign OE_DATA_42_const_net_0             = 4'h0;
assign OE_DATA_43_const_net_0             = 4'h0;
assign OE_DATA_44_const_net_0             = 4'h0;
assign OE_DATA_45_const_net_0             = 4'h0;
assign OE_DATA_46_const_net_0             = 4'h0;
assign OE_DATA_47_const_net_0             = 4'h0;
assign OE_DATA_48_const_net_0             = 4'h0;
assign OE_DATA_49_const_net_0             = 4'h0;
assign OE_DATA_50_const_net_0             = 4'h0;
assign OE_DATA_51_const_net_0             = 4'h0;
assign OE_DATA_52_const_net_0             = 4'h0;
assign OE_DATA_53_const_net_0             = 4'h0;
assign OE_DATA_54_const_net_0             = 4'h0;
assign OE_DATA_55_const_net_0             = 4'h0;
assign OE_DATA_56_const_net_0             = 4'h0;
assign OE_DATA_57_const_net_0             = 4'h0;
assign OE_DATA_58_const_net_0             = 4'h0;
assign OE_DATA_59_const_net_0             = 4'h0;
assign OE_DATA_60_const_net_0             = 4'h0;
assign OE_DATA_61_const_net_0             = 4'h0;
assign OE_DATA_62_const_net_0             = 4'h0;
assign OE_DATA_63_const_net_0             = 4'h0;
assign DLL_CODE_const_net_0               = 8'h00;
assign READ_CLK_SEL_const_net_0           = 3'h0;
assign EYE_MONITOR_WIDTH_IN_const_net_0   = 3'h0;
assign CDR_CLK_A_SEL_const_net_0          = 8'h00;
assign VCC_net                            = 1'b1;
assign CDR_CLK_B_SEL_const_net_0          = 11'h000;
//--------------------------------------------------------------------
// Inversions
//--------------------------------------------------------------------
assign RESET_IN_POST_INV0_0 = ~ ARST_N;
//--------------------------------------------------------------------
// Top level output port assignments
//--------------------------------------------------------------------
assign L0_RXD_DATA_net_1 = L0_RXD_DATA_net_0;
assign L0_RXD_DATA[9:0]  = L0_RXD_DATA_net_1;
assign RX_CLK_G_net_1    = RX_CLK_G_net_0;
assign RX_CLK_G          = RX_CLK_G_net_1;
//--------------------------------------------------------------------
// Concatenation assignments
//--------------------------------------------------------------------
assign HS_IO_CLK_net_0 = { HS_IO_CLK_RX_Y , HS_IO_CLK_FIFO_Y };
//--------------------------------------------------------------------
// Component instances
//--------------------------------------------------------------------
//--------INBUF
INBUF CLK_0(
        // Inputs
        .PAD ( RX_CLK ),
        // Outputs
        .Y   ( CLK_0_Y ) 
        );

//--------CLKINT
CLKINT CLKINT_0(
        // Inputs
        .A ( PF_CLK_DIV_FIFO_CLK_DIV_OUT ),
        // Outputs
        .Y ( RX_CLK_G_net_0 ) 
        );

//--------HS_IO_CLK
HS_IO_CLK HS_IO_CLK_CASCADED(
        // Inputs
        .A ( CLK_0_Y ),
        // Outputs
        .Y ( HS_IO_CLK_CASCADED_Y ) 
        );

//--------HS_IO_CLK
HS_IO_CLK HS_IO_CLK_FIFO(
        // Inputs
        .A ( PF_CLK_DIV_FIFO_CLK_OUT_HS_IO_CLK ),
        // Outputs
        .Y ( HS_IO_CLK_FIFO_Y ) 
        );

//--------HS_IO_CLK
HS_IO_CLK HS_IO_CLK_RX(
        // Inputs
        .A ( PF_CLK_DIV_RXCLK_CLK_OUT_HS_IO_CLK ),
        // Outputs
        .Y ( HS_IO_CLK_RX_Y ) 
        );

//--------PF_IOD_LVDS_RX_PF_CLK_DIV_FIFO_PF_CLK_DIV_DELAY   -   Actel:SgCore:PF_CLK_DIV_DELAY:1.1.101
PF_IOD_LVDS_RX_PF_CLK_DIV_FIFO_PF_CLK_DIV_DELAY PF_CLK_DIV_FIFO(
        // Inputs
        .CLK_IN            ( HS_IO_CLK_CASCADED_Y ),
        // Outputs
        .CLK_OUT_HS_IO_CLK ( PF_CLK_DIV_FIFO_CLK_OUT_HS_IO_CLK ),
        .CLK_DIV_OUT       ( PF_CLK_DIV_FIFO_CLK_DIV_OUT ) 
        );

//--------PF_IOD_LVDS_RX_PF_CLK_DIV_RXCLK_PF_CLK_DIV_DELAY   -   Actel:SgCore:PF_CLK_DIV_DELAY:1.1.101
PF_IOD_LVDS_RX_PF_CLK_DIV_RXCLK_PF_CLK_DIV_DELAY PF_CLK_DIV_RXCLK(
        // Inputs
        .CLK_IN            ( HS_IO_CLK_CASCADED_Y ),
        // Outputs
        .CLK_OUT_HS_IO_CLK ( PF_CLK_DIV_RXCLK_CLK_OUT_HS_IO_CLK ),
        .CLK_DIV_OUT       (  ) 
        );

//--------PF_IOD_LVDS_RX_PF_IOD_RX_PF_IOD   -   Actel:SgCore:PF_IOD:1.0.215
PF_IOD_LVDS_RX_PF_IOD_RX_PF_IOD PF_IOD_RX(
        // Inputs
        .ARST_N                    ( PF_LANECTRL_0_ARST_N ),
        .RX_SYNC_RST               ( PF_LANECTRL_0_RX_SYNC_RST ),
        .TX_SYNC_RST               ( PF_LANECTRL_0_TX_SYNC_RST ),
        .HS_IO_CLK                 ( HS_IO_CLK_FIFO_Y ),
        .RX_DQS_90                 ( PF_LANECTRL_0_RX_DQS_90 ),
        .FIFO_WR_PTR               ( PF_LANECTRL_0_FIFO_WR_PTR ),
        .FIFO_RD_PTR               ( PF_LANECTRL_0_FIFO_RD_PTR ),
        .EYE_MONITOR_LANE_WIDTH    ( EYE_MONITOR_LANE_WIDTH_const_net_0 ), // tied to 3'h0 from definition
        .EYE_MONITOR_CLEAR_FLAGS_0 ( GND_net ), // tied to 1'b0 from definition
        .FAB_CLK                   ( RX_CLK_G_net_0 ),
        .PAD_I                     ( RXD ),
        .PAD_I_N                   ( RXD_N ),
        // Outputs
        .EYE_MONITOR_EARLY_0       (  ),
        .EYE_MONITOR_LATE_0        (  ),
        .RX_DATA_0                 ( L0_RXD_DATA_net_0 ) 
        );

//--------PF_IOD_LVDS_RX_PF_LANECTRL_0_PF_LANECTRL   -   Actel:SgCore:PF_LANECTRL:2.0.102
PF_IOD_LVDS_RX_PF_LANECTRL_0_PF_LANECTRL PF_LANECTRL_0(
        // Inputs
        .HS_IO_CLK             ( HS_IO_CLK_net_0 ),
        .FAB_CLK               ( RX_CLK_G_net_0 ),
        .RESET                 ( RESET_IN_POST_INV0_0 ),
        .HS_IO_CLK_PAUSE       ( HS_IO_CLK_PAUSE ),
        .EYE_MONITOR_WIDTH_IN  ( EYE_MONITOR_WIDTH_IN_const_net_0 ), // tied to 3'h0 from definition
        // Outputs
        .EYE_MONITOR_WIDTH_OUT (  ),
        .RX_DQS_90             ( PF_LANECTRL_0_RX_DQS_90 ),
        .TX_DQS                (  ),
        .TX_DQS_270            (  ),
        .FIFO_WR_PTR           ( PF_LANECTRL_0_FIFO_WR_PTR ),
        .FIFO_RD_PTR           ( PF_LANECTRL_0_FIFO_RD_PTR ),
        .ARST_N                ( PF_LANECTRL_0_ARST_N ),
        .RX_SYNC_RST           ( PF_LANECTRL_0_RX_SYNC_RST ),
        .TX_SYNC_RST           ( PF_LANECTRL_0_TX_SYNC_RST ),
        .A_OUT_RST_N           (  ) 
        );


endmodule
