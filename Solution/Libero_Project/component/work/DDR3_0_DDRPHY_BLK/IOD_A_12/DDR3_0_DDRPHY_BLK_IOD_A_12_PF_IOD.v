`timescale 1 ns/100 ps
// Version: v12.2 12.700.0.19


module DDR3_0_DDRPHY_BLK_IOD_A_12_PF_IOD(
       RX_P_0,
       ARST_N,
       RX_SYNC_RST,
       TX_SYNC_RST,
       HS_IO_CLK,
       TX_DQS_270,
       TX_0,
       OE_0,
       TX_DATA_0,
       OE_DATA_0,
       EYE_MONITOR_CLEAR_FLAGS_0,
       DELAY_LINE_MOVE_0,
       DELAY_LINE_DIRECTION_0,
       DELAY_LINE_LOAD_0,
       DELAY_LINE_OUT_OF_RANGE_0,
       FAB_CLK,
       EYE_MONITOR_EARLY_0,
       EYE_MONITOR_LATE_0,
       RX_DATA_0,
       ODT_EN_0
    );
input  RX_P_0;
input  ARST_N;
input  RX_SYNC_RST;
input  TX_SYNC_RST;
input  [0:0] HS_IO_CLK;
input  TX_DQS_270;
output TX_0;
output OE_0;
input  [3:0] TX_DATA_0;
input  [3:0] OE_DATA_0;
input  EYE_MONITOR_CLEAR_FLAGS_0;
input  DELAY_LINE_MOVE_0;
input  DELAY_LINE_DIRECTION_0;
input  DELAY_LINE_LOAD_0;
output DELAY_LINE_OUT_OF_RANGE_0;
input  FAB_CLK;
output EYE_MONITOR_EARLY_0;
output EYE_MONITOR_LATE_0;
output [3:0] RX_DATA_0;
input  ODT_EN_0;

    wire GND_net, VCC_net;
    
    VCC vcc_inst (.Y(VCC_net));
    GND gnd_inst (.Y(GND_net));
    IOD #( .DATA_RATE(1333.332), .FORMAL_NAME("A12"), .INTERFACE_NAME("DDR3")
        , .DELAY_LINE_SIMULATION_MODE("ENABLED"), .RESERVED_0(1'b0), .RX_CLK_EN(1'b1)
        , .RX_CLK_INV(1'b0), .TX_CLK_EN(1'b1), .TX_CLK_INV(1'b0), .HS_IO_CLK_SEL(3'b000)
        , .QDR_EN(1'b0), .EDGE_DETECT_EN(1'b0), .DELAY_LINE_MODE(2'b11)
        , .RX_MODE(4'b0100), .EYE_MONITOR_MODE(1'b1), .DYN_DELAY_LINE_EN(1'b1)
        , .FIFO_WR_EN(1'b0), .EYE_MONITOR_EN(1'b1), .TX_MODE(7'b1010100)
        , .TX_CLK_SEL(2'b11), .TX_OE_MODE(3'b010), .TX_OE_CLK_INV(1'b0)
        , .RX_DELAY_VAL(8'b00000001), .RX_DELAY_VAL_X2(1'b0), .TX_DELAY_VAL(8'b00000001)
        , .EYE_MONITOR_WIDTH(3'b001), .EYE_MONITOR_WIDTH_SRC(1'b0), .RESERVED_1(1'b0)
        , .DISABLE_LANECTRL_RESET(1'b0), .INPUT_DELAY_SEL(2'b00), .OEFF_EN_INV(1'b0)
        , .INFF_EN_INV(1'b0), .OUTFF_EN_INV(1'b0) )  I_IOD_0 (
        .EYE_MONITOR_EARLY(EYE_MONITOR_EARLY_0), .EYE_MONITOR_LATE(
        EYE_MONITOR_LATE_0), .RX_DATA({nc0, RX_DATA_0[3], nc1, 
        RX_DATA_0[2], nc2, RX_DATA_0[1], nc3, RX_DATA_0[0], nc4, nc5}), 
        .DELAY_LINE_OUT_OF_RANGE(DELAY_LINE_OUT_OF_RANGE_0), .TX_DATA({
        GND_net, TX_DATA_0[3], GND_net, TX_DATA_0[2], GND_net, 
        TX_DATA_0[1], GND_net, TX_DATA_0[0]}), .OE_DATA({OE_DATA_0[3], 
        OE_DATA_0[2], OE_DATA_0[1], OE_DATA_0[0]}), .RX_BIT_SLIP(
        GND_net), .EYE_MONITOR_CLEAR_FLAGS(EYE_MONITOR_CLEAR_FLAGS_0), 
        .DELAY_LINE_MOVE(DELAY_LINE_MOVE_0), .DELAY_LINE_DIRECTION(
        DELAY_LINE_DIRECTION_0), .DELAY_LINE_LOAD(DELAY_LINE_LOAD_0), 
        .RX_CLK(FAB_CLK), .TX_CLK(FAB_CLK), .ODT_EN(ODT_EN_0), 
        .INFF_SL(GND_net), .INFF_EN(GND_net), .OUTFF_SL(GND_net), 
        .OUTFF_EN(GND_net), .AL_N(GND_net), .OEFF_LAT_N(GND_net), 
        .OEFF_SD_N(GND_net), .OEFF_AD_N(GND_net), .INFF_LAT_N(GND_net), 
        .INFF_SD_N(GND_net), .INFF_AD_N(GND_net), .OUTFF_LAT_N(GND_net)
        , .OUTFF_SD_N(GND_net), .OUTFF_AD_N(GND_net), .RX_P(RX_P_0), 
        .RX_N(), .TX_DATA_9(), .TX_DATA_8(), .ARST_N(ARST_N), 
        .RX_SYNC_RST(RX_SYNC_RST), .TX_SYNC_RST(TX_SYNC_RST), 
        .HS_IO_CLK({GND_net, GND_net, GND_net, GND_net, GND_net, 
        HS_IO_CLK[0]}), .RX_DQS_90({GND_net, GND_net}), .TX_DQS(
        GND_net), .TX_DQS_270(TX_DQS_270), .FIFO_WR_PTR({GND_net, 
        GND_net, GND_net}), .FIFO_RD_PTR({GND_net, GND_net, GND_net}), 
        .TX(TX_0), .OE(OE_0), .CDR_CLK(GND_net), .CDR_NEXT_CLK(GND_net)
        , .EYE_MONITOR_LANE_WIDTH({GND_net, GND_net, GND_net}), 
        .DDR_DO_READ(), .CDR_CLK_A_SEL_8(), .CDR_CLK_A_SEL_9(), 
        .CDR_CLK_A_SEL_10(), .CDR_CLK_B_SEL({nc6, nc7, nc8, nc9, nc10, 
        nc11, nc12, nc13, nc14, nc15, nc16}), .SWITCH(), 
        .CDR_CLR_NEXT_CLK_N(), .TX_DATA_OUT_9(), .TX_DATA_OUT_8(), 
        .AL_N_OUT(), .OUTFF_SL_OUT(), .OUTFF_EN_OUT(), .INFF_SL_OUT(), 
        .INFF_EN_OUT(), .RX_CLK_OUT(), .TX_CLK_OUT());
    
endmodule
