//////////////////////////////////////////////////////////////////////
// Created by SmartDesign Wed Sep 11 14:32:51 2019
// Version: v12.2 12.700.0.19
//////////////////////////////////////////////////////////////////////

`timescale 1ns / 100ps

// DDR3_0_DDRPHY_BLK
module DDR3_0_DDRPHY_BLK(
    // Inputs
    ADDR_VCOPHS_OFFSET,
    ADDR_WAIT_COUNT,
    BCLK_VCOPHS_OFFSET,
    CAL_L_BUSY,
    CAL_L_DATAOUT,
    CAL_L_D_REQ,
    CAL_L_R_VALID,
    CTRLR_READY_IN,
    DFI_ADDRESS_P0,
    DFI_ADDRESS_P1,
    DFI_ADDRESS_P2,
    DFI_ADDRESS_P3,
    DFI_BANK_P0,
    DFI_BANK_P1,
    DFI_BANK_P2,
    DFI_BANK_P3,
    DFI_CALVL_BG_PATTERN,
    DFI_CALVL_CAPTURE,
    DFI_CALVL_EN,
    DFI_CALVL_START,
    DFI_CALVL_TRN_COMMAND,
    DFI_CAS_N_P0,
    DFI_CAS_N_P1,
    DFI_CAS_N_P2,
    DFI_CAS_N_P3,
    DFI_CKE_P0,
    DFI_CKE_P1,
    DFI_CKE_P2,
    DFI_CKE_P3,
    DFI_CS_N_P0,
    DFI_CS_N_P1,
    DFI_CS_N_P2,
    DFI_CS_N_P3,
    DFI_CTRLUPD_REQ,
    DFI_INIT_START,
    DFI_LVL_PATTERN,
    DFI_LVL_PERIODIC,
    DFI_ODT_P0,
    DFI_ODT_P1,
    DFI_ODT_P2,
    DFI_ODT_P3,
    DFI_PHYUPD_ACK,
    DFI_RAS_N_P0,
    DFI_RAS_N_P1,
    DFI_RAS_N_P2,
    DFI_RAS_N_P3,
    DFI_RDDATA_CS_N_P0,
    DFI_RDDATA_CS_N_P1,
    DFI_RDDATA_CS_N_P2,
    DFI_RDDATA_CS_N_P3,
    DFI_RDDATA_EN_P0,
    DFI_RDDATA_EN_P1,
    DFI_RDDATA_EN_P2,
    DFI_RDDATA_EN_P3,
    DFI_RDLVL_CS_N,
    DFI_RDLVL_EN,
    DFI_RDLVL_GATE_EN,
    DFI_RESET_N_P0,
    DFI_RESET_N_P1,
    DFI_RESET_N_P2,
    DFI_RESET_N_P3,
    DFI_WE_N_P0,
    DFI_WE_N_P1,
    DFI_WE_N_P2,
    DFI_WE_N_P3,
    DFI_WRDATA_CS_N_P0,
    DFI_WRDATA_CS_N_P1,
    DFI_WRDATA_CS_N_P2,
    DFI_WRDATA_CS_N_P3,
    DFI_WRDATA_EN_P0,
    DFI_WRDATA_EN_P1,
    DFI_WRDATA_EN_P2,
    DFI_WRDATA_EN_P3,
    DFI_WRDATA_MASK_P0,
    DFI_WRDATA_MASK_P1,
    DFI_WRDATA_MASK_P2,
    DFI_WRDATA_MASK_P3,
    DFI_WRDATA_P0,
    DFI_WRDATA_P1,
    DFI_WRDATA_P2,
    DFI_WRDATA_P3,
    DFI_WRLVL_CS_N,
    DFI_WRLVL_EN,
    DFI_WRLVL_STROBE,
    DLL_CODE,
    DLL_DLY_DIFF,
    HS_IO_CLK,
    HS_IO_CLK_270,
    PADDR,
    PCLK,
    PENABLE,
    PLL_LOCK,
    PSEL,
    PWDATA,
    PWRITE,
    RDGATE_MIN_READS_THRESHOLD,
    REF_CLK,
    SKIP_BCLK_TRN,
    SKIP_CA_TRN,
    SKIP_DQSW_TRN,
    SKIP_RDLVL_TRN,
    SKIP_WRLVL_TRN,
    SYS_CLK,
    SYS_RST_N,
    WRCAL_WRITE_COUNTER_VALUE,
    WRLVL_TAP_OFFSET,
    // Outputs
    A,
    BA,
    CAL_L_DATAIN,
    CAL_L_DM_IN,
    CAL_L_R_REQ,
    CAL_L_W_REQ,
    CAL_SELECT,
    CAS_N,
    CK0,
    CK0_N,
    CKE,
    CODE_UPDATE,
    CS_N,
    CTRLR_READY_OUT,
    DFI_CALVL_RESP,
    DFI_CALVL_TRAIN_DONE,
    DFI_CTRLUPD_ACK,
    DFI_INIT_COMPLETE,
    DFI_PHYUPD_REQ,
    DFI_PHYUPD_TYPE,
    DFI_RDDATA_VALID_W0,
    DFI_RDDATA_VALID_W1,
    DFI_RDDATA_VALID_W2,
    DFI_RDDATA_VALID_W3,
    DFI_RDDATA_W0,
    DFI_RDDATA_W1,
    DFI_RDDATA_W2,
    DFI_RDDATA_W3,
    DFI_RDLVL_RESP,
    DFI_TRAINING_COMPLETE,
    DFI_WRLVL_RESP,
    DM,
    ITER_COUNT,
    LOADPHS_B,
    ODT,
    PRDATA,
    PREADY,
    RAS_N,
    RESET_N,
    SHIELD0,
    SHIELD1,
    SYNC_SYS_RST_N,
    VCO_PHSEL_BCLK90_SEL,
    VCO_PHSEL_BCLK_SEL,
    VCO_PHSEL_REFCLK_SEL,
    VCO_PHSEL_ROTATE,
    WE_N,
    // Inouts
    DQ,
    DQS,
    DQS_N
);

//--------------------------------------------------------------------
// Input
//--------------------------------------------------------------------
input  [2:0]   ADDR_VCOPHS_OFFSET;
input  [9:0]   ADDR_WAIT_COUNT;
input  [2:0]   BCLK_VCOPHS_OFFSET;
input          CAL_L_BUSY;
input  [127:0] CAL_L_DATAOUT;
input          CAL_L_D_REQ;
input          CAL_L_R_VALID;
input          CTRLR_READY_IN;
input  [15:0]  DFI_ADDRESS_P0;
input  [15:0]  DFI_ADDRESS_P1;
input  [15:0]  DFI_ADDRESS_P2;
input  [15:0]  DFI_ADDRESS_P3;
input  [2:0]   DFI_BANK_P0;
input  [2:0]   DFI_BANK_P1;
input  [2:0]   DFI_BANK_P2;
input  [2:0]   DFI_BANK_P3;
input  [19:0]  DFI_CALVL_BG_PATTERN;
input          DFI_CALVL_CAPTURE;
input          DFI_CALVL_EN;
input          DFI_CALVL_START;
input  [19:0]  DFI_CALVL_TRN_COMMAND;
input          DFI_CAS_N_P0;
input          DFI_CAS_N_P1;
input          DFI_CAS_N_P2;
input          DFI_CAS_N_P3;
input  [0:0]   DFI_CKE_P0;
input  [0:0]   DFI_CKE_P1;
input  [0:0]   DFI_CKE_P2;
input  [0:0]   DFI_CKE_P3;
input  [0:0]   DFI_CS_N_P0;
input  [0:0]   DFI_CS_N_P1;
input  [0:0]   DFI_CS_N_P2;
input  [0:0]   DFI_CS_N_P3;
input          DFI_CTRLUPD_REQ;
input          DFI_INIT_START;
input  [3:0]   DFI_LVL_PATTERN;
input          DFI_LVL_PERIODIC;
input  [0:0]   DFI_ODT_P0;
input  [0:0]   DFI_ODT_P1;
input  [0:0]   DFI_ODT_P2;
input  [0:0]   DFI_ODT_P3;
input          DFI_PHYUPD_ACK;
input          DFI_RAS_N_P0;
input          DFI_RAS_N_P1;
input          DFI_RAS_N_P2;
input          DFI_RAS_N_P3;
input  [0:0]   DFI_RDDATA_CS_N_P0;
input  [0:0]   DFI_RDDATA_CS_N_P1;
input  [0:0]   DFI_RDDATA_CS_N_P2;
input  [0:0]   DFI_RDDATA_CS_N_P3;
input  [15:0]  DFI_RDDATA_EN_P0;
input  [15:0]  DFI_RDDATA_EN_P1;
input  [15:0]  DFI_RDDATA_EN_P2;
input  [15:0]  DFI_RDDATA_EN_P3;
input  [0:0]   DFI_RDLVL_CS_N;
input          DFI_RDLVL_EN;
input          DFI_RDLVL_GATE_EN;
input          DFI_RESET_N_P0;
input          DFI_RESET_N_P1;
input          DFI_RESET_N_P2;
input          DFI_RESET_N_P3;
input          DFI_WE_N_P0;
input          DFI_WE_N_P1;
input          DFI_WE_N_P2;
input          DFI_WE_N_P3;
input  [0:0]   DFI_WRDATA_CS_N_P0;
input  [0:0]   DFI_WRDATA_CS_N_P1;
input  [0:0]   DFI_WRDATA_CS_N_P2;
input  [0:0]   DFI_WRDATA_CS_N_P3;
input  [15:0]  DFI_WRDATA_EN_P0;
input  [15:0]  DFI_WRDATA_EN_P1;
input  [15:0]  DFI_WRDATA_EN_P2;
input  [15:0]  DFI_WRDATA_EN_P3;
input  [3:0]   DFI_WRDATA_MASK_P0;
input  [3:0]   DFI_WRDATA_MASK_P1;
input  [3:0]   DFI_WRDATA_MASK_P2;
input  [3:0]   DFI_WRDATA_MASK_P3;
input  [31:0]  DFI_WRDATA_P0;
input  [31:0]  DFI_WRDATA_P1;
input  [31:0]  DFI_WRDATA_P2;
input  [31:0]  DFI_WRDATA_P3;
input  [0:0]   DFI_WRLVL_CS_N;
input          DFI_WRLVL_EN;
input          DFI_WRLVL_STROBE;
input  [7:0]   DLL_CODE;
input          DLL_DLY_DIFF;
input          HS_IO_CLK;
input          HS_IO_CLK_270;
input  [15:0]  PADDR;
input          PCLK;
input          PENABLE;
input          PLL_LOCK;
input          PSEL;
input  [7:0]   PWDATA;
input          PWRITE;
input  [9:0]   RDGATE_MIN_READS_THRESHOLD;
input          REF_CLK;
input          SKIP_BCLK_TRN;
input          SKIP_CA_TRN;
input          SKIP_DQSW_TRN;
input          SKIP_RDLVL_TRN;
input          SKIP_WRLVL_TRN;
input          SYS_CLK;
input          SYS_RST_N;
input  [7:0]   WRCAL_WRITE_COUNTER_VALUE;
input  [6:0]   WRLVL_TAP_OFFSET;
//--------------------------------------------------------------------
// Output
//--------------------------------------------------------------------
output [15:0]  A;
output [2:0]   BA;
output [127:0] CAL_L_DATAIN;
output [15:0]  CAL_L_DM_IN;
output         CAL_L_R_REQ;
output         CAL_L_W_REQ;
output         CAL_SELECT;
output         CAS_N;
output         CK0;
output         CK0_N;
output         CKE;
output         CODE_UPDATE;
output         CS_N;
output         CTRLR_READY_OUT;
output [1:0]   DFI_CALVL_RESP;
output         DFI_CALVL_TRAIN_DONE;
output         DFI_CTRLUPD_ACK;
output         DFI_INIT_COMPLETE;
output         DFI_PHYUPD_REQ;
output [1:0]   DFI_PHYUPD_TYPE;
output [1:0]   DFI_RDDATA_VALID_W0;
output [1:0]   DFI_RDDATA_VALID_W1;
output [1:0]   DFI_RDDATA_VALID_W2;
output [1:0]   DFI_RDDATA_VALID_W3;
output [31:0]  DFI_RDDATA_W0;
output [31:0]  DFI_RDDATA_W1;
output [31:0]  DFI_RDDATA_W2;
output [31:0]  DFI_RDDATA_W3;
output [1:0]   DFI_RDLVL_RESP;
output         DFI_TRAINING_COMPLETE;
output [1:0]   DFI_WRLVL_RESP;
output [1:0]   DM;
output [3:0]   ITER_COUNT;
output [0:0]   LOADPHS_B;
output         ODT;
output [7:0]   PRDATA;
output         PREADY;
output         RAS_N;
output         RESET_N;
output         SHIELD0;
output         SHIELD1;
output         SYNC_SYS_RST_N;
output [0:0]   VCO_PHSEL_BCLK90_SEL;
output [0:0]   VCO_PHSEL_BCLK_SEL;
output         VCO_PHSEL_REFCLK_SEL;
output [0:0]   VCO_PHSEL_ROTATE;
output         WE_N;
//--------------------------------------------------------------------
// Inout
//--------------------------------------------------------------------
inout  [15:0]  DQ;
inout  [1:0]   DQS;
inout  [1:0]   DQS_N;
//--------------------------------------------------------------------
// Nets
//--------------------------------------------------------------------
wire   [0:0]     A_net_0;
wire   [1:1]     A_0;
wire   [2:2]     A_1;
wire   [3:3]     A_2;
wire   [4:4]     A_3;
wire   [5:5]     A_4;
wire   [6:6]     A_5;
wire   [7:7]     A_6;
wire   [8:8]     A_7;
wire   [9:9]     A_8;
wire   [10:10]   A_9;
wire   [11:11]   A_10;
wire             A_11;
wire   [0:0]     A_12;
wire   [0:0]     A_13;
wire   [0:0]     A_14;
wire   [2:0]     ADDR_VCOPHS_OFFSET;
wire   [9:0]     ADDR_WAIT_COUNT;
wire   [15:0]    PADDR;
wire             PENABLE;
wire   [7:0]     APB_DEBUG_PRDATA;
wire             APB_DEBUG_PREADY;
wire             PSEL;
wire   [7:0]     PWDATA;
wire             PWRITE;
wire   [2:0]     BA_net_0;
wire   [2:0]     BCLK_VCOPHS_OFFSET;
wire             CAL_L_BUSY;
wire             CAL_L_D_REQ;
wire   [127:0]   CAL_L_DATAIN_net_0;
wire   [127:0]   CAL_L_DATAOUT;
wire   [15:0]    CAL_L_DM_IN_net_0;
wire             CAL_L_R_REQ_net_0;
wire             CAL_L_R_VALID;
wire             CAL_L_W_REQ_net_0;
wire             CAL_SELECT_net_0;
wire   [0:0]     CAS_N_net_0;
wire             CK0_net_0;
wire             CK0_N_net_0;
wire   [0:0]     CKE_net_0;
wire             CLKINT_CMD_Y;
wire             CODE_UPDATE_net_0;
wire   [0:0]     CS_N_net_0;
wire             CTRLR_READY_IN;
wire             CTRLR_READY_OUT_net_0;
wire   [0:0]     DFI_ADDRESS_P0_slice_0;
wire   [1:1]     DFI_ADDRESS_P0_slice_1;
wire   [2:2]     DFI_ADDRESS_P0_slice_2;
wire   [3:3]     DFI_ADDRESS_P0_slice_3;
wire   [4:4]     DFI_ADDRESS_P0_slice_4;
wire   [5:5]     DFI_ADDRESS_P0_slice_5;
wire   [6:6]     DFI_ADDRESS_P0_slice_6;
wire   [7:7]     DFI_ADDRESS_P0_slice_7;
wire   [8:8]     DFI_ADDRESS_P0_slice_8;
wire   [9:9]     DFI_ADDRESS_P0_slice_9;
wire   [10:10]   DFI_ADDRESS_P0_slice_10;
wire   [11:11]   DFI_ADDRESS_P0_slice_11;
wire   [12:12]   DFI_ADDRESS_P0_slice_12;
wire   [13:13]   DFI_ADDRESS_P0_slice_13;
wire   [14:14]   DFI_ADDRESS_P0_slice_14;
wire   [15:15]   DFI_ADDRESS_P0_slice_15;
wire   [0:0]     DFI_ADDRESS_P1_slice_0;
wire   [1:1]     DFI_ADDRESS_P1_slice_1;
wire   [2:2]     DFI_ADDRESS_P1_slice_2;
wire   [3:3]     DFI_ADDRESS_P1_slice_3;
wire   [4:4]     DFI_ADDRESS_P1_slice_4;
wire   [5:5]     DFI_ADDRESS_P1_slice_5;
wire   [6:6]     DFI_ADDRESS_P1_slice_6;
wire   [7:7]     DFI_ADDRESS_P1_slice_7;
wire   [8:8]     DFI_ADDRESS_P1_slice_8;
wire   [9:9]     DFI_ADDRESS_P1_slice_9;
wire   [10:10]   DFI_ADDRESS_P1_slice_10;
wire   [11:11]   DFI_ADDRESS_P1_slice_11;
wire   [12:12]   DFI_ADDRESS_P1_slice_12;
wire   [13:13]   DFI_ADDRESS_P1_slice_13;
wire   [14:14]   DFI_ADDRESS_P1_slice_14;
wire   [15:15]   DFI_ADDRESS_P1_slice_15;
wire   [0:0]     DFI_ADDRESS_P2_slice_0;
wire   [1:1]     DFI_ADDRESS_P2_slice_1;
wire   [2:2]     DFI_ADDRESS_P2_slice_2;
wire   [3:3]     DFI_ADDRESS_P2_slice_3;
wire   [4:4]     DFI_ADDRESS_P2_slice_4;
wire   [5:5]     DFI_ADDRESS_P2_slice_5;
wire   [6:6]     DFI_ADDRESS_P2_slice_6;
wire   [7:7]     DFI_ADDRESS_P2_slice_7;
wire   [8:8]     DFI_ADDRESS_P2_slice_8;
wire   [9:9]     DFI_ADDRESS_P2_slice_9;
wire   [10:10]   DFI_ADDRESS_P2_slice_10;
wire   [11:11]   DFI_ADDRESS_P2_slice_11;
wire   [12:12]   DFI_ADDRESS_P2_slice_12;
wire   [13:13]   DFI_ADDRESS_P2_slice_13;
wire   [14:14]   DFI_ADDRESS_P2_slice_14;
wire   [15:15]   DFI_ADDRESS_P2_slice_15;
wire   [0:0]     DFI_ADDRESS_P3_slice_0;
wire   [1:1]     DFI_ADDRESS_P3_slice_1;
wire   [2:2]     DFI_ADDRESS_P3_slice_2;
wire   [3:3]     DFI_ADDRESS_P3_slice_3;
wire   [4:4]     DFI_ADDRESS_P3_slice_4;
wire   [5:5]     DFI_ADDRESS_P3_slice_5;
wire   [6:6]     DFI_ADDRESS_P3_slice_6;
wire   [7:7]     DFI_ADDRESS_P3_slice_7;
wire   [8:8]     DFI_ADDRESS_P3_slice_8;
wire   [9:9]     DFI_ADDRESS_P3_slice_9;
wire   [10:10]   DFI_ADDRESS_P3_slice_10;
wire   [11:11]   DFI_ADDRESS_P3_slice_11;
wire   [12:12]   DFI_ADDRESS_P3_slice_12;
wire   [13:13]   DFI_ADDRESS_P3_slice_13;
wire   [14:14]   DFI_ADDRESS_P3_slice_14;
wire   [15:15]   DFI_ADDRESS_P3_slice_15;
wire   [0:0]     DFI_BANK_P0_slice_0;
wire   [1:1]     DFI_BANK_P0_slice_1;
wire   [2:2]     DFI_BANK_P0_slice_2;
wire   [0:0]     DFI_BANK_P1_slice_0;
wire   [1:1]     DFI_BANK_P1_slice_1;
wire   [2:2]     DFI_BANK_P1_slice_2;
wire   [0:0]     DFI_BANK_P2_slice_0;
wire   [1:1]     DFI_BANK_P2_slice_1;
wire   [2:2]     DFI_BANK_P2_slice_2;
wire   [0:0]     DFI_BANK_P3_slice_0;
wire   [1:1]     DFI_BANK_P3_slice_1;
wire   [2:2]     DFI_BANK_P3_slice_2;
wire             DFI_CAS_N_P0;
wire             DFI_CAS_N_P1;
wire             DFI_CAS_N_P2;
wire             DFI_CAS_N_P3;
wire   [0:0]     DFI_CKE_P0;
wire   [0:0]     DFI_CKE_P1;
wire   [0:0]     DFI_CKE_P2;
wire   [0:0]     DFI_CKE_P3;
wire   [0:0]     DFI_CS_N_P0;
wire   [0:0]     DFI_CS_N_P1;
wire   [0:0]     DFI_CS_N_P2;
wire   [0:0]     DFI_CS_N_P3;
wire             DFI_CTRLUPD_REQ;
wire             DFI_INIT_COMPLETE_net_0;
wire             DFI_INIT_START;
wire   [0:0]     DFI_ODT_P0;
wire   [0:0]     DFI_ODT_P1;
wire   [0:0]     DFI_ODT_P2;
wire   [0:0]     DFI_ODT_P3;
wire             DFI_RAS_N_P0;
wire             DFI_RAS_N_P1;
wire             DFI_RAS_N_P2;
wire             DFI_RAS_N_P3;
wire   [0:0]     DFI_RDDATA_CS_N_P0;
wire   [0:0]     DFI_RDDATA_CS_N_P1;
wire   [0:0]     DFI_RDDATA_CS_N_P2;
wire   [0:0]     DFI_RDDATA_CS_N_P3;
wire   [0:0]     DFI_RDDATA_EN_P0_slice_0;
wire   [0:0]     DFI_RDDATA_EN_P1_slice_0;
wire   [0:0]     DFI_RDDATA_EN_P2_slice_0;
wire   [0:0]     DFI_RDDATA_EN_P3_slice_0;
wire             DFI_RDDATA_VALID_W0_net_0;
wire             DFI_RDDATA_VALID_W1_net_0;
wire             DFI_RDDATA_VALID_W2_net_0;
wire             DFI_RDDATA_VALID_W3_net_0;
wire   [31:0]    DFI_RDDATA_W0_net_0;
wire   [31:0]    DFI_RDDATA_W1_net_0;
wire   [31:0]    DFI_RDDATA_W2_net_0;
wire   [31:0]    DFI_RDDATA_W3_net_0;
wire   [0:0]     DFI_RDLVL_CS_N;
wire             DFI_RDLVL_EN;
wire             DFI_RDLVL_GATE_EN;
wire   [1:0]     DFI_RDLVL_RESP_net_0;
wire             DFI_RESET_N_P0;
wire             DFI_RESET_N_P1;
wire             DFI_RESET_N_P2;
wire             DFI_RESET_N_P3;
wire             DFI_TRAINING_COMPLETE_net_0;
wire             DFI_WE_N_P0;
wire             DFI_WE_N_P1;
wire             DFI_WE_N_P2;
wire             DFI_WE_N_P3;
wire   [0:0]     DFI_WRDATA_CS_N_P0;
wire   [0:0]     DFI_WRDATA_CS_N_P1;
wire   [0:0]     DFI_WRDATA_CS_N_P2;
wire   [0:0]     DFI_WRDATA_CS_N_P3;
wire   [0:0]     DFI_WRDATA_EN_P0_slice_0;
wire   [0:0]     DFI_WRDATA_EN_P1_slice_0;
wire   [0:0]     DFI_WRDATA_EN_P2_slice_0;
wire   [0:0]     DFI_WRDATA_EN_P3_slice_0;
wire   [0:0]     DFI_WRDATA_MASK_P0_slice_0;
wire   [2:2]     DFI_WRDATA_MASK_P0_slice_1;
wire   [1:1]     DFI_WRDATA_MASK_P0_slice_2;
wire   [3:3]     DFI_WRDATA_MASK_P0_slice_3;
wire   [0:0]     DFI_WRDATA_MASK_P1_slice_0;
wire   [2:2]     DFI_WRDATA_MASK_P1_slice_1;
wire   [1:1]     DFI_WRDATA_MASK_P1_slice_2;
wire   [3:3]     DFI_WRDATA_MASK_P1_slice_3;
wire   [0:0]     DFI_WRDATA_MASK_P2_slice_0;
wire   [2:2]     DFI_WRDATA_MASK_P2_slice_1;
wire   [1:1]     DFI_WRDATA_MASK_P2_slice_2;
wire   [3:3]     DFI_WRDATA_MASK_P2_slice_3;
wire   [0:0]     DFI_WRDATA_MASK_P3_slice_0;
wire   [2:2]     DFI_WRDATA_MASK_P3_slice_1;
wire   [1:1]     DFI_WRDATA_MASK_P3_slice_2;
wire   [3:3]     DFI_WRDATA_MASK_P3_slice_3;
wire   [0:0]     DFI_WRDATA_P0_slice_0;
wire   [16:16]   DFI_WRDATA_P0_slice_1;
wire   [1:1]     DFI_WRDATA_P0_slice_2;
wire   [17:17]   DFI_WRDATA_P0_slice_3;
wire   [2:2]     DFI_WRDATA_P0_slice_4;
wire   [18:18]   DFI_WRDATA_P0_slice_5;
wire   [3:3]     DFI_WRDATA_P0_slice_6;
wire   [19:19]   DFI_WRDATA_P0_slice_7;
wire   [4:4]     DFI_WRDATA_P0_slice_8;
wire   [20:20]   DFI_WRDATA_P0_slice_9;
wire   [5:5]     DFI_WRDATA_P0_slice_10;
wire   [21:21]   DFI_WRDATA_P0_slice_11;
wire   [6:6]     DFI_WRDATA_P0_slice_12;
wire   [22:22]   DFI_WRDATA_P0_slice_13;
wire   [7:7]     DFI_WRDATA_P0_slice_14;
wire   [23:23]   DFI_WRDATA_P0_slice_15;
wire   [8:8]     DFI_WRDATA_P0_slice_16;
wire   [24:24]   DFI_WRDATA_P0_slice_17;
wire   [9:9]     DFI_WRDATA_P0_slice_18;
wire   [25:25]   DFI_WRDATA_P0_slice_19;
wire   [10:10]   DFI_WRDATA_P0_slice_20;
wire   [26:26]   DFI_WRDATA_P0_slice_21;
wire   [11:11]   DFI_WRDATA_P0_slice_22;
wire   [27:27]   DFI_WRDATA_P0_slice_23;
wire   [12:12]   DFI_WRDATA_P0_slice_24;
wire   [28:28]   DFI_WRDATA_P0_slice_25;
wire   [13:13]   DFI_WRDATA_P0_slice_26;
wire   [29:29]   DFI_WRDATA_P0_slice_27;
wire   [14:14]   DFI_WRDATA_P0_slice_28;
wire   [30:30]   DFI_WRDATA_P0_slice_29;
wire   [15:15]   DFI_WRDATA_P0_slice_30;
wire   [31:31]   DFI_WRDATA_P0_slice_31;
wire   [0:0]     DFI_WRDATA_P1_slice_0;
wire   [16:16]   DFI_WRDATA_P1_slice_1;
wire   [1:1]     DFI_WRDATA_P1_slice_2;
wire   [17:17]   DFI_WRDATA_P1_slice_3;
wire   [2:2]     DFI_WRDATA_P1_slice_4;
wire   [18:18]   DFI_WRDATA_P1_slice_5;
wire   [3:3]     DFI_WRDATA_P1_slice_6;
wire   [19:19]   DFI_WRDATA_P1_slice_7;
wire   [4:4]     DFI_WRDATA_P1_slice_8;
wire   [20:20]   DFI_WRDATA_P1_slice_9;
wire   [5:5]     DFI_WRDATA_P1_slice_10;
wire   [21:21]   DFI_WRDATA_P1_slice_11;
wire   [6:6]     DFI_WRDATA_P1_slice_12;
wire   [22:22]   DFI_WRDATA_P1_slice_13;
wire   [7:7]     DFI_WRDATA_P1_slice_14;
wire   [23:23]   DFI_WRDATA_P1_slice_15;
wire   [8:8]     DFI_WRDATA_P1_slice_16;
wire   [24:24]   DFI_WRDATA_P1_slice_17;
wire   [9:9]     DFI_WRDATA_P1_slice_18;
wire   [25:25]   DFI_WRDATA_P1_slice_19;
wire   [10:10]   DFI_WRDATA_P1_slice_20;
wire   [26:26]   DFI_WRDATA_P1_slice_21;
wire   [11:11]   DFI_WRDATA_P1_slice_22;
wire   [27:27]   DFI_WRDATA_P1_slice_23;
wire   [12:12]   DFI_WRDATA_P1_slice_24;
wire   [28:28]   DFI_WRDATA_P1_slice_25;
wire   [13:13]   DFI_WRDATA_P1_slice_26;
wire   [29:29]   DFI_WRDATA_P1_slice_27;
wire   [14:14]   DFI_WRDATA_P1_slice_28;
wire   [30:30]   DFI_WRDATA_P1_slice_29;
wire   [15:15]   DFI_WRDATA_P1_slice_30;
wire   [31:31]   DFI_WRDATA_P1_slice_31;
wire   [0:0]     DFI_WRDATA_P2_slice_0;
wire   [16:16]   DFI_WRDATA_P2_slice_1;
wire   [1:1]     DFI_WRDATA_P2_slice_2;
wire   [17:17]   DFI_WRDATA_P2_slice_3;
wire   [2:2]     DFI_WRDATA_P2_slice_4;
wire   [18:18]   DFI_WRDATA_P2_slice_5;
wire   [3:3]     DFI_WRDATA_P2_slice_6;
wire   [19:19]   DFI_WRDATA_P2_slice_7;
wire   [4:4]     DFI_WRDATA_P2_slice_8;
wire   [20:20]   DFI_WRDATA_P2_slice_9;
wire   [5:5]     DFI_WRDATA_P2_slice_10;
wire   [21:21]   DFI_WRDATA_P2_slice_11;
wire   [6:6]     DFI_WRDATA_P2_slice_12;
wire   [22:22]   DFI_WRDATA_P2_slice_13;
wire   [7:7]     DFI_WRDATA_P2_slice_14;
wire   [23:23]   DFI_WRDATA_P2_slice_15;
wire   [8:8]     DFI_WRDATA_P2_slice_16;
wire   [24:24]   DFI_WRDATA_P2_slice_17;
wire   [9:9]     DFI_WRDATA_P2_slice_18;
wire   [25:25]   DFI_WRDATA_P2_slice_19;
wire   [10:10]   DFI_WRDATA_P2_slice_20;
wire   [26:26]   DFI_WRDATA_P2_slice_21;
wire   [11:11]   DFI_WRDATA_P2_slice_22;
wire   [27:27]   DFI_WRDATA_P2_slice_23;
wire   [12:12]   DFI_WRDATA_P2_slice_24;
wire   [28:28]   DFI_WRDATA_P2_slice_25;
wire   [13:13]   DFI_WRDATA_P2_slice_26;
wire   [29:29]   DFI_WRDATA_P2_slice_27;
wire   [14:14]   DFI_WRDATA_P2_slice_28;
wire   [30:30]   DFI_WRDATA_P2_slice_29;
wire   [15:15]   DFI_WRDATA_P2_slice_30;
wire   [31:31]   DFI_WRDATA_P2_slice_31;
wire   [0:0]     DFI_WRDATA_P3_slice_0;
wire   [16:16]   DFI_WRDATA_P3_slice_1;
wire   [1:1]     DFI_WRDATA_P3_slice_2;
wire   [17:17]   DFI_WRDATA_P3_slice_3;
wire   [2:2]     DFI_WRDATA_P3_slice_4;
wire   [18:18]   DFI_WRDATA_P3_slice_5;
wire   [3:3]     DFI_WRDATA_P3_slice_6;
wire   [19:19]   DFI_WRDATA_P3_slice_7;
wire   [4:4]     DFI_WRDATA_P3_slice_8;
wire   [20:20]   DFI_WRDATA_P3_slice_9;
wire   [5:5]     DFI_WRDATA_P3_slice_10;
wire   [21:21]   DFI_WRDATA_P3_slice_11;
wire   [6:6]     DFI_WRDATA_P3_slice_12;
wire   [22:22]   DFI_WRDATA_P3_slice_13;
wire   [7:7]     DFI_WRDATA_P3_slice_14;
wire   [23:23]   DFI_WRDATA_P3_slice_15;
wire   [8:8]     DFI_WRDATA_P3_slice_16;
wire   [24:24]   DFI_WRDATA_P3_slice_17;
wire   [9:9]     DFI_WRDATA_P3_slice_18;
wire   [25:25]   DFI_WRDATA_P3_slice_19;
wire   [10:10]   DFI_WRDATA_P3_slice_20;
wire   [26:26]   DFI_WRDATA_P3_slice_21;
wire   [11:11]   DFI_WRDATA_P3_slice_22;
wire   [27:27]   DFI_WRDATA_P3_slice_23;
wire   [12:12]   DFI_WRDATA_P3_slice_24;
wire   [28:28]   DFI_WRDATA_P3_slice_25;
wire   [13:13]   DFI_WRDATA_P3_slice_26;
wire   [29:29]   DFI_WRDATA_P3_slice_27;
wire   [14:14]   DFI_WRDATA_P3_slice_28;
wire   [30:30]   DFI_WRDATA_P3_slice_29;
wire   [15:15]   DFI_WRDATA_P3_slice_30;
wire   [31:31]   DFI_WRDATA_P3_slice_31;
wire   [0:0]     DFI_WRLVL_CS_N;
wire             DFI_WRLVL_EN;
wire   [1:0]     DFI_WRLVL_RESP_net_0;
wire             DFI_WRLVL_STROBE;
wire             DFN1_CMD_Q;
wire   [7:0]     DLL_CODE;
wire             DLL_DLY_DIFF;
wire   [0:0]     DM_net_0;
wire   [0:0]     DM_0;
wire             HS_IO_CLK;
wire             HS_IO_CLK_270;
wire             IOD_A_12_EYE_MONITOR_EARLY_0;
wire             IOD_A_12_EYE_MONITOR_LATE_0;
wire   [3:3]     IOD_A_12_RX_DATA_03to3;
wire             IOD_A_12_TX_0;
wire             IOD_BCLK_TRAINING_EYE_MONITOR_EARLY_0;
wire             IOD_BCLK_TRAINING_EYE_MONITOR_LATE_0;
wire   [0:0]     IOD_BCLK_TRAINING_RX_DATA_00to0;
wire   [2:2]     IOD_BCLK_TRAINING_RX_DATA_02to2;
wire   [4:4]     IOD_BCLK_TRAINING_RX_DATA_04to4;
wire   [6:6]     IOD_BCLK_TRAINING_RX_DATA_06to6;
wire             IOD_REF_CLK_TRAINING_EYE_MONITOR_EARLY_0;
wire             IOD_REF_CLK_TRAINING_EYE_MONITOR_LATE_0;
wire   [6:6]     IOD_REF_CLK_TRAINING_RX_DATA_06to6;
wire   [0:0]     IOD_TRAINING_0_BCLK_EYE_MONITOR_CLR_FLAGS;
wire   [0:0]     IOD_TRAINING_0_CLK_SEL0to0;
wire   [1:1]     IOD_TRAINING_0_CLK_SEL1to1;
wire   [2:2]     IOD_TRAINING_0_CLK_SEL2to2;
wire   [3:3]     IOD_TRAINING_0_CLK_SEL3to3;
wire   [4:4]     IOD_TRAINING_0_CLK_SEL4to4;
wire   [5:5]     IOD_TRAINING_0_CLK_SEL5to5;
wire             IOD_TRAINING_0_CMD_DELAY_LINE_DIRECTION;
wire             IOD_TRAINING_0_CMD_DELAY_LINE_LOAD;
wire             IOD_TRAINING_0_CMD_DELAY_LINE_MOVE;
wire             IOD_TRAINING_0_CMD_DELAY_LINE_MOVE_TRN;
wire             IOD_TRAINING_0_CMD_EYE_MONITOR_CLR_FLAGS;
wire             IOD_TRAINING_0_CMD_OE;
wire             IOD_TRAINING_0_CMD_RESET_LANE;
wire   [0:0]     IOD_TRAINING_0_DELAY_LINE_SEL_RD0to0;
wire   [1:1]     IOD_TRAINING_0_DELAY_LINE_SEL_RD1to1;
wire   [0:0]     IOD_TRAINING_0_DFI_BANK_P0_OUT0to0;
wire   [1:1]     IOD_TRAINING_0_DFI_BANK_P0_OUT1to1;
wire   [2:2]     IOD_TRAINING_0_DFI_BANK_P0_OUT2to2;
wire   [0:0]     IOD_TRAINING_0_DFI_BANK_P1_OUT0to0;
wire   [1:1]     IOD_TRAINING_0_DFI_BANK_P1_OUT1to1;
wire   [2:2]     IOD_TRAINING_0_DFI_BANK_P1_OUT2to2;
wire   [0:0]     IOD_TRAINING_0_DFI_BANK_P2_OUT0to0;
wire   [1:1]     IOD_TRAINING_0_DFI_BANK_P2_OUT1to1;
wire   [2:2]     IOD_TRAINING_0_DFI_BANK_P2_OUT2to2;
wire   [0:0]     IOD_TRAINING_0_DFI_BANK_P3_OUT0to0;
wire   [1:1]     IOD_TRAINING_0_DFI_BANK_P3_OUT1to1;
wire   [2:2]     IOD_TRAINING_0_DFI_BANK_P3_OUT2to2;
wire             IOD_TRAINING_0_DFI_CAS_N_P0_OUT;
wire             IOD_TRAINING_0_DFI_CAS_N_P1_OUT;
wire             IOD_TRAINING_0_DFI_CAS_N_P2_OUT;
wire             IOD_TRAINING_0_DFI_CAS_N_P3_OUT;
wire             IOD_TRAINING_0_DFI_CKE_P0_OUT;
wire             IOD_TRAINING_0_DFI_CKE_P1_OUT;
wire             IOD_TRAINING_0_DFI_CKE_P2_OUT;
wire             IOD_TRAINING_0_DFI_CKE_P3_OUT;
wire             IOD_TRAINING_0_DFI_CS_N_P0_OUT;
wire             IOD_TRAINING_0_DFI_CS_N_P1_OUT;
wire             IOD_TRAINING_0_DFI_CS_N_P2_OUT;
wire             IOD_TRAINING_0_DFI_CS_N_P3_OUT;
wire             IOD_TRAINING_0_DFI_ODT_P0_OUT;
wire             IOD_TRAINING_0_DFI_ODT_P1_OUT;
wire             IOD_TRAINING_0_DFI_ODT_P2_OUT;
wire             IOD_TRAINING_0_DFI_ODT_P3_OUT;
wire             IOD_TRAINING_0_DFI_RAS_N_P0_OUT;
wire             IOD_TRAINING_0_DFI_RAS_N_P1_OUT;
wire             IOD_TRAINING_0_DFI_RAS_N_P2_OUT;
wire             IOD_TRAINING_0_DFI_RAS_N_P3_OUT;
wire             IOD_TRAINING_0_DFI_RESET_N_P0_OUT;
wire             IOD_TRAINING_0_DFI_RESET_N_P1_OUT;
wire             IOD_TRAINING_0_DFI_RESET_N_P2_OUT;
wire             IOD_TRAINING_0_DFI_RESET_N_P3_OUT;
wire             IOD_TRAINING_0_DFI_WE_N_P0_OUT;
wire             IOD_TRAINING_0_DFI_WE_N_P1_OUT;
wire             IOD_TRAINING_0_DFI_WE_N_P2_OUT;
wire             IOD_TRAINING_0_DFI_WE_N_P3_OUT;
wire   [0:0]     IOD_TRAINING_0_DIRECTION0to0;
wire   [1:1]     IOD_TRAINING_0_DIRECTION1to1;
wire   [2:2]     IOD_TRAINING_0_DIRECTION2to2;
wire   [3:3]     IOD_TRAINING_0_DIRECTION3to3;
wire   [4:4]     IOD_TRAINING_0_DIRECTION4to4;
wire   [5:5]     IOD_TRAINING_0_DIRECTION5to5;
wire   [6:6]     IOD_TRAINING_0_DIRECTION6to6;
wire   [7:7]     IOD_TRAINING_0_DIRECTION7to7;
wire   [8:8]     IOD_TRAINING_0_DIRECTION8to8;
wire   [9:9]     IOD_TRAINING_0_DIRECTION9to9;
wire   [10:10]   IOD_TRAINING_0_DIRECTION10to10;
wire   [11:11]   IOD_TRAINING_0_DIRECTION11to11;
wire   [12:12]   IOD_TRAINING_0_DIRECTION12to12;
wire   [13:13]   IOD_TRAINING_0_DIRECTION13to13;
wire   [14:14]   IOD_TRAINING_0_DIRECTION14to14;
wire   [15:15]   IOD_TRAINING_0_DIRECTION15to15;
wire   [16:16]   IOD_TRAINING_0_DIRECTION16to16;
wire   [17:17]   IOD_TRAINING_0_DIRECTION17to17;
wire   [0:0]     IOD_TRAINING_0_DM_OE_P00to0;
wire   [1:1]     IOD_TRAINING_0_DM_OE_P01to1;
wire   [0:0]     IOD_TRAINING_0_DM_OE_P10to0;
wire   [1:1]     IOD_TRAINING_0_DM_OE_P11to1;
wire   [0:0]     IOD_TRAINING_0_DM_OE_P20to0;
wire   [1:1]     IOD_TRAINING_0_DM_OE_P21to1;
wire   [0:0]     IOD_TRAINING_0_DM_OE_P30to0;
wire   [1:1]     IOD_TRAINING_0_DM_OE_P31to1;
wire   [0:0]     IOD_TRAINING_0_DQS_OE_P00to0;
wire   [1:1]     IOD_TRAINING_0_DQS_OE_P01to1;
wire   [0:0]     IOD_TRAINING_0_DQS_OE_P10to0;
wire   [1:1]     IOD_TRAINING_0_DQS_OE_P11to1;
wire   [0:0]     IOD_TRAINING_0_DQS_OE_P20to0;
wire   [1:1]     IOD_TRAINING_0_DQS_OE_P21to1;
wire   [0:0]     IOD_TRAINING_0_DQS_OE_P30to0;
wire   [1:1]     IOD_TRAINING_0_DQS_OE_P31to1;
wire   [0:0]     IOD_TRAINING_0_DQSW270_DELAY_LINE_DIRECTION0to0;
wire   [1:1]     IOD_TRAINING_0_DQSW270_DELAY_LINE_DIRECTION1to1;
wire   [0:0]     IOD_TRAINING_0_DQSW270_DELAY_LINE_LOAD0to0;
wire   [1:1]     IOD_TRAINING_0_DQSW270_DELAY_LINE_LOAD1to1;
wire   [0:0]     IOD_TRAINING_0_DQSW270_DELAY_LINE_MOVE0to0;
wire   [1:1]     IOD_TRAINING_0_DQSW270_DELAY_LINE_MOVE1to1;
wire   [0:0]     IOD_TRAINING_0_DQSW270_EYE_MONITOR_CLR_FLAGS0to0;
wire   [1:1]     IOD_TRAINING_0_DQSW270_EYE_MONITOR_CLR_FLAGS1to1;
wire   [0:0]     IOD_TRAINING_0_DQSW_DELAY_LINE_DIRECTION0to0;
wire   [1:1]     IOD_TRAINING_0_DQSW_DELAY_LINE_DIRECTION1to1;
wire   [0:0]     IOD_TRAINING_0_DQSW_DELAY_LINE_LOAD0to0;
wire   [1:1]     IOD_TRAINING_0_DQSW_DELAY_LINE_LOAD1to1;
wire   [0:0]     IOD_TRAINING_0_DQSW_DELAY_LINE_MOVE0to0;
wire   [1:1]     IOD_TRAINING_0_DQSW_DELAY_LINE_MOVE1to1;
wire   [0:0]     IOD_TRAINING_0_DQSW_EYE_MONITOR_CLR_FLAGS0to0;
wire   [1:1]     IOD_TRAINING_0_DQSW_EYE_MONITOR_CLR_FLAGS1to1;
wire   [7:0]     IOD_TRAINING_0_DQSW_SELA7to0;
wire   [15:8]    IOD_TRAINING_0_DQSW_SELA15to8;
wire   [0:0]     IOD_TRAINING_0_INIT_PAUSE0to0;
wire   [1:1]     IOD_TRAINING_0_INIT_PAUSE1to1;
wire   [0:0]     IOD_TRAINING_0_IOG_ADDRESS_P00to0;
wire   [1:1]     IOD_TRAINING_0_IOG_ADDRESS_P01to1;
wire   [2:2]     IOD_TRAINING_0_IOG_ADDRESS_P02to2;
wire   [3:3]     IOD_TRAINING_0_IOG_ADDRESS_P03to3;
wire   [4:4]     IOD_TRAINING_0_IOG_ADDRESS_P04to4;
wire   [5:5]     IOD_TRAINING_0_IOG_ADDRESS_P05to5;
wire   [6:6]     IOD_TRAINING_0_IOG_ADDRESS_P06to6;
wire   [7:7]     IOD_TRAINING_0_IOG_ADDRESS_P07to7;
wire   [8:8]     IOD_TRAINING_0_IOG_ADDRESS_P08to8;
wire   [9:9]     IOD_TRAINING_0_IOG_ADDRESS_P09to9;
wire   [0:0]     IOD_TRAINING_0_IOG_ADDRESS_P10to0;
wire   [10:10]   IOD_TRAINING_0_IOG_ADDRESS_P010to10;
wire   [1:1]     IOD_TRAINING_0_IOG_ADDRESS_P11to1;
wire   [11:11]   IOD_TRAINING_0_IOG_ADDRESS_P011to11;
wire   [2:2]     IOD_TRAINING_0_IOG_ADDRESS_P12to2;
wire   [12:12]   IOD_TRAINING_0_IOG_ADDRESS_P012to12;
wire   [3:3]     IOD_TRAINING_0_IOG_ADDRESS_P13to3;
wire   [13:13]   IOD_TRAINING_0_IOG_ADDRESS_P013to13;
wire   [4:4]     IOD_TRAINING_0_IOG_ADDRESS_P14to4;
wire   [14:14]   IOD_TRAINING_0_IOG_ADDRESS_P014to14;
wire   [5:5]     IOD_TRAINING_0_IOG_ADDRESS_P15to5;
wire   [15:15]   IOD_TRAINING_0_IOG_ADDRESS_P015to15;
wire   [6:6]     IOD_TRAINING_0_IOG_ADDRESS_P16to6;
wire   [7:7]     IOD_TRAINING_0_IOG_ADDRESS_P17to7;
wire   [8:8]     IOD_TRAINING_0_IOG_ADDRESS_P18to8;
wire   [9:9]     IOD_TRAINING_0_IOG_ADDRESS_P19to9;
wire   [0:0]     IOD_TRAINING_0_IOG_ADDRESS_P20to0;
wire   [1:1]     IOD_TRAINING_0_IOG_ADDRESS_P21to1;
wire   [2:2]     IOD_TRAINING_0_IOG_ADDRESS_P22to2;
wire   [3:3]     IOD_TRAINING_0_IOG_ADDRESS_P23to3;
wire   [4:4]     IOD_TRAINING_0_IOG_ADDRESS_P24to4;
wire   [5:5]     IOD_TRAINING_0_IOG_ADDRESS_P25to5;
wire   [6:6]     IOD_TRAINING_0_IOG_ADDRESS_P26to6;
wire   [7:7]     IOD_TRAINING_0_IOG_ADDRESS_P27to7;
wire   [8:8]     IOD_TRAINING_0_IOG_ADDRESS_P28to8;
wire   [9:9]     IOD_TRAINING_0_IOG_ADDRESS_P29to9;
wire   [0:0]     IOD_TRAINING_0_IOG_ADDRESS_P30to0;
wire   [1:1]     IOD_TRAINING_0_IOG_ADDRESS_P31to1;
wire   [2:2]     IOD_TRAINING_0_IOG_ADDRESS_P32to2;
wire   [3:3]     IOD_TRAINING_0_IOG_ADDRESS_P33to3;
wire   [4:4]     IOD_TRAINING_0_IOG_ADDRESS_P34to4;
wire   [5:5]     IOD_TRAINING_0_IOG_ADDRESS_P35to5;
wire   [6:6]     IOD_TRAINING_0_IOG_ADDRESS_P36to6;
wire   [7:7]     IOD_TRAINING_0_IOG_ADDRESS_P37to7;
wire   [8:8]     IOD_TRAINING_0_IOG_ADDRESS_P38to8;
wire   [9:9]     IOD_TRAINING_0_IOG_ADDRESS_P39to9;
wire   [10:10]   IOD_TRAINING_0_IOG_ADDRESS_P110to10;
wire   [11:11]   IOD_TRAINING_0_IOG_ADDRESS_P111to11;
wire   [12:12]   IOD_TRAINING_0_IOG_ADDRESS_P112to12;
wire   [13:13]   IOD_TRAINING_0_IOG_ADDRESS_P113to13;
wire   [14:14]   IOD_TRAINING_0_IOG_ADDRESS_P114to14;
wire   [15:15]   IOD_TRAINING_0_IOG_ADDRESS_P115to15;
wire   [10:10]   IOD_TRAINING_0_IOG_ADDRESS_P210to10;
wire   [11:11]   IOD_TRAINING_0_IOG_ADDRESS_P211to11;
wire   [12:12]   IOD_TRAINING_0_IOG_ADDRESS_P212to12;
wire   [13:13]   IOD_TRAINING_0_IOG_ADDRESS_P213to13;
wire   [14:14]   IOD_TRAINING_0_IOG_ADDRESS_P214to14;
wire   [15:15]   IOD_TRAINING_0_IOG_ADDRESS_P215to15;
wire   [10:10]   IOD_TRAINING_0_IOG_ADDRESS_P310to10;
wire   [11:11]   IOD_TRAINING_0_IOG_ADDRESS_P311to11;
wire   [12:12]   IOD_TRAINING_0_IOG_ADDRESS_P312to12;
wire   [13:13]   IOD_TRAINING_0_IOG_ADDRESS_P313to13;
wire   [14:14]   IOD_TRAINING_0_IOG_ADDRESS_P314to14;
wire   [15:15]   IOD_TRAINING_0_IOG_ADDRESS_P315to15;
wire   [0:0]     IOD_TRAINING_0_IOG_DM_TXDATA_OUT0to0;
wire   [1:1]     IOD_TRAINING_0_IOG_DM_TXDATA_OUT1to1;
wire   [2:2]     IOD_TRAINING_0_IOG_DM_TXDATA_OUT2to2;
wire   [3:3]     IOD_TRAINING_0_IOG_DM_TXDATA_OUT3to3;
wire   [4:4]     IOD_TRAINING_0_IOG_DM_TXDATA_OUT4to4;
wire   [5:5]     IOD_TRAINING_0_IOG_DM_TXDATA_OUT5to5;
wire   [6:6]     IOD_TRAINING_0_IOG_DM_TXDATA_OUT6to6;
wire   [7:7]     IOD_TRAINING_0_IOG_DM_TXDATA_OUT7to7;
wire   [8:8]     IOD_TRAINING_0_IOG_DM_TXDATA_OUT8to8;
wire   [9:9]     IOD_TRAINING_0_IOG_DM_TXDATA_OUT9to9;
wire   [10:10]   IOD_TRAINING_0_IOG_DM_TXDATA_OUT10to10;
wire   [11:11]   IOD_TRAINING_0_IOG_DM_TXDATA_OUT11to11;
wire   [12:12]   IOD_TRAINING_0_IOG_DM_TXDATA_OUT12to12;
wire   [13:13]   IOD_TRAINING_0_IOG_DM_TXDATA_OUT13to13;
wire   [14:14]   IOD_TRAINING_0_IOG_DM_TXDATA_OUT14to14;
wire   [15:15]   IOD_TRAINING_0_IOG_DM_TXDATA_OUT15to15;
wire   [0:0]     IOD_TRAINING_0_IOG_DQ_TXDATA_OUT0to0;
wire   [1:1]     IOD_TRAINING_0_IOG_DQ_TXDATA_OUT1to1;
wire   [2:2]     IOD_TRAINING_0_IOG_DQ_TXDATA_OUT2to2;
wire   [3:3]     IOD_TRAINING_0_IOG_DQ_TXDATA_OUT3to3;
wire   [4:4]     IOD_TRAINING_0_IOG_DQ_TXDATA_OUT4to4;
wire   [5:5]     IOD_TRAINING_0_IOG_DQ_TXDATA_OUT5to5;
wire   [6:6]     IOD_TRAINING_0_IOG_DQ_TXDATA_OUT6to6;
wire   [7:7]     IOD_TRAINING_0_IOG_DQ_TXDATA_OUT7to7;
wire   [8:8]     IOD_TRAINING_0_IOG_DQ_TXDATA_OUT8to8;
wire   [9:9]     IOD_TRAINING_0_IOG_DQ_TXDATA_OUT9to9;
wire   [10:10]   IOD_TRAINING_0_IOG_DQ_TXDATA_OUT10to10;
wire   [11:11]   IOD_TRAINING_0_IOG_DQ_TXDATA_OUT11to11;
wire   [12:12]   IOD_TRAINING_0_IOG_DQ_TXDATA_OUT12to12;
wire   [13:13]   IOD_TRAINING_0_IOG_DQ_TXDATA_OUT13to13;
wire   [14:14]   IOD_TRAINING_0_IOG_DQ_TXDATA_OUT14to14;
wire   [15:15]   IOD_TRAINING_0_IOG_DQ_TXDATA_OUT15to15;
wire   [16:16]   IOD_TRAINING_0_IOG_DQ_TXDATA_OUT16to16;
wire   [17:17]   IOD_TRAINING_0_IOG_DQ_TXDATA_OUT17to17;
wire   [18:18]   IOD_TRAINING_0_IOG_DQ_TXDATA_OUT18to18;
wire   [19:19]   IOD_TRAINING_0_IOG_DQ_TXDATA_OUT19to19;
wire   [20:20]   IOD_TRAINING_0_IOG_DQ_TXDATA_OUT20to20;
wire   [21:21]   IOD_TRAINING_0_IOG_DQ_TXDATA_OUT21to21;
wire   [22:22]   IOD_TRAINING_0_IOG_DQ_TXDATA_OUT22to22;
wire   [23:23]   IOD_TRAINING_0_IOG_DQ_TXDATA_OUT23to23;
wire   [24:24]   IOD_TRAINING_0_IOG_DQ_TXDATA_OUT24to24;
wire   [25:25]   IOD_TRAINING_0_IOG_DQ_TXDATA_OUT25to25;
wire   [26:26]   IOD_TRAINING_0_IOG_DQ_TXDATA_OUT26to26;
wire   [27:27]   IOD_TRAINING_0_IOG_DQ_TXDATA_OUT27to27;
wire   [28:28]   IOD_TRAINING_0_IOG_DQ_TXDATA_OUT28to28;
wire   [29:29]   IOD_TRAINING_0_IOG_DQ_TXDATA_OUT29to29;
wire   [30:30]   IOD_TRAINING_0_IOG_DQ_TXDATA_OUT30to30;
wire   [31:31]   IOD_TRAINING_0_IOG_DQ_TXDATA_OUT31to31;
wire   [32:32]   IOD_TRAINING_0_IOG_DQ_TXDATA_OUT32to32;
wire   [33:33]   IOD_TRAINING_0_IOG_DQ_TXDATA_OUT33to33;
wire   [34:34]   IOD_TRAINING_0_IOG_DQ_TXDATA_OUT34to34;
wire   [35:35]   IOD_TRAINING_0_IOG_DQ_TXDATA_OUT35to35;
wire   [36:36]   IOD_TRAINING_0_IOG_DQ_TXDATA_OUT36to36;
wire   [37:37]   IOD_TRAINING_0_IOG_DQ_TXDATA_OUT37to37;
wire   [38:38]   IOD_TRAINING_0_IOG_DQ_TXDATA_OUT38to38;
wire   [39:39]   IOD_TRAINING_0_IOG_DQ_TXDATA_OUT39to39;
wire   [40:40]   IOD_TRAINING_0_IOG_DQ_TXDATA_OUT40to40;
wire   [41:41]   IOD_TRAINING_0_IOG_DQ_TXDATA_OUT41to41;
wire   [42:42]   IOD_TRAINING_0_IOG_DQ_TXDATA_OUT42to42;
wire   [43:43]   IOD_TRAINING_0_IOG_DQ_TXDATA_OUT43to43;
wire   [44:44]   IOD_TRAINING_0_IOG_DQ_TXDATA_OUT44to44;
wire   [45:45]   IOD_TRAINING_0_IOG_DQ_TXDATA_OUT45to45;
wire   [46:46]   IOD_TRAINING_0_IOG_DQ_TXDATA_OUT46to46;
wire   [47:47]   IOD_TRAINING_0_IOG_DQ_TXDATA_OUT47to47;
wire   [48:48]   IOD_TRAINING_0_IOG_DQ_TXDATA_OUT48to48;
wire   [49:49]   IOD_TRAINING_0_IOG_DQ_TXDATA_OUT49to49;
wire   [50:50]   IOD_TRAINING_0_IOG_DQ_TXDATA_OUT50to50;
wire   [51:51]   IOD_TRAINING_0_IOG_DQ_TXDATA_OUT51to51;
wire   [52:52]   IOD_TRAINING_0_IOG_DQ_TXDATA_OUT52to52;
wire   [53:53]   IOD_TRAINING_0_IOG_DQ_TXDATA_OUT53to53;
wire   [54:54]   IOD_TRAINING_0_IOG_DQ_TXDATA_OUT54to54;
wire   [55:55]   IOD_TRAINING_0_IOG_DQ_TXDATA_OUT55to55;
wire   [56:56]   IOD_TRAINING_0_IOG_DQ_TXDATA_OUT56to56;
wire   [57:57]   IOD_TRAINING_0_IOG_DQ_TXDATA_OUT57to57;
wire   [58:58]   IOD_TRAINING_0_IOG_DQ_TXDATA_OUT58to58;
wire   [59:59]   IOD_TRAINING_0_IOG_DQ_TXDATA_OUT59to59;
wire   [60:60]   IOD_TRAINING_0_IOG_DQ_TXDATA_OUT60to60;
wire   [61:61]   IOD_TRAINING_0_IOG_DQ_TXDATA_OUT61to61;
wire   [62:62]   IOD_TRAINING_0_IOG_DQ_TXDATA_OUT62to62;
wire   [63:63]   IOD_TRAINING_0_IOG_DQ_TXDATA_OUT63to63;
wire   [64:64]   IOD_TRAINING_0_IOG_DQ_TXDATA_OUT64to64;
wire   [65:65]   IOD_TRAINING_0_IOG_DQ_TXDATA_OUT65to65;
wire   [66:66]   IOD_TRAINING_0_IOG_DQ_TXDATA_OUT66to66;
wire   [67:67]   IOD_TRAINING_0_IOG_DQ_TXDATA_OUT67to67;
wire   [68:68]   IOD_TRAINING_0_IOG_DQ_TXDATA_OUT68to68;
wire   [69:69]   IOD_TRAINING_0_IOG_DQ_TXDATA_OUT69to69;
wire   [70:70]   IOD_TRAINING_0_IOG_DQ_TXDATA_OUT70to70;
wire   [71:71]   IOD_TRAINING_0_IOG_DQ_TXDATA_OUT71to71;
wire   [72:72]   IOD_TRAINING_0_IOG_DQ_TXDATA_OUT72to72;
wire   [73:73]   IOD_TRAINING_0_IOG_DQ_TXDATA_OUT73to73;
wire   [74:74]   IOD_TRAINING_0_IOG_DQ_TXDATA_OUT74to74;
wire   [75:75]   IOD_TRAINING_0_IOG_DQ_TXDATA_OUT75to75;
wire   [76:76]   IOD_TRAINING_0_IOG_DQ_TXDATA_OUT76to76;
wire   [77:77]   IOD_TRAINING_0_IOG_DQ_TXDATA_OUT77to77;
wire   [78:78]   IOD_TRAINING_0_IOG_DQ_TXDATA_OUT78to78;
wire   [79:79]   IOD_TRAINING_0_IOG_DQ_TXDATA_OUT79to79;
wire   [80:80]   IOD_TRAINING_0_IOG_DQ_TXDATA_OUT80to80;
wire   [81:81]   IOD_TRAINING_0_IOG_DQ_TXDATA_OUT81to81;
wire   [82:82]   IOD_TRAINING_0_IOG_DQ_TXDATA_OUT82to82;
wire   [83:83]   IOD_TRAINING_0_IOG_DQ_TXDATA_OUT83to83;
wire   [84:84]   IOD_TRAINING_0_IOG_DQ_TXDATA_OUT84to84;
wire   [85:85]   IOD_TRAINING_0_IOG_DQ_TXDATA_OUT85to85;
wire   [86:86]   IOD_TRAINING_0_IOG_DQ_TXDATA_OUT86to86;
wire   [87:87]   IOD_TRAINING_0_IOG_DQ_TXDATA_OUT87to87;
wire   [88:88]   IOD_TRAINING_0_IOG_DQ_TXDATA_OUT88to88;
wire   [89:89]   IOD_TRAINING_0_IOG_DQ_TXDATA_OUT89to89;
wire   [90:90]   IOD_TRAINING_0_IOG_DQ_TXDATA_OUT90to90;
wire   [91:91]   IOD_TRAINING_0_IOG_DQ_TXDATA_OUT91to91;
wire   [92:92]   IOD_TRAINING_0_IOG_DQ_TXDATA_OUT92to92;
wire   [93:93]   IOD_TRAINING_0_IOG_DQ_TXDATA_OUT93to93;
wire   [94:94]   IOD_TRAINING_0_IOG_DQ_TXDATA_OUT94to94;
wire   [95:95]   IOD_TRAINING_0_IOG_DQ_TXDATA_OUT95to95;
wire   [96:96]   IOD_TRAINING_0_IOG_DQ_TXDATA_OUT96to96;
wire   [97:97]   IOD_TRAINING_0_IOG_DQ_TXDATA_OUT97to97;
wire   [98:98]   IOD_TRAINING_0_IOG_DQ_TXDATA_OUT98to98;
wire   [99:99]   IOD_TRAINING_0_IOG_DQ_TXDATA_OUT99to99;
wire   [100:100] IOD_TRAINING_0_IOG_DQ_TXDATA_OUT100to100;
wire   [101:101] IOD_TRAINING_0_IOG_DQ_TXDATA_OUT101to101;
wire   [102:102] IOD_TRAINING_0_IOG_DQ_TXDATA_OUT102to102;
wire   [103:103] IOD_TRAINING_0_IOG_DQ_TXDATA_OUT103to103;
wire   [104:104] IOD_TRAINING_0_IOG_DQ_TXDATA_OUT104to104;
wire   [105:105] IOD_TRAINING_0_IOG_DQ_TXDATA_OUT105to105;
wire   [106:106] IOD_TRAINING_0_IOG_DQ_TXDATA_OUT106to106;
wire   [107:107] IOD_TRAINING_0_IOG_DQ_TXDATA_OUT107to107;
wire   [108:108] IOD_TRAINING_0_IOG_DQ_TXDATA_OUT108to108;
wire   [109:109] IOD_TRAINING_0_IOG_DQ_TXDATA_OUT109to109;
wire   [110:110] IOD_TRAINING_0_IOG_DQ_TXDATA_OUT110to110;
wire   [111:111] IOD_TRAINING_0_IOG_DQ_TXDATA_OUT111to111;
wire   [112:112] IOD_TRAINING_0_IOG_DQ_TXDATA_OUT112to112;
wire   [113:113] IOD_TRAINING_0_IOG_DQ_TXDATA_OUT113to113;
wire   [114:114] IOD_TRAINING_0_IOG_DQ_TXDATA_OUT114to114;
wire   [115:115] IOD_TRAINING_0_IOG_DQ_TXDATA_OUT115to115;
wire   [116:116] IOD_TRAINING_0_IOG_DQ_TXDATA_OUT116to116;
wire   [117:117] IOD_TRAINING_0_IOG_DQ_TXDATA_OUT117to117;
wire   [118:118] IOD_TRAINING_0_IOG_DQ_TXDATA_OUT118to118;
wire   [119:119] IOD_TRAINING_0_IOG_DQ_TXDATA_OUT119to119;
wire   [120:120] IOD_TRAINING_0_IOG_DQ_TXDATA_OUT120to120;
wire   [121:121] IOD_TRAINING_0_IOG_DQ_TXDATA_OUT121to121;
wire   [122:122] IOD_TRAINING_0_IOG_DQ_TXDATA_OUT122to122;
wire   [123:123] IOD_TRAINING_0_IOG_DQ_TXDATA_OUT123to123;
wire   [124:124] IOD_TRAINING_0_IOG_DQ_TXDATA_OUT124to124;
wire   [125:125] IOD_TRAINING_0_IOG_DQ_TXDATA_OUT125to125;
wire   [126:126] IOD_TRAINING_0_IOG_DQ_TXDATA_OUT126to126;
wire   [127:127] IOD_TRAINING_0_IOG_DQ_TXDATA_OUT127to127;
wire   [0:0]     IOD_TRAINING_0_IOG_OE_P00to0;
wire   [1:1]     IOD_TRAINING_0_IOG_OE_P01to1;
wire   [0:0]     IOD_TRAINING_0_IOG_OE_P10to0;
wire   [1:1]     IOD_TRAINING_0_IOG_OE_P11to1;
wire   [0:0]     IOD_TRAINING_0_IOG_OE_P20to0;
wire   [1:1]     IOD_TRAINING_0_IOG_OE_P21to1;
wire   [0:0]     IOD_TRAINING_0_IOG_OE_P30to0;
wire   [1:1]     IOD_TRAINING_0_IOG_OE_P31to1;
wire   [0:0]     IOD_TRAINING_0_IOG_RDDATA_EN_P0_N0to0;
wire   [1:1]     IOD_TRAINING_0_IOG_RDDATA_EN_P0_N1to1;
wire   [0:0]     IOD_TRAINING_0_IOG_RDDATA_EN_P0_P0to0;
wire   [1:1]     IOD_TRAINING_0_IOG_RDDATA_EN_P0_P1to1;
wire   [0:0]     IOD_TRAINING_0_IOG_RDDATA_EN_P1_N0to0;
wire   [1:1]     IOD_TRAINING_0_IOG_RDDATA_EN_P1_N1to1;
wire   [0:0]     IOD_TRAINING_0_IOG_RDDATA_EN_P1_P0to0;
wire   [1:1]     IOD_TRAINING_0_IOG_RDDATA_EN_P1_P1to1;
wire   [0:0]     IOD_TRAINING_0_IOG_RDDATA_EN_P2_N0to0;
wire   [1:1]     IOD_TRAINING_0_IOG_RDDATA_EN_P2_N1to1;
wire   [0:0]     IOD_TRAINING_0_IOG_RDDATA_EN_P2_P0to0;
wire   [1:1]     IOD_TRAINING_0_IOG_RDDATA_EN_P2_P1to1;
wire   [0:0]     IOD_TRAINING_0_IOG_RDDATA_EN_P3_N0to0;
wire   [1:1]     IOD_TRAINING_0_IOG_RDDATA_EN_P3_N1to1;
wire   [0:0]     IOD_TRAINING_0_IOG_RDDATA_EN_P3_P0to0;
wire   [1:1]     IOD_TRAINING_0_IOG_RDDATA_EN_P3_P1to1;
wire   [0:0]     IOD_TRAINING_0_LOAD0to0;
wire   [1:1]     IOD_TRAINING_0_LOAD1to1;
wire   [2:2]     IOD_TRAINING_0_LOAD2to2;
wire   [3:3]     IOD_TRAINING_0_LOAD3to3;
wire   [4:4]     IOD_TRAINING_0_LOAD4to4;
wire   [5:5]     IOD_TRAINING_0_LOAD5to5;
wire   [6:6]     IOD_TRAINING_0_LOAD6to6;
wire   [7:7]     IOD_TRAINING_0_LOAD7to7;
wire   [8:8]     IOD_TRAINING_0_LOAD8to8;
wire   [9:9]     IOD_TRAINING_0_LOAD9to9;
wire   [10:10]   IOD_TRAINING_0_LOAD10to10;
wire   [11:11]   IOD_TRAINING_0_LOAD11to11;
wire   [12:12]   IOD_TRAINING_0_LOAD12to12;
wire   [13:13]   IOD_TRAINING_0_LOAD13to13;
wire   [14:14]   IOD_TRAINING_0_LOAD14to14;
wire   [15:15]   IOD_TRAINING_0_LOAD15to15;
wire   [16:16]   IOD_TRAINING_0_LOAD16to16;
wire   [17:17]   IOD_TRAINING_0_LOAD17to17;
wire   [0:0]     IOD_TRAINING_0_MOVE0to0;
wire   [1:1]     IOD_TRAINING_0_MOVE1to1;
wire   [2:2]     IOD_TRAINING_0_MOVE2to2;
wire   [3:3]     IOD_TRAINING_0_MOVE3to3;
wire   [4:4]     IOD_TRAINING_0_MOVE4to4;
wire   [5:5]     IOD_TRAINING_0_MOVE5to5;
wire   [6:6]     IOD_TRAINING_0_MOVE6to6;
wire   [7:7]     IOD_TRAINING_0_MOVE7to7;
wire   [8:8]     IOD_TRAINING_0_MOVE8to8;
wire   [9:9]     IOD_TRAINING_0_MOVE9to9;
wire   [10:10]   IOD_TRAINING_0_MOVE10to10;
wire   [11:11]   IOD_TRAINING_0_MOVE11to11;
wire   [12:12]   IOD_TRAINING_0_MOVE12to12;
wire   [13:13]   IOD_TRAINING_0_MOVE13to13;
wire   [14:14]   IOD_TRAINING_0_MOVE14to14;
wire   [15:15]   IOD_TRAINING_0_MOVE15to15;
wire   [16:16]   IOD_TRAINING_0_MOVE16to16;
wire   [17:17]   IOD_TRAINING_0_MOVE17to17;
wire             IOD_TRAINING_0_REFCLK_DELAY_LINE_DIRECTION;
wire             IOD_TRAINING_0_REFCLK_DELAY_LINE_LOAD;
wire             IOD_TRAINING_0_REFCLK_DELAY_LINE_MOVE;
wire             IOD_TRAINING_0_REFCLK_EYE_MONITOR_CLR_FLAGS;
wire   [3:0]     ITER_COUNT_net_0;
wire             LANE_0_CTRL_ARST_N;
wire   [2:0]     LANE_0_CTRL_EYE_MONITOR_WIDTH_OUT;
wire   [2:0]     LANE_0_CTRL_FIFO_RD_PTR;
wire   [2:0]     LANE_0_CTRL_FIFO_WR_PTR;
wire             LANE_0_CTRL_RX_BURST_DETECT;
wire             LANE_0_CTRL_RX_DATA_VALID;
wire             LANE_0_CTRL_RX_DELAY_LINE_OUT_OF_RANGE;
wire   [0:0]     LANE_0_CTRL_RX_DQS_90;
wire             LANE_0_CTRL_RX_SYNC_RST;
wire             LANE_0_CTRL_TX_DELAY_LINE_OUT_OF_RANGE;
wire             LANE_0_CTRL_TX_DQS;
wire             LANE_0_CTRL_TX_DQS_270;
wire             LANE_0_CTRL_TX_SYNC_RST;
wire             LANE_0_IOD_DM_RX_FB;
wire             LANE_0_IOD_DQ_DELAY_LINE_OUT_OF_RANGE_0;
wire             LANE_0_IOD_DQ_DELAY_LINE_OUT_OF_RANGE_1;
wire             LANE_0_IOD_DQ_DELAY_LINE_OUT_OF_RANGE_2;
wire             LANE_0_IOD_DQ_DELAY_LINE_OUT_OF_RANGE_3;
wire             LANE_0_IOD_DQ_DELAY_LINE_OUT_OF_RANGE_4;
wire             LANE_0_IOD_DQ_DELAY_LINE_OUT_OF_RANGE_5;
wire             LANE_0_IOD_DQ_DELAY_LINE_OUT_OF_RANGE_6;
wire             LANE_0_IOD_DQ_DELAY_LINE_OUT_OF_RANGE_7;
wire             LANE_0_IOD_DQ_RX_BYPASS_DATA_0;
wire             LANE_0_IOD_DQ_RX_BYPASS_DATA_1;
wire             LANE_0_IOD_DQ_RX_BYPASS_DATA_2;
wire             LANE_0_IOD_DQ_RX_BYPASS_DATA_3;
wire             LANE_0_IOD_DQ_RX_BYPASS_DATA_4;
wire             LANE_0_IOD_DQ_RX_BYPASS_DATA_5;
wire             LANE_0_IOD_DQ_RX_BYPASS_DATA_6;
wire             LANE_0_IOD_DQ_RX_BYPASS_DATA_7;
wire   [0:0]     LANE_0_IOD_DQ_RX_DATA_00to0;
wire   [1:1]     LANE_0_IOD_DQ_RX_DATA_01to1;
wire   [2:2]     LANE_0_IOD_DQ_RX_DATA_02to2;
wire   [3:3]     LANE_0_IOD_DQ_RX_DATA_03to3;
wire   [4:4]     LANE_0_IOD_DQ_RX_DATA_04to4;
wire   [5:5]     LANE_0_IOD_DQ_RX_DATA_05to5;
wire   [6:6]     LANE_0_IOD_DQ_RX_DATA_06to6;
wire   [7:7]     LANE_0_IOD_DQ_RX_DATA_07to7;
wire   [0:0]     LANE_0_IOD_DQ_RX_DATA_10to0;
wire   [1:1]     LANE_0_IOD_DQ_RX_DATA_11to1;
wire   [2:2]     LANE_0_IOD_DQ_RX_DATA_12to2;
wire   [3:3]     LANE_0_IOD_DQ_RX_DATA_13to3;
wire   [4:4]     LANE_0_IOD_DQ_RX_DATA_14to4;
wire   [5:5]     LANE_0_IOD_DQ_RX_DATA_15to5;
wire   [6:6]     LANE_0_IOD_DQ_RX_DATA_16to6;
wire   [7:7]     LANE_0_IOD_DQ_RX_DATA_17to7;
wire   [0:0]     LANE_0_IOD_DQ_RX_DATA_20to0;
wire   [1:1]     LANE_0_IOD_DQ_RX_DATA_21to1;
wire   [2:2]     LANE_0_IOD_DQ_RX_DATA_22to2;
wire   [3:3]     LANE_0_IOD_DQ_RX_DATA_23to3;
wire   [4:4]     LANE_0_IOD_DQ_RX_DATA_24to4;
wire   [5:5]     LANE_0_IOD_DQ_RX_DATA_25to5;
wire   [6:6]     LANE_0_IOD_DQ_RX_DATA_26to6;
wire   [7:7]     LANE_0_IOD_DQ_RX_DATA_27to7;
wire   [0:0]     LANE_0_IOD_DQ_RX_DATA_30to0;
wire   [1:1]     LANE_0_IOD_DQ_RX_DATA_31to1;
wire   [2:2]     LANE_0_IOD_DQ_RX_DATA_32to2;
wire   [3:3]     LANE_0_IOD_DQ_RX_DATA_33to3;
wire   [4:4]     LANE_0_IOD_DQ_RX_DATA_34to4;
wire   [5:5]     LANE_0_IOD_DQ_RX_DATA_35to5;
wire   [6:6]     LANE_0_IOD_DQ_RX_DATA_36to6;
wire   [7:7]     LANE_0_IOD_DQ_RX_DATA_37to7;
wire   [0:0]     LANE_0_IOD_DQ_RX_DATA_40to0;
wire   [1:1]     LANE_0_IOD_DQ_RX_DATA_41to1;
wire   [2:2]     LANE_0_IOD_DQ_RX_DATA_42to2;
wire   [3:3]     LANE_0_IOD_DQ_RX_DATA_43to3;
wire   [4:4]     LANE_0_IOD_DQ_RX_DATA_44to4;
wire   [5:5]     LANE_0_IOD_DQ_RX_DATA_45to5;
wire   [6:6]     LANE_0_IOD_DQ_RX_DATA_46to6;
wire   [7:7]     LANE_0_IOD_DQ_RX_DATA_47to7;
wire   [0:0]     LANE_0_IOD_DQ_RX_DATA_50to0;
wire   [1:1]     LANE_0_IOD_DQ_RX_DATA_51to1;
wire   [2:2]     LANE_0_IOD_DQ_RX_DATA_52to2;
wire   [3:3]     LANE_0_IOD_DQ_RX_DATA_53to3;
wire   [4:4]     LANE_0_IOD_DQ_RX_DATA_54to4;
wire   [5:5]     LANE_0_IOD_DQ_RX_DATA_55to5;
wire   [6:6]     LANE_0_IOD_DQ_RX_DATA_56to6;
wire   [7:7]     LANE_0_IOD_DQ_RX_DATA_57to7;
wire   [0:0]     LANE_0_IOD_DQ_RX_DATA_60to0;
wire   [1:1]     LANE_0_IOD_DQ_RX_DATA_61to1;
wire   [2:2]     LANE_0_IOD_DQ_RX_DATA_62to2;
wire   [3:3]     LANE_0_IOD_DQ_RX_DATA_63to3;
wire   [4:4]     LANE_0_IOD_DQ_RX_DATA_64to4;
wire   [5:5]     LANE_0_IOD_DQ_RX_DATA_65to5;
wire   [6:6]     LANE_0_IOD_DQ_RX_DATA_66to6;
wire   [7:7]     LANE_0_IOD_DQ_RX_DATA_67to7;
wire   [0:0]     LANE_0_IOD_DQ_RX_DATA_70to0;
wire   [1:1]     LANE_0_IOD_DQ_RX_DATA_71to1;
wire   [2:2]     LANE_0_IOD_DQ_RX_DATA_72to2;
wire   [3:3]     LANE_0_IOD_DQ_RX_DATA_73to3;
wire   [4:4]     LANE_0_IOD_DQ_RX_DATA_74to4;
wire   [5:5]     LANE_0_IOD_DQ_RX_DATA_75to5;
wire   [6:6]     LANE_0_IOD_DQ_RX_DATA_76to6;
wire   [7:7]     LANE_0_IOD_DQ_RX_DATA_77to7;
wire             LANE_0_IOD_DQS_DQS;
wire             LANE_0_IOD_DQS_DQS_N;
wire             LANE_0_IOD_DQSW_TRAINING_DELAY_LINE_OUT_OF_RANGE_0;
wire             LANE_0_IOD_DQSW_TRAINING_EYE_MONITOR_EARLY_0;
wire             LANE_0_IOD_DQSW_TRAINING_EYE_MONITOR_LATE_0;
wire             LANE_0_IOD_DQSW_TRAINING_OE_0;
wire   [0:0]     LANE_0_IOD_DQSW_TRAINING_RX_DATA_00to0;
wire   [1:1]     LANE_0_IOD_DQSW_TRAINING_RX_DATA_01to1;
wire             LANE_0_IOD_DQSW_TRAINING_TX_0;
wire             LANE_0_IOD_READ_TRAINING_DDR_DO_READ;
wire             LANE_0_IOD_READ_TRAINING_DELAY_LINE_OUT_OF_RANGE_0;
wire             LANE_0_IOD_READ_TRAINING_EYE_MONITOR_EARLY_0;
wire             LANE_0_IOD_READ_TRAINING_EYE_MONITOR_LATE_0;
wire   [6:6]     LANE_0_IOD_READ_TRAINING_RX_DATA_06to6;
wire   [7:7]     LANE_0_IOD_READ_TRAINING_RX_DATA_07to7;
wire             LANE_0_IOD_READ_TRAINING_SWITCH;
wire             LANE_1_CTRL_ARST_N;
wire   [2:0]     LANE_1_CTRL_EYE_MONITOR_WIDTH_OUT;
wire   [2:0]     LANE_1_CTRL_FIFO_RD_PTR;
wire   [2:0]     LANE_1_CTRL_FIFO_WR_PTR;
wire             LANE_1_CTRL_RX_BURST_DETECT;
wire             LANE_1_CTRL_RX_DATA_VALID;
wire             LANE_1_CTRL_RX_DELAY_LINE_OUT_OF_RANGE;
wire   [0:0]     LANE_1_CTRL_RX_DQS_90;
wire             LANE_1_CTRL_RX_SYNC_RST;
wire             LANE_1_CTRL_TX_DELAY_LINE_OUT_OF_RANGE;
wire             LANE_1_CTRL_TX_DQS;
wire             LANE_1_CTRL_TX_DQS_270;
wire             LANE_1_CTRL_TX_SYNC_RST;
wire             LANE_1_IOD_DM_RX_FB;
wire             LANE_1_IOD_DQ_DELAY_LINE_OUT_OF_RANGE_0;
wire             LANE_1_IOD_DQ_DELAY_LINE_OUT_OF_RANGE_1;
wire             LANE_1_IOD_DQ_DELAY_LINE_OUT_OF_RANGE_2;
wire             LANE_1_IOD_DQ_DELAY_LINE_OUT_OF_RANGE_3;
wire             LANE_1_IOD_DQ_DELAY_LINE_OUT_OF_RANGE_4;
wire             LANE_1_IOD_DQ_DELAY_LINE_OUT_OF_RANGE_5;
wire             LANE_1_IOD_DQ_DELAY_LINE_OUT_OF_RANGE_6;
wire             LANE_1_IOD_DQ_DELAY_LINE_OUT_OF_RANGE_7;
wire             LANE_1_IOD_DQ_RX_BYPASS_DATA_0;
wire             LANE_1_IOD_DQ_RX_BYPASS_DATA_1;
wire             LANE_1_IOD_DQ_RX_BYPASS_DATA_2;
wire             LANE_1_IOD_DQ_RX_BYPASS_DATA_3;
wire             LANE_1_IOD_DQ_RX_BYPASS_DATA_4;
wire             LANE_1_IOD_DQ_RX_BYPASS_DATA_5;
wire             LANE_1_IOD_DQ_RX_BYPASS_DATA_6;
wire             LANE_1_IOD_DQ_RX_BYPASS_DATA_7;
wire   [0:0]     LANE_1_IOD_DQ_RX_DATA_00to0;
wire   [1:1]     LANE_1_IOD_DQ_RX_DATA_01to1;
wire   [2:2]     LANE_1_IOD_DQ_RX_DATA_02to2;
wire   [3:3]     LANE_1_IOD_DQ_RX_DATA_03to3;
wire   [4:4]     LANE_1_IOD_DQ_RX_DATA_04to4;
wire   [5:5]     LANE_1_IOD_DQ_RX_DATA_05to5;
wire   [6:6]     LANE_1_IOD_DQ_RX_DATA_06to6;
wire   [7:7]     LANE_1_IOD_DQ_RX_DATA_07to7;
wire   [0:0]     LANE_1_IOD_DQ_RX_DATA_10to0;
wire   [1:1]     LANE_1_IOD_DQ_RX_DATA_11to1;
wire   [2:2]     LANE_1_IOD_DQ_RX_DATA_12to2;
wire   [3:3]     LANE_1_IOD_DQ_RX_DATA_13to3;
wire   [4:4]     LANE_1_IOD_DQ_RX_DATA_14to4;
wire   [5:5]     LANE_1_IOD_DQ_RX_DATA_15to5;
wire   [6:6]     LANE_1_IOD_DQ_RX_DATA_16to6;
wire   [7:7]     LANE_1_IOD_DQ_RX_DATA_17to7;
wire   [0:0]     LANE_1_IOD_DQ_RX_DATA_20to0;
wire   [1:1]     LANE_1_IOD_DQ_RX_DATA_21to1;
wire   [2:2]     LANE_1_IOD_DQ_RX_DATA_22to2;
wire   [3:3]     LANE_1_IOD_DQ_RX_DATA_23to3;
wire   [4:4]     LANE_1_IOD_DQ_RX_DATA_24to4;
wire   [5:5]     LANE_1_IOD_DQ_RX_DATA_25to5;
wire   [6:6]     LANE_1_IOD_DQ_RX_DATA_26to6;
wire   [7:7]     LANE_1_IOD_DQ_RX_DATA_27to7;
wire   [0:0]     LANE_1_IOD_DQ_RX_DATA_30to0;
wire   [1:1]     LANE_1_IOD_DQ_RX_DATA_31to1;
wire   [2:2]     LANE_1_IOD_DQ_RX_DATA_32to2;
wire   [3:3]     LANE_1_IOD_DQ_RX_DATA_33to3;
wire   [4:4]     LANE_1_IOD_DQ_RX_DATA_34to4;
wire   [5:5]     LANE_1_IOD_DQ_RX_DATA_35to5;
wire   [6:6]     LANE_1_IOD_DQ_RX_DATA_36to6;
wire   [7:7]     LANE_1_IOD_DQ_RX_DATA_37to7;
wire   [0:0]     LANE_1_IOD_DQ_RX_DATA_40to0;
wire   [1:1]     LANE_1_IOD_DQ_RX_DATA_41to1;
wire   [2:2]     LANE_1_IOD_DQ_RX_DATA_42to2;
wire   [3:3]     LANE_1_IOD_DQ_RX_DATA_43to3;
wire   [4:4]     LANE_1_IOD_DQ_RX_DATA_44to4;
wire   [5:5]     LANE_1_IOD_DQ_RX_DATA_45to5;
wire   [6:6]     LANE_1_IOD_DQ_RX_DATA_46to6;
wire   [7:7]     LANE_1_IOD_DQ_RX_DATA_47to7;
wire   [0:0]     LANE_1_IOD_DQ_RX_DATA_50to0;
wire   [1:1]     LANE_1_IOD_DQ_RX_DATA_51to1;
wire   [2:2]     LANE_1_IOD_DQ_RX_DATA_52to2;
wire   [3:3]     LANE_1_IOD_DQ_RX_DATA_53to3;
wire   [4:4]     LANE_1_IOD_DQ_RX_DATA_54to4;
wire   [5:5]     LANE_1_IOD_DQ_RX_DATA_55to5;
wire   [6:6]     LANE_1_IOD_DQ_RX_DATA_56to6;
wire   [7:7]     LANE_1_IOD_DQ_RX_DATA_57to7;
wire   [0:0]     LANE_1_IOD_DQ_RX_DATA_60to0;
wire   [1:1]     LANE_1_IOD_DQ_RX_DATA_61to1;
wire   [2:2]     LANE_1_IOD_DQ_RX_DATA_62to2;
wire   [3:3]     LANE_1_IOD_DQ_RX_DATA_63to3;
wire   [4:4]     LANE_1_IOD_DQ_RX_DATA_64to4;
wire   [5:5]     LANE_1_IOD_DQ_RX_DATA_65to5;
wire   [6:6]     LANE_1_IOD_DQ_RX_DATA_66to6;
wire   [7:7]     LANE_1_IOD_DQ_RX_DATA_67to7;
wire   [0:0]     LANE_1_IOD_DQ_RX_DATA_70to0;
wire   [1:1]     LANE_1_IOD_DQ_RX_DATA_71to1;
wire   [2:2]     LANE_1_IOD_DQ_RX_DATA_72to2;
wire   [3:3]     LANE_1_IOD_DQ_RX_DATA_73to3;
wire   [4:4]     LANE_1_IOD_DQ_RX_DATA_74to4;
wire   [5:5]     LANE_1_IOD_DQ_RX_DATA_75to5;
wire   [6:6]     LANE_1_IOD_DQ_RX_DATA_76to6;
wire   [7:7]     LANE_1_IOD_DQ_RX_DATA_77to7;
wire             LANE_1_IOD_DQS_DQS;
wire             LANE_1_IOD_DQS_DQS_N;
wire             LANE_1_IOD_DQSW_TRAINING_DELAY_LINE_OUT_OF_RANGE_0;
wire             LANE_1_IOD_DQSW_TRAINING_EYE_MONITOR_EARLY_0;
wire             LANE_1_IOD_DQSW_TRAINING_EYE_MONITOR_LATE_0;
wire             LANE_1_IOD_DQSW_TRAINING_OE_0;
wire   [0:0]     LANE_1_IOD_DQSW_TRAINING_RX_DATA_00to0;
wire   [1:1]     LANE_1_IOD_DQSW_TRAINING_RX_DATA_01to1;
wire             LANE_1_IOD_DQSW_TRAINING_TX_0;
wire             LANE_1_IOD_READ_TRAINING_DDR_DO_READ;
wire             LANE_1_IOD_READ_TRAINING_DELAY_LINE_OUT_OF_RANGE_0;
wire             LANE_1_IOD_READ_TRAINING_EYE_MONITOR_EARLY_0;
wire             LANE_1_IOD_READ_TRAINING_EYE_MONITOR_LATE_0;
wire   [6:6]     LANE_1_IOD_READ_TRAINING_RX_DATA_06to6;
wire   [7:7]     LANE_1_IOD_READ_TRAINING_RX_DATA_07to7;
wire             LANE_1_IOD_READ_TRAINING_SWITCH;
wire             LANECTRL_ADDR_CMD_0_ARST_N;
wire             LANECTRL_ADDR_CMD_0_RX_SYNC_RST;
wire             LANECTRL_ADDR_CMD_0_TX_DQS_270;
wire             LANECTRL_ADDR_CMD_0_TX_SYNC_RST;
wire   [0:0]     LOADPHS_B_net_0;
wire             OB_A_12_Y;
wire             OB_DIFF_CK0_Y;
wire   [0:0]     ODT_net_0;
wire             PCLK;
wire             PLL_LOCK;
wire   [0:0]     RAS_N_net_0;
wire   [9:0]     RDGATE_MIN_READS_THRESHOLD;
wire             REF_CLK;
wire   [0:0]     RESET_N_net_0;
wire             SHIELD0_net_0;
wire             SHIELD1_net_0;
wire             SKIP_BCLK_TRN;
wire             SKIP_CA_TRN;
wire             SKIP_DQSW_TRN;
wire             SKIP_RDLVL_TRN;
wire             SKIP_WRLVL_TRN;
wire             SYNC_SYS_RST_N_net_0;
wire             SYS_CLK;
wire             SYS_RST_N;
wire   [0:0]     VCO_PHSEL_BCLK90_SEL_net_0;
wire   [0:0]     VCO_PHSEL_BCLK_SEL_net_0;
wire             VCO_PHSEL_REFCLK_SEL_net_0;
wire   [0:0]     VCO_PHSEL_ROTATE_net_0;
wire   [0:0]     WE_N_net_0;
wire   [7:0]     WRCAL_WRITE_COUNTER_VALUE;
wire   [6:0]     WRLVL_TAP_OFFSET;
wire             CODE_UPDATE_net_1;
wire   [0:0]     LOADPHS_B_net_1;
wire   [0:0]     VCO_PHSEL_BCLK_SEL_net_1;
wire   [0:0]     VCO_PHSEL_BCLK90_SEL_net_1;
wire             VCO_PHSEL_REFCLK_SEL_net_1;
wire   [0:0]     VCO_PHSEL_ROTATE_net_1;
wire   [31:0]    DFI_RDDATA_W0_net_1;
wire   [0:0]     DFI_RDDATA_VALID_W0_net_1;
wire   [1:1]     DFI_RDDATA_VALID_W0_net_2;
wire   [31:0]    DFI_RDDATA_W1_net_1;
wire   [0:0]     DFI_RDDATA_VALID_W1_net_1;
wire   [1:1]     DFI_RDDATA_VALID_W1_net_2;
wire   [31:0]    DFI_RDDATA_W2_net_1;
wire   [0:0]     DFI_RDDATA_VALID_W2_net_1;
wire   [1:1]     DFI_RDDATA_VALID_W2_net_2;
wire   [31:0]    DFI_RDDATA_W3_net_1;
wire   [0:0]     DFI_RDDATA_VALID_W3_net_1;
wire   [1:1]     DFI_RDDATA_VALID_W3_net_2;
wire   [1:0]     DFI_RDLVL_RESP_net_1;
wire   [1:0]     DFI_WRLVL_RESP_net_1;
wire             DFI_INIT_COMPLETE_net_1;
wire             DFI_TRAINING_COMPLETE_net_1;
wire   [0:0]     DM_net_1;
wire   [1:1]     DM_0_net_0;
wire             CKE_net_1;
wire             CS_N_net_1;
wire             ODT_net_1;
wire             RAS_N_net_1;
wire             CAS_N_net_1;
wire             WE_N_net_1;
wire   [2:0]     BA_net_1;
wire             RESET_N_net_1;
wire   [0:0]     A_net_1;
wire   [10:10]   A_9_net_0;
wire   [11:11]   A_10_net_0;
wire   [12:12]   A_11_net_0;
wire   [13:13]   A_12_net_0;
wire   [14:14]   A_13_net_0;
wire   [15:15]   A_14_net_0;
wire   [1:1]     A_0_net_0;
wire   [2:2]     A_1_net_0;
wire   [3:3]     A_2_net_0;
wire   [4:4]     A_3_net_0;
wire   [5:5]     A_4_net_0;
wire   [6:6]     A_5_net_0;
wire   [7:7]     A_6_net_0;
wire   [8:8]     A_7_net_0;
wire   [9:9]     A_8_net_0;
wire             CK0_net_1;
wire             CK0_N_net_1;
wire             SHIELD0_net_1;
wire             SHIELD1_net_1;
wire   [7:0]     APB_DEBUG_PRDATA_net_0;
wire             APB_DEBUG_PREADY_net_0;
wire             CTRLR_READY_OUT_net_1;
wire   [3:0]     ITER_COUNT_net_1;
wire             CAL_L_R_REQ_net_1;
wire             CAL_L_W_REQ_net_1;
wire   [127:0]   CAL_L_DATAIN_net_1;
wire   [15:0]    CAL_L_DM_IN_net_1;
wire             CAL_SELECT_net_1;
wire   [0:0]     DFI_RDDATA_W0_slice_0;
wire   [10:10]   DFI_RDDATA_W0_slice_1;
wire   [11:11]   DFI_RDDATA_W0_slice_2;
wire   [12:12]   DFI_RDDATA_W0_slice_3;
wire   [13:13]   DFI_RDDATA_W0_slice_4;
wire   [14:14]   DFI_RDDATA_W0_slice_5;
wire   [15:15]   DFI_RDDATA_W0_slice_6;
wire   [16:16]   DFI_RDDATA_W0_slice_7;
wire   [17:17]   DFI_RDDATA_W0_slice_8;
wire   [18:18]   DFI_RDDATA_W0_slice_9;
wire   [19:19]   DFI_RDDATA_W0_slice_10;
wire   [1:1]     DFI_RDDATA_W0_slice_11;
wire   [20:20]   DFI_RDDATA_W0_slice_12;
wire   [21:21]   DFI_RDDATA_W0_slice_13;
wire   [22:22]   DFI_RDDATA_W0_slice_14;
wire   [23:23]   DFI_RDDATA_W0_slice_15;
wire   [24:24]   DFI_RDDATA_W0_slice_16;
wire   [25:25]   DFI_RDDATA_W0_slice_17;
wire   [26:26]   DFI_RDDATA_W0_slice_18;
wire   [27:27]   DFI_RDDATA_W0_slice_19;
wire   [28:28]   DFI_RDDATA_W0_slice_20;
wire   [29:29]   DFI_RDDATA_W0_slice_21;
wire   [2:2]     DFI_RDDATA_W0_slice_22;
wire   [30:30]   DFI_RDDATA_W0_slice_23;
wire   [31:31]   DFI_RDDATA_W0_slice_24;
wire   [3:3]     DFI_RDDATA_W0_slice_25;
wire   [4:4]     DFI_RDDATA_W0_slice_26;
wire   [5:5]     DFI_RDDATA_W0_slice_27;
wire   [6:6]     DFI_RDDATA_W0_slice_28;
wire   [7:7]     DFI_RDDATA_W0_slice_29;
wire   [8:8]     DFI_RDDATA_W0_slice_30;
wire   [9:9]     DFI_RDDATA_W0_slice_31;
wire   [0:0]     DFI_RDDATA_W1_slice_0;
wire   [10:10]   DFI_RDDATA_W1_slice_1;
wire   [11:11]   DFI_RDDATA_W1_slice_2;
wire   [12:12]   DFI_RDDATA_W1_slice_3;
wire   [13:13]   DFI_RDDATA_W1_slice_4;
wire   [14:14]   DFI_RDDATA_W1_slice_5;
wire   [15:15]   DFI_RDDATA_W1_slice_6;
wire   [16:16]   DFI_RDDATA_W1_slice_7;
wire   [17:17]   DFI_RDDATA_W1_slice_8;
wire   [18:18]   DFI_RDDATA_W1_slice_9;
wire   [19:19]   DFI_RDDATA_W1_slice_10;
wire   [1:1]     DFI_RDDATA_W1_slice_11;
wire   [20:20]   DFI_RDDATA_W1_slice_12;
wire   [21:21]   DFI_RDDATA_W1_slice_13;
wire   [22:22]   DFI_RDDATA_W1_slice_14;
wire   [23:23]   DFI_RDDATA_W1_slice_15;
wire   [24:24]   DFI_RDDATA_W1_slice_16;
wire   [25:25]   DFI_RDDATA_W1_slice_17;
wire   [26:26]   DFI_RDDATA_W1_slice_18;
wire   [27:27]   DFI_RDDATA_W1_slice_19;
wire   [28:28]   DFI_RDDATA_W1_slice_20;
wire   [29:29]   DFI_RDDATA_W1_slice_21;
wire   [2:2]     DFI_RDDATA_W1_slice_22;
wire   [30:30]   DFI_RDDATA_W1_slice_23;
wire   [31:31]   DFI_RDDATA_W1_slice_24;
wire   [3:3]     DFI_RDDATA_W1_slice_25;
wire   [4:4]     DFI_RDDATA_W1_slice_26;
wire   [5:5]     DFI_RDDATA_W1_slice_27;
wire   [6:6]     DFI_RDDATA_W1_slice_28;
wire   [7:7]     DFI_RDDATA_W1_slice_29;
wire   [8:8]     DFI_RDDATA_W1_slice_30;
wire   [9:9]     DFI_RDDATA_W1_slice_31;
wire   [0:0]     DFI_RDDATA_W2_slice_0;
wire   [10:10]   DFI_RDDATA_W2_slice_1;
wire   [11:11]   DFI_RDDATA_W2_slice_2;
wire   [12:12]   DFI_RDDATA_W2_slice_3;
wire   [13:13]   DFI_RDDATA_W2_slice_4;
wire   [14:14]   DFI_RDDATA_W2_slice_5;
wire   [15:15]   DFI_RDDATA_W2_slice_6;
wire   [16:16]   DFI_RDDATA_W2_slice_7;
wire   [17:17]   DFI_RDDATA_W2_slice_8;
wire   [18:18]   DFI_RDDATA_W2_slice_9;
wire   [19:19]   DFI_RDDATA_W2_slice_10;
wire   [1:1]     DFI_RDDATA_W2_slice_11;
wire   [20:20]   DFI_RDDATA_W2_slice_12;
wire   [21:21]   DFI_RDDATA_W2_slice_13;
wire   [22:22]   DFI_RDDATA_W2_slice_14;
wire   [23:23]   DFI_RDDATA_W2_slice_15;
wire   [24:24]   DFI_RDDATA_W2_slice_16;
wire   [25:25]   DFI_RDDATA_W2_slice_17;
wire   [26:26]   DFI_RDDATA_W2_slice_18;
wire   [27:27]   DFI_RDDATA_W2_slice_19;
wire   [28:28]   DFI_RDDATA_W2_slice_20;
wire   [29:29]   DFI_RDDATA_W2_slice_21;
wire   [2:2]     DFI_RDDATA_W2_slice_22;
wire   [30:30]   DFI_RDDATA_W2_slice_23;
wire   [31:31]   DFI_RDDATA_W2_slice_24;
wire   [3:3]     DFI_RDDATA_W2_slice_25;
wire   [4:4]     DFI_RDDATA_W2_slice_26;
wire   [5:5]     DFI_RDDATA_W2_slice_27;
wire   [6:6]     DFI_RDDATA_W2_slice_28;
wire   [7:7]     DFI_RDDATA_W2_slice_29;
wire   [8:8]     DFI_RDDATA_W2_slice_30;
wire   [9:9]     DFI_RDDATA_W2_slice_31;
wire   [0:0]     DFI_RDDATA_W3_slice_0;
wire   [10:10]   DFI_RDDATA_W3_slice_1;
wire   [11:11]   DFI_RDDATA_W3_slice_2;
wire   [12:12]   DFI_RDDATA_W3_slice_3;
wire   [13:13]   DFI_RDDATA_W3_slice_4;
wire   [14:14]   DFI_RDDATA_W3_slice_5;
wire   [15:15]   DFI_RDDATA_W3_slice_6;
wire   [16:16]   DFI_RDDATA_W3_slice_7;
wire   [17:17]   DFI_RDDATA_W3_slice_8;
wire   [18:18]   DFI_RDDATA_W3_slice_9;
wire   [19:19]   DFI_RDDATA_W3_slice_10;
wire   [1:1]     DFI_RDDATA_W3_slice_11;
wire   [20:20]   DFI_RDDATA_W3_slice_12;
wire   [21:21]   DFI_RDDATA_W3_slice_13;
wire   [22:22]   DFI_RDDATA_W3_slice_14;
wire   [23:23]   DFI_RDDATA_W3_slice_15;
wire   [24:24]   DFI_RDDATA_W3_slice_16;
wire   [25:25]   DFI_RDDATA_W3_slice_17;
wire   [26:26]   DFI_RDDATA_W3_slice_18;
wire   [27:27]   DFI_RDDATA_W3_slice_19;
wire   [28:28]   DFI_RDDATA_W3_slice_20;
wire   [29:29]   DFI_RDDATA_W3_slice_21;
wire   [2:2]     DFI_RDDATA_W3_slice_22;
wire   [30:30]   DFI_RDDATA_W3_slice_23;
wire   [31:31]   DFI_RDDATA_W3_slice_24;
wire   [3:3]     DFI_RDDATA_W3_slice_25;
wire   [4:4]     DFI_RDDATA_W3_slice_26;
wire   [5:5]     DFI_RDDATA_W3_slice_27;
wire   [6:6]     DFI_RDDATA_W3_slice_28;
wire   [7:7]     DFI_RDDATA_W3_slice_29;
wire   [8:8]     DFI_RDDATA_W3_slice_30;
wire   [9:9]     DFI_RDDATA_W3_slice_31;
wire   [0:0]     DFI_WRLVL_RESP_slice_0;
wire   [1:1]     DFI_WRLVL_RESP_slice_1;
wire   [0:0]     RX_DATA_0_slice_0;
wire   [1:1]     RX_DATA_0_slice_1;
wire   [2:2]     RX_DATA_0_slice_2;
wire   [1:1]     RX_DATA_0_slice_3;
wire   [3:3]     RX_DATA_0_slice_4;
wire   [5:5]     RX_DATA_0_slice_5;
wire   [7:7]     RX_DATA_0_slice_6;
wire   [0:0]     RX_DATA_0_slice_7;
wire   [1:1]     RX_DATA_0_slice_8;
wire   [2:2]     RX_DATA_0_slice_9;
wire   [3:3]     RX_DATA_0_slice_10;
wire   [4:4]     RX_DATA_0_slice_11;
wire   [5:5]     RX_DATA_0_slice_12;
wire   [7:7]     RX_DATA_0_slice_13;
wire   [0:0]     ODT_DYN_LANE_slice_0;
wire   [1:1]     ODT_DYN_LANE_slice_1;
wire   [0:0]     IOG_WRDATA_MASK_P0_slice_0;
wire   [1:1]     IOG_WRDATA_MASK_P0_slice_1;
wire   [2:2]     IOG_WRDATA_MASK_P0_slice_2;
wire   [3:3]     IOG_WRDATA_MASK_P0_slice_3;
wire   [0:0]     IOG_WRDATA_MASK_P1_slice_0;
wire   [1:1]     IOG_WRDATA_MASK_P1_slice_1;
wire   [2:2]     IOG_WRDATA_MASK_P1_slice_2;
wire   [3:3]     IOG_WRDATA_MASK_P1_slice_3;
wire   [0:0]     IOG_WRDATA_MASK_P2_slice_0;
wire   [1:1]     IOG_WRDATA_MASK_P2_slice_1;
wire   [2:2]     IOG_WRDATA_MASK_P2_slice_2;
wire   [3:3]     IOG_WRDATA_MASK_P2_slice_3;
wire   [0:0]     IOG_WRDATA_MASK_P3_slice_0;
wire   [1:1]     IOG_WRDATA_MASK_P3_slice_1;
wire   [2:2]     IOG_WRDATA_MASK_P3_slice_2;
wire   [3:3]     IOG_WRDATA_MASK_P3_slice_3;
wire   [16:16]   IOG_ADDRESS_P0_slice_0;
wire   [17:17]   IOG_ADDRESS_P0_slice_1;
wire   [18:18]   IOG_ADDRESS_P0_slice_2;
wire   [19:19]   IOG_ADDRESS_P0_slice_3;
wire   [16:16]   IOG_ADDRESS_P1_slice_0;
wire   [17:17]   IOG_ADDRESS_P1_slice_1;
wire   [18:18]   IOG_ADDRESS_P1_slice_2;
wire   [19:19]   IOG_ADDRESS_P1_slice_3;
wire   [16:16]   IOG_ADDRESS_P2_slice_0;
wire   [17:17]   IOG_ADDRESS_P2_slice_1;
wire   [18:18]   IOG_ADDRESS_P2_slice_2;
wire   [19:19]   IOG_ADDRESS_P2_slice_3;
wire   [16:16]   IOG_ADDRESS_P3_slice_0;
wire   [17:17]   IOG_ADDRESS_P3_slice_1;
wire   [18:18]   IOG_ADDRESS_P3_slice_2;
wire   [19:19]   IOG_ADDRESS_P3_slice_3;
wire   [0:0]     RX_DATA_0_slice_14;
wire   [1:1]     RX_DATA_0_slice_15;
wire   [2:2]     RX_DATA_0_slice_16;
wire   [3:3]     RX_DATA_0_slice_17;
wire   [4:4]     RX_DATA_0_slice_18;
wire   [5:5]     RX_DATA_0_slice_19;
wire   [0:0]     RX_DATA_0_slice_20;
wire   [1:1]     RX_DATA_0_slice_21;
wire   [2:2]     RX_DATA_0_slice_22;
wire   [3:3]     RX_DATA_0_slice_23;
wire   [4:4]     RX_DATA_0_slice_24;
wire   [5:5]     RX_DATA_0_slice_25;
wire   [3:0]     TX_DATA_0_net_0;
wire   [3:0]     TX_DATA_1_net_0;
wire   [3:0]     TX_DATA_2_net_0;
wire   [3:0]     TX_DATA_3_net_0;
wire   [3:0]     TX_DATA_4_net_0;
wire   [3:0]     TX_DATA_5_net_0;
wire   [3:0]     TX_DATA_6_net_0;
wire   [3:0]     TX_DATA_7_net_0;
wire   [3:0]     TX_DATA_8_net_0;
wire   [3:0]     TX_DATA_9_net_0;
wire   [3:0]     TX_DATA_10_net_0;
wire   [3:0]     TX_DATA_11_net_0;
wire   [3:0]     TX_DATA_0_net_1;
wire   [3:0]     OE_DATA_0_net_0;
wire   [3:0]     TX_DATA_0_net_2;
wire   [3:0]     TX_DATA_0_net_3;
wire   [3:0]     TX_DATA_0_net_4;
wire   [3:0]     TX_DATA_0_net_5;
wire   [3:0]     TX_DATA_1_net_1;
wire   [3:0]     TX_DATA_2_net_1;
wire   [3:0]     TX_DATA_0_net_6;
wire   [3:0]     TX_DATA_0_net_7;
wire   [3:0]     TX_DATA_0_net_8;
wire   [3:0]     TX_DATA_0_net_9;
wire   [3:0]     TX_DATA_0_net_10;
wire   [3:0]     TX_DATA_0_net_11;
wire   [3:0]     TX_DATA_0_net_12;
wire   [1:0]     HS_IO_CLK_net_0;
wire   [2:0]     READ_CLK_SEL_net_0;
wire   [7:0]     TX_DATA_0_net_13;
wire   [3:0]     OE_DATA_0_net_1;
wire   [7:0]     TX_DATA_0_net_14;
wire   [7:0]     TX_DATA_1_net_2;
wire   [7:0]     TX_DATA_2_net_2;
wire   [7:0]     TX_DATA_3_net_1;
wire   [7:0]     TX_DATA_4_net_1;
wire   [7:0]     TX_DATA_5_net_1;
wire   [7:0]     TX_DATA_6_net_1;
wire   [7:0]     TX_DATA_7_net_1;
wire   [3:0]     OE_DATA_0_net_2;
wire   [3:0]     OE_DATA_1_net_0;
wire   [3:0]     OE_DATA_2_net_0;
wire   [3:0]     OE_DATA_3_net_0;
wire   [3:0]     OE_DATA_4_net_0;
wire   [3:0]     OE_DATA_5_net_0;
wire   [3:0]     OE_DATA_6_net_0;
wire   [3:0]     OE_DATA_7_net_0;
wire   [3:0]     OE_DATA_0_net_3;
wire   [7:0]     TX_DATA_0_net_15;
wire   [3:0]     OE_DATA_0_net_4;
wire   [1:0]     HS_IO_CLK_net_1;
wire   [2:0]     READ_CLK_SEL_net_1;
wire   [7:0]     TX_DATA_0_net_16;
wire   [3:0]     OE_DATA_0_net_5;
wire   [7:0]     TX_DATA_0_net_17;
wire   [7:0]     TX_DATA_1_net_3;
wire   [7:0]     TX_DATA_2_net_3;
wire   [7:0]     TX_DATA_3_net_2;
wire   [7:0]     TX_DATA_4_net_2;
wire   [7:0]     TX_DATA_5_net_2;
wire   [7:0]     TX_DATA_6_net_2;
wire   [7:0]     TX_DATA_7_net_2;
wire   [3:0]     OE_DATA_0_net_6;
wire   [3:0]     OE_DATA_1_net_1;
wire   [3:0]     OE_DATA_2_net_1;
wire   [3:0]     OE_DATA_3_net_1;
wire   [3:0]     OE_DATA_4_net_1;
wire   [3:0]     OE_DATA_5_net_1;
wire   [3:0]     OE_DATA_6_net_1;
wire   [3:0]     OE_DATA_7_net_1;
wire   [3:0]     OE_DATA_0_net_7;
wire   [7:0]     TX_DATA_0_net_18;
wire   [3:0]     OE_DATA_0_net_8;
wire   [15:0]    DFI_ADDRESS_P0;
wire   [2:0]     DFI_BANK_P0;
wire   [15:0]    DFI_ADDRESS_P1;
wire   [2:0]     DFI_BANK_P1;
wire   [15:0]    DFI_ADDRESS_P2;
wire   [2:0]     DFI_BANK_P2;
wire   [15:0]    DFI_ADDRESS_P3;
wire   [2:0]     DFI_BANK_P3;
wire   [15:0]    DFI_WRDATA_EN_P0;
wire   [3:0]     DFI_WRDATA_MASK_P0;
wire   [31:0]    DFI_WRDATA_P0;
wire   [15:0]    DFI_WRDATA_EN_P1;
wire   [3:0]     DFI_WRDATA_MASK_P1;
wire   [31:0]    DFI_WRDATA_P1;
wire   [15:0]    DFI_WRDATA_EN_P2;
wire   [3:0]     DFI_WRDATA_MASK_P2;
wire   [31:0]    DFI_WRDATA_P2;
wire   [15:0]    DFI_WRDATA_EN_P3;
wire   [3:0]     DFI_WRDATA_MASK_P3;
wire   [31:0]    DFI_WRDATA_P3;
wire   [15:0]    DFI_RDDATA_EN_P0;
wire   [15:0]    DFI_RDDATA_EN_P1;
wire   [15:0]    DFI_RDDATA_EN_P2;
wire   [15:0]    DFI_RDDATA_EN_P3;
wire   [11:0]    PAD_O_net_0;
wire   [3:0]     RX_DATA_0_net_0;
wire   [7:0]     RX_DATA_0_net_1;
wire   [7:0]     RX_DATA_0_net_2;
wire   [1:0]     BURST_DETECT_net_0;
wire   [5:0]     CLK_SEL_net_0;
wire   [1:0]     DELAY_LINE_SEL_RD_net_0;
wire   [17:0]    DIRECTION_net_0;
wire   [1:0]     IOG_OE_P0_net_0;
wire   [1:0]     IOG_OE_P1_net_0;
wire   [1:0]     IOG_OE_P2_net_0;
wire   [1:0]     IOG_OE_P3_net_0;
wire   [1:0]     DQS_OE_P0_net_0;
wire   [1:0]     DQS_OE_P1_net_0;
wire   [1:0]     DQS_OE_P2_net_0;
wire   [1:0]     DQS_OE_P3_net_0;
wire   [1:0]     DM_OE_P0_net_0;
wire   [1:0]     DM_OE_P1_net_0;
wire   [1:0]     DM_OE_P2_net_0;
wire   [1:0]     DM_OE_P3_net_0;
wire   [17:0]    LOAD_net_0;
wire   [17:0]    MOVE_net_0;
wire   [17:0]    RX_OUT_OF_RANGE_net_0;
wire   [17:0]    TX_OUT_OF_RANGE_net_0;
wire   [1:0]     ODT_DYN_LANE_net_0;
wire   [127:0]   IOG_RDDATA_net_0;
wire   [1:0]     IOG_RDDATA_VALID_net_0;
wire   [15:0]    PAD_RDDATA_net_0;
wire   [1:0]     IOG_RDDATA_EN_P0_P_net_0;
wire   [1:0]     IOG_RDDATA_EN_P0_N_net_0;
wire   [1:0]     IOG_RDDATA_EN_P1_P_net_0;
wire   [1:0]     IOG_RDDATA_EN_P1_N_net_0;
wire   [1:0]     IOG_RDDATA_EN_P2_P_net_0;
wire   [1:0]     IOG_RDDATA_EN_P2_N_net_0;
wire   [1:0]     IOG_RDDATA_EN_P3_P_net_0;
wire   [1:0]     IOG_RDDATA_EN_P3_N_net_0;
wire   [1:0]     DQSW_EYE_MONITOR_CLR_FLAGS_net_0;
wire   [1:0]     DQSW_EYE_MONITOR_EARLY_net_0;
wire   [1:0]     DQSW_EYE_MONITOR_LATE_net_0;
wire   [1:0]     DQSW270_EYE_MONITOR_CLR_FLAGS_net_0;
wire   [1:0]     DQSW270_EYE_MONITOR_EARLY_net_0;
wire   [1:0]     DQSW270_EYE_MONITOR_LATE_net_0;
wire   [1:0]     DQSW_DELAY_LINE_LOAD_net_0;
wire   [1:0]     DQSW_DELAY_LINE_MOVE_net_0;
wire   [1:0]     DQSW_DELAY_LINE_DIRECTION_net_0;
wire   [1:0]     DQSW270_DELAY_LINE_LOAD_net_0;
wire   [1:0]     DQSW270_DELAY_LINE_MOVE_net_0;
wire   [1:0]     DQSW270_DELAY_LINE_DIRECTION_net_0;
wire   [15:0]    DQSW_SELA_net_0;
wire   [1:0]     DQSW270_IGEAR_RX8_net_0;
wire   [1:0]     DQSW_DELAY_LINE_OOR_net_0;
wire   [1:0]     DQSW270_DELAY_LINE_OOR_net_0;
wire   [1:0]     INIT_PAUSE_net_0;
wire   [19:0]    DFI_ADDRESS_P0_net_0;
wire   [19:0]    DFI_ADDRESS_P1_net_0;
wire   [19:0]    DFI_ADDRESS_P2_net_0;
wire   [19:0]    DFI_ADDRESS_P3_net_0;
wire   [3:0]     IOG_WRDATA_MASK_P0_net_0;
wire   [3:0]     IOG_WRDATA_MASK_P1_net_0;
wire   [3:0]     IOG_WRDATA_MASK_P2_net_0;
wire   [3:0]     IOG_WRDATA_MASK_P3_net_0;
wire   [19:0]    IOG_ADDRESS_P0_net_0;
wire   [19:0]    IOG_ADDRESS_P1_net_0;
wire   [19:0]    IOG_ADDRESS_P2_net_0;
wire   [19:0]    IOG_ADDRESS_P3_net_0;
wire   [3:0]     BCLK_IGEAR_RX_net_0;
wire   [3:0]     DQSW270_IGEAR_RX_net_0;
wire   [3:0]     DQSW_IGEAR_RX_net_0;
wire   [127:0]   IOG_DQ_TXDATA_IN_net_0;
wire   [127:0]   IOG_DQ_TXDATA_OUT_net_0;
wire   [15:0]    IOG_DM_TXDATA_IN_net_0;
wire   [15:0]    IOG_DM_TXDATA_OUT_net_0;
wire   [3:0]     DFI_BANK_P0_net_0;
wire   [3:0]     DFI_BANK_P1_net_0;
wire   [3:0]     DFI_BANK_P2_net_0;
wire   [3:0]     DFI_BANK_P3_net_0;
wire   [3:0]     DFI_BANK_P0_OUT_net_0;
wire   [3:0]     DFI_BANK_P1_OUT_net_0;
wire   [3:0]     DFI_BANK_P2_OUT_net_0;
wire   [3:0]     DFI_BANK_P3_OUT_net_0;
wire   [7:0]     RX_DATA_0_net_3;
wire   [7:0]     RX_DATA_1_net_0;
wire   [7:0]     RX_DATA_2_net_0;
wire   [7:0]     RX_DATA_3_net_0;
wire   [7:0]     RX_DATA_4_net_0;
wire   [7:0]     RX_DATA_5_net_0;
wire   [7:0]     RX_DATA_6_net_0;
wire   [7:0]     RX_DATA_7_net_0;
wire   [7:0]     PAD_net_0;
wire   [1:0]     RX_DATA_0_net_4;
wire   [7:0]     RX_DATA_0_net_5;
wire   [7:0]     RX_DATA_0_net_6;
wire   [7:0]     RX_DATA_1_net_1;
wire   [7:0]     RX_DATA_2_net_1;
wire   [7:0]     RX_DATA_3_net_1;
wire   [7:0]     RX_DATA_4_net_1;
wire   [7:0]     RX_DATA_5_net_1;
wire   [7:0]     RX_DATA_6_net_1;
wire   [7:0]     RX_DATA_7_net_1;
wire   [7:0]     PAD_net_1;
wire   [1:0]     RX_DATA_0_net_7;
wire   [7:0]     RX_DATA_0_net_8;
//--------------------------------------------------------------------
// TiedOff Nets
//--------------------------------------------------------------------
wire   [1:0]     DFI_CALVL_RESP_const_net_0;
wire             VCC_net;
wire             GND_net;
wire   [1:0]     DFI_PHYUPD_TYPE_const_net_0;
wire   [3:0]     OE_DATA_0_const_net_0;
wire   [3:0]     OE_DATA_1_const_net_0;
wire   [3:0]     OE_DATA_2_const_net_0;
wire   [3:0]     OE_DATA_3_const_net_0;
wire   [3:0]     OE_DATA_4_const_net_0;
wire   [3:0]     OE_DATA_5_const_net_0;
wire   [3:0]     OE_DATA_6_const_net_0;
wire   [3:0]     OE_DATA_7_const_net_0;
wire   [3:0]     OE_DATA_8_const_net_0;
wire   [3:0]     OE_DATA_9_const_net_0;
wire   [3:0]     OE_DATA_10_const_net_0;
wire   [3:0]     OE_DATA_11_const_net_0;
wire   [3:0]     OE_DATA_0_const_net_1;
wire   [3:0]     OE_DATA_0_const_net_2;
wire   [3:0]     OE_DATA_0_const_net_3;
wire   [3:0]     OE_DATA_0_const_net_4;
wire   [3:0]     OE_DATA_1_const_net_1;
wire   [3:0]     OE_DATA_2_const_net_1;
wire   [3:0]     OE_DATA_0_const_net_5;
wire   [3:0]     OE_DATA_0_const_net_6;
wire   [3:0]     OE_DATA_0_const_net_7;
wire   [3:0]     OE_DATA_0_const_net_8;
wire   [3:0]     OE_DATA_0_const_net_9;
wire   [3:0]     OE_DATA_0_const_net_10;
wire   [7:0]     TRAINING_PATTERN_const_net_0;
wire   [6:0]     VREF_MR6_VALUE_const_net_0;
wire   [3:0]     OE_DATA_0_const_net_11;
wire   [2:0]     EYE_MONITOR_WIDTH_IN_const_net_0;
wire   [7:0]     TX_DATA_0_const_net_0;
wire   [1:0]     TX_DATA_0_const_net_1;
wire   [1:0]     OE_DATA_0_const_net_12;
wire   [2:0]     EYE_MONITOR_WIDTH_IN_const_net_1;
wire   [7:0]     TX_DATA_0_const_net_2;
wire   [1:0]     TX_DATA_0_const_net_3;
wire   [1:0]     OE_DATA_0_const_net_13;
wire   [1:0]     RX_DQS_90_const_net_0;
wire   [2:0]     FIFO_WR_PTR_const_net_0;
wire   [2:0]     FIFO_RD_PTR_const_net_0;
wire   [2:0]     EYE_MONITOR_LANE_WIDTH_const_net_0;
wire   [3:0]     TX_DATA_12_const_net_0;
wire   [3:0]     TX_DATA_13_const_net_0;
wire   [3:0]     TX_DATA_14_const_net_0;
wire   [3:0]     TX_DATA_15_const_net_0;
wire   [3:0]     TX_DATA_16_const_net_0;
wire   [3:0]     TX_DATA_17_const_net_0;
wire   [3:0]     TX_DATA_18_const_net_0;
wire   [3:0]     TX_DATA_19_const_net_0;
wire   [3:0]     TX_DATA_20_const_net_0;
wire   [3:0]     TX_DATA_21_const_net_0;
wire   [3:0]     TX_DATA_22_const_net_0;
wire   [3:0]     TX_DATA_23_const_net_0;
wire   [3:0]     TX_DATA_24_const_net_0;
wire   [3:0]     TX_DATA_25_const_net_0;
wire   [3:0]     TX_DATA_26_const_net_0;
wire   [3:0]     TX_DATA_27_const_net_0;
wire   [3:0]     TX_DATA_28_const_net_0;
wire   [3:0]     TX_DATA_29_const_net_0;
wire   [3:0]     TX_DATA_30_const_net_0;
wire   [3:0]     TX_DATA_31_const_net_0;
wire   [3:0]     TX_DATA_32_const_net_0;
wire   [3:0]     TX_DATA_33_const_net_0;
wire   [3:0]     TX_DATA_34_const_net_0;
wire   [3:0]     TX_DATA_35_const_net_0;
wire   [3:0]     TX_DATA_36_const_net_0;
wire   [3:0]     TX_DATA_37_const_net_0;
wire   [3:0]     TX_DATA_38_const_net_0;
wire   [3:0]     TX_DATA_39_const_net_0;
wire   [3:0]     TX_DATA_40_const_net_0;
wire   [3:0]     TX_DATA_41_const_net_0;
wire   [3:0]     TX_DATA_42_const_net_0;
wire   [3:0]     TX_DATA_43_const_net_0;
wire   [3:0]     TX_DATA_44_const_net_0;
wire   [3:0]     TX_DATA_45_const_net_0;
wire   [3:0]     TX_DATA_46_const_net_0;
wire   [3:0]     TX_DATA_47_const_net_0;
wire   [3:0]     TX_DATA_48_const_net_0;
wire   [3:0]     TX_DATA_49_const_net_0;
wire   [3:0]     TX_DATA_50_const_net_0;
wire   [3:0]     TX_DATA_51_const_net_0;
wire   [3:0]     TX_DATA_52_const_net_0;
wire   [3:0]     TX_DATA_53_const_net_0;
wire   [3:0]     TX_DATA_54_const_net_0;
wire   [3:0]     TX_DATA_55_const_net_0;
wire   [3:0]     TX_DATA_56_const_net_0;
wire   [3:0]     TX_DATA_57_const_net_0;
wire   [3:0]     TX_DATA_58_const_net_0;
wire   [3:0]     TX_DATA_59_const_net_0;
wire   [3:0]     TX_DATA_60_const_net_0;
wire   [3:0]     TX_DATA_61_const_net_0;
wire   [3:0]     TX_DATA_62_const_net_0;
wire   [3:0]     TX_DATA_63_const_net_0;
wire   [3:0]     OE_DATA_12_const_net_0;
wire   [3:0]     OE_DATA_13_const_net_0;
wire   [3:0]     OE_DATA_14_const_net_0;
wire   [3:0]     OE_DATA_15_const_net_0;
wire   [3:0]     OE_DATA_16_const_net_0;
wire   [3:0]     OE_DATA_17_const_net_0;
wire   [3:0]     OE_DATA_18_const_net_0;
wire   [3:0]     OE_DATA_19_const_net_0;
wire   [3:0]     OE_DATA_20_const_net_0;
wire   [3:0]     OE_DATA_21_const_net_0;
wire   [3:0]     OE_DATA_22_const_net_0;
wire   [3:0]     OE_DATA_23_const_net_0;
wire   [3:0]     OE_DATA_24_const_net_0;
wire   [3:0]     OE_DATA_25_const_net_0;
wire   [3:0]     OE_DATA_26_const_net_0;
wire   [3:0]     OE_DATA_27_const_net_0;
wire   [3:0]     OE_DATA_28_const_net_0;
wire   [3:0]     OE_DATA_29_const_net_0;
wire   [3:0]     OE_DATA_30_const_net_0;
wire   [3:0]     OE_DATA_31_const_net_0;
wire   [3:0]     OE_DATA_32_const_net_0;
wire   [3:0]     OE_DATA_33_const_net_0;
wire   [3:0]     OE_DATA_34_const_net_0;
wire   [3:0]     OE_DATA_35_const_net_0;
wire   [3:0]     OE_DATA_36_const_net_0;
wire   [3:0]     OE_DATA_37_const_net_0;
wire   [3:0]     OE_DATA_38_const_net_0;
wire   [3:0]     OE_DATA_39_const_net_0;
wire   [3:0]     OE_DATA_40_const_net_0;
wire   [3:0]     OE_DATA_41_const_net_0;
wire   [3:0]     OE_DATA_42_const_net_0;
wire   [3:0]     OE_DATA_43_const_net_0;
wire   [3:0]     OE_DATA_44_const_net_0;
wire   [3:0]     OE_DATA_45_const_net_0;
wire   [3:0]     OE_DATA_46_const_net_0;
wire   [3:0]     OE_DATA_47_const_net_0;
wire   [3:0]     OE_DATA_48_const_net_0;
wire   [3:0]     OE_DATA_49_const_net_0;
wire   [3:0]     OE_DATA_50_const_net_0;
wire   [3:0]     OE_DATA_51_const_net_0;
wire   [3:0]     OE_DATA_52_const_net_0;
wire   [3:0]     OE_DATA_53_const_net_0;
wire   [3:0]     OE_DATA_54_const_net_0;
wire   [3:0]     OE_DATA_55_const_net_0;
wire   [3:0]     OE_DATA_56_const_net_0;
wire   [3:0]     OE_DATA_57_const_net_0;
wire   [3:0]     OE_DATA_58_const_net_0;
wire   [3:0]     OE_DATA_59_const_net_0;
wire   [3:0]     OE_DATA_60_const_net_0;
wire   [3:0]     OE_DATA_61_const_net_0;
wire   [3:0]     OE_DATA_62_const_net_0;
wire   [3:0]     OE_DATA_63_const_net_0;
wire   [11:0]    PAD_const_net_0;
wire   [11:0]    PAD_I_const_net_0;
wire   [11:0]    PAD_N_const_net_0;
wire   [11:0]    PAD_I_N_const_net_0;
wire   [1:0]     RX_DQS_90_const_net_1;
wire   [2:0]     FIFO_WR_PTR_const_net_1;
wire   [2:0]     FIFO_RD_PTR_const_net_1;
wire   [2:0]     EYE_MONITOR_LANE_WIDTH_const_net_1;
wire   [3:0]     TX_DATA_1_const_net_0;
wire   [3:0]     TX_DATA_2_const_net_0;
wire   [3:0]     TX_DATA_3_const_net_0;
wire   [3:0]     TX_DATA_4_const_net_0;
wire   [3:0]     TX_DATA_5_const_net_0;
wire   [3:0]     TX_DATA_6_const_net_0;
wire   [3:0]     TX_DATA_7_const_net_0;
wire   [3:0]     TX_DATA_8_const_net_0;
wire   [3:0]     TX_DATA_9_const_net_0;
wire   [3:0]     TX_DATA_10_const_net_0;
wire   [3:0]     TX_DATA_11_const_net_0;
wire   [3:0]     TX_DATA_12_const_net_1;
wire   [3:0]     TX_DATA_13_const_net_1;
wire   [3:0]     TX_DATA_14_const_net_1;
wire   [3:0]     TX_DATA_15_const_net_1;
wire   [3:0]     TX_DATA_16_const_net_1;
wire   [3:0]     TX_DATA_17_const_net_1;
wire   [3:0]     TX_DATA_18_const_net_1;
wire   [3:0]     TX_DATA_19_const_net_1;
wire   [3:0]     TX_DATA_20_const_net_1;
wire   [3:0]     TX_DATA_21_const_net_1;
wire   [3:0]     TX_DATA_22_const_net_1;
wire   [3:0]     TX_DATA_23_const_net_1;
wire   [3:0]     TX_DATA_24_const_net_1;
wire   [3:0]     TX_DATA_25_const_net_1;
wire   [3:0]     TX_DATA_26_const_net_1;
wire   [3:0]     TX_DATA_27_const_net_1;
wire   [3:0]     TX_DATA_28_const_net_1;
wire   [3:0]     TX_DATA_29_const_net_1;
wire   [3:0]     TX_DATA_30_const_net_1;
wire   [3:0]     TX_DATA_31_const_net_1;
wire   [3:0]     TX_DATA_32_const_net_1;
wire   [3:0]     TX_DATA_33_const_net_1;
wire   [3:0]     TX_DATA_34_const_net_1;
wire   [3:0]     TX_DATA_35_const_net_1;
wire   [3:0]     TX_DATA_36_const_net_1;
wire   [3:0]     TX_DATA_37_const_net_1;
wire   [3:0]     TX_DATA_38_const_net_1;
wire   [3:0]     TX_DATA_39_const_net_1;
wire   [3:0]     TX_DATA_40_const_net_1;
wire   [3:0]     TX_DATA_41_const_net_1;
wire   [3:0]     TX_DATA_42_const_net_1;
wire   [3:0]     TX_DATA_43_const_net_1;
wire   [3:0]     TX_DATA_44_const_net_1;
wire   [3:0]     TX_DATA_45_const_net_1;
wire   [3:0]     TX_DATA_46_const_net_1;
wire   [3:0]     TX_DATA_47_const_net_1;
wire   [3:0]     TX_DATA_48_const_net_1;
wire   [3:0]     TX_DATA_49_const_net_1;
wire   [3:0]     TX_DATA_50_const_net_1;
wire   [3:0]     TX_DATA_51_const_net_1;
wire   [3:0]     TX_DATA_52_const_net_1;
wire   [3:0]     TX_DATA_53_const_net_1;
wire   [3:0]     TX_DATA_54_const_net_1;
wire   [3:0]     TX_DATA_55_const_net_1;
wire   [3:0]     TX_DATA_56_const_net_1;
wire   [3:0]     TX_DATA_57_const_net_1;
wire   [3:0]     TX_DATA_58_const_net_1;
wire   [3:0]     TX_DATA_59_const_net_1;
wire   [3:0]     TX_DATA_60_const_net_1;
wire   [3:0]     TX_DATA_61_const_net_1;
wire   [3:0]     TX_DATA_62_const_net_1;
wire   [3:0]     TX_DATA_63_const_net_1;
wire   [3:0]     OE_DATA_1_const_net_2;
wire   [3:0]     OE_DATA_2_const_net_2;
wire   [3:0]     OE_DATA_3_const_net_1;
wire   [3:0]     OE_DATA_4_const_net_1;
wire   [3:0]     OE_DATA_5_const_net_1;
wire   [3:0]     OE_DATA_6_const_net_1;
wire   [3:0]     OE_DATA_7_const_net_1;
wire   [3:0]     OE_DATA_8_const_net_1;
wire   [3:0]     OE_DATA_9_const_net_1;
wire   [3:0]     OE_DATA_10_const_net_1;
wire   [3:0]     OE_DATA_11_const_net_1;
wire   [3:0]     OE_DATA_12_const_net_1;
wire   [3:0]     OE_DATA_13_const_net_1;
wire   [3:0]     OE_DATA_14_const_net_1;
wire   [3:0]     OE_DATA_15_const_net_1;
wire   [3:0]     OE_DATA_16_const_net_1;
wire   [3:0]     OE_DATA_17_const_net_1;
wire   [3:0]     OE_DATA_18_const_net_1;
wire   [3:0]     OE_DATA_19_const_net_1;
wire   [3:0]     OE_DATA_20_const_net_1;
wire   [3:0]     OE_DATA_21_const_net_1;
wire   [3:0]     OE_DATA_22_const_net_1;
wire   [3:0]     OE_DATA_23_const_net_1;
wire   [3:0]     OE_DATA_24_const_net_1;
wire   [3:0]     OE_DATA_25_const_net_1;
wire   [3:0]     OE_DATA_26_const_net_1;
wire   [3:0]     OE_DATA_27_const_net_1;
wire   [3:0]     OE_DATA_28_const_net_1;
wire   [3:0]     OE_DATA_29_const_net_1;
wire   [3:0]     OE_DATA_30_const_net_1;
wire   [3:0]     OE_DATA_31_const_net_1;
wire   [3:0]     OE_DATA_32_const_net_1;
wire   [3:0]     OE_DATA_33_const_net_1;
wire   [3:0]     OE_DATA_34_const_net_1;
wire   [3:0]     OE_DATA_35_const_net_1;
wire   [3:0]     OE_DATA_36_const_net_1;
wire   [3:0]     OE_DATA_37_const_net_1;
wire   [3:0]     OE_DATA_38_const_net_1;
wire   [3:0]     OE_DATA_39_const_net_1;
wire   [3:0]     OE_DATA_40_const_net_1;
wire   [3:0]     OE_DATA_41_const_net_1;
wire   [3:0]     OE_DATA_42_const_net_1;
wire   [3:0]     OE_DATA_43_const_net_1;
wire   [3:0]     OE_DATA_44_const_net_1;
wire   [3:0]     OE_DATA_45_const_net_1;
wire   [3:0]     OE_DATA_46_const_net_1;
wire   [3:0]     OE_DATA_47_const_net_1;
wire   [3:0]     OE_DATA_48_const_net_1;
wire   [3:0]     OE_DATA_49_const_net_1;
wire   [3:0]     OE_DATA_50_const_net_1;
wire   [3:0]     OE_DATA_51_const_net_1;
wire   [3:0]     OE_DATA_52_const_net_1;
wire   [3:0]     OE_DATA_53_const_net_1;
wire   [3:0]     OE_DATA_54_const_net_1;
wire   [3:0]     OE_DATA_55_const_net_1;
wire   [3:0]     OE_DATA_56_const_net_1;
wire   [3:0]     OE_DATA_57_const_net_1;
wire   [3:0]     OE_DATA_58_const_net_1;
wire   [3:0]     OE_DATA_59_const_net_1;
wire   [3:0]     OE_DATA_60_const_net_1;
wire   [3:0]     OE_DATA_61_const_net_1;
wire   [3:0]     OE_DATA_62_const_net_1;
wire   [3:0]     OE_DATA_63_const_net_1;
wire   [1:0]     RX_DQS_90_const_net_2;
wire   [2:0]     FIFO_WR_PTR_const_net_2;
wire   [2:0]     FIFO_RD_PTR_const_net_2;
wire   [2:0]     EYE_MONITOR_LANE_WIDTH_const_net_2;
wire   [3:0]     TX_DATA_1_const_net_1;
wire   [3:0]     TX_DATA_2_const_net_1;
wire   [3:0]     TX_DATA_3_const_net_1;
wire   [3:0]     TX_DATA_4_const_net_1;
wire   [3:0]     TX_DATA_5_const_net_1;
wire   [3:0]     TX_DATA_6_const_net_1;
wire   [3:0]     TX_DATA_7_const_net_1;
wire   [3:0]     TX_DATA_8_const_net_1;
wire   [3:0]     TX_DATA_9_const_net_1;
wire   [3:0]     TX_DATA_10_const_net_1;
wire   [3:0]     TX_DATA_11_const_net_1;
wire   [3:0]     TX_DATA_12_const_net_2;
wire   [3:0]     TX_DATA_13_const_net_2;
wire   [3:0]     TX_DATA_14_const_net_2;
wire   [3:0]     TX_DATA_15_const_net_2;
wire   [3:0]     TX_DATA_16_const_net_2;
wire   [3:0]     TX_DATA_17_const_net_2;
wire   [3:0]     TX_DATA_18_const_net_2;
wire   [3:0]     TX_DATA_19_const_net_2;
wire   [3:0]     TX_DATA_20_const_net_2;
wire   [3:0]     TX_DATA_21_const_net_2;
wire   [3:0]     TX_DATA_22_const_net_2;
wire   [3:0]     TX_DATA_23_const_net_2;
wire   [3:0]     TX_DATA_24_const_net_2;
wire   [3:0]     TX_DATA_25_const_net_2;
wire   [3:0]     TX_DATA_26_const_net_2;
wire   [3:0]     TX_DATA_27_const_net_2;
wire   [3:0]     TX_DATA_28_const_net_2;
wire   [3:0]     TX_DATA_29_const_net_2;
wire   [3:0]     TX_DATA_30_const_net_2;
wire   [3:0]     TX_DATA_31_const_net_2;
wire   [3:0]     TX_DATA_32_const_net_2;
wire   [3:0]     TX_DATA_33_const_net_2;
wire   [3:0]     TX_DATA_34_const_net_2;
wire   [3:0]     TX_DATA_35_const_net_2;
wire   [3:0]     TX_DATA_36_const_net_2;
wire   [3:0]     TX_DATA_37_const_net_2;
wire   [3:0]     TX_DATA_38_const_net_2;
wire   [3:0]     TX_DATA_39_const_net_2;
wire   [3:0]     TX_DATA_40_const_net_2;
wire   [3:0]     TX_DATA_41_const_net_2;
wire   [3:0]     TX_DATA_42_const_net_2;
wire   [3:0]     TX_DATA_43_const_net_2;
wire   [3:0]     TX_DATA_44_const_net_2;
wire   [3:0]     TX_DATA_45_const_net_2;
wire   [3:0]     TX_DATA_46_const_net_2;
wire   [3:0]     TX_DATA_47_const_net_2;
wire   [3:0]     TX_DATA_48_const_net_2;
wire   [3:0]     TX_DATA_49_const_net_2;
wire   [3:0]     TX_DATA_50_const_net_2;
wire   [3:0]     TX_DATA_51_const_net_2;
wire   [3:0]     TX_DATA_52_const_net_2;
wire   [3:0]     TX_DATA_53_const_net_2;
wire   [3:0]     TX_DATA_54_const_net_2;
wire   [3:0]     TX_DATA_55_const_net_2;
wire   [3:0]     TX_DATA_56_const_net_2;
wire   [3:0]     TX_DATA_57_const_net_2;
wire   [3:0]     TX_DATA_58_const_net_2;
wire   [3:0]     TX_DATA_59_const_net_2;
wire   [3:0]     TX_DATA_60_const_net_2;
wire   [3:0]     TX_DATA_61_const_net_2;
wire   [3:0]     TX_DATA_62_const_net_2;
wire   [3:0]     TX_DATA_63_const_net_2;
wire   [3:0]     OE_DATA_1_const_net_3;
wire   [3:0]     OE_DATA_2_const_net_3;
wire   [3:0]     OE_DATA_3_const_net_2;
wire   [3:0]     OE_DATA_4_const_net_2;
wire   [3:0]     OE_DATA_5_const_net_2;
wire   [3:0]     OE_DATA_6_const_net_2;
wire   [3:0]     OE_DATA_7_const_net_2;
wire   [3:0]     OE_DATA_8_const_net_2;
wire   [3:0]     OE_DATA_9_const_net_2;
wire   [3:0]     OE_DATA_10_const_net_2;
wire   [3:0]     OE_DATA_11_const_net_2;
wire   [3:0]     OE_DATA_12_const_net_2;
wire   [3:0]     OE_DATA_13_const_net_2;
wire   [3:0]     OE_DATA_14_const_net_2;
wire   [3:0]     OE_DATA_15_const_net_2;
wire   [3:0]     OE_DATA_16_const_net_2;
wire   [3:0]     OE_DATA_17_const_net_2;
wire   [3:0]     OE_DATA_18_const_net_2;
wire   [3:0]     OE_DATA_19_const_net_2;
wire   [3:0]     OE_DATA_20_const_net_2;
wire   [3:0]     OE_DATA_21_const_net_2;
wire   [3:0]     OE_DATA_22_const_net_2;
wire   [3:0]     OE_DATA_23_const_net_2;
wire   [3:0]     OE_DATA_24_const_net_2;
wire   [3:0]     OE_DATA_25_const_net_2;
wire   [3:0]     OE_DATA_26_const_net_2;
wire   [3:0]     OE_DATA_27_const_net_2;
wire   [3:0]     OE_DATA_28_const_net_2;
wire   [3:0]     OE_DATA_29_const_net_2;
wire   [3:0]     OE_DATA_30_const_net_2;
wire   [3:0]     OE_DATA_31_const_net_2;
wire   [3:0]     OE_DATA_32_const_net_2;
wire   [3:0]     OE_DATA_33_const_net_2;
wire   [3:0]     OE_DATA_34_const_net_2;
wire   [3:0]     OE_DATA_35_const_net_2;
wire   [3:0]     OE_DATA_36_const_net_2;
wire   [3:0]     OE_DATA_37_const_net_2;
wire   [3:0]     OE_DATA_38_const_net_2;
wire   [3:0]     OE_DATA_39_const_net_2;
wire   [3:0]     OE_DATA_40_const_net_2;
wire   [3:0]     OE_DATA_41_const_net_2;
wire   [3:0]     OE_DATA_42_const_net_2;
wire   [3:0]     OE_DATA_43_const_net_2;
wire   [3:0]     OE_DATA_44_const_net_2;
wire   [3:0]     OE_DATA_45_const_net_2;
wire   [3:0]     OE_DATA_46_const_net_2;
wire   [3:0]     OE_DATA_47_const_net_2;
wire   [3:0]     OE_DATA_48_const_net_2;
wire   [3:0]     OE_DATA_49_const_net_2;
wire   [3:0]     OE_DATA_50_const_net_2;
wire   [3:0]     OE_DATA_51_const_net_2;
wire   [3:0]     OE_DATA_52_const_net_2;
wire   [3:0]     OE_DATA_53_const_net_2;
wire   [3:0]     OE_DATA_54_const_net_2;
wire   [3:0]     OE_DATA_55_const_net_2;
wire   [3:0]     OE_DATA_56_const_net_2;
wire   [3:0]     OE_DATA_57_const_net_2;
wire   [3:0]     OE_DATA_58_const_net_2;
wire   [3:0]     OE_DATA_59_const_net_2;
wire   [3:0]     OE_DATA_60_const_net_2;
wire   [3:0]     OE_DATA_61_const_net_2;
wire   [3:0]     OE_DATA_62_const_net_2;
wire   [3:0]     OE_DATA_63_const_net_2;
wire   [1:0]     RX_DQS_90_const_net_3;
wire   [2:0]     FIFO_WR_PTR_const_net_3;
wire   [2:0]     FIFO_RD_PTR_const_net_3;
wire   [2:0]     EYE_MONITOR_LANE_WIDTH_const_net_3;
wire   [3:0]     TX_DATA_1_const_net_2;
wire   [3:0]     TX_DATA_2_const_net_2;
wire   [3:0]     TX_DATA_3_const_net_2;
wire   [3:0]     TX_DATA_4_const_net_2;
wire   [3:0]     TX_DATA_5_const_net_2;
wire   [3:0]     TX_DATA_6_const_net_2;
wire   [3:0]     TX_DATA_7_const_net_2;
wire   [3:0]     TX_DATA_8_const_net_2;
wire   [3:0]     TX_DATA_9_const_net_2;
wire   [3:0]     TX_DATA_10_const_net_2;
wire   [3:0]     TX_DATA_11_const_net_2;
wire   [3:0]     TX_DATA_12_const_net_3;
wire   [3:0]     TX_DATA_13_const_net_3;
wire   [3:0]     TX_DATA_14_const_net_3;
wire   [3:0]     TX_DATA_15_const_net_3;
wire   [3:0]     TX_DATA_16_const_net_3;
wire   [3:0]     TX_DATA_17_const_net_3;
wire   [3:0]     TX_DATA_18_const_net_3;
wire   [3:0]     TX_DATA_19_const_net_3;
wire   [3:0]     TX_DATA_20_const_net_3;
wire   [3:0]     TX_DATA_21_const_net_3;
wire   [3:0]     TX_DATA_22_const_net_3;
wire   [3:0]     TX_DATA_23_const_net_3;
wire   [3:0]     TX_DATA_24_const_net_3;
wire   [3:0]     TX_DATA_25_const_net_3;
wire   [3:0]     TX_DATA_26_const_net_3;
wire   [3:0]     TX_DATA_27_const_net_3;
wire   [3:0]     TX_DATA_28_const_net_3;
wire   [3:0]     TX_DATA_29_const_net_3;
wire   [3:0]     TX_DATA_30_const_net_3;
wire   [3:0]     TX_DATA_31_const_net_3;
wire   [3:0]     TX_DATA_32_const_net_3;
wire   [3:0]     TX_DATA_33_const_net_3;
wire   [3:0]     TX_DATA_34_const_net_3;
wire   [3:0]     TX_DATA_35_const_net_3;
wire   [3:0]     TX_DATA_36_const_net_3;
wire   [3:0]     TX_DATA_37_const_net_3;
wire   [3:0]     TX_DATA_38_const_net_3;
wire   [3:0]     TX_DATA_39_const_net_3;
wire   [3:0]     TX_DATA_40_const_net_3;
wire   [3:0]     TX_DATA_41_const_net_3;
wire   [3:0]     TX_DATA_42_const_net_3;
wire   [3:0]     TX_DATA_43_const_net_3;
wire   [3:0]     TX_DATA_44_const_net_3;
wire   [3:0]     TX_DATA_45_const_net_3;
wire   [3:0]     TX_DATA_46_const_net_3;
wire   [3:0]     TX_DATA_47_const_net_3;
wire   [3:0]     TX_DATA_48_const_net_3;
wire   [3:0]     TX_DATA_49_const_net_3;
wire   [3:0]     TX_DATA_50_const_net_3;
wire   [3:0]     TX_DATA_51_const_net_3;
wire   [3:0]     TX_DATA_52_const_net_3;
wire   [3:0]     TX_DATA_53_const_net_3;
wire   [3:0]     TX_DATA_54_const_net_3;
wire   [3:0]     TX_DATA_55_const_net_3;
wire   [3:0]     TX_DATA_56_const_net_3;
wire   [3:0]     TX_DATA_57_const_net_3;
wire   [3:0]     TX_DATA_58_const_net_3;
wire   [3:0]     TX_DATA_59_const_net_3;
wire   [3:0]     TX_DATA_60_const_net_3;
wire   [3:0]     TX_DATA_61_const_net_3;
wire   [3:0]     TX_DATA_62_const_net_3;
wire   [3:0]     TX_DATA_63_const_net_3;
wire   [3:0]     OE_DATA_1_const_net_4;
wire   [3:0]     OE_DATA_2_const_net_4;
wire   [3:0]     OE_DATA_3_const_net_3;
wire   [3:0]     OE_DATA_4_const_net_3;
wire   [3:0]     OE_DATA_5_const_net_3;
wire   [3:0]     OE_DATA_6_const_net_3;
wire   [3:0]     OE_DATA_7_const_net_3;
wire   [3:0]     OE_DATA_8_const_net_3;
wire   [3:0]     OE_DATA_9_const_net_3;
wire   [3:0]     OE_DATA_10_const_net_3;
wire   [3:0]     OE_DATA_11_const_net_3;
wire   [3:0]     OE_DATA_12_const_net_3;
wire   [3:0]     OE_DATA_13_const_net_3;
wire   [3:0]     OE_DATA_14_const_net_3;
wire   [3:0]     OE_DATA_15_const_net_3;
wire   [3:0]     OE_DATA_16_const_net_3;
wire   [3:0]     OE_DATA_17_const_net_3;
wire   [3:0]     OE_DATA_18_const_net_3;
wire   [3:0]     OE_DATA_19_const_net_3;
wire   [3:0]     OE_DATA_20_const_net_3;
wire   [3:0]     OE_DATA_21_const_net_3;
wire   [3:0]     OE_DATA_22_const_net_3;
wire   [3:0]     OE_DATA_23_const_net_3;
wire   [3:0]     OE_DATA_24_const_net_3;
wire   [3:0]     OE_DATA_25_const_net_3;
wire   [3:0]     OE_DATA_26_const_net_3;
wire   [3:0]     OE_DATA_27_const_net_3;
wire   [3:0]     OE_DATA_28_const_net_3;
wire   [3:0]     OE_DATA_29_const_net_3;
wire   [3:0]     OE_DATA_30_const_net_3;
wire   [3:0]     OE_DATA_31_const_net_3;
wire   [3:0]     OE_DATA_32_const_net_3;
wire   [3:0]     OE_DATA_33_const_net_3;
wire   [3:0]     OE_DATA_34_const_net_3;
wire   [3:0]     OE_DATA_35_const_net_3;
wire   [3:0]     OE_DATA_36_const_net_3;
wire   [3:0]     OE_DATA_37_const_net_3;
wire   [3:0]     OE_DATA_38_const_net_3;
wire   [3:0]     OE_DATA_39_const_net_3;
wire   [3:0]     OE_DATA_40_const_net_3;
wire   [3:0]     OE_DATA_41_const_net_3;
wire   [3:0]     OE_DATA_42_const_net_3;
wire   [3:0]     OE_DATA_43_const_net_3;
wire   [3:0]     OE_DATA_44_const_net_3;
wire   [3:0]     OE_DATA_45_const_net_3;
wire   [3:0]     OE_DATA_46_const_net_3;
wire   [3:0]     OE_DATA_47_const_net_3;
wire   [3:0]     OE_DATA_48_const_net_3;
wire   [3:0]     OE_DATA_49_const_net_3;
wire   [3:0]     OE_DATA_50_const_net_3;
wire   [3:0]     OE_DATA_51_const_net_3;
wire   [3:0]     OE_DATA_52_const_net_3;
wire   [3:0]     OE_DATA_53_const_net_3;
wire   [3:0]     OE_DATA_54_const_net_3;
wire   [3:0]     OE_DATA_55_const_net_3;
wire   [3:0]     OE_DATA_56_const_net_3;
wire   [3:0]     OE_DATA_57_const_net_3;
wire   [3:0]     OE_DATA_58_const_net_3;
wire   [3:0]     OE_DATA_59_const_net_3;
wire   [3:0]     OE_DATA_60_const_net_3;
wire   [3:0]     OE_DATA_61_const_net_3;
wire   [3:0]     OE_DATA_62_const_net_3;
wire   [3:0]     OE_DATA_63_const_net_3;
wire   [1:0]     RX_DQS_90_const_net_4;
wire   [2:0]     FIFO_WR_PTR_const_net_4;
wire   [2:0]     FIFO_RD_PTR_const_net_4;
wire   [2:0]     EYE_MONITOR_LANE_WIDTH_const_net_4;
wire   [3:0]     TX_DATA_1_const_net_3;
wire   [3:0]     TX_DATA_2_const_net_3;
wire   [3:0]     TX_DATA_3_const_net_3;
wire   [3:0]     TX_DATA_4_const_net_3;
wire   [3:0]     TX_DATA_5_const_net_3;
wire   [3:0]     TX_DATA_6_const_net_3;
wire   [3:0]     TX_DATA_7_const_net_3;
wire   [3:0]     TX_DATA_8_const_net_3;
wire   [3:0]     TX_DATA_9_const_net_3;
wire   [3:0]     TX_DATA_10_const_net_3;
wire   [3:0]     TX_DATA_11_const_net_3;
wire   [3:0]     TX_DATA_12_const_net_4;
wire   [3:0]     TX_DATA_13_const_net_4;
wire   [3:0]     TX_DATA_14_const_net_4;
wire   [3:0]     TX_DATA_15_const_net_4;
wire   [3:0]     TX_DATA_16_const_net_4;
wire   [3:0]     TX_DATA_17_const_net_4;
wire   [3:0]     TX_DATA_18_const_net_4;
wire   [3:0]     TX_DATA_19_const_net_4;
wire   [3:0]     TX_DATA_20_const_net_4;
wire   [3:0]     TX_DATA_21_const_net_4;
wire   [3:0]     TX_DATA_22_const_net_4;
wire   [3:0]     TX_DATA_23_const_net_4;
wire   [3:0]     TX_DATA_24_const_net_4;
wire   [3:0]     TX_DATA_25_const_net_4;
wire   [3:0]     TX_DATA_26_const_net_4;
wire   [3:0]     TX_DATA_27_const_net_4;
wire   [3:0]     TX_DATA_28_const_net_4;
wire   [3:0]     TX_DATA_29_const_net_4;
wire   [3:0]     TX_DATA_30_const_net_4;
wire   [3:0]     TX_DATA_31_const_net_4;
wire   [3:0]     TX_DATA_32_const_net_4;
wire   [3:0]     TX_DATA_33_const_net_4;
wire   [3:0]     TX_DATA_34_const_net_4;
wire   [3:0]     TX_DATA_35_const_net_4;
wire   [3:0]     TX_DATA_36_const_net_4;
wire   [3:0]     TX_DATA_37_const_net_4;
wire   [3:0]     TX_DATA_38_const_net_4;
wire   [3:0]     TX_DATA_39_const_net_4;
wire   [3:0]     TX_DATA_40_const_net_4;
wire   [3:0]     TX_DATA_41_const_net_4;
wire   [3:0]     TX_DATA_42_const_net_4;
wire   [3:0]     TX_DATA_43_const_net_4;
wire   [3:0]     TX_DATA_44_const_net_4;
wire   [3:0]     TX_DATA_45_const_net_4;
wire   [3:0]     TX_DATA_46_const_net_4;
wire   [3:0]     TX_DATA_47_const_net_4;
wire   [3:0]     TX_DATA_48_const_net_4;
wire   [3:0]     TX_DATA_49_const_net_4;
wire   [3:0]     TX_DATA_50_const_net_4;
wire   [3:0]     TX_DATA_51_const_net_4;
wire   [3:0]     TX_DATA_52_const_net_4;
wire   [3:0]     TX_DATA_53_const_net_4;
wire   [3:0]     TX_DATA_54_const_net_4;
wire   [3:0]     TX_DATA_55_const_net_4;
wire   [3:0]     TX_DATA_56_const_net_4;
wire   [3:0]     TX_DATA_57_const_net_4;
wire   [3:0]     TX_DATA_58_const_net_4;
wire   [3:0]     TX_DATA_59_const_net_4;
wire   [3:0]     TX_DATA_60_const_net_4;
wire   [3:0]     TX_DATA_61_const_net_4;
wire   [3:0]     TX_DATA_62_const_net_4;
wire   [3:0]     TX_DATA_63_const_net_4;
wire   [3:0]     OE_DATA_1_const_net_5;
wire   [3:0]     OE_DATA_2_const_net_5;
wire   [3:0]     OE_DATA_3_const_net_4;
wire   [3:0]     OE_DATA_4_const_net_4;
wire   [3:0]     OE_DATA_5_const_net_4;
wire   [3:0]     OE_DATA_6_const_net_4;
wire   [3:0]     OE_DATA_7_const_net_4;
wire   [3:0]     OE_DATA_8_const_net_4;
wire   [3:0]     OE_DATA_9_const_net_4;
wire   [3:0]     OE_DATA_10_const_net_4;
wire   [3:0]     OE_DATA_11_const_net_4;
wire   [3:0]     OE_DATA_12_const_net_4;
wire   [3:0]     OE_DATA_13_const_net_4;
wire   [3:0]     OE_DATA_14_const_net_4;
wire   [3:0]     OE_DATA_15_const_net_4;
wire   [3:0]     OE_DATA_16_const_net_4;
wire   [3:0]     OE_DATA_17_const_net_4;
wire   [3:0]     OE_DATA_18_const_net_4;
wire   [3:0]     OE_DATA_19_const_net_4;
wire   [3:0]     OE_DATA_20_const_net_4;
wire   [3:0]     OE_DATA_21_const_net_4;
wire   [3:0]     OE_DATA_22_const_net_4;
wire   [3:0]     OE_DATA_23_const_net_4;
wire   [3:0]     OE_DATA_24_const_net_4;
wire   [3:0]     OE_DATA_25_const_net_4;
wire   [3:0]     OE_DATA_26_const_net_4;
wire   [3:0]     OE_DATA_27_const_net_4;
wire   [3:0]     OE_DATA_28_const_net_4;
wire   [3:0]     OE_DATA_29_const_net_4;
wire   [3:0]     OE_DATA_30_const_net_4;
wire   [3:0]     OE_DATA_31_const_net_4;
wire   [3:0]     OE_DATA_32_const_net_4;
wire   [3:0]     OE_DATA_33_const_net_4;
wire   [3:0]     OE_DATA_34_const_net_4;
wire   [3:0]     OE_DATA_35_const_net_4;
wire   [3:0]     OE_DATA_36_const_net_4;
wire   [3:0]     OE_DATA_37_const_net_4;
wire   [3:0]     OE_DATA_38_const_net_4;
wire   [3:0]     OE_DATA_39_const_net_4;
wire   [3:0]     OE_DATA_40_const_net_4;
wire   [3:0]     OE_DATA_41_const_net_4;
wire   [3:0]     OE_DATA_42_const_net_4;
wire   [3:0]     OE_DATA_43_const_net_4;
wire   [3:0]     OE_DATA_44_const_net_4;
wire   [3:0]     OE_DATA_45_const_net_4;
wire   [3:0]     OE_DATA_46_const_net_4;
wire   [3:0]     OE_DATA_47_const_net_4;
wire   [3:0]     OE_DATA_48_const_net_4;
wire   [3:0]     OE_DATA_49_const_net_4;
wire   [3:0]     OE_DATA_50_const_net_4;
wire   [3:0]     OE_DATA_51_const_net_4;
wire   [3:0]     OE_DATA_52_const_net_4;
wire   [3:0]     OE_DATA_53_const_net_4;
wire   [3:0]     OE_DATA_54_const_net_4;
wire   [3:0]     OE_DATA_55_const_net_4;
wire   [3:0]     OE_DATA_56_const_net_4;
wire   [3:0]     OE_DATA_57_const_net_4;
wire   [3:0]     OE_DATA_58_const_net_4;
wire   [3:0]     OE_DATA_59_const_net_4;
wire   [3:0]     OE_DATA_60_const_net_4;
wire   [3:0]     OE_DATA_61_const_net_4;
wire   [3:0]     OE_DATA_62_const_net_4;
wire   [3:0]     OE_DATA_63_const_net_4;
wire   [1:0]     RX_DQS_90_const_net_5;
wire   [2:0]     FIFO_WR_PTR_const_net_5;
wire   [2:0]     FIFO_RD_PTR_const_net_5;
wire   [2:0]     EYE_MONITOR_LANE_WIDTH_const_net_5;
wire   [3:0]     TX_DATA_3_const_net_4;
wire   [3:0]     TX_DATA_4_const_net_4;
wire   [3:0]     TX_DATA_5_const_net_4;
wire   [3:0]     TX_DATA_6_const_net_4;
wire   [3:0]     TX_DATA_7_const_net_4;
wire   [3:0]     TX_DATA_8_const_net_4;
wire   [3:0]     TX_DATA_9_const_net_4;
wire   [3:0]     TX_DATA_10_const_net_4;
wire   [3:0]     TX_DATA_11_const_net_4;
wire   [3:0]     TX_DATA_12_const_net_5;
wire   [3:0]     TX_DATA_13_const_net_5;
wire   [3:0]     TX_DATA_14_const_net_5;
wire   [3:0]     TX_DATA_15_const_net_5;
wire   [3:0]     TX_DATA_16_const_net_5;
wire   [3:0]     TX_DATA_17_const_net_5;
wire   [3:0]     TX_DATA_18_const_net_5;
wire   [3:0]     TX_DATA_19_const_net_5;
wire   [3:0]     TX_DATA_20_const_net_5;
wire   [3:0]     TX_DATA_21_const_net_5;
wire   [3:0]     TX_DATA_22_const_net_5;
wire   [3:0]     TX_DATA_23_const_net_5;
wire   [3:0]     TX_DATA_24_const_net_5;
wire   [3:0]     TX_DATA_25_const_net_5;
wire   [3:0]     TX_DATA_26_const_net_5;
wire   [3:0]     TX_DATA_27_const_net_5;
wire   [3:0]     TX_DATA_28_const_net_5;
wire   [3:0]     TX_DATA_29_const_net_5;
wire   [3:0]     TX_DATA_30_const_net_5;
wire   [3:0]     TX_DATA_31_const_net_5;
wire   [3:0]     TX_DATA_32_const_net_5;
wire   [3:0]     TX_DATA_33_const_net_5;
wire   [3:0]     TX_DATA_34_const_net_5;
wire   [3:0]     TX_DATA_35_const_net_5;
wire   [3:0]     TX_DATA_36_const_net_5;
wire   [3:0]     TX_DATA_37_const_net_5;
wire   [3:0]     TX_DATA_38_const_net_5;
wire   [3:0]     TX_DATA_39_const_net_5;
wire   [3:0]     TX_DATA_40_const_net_5;
wire   [3:0]     TX_DATA_41_const_net_5;
wire   [3:0]     TX_DATA_42_const_net_5;
wire   [3:0]     TX_DATA_43_const_net_5;
wire   [3:0]     TX_DATA_44_const_net_5;
wire   [3:0]     TX_DATA_45_const_net_5;
wire   [3:0]     TX_DATA_46_const_net_5;
wire   [3:0]     TX_DATA_47_const_net_5;
wire   [3:0]     TX_DATA_48_const_net_5;
wire   [3:0]     TX_DATA_49_const_net_5;
wire   [3:0]     TX_DATA_50_const_net_5;
wire   [3:0]     TX_DATA_51_const_net_5;
wire   [3:0]     TX_DATA_52_const_net_5;
wire   [3:0]     TX_DATA_53_const_net_5;
wire   [3:0]     TX_DATA_54_const_net_5;
wire   [3:0]     TX_DATA_55_const_net_5;
wire   [3:0]     TX_DATA_56_const_net_5;
wire   [3:0]     TX_DATA_57_const_net_5;
wire   [3:0]     TX_DATA_58_const_net_5;
wire   [3:0]     TX_DATA_59_const_net_5;
wire   [3:0]     TX_DATA_60_const_net_5;
wire   [3:0]     TX_DATA_61_const_net_5;
wire   [3:0]     TX_DATA_62_const_net_5;
wire   [3:0]     TX_DATA_63_const_net_5;
wire   [3:0]     OE_DATA_3_const_net_5;
wire   [3:0]     OE_DATA_4_const_net_5;
wire   [3:0]     OE_DATA_5_const_net_5;
wire   [3:0]     OE_DATA_6_const_net_5;
wire   [3:0]     OE_DATA_7_const_net_5;
wire   [3:0]     OE_DATA_8_const_net_5;
wire   [3:0]     OE_DATA_9_const_net_5;
wire   [3:0]     OE_DATA_10_const_net_5;
wire   [3:0]     OE_DATA_11_const_net_5;
wire   [3:0]     OE_DATA_12_const_net_5;
wire   [3:0]     OE_DATA_13_const_net_5;
wire   [3:0]     OE_DATA_14_const_net_5;
wire   [3:0]     OE_DATA_15_const_net_5;
wire   [3:0]     OE_DATA_16_const_net_5;
wire   [3:0]     OE_DATA_17_const_net_5;
wire   [3:0]     OE_DATA_18_const_net_5;
wire   [3:0]     OE_DATA_19_const_net_5;
wire   [3:0]     OE_DATA_20_const_net_5;
wire   [3:0]     OE_DATA_21_const_net_5;
wire   [3:0]     OE_DATA_22_const_net_5;
wire   [3:0]     OE_DATA_23_const_net_5;
wire   [3:0]     OE_DATA_24_const_net_5;
wire   [3:0]     OE_DATA_25_const_net_5;
wire   [3:0]     OE_DATA_26_const_net_5;
wire   [3:0]     OE_DATA_27_const_net_5;
wire   [3:0]     OE_DATA_28_const_net_5;
wire   [3:0]     OE_DATA_29_const_net_5;
wire   [3:0]     OE_DATA_30_const_net_5;
wire   [3:0]     OE_DATA_31_const_net_5;
wire   [3:0]     OE_DATA_32_const_net_5;
wire   [3:0]     OE_DATA_33_const_net_5;
wire   [3:0]     OE_DATA_34_const_net_5;
wire   [3:0]     OE_DATA_35_const_net_5;
wire   [3:0]     OE_DATA_36_const_net_5;
wire   [3:0]     OE_DATA_37_const_net_5;
wire   [3:0]     OE_DATA_38_const_net_5;
wire   [3:0]     OE_DATA_39_const_net_5;
wire   [3:0]     OE_DATA_40_const_net_5;
wire   [3:0]     OE_DATA_41_const_net_5;
wire   [3:0]     OE_DATA_42_const_net_5;
wire   [3:0]     OE_DATA_43_const_net_5;
wire   [3:0]     OE_DATA_44_const_net_5;
wire   [3:0]     OE_DATA_45_const_net_5;
wire   [3:0]     OE_DATA_46_const_net_5;
wire   [3:0]     OE_DATA_47_const_net_5;
wire   [3:0]     OE_DATA_48_const_net_5;
wire   [3:0]     OE_DATA_49_const_net_5;
wire   [3:0]     OE_DATA_50_const_net_5;
wire   [3:0]     OE_DATA_51_const_net_5;
wire   [3:0]     OE_DATA_52_const_net_5;
wire   [3:0]     OE_DATA_53_const_net_5;
wire   [3:0]     OE_DATA_54_const_net_5;
wire   [3:0]     OE_DATA_55_const_net_5;
wire   [3:0]     OE_DATA_56_const_net_5;
wire   [3:0]     OE_DATA_57_const_net_5;
wire   [3:0]     OE_DATA_58_const_net_5;
wire   [3:0]     OE_DATA_59_const_net_5;
wire   [3:0]     OE_DATA_60_const_net_5;
wire   [3:0]     OE_DATA_61_const_net_5;
wire   [3:0]     OE_DATA_62_const_net_5;
wire   [3:0]     OE_DATA_63_const_net_5;
wire   [2:0]     PAD_const_net_1;
wire   [2:0]     PAD_I_const_net_1;
wire   [2:0]     PAD_N_const_net_1;
wire   [2:0]     PAD_I_N_const_net_1;
wire   [1:0]     RX_DQS_90_const_net_6;
wire   [2:0]     FIFO_WR_PTR_const_net_6;
wire   [2:0]     FIFO_RD_PTR_const_net_6;
wire   [2:0]     EYE_MONITOR_LANE_WIDTH_const_net_6;
wire   [7:0]     TX_DATA_0_const_net_4;
wire   [7:0]     TX_DATA_1_const_net_4;
wire   [7:0]     TX_DATA_2_const_net_4;
wire   [7:0]     TX_DATA_3_const_net_5;
wire   [7:0]     TX_DATA_4_const_net_5;
wire   [7:0]     TX_DATA_5_const_net_5;
wire   [7:0]     TX_DATA_6_const_net_5;
wire   [7:0]     TX_DATA_7_const_net_5;
wire   [7:0]     TX_DATA_8_const_net_5;
wire   [7:0]     TX_DATA_9_const_net_5;
wire   [7:0]     TX_DATA_10_const_net_5;
wire   [7:0]     TX_DATA_11_const_net_5;
wire   [7:0]     TX_DATA_12_const_net_6;
wire   [7:0]     TX_DATA_13_const_net_6;
wire   [7:0]     TX_DATA_14_const_net_6;
wire   [7:0]     TX_DATA_15_const_net_6;
wire   [7:0]     TX_DATA_16_const_net_6;
wire   [7:0]     TX_DATA_17_const_net_6;
wire   [7:0]     TX_DATA_18_const_net_6;
wire   [7:0]     TX_DATA_19_const_net_6;
wire   [7:0]     TX_DATA_20_const_net_6;
wire   [7:0]     TX_DATA_21_const_net_6;
wire   [7:0]     TX_DATA_22_const_net_6;
wire   [7:0]     TX_DATA_23_const_net_6;
wire   [7:0]     TX_DATA_24_const_net_6;
wire   [7:0]     TX_DATA_25_const_net_6;
wire   [7:0]     TX_DATA_26_const_net_6;
wire   [7:0]     TX_DATA_27_const_net_6;
wire   [7:0]     TX_DATA_28_const_net_6;
wire   [7:0]     TX_DATA_29_const_net_6;
wire   [7:0]     TX_DATA_30_const_net_6;
wire   [7:0]     TX_DATA_31_const_net_6;
wire   [7:0]     TX_DATA_32_const_net_6;
wire   [7:0]     TX_DATA_33_const_net_6;
wire   [7:0]     TX_DATA_34_const_net_6;
wire   [7:0]     TX_DATA_35_const_net_6;
wire   [7:0]     TX_DATA_36_const_net_6;
wire   [7:0]     TX_DATA_37_const_net_6;
wire   [7:0]     TX_DATA_38_const_net_6;
wire   [7:0]     TX_DATA_39_const_net_6;
wire   [7:0]     TX_DATA_40_const_net_6;
wire   [7:0]     TX_DATA_41_const_net_6;
wire   [7:0]     TX_DATA_42_const_net_6;
wire   [7:0]     TX_DATA_43_const_net_6;
wire   [7:0]     TX_DATA_44_const_net_6;
wire   [7:0]     TX_DATA_45_const_net_6;
wire   [7:0]     TX_DATA_46_const_net_6;
wire   [7:0]     TX_DATA_47_const_net_6;
wire   [7:0]     TX_DATA_48_const_net_6;
wire   [7:0]     TX_DATA_49_const_net_6;
wire   [7:0]     TX_DATA_50_const_net_6;
wire   [7:0]     TX_DATA_51_const_net_6;
wire   [7:0]     TX_DATA_52_const_net_6;
wire   [7:0]     TX_DATA_53_const_net_6;
wire   [7:0]     TX_DATA_54_const_net_6;
wire   [7:0]     TX_DATA_55_const_net_6;
wire   [7:0]     TX_DATA_56_const_net_6;
wire   [7:0]     TX_DATA_57_const_net_6;
wire   [7:0]     TX_DATA_58_const_net_6;
wire   [7:0]     TX_DATA_59_const_net_6;
wire   [7:0]     TX_DATA_60_const_net_6;
wire   [7:0]     TX_DATA_61_const_net_6;
wire   [7:0]     TX_DATA_62_const_net_6;
wire   [7:0]     TX_DATA_63_const_net_6;
wire   [3:0]     OE_DATA_0_const_net_14;
wire   [3:0]     OE_DATA_1_const_net_6;
wire   [3:0]     OE_DATA_2_const_net_6;
wire   [3:0]     OE_DATA_3_const_net_6;
wire   [3:0]     OE_DATA_4_const_net_6;
wire   [3:0]     OE_DATA_5_const_net_6;
wire   [3:0]     OE_DATA_6_const_net_6;
wire   [3:0]     OE_DATA_7_const_net_6;
wire   [3:0]     OE_DATA_8_const_net_6;
wire   [3:0]     OE_DATA_9_const_net_6;
wire   [3:0]     OE_DATA_10_const_net_6;
wire   [3:0]     OE_DATA_11_const_net_6;
wire   [3:0]     OE_DATA_12_const_net_6;
wire   [3:0]     OE_DATA_13_const_net_6;
wire   [3:0]     OE_DATA_14_const_net_6;
wire   [3:0]     OE_DATA_15_const_net_6;
wire   [3:0]     OE_DATA_16_const_net_6;
wire   [3:0]     OE_DATA_17_const_net_6;
wire   [3:0]     OE_DATA_18_const_net_6;
wire   [3:0]     OE_DATA_19_const_net_6;
wire   [3:0]     OE_DATA_20_const_net_6;
wire   [3:0]     OE_DATA_21_const_net_6;
wire   [3:0]     OE_DATA_22_const_net_6;
wire   [3:0]     OE_DATA_23_const_net_6;
wire   [3:0]     OE_DATA_24_const_net_6;
wire   [3:0]     OE_DATA_25_const_net_6;
wire   [3:0]     OE_DATA_26_const_net_6;
wire   [3:0]     OE_DATA_27_const_net_6;
wire   [3:0]     OE_DATA_28_const_net_6;
wire   [3:0]     OE_DATA_29_const_net_6;
wire   [3:0]     OE_DATA_30_const_net_6;
wire   [3:0]     OE_DATA_31_const_net_6;
wire   [3:0]     OE_DATA_32_const_net_6;
wire   [3:0]     OE_DATA_33_const_net_6;
wire   [3:0]     OE_DATA_34_const_net_6;
wire   [3:0]     OE_DATA_35_const_net_6;
wire   [3:0]     OE_DATA_36_const_net_6;
wire   [3:0]     OE_DATA_37_const_net_6;
wire   [3:0]     OE_DATA_38_const_net_6;
wire   [3:0]     OE_DATA_39_const_net_6;
wire   [3:0]     OE_DATA_40_const_net_6;
wire   [3:0]     OE_DATA_41_const_net_6;
wire   [3:0]     OE_DATA_42_const_net_6;
wire   [3:0]     OE_DATA_43_const_net_6;
wire   [3:0]     OE_DATA_44_const_net_6;
wire   [3:0]     OE_DATA_45_const_net_6;
wire   [3:0]     OE_DATA_46_const_net_6;
wire   [3:0]     OE_DATA_47_const_net_6;
wire   [3:0]     OE_DATA_48_const_net_6;
wire   [3:0]     OE_DATA_49_const_net_6;
wire   [3:0]     OE_DATA_50_const_net_6;
wire   [3:0]     OE_DATA_51_const_net_6;
wire   [3:0]     OE_DATA_52_const_net_6;
wire   [3:0]     OE_DATA_53_const_net_6;
wire   [3:0]     OE_DATA_54_const_net_6;
wire   [3:0]     OE_DATA_55_const_net_6;
wire   [3:0]     OE_DATA_56_const_net_6;
wire   [3:0]     OE_DATA_57_const_net_6;
wire   [3:0]     OE_DATA_58_const_net_6;
wire   [3:0]     OE_DATA_59_const_net_6;
wire   [3:0]     OE_DATA_60_const_net_6;
wire   [3:0]     OE_DATA_61_const_net_6;
wire   [3:0]     OE_DATA_62_const_net_6;
wire   [3:0]     OE_DATA_63_const_net_6;
wire   [1:0]     RX_DQS_90_const_net_7;
wire   [2:0]     FIFO_WR_PTR_const_net_7;
wire   [2:0]     FIFO_RD_PTR_const_net_7;
wire   [2:0]     EYE_MONITOR_LANE_WIDTH_const_net_7;
wire   [3:0]     TX_DATA_1_const_net_5;
wire   [3:0]     TX_DATA_2_const_net_5;
wire   [3:0]     TX_DATA_3_const_net_6;
wire   [3:0]     TX_DATA_4_const_net_6;
wire   [3:0]     TX_DATA_5_const_net_6;
wire   [3:0]     TX_DATA_6_const_net_6;
wire   [3:0]     TX_DATA_7_const_net_6;
wire   [3:0]     TX_DATA_8_const_net_6;
wire   [3:0]     TX_DATA_9_const_net_6;
wire   [3:0]     TX_DATA_10_const_net_6;
wire   [3:0]     TX_DATA_11_const_net_6;
wire   [3:0]     TX_DATA_12_const_net_7;
wire   [3:0]     TX_DATA_13_const_net_7;
wire   [3:0]     TX_DATA_14_const_net_7;
wire   [3:0]     TX_DATA_15_const_net_7;
wire   [3:0]     TX_DATA_16_const_net_7;
wire   [3:0]     TX_DATA_17_const_net_7;
wire   [3:0]     TX_DATA_18_const_net_7;
wire   [3:0]     TX_DATA_19_const_net_7;
wire   [3:0]     TX_DATA_20_const_net_7;
wire   [3:0]     TX_DATA_21_const_net_7;
wire   [3:0]     TX_DATA_22_const_net_7;
wire   [3:0]     TX_DATA_23_const_net_7;
wire   [3:0]     TX_DATA_24_const_net_7;
wire   [3:0]     TX_DATA_25_const_net_7;
wire   [3:0]     TX_DATA_26_const_net_7;
wire   [3:0]     TX_DATA_27_const_net_7;
wire   [3:0]     TX_DATA_28_const_net_7;
wire   [3:0]     TX_DATA_29_const_net_7;
wire   [3:0]     TX_DATA_30_const_net_7;
wire   [3:0]     TX_DATA_31_const_net_7;
wire   [3:0]     TX_DATA_32_const_net_7;
wire   [3:0]     TX_DATA_33_const_net_7;
wire   [3:0]     TX_DATA_34_const_net_7;
wire   [3:0]     TX_DATA_35_const_net_7;
wire   [3:0]     TX_DATA_36_const_net_7;
wire   [3:0]     TX_DATA_37_const_net_7;
wire   [3:0]     TX_DATA_38_const_net_7;
wire   [3:0]     TX_DATA_39_const_net_7;
wire   [3:0]     TX_DATA_40_const_net_7;
wire   [3:0]     TX_DATA_41_const_net_7;
wire   [3:0]     TX_DATA_42_const_net_7;
wire   [3:0]     TX_DATA_43_const_net_7;
wire   [3:0]     TX_DATA_44_const_net_7;
wire   [3:0]     TX_DATA_45_const_net_7;
wire   [3:0]     TX_DATA_46_const_net_7;
wire   [3:0]     TX_DATA_47_const_net_7;
wire   [3:0]     TX_DATA_48_const_net_7;
wire   [3:0]     TX_DATA_49_const_net_7;
wire   [3:0]     TX_DATA_50_const_net_7;
wire   [3:0]     TX_DATA_51_const_net_7;
wire   [3:0]     TX_DATA_52_const_net_7;
wire   [3:0]     TX_DATA_53_const_net_7;
wire   [3:0]     TX_DATA_54_const_net_7;
wire   [3:0]     TX_DATA_55_const_net_7;
wire   [3:0]     TX_DATA_56_const_net_7;
wire   [3:0]     TX_DATA_57_const_net_7;
wire   [3:0]     TX_DATA_58_const_net_7;
wire   [3:0]     TX_DATA_59_const_net_7;
wire   [3:0]     TX_DATA_60_const_net_7;
wire   [3:0]     TX_DATA_61_const_net_7;
wire   [3:0]     TX_DATA_62_const_net_7;
wire   [3:0]     TX_DATA_63_const_net_7;
wire   [3:0]     OE_DATA_1_const_net_7;
wire   [3:0]     OE_DATA_2_const_net_7;
wire   [3:0]     OE_DATA_3_const_net_7;
wire   [3:0]     OE_DATA_4_const_net_7;
wire   [3:0]     OE_DATA_5_const_net_7;
wire   [3:0]     OE_DATA_6_const_net_7;
wire   [3:0]     OE_DATA_7_const_net_7;
wire   [3:0]     OE_DATA_8_const_net_7;
wire   [3:0]     OE_DATA_9_const_net_7;
wire   [3:0]     OE_DATA_10_const_net_7;
wire   [3:0]     OE_DATA_11_const_net_7;
wire   [3:0]     OE_DATA_12_const_net_7;
wire   [3:0]     OE_DATA_13_const_net_7;
wire   [3:0]     OE_DATA_14_const_net_7;
wire   [3:0]     OE_DATA_15_const_net_7;
wire   [3:0]     OE_DATA_16_const_net_7;
wire   [3:0]     OE_DATA_17_const_net_7;
wire   [3:0]     OE_DATA_18_const_net_7;
wire   [3:0]     OE_DATA_19_const_net_7;
wire   [3:0]     OE_DATA_20_const_net_7;
wire   [3:0]     OE_DATA_21_const_net_7;
wire   [3:0]     OE_DATA_22_const_net_7;
wire   [3:0]     OE_DATA_23_const_net_7;
wire   [3:0]     OE_DATA_24_const_net_7;
wire   [3:0]     OE_DATA_25_const_net_7;
wire   [3:0]     OE_DATA_26_const_net_7;
wire   [3:0]     OE_DATA_27_const_net_7;
wire   [3:0]     OE_DATA_28_const_net_7;
wire   [3:0]     OE_DATA_29_const_net_7;
wire   [3:0]     OE_DATA_30_const_net_7;
wire   [3:0]     OE_DATA_31_const_net_7;
wire   [3:0]     OE_DATA_32_const_net_7;
wire   [3:0]     OE_DATA_33_const_net_7;
wire   [3:0]     OE_DATA_34_const_net_7;
wire   [3:0]     OE_DATA_35_const_net_7;
wire   [3:0]     OE_DATA_36_const_net_7;
wire   [3:0]     OE_DATA_37_const_net_7;
wire   [3:0]     OE_DATA_38_const_net_7;
wire   [3:0]     OE_DATA_39_const_net_7;
wire   [3:0]     OE_DATA_40_const_net_7;
wire   [3:0]     OE_DATA_41_const_net_7;
wire   [3:0]     OE_DATA_42_const_net_7;
wire   [3:0]     OE_DATA_43_const_net_7;
wire   [3:0]     OE_DATA_44_const_net_7;
wire   [3:0]     OE_DATA_45_const_net_7;
wire   [3:0]     OE_DATA_46_const_net_7;
wire   [3:0]     OE_DATA_47_const_net_7;
wire   [3:0]     OE_DATA_48_const_net_7;
wire   [3:0]     OE_DATA_49_const_net_7;
wire   [3:0]     OE_DATA_50_const_net_7;
wire   [3:0]     OE_DATA_51_const_net_7;
wire   [3:0]     OE_DATA_52_const_net_7;
wire   [3:0]     OE_DATA_53_const_net_7;
wire   [3:0]     OE_DATA_54_const_net_7;
wire   [3:0]     OE_DATA_55_const_net_7;
wire   [3:0]     OE_DATA_56_const_net_7;
wire   [3:0]     OE_DATA_57_const_net_7;
wire   [3:0]     OE_DATA_58_const_net_7;
wire   [3:0]     OE_DATA_59_const_net_7;
wire   [3:0]     OE_DATA_60_const_net_7;
wire   [3:0]     OE_DATA_61_const_net_7;
wire   [3:0]     OE_DATA_62_const_net_7;
wire   [3:0]     OE_DATA_63_const_net_7;
wire   [1:0]     RX_DQS_90_const_net_8;
wire   [2:0]     FIFO_WR_PTR_const_net_8;
wire   [2:0]     FIFO_RD_PTR_const_net_8;
wire   [2:0]     EYE_MONITOR_LANE_WIDTH_const_net_8;
wire   [3:0]     TX_DATA_1_const_net_6;
wire   [3:0]     TX_DATA_2_const_net_6;
wire   [3:0]     TX_DATA_3_const_net_7;
wire   [3:0]     TX_DATA_4_const_net_7;
wire   [3:0]     TX_DATA_5_const_net_7;
wire   [3:0]     TX_DATA_6_const_net_7;
wire   [3:0]     TX_DATA_7_const_net_7;
wire   [3:0]     TX_DATA_8_const_net_7;
wire   [3:0]     TX_DATA_9_const_net_7;
wire   [3:0]     TX_DATA_10_const_net_7;
wire   [3:0]     TX_DATA_11_const_net_7;
wire   [3:0]     TX_DATA_12_const_net_8;
wire   [3:0]     TX_DATA_13_const_net_8;
wire   [3:0]     TX_DATA_14_const_net_8;
wire   [3:0]     TX_DATA_15_const_net_8;
wire   [3:0]     TX_DATA_16_const_net_8;
wire   [3:0]     TX_DATA_17_const_net_8;
wire   [3:0]     TX_DATA_18_const_net_8;
wire   [3:0]     TX_DATA_19_const_net_8;
wire   [3:0]     TX_DATA_20_const_net_8;
wire   [3:0]     TX_DATA_21_const_net_8;
wire   [3:0]     TX_DATA_22_const_net_8;
wire   [3:0]     TX_DATA_23_const_net_8;
wire   [3:0]     TX_DATA_24_const_net_8;
wire   [3:0]     TX_DATA_25_const_net_8;
wire   [3:0]     TX_DATA_26_const_net_8;
wire   [3:0]     TX_DATA_27_const_net_8;
wire   [3:0]     TX_DATA_28_const_net_8;
wire   [3:0]     TX_DATA_29_const_net_8;
wire   [3:0]     TX_DATA_30_const_net_8;
wire   [3:0]     TX_DATA_31_const_net_8;
wire   [3:0]     TX_DATA_32_const_net_8;
wire   [3:0]     TX_DATA_33_const_net_8;
wire   [3:0]     TX_DATA_34_const_net_8;
wire   [3:0]     TX_DATA_35_const_net_8;
wire   [3:0]     TX_DATA_36_const_net_8;
wire   [3:0]     TX_DATA_37_const_net_8;
wire   [3:0]     TX_DATA_38_const_net_8;
wire   [3:0]     TX_DATA_39_const_net_8;
wire   [3:0]     TX_DATA_40_const_net_8;
wire   [3:0]     TX_DATA_41_const_net_8;
wire   [3:0]     TX_DATA_42_const_net_8;
wire   [3:0]     TX_DATA_43_const_net_8;
wire   [3:0]     TX_DATA_44_const_net_8;
wire   [3:0]     TX_DATA_45_const_net_8;
wire   [3:0]     TX_DATA_46_const_net_8;
wire   [3:0]     TX_DATA_47_const_net_8;
wire   [3:0]     TX_DATA_48_const_net_8;
wire   [3:0]     TX_DATA_49_const_net_8;
wire   [3:0]     TX_DATA_50_const_net_8;
wire   [3:0]     TX_DATA_51_const_net_8;
wire   [3:0]     TX_DATA_52_const_net_8;
wire   [3:0]     TX_DATA_53_const_net_8;
wire   [3:0]     TX_DATA_54_const_net_8;
wire   [3:0]     TX_DATA_55_const_net_8;
wire   [3:0]     TX_DATA_56_const_net_8;
wire   [3:0]     TX_DATA_57_const_net_8;
wire   [3:0]     TX_DATA_58_const_net_8;
wire   [3:0]     TX_DATA_59_const_net_8;
wire   [3:0]     TX_DATA_60_const_net_8;
wire   [3:0]     TX_DATA_61_const_net_8;
wire   [3:0]     TX_DATA_62_const_net_8;
wire   [3:0]     TX_DATA_63_const_net_8;
wire   [3:0]     OE_DATA_1_const_net_8;
wire   [3:0]     OE_DATA_2_const_net_8;
wire   [3:0]     OE_DATA_3_const_net_8;
wire   [3:0]     OE_DATA_4_const_net_8;
wire   [3:0]     OE_DATA_5_const_net_8;
wire   [3:0]     OE_DATA_6_const_net_8;
wire   [3:0]     OE_DATA_7_const_net_8;
wire   [3:0]     OE_DATA_8_const_net_8;
wire   [3:0]     OE_DATA_9_const_net_8;
wire   [3:0]     OE_DATA_10_const_net_8;
wire   [3:0]     OE_DATA_11_const_net_8;
wire   [3:0]     OE_DATA_12_const_net_8;
wire   [3:0]     OE_DATA_13_const_net_8;
wire   [3:0]     OE_DATA_14_const_net_8;
wire   [3:0]     OE_DATA_15_const_net_8;
wire   [3:0]     OE_DATA_16_const_net_8;
wire   [3:0]     OE_DATA_17_const_net_8;
wire   [3:0]     OE_DATA_18_const_net_8;
wire   [3:0]     OE_DATA_19_const_net_8;
wire   [3:0]     OE_DATA_20_const_net_8;
wire   [3:0]     OE_DATA_21_const_net_8;
wire   [3:0]     OE_DATA_22_const_net_8;
wire   [3:0]     OE_DATA_23_const_net_8;
wire   [3:0]     OE_DATA_24_const_net_8;
wire   [3:0]     OE_DATA_25_const_net_8;
wire   [3:0]     OE_DATA_26_const_net_8;
wire   [3:0]     OE_DATA_27_const_net_8;
wire   [3:0]     OE_DATA_28_const_net_8;
wire   [3:0]     OE_DATA_29_const_net_8;
wire   [3:0]     OE_DATA_30_const_net_8;
wire   [3:0]     OE_DATA_31_const_net_8;
wire   [3:0]     OE_DATA_32_const_net_8;
wire   [3:0]     OE_DATA_33_const_net_8;
wire   [3:0]     OE_DATA_34_const_net_8;
wire   [3:0]     OE_DATA_35_const_net_8;
wire   [3:0]     OE_DATA_36_const_net_8;
wire   [3:0]     OE_DATA_37_const_net_8;
wire   [3:0]     OE_DATA_38_const_net_8;
wire   [3:0]     OE_DATA_39_const_net_8;
wire   [3:0]     OE_DATA_40_const_net_8;
wire   [3:0]     OE_DATA_41_const_net_8;
wire   [3:0]     OE_DATA_42_const_net_8;
wire   [3:0]     OE_DATA_43_const_net_8;
wire   [3:0]     OE_DATA_44_const_net_8;
wire   [3:0]     OE_DATA_45_const_net_8;
wire   [3:0]     OE_DATA_46_const_net_8;
wire   [3:0]     OE_DATA_47_const_net_8;
wire   [3:0]     OE_DATA_48_const_net_8;
wire   [3:0]     OE_DATA_49_const_net_8;
wire   [3:0]     OE_DATA_50_const_net_8;
wire   [3:0]     OE_DATA_51_const_net_8;
wire   [3:0]     OE_DATA_52_const_net_8;
wire   [3:0]     OE_DATA_53_const_net_8;
wire   [3:0]     OE_DATA_54_const_net_8;
wire   [3:0]     OE_DATA_55_const_net_8;
wire   [3:0]     OE_DATA_56_const_net_8;
wire   [3:0]     OE_DATA_57_const_net_8;
wire   [3:0]     OE_DATA_58_const_net_8;
wire   [3:0]     OE_DATA_59_const_net_8;
wire   [3:0]     OE_DATA_60_const_net_8;
wire   [3:0]     OE_DATA_61_const_net_8;
wire   [3:0]     OE_DATA_62_const_net_8;
wire   [3:0]     OE_DATA_63_const_net_8;
wire   [1:0]     RX_DQS_90_const_net_9;
wire   [2:0]     FIFO_WR_PTR_const_net_9;
wire   [2:0]     FIFO_RD_PTR_const_net_9;
wire   [2:0]     EYE_MONITOR_LANE_WIDTH_const_net_9;
wire   [3:0]     TX_DATA_1_const_net_7;
wire   [3:0]     TX_DATA_2_const_net_7;
wire   [3:0]     TX_DATA_3_const_net_8;
wire   [3:0]     TX_DATA_4_const_net_8;
wire   [3:0]     TX_DATA_5_const_net_8;
wire   [3:0]     TX_DATA_6_const_net_8;
wire   [3:0]     TX_DATA_7_const_net_8;
wire   [3:0]     TX_DATA_8_const_net_8;
wire   [3:0]     TX_DATA_9_const_net_8;
wire   [3:0]     TX_DATA_10_const_net_8;
wire   [3:0]     TX_DATA_11_const_net_8;
wire   [3:0]     TX_DATA_12_const_net_9;
wire   [3:0]     TX_DATA_13_const_net_9;
wire   [3:0]     TX_DATA_14_const_net_9;
wire   [3:0]     TX_DATA_15_const_net_9;
wire   [3:0]     TX_DATA_16_const_net_9;
wire   [3:0]     TX_DATA_17_const_net_9;
wire   [3:0]     TX_DATA_18_const_net_9;
wire   [3:0]     TX_DATA_19_const_net_9;
wire   [3:0]     TX_DATA_20_const_net_9;
wire   [3:0]     TX_DATA_21_const_net_9;
wire   [3:0]     TX_DATA_22_const_net_9;
wire   [3:0]     TX_DATA_23_const_net_9;
wire   [3:0]     TX_DATA_24_const_net_9;
wire   [3:0]     TX_DATA_25_const_net_9;
wire   [3:0]     TX_DATA_26_const_net_9;
wire   [3:0]     TX_DATA_27_const_net_9;
wire   [3:0]     TX_DATA_28_const_net_9;
wire   [3:0]     TX_DATA_29_const_net_9;
wire   [3:0]     TX_DATA_30_const_net_9;
wire   [3:0]     TX_DATA_31_const_net_9;
wire   [3:0]     TX_DATA_32_const_net_9;
wire   [3:0]     TX_DATA_33_const_net_9;
wire   [3:0]     TX_DATA_34_const_net_9;
wire   [3:0]     TX_DATA_35_const_net_9;
wire   [3:0]     TX_DATA_36_const_net_9;
wire   [3:0]     TX_DATA_37_const_net_9;
wire   [3:0]     TX_DATA_38_const_net_9;
wire   [3:0]     TX_DATA_39_const_net_9;
wire   [3:0]     TX_DATA_40_const_net_9;
wire   [3:0]     TX_DATA_41_const_net_9;
wire   [3:0]     TX_DATA_42_const_net_9;
wire   [3:0]     TX_DATA_43_const_net_9;
wire   [3:0]     TX_DATA_44_const_net_9;
wire   [3:0]     TX_DATA_45_const_net_9;
wire   [3:0]     TX_DATA_46_const_net_9;
wire   [3:0]     TX_DATA_47_const_net_9;
wire   [3:0]     TX_DATA_48_const_net_9;
wire   [3:0]     TX_DATA_49_const_net_9;
wire   [3:0]     TX_DATA_50_const_net_9;
wire   [3:0]     TX_DATA_51_const_net_9;
wire   [3:0]     TX_DATA_52_const_net_9;
wire   [3:0]     TX_DATA_53_const_net_9;
wire   [3:0]     TX_DATA_54_const_net_9;
wire   [3:0]     TX_DATA_55_const_net_9;
wire   [3:0]     TX_DATA_56_const_net_9;
wire   [3:0]     TX_DATA_57_const_net_9;
wire   [3:0]     TX_DATA_58_const_net_9;
wire   [3:0]     TX_DATA_59_const_net_9;
wire   [3:0]     TX_DATA_60_const_net_9;
wire   [3:0]     TX_DATA_61_const_net_9;
wire   [3:0]     TX_DATA_62_const_net_9;
wire   [3:0]     TX_DATA_63_const_net_9;
wire   [3:0]     OE_DATA_1_const_net_9;
wire   [3:0]     OE_DATA_2_const_net_9;
wire   [3:0]     OE_DATA_3_const_net_9;
wire   [3:0]     OE_DATA_4_const_net_9;
wire   [3:0]     OE_DATA_5_const_net_9;
wire   [3:0]     OE_DATA_6_const_net_9;
wire   [3:0]     OE_DATA_7_const_net_9;
wire   [3:0]     OE_DATA_8_const_net_9;
wire   [3:0]     OE_DATA_9_const_net_9;
wire   [3:0]     OE_DATA_10_const_net_9;
wire   [3:0]     OE_DATA_11_const_net_9;
wire   [3:0]     OE_DATA_12_const_net_9;
wire   [3:0]     OE_DATA_13_const_net_9;
wire   [3:0]     OE_DATA_14_const_net_9;
wire   [3:0]     OE_DATA_15_const_net_9;
wire   [3:0]     OE_DATA_16_const_net_9;
wire   [3:0]     OE_DATA_17_const_net_9;
wire   [3:0]     OE_DATA_18_const_net_9;
wire   [3:0]     OE_DATA_19_const_net_9;
wire   [3:0]     OE_DATA_20_const_net_9;
wire   [3:0]     OE_DATA_21_const_net_9;
wire   [3:0]     OE_DATA_22_const_net_9;
wire   [3:0]     OE_DATA_23_const_net_9;
wire   [3:0]     OE_DATA_24_const_net_9;
wire   [3:0]     OE_DATA_25_const_net_9;
wire   [3:0]     OE_DATA_26_const_net_9;
wire   [3:0]     OE_DATA_27_const_net_9;
wire   [3:0]     OE_DATA_28_const_net_9;
wire   [3:0]     OE_DATA_29_const_net_9;
wire   [3:0]     OE_DATA_30_const_net_9;
wire   [3:0]     OE_DATA_31_const_net_9;
wire   [3:0]     OE_DATA_32_const_net_9;
wire   [3:0]     OE_DATA_33_const_net_9;
wire   [3:0]     OE_DATA_34_const_net_9;
wire   [3:0]     OE_DATA_35_const_net_9;
wire   [3:0]     OE_DATA_36_const_net_9;
wire   [3:0]     OE_DATA_37_const_net_9;
wire   [3:0]     OE_DATA_38_const_net_9;
wire   [3:0]     OE_DATA_39_const_net_9;
wire   [3:0]     OE_DATA_40_const_net_9;
wire   [3:0]     OE_DATA_41_const_net_9;
wire   [3:0]     OE_DATA_42_const_net_9;
wire   [3:0]     OE_DATA_43_const_net_9;
wire   [3:0]     OE_DATA_44_const_net_9;
wire   [3:0]     OE_DATA_45_const_net_9;
wire   [3:0]     OE_DATA_46_const_net_9;
wire   [3:0]     OE_DATA_47_const_net_9;
wire   [3:0]     OE_DATA_48_const_net_9;
wire   [3:0]     OE_DATA_49_const_net_9;
wire   [3:0]     OE_DATA_50_const_net_9;
wire   [3:0]     OE_DATA_51_const_net_9;
wire   [3:0]     OE_DATA_52_const_net_9;
wire   [3:0]     OE_DATA_53_const_net_9;
wire   [3:0]     OE_DATA_54_const_net_9;
wire   [3:0]     OE_DATA_55_const_net_9;
wire   [3:0]     OE_DATA_56_const_net_9;
wire   [3:0]     OE_DATA_57_const_net_9;
wire   [3:0]     OE_DATA_58_const_net_9;
wire   [3:0]     OE_DATA_59_const_net_9;
wire   [3:0]     OE_DATA_60_const_net_9;
wire   [3:0]     OE_DATA_61_const_net_9;
wire   [3:0]     OE_DATA_62_const_net_9;
wire   [3:0]     OE_DATA_63_const_net_9;
wire   [1:0]     RX_DQS_90_const_net_10;
wire   [2:0]     FIFO_WR_PTR_const_net_10;
wire   [2:0]     FIFO_RD_PTR_const_net_10;
wire   [2:0]     EYE_MONITOR_LANE_WIDTH_const_net_10;
wire   [3:0]     TX_DATA_1_const_net_8;
wire   [3:0]     TX_DATA_2_const_net_8;
wire   [3:0]     TX_DATA_3_const_net_9;
wire   [3:0]     TX_DATA_4_const_net_9;
wire   [3:0]     TX_DATA_5_const_net_9;
wire   [3:0]     TX_DATA_6_const_net_9;
wire   [3:0]     TX_DATA_7_const_net_9;
wire   [3:0]     TX_DATA_8_const_net_9;
wire   [3:0]     TX_DATA_9_const_net_9;
wire   [3:0]     TX_DATA_10_const_net_9;
wire   [3:0]     TX_DATA_11_const_net_9;
wire   [3:0]     TX_DATA_12_const_net_10;
wire   [3:0]     TX_DATA_13_const_net_10;
wire   [3:0]     TX_DATA_14_const_net_10;
wire   [3:0]     TX_DATA_15_const_net_10;
wire   [3:0]     TX_DATA_16_const_net_10;
wire   [3:0]     TX_DATA_17_const_net_10;
wire   [3:0]     TX_DATA_18_const_net_10;
wire   [3:0]     TX_DATA_19_const_net_10;
wire   [3:0]     TX_DATA_20_const_net_10;
wire   [3:0]     TX_DATA_21_const_net_10;
wire   [3:0]     TX_DATA_22_const_net_10;
wire   [3:0]     TX_DATA_23_const_net_10;
wire   [3:0]     TX_DATA_24_const_net_10;
wire   [3:0]     TX_DATA_25_const_net_10;
wire   [3:0]     TX_DATA_26_const_net_10;
wire   [3:0]     TX_DATA_27_const_net_10;
wire   [3:0]     TX_DATA_28_const_net_10;
wire   [3:0]     TX_DATA_29_const_net_10;
wire   [3:0]     TX_DATA_30_const_net_10;
wire   [3:0]     TX_DATA_31_const_net_10;
wire   [3:0]     TX_DATA_32_const_net_10;
wire   [3:0]     TX_DATA_33_const_net_10;
wire   [3:0]     TX_DATA_34_const_net_10;
wire   [3:0]     TX_DATA_35_const_net_10;
wire   [3:0]     TX_DATA_36_const_net_10;
wire   [3:0]     TX_DATA_37_const_net_10;
wire   [3:0]     TX_DATA_38_const_net_10;
wire   [3:0]     TX_DATA_39_const_net_10;
wire   [3:0]     TX_DATA_40_const_net_10;
wire   [3:0]     TX_DATA_41_const_net_10;
wire   [3:0]     TX_DATA_42_const_net_10;
wire   [3:0]     TX_DATA_43_const_net_10;
wire   [3:0]     TX_DATA_44_const_net_10;
wire   [3:0]     TX_DATA_45_const_net_10;
wire   [3:0]     TX_DATA_46_const_net_10;
wire   [3:0]     TX_DATA_47_const_net_10;
wire   [3:0]     TX_DATA_48_const_net_10;
wire   [3:0]     TX_DATA_49_const_net_10;
wire   [3:0]     TX_DATA_50_const_net_10;
wire   [3:0]     TX_DATA_51_const_net_10;
wire   [3:0]     TX_DATA_52_const_net_10;
wire   [3:0]     TX_DATA_53_const_net_10;
wire   [3:0]     TX_DATA_54_const_net_10;
wire   [3:0]     TX_DATA_55_const_net_10;
wire   [3:0]     TX_DATA_56_const_net_10;
wire   [3:0]     TX_DATA_57_const_net_10;
wire   [3:0]     TX_DATA_58_const_net_10;
wire   [3:0]     TX_DATA_59_const_net_10;
wire   [3:0]     TX_DATA_60_const_net_10;
wire   [3:0]     TX_DATA_61_const_net_10;
wire   [3:0]     TX_DATA_62_const_net_10;
wire   [3:0]     TX_DATA_63_const_net_10;
wire   [3:0]     OE_DATA_1_const_net_10;
wire   [3:0]     OE_DATA_2_const_net_10;
wire   [3:0]     OE_DATA_3_const_net_10;
wire   [3:0]     OE_DATA_4_const_net_10;
wire   [3:0]     OE_DATA_5_const_net_10;
wire   [3:0]     OE_DATA_6_const_net_10;
wire   [3:0]     OE_DATA_7_const_net_10;
wire   [3:0]     OE_DATA_8_const_net_10;
wire   [3:0]     OE_DATA_9_const_net_10;
wire   [3:0]     OE_DATA_10_const_net_10;
wire   [3:0]     OE_DATA_11_const_net_10;
wire   [3:0]     OE_DATA_12_const_net_10;
wire   [3:0]     OE_DATA_13_const_net_10;
wire   [3:0]     OE_DATA_14_const_net_10;
wire   [3:0]     OE_DATA_15_const_net_10;
wire   [3:0]     OE_DATA_16_const_net_10;
wire   [3:0]     OE_DATA_17_const_net_10;
wire   [3:0]     OE_DATA_18_const_net_10;
wire   [3:0]     OE_DATA_19_const_net_10;
wire   [3:0]     OE_DATA_20_const_net_10;
wire   [3:0]     OE_DATA_21_const_net_10;
wire   [3:0]     OE_DATA_22_const_net_10;
wire   [3:0]     OE_DATA_23_const_net_10;
wire   [3:0]     OE_DATA_24_const_net_10;
wire   [3:0]     OE_DATA_25_const_net_10;
wire   [3:0]     OE_DATA_26_const_net_10;
wire   [3:0]     OE_DATA_27_const_net_10;
wire   [3:0]     OE_DATA_28_const_net_10;
wire   [3:0]     OE_DATA_29_const_net_10;
wire   [3:0]     OE_DATA_30_const_net_10;
wire   [3:0]     OE_DATA_31_const_net_10;
wire   [3:0]     OE_DATA_32_const_net_10;
wire   [3:0]     OE_DATA_33_const_net_10;
wire   [3:0]     OE_DATA_34_const_net_10;
wire   [3:0]     OE_DATA_35_const_net_10;
wire   [3:0]     OE_DATA_36_const_net_10;
wire   [3:0]     OE_DATA_37_const_net_10;
wire   [3:0]     OE_DATA_38_const_net_10;
wire   [3:0]     OE_DATA_39_const_net_10;
wire   [3:0]     OE_DATA_40_const_net_10;
wire   [3:0]     OE_DATA_41_const_net_10;
wire   [3:0]     OE_DATA_42_const_net_10;
wire   [3:0]     OE_DATA_43_const_net_10;
wire   [3:0]     OE_DATA_44_const_net_10;
wire   [3:0]     OE_DATA_45_const_net_10;
wire   [3:0]     OE_DATA_46_const_net_10;
wire   [3:0]     OE_DATA_47_const_net_10;
wire   [3:0]     OE_DATA_48_const_net_10;
wire   [3:0]     OE_DATA_49_const_net_10;
wire   [3:0]     OE_DATA_50_const_net_10;
wire   [3:0]     OE_DATA_51_const_net_10;
wire   [3:0]     OE_DATA_52_const_net_10;
wire   [3:0]     OE_DATA_53_const_net_10;
wire   [3:0]     OE_DATA_54_const_net_10;
wire   [3:0]     OE_DATA_55_const_net_10;
wire   [3:0]     OE_DATA_56_const_net_10;
wire   [3:0]     OE_DATA_57_const_net_10;
wire   [3:0]     OE_DATA_58_const_net_10;
wire   [3:0]     OE_DATA_59_const_net_10;
wire   [3:0]     OE_DATA_60_const_net_10;
wire   [3:0]     OE_DATA_61_const_net_10;
wire   [3:0]     OE_DATA_62_const_net_10;
wire   [3:0]     OE_DATA_63_const_net_10;
wire   [1:0]     RX_DQS_90_const_net_11;
wire   [2:0]     FIFO_WR_PTR_const_net_11;
wire   [2:0]     FIFO_RD_PTR_const_net_11;
wire   [2:0]     EYE_MONITOR_LANE_WIDTH_const_net_11;
wire   [3:0]     TX_DATA_1_const_net_9;
wire   [3:0]     TX_DATA_2_const_net_9;
wire   [3:0]     TX_DATA_3_const_net_10;
wire   [3:0]     TX_DATA_4_const_net_10;
wire   [3:0]     TX_DATA_5_const_net_10;
wire   [3:0]     TX_DATA_6_const_net_10;
wire   [3:0]     TX_DATA_7_const_net_10;
wire   [3:0]     TX_DATA_8_const_net_10;
wire   [3:0]     TX_DATA_9_const_net_10;
wire   [3:0]     TX_DATA_10_const_net_10;
wire   [3:0]     TX_DATA_11_const_net_10;
wire   [3:0]     TX_DATA_12_const_net_11;
wire   [3:0]     TX_DATA_13_const_net_11;
wire   [3:0]     TX_DATA_14_const_net_11;
wire   [3:0]     TX_DATA_15_const_net_11;
wire   [3:0]     TX_DATA_16_const_net_11;
wire   [3:0]     TX_DATA_17_const_net_11;
wire   [3:0]     TX_DATA_18_const_net_11;
wire   [3:0]     TX_DATA_19_const_net_11;
wire   [3:0]     TX_DATA_20_const_net_11;
wire   [3:0]     TX_DATA_21_const_net_11;
wire   [3:0]     TX_DATA_22_const_net_11;
wire   [3:0]     TX_DATA_23_const_net_11;
wire   [3:0]     TX_DATA_24_const_net_11;
wire   [3:0]     TX_DATA_25_const_net_11;
wire   [3:0]     TX_DATA_26_const_net_11;
wire   [3:0]     TX_DATA_27_const_net_11;
wire   [3:0]     TX_DATA_28_const_net_11;
wire   [3:0]     TX_DATA_29_const_net_11;
wire   [3:0]     TX_DATA_30_const_net_11;
wire   [3:0]     TX_DATA_31_const_net_11;
wire   [3:0]     TX_DATA_32_const_net_11;
wire   [3:0]     TX_DATA_33_const_net_11;
wire   [3:0]     TX_DATA_34_const_net_11;
wire   [3:0]     TX_DATA_35_const_net_11;
wire   [3:0]     TX_DATA_36_const_net_11;
wire   [3:0]     TX_DATA_37_const_net_11;
wire   [3:0]     TX_DATA_38_const_net_11;
wire   [3:0]     TX_DATA_39_const_net_11;
wire   [3:0]     TX_DATA_40_const_net_11;
wire   [3:0]     TX_DATA_41_const_net_11;
wire   [3:0]     TX_DATA_42_const_net_11;
wire   [3:0]     TX_DATA_43_const_net_11;
wire   [3:0]     TX_DATA_44_const_net_11;
wire   [3:0]     TX_DATA_45_const_net_11;
wire   [3:0]     TX_DATA_46_const_net_11;
wire   [3:0]     TX_DATA_47_const_net_11;
wire   [3:0]     TX_DATA_48_const_net_11;
wire   [3:0]     TX_DATA_49_const_net_11;
wire   [3:0]     TX_DATA_50_const_net_11;
wire   [3:0]     TX_DATA_51_const_net_11;
wire   [3:0]     TX_DATA_52_const_net_11;
wire   [3:0]     TX_DATA_53_const_net_11;
wire   [3:0]     TX_DATA_54_const_net_11;
wire   [3:0]     TX_DATA_55_const_net_11;
wire   [3:0]     TX_DATA_56_const_net_11;
wire   [3:0]     TX_DATA_57_const_net_11;
wire   [3:0]     TX_DATA_58_const_net_11;
wire   [3:0]     TX_DATA_59_const_net_11;
wire   [3:0]     TX_DATA_60_const_net_11;
wire   [3:0]     TX_DATA_61_const_net_11;
wire   [3:0]     TX_DATA_62_const_net_11;
wire   [3:0]     TX_DATA_63_const_net_11;
wire   [3:0]     OE_DATA_1_const_net_11;
wire   [3:0]     OE_DATA_2_const_net_11;
wire   [3:0]     OE_DATA_3_const_net_11;
wire   [3:0]     OE_DATA_4_const_net_11;
wire   [3:0]     OE_DATA_5_const_net_11;
wire   [3:0]     OE_DATA_6_const_net_11;
wire   [3:0]     OE_DATA_7_const_net_11;
wire   [3:0]     OE_DATA_8_const_net_11;
wire   [3:0]     OE_DATA_9_const_net_11;
wire   [3:0]     OE_DATA_10_const_net_11;
wire   [3:0]     OE_DATA_11_const_net_11;
wire   [3:0]     OE_DATA_12_const_net_11;
wire   [3:0]     OE_DATA_13_const_net_11;
wire   [3:0]     OE_DATA_14_const_net_11;
wire   [3:0]     OE_DATA_15_const_net_11;
wire   [3:0]     OE_DATA_16_const_net_11;
wire   [3:0]     OE_DATA_17_const_net_11;
wire   [3:0]     OE_DATA_18_const_net_11;
wire   [3:0]     OE_DATA_19_const_net_11;
wire   [3:0]     OE_DATA_20_const_net_11;
wire   [3:0]     OE_DATA_21_const_net_11;
wire   [3:0]     OE_DATA_22_const_net_11;
wire   [3:0]     OE_DATA_23_const_net_11;
wire   [3:0]     OE_DATA_24_const_net_11;
wire   [3:0]     OE_DATA_25_const_net_11;
wire   [3:0]     OE_DATA_26_const_net_11;
wire   [3:0]     OE_DATA_27_const_net_11;
wire   [3:0]     OE_DATA_28_const_net_11;
wire   [3:0]     OE_DATA_29_const_net_11;
wire   [3:0]     OE_DATA_30_const_net_11;
wire   [3:0]     OE_DATA_31_const_net_11;
wire   [3:0]     OE_DATA_32_const_net_11;
wire   [3:0]     OE_DATA_33_const_net_11;
wire   [3:0]     OE_DATA_34_const_net_11;
wire   [3:0]     OE_DATA_35_const_net_11;
wire   [3:0]     OE_DATA_36_const_net_11;
wire   [3:0]     OE_DATA_37_const_net_11;
wire   [3:0]     OE_DATA_38_const_net_11;
wire   [3:0]     OE_DATA_39_const_net_11;
wire   [3:0]     OE_DATA_40_const_net_11;
wire   [3:0]     OE_DATA_41_const_net_11;
wire   [3:0]     OE_DATA_42_const_net_11;
wire   [3:0]     OE_DATA_43_const_net_11;
wire   [3:0]     OE_DATA_44_const_net_11;
wire   [3:0]     OE_DATA_45_const_net_11;
wire   [3:0]     OE_DATA_46_const_net_11;
wire   [3:0]     OE_DATA_47_const_net_11;
wire   [3:0]     OE_DATA_48_const_net_11;
wire   [3:0]     OE_DATA_49_const_net_11;
wire   [3:0]     OE_DATA_50_const_net_11;
wire   [3:0]     OE_DATA_51_const_net_11;
wire   [3:0]     OE_DATA_52_const_net_11;
wire   [3:0]     OE_DATA_53_const_net_11;
wire   [3:0]     OE_DATA_54_const_net_11;
wire   [3:0]     OE_DATA_55_const_net_11;
wire   [3:0]     OE_DATA_56_const_net_11;
wire   [3:0]     OE_DATA_57_const_net_11;
wire   [3:0]     OE_DATA_58_const_net_11;
wire   [3:0]     OE_DATA_59_const_net_11;
wire   [3:0]     OE_DATA_60_const_net_11;
wire   [3:0]     OE_DATA_61_const_net_11;
wire   [3:0]     OE_DATA_62_const_net_11;
wire   [3:0]     OE_DATA_63_const_net_11;
wire   [1:0]     RX_DQS_90_const_net_12;
wire   [2:0]     FIFO_WR_PTR_const_net_12;
wire   [2:0]     FIFO_RD_PTR_const_net_12;
wire   [2:0]     EYE_MONITOR_LANE_WIDTH_const_net_12;
wire   [7:0]     TX_DATA_0_const_net_5;
wire   [7:0]     TX_DATA_1_const_net_10;
wire   [7:0]     TX_DATA_2_const_net_10;
wire   [7:0]     TX_DATA_3_const_net_11;
wire   [7:0]     TX_DATA_4_const_net_11;
wire   [7:0]     TX_DATA_5_const_net_11;
wire   [7:0]     TX_DATA_6_const_net_11;
wire   [7:0]     TX_DATA_7_const_net_11;
wire   [7:0]     TX_DATA_8_const_net_11;
wire   [7:0]     TX_DATA_9_const_net_11;
wire   [7:0]     TX_DATA_10_const_net_11;
wire   [7:0]     TX_DATA_11_const_net_11;
wire   [7:0]     TX_DATA_12_const_net_12;
wire   [7:0]     TX_DATA_13_const_net_12;
wire   [7:0]     TX_DATA_14_const_net_12;
wire   [7:0]     TX_DATA_15_const_net_12;
wire   [7:0]     TX_DATA_16_const_net_12;
wire   [7:0]     TX_DATA_17_const_net_12;
wire   [7:0]     TX_DATA_18_const_net_12;
wire   [7:0]     TX_DATA_19_const_net_12;
wire   [7:0]     TX_DATA_20_const_net_12;
wire   [7:0]     TX_DATA_21_const_net_12;
wire   [7:0]     TX_DATA_22_const_net_12;
wire   [7:0]     TX_DATA_23_const_net_12;
wire   [7:0]     TX_DATA_24_const_net_12;
wire   [7:0]     TX_DATA_25_const_net_12;
wire   [7:0]     TX_DATA_26_const_net_12;
wire   [7:0]     TX_DATA_27_const_net_12;
wire   [7:0]     TX_DATA_28_const_net_12;
wire   [7:0]     TX_DATA_29_const_net_12;
wire   [7:0]     TX_DATA_30_const_net_12;
wire   [7:0]     TX_DATA_31_const_net_12;
wire   [7:0]     TX_DATA_32_const_net_12;
wire   [7:0]     TX_DATA_33_const_net_12;
wire   [7:0]     TX_DATA_34_const_net_12;
wire   [7:0]     TX_DATA_35_const_net_12;
wire   [7:0]     TX_DATA_36_const_net_12;
wire   [7:0]     TX_DATA_37_const_net_12;
wire   [7:0]     TX_DATA_38_const_net_12;
wire   [7:0]     TX_DATA_39_const_net_12;
wire   [7:0]     TX_DATA_40_const_net_12;
wire   [7:0]     TX_DATA_41_const_net_12;
wire   [7:0]     TX_DATA_42_const_net_12;
wire   [7:0]     TX_DATA_43_const_net_12;
wire   [7:0]     TX_DATA_44_const_net_12;
wire   [7:0]     TX_DATA_45_const_net_12;
wire   [7:0]     TX_DATA_46_const_net_12;
wire   [7:0]     TX_DATA_47_const_net_12;
wire   [7:0]     TX_DATA_48_const_net_12;
wire   [7:0]     TX_DATA_49_const_net_12;
wire   [7:0]     TX_DATA_50_const_net_12;
wire   [7:0]     TX_DATA_51_const_net_12;
wire   [7:0]     TX_DATA_52_const_net_12;
wire   [7:0]     TX_DATA_53_const_net_12;
wire   [7:0]     TX_DATA_54_const_net_12;
wire   [7:0]     TX_DATA_55_const_net_12;
wire   [7:0]     TX_DATA_56_const_net_12;
wire   [7:0]     TX_DATA_57_const_net_12;
wire   [7:0]     TX_DATA_58_const_net_12;
wire   [7:0]     TX_DATA_59_const_net_12;
wire   [7:0]     TX_DATA_60_const_net_12;
wire   [7:0]     TX_DATA_61_const_net_12;
wire   [7:0]     TX_DATA_62_const_net_12;
wire   [7:0]     TX_DATA_63_const_net_12;
wire   [3:0]     OE_DATA_0_const_net_15;
wire   [3:0]     OE_DATA_1_const_net_12;
wire   [3:0]     OE_DATA_2_const_net_12;
wire   [3:0]     OE_DATA_3_const_net_12;
wire   [3:0]     OE_DATA_4_const_net_12;
wire   [3:0]     OE_DATA_5_const_net_12;
wire   [3:0]     OE_DATA_6_const_net_12;
wire   [3:0]     OE_DATA_7_const_net_12;
wire   [3:0]     OE_DATA_8_const_net_12;
wire   [3:0]     OE_DATA_9_const_net_12;
wire   [3:0]     OE_DATA_10_const_net_12;
wire   [3:0]     OE_DATA_11_const_net_12;
wire   [3:0]     OE_DATA_12_const_net_12;
wire   [3:0]     OE_DATA_13_const_net_12;
wire   [3:0]     OE_DATA_14_const_net_12;
wire   [3:0]     OE_DATA_15_const_net_12;
wire   [3:0]     OE_DATA_16_const_net_12;
wire   [3:0]     OE_DATA_17_const_net_12;
wire   [3:0]     OE_DATA_18_const_net_12;
wire   [3:0]     OE_DATA_19_const_net_12;
wire   [3:0]     OE_DATA_20_const_net_12;
wire   [3:0]     OE_DATA_21_const_net_12;
wire   [3:0]     OE_DATA_22_const_net_12;
wire   [3:0]     OE_DATA_23_const_net_12;
wire   [3:0]     OE_DATA_24_const_net_12;
wire   [3:0]     OE_DATA_25_const_net_12;
wire   [3:0]     OE_DATA_26_const_net_12;
wire   [3:0]     OE_DATA_27_const_net_12;
wire   [3:0]     OE_DATA_28_const_net_12;
wire   [3:0]     OE_DATA_29_const_net_12;
wire   [3:0]     OE_DATA_30_const_net_12;
wire   [3:0]     OE_DATA_31_const_net_12;
wire   [3:0]     OE_DATA_32_const_net_12;
wire   [3:0]     OE_DATA_33_const_net_12;
wire   [3:0]     OE_DATA_34_const_net_12;
wire   [3:0]     OE_DATA_35_const_net_12;
wire   [3:0]     OE_DATA_36_const_net_12;
wire   [3:0]     OE_DATA_37_const_net_12;
wire   [3:0]     OE_DATA_38_const_net_12;
wire   [3:0]     OE_DATA_39_const_net_12;
wire   [3:0]     OE_DATA_40_const_net_12;
wire   [3:0]     OE_DATA_41_const_net_12;
wire   [3:0]     OE_DATA_42_const_net_12;
wire   [3:0]     OE_DATA_43_const_net_12;
wire   [3:0]     OE_DATA_44_const_net_12;
wire   [3:0]     OE_DATA_45_const_net_12;
wire   [3:0]     OE_DATA_46_const_net_12;
wire   [3:0]     OE_DATA_47_const_net_12;
wire   [3:0]     OE_DATA_48_const_net_12;
wire   [3:0]     OE_DATA_49_const_net_12;
wire   [3:0]     OE_DATA_50_const_net_12;
wire   [3:0]     OE_DATA_51_const_net_12;
wire   [3:0]     OE_DATA_52_const_net_12;
wire   [3:0]     OE_DATA_53_const_net_12;
wire   [3:0]     OE_DATA_54_const_net_12;
wire   [3:0]     OE_DATA_55_const_net_12;
wire   [3:0]     OE_DATA_56_const_net_12;
wire   [3:0]     OE_DATA_57_const_net_12;
wire   [3:0]     OE_DATA_58_const_net_12;
wire   [3:0]     OE_DATA_59_const_net_12;
wire   [3:0]     OE_DATA_60_const_net_12;
wire   [3:0]     OE_DATA_61_const_net_12;
wire   [3:0]     OE_DATA_62_const_net_12;
wire   [3:0]     OE_DATA_63_const_net_12;
wire   [1:0]     RX_DQS_90_const_net_13;
wire   [2:0]     FIFO_WR_PTR_const_net_13;
wire   [2:0]     FIFO_RD_PTR_const_net_13;
wire   [2:0]     EYE_MONITOR_LANE_WIDTH_const_net_13;
wire   [3:0]     TX_DATA_1_const_net_11;
wire   [3:0]     TX_DATA_2_const_net_11;
wire   [3:0]     TX_DATA_3_const_net_12;
wire   [3:0]     TX_DATA_4_const_net_12;
wire   [3:0]     TX_DATA_5_const_net_12;
wire   [3:0]     TX_DATA_6_const_net_12;
wire   [3:0]     TX_DATA_7_const_net_12;
wire   [3:0]     TX_DATA_8_const_net_12;
wire   [3:0]     TX_DATA_9_const_net_12;
wire   [3:0]     TX_DATA_10_const_net_12;
wire   [3:0]     TX_DATA_11_const_net_12;
wire   [3:0]     TX_DATA_12_const_net_13;
wire   [3:0]     TX_DATA_13_const_net_13;
wire   [3:0]     TX_DATA_14_const_net_13;
wire   [3:0]     TX_DATA_15_const_net_13;
wire   [3:0]     TX_DATA_16_const_net_13;
wire   [3:0]     TX_DATA_17_const_net_13;
wire   [3:0]     TX_DATA_18_const_net_13;
wire   [3:0]     TX_DATA_19_const_net_13;
wire   [3:0]     TX_DATA_20_const_net_13;
wire   [3:0]     TX_DATA_21_const_net_13;
wire   [3:0]     TX_DATA_22_const_net_13;
wire   [3:0]     TX_DATA_23_const_net_13;
wire   [3:0]     TX_DATA_24_const_net_13;
wire   [3:0]     TX_DATA_25_const_net_13;
wire   [3:0]     TX_DATA_26_const_net_13;
wire   [3:0]     TX_DATA_27_const_net_13;
wire   [3:0]     TX_DATA_28_const_net_13;
wire   [3:0]     TX_DATA_29_const_net_13;
wire   [3:0]     TX_DATA_30_const_net_13;
wire   [3:0]     TX_DATA_31_const_net_13;
wire   [3:0]     TX_DATA_32_const_net_13;
wire   [3:0]     TX_DATA_33_const_net_13;
wire   [3:0]     TX_DATA_34_const_net_13;
wire   [3:0]     TX_DATA_35_const_net_13;
wire   [3:0]     TX_DATA_36_const_net_13;
wire   [3:0]     TX_DATA_37_const_net_13;
wire   [3:0]     TX_DATA_38_const_net_13;
wire   [3:0]     TX_DATA_39_const_net_13;
wire   [3:0]     TX_DATA_40_const_net_13;
wire   [3:0]     TX_DATA_41_const_net_13;
wire   [3:0]     TX_DATA_42_const_net_13;
wire   [3:0]     TX_DATA_43_const_net_13;
wire   [3:0]     TX_DATA_44_const_net_13;
wire   [3:0]     TX_DATA_45_const_net_13;
wire   [3:0]     TX_DATA_46_const_net_13;
wire   [3:0]     TX_DATA_47_const_net_13;
wire   [3:0]     TX_DATA_48_const_net_13;
wire   [3:0]     TX_DATA_49_const_net_13;
wire   [3:0]     TX_DATA_50_const_net_13;
wire   [3:0]     TX_DATA_51_const_net_13;
wire   [3:0]     TX_DATA_52_const_net_13;
wire   [3:0]     TX_DATA_53_const_net_13;
wire   [3:0]     TX_DATA_54_const_net_13;
wire   [3:0]     TX_DATA_55_const_net_13;
wire   [3:0]     TX_DATA_56_const_net_13;
wire   [3:0]     TX_DATA_57_const_net_13;
wire   [3:0]     TX_DATA_58_const_net_13;
wire   [3:0]     TX_DATA_59_const_net_13;
wire   [3:0]     TX_DATA_60_const_net_13;
wire   [3:0]     TX_DATA_61_const_net_13;
wire   [3:0]     TX_DATA_62_const_net_13;
wire   [3:0]     TX_DATA_63_const_net_13;
wire   [3:0]     OE_DATA_1_const_net_13;
wire   [3:0]     OE_DATA_2_const_net_13;
wire   [3:0]     OE_DATA_3_const_net_13;
wire   [3:0]     OE_DATA_4_const_net_13;
wire   [3:0]     OE_DATA_5_const_net_13;
wire   [3:0]     OE_DATA_6_const_net_13;
wire   [3:0]     OE_DATA_7_const_net_13;
wire   [3:0]     OE_DATA_8_const_net_13;
wire   [3:0]     OE_DATA_9_const_net_13;
wire   [3:0]     OE_DATA_10_const_net_13;
wire   [3:0]     OE_DATA_11_const_net_13;
wire   [3:0]     OE_DATA_12_const_net_13;
wire   [3:0]     OE_DATA_13_const_net_13;
wire   [3:0]     OE_DATA_14_const_net_13;
wire   [3:0]     OE_DATA_15_const_net_13;
wire   [3:0]     OE_DATA_16_const_net_13;
wire   [3:0]     OE_DATA_17_const_net_13;
wire   [3:0]     OE_DATA_18_const_net_13;
wire   [3:0]     OE_DATA_19_const_net_13;
wire   [3:0]     OE_DATA_20_const_net_13;
wire   [3:0]     OE_DATA_21_const_net_13;
wire   [3:0]     OE_DATA_22_const_net_13;
wire   [3:0]     OE_DATA_23_const_net_13;
wire   [3:0]     OE_DATA_24_const_net_13;
wire   [3:0]     OE_DATA_25_const_net_13;
wire   [3:0]     OE_DATA_26_const_net_13;
wire   [3:0]     OE_DATA_27_const_net_13;
wire   [3:0]     OE_DATA_28_const_net_13;
wire   [3:0]     OE_DATA_29_const_net_13;
wire   [3:0]     OE_DATA_30_const_net_13;
wire   [3:0]     OE_DATA_31_const_net_13;
wire   [3:0]     OE_DATA_32_const_net_13;
wire   [3:0]     OE_DATA_33_const_net_13;
wire   [3:0]     OE_DATA_34_const_net_13;
wire   [3:0]     OE_DATA_35_const_net_13;
wire   [3:0]     OE_DATA_36_const_net_13;
wire   [3:0]     OE_DATA_37_const_net_13;
wire   [3:0]     OE_DATA_38_const_net_13;
wire   [3:0]     OE_DATA_39_const_net_13;
wire   [3:0]     OE_DATA_40_const_net_13;
wire   [3:0]     OE_DATA_41_const_net_13;
wire   [3:0]     OE_DATA_42_const_net_13;
wire   [3:0]     OE_DATA_43_const_net_13;
wire   [3:0]     OE_DATA_44_const_net_13;
wire   [3:0]     OE_DATA_45_const_net_13;
wire   [3:0]     OE_DATA_46_const_net_13;
wire   [3:0]     OE_DATA_47_const_net_13;
wire   [3:0]     OE_DATA_48_const_net_13;
wire   [3:0]     OE_DATA_49_const_net_13;
wire   [3:0]     OE_DATA_50_const_net_13;
wire   [3:0]     OE_DATA_51_const_net_13;
wire   [3:0]     OE_DATA_52_const_net_13;
wire   [3:0]     OE_DATA_53_const_net_13;
wire   [3:0]     OE_DATA_54_const_net_13;
wire   [3:0]     OE_DATA_55_const_net_13;
wire   [3:0]     OE_DATA_56_const_net_13;
wire   [3:0]     OE_DATA_57_const_net_13;
wire   [3:0]     OE_DATA_58_const_net_13;
wire   [3:0]     OE_DATA_59_const_net_13;
wire   [3:0]     OE_DATA_60_const_net_13;
wire   [3:0]     OE_DATA_61_const_net_13;
wire   [3:0]     OE_DATA_62_const_net_13;
wire   [3:0]     OE_DATA_63_const_net_13;
wire   [1:0]     RX_DQS_90_const_net_14;
wire   [2:0]     FIFO_WR_PTR_const_net_14;
wire   [2:0]     FIFO_RD_PTR_const_net_14;
wire   [2:0]     EYE_MONITOR_LANE_WIDTH_const_net_14;
wire   [3:0]     TX_DATA_1_const_net_12;
wire   [3:0]     TX_DATA_2_const_net_12;
wire   [3:0]     TX_DATA_3_const_net_13;
wire   [3:0]     TX_DATA_4_const_net_13;
wire   [3:0]     TX_DATA_5_const_net_13;
wire   [3:0]     TX_DATA_6_const_net_13;
wire   [3:0]     TX_DATA_7_const_net_13;
wire   [3:0]     TX_DATA_8_const_net_13;
wire   [3:0]     TX_DATA_9_const_net_13;
wire   [3:0]     TX_DATA_10_const_net_13;
wire   [3:0]     TX_DATA_11_const_net_13;
wire   [3:0]     TX_DATA_12_const_net_14;
wire   [3:0]     TX_DATA_13_const_net_14;
wire   [3:0]     TX_DATA_14_const_net_14;
wire   [3:0]     TX_DATA_15_const_net_14;
wire   [3:0]     TX_DATA_16_const_net_14;
wire   [3:0]     TX_DATA_17_const_net_14;
wire   [3:0]     TX_DATA_18_const_net_14;
wire   [3:0]     TX_DATA_19_const_net_14;
wire   [3:0]     TX_DATA_20_const_net_14;
wire   [3:0]     TX_DATA_21_const_net_14;
wire   [3:0]     TX_DATA_22_const_net_14;
wire   [3:0]     TX_DATA_23_const_net_14;
wire   [3:0]     TX_DATA_24_const_net_14;
wire   [3:0]     TX_DATA_25_const_net_14;
wire   [3:0]     TX_DATA_26_const_net_14;
wire   [3:0]     TX_DATA_27_const_net_14;
wire   [3:0]     TX_DATA_28_const_net_14;
wire   [3:0]     TX_DATA_29_const_net_14;
wire   [3:0]     TX_DATA_30_const_net_14;
wire   [3:0]     TX_DATA_31_const_net_14;
wire   [3:0]     TX_DATA_32_const_net_14;
wire   [3:0]     TX_DATA_33_const_net_14;
wire   [3:0]     TX_DATA_34_const_net_14;
wire   [3:0]     TX_DATA_35_const_net_14;
wire   [3:0]     TX_DATA_36_const_net_14;
wire   [3:0]     TX_DATA_37_const_net_14;
wire   [3:0]     TX_DATA_38_const_net_14;
wire   [3:0]     TX_DATA_39_const_net_14;
wire   [3:0]     TX_DATA_40_const_net_14;
wire   [3:0]     TX_DATA_41_const_net_14;
wire   [3:0]     TX_DATA_42_const_net_14;
wire   [3:0]     TX_DATA_43_const_net_14;
wire   [3:0]     TX_DATA_44_const_net_14;
wire   [3:0]     TX_DATA_45_const_net_14;
wire   [3:0]     TX_DATA_46_const_net_14;
wire   [3:0]     TX_DATA_47_const_net_14;
wire   [3:0]     TX_DATA_48_const_net_14;
wire   [3:0]     TX_DATA_49_const_net_14;
wire   [3:0]     TX_DATA_50_const_net_14;
wire   [3:0]     TX_DATA_51_const_net_14;
wire   [3:0]     TX_DATA_52_const_net_14;
wire   [3:0]     TX_DATA_53_const_net_14;
wire   [3:0]     TX_DATA_54_const_net_14;
wire   [3:0]     TX_DATA_55_const_net_14;
wire   [3:0]     TX_DATA_56_const_net_14;
wire   [3:0]     TX_DATA_57_const_net_14;
wire   [3:0]     TX_DATA_58_const_net_14;
wire   [3:0]     TX_DATA_59_const_net_14;
wire   [3:0]     TX_DATA_60_const_net_14;
wire   [3:0]     TX_DATA_61_const_net_14;
wire   [3:0]     TX_DATA_62_const_net_14;
wire   [3:0]     TX_DATA_63_const_net_14;
wire   [3:0]     OE_DATA_1_const_net_14;
wire   [3:0]     OE_DATA_2_const_net_14;
wire   [3:0]     OE_DATA_3_const_net_14;
wire   [3:0]     OE_DATA_4_const_net_14;
wire   [3:0]     OE_DATA_5_const_net_14;
wire   [3:0]     OE_DATA_6_const_net_14;
wire   [3:0]     OE_DATA_7_const_net_14;
wire   [3:0]     OE_DATA_8_const_net_14;
wire   [3:0]     OE_DATA_9_const_net_14;
wire   [3:0]     OE_DATA_10_const_net_14;
wire   [3:0]     OE_DATA_11_const_net_14;
wire   [3:0]     OE_DATA_12_const_net_14;
wire   [3:0]     OE_DATA_13_const_net_14;
wire   [3:0]     OE_DATA_14_const_net_14;
wire   [3:0]     OE_DATA_15_const_net_14;
wire   [3:0]     OE_DATA_16_const_net_14;
wire   [3:0]     OE_DATA_17_const_net_14;
wire   [3:0]     OE_DATA_18_const_net_14;
wire   [3:0]     OE_DATA_19_const_net_14;
wire   [3:0]     OE_DATA_20_const_net_14;
wire   [3:0]     OE_DATA_21_const_net_14;
wire   [3:0]     OE_DATA_22_const_net_14;
wire   [3:0]     OE_DATA_23_const_net_14;
wire   [3:0]     OE_DATA_24_const_net_14;
wire   [3:0]     OE_DATA_25_const_net_14;
wire   [3:0]     OE_DATA_26_const_net_14;
wire   [3:0]     OE_DATA_27_const_net_14;
wire   [3:0]     OE_DATA_28_const_net_14;
wire   [3:0]     OE_DATA_29_const_net_14;
wire   [3:0]     OE_DATA_30_const_net_14;
wire   [3:0]     OE_DATA_31_const_net_14;
wire   [3:0]     OE_DATA_32_const_net_14;
wire   [3:0]     OE_DATA_33_const_net_14;
wire   [3:0]     OE_DATA_34_const_net_14;
wire   [3:0]     OE_DATA_35_const_net_14;
wire   [3:0]     OE_DATA_36_const_net_14;
wire   [3:0]     OE_DATA_37_const_net_14;
wire   [3:0]     OE_DATA_38_const_net_14;
wire   [3:0]     OE_DATA_39_const_net_14;
wire   [3:0]     OE_DATA_40_const_net_14;
wire   [3:0]     OE_DATA_41_const_net_14;
wire   [3:0]     OE_DATA_42_const_net_14;
wire   [3:0]     OE_DATA_43_const_net_14;
wire   [3:0]     OE_DATA_44_const_net_14;
wire   [3:0]     OE_DATA_45_const_net_14;
wire   [3:0]     OE_DATA_46_const_net_14;
wire   [3:0]     OE_DATA_47_const_net_14;
wire   [3:0]     OE_DATA_48_const_net_14;
wire   [3:0]     OE_DATA_49_const_net_14;
wire   [3:0]     OE_DATA_50_const_net_14;
wire   [3:0]     OE_DATA_51_const_net_14;
wire   [3:0]     OE_DATA_52_const_net_14;
wire   [3:0]     OE_DATA_53_const_net_14;
wire   [3:0]     OE_DATA_54_const_net_14;
wire   [3:0]     OE_DATA_55_const_net_14;
wire   [3:0]     OE_DATA_56_const_net_14;
wire   [3:0]     OE_DATA_57_const_net_14;
wire   [3:0]     OE_DATA_58_const_net_14;
wire   [3:0]     OE_DATA_59_const_net_14;
wire   [3:0]     OE_DATA_60_const_net_14;
wire   [3:0]     OE_DATA_61_const_net_14;
wire   [3:0]     OE_DATA_62_const_net_14;
wire   [3:0]     OE_DATA_63_const_net_14;
wire   [10:0]    CDR_CLK_B_SEL_const_net_0;
wire   [2:0]     FIFO_WR_PTR_const_net_15;
wire   [2:0]     FIFO_RD_PTR_const_net_15;
wire   [2:0]     EYE_MONITOR_LANE_WIDTH_const_net_15;
wire   [7:0]     TX_DATA_1_const_net_13;
wire   [7:0]     TX_DATA_2_const_net_13;
wire   [7:0]     TX_DATA_3_const_net_14;
wire   [7:0]     TX_DATA_4_const_net_14;
wire   [7:0]     TX_DATA_5_const_net_14;
wire   [7:0]     TX_DATA_6_const_net_14;
wire   [7:0]     TX_DATA_7_const_net_14;
wire   [7:0]     TX_DATA_8_const_net_14;
wire   [7:0]     TX_DATA_9_const_net_14;
wire   [7:0]     TX_DATA_10_const_net_14;
wire   [7:0]     TX_DATA_11_const_net_14;
wire   [7:0]     TX_DATA_12_const_net_15;
wire   [7:0]     TX_DATA_13_const_net_15;
wire   [7:0]     TX_DATA_14_const_net_15;
wire   [7:0]     TX_DATA_15_const_net_15;
wire   [7:0]     TX_DATA_16_const_net_15;
wire   [7:0]     TX_DATA_17_const_net_15;
wire   [7:0]     TX_DATA_18_const_net_15;
wire   [7:0]     TX_DATA_19_const_net_15;
wire   [7:0]     TX_DATA_20_const_net_15;
wire   [7:0]     TX_DATA_21_const_net_15;
wire   [7:0]     TX_DATA_22_const_net_15;
wire   [7:0]     TX_DATA_23_const_net_15;
wire   [7:0]     TX_DATA_24_const_net_15;
wire   [7:0]     TX_DATA_25_const_net_15;
wire   [7:0]     TX_DATA_26_const_net_15;
wire   [7:0]     TX_DATA_27_const_net_15;
wire   [7:0]     TX_DATA_28_const_net_15;
wire   [7:0]     TX_DATA_29_const_net_15;
wire   [7:0]     TX_DATA_30_const_net_15;
wire   [7:0]     TX_DATA_31_const_net_15;
wire   [7:0]     TX_DATA_32_const_net_15;
wire   [7:0]     TX_DATA_33_const_net_15;
wire   [7:0]     TX_DATA_34_const_net_15;
wire   [7:0]     TX_DATA_35_const_net_15;
wire   [7:0]     TX_DATA_36_const_net_15;
wire   [7:0]     TX_DATA_37_const_net_15;
wire   [7:0]     TX_DATA_38_const_net_15;
wire   [7:0]     TX_DATA_39_const_net_15;
wire   [7:0]     TX_DATA_40_const_net_15;
wire   [7:0]     TX_DATA_41_const_net_15;
wire   [7:0]     TX_DATA_42_const_net_15;
wire   [7:0]     TX_DATA_43_const_net_15;
wire   [7:0]     TX_DATA_44_const_net_15;
wire   [7:0]     TX_DATA_45_const_net_15;
wire   [7:0]     TX_DATA_46_const_net_15;
wire   [7:0]     TX_DATA_47_const_net_15;
wire   [7:0]     TX_DATA_48_const_net_15;
wire   [7:0]     TX_DATA_49_const_net_15;
wire   [7:0]     TX_DATA_50_const_net_15;
wire   [7:0]     TX_DATA_51_const_net_15;
wire   [7:0]     TX_DATA_52_const_net_15;
wire   [7:0]     TX_DATA_53_const_net_15;
wire   [7:0]     TX_DATA_54_const_net_15;
wire   [7:0]     TX_DATA_55_const_net_15;
wire   [7:0]     TX_DATA_56_const_net_15;
wire   [7:0]     TX_DATA_57_const_net_15;
wire   [7:0]     TX_DATA_58_const_net_15;
wire   [7:0]     TX_DATA_59_const_net_15;
wire   [7:0]     TX_DATA_60_const_net_15;
wire   [7:0]     TX_DATA_61_const_net_15;
wire   [7:0]     TX_DATA_62_const_net_15;
wire   [7:0]     TX_DATA_63_const_net_15;
wire   [3:0]     OE_DATA_1_const_net_15;
wire   [3:0]     OE_DATA_2_const_net_15;
wire   [3:0]     OE_DATA_3_const_net_15;
wire   [3:0]     OE_DATA_4_const_net_15;
wire   [3:0]     OE_DATA_5_const_net_15;
wire   [3:0]     OE_DATA_6_const_net_15;
wire   [3:0]     OE_DATA_7_const_net_15;
wire   [3:0]     OE_DATA_8_const_net_15;
wire   [3:0]     OE_DATA_9_const_net_15;
wire   [3:0]     OE_DATA_10_const_net_15;
wire   [3:0]     OE_DATA_11_const_net_15;
wire   [3:0]     OE_DATA_12_const_net_15;
wire   [3:0]     OE_DATA_13_const_net_15;
wire   [3:0]     OE_DATA_14_const_net_15;
wire   [3:0]     OE_DATA_15_const_net_15;
wire   [3:0]     OE_DATA_16_const_net_15;
wire   [3:0]     OE_DATA_17_const_net_15;
wire   [3:0]     OE_DATA_18_const_net_15;
wire   [3:0]     OE_DATA_19_const_net_15;
wire   [3:0]     OE_DATA_20_const_net_15;
wire   [3:0]     OE_DATA_21_const_net_15;
wire   [3:0]     OE_DATA_22_const_net_15;
wire   [3:0]     OE_DATA_23_const_net_15;
wire   [3:0]     OE_DATA_24_const_net_15;
wire   [3:0]     OE_DATA_25_const_net_15;
wire   [3:0]     OE_DATA_26_const_net_15;
wire   [3:0]     OE_DATA_27_const_net_15;
wire   [3:0]     OE_DATA_28_const_net_15;
wire   [3:0]     OE_DATA_29_const_net_15;
wire   [3:0]     OE_DATA_30_const_net_15;
wire   [3:0]     OE_DATA_31_const_net_15;
wire   [3:0]     OE_DATA_32_const_net_15;
wire   [3:0]     OE_DATA_33_const_net_15;
wire   [3:0]     OE_DATA_34_const_net_15;
wire   [3:0]     OE_DATA_35_const_net_15;
wire   [3:0]     OE_DATA_36_const_net_15;
wire   [3:0]     OE_DATA_37_const_net_15;
wire   [3:0]     OE_DATA_38_const_net_15;
wire   [3:0]     OE_DATA_39_const_net_15;
wire   [3:0]     OE_DATA_40_const_net_15;
wire   [3:0]     OE_DATA_41_const_net_15;
wire   [3:0]     OE_DATA_42_const_net_15;
wire   [3:0]     OE_DATA_43_const_net_15;
wire   [3:0]     OE_DATA_44_const_net_15;
wire   [3:0]     OE_DATA_45_const_net_15;
wire   [3:0]     OE_DATA_46_const_net_15;
wire   [3:0]     OE_DATA_47_const_net_15;
wire   [3:0]     OE_DATA_48_const_net_15;
wire   [3:0]     OE_DATA_49_const_net_15;
wire   [3:0]     OE_DATA_50_const_net_15;
wire   [3:0]     OE_DATA_51_const_net_15;
wire   [3:0]     OE_DATA_52_const_net_15;
wire   [3:0]     OE_DATA_53_const_net_15;
wire   [3:0]     OE_DATA_54_const_net_15;
wire   [3:0]     OE_DATA_55_const_net_15;
wire   [3:0]     OE_DATA_56_const_net_15;
wire   [3:0]     OE_DATA_57_const_net_15;
wire   [3:0]     OE_DATA_58_const_net_15;
wire   [3:0]     OE_DATA_59_const_net_15;
wire   [3:0]     OE_DATA_60_const_net_15;
wire   [3:0]     OE_DATA_61_const_net_15;
wire   [3:0]     OE_DATA_62_const_net_15;
wire   [3:0]     OE_DATA_63_const_net_15;
wire   [7:0]     TX_DATA_8_const_net_15;
wire   [7:0]     TX_DATA_9_const_net_15;
wire   [7:0]     TX_DATA_10_const_net_15;
wire   [7:0]     TX_DATA_11_const_net_15;
wire   [7:0]     TX_DATA_12_const_net_16;
wire   [7:0]     TX_DATA_13_const_net_16;
wire   [7:0]     TX_DATA_14_const_net_16;
wire   [7:0]     TX_DATA_15_const_net_16;
wire   [7:0]     TX_DATA_16_const_net_16;
wire   [7:0]     TX_DATA_17_const_net_16;
wire   [7:0]     TX_DATA_18_const_net_16;
wire   [7:0]     TX_DATA_19_const_net_16;
wire   [7:0]     TX_DATA_20_const_net_16;
wire   [7:0]     TX_DATA_21_const_net_16;
wire   [7:0]     TX_DATA_22_const_net_16;
wire   [7:0]     TX_DATA_23_const_net_16;
wire   [7:0]     TX_DATA_24_const_net_16;
wire   [7:0]     TX_DATA_25_const_net_16;
wire   [7:0]     TX_DATA_26_const_net_16;
wire   [7:0]     TX_DATA_27_const_net_16;
wire   [7:0]     TX_DATA_28_const_net_16;
wire   [7:0]     TX_DATA_29_const_net_16;
wire   [7:0]     TX_DATA_30_const_net_16;
wire   [7:0]     TX_DATA_31_const_net_16;
wire   [7:0]     TX_DATA_32_const_net_16;
wire   [7:0]     TX_DATA_33_const_net_16;
wire   [7:0]     TX_DATA_34_const_net_16;
wire   [7:0]     TX_DATA_35_const_net_16;
wire   [7:0]     TX_DATA_36_const_net_16;
wire   [7:0]     TX_DATA_37_const_net_16;
wire   [7:0]     TX_DATA_38_const_net_16;
wire   [7:0]     TX_DATA_39_const_net_16;
wire   [7:0]     TX_DATA_40_const_net_16;
wire   [7:0]     TX_DATA_41_const_net_16;
wire   [7:0]     TX_DATA_42_const_net_16;
wire   [7:0]     TX_DATA_43_const_net_16;
wire   [7:0]     TX_DATA_44_const_net_16;
wire   [7:0]     TX_DATA_45_const_net_16;
wire   [7:0]     TX_DATA_46_const_net_16;
wire   [7:0]     TX_DATA_47_const_net_16;
wire   [7:0]     TX_DATA_48_const_net_16;
wire   [7:0]     TX_DATA_49_const_net_16;
wire   [7:0]     TX_DATA_50_const_net_16;
wire   [7:0]     TX_DATA_51_const_net_16;
wire   [7:0]     TX_DATA_52_const_net_16;
wire   [7:0]     TX_DATA_53_const_net_16;
wire   [7:0]     TX_DATA_54_const_net_16;
wire   [7:0]     TX_DATA_55_const_net_16;
wire   [7:0]     TX_DATA_56_const_net_16;
wire   [7:0]     TX_DATA_57_const_net_16;
wire   [7:0]     TX_DATA_58_const_net_16;
wire   [7:0]     TX_DATA_59_const_net_16;
wire   [7:0]     TX_DATA_60_const_net_16;
wire   [7:0]     TX_DATA_61_const_net_16;
wire   [7:0]     TX_DATA_62_const_net_16;
wire   [7:0]     TX_DATA_63_const_net_16;
wire   [3:0]     OE_DATA_8_const_net_16;
wire   [3:0]     OE_DATA_9_const_net_16;
wire   [3:0]     OE_DATA_10_const_net_16;
wire   [3:0]     OE_DATA_11_const_net_16;
wire   [3:0]     OE_DATA_12_const_net_16;
wire   [3:0]     OE_DATA_13_const_net_16;
wire   [3:0]     OE_DATA_14_const_net_16;
wire   [3:0]     OE_DATA_15_const_net_16;
wire   [3:0]     OE_DATA_16_const_net_16;
wire   [3:0]     OE_DATA_17_const_net_16;
wire   [3:0]     OE_DATA_18_const_net_16;
wire   [3:0]     OE_DATA_19_const_net_16;
wire   [3:0]     OE_DATA_20_const_net_16;
wire   [3:0]     OE_DATA_21_const_net_16;
wire   [3:0]     OE_DATA_22_const_net_16;
wire   [3:0]     OE_DATA_23_const_net_16;
wire   [3:0]     OE_DATA_24_const_net_16;
wire   [3:0]     OE_DATA_25_const_net_16;
wire   [3:0]     OE_DATA_26_const_net_16;
wire   [3:0]     OE_DATA_27_const_net_16;
wire   [3:0]     OE_DATA_28_const_net_16;
wire   [3:0]     OE_DATA_29_const_net_16;
wire   [3:0]     OE_DATA_30_const_net_16;
wire   [3:0]     OE_DATA_31_const_net_16;
wire   [3:0]     OE_DATA_32_const_net_16;
wire   [3:0]     OE_DATA_33_const_net_16;
wire   [3:0]     OE_DATA_34_const_net_16;
wire   [3:0]     OE_DATA_35_const_net_16;
wire   [3:0]     OE_DATA_36_const_net_16;
wire   [3:0]     OE_DATA_37_const_net_16;
wire   [3:0]     OE_DATA_38_const_net_16;
wire   [3:0]     OE_DATA_39_const_net_16;
wire   [3:0]     OE_DATA_40_const_net_16;
wire   [3:0]     OE_DATA_41_const_net_16;
wire   [3:0]     OE_DATA_42_const_net_16;
wire   [3:0]     OE_DATA_43_const_net_16;
wire   [3:0]     OE_DATA_44_const_net_16;
wire   [3:0]     OE_DATA_45_const_net_16;
wire   [3:0]     OE_DATA_46_const_net_16;
wire   [3:0]     OE_DATA_47_const_net_16;
wire   [3:0]     OE_DATA_48_const_net_16;
wire   [3:0]     OE_DATA_49_const_net_16;
wire   [3:0]     OE_DATA_50_const_net_16;
wire   [3:0]     OE_DATA_51_const_net_16;
wire   [3:0]     OE_DATA_52_const_net_16;
wire   [3:0]     OE_DATA_53_const_net_16;
wire   [3:0]     OE_DATA_54_const_net_16;
wire   [3:0]     OE_DATA_55_const_net_16;
wire   [3:0]     OE_DATA_56_const_net_16;
wire   [3:0]     OE_DATA_57_const_net_16;
wire   [3:0]     OE_DATA_58_const_net_16;
wire   [3:0]     OE_DATA_59_const_net_16;
wire   [3:0]     OE_DATA_60_const_net_16;
wire   [3:0]     OE_DATA_61_const_net_16;
wire   [3:0]     OE_DATA_62_const_net_16;
wire   [3:0]     OE_DATA_63_const_net_16;
wire   [7:0]     PAD_I_const_net_2;
wire   [7:0]     PAD_N_const_net_2;
wire   [7:0]     PAD_I_N_const_net_2;
wire   [7:0]     TX_DATA_1_const_net_14;
wire   [7:0]     TX_DATA_2_const_net_14;
wire   [7:0]     TX_DATA_3_const_net_15;
wire   [7:0]     TX_DATA_4_const_net_15;
wire   [7:0]     TX_DATA_5_const_net_15;
wire   [7:0]     TX_DATA_6_const_net_15;
wire   [7:0]     TX_DATA_7_const_net_15;
wire   [7:0]     TX_DATA_8_const_net_16;
wire   [7:0]     TX_DATA_9_const_net_16;
wire   [7:0]     TX_DATA_10_const_net_16;
wire   [7:0]     TX_DATA_11_const_net_16;
wire   [7:0]     TX_DATA_12_const_net_17;
wire   [7:0]     TX_DATA_13_const_net_17;
wire   [7:0]     TX_DATA_14_const_net_17;
wire   [7:0]     TX_DATA_15_const_net_17;
wire   [7:0]     TX_DATA_16_const_net_17;
wire   [7:0]     TX_DATA_17_const_net_17;
wire   [7:0]     TX_DATA_18_const_net_17;
wire   [7:0]     TX_DATA_19_const_net_17;
wire   [7:0]     TX_DATA_20_const_net_17;
wire   [7:0]     TX_DATA_21_const_net_17;
wire   [7:0]     TX_DATA_22_const_net_17;
wire   [7:0]     TX_DATA_23_const_net_17;
wire   [7:0]     TX_DATA_24_const_net_17;
wire   [7:0]     TX_DATA_25_const_net_17;
wire   [7:0]     TX_DATA_26_const_net_17;
wire   [7:0]     TX_DATA_27_const_net_17;
wire   [7:0]     TX_DATA_28_const_net_17;
wire   [7:0]     TX_DATA_29_const_net_17;
wire   [7:0]     TX_DATA_30_const_net_17;
wire   [7:0]     TX_DATA_31_const_net_17;
wire   [7:0]     TX_DATA_32_const_net_17;
wire   [7:0]     TX_DATA_33_const_net_17;
wire   [7:0]     TX_DATA_34_const_net_17;
wire   [7:0]     TX_DATA_35_const_net_17;
wire   [7:0]     TX_DATA_36_const_net_17;
wire   [7:0]     TX_DATA_37_const_net_17;
wire   [7:0]     TX_DATA_38_const_net_17;
wire   [7:0]     TX_DATA_39_const_net_17;
wire   [7:0]     TX_DATA_40_const_net_17;
wire   [7:0]     TX_DATA_41_const_net_17;
wire   [7:0]     TX_DATA_42_const_net_17;
wire   [7:0]     TX_DATA_43_const_net_17;
wire   [7:0]     TX_DATA_44_const_net_17;
wire   [7:0]     TX_DATA_45_const_net_17;
wire   [7:0]     TX_DATA_46_const_net_17;
wire   [7:0]     TX_DATA_47_const_net_17;
wire   [7:0]     TX_DATA_48_const_net_17;
wire   [7:0]     TX_DATA_49_const_net_17;
wire   [7:0]     TX_DATA_50_const_net_17;
wire   [7:0]     TX_DATA_51_const_net_17;
wire   [7:0]     TX_DATA_52_const_net_17;
wire   [7:0]     TX_DATA_53_const_net_17;
wire   [7:0]     TX_DATA_54_const_net_17;
wire   [7:0]     TX_DATA_55_const_net_17;
wire   [7:0]     TX_DATA_56_const_net_17;
wire   [7:0]     TX_DATA_57_const_net_17;
wire   [7:0]     TX_DATA_58_const_net_17;
wire   [7:0]     TX_DATA_59_const_net_17;
wire   [7:0]     TX_DATA_60_const_net_17;
wire   [7:0]     TX_DATA_61_const_net_17;
wire   [7:0]     TX_DATA_62_const_net_17;
wire   [7:0]     TX_DATA_63_const_net_17;
wire   [3:0]     OE_DATA_1_const_net_16;
wire   [3:0]     OE_DATA_2_const_net_16;
wire   [3:0]     OE_DATA_3_const_net_16;
wire   [3:0]     OE_DATA_4_const_net_16;
wire   [3:0]     OE_DATA_5_const_net_16;
wire   [3:0]     OE_DATA_6_const_net_16;
wire   [3:0]     OE_DATA_7_const_net_16;
wire   [3:0]     OE_DATA_8_const_net_17;
wire   [3:0]     OE_DATA_9_const_net_17;
wire   [3:0]     OE_DATA_10_const_net_17;
wire   [3:0]     OE_DATA_11_const_net_17;
wire   [3:0]     OE_DATA_12_const_net_17;
wire   [3:0]     OE_DATA_13_const_net_17;
wire   [3:0]     OE_DATA_14_const_net_17;
wire   [3:0]     OE_DATA_15_const_net_17;
wire   [3:0]     OE_DATA_16_const_net_17;
wire   [3:0]     OE_DATA_17_const_net_17;
wire   [3:0]     OE_DATA_18_const_net_17;
wire   [3:0]     OE_DATA_19_const_net_17;
wire   [3:0]     OE_DATA_20_const_net_17;
wire   [3:0]     OE_DATA_21_const_net_17;
wire   [3:0]     OE_DATA_22_const_net_17;
wire   [3:0]     OE_DATA_23_const_net_17;
wire   [3:0]     OE_DATA_24_const_net_17;
wire   [3:0]     OE_DATA_25_const_net_17;
wire   [3:0]     OE_DATA_26_const_net_17;
wire   [3:0]     OE_DATA_27_const_net_17;
wire   [3:0]     OE_DATA_28_const_net_17;
wire   [3:0]     OE_DATA_29_const_net_17;
wire   [3:0]     OE_DATA_30_const_net_17;
wire   [3:0]     OE_DATA_31_const_net_17;
wire   [3:0]     OE_DATA_32_const_net_17;
wire   [3:0]     OE_DATA_33_const_net_17;
wire   [3:0]     OE_DATA_34_const_net_17;
wire   [3:0]     OE_DATA_35_const_net_17;
wire   [3:0]     OE_DATA_36_const_net_17;
wire   [3:0]     OE_DATA_37_const_net_17;
wire   [3:0]     OE_DATA_38_const_net_17;
wire   [3:0]     OE_DATA_39_const_net_17;
wire   [3:0]     OE_DATA_40_const_net_17;
wire   [3:0]     OE_DATA_41_const_net_17;
wire   [3:0]     OE_DATA_42_const_net_17;
wire   [3:0]     OE_DATA_43_const_net_17;
wire   [3:0]     OE_DATA_44_const_net_17;
wire   [3:0]     OE_DATA_45_const_net_17;
wire   [3:0]     OE_DATA_46_const_net_17;
wire   [3:0]     OE_DATA_47_const_net_17;
wire   [3:0]     OE_DATA_48_const_net_17;
wire   [3:0]     OE_DATA_49_const_net_17;
wire   [3:0]     OE_DATA_50_const_net_17;
wire   [3:0]     OE_DATA_51_const_net_17;
wire   [3:0]     OE_DATA_52_const_net_17;
wire   [3:0]     OE_DATA_53_const_net_17;
wire   [3:0]     OE_DATA_54_const_net_17;
wire   [3:0]     OE_DATA_55_const_net_17;
wire   [3:0]     OE_DATA_56_const_net_17;
wire   [3:0]     OE_DATA_57_const_net_17;
wire   [3:0]     OE_DATA_58_const_net_17;
wire   [3:0]     OE_DATA_59_const_net_17;
wire   [3:0]     OE_DATA_60_const_net_17;
wire   [3:0]     OE_DATA_61_const_net_17;
wire   [3:0]     OE_DATA_62_const_net_17;
wire   [3:0]     OE_DATA_63_const_net_17;
wire   [1:0]     RX_DQS_90_const_net_15;
wire   [2:0]     FIFO_WR_PTR_const_net_16;
wire   [2:0]     FIFO_RD_PTR_const_net_16;
wire   [2:0]     EYE_MONITOR_LANE_WIDTH_const_net_16;
wire   [1:0]     TX_DATA_1_const_net_15;
wire   [1:0]     TX_DATA_2_const_net_15;
wire   [1:0]     TX_DATA_3_const_net_16;
wire   [1:0]     TX_DATA_4_const_net_16;
wire   [1:0]     TX_DATA_5_const_net_16;
wire   [1:0]     TX_DATA_6_const_net_16;
wire   [1:0]     TX_DATA_7_const_net_16;
wire   [1:0]     TX_DATA_8_const_net_17;
wire   [1:0]     TX_DATA_9_const_net_17;
wire   [1:0]     TX_DATA_10_const_net_17;
wire   [1:0]     TX_DATA_11_const_net_17;
wire   [1:0]     TX_DATA_12_const_net_18;
wire   [1:0]     TX_DATA_13_const_net_18;
wire   [1:0]     TX_DATA_14_const_net_18;
wire   [1:0]     TX_DATA_15_const_net_18;
wire   [1:0]     TX_DATA_16_const_net_18;
wire   [1:0]     TX_DATA_17_const_net_18;
wire   [1:0]     TX_DATA_18_const_net_18;
wire   [1:0]     TX_DATA_19_const_net_18;
wire   [1:0]     TX_DATA_20_const_net_18;
wire   [1:0]     TX_DATA_21_const_net_18;
wire   [1:0]     TX_DATA_22_const_net_18;
wire   [1:0]     TX_DATA_23_const_net_18;
wire   [1:0]     TX_DATA_24_const_net_18;
wire   [1:0]     TX_DATA_25_const_net_18;
wire   [1:0]     TX_DATA_26_const_net_18;
wire   [1:0]     TX_DATA_27_const_net_18;
wire   [1:0]     TX_DATA_28_const_net_18;
wire   [1:0]     TX_DATA_29_const_net_18;
wire   [1:0]     TX_DATA_30_const_net_18;
wire   [1:0]     TX_DATA_31_const_net_18;
wire   [1:0]     TX_DATA_32_const_net_18;
wire   [1:0]     TX_DATA_33_const_net_18;
wire   [1:0]     TX_DATA_34_const_net_18;
wire   [1:0]     TX_DATA_35_const_net_18;
wire   [1:0]     TX_DATA_36_const_net_18;
wire   [1:0]     TX_DATA_37_const_net_18;
wire   [1:0]     TX_DATA_38_const_net_18;
wire   [1:0]     TX_DATA_39_const_net_18;
wire   [1:0]     TX_DATA_40_const_net_18;
wire   [1:0]     TX_DATA_41_const_net_18;
wire   [1:0]     TX_DATA_42_const_net_18;
wire   [1:0]     TX_DATA_43_const_net_18;
wire   [1:0]     TX_DATA_44_const_net_18;
wire   [1:0]     TX_DATA_45_const_net_18;
wire   [1:0]     TX_DATA_46_const_net_18;
wire   [1:0]     TX_DATA_47_const_net_18;
wire   [1:0]     TX_DATA_48_const_net_18;
wire   [1:0]     TX_DATA_49_const_net_18;
wire   [1:0]     TX_DATA_50_const_net_18;
wire   [1:0]     TX_DATA_51_const_net_18;
wire   [1:0]     TX_DATA_52_const_net_18;
wire   [1:0]     TX_DATA_53_const_net_18;
wire   [1:0]     TX_DATA_54_const_net_18;
wire   [1:0]     TX_DATA_55_const_net_18;
wire   [1:0]     TX_DATA_56_const_net_18;
wire   [1:0]     TX_DATA_57_const_net_18;
wire   [1:0]     TX_DATA_58_const_net_18;
wire   [1:0]     TX_DATA_59_const_net_18;
wire   [1:0]     TX_DATA_60_const_net_18;
wire   [1:0]     TX_DATA_61_const_net_18;
wire   [1:0]     TX_DATA_62_const_net_18;
wire   [1:0]     TX_DATA_63_const_net_18;
wire   [1:0]     OE_DATA_1_const_net_17;
wire   [1:0]     OE_DATA_2_const_net_17;
wire   [1:0]     OE_DATA_3_const_net_17;
wire   [1:0]     OE_DATA_4_const_net_17;
wire   [1:0]     OE_DATA_5_const_net_17;
wire   [1:0]     OE_DATA_6_const_net_17;
wire   [1:0]     OE_DATA_7_const_net_17;
wire   [1:0]     OE_DATA_8_const_net_18;
wire   [1:0]     OE_DATA_9_const_net_18;
wire   [1:0]     OE_DATA_10_const_net_18;
wire   [1:0]     OE_DATA_11_const_net_18;
wire   [1:0]     OE_DATA_12_const_net_18;
wire   [1:0]     OE_DATA_13_const_net_18;
wire   [1:0]     OE_DATA_14_const_net_18;
wire   [1:0]     OE_DATA_15_const_net_18;
wire   [1:0]     OE_DATA_16_const_net_18;
wire   [1:0]     OE_DATA_17_const_net_18;
wire   [1:0]     OE_DATA_18_const_net_18;
wire   [1:0]     OE_DATA_19_const_net_18;
wire   [1:0]     OE_DATA_20_const_net_18;
wire   [1:0]     OE_DATA_21_const_net_18;
wire   [1:0]     OE_DATA_22_const_net_18;
wire   [1:0]     OE_DATA_23_const_net_18;
wire   [1:0]     OE_DATA_24_const_net_18;
wire   [1:0]     OE_DATA_25_const_net_18;
wire   [1:0]     OE_DATA_26_const_net_18;
wire   [1:0]     OE_DATA_27_const_net_18;
wire   [1:0]     OE_DATA_28_const_net_18;
wire   [1:0]     OE_DATA_29_const_net_18;
wire   [1:0]     OE_DATA_30_const_net_18;
wire   [1:0]     OE_DATA_31_const_net_18;
wire   [1:0]     OE_DATA_32_const_net_18;
wire   [1:0]     OE_DATA_33_const_net_18;
wire   [1:0]     OE_DATA_34_const_net_18;
wire   [1:0]     OE_DATA_35_const_net_18;
wire   [1:0]     OE_DATA_36_const_net_18;
wire   [1:0]     OE_DATA_37_const_net_18;
wire   [1:0]     OE_DATA_38_const_net_18;
wire   [1:0]     OE_DATA_39_const_net_18;
wire   [1:0]     OE_DATA_40_const_net_18;
wire   [1:0]     OE_DATA_41_const_net_18;
wire   [1:0]     OE_DATA_42_const_net_18;
wire   [1:0]     OE_DATA_43_const_net_18;
wire   [1:0]     OE_DATA_44_const_net_18;
wire   [1:0]     OE_DATA_45_const_net_18;
wire   [1:0]     OE_DATA_46_const_net_18;
wire   [1:0]     OE_DATA_47_const_net_18;
wire   [1:0]     OE_DATA_48_const_net_18;
wire   [1:0]     OE_DATA_49_const_net_18;
wire   [1:0]     OE_DATA_50_const_net_18;
wire   [1:0]     OE_DATA_51_const_net_18;
wire   [1:0]     OE_DATA_52_const_net_18;
wire   [1:0]     OE_DATA_53_const_net_18;
wire   [1:0]     OE_DATA_54_const_net_18;
wire   [1:0]     OE_DATA_55_const_net_18;
wire   [1:0]     OE_DATA_56_const_net_18;
wire   [1:0]     OE_DATA_57_const_net_18;
wire   [1:0]     OE_DATA_58_const_net_18;
wire   [1:0]     OE_DATA_59_const_net_18;
wire   [1:0]     OE_DATA_60_const_net_18;
wire   [1:0]     OE_DATA_61_const_net_18;
wire   [1:0]     OE_DATA_62_const_net_18;
wire   [1:0]     OE_DATA_63_const_net_18;
wire   [1:0]     RX_DQS_90_const_net_16;
wire   [2:0]     EYE_MONITOR_LANE_WIDTH_const_net_17;
wire   [7:0]     TX_DATA_1_const_net_16;
wire   [7:0]     TX_DATA_2_const_net_16;
wire   [7:0]     TX_DATA_3_const_net_17;
wire   [7:0]     TX_DATA_4_const_net_17;
wire   [7:0]     TX_DATA_5_const_net_17;
wire   [7:0]     TX_DATA_6_const_net_17;
wire   [7:0]     TX_DATA_7_const_net_17;
wire   [7:0]     TX_DATA_8_const_net_18;
wire   [7:0]     TX_DATA_9_const_net_18;
wire   [7:0]     TX_DATA_10_const_net_18;
wire   [7:0]     TX_DATA_11_const_net_18;
wire   [7:0]     TX_DATA_12_const_net_19;
wire   [7:0]     TX_DATA_13_const_net_19;
wire   [7:0]     TX_DATA_14_const_net_19;
wire   [7:0]     TX_DATA_15_const_net_19;
wire   [7:0]     TX_DATA_16_const_net_19;
wire   [7:0]     TX_DATA_17_const_net_19;
wire   [7:0]     TX_DATA_18_const_net_19;
wire   [7:0]     TX_DATA_19_const_net_19;
wire   [7:0]     TX_DATA_20_const_net_19;
wire   [7:0]     TX_DATA_21_const_net_19;
wire   [7:0]     TX_DATA_22_const_net_19;
wire   [7:0]     TX_DATA_23_const_net_19;
wire   [7:0]     TX_DATA_24_const_net_19;
wire   [7:0]     TX_DATA_25_const_net_19;
wire   [7:0]     TX_DATA_26_const_net_19;
wire   [7:0]     TX_DATA_27_const_net_19;
wire   [7:0]     TX_DATA_28_const_net_19;
wire   [7:0]     TX_DATA_29_const_net_19;
wire   [7:0]     TX_DATA_30_const_net_19;
wire   [7:0]     TX_DATA_31_const_net_19;
wire   [7:0]     TX_DATA_32_const_net_19;
wire   [7:0]     TX_DATA_33_const_net_19;
wire   [7:0]     TX_DATA_34_const_net_19;
wire   [7:0]     TX_DATA_35_const_net_19;
wire   [7:0]     TX_DATA_36_const_net_19;
wire   [7:0]     TX_DATA_37_const_net_19;
wire   [7:0]     TX_DATA_38_const_net_19;
wire   [7:0]     TX_DATA_39_const_net_19;
wire   [7:0]     TX_DATA_40_const_net_19;
wire   [7:0]     TX_DATA_41_const_net_19;
wire   [7:0]     TX_DATA_42_const_net_19;
wire   [7:0]     TX_DATA_43_const_net_19;
wire   [7:0]     TX_DATA_44_const_net_19;
wire   [7:0]     TX_DATA_45_const_net_19;
wire   [7:0]     TX_DATA_46_const_net_19;
wire   [7:0]     TX_DATA_47_const_net_19;
wire   [7:0]     TX_DATA_48_const_net_19;
wire   [7:0]     TX_DATA_49_const_net_19;
wire   [7:0]     TX_DATA_50_const_net_19;
wire   [7:0]     TX_DATA_51_const_net_19;
wire   [7:0]     TX_DATA_52_const_net_19;
wire   [7:0]     TX_DATA_53_const_net_19;
wire   [7:0]     TX_DATA_54_const_net_19;
wire   [7:0]     TX_DATA_55_const_net_19;
wire   [7:0]     TX_DATA_56_const_net_19;
wire   [7:0]     TX_DATA_57_const_net_19;
wire   [7:0]     TX_DATA_58_const_net_19;
wire   [7:0]     TX_DATA_59_const_net_19;
wire   [7:0]     TX_DATA_60_const_net_19;
wire   [7:0]     TX_DATA_61_const_net_19;
wire   [7:0]     TX_DATA_62_const_net_19;
wire   [7:0]     TX_DATA_63_const_net_19;
wire   [3:0]     OE_DATA_1_const_net_18;
wire   [3:0]     OE_DATA_2_const_net_18;
wire   [3:0]     OE_DATA_3_const_net_18;
wire   [3:0]     OE_DATA_4_const_net_18;
wire   [3:0]     OE_DATA_5_const_net_18;
wire   [3:0]     OE_DATA_6_const_net_18;
wire   [3:0]     OE_DATA_7_const_net_18;
wire   [3:0]     OE_DATA_8_const_net_19;
wire   [3:0]     OE_DATA_9_const_net_19;
wire   [3:0]     OE_DATA_10_const_net_19;
wire   [3:0]     OE_DATA_11_const_net_19;
wire   [3:0]     OE_DATA_12_const_net_19;
wire   [3:0]     OE_DATA_13_const_net_19;
wire   [3:0]     OE_DATA_14_const_net_19;
wire   [3:0]     OE_DATA_15_const_net_19;
wire   [3:0]     OE_DATA_16_const_net_19;
wire   [3:0]     OE_DATA_17_const_net_19;
wire   [3:0]     OE_DATA_18_const_net_19;
wire   [3:0]     OE_DATA_19_const_net_19;
wire   [3:0]     OE_DATA_20_const_net_19;
wire   [3:0]     OE_DATA_21_const_net_19;
wire   [3:0]     OE_DATA_22_const_net_19;
wire   [3:0]     OE_DATA_23_const_net_19;
wire   [3:0]     OE_DATA_24_const_net_19;
wire   [3:0]     OE_DATA_25_const_net_19;
wire   [3:0]     OE_DATA_26_const_net_19;
wire   [3:0]     OE_DATA_27_const_net_19;
wire   [3:0]     OE_DATA_28_const_net_19;
wire   [3:0]     OE_DATA_29_const_net_19;
wire   [3:0]     OE_DATA_30_const_net_19;
wire   [3:0]     OE_DATA_31_const_net_19;
wire   [3:0]     OE_DATA_32_const_net_19;
wire   [3:0]     OE_DATA_33_const_net_19;
wire   [3:0]     OE_DATA_34_const_net_19;
wire   [3:0]     OE_DATA_35_const_net_19;
wire   [3:0]     OE_DATA_36_const_net_19;
wire   [3:0]     OE_DATA_37_const_net_19;
wire   [3:0]     OE_DATA_38_const_net_19;
wire   [3:0]     OE_DATA_39_const_net_19;
wire   [3:0]     OE_DATA_40_const_net_19;
wire   [3:0]     OE_DATA_41_const_net_19;
wire   [3:0]     OE_DATA_42_const_net_19;
wire   [3:0]     OE_DATA_43_const_net_19;
wire   [3:0]     OE_DATA_44_const_net_19;
wire   [3:0]     OE_DATA_45_const_net_19;
wire   [3:0]     OE_DATA_46_const_net_19;
wire   [3:0]     OE_DATA_47_const_net_19;
wire   [3:0]     OE_DATA_48_const_net_19;
wire   [3:0]     OE_DATA_49_const_net_19;
wire   [3:0]     OE_DATA_50_const_net_19;
wire   [3:0]     OE_DATA_51_const_net_19;
wire   [3:0]     OE_DATA_52_const_net_19;
wire   [3:0]     OE_DATA_53_const_net_19;
wire   [3:0]     OE_DATA_54_const_net_19;
wire   [3:0]     OE_DATA_55_const_net_19;
wire   [3:0]     OE_DATA_56_const_net_19;
wire   [3:0]     OE_DATA_57_const_net_19;
wire   [3:0]     OE_DATA_58_const_net_19;
wire   [3:0]     OE_DATA_59_const_net_19;
wire   [3:0]     OE_DATA_60_const_net_19;
wire   [3:0]     OE_DATA_61_const_net_19;
wire   [3:0]     OE_DATA_62_const_net_19;
wire   [3:0]     OE_DATA_63_const_net_19;
wire   [10:0]    CDR_CLK_B_SEL_const_net_1;
wire   [2:0]     FIFO_WR_PTR_const_net_17;
wire   [2:0]     FIFO_RD_PTR_const_net_17;
wire   [2:0]     EYE_MONITOR_LANE_WIDTH_const_net_18;
wire   [7:0]     TX_DATA_1_const_net_17;
wire   [7:0]     TX_DATA_2_const_net_17;
wire   [7:0]     TX_DATA_3_const_net_18;
wire   [7:0]     TX_DATA_4_const_net_18;
wire   [7:0]     TX_DATA_5_const_net_18;
wire   [7:0]     TX_DATA_6_const_net_18;
wire   [7:0]     TX_DATA_7_const_net_18;
wire   [7:0]     TX_DATA_8_const_net_19;
wire   [7:0]     TX_DATA_9_const_net_19;
wire   [7:0]     TX_DATA_10_const_net_19;
wire   [7:0]     TX_DATA_11_const_net_19;
wire   [7:0]     TX_DATA_12_const_net_20;
wire   [7:0]     TX_DATA_13_const_net_20;
wire   [7:0]     TX_DATA_14_const_net_20;
wire   [7:0]     TX_DATA_15_const_net_20;
wire   [7:0]     TX_DATA_16_const_net_20;
wire   [7:0]     TX_DATA_17_const_net_20;
wire   [7:0]     TX_DATA_18_const_net_20;
wire   [7:0]     TX_DATA_19_const_net_20;
wire   [7:0]     TX_DATA_20_const_net_20;
wire   [7:0]     TX_DATA_21_const_net_20;
wire   [7:0]     TX_DATA_22_const_net_20;
wire   [7:0]     TX_DATA_23_const_net_20;
wire   [7:0]     TX_DATA_24_const_net_20;
wire   [7:0]     TX_DATA_25_const_net_20;
wire   [7:0]     TX_DATA_26_const_net_20;
wire   [7:0]     TX_DATA_27_const_net_20;
wire   [7:0]     TX_DATA_28_const_net_20;
wire   [7:0]     TX_DATA_29_const_net_20;
wire   [7:0]     TX_DATA_30_const_net_20;
wire   [7:0]     TX_DATA_31_const_net_20;
wire   [7:0]     TX_DATA_32_const_net_20;
wire   [7:0]     TX_DATA_33_const_net_20;
wire   [7:0]     TX_DATA_34_const_net_20;
wire   [7:0]     TX_DATA_35_const_net_20;
wire   [7:0]     TX_DATA_36_const_net_20;
wire   [7:0]     TX_DATA_37_const_net_20;
wire   [7:0]     TX_DATA_38_const_net_20;
wire   [7:0]     TX_DATA_39_const_net_20;
wire   [7:0]     TX_DATA_40_const_net_20;
wire   [7:0]     TX_DATA_41_const_net_20;
wire   [7:0]     TX_DATA_42_const_net_20;
wire   [7:0]     TX_DATA_43_const_net_20;
wire   [7:0]     TX_DATA_44_const_net_20;
wire   [7:0]     TX_DATA_45_const_net_20;
wire   [7:0]     TX_DATA_46_const_net_20;
wire   [7:0]     TX_DATA_47_const_net_20;
wire   [7:0]     TX_DATA_48_const_net_20;
wire   [7:0]     TX_DATA_49_const_net_20;
wire   [7:0]     TX_DATA_50_const_net_20;
wire   [7:0]     TX_DATA_51_const_net_20;
wire   [7:0]     TX_DATA_52_const_net_20;
wire   [7:0]     TX_DATA_53_const_net_20;
wire   [7:0]     TX_DATA_54_const_net_20;
wire   [7:0]     TX_DATA_55_const_net_20;
wire   [7:0]     TX_DATA_56_const_net_20;
wire   [7:0]     TX_DATA_57_const_net_20;
wire   [7:0]     TX_DATA_58_const_net_20;
wire   [7:0]     TX_DATA_59_const_net_20;
wire   [7:0]     TX_DATA_60_const_net_20;
wire   [7:0]     TX_DATA_61_const_net_20;
wire   [7:0]     TX_DATA_62_const_net_20;
wire   [7:0]     TX_DATA_63_const_net_20;
wire   [3:0]     OE_DATA_1_const_net_19;
wire   [3:0]     OE_DATA_2_const_net_19;
wire   [3:0]     OE_DATA_3_const_net_19;
wire   [3:0]     OE_DATA_4_const_net_19;
wire   [3:0]     OE_DATA_5_const_net_19;
wire   [3:0]     OE_DATA_6_const_net_19;
wire   [3:0]     OE_DATA_7_const_net_19;
wire   [3:0]     OE_DATA_8_const_net_20;
wire   [3:0]     OE_DATA_9_const_net_20;
wire   [3:0]     OE_DATA_10_const_net_20;
wire   [3:0]     OE_DATA_11_const_net_20;
wire   [3:0]     OE_DATA_12_const_net_20;
wire   [3:0]     OE_DATA_13_const_net_20;
wire   [3:0]     OE_DATA_14_const_net_20;
wire   [3:0]     OE_DATA_15_const_net_20;
wire   [3:0]     OE_DATA_16_const_net_20;
wire   [3:0]     OE_DATA_17_const_net_20;
wire   [3:0]     OE_DATA_18_const_net_20;
wire   [3:0]     OE_DATA_19_const_net_20;
wire   [3:0]     OE_DATA_20_const_net_20;
wire   [3:0]     OE_DATA_21_const_net_20;
wire   [3:0]     OE_DATA_22_const_net_20;
wire   [3:0]     OE_DATA_23_const_net_20;
wire   [3:0]     OE_DATA_24_const_net_20;
wire   [3:0]     OE_DATA_25_const_net_20;
wire   [3:0]     OE_DATA_26_const_net_20;
wire   [3:0]     OE_DATA_27_const_net_20;
wire   [3:0]     OE_DATA_28_const_net_20;
wire   [3:0]     OE_DATA_29_const_net_20;
wire   [3:0]     OE_DATA_30_const_net_20;
wire   [3:0]     OE_DATA_31_const_net_20;
wire   [3:0]     OE_DATA_32_const_net_20;
wire   [3:0]     OE_DATA_33_const_net_20;
wire   [3:0]     OE_DATA_34_const_net_20;
wire   [3:0]     OE_DATA_35_const_net_20;
wire   [3:0]     OE_DATA_36_const_net_20;
wire   [3:0]     OE_DATA_37_const_net_20;
wire   [3:0]     OE_DATA_38_const_net_20;
wire   [3:0]     OE_DATA_39_const_net_20;
wire   [3:0]     OE_DATA_40_const_net_20;
wire   [3:0]     OE_DATA_41_const_net_20;
wire   [3:0]     OE_DATA_42_const_net_20;
wire   [3:0]     OE_DATA_43_const_net_20;
wire   [3:0]     OE_DATA_44_const_net_20;
wire   [3:0]     OE_DATA_45_const_net_20;
wire   [3:0]     OE_DATA_46_const_net_20;
wire   [3:0]     OE_DATA_47_const_net_20;
wire   [3:0]     OE_DATA_48_const_net_20;
wire   [3:0]     OE_DATA_49_const_net_20;
wire   [3:0]     OE_DATA_50_const_net_20;
wire   [3:0]     OE_DATA_51_const_net_20;
wire   [3:0]     OE_DATA_52_const_net_20;
wire   [3:0]     OE_DATA_53_const_net_20;
wire   [3:0]     OE_DATA_54_const_net_20;
wire   [3:0]     OE_DATA_55_const_net_20;
wire   [3:0]     OE_DATA_56_const_net_20;
wire   [3:0]     OE_DATA_57_const_net_20;
wire   [3:0]     OE_DATA_58_const_net_20;
wire   [3:0]     OE_DATA_59_const_net_20;
wire   [3:0]     OE_DATA_60_const_net_20;
wire   [3:0]     OE_DATA_61_const_net_20;
wire   [3:0]     OE_DATA_62_const_net_20;
wire   [3:0]     OE_DATA_63_const_net_20;
wire   [7:0]     TX_DATA_8_const_net_20;
wire   [7:0]     TX_DATA_9_const_net_20;
wire   [7:0]     TX_DATA_10_const_net_20;
wire   [7:0]     TX_DATA_11_const_net_20;
wire   [7:0]     TX_DATA_12_const_net_21;
wire   [7:0]     TX_DATA_13_const_net_21;
wire   [7:0]     TX_DATA_14_const_net_21;
wire   [7:0]     TX_DATA_15_const_net_21;
wire   [7:0]     TX_DATA_16_const_net_21;
wire   [7:0]     TX_DATA_17_const_net_21;
wire   [7:0]     TX_DATA_18_const_net_21;
wire   [7:0]     TX_DATA_19_const_net_21;
wire   [7:0]     TX_DATA_20_const_net_21;
wire   [7:0]     TX_DATA_21_const_net_21;
wire   [7:0]     TX_DATA_22_const_net_21;
wire   [7:0]     TX_DATA_23_const_net_21;
wire   [7:0]     TX_DATA_24_const_net_21;
wire   [7:0]     TX_DATA_25_const_net_21;
wire   [7:0]     TX_DATA_26_const_net_21;
wire   [7:0]     TX_DATA_27_const_net_21;
wire   [7:0]     TX_DATA_28_const_net_21;
wire   [7:0]     TX_DATA_29_const_net_21;
wire   [7:0]     TX_DATA_30_const_net_21;
wire   [7:0]     TX_DATA_31_const_net_21;
wire   [7:0]     TX_DATA_32_const_net_21;
wire   [7:0]     TX_DATA_33_const_net_21;
wire   [7:0]     TX_DATA_34_const_net_21;
wire   [7:0]     TX_DATA_35_const_net_21;
wire   [7:0]     TX_DATA_36_const_net_21;
wire   [7:0]     TX_DATA_37_const_net_21;
wire   [7:0]     TX_DATA_38_const_net_21;
wire   [7:0]     TX_DATA_39_const_net_21;
wire   [7:0]     TX_DATA_40_const_net_21;
wire   [7:0]     TX_DATA_41_const_net_21;
wire   [7:0]     TX_DATA_42_const_net_21;
wire   [7:0]     TX_DATA_43_const_net_21;
wire   [7:0]     TX_DATA_44_const_net_21;
wire   [7:0]     TX_DATA_45_const_net_21;
wire   [7:0]     TX_DATA_46_const_net_21;
wire   [7:0]     TX_DATA_47_const_net_21;
wire   [7:0]     TX_DATA_48_const_net_21;
wire   [7:0]     TX_DATA_49_const_net_21;
wire   [7:0]     TX_DATA_50_const_net_21;
wire   [7:0]     TX_DATA_51_const_net_21;
wire   [7:0]     TX_DATA_52_const_net_21;
wire   [7:0]     TX_DATA_53_const_net_21;
wire   [7:0]     TX_DATA_54_const_net_21;
wire   [7:0]     TX_DATA_55_const_net_21;
wire   [7:0]     TX_DATA_56_const_net_21;
wire   [7:0]     TX_DATA_57_const_net_21;
wire   [7:0]     TX_DATA_58_const_net_21;
wire   [7:0]     TX_DATA_59_const_net_21;
wire   [7:0]     TX_DATA_60_const_net_21;
wire   [7:0]     TX_DATA_61_const_net_21;
wire   [7:0]     TX_DATA_62_const_net_21;
wire   [7:0]     TX_DATA_63_const_net_21;
wire   [3:0]     OE_DATA_8_const_net_21;
wire   [3:0]     OE_DATA_9_const_net_21;
wire   [3:0]     OE_DATA_10_const_net_21;
wire   [3:0]     OE_DATA_11_const_net_21;
wire   [3:0]     OE_DATA_12_const_net_21;
wire   [3:0]     OE_DATA_13_const_net_21;
wire   [3:0]     OE_DATA_14_const_net_21;
wire   [3:0]     OE_DATA_15_const_net_21;
wire   [3:0]     OE_DATA_16_const_net_21;
wire   [3:0]     OE_DATA_17_const_net_21;
wire   [3:0]     OE_DATA_18_const_net_21;
wire   [3:0]     OE_DATA_19_const_net_21;
wire   [3:0]     OE_DATA_20_const_net_21;
wire   [3:0]     OE_DATA_21_const_net_21;
wire   [3:0]     OE_DATA_22_const_net_21;
wire   [3:0]     OE_DATA_23_const_net_21;
wire   [3:0]     OE_DATA_24_const_net_21;
wire   [3:0]     OE_DATA_25_const_net_21;
wire   [3:0]     OE_DATA_26_const_net_21;
wire   [3:0]     OE_DATA_27_const_net_21;
wire   [3:0]     OE_DATA_28_const_net_21;
wire   [3:0]     OE_DATA_29_const_net_21;
wire   [3:0]     OE_DATA_30_const_net_21;
wire   [3:0]     OE_DATA_31_const_net_21;
wire   [3:0]     OE_DATA_32_const_net_21;
wire   [3:0]     OE_DATA_33_const_net_21;
wire   [3:0]     OE_DATA_34_const_net_21;
wire   [3:0]     OE_DATA_35_const_net_21;
wire   [3:0]     OE_DATA_36_const_net_21;
wire   [3:0]     OE_DATA_37_const_net_21;
wire   [3:0]     OE_DATA_38_const_net_21;
wire   [3:0]     OE_DATA_39_const_net_21;
wire   [3:0]     OE_DATA_40_const_net_21;
wire   [3:0]     OE_DATA_41_const_net_21;
wire   [3:0]     OE_DATA_42_const_net_21;
wire   [3:0]     OE_DATA_43_const_net_21;
wire   [3:0]     OE_DATA_44_const_net_21;
wire   [3:0]     OE_DATA_45_const_net_21;
wire   [3:0]     OE_DATA_46_const_net_21;
wire   [3:0]     OE_DATA_47_const_net_21;
wire   [3:0]     OE_DATA_48_const_net_21;
wire   [3:0]     OE_DATA_49_const_net_21;
wire   [3:0]     OE_DATA_50_const_net_21;
wire   [3:0]     OE_DATA_51_const_net_21;
wire   [3:0]     OE_DATA_52_const_net_21;
wire   [3:0]     OE_DATA_53_const_net_21;
wire   [3:0]     OE_DATA_54_const_net_21;
wire   [3:0]     OE_DATA_55_const_net_21;
wire   [3:0]     OE_DATA_56_const_net_21;
wire   [3:0]     OE_DATA_57_const_net_21;
wire   [3:0]     OE_DATA_58_const_net_21;
wire   [3:0]     OE_DATA_59_const_net_21;
wire   [3:0]     OE_DATA_60_const_net_21;
wire   [3:0]     OE_DATA_61_const_net_21;
wire   [3:0]     OE_DATA_62_const_net_21;
wire   [3:0]     OE_DATA_63_const_net_21;
wire   [7:0]     PAD_I_const_net_3;
wire   [7:0]     PAD_N_const_net_3;
wire   [7:0]     PAD_I_N_const_net_3;
wire   [7:0]     TX_DATA_1_const_net_18;
wire   [7:0]     TX_DATA_2_const_net_18;
wire   [7:0]     TX_DATA_3_const_net_19;
wire   [7:0]     TX_DATA_4_const_net_19;
wire   [7:0]     TX_DATA_5_const_net_19;
wire   [7:0]     TX_DATA_6_const_net_19;
wire   [7:0]     TX_DATA_7_const_net_19;
wire   [7:0]     TX_DATA_8_const_net_21;
wire   [7:0]     TX_DATA_9_const_net_21;
wire   [7:0]     TX_DATA_10_const_net_21;
wire   [7:0]     TX_DATA_11_const_net_21;
wire   [7:0]     TX_DATA_12_const_net_22;
wire   [7:0]     TX_DATA_13_const_net_22;
wire   [7:0]     TX_DATA_14_const_net_22;
wire   [7:0]     TX_DATA_15_const_net_22;
wire   [7:0]     TX_DATA_16_const_net_22;
wire   [7:0]     TX_DATA_17_const_net_22;
wire   [7:0]     TX_DATA_18_const_net_22;
wire   [7:0]     TX_DATA_19_const_net_22;
wire   [7:0]     TX_DATA_20_const_net_22;
wire   [7:0]     TX_DATA_21_const_net_22;
wire   [7:0]     TX_DATA_22_const_net_22;
wire   [7:0]     TX_DATA_23_const_net_22;
wire   [7:0]     TX_DATA_24_const_net_22;
wire   [7:0]     TX_DATA_25_const_net_22;
wire   [7:0]     TX_DATA_26_const_net_22;
wire   [7:0]     TX_DATA_27_const_net_22;
wire   [7:0]     TX_DATA_28_const_net_22;
wire   [7:0]     TX_DATA_29_const_net_22;
wire   [7:0]     TX_DATA_30_const_net_22;
wire   [7:0]     TX_DATA_31_const_net_22;
wire   [7:0]     TX_DATA_32_const_net_22;
wire   [7:0]     TX_DATA_33_const_net_22;
wire   [7:0]     TX_DATA_34_const_net_22;
wire   [7:0]     TX_DATA_35_const_net_22;
wire   [7:0]     TX_DATA_36_const_net_22;
wire   [7:0]     TX_DATA_37_const_net_22;
wire   [7:0]     TX_DATA_38_const_net_22;
wire   [7:0]     TX_DATA_39_const_net_22;
wire   [7:0]     TX_DATA_40_const_net_22;
wire   [7:0]     TX_DATA_41_const_net_22;
wire   [7:0]     TX_DATA_42_const_net_22;
wire   [7:0]     TX_DATA_43_const_net_22;
wire   [7:0]     TX_DATA_44_const_net_22;
wire   [7:0]     TX_DATA_45_const_net_22;
wire   [7:0]     TX_DATA_46_const_net_22;
wire   [7:0]     TX_DATA_47_const_net_22;
wire   [7:0]     TX_DATA_48_const_net_22;
wire   [7:0]     TX_DATA_49_const_net_22;
wire   [7:0]     TX_DATA_50_const_net_22;
wire   [7:0]     TX_DATA_51_const_net_22;
wire   [7:0]     TX_DATA_52_const_net_22;
wire   [7:0]     TX_DATA_53_const_net_22;
wire   [7:0]     TX_DATA_54_const_net_22;
wire   [7:0]     TX_DATA_55_const_net_22;
wire   [7:0]     TX_DATA_56_const_net_22;
wire   [7:0]     TX_DATA_57_const_net_22;
wire   [7:0]     TX_DATA_58_const_net_22;
wire   [7:0]     TX_DATA_59_const_net_22;
wire   [7:0]     TX_DATA_60_const_net_22;
wire   [7:0]     TX_DATA_61_const_net_22;
wire   [7:0]     TX_DATA_62_const_net_22;
wire   [7:0]     TX_DATA_63_const_net_22;
wire   [3:0]     OE_DATA_1_const_net_20;
wire   [3:0]     OE_DATA_2_const_net_20;
wire   [3:0]     OE_DATA_3_const_net_20;
wire   [3:0]     OE_DATA_4_const_net_20;
wire   [3:0]     OE_DATA_5_const_net_20;
wire   [3:0]     OE_DATA_6_const_net_20;
wire   [3:0]     OE_DATA_7_const_net_20;
wire   [3:0]     OE_DATA_8_const_net_22;
wire   [3:0]     OE_DATA_9_const_net_22;
wire   [3:0]     OE_DATA_10_const_net_22;
wire   [3:0]     OE_DATA_11_const_net_22;
wire   [3:0]     OE_DATA_12_const_net_22;
wire   [3:0]     OE_DATA_13_const_net_22;
wire   [3:0]     OE_DATA_14_const_net_22;
wire   [3:0]     OE_DATA_15_const_net_22;
wire   [3:0]     OE_DATA_16_const_net_22;
wire   [3:0]     OE_DATA_17_const_net_22;
wire   [3:0]     OE_DATA_18_const_net_22;
wire   [3:0]     OE_DATA_19_const_net_22;
wire   [3:0]     OE_DATA_20_const_net_22;
wire   [3:0]     OE_DATA_21_const_net_22;
wire   [3:0]     OE_DATA_22_const_net_22;
wire   [3:0]     OE_DATA_23_const_net_22;
wire   [3:0]     OE_DATA_24_const_net_22;
wire   [3:0]     OE_DATA_25_const_net_22;
wire   [3:0]     OE_DATA_26_const_net_22;
wire   [3:0]     OE_DATA_27_const_net_22;
wire   [3:0]     OE_DATA_28_const_net_22;
wire   [3:0]     OE_DATA_29_const_net_22;
wire   [3:0]     OE_DATA_30_const_net_22;
wire   [3:0]     OE_DATA_31_const_net_22;
wire   [3:0]     OE_DATA_32_const_net_22;
wire   [3:0]     OE_DATA_33_const_net_22;
wire   [3:0]     OE_DATA_34_const_net_22;
wire   [3:0]     OE_DATA_35_const_net_22;
wire   [3:0]     OE_DATA_36_const_net_22;
wire   [3:0]     OE_DATA_37_const_net_22;
wire   [3:0]     OE_DATA_38_const_net_22;
wire   [3:0]     OE_DATA_39_const_net_22;
wire   [3:0]     OE_DATA_40_const_net_22;
wire   [3:0]     OE_DATA_41_const_net_22;
wire   [3:0]     OE_DATA_42_const_net_22;
wire   [3:0]     OE_DATA_43_const_net_22;
wire   [3:0]     OE_DATA_44_const_net_22;
wire   [3:0]     OE_DATA_45_const_net_22;
wire   [3:0]     OE_DATA_46_const_net_22;
wire   [3:0]     OE_DATA_47_const_net_22;
wire   [3:0]     OE_DATA_48_const_net_22;
wire   [3:0]     OE_DATA_49_const_net_22;
wire   [3:0]     OE_DATA_50_const_net_22;
wire   [3:0]     OE_DATA_51_const_net_22;
wire   [3:0]     OE_DATA_52_const_net_22;
wire   [3:0]     OE_DATA_53_const_net_22;
wire   [3:0]     OE_DATA_54_const_net_22;
wire   [3:0]     OE_DATA_55_const_net_22;
wire   [3:0]     OE_DATA_56_const_net_22;
wire   [3:0]     OE_DATA_57_const_net_22;
wire   [3:0]     OE_DATA_58_const_net_22;
wire   [3:0]     OE_DATA_59_const_net_22;
wire   [3:0]     OE_DATA_60_const_net_22;
wire   [3:0]     OE_DATA_61_const_net_22;
wire   [3:0]     OE_DATA_62_const_net_22;
wire   [3:0]     OE_DATA_63_const_net_22;
wire   [1:0]     RX_DQS_90_const_net_17;
wire   [2:0]     FIFO_WR_PTR_const_net_18;
wire   [2:0]     FIFO_RD_PTR_const_net_18;
wire   [2:0]     EYE_MONITOR_LANE_WIDTH_const_net_19;
wire   [1:0]     TX_DATA_1_const_net_19;
wire   [1:0]     TX_DATA_2_const_net_19;
wire   [1:0]     TX_DATA_3_const_net_20;
wire   [1:0]     TX_DATA_4_const_net_20;
wire   [1:0]     TX_DATA_5_const_net_20;
wire   [1:0]     TX_DATA_6_const_net_20;
wire   [1:0]     TX_DATA_7_const_net_20;
wire   [1:0]     TX_DATA_8_const_net_22;
wire   [1:0]     TX_DATA_9_const_net_22;
wire   [1:0]     TX_DATA_10_const_net_22;
wire   [1:0]     TX_DATA_11_const_net_22;
wire   [1:0]     TX_DATA_12_const_net_23;
wire   [1:0]     TX_DATA_13_const_net_23;
wire   [1:0]     TX_DATA_14_const_net_23;
wire   [1:0]     TX_DATA_15_const_net_23;
wire   [1:0]     TX_DATA_16_const_net_23;
wire   [1:0]     TX_DATA_17_const_net_23;
wire   [1:0]     TX_DATA_18_const_net_23;
wire   [1:0]     TX_DATA_19_const_net_23;
wire   [1:0]     TX_DATA_20_const_net_23;
wire   [1:0]     TX_DATA_21_const_net_23;
wire   [1:0]     TX_DATA_22_const_net_23;
wire   [1:0]     TX_DATA_23_const_net_23;
wire   [1:0]     TX_DATA_24_const_net_23;
wire   [1:0]     TX_DATA_25_const_net_23;
wire   [1:0]     TX_DATA_26_const_net_23;
wire   [1:0]     TX_DATA_27_const_net_23;
wire   [1:0]     TX_DATA_28_const_net_23;
wire   [1:0]     TX_DATA_29_const_net_23;
wire   [1:0]     TX_DATA_30_const_net_23;
wire   [1:0]     TX_DATA_31_const_net_23;
wire   [1:0]     TX_DATA_32_const_net_23;
wire   [1:0]     TX_DATA_33_const_net_23;
wire   [1:0]     TX_DATA_34_const_net_23;
wire   [1:0]     TX_DATA_35_const_net_23;
wire   [1:0]     TX_DATA_36_const_net_23;
wire   [1:0]     TX_DATA_37_const_net_23;
wire   [1:0]     TX_DATA_38_const_net_23;
wire   [1:0]     TX_DATA_39_const_net_23;
wire   [1:0]     TX_DATA_40_const_net_23;
wire   [1:0]     TX_DATA_41_const_net_23;
wire   [1:0]     TX_DATA_42_const_net_23;
wire   [1:0]     TX_DATA_43_const_net_23;
wire   [1:0]     TX_DATA_44_const_net_23;
wire   [1:0]     TX_DATA_45_const_net_23;
wire   [1:0]     TX_DATA_46_const_net_23;
wire   [1:0]     TX_DATA_47_const_net_23;
wire   [1:0]     TX_DATA_48_const_net_23;
wire   [1:0]     TX_DATA_49_const_net_23;
wire   [1:0]     TX_DATA_50_const_net_23;
wire   [1:0]     TX_DATA_51_const_net_23;
wire   [1:0]     TX_DATA_52_const_net_23;
wire   [1:0]     TX_DATA_53_const_net_23;
wire   [1:0]     TX_DATA_54_const_net_23;
wire   [1:0]     TX_DATA_55_const_net_23;
wire   [1:0]     TX_DATA_56_const_net_23;
wire   [1:0]     TX_DATA_57_const_net_23;
wire   [1:0]     TX_DATA_58_const_net_23;
wire   [1:0]     TX_DATA_59_const_net_23;
wire   [1:0]     TX_DATA_60_const_net_23;
wire   [1:0]     TX_DATA_61_const_net_23;
wire   [1:0]     TX_DATA_62_const_net_23;
wire   [1:0]     TX_DATA_63_const_net_23;
wire   [1:0]     OE_DATA_1_const_net_21;
wire   [1:0]     OE_DATA_2_const_net_21;
wire   [1:0]     OE_DATA_3_const_net_21;
wire   [1:0]     OE_DATA_4_const_net_21;
wire   [1:0]     OE_DATA_5_const_net_21;
wire   [1:0]     OE_DATA_6_const_net_21;
wire   [1:0]     OE_DATA_7_const_net_21;
wire   [1:0]     OE_DATA_8_const_net_23;
wire   [1:0]     OE_DATA_9_const_net_23;
wire   [1:0]     OE_DATA_10_const_net_23;
wire   [1:0]     OE_DATA_11_const_net_23;
wire   [1:0]     OE_DATA_12_const_net_23;
wire   [1:0]     OE_DATA_13_const_net_23;
wire   [1:0]     OE_DATA_14_const_net_23;
wire   [1:0]     OE_DATA_15_const_net_23;
wire   [1:0]     OE_DATA_16_const_net_23;
wire   [1:0]     OE_DATA_17_const_net_23;
wire   [1:0]     OE_DATA_18_const_net_23;
wire   [1:0]     OE_DATA_19_const_net_23;
wire   [1:0]     OE_DATA_20_const_net_23;
wire   [1:0]     OE_DATA_21_const_net_23;
wire   [1:0]     OE_DATA_22_const_net_23;
wire   [1:0]     OE_DATA_23_const_net_23;
wire   [1:0]     OE_DATA_24_const_net_23;
wire   [1:0]     OE_DATA_25_const_net_23;
wire   [1:0]     OE_DATA_26_const_net_23;
wire   [1:0]     OE_DATA_27_const_net_23;
wire   [1:0]     OE_DATA_28_const_net_23;
wire   [1:0]     OE_DATA_29_const_net_23;
wire   [1:0]     OE_DATA_30_const_net_23;
wire   [1:0]     OE_DATA_31_const_net_23;
wire   [1:0]     OE_DATA_32_const_net_23;
wire   [1:0]     OE_DATA_33_const_net_23;
wire   [1:0]     OE_DATA_34_const_net_23;
wire   [1:0]     OE_DATA_35_const_net_23;
wire   [1:0]     OE_DATA_36_const_net_23;
wire   [1:0]     OE_DATA_37_const_net_23;
wire   [1:0]     OE_DATA_38_const_net_23;
wire   [1:0]     OE_DATA_39_const_net_23;
wire   [1:0]     OE_DATA_40_const_net_23;
wire   [1:0]     OE_DATA_41_const_net_23;
wire   [1:0]     OE_DATA_42_const_net_23;
wire   [1:0]     OE_DATA_43_const_net_23;
wire   [1:0]     OE_DATA_44_const_net_23;
wire   [1:0]     OE_DATA_45_const_net_23;
wire   [1:0]     OE_DATA_46_const_net_23;
wire   [1:0]     OE_DATA_47_const_net_23;
wire   [1:0]     OE_DATA_48_const_net_23;
wire   [1:0]     OE_DATA_49_const_net_23;
wire   [1:0]     OE_DATA_50_const_net_23;
wire   [1:0]     OE_DATA_51_const_net_23;
wire   [1:0]     OE_DATA_52_const_net_23;
wire   [1:0]     OE_DATA_53_const_net_23;
wire   [1:0]     OE_DATA_54_const_net_23;
wire   [1:0]     OE_DATA_55_const_net_23;
wire   [1:0]     OE_DATA_56_const_net_23;
wire   [1:0]     OE_DATA_57_const_net_23;
wire   [1:0]     OE_DATA_58_const_net_23;
wire   [1:0]     OE_DATA_59_const_net_23;
wire   [1:0]     OE_DATA_60_const_net_23;
wire   [1:0]     OE_DATA_61_const_net_23;
wire   [1:0]     OE_DATA_62_const_net_23;
wire   [1:0]     OE_DATA_63_const_net_23;
wire   [1:0]     RX_DQS_90_const_net_18;
wire   [2:0]     EYE_MONITOR_LANE_WIDTH_const_net_20;
wire   [7:0]     TX_DATA_1_const_net_20;
wire   [7:0]     TX_DATA_2_const_net_20;
wire   [7:0]     TX_DATA_3_const_net_21;
wire   [7:0]     TX_DATA_4_const_net_21;
wire   [7:0]     TX_DATA_5_const_net_21;
wire   [7:0]     TX_DATA_6_const_net_21;
wire   [7:0]     TX_DATA_7_const_net_21;
wire   [7:0]     TX_DATA_8_const_net_23;
wire   [7:0]     TX_DATA_9_const_net_23;
wire   [7:0]     TX_DATA_10_const_net_23;
wire   [7:0]     TX_DATA_11_const_net_23;
wire   [7:0]     TX_DATA_12_const_net_24;
wire   [7:0]     TX_DATA_13_const_net_24;
wire   [7:0]     TX_DATA_14_const_net_24;
wire   [7:0]     TX_DATA_15_const_net_24;
wire   [7:0]     TX_DATA_16_const_net_24;
wire   [7:0]     TX_DATA_17_const_net_24;
wire   [7:0]     TX_DATA_18_const_net_24;
wire   [7:0]     TX_DATA_19_const_net_24;
wire   [7:0]     TX_DATA_20_const_net_24;
wire   [7:0]     TX_DATA_21_const_net_24;
wire   [7:0]     TX_DATA_22_const_net_24;
wire   [7:0]     TX_DATA_23_const_net_24;
wire   [7:0]     TX_DATA_24_const_net_24;
wire   [7:0]     TX_DATA_25_const_net_24;
wire   [7:0]     TX_DATA_26_const_net_24;
wire   [7:0]     TX_DATA_27_const_net_24;
wire   [7:0]     TX_DATA_28_const_net_24;
wire   [7:0]     TX_DATA_29_const_net_24;
wire   [7:0]     TX_DATA_30_const_net_24;
wire   [7:0]     TX_DATA_31_const_net_24;
wire   [7:0]     TX_DATA_32_const_net_24;
wire   [7:0]     TX_DATA_33_const_net_24;
wire   [7:0]     TX_DATA_34_const_net_24;
wire   [7:0]     TX_DATA_35_const_net_24;
wire   [7:0]     TX_DATA_36_const_net_24;
wire   [7:0]     TX_DATA_37_const_net_24;
wire   [7:0]     TX_DATA_38_const_net_24;
wire   [7:0]     TX_DATA_39_const_net_24;
wire   [7:0]     TX_DATA_40_const_net_24;
wire   [7:0]     TX_DATA_41_const_net_24;
wire   [7:0]     TX_DATA_42_const_net_24;
wire   [7:0]     TX_DATA_43_const_net_24;
wire   [7:0]     TX_DATA_44_const_net_24;
wire   [7:0]     TX_DATA_45_const_net_24;
wire   [7:0]     TX_DATA_46_const_net_24;
wire   [7:0]     TX_DATA_47_const_net_24;
wire   [7:0]     TX_DATA_48_const_net_24;
wire   [7:0]     TX_DATA_49_const_net_24;
wire   [7:0]     TX_DATA_50_const_net_24;
wire   [7:0]     TX_DATA_51_const_net_24;
wire   [7:0]     TX_DATA_52_const_net_24;
wire   [7:0]     TX_DATA_53_const_net_24;
wire   [7:0]     TX_DATA_54_const_net_24;
wire   [7:0]     TX_DATA_55_const_net_24;
wire   [7:0]     TX_DATA_56_const_net_24;
wire   [7:0]     TX_DATA_57_const_net_24;
wire   [7:0]     TX_DATA_58_const_net_24;
wire   [7:0]     TX_DATA_59_const_net_24;
wire   [7:0]     TX_DATA_60_const_net_24;
wire   [7:0]     TX_DATA_61_const_net_24;
wire   [7:0]     TX_DATA_62_const_net_24;
wire   [7:0]     TX_DATA_63_const_net_24;
wire   [3:0]     OE_DATA_1_const_net_22;
wire   [3:0]     OE_DATA_2_const_net_22;
wire   [3:0]     OE_DATA_3_const_net_22;
wire   [3:0]     OE_DATA_4_const_net_22;
wire   [3:0]     OE_DATA_5_const_net_22;
wire   [3:0]     OE_DATA_6_const_net_22;
wire   [3:0]     OE_DATA_7_const_net_22;
wire   [3:0]     OE_DATA_8_const_net_24;
wire   [3:0]     OE_DATA_9_const_net_24;
wire   [3:0]     OE_DATA_10_const_net_24;
wire   [3:0]     OE_DATA_11_const_net_24;
wire   [3:0]     OE_DATA_12_const_net_24;
wire   [3:0]     OE_DATA_13_const_net_24;
wire   [3:0]     OE_DATA_14_const_net_24;
wire   [3:0]     OE_DATA_15_const_net_24;
wire   [3:0]     OE_DATA_16_const_net_24;
wire   [3:0]     OE_DATA_17_const_net_24;
wire   [3:0]     OE_DATA_18_const_net_24;
wire   [3:0]     OE_DATA_19_const_net_24;
wire   [3:0]     OE_DATA_20_const_net_24;
wire   [3:0]     OE_DATA_21_const_net_24;
wire   [3:0]     OE_DATA_22_const_net_24;
wire   [3:0]     OE_DATA_23_const_net_24;
wire   [3:0]     OE_DATA_24_const_net_24;
wire   [3:0]     OE_DATA_25_const_net_24;
wire   [3:0]     OE_DATA_26_const_net_24;
wire   [3:0]     OE_DATA_27_const_net_24;
wire   [3:0]     OE_DATA_28_const_net_24;
wire   [3:0]     OE_DATA_29_const_net_24;
wire   [3:0]     OE_DATA_30_const_net_24;
wire   [3:0]     OE_DATA_31_const_net_24;
wire   [3:0]     OE_DATA_32_const_net_24;
wire   [3:0]     OE_DATA_33_const_net_24;
wire   [3:0]     OE_DATA_34_const_net_24;
wire   [3:0]     OE_DATA_35_const_net_24;
wire   [3:0]     OE_DATA_36_const_net_24;
wire   [3:0]     OE_DATA_37_const_net_24;
wire   [3:0]     OE_DATA_38_const_net_24;
wire   [3:0]     OE_DATA_39_const_net_24;
wire   [3:0]     OE_DATA_40_const_net_24;
wire   [3:0]     OE_DATA_41_const_net_24;
wire   [3:0]     OE_DATA_42_const_net_24;
wire   [3:0]     OE_DATA_43_const_net_24;
wire   [3:0]     OE_DATA_44_const_net_24;
wire   [3:0]     OE_DATA_45_const_net_24;
wire   [3:0]     OE_DATA_46_const_net_24;
wire   [3:0]     OE_DATA_47_const_net_24;
wire   [3:0]     OE_DATA_48_const_net_24;
wire   [3:0]     OE_DATA_49_const_net_24;
wire   [3:0]     OE_DATA_50_const_net_24;
wire   [3:0]     OE_DATA_51_const_net_24;
wire   [3:0]     OE_DATA_52_const_net_24;
wire   [3:0]     OE_DATA_53_const_net_24;
wire   [3:0]     OE_DATA_54_const_net_24;
wire   [3:0]     OE_DATA_55_const_net_24;
wire   [3:0]     OE_DATA_56_const_net_24;
wire   [3:0]     OE_DATA_57_const_net_24;
wire   [3:0]     OE_DATA_58_const_net_24;
wire   [3:0]     OE_DATA_59_const_net_24;
wire   [3:0]     OE_DATA_60_const_net_24;
wire   [3:0]     OE_DATA_61_const_net_24;
wire   [3:0]     OE_DATA_62_const_net_24;
wire   [3:0]     OE_DATA_63_const_net_24;
wire   [2:0]     READ_CLK_SEL_const_net_0;
wire   [2:0]     EYE_MONITOR_WIDTH_IN_const_net_2;
wire   [7:0]     CDR_CLK_A_SEL_const_net_0;
wire   [10:0]    CDR_CLK_B_SEL_const_net_2;
//--------------------------------------------------------------------
// Inverted Nets
//--------------------------------------------------------------------
wire             SYNC_SYS_RST_N_net_1;
wire             SYNC_SYS_RST_N_OUT_PRE_INV0_0;
//--------------------------------------------------------------------
// Constant assignments
//--------------------------------------------------------------------
assign DFI_CALVL_RESP_const_net_0          = 2'h0;
assign VCC_net                             = 1'b1;
assign GND_net                             = 1'b0;
assign DFI_PHYUPD_TYPE_const_net_0         = 2'h0;
assign OE_DATA_0_const_net_0               = 4'hF;
assign OE_DATA_1_const_net_0               = 4'hF;
assign OE_DATA_2_const_net_0               = 4'hF;
assign OE_DATA_3_const_net_0               = 4'hF;
assign OE_DATA_4_const_net_0               = 4'hF;
assign OE_DATA_5_const_net_0               = 4'hF;
assign OE_DATA_6_const_net_0               = 4'hF;
assign OE_DATA_7_const_net_0               = 4'hF;
assign OE_DATA_8_const_net_0               = 4'hF;
assign OE_DATA_9_const_net_0               = 4'hF;
assign OE_DATA_10_const_net_0              = 4'hF;
assign OE_DATA_11_const_net_0              = 4'hF;
assign OE_DATA_0_const_net_1               = 4'hF;
assign OE_DATA_0_const_net_2               = 4'hF;
assign OE_DATA_0_const_net_3               = 4'hF;
assign OE_DATA_0_const_net_4               = 4'hF;
assign OE_DATA_1_const_net_1               = 4'hF;
assign OE_DATA_2_const_net_1               = 4'hF;
assign OE_DATA_0_const_net_5               = 4'hF;
assign OE_DATA_0_const_net_6               = 4'hF;
assign OE_DATA_0_const_net_7               = 4'hF;
assign OE_DATA_0_const_net_8               = 4'hF;
assign OE_DATA_0_const_net_9               = 4'hF;
assign OE_DATA_0_const_net_10              = 4'hF;
assign TRAINING_PATTERN_const_net_0        = 8'hAA;
assign VREF_MR6_VALUE_const_net_0          = 7'h00;
assign OE_DATA_0_const_net_11              = 4'hF;
assign EYE_MONITOR_WIDTH_IN_const_net_0    = 3'h2;
assign TX_DATA_0_const_net_0               = 8'h55;
assign TX_DATA_0_const_net_1               = 2'h0;
assign OE_DATA_0_const_net_12              = 2'h3;
assign EYE_MONITOR_WIDTH_IN_const_net_1    = 3'h2;
assign TX_DATA_0_const_net_2               = 8'h55;
assign TX_DATA_0_const_net_3               = 2'h0;
assign OE_DATA_0_const_net_13              = 2'h3;
assign RX_DQS_90_const_net_0               = 2'h0;
assign FIFO_WR_PTR_const_net_0             = 3'h0;
assign FIFO_RD_PTR_const_net_0             = 3'h0;
assign EYE_MONITOR_LANE_WIDTH_const_net_0  = 3'h0;
assign TX_DATA_12_const_net_0              = 4'h0;
assign TX_DATA_13_const_net_0              = 4'h0;
assign TX_DATA_14_const_net_0              = 4'h0;
assign TX_DATA_15_const_net_0              = 4'h0;
assign TX_DATA_16_const_net_0              = 4'h0;
assign TX_DATA_17_const_net_0              = 4'h0;
assign TX_DATA_18_const_net_0              = 4'h0;
assign TX_DATA_19_const_net_0              = 4'h0;
assign TX_DATA_20_const_net_0              = 4'h0;
assign TX_DATA_21_const_net_0              = 4'h0;
assign TX_DATA_22_const_net_0              = 4'h0;
assign TX_DATA_23_const_net_0              = 4'h0;
assign TX_DATA_24_const_net_0              = 4'h0;
assign TX_DATA_25_const_net_0              = 4'h0;
assign TX_DATA_26_const_net_0              = 4'h0;
assign TX_DATA_27_const_net_0              = 4'h0;
assign TX_DATA_28_const_net_0              = 4'h0;
assign TX_DATA_29_const_net_0              = 4'h0;
assign TX_DATA_30_const_net_0              = 4'h0;
assign TX_DATA_31_const_net_0              = 4'h0;
assign TX_DATA_32_const_net_0              = 4'h0;
assign TX_DATA_33_const_net_0              = 4'h0;
assign TX_DATA_34_const_net_0              = 4'h0;
assign TX_DATA_35_const_net_0              = 4'h0;
assign TX_DATA_36_const_net_0              = 4'h0;
assign TX_DATA_37_const_net_0              = 4'h0;
assign TX_DATA_38_const_net_0              = 4'h0;
assign TX_DATA_39_const_net_0              = 4'h0;
assign TX_DATA_40_const_net_0              = 4'h0;
assign TX_DATA_41_const_net_0              = 4'h0;
assign TX_DATA_42_const_net_0              = 4'h0;
assign TX_DATA_43_const_net_0              = 4'h0;
assign TX_DATA_44_const_net_0              = 4'h0;
assign TX_DATA_45_const_net_0              = 4'h0;
assign TX_DATA_46_const_net_0              = 4'h0;
assign TX_DATA_47_const_net_0              = 4'h0;
assign TX_DATA_48_const_net_0              = 4'h0;
assign TX_DATA_49_const_net_0              = 4'h0;
assign TX_DATA_50_const_net_0              = 4'h0;
assign TX_DATA_51_const_net_0              = 4'h0;
assign TX_DATA_52_const_net_0              = 4'h0;
assign TX_DATA_53_const_net_0              = 4'h0;
assign TX_DATA_54_const_net_0              = 4'h0;
assign TX_DATA_55_const_net_0              = 4'h0;
assign TX_DATA_56_const_net_0              = 4'h0;
assign TX_DATA_57_const_net_0              = 4'h0;
assign TX_DATA_58_const_net_0              = 4'h0;
assign TX_DATA_59_const_net_0              = 4'h0;
assign TX_DATA_60_const_net_0              = 4'h0;
assign TX_DATA_61_const_net_0              = 4'h0;
assign TX_DATA_62_const_net_0              = 4'h0;
assign TX_DATA_63_const_net_0              = 4'h0;
assign OE_DATA_12_const_net_0              = 4'h0;
assign OE_DATA_13_const_net_0              = 4'h0;
assign OE_DATA_14_const_net_0              = 4'h0;
assign OE_DATA_15_const_net_0              = 4'h0;
assign OE_DATA_16_const_net_0              = 4'h0;
assign OE_DATA_17_const_net_0              = 4'h0;
assign OE_DATA_18_const_net_0              = 4'h0;
assign OE_DATA_19_const_net_0              = 4'h0;
assign OE_DATA_20_const_net_0              = 4'h0;
assign OE_DATA_21_const_net_0              = 4'h0;
assign OE_DATA_22_const_net_0              = 4'h0;
assign OE_DATA_23_const_net_0              = 4'h0;
assign OE_DATA_24_const_net_0              = 4'h0;
assign OE_DATA_25_const_net_0              = 4'h0;
assign OE_DATA_26_const_net_0              = 4'h0;
assign OE_DATA_27_const_net_0              = 4'h0;
assign OE_DATA_28_const_net_0              = 4'h0;
assign OE_DATA_29_const_net_0              = 4'h0;
assign OE_DATA_30_const_net_0              = 4'h0;
assign OE_DATA_31_const_net_0              = 4'h0;
assign OE_DATA_32_const_net_0              = 4'h0;
assign OE_DATA_33_const_net_0              = 4'h0;
assign OE_DATA_34_const_net_0              = 4'h0;
assign OE_DATA_35_const_net_0              = 4'h0;
assign OE_DATA_36_const_net_0              = 4'h0;
assign OE_DATA_37_const_net_0              = 4'h0;
assign OE_DATA_38_const_net_0              = 4'h0;
assign OE_DATA_39_const_net_0              = 4'h0;
assign OE_DATA_40_const_net_0              = 4'h0;
assign OE_DATA_41_const_net_0              = 4'h0;
assign OE_DATA_42_const_net_0              = 4'h0;
assign OE_DATA_43_const_net_0              = 4'h0;
assign OE_DATA_44_const_net_0              = 4'h0;
assign OE_DATA_45_const_net_0              = 4'h0;
assign OE_DATA_46_const_net_0              = 4'h0;
assign OE_DATA_47_const_net_0              = 4'h0;
assign OE_DATA_48_const_net_0              = 4'h0;
assign OE_DATA_49_const_net_0              = 4'h0;
assign OE_DATA_50_const_net_0              = 4'h0;
assign OE_DATA_51_const_net_0              = 4'h0;
assign OE_DATA_52_const_net_0              = 4'h0;
assign OE_DATA_53_const_net_0              = 4'h0;
assign OE_DATA_54_const_net_0              = 4'h0;
assign OE_DATA_55_const_net_0              = 4'h0;
assign OE_DATA_56_const_net_0              = 4'h0;
assign OE_DATA_57_const_net_0              = 4'h0;
assign OE_DATA_58_const_net_0              = 4'h0;
assign OE_DATA_59_const_net_0              = 4'h0;
assign OE_DATA_60_const_net_0              = 4'h0;
assign OE_DATA_61_const_net_0              = 4'h0;
assign OE_DATA_62_const_net_0              = 4'h0;
assign OE_DATA_63_const_net_0              = 4'h0;
assign PAD_const_net_0                     = 12'h000;
assign PAD_I_const_net_0                   = 12'h000;
assign PAD_N_const_net_0                   = 12'h000;
assign PAD_I_N_const_net_0                 = 12'h000;
assign RX_DQS_90_const_net_1               = 2'h0;
assign FIFO_WR_PTR_const_net_1             = 3'h0;
assign FIFO_RD_PTR_const_net_1             = 3'h0;
assign EYE_MONITOR_LANE_WIDTH_const_net_1  = 3'h0;
assign TX_DATA_1_const_net_0               = 4'h0;
assign TX_DATA_2_const_net_0               = 4'h0;
assign TX_DATA_3_const_net_0               = 4'h0;
assign TX_DATA_4_const_net_0               = 4'h0;
assign TX_DATA_5_const_net_0               = 4'h0;
assign TX_DATA_6_const_net_0               = 4'h0;
assign TX_DATA_7_const_net_0               = 4'h0;
assign TX_DATA_8_const_net_0               = 4'h0;
assign TX_DATA_9_const_net_0               = 4'h0;
assign TX_DATA_10_const_net_0              = 4'h0;
assign TX_DATA_11_const_net_0              = 4'h0;
assign TX_DATA_12_const_net_1              = 4'h0;
assign TX_DATA_13_const_net_1              = 4'h0;
assign TX_DATA_14_const_net_1              = 4'h0;
assign TX_DATA_15_const_net_1              = 4'h0;
assign TX_DATA_16_const_net_1              = 4'h0;
assign TX_DATA_17_const_net_1              = 4'h0;
assign TX_DATA_18_const_net_1              = 4'h0;
assign TX_DATA_19_const_net_1              = 4'h0;
assign TX_DATA_20_const_net_1              = 4'h0;
assign TX_DATA_21_const_net_1              = 4'h0;
assign TX_DATA_22_const_net_1              = 4'h0;
assign TX_DATA_23_const_net_1              = 4'h0;
assign TX_DATA_24_const_net_1              = 4'h0;
assign TX_DATA_25_const_net_1              = 4'h0;
assign TX_DATA_26_const_net_1              = 4'h0;
assign TX_DATA_27_const_net_1              = 4'h0;
assign TX_DATA_28_const_net_1              = 4'h0;
assign TX_DATA_29_const_net_1              = 4'h0;
assign TX_DATA_30_const_net_1              = 4'h0;
assign TX_DATA_31_const_net_1              = 4'h0;
assign TX_DATA_32_const_net_1              = 4'h0;
assign TX_DATA_33_const_net_1              = 4'h0;
assign TX_DATA_34_const_net_1              = 4'h0;
assign TX_DATA_35_const_net_1              = 4'h0;
assign TX_DATA_36_const_net_1              = 4'h0;
assign TX_DATA_37_const_net_1              = 4'h0;
assign TX_DATA_38_const_net_1              = 4'h0;
assign TX_DATA_39_const_net_1              = 4'h0;
assign TX_DATA_40_const_net_1              = 4'h0;
assign TX_DATA_41_const_net_1              = 4'h0;
assign TX_DATA_42_const_net_1              = 4'h0;
assign TX_DATA_43_const_net_1              = 4'h0;
assign TX_DATA_44_const_net_1              = 4'h0;
assign TX_DATA_45_const_net_1              = 4'h0;
assign TX_DATA_46_const_net_1              = 4'h0;
assign TX_DATA_47_const_net_1              = 4'h0;
assign TX_DATA_48_const_net_1              = 4'h0;
assign TX_DATA_49_const_net_1              = 4'h0;
assign TX_DATA_50_const_net_1              = 4'h0;
assign TX_DATA_51_const_net_1              = 4'h0;
assign TX_DATA_52_const_net_1              = 4'h0;
assign TX_DATA_53_const_net_1              = 4'h0;
assign TX_DATA_54_const_net_1              = 4'h0;
assign TX_DATA_55_const_net_1              = 4'h0;
assign TX_DATA_56_const_net_1              = 4'h0;
assign TX_DATA_57_const_net_1              = 4'h0;
assign TX_DATA_58_const_net_1              = 4'h0;
assign TX_DATA_59_const_net_1              = 4'h0;
assign TX_DATA_60_const_net_1              = 4'h0;
assign TX_DATA_61_const_net_1              = 4'h0;
assign TX_DATA_62_const_net_1              = 4'h0;
assign TX_DATA_63_const_net_1              = 4'h0;
assign OE_DATA_1_const_net_2               = 4'h0;
assign OE_DATA_2_const_net_2               = 4'h0;
assign OE_DATA_3_const_net_1               = 4'h0;
assign OE_DATA_4_const_net_1               = 4'h0;
assign OE_DATA_5_const_net_1               = 4'h0;
assign OE_DATA_6_const_net_1               = 4'h0;
assign OE_DATA_7_const_net_1               = 4'h0;
assign OE_DATA_8_const_net_1               = 4'h0;
assign OE_DATA_9_const_net_1               = 4'h0;
assign OE_DATA_10_const_net_1              = 4'h0;
assign OE_DATA_11_const_net_1              = 4'h0;
assign OE_DATA_12_const_net_1              = 4'h0;
assign OE_DATA_13_const_net_1              = 4'h0;
assign OE_DATA_14_const_net_1              = 4'h0;
assign OE_DATA_15_const_net_1              = 4'h0;
assign OE_DATA_16_const_net_1              = 4'h0;
assign OE_DATA_17_const_net_1              = 4'h0;
assign OE_DATA_18_const_net_1              = 4'h0;
assign OE_DATA_19_const_net_1              = 4'h0;
assign OE_DATA_20_const_net_1              = 4'h0;
assign OE_DATA_21_const_net_1              = 4'h0;
assign OE_DATA_22_const_net_1              = 4'h0;
assign OE_DATA_23_const_net_1              = 4'h0;
assign OE_DATA_24_const_net_1              = 4'h0;
assign OE_DATA_25_const_net_1              = 4'h0;
assign OE_DATA_26_const_net_1              = 4'h0;
assign OE_DATA_27_const_net_1              = 4'h0;
assign OE_DATA_28_const_net_1              = 4'h0;
assign OE_DATA_29_const_net_1              = 4'h0;
assign OE_DATA_30_const_net_1              = 4'h0;
assign OE_DATA_31_const_net_1              = 4'h0;
assign OE_DATA_32_const_net_1              = 4'h0;
assign OE_DATA_33_const_net_1              = 4'h0;
assign OE_DATA_34_const_net_1              = 4'h0;
assign OE_DATA_35_const_net_1              = 4'h0;
assign OE_DATA_36_const_net_1              = 4'h0;
assign OE_DATA_37_const_net_1              = 4'h0;
assign OE_DATA_38_const_net_1              = 4'h0;
assign OE_DATA_39_const_net_1              = 4'h0;
assign OE_DATA_40_const_net_1              = 4'h0;
assign OE_DATA_41_const_net_1              = 4'h0;
assign OE_DATA_42_const_net_1              = 4'h0;
assign OE_DATA_43_const_net_1              = 4'h0;
assign OE_DATA_44_const_net_1              = 4'h0;
assign OE_DATA_45_const_net_1              = 4'h0;
assign OE_DATA_46_const_net_1              = 4'h0;
assign OE_DATA_47_const_net_1              = 4'h0;
assign OE_DATA_48_const_net_1              = 4'h0;
assign OE_DATA_49_const_net_1              = 4'h0;
assign OE_DATA_50_const_net_1              = 4'h0;
assign OE_DATA_51_const_net_1              = 4'h0;
assign OE_DATA_52_const_net_1              = 4'h0;
assign OE_DATA_53_const_net_1              = 4'h0;
assign OE_DATA_54_const_net_1              = 4'h0;
assign OE_DATA_55_const_net_1              = 4'h0;
assign OE_DATA_56_const_net_1              = 4'h0;
assign OE_DATA_57_const_net_1              = 4'h0;
assign OE_DATA_58_const_net_1              = 4'h0;
assign OE_DATA_59_const_net_1              = 4'h0;
assign OE_DATA_60_const_net_1              = 4'h0;
assign OE_DATA_61_const_net_1              = 4'h0;
assign OE_DATA_62_const_net_1              = 4'h0;
assign OE_DATA_63_const_net_1              = 4'h0;
assign RX_DQS_90_const_net_2               = 2'h0;
assign FIFO_WR_PTR_const_net_2             = 3'h0;
assign FIFO_RD_PTR_const_net_2             = 3'h0;
assign EYE_MONITOR_LANE_WIDTH_const_net_2  = 3'h0;
assign TX_DATA_1_const_net_1               = 4'h0;
assign TX_DATA_2_const_net_1               = 4'h0;
assign TX_DATA_3_const_net_1               = 4'h0;
assign TX_DATA_4_const_net_1               = 4'h0;
assign TX_DATA_5_const_net_1               = 4'h0;
assign TX_DATA_6_const_net_1               = 4'h0;
assign TX_DATA_7_const_net_1               = 4'h0;
assign TX_DATA_8_const_net_1               = 4'h0;
assign TX_DATA_9_const_net_1               = 4'h0;
assign TX_DATA_10_const_net_1              = 4'h0;
assign TX_DATA_11_const_net_1              = 4'h0;
assign TX_DATA_12_const_net_2              = 4'h0;
assign TX_DATA_13_const_net_2              = 4'h0;
assign TX_DATA_14_const_net_2              = 4'h0;
assign TX_DATA_15_const_net_2              = 4'h0;
assign TX_DATA_16_const_net_2              = 4'h0;
assign TX_DATA_17_const_net_2              = 4'h0;
assign TX_DATA_18_const_net_2              = 4'h0;
assign TX_DATA_19_const_net_2              = 4'h0;
assign TX_DATA_20_const_net_2              = 4'h0;
assign TX_DATA_21_const_net_2              = 4'h0;
assign TX_DATA_22_const_net_2              = 4'h0;
assign TX_DATA_23_const_net_2              = 4'h0;
assign TX_DATA_24_const_net_2              = 4'h0;
assign TX_DATA_25_const_net_2              = 4'h0;
assign TX_DATA_26_const_net_2              = 4'h0;
assign TX_DATA_27_const_net_2              = 4'h0;
assign TX_DATA_28_const_net_2              = 4'h0;
assign TX_DATA_29_const_net_2              = 4'h0;
assign TX_DATA_30_const_net_2              = 4'h0;
assign TX_DATA_31_const_net_2              = 4'h0;
assign TX_DATA_32_const_net_2              = 4'h0;
assign TX_DATA_33_const_net_2              = 4'h0;
assign TX_DATA_34_const_net_2              = 4'h0;
assign TX_DATA_35_const_net_2              = 4'h0;
assign TX_DATA_36_const_net_2              = 4'h0;
assign TX_DATA_37_const_net_2              = 4'h0;
assign TX_DATA_38_const_net_2              = 4'h0;
assign TX_DATA_39_const_net_2              = 4'h0;
assign TX_DATA_40_const_net_2              = 4'h0;
assign TX_DATA_41_const_net_2              = 4'h0;
assign TX_DATA_42_const_net_2              = 4'h0;
assign TX_DATA_43_const_net_2              = 4'h0;
assign TX_DATA_44_const_net_2              = 4'h0;
assign TX_DATA_45_const_net_2              = 4'h0;
assign TX_DATA_46_const_net_2              = 4'h0;
assign TX_DATA_47_const_net_2              = 4'h0;
assign TX_DATA_48_const_net_2              = 4'h0;
assign TX_DATA_49_const_net_2              = 4'h0;
assign TX_DATA_50_const_net_2              = 4'h0;
assign TX_DATA_51_const_net_2              = 4'h0;
assign TX_DATA_52_const_net_2              = 4'h0;
assign TX_DATA_53_const_net_2              = 4'h0;
assign TX_DATA_54_const_net_2              = 4'h0;
assign TX_DATA_55_const_net_2              = 4'h0;
assign TX_DATA_56_const_net_2              = 4'h0;
assign TX_DATA_57_const_net_2              = 4'h0;
assign TX_DATA_58_const_net_2              = 4'h0;
assign TX_DATA_59_const_net_2              = 4'h0;
assign TX_DATA_60_const_net_2              = 4'h0;
assign TX_DATA_61_const_net_2              = 4'h0;
assign TX_DATA_62_const_net_2              = 4'h0;
assign TX_DATA_63_const_net_2              = 4'h0;
assign OE_DATA_1_const_net_3               = 4'h0;
assign OE_DATA_2_const_net_3               = 4'h0;
assign OE_DATA_3_const_net_2               = 4'h0;
assign OE_DATA_4_const_net_2               = 4'h0;
assign OE_DATA_5_const_net_2               = 4'h0;
assign OE_DATA_6_const_net_2               = 4'h0;
assign OE_DATA_7_const_net_2               = 4'h0;
assign OE_DATA_8_const_net_2               = 4'h0;
assign OE_DATA_9_const_net_2               = 4'h0;
assign OE_DATA_10_const_net_2              = 4'h0;
assign OE_DATA_11_const_net_2              = 4'h0;
assign OE_DATA_12_const_net_2              = 4'h0;
assign OE_DATA_13_const_net_2              = 4'h0;
assign OE_DATA_14_const_net_2              = 4'h0;
assign OE_DATA_15_const_net_2              = 4'h0;
assign OE_DATA_16_const_net_2              = 4'h0;
assign OE_DATA_17_const_net_2              = 4'h0;
assign OE_DATA_18_const_net_2              = 4'h0;
assign OE_DATA_19_const_net_2              = 4'h0;
assign OE_DATA_20_const_net_2              = 4'h0;
assign OE_DATA_21_const_net_2              = 4'h0;
assign OE_DATA_22_const_net_2              = 4'h0;
assign OE_DATA_23_const_net_2              = 4'h0;
assign OE_DATA_24_const_net_2              = 4'h0;
assign OE_DATA_25_const_net_2              = 4'h0;
assign OE_DATA_26_const_net_2              = 4'h0;
assign OE_DATA_27_const_net_2              = 4'h0;
assign OE_DATA_28_const_net_2              = 4'h0;
assign OE_DATA_29_const_net_2              = 4'h0;
assign OE_DATA_30_const_net_2              = 4'h0;
assign OE_DATA_31_const_net_2              = 4'h0;
assign OE_DATA_32_const_net_2              = 4'h0;
assign OE_DATA_33_const_net_2              = 4'h0;
assign OE_DATA_34_const_net_2              = 4'h0;
assign OE_DATA_35_const_net_2              = 4'h0;
assign OE_DATA_36_const_net_2              = 4'h0;
assign OE_DATA_37_const_net_2              = 4'h0;
assign OE_DATA_38_const_net_2              = 4'h0;
assign OE_DATA_39_const_net_2              = 4'h0;
assign OE_DATA_40_const_net_2              = 4'h0;
assign OE_DATA_41_const_net_2              = 4'h0;
assign OE_DATA_42_const_net_2              = 4'h0;
assign OE_DATA_43_const_net_2              = 4'h0;
assign OE_DATA_44_const_net_2              = 4'h0;
assign OE_DATA_45_const_net_2              = 4'h0;
assign OE_DATA_46_const_net_2              = 4'h0;
assign OE_DATA_47_const_net_2              = 4'h0;
assign OE_DATA_48_const_net_2              = 4'h0;
assign OE_DATA_49_const_net_2              = 4'h0;
assign OE_DATA_50_const_net_2              = 4'h0;
assign OE_DATA_51_const_net_2              = 4'h0;
assign OE_DATA_52_const_net_2              = 4'h0;
assign OE_DATA_53_const_net_2              = 4'h0;
assign OE_DATA_54_const_net_2              = 4'h0;
assign OE_DATA_55_const_net_2              = 4'h0;
assign OE_DATA_56_const_net_2              = 4'h0;
assign OE_DATA_57_const_net_2              = 4'h0;
assign OE_DATA_58_const_net_2              = 4'h0;
assign OE_DATA_59_const_net_2              = 4'h0;
assign OE_DATA_60_const_net_2              = 4'h0;
assign OE_DATA_61_const_net_2              = 4'h0;
assign OE_DATA_62_const_net_2              = 4'h0;
assign OE_DATA_63_const_net_2              = 4'h0;
assign RX_DQS_90_const_net_3               = 2'h0;
assign FIFO_WR_PTR_const_net_3             = 3'h0;
assign FIFO_RD_PTR_const_net_3             = 3'h0;
assign EYE_MONITOR_LANE_WIDTH_const_net_3  = 3'h0;
assign TX_DATA_1_const_net_2               = 4'h0;
assign TX_DATA_2_const_net_2               = 4'h0;
assign TX_DATA_3_const_net_2               = 4'h0;
assign TX_DATA_4_const_net_2               = 4'h0;
assign TX_DATA_5_const_net_2               = 4'h0;
assign TX_DATA_6_const_net_2               = 4'h0;
assign TX_DATA_7_const_net_2               = 4'h0;
assign TX_DATA_8_const_net_2               = 4'h0;
assign TX_DATA_9_const_net_2               = 4'h0;
assign TX_DATA_10_const_net_2              = 4'h0;
assign TX_DATA_11_const_net_2              = 4'h0;
assign TX_DATA_12_const_net_3              = 4'h0;
assign TX_DATA_13_const_net_3              = 4'h0;
assign TX_DATA_14_const_net_3              = 4'h0;
assign TX_DATA_15_const_net_3              = 4'h0;
assign TX_DATA_16_const_net_3              = 4'h0;
assign TX_DATA_17_const_net_3              = 4'h0;
assign TX_DATA_18_const_net_3              = 4'h0;
assign TX_DATA_19_const_net_3              = 4'h0;
assign TX_DATA_20_const_net_3              = 4'h0;
assign TX_DATA_21_const_net_3              = 4'h0;
assign TX_DATA_22_const_net_3              = 4'h0;
assign TX_DATA_23_const_net_3              = 4'h0;
assign TX_DATA_24_const_net_3              = 4'h0;
assign TX_DATA_25_const_net_3              = 4'h0;
assign TX_DATA_26_const_net_3              = 4'h0;
assign TX_DATA_27_const_net_3              = 4'h0;
assign TX_DATA_28_const_net_3              = 4'h0;
assign TX_DATA_29_const_net_3              = 4'h0;
assign TX_DATA_30_const_net_3              = 4'h0;
assign TX_DATA_31_const_net_3              = 4'h0;
assign TX_DATA_32_const_net_3              = 4'h0;
assign TX_DATA_33_const_net_3              = 4'h0;
assign TX_DATA_34_const_net_3              = 4'h0;
assign TX_DATA_35_const_net_3              = 4'h0;
assign TX_DATA_36_const_net_3              = 4'h0;
assign TX_DATA_37_const_net_3              = 4'h0;
assign TX_DATA_38_const_net_3              = 4'h0;
assign TX_DATA_39_const_net_3              = 4'h0;
assign TX_DATA_40_const_net_3              = 4'h0;
assign TX_DATA_41_const_net_3              = 4'h0;
assign TX_DATA_42_const_net_3              = 4'h0;
assign TX_DATA_43_const_net_3              = 4'h0;
assign TX_DATA_44_const_net_3              = 4'h0;
assign TX_DATA_45_const_net_3              = 4'h0;
assign TX_DATA_46_const_net_3              = 4'h0;
assign TX_DATA_47_const_net_3              = 4'h0;
assign TX_DATA_48_const_net_3              = 4'h0;
assign TX_DATA_49_const_net_3              = 4'h0;
assign TX_DATA_50_const_net_3              = 4'h0;
assign TX_DATA_51_const_net_3              = 4'h0;
assign TX_DATA_52_const_net_3              = 4'h0;
assign TX_DATA_53_const_net_3              = 4'h0;
assign TX_DATA_54_const_net_3              = 4'h0;
assign TX_DATA_55_const_net_3              = 4'h0;
assign TX_DATA_56_const_net_3              = 4'h0;
assign TX_DATA_57_const_net_3              = 4'h0;
assign TX_DATA_58_const_net_3              = 4'h0;
assign TX_DATA_59_const_net_3              = 4'h0;
assign TX_DATA_60_const_net_3              = 4'h0;
assign TX_DATA_61_const_net_3              = 4'h0;
assign TX_DATA_62_const_net_3              = 4'h0;
assign TX_DATA_63_const_net_3              = 4'h0;
assign OE_DATA_1_const_net_4               = 4'h0;
assign OE_DATA_2_const_net_4               = 4'h0;
assign OE_DATA_3_const_net_3               = 4'h0;
assign OE_DATA_4_const_net_3               = 4'h0;
assign OE_DATA_5_const_net_3               = 4'h0;
assign OE_DATA_6_const_net_3               = 4'h0;
assign OE_DATA_7_const_net_3               = 4'h0;
assign OE_DATA_8_const_net_3               = 4'h0;
assign OE_DATA_9_const_net_3               = 4'h0;
assign OE_DATA_10_const_net_3              = 4'h0;
assign OE_DATA_11_const_net_3              = 4'h0;
assign OE_DATA_12_const_net_3              = 4'h0;
assign OE_DATA_13_const_net_3              = 4'h0;
assign OE_DATA_14_const_net_3              = 4'h0;
assign OE_DATA_15_const_net_3              = 4'h0;
assign OE_DATA_16_const_net_3              = 4'h0;
assign OE_DATA_17_const_net_3              = 4'h0;
assign OE_DATA_18_const_net_3              = 4'h0;
assign OE_DATA_19_const_net_3              = 4'h0;
assign OE_DATA_20_const_net_3              = 4'h0;
assign OE_DATA_21_const_net_3              = 4'h0;
assign OE_DATA_22_const_net_3              = 4'h0;
assign OE_DATA_23_const_net_3              = 4'h0;
assign OE_DATA_24_const_net_3              = 4'h0;
assign OE_DATA_25_const_net_3              = 4'h0;
assign OE_DATA_26_const_net_3              = 4'h0;
assign OE_DATA_27_const_net_3              = 4'h0;
assign OE_DATA_28_const_net_3              = 4'h0;
assign OE_DATA_29_const_net_3              = 4'h0;
assign OE_DATA_30_const_net_3              = 4'h0;
assign OE_DATA_31_const_net_3              = 4'h0;
assign OE_DATA_32_const_net_3              = 4'h0;
assign OE_DATA_33_const_net_3              = 4'h0;
assign OE_DATA_34_const_net_3              = 4'h0;
assign OE_DATA_35_const_net_3              = 4'h0;
assign OE_DATA_36_const_net_3              = 4'h0;
assign OE_DATA_37_const_net_3              = 4'h0;
assign OE_DATA_38_const_net_3              = 4'h0;
assign OE_DATA_39_const_net_3              = 4'h0;
assign OE_DATA_40_const_net_3              = 4'h0;
assign OE_DATA_41_const_net_3              = 4'h0;
assign OE_DATA_42_const_net_3              = 4'h0;
assign OE_DATA_43_const_net_3              = 4'h0;
assign OE_DATA_44_const_net_3              = 4'h0;
assign OE_DATA_45_const_net_3              = 4'h0;
assign OE_DATA_46_const_net_3              = 4'h0;
assign OE_DATA_47_const_net_3              = 4'h0;
assign OE_DATA_48_const_net_3              = 4'h0;
assign OE_DATA_49_const_net_3              = 4'h0;
assign OE_DATA_50_const_net_3              = 4'h0;
assign OE_DATA_51_const_net_3              = 4'h0;
assign OE_DATA_52_const_net_3              = 4'h0;
assign OE_DATA_53_const_net_3              = 4'h0;
assign OE_DATA_54_const_net_3              = 4'h0;
assign OE_DATA_55_const_net_3              = 4'h0;
assign OE_DATA_56_const_net_3              = 4'h0;
assign OE_DATA_57_const_net_3              = 4'h0;
assign OE_DATA_58_const_net_3              = 4'h0;
assign OE_DATA_59_const_net_3              = 4'h0;
assign OE_DATA_60_const_net_3              = 4'h0;
assign OE_DATA_61_const_net_3              = 4'h0;
assign OE_DATA_62_const_net_3              = 4'h0;
assign OE_DATA_63_const_net_3              = 4'h0;
assign RX_DQS_90_const_net_4               = 2'h0;
assign FIFO_WR_PTR_const_net_4             = 3'h0;
assign FIFO_RD_PTR_const_net_4             = 3'h0;
assign EYE_MONITOR_LANE_WIDTH_const_net_4  = 3'h0;
assign TX_DATA_1_const_net_3               = 4'h0;
assign TX_DATA_2_const_net_3               = 4'h0;
assign TX_DATA_3_const_net_3               = 4'h0;
assign TX_DATA_4_const_net_3               = 4'h0;
assign TX_DATA_5_const_net_3               = 4'h0;
assign TX_DATA_6_const_net_3               = 4'h0;
assign TX_DATA_7_const_net_3               = 4'h0;
assign TX_DATA_8_const_net_3               = 4'h0;
assign TX_DATA_9_const_net_3               = 4'h0;
assign TX_DATA_10_const_net_3              = 4'h0;
assign TX_DATA_11_const_net_3              = 4'h0;
assign TX_DATA_12_const_net_4              = 4'h0;
assign TX_DATA_13_const_net_4              = 4'h0;
assign TX_DATA_14_const_net_4              = 4'h0;
assign TX_DATA_15_const_net_4              = 4'h0;
assign TX_DATA_16_const_net_4              = 4'h0;
assign TX_DATA_17_const_net_4              = 4'h0;
assign TX_DATA_18_const_net_4              = 4'h0;
assign TX_DATA_19_const_net_4              = 4'h0;
assign TX_DATA_20_const_net_4              = 4'h0;
assign TX_DATA_21_const_net_4              = 4'h0;
assign TX_DATA_22_const_net_4              = 4'h0;
assign TX_DATA_23_const_net_4              = 4'h0;
assign TX_DATA_24_const_net_4              = 4'h0;
assign TX_DATA_25_const_net_4              = 4'h0;
assign TX_DATA_26_const_net_4              = 4'h0;
assign TX_DATA_27_const_net_4              = 4'h0;
assign TX_DATA_28_const_net_4              = 4'h0;
assign TX_DATA_29_const_net_4              = 4'h0;
assign TX_DATA_30_const_net_4              = 4'h0;
assign TX_DATA_31_const_net_4              = 4'h0;
assign TX_DATA_32_const_net_4              = 4'h0;
assign TX_DATA_33_const_net_4              = 4'h0;
assign TX_DATA_34_const_net_4              = 4'h0;
assign TX_DATA_35_const_net_4              = 4'h0;
assign TX_DATA_36_const_net_4              = 4'h0;
assign TX_DATA_37_const_net_4              = 4'h0;
assign TX_DATA_38_const_net_4              = 4'h0;
assign TX_DATA_39_const_net_4              = 4'h0;
assign TX_DATA_40_const_net_4              = 4'h0;
assign TX_DATA_41_const_net_4              = 4'h0;
assign TX_DATA_42_const_net_4              = 4'h0;
assign TX_DATA_43_const_net_4              = 4'h0;
assign TX_DATA_44_const_net_4              = 4'h0;
assign TX_DATA_45_const_net_4              = 4'h0;
assign TX_DATA_46_const_net_4              = 4'h0;
assign TX_DATA_47_const_net_4              = 4'h0;
assign TX_DATA_48_const_net_4              = 4'h0;
assign TX_DATA_49_const_net_4              = 4'h0;
assign TX_DATA_50_const_net_4              = 4'h0;
assign TX_DATA_51_const_net_4              = 4'h0;
assign TX_DATA_52_const_net_4              = 4'h0;
assign TX_DATA_53_const_net_4              = 4'h0;
assign TX_DATA_54_const_net_4              = 4'h0;
assign TX_DATA_55_const_net_4              = 4'h0;
assign TX_DATA_56_const_net_4              = 4'h0;
assign TX_DATA_57_const_net_4              = 4'h0;
assign TX_DATA_58_const_net_4              = 4'h0;
assign TX_DATA_59_const_net_4              = 4'h0;
assign TX_DATA_60_const_net_4              = 4'h0;
assign TX_DATA_61_const_net_4              = 4'h0;
assign TX_DATA_62_const_net_4              = 4'h0;
assign TX_DATA_63_const_net_4              = 4'h0;
assign OE_DATA_1_const_net_5               = 4'h0;
assign OE_DATA_2_const_net_5               = 4'h0;
assign OE_DATA_3_const_net_4               = 4'h0;
assign OE_DATA_4_const_net_4               = 4'h0;
assign OE_DATA_5_const_net_4               = 4'h0;
assign OE_DATA_6_const_net_4               = 4'h0;
assign OE_DATA_7_const_net_4               = 4'h0;
assign OE_DATA_8_const_net_4               = 4'h0;
assign OE_DATA_9_const_net_4               = 4'h0;
assign OE_DATA_10_const_net_4              = 4'h0;
assign OE_DATA_11_const_net_4              = 4'h0;
assign OE_DATA_12_const_net_4              = 4'h0;
assign OE_DATA_13_const_net_4              = 4'h0;
assign OE_DATA_14_const_net_4              = 4'h0;
assign OE_DATA_15_const_net_4              = 4'h0;
assign OE_DATA_16_const_net_4              = 4'h0;
assign OE_DATA_17_const_net_4              = 4'h0;
assign OE_DATA_18_const_net_4              = 4'h0;
assign OE_DATA_19_const_net_4              = 4'h0;
assign OE_DATA_20_const_net_4              = 4'h0;
assign OE_DATA_21_const_net_4              = 4'h0;
assign OE_DATA_22_const_net_4              = 4'h0;
assign OE_DATA_23_const_net_4              = 4'h0;
assign OE_DATA_24_const_net_4              = 4'h0;
assign OE_DATA_25_const_net_4              = 4'h0;
assign OE_DATA_26_const_net_4              = 4'h0;
assign OE_DATA_27_const_net_4              = 4'h0;
assign OE_DATA_28_const_net_4              = 4'h0;
assign OE_DATA_29_const_net_4              = 4'h0;
assign OE_DATA_30_const_net_4              = 4'h0;
assign OE_DATA_31_const_net_4              = 4'h0;
assign OE_DATA_32_const_net_4              = 4'h0;
assign OE_DATA_33_const_net_4              = 4'h0;
assign OE_DATA_34_const_net_4              = 4'h0;
assign OE_DATA_35_const_net_4              = 4'h0;
assign OE_DATA_36_const_net_4              = 4'h0;
assign OE_DATA_37_const_net_4              = 4'h0;
assign OE_DATA_38_const_net_4              = 4'h0;
assign OE_DATA_39_const_net_4              = 4'h0;
assign OE_DATA_40_const_net_4              = 4'h0;
assign OE_DATA_41_const_net_4              = 4'h0;
assign OE_DATA_42_const_net_4              = 4'h0;
assign OE_DATA_43_const_net_4              = 4'h0;
assign OE_DATA_44_const_net_4              = 4'h0;
assign OE_DATA_45_const_net_4              = 4'h0;
assign OE_DATA_46_const_net_4              = 4'h0;
assign OE_DATA_47_const_net_4              = 4'h0;
assign OE_DATA_48_const_net_4              = 4'h0;
assign OE_DATA_49_const_net_4              = 4'h0;
assign OE_DATA_50_const_net_4              = 4'h0;
assign OE_DATA_51_const_net_4              = 4'h0;
assign OE_DATA_52_const_net_4              = 4'h0;
assign OE_DATA_53_const_net_4              = 4'h0;
assign OE_DATA_54_const_net_4              = 4'h0;
assign OE_DATA_55_const_net_4              = 4'h0;
assign OE_DATA_56_const_net_4              = 4'h0;
assign OE_DATA_57_const_net_4              = 4'h0;
assign OE_DATA_58_const_net_4              = 4'h0;
assign OE_DATA_59_const_net_4              = 4'h0;
assign OE_DATA_60_const_net_4              = 4'h0;
assign OE_DATA_61_const_net_4              = 4'h0;
assign OE_DATA_62_const_net_4              = 4'h0;
assign OE_DATA_63_const_net_4              = 4'h0;
assign RX_DQS_90_const_net_5               = 2'h0;
assign FIFO_WR_PTR_const_net_5             = 3'h0;
assign FIFO_RD_PTR_const_net_5             = 3'h0;
assign EYE_MONITOR_LANE_WIDTH_const_net_5  = 3'h0;
assign TX_DATA_3_const_net_4               = 4'h0;
assign TX_DATA_4_const_net_4               = 4'h0;
assign TX_DATA_5_const_net_4               = 4'h0;
assign TX_DATA_6_const_net_4               = 4'h0;
assign TX_DATA_7_const_net_4               = 4'h0;
assign TX_DATA_8_const_net_4               = 4'h0;
assign TX_DATA_9_const_net_4               = 4'h0;
assign TX_DATA_10_const_net_4              = 4'h0;
assign TX_DATA_11_const_net_4              = 4'h0;
assign TX_DATA_12_const_net_5              = 4'h0;
assign TX_DATA_13_const_net_5              = 4'h0;
assign TX_DATA_14_const_net_5              = 4'h0;
assign TX_DATA_15_const_net_5              = 4'h0;
assign TX_DATA_16_const_net_5              = 4'h0;
assign TX_DATA_17_const_net_5              = 4'h0;
assign TX_DATA_18_const_net_5              = 4'h0;
assign TX_DATA_19_const_net_5              = 4'h0;
assign TX_DATA_20_const_net_5              = 4'h0;
assign TX_DATA_21_const_net_5              = 4'h0;
assign TX_DATA_22_const_net_5              = 4'h0;
assign TX_DATA_23_const_net_5              = 4'h0;
assign TX_DATA_24_const_net_5              = 4'h0;
assign TX_DATA_25_const_net_5              = 4'h0;
assign TX_DATA_26_const_net_5              = 4'h0;
assign TX_DATA_27_const_net_5              = 4'h0;
assign TX_DATA_28_const_net_5              = 4'h0;
assign TX_DATA_29_const_net_5              = 4'h0;
assign TX_DATA_30_const_net_5              = 4'h0;
assign TX_DATA_31_const_net_5              = 4'h0;
assign TX_DATA_32_const_net_5              = 4'h0;
assign TX_DATA_33_const_net_5              = 4'h0;
assign TX_DATA_34_const_net_5              = 4'h0;
assign TX_DATA_35_const_net_5              = 4'h0;
assign TX_DATA_36_const_net_5              = 4'h0;
assign TX_DATA_37_const_net_5              = 4'h0;
assign TX_DATA_38_const_net_5              = 4'h0;
assign TX_DATA_39_const_net_5              = 4'h0;
assign TX_DATA_40_const_net_5              = 4'h0;
assign TX_DATA_41_const_net_5              = 4'h0;
assign TX_DATA_42_const_net_5              = 4'h0;
assign TX_DATA_43_const_net_5              = 4'h0;
assign TX_DATA_44_const_net_5              = 4'h0;
assign TX_DATA_45_const_net_5              = 4'h0;
assign TX_DATA_46_const_net_5              = 4'h0;
assign TX_DATA_47_const_net_5              = 4'h0;
assign TX_DATA_48_const_net_5              = 4'h0;
assign TX_DATA_49_const_net_5              = 4'h0;
assign TX_DATA_50_const_net_5              = 4'h0;
assign TX_DATA_51_const_net_5              = 4'h0;
assign TX_DATA_52_const_net_5              = 4'h0;
assign TX_DATA_53_const_net_5              = 4'h0;
assign TX_DATA_54_const_net_5              = 4'h0;
assign TX_DATA_55_const_net_5              = 4'h0;
assign TX_DATA_56_const_net_5              = 4'h0;
assign TX_DATA_57_const_net_5              = 4'h0;
assign TX_DATA_58_const_net_5              = 4'h0;
assign TX_DATA_59_const_net_5              = 4'h0;
assign TX_DATA_60_const_net_5              = 4'h0;
assign TX_DATA_61_const_net_5              = 4'h0;
assign TX_DATA_62_const_net_5              = 4'h0;
assign TX_DATA_63_const_net_5              = 4'h0;
assign OE_DATA_3_const_net_5               = 4'h0;
assign OE_DATA_4_const_net_5               = 4'h0;
assign OE_DATA_5_const_net_5               = 4'h0;
assign OE_DATA_6_const_net_5               = 4'h0;
assign OE_DATA_7_const_net_5               = 4'h0;
assign OE_DATA_8_const_net_5               = 4'h0;
assign OE_DATA_9_const_net_5               = 4'h0;
assign OE_DATA_10_const_net_5              = 4'h0;
assign OE_DATA_11_const_net_5              = 4'h0;
assign OE_DATA_12_const_net_5              = 4'h0;
assign OE_DATA_13_const_net_5              = 4'h0;
assign OE_DATA_14_const_net_5              = 4'h0;
assign OE_DATA_15_const_net_5              = 4'h0;
assign OE_DATA_16_const_net_5              = 4'h0;
assign OE_DATA_17_const_net_5              = 4'h0;
assign OE_DATA_18_const_net_5              = 4'h0;
assign OE_DATA_19_const_net_5              = 4'h0;
assign OE_DATA_20_const_net_5              = 4'h0;
assign OE_DATA_21_const_net_5              = 4'h0;
assign OE_DATA_22_const_net_5              = 4'h0;
assign OE_DATA_23_const_net_5              = 4'h0;
assign OE_DATA_24_const_net_5              = 4'h0;
assign OE_DATA_25_const_net_5              = 4'h0;
assign OE_DATA_26_const_net_5              = 4'h0;
assign OE_DATA_27_const_net_5              = 4'h0;
assign OE_DATA_28_const_net_5              = 4'h0;
assign OE_DATA_29_const_net_5              = 4'h0;
assign OE_DATA_30_const_net_5              = 4'h0;
assign OE_DATA_31_const_net_5              = 4'h0;
assign OE_DATA_32_const_net_5              = 4'h0;
assign OE_DATA_33_const_net_5              = 4'h0;
assign OE_DATA_34_const_net_5              = 4'h0;
assign OE_DATA_35_const_net_5              = 4'h0;
assign OE_DATA_36_const_net_5              = 4'h0;
assign OE_DATA_37_const_net_5              = 4'h0;
assign OE_DATA_38_const_net_5              = 4'h0;
assign OE_DATA_39_const_net_5              = 4'h0;
assign OE_DATA_40_const_net_5              = 4'h0;
assign OE_DATA_41_const_net_5              = 4'h0;
assign OE_DATA_42_const_net_5              = 4'h0;
assign OE_DATA_43_const_net_5              = 4'h0;
assign OE_DATA_44_const_net_5              = 4'h0;
assign OE_DATA_45_const_net_5              = 4'h0;
assign OE_DATA_46_const_net_5              = 4'h0;
assign OE_DATA_47_const_net_5              = 4'h0;
assign OE_DATA_48_const_net_5              = 4'h0;
assign OE_DATA_49_const_net_5              = 4'h0;
assign OE_DATA_50_const_net_5              = 4'h0;
assign OE_DATA_51_const_net_5              = 4'h0;
assign OE_DATA_52_const_net_5              = 4'h0;
assign OE_DATA_53_const_net_5              = 4'h0;
assign OE_DATA_54_const_net_5              = 4'h0;
assign OE_DATA_55_const_net_5              = 4'h0;
assign OE_DATA_56_const_net_5              = 4'h0;
assign OE_DATA_57_const_net_5              = 4'h0;
assign OE_DATA_58_const_net_5              = 4'h0;
assign OE_DATA_59_const_net_5              = 4'h0;
assign OE_DATA_60_const_net_5              = 4'h0;
assign OE_DATA_61_const_net_5              = 4'h0;
assign OE_DATA_62_const_net_5              = 4'h0;
assign OE_DATA_63_const_net_5              = 4'h0;
assign PAD_const_net_1                     = 3'h0;
assign PAD_I_const_net_1                   = 3'h0;
assign PAD_N_const_net_1                   = 3'h0;
assign PAD_I_N_const_net_1                 = 3'h0;
assign RX_DQS_90_const_net_6               = 2'h0;
assign FIFO_WR_PTR_const_net_6             = 3'h0;
assign FIFO_RD_PTR_const_net_6             = 3'h0;
assign EYE_MONITOR_LANE_WIDTH_const_net_6  = 3'h0;
assign TX_DATA_0_const_net_4               = 8'h00;
assign TX_DATA_1_const_net_4               = 8'h00;
assign TX_DATA_2_const_net_4               = 8'h00;
assign TX_DATA_3_const_net_5               = 8'h00;
assign TX_DATA_4_const_net_5               = 8'h00;
assign TX_DATA_5_const_net_5               = 8'h00;
assign TX_DATA_6_const_net_5               = 8'h00;
assign TX_DATA_7_const_net_5               = 8'h00;
assign TX_DATA_8_const_net_5               = 8'h00;
assign TX_DATA_9_const_net_5               = 8'h00;
assign TX_DATA_10_const_net_5              = 8'h00;
assign TX_DATA_11_const_net_5              = 8'h00;
assign TX_DATA_12_const_net_6              = 8'h00;
assign TX_DATA_13_const_net_6              = 8'h00;
assign TX_DATA_14_const_net_6              = 8'h00;
assign TX_DATA_15_const_net_6              = 8'h00;
assign TX_DATA_16_const_net_6              = 8'h00;
assign TX_DATA_17_const_net_6              = 8'h00;
assign TX_DATA_18_const_net_6              = 8'h00;
assign TX_DATA_19_const_net_6              = 8'h00;
assign TX_DATA_20_const_net_6              = 8'h00;
assign TX_DATA_21_const_net_6              = 8'h00;
assign TX_DATA_22_const_net_6              = 8'h00;
assign TX_DATA_23_const_net_6              = 8'h00;
assign TX_DATA_24_const_net_6              = 8'h00;
assign TX_DATA_25_const_net_6              = 8'h00;
assign TX_DATA_26_const_net_6              = 8'h00;
assign TX_DATA_27_const_net_6              = 8'h00;
assign TX_DATA_28_const_net_6              = 8'h00;
assign TX_DATA_29_const_net_6              = 8'h00;
assign TX_DATA_30_const_net_6              = 8'h00;
assign TX_DATA_31_const_net_6              = 8'h00;
assign TX_DATA_32_const_net_6              = 8'h00;
assign TX_DATA_33_const_net_6              = 8'h00;
assign TX_DATA_34_const_net_6              = 8'h00;
assign TX_DATA_35_const_net_6              = 8'h00;
assign TX_DATA_36_const_net_6              = 8'h00;
assign TX_DATA_37_const_net_6              = 8'h00;
assign TX_DATA_38_const_net_6              = 8'h00;
assign TX_DATA_39_const_net_6              = 8'h00;
assign TX_DATA_40_const_net_6              = 8'h00;
assign TX_DATA_41_const_net_6              = 8'h00;
assign TX_DATA_42_const_net_6              = 8'h00;
assign TX_DATA_43_const_net_6              = 8'h00;
assign TX_DATA_44_const_net_6              = 8'h00;
assign TX_DATA_45_const_net_6              = 8'h00;
assign TX_DATA_46_const_net_6              = 8'h00;
assign TX_DATA_47_const_net_6              = 8'h00;
assign TX_DATA_48_const_net_6              = 8'h00;
assign TX_DATA_49_const_net_6              = 8'h00;
assign TX_DATA_50_const_net_6              = 8'h00;
assign TX_DATA_51_const_net_6              = 8'h00;
assign TX_DATA_52_const_net_6              = 8'h00;
assign TX_DATA_53_const_net_6              = 8'h00;
assign TX_DATA_54_const_net_6              = 8'h00;
assign TX_DATA_55_const_net_6              = 8'h00;
assign TX_DATA_56_const_net_6              = 8'h00;
assign TX_DATA_57_const_net_6              = 8'h00;
assign TX_DATA_58_const_net_6              = 8'h00;
assign TX_DATA_59_const_net_6              = 8'h00;
assign TX_DATA_60_const_net_6              = 8'h00;
assign TX_DATA_61_const_net_6              = 8'h00;
assign TX_DATA_62_const_net_6              = 8'h00;
assign TX_DATA_63_const_net_6              = 8'h00;
assign OE_DATA_0_const_net_14              = 4'h0;
assign OE_DATA_1_const_net_6               = 4'h0;
assign OE_DATA_2_const_net_6               = 4'h0;
assign OE_DATA_3_const_net_6               = 4'h0;
assign OE_DATA_4_const_net_6               = 4'h0;
assign OE_DATA_5_const_net_6               = 4'h0;
assign OE_DATA_6_const_net_6               = 4'h0;
assign OE_DATA_7_const_net_6               = 4'h0;
assign OE_DATA_8_const_net_6               = 4'h0;
assign OE_DATA_9_const_net_6               = 4'h0;
assign OE_DATA_10_const_net_6              = 4'h0;
assign OE_DATA_11_const_net_6              = 4'h0;
assign OE_DATA_12_const_net_6              = 4'h0;
assign OE_DATA_13_const_net_6              = 4'h0;
assign OE_DATA_14_const_net_6              = 4'h0;
assign OE_DATA_15_const_net_6              = 4'h0;
assign OE_DATA_16_const_net_6              = 4'h0;
assign OE_DATA_17_const_net_6              = 4'h0;
assign OE_DATA_18_const_net_6              = 4'h0;
assign OE_DATA_19_const_net_6              = 4'h0;
assign OE_DATA_20_const_net_6              = 4'h0;
assign OE_DATA_21_const_net_6              = 4'h0;
assign OE_DATA_22_const_net_6              = 4'h0;
assign OE_DATA_23_const_net_6              = 4'h0;
assign OE_DATA_24_const_net_6              = 4'h0;
assign OE_DATA_25_const_net_6              = 4'h0;
assign OE_DATA_26_const_net_6              = 4'h0;
assign OE_DATA_27_const_net_6              = 4'h0;
assign OE_DATA_28_const_net_6              = 4'h0;
assign OE_DATA_29_const_net_6              = 4'h0;
assign OE_DATA_30_const_net_6              = 4'h0;
assign OE_DATA_31_const_net_6              = 4'h0;
assign OE_DATA_32_const_net_6              = 4'h0;
assign OE_DATA_33_const_net_6              = 4'h0;
assign OE_DATA_34_const_net_6              = 4'h0;
assign OE_DATA_35_const_net_6              = 4'h0;
assign OE_DATA_36_const_net_6              = 4'h0;
assign OE_DATA_37_const_net_6              = 4'h0;
assign OE_DATA_38_const_net_6              = 4'h0;
assign OE_DATA_39_const_net_6              = 4'h0;
assign OE_DATA_40_const_net_6              = 4'h0;
assign OE_DATA_41_const_net_6              = 4'h0;
assign OE_DATA_42_const_net_6              = 4'h0;
assign OE_DATA_43_const_net_6              = 4'h0;
assign OE_DATA_44_const_net_6              = 4'h0;
assign OE_DATA_45_const_net_6              = 4'h0;
assign OE_DATA_46_const_net_6              = 4'h0;
assign OE_DATA_47_const_net_6              = 4'h0;
assign OE_DATA_48_const_net_6              = 4'h0;
assign OE_DATA_49_const_net_6              = 4'h0;
assign OE_DATA_50_const_net_6              = 4'h0;
assign OE_DATA_51_const_net_6              = 4'h0;
assign OE_DATA_52_const_net_6              = 4'h0;
assign OE_DATA_53_const_net_6              = 4'h0;
assign OE_DATA_54_const_net_6              = 4'h0;
assign OE_DATA_55_const_net_6              = 4'h0;
assign OE_DATA_56_const_net_6              = 4'h0;
assign OE_DATA_57_const_net_6              = 4'h0;
assign OE_DATA_58_const_net_6              = 4'h0;
assign OE_DATA_59_const_net_6              = 4'h0;
assign OE_DATA_60_const_net_6              = 4'h0;
assign OE_DATA_61_const_net_6              = 4'h0;
assign OE_DATA_62_const_net_6              = 4'h0;
assign OE_DATA_63_const_net_6              = 4'h0;
assign RX_DQS_90_const_net_7               = 2'h0;
assign FIFO_WR_PTR_const_net_7             = 3'h0;
assign FIFO_RD_PTR_const_net_7             = 3'h0;
assign EYE_MONITOR_LANE_WIDTH_const_net_7  = 3'h0;
assign TX_DATA_1_const_net_5               = 4'h0;
assign TX_DATA_2_const_net_5               = 4'h0;
assign TX_DATA_3_const_net_6               = 4'h0;
assign TX_DATA_4_const_net_6               = 4'h0;
assign TX_DATA_5_const_net_6               = 4'h0;
assign TX_DATA_6_const_net_6               = 4'h0;
assign TX_DATA_7_const_net_6               = 4'h0;
assign TX_DATA_8_const_net_6               = 4'h0;
assign TX_DATA_9_const_net_6               = 4'h0;
assign TX_DATA_10_const_net_6              = 4'h0;
assign TX_DATA_11_const_net_6              = 4'h0;
assign TX_DATA_12_const_net_7              = 4'h0;
assign TX_DATA_13_const_net_7              = 4'h0;
assign TX_DATA_14_const_net_7              = 4'h0;
assign TX_DATA_15_const_net_7              = 4'h0;
assign TX_DATA_16_const_net_7              = 4'h0;
assign TX_DATA_17_const_net_7              = 4'h0;
assign TX_DATA_18_const_net_7              = 4'h0;
assign TX_DATA_19_const_net_7              = 4'h0;
assign TX_DATA_20_const_net_7              = 4'h0;
assign TX_DATA_21_const_net_7              = 4'h0;
assign TX_DATA_22_const_net_7              = 4'h0;
assign TX_DATA_23_const_net_7              = 4'h0;
assign TX_DATA_24_const_net_7              = 4'h0;
assign TX_DATA_25_const_net_7              = 4'h0;
assign TX_DATA_26_const_net_7              = 4'h0;
assign TX_DATA_27_const_net_7              = 4'h0;
assign TX_DATA_28_const_net_7              = 4'h0;
assign TX_DATA_29_const_net_7              = 4'h0;
assign TX_DATA_30_const_net_7              = 4'h0;
assign TX_DATA_31_const_net_7              = 4'h0;
assign TX_DATA_32_const_net_7              = 4'h0;
assign TX_DATA_33_const_net_7              = 4'h0;
assign TX_DATA_34_const_net_7              = 4'h0;
assign TX_DATA_35_const_net_7              = 4'h0;
assign TX_DATA_36_const_net_7              = 4'h0;
assign TX_DATA_37_const_net_7              = 4'h0;
assign TX_DATA_38_const_net_7              = 4'h0;
assign TX_DATA_39_const_net_7              = 4'h0;
assign TX_DATA_40_const_net_7              = 4'h0;
assign TX_DATA_41_const_net_7              = 4'h0;
assign TX_DATA_42_const_net_7              = 4'h0;
assign TX_DATA_43_const_net_7              = 4'h0;
assign TX_DATA_44_const_net_7              = 4'h0;
assign TX_DATA_45_const_net_7              = 4'h0;
assign TX_DATA_46_const_net_7              = 4'h0;
assign TX_DATA_47_const_net_7              = 4'h0;
assign TX_DATA_48_const_net_7              = 4'h0;
assign TX_DATA_49_const_net_7              = 4'h0;
assign TX_DATA_50_const_net_7              = 4'h0;
assign TX_DATA_51_const_net_7              = 4'h0;
assign TX_DATA_52_const_net_7              = 4'h0;
assign TX_DATA_53_const_net_7              = 4'h0;
assign TX_DATA_54_const_net_7              = 4'h0;
assign TX_DATA_55_const_net_7              = 4'h0;
assign TX_DATA_56_const_net_7              = 4'h0;
assign TX_DATA_57_const_net_7              = 4'h0;
assign TX_DATA_58_const_net_7              = 4'h0;
assign TX_DATA_59_const_net_7              = 4'h0;
assign TX_DATA_60_const_net_7              = 4'h0;
assign TX_DATA_61_const_net_7              = 4'h0;
assign TX_DATA_62_const_net_7              = 4'h0;
assign TX_DATA_63_const_net_7              = 4'h0;
assign OE_DATA_1_const_net_7               = 4'h0;
assign OE_DATA_2_const_net_7               = 4'h0;
assign OE_DATA_3_const_net_7               = 4'h0;
assign OE_DATA_4_const_net_7               = 4'h0;
assign OE_DATA_5_const_net_7               = 4'h0;
assign OE_DATA_6_const_net_7               = 4'h0;
assign OE_DATA_7_const_net_7               = 4'h0;
assign OE_DATA_8_const_net_7               = 4'h0;
assign OE_DATA_9_const_net_7               = 4'h0;
assign OE_DATA_10_const_net_7              = 4'h0;
assign OE_DATA_11_const_net_7              = 4'h0;
assign OE_DATA_12_const_net_7              = 4'h0;
assign OE_DATA_13_const_net_7              = 4'h0;
assign OE_DATA_14_const_net_7              = 4'h0;
assign OE_DATA_15_const_net_7              = 4'h0;
assign OE_DATA_16_const_net_7              = 4'h0;
assign OE_DATA_17_const_net_7              = 4'h0;
assign OE_DATA_18_const_net_7              = 4'h0;
assign OE_DATA_19_const_net_7              = 4'h0;
assign OE_DATA_20_const_net_7              = 4'h0;
assign OE_DATA_21_const_net_7              = 4'h0;
assign OE_DATA_22_const_net_7              = 4'h0;
assign OE_DATA_23_const_net_7              = 4'h0;
assign OE_DATA_24_const_net_7              = 4'h0;
assign OE_DATA_25_const_net_7              = 4'h0;
assign OE_DATA_26_const_net_7              = 4'h0;
assign OE_DATA_27_const_net_7              = 4'h0;
assign OE_DATA_28_const_net_7              = 4'h0;
assign OE_DATA_29_const_net_7              = 4'h0;
assign OE_DATA_30_const_net_7              = 4'h0;
assign OE_DATA_31_const_net_7              = 4'h0;
assign OE_DATA_32_const_net_7              = 4'h0;
assign OE_DATA_33_const_net_7              = 4'h0;
assign OE_DATA_34_const_net_7              = 4'h0;
assign OE_DATA_35_const_net_7              = 4'h0;
assign OE_DATA_36_const_net_7              = 4'h0;
assign OE_DATA_37_const_net_7              = 4'h0;
assign OE_DATA_38_const_net_7              = 4'h0;
assign OE_DATA_39_const_net_7              = 4'h0;
assign OE_DATA_40_const_net_7              = 4'h0;
assign OE_DATA_41_const_net_7              = 4'h0;
assign OE_DATA_42_const_net_7              = 4'h0;
assign OE_DATA_43_const_net_7              = 4'h0;
assign OE_DATA_44_const_net_7              = 4'h0;
assign OE_DATA_45_const_net_7              = 4'h0;
assign OE_DATA_46_const_net_7              = 4'h0;
assign OE_DATA_47_const_net_7              = 4'h0;
assign OE_DATA_48_const_net_7              = 4'h0;
assign OE_DATA_49_const_net_7              = 4'h0;
assign OE_DATA_50_const_net_7              = 4'h0;
assign OE_DATA_51_const_net_7              = 4'h0;
assign OE_DATA_52_const_net_7              = 4'h0;
assign OE_DATA_53_const_net_7              = 4'h0;
assign OE_DATA_54_const_net_7              = 4'h0;
assign OE_DATA_55_const_net_7              = 4'h0;
assign OE_DATA_56_const_net_7              = 4'h0;
assign OE_DATA_57_const_net_7              = 4'h0;
assign OE_DATA_58_const_net_7              = 4'h0;
assign OE_DATA_59_const_net_7              = 4'h0;
assign OE_DATA_60_const_net_7              = 4'h0;
assign OE_DATA_61_const_net_7              = 4'h0;
assign OE_DATA_62_const_net_7              = 4'h0;
assign OE_DATA_63_const_net_7              = 4'h0;
assign RX_DQS_90_const_net_8               = 2'h0;
assign FIFO_WR_PTR_const_net_8             = 3'h0;
assign FIFO_RD_PTR_const_net_8             = 3'h0;
assign EYE_MONITOR_LANE_WIDTH_const_net_8  = 3'h0;
assign TX_DATA_1_const_net_6               = 4'h0;
assign TX_DATA_2_const_net_6               = 4'h0;
assign TX_DATA_3_const_net_7               = 4'h0;
assign TX_DATA_4_const_net_7               = 4'h0;
assign TX_DATA_5_const_net_7               = 4'h0;
assign TX_DATA_6_const_net_7               = 4'h0;
assign TX_DATA_7_const_net_7               = 4'h0;
assign TX_DATA_8_const_net_7               = 4'h0;
assign TX_DATA_9_const_net_7               = 4'h0;
assign TX_DATA_10_const_net_7              = 4'h0;
assign TX_DATA_11_const_net_7              = 4'h0;
assign TX_DATA_12_const_net_8              = 4'h0;
assign TX_DATA_13_const_net_8              = 4'h0;
assign TX_DATA_14_const_net_8              = 4'h0;
assign TX_DATA_15_const_net_8              = 4'h0;
assign TX_DATA_16_const_net_8              = 4'h0;
assign TX_DATA_17_const_net_8              = 4'h0;
assign TX_DATA_18_const_net_8              = 4'h0;
assign TX_DATA_19_const_net_8              = 4'h0;
assign TX_DATA_20_const_net_8              = 4'h0;
assign TX_DATA_21_const_net_8              = 4'h0;
assign TX_DATA_22_const_net_8              = 4'h0;
assign TX_DATA_23_const_net_8              = 4'h0;
assign TX_DATA_24_const_net_8              = 4'h0;
assign TX_DATA_25_const_net_8              = 4'h0;
assign TX_DATA_26_const_net_8              = 4'h0;
assign TX_DATA_27_const_net_8              = 4'h0;
assign TX_DATA_28_const_net_8              = 4'h0;
assign TX_DATA_29_const_net_8              = 4'h0;
assign TX_DATA_30_const_net_8              = 4'h0;
assign TX_DATA_31_const_net_8              = 4'h0;
assign TX_DATA_32_const_net_8              = 4'h0;
assign TX_DATA_33_const_net_8              = 4'h0;
assign TX_DATA_34_const_net_8              = 4'h0;
assign TX_DATA_35_const_net_8              = 4'h0;
assign TX_DATA_36_const_net_8              = 4'h0;
assign TX_DATA_37_const_net_8              = 4'h0;
assign TX_DATA_38_const_net_8              = 4'h0;
assign TX_DATA_39_const_net_8              = 4'h0;
assign TX_DATA_40_const_net_8              = 4'h0;
assign TX_DATA_41_const_net_8              = 4'h0;
assign TX_DATA_42_const_net_8              = 4'h0;
assign TX_DATA_43_const_net_8              = 4'h0;
assign TX_DATA_44_const_net_8              = 4'h0;
assign TX_DATA_45_const_net_8              = 4'h0;
assign TX_DATA_46_const_net_8              = 4'h0;
assign TX_DATA_47_const_net_8              = 4'h0;
assign TX_DATA_48_const_net_8              = 4'h0;
assign TX_DATA_49_const_net_8              = 4'h0;
assign TX_DATA_50_const_net_8              = 4'h0;
assign TX_DATA_51_const_net_8              = 4'h0;
assign TX_DATA_52_const_net_8              = 4'h0;
assign TX_DATA_53_const_net_8              = 4'h0;
assign TX_DATA_54_const_net_8              = 4'h0;
assign TX_DATA_55_const_net_8              = 4'h0;
assign TX_DATA_56_const_net_8              = 4'h0;
assign TX_DATA_57_const_net_8              = 4'h0;
assign TX_DATA_58_const_net_8              = 4'h0;
assign TX_DATA_59_const_net_8              = 4'h0;
assign TX_DATA_60_const_net_8              = 4'h0;
assign TX_DATA_61_const_net_8              = 4'h0;
assign TX_DATA_62_const_net_8              = 4'h0;
assign TX_DATA_63_const_net_8              = 4'h0;
assign OE_DATA_1_const_net_8               = 4'h0;
assign OE_DATA_2_const_net_8               = 4'h0;
assign OE_DATA_3_const_net_8               = 4'h0;
assign OE_DATA_4_const_net_8               = 4'h0;
assign OE_DATA_5_const_net_8               = 4'h0;
assign OE_DATA_6_const_net_8               = 4'h0;
assign OE_DATA_7_const_net_8               = 4'h0;
assign OE_DATA_8_const_net_8               = 4'h0;
assign OE_DATA_9_const_net_8               = 4'h0;
assign OE_DATA_10_const_net_8              = 4'h0;
assign OE_DATA_11_const_net_8              = 4'h0;
assign OE_DATA_12_const_net_8              = 4'h0;
assign OE_DATA_13_const_net_8              = 4'h0;
assign OE_DATA_14_const_net_8              = 4'h0;
assign OE_DATA_15_const_net_8              = 4'h0;
assign OE_DATA_16_const_net_8              = 4'h0;
assign OE_DATA_17_const_net_8              = 4'h0;
assign OE_DATA_18_const_net_8              = 4'h0;
assign OE_DATA_19_const_net_8              = 4'h0;
assign OE_DATA_20_const_net_8              = 4'h0;
assign OE_DATA_21_const_net_8              = 4'h0;
assign OE_DATA_22_const_net_8              = 4'h0;
assign OE_DATA_23_const_net_8              = 4'h0;
assign OE_DATA_24_const_net_8              = 4'h0;
assign OE_DATA_25_const_net_8              = 4'h0;
assign OE_DATA_26_const_net_8              = 4'h0;
assign OE_DATA_27_const_net_8              = 4'h0;
assign OE_DATA_28_const_net_8              = 4'h0;
assign OE_DATA_29_const_net_8              = 4'h0;
assign OE_DATA_30_const_net_8              = 4'h0;
assign OE_DATA_31_const_net_8              = 4'h0;
assign OE_DATA_32_const_net_8              = 4'h0;
assign OE_DATA_33_const_net_8              = 4'h0;
assign OE_DATA_34_const_net_8              = 4'h0;
assign OE_DATA_35_const_net_8              = 4'h0;
assign OE_DATA_36_const_net_8              = 4'h0;
assign OE_DATA_37_const_net_8              = 4'h0;
assign OE_DATA_38_const_net_8              = 4'h0;
assign OE_DATA_39_const_net_8              = 4'h0;
assign OE_DATA_40_const_net_8              = 4'h0;
assign OE_DATA_41_const_net_8              = 4'h0;
assign OE_DATA_42_const_net_8              = 4'h0;
assign OE_DATA_43_const_net_8              = 4'h0;
assign OE_DATA_44_const_net_8              = 4'h0;
assign OE_DATA_45_const_net_8              = 4'h0;
assign OE_DATA_46_const_net_8              = 4'h0;
assign OE_DATA_47_const_net_8              = 4'h0;
assign OE_DATA_48_const_net_8              = 4'h0;
assign OE_DATA_49_const_net_8              = 4'h0;
assign OE_DATA_50_const_net_8              = 4'h0;
assign OE_DATA_51_const_net_8              = 4'h0;
assign OE_DATA_52_const_net_8              = 4'h0;
assign OE_DATA_53_const_net_8              = 4'h0;
assign OE_DATA_54_const_net_8              = 4'h0;
assign OE_DATA_55_const_net_8              = 4'h0;
assign OE_DATA_56_const_net_8              = 4'h0;
assign OE_DATA_57_const_net_8              = 4'h0;
assign OE_DATA_58_const_net_8              = 4'h0;
assign OE_DATA_59_const_net_8              = 4'h0;
assign OE_DATA_60_const_net_8              = 4'h0;
assign OE_DATA_61_const_net_8              = 4'h0;
assign OE_DATA_62_const_net_8              = 4'h0;
assign OE_DATA_63_const_net_8              = 4'h0;
assign RX_DQS_90_const_net_9               = 2'h0;
assign FIFO_WR_PTR_const_net_9             = 3'h0;
assign FIFO_RD_PTR_const_net_9             = 3'h0;
assign EYE_MONITOR_LANE_WIDTH_const_net_9  = 3'h0;
assign TX_DATA_1_const_net_7               = 4'h0;
assign TX_DATA_2_const_net_7               = 4'h0;
assign TX_DATA_3_const_net_8               = 4'h0;
assign TX_DATA_4_const_net_8               = 4'h0;
assign TX_DATA_5_const_net_8               = 4'h0;
assign TX_DATA_6_const_net_8               = 4'h0;
assign TX_DATA_7_const_net_8               = 4'h0;
assign TX_DATA_8_const_net_8               = 4'h0;
assign TX_DATA_9_const_net_8               = 4'h0;
assign TX_DATA_10_const_net_8              = 4'h0;
assign TX_DATA_11_const_net_8              = 4'h0;
assign TX_DATA_12_const_net_9              = 4'h0;
assign TX_DATA_13_const_net_9              = 4'h0;
assign TX_DATA_14_const_net_9              = 4'h0;
assign TX_DATA_15_const_net_9              = 4'h0;
assign TX_DATA_16_const_net_9              = 4'h0;
assign TX_DATA_17_const_net_9              = 4'h0;
assign TX_DATA_18_const_net_9              = 4'h0;
assign TX_DATA_19_const_net_9              = 4'h0;
assign TX_DATA_20_const_net_9              = 4'h0;
assign TX_DATA_21_const_net_9              = 4'h0;
assign TX_DATA_22_const_net_9              = 4'h0;
assign TX_DATA_23_const_net_9              = 4'h0;
assign TX_DATA_24_const_net_9              = 4'h0;
assign TX_DATA_25_const_net_9              = 4'h0;
assign TX_DATA_26_const_net_9              = 4'h0;
assign TX_DATA_27_const_net_9              = 4'h0;
assign TX_DATA_28_const_net_9              = 4'h0;
assign TX_DATA_29_const_net_9              = 4'h0;
assign TX_DATA_30_const_net_9              = 4'h0;
assign TX_DATA_31_const_net_9              = 4'h0;
assign TX_DATA_32_const_net_9              = 4'h0;
assign TX_DATA_33_const_net_9              = 4'h0;
assign TX_DATA_34_const_net_9              = 4'h0;
assign TX_DATA_35_const_net_9              = 4'h0;
assign TX_DATA_36_const_net_9              = 4'h0;
assign TX_DATA_37_const_net_9              = 4'h0;
assign TX_DATA_38_const_net_9              = 4'h0;
assign TX_DATA_39_const_net_9              = 4'h0;
assign TX_DATA_40_const_net_9              = 4'h0;
assign TX_DATA_41_const_net_9              = 4'h0;
assign TX_DATA_42_const_net_9              = 4'h0;
assign TX_DATA_43_const_net_9              = 4'h0;
assign TX_DATA_44_const_net_9              = 4'h0;
assign TX_DATA_45_const_net_9              = 4'h0;
assign TX_DATA_46_const_net_9              = 4'h0;
assign TX_DATA_47_const_net_9              = 4'h0;
assign TX_DATA_48_const_net_9              = 4'h0;
assign TX_DATA_49_const_net_9              = 4'h0;
assign TX_DATA_50_const_net_9              = 4'h0;
assign TX_DATA_51_const_net_9              = 4'h0;
assign TX_DATA_52_const_net_9              = 4'h0;
assign TX_DATA_53_const_net_9              = 4'h0;
assign TX_DATA_54_const_net_9              = 4'h0;
assign TX_DATA_55_const_net_9              = 4'h0;
assign TX_DATA_56_const_net_9              = 4'h0;
assign TX_DATA_57_const_net_9              = 4'h0;
assign TX_DATA_58_const_net_9              = 4'h0;
assign TX_DATA_59_const_net_9              = 4'h0;
assign TX_DATA_60_const_net_9              = 4'h0;
assign TX_DATA_61_const_net_9              = 4'h0;
assign TX_DATA_62_const_net_9              = 4'h0;
assign TX_DATA_63_const_net_9              = 4'h0;
assign OE_DATA_1_const_net_9               = 4'h0;
assign OE_DATA_2_const_net_9               = 4'h0;
assign OE_DATA_3_const_net_9               = 4'h0;
assign OE_DATA_4_const_net_9               = 4'h0;
assign OE_DATA_5_const_net_9               = 4'h0;
assign OE_DATA_6_const_net_9               = 4'h0;
assign OE_DATA_7_const_net_9               = 4'h0;
assign OE_DATA_8_const_net_9               = 4'h0;
assign OE_DATA_9_const_net_9               = 4'h0;
assign OE_DATA_10_const_net_9              = 4'h0;
assign OE_DATA_11_const_net_9              = 4'h0;
assign OE_DATA_12_const_net_9              = 4'h0;
assign OE_DATA_13_const_net_9              = 4'h0;
assign OE_DATA_14_const_net_9              = 4'h0;
assign OE_DATA_15_const_net_9              = 4'h0;
assign OE_DATA_16_const_net_9              = 4'h0;
assign OE_DATA_17_const_net_9              = 4'h0;
assign OE_DATA_18_const_net_9              = 4'h0;
assign OE_DATA_19_const_net_9              = 4'h0;
assign OE_DATA_20_const_net_9              = 4'h0;
assign OE_DATA_21_const_net_9              = 4'h0;
assign OE_DATA_22_const_net_9              = 4'h0;
assign OE_DATA_23_const_net_9              = 4'h0;
assign OE_DATA_24_const_net_9              = 4'h0;
assign OE_DATA_25_const_net_9              = 4'h0;
assign OE_DATA_26_const_net_9              = 4'h0;
assign OE_DATA_27_const_net_9              = 4'h0;
assign OE_DATA_28_const_net_9              = 4'h0;
assign OE_DATA_29_const_net_9              = 4'h0;
assign OE_DATA_30_const_net_9              = 4'h0;
assign OE_DATA_31_const_net_9              = 4'h0;
assign OE_DATA_32_const_net_9              = 4'h0;
assign OE_DATA_33_const_net_9              = 4'h0;
assign OE_DATA_34_const_net_9              = 4'h0;
assign OE_DATA_35_const_net_9              = 4'h0;
assign OE_DATA_36_const_net_9              = 4'h0;
assign OE_DATA_37_const_net_9              = 4'h0;
assign OE_DATA_38_const_net_9              = 4'h0;
assign OE_DATA_39_const_net_9              = 4'h0;
assign OE_DATA_40_const_net_9              = 4'h0;
assign OE_DATA_41_const_net_9              = 4'h0;
assign OE_DATA_42_const_net_9              = 4'h0;
assign OE_DATA_43_const_net_9              = 4'h0;
assign OE_DATA_44_const_net_9              = 4'h0;
assign OE_DATA_45_const_net_9              = 4'h0;
assign OE_DATA_46_const_net_9              = 4'h0;
assign OE_DATA_47_const_net_9              = 4'h0;
assign OE_DATA_48_const_net_9              = 4'h0;
assign OE_DATA_49_const_net_9              = 4'h0;
assign OE_DATA_50_const_net_9              = 4'h0;
assign OE_DATA_51_const_net_9              = 4'h0;
assign OE_DATA_52_const_net_9              = 4'h0;
assign OE_DATA_53_const_net_9              = 4'h0;
assign OE_DATA_54_const_net_9              = 4'h0;
assign OE_DATA_55_const_net_9              = 4'h0;
assign OE_DATA_56_const_net_9              = 4'h0;
assign OE_DATA_57_const_net_9              = 4'h0;
assign OE_DATA_58_const_net_9              = 4'h0;
assign OE_DATA_59_const_net_9              = 4'h0;
assign OE_DATA_60_const_net_9              = 4'h0;
assign OE_DATA_61_const_net_9              = 4'h0;
assign OE_DATA_62_const_net_9              = 4'h0;
assign OE_DATA_63_const_net_9              = 4'h0;
assign RX_DQS_90_const_net_10              = 2'h0;
assign FIFO_WR_PTR_const_net_10            = 3'h0;
assign FIFO_RD_PTR_const_net_10            = 3'h0;
assign EYE_MONITOR_LANE_WIDTH_const_net_10 = 3'h0;
assign TX_DATA_1_const_net_8               = 4'h0;
assign TX_DATA_2_const_net_8               = 4'h0;
assign TX_DATA_3_const_net_9               = 4'h0;
assign TX_DATA_4_const_net_9               = 4'h0;
assign TX_DATA_5_const_net_9               = 4'h0;
assign TX_DATA_6_const_net_9               = 4'h0;
assign TX_DATA_7_const_net_9               = 4'h0;
assign TX_DATA_8_const_net_9               = 4'h0;
assign TX_DATA_9_const_net_9               = 4'h0;
assign TX_DATA_10_const_net_9              = 4'h0;
assign TX_DATA_11_const_net_9              = 4'h0;
assign TX_DATA_12_const_net_10             = 4'h0;
assign TX_DATA_13_const_net_10             = 4'h0;
assign TX_DATA_14_const_net_10             = 4'h0;
assign TX_DATA_15_const_net_10             = 4'h0;
assign TX_DATA_16_const_net_10             = 4'h0;
assign TX_DATA_17_const_net_10             = 4'h0;
assign TX_DATA_18_const_net_10             = 4'h0;
assign TX_DATA_19_const_net_10             = 4'h0;
assign TX_DATA_20_const_net_10             = 4'h0;
assign TX_DATA_21_const_net_10             = 4'h0;
assign TX_DATA_22_const_net_10             = 4'h0;
assign TX_DATA_23_const_net_10             = 4'h0;
assign TX_DATA_24_const_net_10             = 4'h0;
assign TX_DATA_25_const_net_10             = 4'h0;
assign TX_DATA_26_const_net_10             = 4'h0;
assign TX_DATA_27_const_net_10             = 4'h0;
assign TX_DATA_28_const_net_10             = 4'h0;
assign TX_DATA_29_const_net_10             = 4'h0;
assign TX_DATA_30_const_net_10             = 4'h0;
assign TX_DATA_31_const_net_10             = 4'h0;
assign TX_DATA_32_const_net_10             = 4'h0;
assign TX_DATA_33_const_net_10             = 4'h0;
assign TX_DATA_34_const_net_10             = 4'h0;
assign TX_DATA_35_const_net_10             = 4'h0;
assign TX_DATA_36_const_net_10             = 4'h0;
assign TX_DATA_37_const_net_10             = 4'h0;
assign TX_DATA_38_const_net_10             = 4'h0;
assign TX_DATA_39_const_net_10             = 4'h0;
assign TX_DATA_40_const_net_10             = 4'h0;
assign TX_DATA_41_const_net_10             = 4'h0;
assign TX_DATA_42_const_net_10             = 4'h0;
assign TX_DATA_43_const_net_10             = 4'h0;
assign TX_DATA_44_const_net_10             = 4'h0;
assign TX_DATA_45_const_net_10             = 4'h0;
assign TX_DATA_46_const_net_10             = 4'h0;
assign TX_DATA_47_const_net_10             = 4'h0;
assign TX_DATA_48_const_net_10             = 4'h0;
assign TX_DATA_49_const_net_10             = 4'h0;
assign TX_DATA_50_const_net_10             = 4'h0;
assign TX_DATA_51_const_net_10             = 4'h0;
assign TX_DATA_52_const_net_10             = 4'h0;
assign TX_DATA_53_const_net_10             = 4'h0;
assign TX_DATA_54_const_net_10             = 4'h0;
assign TX_DATA_55_const_net_10             = 4'h0;
assign TX_DATA_56_const_net_10             = 4'h0;
assign TX_DATA_57_const_net_10             = 4'h0;
assign TX_DATA_58_const_net_10             = 4'h0;
assign TX_DATA_59_const_net_10             = 4'h0;
assign TX_DATA_60_const_net_10             = 4'h0;
assign TX_DATA_61_const_net_10             = 4'h0;
assign TX_DATA_62_const_net_10             = 4'h0;
assign TX_DATA_63_const_net_10             = 4'h0;
assign OE_DATA_1_const_net_10              = 4'h0;
assign OE_DATA_2_const_net_10              = 4'h0;
assign OE_DATA_3_const_net_10              = 4'h0;
assign OE_DATA_4_const_net_10              = 4'h0;
assign OE_DATA_5_const_net_10              = 4'h0;
assign OE_DATA_6_const_net_10              = 4'h0;
assign OE_DATA_7_const_net_10              = 4'h0;
assign OE_DATA_8_const_net_10              = 4'h0;
assign OE_DATA_9_const_net_10              = 4'h0;
assign OE_DATA_10_const_net_10             = 4'h0;
assign OE_DATA_11_const_net_10             = 4'h0;
assign OE_DATA_12_const_net_10             = 4'h0;
assign OE_DATA_13_const_net_10             = 4'h0;
assign OE_DATA_14_const_net_10             = 4'h0;
assign OE_DATA_15_const_net_10             = 4'h0;
assign OE_DATA_16_const_net_10             = 4'h0;
assign OE_DATA_17_const_net_10             = 4'h0;
assign OE_DATA_18_const_net_10             = 4'h0;
assign OE_DATA_19_const_net_10             = 4'h0;
assign OE_DATA_20_const_net_10             = 4'h0;
assign OE_DATA_21_const_net_10             = 4'h0;
assign OE_DATA_22_const_net_10             = 4'h0;
assign OE_DATA_23_const_net_10             = 4'h0;
assign OE_DATA_24_const_net_10             = 4'h0;
assign OE_DATA_25_const_net_10             = 4'h0;
assign OE_DATA_26_const_net_10             = 4'h0;
assign OE_DATA_27_const_net_10             = 4'h0;
assign OE_DATA_28_const_net_10             = 4'h0;
assign OE_DATA_29_const_net_10             = 4'h0;
assign OE_DATA_30_const_net_10             = 4'h0;
assign OE_DATA_31_const_net_10             = 4'h0;
assign OE_DATA_32_const_net_10             = 4'h0;
assign OE_DATA_33_const_net_10             = 4'h0;
assign OE_DATA_34_const_net_10             = 4'h0;
assign OE_DATA_35_const_net_10             = 4'h0;
assign OE_DATA_36_const_net_10             = 4'h0;
assign OE_DATA_37_const_net_10             = 4'h0;
assign OE_DATA_38_const_net_10             = 4'h0;
assign OE_DATA_39_const_net_10             = 4'h0;
assign OE_DATA_40_const_net_10             = 4'h0;
assign OE_DATA_41_const_net_10             = 4'h0;
assign OE_DATA_42_const_net_10             = 4'h0;
assign OE_DATA_43_const_net_10             = 4'h0;
assign OE_DATA_44_const_net_10             = 4'h0;
assign OE_DATA_45_const_net_10             = 4'h0;
assign OE_DATA_46_const_net_10             = 4'h0;
assign OE_DATA_47_const_net_10             = 4'h0;
assign OE_DATA_48_const_net_10             = 4'h0;
assign OE_DATA_49_const_net_10             = 4'h0;
assign OE_DATA_50_const_net_10             = 4'h0;
assign OE_DATA_51_const_net_10             = 4'h0;
assign OE_DATA_52_const_net_10             = 4'h0;
assign OE_DATA_53_const_net_10             = 4'h0;
assign OE_DATA_54_const_net_10             = 4'h0;
assign OE_DATA_55_const_net_10             = 4'h0;
assign OE_DATA_56_const_net_10             = 4'h0;
assign OE_DATA_57_const_net_10             = 4'h0;
assign OE_DATA_58_const_net_10             = 4'h0;
assign OE_DATA_59_const_net_10             = 4'h0;
assign OE_DATA_60_const_net_10             = 4'h0;
assign OE_DATA_61_const_net_10             = 4'h0;
assign OE_DATA_62_const_net_10             = 4'h0;
assign OE_DATA_63_const_net_10             = 4'h0;
assign RX_DQS_90_const_net_11              = 2'h0;
assign FIFO_WR_PTR_const_net_11            = 3'h0;
assign FIFO_RD_PTR_const_net_11            = 3'h0;
assign EYE_MONITOR_LANE_WIDTH_const_net_11 = 3'h0;
assign TX_DATA_1_const_net_9               = 4'h0;
assign TX_DATA_2_const_net_9               = 4'h0;
assign TX_DATA_3_const_net_10              = 4'h0;
assign TX_DATA_4_const_net_10              = 4'h0;
assign TX_DATA_5_const_net_10              = 4'h0;
assign TX_DATA_6_const_net_10              = 4'h0;
assign TX_DATA_7_const_net_10              = 4'h0;
assign TX_DATA_8_const_net_10              = 4'h0;
assign TX_DATA_9_const_net_10              = 4'h0;
assign TX_DATA_10_const_net_10             = 4'h0;
assign TX_DATA_11_const_net_10             = 4'h0;
assign TX_DATA_12_const_net_11             = 4'h0;
assign TX_DATA_13_const_net_11             = 4'h0;
assign TX_DATA_14_const_net_11             = 4'h0;
assign TX_DATA_15_const_net_11             = 4'h0;
assign TX_DATA_16_const_net_11             = 4'h0;
assign TX_DATA_17_const_net_11             = 4'h0;
assign TX_DATA_18_const_net_11             = 4'h0;
assign TX_DATA_19_const_net_11             = 4'h0;
assign TX_DATA_20_const_net_11             = 4'h0;
assign TX_DATA_21_const_net_11             = 4'h0;
assign TX_DATA_22_const_net_11             = 4'h0;
assign TX_DATA_23_const_net_11             = 4'h0;
assign TX_DATA_24_const_net_11             = 4'h0;
assign TX_DATA_25_const_net_11             = 4'h0;
assign TX_DATA_26_const_net_11             = 4'h0;
assign TX_DATA_27_const_net_11             = 4'h0;
assign TX_DATA_28_const_net_11             = 4'h0;
assign TX_DATA_29_const_net_11             = 4'h0;
assign TX_DATA_30_const_net_11             = 4'h0;
assign TX_DATA_31_const_net_11             = 4'h0;
assign TX_DATA_32_const_net_11             = 4'h0;
assign TX_DATA_33_const_net_11             = 4'h0;
assign TX_DATA_34_const_net_11             = 4'h0;
assign TX_DATA_35_const_net_11             = 4'h0;
assign TX_DATA_36_const_net_11             = 4'h0;
assign TX_DATA_37_const_net_11             = 4'h0;
assign TX_DATA_38_const_net_11             = 4'h0;
assign TX_DATA_39_const_net_11             = 4'h0;
assign TX_DATA_40_const_net_11             = 4'h0;
assign TX_DATA_41_const_net_11             = 4'h0;
assign TX_DATA_42_const_net_11             = 4'h0;
assign TX_DATA_43_const_net_11             = 4'h0;
assign TX_DATA_44_const_net_11             = 4'h0;
assign TX_DATA_45_const_net_11             = 4'h0;
assign TX_DATA_46_const_net_11             = 4'h0;
assign TX_DATA_47_const_net_11             = 4'h0;
assign TX_DATA_48_const_net_11             = 4'h0;
assign TX_DATA_49_const_net_11             = 4'h0;
assign TX_DATA_50_const_net_11             = 4'h0;
assign TX_DATA_51_const_net_11             = 4'h0;
assign TX_DATA_52_const_net_11             = 4'h0;
assign TX_DATA_53_const_net_11             = 4'h0;
assign TX_DATA_54_const_net_11             = 4'h0;
assign TX_DATA_55_const_net_11             = 4'h0;
assign TX_DATA_56_const_net_11             = 4'h0;
assign TX_DATA_57_const_net_11             = 4'h0;
assign TX_DATA_58_const_net_11             = 4'h0;
assign TX_DATA_59_const_net_11             = 4'h0;
assign TX_DATA_60_const_net_11             = 4'h0;
assign TX_DATA_61_const_net_11             = 4'h0;
assign TX_DATA_62_const_net_11             = 4'h0;
assign TX_DATA_63_const_net_11             = 4'h0;
assign OE_DATA_1_const_net_11              = 4'h0;
assign OE_DATA_2_const_net_11              = 4'h0;
assign OE_DATA_3_const_net_11              = 4'h0;
assign OE_DATA_4_const_net_11              = 4'h0;
assign OE_DATA_5_const_net_11              = 4'h0;
assign OE_DATA_6_const_net_11              = 4'h0;
assign OE_DATA_7_const_net_11              = 4'h0;
assign OE_DATA_8_const_net_11              = 4'h0;
assign OE_DATA_9_const_net_11              = 4'h0;
assign OE_DATA_10_const_net_11             = 4'h0;
assign OE_DATA_11_const_net_11             = 4'h0;
assign OE_DATA_12_const_net_11             = 4'h0;
assign OE_DATA_13_const_net_11             = 4'h0;
assign OE_DATA_14_const_net_11             = 4'h0;
assign OE_DATA_15_const_net_11             = 4'h0;
assign OE_DATA_16_const_net_11             = 4'h0;
assign OE_DATA_17_const_net_11             = 4'h0;
assign OE_DATA_18_const_net_11             = 4'h0;
assign OE_DATA_19_const_net_11             = 4'h0;
assign OE_DATA_20_const_net_11             = 4'h0;
assign OE_DATA_21_const_net_11             = 4'h0;
assign OE_DATA_22_const_net_11             = 4'h0;
assign OE_DATA_23_const_net_11             = 4'h0;
assign OE_DATA_24_const_net_11             = 4'h0;
assign OE_DATA_25_const_net_11             = 4'h0;
assign OE_DATA_26_const_net_11             = 4'h0;
assign OE_DATA_27_const_net_11             = 4'h0;
assign OE_DATA_28_const_net_11             = 4'h0;
assign OE_DATA_29_const_net_11             = 4'h0;
assign OE_DATA_30_const_net_11             = 4'h0;
assign OE_DATA_31_const_net_11             = 4'h0;
assign OE_DATA_32_const_net_11             = 4'h0;
assign OE_DATA_33_const_net_11             = 4'h0;
assign OE_DATA_34_const_net_11             = 4'h0;
assign OE_DATA_35_const_net_11             = 4'h0;
assign OE_DATA_36_const_net_11             = 4'h0;
assign OE_DATA_37_const_net_11             = 4'h0;
assign OE_DATA_38_const_net_11             = 4'h0;
assign OE_DATA_39_const_net_11             = 4'h0;
assign OE_DATA_40_const_net_11             = 4'h0;
assign OE_DATA_41_const_net_11             = 4'h0;
assign OE_DATA_42_const_net_11             = 4'h0;
assign OE_DATA_43_const_net_11             = 4'h0;
assign OE_DATA_44_const_net_11             = 4'h0;
assign OE_DATA_45_const_net_11             = 4'h0;
assign OE_DATA_46_const_net_11             = 4'h0;
assign OE_DATA_47_const_net_11             = 4'h0;
assign OE_DATA_48_const_net_11             = 4'h0;
assign OE_DATA_49_const_net_11             = 4'h0;
assign OE_DATA_50_const_net_11             = 4'h0;
assign OE_DATA_51_const_net_11             = 4'h0;
assign OE_DATA_52_const_net_11             = 4'h0;
assign OE_DATA_53_const_net_11             = 4'h0;
assign OE_DATA_54_const_net_11             = 4'h0;
assign OE_DATA_55_const_net_11             = 4'h0;
assign OE_DATA_56_const_net_11             = 4'h0;
assign OE_DATA_57_const_net_11             = 4'h0;
assign OE_DATA_58_const_net_11             = 4'h0;
assign OE_DATA_59_const_net_11             = 4'h0;
assign OE_DATA_60_const_net_11             = 4'h0;
assign OE_DATA_61_const_net_11             = 4'h0;
assign OE_DATA_62_const_net_11             = 4'h0;
assign OE_DATA_63_const_net_11             = 4'h0;
assign RX_DQS_90_const_net_12              = 2'h0;
assign FIFO_WR_PTR_const_net_12            = 3'h0;
assign FIFO_RD_PTR_const_net_12            = 3'h0;
assign EYE_MONITOR_LANE_WIDTH_const_net_12 = 3'h0;
assign TX_DATA_0_const_net_5               = 8'h00;
assign TX_DATA_1_const_net_10              = 8'h00;
assign TX_DATA_2_const_net_10              = 8'h00;
assign TX_DATA_3_const_net_11              = 8'h00;
assign TX_DATA_4_const_net_11              = 8'h00;
assign TX_DATA_5_const_net_11              = 8'h00;
assign TX_DATA_6_const_net_11              = 8'h00;
assign TX_DATA_7_const_net_11              = 8'h00;
assign TX_DATA_8_const_net_11              = 8'h00;
assign TX_DATA_9_const_net_11              = 8'h00;
assign TX_DATA_10_const_net_11             = 8'h00;
assign TX_DATA_11_const_net_11             = 8'h00;
assign TX_DATA_12_const_net_12             = 8'h00;
assign TX_DATA_13_const_net_12             = 8'h00;
assign TX_DATA_14_const_net_12             = 8'h00;
assign TX_DATA_15_const_net_12             = 8'h00;
assign TX_DATA_16_const_net_12             = 8'h00;
assign TX_DATA_17_const_net_12             = 8'h00;
assign TX_DATA_18_const_net_12             = 8'h00;
assign TX_DATA_19_const_net_12             = 8'h00;
assign TX_DATA_20_const_net_12             = 8'h00;
assign TX_DATA_21_const_net_12             = 8'h00;
assign TX_DATA_22_const_net_12             = 8'h00;
assign TX_DATA_23_const_net_12             = 8'h00;
assign TX_DATA_24_const_net_12             = 8'h00;
assign TX_DATA_25_const_net_12             = 8'h00;
assign TX_DATA_26_const_net_12             = 8'h00;
assign TX_DATA_27_const_net_12             = 8'h00;
assign TX_DATA_28_const_net_12             = 8'h00;
assign TX_DATA_29_const_net_12             = 8'h00;
assign TX_DATA_30_const_net_12             = 8'h00;
assign TX_DATA_31_const_net_12             = 8'h00;
assign TX_DATA_32_const_net_12             = 8'h00;
assign TX_DATA_33_const_net_12             = 8'h00;
assign TX_DATA_34_const_net_12             = 8'h00;
assign TX_DATA_35_const_net_12             = 8'h00;
assign TX_DATA_36_const_net_12             = 8'h00;
assign TX_DATA_37_const_net_12             = 8'h00;
assign TX_DATA_38_const_net_12             = 8'h00;
assign TX_DATA_39_const_net_12             = 8'h00;
assign TX_DATA_40_const_net_12             = 8'h00;
assign TX_DATA_41_const_net_12             = 8'h00;
assign TX_DATA_42_const_net_12             = 8'h00;
assign TX_DATA_43_const_net_12             = 8'h00;
assign TX_DATA_44_const_net_12             = 8'h00;
assign TX_DATA_45_const_net_12             = 8'h00;
assign TX_DATA_46_const_net_12             = 8'h00;
assign TX_DATA_47_const_net_12             = 8'h00;
assign TX_DATA_48_const_net_12             = 8'h00;
assign TX_DATA_49_const_net_12             = 8'h00;
assign TX_DATA_50_const_net_12             = 8'h00;
assign TX_DATA_51_const_net_12             = 8'h00;
assign TX_DATA_52_const_net_12             = 8'h00;
assign TX_DATA_53_const_net_12             = 8'h00;
assign TX_DATA_54_const_net_12             = 8'h00;
assign TX_DATA_55_const_net_12             = 8'h00;
assign TX_DATA_56_const_net_12             = 8'h00;
assign TX_DATA_57_const_net_12             = 8'h00;
assign TX_DATA_58_const_net_12             = 8'h00;
assign TX_DATA_59_const_net_12             = 8'h00;
assign TX_DATA_60_const_net_12             = 8'h00;
assign TX_DATA_61_const_net_12             = 8'h00;
assign TX_DATA_62_const_net_12             = 8'h00;
assign TX_DATA_63_const_net_12             = 8'h00;
assign OE_DATA_0_const_net_15              = 4'h0;
assign OE_DATA_1_const_net_12              = 4'h0;
assign OE_DATA_2_const_net_12              = 4'h0;
assign OE_DATA_3_const_net_12              = 4'h0;
assign OE_DATA_4_const_net_12              = 4'h0;
assign OE_DATA_5_const_net_12              = 4'h0;
assign OE_DATA_6_const_net_12              = 4'h0;
assign OE_DATA_7_const_net_12              = 4'h0;
assign OE_DATA_8_const_net_12              = 4'h0;
assign OE_DATA_9_const_net_12              = 4'h0;
assign OE_DATA_10_const_net_12             = 4'h0;
assign OE_DATA_11_const_net_12             = 4'h0;
assign OE_DATA_12_const_net_12             = 4'h0;
assign OE_DATA_13_const_net_12             = 4'h0;
assign OE_DATA_14_const_net_12             = 4'h0;
assign OE_DATA_15_const_net_12             = 4'h0;
assign OE_DATA_16_const_net_12             = 4'h0;
assign OE_DATA_17_const_net_12             = 4'h0;
assign OE_DATA_18_const_net_12             = 4'h0;
assign OE_DATA_19_const_net_12             = 4'h0;
assign OE_DATA_20_const_net_12             = 4'h0;
assign OE_DATA_21_const_net_12             = 4'h0;
assign OE_DATA_22_const_net_12             = 4'h0;
assign OE_DATA_23_const_net_12             = 4'h0;
assign OE_DATA_24_const_net_12             = 4'h0;
assign OE_DATA_25_const_net_12             = 4'h0;
assign OE_DATA_26_const_net_12             = 4'h0;
assign OE_DATA_27_const_net_12             = 4'h0;
assign OE_DATA_28_const_net_12             = 4'h0;
assign OE_DATA_29_const_net_12             = 4'h0;
assign OE_DATA_30_const_net_12             = 4'h0;
assign OE_DATA_31_const_net_12             = 4'h0;
assign OE_DATA_32_const_net_12             = 4'h0;
assign OE_DATA_33_const_net_12             = 4'h0;
assign OE_DATA_34_const_net_12             = 4'h0;
assign OE_DATA_35_const_net_12             = 4'h0;
assign OE_DATA_36_const_net_12             = 4'h0;
assign OE_DATA_37_const_net_12             = 4'h0;
assign OE_DATA_38_const_net_12             = 4'h0;
assign OE_DATA_39_const_net_12             = 4'h0;
assign OE_DATA_40_const_net_12             = 4'h0;
assign OE_DATA_41_const_net_12             = 4'h0;
assign OE_DATA_42_const_net_12             = 4'h0;
assign OE_DATA_43_const_net_12             = 4'h0;
assign OE_DATA_44_const_net_12             = 4'h0;
assign OE_DATA_45_const_net_12             = 4'h0;
assign OE_DATA_46_const_net_12             = 4'h0;
assign OE_DATA_47_const_net_12             = 4'h0;
assign OE_DATA_48_const_net_12             = 4'h0;
assign OE_DATA_49_const_net_12             = 4'h0;
assign OE_DATA_50_const_net_12             = 4'h0;
assign OE_DATA_51_const_net_12             = 4'h0;
assign OE_DATA_52_const_net_12             = 4'h0;
assign OE_DATA_53_const_net_12             = 4'h0;
assign OE_DATA_54_const_net_12             = 4'h0;
assign OE_DATA_55_const_net_12             = 4'h0;
assign OE_DATA_56_const_net_12             = 4'h0;
assign OE_DATA_57_const_net_12             = 4'h0;
assign OE_DATA_58_const_net_12             = 4'h0;
assign OE_DATA_59_const_net_12             = 4'h0;
assign OE_DATA_60_const_net_12             = 4'h0;
assign OE_DATA_61_const_net_12             = 4'h0;
assign OE_DATA_62_const_net_12             = 4'h0;
assign OE_DATA_63_const_net_12             = 4'h0;
assign RX_DQS_90_const_net_13              = 2'h0;
assign FIFO_WR_PTR_const_net_13            = 3'h0;
assign FIFO_RD_PTR_const_net_13            = 3'h0;
assign EYE_MONITOR_LANE_WIDTH_const_net_13 = 3'h0;
assign TX_DATA_1_const_net_11              = 4'h0;
assign TX_DATA_2_const_net_11              = 4'h0;
assign TX_DATA_3_const_net_12              = 4'h0;
assign TX_DATA_4_const_net_12              = 4'h0;
assign TX_DATA_5_const_net_12              = 4'h0;
assign TX_DATA_6_const_net_12              = 4'h0;
assign TX_DATA_7_const_net_12              = 4'h0;
assign TX_DATA_8_const_net_12              = 4'h0;
assign TX_DATA_9_const_net_12              = 4'h0;
assign TX_DATA_10_const_net_12             = 4'h0;
assign TX_DATA_11_const_net_12             = 4'h0;
assign TX_DATA_12_const_net_13             = 4'h0;
assign TX_DATA_13_const_net_13             = 4'h0;
assign TX_DATA_14_const_net_13             = 4'h0;
assign TX_DATA_15_const_net_13             = 4'h0;
assign TX_DATA_16_const_net_13             = 4'h0;
assign TX_DATA_17_const_net_13             = 4'h0;
assign TX_DATA_18_const_net_13             = 4'h0;
assign TX_DATA_19_const_net_13             = 4'h0;
assign TX_DATA_20_const_net_13             = 4'h0;
assign TX_DATA_21_const_net_13             = 4'h0;
assign TX_DATA_22_const_net_13             = 4'h0;
assign TX_DATA_23_const_net_13             = 4'h0;
assign TX_DATA_24_const_net_13             = 4'h0;
assign TX_DATA_25_const_net_13             = 4'h0;
assign TX_DATA_26_const_net_13             = 4'h0;
assign TX_DATA_27_const_net_13             = 4'h0;
assign TX_DATA_28_const_net_13             = 4'h0;
assign TX_DATA_29_const_net_13             = 4'h0;
assign TX_DATA_30_const_net_13             = 4'h0;
assign TX_DATA_31_const_net_13             = 4'h0;
assign TX_DATA_32_const_net_13             = 4'h0;
assign TX_DATA_33_const_net_13             = 4'h0;
assign TX_DATA_34_const_net_13             = 4'h0;
assign TX_DATA_35_const_net_13             = 4'h0;
assign TX_DATA_36_const_net_13             = 4'h0;
assign TX_DATA_37_const_net_13             = 4'h0;
assign TX_DATA_38_const_net_13             = 4'h0;
assign TX_DATA_39_const_net_13             = 4'h0;
assign TX_DATA_40_const_net_13             = 4'h0;
assign TX_DATA_41_const_net_13             = 4'h0;
assign TX_DATA_42_const_net_13             = 4'h0;
assign TX_DATA_43_const_net_13             = 4'h0;
assign TX_DATA_44_const_net_13             = 4'h0;
assign TX_DATA_45_const_net_13             = 4'h0;
assign TX_DATA_46_const_net_13             = 4'h0;
assign TX_DATA_47_const_net_13             = 4'h0;
assign TX_DATA_48_const_net_13             = 4'h0;
assign TX_DATA_49_const_net_13             = 4'h0;
assign TX_DATA_50_const_net_13             = 4'h0;
assign TX_DATA_51_const_net_13             = 4'h0;
assign TX_DATA_52_const_net_13             = 4'h0;
assign TX_DATA_53_const_net_13             = 4'h0;
assign TX_DATA_54_const_net_13             = 4'h0;
assign TX_DATA_55_const_net_13             = 4'h0;
assign TX_DATA_56_const_net_13             = 4'h0;
assign TX_DATA_57_const_net_13             = 4'h0;
assign TX_DATA_58_const_net_13             = 4'h0;
assign TX_DATA_59_const_net_13             = 4'h0;
assign TX_DATA_60_const_net_13             = 4'h0;
assign TX_DATA_61_const_net_13             = 4'h0;
assign TX_DATA_62_const_net_13             = 4'h0;
assign TX_DATA_63_const_net_13             = 4'h0;
assign OE_DATA_1_const_net_13              = 4'h0;
assign OE_DATA_2_const_net_13              = 4'h0;
assign OE_DATA_3_const_net_13              = 4'h0;
assign OE_DATA_4_const_net_13              = 4'h0;
assign OE_DATA_5_const_net_13              = 4'h0;
assign OE_DATA_6_const_net_13              = 4'h0;
assign OE_DATA_7_const_net_13              = 4'h0;
assign OE_DATA_8_const_net_13              = 4'h0;
assign OE_DATA_9_const_net_13              = 4'h0;
assign OE_DATA_10_const_net_13             = 4'h0;
assign OE_DATA_11_const_net_13             = 4'h0;
assign OE_DATA_12_const_net_13             = 4'h0;
assign OE_DATA_13_const_net_13             = 4'h0;
assign OE_DATA_14_const_net_13             = 4'h0;
assign OE_DATA_15_const_net_13             = 4'h0;
assign OE_DATA_16_const_net_13             = 4'h0;
assign OE_DATA_17_const_net_13             = 4'h0;
assign OE_DATA_18_const_net_13             = 4'h0;
assign OE_DATA_19_const_net_13             = 4'h0;
assign OE_DATA_20_const_net_13             = 4'h0;
assign OE_DATA_21_const_net_13             = 4'h0;
assign OE_DATA_22_const_net_13             = 4'h0;
assign OE_DATA_23_const_net_13             = 4'h0;
assign OE_DATA_24_const_net_13             = 4'h0;
assign OE_DATA_25_const_net_13             = 4'h0;
assign OE_DATA_26_const_net_13             = 4'h0;
assign OE_DATA_27_const_net_13             = 4'h0;
assign OE_DATA_28_const_net_13             = 4'h0;
assign OE_DATA_29_const_net_13             = 4'h0;
assign OE_DATA_30_const_net_13             = 4'h0;
assign OE_DATA_31_const_net_13             = 4'h0;
assign OE_DATA_32_const_net_13             = 4'h0;
assign OE_DATA_33_const_net_13             = 4'h0;
assign OE_DATA_34_const_net_13             = 4'h0;
assign OE_DATA_35_const_net_13             = 4'h0;
assign OE_DATA_36_const_net_13             = 4'h0;
assign OE_DATA_37_const_net_13             = 4'h0;
assign OE_DATA_38_const_net_13             = 4'h0;
assign OE_DATA_39_const_net_13             = 4'h0;
assign OE_DATA_40_const_net_13             = 4'h0;
assign OE_DATA_41_const_net_13             = 4'h0;
assign OE_DATA_42_const_net_13             = 4'h0;
assign OE_DATA_43_const_net_13             = 4'h0;
assign OE_DATA_44_const_net_13             = 4'h0;
assign OE_DATA_45_const_net_13             = 4'h0;
assign OE_DATA_46_const_net_13             = 4'h0;
assign OE_DATA_47_const_net_13             = 4'h0;
assign OE_DATA_48_const_net_13             = 4'h0;
assign OE_DATA_49_const_net_13             = 4'h0;
assign OE_DATA_50_const_net_13             = 4'h0;
assign OE_DATA_51_const_net_13             = 4'h0;
assign OE_DATA_52_const_net_13             = 4'h0;
assign OE_DATA_53_const_net_13             = 4'h0;
assign OE_DATA_54_const_net_13             = 4'h0;
assign OE_DATA_55_const_net_13             = 4'h0;
assign OE_DATA_56_const_net_13             = 4'h0;
assign OE_DATA_57_const_net_13             = 4'h0;
assign OE_DATA_58_const_net_13             = 4'h0;
assign OE_DATA_59_const_net_13             = 4'h0;
assign OE_DATA_60_const_net_13             = 4'h0;
assign OE_DATA_61_const_net_13             = 4'h0;
assign OE_DATA_62_const_net_13             = 4'h0;
assign OE_DATA_63_const_net_13             = 4'h0;
assign RX_DQS_90_const_net_14              = 2'h0;
assign FIFO_WR_PTR_const_net_14            = 3'h0;
assign FIFO_RD_PTR_const_net_14            = 3'h0;
assign EYE_MONITOR_LANE_WIDTH_const_net_14 = 3'h0;
assign TX_DATA_1_const_net_12              = 4'h0;
assign TX_DATA_2_const_net_12              = 4'h0;
assign TX_DATA_3_const_net_13              = 4'h0;
assign TX_DATA_4_const_net_13              = 4'h0;
assign TX_DATA_5_const_net_13              = 4'h0;
assign TX_DATA_6_const_net_13              = 4'h0;
assign TX_DATA_7_const_net_13              = 4'h0;
assign TX_DATA_8_const_net_13              = 4'h0;
assign TX_DATA_9_const_net_13              = 4'h0;
assign TX_DATA_10_const_net_13             = 4'h0;
assign TX_DATA_11_const_net_13             = 4'h0;
assign TX_DATA_12_const_net_14             = 4'h0;
assign TX_DATA_13_const_net_14             = 4'h0;
assign TX_DATA_14_const_net_14             = 4'h0;
assign TX_DATA_15_const_net_14             = 4'h0;
assign TX_DATA_16_const_net_14             = 4'h0;
assign TX_DATA_17_const_net_14             = 4'h0;
assign TX_DATA_18_const_net_14             = 4'h0;
assign TX_DATA_19_const_net_14             = 4'h0;
assign TX_DATA_20_const_net_14             = 4'h0;
assign TX_DATA_21_const_net_14             = 4'h0;
assign TX_DATA_22_const_net_14             = 4'h0;
assign TX_DATA_23_const_net_14             = 4'h0;
assign TX_DATA_24_const_net_14             = 4'h0;
assign TX_DATA_25_const_net_14             = 4'h0;
assign TX_DATA_26_const_net_14             = 4'h0;
assign TX_DATA_27_const_net_14             = 4'h0;
assign TX_DATA_28_const_net_14             = 4'h0;
assign TX_DATA_29_const_net_14             = 4'h0;
assign TX_DATA_30_const_net_14             = 4'h0;
assign TX_DATA_31_const_net_14             = 4'h0;
assign TX_DATA_32_const_net_14             = 4'h0;
assign TX_DATA_33_const_net_14             = 4'h0;
assign TX_DATA_34_const_net_14             = 4'h0;
assign TX_DATA_35_const_net_14             = 4'h0;
assign TX_DATA_36_const_net_14             = 4'h0;
assign TX_DATA_37_const_net_14             = 4'h0;
assign TX_DATA_38_const_net_14             = 4'h0;
assign TX_DATA_39_const_net_14             = 4'h0;
assign TX_DATA_40_const_net_14             = 4'h0;
assign TX_DATA_41_const_net_14             = 4'h0;
assign TX_DATA_42_const_net_14             = 4'h0;
assign TX_DATA_43_const_net_14             = 4'h0;
assign TX_DATA_44_const_net_14             = 4'h0;
assign TX_DATA_45_const_net_14             = 4'h0;
assign TX_DATA_46_const_net_14             = 4'h0;
assign TX_DATA_47_const_net_14             = 4'h0;
assign TX_DATA_48_const_net_14             = 4'h0;
assign TX_DATA_49_const_net_14             = 4'h0;
assign TX_DATA_50_const_net_14             = 4'h0;
assign TX_DATA_51_const_net_14             = 4'h0;
assign TX_DATA_52_const_net_14             = 4'h0;
assign TX_DATA_53_const_net_14             = 4'h0;
assign TX_DATA_54_const_net_14             = 4'h0;
assign TX_DATA_55_const_net_14             = 4'h0;
assign TX_DATA_56_const_net_14             = 4'h0;
assign TX_DATA_57_const_net_14             = 4'h0;
assign TX_DATA_58_const_net_14             = 4'h0;
assign TX_DATA_59_const_net_14             = 4'h0;
assign TX_DATA_60_const_net_14             = 4'h0;
assign TX_DATA_61_const_net_14             = 4'h0;
assign TX_DATA_62_const_net_14             = 4'h0;
assign TX_DATA_63_const_net_14             = 4'h0;
assign OE_DATA_1_const_net_14              = 4'h0;
assign OE_DATA_2_const_net_14              = 4'h0;
assign OE_DATA_3_const_net_14              = 4'h0;
assign OE_DATA_4_const_net_14              = 4'h0;
assign OE_DATA_5_const_net_14              = 4'h0;
assign OE_DATA_6_const_net_14              = 4'h0;
assign OE_DATA_7_const_net_14              = 4'h0;
assign OE_DATA_8_const_net_14              = 4'h0;
assign OE_DATA_9_const_net_14              = 4'h0;
assign OE_DATA_10_const_net_14             = 4'h0;
assign OE_DATA_11_const_net_14             = 4'h0;
assign OE_DATA_12_const_net_14             = 4'h0;
assign OE_DATA_13_const_net_14             = 4'h0;
assign OE_DATA_14_const_net_14             = 4'h0;
assign OE_DATA_15_const_net_14             = 4'h0;
assign OE_DATA_16_const_net_14             = 4'h0;
assign OE_DATA_17_const_net_14             = 4'h0;
assign OE_DATA_18_const_net_14             = 4'h0;
assign OE_DATA_19_const_net_14             = 4'h0;
assign OE_DATA_20_const_net_14             = 4'h0;
assign OE_DATA_21_const_net_14             = 4'h0;
assign OE_DATA_22_const_net_14             = 4'h0;
assign OE_DATA_23_const_net_14             = 4'h0;
assign OE_DATA_24_const_net_14             = 4'h0;
assign OE_DATA_25_const_net_14             = 4'h0;
assign OE_DATA_26_const_net_14             = 4'h0;
assign OE_DATA_27_const_net_14             = 4'h0;
assign OE_DATA_28_const_net_14             = 4'h0;
assign OE_DATA_29_const_net_14             = 4'h0;
assign OE_DATA_30_const_net_14             = 4'h0;
assign OE_DATA_31_const_net_14             = 4'h0;
assign OE_DATA_32_const_net_14             = 4'h0;
assign OE_DATA_33_const_net_14             = 4'h0;
assign OE_DATA_34_const_net_14             = 4'h0;
assign OE_DATA_35_const_net_14             = 4'h0;
assign OE_DATA_36_const_net_14             = 4'h0;
assign OE_DATA_37_const_net_14             = 4'h0;
assign OE_DATA_38_const_net_14             = 4'h0;
assign OE_DATA_39_const_net_14             = 4'h0;
assign OE_DATA_40_const_net_14             = 4'h0;
assign OE_DATA_41_const_net_14             = 4'h0;
assign OE_DATA_42_const_net_14             = 4'h0;
assign OE_DATA_43_const_net_14             = 4'h0;
assign OE_DATA_44_const_net_14             = 4'h0;
assign OE_DATA_45_const_net_14             = 4'h0;
assign OE_DATA_46_const_net_14             = 4'h0;
assign OE_DATA_47_const_net_14             = 4'h0;
assign OE_DATA_48_const_net_14             = 4'h0;
assign OE_DATA_49_const_net_14             = 4'h0;
assign OE_DATA_50_const_net_14             = 4'h0;
assign OE_DATA_51_const_net_14             = 4'h0;
assign OE_DATA_52_const_net_14             = 4'h0;
assign OE_DATA_53_const_net_14             = 4'h0;
assign OE_DATA_54_const_net_14             = 4'h0;
assign OE_DATA_55_const_net_14             = 4'h0;
assign OE_DATA_56_const_net_14             = 4'h0;
assign OE_DATA_57_const_net_14             = 4'h0;
assign OE_DATA_58_const_net_14             = 4'h0;
assign OE_DATA_59_const_net_14             = 4'h0;
assign OE_DATA_60_const_net_14             = 4'h0;
assign OE_DATA_61_const_net_14             = 4'h0;
assign OE_DATA_62_const_net_14             = 4'h0;
assign OE_DATA_63_const_net_14             = 4'h0;
assign CDR_CLK_B_SEL_const_net_0           = 11'h000;
assign FIFO_WR_PTR_const_net_15            = 3'h0;
assign FIFO_RD_PTR_const_net_15            = 3'h0;
assign EYE_MONITOR_LANE_WIDTH_const_net_15 = 3'h0;
assign TX_DATA_1_const_net_13              = 8'h00;
assign TX_DATA_2_const_net_13              = 8'h00;
assign TX_DATA_3_const_net_14              = 8'h00;
assign TX_DATA_4_const_net_14              = 8'h00;
assign TX_DATA_5_const_net_14              = 8'h00;
assign TX_DATA_6_const_net_14              = 8'h00;
assign TX_DATA_7_const_net_14              = 8'h00;
assign TX_DATA_8_const_net_14              = 8'h00;
assign TX_DATA_9_const_net_14              = 8'h00;
assign TX_DATA_10_const_net_14             = 8'h00;
assign TX_DATA_11_const_net_14             = 8'h00;
assign TX_DATA_12_const_net_15             = 8'h00;
assign TX_DATA_13_const_net_15             = 8'h00;
assign TX_DATA_14_const_net_15             = 8'h00;
assign TX_DATA_15_const_net_15             = 8'h00;
assign TX_DATA_16_const_net_15             = 8'h00;
assign TX_DATA_17_const_net_15             = 8'h00;
assign TX_DATA_18_const_net_15             = 8'h00;
assign TX_DATA_19_const_net_15             = 8'h00;
assign TX_DATA_20_const_net_15             = 8'h00;
assign TX_DATA_21_const_net_15             = 8'h00;
assign TX_DATA_22_const_net_15             = 8'h00;
assign TX_DATA_23_const_net_15             = 8'h00;
assign TX_DATA_24_const_net_15             = 8'h00;
assign TX_DATA_25_const_net_15             = 8'h00;
assign TX_DATA_26_const_net_15             = 8'h00;
assign TX_DATA_27_const_net_15             = 8'h00;
assign TX_DATA_28_const_net_15             = 8'h00;
assign TX_DATA_29_const_net_15             = 8'h00;
assign TX_DATA_30_const_net_15             = 8'h00;
assign TX_DATA_31_const_net_15             = 8'h00;
assign TX_DATA_32_const_net_15             = 8'h00;
assign TX_DATA_33_const_net_15             = 8'h00;
assign TX_DATA_34_const_net_15             = 8'h00;
assign TX_DATA_35_const_net_15             = 8'h00;
assign TX_DATA_36_const_net_15             = 8'h00;
assign TX_DATA_37_const_net_15             = 8'h00;
assign TX_DATA_38_const_net_15             = 8'h00;
assign TX_DATA_39_const_net_15             = 8'h00;
assign TX_DATA_40_const_net_15             = 8'h00;
assign TX_DATA_41_const_net_15             = 8'h00;
assign TX_DATA_42_const_net_15             = 8'h00;
assign TX_DATA_43_const_net_15             = 8'h00;
assign TX_DATA_44_const_net_15             = 8'h00;
assign TX_DATA_45_const_net_15             = 8'h00;
assign TX_DATA_46_const_net_15             = 8'h00;
assign TX_DATA_47_const_net_15             = 8'h00;
assign TX_DATA_48_const_net_15             = 8'h00;
assign TX_DATA_49_const_net_15             = 8'h00;
assign TX_DATA_50_const_net_15             = 8'h00;
assign TX_DATA_51_const_net_15             = 8'h00;
assign TX_DATA_52_const_net_15             = 8'h00;
assign TX_DATA_53_const_net_15             = 8'h00;
assign TX_DATA_54_const_net_15             = 8'h00;
assign TX_DATA_55_const_net_15             = 8'h00;
assign TX_DATA_56_const_net_15             = 8'h00;
assign TX_DATA_57_const_net_15             = 8'h00;
assign TX_DATA_58_const_net_15             = 8'h00;
assign TX_DATA_59_const_net_15             = 8'h00;
assign TX_DATA_60_const_net_15             = 8'h00;
assign TX_DATA_61_const_net_15             = 8'h00;
assign TX_DATA_62_const_net_15             = 8'h00;
assign TX_DATA_63_const_net_15             = 8'h00;
assign OE_DATA_1_const_net_15              = 4'h0;
assign OE_DATA_2_const_net_15              = 4'h0;
assign OE_DATA_3_const_net_15              = 4'h0;
assign OE_DATA_4_const_net_15              = 4'h0;
assign OE_DATA_5_const_net_15              = 4'h0;
assign OE_DATA_6_const_net_15              = 4'h0;
assign OE_DATA_7_const_net_15              = 4'h0;
assign OE_DATA_8_const_net_15              = 4'h0;
assign OE_DATA_9_const_net_15              = 4'h0;
assign OE_DATA_10_const_net_15             = 4'h0;
assign OE_DATA_11_const_net_15             = 4'h0;
assign OE_DATA_12_const_net_15             = 4'h0;
assign OE_DATA_13_const_net_15             = 4'h0;
assign OE_DATA_14_const_net_15             = 4'h0;
assign OE_DATA_15_const_net_15             = 4'h0;
assign OE_DATA_16_const_net_15             = 4'h0;
assign OE_DATA_17_const_net_15             = 4'h0;
assign OE_DATA_18_const_net_15             = 4'h0;
assign OE_DATA_19_const_net_15             = 4'h0;
assign OE_DATA_20_const_net_15             = 4'h0;
assign OE_DATA_21_const_net_15             = 4'h0;
assign OE_DATA_22_const_net_15             = 4'h0;
assign OE_DATA_23_const_net_15             = 4'h0;
assign OE_DATA_24_const_net_15             = 4'h0;
assign OE_DATA_25_const_net_15             = 4'h0;
assign OE_DATA_26_const_net_15             = 4'h0;
assign OE_DATA_27_const_net_15             = 4'h0;
assign OE_DATA_28_const_net_15             = 4'h0;
assign OE_DATA_29_const_net_15             = 4'h0;
assign OE_DATA_30_const_net_15             = 4'h0;
assign OE_DATA_31_const_net_15             = 4'h0;
assign OE_DATA_32_const_net_15             = 4'h0;
assign OE_DATA_33_const_net_15             = 4'h0;
assign OE_DATA_34_const_net_15             = 4'h0;
assign OE_DATA_35_const_net_15             = 4'h0;
assign OE_DATA_36_const_net_15             = 4'h0;
assign OE_DATA_37_const_net_15             = 4'h0;
assign OE_DATA_38_const_net_15             = 4'h0;
assign OE_DATA_39_const_net_15             = 4'h0;
assign OE_DATA_40_const_net_15             = 4'h0;
assign OE_DATA_41_const_net_15             = 4'h0;
assign OE_DATA_42_const_net_15             = 4'h0;
assign OE_DATA_43_const_net_15             = 4'h0;
assign OE_DATA_44_const_net_15             = 4'h0;
assign OE_DATA_45_const_net_15             = 4'h0;
assign OE_DATA_46_const_net_15             = 4'h0;
assign OE_DATA_47_const_net_15             = 4'h0;
assign OE_DATA_48_const_net_15             = 4'h0;
assign OE_DATA_49_const_net_15             = 4'h0;
assign OE_DATA_50_const_net_15             = 4'h0;
assign OE_DATA_51_const_net_15             = 4'h0;
assign OE_DATA_52_const_net_15             = 4'h0;
assign OE_DATA_53_const_net_15             = 4'h0;
assign OE_DATA_54_const_net_15             = 4'h0;
assign OE_DATA_55_const_net_15             = 4'h0;
assign OE_DATA_56_const_net_15             = 4'h0;
assign OE_DATA_57_const_net_15             = 4'h0;
assign OE_DATA_58_const_net_15             = 4'h0;
assign OE_DATA_59_const_net_15             = 4'h0;
assign OE_DATA_60_const_net_15             = 4'h0;
assign OE_DATA_61_const_net_15             = 4'h0;
assign OE_DATA_62_const_net_15             = 4'h0;
assign OE_DATA_63_const_net_15             = 4'h0;
assign TX_DATA_8_const_net_15              = 8'h00;
assign TX_DATA_9_const_net_15              = 8'h00;
assign TX_DATA_10_const_net_15             = 8'h00;
assign TX_DATA_11_const_net_15             = 8'h00;
assign TX_DATA_12_const_net_16             = 8'h00;
assign TX_DATA_13_const_net_16             = 8'h00;
assign TX_DATA_14_const_net_16             = 8'h00;
assign TX_DATA_15_const_net_16             = 8'h00;
assign TX_DATA_16_const_net_16             = 8'h00;
assign TX_DATA_17_const_net_16             = 8'h00;
assign TX_DATA_18_const_net_16             = 8'h00;
assign TX_DATA_19_const_net_16             = 8'h00;
assign TX_DATA_20_const_net_16             = 8'h00;
assign TX_DATA_21_const_net_16             = 8'h00;
assign TX_DATA_22_const_net_16             = 8'h00;
assign TX_DATA_23_const_net_16             = 8'h00;
assign TX_DATA_24_const_net_16             = 8'h00;
assign TX_DATA_25_const_net_16             = 8'h00;
assign TX_DATA_26_const_net_16             = 8'h00;
assign TX_DATA_27_const_net_16             = 8'h00;
assign TX_DATA_28_const_net_16             = 8'h00;
assign TX_DATA_29_const_net_16             = 8'h00;
assign TX_DATA_30_const_net_16             = 8'h00;
assign TX_DATA_31_const_net_16             = 8'h00;
assign TX_DATA_32_const_net_16             = 8'h00;
assign TX_DATA_33_const_net_16             = 8'h00;
assign TX_DATA_34_const_net_16             = 8'h00;
assign TX_DATA_35_const_net_16             = 8'h00;
assign TX_DATA_36_const_net_16             = 8'h00;
assign TX_DATA_37_const_net_16             = 8'h00;
assign TX_DATA_38_const_net_16             = 8'h00;
assign TX_DATA_39_const_net_16             = 8'h00;
assign TX_DATA_40_const_net_16             = 8'h00;
assign TX_DATA_41_const_net_16             = 8'h00;
assign TX_DATA_42_const_net_16             = 8'h00;
assign TX_DATA_43_const_net_16             = 8'h00;
assign TX_DATA_44_const_net_16             = 8'h00;
assign TX_DATA_45_const_net_16             = 8'h00;
assign TX_DATA_46_const_net_16             = 8'h00;
assign TX_DATA_47_const_net_16             = 8'h00;
assign TX_DATA_48_const_net_16             = 8'h00;
assign TX_DATA_49_const_net_16             = 8'h00;
assign TX_DATA_50_const_net_16             = 8'h00;
assign TX_DATA_51_const_net_16             = 8'h00;
assign TX_DATA_52_const_net_16             = 8'h00;
assign TX_DATA_53_const_net_16             = 8'h00;
assign TX_DATA_54_const_net_16             = 8'h00;
assign TX_DATA_55_const_net_16             = 8'h00;
assign TX_DATA_56_const_net_16             = 8'h00;
assign TX_DATA_57_const_net_16             = 8'h00;
assign TX_DATA_58_const_net_16             = 8'h00;
assign TX_DATA_59_const_net_16             = 8'h00;
assign TX_DATA_60_const_net_16             = 8'h00;
assign TX_DATA_61_const_net_16             = 8'h00;
assign TX_DATA_62_const_net_16             = 8'h00;
assign TX_DATA_63_const_net_16             = 8'h00;
assign OE_DATA_8_const_net_16              = 4'h0;
assign OE_DATA_9_const_net_16              = 4'h0;
assign OE_DATA_10_const_net_16             = 4'h0;
assign OE_DATA_11_const_net_16             = 4'h0;
assign OE_DATA_12_const_net_16             = 4'h0;
assign OE_DATA_13_const_net_16             = 4'h0;
assign OE_DATA_14_const_net_16             = 4'h0;
assign OE_DATA_15_const_net_16             = 4'h0;
assign OE_DATA_16_const_net_16             = 4'h0;
assign OE_DATA_17_const_net_16             = 4'h0;
assign OE_DATA_18_const_net_16             = 4'h0;
assign OE_DATA_19_const_net_16             = 4'h0;
assign OE_DATA_20_const_net_16             = 4'h0;
assign OE_DATA_21_const_net_16             = 4'h0;
assign OE_DATA_22_const_net_16             = 4'h0;
assign OE_DATA_23_const_net_16             = 4'h0;
assign OE_DATA_24_const_net_16             = 4'h0;
assign OE_DATA_25_const_net_16             = 4'h0;
assign OE_DATA_26_const_net_16             = 4'h0;
assign OE_DATA_27_const_net_16             = 4'h0;
assign OE_DATA_28_const_net_16             = 4'h0;
assign OE_DATA_29_const_net_16             = 4'h0;
assign OE_DATA_30_const_net_16             = 4'h0;
assign OE_DATA_31_const_net_16             = 4'h0;
assign OE_DATA_32_const_net_16             = 4'h0;
assign OE_DATA_33_const_net_16             = 4'h0;
assign OE_DATA_34_const_net_16             = 4'h0;
assign OE_DATA_35_const_net_16             = 4'h0;
assign OE_DATA_36_const_net_16             = 4'h0;
assign OE_DATA_37_const_net_16             = 4'h0;
assign OE_DATA_38_const_net_16             = 4'h0;
assign OE_DATA_39_const_net_16             = 4'h0;
assign OE_DATA_40_const_net_16             = 4'h0;
assign OE_DATA_41_const_net_16             = 4'h0;
assign OE_DATA_42_const_net_16             = 4'h0;
assign OE_DATA_43_const_net_16             = 4'h0;
assign OE_DATA_44_const_net_16             = 4'h0;
assign OE_DATA_45_const_net_16             = 4'h0;
assign OE_DATA_46_const_net_16             = 4'h0;
assign OE_DATA_47_const_net_16             = 4'h0;
assign OE_DATA_48_const_net_16             = 4'h0;
assign OE_DATA_49_const_net_16             = 4'h0;
assign OE_DATA_50_const_net_16             = 4'h0;
assign OE_DATA_51_const_net_16             = 4'h0;
assign OE_DATA_52_const_net_16             = 4'h0;
assign OE_DATA_53_const_net_16             = 4'h0;
assign OE_DATA_54_const_net_16             = 4'h0;
assign OE_DATA_55_const_net_16             = 4'h0;
assign OE_DATA_56_const_net_16             = 4'h0;
assign OE_DATA_57_const_net_16             = 4'h0;
assign OE_DATA_58_const_net_16             = 4'h0;
assign OE_DATA_59_const_net_16             = 4'h0;
assign OE_DATA_60_const_net_16             = 4'h0;
assign OE_DATA_61_const_net_16             = 4'h0;
assign OE_DATA_62_const_net_16             = 4'h0;
assign OE_DATA_63_const_net_16             = 4'h0;
assign PAD_I_const_net_2                   = 8'h00;
assign PAD_N_const_net_2                   = 8'h00;
assign PAD_I_N_const_net_2                 = 8'h00;
assign TX_DATA_1_const_net_14              = 8'h00;
assign TX_DATA_2_const_net_14              = 8'h00;
assign TX_DATA_3_const_net_15              = 8'h00;
assign TX_DATA_4_const_net_15              = 8'h00;
assign TX_DATA_5_const_net_15              = 8'h00;
assign TX_DATA_6_const_net_15              = 8'h00;
assign TX_DATA_7_const_net_15              = 8'h00;
assign TX_DATA_8_const_net_16              = 8'h00;
assign TX_DATA_9_const_net_16              = 8'h00;
assign TX_DATA_10_const_net_16             = 8'h00;
assign TX_DATA_11_const_net_16             = 8'h00;
assign TX_DATA_12_const_net_17             = 8'h00;
assign TX_DATA_13_const_net_17             = 8'h00;
assign TX_DATA_14_const_net_17             = 8'h00;
assign TX_DATA_15_const_net_17             = 8'h00;
assign TX_DATA_16_const_net_17             = 8'h00;
assign TX_DATA_17_const_net_17             = 8'h00;
assign TX_DATA_18_const_net_17             = 8'h00;
assign TX_DATA_19_const_net_17             = 8'h00;
assign TX_DATA_20_const_net_17             = 8'h00;
assign TX_DATA_21_const_net_17             = 8'h00;
assign TX_DATA_22_const_net_17             = 8'h00;
assign TX_DATA_23_const_net_17             = 8'h00;
assign TX_DATA_24_const_net_17             = 8'h00;
assign TX_DATA_25_const_net_17             = 8'h00;
assign TX_DATA_26_const_net_17             = 8'h00;
assign TX_DATA_27_const_net_17             = 8'h00;
assign TX_DATA_28_const_net_17             = 8'h00;
assign TX_DATA_29_const_net_17             = 8'h00;
assign TX_DATA_30_const_net_17             = 8'h00;
assign TX_DATA_31_const_net_17             = 8'h00;
assign TX_DATA_32_const_net_17             = 8'h00;
assign TX_DATA_33_const_net_17             = 8'h00;
assign TX_DATA_34_const_net_17             = 8'h00;
assign TX_DATA_35_const_net_17             = 8'h00;
assign TX_DATA_36_const_net_17             = 8'h00;
assign TX_DATA_37_const_net_17             = 8'h00;
assign TX_DATA_38_const_net_17             = 8'h00;
assign TX_DATA_39_const_net_17             = 8'h00;
assign TX_DATA_40_const_net_17             = 8'h00;
assign TX_DATA_41_const_net_17             = 8'h00;
assign TX_DATA_42_const_net_17             = 8'h00;
assign TX_DATA_43_const_net_17             = 8'h00;
assign TX_DATA_44_const_net_17             = 8'h00;
assign TX_DATA_45_const_net_17             = 8'h00;
assign TX_DATA_46_const_net_17             = 8'h00;
assign TX_DATA_47_const_net_17             = 8'h00;
assign TX_DATA_48_const_net_17             = 8'h00;
assign TX_DATA_49_const_net_17             = 8'h00;
assign TX_DATA_50_const_net_17             = 8'h00;
assign TX_DATA_51_const_net_17             = 8'h00;
assign TX_DATA_52_const_net_17             = 8'h00;
assign TX_DATA_53_const_net_17             = 8'h00;
assign TX_DATA_54_const_net_17             = 8'h00;
assign TX_DATA_55_const_net_17             = 8'h00;
assign TX_DATA_56_const_net_17             = 8'h00;
assign TX_DATA_57_const_net_17             = 8'h00;
assign TX_DATA_58_const_net_17             = 8'h00;
assign TX_DATA_59_const_net_17             = 8'h00;
assign TX_DATA_60_const_net_17             = 8'h00;
assign TX_DATA_61_const_net_17             = 8'h00;
assign TX_DATA_62_const_net_17             = 8'h00;
assign TX_DATA_63_const_net_17             = 8'h00;
assign OE_DATA_1_const_net_16              = 4'h0;
assign OE_DATA_2_const_net_16              = 4'h0;
assign OE_DATA_3_const_net_16              = 4'h0;
assign OE_DATA_4_const_net_16              = 4'h0;
assign OE_DATA_5_const_net_16              = 4'h0;
assign OE_DATA_6_const_net_16              = 4'h0;
assign OE_DATA_7_const_net_16              = 4'h0;
assign OE_DATA_8_const_net_17              = 4'h0;
assign OE_DATA_9_const_net_17              = 4'h0;
assign OE_DATA_10_const_net_17             = 4'h0;
assign OE_DATA_11_const_net_17             = 4'h0;
assign OE_DATA_12_const_net_17             = 4'h0;
assign OE_DATA_13_const_net_17             = 4'h0;
assign OE_DATA_14_const_net_17             = 4'h0;
assign OE_DATA_15_const_net_17             = 4'h0;
assign OE_DATA_16_const_net_17             = 4'h0;
assign OE_DATA_17_const_net_17             = 4'h0;
assign OE_DATA_18_const_net_17             = 4'h0;
assign OE_DATA_19_const_net_17             = 4'h0;
assign OE_DATA_20_const_net_17             = 4'h0;
assign OE_DATA_21_const_net_17             = 4'h0;
assign OE_DATA_22_const_net_17             = 4'h0;
assign OE_DATA_23_const_net_17             = 4'h0;
assign OE_DATA_24_const_net_17             = 4'h0;
assign OE_DATA_25_const_net_17             = 4'h0;
assign OE_DATA_26_const_net_17             = 4'h0;
assign OE_DATA_27_const_net_17             = 4'h0;
assign OE_DATA_28_const_net_17             = 4'h0;
assign OE_DATA_29_const_net_17             = 4'h0;
assign OE_DATA_30_const_net_17             = 4'h0;
assign OE_DATA_31_const_net_17             = 4'h0;
assign OE_DATA_32_const_net_17             = 4'h0;
assign OE_DATA_33_const_net_17             = 4'h0;
assign OE_DATA_34_const_net_17             = 4'h0;
assign OE_DATA_35_const_net_17             = 4'h0;
assign OE_DATA_36_const_net_17             = 4'h0;
assign OE_DATA_37_const_net_17             = 4'h0;
assign OE_DATA_38_const_net_17             = 4'h0;
assign OE_DATA_39_const_net_17             = 4'h0;
assign OE_DATA_40_const_net_17             = 4'h0;
assign OE_DATA_41_const_net_17             = 4'h0;
assign OE_DATA_42_const_net_17             = 4'h0;
assign OE_DATA_43_const_net_17             = 4'h0;
assign OE_DATA_44_const_net_17             = 4'h0;
assign OE_DATA_45_const_net_17             = 4'h0;
assign OE_DATA_46_const_net_17             = 4'h0;
assign OE_DATA_47_const_net_17             = 4'h0;
assign OE_DATA_48_const_net_17             = 4'h0;
assign OE_DATA_49_const_net_17             = 4'h0;
assign OE_DATA_50_const_net_17             = 4'h0;
assign OE_DATA_51_const_net_17             = 4'h0;
assign OE_DATA_52_const_net_17             = 4'h0;
assign OE_DATA_53_const_net_17             = 4'h0;
assign OE_DATA_54_const_net_17             = 4'h0;
assign OE_DATA_55_const_net_17             = 4'h0;
assign OE_DATA_56_const_net_17             = 4'h0;
assign OE_DATA_57_const_net_17             = 4'h0;
assign OE_DATA_58_const_net_17             = 4'h0;
assign OE_DATA_59_const_net_17             = 4'h0;
assign OE_DATA_60_const_net_17             = 4'h0;
assign OE_DATA_61_const_net_17             = 4'h0;
assign OE_DATA_62_const_net_17             = 4'h0;
assign OE_DATA_63_const_net_17             = 4'h0;
assign RX_DQS_90_const_net_15              = 2'h0;
assign FIFO_WR_PTR_const_net_16            = 3'h0;
assign FIFO_RD_PTR_const_net_16            = 3'h0;
assign EYE_MONITOR_LANE_WIDTH_const_net_16 = 3'h0;
assign TX_DATA_1_const_net_15              = 2'h0;
assign TX_DATA_2_const_net_15              = 2'h0;
assign TX_DATA_3_const_net_16              = 2'h0;
assign TX_DATA_4_const_net_16              = 2'h0;
assign TX_DATA_5_const_net_16              = 2'h0;
assign TX_DATA_6_const_net_16              = 2'h0;
assign TX_DATA_7_const_net_16              = 2'h0;
assign TX_DATA_8_const_net_17              = 2'h0;
assign TX_DATA_9_const_net_17              = 2'h0;
assign TX_DATA_10_const_net_17             = 2'h0;
assign TX_DATA_11_const_net_17             = 2'h0;
assign TX_DATA_12_const_net_18             = 2'h0;
assign TX_DATA_13_const_net_18             = 2'h0;
assign TX_DATA_14_const_net_18             = 2'h0;
assign TX_DATA_15_const_net_18             = 2'h0;
assign TX_DATA_16_const_net_18             = 2'h0;
assign TX_DATA_17_const_net_18             = 2'h0;
assign TX_DATA_18_const_net_18             = 2'h0;
assign TX_DATA_19_const_net_18             = 2'h0;
assign TX_DATA_20_const_net_18             = 2'h0;
assign TX_DATA_21_const_net_18             = 2'h0;
assign TX_DATA_22_const_net_18             = 2'h0;
assign TX_DATA_23_const_net_18             = 2'h0;
assign TX_DATA_24_const_net_18             = 2'h0;
assign TX_DATA_25_const_net_18             = 2'h0;
assign TX_DATA_26_const_net_18             = 2'h0;
assign TX_DATA_27_const_net_18             = 2'h0;
assign TX_DATA_28_const_net_18             = 2'h0;
assign TX_DATA_29_const_net_18             = 2'h0;
assign TX_DATA_30_const_net_18             = 2'h0;
assign TX_DATA_31_const_net_18             = 2'h0;
assign TX_DATA_32_const_net_18             = 2'h0;
assign TX_DATA_33_const_net_18             = 2'h0;
assign TX_DATA_34_const_net_18             = 2'h0;
assign TX_DATA_35_const_net_18             = 2'h0;
assign TX_DATA_36_const_net_18             = 2'h0;
assign TX_DATA_37_const_net_18             = 2'h0;
assign TX_DATA_38_const_net_18             = 2'h0;
assign TX_DATA_39_const_net_18             = 2'h0;
assign TX_DATA_40_const_net_18             = 2'h0;
assign TX_DATA_41_const_net_18             = 2'h0;
assign TX_DATA_42_const_net_18             = 2'h0;
assign TX_DATA_43_const_net_18             = 2'h0;
assign TX_DATA_44_const_net_18             = 2'h0;
assign TX_DATA_45_const_net_18             = 2'h0;
assign TX_DATA_46_const_net_18             = 2'h0;
assign TX_DATA_47_const_net_18             = 2'h0;
assign TX_DATA_48_const_net_18             = 2'h0;
assign TX_DATA_49_const_net_18             = 2'h0;
assign TX_DATA_50_const_net_18             = 2'h0;
assign TX_DATA_51_const_net_18             = 2'h0;
assign TX_DATA_52_const_net_18             = 2'h0;
assign TX_DATA_53_const_net_18             = 2'h0;
assign TX_DATA_54_const_net_18             = 2'h0;
assign TX_DATA_55_const_net_18             = 2'h0;
assign TX_DATA_56_const_net_18             = 2'h0;
assign TX_DATA_57_const_net_18             = 2'h0;
assign TX_DATA_58_const_net_18             = 2'h0;
assign TX_DATA_59_const_net_18             = 2'h0;
assign TX_DATA_60_const_net_18             = 2'h0;
assign TX_DATA_61_const_net_18             = 2'h0;
assign TX_DATA_62_const_net_18             = 2'h0;
assign TX_DATA_63_const_net_18             = 2'h0;
assign OE_DATA_1_const_net_17              = 2'h0;
assign OE_DATA_2_const_net_17              = 2'h0;
assign OE_DATA_3_const_net_17              = 2'h0;
assign OE_DATA_4_const_net_17              = 2'h0;
assign OE_DATA_5_const_net_17              = 2'h0;
assign OE_DATA_6_const_net_17              = 2'h0;
assign OE_DATA_7_const_net_17              = 2'h0;
assign OE_DATA_8_const_net_18              = 2'h0;
assign OE_DATA_9_const_net_18              = 2'h0;
assign OE_DATA_10_const_net_18             = 2'h0;
assign OE_DATA_11_const_net_18             = 2'h0;
assign OE_DATA_12_const_net_18             = 2'h0;
assign OE_DATA_13_const_net_18             = 2'h0;
assign OE_DATA_14_const_net_18             = 2'h0;
assign OE_DATA_15_const_net_18             = 2'h0;
assign OE_DATA_16_const_net_18             = 2'h0;
assign OE_DATA_17_const_net_18             = 2'h0;
assign OE_DATA_18_const_net_18             = 2'h0;
assign OE_DATA_19_const_net_18             = 2'h0;
assign OE_DATA_20_const_net_18             = 2'h0;
assign OE_DATA_21_const_net_18             = 2'h0;
assign OE_DATA_22_const_net_18             = 2'h0;
assign OE_DATA_23_const_net_18             = 2'h0;
assign OE_DATA_24_const_net_18             = 2'h0;
assign OE_DATA_25_const_net_18             = 2'h0;
assign OE_DATA_26_const_net_18             = 2'h0;
assign OE_DATA_27_const_net_18             = 2'h0;
assign OE_DATA_28_const_net_18             = 2'h0;
assign OE_DATA_29_const_net_18             = 2'h0;
assign OE_DATA_30_const_net_18             = 2'h0;
assign OE_DATA_31_const_net_18             = 2'h0;
assign OE_DATA_32_const_net_18             = 2'h0;
assign OE_DATA_33_const_net_18             = 2'h0;
assign OE_DATA_34_const_net_18             = 2'h0;
assign OE_DATA_35_const_net_18             = 2'h0;
assign OE_DATA_36_const_net_18             = 2'h0;
assign OE_DATA_37_const_net_18             = 2'h0;
assign OE_DATA_38_const_net_18             = 2'h0;
assign OE_DATA_39_const_net_18             = 2'h0;
assign OE_DATA_40_const_net_18             = 2'h0;
assign OE_DATA_41_const_net_18             = 2'h0;
assign OE_DATA_42_const_net_18             = 2'h0;
assign OE_DATA_43_const_net_18             = 2'h0;
assign OE_DATA_44_const_net_18             = 2'h0;
assign OE_DATA_45_const_net_18             = 2'h0;
assign OE_DATA_46_const_net_18             = 2'h0;
assign OE_DATA_47_const_net_18             = 2'h0;
assign OE_DATA_48_const_net_18             = 2'h0;
assign OE_DATA_49_const_net_18             = 2'h0;
assign OE_DATA_50_const_net_18             = 2'h0;
assign OE_DATA_51_const_net_18             = 2'h0;
assign OE_DATA_52_const_net_18             = 2'h0;
assign OE_DATA_53_const_net_18             = 2'h0;
assign OE_DATA_54_const_net_18             = 2'h0;
assign OE_DATA_55_const_net_18             = 2'h0;
assign OE_DATA_56_const_net_18             = 2'h0;
assign OE_DATA_57_const_net_18             = 2'h0;
assign OE_DATA_58_const_net_18             = 2'h0;
assign OE_DATA_59_const_net_18             = 2'h0;
assign OE_DATA_60_const_net_18             = 2'h0;
assign OE_DATA_61_const_net_18             = 2'h0;
assign OE_DATA_62_const_net_18             = 2'h0;
assign OE_DATA_63_const_net_18             = 2'h0;
assign RX_DQS_90_const_net_16              = 2'h0;
assign EYE_MONITOR_LANE_WIDTH_const_net_17 = 3'h0;
assign TX_DATA_1_const_net_16              = 8'h00;
assign TX_DATA_2_const_net_16              = 8'h00;
assign TX_DATA_3_const_net_17              = 8'h00;
assign TX_DATA_4_const_net_17              = 8'h00;
assign TX_DATA_5_const_net_17              = 8'h00;
assign TX_DATA_6_const_net_17              = 8'h00;
assign TX_DATA_7_const_net_17              = 8'h00;
assign TX_DATA_8_const_net_18              = 8'h00;
assign TX_DATA_9_const_net_18              = 8'h00;
assign TX_DATA_10_const_net_18             = 8'h00;
assign TX_DATA_11_const_net_18             = 8'h00;
assign TX_DATA_12_const_net_19             = 8'h00;
assign TX_DATA_13_const_net_19             = 8'h00;
assign TX_DATA_14_const_net_19             = 8'h00;
assign TX_DATA_15_const_net_19             = 8'h00;
assign TX_DATA_16_const_net_19             = 8'h00;
assign TX_DATA_17_const_net_19             = 8'h00;
assign TX_DATA_18_const_net_19             = 8'h00;
assign TX_DATA_19_const_net_19             = 8'h00;
assign TX_DATA_20_const_net_19             = 8'h00;
assign TX_DATA_21_const_net_19             = 8'h00;
assign TX_DATA_22_const_net_19             = 8'h00;
assign TX_DATA_23_const_net_19             = 8'h00;
assign TX_DATA_24_const_net_19             = 8'h00;
assign TX_DATA_25_const_net_19             = 8'h00;
assign TX_DATA_26_const_net_19             = 8'h00;
assign TX_DATA_27_const_net_19             = 8'h00;
assign TX_DATA_28_const_net_19             = 8'h00;
assign TX_DATA_29_const_net_19             = 8'h00;
assign TX_DATA_30_const_net_19             = 8'h00;
assign TX_DATA_31_const_net_19             = 8'h00;
assign TX_DATA_32_const_net_19             = 8'h00;
assign TX_DATA_33_const_net_19             = 8'h00;
assign TX_DATA_34_const_net_19             = 8'h00;
assign TX_DATA_35_const_net_19             = 8'h00;
assign TX_DATA_36_const_net_19             = 8'h00;
assign TX_DATA_37_const_net_19             = 8'h00;
assign TX_DATA_38_const_net_19             = 8'h00;
assign TX_DATA_39_const_net_19             = 8'h00;
assign TX_DATA_40_const_net_19             = 8'h00;
assign TX_DATA_41_const_net_19             = 8'h00;
assign TX_DATA_42_const_net_19             = 8'h00;
assign TX_DATA_43_const_net_19             = 8'h00;
assign TX_DATA_44_const_net_19             = 8'h00;
assign TX_DATA_45_const_net_19             = 8'h00;
assign TX_DATA_46_const_net_19             = 8'h00;
assign TX_DATA_47_const_net_19             = 8'h00;
assign TX_DATA_48_const_net_19             = 8'h00;
assign TX_DATA_49_const_net_19             = 8'h00;
assign TX_DATA_50_const_net_19             = 8'h00;
assign TX_DATA_51_const_net_19             = 8'h00;
assign TX_DATA_52_const_net_19             = 8'h00;
assign TX_DATA_53_const_net_19             = 8'h00;
assign TX_DATA_54_const_net_19             = 8'h00;
assign TX_DATA_55_const_net_19             = 8'h00;
assign TX_DATA_56_const_net_19             = 8'h00;
assign TX_DATA_57_const_net_19             = 8'h00;
assign TX_DATA_58_const_net_19             = 8'h00;
assign TX_DATA_59_const_net_19             = 8'h00;
assign TX_DATA_60_const_net_19             = 8'h00;
assign TX_DATA_61_const_net_19             = 8'h00;
assign TX_DATA_62_const_net_19             = 8'h00;
assign TX_DATA_63_const_net_19             = 8'h00;
assign OE_DATA_1_const_net_18              = 4'h0;
assign OE_DATA_2_const_net_18              = 4'h0;
assign OE_DATA_3_const_net_18              = 4'h0;
assign OE_DATA_4_const_net_18              = 4'h0;
assign OE_DATA_5_const_net_18              = 4'h0;
assign OE_DATA_6_const_net_18              = 4'h0;
assign OE_DATA_7_const_net_18              = 4'h0;
assign OE_DATA_8_const_net_19              = 4'h0;
assign OE_DATA_9_const_net_19              = 4'h0;
assign OE_DATA_10_const_net_19             = 4'h0;
assign OE_DATA_11_const_net_19             = 4'h0;
assign OE_DATA_12_const_net_19             = 4'h0;
assign OE_DATA_13_const_net_19             = 4'h0;
assign OE_DATA_14_const_net_19             = 4'h0;
assign OE_DATA_15_const_net_19             = 4'h0;
assign OE_DATA_16_const_net_19             = 4'h0;
assign OE_DATA_17_const_net_19             = 4'h0;
assign OE_DATA_18_const_net_19             = 4'h0;
assign OE_DATA_19_const_net_19             = 4'h0;
assign OE_DATA_20_const_net_19             = 4'h0;
assign OE_DATA_21_const_net_19             = 4'h0;
assign OE_DATA_22_const_net_19             = 4'h0;
assign OE_DATA_23_const_net_19             = 4'h0;
assign OE_DATA_24_const_net_19             = 4'h0;
assign OE_DATA_25_const_net_19             = 4'h0;
assign OE_DATA_26_const_net_19             = 4'h0;
assign OE_DATA_27_const_net_19             = 4'h0;
assign OE_DATA_28_const_net_19             = 4'h0;
assign OE_DATA_29_const_net_19             = 4'h0;
assign OE_DATA_30_const_net_19             = 4'h0;
assign OE_DATA_31_const_net_19             = 4'h0;
assign OE_DATA_32_const_net_19             = 4'h0;
assign OE_DATA_33_const_net_19             = 4'h0;
assign OE_DATA_34_const_net_19             = 4'h0;
assign OE_DATA_35_const_net_19             = 4'h0;
assign OE_DATA_36_const_net_19             = 4'h0;
assign OE_DATA_37_const_net_19             = 4'h0;
assign OE_DATA_38_const_net_19             = 4'h0;
assign OE_DATA_39_const_net_19             = 4'h0;
assign OE_DATA_40_const_net_19             = 4'h0;
assign OE_DATA_41_const_net_19             = 4'h0;
assign OE_DATA_42_const_net_19             = 4'h0;
assign OE_DATA_43_const_net_19             = 4'h0;
assign OE_DATA_44_const_net_19             = 4'h0;
assign OE_DATA_45_const_net_19             = 4'h0;
assign OE_DATA_46_const_net_19             = 4'h0;
assign OE_DATA_47_const_net_19             = 4'h0;
assign OE_DATA_48_const_net_19             = 4'h0;
assign OE_DATA_49_const_net_19             = 4'h0;
assign OE_DATA_50_const_net_19             = 4'h0;
assign OE_DATA_51_const_net_19             = 4'h0;
assign OE_DATA_52_const_net_19             = 4'h0;
assign OE_DATA_53_const_net_19             = 4'h0;
assign OE_DATA_54_const_net_19             = 4'h0;
assign OE_DATA_55_const_net_19             = 4'h0;
assign OE_DATA_56_const_net_19             = 4'h0;
assign OE_DATA_57_const_net_19             = 4'h0;
assign OE_DATA_58_const_net_19             = 4'h0;
assign OE_DATA_59_const_net_19             = 4'h0;
assign OE_DATA_60_const_net_19             = 4'h0;
assign OE_DATA_61_const_net_19             = 4'h0;
assign OE_DATA_62_const_net_19             = 4'h0;
assign OE_DATA_63_const_net_19             = 4'h0;
assign CDR_CLK_B_SEL_const_net_1           = 11'h000;
assign FIFO_WR_PTR_const_net_17            = 3'h0;
assign FIFO_RD_PTR_const_net_17            = 3'h0;
assign EYE_MONITOR_LANE_WIDTH_const_net_18 = 3'h0;
assign TX_DATA_1_const_net_17              = 8'h00;
assign TX_DATA_2_const_net_17              = 8'h00;
assign TX_DATA_3_const_net_18              = 8'h00;
assign TX_DATA_4_const_net_18              = 8'h00;
assign TX_DATA_5_const_net_18              = 8'h00;
assign TX_DATA_6_const_net_18              = 8'h00;
assign TX_DATA_7_const_net_18              = 8'h00;
assign TX_DATA_8_const_net_19              = 8'h00;
assign TX_DATA_9_const_net_19              = 8'h00;
assign TX_DATA_10_const_net_19             = 8'h00;
assign TX_DATA_11_const_net_19             = 8'h00;
assign TX_DATA_12_const_net_20             = 8'h00;
assign TX_DATA_13_const_net_20             = 8'h00;
assign TX_DATA_14_const_net_20             = 8'h00;
assign TX_DATA_15_const_net_20             = 8'h00;
assign TX_DATA_16_const_net_20             = 8'h00;
assign TX_DATA_17_const_net_20             = 8'h00;
assign TX_DATA_18_const_net_20             = 8'h00;
assign TX_DATA_19_const_net_20             = 8'h00;
assign TX_DATA_20_const_net_20             = 8'h00;
assign TX_DATA_21_const_net_20             = 8'h00;
assign TX_DATA_22_const_net_20             = 8'h00;
assign TX_DATA_23_const_net_20             = 8'h00;
assign TX_DATA_24_const_net_20             = 8'h00;
assign TX_DATA_25_const_net_20             = 8'h00;
assign TX_DATA_26_const_net_20             = 8'h00;
assign TX_DATA_27_const_net_20             = 8'h00;
assign TX_DATA_28_const_net_20             = 8'h00;
assign TX_DATA_29_const_net_20             = 8'h00;
assign TX_DATA_30_const_net_20             = 8'h00;
assign TX_DATA_31_const_net_20             = 8'h00;
assign TX_DATA_32_const_net_20             = 8'h00;
assign TX_DATA_33_const_net_20             = 8'h00;
assign TX_DATA_34_const_net_20             = 8'h00;
assign TX_DATA_35_const_net_20             = 8'h00;
assign TX_DATA_36_const_net_20             = 8'h00;
assign TX_DATA_37_const_net_20             = 8'h00;
assign TX_DATA_38_const_net_20             = 8'h00;
assign TX_DATA_39_const_net_20             = 8'h00;
assign TX_DATA_40_const_net_20             = 8'h00;
assign TX_DATA_41_const_net_20             = 8'h00;
assign TX_DATA_42_const_net_20             = 8'h00;
assign TX_DATA_43_const_net_20             = 8'h00;
assign TX_DATA_44_const_net_20             = 8'h00;
assign TX_DATA_45_const_net_20             = 8'h00;
assign TX_DATA_46_const_net_20             = 8'h00;
assign TX_DATA_47_const_net_20             = 8'h00;
assign TX_DATA_48_const_net_20             = 8'h00;
assign TX_DATA_49_const_net_20             = 8'h00;
assign TX_DATA_50_const_net_20             = 8'h00;
assign TX_DATA_51_const_net_20             = 8'h00;
assign TX_DATA_52_const_net_20             = 8'h00;
assign TX_DATA_53_const_net_20             = 8'h00;
assign TX_DATA_54_const_net_20             = 8'h00;
assign TX_DATA_55_const_net_20             = 8'h00;
assign TX_DATA_56_const_net_20             = 8'h00;
assign TX_DATA_57_const_net_20             = 8'h00;
assign TX_DATA_58_const_net_20             = 8'h00;
assign TX_DATA_59_const_net_20             = 8'h00;
assign TX_DATA_60_const_net_20             = 8'h00;
assign TX_DATA_61_const_net_20             = 8'h00;
assign TX_DATA_62_const_net_20             = 8'h00;
assign TX_DATA_63_const_net_20             = 8'h00;
assign OE_DATA_1_const_net_19              = 4'h0;
assign OE_DATA_2_const_net_19              = 4'h0;
assign OE_DATA_3_const_net_19              = 4'h0;
assign OE_DATA_4_const_net_19              = 4'h0;
assign OE_DATA_5_const_net_19              = 4'h0;
assign OE_DATA_6_const_net_19              = 4'h0;
assign OE_DATA_7_const_net_19              = 4'h0;
assign OE_DATA_8_const_net_20              = 4'h0;
assign OE_DATA_9_const_net_20              = 4'h0;
assign OE_DATA_10_const_net_20             = 4'h0;
assign OE_DATA_11_const_net_20             = 4'h0;
assign OE_DATA_12_const_net_20             = 4'h0;
assign OE_DATA_13_const_net_20             = 4'h0;
assign OE_DATA_14_const_net_20             = 4'h0;
assign OE_DATA_15_const_net_20             = 4'h0;
assign OE_DATA_16_const_net_20             = 4'h0;
assign OE_DATA_17_const_net_20             = 4'h0;
assign OE_DATA_18_const_net_20             = 4'h0;
assign OE_DATA_19_const_net_20             = 4'h0;
assign OE_DATA_20_const_net_20             = 4'h0;
assign OE_DATA_21_const_net_20             = 4'h0;
assign OE_DATA_22_const_net_20             = 4'h0;
assign OE_DATA_23_const_net_20             = 4'h0;
assign OE_DATA_24_const_net_20             = 4'h0;
assign OE_DATA_25_const_net_20             = 4'h0;
assign OE_DATA_26_const_net_20             = 4'h0;
assign OE_DATA_27_const_net_20             = 4'h0;
assign OE_DATA_28_const_net_20             = 4'h0;
assign OE_DATA_29_const_net_20             = 4'h0;
assign OE_DATA_30_const_net_20             = 4'h0;
assign OE_DATA_31_const_net_20             = 4'h0;
assign OE_DATA_32_const_net_20             = 4'h0;
assign OE_DATA_33_const_net_20             = 4'h0;
assign OE_DATA_34_const_net_20             = 4'h0;
assign OE_DATA_35_const_net_20             = 4'h0;
assign OE_DATA_36_const_net_20             = 4'h0;
assign OE_DATA_37_const_net_20             = 4'h0;
assign OE_DATA_38_const_net_20             = 4'h0;
assign OE_DATA_39_const_net_20             = 4'h0;
assign OE_DATA_40_const_net_20             = 4'h0;
assign OE_DATA_41_const_net_20             = 4'h0;
assign OE_DATA_42_const_net_20             = 4'h0;
assign OE_DATA_43_const_net_20             = 4'h0;
assign OE_DATA_44_const_net_20             = 4'h0;
assign OE_DATA_45_const_net_20             = 4'h0;
assign OE_DATA_46_const_net_20             = 4'h0;
assign OE_DATA_47_const_net_20             = 4'h0;
assign OE_DATA_48_const_net_20             = 4'h0;
assign OE_DATA_49_const_net_20             = 4'h0;
assign OE_DATA_50_const_net_20             = 4'h0;
assign OE_DATA_51_const_net_20             = 4'h0;
assign OE_DATA_52_const_net_20             = 4'h0;
assign OE_DATA_53_const_net_20             = 4'h0;
assign OE_DATA_54_const_net_20             = 4'h0;
assign OE_DATA_55_const_net_20             = 4'h0;
assign OE_DATA_56_const_net_20             = 4'h0;
assign OE_DATA_57_const_net_20             = 4'h0;
assign OE_DATA_58_const_net_20             = 4'h0;
assign OE_DATA_59_const_net_20             = 4'h0;
assign OE_DATA_60_const_net_20             = 4'h0;
assign OE_DATA_61_const_net_20             = 4'h0;
assign OE_DATA_62_const_net_20             = 4'h0;
assign OE_DATA_63_const_net_20             = 4'h0;
assign TX_DATA_8_const_net_20              = 8'h00;
assign TX_DATA_9_const_net_20              = 8'h00;
assign TX_DATA_10_const_net_20             = 8'h00;
assign TX_DATA_11_const_net_20             = 8'h00;
assign TX_DATA_12_const_net_21             = 8'h00;
assign TX_DATA_13_const_net_21             = 8'h00;
assign TX_DATA_14_const_net_21             = 8'h00;
assign TX_DATA_15_const_net_21             = 8'h00;
assign TX_DATA_16_const_net_21             = 8'h00;
assign TX_DATA_17_const_net_21             = 8'h00;
assign TX_DATA_18_const_net_21             = 8'h00;
assign TX_DATA_19_const_net_21             = 8'h00;
assign TX_DATA_20_const_net_21             = 8'h00;
assign TX_DATA_21_const_net_21             = 8'h00;
assign TX_DATA_22_const_net_21             = 8'h00;
assign TX_DATA_23_const_net_21             = 8'h00;
assign TX_DATA_24_const_net_21             = 8'h00;
assign TX_DATA_25_const_net_21             = 8'h00;
assign TX_DATA_26_const_net_21             = 8'h00;
assign TX_DATA_27_const_net_21             = 8'h00;
assign TX_DATA_28_const_net_21             = 8'h00;
assign TX_DATA_29_const_net_21             = 8'h00;
assign TX_DATA_30_const_net_21             = 8'h00;
assign TX_DATA_31_const_net_21             = 8'h00;
assign TX_DATA_32_const_net_21             = 8'h00;
assign TX_DATA_33_const_net_21             = 8'h00;
assign TX_DATA_34_const_net_21             = 8'h00;
assign TX_DATA_35_const_net_21             = 8'h00;
assign TX_DATA_36_const_net_21             = 8'h00;
assign TX_DATA_37_const_net_21             = 8'h00;
assign TX_DATA_38_const_net_21             = 8'h00;
assign TX_DATA_39_const_net_21             = 8'h00;
assign TX_DATA_40_const_net_21             = 8'h00;
assign TX_DATA_41_const_net_21             = 8'h00;
assign TX_DATA_42_const_net_21             = 8'h00;
assign TX_DATA_43_const_net_21             = 8'h00;
assign TX_DATA_44_const_net_21             = 8'h00;
assign TX_DATA_45_const_net_21             = 8'h00;
assign TX_DATA_46_const_net_21             = 8'h00;
assign TX_DATA_47_const_net_21             = 8'h00;
assign TX_DATA_48_const_net_21             = 8'h00;
assign TX_DATA_49_const_net_21             = 8'h00;
assign TX_DATA_50_const_net_21             = 8'h00;
assign TX_DATA_51_const_net_21             = 8'h00;
assign TX_DATA_52_const_net_21             = 8'h00;
assign TX_DATA_53_const_net_21             = 8'h00;
assign TX_DATA_54_const_net_21             = 8'h00;
assign TX_DATA_55_const_net_21             = 8'h00;
assign TX_DATA_56_const_net_21             = 8'h00;
assign TX_DATA_57_const_net_21             = 8'h00;
assign TX_DATA_58_const_net_21             = 8'h00;
assign TX_DATA_59_const_net_21             = 8'h00;
assign TX_DATA_60_const_net_21             = 8'h00;
assign TX_DATA_61_const_net_21             = 8'h00;
assign TX_DATA_62_const_net_21             = 8'h00;
assign TX_DATA_63_const_net_21             = 8'h00;
assign OE_DATA_8_const_net_21              = 4'h0;
assign OE_DATA_9_const_net_21              = 4'h0;
assign OE_DATA_10_const_net_21             = 4'h0;
assign OE_DATA_11_const_net_21             = 4'h0;
assign OE_DATA_12_const_net_21             = 4'h0;
assign OE_DATA_13_const_net_21             = 4'h0;
assign OE_DATA_14_const_net_21             = 4'h0;
assign OE_DATA_15_const_net_21             = 4'h0;
assign OE_DATA_16_const_net_21             = 4'h0;
assign OE_DATA_17_const_net_21             = 4'h0;
assign OE_DATA_18_const_net_21             = 4'h0;
assign OE_DATA_19_const_net_21             = 4'h0;
assign OE_DATA_20_const_net_21             = 4'h0;
assign OE_DATA_21_const_net_21             = 4'h0;
assign OE_DATA_22_const_net_21             = 4'h0;
assign OE_DATA_23_const_net_21             = 4'h0;
assign OE_DATA_24_const_net_21             = 4'h0;
assign OE_DATA_25_const_net_21             = 4'h0;
assign OE_DATA_26_const_net_21             = 4'h0;
assign OE_DATA_27_const_net_21             = 4'h0;
assign OE_DATA_28_const_net_21             = 4'h0;
assign OE_DATA_29_const_net_21             = 4'h0;
assign OE_DATA_30_const_net_21             = 4'h0;
assign OE_DATA_31_const_net_21             = 4'h0;
assign OE_DATA_32_const_net_21             = 4'h0;
assign OE_DATA_33_const_net_21             = 4'h0;
assign OE_DATA_34_const_net_21             = 4'h0;
assign OE_DATA_35_const_net_21             = 4'h0;
assign OE_DATA_36_const_net_21             = 4'h0;
assign OE_DATA_37_const_net_21             = 4'h0;
assign OE_DATA_38_const_net_21             = 4'h0;
assign OE_DATA_39_const_net_21             = 4'h0;
assign OE_DATA_40_const_net_21             = 4'h0;
assign OE_DATA_41_const_net_21             = 4'h0;
assign OE_DATA_42_const_net_21             = 4'h0;
assign OE_DATA_43_const_net_21             = 4'h0;
assign OE_DATA_44_const_net_21             = 4'h0;
assign OE_DATA_45_const_net_21             = 4'h0;
assign OE_DATA_46_const_net_21             = 4'h0;
assign OE_DATA_47_const_net_21             = 4'h0;
assign OE_DATA_48_const_net_21             = 4'h0;
assign OE_DATA_49_const_net_21             = 4'h0;
assign OE_DATA_50_const_net_21             = 4'h0;
assign OE_DATA_51_const_net_21             = 4'h0;
assign OE_DATA_52_const_net_21             = 4'h0;
assign OE_DATA_53_const_net_21             = 4'h0;
assign OE_DATA_54_const_net_21             = 4'h0;
assign OE_DATA_55_const_net_21             = 4'h0;
assign OE_DATA_56_const_net_21             = 4'h0;
assign OE_DATA_57_const_net_21             = 4'h0;
assign OE_DATA_58_const_net_21             = 4'h0;
assign OE_DATA_59_const_net_21             = 4'h0;
assign OE_DATA_60_const_net_21             = 4'h0;
assign OE_DATA_61_const_net_21             = 4'h0;
assign OE_DATA_62_const_net_21             = 4'h0;
assign OE_DATA_63_const_net_21             = 4'h0;
assign PAD_I_const_net_3                   = 8'h00;
assign PAD_N_const_net_3                   = 8'h00;
assign PAD_I_N_const_net_3                 = 8'h00;
assign TX_DATA_1_const_net_18              = 8'h00;
assign TX_DATA_2_const_net_18              = 8'h00;
assign TX_DATA_3_const_net_19              = 8'h00;
assign TX_DATA_4_const_net_19              = 8'h00;
assign TX_DATA_5_const_net_19              = 8'h00;
assign TX_DATA_6_const_net_19              = 8'h00;
assign TX_DATA_7_const_net_19              = 8'h00;
assign TX_DATA_8_const_net_21              = 8'h00;
assign TX_DATA_9_const_net_21              = 8'h00;
assign TX_DATA_10_const_net_21             = 8'h00;
assign TX_DATA_11_const_net_21             = 8'h00;
assign TX_DATA_12_const_net_22             = 8'h00;
assign TX_DATA_13_const_net_22             = 8'h00;
assign TX_DATA_14_const_net_22             = 8'h00;
assign TX_DATA_15_const_net_22             = 8'h00;
assign TX_DATA_16_const_net_22             = 8'h00;
assign TX_DATA_17_const_net_22             = 8'h00;
assign TX_DATA_18_const_net_22             = 8'h00;
assign TX_DATA_19_const_net_22             = 8'h00;
assign TX_DATA_20_const_net_22             = 8'h00;
assign TX_DATA_21_const_net_22             = 8'h00;
assign TX_DATA_22_const_net_22             = 8'h00;
assign TX_DATA_23_const_net_22             = 8'h00;
assign TX_DATA_24_const_net_22             = 8'h00;
assign TX_DATA_25_const_net_22             = 8'h00;
assign TX_DATA_26_const_net_22             = 8'h00;
assign TX_DATA_27_const_net_22             = 8'h00;
assign TX_DATA_28_const_net_22             = 8'h00;
assign TX_DATA_29_const_net_22             = 8'h00;
assign TX_DATA_30_const_net_22             = 8'h00;
assign TX_DATA_31_const_net_22             = 8'h00;
assign TX_DATA_32_const_net_22             = 8'h00;
assign TX_DATA_33_const_net_22             = 8'h00;
assign TX_DATA_34_const_net_22             = 8'h00;
assign TX_DATA_35_const_net_22             = 8'h00;
assign TX_DATA_36_const_net_22             = 8'h00;
assign TX_DATA_37_const_net_22             = 8'h00;
assign TX_DATA_38_const_net_22             = 8'h00;
assign TX_DATA_39_const_net_22             = 8'h00;
assign TX_DATA_40_const_net_22             = 8'h00;
assign TX_DATA_41_const_net_22             = 8'h00;
assign TX_DATA_42_const_net_22             = 8'h00;
assign TX_DATA_43_const_net_22             = 8'h00;
assign TX_DATA_44_const_net_22             = 8'h00;
assign TX_DATA_45_const_net_22             = 8'h00;
assign TX_DATA_46_const_net_22             = 8'h00;
assign TX_DATA_47_const_net_22             = 8'h00;
assign TX_DATA_48_const_net_22             = 8'h00;
assign TX_DATA_49_const_net_22             = 8'h00;
assign TX_DATA_50_const_net_22             = 8'h00;
assign TX_DATA_51_const_net_22             = 8'h00;
assign TX_DATA_52_const_net_22             = 8'h00;
assign TX_DATA_53_const_net_22             = 8'h00;
assign TX_DATA_54_const_net_22             = 8'h00;
assign TX_DATA_55_const_net_22             = 8'h00;
assign TX_DATA_56_const_net_22             = 8'h00;
assign TX_DATA_57_const_net_22             = 8'h00;
assign TX_DATA_58_const_net_22             = 8'h00;
assign TX_DATA_59_const_net_22             = 8'h00;
assign TX_DATA_60_const_net_22             = 8'h00;
assign TX_DATA_61_const_net_22             = 8'h00;
assign TX_DATA_62_const_net_22             = 8'h00;
assign TX_DATA_63_const_net_22             = 8'h00;
assign OE_DATA_1_const_net_20              = 4'h0;
assign OE_DATA_2_const_net_20              = 4'h0;
assign OE_DATA_3_const_net_20              = 4'h0;
assign OE_DATA_4_const_net_20              = 4'h0;
assign OE_DATA_5_const_net_20              = 4'h0;
assign OE_DATA_6_const_net_20              = 4'h0;
assign OE_DATA_7_const_net_20              = 4'h0;
assign OE_DATA_8_const_net_22              = 4'h0;
assign OE_DATA_9_const_net_22              = 4'h0;
assign OE_DATA_10_const_net_22             = 4'h0;
assign OE_DATA_11_const_net_22             = 4'h0;
assign OE_DATA_12_const_net_22             = 4'h0;
assign OE_DATA_13_const_net_22             = 4'h0;
assign OE_DATA_14_const_net_22             = 4'h0;
assign OE_DATA_15_const_net_22             = 4'h0;
assign OE_DATA_16_const_net_22             = 4'h0;
assign OE_DATA_17_const_net_22             = 4'h0;
assign OE_DATA_18_const_net_22             = 4'h0;
assign OE_DATA_19_const_net_22             = 4'h0;
assign OE_DATA_20_const_net_22             = 4'h0;
assign OE_DATA_21_const_net_22             = 4'h0;
assign OE_DATA_22_const_net_22             = 4'h0;
assign OE_DATA_23_const_net_22             = 4'h0;
assign OE_DATA_24_const_net_22             = 4'h0;
assign OE_DATA_25_const_net_22             = 4'h0;
assign OE_DATA_26_const_net_22             = 4'h0;
assign OE_DATA_27_const_net_22             = 4'h0;
assign OE_DATA_28_const_net_22             = 4'h0;
assign OE_DATA_29_const_net_22             = 4'h0;
assign OE_DATA_30_const_net_22             = 4'h0;
assign OE_DATA_31_const_net_22             = 4'h0;
assign OE_DATA_32_const_net_22             = 4'h0;
assign OE_DATA_33_const_net_22             = 4'h0;
assign OE_DATA_34_const_net_22             = 4'h0;
assign OE_DATA_35_const_net_22             = 4'h0;
assign OE_DATA_36_const_net_22             = 4'h0;
assign OE_DATA_37_const_net_22             = 4'h0;
assign OE_DATA_38_const_net_22             = 4'h0;
assign OE_DATA_39_const_net_22             = 4'h0;
assign OE_DATA_40_const_net_22             = 4'h0;
assign OE_DATA_41_const_net_22             = 4'h0;
assign OE_DATA_42_const_net_22             = 4'h0;
assign OE_DATA_43_const_net_22             = 4'h0;
assign OE_DATA_44_const_net_22             = 4'h0;
assign OE_DATA_45_const_net_22             = 4'h0;
assign OE_DATA_46_const_net_22             = 4'h0;
assign OE_DATA_47_const_net_22             = 4'h0;
assign OE_DATA_48_const_net_22             = 4'h0;
assign OE_DATA_49_const_net_22             = 4'h0;
assign OE_DATA_50_const_net_22             = 4'h0;
assign OE_DATA_51_const_net_22             = 4'h0;
assign OE_DATA_52_const_net_22             = 4'h0;
assign OE_DATA_53_const_net_22             = 4'h0;
assign OE_DATA_54_const_net_22             = 4'h0;
assign OE_DATA_55_const_net_22             = 4'h0;
assign OE_DATA_56_const_net_22             = 4'h0;
assign OE_DATA_57_const_net_22             = 4'h0;
assign OE_DATA_58_const_net_22             = 4'h0;
assign OE_DATA_59_const_net_22             = 4'h0;
assign OE_DATA_60_const_net_22             = 4'h0;
assign OE_DATA_61_const_net_22             = 4'h0;
assign OE_DATA_62_const_net_22             = 4'h0;
assign OE_DATA_63_const_net_22             = 4'h0;
assign RX_DQS_90_const_net_17              = 2'h0;
assign FIFO_WR_PTR_const_net_18            = 3'h0;
assign FIFO_RD_PTR_const_net_18            = 3'h0;
assign EYE_MONITOR_LANE_WIDTH_const_net_19 = 3'h0;
assign TX_DATA_1_const_net_19              = 2'h0;
assign TX_DATA_2_const_net_19              = 2'h0;
assign TX_DATA_3_const_net_20              = 2'h0;
assign TX_DATA_4_const_net_20              = 2'h0;
assign TX_DATA_5_const_net_20              = 2'h0;
assign TX_DATA_6_const_net_20              = 2'h0;
assign TX_DATA_7_const_net_20              = 2'h0;
assign TX_DATA_8_const_net_22              = 2'h0;
assign TX_DATA_9_const_net_22              = 2'h0;
assign TX_DATA_10_const_net_22             = 2'h0;
assign TX_DATA_11_const_net_22             = 2'h0;
assign TX_DATA_12_const_net_23             = 2'h0;
assign TX_DATA_13_const_net_23             = 2'h0;
assign TX_DATA_14_const_net_23             = 2'h0;
assign TX_DATA_15_const_net_23             = 2'h0;
assign TX_DATA_16_const_net_23             = 2'h0;
assign TX_DATA_17_const_net_23             = 2'h0;
assign TX_DATA_18_const_net_23             = 2'h0;
assign TX_DATA_19_const_net_23             = 2'h0;
assign TX_DATA_20_const_net_23             = 2'h0;
assign TX_DATA_21_const_net_23             = 2'h0;
assign TX_DATA_22_const_net_23             = 2'h0;
assign TX_DATA_23_const_net_23             = 2'h0;
assign TX_DATA_24_const_net_23             = 2'h0;
assign TX_DATA_25_const_net_23             = 2'h0;
assign TX_DATA_26_const_net_23             = 2'h0;
assign TX_DATA_27_const_net_23             = 2'h0;
assign TX_DATA_28_const_net_23             = 2'h0;
assign TX_DATA_29_const_net_23             = 2'h0;
assign TX_DATA_30_const_net_23             = 2'h0;
assign TX_DATA_31_const_net_23             = 2'h0;
assign TX_DATA_32_const_net_23             = 2'h0;
assign TX_DATA_33_const_net_23             = 2'h0;
assign TX_DATA_34_const_net_23             = 2'h0;
assign TX_DATA_35_const_net_23             = 2'h0;
assign TX_DATA_36_const_net_23             = 2'h0;
assign TX_DATA_37_const_net_23             = 2'h0;
assign TX_DATA_38_const_net_23             = 2'h0;
assign TX_DATA_39_const_net_23             = 2'h0;
assign TX_DATA_40_const_net_23             = 2'h0;
assign TX_DATA_41_const_net_23             = 2'h0;
assign TX_DATA_42_const_net_23             = 2'h0;
assign TX_DATA_43_const_net_23             = 2'h0;
assign TX_DATA_44_const_net_23             = 2'h0;
assign TX_DATA_45_const_net_23             = 2'h0;
assign TX_DATA_46_const_net_23             = 2'h0;
assign TX_DATA_47_const_net_23             = 2'h0;
assign TX_DATA_48_const_net_23             = 2'h0;
assign TX_DATA_49_const_net_23             = 2'h0;
assign TX_DATA_50_const_net_23             = 2'h0;
assign TX_DATA_51_const_net_23             = 2'h0;
assign TX_DATA_52_const_net_23             = 2'h0;
assign TX_DATA_53_const_net_23             = 2'h0;
assign TX_DATA_54_const_net_23             = 2'h0;
assign TX_DATA_55_const_net_23             = 2'h0;
assign TX_DATA_56_const_net_23             = 2'h0;
assign TX_DATA_57_const_net_23             = 2'h0;
assign TX_DATA_58_const_net_23             = 2'h0;
assign TX_DATA_59_const_net_23             = 2'h0;
assign TX_DATA_60_const_net_23             = 2'h0;
assign TX_DATA_61_const_net_23             = 2'h0;
assign TX_DATA_62_const_net_23             = 2'h0;
assign TX_DATA_63_const_net_23             = 2'h0;
assign OE_DATA_1_const_net_21              = 2'h0;
assign OE_DATA_2_const_net_21              = 2'h0;
assign OE_DATA_3_const_net_21              = 2'h0;
assign OE_DATA_4_const_net_21              = 2'h0;
assign OE_DATA_5_const_net_21              = 2'h0;
assign OE_DATA_6_const_net_21              = 2'h0;
assign OE_DATA_7_const_net_21              = 2'h0;
assign OE_DATA_8_const_net_23              = 2'h0;
assign OE_DATA_9_const_net_23              = 2'h0;
assign OE_DATA_10_const_net_23             = 2'h0;
assign OE_DATA_11_const_net_23             = 2'h0;
assign OE_DATA_12_const_net_23             = 2'h0;
assign OE_DATA_13_const_net_23             = 2'h0;
assign OE_DATA_14_const_net_23             = 2'h0;
assign OE_DATA_15_const_net_23             = 2'h0;
assign OE_DATA_16_const_net_23             = 2'h0;
assign OE_DATA_17_const_net_23             = 2'h0;
assign OE_DATA_18_const_net_23             = 2'h0;
assign OE_DATA_19_const_net_23             = 2'h0;
assign OE_DATA_20_const_net_23             = 2'h0;
assign OE_DATA_21_const_net_23             = 2'h0;
assign OE_DATA_22_const_net_23             = 2'h0;
assign OE_DATA_23_const_net_23             = 2'h0;
assign OE_DATA_24_const_net_23             = 2'h0;
assign OE_DATA_25_const_net_23             = 2'h0;
assign OE_DATA_26_const_net_23             = 2'h0;
assign OE_DATA_27_const_net_23             = 2'h0;
assign OE_DATA_28_const_net_23             = 2'h0;
assign OE_DATA_29_const_net_23             = 2'h0;
assign OE_DATA_30_const_net_23             = 2'h0;
assign OE_DATA_31_const_net_23             = 2'h0;
assign OE_DATA_32_const_net_23             = 2'h0;
assign OE_DATA_33_const_net_23             = 2'h0;
assign OE_DATA_34_const_net_23             = 2'h0;
assign OE_DATA_35_const_net_23             = 2'h0;
assign OE_DATA_36_const_net_23             = 2'h0;
assign OE_DATA_37_const_net_23             = 2'h0;
assign OE_DATA_38_const_net_23             = 2'h0;
assign OE_DATA_39_const_net_23             = 2'h0;
assign OE_DATA_40_const_net_23             = 2'h0;
assign OE_DATA_41_const_net_23             = 2'h0;
assign OE_DATA_42_const_net_23             = 2'h0;
assign OE_DATA_43_const_net_23             = 2'h0;
assign OE_DATA_44_const_net_23             = 2'h0;
assign OE_DATA_45_const_net_23             = 2'h0;
assign OE_DATA_46_const_net_23             = 2'h0;
assign OE_DATA_47_const_net_23             = 2'h0;
assign OE_DATA_48_const_net_23             = 2'h0;
assign OE_DATA_49_const_net_23             = 2'h0;
assign OE_DATA_50_const_net_23             = 2'h0;
assign OE_DATA_51_const_net_23             = 2'h0;
assign OE_DATA_52_const_net_23             = 2'h0;
assign OE_DATA_53_const_net_23             = 2'h0;
assign OE_DATA_54_const_net_23             = 2'h0;
assign OE_DATA_55_const_net_23             = 2'h0;
assign OE_DATA_56_const_net_23             = 2'h0;
assign OE_DATA_57_const_net_23             = 2'h0;
assign OE_DATA_58_const_net_23             = 2'h0;
assign OE_DATA_59_const_net_23             = 2'h0;
assign OE_DATA_60_const_net_23             = 2'h0;
assign OE_DATA_61_const_net_23             = 2'h0;
assign OE_DATA_62_const_net_23             = 2'h0;
assign OE_DATA_63_const_net_23             = 2'h0;
assign RX_DQS_90_const_net_18              = 2'h0;
assign EYE_MONITOR_LANE_WIDTH_const_net_20 = 3'h0;
assign TX_DATA_1_const_net_20              = 8'h00;
assign TX_DATA_2_const_net_20              = 8'h00;
assign TX_DATA_3_const_net_21              = 8'h00;
assign TX_DATA_4_const_net_21              = 8'h00;
assign TX_DATA_5_const_net_21              = 8'h00;
assign TX_DATA_6_const_net_21              = 8'h00;
assign TX_DATA_7_const_net_21              = 8'h00;
assign TX_DATA_8_const_net_23              = 8'h00;
assign TX_DATA_9_const_net_23              = 8'h00;
assign TX_DATA_10_const_net_23             = 8'h00;
assign TX_DATA_11_const_net_23             = 8'h00;
assign TX_DATA_12_const_net_24             = 8'h00;
assign TX_DATA_13_const_net_24             = 8'h00;
assign TX_DATA_14_const_net_24             = 8'h00;
assign TX_DATA_15_const_net_24             = 8'h00;
assign TX_DATA_16_const_net_24             = 8'h00;
assign TX_DATA_17_const_net_24             = 8'h00;
assign TX_DATA_18_const_net_24             = 8'h00;
assign TX_DATA_19_const_net_24             = 8'h00;
assign TX_DATA_20_const_net_24             = 8'h00;
assign TX_DATA_21_const_net_24             = 8'h00;
assign TX_DATA_22_const_net_24             = 8'h00;
assign TX_DATA_23_const_net_24             = 8'h00;
assign TX_DATA_24_const_net_24             = 8'h00;
assign TX_DATA_25_const_net_24             = 8'h00;
assign TX_DATA_26_const_net_24             = 8'h00;
assign TX_DATA_27_const_net_24             = 8'h00;
assign TX_DATA_28_const_net_24             = 8'h00;
assign TX_DATA_29_const_net_24             = 8'h00;
assign TX_DATA_30_const_net_24             = 8'h00;
assign TX_DATA_31_const_net_24             = 8'h00;
assign TX_DATA_32_const_net_24             = 8'h00;
assign TX_DATA_33_const_net_24             = 8'h00;
assign TX_DATA_34_const_net_24             = 8'h00;
assign TX_DATA_35_const_net_24             = 8'h00;
assign TX_DATA_36_const_net_24             = 8'h00;
assign TX_DATA_37_const_net_24             = 8'h00;
assign TX_DATA_38_const_net_24             = 8'h00;
assign TX_DATA_39_const_net_24             = 8'h00;
assign TX_DATA_40_const_net_24             = 8'h00;
assign TX_DATA_41_const_net_24             = 8'h00;
assign TX_DATA_42_const_net_24             = 8'h00;
assign TX_DATA_43_const_net_24             = 8'h00;
assign TX_DATA_44_const_net_24             = 8'h00;
assign TX_DATA_45_const_net_24             = 8'h00;
assign TX_DATA_46_const_net_24             = 8'h00;
assign TX_DATA_47_const_net_24             = 8'h00;
assign TX_DATA_48_const_net_24             = 8'h00;
assign TX_DATA_49_const_net_24             = 8'h00;
assign TX_DATA_50_const_net_24             = 8'h00;
assign TX_DATA_51_const_net_24             = 8'h00;
assign TX_DATA_52_const_net_24             = 8'h00;
assign TX_DATA_53_const_net_24             = 8'h00;
assign TX_DATA_54_const_net_24             = 8'h00;
assign TX_DATA_55_const_net_24             = 8'h00;
assign TX_DATA_56_const_net_24             = 8'h00;
assign TX_DATA_57_const_net_24             = 8'h00;
assign TX_DATA_58_const_net_24             = 8'h00;
assign TX_DATA_59_const_net_24             = 8'h00;
assign TX_DATA_60_const_net_24             = 8'h00;
assign TX_DATA_61_const_net_24             = 8'h00;
assign TX_DATA_62_const_net_24             = 8'h00;
assign TX_DATA_63_const_net_24             = 8'h00;
assign OE_DATA_1_const_net_22              = 4'h0;
assign OE_DATA_2_const_net_22              = 4'h0;
assign OE_DATA_3_const_net_22              = 4'h0;
assign OE_DATA_4_const_net_22              = 4'h0;
assign OE_DATA_5_const_net_22              = 4'h0;
assign OE_DATA_6_const_net_22              = 4'h0;
assign OE_DATA_7_const_net_22              = 4'h0;
assign OE_DATA_8_const_net_24              = 4'h0;
assign OE_DATA_9_const_net_24              = 4'h0;
assign OE_DATA_10_const_net_24             = 4'h0;
assign OE_DATA_11_const_net_24             = 4'h0;
assign OE_DATA_12_const_net_24             = 4'h0;
assign OE_DATA_13_const_net_24             = 4'h0;
assign OE_DATA_14_const_net_24             = 4'h0;
assign OE_DATA_15_const_net_24             = 4'h0;
assign OE_DATA_16_const_net_24             = 4'h0;
assign OE_DATA_17_const_net_24             = 4'h0;
assign OE_DATA_18_const_net_24             = 4'h0;
assign OE_DATA_19_const_net_24             = 4'h0;
assign OE_DATA_20_const_net_24             = 4'h0;
assign OE_DATA_21_const_net_24             = 4'h0;
assign OE_DATA_22_const_net_24             = 4'h0;
assign OE_DATA_23_const_net_24             = 4'h0;
assign OE_DATA_24_const_net_24             = 4'h0;
assign OE_DATA_25_const_net_24             = 4'h0;
assign OE_DATA_26_const_net_24             = 4'h0;
assign OE_DATA_27_const_net_24             = 4'h0;
assign OE_DATA_28_const_net_24             = 4'h0;
assign OE_DATA_29_const_net_24             = 4'h0;
assign OE_DATA_30_const_net_24             = 4'h0;
assign OE_DATA_31_const_net_24             = 4'h0;
assign OE_DATA_32_const_net_24             = 4'h0;
assign OE_DATA_33_const_net_24             = 4'h0;
assign OE_DATA_34_const_net_24             = 4'h0;
assign OE_DATA_35_const_net_24             = 4'h0;
assign OE_DATA_36_const_net_24             = 4'h0;
assign OE_DATA_37_const_net_24             = 4'h0;
assign OE_DATA_38_const_net_24             = 4'h0;
assign OE_DATA_39_const_net_24             = 4'h0;
assign OE_DATA_40_const_net_24             = 4'h0;
assign OE_DATA_41_const_net_24             = 4'h0;
assign OE_DATA_42_const_net_24             = 4'h0;
assign OE_DATA_43_const_net_24             = 4'h0;
assign OE_DATA_44_const_net_24             = 4'h0;
assign OE_DATA_45_const_net_24             = 4'h0;
assign OE_DATA_46_const_net_24             = 4'h0;
assign OE_DATA_47_const_net_24             = 4'h0;
assign OE_DATA_48_const_net_24             = 4'h0;
assign OE_DATA_49_const_net_24             = 4'h0;
assign OE_DATA_50_const_net_24             = 4'h0;
assign OE_DATA_51_const_net_24             = 4'h0;
assign OE_DATA_52_const_net_24             = 4'h0;
assign OE_DATA_53_const_net_24             = 4'h0;
assign OE_DATA_54_const_net_24             = 4'h0;
assign OE_DATA_55_const_net_24             = 4'h0;
assign OE_DATA_56_const_net_24             = 4'h0;
assign OE_DATA_57_const_net_24             = 4'h0;
assign OE_DATA_58_const_net_24             = 4'h0;
assign OE_DATA_59_const_net_24             = 4'h0;
assign OE_DATA_60_const_net_24             = 4'h0;
assign OE_DATA_61_const_net_24             = 4'h0;
assign OE_DATA_62_const_net_24             = 4'h0;
assign OE_DATA_63_const_net_24             = 4'h0;
assign READ_CLK_SEL_const_net_0            = 3'h0;
assign EYE_MONITOR_WIDTH_IN_const_net_2    = 3'h0;
assign CDR_CLK_A_SEL_const_net_0           = 8'h00;
assign CDR_CLK_B_SEL_const_net_2           = 11'h000;
//--------------------------------------------------------------------
// Inversions
//--------------------------------------------------------------------
assign SYNC_SYS_RST_N_net_1 = ~ SYNC_SYS_RST_N_OUT_PRE_INV0_0;
//--------------------------------------------------------------------
// TieOff assignments
//--------------------------------------------------------------------
assign DFI_CALVL_RESP[1:0]           = 2'h0;
assign DFI_CALVL_TRAIN_DONE          = 1'b1;
assign DFI_CTRLUPD_ACK               = 1'b0;
assign DFI_PHYUPD_REQ                = 1'b0;
assign DFI_PHYUPD_TYPE[1:0]          = 2'h0;
//--------------------------------------------------------------------
// Top level output port assignments
//--------------------------------------------------------------------
assign CODE_UPDATE_net_1             = CODE_UPDATE_net_0;
assign CODE_UPDATE                   = CODE_UPDATE_net_1;
assign LOADPHS_B_net_1[0]            = LOADPHS_B_net_0[0];
assign LOADPHS_B[0:0]                = LOADPHS_B_net_1[0];
assign VCO_PHSEL_BCLK_SEL_net_1[0]   = VCO_PHSEL_BCLK_SEL_net_0[0];
assign VCO_PHSEL_BCLK_SEL[0:0]       = VCO_PHSEL_BCLK_SEL_net_1[0];
assign VCO_PHSEL_BCLK90_SEL_net_1[0] = VCO_PHSEL_BCLK90_SEL_net_0[0];
assign VCO_PHSEL_BCLK90_SEL[0:0]     = VCO_PHSEL_BCLK90_SEL_net_1[0];
assign VCO_PHSEL_REFCLK_SEL_net_1    = VCO_PHSEL_REFCLK_SEL_net_0;
assign VCO_PHSEL_REFCLK_SEL          = VCO_PHSEL_REFCLK_SEL_net_1;
assign VCO_PHSEL_ROTATE_net_1[0]     = VCO_PHSEL_ROTATE_net_0[0];
assign VCO_PHSEL_ROTATE[0:0]         = VCO_PHSEL_ROTATE_net_1[0];
assign DFI_RDDATA_W0_net_1           = DFI_RDDATA_W0_net_0;
assign DFI_RDDATA_W0[31:0]           = DFI_RDDATA_W0_net_1;
assign DFI_RDDATA_VALID_W0_net_1[0]  = DFI_RDDATA_VALID_W0_net_0;
assign DFI_RDDATA_VALID_W0[0:0]      = DFI_RDDATA_VALID_W0_net_1[0];
assign DFI_RDDATA_VALID_W0_net_2[1]  = DFI_RDDATA_VALID_W0_net_0;
assign DFI_RDDATA_VALID_W0[1:1]      = DFI_RDDATA_VALID_W0_net_2[1];
assign DFI_RDDATA_W1_net_1           = DFI_RDDATA_W1_net_0;
assign DFI_RDDATA_W1[31:0]           = DFI_RDDATA_W1_net_1;
assign DFI_RDDATA_VALID_W1_net_1[0]  = DFI_RDDATA_VALID_W1_net_0;
assign DFI_RDDATA_VALID_W1[0:0]      = DFI_RDDATA_VALID_W1_net_1[0];
assign DFI_RDDATA_VALID_W1_net_2[1]  = DFI_RDDATA_VALID_W1_net_0;
assign DFI_RDDATA_VALID_W1[1:1]      = DFI_RDDATA_VALID_W1_net_2[1];
assign DFI_RDDATA_W2_net_1           = DFI_RDDATA_W2_net_0;
assign DFI_RDDATA_W2[31:0]           = DFI_RDDATA_W2_net_1;
assign DFI_RDDATA_VALID_W2_net_1[0]  = DFI_RDDATA_VALID_W2_net_0;
assign DFI_RDDATA_VALID_W2[0:0]      = DFI_RDDATA_VALID_W2_net_1[0];
assign DFI_RDDATA_VALID_W2_net_2[1]  = DFI_RDDATA_VALID_W2_net_0;
assign DFI_RDDATA_VALID_W2[1:1]      = DFI_RDDATA_VALID_W2_net_2[1];
assign DFI_RDDATA_W3_net_1           = DFI_RDDATA_W3_net_0;
assign DFI_RDDATA_W3[31:0]           = DFI_RDDATA_W3_net_1;
assign DFI_RDDATA_VALID_W3_net_1[0]  = DFI_RDDATA_VALID_W3_net_0;
assign DFI_RDDATA_VALID_W3[0:0]      = DFI_RDDATA_VALID_W3_net_1[0];
assign DFI_RDDATA_VALID_W3_net_2[1]  = DFI_RDDATA_VALID_W3_net_0;
assign DFI_RDDATA_VALID_W3[1:1]      = DFI_RDDATA_VALID_W3_net_2[1];
assign DFI_RDLVL_RESP_net_1          = DFI_RDLVL_RESP_net_0;
assign DFI_RDLVL_RESP[1:0]           = DFI_RDLVL_RESP_net_1;
assign DFI_WRLVL_RESP_net_1          = DFI_WRLVL_RESP_net_0;
assign DFI_WRLVL_RESP[1:0]           = DFI_WRLVL_RESP_net_1;
assign DFI_INIT_COMPLETE_net_1       = DFI_INIT_COMPLETE_net_0;
assign DFI_INIT_COMPLETE             = DFI_INIT_COMPLETE_net_1;
assign DFI_TRAINING_COMPLETE_net_1   = DFI_TRAINING_COMPLETE_net_0;
assign DFI_TRAINING_COMPLETE         = DFI_TRAINING_COMPLETE_net_1;
assign DM_net_1[0]                   = DM_net_0[0];
assign DM[0:0]                       = DM_net_1[0];
assign DM_0_net_0[1]                 = DM_0[0];
assign DM[1:1]                       = DM_0_net_0[1];
assign CKE_net_1                     = CKE_net_0[0];
assign CKE                           = CKE_net_1;
assign CS_N_net_1                    = CS_N_net_0[0];
assign CS_N                          = CS_N_net_1;
assign ODT_net_1                     = ODT_net_0[0];
assign ODT                           = ODT_net_1;
assign RAS_N_net_1                   = RAS_N_net_0[0];
assign RAS_N                         = RAS_N_net_1;
assign CAS_N_net_1                   = CAS_N_net_0[0];
assign CAS_N                         = CAS_N_net_1;
assign WE_N_net_1                    = WE_N_net_0[0];
assign WE_N                          = WE_N_net_1;
assign BA_net_1                      = BA_net_0;
assign BA[2:0]                       = BA_net_1;
assign RESET_N_net_1                 = RESET_N_net_0[0];
assign RESET_N                       = RESET_N_net_1;
assign A_net_1[0]                    = A_net_0[0];
assign A[0:0]                        = A_net_1[0];
assign A_9_net_0[10]                 = A_9[10];
assign A[10:10]                      = A_9_net_0[10];
assign A_10_net_0[11]                = A_10[11];
assign A[11:11]                      = A_10_net_0[11];
assign A_11_net_0[12]                = A_11;
assign A[12:12]                      = A_11_net_0[12];
assign A_12_net_0[13]                = A_12[0];
assign A[13:13]                      = A_12_net_0[13];
assign A_13_net_0[14]                = A_13[0];
assign A[14:14]                      = A_13_net_0[14];
assign A_14_net_0[15]                = A_14[0];
assign A[15:15]                      = A_14_net_0[15];
assign A_0_net_0[1]                  = A_0[1];
assign A[1:1]                        = A_0_net_0[1];
assign A_1_net_0[2]                  = A_1[2];
assign A[2:2]                        = A_1_net_0[2];
assign A_2_net_0[3]                  = A_2[3];
assign A[3:3]                        = A_2_net_0[3];
assign A_3_net_0[4]                  = A_3[4];
assign A[4:4]                        = A_3_net_0[4];
assign A_4_net_0[5]                  = A_4[5];
assign A[5:5]                        = A_4_net_0[5];
assign A_5_net_0[6]                  = A_5[6];
assign A[6:6]                        = A_5_net_0[6];
assign A_6_net_0[7]                  = A_6[7];
assign A[7:7]                        = A_6_net_0[7];
assign A_7_net_0[8]                  = A_7[8];
assign A[8:8]                        = A_7_net_0[8];
assign A_8_net_0[9]                  = A_8[9];
assign A[9:9]                        = A_8_net_0[9];
assign CK0_net_1                     = CK0_net_0;
assign CK0                           = CK0_net_1;
assign CK0_N_net_1                   = CK0_N_net_0;
assign CK0_N                         = CK0_N_net_1;
assign SHIELD0_net_1                 = SHIELD0_net_0;
assign SHIELD0                       = SHIELD0_net_1;
assign SHIELD1_net_1                 = SHIELD1_net_0;
assign SHIELD1                       = SHIELD1_net_1;
assign APB_DEBUG_PRDATA_net_0        = APB_DEBUG_PRDATA;
assign PRDATA[7:0]                   = APB_DEBUG_PRDATA_net_0;
assign APB_DEBUG_PREADY_net_0        = APB_DEBUG_PREADY;
assign PREADY                        = APB_DEBUG_PREADY_net_0;
assign CTRLR_READY_OUT_net_1         = CTRLR_READY_OUT_net_0;
assign CTRLR_READY_OUT               = CTRLR_READY_OUT_net_1;
assign ITER_COUNT_net_1              = ITER_COUNT_net_0;
assign ITER_COUNT[3:0]               = ITER_COUNT_net_1;
assign CAL_L_R_REQ_net_1             = CAL_L_R_REQ_net_0;
assign CAL_L_R_REQ                   = CAL_L_R_REQ_net_1;
assign CAL_L_W_REQ_net_1             = CAL_L_W_REQ_net_0;
assign CAL_L_W_REQ                   = CAL_L_W_REQ_net_1;
assign CAL_L_DATAIN_net_1            = CAL_L_DATAIN_net_0;
assign CAL_L_DATAIN[127:0]           = CAL_L_DATAIN_net_1;
assign CAL_L_DM_IN_net_1             = CAL_L_DM_IN_net_0;
assign CAL_L_DM_IN[15:0]             = CAL_L_DM_IN_net_1;
assign CAL_SELECT_net_1              = CAL_SELECT_net_0;
assign CAL_SELECT                    = CAL_SELECT_net_1;
assign SYNC_SYS_RST_N_OUT_PRE_INV0_0 = SYNC_SYS_RST_N_net_0;
assign SYNC_SYS_RST_N                = SYNC_SYS_RST_N_net_1;
//--------------------------------------------------------------------
// Slices assignments
//--------------------------------------------------------------------
assign A_net_0[0]                                          = PAD_O_net_0[0:0];
assign A_0[1]                                              = PAD_O_net_0[1:1];
assign A_1[2]                                              = PAD_O_net_0[2:2];
assign A_2[3]                                              = PAD_O_net_0[3:3];
assign A_3[4]                                              = PAD_O_net_0[4:4];
assign A_4[5]                                              = PAD_O_net_0[5:5];
assign A_5[6]                                              = PAD_O_net_0[6:6];
assign A_6[7]                                              = PAD_O_net_0[7:7];
assign A_7[8]                                              = PAD_O_net_0[8:8];
assign A_8[9]                                              = PAD_O_net_0[9:9];
assign A_9[10]                                             = PAD_O_net_0[10:10];
assign A_10[11]                                            = PAD_O_net_0[11:11];
assign DFI_ADDRESS_P0_slice_0[0]                           = DFI_ADDRESS_P0[0:0];
assign DFI_ADDRESS_P0_slice_1[1]                           = DFI_ADDRESS_P0[1:1];
assign DFI_ADDRESS_P0_slice_2[2]                           = DFI_ADDRESS_P0[2:2];
assign DFI_ADDRESS_P0_slice_3[3]                           = DFI_ADDRESS_P0[3:3];
assign DFI_ADDRESS_P0_slice_4[4]                           = DFI_ADDRESS_P0[4:4];
assign DFI_ADDRESS_P0_slice_5[5]                           = DFI_ADDRESS_P0[5:5];
assign DFI_ADDRESS_P0_slice_6[6]                           = DFI_ADDRESS_P0[6:6];
assign DFI_ADDRESS_P0_slice_7[7]                           = DFI_ADDRESS_P0[7:7];
assign DFI_ADDRESS_P0_slice_8[8]                           = DFI_ADDRESS_P0[8:8];
assign DFI_ADDRESS_P0_slice_9[9]                           = DFI_ADDRESS_P0[9:9];
assign DFI_ADDRESS_P0_slice_10[10]                         = DFI_ADDRESS_P0[10:10];
assign DFI_ADDRESS_P0_slice_11[11]                         = DFI_ADDRESS_P0[11:11];
assign DFI_ADDRESS_P0_slice_12[12]                         = DFI_ADDRESS_P0[12:12];
assign DFI_ADDRESS_P0_slice_13[13]                         = DFI_ADDRESS_P0[13:13];
assign DFI_ADDRESS_P0_slice_14[14]                         = DFI_ADDRESS_P0[14:14];
assign DFI_ADDRESS_P0_slice_15[15]                         = DFI_ADDRESS_P0[15:15];
assign DFI_ADDRESS_P1_slice_0[0]                           = DFI_ADDRESS_P1[0:0];
assign DFI_ADDRESS_P1_slice_1[1]                           = DFI_ADDRESS_P1[1:1];
assign DFI_ADDRESS_P1_slice_2[2]                           = DFI_ADDRESS_P1[2:2];
assign DFI_ADDRESS_P1_slice_3[3]                           = DFI_ADDRESS_P1[3:3];
assign DFI_ADDRESS_P1_slice_4[4]                           = DFI_ADDRESS_P1[4:4];
assign DFI_ADDRESS_P1_slice_5[5]                           = DFI_ADDRESS_P1[5:5];
assign DFI_ADDRESS_P1_slice_6[6]                           = DFI_ADDRESS_P1[6:6];
assign DFI_ADDRESS_P1_slice_7[7]                           = DFI_ADDRESS_P1[7:7];
assign DFI_ADDRESS_P1_slice_8[8]                           = DFI_ADDRESS_P1[8:8];
assign DFI_ADDRESS_P1_slice_9[9]                           = DFI_ADDRESS_P1[9:9];
assign DFI_ADDRESS_P1_slice_10[10]                         = DFI_ADDRESS_P1[10:10];
assign DFI_ADDRESS_P1_slice_11[11]                         = DFI_ADDRESS_P1[11:11];
assign DFI_ADDRESS_P1_slice_12[12]                         = DFI_ADDRESS_P1[12:12];
assign DFI_ADDRESS_P1_slice_13[13]                         = DFI_ADDRESS_P1[13:13];
assign DFI_ADDRESS_P1_slice_14[14]                         = DFI_ADDRESS_P1[14:14];
assign DFI_ADDRESS_P1_slice_15[15]                         = DFI_ADDRESS_P1[15:15];
assign DFI_ADDRESS_P2_slice_0[0]                           = DFI_ADDRESS_P2[0:0];
assign DFI_ADDRESS_P2_slice_1[1]                           = DFI_ADDRESS_P2[1:1];
assign DFI_ADDRESS_P2_slice_2[2]                           = DFI_ADDRESS_P2[2:2];
assign DFI_ADDRESS_P2_slice_3[3]                           = DFI_ADDRESS_P2[3:3];
assign DFI_ADDRESS_P2_slice_4[4]                           = DFI_ADDRESS_P2[4:4];
assign DFI_ADDRESS_P2_slice_5[5]                           = DFI_ADDRESS_P2[5:5];
assign DFI_ADDRESS_P2_slice_6[6]                           = DFI_ADDRESS_P2[6:6];
assign DFI_ADDRESS_P2_slice_7[7]                           = DFI_ADDRESS_P2[7:7];
assign DFI_ADDRESS_P2_slice_8[8]                           = DFI_ADDRESS_P2[8:8];
assign DFI_ADDRESS_P2_slice_9[9]                           = DFI_ADDRESS_P2[9:9];
assign DFI_ADDRESS_P2_slice_10[10]                         = DFI_ADDRESS_P2[10:10];
assign DFI_ADDRESS_P2_slice_11[11]                         = DFI_ADDRESS_P2[11:11];
assign DFI_ADDRESS_P2_slice_12[12]                         = DFI_ADDRESS_P2[12:12];
assign DFI_ADDRESS_P2_slice_13[13]                         = DFI_ADDRESS_P2[13:13];
assign DFI_ADDRESS_P2_slice_14[14]                         = DFI_ADDRESS_P2[14:14];
assign DFI_ADDRESS_P2_slice_15[15]                         = DFI_ADDRESS_P2[15:15];
assign DFI_ADDRESS_P3_slice_0[0]                           = DFI_ADDRESS_P3[0:0];
assign DFI_ADDRESS_P3_slice_1[1]                           = DFI_ADDRESS_P3[1:1];
assign DFI_ADDRESS_P3_slice_2[2]                           = DFI_ADDRESS_P3[2:2];
assign DFI_ADDRESS_P3_slice_3[3]                           = DFI_ADDRESS_P3[3:3];
assign DFI_ADDRESS_P3_slice_4[4]                           = DFI_ADDRESS_P3[4:4];
assign DFI_ADDRESS_P3_slice_5[5]                           = DFI_ADDRESS_P3[5:5];
assign DFI_ADDRESS_P3_slice_6[6]                           = DFI_ADDRESS_P3[6:6];
assign DFI_ADDRESS_P3_slice_7[7]                           = DFI_ADDRESS_P3[7:7];
assign DFI_ADDRESS_P3_slice_8[8]                           = DFI_ADDRESS_P3[8:8];
assign DFI_ADDRESS_P3_slice_9[9]                           = DFI_ADDRESS_P3[9:9];
assign DFI_ADDRESS_P3_slice_10[10]                         = DFI_ADDRESS_P3[10:10];
assign DFI_ADDRESS_P3_slice_11[11]                         = DFI_ADDRESS_P3[11:11];
assign DFI_ADDRESS_P3_slice_12[12]                         = DFI_ADDRESS_P3[12:12];
assign DFI_ADDRESS_P3_slice_13[13]                         = DFI_ADDRESS_P3[13:13];
assign DFI_ADDRESS_P3_slice_14[14]                         = DFI_ADDRESS_P3[14:14];
assign DFI_ADDRESS_P3_slice_15[15]                         = DFI_ADDRESS_P3[15:15];
assign DFI_BANK_P0_slice_0[0]                              = DFI_BANK_P0[0:0];
assign DFI_BANK_P0_slice_1[1]                              = DFI_BANK_P0[1:1];
assign DFI_BANK_P0_slice_2[2]                              = DFI_BANK_P0[2:2];
assign DFI_BANK_P1_slice_0[0]                              = DFI_BANK_P1[0:0];
assign DFI_BANK_P1_slice_1[1]                              = DFI_BANK_P1[1:1];
assign DFI_BANK_P1_slice_2[2]                              = DFI_BANK_P1[2:2];
assign DFI_BANK_P2_slice_0[0]                              = DFI_BANK_P2[0:0];
assign DFI_BANK_P2_slice_1[1]                              = DFI_BANK_P2[1:1];
assign DFI_BANK_P2_slice_2[2]                              = DFI_BANK_P2[2:2];
assign DFI_BANK_P3_slice_0[0]                              = DFI_BANK_P3[0:0];
assign DFI_BANK_P3_slice_1[1]                              = DFI_BANK_P3[1:1];
assign DFI_BANK_P3_slice_2[2]                              = DFI_BANK_P3[2:2];
assign DFI_RDDATA_EN_P0_slice_0[0]                         = DFI_RDDATA_EN_P0[0:0];
assign DFI_RDDATA_EN_P1_slice_0[0]                         = DFI_RDDATA_EN_P1[0:0];
assign DFI_RDDATA_EN_P2_slice_0[0]                         = DFI_RDDATA_EN_P2[0:0];
assign DFI_RDDATA_EN_P3_slice_0[0]                         = DFI_RDDATA_EN_P3[0:0];
assign DFI_WRDATA_EN_P0_slice_0[0]                         = DFI_WRDATA_EN_P0[0:0];
assign DFI_WRDATA_EN_P1_slice_0[0]                         = DFI_WRDATA_EN_P1[0:0];
assign DFI_WRDATA_EN_P2_slice_0[0]                         = DFI_WRDATA_EN_P2[0:0];
assign DFI_WRDATA_EN_P3_slice_0[0]                         = DFI_WRDATA_EN_P3[0:0];
assign DFI_WRDATA_MASK_P0_slice_0[0]                       = DFI_WRDATA_MASK_P0[0:0];
assign DFI_WRDATA_MASK_P0_slice_1[2]                       = DFI_WRDATA_MASK_P0[2:2];
assign DFI_WRDATA_MASK_P0_slice_2[1]                       = DFI_WRDATA_MASK_P0[1:1];
assign DFI_WRDATA_MASK_P0_slice_3[3]                       = DFI_WRDATA_MASK_P0[3:3];
assign DFI_WRDATA_MASK_P1_slice_0[0]                       = DFI_WRDATA_MASK_P1[0:0];
assign DFI_WRDATA_MASK_P1_slice_1[2]                       = DFI_WRDATA_MASK_P1[2:2];
assign DFI_WRDATA_MASK_P1_slice_2[1]                       = DFI_WRDATA_MASK_P1[1:1];
assign DFI_WRDATA_MASK_P1_slice_3[3]                       = DFI_WRDATA_MASK_P1[3:3];
assign DFI_WRDATA_MASK_P2_slice_0[0]                       = DFI_WRDATA_MASK_P2[0:0];
assign DFI_WRDATA_MASK_P2_slice_1[2]                       = DFI_WRDATA_MASK_P2[2:2];
assign DFI_WRDATA_MASK_P2_slice_2[1]                       = DFI_WRDATA_MASK_P2[1:1];
assign DFI_WRDATA_MASK_P2_slice_3[3]                       = DFI_WRDATA_MASK_P2[3:3];
assign DFI_WRDATA_MASK_P3_slice_0[0]                       = DFI_WRDATA_MASK_P3[0:0];
assign DFI_WRDATA_MASK_P3_slice_1[2]                       = DFI_WRDATA_MASK_P3[2:2];
assign DFI_WRDATA_MASK_P3_slice_2[1]                       = DFI_WRDATA_MASK_P3[1:1];
assign DFI_WRDATA_MASK_P3_slice_3[3]                       = DFI_WRDATA_MASK_P3[3:3];
assign DFI_WRDATA_P0_slice_0[0]                            = DFI_WRDATA_P0[0:0];
assign DFI_WRDATA_P0_slice_1[16]                           = DFI_WRDATA_P0[16:16];
assign DFI_WRDATA_P0_slice_2[1]                            = DFI_WRDATA_P0[1:1];
assign DFI_WRDATA_P0_slice_3[17]                           = DFI_WRDATA_P0[17:17];
assign DFI_WRDATA_P0_slice_4[2]                            = DFI_WRDATA_P0[2:2];
assign DFI_WRDATA_P0_slice_5[18]                           = DFI_WRDATA_P0[18:18];
assign DFI_WRDATA_P0_slice_6[3]                            = DFI_WRDATA_P0[3:3];
assign DFI_WRDATA_P0_slice_7[19]                           = DFI_WRDATA_P0[19:19];
assign DFI_WRDATA_P0_slice_8[4]                            = DFI_WRDATA_P0[4:4];
assign DFI_WRDATA_P0_slice_9[20]                           = DFI_WRDATA_P0[20:20];
assign DFI_WRDATA_P0_slice_10[5]                           = DFI_WRDATA_P0[5:5];
assign DFI_WRDATA_P0_slice_11[21]                          = DFI_WRDATA_P0[21:21];
assign DFI_WRDATA_P0_slice_12[6]                           = DFI_WRDATA_P0[6:6];
assign DFI_WRDATA_P0_slice_13[22]                          = DFI_WRDATA_P0[22:22];
assign DFI_WRDATA_P0_slice_14[7]                           = DFI_WRDATA_P0[7:7];
assign DFI_WRDATA_P0_slice_15[23]                          = DFI_WRDATA_P0[23:23];
assign DFI_WRDATA_P0_slice_16[8]                           = DFI_WRDATA_P0[8:8];
assign DFI_WRDATA_P0_slice_17[24]                          = DFI_WRDATA_P0[24:24];
assign DFI_WRDATA_P0_slice_18[9]                           = DFI_WRDATA_P0[9:9];
assign DFI_WRDATA_P0_slice_19[25]                          = DFI_WRDATA_P0[25:25];
assign DFI_WRDATA_P0_slice_20[10]                          = DFI_WRDATA_P0[10:10];
assign DFI_WRDATA_P0_slice_21[26]                          = DFI_WRDATA_P0[26:26];
assign DFI_WRDATA_P0_slice_22[11]                          = DFI_WRDATA_P0[11:11];
assign DFI_WRDATA_P0_slice_23[27]                          = DFI_WRDATA_P0[27:27];
assign DFI_WRDATA_P0_slice_24[12]                          = DFI_WRDATA_P0[12:12];
assign DFI_WRDATA_P0_slice_25[28]                          = DFI_WRDATA_P0[28:28];
assign DFI_WRDATA_P0_slice_26[13]                          = DFI_WRDATA_P0[13:13];
assign DFI_WRDATA_P0_slice_27[29]                          = DFI_WRDATA_P0[29:29];
assign DFI_WRDATA_P0_slice_28[14]                          = DFI_WRDATA_P0[14:14];
assign DFI_WRDATA_P0_slice_29[30]                          = DFI_WRDATA_P0[30:30];
assign DFI_WRDATA_P0_slice_30[15]                          = DFI_WRDATA_P0[15:15];
assign DFI_WRDATA_P0_slice_31[31]                          = DFI_WRDATA_P0[31:31];
assign DFI_WRDATA_P1_slice_0[0]                            = DFI_WRDATA_P1[0:0];
assign DFI_WRDATA_P1_slice_1[16]                           = DFI_WRDATA_P1[16:16];
assign DFI_WRDATA_P1_slice_2[1]                            = DFI_WRDATA_P1[1:1];
assign DFI_WRDATA_P1_slice_3[17]                           = DFI_WRDATA_P1[17:17];
assign DFI_WRDATA_P1_slice_4[2]                            = DFI_WRDATA_P1[2:2];
assign DFI_WRDATA_P1_slice_5[18]                           = DFI_WRDATA_P1[18:18];
assign DFI_WRDATA_P1_slice_6[3]                            = DFI_WRDATA_P1[3:3];
assign DFI_WRDATA_P1_slice_7[19]                           = DFI_WRDATA_P1[19:19];
assign DFI_WRDATA_P1_slice_8[4]                            = DFI_WRDATA_P1[4:4];
assign DFI_WRDATA_P1_slice_9[20]                           = DFI_WRDATA_P1[20:20];
assign DFI_WRDATA_P1_slice_10[5]                           = DFI_WRDATA_P1[5:5];
assign DFI_WRDATA_P1_slice_11[21]                          = DFI_WRDATA_P1[21:21];
assign DFI_WRDATA_P1_slice_12[6]                           = DFI_WRDATA_P1[6:6];
assign DFI_WRDATA_P1_slice_13[22]                          = DFI_WRDATA_P1[22:22];
assign DFI_WRDATA_P1_slice_14[7]                           = DFI_WRDATA_P1[7:7];
assign DFI_WRDATA_P1_slice_15[23]                          = DFI_WRDATA_P1[23:23];
assign DFI_WRDATA_P1_slice_16[8]                           = DFI_WRDATA_P1[8:8];
assign DFI_WRDATA_P1_slice_17[24]                          = DFI_WRDATA_P1[24:24];
assign DFI_WRDATA_P1_slice_18[9]                           = DFI_WRDATA_P1[9:9];
assign DFI_WRDATA_P1_slice_19[25]                          = DFI_WRDATA_P1[25:25];
assign DFI_WRDATA_P1_slice_20[10]                          = DFI_WRDATA_P1[10:10];
assign DFI_WRDATA_P1_slice_21[26]                          = DFI_WRDATA_P1[26:26];
assign DFI_WRDATA_P1_slice_22[11]                          = DFI_WRDATA_P1[11:11];
assign DFI_WRDATA_P1_slice_23[27]                          = DFI_WRDATA_P1[27:27];
assign DFI_WRDATA_P1_slice_24[12]                          = DFI_WRDATA_P1[12:12];
assign DFI_WRDATA_P1_slice_25[28]                          = DFI_WRDATA_P1[28:28];
assign DFI_WRDATA_P1_slice_26[13]                          = DFI_WRDATA_P1[13:13];
assign DFI_WRDATA_P1_slice_27[29]                          = DFI_WRDATA_P1[29:29];
assign DFI_WRDATA_P1_slice_28[14]                          = DFI_WRDATA_P1[14:14];
assign DFI_WRDATA_P1_slice_29[30]                          = DFI_WRDATA_P1[30:30];
assign DFI_WRDATA_P1_slice_30[15]                          = DFI_WRDATA_P1[15:15];
assign DFI_WRDATA_P1_slice_31[31]                          = DFI_WRDATA_P1[31:31];
assign DFI_WRDATA_P2_slice_0[0]                            = DFI_WRDATA_P2[0:0];
assign DFI_WRDATA_P2_slice_1[16]                           = DFI_WRDATA_P2[16:16];
assign DFI_WRDATA_P2_slice_2[1]                            = DFI_WRDATA_P2[1:1];
assign DFI_WRDATA_P2_slice_3[17]                           = DFI_WRDATA_P2[17:17];
assign DFI_WRDATA_P2_slice_4[2]                            = DFI_WRDATA_P2[2:2];
assign DFI_WRDATA_P2_slice_5[18]                           = DFI_WRDATA_P2[18:18];
assign DFI_WRDATA_P2_slice_6[3]                            = DFI_WRDATA_P2[3:3];
assign DFI_WRDATA_P2_slice_7[19]                           = DFI_WRDATA_P2[19:19];
assign DFI_WRDATA_P2_slice_8[4]                            = DFI_WRDATA_P2[4:4];
assign DFI_WRDATA_P2_slice_9[20]                           = DFI_WRDATA_P2[20:20];
assign DFI_WRDATA_P2_slice_10[5]                           = DFI_WRDATA_P2[5:5];
assign DFI_WRDATA_P2_slice_11[21]                          = DFI_WRDATA_P2[21:21];
assign DFI_WRDATA_P2_slice_12[6]                           = DFI_WRDATA_P2[6:6];
assign DFI_WRDATA_P2_slice_13[22]                          = DFI_WRDATA_P2[22:22];
assign DFI_WRDATA_P2_slice_14[7]                           = DFI_WRDATA_P2[7:7];
assign DFI_WRDATA_P2_slice_15[23]                          = DFI_WRDATA_P2[23:23];
assign DFI_WRDATA_P2_slice_16[8]                           = DFI_WRDATA_P2[8:8];
assign DFI_WRDATA_P2_slice_17[24]                          = DFI_WRDATA_P2[24:24];
assign DFI_WRDATA_P2_slice_18[9]                           = DFI_WRDATA_P2[9:9];
assign DFI_WRDATA_P2_slice_19[25]                          = DFI_WRDATA_P2[25:25];
assign DFI_WRDATA_P2_slice_20[10]                          = DFI_WRDATA_P2[10:10];
assign DFI_WRDATA_P2_slice_21[26]                          = DFI_WRDATA_P2[26:26];
assign DFI_WRDATA_P2_slice_22[11]                          = DFI_WRDATA_P2[11:11];
assign DFI_WRDATA_P2_slice_23[27]                          = DFI_WRDATA_P2[27:27];
assign DFI_WRDATA_P2_slice_24[12]                          = DFI_WRDATA_P2[12:12];
assign DFI_WRDATA_P2_slice_25[28]                          = DFI_WRDATA_P2[28:28];
assign DFI_WRDATA_P2_slice_26[13]                          = DFI_WRDATA_P2[13:13];
assign DFI_WRDATA_P2_slice_27[29]                          = DFI_WRDATA_P2[29:29];
assign DFI_WRDATA_P2_slice_28[14]                          = DFI_WRDATA_P2[14:14];
assign DFI_WRDATA_P2_slice_29[30]                          = DFI_WRDATA_P2[30:30];
assign DFI_WRDATA_P2_slice_30[15]                          = DFI_WRDATA_P2[15:15];
assign DFI_WRDATA_P2_slice_31[31]                          = DFI_WRDATA_P2[31:31];
assign DFI_WRDATA_P3_slice_0[0]                            = DFI_WRDATA_P3[0:0];
assign DFI_WRDATA_P3_slice_1[16]                           = DFI_WRDATA_P3[16:16];
assign DFI_WRDATA_P3_slice_2[1]                            = DFI_WRDATA_P3[1:1];
assign DFI_WRDATA_P3_slice_3[17]                           = DFI_WRDATA_P3[17:17];
assign DFI_WRDATA_P3_slice_4[2]                            = DFI_WRDATA_P3[2:2];
assign DFI_WRDATA_P3_slice_5[18]                           = DFI_WRDATA_P3[18:18];
assign DFI_WRDATA_P3_slice_6[3]                            = DFI_WRDATA_P3[3:3];
assign DFI_WRDATA_P3_slice_7[19]                           = DFI_WRDATA_P3[19:19];
assign DFI_WRDATA_P3_slice_8[4]                            = DFI_WRDATA_P3[4:4];
assign DFI_WRDATA_P3_slice_9[20]                           = DFI_WRDATA_P3[20:20];
assign DFI_WRDATA_P3_slice_10[5]                           = DFI_WRDATA_P3[5:5];
assign DFI_WRDATA_P3_slice_11[21]                          = DFI_WRDATA_P3[21:21];
assign DFI_WRDATA_P3_slice_12[6]                           = DFI_WRDATA_P3[6:6];
assign DFI_WRDATA_P3_slice_13[22]                          = DFI_WRDATA_P3[22:22];
assign DFI_WRDATA_P3_slice_14[7]                           = DFI_WRDATA_P3[7:7];
assign DFI_WRDATA_P3_slice_15[23]                          = DFI_WRDATA_P3[23:23];
assign DFI_WRDATA_P3_slice_16[8]                           = DFI_WRDATA_P3[8:8];
assign DFI_WRDATA_P3_slice_17[24]                          = DFI_WRDATA_P3[24:24];
assign DFI_WRDATA_P3_slice_18[9]                           = DFI_WRDATA_P3[9:9];
assign DFI_WRDATA_P3_slice_19[25]                          = DFI_WRDATA_P3[25:25];
assign DFI_WRDATA_P3_slice_20[10]                          = DFI_WRDATA_P3[10:10];
assign DFI_WRDATA_P3_slice_21[26]                          = DFI_WRDATA_P3[26:26];
assign DFI_WRDATA_P3_slice_22[11]                          = DFI_WRDATA_P3[11:11];
assign DFI_WRDATA_P3_slice_23[27]                          = DFI_WRDATA_P3[27:27];
assign DFI_WRDATA_P3_slice_24[12]                          = DFI_WRDATA_P3[12:12];
assign DFI_WRDATA_P3_slice_25[28]                          = DFI_WRDATA_P3[28:28];
assign DFI_WRDATA_P3_slice_26[13]                          = DFI_WRDATA_P3[13:13];
assign DFI_WRDATA_P3_slice_27[29]                          = DFI_WRDATA_P3[29:29];
assign DFI_WRDATA_P3_slice_28[14]                          = DFI_WRDATA_P3[14:14];
assign DFI_WRDATA_P3_slice_29[30]                          = DFI_WRDATA_P3[30:30];
assign DFI_WRDATA_P3_slice_30[15]                          = DFI_WRDATA_P3[15:15];
assign DFI_WRDATA_P3_slice_31[31]                          = DFI_WRDATA_P3[31:31];
assign IOD_A_12_RX_DATA_03to3[3]                           = RX_DATA_0_net_0[3:3];
assign IOD_BCLK_TRAINING_RX_DATA_00to0[0]                  = RX_DATA_0_net_1[0:0];
assign IOD_BCLK_TRAINING_RX_DATA_02to2[2]                  = RX_DATA_0_net_1[2:2];
assign IOD_BCLK_TRAINING_RX_DATA_04to4[4]                  = RX_DATA_0_net_1[4:4];
assign IOD_BCLK_TRAINING_RX_DATA_06to6[6]                  = RX_DATA_0_net_1[6:6];
assign IOD_REF_CLK_TRAINING_RX_DATA_06to6[6]               = RX_DATA_0_net_2[6:6];
assign IOD_TRAINING_0_CLK_SEL0to0[0]                       = CLK_SEL_net_0[0:0];
assign IOD_TRAINING_0_CLK_SEL1to1[1]                       = CLK_SEL_net_0[1:1];
assign IOD_TRAINING_0_CLK_SEL2to2[2]                       = CLK_SEL_net_0[2:2];
assign IOD_TRAINING_0_CLK_SEL3to3[3]                       = CLK_SEL_net_0[3:3];
assign IOD_TRAINING_0_CLK_SEL4to4[4]                       = CLK_SEL_net_0[4:4];
assign IOD_TRAINING_0_CLK_SEL5to5[5]                       = CLK_SEL_net_0[5:5];
assign IOD_TRAINING_0_DELAY_LINE_SEL_RD0to0[0]             = DELAY_LINE_SEL_RD_net_0[0:0];
assign IOD_TRAINING_0_DELAY_LINE_SEL_RD1to1[1]             = DELAY_LINE_SEL_RD_net_0[1:1];
assign IOD_TRAINING_0_DFI_BANK_P0_OUT0to0[0]               = DFI_BANK_P0_OUT_net_0[0:0];
assign IOD_TRAINING_0_DFI_BANK_P0_OUT1to1[1]               = DFI_BANK_P0_OUT_net_0[1:1];
assign IOD_TRAINING_0_DFI_BANK_P0_OUT2to2[2]               = DFI_BANK_P0_OUT_net_0[2:2];
assign IOD_TRAINING_0_DFI_BANK_P1_OUT0to0[0]               = DFI_BANK_P1_OUT_net_0[0:0];
assign IOD_TRAINING_0_DFI_BANK_P1_OUT1to1[1]               = DFI_BANK_P1_OUT_net_0[1:1];
assign IOD_TRAINING_0_DFI_BANK_P1_OUT2to2[2]               = DFI_BANK_P1_OUT_net_0[2:2];
assign IOD_TRAINING_0_DFI_BANK_P2_OUT0to0[0]               = DFI_BANK_P2_OUT_net_0[0:0];
assign IOD_TRAINING_0_DFI_BANK_P2_OUT1to1[1]               = DFI_BANK_P2_OUT_net_0[1:1];
assign IOD_TRAINING_0_DFI_BANK_P2_OUT2to2[2]               = DFI_BANK_P2_OUT_net_0[2:2];
assign IOD_TRAINING_0_DFI_BANK_P3_OUT0to0[0]               = DFI_BANK_P3_OUT_net_0[0:0];
assign IOD_TRAINING_0_DFI_BANK_P3_OUT1to1[1]               = DFI_BANK_P3_OUT_net_0[1:1];
assign IOD_TRAINING_0_DFI_BANK_P3_OUT2to2[2]               = DFI_BANK_P3_OUT_net_0[2:2];
assign IOD_TRAINING_0_DIRECTION0to0[0]                     = DIRECTION_net_0[0:0];
assign IOD_TRAINING_0_DIRECTION1to1[1]                     = DIRECTION_net_0[1:1];
assign IOD_TRAINING_0_DIRECTION2to2[2]                     = DIRECTION_net_0[2:2];
assign IOD_TRAINING_0_DIRECTION3to3[3]                     = DIRECTION_net_0[3:3];
assign IOD_TRAINING_0_DIRECTION4to4[4]                     = DIRECTION_net_0[4:4];
assign IOD_TRAINING_0_DIRECTION5to5[5]                     = DIRECTION_net_0[5:5];
assign IOD_TRAINING_0_DIRECTION6to6[6]                     = DIRECTION_net_0[6:6];
assign IOD_TRAINING_0_DIRECTION7to7[7]                     = DIRECTION_net_0[7:7];
assign IOD_TRAINING_0_DIRECTION8to8[8]                     = DIRECTION_net_0[8:8];
assign IOD_TRAINING_0_DIRECTION9to9[9]                     = DIRECTION_net_0[9:9];
assign IOD_TRAINING_0_DIRECTION10to10[10]                  = DIRECTION_net_0[10:10];
assign IOD_TRAINING_0_DIRECTION11to11[11]                  = DIRECTION_net_0[11:11];
assign IOD_TRAINING_0_DIRECTION12to12[12]                  = DIRECTION_net_0[12:12];
assign IOD_TRAINING_0_DIRECTION13to13[13]                  = DIRECTION_net_0[13:13];
assign IOD_TRAINING_0_DIRECTION14to14[14]                  = DIRECTION_net_0[14:14];
assign IOD_TRAINING_0_DIRECTION15to15[15]                  = DIRECTION_net_0[15:15];
assign IOD_TRAINING_0_DIRECTION16to16[16]                  = DIRECTION_net_0[16:16];
assign IOD_TRAINING_0_DIRECTION17to17[17]                  = DIRECTION_net_0[17:17];
assign IOD_TRAINING_0_DM_OE_P00to0[0]                      = DM_OE_P0_net_0[0:0];
assign IOD_TRAINING_0_DM_OE_P01to1[1]                      = DM_OE_P0_net_0[1:1];
assign IOD_TRAINING_0_DM_OE_P10to0[0]                      = DM_OE_P1_net_0[0:0];
assign IOD_TRAINING_0_DM_OE_P11to1[1]                      = DM_OE_P1_net_0[1:1];
assign IOD_TRAINING_0_DM_OE_P20to0[0]                      = DM_OE_P2_net_0[0:0];
assign IOD_TRAINING_0_DM_OE_P21to1[1]                      = DM_OE_P2_net_0[1:1];
assign IOD_TRAINING_0_DM_OE_P30to0[0]                      = DM_OE_P3_net_0[0:0];
assign IOD_TRAINING_0_DM_OE_P31to1[1]                      = DM_OE_P3_net_0[1:1];
assign IOD_TRAINING_0_DQS_OE_P00to0[0]                     = DQS_OE_P0_net_0[0:0];
assign IOD_TRAINING_0_DQS_OE_P01to1[1]                     = DQS_OE_P0_net_0[1:1];
assign IOD_TRAINING_0_DQS_OE_P10to0[0]                     = DQS_OE_P1_net_0[0:0];
assign IOD_TRAINING_0_DQS_OE_P11to1[1]                     = DQS_OE_P1_net_0[1:1];
assign IOD_TRAINING_0_DQS_OE_P20to0[0]                     = DQS_OE_P2_net_0[0:0];
assign IOD_TRAINING_0_DQS_OE_P21to1[1]                     = DQS_OE_P2_net_0[1:1];
assign IOD_TRAINING_0_DQS_OE_P30to0[0]                     = DQS_OE_P3_net_0[0:0];
assign IOD_TRAINING_0_DQS_OE_P31to1[1]                     = DQS_OE_P3_net_0[1:1];
assign IOD_TRAINING_0_DQSW270_DELAY_LINE_DIRECTION0to0[0]  = DQSW270_DELAY_LINE_DIRECTION_net_0[0:0];
assign IOD_TRAINING_0_DQSW270_DELAY_LINE_DIRECTION1to1[1]  = DQSW270_DELAY_LINE_DIRECTION_net_0[1:1];
assign IOD_TRAINING_0_DQSW270_DELAY_LINE_LOAD0to0[0]       = DQSW270_DELAY_LINE_LOAD_net_0[0:0];
assign IOD_TRAINING_0_DQSW270_DELAY_LINE_LOAD1to1[1]       = DQSW270_DELAY_LINE_LOAD_net_0[1:1];
assign IOD_TRAINING_0_DQSW270_DELAY_LINE_MOVE0to0[0]       = DQSW270_DELAY_LINE_MOVE_net_0[0:0];
assign IOD_TRAINING_0_DQSW270_DELAY_LINE_MOVE1to1[1]       = DQSW270_DELAY_LINE_MOVE_net_0[1:1];
assign IOD_TRAINING_0_DQSW270_EYE_MONITOR_CLR_FLAGS0to0[0] = DQSW270_EYE_MONITOR_CLR_FLAGS_net_0[0:0];
assign IOD_TRAINING_0_DQSW270_EYE_MONITOR_CLR_FLAGS1to1[1] = DQSW270_EYE_MONITOR_CLR_FLAGS_net_0[1:1];
assign IOD_TRAINING_0_DQSW_DELAY_LINE_DIRECTION0to0[0]     = DQSW_DELAY_LINE_DIRECTION_net_0[0:0];
assign IOD_TRAINING_0_DQSW_DELAY_LINE_DIRECTION1to1[1]     = DQSW_DELAY_LINE_DIRECTION_net_0[1:1];
assign IOD_TRAINING_0_DQSW_DELAY_LINE_LOAD0to0[0]          = DQSW_DELAY_LINE_LOAD_net_0[0:0];
assign IOD_TRAINING_0_DQSW_DELAY_LINE_LOAD1to1[1]          = DQSW_DELAY_LINE_LOAD_net_0[1:1];
assign IOD_TRAINING_0_DQSW_DELAY_LINE_MOVE0to0[0]          = DQSW_DELAY_LINE_MOVE_net_0[0:0];
assign IOD_TRAINING_0_DQSW_DELAY_LINE_MOVE1to1[1]          = DQSW_DELAY_LINE_MOVE_net_0[1:1];
assign IOD_TRAINING_0_DQSW_EYE_MONITOR_CLR_FLAGS0to0[0]    = DQSW_EYE_MONITOR_CLR_FLAGS_net_0[0:0];
assign IOD_TRAINING_0_DQSW_EYE_MONITOR_CLR_FLAGS1to1[1]    = DQSW_EYE_MONITOR_CLR_FLAGS_net_0[1:1];
assign IOD_TRAINING_0_DQSW_SELA7to0                        = DQSW_SELA_net_0[7:0];
assign IOD_TRAINING_0_DQSW_SELA15to8                       = DQSW_SELA_net_0[15:8];
assign IOD_TRAINING_0_INIT_PAUSE0to0[0]                    = INIT_PAUSE_net_0[0:0];
assign IOD_TRAINING_0_INIT_PAUSE1to1[1]                    = INIT_PAUSE_net_0[1:1];
assign IOD_TRAINING_0_IOG_ADDRESS_P00to0[0]                = IOG_ADDRESS_P0_net_0[0:0];
assign IOD_TRAINING_0_IOG_ADDRESS_P01to1[1]                = IOG_ADDRESS_P0_net_0[1:1];
assign IOD_TRAINING_0_IOG_ADDRESS_P02to2[2]                = IOG_ADDRESS_P0_net_0[2:2];
assign IOD_TRAINING_0_IOG_ADDRESS_P03to3[3]                = IOG_ADDRESS_P0_net_0[3:3];
assign IOD_TRAINING_0_IOG_ADDRESS_P04to4[4]                = IOG_ADDRESS_P0_net_0[4:4];
assign IOD_TRAINING_0_IOG_ADDRESS_P05to5[5]                = IOG_ADDRESS_P0_net_0[5:5];
assign IOD_TRAINING_0_IOG_ADDRESS_P06to6[6]                = IOG_ADDRESS_P0_net_0[6:6];
assign IOD_TRAINING_0_IOG_ADDRESS_P07to7[7]                = IOG_ADDRESS_P0_net_0[7:7];
assign IOD_TRAINING_0_IOG_ADDRESS_P08to8[8]                = IOG_ADDRESS_P0_net_0[8:8];
assign IOD_TRAINING_0_IOG_ADDRESS_P09to9[9]                = IOG_ADDRESS_P0_net_0[9:9];
assign IOD_TRAINING_0_IOG_ADDRESS_P10to0[0]                = IOG_ADDRESS_P1_net_0[0:0];
assign IOD_TRAINING_0_IOG_ADDRESS_P010to10[10]             = IOG_ADDRESS_P0_net_0[10:10];
assign IOD_TRAINING_0_IOG_ADDRESS_P11to1[1]                = IOG_ADDRESS_P1_net_0[1:1];
assign IOD_TRAINING_0_IOG_ADDRESS_P011to11[11]             = IOG_ADDRESS_P0_net_0[11:11];
assign IOD_TRAINING_0_IOG_ADDRESS_P12to2[2]                = IOG_ADDRESS_P1_net_0[2:2];
assign IOD_TRAINING_0_IOG_ADDRESS_P012to12[12]             = IOG_ADDRESS_P0_net_0[12:12];
assign IOD_TRAINING_0_IOG_ADDRESS_P13to3[3]                = IOG_ADDRESS_P1_net_0[3:3];
assign IOD_TRAINING_0_IOG_ADDRESS_P013to13[13]             = IOG_ADDRESS_P0_net_0[13:13];
assign IOD_TRAINING_0_IOG_ADDRESS_P14to4[4]                = IOG_ADDRESS_P1_net_0[4:4];
assign IOD_TRAINING_0_IOG_ADDRESS_P014to14[14]             = IOG_ADDRESS_P0_net_0[14:14];
assign IOD_TRAINING_0_IOG_ADDRESS_P15to5[5]                = IOG_ADDRESS_P1_net_0[5:5];
assign IOD_TRAINING_0_IOG_ADDRESS_P015to15[15]             = IOG_ADDRESS_P0_net_0[15:15];
assign IOD_TRAINING_0_IOG_ADDRESS_P16to6[6]                = IOG_ADDRESS_P1_net_0[6:6];
assign IOD_TRAINING_0_IOG_ADDRESS_P17to7[7]                = IOG_ADDRESS_P1_net_0[7:7];
assign IOD_TRAINING_0_IOG_ADDRESS_P18to8[8]                = IOG_ADDRESS_P1_net_0[8:8];
assign IOD_TRAINING_0_IOG_ADDRESS_P19to9[9]                = IOG_ADDRESS_P1_net_0[9:9];
assign IOD_TRAINING_0_IOG_ADDRESS_P20to0[0]                = IOG_ADDRESS_P2_net_0[0:0];
assign IOD_TRAINING_0_IOG_ADDRESS_P21to1[1]                = IOG_ADDRESS_P2_net_0[1:1];
assign IOD_TRAINING_0_IOG_ADDRESS_P22to2[2]                = IOG_ADDRESS_P2_net_0[2:2];
assign IOD_TRAINING_0_IOG_ADDRESS_P23to3[3]                = IOG_ADDRESS_P2_net_0[3:3];
assign IOD_TRAINING_0_IOG_ADDRESS_P24to4[4]                = IOG_ADDRESS_P2_net_0[4:4];
assign IOD_TRAINING_0_IOG_ADDRESS_P25to5[5]                = IOG_ADDRESS_P2_net_0[5:5];
assign IOD_TRAINING_0_IOG_ADDRESS_P26to6[6]                = IOG_ADDRESS_P2_net_0[6:6];
assign IOD_TRAINING_0_IOG_ADDRESS_P27to7[7]                = IOG_ADDRESS_P2_net_0[7:7];
assign IOD_TRAINING_0_IOG_ADDRESS_P28to8[8]                = IOG_ADDRESS_P2_net_0[8:8];
assign IOD_TRAINING_0_IOG_ADDRESS_P29to9[9]                = IOG_ADDRESS_P2_net_0[9:9];
assign IOD_TRAINING_0_IOG_ADDRESS_P30to0[0]                = IOG_ADDRESS_P3_net_0[0:0];
assign IOD_TRAINING_0_IOG_ADDRESS_P31to1[1]                = IOG_ADDRESS_P3_net_0[1:1];
assign IOD_TRAINING_0_IOG_ADDRESS_P32to2[2]                = IOG_ADDRESS_P3_net_0[2:2];
assign IOD_TRAINING_0_IOG_ADDRESS_P33to3[3]                = IOG_ADDRESS_P3_net_0[3:3];
assign IOD_TRAINING_0_IOG_ADDRESS_P34to4[4]                = IOG_ADDRESS_P3_net_0[4:4];
assign IOD_TRAINING_0_IOG_ADDRESS_P35to5[5]                = IOG_ADDRESS_P3_net_0[5:5];
assign IOD_TRAINING_0_IOG_ADDRESS_P36to6[6]                = IOG_ADDRESS_P3_net_0[6:6];
assign IOD_TRAINING_0_IOG_ADDRESS_P37to7[7]                = IOG_ADDRESS_P3_net_0[7:7];
assign IOD_TRAINING_0_IOG_ADDRESS_P38to8[8]                = IOG_ADDRESS_P3_net_0[8:8];
assign IOD_TRAINING_0_IOG_ADDRESS_P39to9[9]                = IOG_ADDRESS_P3_net_0[9:9];
assign IOD_TRAINING_0_IOG_ADDRESS_P110to10[10]             = IOG_ADDRESS_P1_net_0[10:10];
assign IOD_TRAINING_0_IOG_ADDRESS_P111to11[11]             = IOG_ADDRESS_P1_net_0[11:11];
assign IOD_TRAINING_0_IOG_ADDRESS_P112to12[12]             = IOG_ADDRESS_P1_net_0[12:12];
assign IOD_TRAINING_0_IOG_ADDRESS_P113to13[13]             = IOG_ADDRESS_P1_net_0[13:13];
assign IOD_TRAINING_0_IOG_ADDRESS_P114to14[14]             = IOG_ADDRESS_P1_net_0[14:14];
assign IOD_TRAINING_0_IOG_ADDRESS_P115to15[15]             = IOG_ADDRESS_P1_net_0[15:15];
assign IOD_TRAINING_0_IOG_ADDRESS_P210to10[10]             = IOG_ADDRESS_P2_net_0[10:10];
assign IOD_TRAINING_0_IOG_ADDRESS_P211to11[11]             = IOG_ADDRESS_P2_net_0[11:11];
assign IOD_TRAINING_0_IOG_ADDRESS_P212to12[12]             = IOG_ADDRESS_P2_net_0[12:12];
assign IOD_TRAINING_0_IOG_ADDRESS_P213to13[13]             = IOG_ADDRESS_P2_net_0[13:13];
assign IOD_TRAINING_0_IOG_ADDRESS_P214to14[14]             = IOG_ADDRESS_P2_net_0[14:14];
assign IOD_TRAINING_0_IOG_ADDRESS_P215to15[15]             = IOG_ADDRESS_P2_net_0[15:15];
assign IOD_TRAINING_0_IOG_ADDRESS_P310to10[10]             = IOG_ADDRESS_P3_net_0[10:10];
assign IOD_TRAINING_0_IOG_ADDRESS_P311to11[11]             = IOG_ADDRESS_P3_net_0[11:11];
assign IOD_TRAINING_0_IOG_ADDRESS_P312to12[12]             = IOG_ADDRESS_P3_net_0[12:12];
assign IOD_TRAINING_0_IOG_ADDRESS_P313to13[13]             = IOG_ADDRESS_P3_net_0[13:13];
assign IOD_TRAINING_0_IOG_ADDRESS_P314to14[14]             = IOG_ADDRESS_P3_net_0[14:14];
assign IOD_TRAINING_0_IOG_ADDRESS_P315to15[15]             = IOG_ADDRESS_P3_net_0[15:15];
assign IOD_TRAINING_0_IOG_DM_TXDATA_OUT0to0[0]             = IOG_DM_TXDATA_OUT_net_0[0:0];
assign IOD_TRAINING_0_IOG_DM_TXDATA_OUT1to1[1]             = IOG_DM_TXDATA_OUT_net_0[1:1];
assign IOD_TRAINING_0_IOG_DM_TXDATA_OUT2to2[2]             = IOG_DM_TXDATA_OUT_net_0[2:2];
assign IOD_TRAINING_0_IOG_DM_TXDATA_OUT3to3[3]             = IOG_DM_TXDATA_OUT_net_0[3:3];
assign IOD_TRAINING_0_IOG_DM_TXDATA_OUT4to4[4]             = IOG_DM_TXDATA_OUT_net_0[4:4];
assign IOD_TRAINING_0_IOG_DM_TXDATA_OUT5to5[5]             = IOG_DM_TXDATA_OUT_net_0[5:5];
assign IOD_TRAINING_0_IOG_DM_TXDATA_OUT6to6[6]             = IOG_DM_TXDATA_OUT_net_0[6:6];
assign IOD_TRAINING_0_IOG_DM_TXDATA_OUT7to7[7]             = IOG_DM_TXDATA_OUT_net_0[7:7];
assign IOD_TRAINING_0_IOG_DM_TXDATA_OUT8to8[8]             = IOG_DM_TXDATA_OUT_net_0[8:8];
assign IOD_TRAINING_0_IOG_DM_TXDATA_OUT9to9[9]             = IOG_DM_TXDATA_OUT_net_0[9:9];
assign IOD_TRAINING_0_IOG_DM_TXDATA_OUT10to10[10]          = IOG_DM_TXDATA_OUT_net_0[10:10];
assign IOD_TRAINING_0_IOG_DM_TXDATA_OUT11to11[11]          = IOG_DM_TXDATA_OUT_net_0[11:11];
assign IOD_TRAINING_0_IOG_DM_TXDATA_OUT12to12[12]          = IOG_DM_TXDATA_OUT_net_0[12:12];
assign IOD_TRAINING_0_IOG_DM_TXDATA_OUT13to13[13]          = IOG_DM_TXDATA_OUT_net_0[13:13];
assign IOD_TRAINING_0_IOG_DM_TXDATA_OUT14to14[14]          = IOG_DM_TXDATA_OUT_net_0[14:14];
assign IOD_TRAINING_0_IOG_DM_TXDATA_OUT15to15[15]          = IOG_DM_TXDATA_OUT_net_0[15:15];
assign IOD_TRAINING_0_IOG_DQ_TXDATA_OUT0to0[0]             = IOG_DQ_TXDATA_OUT_net_0[0:0];
assign IOD_TRAINING_0_IOG_DQ_TXDATA_OUT1to1[1]             = IOG_DQ_TXDATA_OUT_net_0[1:1];
assign IOD_TRAINING_0_IOG_DQ_TXDATA_OUT2to2[2]             = IOG_DQ_TXDATA_OUT_net_0[2:2];
assign IOD_TRAINING_0_IOG_DQ_TXDATA_OUT3to3[3]             = IOG_DQ_TXDATA_OUT_net_0[3:3];
assign IOD_TRAINING_0_IOG_DQ_TXDATA_OUT4to4[4]             = IOG_DQ_TXDATA_OUT_net_0[4:4];
assign IOD_TRAINING_0_IOG_DQ_TXDATA_OUT5to5[5]             = IOG_DQ_TXDATA_OUT_net_0[5:5];
assign IOD_TRAINING_0_IOG_DQ_TXDATA_OUT6to6[6]             = IOG_DQ_TXDATA_OUT_net_0[6:6];
assign IOD_TRAINING_0_IOG_DQ_TXDATA_OUT7to7[7]             = IOG_DQ_TXDATA_OUT_net_0[7:7];
assign IOD_TRAINING_0_IOG_DQ_TXDATA_OUT8to8[8]             = IOG_DQ_TXDATA_OUT_net_0[8:8];
assign IOD_TRAINING_0_IOG_DQ_TXDATA_OUT9to9[9]             = IOG_DQ_TXDATA_OUT_net_0[9:9];
assign IOD_TRAINING_0_IOG_DQ_TXDATA_OUT10to10[10]          = IOG_DQ_TXDATA_OUT_net_0[10:10];
assign IOD_TRAINING_0_IOG_DQ_TXDATA_OUT11to11[11]          = IOG_DQ_TXDATA_OUT_net_0[11:11];
assign IOD_TRAINING_0_IOG_DQ_TXDATA_OUT12to12[12]          = IOG_DQ_TXDATA_OUT_net_0[12:12];
assign IOD_TRAINING_0_IOG_DQ_TXDATA_OUT13to13[13]          = IOG_DQ_TXDATA_OUT_net_0[13:13];
assign IOD_TRAINING_0_IOG_DQ_TXDATA_OUT14to14[14]          = IOG_DQ_TXDATA_OUT_net_0[14:14];
assign IOD_TRAINING_0_IOG_DQ_TXDATA_OUT15to15[15]          = IOG_DQ_TXDATA_OUT_net_0[15:15];
assign IOD_TRAINING_0_IOG_DQ_TXDATA_OUT16to16[16]          = IOG_DQ_TXDATA_OUT_net_0[16:16];
assign IOD_TRAINING_0_IOG_DQ_TXDATA_OUT17to17[17]          = IOG_DQ_TXDATA_OUT_net_0[17:17];
assign IOD_TRAINING_0_IOG_DQ_TXDATA_OUT18to18[18]          = IOG_DQ_TXDATA_OUT_net_0[18:18];
assign IOD_TRAINING_0_IOG_DQ_TXDATA_OUT19to19[19]          = IOG_DQ_TXDATA_OUT_net_0[19:19];
assign IOD_TRAINING_0_IOG_DQ_TXDATA_OUT20to20[20]          = IOG_DQ_TXDATA_OUT_net_0[20:20];
assign IOD_TRAINING_0_IOG_DQ_TXDATA_OUT21to21[21]          = IOG_DQ_TXDATA_OUT_net_0[21:21];
assign IOD_TRAINING_0_IOG_DQ_TXDATA_OUT22to22[22]          = IOG_DQ_TXDATA_OUT_net_0[22:22];
assign IOD_TRAINING_0_IOG_DQ_TXDATA_OUT23to23[23]          = IOG_DQ_TXDATA_OUT_net_0[23:23];
assign IOD_TRAINING_0_IOG_DQ_TXDATA_OUT24to24[24]          = IOG_DQ_TXDATA_OUT_net_0[24:24];
assign IOD_TRAINING_0_IOG_DQ_TXDATA_OUT25to25[25]          = IOG_DQ_TXDATA_OUT_net_0[25:25];
assign IOD_TRAINING_0_IOG_DQ_TXDATA_OUT26to26[26]          = IOG_DQ_TXDATA_OUT_net_0[26:26];
assign IOD_TRAINING_0_IOG_DQ_TXDATA_OUT27to27[27]          = IOG_DQ_TXDATA_OUT_net_0[27:27];
assign IOD_TRAINING_0_IOG_DQ_TXDATA_OUT28to28[28]          = IOG_DQ_TXDATA_OUT_net_0[28:28];
assign IOD_TRAINING_0_IOG_DQ_TXDATA_OUT29to29[29]          = IOG_DQ_TXDATA_OUT_net_0[29:29];
assign IOD_TRAINING_0_IOG_DQ_TXDATA_OUT30to30[30]          = IOG_DQ_TXDATA_OUT_net_0[30:30];
assign IOD_TRAINING_0_IOG_DQ_TXDATA_OUT31to31[31]          = IOG_DQ_TXDATA_OUT_net_0[31:31];
assign IOD_TRAINING_0_IOG_DQ_TXDATA_OUT32to32[32]          = IOG_DQ_TXDATA_OUT_net_0[32:32];
assign IOD_TRAINING_0_IOG_DQ_TXDATA_OUT33to33[33]          = IOG_DQ_TXDATA_OUT_net_0[33:33];
assign IOD_TRAINING_0_IOG_DQ_TXDATA_OUT34to34[34]          = IOG_DQ_TXDATA_OUT_net_0[34:34];
assign IOD_TRAINING_0_IOG_DQ_TXDATA_OUT35to35[35]          = IOG_DQ_TXDATA_OUT_net_0[35:35];
assign IOD_TRAINING_0_IOG_DQ_TXDATA_OUT36to36[36]          = IOG_DQ_TXDATA_OUT_net_0[36:36];
assign IOD_TRAINING_0_IOG_DQ_TXDATA_OUT37to37[37]          = IOG_DQ_TXDATA_OUT_net_0[37:37];
assign IOD_TRAINING_0_IOG_DQ_TXDATA_OUT38to38[38]          = IOG_DQ_TXDATA_OUT_net_0[38:38];
assign IOD_TRAINING_0_IOG_DQ_TXDATA_OUT39to39[39]          = IOG_DQ_TXDATA_OUT_net_0[39:39];
assign IOD_TRAINING_0_IOG_DQ_TXDATA_OUT40to40[40]          = IOG_DQ_TXDATA_OUT_net_0[40:40];
assign IOD_TRAINING_0_IOG_DQ_TXDATA_OUT41to41[41]          = IOG_DQ_TXDATA_OUT_net_0[41:41];
assign IOD_TRAINING_0_IOG_DQ_TXDATA_OUT42to42[42]          = IOG_DQ_TXDATA_OUT_net_0[42:42];
assign IOD_TRAINING_0_IOG_DQ_TXDATA_OUT43to43[43]          = IOG_DQ_TXDATA_OUT_net_0[43:43];
assign IOD_TRAINING_0_IOG_DQ_TXDATA_OUT44to44[44]          = IOG_DQ_TXDATA_OUT_net_0[44:44];
assign IOD_TRAINING_0_IOG_DQ_TXDATA_OUT45to45[45]          = IOG_DQ_TXDATA_OUT_net_0[45:45];
assign IOD_TRAINING_0_IOG_DQ_TXDATA_OUT46to46[46]          = IOG_DQ_TXDATA_OUT_net_0[46:46];
assign IOD_TRAINING_0_IOG_DQ_TXDATA_OUT47to47[47]          = IOG_DQ_TXDATA_OUT_net_0[47:47];
assign IOD_TRAINING_0_IOG_DQ_TXDATA_OUT48to48[48]          = IOG_DQ_TXDATA_OUT_net_0[48:48];
assign IOD_TRAINING_0_IOG_DQ_TXDATA_OUT49to49[49]          = IOG_DQ_TXDATA_OUT_net_0[49:49];
assign IOD_TRAINING_0_IOG_DQ_TXDATA_OUT50to50[50]          = IOG_DQ_TXDATA_OUT_net_0[50:50];
assign IOD_TRAINING_0_IOG_DQ_TXDATA_OUT51to51[51]          = IOG_DQ_TXDATA_OUT_net_0[51:51];
assign IOD_TRAINING_0_IOG_DQ_TXDATA_OUT52to52[52]          = IOG_DQ_TXDATA_OUT_net_0[52:52];
assign IOD_TRAINING_0_IOG_DQ_TXDATA_OUT53to53[53]          = IOG_DQ_TXDATA_OUT_net_0[53:53];
assign IOD_TRAINING_0_IOG_DQ_TXDATA_OUT54to54[54]          = IOG_DQ_TXDATA_OUT_net_0[54:54];
assign IOD_TRAINING_0_IOG_DQ_TXDATA_OUT55to55[55]          = IOG_DQ_TXDATA_OUT_net_0[55:55];
assign IOD_TRAINING_0_IOG_DQ_TXDATA_OUT56to56[56]          = IOG_DQ_TXDATA_OUT_net_0[56:56];
assign IOD_TRAINING_0_IOG_DQ_TXDATA_OUT57to57[57]          = IOG_DQ_TXDATA_OUT_net_0[57:57];
assign IOD_TRAINING_0_IOG_DQ_TXDATA_OUT58to58[58]          = IOG_DQ_TXDATA_OUT_net_0[58:58];
assign IOD_TRAINING_0_IOG_DQ_TXDATA_OUT59to59[59]          = IOG_DQ_TXDATA_OUT_net_0[59:59];
assign IOD_TRAINING_0_IOG_DQ_TXDATA_OUT60to60[60]          = IOG_DQ_TXDATA_OUT_net_0[60:60];
assign IOD_TRAINING_0_IOG_DQ_TXDATA_OUT61to61[61]          = IOG_DQ_TXDATA_OUT_net_0[61:61];
assign IOD_TRAINING_0_IOG_DQ_TXDATA_OUT62to62[62]          = IOG_DQ_TXDATA_OUT_net_0[62:62];
assign IOD_TRAINING_0_IOG_DQ_TXDATA_OUT63to63[63]          = IOG_DQ_TXDATA_OUT_net_0[63:63];
assign IOD_TRAINING_0_IOG_DQ_TXDATA_OUT64to64[64]          = IOG_DQ_TXDATA_OUT_net_0[64:64];
assign IOD_TRAINING_0_IOG_DQ_TXDATA_OUT65to65[65]          = IOG_DQ_TXDATA_OUT_net_0[65:65];
assign IOD_TRAINING_0_IOG_DQ_TXDATA_OUT66to66[66]          = IOG_DQ_TXDATA_OUT_net_0[66:66];
assign IOD_TRAINING_0_IOG_DQ_TXDATA_OUT67to67[67]          = IOG_DQ_TXDATA_OUT_net_0[67:67];
assign IOD_TRAINING_0_IOG_DQ_TXDATA_OUT68to68[68]          = IOG_DQ_TXDATA_OUT_net_0[68:68];
assign IOD_TRAINING_0_IOG_DQ_TXDATA_OUT69to69[69]          = IOG_DQ_TXDATA_OUT_net_0[69:69];
assign IOD_TRAINING_0_IOG_DQ_TXDATA_OUT70to70[70]          = IOG_DQ_TXDATA_OUT_net_0[70:70];
assign IOD_TRAINING_0_IOG_DQ_TXDATA_OUT71to71[71]          = IOG_DQ_TXDATA_OUT_net_0[71:71];
assign IOD_TRAINING_0_IOG_DQ_TXDATA_OUT72to72[72]          = IOG_DQ_TXDATA_OUT_net_0[72:72];
assign IOD_TRAINING_0_IOG_DQ_TXDATA_OUT73to73[73]          = IOG_DQ_TXDATA_OUT_net_0[73:73];
assign IOD_TRAINING_0_IOG_DQ_TXDATA_OUT74to74[74]          = IOG_DQ_TXDATA_OUT_net_0[74:74];
assign IOD_TRAINING_0_IOG_DQ_TXDATA_OUT75to75[75]          = IOG_DQ_TXDATA_OUT_net_0[75:75];
assign IOD_TRAINING_0_IOG_DQ_TXDATA_OUT76to76[76]          = IOG_DQ_TXDATA_OUT_net_0[76:76];
assign IOD_TRAINING_0_IOG_DQ_TXDATA_OUT77to77[77]          = IOG_DQ_TXDATA_OUT_net_0[77:77];
assign IOD_TRAINING_0_IOG_DQ_TXDATA_OUT78to78[78]          = IOG_DQ_TXDATA_OUT_net_0[78:78];
assign IOD_TRAINING_0_IOG_DQ_TXDATA_OUT79to79[79]          = IOG_DQ_TXDATA_OUT_net_0[79:79];
assign IOD_TRAINING_0_IOG_DQ_TXDATA_OUT80to80[80]          = IOG_DQ_TXDATA_OUT_net_0[80:80];
assign IOD_TRAINING_0_IOG_DQ_TXDATA_OUT81to81[81]          = IOG_DQ_TXDATA_OUT_net_0[81:81];
assign IOD_TRAINING_0_IOG_DQ_TXDATA_OUT82to82[82]          = IOG_DQ_TXDATA_OUT_net_0[82:82];
assign IOD_TRAINING_0_IOG_DQ_TXDATA_OUT83to83[83]          = IOG_DQ_TXDATA_OUT_net_0[83:83];
assign IOD_TRAINING_0_IOG_DQ_TXDATA_OUT84to84[84]          = IOG_DQ_TXDATA_OUT_net_0[84:84];
assign IOD_TRAINING_0_IOG_DQ_TXDATA_OUT85to85[85]          = IOG_DQ_TXDATA_OUT_net_0[85:85];
assign IOD_TRAINING_0_IOG_DQ_TXDATA_OUT86to86[86]          = IOG_DQ_TXDATA_OUT_net_0[86:86];
assign IOD_TRAINING_0_IOG_DQ_TXDATA_OUT87to87[87]          = IOG_DQ_TXDATA_OUT_net_0[87:87];
assign IOD_TRAINING_0_IOG_DQ_TXDATA_OUT88to88[88]          = IOG_DQ_TXDATA_OUT_net_0[88:88];
assign IOD_TRAINING_0_IOG_DQ_TXDATA_OUT89to89[89]          = IOG_DQ_TXDATA_OUT_net_0[89:89];
assign IOD_TRAINING_0_IOG_DQ_TXDATA_OUT90to90[90]          = IOG_DQ_TXDATA_OUT_net_0[90:90];
assign IOD_TRAINING_0_IOG_DQ_TXDATA_OUT91to91[91]          = IOG_DQ_TXDATA_OUT_net_0[91:91];
assign IOD_TRAINING_0_IOG_DQ_TXDATA_OUT92to92[92]          = IOG_DQ_TXDATA_OUT_net_0[92:92];
assign IOD_TRAINING_0_IOG_DQ_TXDATA_OUT93to93[93]          = IOG_DQ_TXDATA_OUT_net_0[93:93];
assign IOD_TRAINING_0_IOG_DQ_TXDATA_OUT94to94[94]          = IOG_DQ_TXDATA_OUT_net_0[94:94];
assign IOD_TRAINING_0_IOG_DQ_TXDATA_OUT95to95[95]          = IOG_DQ_TXDATA_OUT_net_0[95:95];
assign IOD_TRAINING_0_IOG_DQ_TXDATA_OUT96to96[96]          = IOG_DQ_TXDATA_OUT_net_0[96:96];
assign IOD_TRAINING_0_IOG_DQ_TXDATA_OUT97to97[97]          = IOG_DQ_TXDATA_OUT_net_0[97:97];
assign IOD_TRAINING_0_IOG_DQ_TXDATA_OUT98to98[98]          = IOG_DQ_TXDATA_OUT_net_0[98:98];
assign IOD_TRAINING_0_IOG_DQ_TXDATA_OUT99to99[99]          = IOG_DQ_TXDATA_OUT_net_0[99:99];
assign IOD_TRAINING_0_IOG_DQ_TXDATA_OUT100to100[100]       = IOG_DQ_TXDATA_OUT_net_0[100:100];
assign IOD_TRAINING_0_IOG_DQ_TXDATA_OUT101to101[101]       = IOG_DQ_TXDATA_OUT_net_0[101:101];
assign IOD_TRAINING_0_IOG_DQ_TXDATA_OUT102to102[102]       = IOG_DQ_TXDATA_OUT_net_0[102:102];
assign IOD_TRAINING_0_IOG_DQ_TXDATA_OUT103to103[103]       = IOG_DQ_TXDATA_OUT_net_0[103:103];
assign IOD_TRAINING_0_IOG_DQ_TXDATA_OUT104to104[104]       = IOG_DQ_TXDATA_OUT_net_0[104:104];
assign IOD_TRAINING_0_IOG_DQ_TXDATA_OUT105to105[105]       = IOG_DQ_TXDATA_OUT_net_0[105:105];
assign IOD_TRAINING_0_IOG_DQ_TXDATA_OUT106to106[106]       = IOG_DQ_TXDATA_OUT_net_0[106:106];
assign IOD_TRAINING_0_IOG_DQ_TXDATA_OUT107to107[107]       = IOG_DQ_TXDATA_OUT_net_0[107:107];
assign IOD_TRAINING_0_IOG_DQ_TXDATA_OUT108to108[108]       = IOG_DQ_TXDATA_OUT_net_0[108:108];
assign IOD_TRAINING_0_IOG_DQ_TXDATA_OUT109to109[109]       = IOG_DQ_TXDATA_OUT_net_0[109:109];
assign IOD_TRAINING_0_IOG_DQ_TXDATA_OUT110to110[110]       = IOG_DQ_TXDATA_OUT_net_0[110:110];
assign IOD_TRAINING_0_IOG_DQ_TXDATA_OUT111to111[111]       = IOG_DQ_TXDATA_OUT_net_0[111:111];
assign IOD_TRAINING_0_IOG_DQ_TXDATA_OUT112to112[112]       = IOG_DQ_TXDATA_OUT_net_0[112:112];
assign IOD_TRAINING_0_IOG_DQ_TXDATA_OUT113to113[113]       = IOG_DQ_TXDATA_OUT_net_0[113:113];
assign IOD_TRAINING_0_IOG_DQ_TXDATA_OUT114to114[114]       = IOG_DQ_TXDATA_OUT_net_0[114:114];
assign IOD_TRAINING_0_IOG_DQ_TXDATA_OUT115to115[115]       = IOG_DQ_TXDATA_OUT_net_0[115:115];
assign IOD_TRAINING_0_IOG_DQ_TXDATA_OUT116to116[116]       = IOG_DQ_TXDATA_OUT_net_0[116:116];
assign IOD_TRAINING_0_IOG_DQ_TXDATA_OUT117to117[117]       = IOG_DQ_TXDATA_OUT_net_0[117:117];
assign IOD_TRAINING_0_IOG_DQ_TXDATA_OUT118to118[118]       = IOG_DQ_TXDATA_OUT_net_0[118:118];
assign IOD_TRAINING_0_IOG_DQ_TXDATA_OUT119to119[119]       = IOG_DQ_TXDATA_OUT_net_0[119:119];
assign IOD_TRAINING_0_IOG_DQ_TXDATA_OUT120to120[120]       = IOG_DQ_TXDATA_OUT_net_0[120:120];
assign IOD_TRAINING_0_IOG_DQ_TXDATA_OUT121to121[121]       = IOG_DQ_TXDATA_OUT_net_0[121:121];
assign IOD_TRAINING_0_IOG_DQ_TXDATA_OUT122to122[122]       = IOG_DQ_TXDATA_OUT_net_0[122:122];
assign IOD_TRAINING_0_IOG_DQ_TXDATA_OUT123to123[123]       = IOG_DQ_TXDATA_OUT_net_0[123:123];
assign IOD_TRAINING_0_IOG_DQ_TXDATA_OUT124to124[124]       = IOG_DQ_TXDATA_OUT_net_0[124:124];
assign IOD_TRAINING_0_IOG_DQ_TXDATA_OUT125to125[125]       = IOG_DQ_TXDATA_OUT_net_0[125:125];
assign IOD_TRAINING_0_IOG_DQ_TXDATA_OUT126to126[126]       = IOG_DQ_TXDATA_OUT_net_0[126:126];
assign IOD_TRAINING_0_IOG_DQ_TXDATA_OUT127to127[127]       = IOG_DQ_TXDATA_OUT_net_0[127:127];
assign IOD_TRAINING_0_IOG_OE_P00to0[0]                     = IOG_OE_P0_net_0[0:0];
assign IOD_TRAINING_0_IOG_OE_P01to1[1]                     = IOG_OE_P0_net_0[1:1];
assign IOD_TRAINING_0_IOG_OE_P10to0[0]                     = IOG_OE_P1_net_0[0:0];
assign IOD_TRAINING_0_IOG_OE_P11to1[1]                     = IOG_OE_P1_net_0[1:1];
assign IOD_TRAINING_0_IOG_OE_P20to0[0]                     = IOG_OE_P2_net_0[0:0];
assign IOD_TRAINING_0_IOG_OE_P21to1[1]                     = IOG_OE_P2_net_0[1:1];
assign IOD_TRAINING_0_IOG_OE_P30to0[0]                     = IOG_OE_P3_net_0[0:0];
assign IOD_TRAINING_0_IOG_OE_P31to1[1]                     = IOG_OE_P3_net_0[1:1];
assign IOD_TRAINING_0_IOG_RDDATA_EN_P0_N0to0[0]            = IOG_RDDATA_EN_P0_N_net_0[0:0];
assign IOD_TRAINING_0_IOG_RDDATA_EN_P0_N1to1[1]            = IOG_RDDATA_EN_P0_N_net_0[1:1];
assign IOD_TRAINING_0_IOG_RDDATA_EN_P0_P0to0[0]            = IOG_RDDATA_EN_P0_P_net_0[0:0];
assign IOD_TRAINING_0_IOG_RDDATA_EN_P0_P1to1[1]            = IOG_RDDATA_EN_P0_P_net_0[1:1];
assign IOD_TRAINING_0_IOG_RDDATA_EN_P1_N0to0[0]            = IOG_RDDATA_EN_P1_N_net_0[0:0];
assign IOD_TRAINING_0_IOG_RDDATA_EN_P1_N1to1[1]            = IOG_RDDATA_EN_P1_N_net_0[1:1];
assign IOD_TRAINING_0_IOG_RDDATA_EN_P1_P0to0[0]            = IOG_RDDATA_EN_P1_P_net_0[0:0];
assign IOD_TRAINING_0_IOG_RDDATA_EN_P1_P1to1[1]            = IOG_RDDATA_EN_P1_P_net_0[1:1];
assign IOD_TRAINING_0_IOG_RDDATA_EN_P2_N0to0[0]            = IOG_RDDATA_EN_P2_N_net_0[0:0];
assign IOD_TRAINING_0_IOG_RDDATA_EN_P2_N1to1[1]            = IOG_RDDATA_EN_P2_N_net_0[1:1];
assign IOD_TRAINING_0_IOG_RDDATA_EN_P2_P0to0[0]            = IOG_RDDATA_EN_P2_P_net_0[0:0];
assign IOD_TRAINING_0_IOG_RDDATA_EN_P2_P1to1[1]            = IOG_RDDATA_EN_P2_P_net_0[1:1];
assign IOD_TRAINING_0_IOG_RDDATA_EN_P3_N0to0[0]            = IOG_RDDATA_EN_P3_N_net_0[0:0];
assign IOD_TRAINING_0_IOG_RDDATA_EN_P3_N1to1[1]            = IOG_RDDATA_EN_P3_N_net_0[1:1];
assign IOD_TRAINING_0_IOG_RDDATA_EN_P3_P0to0[0]            = IOG_RDDATA_EN_P3_P_net_0[0:0];
assign IOD_TRAINING_0_IOG_RDDATA_EN_P3_P1to1[1]            = IOG_RDDATA_EN_P3_P_net_0[1:1];
assign IOD_TRAINING_0_LOAD0to0[0]                          = LOAD_net_0[0:0];
assign IOD_TRAINING_0_LOAD1to1[1]                          = LOAD_net_0[1:1];
assign IOD_TRAINING_0_LOAD2to2[2]                          = LOAD_net_0[2:2];
assign IOD_TRAINING_0_LOAD3to3[3]                          = LOAD_net_0[3:3];
assign IOD_TRAINING_0_LOAD4to4[4]                          = LOAD_net_0[4:4];
assign IOD_TRAINING_0_LOAD5to5[5]                          = LOAD_net_0[5:5];
assign IOD_TRAINING_0_LOAD6to6[6]                          = LOAD_net_0[6:6];
assign IOD_TRAINING_0_LOAD7to7[7]                          = LOAD_net_0[7:7];
assign IOD_TRAINING_0_LOAD8to8[8]                          = LOAD_net_0[8:8];
assign IOD_TRAINING_0_LOAD9to9[9]                          = LOAD_net_0[9:9];
assign IOD_TRAINING_0_LOAD10to10[10]                       = LOAD_net_0[10:10];
assign IOD_TRAINING_0_LOAD11to11[11]                       = LOAD_net_0[11:11];
assign IOD_TRAINING_0_LOAD12to12[12]                       = LOAD_net_0[12:12];
assign IOD_TRAINING_0_LOAD13to13[13]                       = LOAD_net_0[13:13];
assign IOD_TRAINING_0_LOAD14to14[14]                       = LOAD_net_0[14:14];
assign IOD_TRAINING_0_LOAD15to15[15]                       = LOAD_net_0[15:15];
assign IOD_TRAINING_0_LOAD16to16[16]                       = LOAD_net_0[16:16];
assign IOD_TRAINING_0_LOAD17to17[17]                       = LOAD_net_0[17:17];
assign IOD_TRAINING_0_MOVE0to0[0]                          = MOVE_net_0[0:0];
assign IOD_TRAINING_0_MOVE1to1[1]                          = MOVE_net_0[1:1];
assign IOD_TRAINING_0_MOVE2to2[2]                          = MOVE_net_0[2:2];
assign IOD_TRAINING_0_MOVE3to3[3]                          = MOVE_net_0[3:3];
assign IOD_TRAINING_0_MOVE4to4[4]                          = MOVE_net_0[4:4];
assign IOD_TRAINING_0_MOVE5to5[5]                          = MOVE_net_0[5:5];
assign IOD_TRAINING_0_MOVE6to6[6]                          = MOVE_net_0[6:6];
assign IOD_TRAINING_0_MOVE7to7[7]                          = MOVE_net_0[7:7];
assign IOD_TRAINING_0_MOVE8to8[8]                          = MOVE_net_0[8:8];
assign IOD_TRAINING_0_MOVE9to9[9]                          = MOVE_net_0[9:9];
assign IOD_TRAINING_0_MOVE10to10[10]                       = MOVE_net_0[10:10];
assign IOD_TRAINING_0_MOVE11to11[11]                       = MOVE_net_0[11:11];
assign IOD_TRAINING_0_MOVE12to12[12]                       = MOVE_net_0[12:12];
assign IOD_TRAINING_0_MOVE13to13[13]                       = MOVE_net_0[13:13];
assign IOD_TRAINING_0_MOVE14to14[14]                       = MOVE_net_0[14:14];
assign IOD_TRAINING_0_MOVE15to15[15]                       = MOVE_net_0[15:15];
assign IOD_TRAINING_0_MOVE16to16[16]                       = MOVE_net_0[16:16];
assign IOD_TRAINING_0_MOVE17to17[17]                       = MOVE_net_0[17:17];
assign LANE_0_IOD_DQ_RX_DATA_00to0[0]                      = RX_DATA_0_net_3[0:0];
assign LANE_0_IOD_DQ_RX_DATA_01to1[1]                      = RX_DATA_0_net_3[1:1];
assign LANE_0_IOD_DQ_RX_DATA_02to2[2]                      = RX_DATA_0_net_3[2:2];
assign LANE_0_IOD_DQ_RX_DATA_03to3[3]                      = RX_DATA_0_net_3[3:3];
assign LANE_0_IOD_DQ_RX_DATA_04to4[4]                      = RX_DATA_0_net_3[4:4];
assign LANE_0_IOD_DQ_RX_DATA_05to5[5]                      = RX_DATA_0_net_3[5:5];
assign LANE_0_IOD_DQ_RX_DATA_06to6[6]                      = RX_DATA_0_net_3[6:6];
assign LANE_0_IOD_DQ_RX_DATA_07to7[7]                      = RX_DATA_0_net_3[7:7];
assign LANE_0_IOD_DQ_RX_DATA_10to0[0]                      = RX_DATA_1_net_0[0:0];
assign LANE_0_IOD_DQ_RX_DATA_11to1[1]                      = RX_DATA_1_net_0[1:1];
assign LANE_0_IOD_DQ_RX_DATA_12to2[2]                      = RX_DATA_1_net_0[2:2];
assign LANE_0_IOD_DQ_RX_DATA_13to3[3]                      = RX_DATA_1_net_0[3:3];
assign LANE_0_IOD_DQ_RX_DATA_14to4[4]                      = RX_DATA_1_net_0[4:4];
assign LANE_0_IOD_DQ_RX_DATA_15to5[5]                      = RX_DATA_1_net_0[5:5];
assign LANE_0_IOD_DQ_RX_DATA_16to6[6]                      = RX_DATA_1_net_0[6:6];
assign LANE_0_IOD_DQ_RX_DATA_17to7[7]                      = RX_DATA_1_net_0[7:7];
assign LANE_0_IOD_DQ_RX_DATA_20to0[0]                      = RX_DATA_2_net_0[0:0];
assign LANE_0_IOD_DQ_RX_DATA_21to1[1]                      = RX_DATA_2_net_0[1:1];
assign LANE_0_IOD_DQ_RX_DATA_22to2[2]                      = RX_DATA_2_net_0[2:2];
assign LANE_0_IOD_DQ_RX_DATA_23to3[3]                      = RX_DATA_2_net_0[3:3];
assign LANE_0_IOD_DQ_RX_DATA_24to4[4]                      = RX_DATA_2_net_0[4:4];
assign LANE_0_IOD_DQ_RX_DATA_25to5[5]                      = RX_DATA_2_net_0[5:5];
assign LANE_0_IOD_DQ_RX_DATA_26to6[6]                      = RX_DATA_2_net_0[6:6];
assign LANE_0_IOD_DQ_RX_DATA_27to7[7]                      = RX_DATA_2_net_0[7:7];
assign LANE_0_IOD_DQ_RX_DATA_30to0[0]                      = RX_DATA_3_net_0[0:0];
assign LANE_0_IOD_DQ_RX_DATA_31to1[1]                      = RX_DATA_3_net_0[1:1];
assign LANE_0_IOD_DQ_RX_DATA_32to2[2]                      = RX_DATA_3_net_0[2:2];
assign LANE_0_IOD_DQ_RX_DATA_33to3[3]                      = RX_DATA_3_net_0[3:3];
assign LANE_0_IOD_DQ_RX_DATA_34to4[4]                      = RX_DATA_3_net_0[4:4];
assign LANE_0_IOD_DQ_RX_DATA_35to5[5]                      = RX_DATA_3_net_0[5:5];
assign LANE_0_IOD_DQ_RX_DATA_36to6[6]                      = RX_DATA_3_net_0[6:6];
assign LANE_0_IOD_DQ_RX_DATA_37to7[7]                      = RX_DATA_3_net_0[7:7];
assign LANE_0_IOD_DQ_RX_DATA_40to0[0]                      = RX_DATA_4_net_0[0:0];
assign LANE_0_IOD_DQ_RX_DATA_41to1[1]                      = RX_DATA_4_net_0[1:1];
assign LANE_0_IOD_DQ_RX_DATA_42to2[2]                      = RX_DATA_4_net_0[2:2];
assign LANE_0_IOD_DQ_RX_DATA_43to3[3]                      = RX_DATA_4_net_0[3:3];
assign LANE_0_IOD_DQ_RX_DATA_44to4[4]                      = RX_DATA_4_net_0[4:4];
assign LANE_0_IOD_DQ_RX_DATA_45to5[5]                      = RX_DATA_4_net_0[5:5];
assign LANE_0_IOD_DQ_RX_DATA_46to6[6]                      = RX_DATA_4_net_0[6:6];
assign LANE_0_IOD_DQ_RX_DATA_47to7[7]                      = RX_DATA_4_net_0[7:7];
assign LANE_0_IOD_DQ_RX_DATA_50to0[0]                      = RX_DATA_5_net_0[0:0];
assign LANE_0_IOD_DQ_RX_DATA_51to1[1]                      = RX_DATA_5_net_0[1:1];
assign LANE_0_IOD_DQ_RX_DATA_52to2[2]                      = RX_DATA_5_net_0[2:2];
assign LANE_0_IOD_DQ_RX_DATA_53to3[3]                      = RX_DATA_5_net_0[3:3];
assign LANE_0_IOD_DQ_RX_DATA_54to4[4]                      = RX_DATA_5_net_0[4:4];
assign LANE_0_IOD_DQ_RX_DATA_55to5[5]                      = RX_DATA_5_net_0[5:5];
assign LANE_0_IOD_DQ_RX_DATA_56to6[6]                      = RX_DATA_5_net_0[6:6];
assign LANE_0_IOD_DQ_RX_DATA_57to7[7]                      = RX_DATA_5_net_0[7:7];
assign LANE_0_IOD_DQ_RX_DATA_60to0[0]                      = RX_DATA_6_net_0[0:0];
assign LANE_0_IOD_DQ_RX_DATA_61to1[1]                      = RX_DATA_6_net_0[1:1];
assign LANE_0_IOD_DQ_RX_DATA_62to2[2]                      = RX_DATA_6_net_0[2:2];
assign LANE_0_IOD_DQ_RX_DATA_63to3[3]                      = RX_DATA_6_net_0[3:3];
assign LANE_0_IOD_DQ_RX_DATA_64to4[4]                      = RX_DATA_6_net_0[4:4];
assign LANE_0_IOD_DQ_RX_DATA_65to5[5]                      = RX_DATA_6_net_0[5:5];
assign LANE_0_IOD_DQ_RX_DATA_66to6[6]                      = RX_DATA_6_net_0[6:6];
assign LANE_0_IOD_DQ_RX_DATA_67to7[7]                      = RX_DATA_6_net_0[7:7];
assign LANE_0_IOD_DQ_RX_DATA_70to0[0]                      = RX_DATA_7_net_0[0:0];
assign LANE_0_IOD_DQ_RX_DATA_71to1[1]                      = RX_DATA_7_net_0[1:1];
assign LANE_0_IOD_DQ_RX_DATA_72to2[2]                      = RX_DATA_7_net_0[2:2];
assign LANE_0_IOD_DQ_RX_DATA_73to3[3]                      = RX_DATA_7_net_0[3:3];
assign LANE_0_IOD_DQ_RX_DATA_74to4[4]                      = RX_DATA_7_net_0[4:4];
assign LANE_0_IOD_DQ_RX_DATA_75to5[5]                      = RX_DATA_7_net_0[5:5];
assign LANE_0_IOD_DQ_RX_DATA_76to6[6]                      = RX_DATA_7_net_0[6:6];
assign LANE_0_IOD_DQ_RX_DATA_77to7[7]                      = RX_DATA_7_net_0[7:7];
assign LANE_0_IOD_DQSW_TRAINING_RX_DATA_00to0[0]           = RX_DATA_0_net_4[0:0];
assign LANE_0_IOD_DQSW_TRAINING_RX_DATA_01to1[1]           = RX_DATA_0_net_4[1:1];
assign LANE_0_IOD_READ_TRAINING_RX_DATA_06to6[6]           = RX_DATA_0_net_5[6:6];
assign LANE_0_IOD_READ_TRAINING_RX_DATA_07to7[7]           = RX_DATA_0_net_5[7:7];
assign LANE_1_IOD_DQ_RX_DATA_00to0[0]                      = RX_DATA_0_net_6[0:0];
assign LANE_1_IOD_DQ_RX_DATA_01to1[1]                      = RX_DATA_0_net_6[1:1];
assign LANE_1_IOD_DQ_RX_DATA_02to2[2]                      = RX_DATA_0_net_6[2:2];
assign LANE_1_IOD_DQ_RX_DATA_03to3[3]                      = RX_DATA_0_net_6[3:3];
assign LANE_1_IOD_DQ_RX_DATA_04to4[4]                      = RX_DATA_0_net_6[4:4];
assign LANE_1_IOD_DQ_RX_DATA_05to5[5]                      = RX_DATA_0_net_6[5:5];
assign LANE_1_IOD_DQ_RX_DATA_06to6[6]                      = RX_DATA_0_net_6[6:6];
assign LANE_1_IOD_DQ_RX_DATA_07to7[7]                      = RX_DATA_0_net_6[7:7];
assign LANE_1_IOD_DQ_RX_DATA_10to0[0]                      = RX_DATA_1_net_1[0:0];
assign LANE_1_IOD_DQ_RX_DATA_11to1[1]                      = RX_DATA_1_net_1[1:1];
assign LANE_1_IOD_DQ_RX_DATA_12to2[2]                      = RX_DATA_1_net_1[2:2];
assign LANE_1_IOD_DQ_RX_DATA_13to3[3]                      = RX_DATA_1_net_1[3:3];
assign LANE_1_IOD_DQ_RX_DATA_14to4[4]                      = RX_DATA_1_net_1[4:4];
assign LANE_1_IOD_DQ_RX_DATA_15to5[5]                      = RX_DATA_1_net_1[5:5];
assign LANE_1_IOD_DQ_RX_DATA_16to6[6]                      = RX_DATA_1_net_1[6:6];
assign LANE_1_IOD_DQ_RX_DATA_17to7[7]                      = RX_DATA_1_net_1[7:7];
assign LANE_1_IOD_DQ_RX_DATA_20to0[0]                      = RX_DATA_2_net_1[0:0];
assign LANE_1_IOD_DQ_RX_DATA_21to1[1]                      = RX_DATA_2_net_1[1:1];
assign LANE_1_IOD_DQ_RX_DATA_22to2[2]                      = RX_DATA_2_net_1[2:2];
assign LANE_1_IOD_DQ_RX_DATA_23to3[3]                      = RX_DATA_2_net_1[3:3];
assign LANE_1_IOD_DQ_RX_DATA_24to4[4]                      = RX_DATA_2_net_1[4:4];
assign LANE_1_IOD_DQ_RX_DATA_25to5[5]                      = RX_DATA_2_net_1[5:5];
assign LANE_1_IOD_DQ_RX_DATA_26to6[6]                      = RX_DATA_2_net_1[6:6];
assign LANE_1_IOD_DQ_RX_DATA_27to7[7]                      = RX_DATA_2_net_1[7:7];
assign LANE_1_IOD_DQ_RX_DATA_30to0[0]                      = RX_DATA_3_net_1[0:0];
assign LANE_1_IOD_DQ_RX_DATA_31to1[1]                      = RX_DATA_3_net_1[1:1];
assign LANE_1_IOD_DQ_RX_DATA_32to2[2]                      = RX_DATA_3_net_1[2:2];
assign LANE_1_IOD_DQ_RX_DATA_33to3[3]                      = RX_DATA_3_net_1[3:3];
assign LANE_1_IOD_DQ_RX_DATA_34to4[4]                      = RX_DATA_3_net_1[4:4];
assign LANE_1_IOD_DQ_RX_DATA_35to5[5]                      = RX_DATA_3_net_1[5:5];
assign LANE_1_IOD_DQ_RX_DATA_36to6[6]                      = RX_DATA_3_net_1[6:6];
assign LANE_1_IOD_DQ_RX_DATA_37to7[7]                      = RX_DATA_3_net_1[7:7];
assign LANE_1_IOD_DQ_RX_DATA_40to0[0]                      = RX_DATA_4_net_1[0:0];
assign LANE_1_IOD_DQ_RX_DATA_41to1[1]                      = RX_DATA_4_net_1[1:1];
assign LANE_1_IOD_DQ_RX_DATA_42to2[2]                      = RX_DATA_4_net_1[2:2];
assign LANE_1_IOD_DQ_RX_DATA_43to3[3]                      = RX_DATA_4_net_1[3:3];
assign LANE_1_IOD_DQ_RX_DATA_44to4[4]                      = RX_DATA_4_net_1[4:4];
assign LANE_1_IOD_DQ_RX_DATA_45to5[5]                      = RX_DATA_4_net_1[5:5];
assign LANE_1_IOD_DQ_RX_DATA_46to6[6]                      = RX_DATA_4_net_1[6:6];
assign LANE_1_IOD_DQ_RX_DATA_47to7[7]                      = RX_DATA_4_net_1[7:7];
assign LANE_1_IOD_DQ_RX_DATA_50to0[0]                      = RX_DATA_5_net_1[0:0];
assign LANE_1_IOD_DQ_RX_DATA_51to1[1]                      = RX_DATA_5_net_1[1:1];
assign LANE_1_IOD_DQ_RX_DATA_52to2[2]                      = RX_DATA_5_net_1[2:2];
assign LANE_1_IOD_DQ_RX_DATA_53to3[3]                      = RX_DATA_5_net_1[3:3];
assign LANE_1_IOD_DQ_RX_DATA_54to4[4]                      = RX_DATA_5_net_1[4:4];
assign LANE_1_IOD_DQ_RX_DATA_55to5[5]                      = RX_DATA_5_net_1[5:5];
assign LANE_1_IOD_DQ_RX_DATA_56to6[6]                      = RX_DATA_5_net_1[6:6];
assign LANE_1_IOD_DQ_RX_DATA_57to7[7]                      = RX_DATA_5_net_1[7:7];
assign LANE_1_IOD_DQ_RX_DATA_60to0[0]                      = RX_DATA_6_net_1[0:0];
assign LANE_1_IOD_DQ_RX_DATA_61to1[1]                      = RX_DATA_6_net_1[1:1];
assign LANE_1_IOD_DQ_RX_DATA_62to2[2]                      = RX_DATA_6_net_1[2:2];
assign LANE_1_IOD_DQ_RX_DATA_63to3[3]                      = RX_DATA_6_net_1[3:3];
assign LANE_1_IOD_DQ_RX_DATA_64to4[4]                      = RX_DATA_6_net_1[4:4];
assign LANE_1_IOD_DQ_RX_DATA_65to5[5]                      = RX_DATA_6_net_1[5:5];
assign LANE_1_IOD_DQ_RX_DATA_66to6[6]                      = RX_DATA_6_net_1[6:6];
assign LANE_1_IOD_DQ_RX_DATA_67to7[7]                      = RX_DATA_6_net_1[7:7];
assign LANE_1_IOD_DQ_RX_DATA_70to0[0]                      = RX_DATA_7_net_1[0:0];
assign LANE_1_IOD_DQ_RX_DATA_71to1[1]                      = RX_DATA_7_net_1[1:1];
assign LANE_1_IOD_DQ_RX_DATA_72to2[2]                      = RX_DATA_7_net_1[2:2];
assign LANE_1_IOD_DQ_RX_DATA_73to3[3]                      = RX_DATA_7_net_1[3:3];
assign LANE_1_IOD_DQ_RX_DATA_74to4[4]                      = RX_DATA_7_net_1[4:4];
assign LANE_1_IOD_DQ_RX_DATA_75to5[5]                      = RX_DATA_7_net_1[5:5];
assign LANE_1_IOD_DQ_RX_DATA_76to6[6]                      = RX_DATA_7_net_1[6:6];
assign LANE_1_IOD_DQ_RX_DATA_77to7[7]                      = RX_DATA_7_net_1[7:7];
assign LANE_1_IOD_DQSW_TRAINING_RX_DATA_00to0[0]           = RX_DATA_0_net_7[0:0];
assign LANE_1_IOD_DQSW_TRAINING_RX_DATA_01to1[1]           = RX_DATA_0_net_7[1:1];
assign LANE_1_IOD_READ_TRAINING_RX_DATA_06to6[6]           = RX_DATA_0_net_8[6:6];
assign LANE_1_IOD_READ_TRAINING_RX_DATA_07to7[7]           = RX_DATA_0_net_8[7:7];
assign RX_DATA_0_slice_0[0]                                = RX_DATA_0_net_0[0:0];
assign RX_DATA_0_slice_1[1]                                = RX_DATA_0_net_0[1:1];
assign RX_DATA_0_slice_2[2]                                = RX_DATA_0_net_0[2:2];
assign RX_DATA_0_slice_3[1]                                = RX_DATA_0_net_1[1:1];
assign RX_DATA_0_slice_4[3]                                = RX_DATA_0_net_1[3:3];
assign RX_DATA_0_slice_5[5]                                = RX_DATA_0_net_1[5:5];
assign RX_DATA_0_slice_6[7]                                = RX_DATA_0_net_1[7:7];
assign RX_DATA_0_slice_7[0]                                = RX_DATA_0_net_2[0:0];
assign RX_DATA_0_slice_8[1]                                = RX_DATA_0_net_2[1:1];
assign RX_DATA_0_slice_9[2]                                = RX_DATA_0_net_2[2:2];
assign RX_DATA_0_slice_10[3]                               = RX_DATA_0_net_2[3:3];
assign RX_DATA_0_slice_11[4]                               = RX_DATA_0_net_2[4:4];
assign RX_DATA_0_slice_12[5]                               = RX_DATA_0_net_2[5:5];
assign RX_DATA_0_slice_13[7]                               = RX_DATA_0_net_2[7:7];
assign ODT_DYN_LANE_slice_0[0]                             = ODT_DYN_LANE_net_0[0:0];
assign ODT_DYN_LANE_slice_1[1]                             = ODT_DYN_LANE_net_0[1:1];
assign IOG_WRDATA_MASK_P0_slice_0[0]                       = IOG_WRDATA_MASK_P0_net_0[0:0];
assign IOG_WRDATA_MASK_P0_slice_1[1]                       = IOG_WRDATA_MASK_P0_net_0[1:1];
assign IOG_WRDATA_MASK_P0_slice_2[2]                       = IOG_WRDATA_MASK_P0_net_0[2:2];
assign IOG_WRDATA_MASK_P0_slice_3[3]                       = IOG_WRDATA_MASK_P0_net_0[3:3];
assign IOG_WRDATA_MASK_P1_slice_0[0]                       = IOG_WRDATA_MASK_P1_net_0[0:0];
assign IOG_WRDATA_MASK_P1_slice_1[1]                       = IOG_WRDATA_MASK_P1_net_0[1:1];
assign IOG_WRDATA_MASK_P1_slice_2[2]                       = IOG_WRDATA_MASK_P1_net_0[2:2];
assign IOG_WRDATA_MASK_P1_slice_3[3]                       = IOG_WRDATA_MASK_P1_net_0[3:3];
assign IOG_WRDATA_MASK_P2_slice_0[0]                       = IOG_WRDATA_MASK_P2_net_0[0:0];
assign IOG_WRDATA_MASK_P2_slice_1[1]                       = IOG_WRDATA_MASK_P2_net_0[1:1];
assign IOG_WRDATA_MASK_P2_slice_2[2]                       = IOG_WRDATA_MASK_P2_net_0[2:2];
assign IOG_WRDATA_MASK_P2_slice_3[3]                       = IOG_WRDATA_MASK_P2_net_0[3:3];
assign IOG_WRDATA_MASK_P3_slice_0[0]                       = IOG_WRDATA_MASK_P3_net_0[0:0];
assign IOG_WRDATA_MASK_P3_slice_1[1]                       = IOG_WRDATA_MASK_P3_net_0[1:1];
assign IOG_WRDATA_MASK_P3_slice_2[2]                       = IOG_WRDATA_MASK_P3_net_0[2:2];
assign IOG_WRDATA_MASK_P3_slice_3[3]                       = IOG_WRDATA_MASK_P3_net_0[3:3];
assign IOG_ADDRESS_P0_slice_0[16]                          = IOG_ADDRESS_P0_net_0[16:16];
assign IOG_ADDRESS_P0_slice_1[17]                          = IOG_ADDRESS_P0_net_0[17:17];
assign IOG_ADDRESS_P0_slice_2[18]                          = IOG_ADDRESS_P0_net_0[18:18];
assign IOG_ADDRESS_P0_slice_3[19]                          = IOG_ADDRESS_P0_net_0[19:19];
assign IOG_ADDRESS_P1_slice_0[16]                          = IOG_ADDRESS_P1_net_0[16:16];
assign IOG_ADDRESS_P1_slice_1[17]                          = IOG_ADDRESS_P1_net_0[17:17];
assign IOG_ADDRESS_P1_slice_2[18]                          = IOG_ADDRESS_P1_net_0[18:18];
assign IOG_ADDRESS_P1_slice_3[19]                          = IOG_ADDRESS_P1_net_0[19:19];
assign IOG_ADDRESS_P2_slice_0[16]                          = IOG_ADDRESS_P2_net_0[16:16];
assign IOG_ADDRESS_P2_slice_1[17]                          = IOG_ADDRESS_P2_net_0[17:17];
assign IOG_ADDRESS_P2_slice_2[18]                          = IOG_ADDRESS_P2_net_0[18:18];
assign IOG_ADDRESS_P2_slice_3[19]                          = IOG_ADDRESS_P2_net_0[19:19];
assign IOG_ADDRESS_P3_slice_0[16]                          = IOG_ADDRESS_P3_net_0[16:16];
assign IOG_ADDRESS_P3_slice_1[17]                          = IOG_ADDRESS_P3_net_0[17:17];
assign IOG_ADDRESS_P3_slice_2[18]                          = IOG_ADDRESS_P3_net_0[18:18];
assign IOG_ADDRESS_P3_slice_3[19]                          = IOG_ADDRESS_P3_net_0[19:19];
assign RX_DATA_0_slice_14[0]                               = RX_DATA_0_net_5[0:0];
assign RX_DATA_0_slice_15[1]                               = RX_DATA_0_net_5[1:1];
assign RX_DATA_0_slice_16[2]                               = RX_DATA_0_net_5[2:2];
assign RX_DATA_0_slice_17[3]                               = RX_DATA_0_net_5[3:3];
assign RX_DATA_0_slice_18[4]                               = RX_DATA_0_net_5[4:4];
assign RX_DATA_0_slice_19[5]                               = RX_DATA_0_net_5[5:5];
assign RX_DATA_0_slice_20[0]                               = RX_DATA_0_net_8[0:0];
assign RX_DATA_0_slice_21[1]                               = RX_DATA_0_net_8[1:1];
assign RX_DATA_0_slice_22[2]                               = RX_DATA_0_net_8[2:2];
assign RX_DATA_0_slice_23[3]                               = RX_DATA_0_net_8[3:3];
assign RX_DATA_0_slice_24[4]                               = RX_DATA_0_net_8[4:4];
assign RX_DATA_0_slice_25[5]                               = RX_DATA_0_net_8[5:5];
//--------------------------------------------------------------------
// Concatenation assignments
//--------------------------------------------------------------------
assign TX_DATA_0_net_0                 = { IOD_TRAINING_0_IOG_ADDRESS_P30to0[0] , IOD_TRAINING_0_IOG_ADDRESS_P20to0[0] , IOD_TRAINING_0_IOG_ADDRESS_P10to0[0] , IOD_TRAINING_0_IOG_ADDRESS_P00to0[0] };
assign TX_DATA_1_net_0                 = { IOD_TRAINING_0_IOG_ADDRESS_P31to1[1] , IOD_TRAINING_0_IOG_ADDRESS_P21to1[1] , IOD_TRAINING_0_IOG_ADDRESS_P11to1[1] , IOD_TRAINING_0_IOG_ADDRESS_P01to1[1] };
assign TX_DATA_2_net_0                 = { IOD_TRAINING_0_IOG_ADDRESS_P32to2[2] , IOD_TRAINING_0_IOG_ADDRESS_P22to2[2] , IOD_TRAINING_0_IOG_ADDRESS_P12to2[2] , IOD_TRAINING_0_IOG_ADDRESS_P02to2[2] };
assign TX_DATA_3_net_0                 = { IOD_TRAINING_0_IOG_ADDRESS_P33to3[3] , IOD_TRAINING_0_IOG_ADDRESS_P23to3[3] , IOD_TRAINING_0_IOG_ADDRESS_P13to3[3] , IOD_TRAINING_0_IOG_ADDRESS_P03to3[3] };
assign TX_DATA_4_net_0                 = { IOD_TRAINING_0_IOG_ADDRESS_P34to4[4] , IOD_TRAINING_0_IOG_ADDRESS_P24to4[4] , IOD_TRAINING_0_IOG_ADDRESS_P14to4[4] , IOD_TRAINING_0_IOG_ADDRESS_P04to4[4] };
assign TX_DATA_5_net_0                 = { IOD_TRAINING_0_IOG_ADDRESS_P35to5[5] , IOD_TRAINING_0_IOG_ADDRESS_P25to5[5] , IOD_TRAINING_0_IOG_ADDRESS_P15to5[5] , IOD_TRAINING_0_IOG_ADDRESS_P05to5[5] };
assign TX_DATA_6_net_0                 = { IOD_TRAINING_0_IOG_ADDRESS_P36to6[6] , IOD_TRAINING_0_IOG_ADDRESS_P26to6[6] , IOD_TRAINING_0_IOG_ADDRESS_P16to6[6] , IOD_TRAINING_0_IOG_ADDRESS_P06to6[6] };
assign TX_DATA_7_net_0                 = { IOD_TRAINING_0_IOG_ADDRESS_P37to7[7] , IOD_TRAINING_0_IOG_ADDRESS_P27to7[7] , IOD_TRAINING_0_IOG_ADDRESS_P17to7[7] , IOD_TRAINING_0_IOG_ADDRESS_P07to7[7] };
assign TX_DATA_8_net_0                 = { IOD_TRAINING_0_IOG_ADDRESS_P38to8[8] , IOD_TRAINING_0_IOG_ADDRESS_P28to8[8] , IOD_TRAINING_0_IOG_ADDRESS_P18to8[8] , IOD_TRAINING_0_IOG_ADDRESS_P08to8[8] };
assign TX_DATA_9_net_0                 = { IOD_TRAINING_0_IOG_ADDRESS_P39to9[9] , IOD_TRAINING_0_IOG_ADDRESS_P29to9[9] , IOD_TRAINING_0_IOG_ADDRESS_P19to9[9] , IOD_TRAINING_0_IOG_ADDRESS_P09to9[9] };
assign TX_DATA_10_net_0                = { IOD_TRAINING_0_IOG_ADDRESS_P310to10[10] , IOD_TRAINING_0_IOG_ADDRESS_P210to10[10] , IOD_TRAINING_0_IOG_ADDRESS_P110to10[10] , IOD_TRAINING_0_IOG_ADDRESS_P010to10[10] };
assign TX_DATA_11_net_0                = { IOD_TRAINING_0_IOG_ADDRESS_P311to11[11] , IOD_TRAINING_0_IOG_ADDRESS_P211to11[11] , IOD_TRAINING_0_IOG_ADDRESS_P111to11[11] , IOD_TRAINING_0_IOG_ADDRESS_P011to11[11] };
assign TX_DATA_0_net_1                 = { IOD_TRAINING_0_IOG_ADDRESS_P312to12[12] , IOD_TRAINING_0_IOG_ADDRESS_P212to12[12] , IOD_TRAINING_0_IOG_ADDRESS_P112to12[12] , IOD_TRAINING_0_IOG_ADDRESS_P012to12[12] };
assign OE_DATA_0_net_0                 = { IOD_TRAINING_0_CMD_OE , IOD_TRAINING_0_CMD_OE , IOD_TRAINING_0_CMD_OE , IOD_TRAINING_0_CMD_OE };
assign TX_DATA_0_net_2                 = { IOD_TRAINING_0_IOG_ADDRESS_P313to13[13] , IOD_TRAINING_0_IOG_ADDRESS_P213to13[13] , IOD_TRAINING_0_IOG_ADDRESS_P113to13[13] , IOD_TRAINING_0_IOG_ADDRESS_P013to13[13] };
assign TX_DATA_0_net_3                 = { IOD_TRAINING_0_IOG_ADDRESS_P314to14[14] , IOD_TRAINING_0_IOG_ADDRESS_P214to14[14] , IOD_TRAINING_0_IOG_ADDRESS_P114to14[14] , IOD_TRAINING_0_IOG_ADDRESS_P014to14[14] };
assign TX_DATA_0_net_4                 = { IOD_TRAINING_0_IOG_ADDRESS_P315to15[15] , IOD_TRAINING_0_IOG_ADDRESS_P215to15[15] , IOD_TRAINING_0_IOG_ADDRESS_P115to15[15] , IOD_TRAINING_0_IOG_ADDRESS_P015to15[15] };
assign TX_DATA_0_net_5                 = { IOD_TRAINING_0_DFI_BANK_P3_OUT0to0[0] , IOD_TRAINING_0_DFI_BANK_P2_OUT0to0[0] , IOD_TRAINING_0_DFI_BANK_P1_OUT0to0[0] , IOD_TRAINING_0_DFI_BANK_P0_OUT0to0[0] };
assign TX_DATA_1_net_1                 = { IOD_TRAINING_0_DFI_BANK_P3_OUT1to1[1] , IOD_TRAINING_0_DFI_BANK_P2_OUT1to1[1] , IOD_TRAINING_0_DFI_BANK_P1_OUT1to1[1] , IOD_TRAINING_0_DFI_BANK_P0_OUT1to1[1] };
assign TX_DATA_2_net_1                 = { IOD_TRAINING_0_DFI_BANK_P3_OUT2to2[2] , IOD_TRAINING_0_DFI_BANK_P2_OUT2to2[2] , IOD_TRAINING_0_DFI_BANK_P1_OUT2to2[2] , IOD_TRAINING_0_DFI_BANK_P0_OUT2to2[2] };
assign TX_DATA_0_net_6                 = { IOD_TRAINING_0_DFI_CAS_N_P3_OUT , IOD_TRAINING_0_DFI_CAS_N_P2_OUT , IOD_TRAINING_0_DFI_CAS_N_P1_OUT , IOD_TRAINING_0_DFI_CAS_N_P0_OUT };
assign TX_DATA_0_net_7                 = { IOD_TRAINING_0_DFI_CKE_P3_OUT , IOD_TRAINING_0_DFI_CKE_P2_OUT , IOD_TRAINING_0_DFI_CKE_P1_OUT , IOD_TRAINING_0_DFI_CKE_P0_OUT };
assign TX_DATA_0_net_8                 = { IOD_TRAINING_0_DFI_CS_N_P3_OUT , IOD_TRAINING_0_DFI_CS_N_P2_OUT , IOD_TRAINING_0_DFI_CS_N_P1_OUT , IOD_TRAINING_0_DFI_CS_N_P0_OUT };
assign TX_DATA_0_net_9                 = { IOD_TRAINING_0_DFI_ODT_P3_OUT , IOD_TRAINING_0_DFI_ODT_P2_OUT , IOD_TRAINING_0_DFI_ODT_P1_OUT , IOD_TRAINING_0_DFI_ODT_P0_OUT };
assign TX_DATA_0_net_10                = { IOD_TRAINING_0_DFI_RAS_N_P3_OUT , IOD_TRAINING_0_DFI_RAS_N_P2_OUT , IOD_TRAINING_0_DFI_RAS_N_P1_OUT , IOD_TRAINING_0_DFI_RAS_N_P0_OUT };
assign TX_DATA_0_net_11                = { IOD_TRAINING_0_DFI_RESET_N_P3_OUT , IOD_TRAINING_0_DFI_RESET_N_P2_OUT , IOD_TRAINING_0_DFI_RESET_N_P1_OUT , IOD_TRAINING_0_DFI_RESET_N_P0_OUT };
assign TX_DATA_0_net_12                = { IOD_TRAINING_0_DFI_WE_N_P3_OUT , IOD_TRAINING_0_DFI_WE_N_P2_OUT , IOD_TRAINING_0_DFI_WE_N_P1_OUT , IOD_TRAINING_0_DFI_WE_N_P0_OUT };
assign HS_IO_CLK_net_0                 = { HS_IO_CLK_270 , HS_IO_CLK };
assign READ_CLK_SEL_net_0              = { IOD_TRAINING_0_CLK_SEL2to2[2] , IOD_TRAINING_0_CLK_SEL1to1[1] , IOD_TRAINING_0_CLK_SEL0to0[0] };
assign TX_DATA_0_net_13                = { IOD_TRAINING_0_IOG_DM_TXDATA_OUT7to7[7] , IOD_TRAINING_0_IOG_DM_TXDATA_OUT6to6[6] , IOD_TRAINING_0_IOG_DM_TXDATA_OUT5to5[5] , IOD_TRAINING_0_IOG_DM_TXDATA_OUT4to4[4] , IOD_TRAINING_0_IOG_DM_TXDATA_OUT3to3[3] , IOD_TRAINING_0_IOG_DM_TXDATA_OUT2to2[2] , IOD_TRAINING_0_IOG_DM_TXDATA_OUT1to1[1] , IOD_TRAINING_0_IOG_DM_TXDATA_OUT0to0[0] };
assign OE_DATA_0_net_1                 = { IOD_TRAINING_0_DM_OE_P30to0[0] , IOD_TRAINING_0_DM_OE_P20to0[0] , IOD_TRAINING_0_DM_OE_P10to0[0] , IOD_TRAINING_0_DM_OE_P00to0[0] };
assign TX_DATA_0_net_14                = { IOD_TRAINING_0_IOG_DQ_TXDATA_OUT7to7[7] , IOD_TRAINING_0_IOG_DQ_TXDATA_OUT6to6[6] , IOD_TRAINING_0_IOG_DQ_TXDATA_OUT5to5[5] , IOD_TRAINING_0_IOG_DQ_TXDATA_OUT4to4[4] , IOD_TRAINING_0_IOG_DQ_TXDATA_OUT3to3[3] , IOD_TRAINING_0_IOG_DQ_TXDATA_OUT2to2[2] , IOD_TRAINING_0_IOG_DQ_TXDATA_OUT1to1[1] , IOD_TRAINING_0_IOG_DQ_TXDATA_OUT0to0[0] };
assign TX_DATA_1_net_2                 = { IOD_TRAINING_0_IOG_DQ_TXDATA_OUT15to15[15] , IOD_TRAINING_0_IOG_DQ_TXDATA_OUT14to14[14] , IOD_TRAINING_0_IOG_DQ_TXDATA_OUT13to13[13] , IOD_TRAINING_0_IOG_DQ_TXDATA_OUT12to12[12] , IOD_TRAINING_0_IOG_DQ_TXDATA_OUT11to11[11] , IOD_TRAINING_0_IOG_DQ_TXDATA_OUT10to10[10] , IOD_TRAINING_0_IOG_DQ_TXDATA_OUT9to9[9] , IOD_TRAINING_0_IOG_DQ_TXDATA_OUT8to8[8] };
assign TX_DATA_2_net_2                 = { IOD_TRAINING_0_IOG_DQ_TXDATA_OUT23to23[23] , IOD_TRAINING_0_IOG_DQ_TXDATA_OUT22to22[22] , IOD_TRAINING_0_IOG_DQ_TXDATA_OUT21to21[21] , IOD_TRAINING_0_IOG_DQ_TXDATA_OUT20to20[20] , IOD_TRAINING_0_IOG_DQ_TXDATA_OUT19to19[19] , IOD_TRAINING_0_IOG_DQ_TXDATA_OUT18to18[18] , IOD_TRAINING_0_IOG_DQ_TXDATA_OUT17to17[17] , IOD_TRAINING_0_IOG_DQ_TXDATA_OUT16to16[16] };
assign TX_DATA_3_net_1                 = { IOD_TRAINING_0_IOG_DQ_TXDATA_OUT31to31[31] , IOD_TRAINING_0_IOG_DQ_TXDATA_OUT30to30[30] , IOD_TRAINING_0_IOG_DQ_TXDATA_OUT29to29[29] , IOD_TRAINING_0_IOG_DQ_TXDATA_OUT28to28[28] , IOD_TRAINING_0_IOG_DQ_TXDATA_OUT27to27[27] , IOD_TRAINING_0_IOG_DQ_TXDATA_OUT26to26[26] , IOD_TRAINING_0_IOG_DQ_TXDATA_OUT25to25[25] , IOD_TRAINING_0_IOG_DQ_TXDATA_OUT24to24[24] };
assign TX_DATA_4_net_1                 = { IOD_TRAINING_0_IOG_DQ_TXDATA_OUT39to39[39] , IOD_TRAINING_0_IOG_DQ_TXDATA_OUT38to38[38] , IOD_TRAINING_0_IOG_DQ_TXDATA_OUT37to37[37] , IOD_TRAINING_0_IOG_DQ_TXDATA_OUT36to36[36] , IOD_TRAINING_0_IOG_DQ_TXDATA_OUT35to35[35] , IOD_TRAINING_0_IOG_DQ_TXDATA_OUT34to34[34] , IOD_TRAINING_0_IOG_DQ_TXDATA_OUT33to33[33] , IOD_TRAINING_0_IOG_DQ_TXDATA_OUT32to32[32] };
assign TX_DATA_5_net_1                 = { IOD_TRAINING_0_IOG_DQ_TXDATA_OUT47to47[47] , IOD_TRAINING_0_IOG_DQ_TXDATA_OUT46to46[46] , IOD_TRAINING_0_IOG_DQ_TXDATA_OUT45to45[45] , IOD_TRAINING_0_IOG_DQ_TXDATA_OUT44to44[44] , IOD_TRAINING_0_IOG_DQ_TXDATA_OUT43to43[43] , IOD_TRAINING_0_IOG_DQ_TXDATA_OUT42to42[42] , IOD_TRAINING_0_IOG_DQ_TXDATA_OUT41to41[41] , IOD_TRAINING_0_IOG_DQ_TXDATA_OUT40to40[40] };
assign TX_DATA_6_net_1                 = { IOD_TRAINING_0_IOG_DQ_TXDATA_OUT55to55[55] , IOD_TRAINING_0_IOG_DQ_TXDATA_OUT54to54[54] , IOD_TRAINING_0_IOG_DQ_TXDATA_OUT53to53[53] , IOD_TRAINING_0_IOG_DQ_TXDATA_OUT52to52[52] , IOD_TRAINING_0_IOG_DQ_TXDATA_OUT51to51[51] , IOD_TRAINING_0_IOG_DQ_TXDATA_OUT50to50[50] , IOD_TRAINING_0_IOG_DQ_TXDATA_OUT49to49[49] , IOD_TRAINING_0_IOG_DQ_TXDATA_OUT48to48[48] };
assign TX_DATA_7_net_1                 = { IOD_TRAINING_0_IOG_DQ_TXDATA_OUT63to63[63] , IOD_TRAINING_0_IOG_DQ_TXDATA_OUT62to62[62] , IOD_TRAINING_0_IOG_DQ_TXDATA_OUT61to61[61] , IOD_TRAINING_0_IOG_DQ_TXDATA_OUT60to60[60] , IOD_TRAINING_0_IOG_DQ_TXDATA_OUT59to59[59] , IOD_TRAINING_0_IOG_DQ_TXDATA_OUT58to58[58] , IOD_TRAINING_0_IOG_DQ_TXDATA_OUT57to57[57] , IOD_TRAINING_0_IOG_DQ_TXDATA_OUT56to56[56] };
assign OE_DATA_0_net_2                 = { IOD_TRAINING_0_IOG_OE_P30to0[0] , IOD_TRAINING_0_IOG_OE_P20to0[0] , IOD_TRAINING_0_IOG_OE_P10to0[0] , IOD_TRAINING_0_IOG_OE_P00to0[0] };
assign OE_DATA_1_net_0                 = { IOD_TRAINING_0_IOG_OE_P30to0[0] , IOD_TRAINING_0_IOG_OE_P20to0[0] , IOD_TRAINING_0_IOG_OE_P10to0[0] , IOD_TRAINING_0_IOG_OE_P00to0[0] };
assign OE_DATA_2_net_0                 = { IOD_TRAINING_0_IOG_OE_P30to0[0] , IOD_TRAINING_0_IOG_OE_P20to0[0] , IOD_TRAINING_0_IOG_OE_P10to0[0] , IOD_TRAINING_0_IOG_OE_P00to0[0] };
assign OE_DATA_3_net_0                 = { IOD_TRAINING_0_IOG_OE_P30to0[0] , IOD_TRAINING_0_IOG_OE_P20to0[0] , IOD_TRAINING_0_IOG_OE_P10to0[0] , IOD_TRAINING_0_IOG_OE_P00to0[0] };
assign OE_DATA_4_net_0                 = { IOD_TRAINING_0_IOG_OE_P30to0[0] , IOD_TRAINING_0_IOG_OE_P20to0[0] , IOD_TRAINING_0_IOG_OE_P10to0[0] , IOD_TRAINING_0_IOG_OE_P00to0[0] };
assign OE_DATA_5_net_0                 = { IOD_TRAINING_0_IOG_OE_P30to0[0] , IOD_TRAINING_0_IOG_OE_P20to0[0] , IOD_TRAINING_0_IOG_OE_P10to0[0] , IOD_TRAINING_0_IOG_OE_P00to0[0] };
assign OE_DATA_6_net_0                 = { IOD_TRAINING_0_IOG_OE_P30to0[0] , IOD_TRAINING_0_IOG_OE_P20to0[0] , IOD_TRAINING_0_IOG_OE_P10to0[0] , IOD_TRAINING_0_IOG_OE_P00to0[0] };
assign OE_DATA_7_net_0                 = { IOD_TRAINING_0_IOG_OE_P30to0[0] , IOD_TRAINING_0_IOG_OE_P20to0[0] , IOD_TRAINING_0_IOG_OE_P10to0[0] , IOD_TRAINING_0_IOG_OE_P00to0[0] };
assign OE_DATA_0_net_3                 = { IOD_TRAINING_0_DQS_OE_P30to0[0] , IOD_TRAINING_0_DQS_OE_P20to0[0] , IOD_TRAINING_0_DQS_OE_P10to0[0] , IOD_TRAINING_0_DQS_OE_P00to0[0] };
assign TX_DATA_0_net_15                = { IOD_TRAINING_0_IOG_RDDATA_EN_P3_N0to0[0] , IOD_TRAINING_0_IOG_RDDATA_EN_P3_P0to0[0] , IOD_TRAINING_0_IOG_RDDATA_EN_P2_N0to0[0] , IOD_TRAINING_0_IOG_RDDATA_EN_P2_P0to0[0] , IOD_TRAINING_0_IOG_RDDATA_EN_P1_N0to0[0] , IOD_TRAINING_0_IOG_RDDATA_EN_P1_P0to0[0] , IOD_TRAINING_0_IOG_RDDATA_EN_P0_N0to0[0] , IOD_TRAINING_0_IOG_RDDATA_EN_P0_P0to0[0] };
assign OE_DATA_0_net_4                 = { DFI_INIT_COMPLETE_net_0 , DFI_INIT_COMPLETE_net_0 , DFI_INIT_COMPLETE_net_0 , DFI_INIT_COMPLETE_net_0 };
assign HS_IO_CLK_net_1                 = { HS_IO_CLK_270 , HS_IO_CLK };
assign READ_CLK_SEL_net_1              = { IOD_TRAINING_0_CLK_SEL5to5[5] , IOD_TRAINING_0_CLK_SEL4to4[4] , IOD_TRAINING_0_CLK_SEL3to3[3] };
assign TX_DATA_0_net_16                = { IOD_TRAINING_0_IOG_DM_TXDATA_OUT15to15[15] , IOD_TRAINING_0_IOG_DM_TXDATA_OUT14to14[14] , IOD_TRAINING_0_IOG_DM_TXDATA_OUT13to13[13] , IOD_TRAINING_0_IOG_DM_TXDATA_OUT12to12[12] , IOD_TRAINING_0_IOG_DM_TXDATA_OUT11to11[11] , IOD_TRAINING_0_IOG_DM_TXDATA_OUT10to10[10] , IOD_TRAINING_0_IOG_DM_TXDATA_OUT9to9[9] , IOD_TRAINING_0_IOG_DM_TXDATA_OUT8to8[8] };
assign OE_DATA_0_net_5                 = { IOD_TRAINING_0_DM_OE_P31to1[1] , IOD_TRAINING_0_DM_OE_P21to1[1] , IOD_TRAINING_0_DM_OE_P11to1[1] , IOD_TRAINING_0_DM_OE_P01to1[1] };
assign TX_DATA_0_net_17                = { IOD_TRAINING_0_IOG_DQ_TXDATA_OUT71to71[71] , IOD_TRAINING_0_IOG_DQ_TXDATA_OUT70to70[70] , IOD_TRAINING_0_IOG_DQ_TXDATA_OUT69to69[69] , IOD_TRAINING_0_IOG_DQ_TXDATA_OUT68to68[68] , IOD_TRAINING_0_IOG_DQ_TXDATA_OUT67to67[67] , IOD_TRAINING_0_IOG_DQ_TXDATA_OUT66to66[66] , IOD_TRAINING_0_IOG_DQ_TXDATA_OUT65to65[65] , IOD_TRAINING_0_IOG_DQ_TXDATA_OUT64to64[64] };
assign TX_DATA_1_net_3                 = { IOD_TRAINING_0_IOG_DQ_TXDATA_OUT79to79[79] , IOD_TRAINING_0_IOG_DQ_TXDATA_OUT78to78[78] , IOD_TRAINING_0_IOG_DQ_TXDATA_OUT77to77[77] , IOD_TRAINING_0_IOG_DQ_TXDATA_OUT76to76[76] , IOD_TRAINING_0_IOG_DQ_TXDATA_OUT75to75[75] , IOD_TRAINING_0_IOG_DQ_TXDATA_OUT74to74[74] , IOD_TRAINING_0_IOG_DQ_TXDATA_OUT73to73[73] , IOD_TRAINING_0_IOG_DQ_TXDATA_OUT72to72[72] };
assign TX_DATA_2_net_3                 = { IOD_TRAINING_0_IOG_DQ_TXDATA_OUT87to87[87] , IOD_TRAINING_0_IOG_DQ_TXDATA_OUT86to86[86] , IOD_TRAINING_0_IOG_DQ_TXDATA_OUT85to85[85] , IOD_TRAINING_0_IOG_DQ_TXDATA_OUT84to84[84] , IOD_TRAINING_0_IOG_DQ_TXDATA_OUT83to83[83] , IOD_TRAINING_0_IOG_DQ_TXDATA_OUT82to82[82] , IOD_TRAINING_0_IOG_DQ_TXDATA_OUT81to81[81] , IOD_TRAINING_0_IOG_DQ_TXDATA_OUT80to80[80] };
assign TX_DATA_3_net_2                 = { IOD_TRAINING_0_IOG_DQ_TXDATA_OUT95to95[95] , IOD_TRAINING_0_IOG_DQ_TXDATA_OUT94to94[94] , IOD_TRAINING_0_IOG_DQ_TXDATA_OUT93to93[93] , IOD_TRAINING_0_IOG_DQ_TXDATA_OUT92to92[92] , IOD_TRAINING_0_IOG_DQ_TXDATA_OUT91to91[91] , IOD_TRAINING_0_IOG_DQ_TXDATA_OUT90to90[90] , IOD_TRAINING_0_IOG_DQ_TXDATA_OUT89to89[89] , IOD_TRAINING_0_IOG_DQ_TXDATA_OUT88to88[88] };
assign TX_DATA_4_net_2                 = { IOD_TRAINING_0_IOG_DQ_TXDATA_OUT103to103[103] , IOD_TRAINING_0_IOG_DQ_TXDATA_OUT102to102[102] , IOD_TRAINING_0_IOG_DQ_TXDATA_OUT101to101[101] , IOD_TRAINING_0_IOG_DQ_TXDATA_OUT100to100[100] , IOD_TRAINING_0_IOG_DQ_TXDATA_OUT99to99[99] , IOD_TRAINING_0_IOG_DQ_TXDATA_OUT98to98[98] , IOD_TRAINING_0_IOG_DQ_TXDATA_OUT97to97[97] , IOD_TRAINING_0_IOG_DQ_TXDATA_OUT96to96[96] };
assign TX_DATA_5_net_2                 = { IOD_TRAINING_0_IOG_DQ_TXDATA_OUT111to111[111] , IOD_TRAINING_0_IOG_DQ_TXDATA_OUT110to110[110] , IOD_TRAINING_0_IOG_DQ_TXDATA_OUT109to109[109] , IOD_TRAINING_0_IOG_DQ_TXDATA_OUT108to108[108] , IOD_TRAINING_0_IOG_DQ_TXDATA_OUT107to107[107] , IOD_TRAINING_0_IOG_DQ_TXDATA_OUT106to106[106] , IOD_TRAINING_0_IOG_DQ_TXDATA_OUT105to105[105] , IOD_TRAINING_0_IOG_DQ_TXDATA_OUT104to104[104] };
assign TX_DATA_6_net_2                 = { IOD_TRAINING_0_IOG_DQ_TXDATA_OUT119to119[119] , IOD_TRAINING_0_IOG_DQ_TXDATA_OUT118to118[118] , IOD_TRAINING_0_IOG_DQ_TXDATA_OUT117to117[117] , IOD_TRAINING_0_IOG_DQ_TXDATA_OUT116to116[116] , IOD_TRAINING_0_IOG_DQ_TXDATA_OUT115to115[115] , IOD_TRAINING_0_IOG_DQ_TXDATA_OUT114to114[114] , IOD_TRAINING_0_IOG_DQ_TXDATA_OUT113to113[113] , IOD_TRAINING_0_IOG_DQ_TXDATA_OUT112to112[112] };
assign TX_DATA_7_net_2                 = { IOD_TRAINING_0_IOG_DQ_TXDATA_OUT127to127[127] , IOD_TRAINING_0_IOG_DQ_TXDATA_OUT126to126[126] , IOD_TRAINING_0_IOG_DQ_TXDATA_OUT125to125[125] , IOD_TRAINING_0_IOG_DQ_TXDATA_OUT124to124[124] , IOD_TRAINING_0_IOG_DQ_TXDATA_OUT123to123[123] , IOD_TRAINING_0_IOG_DQ_TXDATA_OUT122to122[122] , IOD_TRAINING_0_IOG_DQ_TXDATA_OUT121to121[121] , IOD_TRAINING_0_IOG_DQ_TXDATA_OUT120to120[120] };
assign OE_DATA_0_net_6                 = { IOD_TRAINING_0_IOG_OE_P31to1[1] , IOD_TRAINING_0_IOG_OE_P21to1[1] , IOD_TRAINING_0_IOG_OE_P11to1[1] , IOD_TRAINING_0_IOG_OE_P01to1[1] };
assign OE_DATA_1_net_1                 = { IOD_TRAINING_0_IOG_OE_P31to1[1] , IOD_TRAINING_0_IOG_OE_P21to1[1] , IOD_TRAINING_0_IOG_OE_P11to1[1] , IOD_TRAINING_0_IOG_OE_P01to1[1] };
assign OE_DATA_2_net_1                 = { IOD_TRAINING_0_IOG_OE_P31to1[1] , IOD_TRAINING_0_IOG_OE_P21to1[1] , IOD_TRAINING_0_IOG_OE_P11to1[1] , IOD_TRAINING_0_IOG_OE_P01to1[1] };
assign OE_DATA_3_net_1                 = { IOD_TRAINING_0_IOG_OE_P31to1[1] , IOD_TRAINING_0_IOG_OE_P21to1[1] , IOD_TRAINING_0_IOG_OE_P11to1[1] , IOD_TRAINING_0_IOG_OE_P01to1[1] };
assign OE_DATA_4_net_1                 = { IOD_TRAINING_0_IOG_OE_P31to1[1] , IOD_TRAINING_0_IOG_OE_P21to1[1] , IOD_TRAINING_0_IOG_OE_P11to1[1] , IOD_TRAINING_0_IOG_OE_P01to1[1] };
assign OE_DATA_5_net_1                 = { IOD_TRAINING_0_IOG_OE_P31to1[1] , IOD_TRAINING_0_IOG_OE_P21to1[1] , IOD_TRAINING_0_IOG_OE_P11to1[1] , IOD_TRAINING_0_IOG_OE_P01to1[1] };
assign OE_DATA_6_net_1                 = { IOD_TRAINING_0_IOG_OE_P31to1[1] , IOD_TRAINING_0_IOG_OE_P21to1[1] , IOD_TRAINING_0_IOG_OE_P11to1[1] , IOD_TRAINING_0_IOG_OE_P01to1[1] };
assign OE_DATA_7_net_1                 = { IOD_TRAINING_0_IOG_OE_P31to1[1] , IOD_TRAINING_0_IOG_OE_P21to1[1] , IOD_TRAINING_0_IOG_OE_P11to1[1] , IOD_TRAINING_0_IOG_OE_P01to1[1] };
assign OE_DATA_0_net_7                 = { IOD_TRAINING_0_DQS_OE_P31to1[1] , IOD_TRAINING_0_DQS_OE_P21to1[1] , IOD_TRAINING_0_DQS_OE_P11to1[1] , IOD_TRAINING_0_DQS_OE_P01to1[1] };
assign TX_DATA_0_net_18                = { IOD_TRAINING_0_IOG_RDDATA_EN_P3_N1to1[1] , IOD_TRAINING_0_IOG_RDDATA_EN_P3_P1to1[1] , IOD_TRAINING_0_IOG_RDDATA_EN_P2_N1to1[1] , IOD_TRAINING_0_IOG_RDDATA_EN_P2_P1to1[1] , IOD_TRAINING_0_IOG_RDDATA_EN_P1_N1to1[1] , IOD_TRAINING_0_IOG_RDDATA_EN_P1_P1to1[1] , IOD_TRAINING_0_IOG_RDDATA_EN_P0_N1to1[1] , IOD_TRAINING_0_IOG_RDDATA_EN_P0_P1to1[1] };
assign OE_DATA_0_net_8                 = { DFI_INIT_COMPLETE_net_0 , DFI_INIT_COMPLETE_net_0 , DFI_INIT_COMPLETE_net_0 , DFI_INIT_COMPLETE_net_0 };
assign BURST_DETECT_net_0              = { LANE_1_CTRL_RX_BURST_DETECT , LANE_0_CTRL_RX_BURST_DETECT };
assign RX_OUT_OF_RANGE_net_0           = { LANE_1_CTRL_RX_DELAY_LINE_OUT_OF_RANGE , LANE_1_IOD_DQ_DELAY_LINE_OUT_OF_RANGE_7 , LANE_1_IOD_DQ_DELAY_LINE_OUT_OF_RANGE_6 , LANE_1_IOD_DQ_DELAY_LINE_OUT_OF_RANGE_5 , LANE_1_IOD_DQ_DELAY_LINE_OUT_OF_RANGE_4 , LANE_1_IOD_DQ_DELAY_LINE_OUT_OF_RANGE_3 , LANE_1_IOD_DQ_DELAY_LINE_OUT_OF_RANGE_2 , LANE_1_IOD_DQ_DELAY_LINE_OUT_OF_RANGE_1 , LANE_1_IOD_DQ_DELAY_LINE_OUT_OF_RANGE_0 , LANE_0_CTRL_RX_DELAY_LINE_OUT_OF_RANGE , LANE_0_IOD_DQ_DELAY_LINE_OUT_OF_RANGE_7 , LANE_0_IOD_DQ_DELAY_LINE_OUT_OF_RANGE_6 , LANE_0_IOD_DQ_DELAY_LINE_OUT_OF_RANGE_5 , LANE_0_IOD_DQ_DELAY_LINE_OUT_OF_RANGE_4 , LANE_0_IOD_DQ_DELAY_LINE_OUT_OF_RANGE_3 , LANE_0_IOD_DQ_DELAY_LINE_OUT_OF_RANGE_2 , LANE_0_IOD_DQ_DELAY_LINE_OUT_OF_RANGE_1 , LANE_0_IOD_DQ_DELAY_LINE_OUT_OF_RANGE_0 };
assign TX_OUT_OF_RANGE_net_0           = { LANE_1_CTRL_TX_DELAY_LINE_OUT_OF_RANGE , LANE_1_IOD_DQ_DELAY_LINE_OUT_OF_RANGE_7 , LANE_1_IOD_DQ_DELAY_LINE_OUT_OF_RANGE_6 , LANE_1_IOD_DQ_DELAY_LINE_OUT_OF_RANGE_5 , LANE_1_IOD_DQ_DELAY_LINE_OUT_OF_RANGE_4 , LANE_1_IOD_DQ_DELAY_LINE_OUT_OF_RANGE_3 , LANE_1_IOD_DQ_DELAY_LINE_OUT_OF_RANGE_2 , LANE_1_IOD_DQ_DELAY_LINE_OUT_OF_RANGE_1 , LANE_1_IOD_DQ_DELAY_LINE_OUT_OF_RANGE_0 , LANE_0_CTRL_TX_DELAY_LINE_OUT_OF_RANGE , LANE_0_IOD_DQ_DELAY_LINE_OUT_OF_RANGE_7 , LANE_0_IOD_DQ_DELAY_LINE_OUT_OF_RANGE_6 , LANE_0_IOD_DQ_DELAY_LINE_OUT_OF_RANGE_5 , LANE_0_IOD_DQ_DELAY_LINE_OUT_OF_RANGE_4 , LANE_0_IOD_DQ_DELAY_LINE_OUT_OF_RANGE_3 , LANE_0_IOD_DQ_DELAY_LINE_OUT_OF_RANGE_2 , LANE_0_IOD_DQ_DELAY_LINE_OUT_OF_RANGE_1 , LANE_0_IOD_DQ_DELAY_LINE_OUT_OF_RANGE_0 };
assign IOG_RDDATA_net_0                = { LANE_1_IOD_DQ_RX_DATA_77to7[7] , LANE_1_IOD_DQ_RX_DATA_67to7[7] , LANE_1_IOD_DQ_RX_DATA_57to7[7] , LANE_1_IOD_DQ_RX_DATA_47to7[7] , LANE_1_IOD_DQ_RX_DATA_37to7[7] , LANE_1_IOD_DQ_RX_DATA_27to7[7] , LANE_1_IOD_DQ_RX_DATA_17to7[7] , LANE_1_IOD_DQ_RX_DATA_07to7[7] , LANE_0_IOD_DQ_RX_DATA_77to7[7] , LANE_0_IOD_DQ_RX_DATA_67to7[7] , LANE_0_IOD_DQ_RX_DATA_57to7[7] , LANE_0_IOD_DQ_RX_DATA_47to7[7] , LANE_0_IOD_DQ_RX_DATA_37to7[7] , LANE_0_IOD_DQ_RX_DATA_27to7[7] , LANE_0_IOD_DQ_RX_DATA_17to7[7] , LANE_0_IOD_DQ_RX_DATA_07to7[7] , LANE_1_IOD_DQ_RX_DATA_76to6[6] , LANE_1_IOD_DQ_RX_DATA_66to6[6] , LANE_1_IOD_DQ_RX_DATA_56to6[6] , LANE_1_IOD_DQ_RX_DATA_46to6[6] , LANE_1_IOD_DQ_RX_DATA_36to6[6] , LANE_1_IOD_DQ_RX_DATA_26to6[6] , LANE_1_IOD_DQ_RX_DATA_16to6[6] , LANE_1_IOD_DQ_RX_DATA_06to6[6] , LANE_0_IOD_DQ_RX_DATA_76to6[6] , LANE_0_IOD_DQ_RX_DATA_66to6[6] , LANE_0_IOD_DQ_RX_DATA_56to6[6] , LANE_0_IOD_DQ_RX_DATA_46to6[6] , LANE_0_IOD_DQ_RX_DATA_36to6[6] , LANE_0_IOD_DQ_RX_DATA_26to6[6] , LANE_0_IOD_DQ_RX_DATA_16to6[6] , LANE_0_IOD_DQ_RX_DATA_06to6[6] , LANE_1_IOD_DQ_RX_DATA_75to5[5] , LANE_1_IOD_DQ_RX_DATA_65to5[5] , LANE_1_IOD_DQ_RX_DATA_55to5[5] , LANE_1_IOD_DQ_RX_DATA_45to5[5] , LANE_1_IOD_DQ_RX_DATA_35to5[5] , LANE_1_IOD_DQ_RX_DATA_25to5[5] , LANE_1_IOD_DQ_RX_DATA_15to5[5] , LANE_1_IOD_DQ_RX_DATA_05to5[5] , LANE_0_IOD_DQ_RX_DATA_75to5[5] , LANE_0_IOD_DQ_RX_DATA_65to5[5] , LANE_0_IOD_DQ_RX_DATA_55to5[5] , LANE_0_IOD_DQ_RX_DATA_45to5[5] , LANE_0_IOD_DQ_RX_DATA_35to5[5] , LANE_0_IOD_DQ_RX_DATA_25to5[5] , LANE_0_IOD_DQ_RX_DATA_15to5[5] , LANE_0_IOD_DQ_RX_DATA_05to5[5] , LANE_1_IOD_DQ_RX_DATA_74to4[4] , LANE_1_IOD_DQ_RX_DATA_64to4[4] , LANE_1_IOD_DQ_RX_DATA_54to4[4] , LANE_1_IOD_DQ_RX_DATA_44to4[4] , LANE_1_IOD_DQ_RX_DATA_34to4[4] , LANE_1_IOD_DQ_RX_DATA_24to4[4] , LANE_1_IOD_DQ_RX_DATA_14to4[4] , LANE_1_IOD_DQ_RX_DATA_04to4[4] , LANE_0_IOD_DQ_RX_DATA_74to4[4] , LANE_0_IOD_DQ_RX_DATA_64to4[4] , LANE_0_IOD_DQ_RX_DATA_54to4[4] , LANE_0_IOD_DQ_RX_DATA_44to4[4] , LANE_0_IOD_DQ_RX_DATA_34to4[4] , LANE_0_IOD_DQ_RX_DATA_24to4[4] , LANE_0_IOD_DQ_RX_DATA_14to4[4] , LANE_0_IOD_DQ_RX_DATA_04to4[4] , LANE_1_IOD_DQ_RX_DATA_73to3[3] , LANE_1_IOD_DQ_RX_DATA_63to3[3] , LANE_1_IOD_DQ_RX_DATA_53to3[3] , LANE_1_IOD_DQ_RX_DATA_43to3[3] , LANE_1_IOD_DQ_RX_DATA_33to3[3] , LANE_1_IOD_DQ_RX_DATA_23to3[3] , LANE_1_IOD_DQ_RX_DATA_13to3[3] , LANE_1_IOD_DQ_RX_DATA_03to3[3] , LANE_0_IOD_DQ_RX_DATA_73to3[3] , LANE_0_IOD_DQ_RX_DATA_63to3[3] , LANE_0_IOD_DQ_RX_DATA_53to3[3] , LANE_0_IOD_DQ_RX_DATA_43to3[3] , LANE_0_IOD_DQ_RX_DATA_33to3[3] , LANE_0_IOD_DQ_RX_DATA_23to3[3] , LANE_0_IOD_DQ_RX_DATA_13to3[3] , LANE_0_IOD_DQ_RX_DATA_03to3[3] , LANE_1_IOD_DQ_RX_DATA_72to2[2] , LANE_1_IOD_DQ_RX_DATA_62to2[2] , LANE_1_IOD_DQ_RX_DATA_52to2[2] , LANE_1_IOD_DQ_RX_DATA_42to2[2] , LANE_1_IOD_DQ_RX_DATA_32to2[2] , LANE_1_IOD_DQ_RX_DATA_22to2[2] , LANE_1_IOD_DQ_RX_DATA_12to2[2] , LANE_1_IOD_DQ_RX_DATA_02to2[2] , LANE_0_IOD_DQ_RX_DATA_72to2[2] , LANE_0_IOD_DQ_RX_DATA_62to2[2] , LANE_0_IOD_DQ_RX_DATA_52to2[2] , LANE_0_IOD_DQ_RX_DATA_42to2[2] , LANE_0_IOD_DQ_RX_DATA_32to2[2] , LANE_0_IOD_DQ_RX_DATA_22to2[2] , LANE_0_IOD_DQ_RX_DATA_12to2[2] , LANE_0_IOD_DQ_RX_DATA_02to2[2] , LANE_1_IOD_DQ_RX_DATA_71to1[1] , LANE_1_IOD_DQ_RX_DATA_61to1[1] , LANE_1_IOD_DQ_RX_DATA_51to1[1] , LANE_1_IOD_DQ_RX_DATA_41to1[1] , LANE_1_IOD_DQ_RX_DATA_31to1[1] , LANE_1_IOD_DQ_RX_DATA_21to1[1] , LANE_1_IOD_DQ_RX_DATA_11to1[1] , LANE_1_IOD_DQ_RX_DATA_01to1[1] , LANE_0_IOD_DQ_RX_DATA_71to1[1] , LANE_0_IOD_DQ_RX_DATA_61to1[1] , LANE_0_IOD_DQ_RX_DATA_51to1[1] , LANE_0_IOD_DQ_RX_DATA_41to1[1] , LANE_0_IOD_DQ_RX_DATA_31to1[1] , LANE_0_IOD_DQ_RX_DATA_21to1[1] , LANE_0_IOD_DQ_RX_DATA_11to1[1] , LANE_0_IOD_DQ_RX_DATA_01to1[1] , LANE_1_IOD_DQ_RX_DATA_70to0[0] , LANE_1_IOD_DQ_RX_DATA_60to0[0] , LANE_1_IOD_DQ_RX_DATA_50to0[0] , LANE_1_IOD_DQ_RX_DATA_40to0[0] , LANE_1_IOD_DQ_RX_DATA_30to0[0] , LANE_1_IOD_DQ_RX_DATA_20to0[0] , LANE_1_IOD_DQ_RX_DATA_10to0[0] , LANE_1_IOD_DQ_RX_DATA_00to0[0] , LANE_0_IOD_DQ_RX_DATA_70to0[0] , LANE_0_IOD_DQ_RX_DATA_60to0[0] , LANE_0_IOD_DQ_RX_DATA_50to0[0] , LANE_0_IOD_DQ_RX_DATA_40to0[0] , LANE_0_IOD_DQ_RX_DATA_30to0[0] , LANE_0_IOD_DQ_RX_DATA_20to0[0] , LANE_0_IOD_DQ_RX_DATA_10to0[0] , LANE_0_IOD_DQ_RX_DATA_00to0[0] };
assign IOG_RDDATA_VALID_net_0          = { LANE_1_CTRL_RX_DATA_VALID , LANE_0_CTRL_RX_DATA_VALID };
assign PAD_RDDATA_net_0                = { LANE_1_IOD_DQ_RX_BYPASS_DATA_7 , LANE_1_IOD_DQ_RX_BYPASS_DATA_6 , LANE_1_IOD_DQ_RX_BYPASS_DATA_5 , LANE_1_IOD_DQ_RX_BYPASS_DATA_4 , LANE_1_IOD_DQ_RX_BYPASS_DATA_3 , LANE_1_IOD_DQ_RX_BYPASS_DATA_2 , LANE_1_IOD_DQ_RX_BYPASS_DATA_1 , LANE_1_IOD_DQ_RX_BYPASS_DATA_0 , LANE_0_IOD_DQ_RX_BYPASS_DATA_7 , LANE_0_IOD_DQ_RX_BYPASS_DATA_6 , LANE_0_IOD_DQ_RX_BYPASS_DATA_5 , LANE_0_IOD_DQ_RX_BYPASS_DATA_4 , LANE_0_IOD_DQ_RX_BYPASS_DATA_3 , LANE_0_IOD_DQ_RX_BYPASS_DATA_2 , LANE_0_IOD_DQ_RX_BYPASS_DATA_1 , LANE_0_IOD_DQ_RX_BYPASS_DATA_0 };
assign DQSW_EYE_MONITOR_EARLY_net_0    = { LANE_1_IOD_DQSW_TRAINING_EYE_MONITOR_EARLY_0 , LANE_0_IOD_DQSW_TRAINING_EYE_MONITOR_EARLY_0 };
assign DQSW_EYE_MONITOR_LATE_net_0     = { LANE_1_IOD_DQSW_TRAINING_EYE_MONITOR_LATE_0 , LANE_0_IOD_DQSW_TRAINING_EYE_MONITOR_LATE_0 };
assign DQSW270_EYE_MONITOR_EARLY_net_0 = { LANE_1_IOD_READ_TRAINING_EYE_MONITOR_EARLY_0 , LANE_0_IOD_READ_TRAINING_EYE_MONITOR_EARLY_0 };
assign DQSW270_EYE_MONITOR_LATE_net_0  = { LANE_1_IOD_READ_TRAINING_EYE_MONITOR_LATE_0 , LANE_0_IOD_READ_TRAINING_EYE_MONITOR_LATE_0 };
assign DQSW270_IGEAR_RX8_net_0         = { LANE_1_IOD_READ_TRAINING_RX_DATA_06to6[6] , LANE_0_IOD_READ_TRAINING_RX_DATA_06to6[6] };
assign DQSW_DELAY_LINE_OOR_net_0       = { LANE_1_IOD_DQSW_TRAINING_DELAY_LINE_OUT_OF_RANGE_0 , LANE_0_IOD_DQSW_TRAINING_DELAY_LINE_OUT_OF_RANGE_0 };
assign DQSW270_DELAY_LINE_OOR_net_0    = { LANE_1_IOD_READ_TRAINING_DELAY_LINE_OUT_OF_RANGE_0 , LANE_0_IOD_READ_TRAINING_DELAY_LINE_OUT_OF_RANGE_0 };
wire   [0:0]                               DFI_ADDRESS_P0_1919_unconnected;
wire   [0:0]                               DFI_ADDRESS_P0_1818_unconnected;
wire   [0:0]                               DFI_ADDRESS_P0_1717_unconnected;
wire   [0:0]                               DFI_ADDRESS_P0_1616_unconnected;
assign DFI_ADDRESS_P0_net_0            = { DFI_ADDRESS_P0_1919_unconnected , DFI_ADDRESS_P0_1818_unconnected , DFI_ADDRESS_P0_1717_unconnected , DFI_ADDRESS_P0_1616_unconnected , DFI_ADDRESS_P0_slice_15[15] , DFI_ADDRESS_P0_slice_14[14] , DFI_ADDRESS_P0_slice_13[13] , DFI_ADDRESS_P0_slice_12[12] , DFI_ADDRESS_P0_slice_11[11] , DFI_ADDRESS_P0_slice_10[10] , DFI_ADDRESS_P0_slice_9[9] , DFI_ADDRESS_P0_slice_8[8] , DFI_ADDRESS_P0_slice_7[7] , DFI_ADDRESS_P0_slice_6[6] , DFI_ADDRESS_P0_slice_5[5] , DFI_ADDRESS_P0_slice_4[4] , DFI_ADDRESS_P0_slice_3[3] , DFI_ADDRESS_P0_slice_2[2] , DFI_ADDRESS_P0_slice_1[1] , DFI_ADDRESS_P0_slice_0[0] };
wire   [0:0]                               DFI_ADDRESS_P1_1919_unconnected;
wire   [0:0]                               DFI_ADDRESS_P1_1818_unconnected;
wire   [0:0]                               DFI_ADDRESS_P1_1717_unconnected;
wire   [0:0]                               DFI_ADDRESS_P1_1616_unconnected;
assign DFI_ADDRESS_P1_net_0            = { DFI_ADDRESS_P1_1919_unconnected , DFI_ADDRESS_P1_1818_unconnected , DFI_ADDRESS_P1_1717_unconnected , DFI_ADDRESS_P1_1616_unconnected , DFI_ADDRESS_P1_slice_15[15] , DFI_ADDRESS_P1_slice_14[14] , DFI_ADDRESS_P1_slice_13[13] , DFI_ADDRESS_P1_slice_12[12] , DFI_ADDRESS_P1_slice_11[11] , DFI_ADDRESS_P1_slice_10[10] , DFI_ADDRESS_P1_slice_9[9] , DFI_ADDRESS_P1_slice_8[8] , DFI_ADDRESS_P1_slice_7[7] , DFI_ADDRESS_P1_slice_6[6] , DFI_ADDRESS_P1_slice_5[5] , DFI_ADDRESS_P1_slice_4[4] , DFI_ADDRESS_P1_slice_3[3] , DFI_ADDRESS_P1_slice_2[2] , DFI_ADDRESS_P1_slice_1[1] , DFI_ADDRESS_P1_slice_0[0] };
wire   [0:0]                               DFI_ADDRESS_P2_1919_unconnected;
wire   [0:0]                               DFI_ADDRESS_P2_1818_unconnected;
wire   [0:0]                               DFI_ADDRESS_P2_1717_unconnected;
wire   [0:0]                               DFI_ADDRESS_P2_1616_unconnected;
assign DFI_ADDRESS_P2_net_0            = { DFI_ADDRESS_P2_1919_unconnected , DFI_ADDRESS_P2_1818_unconnected , DFI_ADDRESS_P2_1717_unconnected , DFI_ADDRESS_P2_1616_unconnected , DFI_ADDRESS_P2_slice_15[15] , DFI_ADDRESS_P2_slice_14[14] , DFI_ADDRESS_P2_slice_13[13] , DFI_ADDRESS_P2_slice_12[12] , DFI_ADDRESS_P2_slice_11[11] , DFI_ADDRESS_P2_slice_10[10] , DFI_ADDRESS_P2_slice_9[9] , DFI_ADDRESS_P2_slice_8[8] , DFI_ADDRESS_P2_slice_7[7] , DFI_ADDRESS_P2_slice_6[6] , DFI_ADDRESS_P2_slice_5[5] , DFI_ADDRESS_P2_slice_4[4] , DFI_ADDRESS_P2_slice_3[3] , DFI_ADDRESS_P2_slice_2[2] , DFI_ADDRESS_P2_slice_1[1] , DFI_ADDRESS_P2_slice_0[0] };
wire   [0:0]                               DFI_ADDRESS_P3_1919_unconnected;
wire   [0:0]                               DFI_ADDRESS_P3_1818_unconnected;
wire   [0:0]                               DFI_ADDRESS_P3_1717_unconnected;
wire   [0:0]                               DFI_ADDRESS_P3_1616_unconnected;
assign DFI_ADDRESS_P3_net_0            = { DFI_ADDRESS_P3_1919_unconnected , DFI_ADDRESS_P3_1818_unconnected , DFI_ADDRESS_P3_1717_unconnected , DFI_ADDRESS_P3_1616_unconnected , DFI_ADDRESS_P3_slice_15[15] , DFI_ADDRESS_P3_slice_14[14] , DFI_ADDRESS_P3_slice_13[13] , DFI_ADDRESS_P3_slice_12[12] , DFI_ADDRESS_P3_slice_11[11] , DFI_ADDRESS_P3_slice_10[10] , DFI_ADDRESS_P3_slice_9[9] , DFI_ADDRESS_P3_slice_8[8] , DFI_ADDRESS_P3_slice_7[7] , DFI_ADDRESS_P3_slice_6[6] , DFI_ADDRESS_P3_slice_5[5] , DFI_ADDRESS_P3_slice_4[4] , DFI_ADDRESS_P3_slice_3[3] , DFI_ADDRESS_P3_slice_2[2] , DFI_ADDRESS_P3_slice_1[1] , DFI_ADDRESS_P3_slice_0[0] };
assign BCLK_IGEAR_RX_net_0             = { IOD_BCLK_TRAINING_RX_DATA_06to6[6] , IOD_BCLK_TRAINING_RX_DATA_04to4[4] , IOD_BCLK_TRAINING_RX_DATA_02to2[2] , IOD_BCLK_TRAINING_RX_DATA_00to0[0] };
assign DQSW270_IGEAR_RX_net_0          = { LANE_1_IOD_READ_TRAINING_RX_DATA_07to7[7] , LANE_1_IOD_READ_TRAINING_RX_DATA_06to6[6] , LANE_0_IOD_READ_TRAINING_RX_DATA_07to7[7] , LANE_0_IOD_READ_TRAINING_RX_DATA_06to6[6] };
assign DQSW_IGEAR_RX_net_0             = { LANE_1_IOD_DQSW_TRAINING_RX_DATA_01to1[1] , LANE_1_IOD_DQSW_TRAINING_RX_DATA_00to0[0] , LANE_0_IOD_DQSW_TRAINING_RX_DATA_01to1[1] , LANE_0_IOD_DQSW_TRAINING_RX_DATA_00to0[0] };
assign IOG_DQ_TXDATA_IN_net_0          = { DFI_WRDATA_P3_slice_31[31] , DFI_WRDATA_P3_slice_30[15] , DFI_WRDATA_P2_slice_31[31] , DFI_WRDATA_P2_slice_30[15] , DFI_WRDATA_P1_slice_31[31] , DFI_WRDATA_P1_slice_30[15] , DFI_WRDATA_P0_slice_31[31] , DFI_WRDATA_P0_slice_30[15] , DFI_WRDATA_P3_slice_29[30] , DFI_WRDATA_P3_slice_28[14] , DFI_WRDATA_P2_slice_29[30] , DFI_WRDATA_P2_slice_28[14] , DFI_WRDATA_P1_slice_29[30] , DFI_WRDATA_P1_slice_28[14] , DFI_WRDATA_P0_slice_29[30] , DFI_WRDATA_P0_slice_28[14] , DFI_WRDATA_P3_slice_27[29] , DFI_WRDATA_P3_slice_26[13] , DFI_WRDATA_P2_slice_27[29] , DFI_WRDATA_P2_slice_26[13] , DFI_WRDATA_P1_slice_27[29] , DFI_WRDATA_P1_slice_26[13] , DFI_WRDATA_P0_slice_27[29] , DFI_WRDATA_P0_slice_26[13] , DFI_WRDATA_P3_slice_25[28] , DFI_WRDATA_P3_slice_24[12] , DFI_WRDATA_P2_slice_25[28] , DFI_WRDATA_P2_slice_24[12] , DFI_WRDATA_P1_slice_25[28] , DFI_WRDATA_P1_slice_24[12] , DFI_WRDATA_P0_slice_25[28] , DFI_WRDATA_P0_slice_24[12] , DFI_WRDATA_P3_slice_23[27] , DFI_WRDATA_P3_slice_22[11] , DFI_WRDATA_P2_slice_23[27] , DFI_WRDATA_P2_slice_22[11] , DFI_WRDATA_P1_slice_23[27] , DFI_WRDATA_P1_slice_22[11] , DFI_WRDATA_P0_slice_23[27] , DFI_WRDATA_P0_slice_22[11] , DFI_WRDATA_P3_slice_21[26] , DFI_WRDATA_P3_slice_20[10] , DFI_WRDATA_P2_slice_21[26] , DFI_WRDATA_P2_slice_20[10] , DFI_WRDATA_P1_slice_21[26] , DFI_WRDATA_P1_slice_20[10] , DFI_WRDATA_P0_slice_21[26] , DFI_WRDATA_P0_slice_20[10] , DFI_WRDATA_P3_slice_19[25] , DFI_WRDATA_P3_slice_18[9] , DFI_WRDATA_P2_slice_19[25] , DFI_WRDATA_P2_slice_18[9] , DFI_WRDATA_P1_slice_19[25] , DFI_WRDATA_P1_slice_18[9] , DFI_WRDATA_P0_slice_19[25] , DFI_WRDATA_P0_slice_18[9] , DFI_WRDATA_P3_slice_17[24] , DFI_WRDATA_P3_slice_16[8] , DFI_WRDATA_P2_slice_17[24] , DFI_WRDATA_P2_slice_16[8] , DFI_WRDATA_P1_slice_17[24] , DFI_WRDATA_P1_slice_16[8] , DFI_WRDATA_P0_slice_17[24] , DFI_WRDATA_P0_slice_16[8] , DFI_WRDATA_P3_slice_15[23] , DFI_WRDATA_P3_slice_14[7] , DFI_WRDATA_P2_slice_15[23] , DFI_WRDATA_P2_slice_14[7] , DFI_WRDATA_P1_slice_15[23] , DFI_WRDATA_P1_slice_14[7] , DFI_WRDATA_P0_slice_15[23] , DFI_WRDATA_P0_slice_14[7] , DFI_WRDATA_P3_slice_13[22] , DFI_WRDATA_P3_slice_12[6] , DFI_WRDATA_P2_slice_13[22] , DFI_WRDATA_P2_slice_12[6] , DFI_WRDATA_P1_slice_13[22] , DFI_WRDATA_P1_slice_12[6] , DFI_WRDATA_P0_slice_13[22] , DFI_WRDATA_P0_slice_12[6] , DFI_WRDATA_P3_slice_11[21] , DFI_WRDATA_P3_slice_10[5] , DFI_WRDATA_P2_slice_11[21] , DFI_WRDATA_P2_slice_10[5] , DFI_WRDATA_P1_slice_11[21] , DFI_WRDATA_P1_slice_10[5] , DFI_WRDATA_P0_slice_11[21] , DFI_WRDATA_P0_slice_10[5] , DFI_WRDATA_P3_slice_9[20] , DFI_WRDATA_P3_slice_8[4] , DFI_WRDATA_P2_slice_9[20] , DFI_WRDATA_P2_slice_8[4] , DFI_WRDATA_P1_slice_9[20] , DFI_WRDATA_P1_slice_8[4] , DFI_WRDATA_P0_slice_9[20] , DFI_WRDATA_P0_slice_8[4] , DFI_WRDATA_P3_slice_7[19] , DFI_WRDATA_P3_slice_6[3] , DFI_WRDATA_P2_slice_7[19] , DFI_WRDATA_P2_slice_6[3] , DFI_WRDATA_P1_slice_7[19] , DFI_WRDATA_P1_slice_6[3] , DFI_WRDATA_P0_slice_7[19] , DFI_WRDATA_P0_slice_6[3] , DFI_WRDATA_P3_slice_5[18] , DFI_WRDATA_P3_slice_4[2] , DFI_WRDATA_P2_slice_5[18] , DFI_WRDATA_P2_slice_4[2] , DFI_WRDATA_P1_slice_5[18] , DFI_WRDATA_P1_slice_4[2] , DFI_WRDATA_P0_slice_5[18] , DFI_WRDATA_P0_slice_4[2] , DFI_WRDATA_P3_slice_3[17] , DFI_WRDATA_P3_slice_2[1] , DFI_WRDATA_P2_slice_3[17] , DFI_WRDATA_P2_slice_2[1] , DFI_WRDATA_P1_slice_3[17] , DFI_WRDATA_P1_slice_2[1] , DFI_WRDATA_P0_slice_3[17] , DFI_WRDATA_P0_slice_2[1] , DFI_WRDATA_P3_slice_1[16] , DFI_WRDATA_P3_slice_0[0] , DFI_WRDATA_P2_slice_1[16] , DFI_WRDATA_P2_slice_0[0] , DFI_WRDATA_P1_slice_1[16] , DFI_WRDATA_P1_slice_0[0] , DFI_WRDATA_P0_slice_1[16] , DFI_WRDATA_P0_slice_0[0] };
assign IOG_DM_TXDATA_IN_net_0          = { DFI_WRDATA_MASK_P3_slice_3[3] , DFI_WRDATA_MASK_P3_slice_2[1] , DFI_WRDATA_MASK_P2_slice_3[3] , DFI_WRDATA_MASK_P2_slice_2[1] , DFI_WRDATA_MASK_P1_slice_3[3] , DFI_WRDATA_MASK_P1_slice_2[1] , DFI_WRDATA_MASK_P0_slice_3[3] , DFI_WRDATA_MASK_P0_slice_2[1] , DFI_WRDATA_MASK_P3_slice_1[2] , DFI_WRDATA_MASK_P3_slice_0[0] , DFI_WRDATA_MASK_P2_slice_1[2] , DFI_WRDATA_MASK_P2_slice_0[0] , DFI_WRDATA_MASK_P1_slice_1[2] , DFI_WRDATA_MASK_P1_slice_0[0] , DFI_WRDATA_MASK_P0_slice_1[2] , DFI_WRDATA_MASK_P0_slice_0[0] };
assign DFI_BANK_P0_net_0               = { DFI_BANK_P0_slice_2[2] , DFI_BANK_P0_slice_1[1] , DFI_BANK_P0_slice_0[0] };
assign DFI_BANK_P1_net_0               = { DFI_BANK_P1_slice_2[2] , DFI_BANK_P1_slice_1[1] , DFI_BANK_P1_slice_0[0] };
assign DFI_BANK_P2_net_0               = { DFI_BANK_P2_slice_2[2] , DFI_BANK_P2_slice_1[1] , DFI_BANK_P2_slice_0[0] };
assign DFI_BANK_P3_net_0               = { DFI_BANK_P3_slice_2[2] , DFI_BANK_P3_slice_1[1] , DFI_BANK_P3_slice_0[0] };
assign PAD_net_0                       = { DQ[7:7] , DQ[6:6] , DQ[5:5] , DQ[4:4] , DQ[3:3] , DQ[2:2] , DQ[1:1] , DQ[0:0] };
assign PAD_net_1                       = { DQ[15:15] , DQ[14:14] , DQ[13:13] , DQ[12:12] , DQ[11:11] , DQ[10:10] , DQ[9:9] , DQ[8:8] };
//--------------------------------------------------------------------
// Component instances
//--------------------------------------------------------------------
//--------CLKINT_PRESERVE
CLKINT_PRESERVE CLKINT_CMD(
        // Inputs
        .A ( DFN1_CMD_Q ),
        // Outputs
        .Y ( CLKINT_CMD_Y ) 
        );

//--------DFN1
DFN1 DFN1_CMD(
        // Inputs
        .D   ( IOD_TRAINING_0_CMD_RESET_LANE ),
        .CLK ( SYS_CLK ),
        // Outputs
        .Q   ( DFN1_CMD_Q ) 
        );

//--------DDR3_0_DDRPHY_BLK_IOD_A_11_0_PF_IOD   -   Actel:SgCore:PF_IOD:1.0.215
DDR3_0_DDRPHY_BLK_IOD_A_11_0_PF_IOD IOD_A_11_0(
        // Inputs
        .ARST_N                     ( LANECTRL_ADDR_CMD_0_ARST_N ),
        .RX_SYNC_RST                ( LANECTRL_ADDR_CMD_0_RX_SYNC_RST ),
        .TX_SYNC_RST                ( LANECTRL_ADDR_CMD_0_TX_SYNC_RST ),
        .HS_IO_CLK                  ( HS_IO_CLK ),
        .TX_DQS_270                 ( LANECTRL_ADDR_CMD_0_TX_DQS_270 ),
        .TX_DATA_0                  ( TX_DATA_0_net_0 ),
        .TX_DATA_1                  ( TX_DATA_1_net_0 ),
        .TX_DATA_2                  ( TX_DATA_2_net_0 ),
        .TX_DATA_3                  ( TX_DATA_3_net_0 ),
        .TX_DATA_4                  ( TX_DATA_4_net_0 ),
        .TX_DATA_5                  ( TX_DATA_5_net_0 ),
        .TX_DATA_6                  ( TX_DATA_6_net_0 ),
        .TX_DATA_7                  ( TX_DATA_7_net_0 ),
        .TX_DATA_8                  ( TX_DATA_8_net_0 ),
        .TX_DATA_9                  ( TX_DATA_9_net_0 ),
        .TX_DATA_10                 ( TX_DATA_10_net_0 ),
        .TX_DATA_11                 ( TX_DATA_11_net_0 ),
        .OE_DATA_0                  ( OE_DATA_0_const_net_0 ),
        .OE_DATA_1                  ( OE_DATA_1_const_net_0 ),
        .OE_DATA_2                  ( OE_DATA_2_const_net_0 ),
        .OE_DATA_3                  ( OE_DATA_3_const_net_0 ),
        .OE_DATA_4                  ( OE_DATA_4_const_net_0 ),
        .OE_DATA_5                  ( OE_DATA_5_const_net_0 ),
        .OE_DATA_6                  ( OE_DATA_6_const_net_0 ),
        .OE_DATA_7                  ( OE_DATA_7_const_net_0 ),
        .OE_DATA_8                  ( OE_DATA_8_const_net_0 ),
        .OE_DATA_9                  ( OE_DATA_9_const_net_0 ),
        .OE_DATA_10                 ( OE_DATA_10_const_net_0 ),
        .OE_DATA_11                 ( OE_DATA_11_const_net_0 ),
        .DELAY_LINE_MOVE_0          ( IOD_TRAINING_0_CMD_DELAY_LINE_MOVE ),
        .DELAY_LINE_MOVE_1          ( IOD_TRAINING_0_CMD_DELAY_LINE_MOVE ),
        .DELAY_LINE_MOVE_2          ( IOD_TRAINING_0_CMD_DELAY_LINE_MOVE ),
        .DELAY_LINE_MOVE_3          ( IOD_TRAINING_0_CMD_DELAY_LINE_MOVE ),
        .DELAY_LINE_MOVE_4          ( IOD_TRAINING_0_CMD_DELAY_LINE_MOVE ),
        .DELAY_LINE_MOVE_5          ( IOD_TRAINING_0_CMD_DELAY_LINE_MOVE ),
        .DELAY_LINE_MOVE_6          ( IOD_TRAINING_0_CMD_DELAY_LINE_MOVE ),
        .DELAY_LINE_MOVE_7          ( IOD_TRAINING_0_CMD_DELAY_LINE_MOVE ),
        .DELAY_LINE_MOVE_8          ( IOD_TRAINING_0_CMD_DELAY_LINE_MOVE ),
        .DELAY_LINE_MOVE_9          ( IOD_TRAINING_0_CMD_DELAY_LINE_MOVE ),
        .DELAY_LINE_MOVE_10         ( IOD_TRAINING_0_CMD_DELAY_LINE_MOVE ),
        .DELAY_LINE_MOVE_11         ( IOD_TRAINING_0_CMD_DELAY_LINE_MOVE ),
        .DELAY_LINE_DIRECTION_0     ( IOD_TRAINING_0_CMD_DELAY_LINE_DIRECTION ),
        .DELAY_LINE_DIRECTION_1     ( IOD_TRAINING_0_CMD_DELAY_LINE_DIRECTION ),
        .DELAY_LINE_DIRECTION_2     ( IOD_TRAINING_0_CMD_DELAY_LINE_DIRECTION ),
        .DELAY_LINE_DIRECTION_3     ( IOD_TRAINING_0_CMD_DELAY_LINE_DIRECTION ),
        .DELAY_LINE_DIRECTION_4     ( IOD_TRAINING_0_CMD_DELAY_LINE_DIRECTION ),
        .DELAY_LINE_DIRECTION_5     ( IOD_TRAINING_0_CMD_DELAY_LINE_DIRECTION ),
        .DELAY_LINE_DIRECTION_6     ( IOD_TRAINING_0_CMD_DELAY_LINE_DIRECTION ),
        .DELAY_LINE_DIRECTION_7     ( IOD_TRAINING_0_CMD_DELAY_LINE_DIRECTION ),
        .DELAY_LINE_DIRECTION_8     ( IOD_TRAINING_0_CMD_DELAY_LINE_DIRECTION ),
        .DELAY_LINE_DIRECTION_9     ( IOD_TRAINING_0_CMD_DELAY_LINE_DIRECTION ),
        .DELAY_LINE_DIRECTION_10    ( IOD_TRAINING_0_CMD_DELAY_LINE_DIRECTION ),
        .DELAY_LINE_DIRECTION_11    ( IOD_TRAINING_0_CMD_DELAY_LINE_DIRECTION ),
        .DELAY_LINE_LOAD_0          ( IOD_TRAINING_0_CMD_DELAY_LINE_LOAD ),
        .DELAY_LINE_LOAD_1          ( IOD_TRAINING_0_CMD_DELAY_LINE_LOAD ),
        .DELAY_LINE_LOAD_2          ( IOD_TRAINING_0_CMD_DELAY_LINE_LOAD ),
        .DELAY_LINE_LOAD_3          ( IOD_TRAINING_0_CMD_DELAY_LINE_LOAD ),
        .DELAY_LINE_LOAD_4          ( IOD_TRAINING_0_CMD_DELAY_LINE_LOAD ),
        .DELAY_LINE_LOAD_5          ( IOD_TRAINING_0_CMD_DELAY_LINE_LOAD ),
        .DELAY_LINE_LOAD_6          ( IOD_TRAINING_0_CMD_DELAY_LINE_LOAD ),
        .DELAY_LINE_LOAD_7          ( IOD_TRAINING_0_CMD_DELAY_LINE_LOAD ),
        .DELAY_LINE_LOAD_8          ( IOD_TRAINING_0_CMD_DELAY_LINE_LOAD ),
        .DELAY_LINE_LOAD_9          ( IOD_TRAINING_0_CMD_DELAY_LINE_LOAD ),
        .DELAY_LINE_LOAD_10         ( IOD_TRAINING_0_CMD_DELAY_LINE_LOAD ),
        .DELAY_LINE_LOAD_11         ( IOD_TRAINING_0_CMD_DELAY_LINE_LOAD ),
        .FAB_CLK                    ( SYS_CLK ),
        .ODT_EN_0                   ( GND_net ), // tied to 1'b0 from definition
        .ODT_EN_1                   ( GND_net ), // tied to 1'b0 from definition
        .ODT_EN_2                   ( GND_net ), // tied to 1'b0 from definition
        .ODT_EN_3                   ( GND_net ), // tied to 1'b0 from definition
        .ODT_EN_4                   ( GND_net ), // tied to 1'b0 from definition
        .ODT_EN_5                   ( GND_net ), // tied to 1'b0 from definition
        .ODT_EN_6                   ( GND_net ), // tied to 1'b0 from definition
        .ODT_EN_7                   ( GND_net ), // tied to 1'b0 from definition
        .ODT_EN_8                   ( GND_net ), // tied to 1'b0 from definition
        .ODT_EN_9                   ( GND_net ), // tied to 1'b0 from definition
        .ODT_EN_10                  ( GND_net ), // tied to 1'b0 from definition
        .ODT_EN_11                  ( GND_net ), // tied to 1'b0 from definition
        // Outputs
        .DELAY_LINE_OUT_OF_RANGE_0  (  ),
        .DELAY_LINE_OUT_OF_RANGE_1  (  ),
        .DELAY_LINE_OUT_OF_RANGE_2  (  ),
        .DELAY_LINE_OUT_OF_RANGE_3  (  ),
        .DELAY_LINE_OUT_OF_RANGE_4  (  ),
        .DELAY_LINE_OUT_OF_RANGE_5  (  ),
        .DELAY_LINE_OUT_OF_RANGE_6  (  ),
        .DELAY_LINE_OUT_OF_RANGE_7  (  ),
        .DELAY_LINE_OUT_OF_RANGE_8  (  ),
        .DELAY_LINE_OUT_OF_RANGE_9  (  ),
        .DELAY_LINE_OUT_OF_RANGE_10 (  ),
        .DELAY_LINE_OUT_OF_RANGE_11 (  ),
        .PAD_O                      ( PAD_O_net_0 ) 
        );

//--------DDR3_0_DDRPHY_BLK_IOD_A_12_PF_IOD   -   Actel:SgCore:PF_IOD:1.0.215
DDR3_0_DDRPHY_BLK_IOD_A_12_PF_IOD IOD_A_12(
        // Inputs
        .RX_P_0                    ( OB_A_12_Y ),
        .ARST_N                    ( LANECTRL_ADDR_CMD_0_ARST_N ),
        .RX_SYNC_RST               ( LANECTRL_ADDR_CMD_0_RX_SYNC_RST ),
        .TX_SYNC_RST               ( LANECTRL_ADDR_CMD_0_TX_SYNC_RST ),
        .HS_IO_CLK                 ( HS_IO_CLK ),
        .TX_DQS_270                ( LANECTRL_ADDR_CMD_0_TX_DQS_270 ),
        .TX_DATA_0                 ( TX_DATA_0_net_1 ),
        .OE_DATA_0                 ( OE_DATA_0_net_0 ),
        .EYE_MONITOR_CLEAR_FLAGS_0 ( IOD_TRAINING_0_CMD_EYE_MONITOR_CLR_FLAGS ),
        .DELAY_LINE_MOVE_0         ( IOD_TRAINING_0_CMD_DELAY_LINE_MOVE_TRN ),
        .DELAY_LINE_DIRECTION_0    ( IOD_TRAINING_0_CMD_DELAY_LINE_DIRECTION ),
        .DELAY_LINE_LOAD_0         ( IOD_TRAINING_0_CMD_DELAY_LINE_LOAD ),
        .FAB_CLK                   ( SYS_CLK ),
        .ODT_EN_0                  ( GND_net ), // tied to 1'b0 from definition
        // Outputs
        .TX_0                      ( IOD_A_12_TX_0 ),
        .OE_0                      (  ),
        .DELAY_LINE_OUT_OF_RANGE_0 (  ),
        .EYE_MONITOR_EARLY_0       ( IOD_A_12_EYE_MONITOR_EARLY_0 ),
        .EYE_MONITOR_LATE_0        ( IOD_A_12_EYE_MONITOR_LATE_0 ),
        .RX_DATA_0                 ( RX_DATA_0_net_0 ) 
        );

//--------DDR3_0_DDRPHY_BLK_IOD_A_13_PF_IOD   -   Actel:SgCore:PF_IOD:1.0.215
DDR3_0_DDRPHY_BLK_IOD_A_13_PF_IOD IOD_A_13(
        // Inputs
        .ARST_N                    ( LANECTRL_ADDR_CMD_0_ARST_N ),
        .RX_SYNC_RST               ( LANECTRL_ADDR_CMD_0_RX_SYNC_RST ),
        .TX_SYNC_RST               ( LANECTRL_ADDR_CMD_0_TX_SYNC_RST ),
        .HS_IO_CLK                 ( HS_IO_CLK ),
        .TX_DQS_270                ( LANECTRL_ADDR_CMD_0_TX_DQS_270 ),
        .TX_DATA_0                 ( TX_DATA_0_net_2 ),
        .OE_DATA_0                 ( OE_DATA_0_const_net_1 ),
        .DELAY_LINE_MOVE_0         ( IOD_TRAINING_0_CMD_DELAY_LINE_MOVE ),
        .DELAY_LINE_DIRECTION_0    ( IOD_TRAINING_0_CMD_DELAY_LINE_DIRECTION ),
        .DELAY_LINE_LOAD_0         ( IOD_TRAINING_0_CMD_DELAY_LINE_LOAD ),
        .FAB_CLK                   ( SYS_CLK ),
        .ODT_EN_0                  ( GND_net ), // tied to 1'b0 from definition
        // Outputs
        .DELAY_LINE_OUT_OF_RANGE_0 (  ),
        .PAD_O                     ( A_12 ) 
        );

//--------DDR3_0_DDRPHY_BLK_IOD_A_14_PF_IOD   -   Actel:SgCore:PF_IOD:1.0.215
DDR3_0_DDRPHY_BLK_IOD_A_14_PF_IOD IOD_A_14(
        // Inputs
        .ARST_N                    ( LANECTRL_ADDR_CMD_0_ARST_N ),
        .RX_SYNC_RST               ( LANECTRL_ADDR_CMD_0_RX_SYNC_RST ),
        .TX_SYNC_RST               ( LANECTRL_ADDR_CMD_0_TX_SYNC_RST ),
        .HS_IO_CLK                 ( HS_IO_CLK ),
        .TX_DQS_270                ( LANECTRL_ADDR_CMD_0_TX_DQS_270 ),
        .TX_DATA_0                 ( TX_DATA_0_net_3 ),
        .OE_DATA_0                 ( OE_DATA_0_const_net_2 ),
        .DELAY_LINE_MOVE_0         ( IOD_TRAINING_0_CMD_DELAY_LINE_MOVE ),
        .DELAY_LINE_DIRECTION_0    ( IOD_TRAINING_0_CMD_DELAY_LINE_DIRECTION ),
        .DELAY_LINE_LOAD_0         ( IOD_TRAINING_0_CMD_DELAY_LINE_LOAD ),
        .FAB_CLK                   ( SYS_CLK ),
        .ODT_EN_0                  ( GND_net ), // tied to 1'b0 from definition
        // Outputs
        .DELAY_LINE_OUT_OF_RANGE_0 (  ),
        .PAD_O                     ( A_13 ) 
        );

//--------DDR3_0_DDRPHY_BLK_IOD_A_15_PF_IOD   -   Actel:SgCore:PF_IOD:1.0.215
DDR3_0_DDRPHY_BLK_IOD_A_15_PF_IOD IOD_A_15(
        // Inputs
        .ARST_N                    ( LANECTRL_ADDR_CMD_0_ARST_N ),
        .RX_SYNC_RST               ( LANECTRL_ADDR_CMD_0_RX_SYNC_RST ),
        .TX_SYNC_RST               ( LANECTRL_ADDR_CMD_0_TX_SYNC_RST ),
        .HS_IO_CLK                 ( HS_IO_CLK ),
        .TX_DQS_270                ( LANECTRL_ADDR_CMD_0_TX_DQS_270 ),
        .TX_DATA_0                 ( TX_DATA_0_net_4 ),
        .OE_DATA_0                 ( OE_DATA_0_const_net_3 ),
        .DELAY_LINE_MOVE_0         ( IOD_TRAINING_0_CMD_DELAY_LINE_MOVE ),
        .DELAY_LINE_DIRECTION_0    ( IOD_TRAINING_0_CMD_DELAY_LINE_DIRECTION ),
        .DELAY_LINE_LOAD_0         ( IOD_TRAINING_0_CMD_DELAY_LINE_LOAD ),
        .FAB_CLK                   ( SYS_CLK ),
        .ODT_EN_0                  ( GND_net ), // tied to 1'b0 from definition
        // Outputs
        .DELAY_LINE_OUT_OF_RANGE_0 (  ),
        .PAD_O                     ( A_14 ) 
        );

//--------DDR3_0_DDRPHY_BLK_IOD_BA_PF_IOD   -   Actel:SgCore:PF_IOD:1.0.215
DDR3_0_DDRPHY_BLK_IOD_BA_PF_IOD IOD_BA(
        // Inputs
        .ARST_N                    ( LANECTRL_ADDR_CMD_0_ARST_N ),
        .RX_SYNC_RST               ( LANECTRL_ADDR_CMD_0_RX_SYNC_RST ),
        .TX_SYNC_RST               ( LANECTRL_ADDR_CMD_0_TX_SYNC_RST ),
        .HS_IO_CLK                 ( HS_IO_CLK ),
        .TX_DQS_270                ( LANECTRL_ADDR_CMD_0_TX_DQS_270 ),
        .TX_DATA_0                 ( TX_DATA_0_net_5 ),
        .TX_DATA_1                 ( TX_DATA_1_net_1 ),
        .TX_DATA_2                 ( TX_DATA_2_net_1 ),
        .OE_DATA_0                 ( OE_DATA_0_const_net_4 ),
        .OE_DATA_1                 ( OE_DATA_1_const_net_1 ),
        .OE_DATA_2                 ( OE_DATA_2_const_net_1 ),
        .DELAY_LINE_MOVE_0         ( IOD_TRAINING_0_CMD_DELAY_LINE_MOVE ),
        .DELAY_LINE_MOVE_1         ( IOD_TRAINING_0_CMD_DELAY_LINE_MOVE ),
        .DELAY_LINE_MOVE_2         ( IOD_TRAINING_0_CMD_DELAY_LINE_MOVE ),
        .DELAY_LINE_DIRECTION_0    ( IOD_TRAINING_0_CMD_DELAY_LINE_DIRECTION ),
        .DELAY_LINE_DIRECTION_1    ( IOD_TRAINING_0_CMD_DELAY_LINE_DIRECTION ),
        .DELAY_LINE_DIRECTION_2    ( IOD_TRAINING_0_CMD_DELAY_LINE_DIRECTION ),
        .DELAY_LINE_LOAD_0         ( IOD_TRAINING_0_CMD_DELAY_LINE_LOAD ),
        .DELAY_LINE_LOAD_1         ( IOD_TRAINING_0_CMD_DELAY_LINE_LOAD ),
        .DELAY_LINE_LOAD_2         ( IOD_TRAINING_0_CMD_DELAY_LINE_LOAD ),
        .FAB_CLK                   ( SYS_CLK ),
        .ODT_EN_0                  ( GND_net ), // tied to 1'b0 from definition
        .ODT_EN_1                  ( GND_net ), // tied to 1'b0 from definition
        .ODT_EN_2                  ( GND_net ), // tied to 1'b0 from definition
        // Outputs
        .DELAY_LINE_OUT_OF_RANGE_0 (  ),
        .DELAY_LINE_OUT_OF_RANGE_1 (  ),
        .DELAY_LINE_OUT_OF_RANGE_2 (  ),
        .PAD_O                     ( BA_net_0 ) 
        );

//--------DDR3_0_DDRPHY_BLK_IOD_BCLK_TRAINING_PF_IOD   -   Actel:SgCore:PF_IOD:1.0.215
DDR3_0_DDRPHY_BLK_IOD_BCLK_TRAINING_PF_IOD IOD_BCLK_TRAINING(
        // Inputs
        .ARST_N                    ( VCC_net ), // tied to 1'b1 from definition
        .RX_SYNC_RST               ( VCC_net ), // tied to 1'b1 from definition
        .TX_SYNC_RST               ( VCC_net ), // tied to 1'b1 from definition
        .HS_IO_CLK                 ( HS_IO_CLK ),
        .EYE_MONITOR_CLEAR_FLAGS_0 ( IOD_TRAINING_0_BCLK_EYE_MONITOR_CLR_FLAGS ),
        .DELAY_LINE_MOVE_0         ( GND_net ),
        .DELAY_LINE_DIRECTION_0    ( GND_net ),
        .DELAY_LINE_LOAD_0         ( GND_net ),
        .FAB_CLK                   ( SYS_CLK ),
        .ODT_EN_0                  ( GND_net ), // tied to 1'b0 from definition
        // Outputs
        .DELAY_LINE_OUT_OF_RANGE_0 (  ),
        .EYE_MONITOR_EARLY_0       ( IOD_BCLK_TRAINING_EYE_MONITOR_EARLY_0 ),
        .EYE_MONITOR_LATE_0        ( IOD_BCLK_TRAINING_EYE_MONITOR_LATE_0 ),
        .RX_DATA_0                 ( RX_DATA_0_net_1 ) 
        );

//--------DDR3_0_DDRPHY_BLK_IOD_CAS_N_PF_IOD   -   Actel:SgCore:PF_IOD:1.0.215
DDR3_0_DDRPHY_BLK_IOD_CAS_N_PF_IOD IOD_CAS_N(
        // Inputs
        .ARST_N                    ( LANECTRL_ADDR_CMD_0_ARST_N ),
        .RX_SYNC_RST               ( LANECTRL_ADDR_CMD_0_RX_SYNC_RST ),
        .TX_SYNC_RST               ( LANECTRL_ADDR_CMD_0_TX_SYNC_RST ),
        .HS_IO_CLK                 ( HS_IO_CLK ),
        .TX_DQS_270                ( LANECTRL_ADDR_CMD_0_TX_DQS_270 ),
        .TX_DATA_0                 ( TX_DATA_0_net_6 ),
        .OE_DATA_0                 ( OE_DATA_0_const_net_5 ),
        .DELAY_LINE_MOVE_0         ( IOD_TRAINING_0_CMD_DELAY_LINE_MOVE ),
        .DELAY_LINE_DIRECTION_0    ( IOD_TRAINING_0_CMD_DELAY_LINE_DIRECTION ),
        .DELAY_LINE_LOAD_0         ( IOD_TRAINING_0_CMD_DELAY_LINE_LOAD ),
        .FAB_CLK                   ( SYS_CLK ),
        .ODT_EN_0                  ( GND_net ), // tied to 1'b0 from definition
        // Outputs
        .DELAY_LINE_OUT_OF_RANGE_0 (  ),
        .PAD_O                     ( CAS_N_net_0 ) 
        );

//--------DDR3_0_DDRPHY_BLK_IOD_CKE_PF_IOD   -   Actel:SgCore:PF_IOD:1.0.215
DDR3_0_DDRPHY_BLK_IOD_CKE_PF_IOD IOD_CKE(
        // Inputs
        .ARST_N                    ( LANECTRL_ADDR_CMD_0_ARST_N ),
        .RX_SYNC_RST               ( LANECTRL_ADDR_CMD_0_RX_SYNC_RST ),
        .TX_SYNC_RST               ( LANECTRL_ADDR_CMD_0_TX_SYNC_RST ),
        .HS_IO_CLK                 ( HS_IO_CLK ),
        .TX_DQS_270                ( LANECTRL_ADDR_CMD_0_TX_DQS_270 ),
        .TX_DATA_0                 ( TX_DATA_0_net_7 ),
        .OE_DATA_0                 ( OE_DATA_0_const_net_6 ),
        .DELAY_LINE_MOVE_0         ( GND_net ),
        .DELAY_LINE_DIRECTION_0    ( GND_net ),
        .DELAY_LINE_LOAD_0         ( GND_net ),
        .FAB_CLK                   ( SYS_CLK ),
        .ODT_EN_0                  ( GND_net ), // tied to 1'b0 from definition
        // Outputs
        .DELAY_LINE_OUT_OF_RANGE_0 (  ),
        .PAD_O                     ( CKE_net_0 ) 
        );

//--------DDR3_0_DDRPHY_BLK_IOD_CS_N_PF_IOD   -   Actel:SgCore:PF_IOD:1.0.215
DDR3_0_DDRPHY_BLK_IOD_CS_N_PF_IOD IOD_CS_N(
        // Inputs
        .ARST_N                    ( LANECTRL_ADDR_CMD_0_ARST_N ),
        .RX_SYNC_RST               ( LANECTRL_ADDR_CMD_0_RX_SYNC_RST ),
        .TX_SYNC_RST               ( LANECTRL_ADDR_CMD_0_TX_SYNC_RST ),
        .HS_IO_CLK                 ( HS_IO_CLK ),
        .TX_DQS_270                ( LANECTRL_ADDR_CMD_0_TX_DQS_270 ),
        .TX_DATA_0                 ( TX_DATA_0_net_8 ),
        .OE_DATA_0                 ( OE_DATA_0_const_net_7 ),
        .DELAY_LINE_MOVE_0         ( IOD_TRAINING_0_CMD_DELAY_LINE_MOVE ),
        .DELAY_LINE_DIRECTION_0    ( IOD_TRAINING_0_CMD_DELAY_LINE_DIRECTION ),
        .DELAY_LINE_LOAD_0         ( IOD_TRAINING_0_CMD_DELAY_LINE_LOAD ),
        .FAB_CLK                   ( SYS_CLK ),
        .ODT_EN_0                  ( GND_net ), // tied to 1'b0 from definition
        // Outputs
        .DELAY_LINE_OUT_OF_RANGE_0 (  ),
        .PAD_O                     ( CS_N_net_0 ) 
        );

//--------DDR3_0_DDRPHY_BLK_IOD_ODT_PF_IOD   -   Actel:SgCore:PF_IOD:1.0.215
DDR3_0_DDRPHY_BLK_IOD_ODT_PF_IOD IOD_ODT(
        // Inputs
        .ARST_N                    ( LANECTRL_ADDR_CMD_0_ARST_N ),
        .RX_SYNC_RST               ( LANECTRL_ADDR_CMD_0_RX_SYNC_RST ),
        .TX_SYNC_RST               ( LANECTRL_ADDR_CMD_0_TX_SYNC_RST ),
        .HS_IO_CLK                 ( HS_IO_CLK ),
        .TX_DQS_270                ( LANECTRL_ADDR_CMD_0_TX_DQS_270 ),
        .TX_DATA_0                 ( TX_DATA_0_net_9 ),
        .OE_DATA_0                 ( OE_DATA_0_const_net_8 ),
        .DELAY_LINE_MOVE_0         ( IOD_TRAINING_0_CMD_DELAY_LINE_MOVE ),
        .DELAY_LINE_DIRECTION_0    ( IOD_TRAINING_0_CMD_DELAY_LINE_DIRECTION ),
        .DELAY_LINE_LOAD_0         ( IOD_TRAINING_0_CMD_DELAY_LINE_LOAD ),
        .FAB_CLK                   ( SYS_CLK ),
        .ODT_EN_0                  ( GND_net ), // tied to 1'b0 from definition
        // Outputs
        .DELAY_LINE_OUT_OF_RANGE_0 (  ),
        .PAD_O                     ( ODT_net_0 ) 
        );

//--------DDR3_0_DDRPHY_BLK_IOD_RAS_N_PF_IOD   -   Actel:SgCore:PF_IOD:1.0.215
DDR3_0_DDRPHY_BLK_IOD_RAS_N_PF_IOD IOD_RAS_N(
        // Inputs
        .ARST_N                    ( LANECTRL_ADDR_CMD_0_ARST_N ),
        .RX_SYNC_RST               ( LANECTRL_ADDR_CMD_0_RX_SYNC_RST ),
        .TX_SYNC_RST               ( LANECTRL_ADDR_CMD_0_TX_SYNC_RST ),
        .HS_IO_CLK                 ( HS_IO_CLK ),
        .TX_DQS_270                ( LANECTRL_ADDR_CMD_0_TX_DQS_270 ),
        .TX_DATA_0                 ( TX_DATA_0_net_10 ),
        .OE_DATA_0                 ( OE_DATA_0_const_net_9 ),
        .DELAY_LINE_MOVE_0         ( IOD_TRAINING_0_CMD_DELAY_LINE_MOVE ),
        .DELAY_LINE_DIRECTION_0    ( IOD_TRAINING_0_CMD_DELAY_LINE_DIRECTION ),
        .DELAY_LINE_LOAD_0         ( IOD_TRAINING_0_CMD_DELAY_LINE_LOAD ),
        .FAB_CLK                   ( SYS_CLK ),
        .ODT_EN_0                  ( GND_net ), // tied to 1'b0 from definition
        // Outputs
        .DELAY_LINE_OUT_OF_RANGE_0 (  ),
        .PAD_O                     ( RAS_N_net_0 ) 
        );

//--------DDR3_0_DDRPHY_BLK_IOD_REF_CLK_TRAINING_PF_IOD   -   Actel:SgCore:PF_IOD:1.0.215
DDR3_0_DDRPHY_BLK_IOD_REF_CLK_TRAINING_PF_IOD IOD_REF_CLK_TRAINING(
        // Inputs
        .RX_P_0                    ( OB_DIFF_CK0_Y ),
        .HS_IO_CLK                 ( HS_IO_CLK ),
        .EYE_MONITOR_CLEAR_FLAGS_0 ( IOD_TRAINING_0_REFCLK_EYE_MONITOR_CLR_FLAGS ),
        .DELAY_LINE_MOVE_0         ( IOD_TRAINING_0_REFCLK_DELAY_LINE_MOVE ),
        .DELAY_LINE_DIRECTION_0    ( IOD_TRAINING_0_REFCLK_DELAY_LINE_DIRECTION ),
        .DELAY_LINE_LOAD_0         ( IOD_TRAINING_0_REFCLK_DELAY_LINE_LOAD ),
        .FAB_CLK                   ( SYS_CLK ),
        .ODT_EN_0                  ( GND_net ), // tied to 1'b0 from definition
        // Outputs
        .DELAY_LINE_OUT_OF_RANGE_0 (  ),
        .EYE_MONITOR_EARLY_0       ( IOD_REF_CLK_TRAINING_EYE_MONITOR_EARLY_0 ),
        .EYE_MONITOR_LATE_0        ( IOD_REF_CLK_TRAINING_EYE_MONITOR_LATE_0 ),
        .RX_DATA_0                 ( RX_DATA_0_net_2 ) 
        );

//--------DDR3_0_DDRPHY_BLK_IOD_RESET_N_PF_IOD   -   Actel:SgCore:PF_IOD:1.0.215
DDR3_0_DDRPHY_BLK_IOD_RESET_N_PF_IOD IOD_RESET_N(
        // Inputs
        .ARST_N                    ( LANECTRL_ADDR_CMD_0_ARST_N ),
        .RX_SYNC_RST               ( LANECTRL_ADDR_CMD_0_RX_SYNC_RST ),
        .TX_SYNC_RST               ( LANECTRL_ADDR_CMD_0_TX_SYNC_RST ),
        .HS_IO_CLK                 ( HS_IO_CLK ),
        .TX_DQS_270                ( LANECTRL_ADDR_CMD_0_TX_DQS_270 ),
        .TX_DATA_0                 ( TX_DATA_0_net_11 ),
        .OE_DATA_0                 ( OE_DATA_0_const_net_10 ),
        .DELAY_LINE_MOVE_0         ( GND_net ),
        .DELAY_LINE_DIRECTION_0    ( GND_net ),
        .DELAY_LINE_LOAD_0         ( GND_net ),
        .FAB_CLK                   ( SYS_CLK ),
        .ODT_EN_0                  ( GND_net ), // tied to 1'b0 from definition
        // Outputs
        .DELAY_LINE_OUT_OF_RANGE_0 (  ),
        .PAD_O                     ( RESET_N_net_0 ) 
        );

//--------COREDDR_TIP   -   Actel:DirectCore:COREDDR_TIP:2.0.100
COREDDR_TIP #( 
        .FAMILY             ( 26 ),
        .FIFO_ADDRESS_WIDTH ( 7 ),
        .FIFO_DEPTH         ( 2 ),
        .IOG_DQ_WIDTH_L0    ( 8 ),
        .IOG_DQ_WIDTH_L1    ( 8 ),
        .IOG_DQ_WIDTH_L2    ( 8 ),
        .IOG_DQ_WIDTH_L3    ( 8 ),
        .IOG_DQ_WIDTH_L4    ( 8 ),
        .IOG_DQ_WIDTH_L5    ( 8 ),
        .IOG_DQ_WIDTH_L6    ( 8 ),
        .IOG_DQ_WIDTH_L7    ( 8 ),
        .IOG_DQ_WIDTH_L8    ( 8 ),
        .IOG_DQS_LANES      ( 2 ),
        .NUM_BCLKS          ( 1 ),
        .PIPELINE           ( 0 ),
        .SIM_TRAINING       ( 0 ) )
IOD_TRAINING_0(
        // Inputs
        .SCLK                          ( SYS_CLK ),
        .RESET_N                       ( SYS_RST_N ),
        .DFI_INIT_START                ( DFI_INIT_START ),
        .DFI_RDLVL_CS_0_N              ( DFI_RDLVL_CS_N ),
        .DFI_RDLVL_CS_1_N              ( VCC_net ),
        .DFI_WRLVL_CS_0_N              ( DFI_WRLVL_CS_N ),
        .DFI_WRLVL_CS_1_N              ( VCC_net ),
        .DFI_RDDATA_CS_0_N_P0          ( DFI_RDDATA_CS_N_P0 ),
        .DFI_RDDATA_CS_0_N_P1          ( DFI_RDDATA_CS_N_P1 ),
        .DFI_RDDATA_CS_0_N_P2          ( DFI_RDDATA_CS_N_P2 ),
        .DFI_RDDATA_CS_0_N_P3          ( DFI_RDDATA_CS_N_P3 ),
        .DFI_RDDATA_CS_1_N_P0          ( GND_net ),
        .DFI_RDDATA_CS_1_N_P1          ( GND_net ),
        .DFI_RDDATA_CS_1_N_P2          ( GND_net ),
        .DFI_RDDATA_CS_1_N_P3          ( GND_net ),
        .DFI_WRDATA_CS_0_N_P0          ( DFI_WRDATA_CS_N_P0 ),
        .DFI_WRDATA_CS_0_N_P1          ( DFI_WRDATA_CS_N_P1 ),
        .DFI_WRDATA_CS_0_N_P2          ( DFI_WRDATA_CS_N_P2 ),
        .DFI_WRDATA_CS_0_N_P3          ( DFI_WRDATA_CS_N_P3 ),
        .DFI_WRDATA_CS_1_N_P0          ( GND_net ),
        .DFI_WRDATA_CS_1_N_P1          ( GND_net ),
        .DFI_WRDATA_CS_1_N_P2          ( GND_net ),
        .DFI_WRDATA_CS_1_N_P3          ( GND_net ),
        .DFI_RDLVL_EN                  ( DFI_RDLVL_EN ),
        .DFI_RDLVL_GATE_EN             ( DFI_RDLVL_GATE_EN ),
        .DFI_WRDATA_EN_P0              ( DFI_WRDATA_EN_P0_slice_0 ),
        .DFI_WRDATA_EN_P1              ( DFI_WRDATA_EN_P1_slice_0 ),
        .DFI_WRDATA_EN_P2              ( DFI_WRDATA_EN_P2_slice_0 ),
        .DFI_WRDATA_EN_P3              ( DFI_WRDATA_EN_P3_slice_0 ),
        .DFI_WRLVL_EN                  ( DFI_WRLVL_EN ),
        .DFI_WRLVL_STROBE              ( DFI_WRLVL_STROBE ),
        .BCLK_EYE_MONITOR_EARLY        ( IOD_BCLK_TRAINING_EYE_MONITOR_EARLY_0 ),
        .BCLK_EYE_MONITOR_LATE         ( IOD_BCLK_TRAINING_EYE_MONITOR_LATE_0 ),
        .BURST_DETECT                  ( BURST_DETECT_net_0 ),
        .REFCLK_EYE_MONITOR_EARLY      ( IOD_REF_CLK_TRAINING_EYE_MONITOR_EARLY_0 ),
        .REFCLK_EYE_MONITOR_LATE       ( IOD_REF_CLK_TRAINING_EYE_MONITOR_LATE_0 ),
        .RX_OUT_OF_RANGE               ( RX_OUT_OF_RANGE_net_0 ),
        .TWO_RANKS                     ( GND_net ),
        .TX_OUT_OF_RANGE               ( TX_OUT_OF_RANGE_net_0 ),
        .PADDR                         ( PADDR ),
        .PENABLE                       ( PENABLE ),
        .PSEL                          ( PSEL ),
        .PWDATA                        ( PWDATA ),
        .PWRITE                        ( PWRITE ),
        .TRAINING_PATTERN              ( TRAINING_PATTERN_const_net_0 ),
        .DLL_DLY_DIFF                  ( DLL_DLY_DIFF ),
        .VREF_OUT_OF_RANGE             (  ),
        .DFI_CTRLUPD_REQ               ( DFI_CTRLUPD_REQ ),
        .DFI_RDDATA_EN_P0              ( DFI_RDDATA_EN_P0_slice_0 ),
        .DFI_RDDATA_EN_P1              ( DFI_RDDATA_EN_P1_slice_0 ),
        .DFI_RDDATA_EN_P2              ( DFI_RDDATA_EN_P2_slice_0 ),
        .DFI_RDDATA_EN_P3              ( DFI_RDDATA_EN_P3_slice_0 ),
        .IOG_RDDATA                    ( IOG_RDDATA_net_0 ),
        .IOG_RDDATA_VALID              ( IOG_RDDATA_VALID_net_0 ),
        .PAD_RDDATA                    ( PAD_RDDATA_net_0 ),
        .DQSW_EYE_MONITOR_EARLY        ( DQSW_EYE_MONITOR_EARLY_net_0 ),
        .DQSW_EYE_MONITOR_LATE         ( DQSW_EYE_MONITOR_LATE_net_0 ),
        .DQSW270_EYE_MONITOR_EARLY     ( DQSW270_EYE_MONITOR_EARLY_net_0 ),
        .DQSW270_EYE_MONITOR_LATE      ( DQSW270_EYE_MONITOR_LATE_net_0 ),
        .CMD_EYE_MONITOR_EARLY         ( IOD_A_12_EYE_MONITOR_EARLY_0 ),
        .CMD_EYE_MONITOR_LATE          ( IOD_A_12_EYE_MONITOR_LATE_0 ),
        .REFCLK_IGEAR_RX8              ( IOD_REF_CLK_TRAINING_RX_DATA_06to6 ),
        .DQSW270_IGEAR_RX8             ( DQSW270_IGEAR_RX8_net_0 ),
        .DQSW_DELAY_LINE_OOR           ( DQSW_DELAY_LINE_OOR_net_0 ),
        .DQSW270_DELAY_LINE_OOR        ( DQSW270_DELAY_LINE_OOR_net_0 ),
        .PLL_LOCK                      ( PLL_LOCK ),
        .DFI_WRDATA_MASK_P0            (  ),
        .DFI_WRDATA_MASK_P1            (  ),
        .DFI_WRDATA_MASK_P2            (  ),
        .DFI_WRDATA_MASK_P3            (  ),
        .DFI_ADDRESS_P0                ( DFI_ADDRESS_P0_net_0 ),
        .DFI_ADDRESS_P1                ( DFI_ADDRESS_P1_net_0 ),
        .DFI_ADDRESS_P2                ( DFI_ADDRESS_P2_net_0 ),
        .DFI_ADDRESS_P3                ( DFI_ADDRESS_P3_net_0 ),
        .BCLK_IGEAR_RX                 ( BCLK_IGEAR_RX_net_0 ),
        .CMD_IGEAR_RX8                 ( IOD_A_12_RX_DATA_03to3 ),
        .DQSW270_IGEAR_RX              ( DQSW270_IGEAR_RX_net_0 ),
        .DQSW_IGEAR_RX                 ( DQSW_IGEAR_RX_net_0 ),
        .SKIP_DQSW_TRN                 ( SKIP_DQSW_TRN ),
        .SKIP_BCLK_TRN                 ( SKIP_BCLK_TRN ),
        .SKIP_CA_TRN                   ( SKIP_CA_TRN ),
        .SKIP_WRLVL_TRN                ( SKIP_WRLVL_TRN ),
        .SKIP_RDLVL_TRN                ( SKIP_RDLVL_TRN ),
        .BCLK_VCOPHS_OFFSET            ( BCLK_VCOPHS_OFFSET ),
        .ADDR_VCOPHS_OFFSET            ( ADDR_VCOPHS_OFFSET ),
        .WRLVL_TAP_OFFSET              ( WRLVL_TAP_OFFSET ),
        .CAL_INIT_ACK                  (  ),
        .SKIP_VREF_TRAINING            ( VCC_net ),
        .PCLK                          ( PCLK ),
        .VREF_MR6_VALUE                ( VREF_MR6_VALUE_const_net_0 ),
        .CTRLR_READY_IN                ( CTRLR_READY_IN ),
        .IOG_DQ_TXDATA_IN              ( IOG_DQ_TXDATA_IN_net_0 ),
        .IOG_DM_TXDATA_IN              ( IOG_DM_TXDATA_IN_net_0 ),
        .CAL_L_BUSY                    ( CAL_L_BUSY ),
        .CAL_L_D_REQ                   ( CAL_L_D_REQ ),
        .CAL_L_DATAOUT                 ( CAL_L_DATAOUT ),
        .CAL_L_R_VALID                 ( CAL_L_R_VALID ),
        .ADDR_WAIT_COUNT               ( ADDR_WAIT_COUNT ),
        .WRCAL_WRITE_COUNTER_VALUE     ( WRCAL_WRITE_COUNTER_VALUE ),
        .RDGATE_MIN_READS_THRESHOLD    ( RDGATE_MIN_READS_THRESHOLD ),
        .DFI_RESET_N_P0                ( DFI_RESET_N_P0 ),
        .DFI_RESET_N_P1                ( DFI_RESET_N_P1 ),
        .DFI_RESET_N_P2                ( DFI_RESET_N_P2 ),
        .DFI_RESET_N_P3                ( DFI_RESET_N_P3 ),
        .DFI_BANK_P0                   ( DFI_BANK_P0_net_0 ),
        .DFI_BANK_P1                   ( DFI_BANK_P1_net_0 ),
        .DFI_BANK_P2                   ( DFI_BANK_P2_net_0 ),
        .DFI_BANK_P3                   ( DFI_BANK_P3_net_0 ),
        .DFI_CS_N_P0                   ( DFI_CS_N_P0 ),
        .DFI_CS_N_P1                   ( DFI_CS_N_P1 ),
        .DFI_CS_N_P2                   ( DFI_CS_N_P2 ),
        .DFI_CS_N_P3                   ( DFI_CS_N_P3 ),
        .DFI_ODT_P0                    ( DFI_ODT_P0 ),
        .DFI_ODT_P1                    ( DFI_ODT_P1 ),
        .DFI_ODT_P2                    ( DFI_ODT_P2 ),
        .DFI_ODT_P3                    ( DFI_ODT_P3 ),
        .DFI_CKE_P0                    ( DFI_CKE_P0 ),
        .DFI_CKE_P1                    ( DFI_CKE_P1 ),
        .DFI_CKE_P2                    ( DFI_CKE_P2 ),
        .DFI_CKE_P3                    ( DFI_CKE_P3 ),
        .DFI_RAS_N_P0                  ( DFI_RAS_N_P0 ),
        .DFI_RAS_N_P1                  ( DFI_RAS_N_P1 ),
        .DFI_RAS_N_P2                  ( DFI_RAS_N_P2 ),
        .DFI_RAS_N_P3                  ( DFI_RAS_N_P3 ),
        .DFI_CAS_N_P0                  ( DFI_CAS_N_P0 ),
        .DFI_CAS_N_P1                  ( DFI_CAS_N_P1 ),
        .DFI_CAS_N_P2                  ( DFI_CAS_N_P2 ),
        .DFI_CAS_N_P3                  ( DFI_CAS_N_P3 ),
        .DFI_WE_N_P0                   ( DFI_WE_N_P0 ),
        .DFI_WE_N_P1                   ( DFI_WE_N_P1 ),
        .DFI_WE_N_P2                   ( DFI_WE_N_P2 ),
        .DFI_WE_N_P3                   ( DFI_WE_N_P3 ),
        .DFI_ACT_N_P0                  (  ),
        .DFI_ACT_N_P1                  (  ),
        .DFI_ACT_N_P2                  (  ),
        .DFI_ACT_N_P3                  (  ),
        .DFI_BG_P0                     (  ),
        .DFI_BG_P1                     (  ),
        .DFI_BG_P2                     (  ),
        .DFI_BG_P3                     (  ),
        // Outputs
        .DFI_INIT_COMPLETE             ( DFI_INIT_COMPLETE_net_0 ),
        .DFI_RDLVL_RESP                ( DFI_RDLVL_RESP_net_0 ),
        .DFI_TRAINING_COMPLETE         ( DFI_TRAINING_COMPLETE_net_0 ),
        .DFI_WRLVL_RESP                ( DFI_WRLVL_RESP_net_0 ),
        .BCLK_EYE_MONITOR_CLR_FLAGS    ( IOD_TRAINING_0_BCLK_EYE_MONITOR_CLR_FLAGS ),
        .CLK_SEL                       ( CLK_SEL_net_0 ),
        .DELAY_LINE_SEL_RD             ( DELAY_LINE_SEL_RD_net_0 ),
        .DIRECTION                     ( DIRECTION_net_0 ),
        .IOG_OE_P0                     ( IOG_OE_P0_net_0 ),
        .IOG_OE_P1                     ( IOG_OE_P1_net_0 ),
        .IOG_OE_P2                     ( IOG_OE_P2_net_0 ),
        .IOG_OE_P3                     ( IOG_OE_P3_net_0 ),
        .DQS_OE_P0                     ( DQS_OE_P0_net_0 ),
        .DQS_OE_P1                     ( DQS_OE_P1_net_0 ),
        .DQS_OE_P2                     ( DQS_OE_P2_net_0 ),
        .DQS_OE_P3                     ( DQS_OE_P3_net_0 ),
        .DM_OE_P0                      ( DM_OE_P0_net_0 ),
        .DM_OE_P1                      ( DM_OE_P1_net_0 ),
        .DM_OE_P2                      ( DM_OE_P2_net_0 ),
        .DM_OE_P3                      ( DM_OE_P3_net_0 ),
        .LOAD                          ( LOAD_net_0 ),
        .MOVE                          ( MOVE_net_0 ),
        .REFCLK_EYE_MONITOR_CLR_FLAGS  ( IOD_TRAINING_0_REFCLK_EYE_MONITOR_CLR_FLAGS ),
        .PRDATA                        ( APB_DEBUG_PRDATA ),
        .PREADY                        ( APB_DEBUG_PREADY ),
        .ODT_DYN_LANE                  ( ODT_DYN_LANE_net_0 ),
        .CODE_UPDATE                   ( CODE_UPDATE_net_0 ),
        .LOADPHS_B                     ( LOADPHS_B_net_0 ),
        .VCO_PHSEL_BCLK_SEL            ( VCO_PHSEL_BCLK_SEL_net_0 ),
        .VCO_PHSEL_REFCLK_SEL          ( VCO_PHSEL_REFCLK_SEL_net_0 ),
        .VCO_PHSEL_ROTATE              ( VCO_PHSEL_ROTATE_net_0 ),
        .VREF_DIRECTION                (  ),
        .VREF_MOVE                     (  ),
        .VREF_RELOAD                   (  ),
        .DFI_RDDATA_W0                 ( DFI_RDDATA_W0_net_0 ),
        .DFI_RDDATA_W1                 ( DFI_RDDATA_W1_net_0 ),
        .DFI_RDDATA_W2                 ( DFI_RDDATA_W2_net_0 ),
        .DFI_RDDATA_W3                 ( DFI_RDDATA_W3_net_0 ),
        .DFI_RDDATA_VALID_W0           ( DFI_RDDATA_VALID_W0_net_0 ),
        .DFI_RDDATA_VALID_W1           ( DFI_RDDATA_VALID_W1_net_0 ),
        .DFI_RDDATA_VALID_W2           ( DFI_RDDATA_VALID_W2_net_0 ),
        .DFI_RDDATA_VALID_W3           ( DFI_RDDATA_VALID_W3_net_0 ),
        .IOG_RDDATA_EN_P0_P            ( IOG_RDDATA_EN_P0_P_net_0 ),
        .IOG_RDDATA_EN_P0_N            ( IOG_RDDATA_EN_P0_N_net_0 ),
        .IOG_RDDATA_EN_P1_P            ( IOG_RDDATA_EN_P1_P_net_0 ),
        .IOG_RDDATA_EN_P1_N            ( IOG_RDDATA_EN_P1_N_net_0 ),
        .IOG_RDDATA_EN_P2_P            ( IOG_RDDATA_EN_P2_P_net_0 ),
        .IOG_RDDATA_EN_P2_N            ( IOG_RDDATA_EN_P2_N_net_0 ),
        .IOG_RDDATA_EN_P3_P            ( IOG_RDDATA_EN_P3_P_net_0 ),
        .IOG_RDDATA_EN_P3_N            ( IOG_RDDATA_EN_P3_N_net_0 ),
        .RD_TRAINING_ERROR             (  ),
        .DQSW_EYE_MONITOR_CLR_FLAGS    ( DQSW_EYE_MONITOR_CLR_FLAGS_net_0 ),
        .DQSW270_EYE_MONITOR_CLR_FLAGS ( DQSW270_EYE_MONITOR_CLR_FLAGS_net_0 ),
        .DQSW_DELAY_LINE_LOAD          ( DQSW_DELAY_LINE_LOAD_net_0 ),
        .DQSW_DELAY_LINE_MOVE          ( DQSW_DELAY_LINE_MOVE_net_0 ),
        .DQSW_DELAY_LINE_DIRECTION     ( DQSW_DELAY_LINE_DIRECTION_net_0 ),
        .DQSW270_DELAY_LINE_LOAD       ( DQSW270_DELAY_LINE_LOAD_net_0 ),
        .DQSW270_DELAY_LINE_MOVE       ( DQSW270_DELAY_LINE_MOVE_net_0 ),
        .DQSW270_DELAY_LINE_DIRECTION  ( DQSW270_DELAY_LINE_DIRECTION_net_0 ),
        .REFCLK_DELAY_LINE_LOAD        ( IOD_TRAINING_0_REFCLK_DELAY_LINE_LOAD ),
        .REFCLK_DELAY_LINE_MOVE        ( IOD_TRAINING_0_REFCLK_DELAY_LINE_MOVE ),
        .REFCLK_DELAY_LINE_DIRECTION   ( IOD_TRAINING_0_REFCLK_DELAY_LINE_DIRECTION ),
        .CMD_EYE_MONITOR_CLR_FLAGS     ( IOD_TRAINING_0_CMD_EYE_MONITOR_CLR_FLAGS ),
        .CMD_DELAY_LINE_LOAD           ( IOD_TRAINING_0_CMD_DELAY_LINE_LOAD ),
        .CMD_DELAY_LINE_MOVE           ( IOD_TRAINING_0_CMD_DELAY_LINE_MOVE ),
        .CMD_DELAY_LINE_DIRECTION      ( IOD_TRAINING_0_CMD_DELAY_LINE_DIRECTION ),
        .VCO_PHSEL_BCLK90_SEL          ( VCO_PHSEL_BCLK90_SEL_net_0 ),
        .DQSW_SELA                     ( DQSW_SELA_net_0 ),
        .CMD_OE                        ( IOD_TRAINING_0_CMD_OE ),
        .CMD_DELAY_LINE_MOVE_TRN       ( IOD_TRAINING_0_CMD_DELAY_LINE_MOVE_TRN ),
        .INIT_PAUSE                    ( INIT_PAUSE_net_0 ),
        .INIT_RESET                    ( SYNC_SYS_RST_N_net_0 ),
        .IOG_WRDATA_MASK_P0            ( IOG_WRDATA_MASK_P0_net_0 ),
        .IOG_WRDATA_MASK_P1            ( IOG_WRDATA_MASK_P1_net_0 ),
        .IOG_WRDATA_MASK_P2            ( IOG_WRDATA_MASK_P2_net_0 ),
        .IOG_WRDATA_MASK_P3            ( IOG_WRDATA_MASK_P3_net_0 ),
        .IOG_ADDRESS_P0                ( IOG_ADDRESS_P0_net_0 ),
        .IOG_ADDRESS_P1                ( IOG_ADDRESS_P1_net_0 ),
        .IOG_ADDRESS_P2                ( IOG_ADDRESS_P2_net_0 ),
        .IOG_ADDRESS_P3                ( IOG_ADDRESS_P3_net_0 ),
        .CMD_RESET_LANE                ( IOD_TRAINING_0_CMD_RESET_LANE ),
        .CAL_INIT_MR_W_REQ             (  ),
        .CAL_INIT_MR_ADDR              (  ),
        .CAL_INIT_MR_WR_DATA           (  ),
        .CAL_INIT_MR_WR_MASK           (  ),
        .CAL_INIT_CS                   (  ),
        .CTRLR_READY_OUT               ( CTRLR_READY_OUT_net_0 ),
        .IOG_DQ_TXDATA_OUT             ( IOG_DQ_TXDATA_OUT_net_0 ),
        .IOG_DM_TXDATA_OUT             ( IOG_DM_TXDATA_OUT_net_0 ),
        .CAL_L_R_REQ                   ( CAL_L_R_REQ_net_0 ),
        .CAL_L_W_REQ                   ( CAL_L_W_REQ_net_0 ),
        .CAL_L_DATAIN                  ( CAL_L_DATAIN_net_0 ),
        .CAL_L_DM_IN                   ( CAL_L_DM_IN_net_0 ),
        .CAL_SELECT                    ( CAL_SELECT_net_0 ),
        .ITER_COUNT                    ( ITER_COUNT_net_0 ),
        .DFI_RESET_N_P0_OUT            ( IOD_TRAINING_0_DFI_RESET_N_P0_OUT ),
        .DFI_RESET_N_P1_OUT            ( IOD_TRAINING_0_DFI_RESET_N_P1_OUT ),
        .DFI_RESET_N_P2_OUT            ( IOD_TRAINING_0_DFI_RESET_N_P2_OUT ),
        .DFI_RESET_N_P3_OUT            ( IOD_TRAINING_0_DFI_RESET_N_P3_OUT ),
        .DFI_BANK_P0_OUT               ( DFI_BANK_P0_OUT_net_0 ),
        .DFI_BANK_P1_OUT               ( DFI_BANK_P1_OUT_net_0 ),
        .DFI_BANK_P2_OUT               ( DFI_BANK_P2_OUT_net_0 ),
        .DFI_BANK_P3_OUT               ( DFI_BANK_P3_OUT_net_0 ),
        .DFI_CS_N_P0_OUT               ( IOD_TRAINING_0_DFI_CS_N_P0_OUT ),
        .DFI_CS_N_P1_OUT               ( IOD_TRAINING_0_DFI_CS_N_P1_OUT ),
        .DFI_CS_N_P2_OUT               ( IOD_TRAINING_0_DFI_CS_N_P2_OUT ),
        .DFI_CS_N_P3_OUT               ( IOD_TRAINING_0_DFI_CS_N_P3_OUT ),
        .DFI_ODT_P0_OUT                ( IOD_TRAINING_0_DFI_ODT_P0_OUT ),
        .DFI_ODT_P1_OUT                ( IOD_TRAINING_0_DFI_ODT_P1_OUT ),
        .DFI_ODT_P2_OUT                ( IOD_TRAINING_0_DFI_ODT_P2_OUT ),
        .DFI_ODT_P3_OUT                ( IOD_TRAINING_0_DFI_ODT_P3_OUT ),
        .DFI_CKE_P0_OUT                ( IOD_TRAINING_0_DFI_CKE_P0_OUT ),
        .DFI_CKE_P1_OUT                ( IOD_TRAINING_0_DFI_CKE_P1_OUT ),
        .DFI_CKE_P2_OUT                ( IOD_TRAINING_0_DFI_CKE_P2_OUT ),
        .DFI_CKE_P3_OUT                ( IOD_TRAINING_0_DFI_CKE_P3_OUT ),
        .DFI_RAS_N_P0_OUT              ( IOD_TRAINING_0_DFI_RAS_N_P0_OUT ),
        .DFI_RAS_N_P1_OUT              ( IOD_TRAINING_0_DFI_RAS_N_P1_OUT ),
        .DFI_RAS_N_P2_OUT              ( IOD_TRAINING_0_DFI_RAS_N_P2_OUT ),
        .DFI_RAS_N_P3_OUT              ( IOD_TRAINING_0_DFI_RAS_N_P3_OUT ),
        .DFI_CAS_N_P0_OUT              ( IOD_TRAINING_0_DFI_CAS_N_P0_OUT ),
        .DFI_CAS_N_P1_OUT              ( IOD_TRAINING_0_DFI_CAS_N_P1_OUT ),
        .DFI_CAS_N_P2_OUT              ( IOD_TRAINING_0_DFI_CAS_N_P2_OUT ),
        .DFI_CAS_N_P3_OUT              ( IOD_TRAINING_0_DFI_CAS_N_P3_OUT ),
        .DFI_WE_N_P0_OUT               ( IOD_TRAINING_0_DFI_WE_N_P0_OUT ),
        .DFI_WE_N_P1_OUT               ( IOD_TRAINING_0_DFI_WE_N_P1_OUT ),
        .DFI_WE_N_P2_OUT               ( IOD_TRAINING_0_DFI_WE_N_P2_OUT ),
        .DFI_WE_N_P3_OUT               ( IOD_TRAINING_0_DFI_WE_N_P3_OUT ),
        .DFI_ACT_N_P0_OUT              (  ),
        .DFI_ACT_N_P1_OUT              (  ),
        .DFI_ACT_N_P2_OUT              (  ),
        .DFI_ACT_N_P3_OUT              (  ),
        .DFI_BG_P0_OUT                 (  ),
        .DFI_BG_P1_OUT                 (  ),
        .DFI_BG_P2_OUT                 (  ),
        .DFI_BG_P3_OUT                 (  ) 
        );

//--------DDR3_0_DDRPHY_BLK_IOD_WE_N_PF_IOD   -   Actel:SgCore:PF_IOD:1.0.215
DDR3_0_DDRPHY_BLK_IOD_WE_N_PF_IOD IOD_WE_N(
        // Inputs
        .ARST_N                    ( LANECTRL_ADDR_CMD_0_ARST_N ),
        .RX_SYNC_RST               ( LANECTRL_ADDR_CMD_0_RX_SYNC_RST ),
        .TX_SYNC_RST               ( LANECTRL_ADDR_CMD_0_TX_SYNC_RST ),
        .HS_IO_CLK                 ( HS_IO_CLK ),
        .TX_DQS_270                ( LANECTRL_ADDR_CMD_0_TX_DQS_270 ),
        .TX_DATA_0                 ( TX_DATA_0_net_12 ),
        .OE_DATA_0                 ( OE_DATA_0_const_net_11 ),
        .DELAY_LINE_MOVE_0         ( IOD_TRAINING_0_CMD_DELAY_LINE_MOVE ),
        .DELAY_LINE_DIRECTION_0    ( IOD_TRAINING_0_CMD_DELAY_LINE_DIRECTION ),
        .DELAY_LINE_LOAD_0         ( IOD_TRAINING_0_CMD_DELAY_LINE_LOAD ),
        .FAB_CLK                   ( SYS_CLK ),
        .ODT_EN_0                  ( GND_net ), // tied to 1'b0 from definition
        // Outputs
        .DELAY_LINE_OUT_OF_RANGE_0 (  ),
        .PAD_O                     ( WE_N_net_0 ) 
        );

//--------DDR3_0_DDRPHY_BLK_LANE_0_CTRL_PF_LANECTRL   -   Actel:SgCore:PF_LANECTRL:2.0.102
DDR3_0_DDRPHY_BLK_LANE_0_CTRL_PF_LANECTRL LANE_0_CTRL(
        // Inputs
        .DQS                        ( LANE_0_IOD_DQS_DQS ),
        .HS_IO_CLK                  ( HS_IO_CLK_net_0 ),
        .DLL_CODE                   ( DLL_CODE ),
        .FAB_CLK                    ( SYS_CLK ),
        .RESET                      ( SYNC_SYS_RST_N_net_0 ),
        .DDR_READ                   ( DFI_RDLVL_GATE_EN ),
        .READ_CLK_SEL               ( READ_CLK_SEL_net_0 ),
        .DELAY_LINE_SEL             ( IOD_TRAINING_0_DELAY_LINE_SEL_RD0to0 ),
        .DELAY_LINE_LOAD            ( IOD_TRAINING_0_LOAD8to8 ),
        .DELAY_LINE_DIRECTION       ( IOD_TRAINING_0_DIRECTION8to8 ),
        .DELAY_LINE_MOVE            ( IOD_TRAINING_0_MOVE8to8 ),
        .HS_IO_CLK_PAUSE            ( IOD_TRAINING_0_INIT_PAUSE0to0 ),
        .EYE_MONITOR_WIDTH_IN       ( EYE_MONITOR_WIDTH_IN_const_net_0 ),
        .ODT_EN                     ( VCC_net ),
        .CDR_CLK_A_SEL              ( IOD_TRAINING_0_DQSW_SELA7to0 ),
        .DDR_DO_READ                ( LANE_0_IOD_READ_TRAINING_DDR_DO_READ ),
        .SWITCH                     ( LANE_0_IOD_READ_TRAINING_SWITCH ),
        // Outputs
        .EYE_MONITOR_WIDTH_OUT      ( LANE_0_CTRL_EYE_MONITOR_WIDTH_OUT ),
        .ODT_EN_SEL                 (  ),
        .RX_DQS_90                  ( LANE_0_CTRL_RX_DQS_90 ),
        .TX_DQS                     ( LANE_0_CTRL_TX_DQS ),
        .TX_DQS_270                 ( LANE_0_CTRL_TX_DQS_270 ),
        .FIFO_WR_PTR                ( LANE_0_CTRL_FIFO_WR_PTR ),
        .FIFO_RD_PTR                ( LANE_0_CTRL_FIFO_RD_PTR ),
        .ARST_N                     ( LANE_0_CTRL_ARST_N ),
        .RX_SYNC_RST                ( LANE_0_CTRL_RX_SYNC_RST ),
        .TX_SYNC_RST                ( LANE_0_CTRL_TX_SYNC_RST ),
        .ODT_EN_OUT                 (  ),
        .RX_DATA_VALID              ( LANE_0_CTRL_RX_DATA_VALID ),
        .RX_BURST_DETECT            ( LANE_0_CTRL_RX_BURST_DETECT ),
        .RX_DELAY_LINE_OUT_OF_RANGE ( LANE_0_CTRL_RX_DELAY_LINE_OUT_OF_RANGE ),
        .TX_DELAY_LINE_OUT_OF_RANGE ( LANE_0_CTRL_TX_DELAY_LINE_OUT_OF_RANGE ),
        .A_OUT_RST_N                (  ) 
        );

//--------DDR3_0_DDRPHY_BLK_LANE_0_IOD_DM_PF_IOD   -   Actel:SgCore:PF_IOD:1.0.215
DDR3_0_DDRPHY_BLK_LANE_0_IOD_DM_PF_IOD LANE_0_IOD_DM(
        // Inputs
        .ARST_N                    ( LANE_0_CTRL_ARST_N ),
        .RX_SYNC_RST               ( LANE_0_CTRL_RX_SYNC_RST ),
        .TX_SYNC_RST               ( LANE_0_CTRL_TX_SYNC_RST ),
        .HS_IO_CLK                 ( HS_IO_CLK ),
        .TX_DQS                    ( LANE_0_CTRL_TX_DQS ),
        .TX_DATA_0                 ( TX_DATA_0_net_13 ),
        .OE_DATA_0                 ( OE_DATA_0_net_1 ),
        .DELAY_LINE_MOVE_0         ( GND_net ),
        .DELAY_LINE_DIRECTION_0    ( GND_net ),
        .DELAY_LINE_LOAD_0         ( GND_net ),
        .FAB_CLK                   ( SYS_CLK ),
        .ODT_EN_0                  ( GND_net ), // tied to 1'b0 from definition
        // Outputs
        .DELAY_LINE_OUT_OF_RANGE_0 (  ),
        .PAD_O                     ( DM_net_0 ),
        .RX_FB                     ( LANE_0_IOD_DM_RX_FB ) 
        );

//--------DDR3_0_DDRPHY_BLK_LANE_0_IOD_DQ_PF_IOD   -   Actel:SgCore:PF_IOD:1.0.215
DDR3_0_DDRPHY_BLK_LANE_0_IOD_DQ_PF_IOD LANE_0_IOD_DQ(
        // Inputs
        .ARST_N                    ( LANE_0_CTRL_ARST_N ),
        .RX_SYNC_RST               ( LANE_0_CTRL_RX_SYNC_RST ),
        .TX_SYNC_RST               ( LANE_0_CTRL_TX_SYNC_RST ),
        .HS_IO_CLK                 ( HS_IO_CLK ),
        .RX_DQS_90                 ( LANE_0_CTRL_RX_DQS_90 ),
        .TX_DQS                    ( LANE_0_CTRL_TX_DQS ),
        .FIFO_WR_PTR               ( LANE_0_CTRL_FIFO_WR_PTR ),
        .FIFO_RD_PTR               ( LANE_0_CTRL_FIFO_RD_PTR ),
        .EYE_MONITOR_LANE_WIDTH    ( LANE_0_CTRL_EYE_MONITOR_WIDTH_OUT ),
        .TX_DATA_0                 ( TX_DATA_0_net_14 ),
        .TX_DATA_1                 ( TX_DATA_1_net_2 ),
        .TX_DATA_2                 ( TX_DATA_2_net_2 ),
        .TX_DATA_3                 ( TX_DATA_3_net_1 ),
        .TX_DATA_4                 ( TX_DATA_4_net_1 ),
        .TX_DATA_5                 ( TX_DATA_5_net_1 ),
        .TX_DATA_6                 ( TX_DATA_6_net_1 ),
        .TX_DATA_7                 ( TX_DATA_7_net_1 ),
        .OE_DATA_0                 ( OE_DATA_0_net_2 ),
        .OE_DATA_1                 ( OE_DATA_1_net_0 ),
        .OE_DATA_2                 ( OE_DATA_2_net_0 ),
        .OE_DATA_3                 ( OE_DATA_3_net_0 ),
        .OE_DATA_4                 ( OE_DATA_4_net_0 ),
        .OE_DATA_5                 ( OE_DATA_5_net_0 ),
        .OE_DATA_6                 ( OE_DATA_6_net_0 ),
        .OE_DATA_7                 ( OE_DATA_7_net_0 ),
        .EYE_MONITOR_CLEAR_FLAGS_0 ( GND_net ),
        .EYE_MONITOR_CLEAR_FLAGS_1 ( GND_net ),
        .EYE_MONITOR_CLEAR_FLAGS_2 ( GND_net ),
        .EYE_MONITOR_CLEAR_FLAGS_3 ( GND_net ),
        .EYE_MONITOR_CLEAR_FLAGS_4 ( GND_net ),
        .EYE_MONITOR_CLEAR_FLAGS_5 ( GND_net ),
        .EYE_MONITOR_CLEAR_FLAGS_6 ( GND_net ),
        .EYE_MONITOR_CLEAR_FLAGS_7 ( GND_net ),
        .DELAY_LINE_MOVE_0         ( IOD_TRAINING_0_MOVE0to0 ),
        .DELAY_LINE_MOVE_1         ( IOD_TRAINING_0_MOVE1to1 ),
        .DELAY_LINE_MOVE_2         ( IOD_TRAINING_0_MOVE2to2 ),
        .DELAY_LINE_MOVE_3         ( IOD_TRAINING_0_MOVE3to3 ),
        .DELAY_LINE_MOVE_4         ( IOD_TRAINING_0_MOVE4to4 ),
        .DELAY_LINE_MOVE_5         ( IOD_TRAINING_0_MOVE5to5 ),
        .DELAY_LINE_MOVE_6         ( IOD_TRAINING_0_MOVE6to6 ),
        .DELAY_LINE_MOVE_7         ( IOD_TRAINING_0_MOVE7to7 ),
        .DELAY_LINE_DIRECTION_0    ( IOD_TRAINING_0_DIRECTION0to0 ),
        .DELAY_LINE_DIRECTION_1    ( IOD_TRAINING_0_DIRECTION1to1 ),
        .DELAY_LINE_DIRECTION_2    ( IOD_TRAINING_0_DIRECTION2to2 ),
        .DELAY_LINE_DIRECTION_3    ( IOD_TRAINING_0_DIRECTION3to3 ),
        .DELAY_LINE_DIRECTION_4    ( IOD_TRAINING_0_DIRECTION4to4 ),
        .DELAY_LINE_DIRECTION_5    ( IOD_TRAINING_0_DIRECTION5to5 ),
        .DELAY_LINE_DIRECTION_6    ( IOD_TRAINING_0_DIRECTION6to6 ),
        .DELAY_LINE_DIRECTION_7    ( IOD_TRAINING_0_DIRECTION7to7 ),
        .DELAY_LINE_LOAD_0         ( IOD_TRAINING_0_LOAD0to0 ),
        .DELAY_LINE_LOAD_1         ( IOD_TRAINING_0_LOAD1to1 ),
        .DELAY_LINE_LOAD_2         ( IOD_TRAINING_0_LOAD2to2 ),
        .DELAY_LINE_LOAD_3         ( IOD_TRAINING_0_LOAD3to3 ),
        .DELAY_LINE_LOAD_4         ( IOD_TRAINING_0_LOAD4to4 ),
        .DELAY_LINE_LOAD_5         ( IOD_TRAINING_0_LOAD5to5 ),
        .DELAY_LINE_LOAD_6         ( IOD_TRAINING_0_LOAD6to6 ),
        .DELAY_LINE_LOAD_7         ( IOD_TRAINING_0_LOAD7to7 ),
        .FAB_CLK                   ( SYS_CLK ),
        .ODT_EN_0                  ( GND_net ), // tied to 1'b0 from definition
        .ODT_EN_1                  ( GND_net ), // tied to 1'b0 from definition
        .ODT_EN_2                  ( GND_net ), // tied to 1'b0 from definition
        .ODT_EN_3                  ( GND_net ), // tied to 1'b0 from definition
        .ODT_EN_4                  ( GND_net ), // tied to 1'b0 from definition
        .ODT_EN_5                  ( GND_net ), // tied to 1'b0 from definition
        .ODT_EN_6                  ( GND_net ), // tied to 1'b0 from definition
        .ODT_EN_7                  ( GND_net ), // tied to 1'b0 from definition
        // Outputs
        .DELAY_LINE_OUT_OF_RANGE_0 ( LANE_0_IOD_DQ_DELAY_LINE_OUT_OF_RANGE_0 ),
        .DELAY_LINE_OUT_OF_RANGE_1 ( LANE_0_IOD_DQ_DELAY_LINE_OUT_OF_RANGE_1 ),
        .DELAY_LINE_OUT_OF_RANGE_2 ( LANE_0_IOD_DQ_DELAY_LINE_OUT_OF_RANGE_2 ),
        .DELAY_LINE_OUT_OF_RANGE_3 ( LANE_0_IOD_DQ_DELAY_LINE_OUT_OF_RANGE_3 ),
        .DELAY_LINE_OUT_OF_RANGE_4 ( LANE_0_IOD_DQ_DELAY_LINE_OUT_OF_RANGE_4 ),
        .DELAY_LINE_OUT_OF_RANGE_5 ( LANE_0_IOD_DQ_DELAY_LINE_OUT_OF_RANGE_5 ),
        .DELAY_LINE_OUT_OF_RANGE_6 ( LANE_0_IOD_DQ_DELAY_LINE_OUT_OF_RANGE_6 ),
        .DELAY_LINE_OUT_OF_RANGE_7 ( LANE_0_IOD_DQ_DELAY_LINE_OUT_OF_RANGE_7 ),
        .EYE_MONITOR_EARLY_0       (  ),
        .EYE_MONITOR_EARLY_1       (  ),
        .EYE_MONITOR_EARLY_2       (  ),
        .EYE_MONITOR_EARLY_3       (  ),
        .EYE_MONITOR_EARLY_4       (  ),
        .EYE_MONITOR_EARLY_5       (  ),
        .EYE_MONITOR_EARLY_6       (  ),
        .EYE_MONITOR_EARLY_7       (  ),
        .EYE_MONITOR_LATE_0        (  ),
        .EYE_MONITOR_LATE_1        (  ),
        .EYE_MONITOR_LATE_2        (  ),
        .EYE_MONITOR_LATE_3        (  ),
        .EYE_MONITOR_LATE_4        (  ),
        .EYE_MONITOR_LATE_5        (  ),
        .EYE_MONITOR_LATE_6        (  ),
        .EYE_MONITOR_LATE_7        (  ),
        .RX_DATA_0                 ( RX_DATA_0_net_3 ),
        .RX_DATA_1                 ( RX_DATA_1_net_0 ),
        .RX_DATA_2                 ( RX_DATA_2_net_0 ),
        .RX_DATA_3                 ( RX_DATA_3_net_0 ),
        .RX_DATA_4                 ( RX_DATA_4_net_0 ),
        .RX_DATA_5                 ( RX_DATA_5_net_0 ),
        .RX_DATA_6                 ( RX_DATA_6_net_0 ),
        .RX_DATA_7                 ( RX_DATA_7_net_0 ),
        .RX_BYPASS_DATA_0          ( LANE_0_IOD_DQ_RX_BYPASS_DATA_0 ),
        .RX_BYPASS_DATA_1          ( LANE_0_IOD_DQ_RX_BYPASS_DATA_1 ),
        .RX_BYPASS_DATA_2          ( LANE_0_IOD_DQ_RX_BYPASS_DATA_2 ),
        .RX_BYPASS_DATA_3          ( LANE_0_IOD_DQ_RX_BYPASS_DATA_3 ),
        .RX_BYPASS_DATA_4          ( LANE_0_IOD_DQ_RX_BYPASS_DATA_4 ),
        .RX_BYPASS_DATA_5          ( LANE_0_IOD_DQ_RX_BYPASS_DATA_5 ),
        .RX_BYPASS_DATA_6          ( LANE_0_IOD_DQ_RX_BYPASS_DATA_6 ),
        .RX_BYPASS_DATA_7          ( LANE_0_IOD_DQ_RX_BYPASS_DATA_7 ),
        // Inouts
        .PAD                       ( { DQ[7:7] , DQ[6:6] , DQ[5:5] , DQ[4:4] , DQ[3:3] , DQ[2:2] , DQ[1:1] , DQ[0:0] } ) 
        );

//--------DDR3_0_DDRPHY_BLK_LANE_0_IOD_DQS_PF_IOD   -   Actel:SgCore:PF_IOD:1.0.215
DDR3_0_DDRPHY_BLK_LANE_0_IOD_DQS_PF_IOD LANE_0_IOD_DQS(
        // Inputs
        .ARST_N                    ( LANE_0_CTRL_ARST_N ),
        .RX_SYNC_RST               ( LANE_0_CTRL_RX_SYNC_RST ),
        .TX_SYNC_RST               ( LANE_0_CTRL_TX_SYNC_RST ),
        .HS_IO_CLK                 ( HS_IO_CLK ),
        .RX_DQS_90                 ( LANE_0_CTRL_RX_DQS_90 ),
        .TX_DQS_270                ( LANE_0_CTRL_TX_DQS_270 ),
        .FIFO_WR_PTR               ( LANE_0_CTRL_FIFO_WR_PTR ),
        .FIFO_RD_PTR               ( LANE_0_CTRL_FIFO_RD_PTR ),
        .EYE_MONITOR_LANE_WIDTH    ( LANE_0_CTRL_EYE_MONITOR_WIDTH_OUT ),
        .TX_DATA_0                 ( TX_DATA_0_const_net_0 ),
        .OE_DATA_0                 ( OE_DATA_0_net_3 ),
        .EYE_MONITOR_CLEAR_FLAGS_0 ( GND_net ),
        .DELAY_LINE_MOVE_0         ( GND_net ),
        .DELAY_LINE_DIRECTION_0    ( GND_net ),
        .DELAY_LINE_LOAD_0         ( GND_net ),
        .FAB_CLK                   ( SYS_CLK ),
        .ODT_EN_0                  ( GND_net ), // tied to 1'b0 from definition
        // Outputs
        .DELAY_LINE_OUT_OF_RANGE_0 (  ),
        .EYE_MONITOR_EARLY_0       (  ),
        .EYE_MONITOR_LATE_0        (  ),
        .RX_DATA_0                 (  ),
        .DQS                       ( LANE_0_IOD_DQS_DQS ),
        .DQS_N                     ( LANE_0_IOD_DQS_DQS_N ),
        // Inouts
        .PAD                       ( DQS[0:0] ),
        .PAD_N                     ( DQS_N[0:0] ) 
        );

//--------DDR3_0_DDRPHY_BLK_LANE_0_IOD_DQSW_TRAINING_PF_IOD   -   Actel:SgCore:PF_IOD:1.0.215
DDR3_0_DDRPHY_BLK_LANE_0_IOD_DQSW_TRAINING_PF_IOD LANE_0_IOD_DQSW_TRAINING(
        // Inputs
        .RX_N_0                    ( LANE_0_IOD_DM_RX_FB ),
        .HS_IO_CLK                 ( HS_IO_CLK ),
        .TX_DATA_0                 ( TX_DATA_0_const_net_1 ),
        .OE_DATA_0                 ( OE_DATA_0_const_net_12 ),
        .EYE_MONITOR_CLEAR_FLAGS_0 ( IOD_TRAINING_0_DQSW_EYE_MONITOR_CLR_FLAGS0to0 ),
        .DELAY_LINE_MOVE_0         ( IOD_TRAINING_0_DQSW_DELAY_LINE_MOVE0to0 ),
        .DELAY_LINE_DIRECTION_0    ( IOD_TRAINING_0_DQSW_DELAY_LINE_DIRECTION0to0 ),
        .DELAY_LINE_LOAD_0         ( IOD_TRAINING_0_DQSW_DELAY_LINE_LOAD0to0 ),
        .FAB_CLK                   ( SYS_CLK ),
        .ODT_EN_0                  ( GND_net ), // tied to 1'b0 from definition
        // Outputs
        .TX_0                      ( LANE_0_IOD_DQSW_TRAINING_TX_0 ),
        .OE_0                      ( LANE_0_IOD_DQSW_TRAINING_OE_0 ),
        .DELAY_LINE_OUT_OF_RANGE_0 ( LANE_0_IOD_DQSW_TRAINING_DELAY_LINE_OUT_OF_RANGE_0 ),
        .EYE_MONITOR_EARLY_0       ( LANE_0_IOD_DQSW_TRAINING_EYE_MONITOR_EARLY_0 ),
        .EYE_MONITOR_LATE_0        ( LANE_0_IOD_DQSW_TRAINING_EYE_MONITOR_LATE_0 ),
        .RX_DATA_0                 ( RX_DATA_0_net_4 ) 
        );

//--------DDR3_0_DDRPHY_BLK_LANE_0_IOD_READ_TRAINING_PF_IOD   -   Actel:SgCore:PF_IOD:1.0.215
DDR3_0_DDRPHY_BLK_LANE_0_IOD_READ_TRAINING_PF_IOD LANE_0_IOD_READ_TRAINING(
        // Inputs
        .RX_P_0                    ( LANE_0_IOD_DQS_DQS_N ),
        .ARST_N                    ( LANE_0_CTRL_ARST_N ),
        .RX_SYNC_RST               ( LANE_0_CTRL_RX_SYNC_RST ),
        .TX_SYNC_RST               ( LANE_0_CTRL_TX_SYNC_RST ),
        .HS_IO_CLK                 ( HS_IO_CLK ),
        .TX_DQS                    ( LANE_0_CTRL_TX_DQS ),
        .FIFO_WR_PTR               ( LANE_0_CTRL_FIFO_WR_PTR ),
        .FIFO_RD_PTR               ( LANE_0_CTRL_FIFO_RD_PTR ),
        .TX_DATA_0                 ( TX_DATA_0_net_15 ),
        .OE_DATA_0                 ( OE_DATA_0_net_4 ),
        .EYE_MONITOR_CLEAR_FLAGS_0 ( IOD_TRAINING_0_DQSW270_EYE_MONITOR_CLR_FLAGS0to0 ),
        .DELAY_LINE_MOVE_0         ( IOD_TRAINING_0_DQSW270_DELAY_LINE_MOVE0to0 ),
        .DELAY_LINE_DIRECTION_0    ( IOD_TRAINING_0_DQSW270_DELAY_LINE_DIRECTION0to0 ),
        .DELAY_LINE_LOAD_0         ( IOD_TRAINING_0_DQSW270_DELAY_LINE_LOAD0to0 ),
        .FAB_CLK                   ( SYS_CLK ),
        .ODT_EN_0                  ( GND_net ), // tied to 1'b0 from definition
        // Outputs
        .DELAY_LINE_OUT_OF_RANGE_0 ( LANE_0_IOD_READ_TRAINING_DELAY_LINE_OUT_OF_RANGE_0 ),
        .EYE_MONITOR_EARLY_0       ( LANE_0_IOD_READ_TRAINING_EYE_MONITOR_EARLY_0 ),
        .EYE_MONITOR_LATE_0        ( LANE_0_IOD_READ_TRAINING_EYE_MONITOR_LATE_0 ),
        .RX_DATA_0                 ( RX_DATA_0_net_5 ),
        .DDR_DO_READ               ( LANE_0_IOD_READ_TRAINING_DDR_DO_READ ),
        .SWITCH                    ( LANE_0_IOD_READ_TRAINING_SWITCH ) 
        );

//--------DDR3_0_DDRPHY_BLK_LANE_1_CTRL_PF_LANECTRL   -   Actel:SgCore:PF_LANECTRL:2.0.102
DDR3_0_DDRPHY_BLK_LANE_1_CTRL_PF_LANECTRL LANE_1_CTRL(
        // Inputs
        .DQS                        ( LANE_1_IOD_DQS_DQS ),
        .HS_IO_CLK                  ( HS_IO_CLK_net_1 ),
        .DLL_CODE                   ( DLL_CODE ),
        .FAB_CLK                    ( SYS_CLK ),
        .RESET                      ( SYNC_SYS_RST_N_net_0 ),
        .DDR_READ                   ( DFI_RDLVL_GATE_EN ),
        .READ_CLK_SEL               ( READ_CLK_SEL_net_1 ),
        .DELAY_LINE_SEL             ( IOD_TRAINING_0_DELAY_LINE_SEL_RD1to1 ),
        .DELAY_LINE_LOAD            ( IOD_TRAINING_0_LOAD17to17 ),
        .DELAY_LINE_DIRECTION       ( IOD_TRAINING_0_DIRECTION17to17 ),
        .DELAY_LINE_MOVE            ( IOD_TRAINING_0_MOVE17to17 ),
        .HS_IO_CLK_PAUSE            ( IOD_TRAINING_0_INIT_PAUSE1to1 ),
        .EYE_MONITOR_WIDTH_IN       ( EYE_MONITOR_WIDTH_IN_const_net_1 ),
        .ODT_EN                     ( VCC_net ),
        .CDR_CLK_A_SEL              ( IOD_TRAINING_0_DQSW_SELA15to8 ),
        .DDR_DO_READ                ( LANE_1_IOD_READ_TRAINING_DDR_DO_READ ),
        .SWITCH                     ( LANE_1_IOD_READ_TRAINING_SWITCH ),
        // Outputs
        .EYE_MONITOR_WIDTH_OUT      ( LANE_1_CTRL_EYE_MONITOR_WIDTH_OUT ),
        .ODT_EN_SEL                 (  ),
        .RX_DQS_90                  ( LANE_1_CTRL_RX_DQS_90 ),
        .TX_DQS                     ( LANE_1_CTRL_TX_DQS ),
        .TX_DQS_270                 ( LANE_1_CTRL_TX_DQS_270 ),
        .FIFO_WR_PTR                ( LANE_1_CTRL_FIFO_WR_PTR ),
        .FIFO_RD_PTR                ( LANE_1_CTRL_FIFO_RD_PTR ),
        .ARST_N                     ( LANE_1_CTRL_ARST_N ),
        .RX_SYNC_RST                ( LANE_1_CTRL_RX_SYNC_RST ),
        .TX_SYNC_RST                ( LANE_1_CTRL_TX_SYNC_RST ),
        .ODT_EN_OUT                 (  ),
        .RX_DATA_VALID              ( LANE_1_CTRL_RX_DATA_VALID ),
        .RX_BURST_DETECT            ( LANE_1_CTRL_RX_BURST_DETECT ),
        .RX_DELAY_LINE_OUT_OF_RANGE ( LANE_1_CTRL_RX_DELAY_LINE_OUT_OF_RANGE ),
        .TX_DELAY_LINE_OUT_OF_RANGE ( LANE_1_CTRL_TX_DELAY_LINE_OUT_OF_RANGE ),
        .A_OUT_RST_N                (  ) 
        );

//--------DDR3_0_DDRPHY_BLK_LANE_1_IOD_DM_PF_IOD   -   Actel:SgCore:PF_IOD:1.0.215
DDR3_0_DDRPHY_BLK_LANE_1_IOD_DM_PF_IOD LANE_1_IOD_DM(
        // Inputs
        .ARST_N                    ( LANE_1_CTRL_ARST_N ),
        .RX_SYNC_RST               ( LANE_1_CTRL_RX_SYNC_RST ),
        .TX_SYNC_RST               ( LANE_1_CTRL_TX_SYNC_RST ),
        .HS_IO_CLK                 ( HS_IO_CLK ),
        .TX_DQS                    ( LANE_1_CTRL_TX_DQS ),
        .TX_DATA_0                 ( TX_DATA_0_net_16 ),
        .OE_DATA_0                 ( OE_DATA_0_net_5 ),
        .DELAY_LINE_MOVE_0         ( GND_net ),
        .DELAY_LINE_DIRECTION_0    ( GND_net ),
        .DELAY_LINE_LOAD_0         ( GND_net ),
        .FAB_CLK                   ( SYS_CLK ),
        .ODT_EN_0                  ( GND_net ), // tied to 1'b0 from definition
        // Outputs
        .DELAY_LINE_OUT_OF_RANGE_0 (  ),
        .PAD_O                     ( DM_0 ),
        .RX_FB                     ( LANE_1_IOD_DM_RX_FB ) 
        );

//--------DDR3_0_DDRPHY_BLK_LANE_1_IOD_DQ_PF_IOD   -   Actel:SgCore:PF_IOD:1.0.215
DDR3_0_DDRPHY_BLK_LANE_1_IOD_DQ_PF_IOD LANE_1_IOD_DQ(
        // Inputs
        .ARST_N                    ( LANE_1_CTRL_ARST_N ),
        .RX_SYNC_RST               ( LANE_1_CTRL_RX_SYNC_RST ),
        .TX_SYNC_RST               ( LANE_1_CTRL_TX_SYNC_RST ),
        .HS_IO_CLK                 ( HS_IO_CLK ),
        .RX_DQS_90                 ( LANE_1_CTRL_RX_DQS_90 ),
        .TX_DQS                    ( LANE_1_CTRL_TX_DQS ),
        .FIFO_WR_PTR               ( LANE_1_CTRL_FIFO_WR_PTR ),
        .FIFO_RD_PTR               ( LANE_1_CTRL_FIFO_RD_PTR ),
        .EYE_MONITOR_LANE_WIDTH    ( LANE_1_CTRL_EYE_MONITOR_WIDTH_OUT ),
        .TX_DATA_0                 ( TX_DATA_0_net_17 ),
        .TX_DATA_1                 ( TX_DATA_1_net_3 ),
        .TX_DATA_2                 ( TX_DATA_2_net_3 ),
        .TX_DATA_3                 ( TX_DATA_3_net_2 ),
        .TX_DATA_4                 ( TX_DATA_4_net_2 ),
        .TX_DATA_5                 ( TX_DATA_5_net_2 ),
        .TX_DATA_6                 ( TX_DATA_6_net_2 ),
        .TX_DATA_7                 ( TX_DATA_7_net_2 ),
        .OE_DATA_0                 ( OE_DATA_0_net_6 ),
        .OE_DATA_1                 ( OE_DATA_1_net_1 ),
        .OE_DATA_2                 ( OE_DATA_2_net_1 ),
        .OE_DATA_3                 ( OE_DATA_3_net_1 ),
        .OE_DATA_4                 ( OE_DATA_4_net_1 ),
        .OE_DATA_5                 ( OE_DATA_5_net_1 ),
        .OE_DATA_6                 ( OE_DATA_6_net_1 ),
        .OE_DATA_7                 ( OE_DATA_7_net_1 ),
        .EYE_MONITOR_CLEAR_FLAGS_0 ( GND_net ),
        .EYE_MONITOR_CLEAR_FLAGS_1 ( GND_net ),
        .EYE_MONITOR_CLEAR_FLAGS_2 ( GND_net ),
        .EYE_MONITOR_CLEAR_FLAGS_3 ( GND_net ),
        .EYE_MONITOR_CLEAR_FLAGS_4 ( GND_net ),
        .EYE_MONITOR_CLEAR_FLAGS_5 ( GND_net ),
        .EYE_MONITOR_CLEAR_FLAGS_6 ( GND_net ),
        .EYE_MONITOR_CLEAR_FLAGS_7 ( GND_net ),
        .DELAY_LINE_MOVE_0         ( IOD_TRAINING_0_MOVE9to9 ),
        .DELAY_LINE_MOVE_1         ( IOD_TRAINING_0_MOVE10to10 ),
        .DELAY_LINE_MOVE_2         ( IOD_TRAINING_0_MOVE11to11 ),
        .DELAY_LINE_MOVE_3         ( IOD_TRAINING_0_MOVE12to12 ),
        .DELAY_LINE_MOVE_4         ( IOD_TRAINING_0_MOVE13to13 ),
        .DELAY_LINE_MOVE_5         ( IOD_TRAINING_0_MOVE14to14 ),
        .DELAY_LINE_MOVE_6         ( IOD_TRAINING_0_MOVE15to15 ),
        .DELAY_LINE_MOVE_7         ( IOD_TRAINING_0_MOVE16to16 ),
        .DELAY_LINE_DIRECTION_0    ( IOD_TRAINING_0_DIRECTION9to9 ),
        .DELAY_LINE_DIRECTION_1    ( IOD_TRAINING_0_DIRECTION10to10 ),
        .DELAY_LINE_DIRECTION_2    ( IOD_TRAINING_0_DIRECTION11to11 ),
        .DELAY_LINE_DIRECTION_3    ( IOD_TRAINING_0_DIRECTION12to12 ),
        .DELAY_LINE_DIRECTION_4    ( IOD_TRAINING_0_DIRECTION13to13 ),
        .DELAY_LINE_DIRECTION_5    ( IOD_TRAINING_0_DIRECTION14to14 ),
        .DELAY_LINE_DIRECTION_6    ( IOD_TRAINING_0_DIRECTION15to15 ),
        .DELAY_LINE_DIRECTION_7    ( IOD_TRAINING_0_DIRECTION16to16 ),
        .DELAY_LINE_LOAD_0         ( IOD_TRAINING_0_LOAD9to9 ),
        .DELAY_LINE_LOAD_1         ( IOD_TRAINING_0_LOAD10to10 ),
        .DELAY_LINE_LOAD_2         ( IOD_TRAINING_0_LOAD11to11 ),
        .DELAY_LINE_LOAD_3         ( IOD_TRAINING_0_LOAD12to12 ),
        .DELAY_LINE_LOAD_4         ( IOD_TRAINING_0_LOAD13to13 ),
        .DELAY_LINE_LOAD_5         ( IOD_TRAINING_0_LOAD14to14 ),
        .DELAY_LINE_LOAD_6         ( IOD_TRAINING_0_LOAD15to15 ),
        .DELAY_LINE_LOAD_7         ( IOD_TRAINING_0_LOAD16to16 ),
        .FAB_CLK                   ( SYS_CLK ),
        .ODT_EN_0                  ( GND_net ), // tied to 1'b0 from definition
        .ODT_EN_1                  ( GND_net ), // tied to 1'b0 from definition
        .ODT_EN_2                  ( GND_net ), // tied to 1'b0 from definition
        .ODT_EN_3                  ( GND_net ), // tied to 1'b0 from definition
        .ODT_EN_4                  ( GND_net ), // tied to 1'b0 from definition
        .ODT_EN_5                  ( GND_net ), // tied to 1'b0 from definition
        .ODT_EN_6                  ( GND_net ), // tied to 1'b0 from definition
        .ODT_EN_7                  ( GND_net ), // tied to 1'b0 from definition
        // Outputs
        .DELAY_LINE_OUT_OF_RANGE_0 ( LANE_1_IOD_DQ_DELAY_LINE_OUT_OF_RANGE_0 ),
        .DELAY_LINE_OUT_OF_RANGE_1 ( LANE_1_IOD_DQ_DELAY_LINE_OUT_OF_RANGE_1 ),
        .DELAY_LINE_OUT_OF_RANGE_2 ( LANE_1_IOD_DQ_DELAY_LINE_OUT_OF_RANGE_2 ),
        .DELAY_LINE_OUT_OF_RANGE_3 ( LANE_1_IOD_DQ_DELAY_LINE_OUT_OF_RANGE_3 ),
        .DELAY_LINE_OUT_OF_RANGE_4 ( LANE_1_IOD_DQ_DELAY_LINE_OUT_OF_RANGE_4 ),
        .DELAY_LINE_OUT_OF_RANGE_5 ( LANE_1_IOD_DQ_DELAY_LINE_OUT_OF_RANGE_5 ),
        .DELAY_LINE_OUT_OF_RANGE_6 ( LANE_1_IOD_DQ_DELAY_LINE_OUT_OF_RANGE_6 ),
        .DELAY_LINE_OUT_OF_RANGE_7 ( LANE_1_IOD_DQ_DELAY_LINE_OUT_OF_RANGE_7 ),
        .EYE_MONITOR_EARLY_0       (  ),
        .EYE_MONITOR_EARLY_1       (  ),
        .EYE_MONITOR_EARLY_2       (  ),
        .EYE_MONITOR_EARLY_3       (  ),
        .EYE_MONITOR_EARLY_4       (  ),
        .EYE_MONITOR_EARLY_5       (  ),
        .EYE_MONITOR_EARLY_6       (  ),
        .EYE_MONITOR_EARLY_7       (  ),
        .EYE_MONITOR_LATE_0        (  ),
        .EYE_MONITOR_LATE_1        (  ),
        .EYE_MONITOR_LATE_2        (  ),
        .EYE_MONITOR_LATE_3        (  ),
        .EYE_MONITOR_LATE_4        (  ),
        .EYE_MONITOR_LATE_5        (  ),
        .EYE_MONITOR_LATE_6        (  ),
        .EYE_MONITOR_LATE_7        (  ),
        .RX_DATA_0                 ( RX_DATA_0_net_6 ),
        .RX_DATA_1                 ( RX_DATA_1_net_1 ),
        .RX_DATA_2                 ( RX_DATA_2_net_1 ),
        .RX_DATA_3                 ( RX_DATA_3_net_1 ),
        .RX_DATA_4                 ( RX_DATA_4_net_1 ),
        .RX_DATA_5                 ( RX_DATA_5_net_1 ),
        .RX_DATA_6                 ( RX_DATA_6_net_1 ),
        .RX_DATA_7                 ( RX_DATA_7_net_1 ),
        .RX_BYPASS_DATA_0          ( LANE_1_IOD_DQ_RX_BYPASS_DATA_0 ),
        .RX_BYPASS_DATA_1          ( LANE_1_IOD_DQ_RX_BYPASS_DATA_1 ),
        .RX_BYPASS_DATA_2          ( LANE_1_IOD_DQ_RX_BYPASS_DATA_2 ),
        .RX_BYPASS_DATA_3          ( LANE_1_IOD_DQ_RX_BYPASS_DATA_3 ),
        .RX_BYPASS_DATA_4          ( LANE_1_IOD_DQ_RX_BYPASS_DATA_4 ),
        .RX_BYPASS_DATA_5          ( LANE_1_IOD_DQ_RX_BYPASS_DATA_5 ),
        .RX_BYPASS_DATA_6          ( LANE_1_IOD_DQ_RX_BYPASS_DATA_6 ),
        .RX_BYPASS_DATA_7          ( LANE_1_IOD_DQ_RX_BYPASS_DATA_7 ),
        // Inouts
        .PAD                       ( { DQ[15:15] , DQ[14:14] , DQ[13:13] , DQ[12:12] , DQ[11:11] , DQ[10:10] , DQ[9:9] , DQ[8:8] } ) 
        );

//--------DDR3_0_DDRPHY_BLK_LANE_1_IOD_DQS_PF_IOD   -   Actel:SgCore:PF_IOD:1.0.215
DDR3_0_DDRPHY_BLK_LANE_1_IOD_DQS_PF_IOD LANE_1_IOD_DQS(
        // Inputs
        .ARST_N                    ( LANE_1_CTRL_ARST_N ),
        .RX_SYNC_RST               ( LANE_1_CTRL_RX_SYNC_RST ),
        .TX_SYNC_RST               ( LANE_1_CTRL_TX_SYNC_RST ),
        .HS_IO_CLK                 ( HS_IO_CLK ),
        .RX_DQS_90                 ( LANE_1_CTRL_RX_DQS_90 ),
        .TX_DQS_270                ( LANE_1_CTRL_TX_DQS_270 ),
        .FIFO_WR_PTR               ( LANE_1_CTRL_FIFO_WR_PTR ),
        .FIFO_RD_PTR               ( LANE_1_CTRL_FIFO_RD_PTR ),
        .EYE_MONITOR_LANE_WIDTH    ( LANE_1_CTRL_EYE_MONITOR_WIDTH_OUT ),
        .TX_DATA_0                 ( TX_DATA_0_const_net_2 ),
        .OE_DATA_0                 ( OE_DATA_0_net_7 ),
        .EYE_MONITOR_CLEAR_FLAGS_0 ( GND_net ),
        .DELAY_LINE_MOVE_0         ( GND_net ),
        .DELAY_LINE_DIRECTION_0    ( GND_net ),
        .DELAY_LINE_LOAD_0         ( GND_net ),
        .FAB_CLK                   ( SYS_CLK ),
        .ODT_EN_0                  ( GND_net ), // tied to 1'b0 from definition
        // Outputs
        .DELAY_LINE_OUT_OF_RANGE_0 (  ),
        .EYE_MONITOR_EARLY_0       (  ),
        .EYE_MONITOR_LATE_0        (  ),
        .RX_DATA_0                 (  ),
        .DQS                       ( LANE_1_IOD_DQS_DQS ),
        .DQS_N                     ( LANE_1_IOD_DQS_DQS_N ),
        // Inouts
        .PAD                       ( DQS[1:1] ),
        .PAD_N                     ( DQS_N[1:1] ) 
        );

//--------DDR3_0_DDRPHY_BLK_LANE_1_IOD_DQSW_TRAINING_PF_IOD   -   Actel:SgCore:PF_IOD:1.0.215
DDR3_0_DDRPHY_BLK_LANE_1_IOD_DQSW_TRAINING_PF_IOD LANE_1_IOD_DQSW_TRAINING(
        // Inputs
        .RX_N_0                    ( LANE_1_IOD_DM_RX_FB ),
        .HS_IO_CLK                 ( HS_IO_CLK ),
        .TX_DATA_0                 ( TX_DATA_0_const_net_3 ),
        .OE_DATA_0                 ( OE_DATA_0_const_net_13 ),
        .EYE_MONITOR_CLEAR_FLAGS_0 ( IOD_TRAINING_0_DQSW_EYE_MONITOR_CLR_FLAGS1to1 ),
        .DELAY_LINE_MOVE_0         ( IOD_TRAINING_0_DQSW_DELAY_LINE_MOVE1to1 ),
        .DELAY_LINE_DIRECTION_0    ( IOD_TRAINING_0_DQSW_DELAY_LINE_DIRECTION1to1 ),
        .DELAY_LINE_LOAD_0         ( IOD_TRAINING_0_DQSW_DELAY_LINE_LOAD1to1 ),
        .FAB_CLK                   ( SYS_CLK ),
        .ODT_EN_0                  ( GND_net ), // tied to 1'b0 from definition
        // Outputs
        .TX_0                      ( LANE_1_IOD_DQSW_TRAINING_TX_0 ),
        .OE_0                      ( LANE_1_IOD_DQSW_TRAINING_OE_0 ),
        .DELAY_LINE_OUT_OF_RANGE_0 ( LANE_1_IOD_DQSW_TRAINING_DELAY_LINE_OUT_OF_RANGE_0 ),
        .EYE_MONITOR_EARLY_0       ( LANE_1_IOD_DQSW_TRAINING_EYE_MONITOR_EARLY_0 ),
        .EYE_MONITOR_LATE_0        ( LANE_1_IOD_DQSW_TRAINING_EYE_MONITOR_LATE_0 ),
        .RX_DATA_0                 ( RX_DATA_0_net_7 ) 
        );

//--------DDR3_0_DDRPHY_BLK_LANE_1_IOD_READ_TRAINING_PF_IOD   -   Actel:SgCore:PF_IOD:1.0.215
DDR3_0_DDRPHY_BLK_LANE_1_IOD_READ_TRAINING_PF_IOD LANE_1_IOD_READ_TRAINING(
        // Inputs
        .RX_P_0                    ( LANE_1_IOD_DQS_DQS_N ),
        .ARST_N                    ( LANE_1_CTRL_ARST_N ),
        .RX_SYNC_RST               ( LANE_1_CTRL_RX_SYNC_RST ),
        .TX_SYNC_RST               ( LANE_1_CTRL_TX_SYNC_RST ),
        .HS_IO_CLK                 ( HS_IO_CLK ),
        .TX_DQS                    ( LANE_1_CTRL_TX_DQS ),
        .FIFO_WR_PTR               ( LANE_1_CTRL_FIFO_WR_PTR ),
        .FIFO_RD_PTR               ( LANE_1_CTRL_FIFO_RD_PTR ),
        .TX_DATA_0                 ( TX_DATA_0_net_18 ),
        .OE_DATA_0                 ( OE_DATA_0_net_8 ),
        .EYE_MONITOR_CLEAR_FLAGS_0 ( IOD_TRAINING_0_DQSW270_EYE_MONITOR_CLR_FLAGS1to1 ),
        .DELAY_LINE_MOVE_0         ( IOD_TRAINING_0_DQSW270_DELAY_LINE_MOVE1to1 ),
        .DELAY_LINE_DIRECTION_0    ( IOD_TRAINING_0_DQSW270_DELAY_LINE_DIRECTION1to1 ),
        .DELAY_LINE_LOAD_0         ( IOD_TRAINING_0_DQSW270_DELAY_LINE_LOAD1to1 ),
        .FAB_CLK                   ( SYS_CLK ),
        .ODT_EN_0                  ( GND_net ), // tied to 1'b0 from definition
        // Outputs
        .DELAY_LINE_OUT_OF_RANGE_0 ( LANE_1_IOD_READ_TRAINING_DELAY_LINE_OUT_OF_RANGE_0 ),
        .EYE_MONITOR_EARLY_0       ( LANE_1_IOD_READ_TRAINING_EYE_MONITOR_EARLY_0 ),
        .EYE_MONITOR_LATE_0        ( LANE_1_IOD_READ_TRAINING_EYE_MONITOR_LATE_0 ),
        .RX_DATA_0                 ( RX_DATA_0_net_8 ),
        .DDR_DO_READ               ( LANE_1_IOD_READ_TRAINING_DDR_DO_READ ),
        .SWITCH                    ( LANE_1_IOD_READ_TRAINING_SWITCH ) 
        );

//--------DDR3_0_DDRPHY_BLK_LANECTRL_ADDR_CMD_0_PF_LANECTRL   -   Actel:SgCore:PF_LANECTRL:2.0.102
DDR3_0_DDRPHY_BLK_LANECTRL_ADDR_CMD_0_PF_LANECTRL LANECTRL_ADDR_CMD_0(
        // Inputs
        .HS_IO_CLK                  ( HS_IO_CLK ),
        .DLL_CODE                   ( DLL_CODE ),
        .FAB_CLK                    ( SYS_CLK ),
        .RESET                      ( GND_net ),
        .DDR_READ                   ( GND_net ), // tied to 1'b0 from definition
        .DELAY_LINE_SEL             ( GND_net ), // tied to 1'b0 from definition
        .DELAY_LINE_LOAD            ( VCC_net ),
        .DELAY_LINE_DIRECTION       ( GND_net ), // tied to 1'b0 from definition
        .DELAY_LINE_MOVE            ( GND_net ), // tied to 1'b0 from definition
        .HS_IO_CLK_PAUSE            ( CLKINT_CMD_Y ),
        .EYE_MONITOR_WIDTH_IN       ( EYE_MONITOR_WIDTH_IN_const_net_2 ), // tied to 3'h0 from definition
        .CDR_CLK_A_SEL              ( CDR_CLK_A_SEL_const_net_0 ), // tied to 8'h00 from definition
        // Outputs
        .EYE_MONITOR_WIDTH_OUT      (  ),
        .RX_DQS_90                  (  ),
        .TX_DQS                     (  ),
        .TX_DQS_270                 ( LANECTRL_ADDR_CMD_0_TX_DQS_270 ),
        .FIFO_WR_PTR                (  ),
        .FIFO_RD_PTR                (  ),
        .ARST_N                     ( LANECTRL_ADDR_CMD_0_ARST_N ),
        .RX_SYNC_RST                ( LANECTRL_ADDR_CMD_0_RX_SYNC_RST ),
        .TX_SYNC_RST                ( LANECTRL_ADDR_CMD_0_TX_SYNC_RST ),
        .RX_DATA_VALID              (  ),
        .RX_BURST_DETECT            (  ),
        .RX_DELAY_LINE_OUT_OF_RANGE (  ),
        .TX_DELAY_LINE_OUT_OF_RANGE (  ),
        .A_OUT_RST_N                (  ) 
        );

//--------OUTBUF_FEEDBACK
OUTBUF_FEEDBACK OB_A_12(
        // Inputs
        .D   ( IOD_A_12_TX_0 ),
        // Outputs
        .Y   ( OB_A_12_Y ),
        .PAD ( A_11 ) 
        );

//--------OUTBUF_FEEDBACK_DIFF
OUTBUF_FEEDBACK_DIFF OB_DIFF_CK0(
        // Inputs
        .D    ( REF_CLK ),
        // Outputs
        .Y    ( OB_DIFF_CK0_Y ),
        .PADP ( CK0_net_0 ),
        .PADN ( CK0_N_net_0 ) 
        );

//--------TRIBUFF
TRIBUFF TRI_SHIELD_0(
        // Inputs
        .D   ( LANE_0_IOD_DQSW_TRAINING_TX_0 ),
        .E   ( LANE_0_IOD_DQSW_TRAINING_OE_0 ),
        // Outputs
        .PAD ( SHIELD0_net_0 ) 
        );

//--------TRIBUFF
TRIBUFF TRI_SHIELD_1(
        // Inputs
        .D   ( LANE_1_IOD_DQSW_TRAINING_TX_0 ),
        .E   ( LANE_1_IOD_DQSW_TRAINING_OE_0 ),
        // Outputs
        .PAD ( SHIELD1_net_0 ) 
        );


endmodule
