`timescale 1 ns/100 ps
// Version: v12.3 12.800.0.16


module PF_IOD_LVDS_TX_PF_IOD_TX_PF_IOD(
       ARST_N,
       RX_SYNC_RST,
       TX_SYNC_RST,
       HS_IO_CLK,
       TX_DQS,
       TX_DQS_270,
       TX_DATA_0,
       OE_DATA_0,
       FAB_CLK,
       PAD_O,
       PAD_O_N,
       ODT_EN_0
    );
input  ARST_N;
input  RX_SYNC_RST;
input  TX_SYNC_RST;
input  [0:0] HS_IO_CLK;
input  TX_DQS;
input  TX_DQS_270;
input  [9:0] TX_DATA_0;
input  [3:0] OE_DATA_0;
input  FAB_CLK;
output [0:0] PAD_O;
output [0:0] PAD_O_N;
input  ODT_EN_0;

    wire GND_net, VCC_net, tx_data_0_9, tx_data_0_8, 
        D_I_OUTBUF_DIFF_0_net;
    
    OUTBUF_DIFF I_OUTBUF_DIFF_0 (.D(D_I_OUTBUF_DIFF_0_net), .PADP(
        PAD_O[0]), .PADN(PAD_O_N[0]));
    IOD #( .DATA_RATE(2.0), .FORMAL_NAME("TXD:NO_IOD_N_SIDE"), .INTERFACE_NAME("TX_DDRX_B")
        , .DELAY_LINE_SIMULATION_MODE("DISABLED"), .RESERVED_0(1'b0), .RX_CLK_EN(1'b0)
        , .RX_CLK_INV(1'b0), .TX_CLK_EN(1'b1), .TX_CLK_INV(1'b0), .HS_IO_CLK_SEL(3'b000)
        , .QDR_EN(1'b0), .EDGE_DETECT_EN(1'b0), .DELAY_LINE_MODE(2'b10)
        , .RX_MODE(4'b0000), .EYE_MONITOR_MODE(1'b0), .DYN_DELAY_LINE_EN(1'b0)
        , .FIFO_WR_EN(1'b0), .EYE_MONITOR_EN(1'b0), .TX_MODE(7'b1000101)
        , .TX_CLK_SEL(2'b11), .TX_OE_MODE(3'b000), .TX_OE_CLK_INV(1'b0)
        , .RX_DELAY_VAL(8'b00000001), .RX_DELAY_VAL_X2(1'b0), .TX_DELAY_VAL(8'b00000001)
        , .EYE_MONITOR_WIDTH(3'b001), .EYE_MONITOR_WIDTH_SRC(1'b0), .RESERVED_1(1'b0)
        , .DISABLE_LANECTRL_RESET(1'b0), .INPUT_DELAY_SEL(2'b00), .OEFF_EN_INV(1'b0)
        , .INFF_EN_INV(1'b0), .OUTFF_EN_INV(1'b0) )  I_IOD_98_0 (
        .EYE_MONITOR_EARLY(), .EYE_MONITOR_LATE(), .RX_DATA({nc0, nc1, 
        nc2, nc3, nc4, nc5, nc6, nc7, nc8, nc9}), 
        .DELAY_LINE_OUT_OF_RANGE(), .TX_DATA({TX_DATA_0[9], 
        TX_DATA_0[8], GND_net, GND_net, GND_net, GND_net, GND_net, 
        GND_net}), .OE_DATA({GND_net, GND_net, GND_net, GND_net}), 
        .RX_BIT_SLIP(GND_net), .EYE_MONITOR_CLEAR_FLAGS(GND_net), 
        .DELAY_LINE_MOVE(GND_net), .DELAY_LINE_DIRECTION(GND_net), 
        .DELAY_LINE_LOAD(GND_net), .RX_CLK(GND_net), .TX_CLK(GND_net), 
        .ODT_EN(GND_net), .INFF_SL(), .INFF_EN(), .OUTFF_SL(), 
        .OUTFF_EN(), .AL_N(), .OEFF_LAT_N(), .OEFF_SD_N(), .OEFF_AD_N()
        , .INFF_LAT_N(), .INFF_SD_N(), .INFF_AD_N(), .OUTFF_LAT_N(), 
        .OUTFF_SD_N(), .OUTFF_AD_N(), .RX_P(GND_net), .RX_N(), 
        .TX_DATA_9(GND_net), .TX_DATA_8(GND_net), .ARST_N(VCC_net), 
        .RX_SYNC_RST(), .TX_SYNC_RST(), .HS_IO_CLK({GND_net, GND_net, 
        GND_net, GND_net, GND_net, GND_net}), .RX_DQS_90({GND_net, 
        GND_net}), .TX_DQS(GND_net), .TX_DQS_270(GND_net), 
        .FIFO_WR_PTR({GND_net, GND_net, GND_net}), .FIFO_RD_PTR({
        GND_net, GND_net, GND_net}), .TX(), .OE(), .CDR_CLK(GND_net), 
        .CDR_NEXT_CLK(), .EYE_MONITOR_LANE_WIDTH({GND_net, GND_net, 
        GND_net}), .DDR_DO_READ(), .CDR_CLK_A_SEL_8(), 
        .CDR_CLK_A_SEL_9(), .CDR_CLK_A_SEL_10(), .CDR_CLK_B_SEL({nc10, 
        nc11, nc12, nc13, nc14, nc15, nc16, nc17, nc18, nc19, nc20}), 
        .SWITCH(), .CDR_CLR_NEXT_CLK_N(), .TX_DATA_OUT_9(tx_data_0_9), 
        .TX_DATA_OUT_8(tx_data_0_8), .AL_N_OUT(), .OUTFF_SL_OUT(), 
        .OUTFF_EN_OUT(), .INFF_SL_OUT(), .INFF_EN_OUT(), .RX_CLK_OUT(), 
        .TX_CLK_OUT());
    VCC vcc_inst (.Y(VCC_net));
    GND gnd_inst (.Y(GND_net));
    IOD #( .DATA_RATE(2.0), .FORMAL_NAME("TXD:NO_IOD_N_SIDE"), .INTERFACE_NAME("TX_DDRX_B")
        , .DELAY_LINE_SIMULATION_MODE("DISABLED"), .RESERVED_0(1'b0), .RX_CLK_EN(1'b0)
        , .RX_CLK_INV(1'b0), .TX_CLK_EN(1'b1), .TX_CLK_INV(1'b0), .HS_IO_CLK_SEL(3'b000)
        , .QDR_EN(1'b0), .EDGE_DETECT_EN(1'b0), .DELAY_LINE_MODE(2'b10)
        , .RX_MODE(4'b0000), .EYE_MONITOR_MODE(1'b0), .DYN_DELAY_LINE_EN(1'b0)
        , .FIFO_WR_EN(1'b0), .EYE_MONITOR_EN(1'b0), .TX_MODE(7'b1000101)
        , .TX_CLK_SEL(2'b11), .TX_OE_MODE(3'b000), .TX_OE_CLK_INV(1'b0)
        , .RX_DELAY_VAL(8'b00000001), .RX_DELAY_VAL_X2(1'b0), .TX_DELAY_VAL(8'b00000001)
        , .EYE_MONITOR_WIDTH(3'b001), .EYE_MONITOR_WIDTH_SRC(1'b0), .RESERVED_1(1'b0)
        , .DISABLE_LANECTRL_RESET(1'b0), .INPUT_DELAY_SEL(2'b00), .OEFF_EN_INV(1'b0)
        , .INFF_EN_INV(1'b0), .OUTFF_EN_INV(1'b0) )  I_IOD_0 (
        .EYE_MONITOR_EARLY(), .EYE_MONITOR_LATE(), .RX_DATA({nc21, 
        nc22, nc23, nc24, nc25, nc26, nc27, nc28, nc29, nc30}), 
        .DELAY_LINE_OUT_OF_RANGE(), .TX_DATA({TX_DATA_0[7], 
        TX_DATA_0[6], TX_DATA_0[5], TX_DATA_0[4], TX_DATA_0[3], 
        TX_DATA_0[2], TX_DATA_0[1], TX_DATA_0[0]}), .OE_DATA({
        OE_DATA_0[3], OE_DATA_0[2], OE_DATA_0[1], OE_DATA_0[0]}), 
        .RX_BIT_SLIP(GND_net), .EYE_MONITOR_CLEAR_FLAGS(GND_net), 
        .DELAY_LINE_MOVE(GND_net), .DELAY_LINE_DIRECTION(GND_net), 
        .DELAY_LINE_LOAD(GND_net), .RX_CLK(GND_net), .TX_CLK(FAB_CLK), 
        .ODT_EN(ODT_EN_0), .INFF_SL(GND_net), .INFF_EN(GND_net), 
        .OUTFF_SL(GND_net), .OUTFF_EN(GND_net), .AL_N(GND_net), 
        .OEFF_LAT_N(GND_net), .OEFF_SD_N(GND_net), .OEFF_AD_N(GND_net), 
        .INFF_LAT_N(GND_net), .INFF_SD_N(GND_net), .INFF_AD_N(GND_net), 
        .OUTFF_LAT_N(GND_net), .OUTFF_SD_N(GND_net), .OUTFF_AD_N(
        GND_net), .RX_P(), .RX_N(), .TX_DATA_9(tx_data_0_9), 
        .TX_DATA_8(tx_data_0_8), .ARST_N(ARST_N), .RX_SYNC_RST(
        RX_SYNC_RST), .TX_SYNC_RST(TX_SYNC_RST), .HS_IO_CLK({GND_net, 
        GND_net, GND_net, GND_net, GND_net, HS_IO_CLK[0]}), .RX_DQS_90({
        GND_net, GND_net}), .TX_DQS(TX_DQS), .TX_DQS_270(TX_DQS_270), 
        .FIFO_WR_PTR({GND_net, GND_net, GND_net}), .FIFO_RD_PTR({
        GND_net, GND_net, GND_net}), .TX(D_I_OUTBUF_DIFF_0_net), .OE(), 
        .CDR_CLK(GND_net), .CDR_NEXT_CLK(GND_net), 
        .EYE_MONITOR_LANE_WIDTH({GND_net, GND_net, GND_net}), 
        .DDR_DO_READ(), .CDR_CLK_A_SEL_8(), .CDR_CLK_A_SEL_9(), 
        .CDR_CLK_A_SEL_10(), .CDR_CLK_B_SEL({nc31, nc32, nc33, nc34, 
        nc35, nc36, nc37, nc38, nc39, nc40, nc41}), .SWITCH(), 
        .CDR_CLR_NEXT_CLK_N(), .TX_DATA_OUT_9(), .TX_DATA_OUT_8(), 
        .AL_N_OUT(), .OUTFF_SL_OUT(), .OUTFF_EN_OUT(), .INFF_SL_OUT(), 
        .INFF_EN_OUT(), .RX_CLK_OUT(), .TX_CLK_OUT());
    
endmodule
