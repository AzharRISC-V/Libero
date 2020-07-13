// ********************************************************************/
// Actel Corporation Proprietary and Confidential
//  Copyright 2011 Actel Corporation.  All rights reserved.
//
// ANY USE OR REDISTRIBUTION IN PART OR IN WHOLE MUST BE HANDLED IN
// ACCORDANCE WITH THE ACTEL LICENSE AGREEMENT AND MUST BE APPROVED
// IN ADVANCE IN WRITING.
//
// Description:  CoreAXI4SRAM_MAINCTRL
//               
//               
//
//
// Revision Information:
// Date     Description
//
// SVN Revision Information:
// SVN $Revision: 4805 $
// SVN $Date: 2012-06-21 17:48:48 +0530 (Thu, 21 Jun 2012) $
//
// Resolved SARs
// SAR      Date     Who   Description
//
// Notes:
//
//               
//
//  Structure:
//            CoreAXI4SRAM (TOP) _   
//                               |
//                               |_ CoreAXI4_SLVIF
//                               |
//                               |_ CoreAXI4_MAINCTRL
//               
//
// ********************************************************************/
module LSRAM_COREAXI4SRAM_0_CoreAXI4SRAM_MAINCTRL(
                             ACLK,
                             ARESETN,
                             AWID_slvif,
                             AWVALID_slvif,
                             AWADDR_slvif,
                             AWSIZE_slvif,
                             AWLEN_slvif,
                             AWBURST_slvif,
                             WDATA_slvif,
                             WSTRB_slvif,
                             WLAST_slvif,
                             WVALID_slvif,
                             BREADY_slvif,
                             AWVALID,
                             AWADDR,
                             AWSIZE,
                             AWLEN,
                             AWBURST,
                                        
                             ARBURST_slvif,
                             ARID_slvif,
                             ARVALID_slvif,
                             ARADDR_slvif,
                             ARVALID,
                             ARADDR,
                             ARSIZE,
                             ARBURST,
                             ARLEN,
                             ARSIZE_slvif,
                             ARLEN_slvif, 
                             RREADY_slvif,
                             WSTRB,
                             // From Main Control block
                             waddrchset_mc,
                             raddrchset_mc,
                             awready_mc,
                             wready_mc,
                             arready_mc,
                             bvalid_mc,
                             bid_mc,
                             bresp_mc,
                             rvalid_mc,
                             rid_mc,
                             rlast_mc,
                             rresp_mc,
                             rdata_mc,
                             // To SRAM Memory Interface
                             wbyteen_sc,
                             waddr_sc,
                             wdata_sc,
                             ren_sc,
                             raddr_sc,
                             rdata_sc
                          
                             );


   // --------------------------------------------------------------------------
   // PARAMETER Declaration
   // --------------------------------------------------------------------------
   //parameter FAMILY           = 19;
   parameter AXI4_DWIDTH      = 64;
   parameter AXI4_AWIDTH      = 32;
   parameter AXI4_IFTYPE_WR   = 1;
   parameter AXI4_IFTYPE_RD   = 1;
   parameter SEL_SRAM_TYPE    = 1;
   parameter MEM_DEPTH        = 512;
   parameter PIPE          = 1;
   parameter AXI4_IDWIDTH     = 4;
   parameter MEM_AWIDTH       = 9;
   parameter WRAP_SUPPORT     = 1; // Enables to handle the AXI wapping burst type.
                                    // Must be enabled in order for the wrapping burst
                                    // transactions to work.
   

   // --------------------------------------------------------------------------
   // Local Parameter Declaration
   // --------------------------------------------------------------------------
   localparam BRESP_OK         = 2'b00;
   localparam BRESP_ERR        = 2'b01;
   localparam RRESP_OK         = 2'b00;
   localparam RRESP_ERR        = 2'b01;
   
   localparam HIGH_PERF        = 1'b1; // 1 - high throughput, 0 - low throughput

   // -------------------------------------------------------------------------
   // I/O Signals
   // -------------------------------------------------------------------------
   // Clock and Clock control signals
   input               ACLK;
   input               ARESETN;

   // From AXI4 Slave interface
   input [AXI4_IDWIDTH-1:0]  AWID_slvif;   
   input                     AWVALID_slvif;
   input [AXI4_AWIDTH - 1:0] AWADDR_slvif;
   input [2:0]               AWSIZE_slvif;   
   input [7:0]               AWLEN_slvif; 
   input [1:0]               AWBURST_slvif;   
   input                     BREADY_slvif;
   input [AXI4_DWIDTH - 1:0] WDATA_slvif;
   input [AXI4_DWIDTH/8-1:0] WSTRB_slvif;
   input                     WLAST_slvif;
   input                     WVALID_slvif;
   input                     AWVALID;
   input [AXI4_AWIDTH - 1:0] AWADDR;
   input [2:0]               AWSIZE;   
   input [7:0]               AWLEN; 
   input [1:0]               AWBURST;   
   input [AXI4_IDWIDTH-1:0]  ARID_slvif;   
   input                     ARVALID_slvif;
   input [1:0]               ARBURST_slvif;
   input [AXI4_AWIDTH - 1:0] ARADDR_slvif;
   input [2:0]               ARSIZE;
   input [2:0]               ARSIZE_slvif;
   input [7:0]               ARLEN_slvif;   
   input                     RREADY_slvif;
   input [AXI4_DWIDTH/8-1:0] WSTRB;
   input                     ARVALID;
   input [AXI4_AWIDTH - 1:0] ARADDR;
   input [7:0]               ARLEN;   
   input [1:0]               ARBURST;
   
   // To AXI4 Slave interface
   output                   awready_mc;
   output                   wready_mc;
   output                   arready_mc;
   output                   waddrchset_mc;   
   output                   raddrchset_mc;   
   output                   bvalid_mc;
   output [AXI4_IDWIDTH-1:0] bid_mc;   
   output [1:0]              bresp_mc;
   output                    rvalid_mc;
   output [1:0]              rresp_mc;
   output [AXI4_IDWIDTH-1:0] rid_mc;
   output                    rlast_mc;
   output [AXI4_DWIDTH - 1:0] rdata_mc;

   // To SRAM Memory Interface   
   output [(AXI4_DWIDTH/8)-1:0] wbyteen_sc; 
   output [MEM_AWIDTH-1:0]    waddr_sc;
   output [AXI4_DWIDTH-1:0]   wdata_sc;
   output                     ren_sc;   
   output [MEM_AWIDTH-1:0]    raddr_sc;
   input [AXI4_DWIDTH-1:0]    rdata_sc;

   // --------------------------------------------------------------------------
   // Local parameters 
   // --------------------------------------------------------------------------
   // Write state machine
   localparam                  WR_IDLE_ST     = 3'b000;
   localparam                  WR_ADRLAT_ST   = 3'b001;
   localparam                  WR_DATA_ST     = 3'b010;
   localparam                  WR_WAIT_ST     = 3'b011;
   localparam                  WR_RESP_ST     = 3'b100;
      
   // Read state machine
   localparam                  RD_IDLE_ST   = 3'b000;
   localparam                  RD_ADRLAT_ST = 3'b001;
   localparam                  RD_DATA0_ST  = 3'b010;
   localparam                  RD_DATA_ST   = 3'b011;
   localparam                  RD_DATAWAIT_ST = 3'b100;
   localparam                  RD_LAST_ST   = 3'b101;

   // SRAM state machine
   localparam                  SRAM_IDLE_ST   = 3'b000;
   localparam                  SRAM_ADDR_ST   = 3'b001;
   localparam                  SRAM_WR_ST     = 3'b010;
   localparam                  SRAM_WRWAIT_ST = 3'b011;
   localparam                  SRAM_RD_ST     = 3'b100;
   localparam                  SRAM_RDWAIT_ST = 3'b101;

   // Request-Gnt state machine 
   localparam                  REQ_IDLE_ST = 2'b00;
   localparam                  REQ_WR_ST = 2'b01;
   localparam                  REQ_RD_ST = 2'b10;

   // --------------------------------------------------------------------------
   // Internal signals
   // --------------------------------------------------------------------------
   reg [2:0]                   wr_curr_state;
   reg [2:0]                   wr_next_state;
   reg [2:0]                   rd_curr_state;
   reg [2:0]                   rd_next_state;
   reg [2:0]                   sram_curr_state;
   reg [2:0]                   sram_next_state;
   
   reg                         awready_fsm;
   reg                         wready_fsm;
   reg                         arready_fsm;
   reg                         awready_mc;
   reg                         wready_mc;
   reg                         wready_mc_r;
   reg                         WVALID_slvif_r;   
   reg                         arready_mc;
   reg                         waddrchset;
   reg                         waddrchset_mc;
   reg                         waddrchset_mc_r;
   reg                         raddrchset;
   reg                         raddrchset_mc;
   reg                         sram_xvalid;
   reg                         rd_sram_xvalid;
   reg                         rd_sram_xdone;
   reg                         sram_xdone;   
   reg                         sram_xdone_r;   
   reg                         first_data;
   reg                         wready;
   reg [3:0]                   wrburst_cnt;
   reg [3:0]                   rdburst_cnt;
   reg                         bvalid_mc;
   reg [AXI4_IDWIDTH-1:0]      bid_mc;   
   reg [1:0]                   bresp_mc;
   reg                         bvalid_mc_fsm;
   reg [AXI4_IDWIDTH-1:0]      bid_mc_fsm;   
   reg [1:0]                   bresp_mc_fsm;
   reg [MEM_AWIDTH - 1:0]      waddr_sc;
   reg [AXI4_AWIDTH - 1:0]     waddr_sc_dummy;
   reg [AXI4_DWIDTH-1:0]       wdata_sc; 
   reg [AXI4_DWIDTH-1:0]       wdata_sc_r; 
   reg [(AXI4_DWIDTH/8)-1:0]   wbyteen_sc;    
   reg [(AXI4_DWIDTH/8)-1:0]   wbyteen_sc_r; 
   reg [1:0]                   wen_sc;
   reg [1:0]                   wen_sc_r;
   reg [AXI4_AWIDTH - 1:0]     waddr_aligned;
   reg [AXI4_AWIDTH - 1:0]     wrap_waddr_incr;
   reg [AXI4_AWIDTH - 1:0]     wrap_waddr_incr_r;
   reg [AXI4_AWIDTH - 1:0]     wrap_waddr_next_r;
   reg [AXI4_AWIDTH - 1:0]     wrap_waddr_next;
   reg [AXI4_AWIDTH - 1:0]     wrap_waddr_plus;
   reg [AXI4_AWIDTH - 1:0]     wrap_waddr;
   reg [AXI4_AWIDTH - 1:0]     wrap_waddr_calc;
   reg [AXI4_AWIDTH - 1:0]     raddr_sc_dummy;
   reg [AXI4_AWIDTH - 1:0]     wrap_raddr_incr;
   reg [AXI4_AWIDTH - 1:0]     wrap_raddr_incr_r;
   reg [AXI4_AWIDTH - 1:0]     wrap_raddr_next;
   reg [AXI4_AWIDTH - 1:0]     wrap_raddr_next_r;
   reg [AXI4_AWIDTH - 1:0]     wrap_raddr_plus;
   reg [AXI4_AWIDTH - 1:0]     wrap_raddr;
   reg [AXI4_AWIDTH - 1:0]     wrap_raddr_r;
   reg [AXI4_AWIDTH - 1:0]     wrap_raddr_calc;
   reg [7:0]                   number_bytes;  
   reg [7:0]                   number_bytes_r;
   reg [MEM_AWIDTH - 1:0]      raddr_sc;
   reg [AXI4_AWIDTH - 1:0]     raddr_aligned;
   reg [7:0]                   rd_number_bytes;  
   reg [7:0]                   rd_number_bytes_r;
   reg                         ren_active;   
   reg [AXI4_DWIDTH+((AXI4_DWIDTH/8)*2)-1:0] rdata_sc_lat;
   reg [8:0]                   rdbeat_cnt;
   reg [8:0]                   wrbeat_cnt;      
   reg [AXI4_IDWIDTH-1:0]      rid_mc_r;
   reg [AXI4_DWIDTH - 1:0]     rdata_mc;
   reg [AXI4_DWIDTH - 1:0]     rdata_mc_r;
   reg                         rd_sram_xvalid_r;   
   reg [1:0]                   rresp_mc_r;   
   reg                         ren_sc;
   reg [AXI4_IDWIDTH-1:0]      rid_mc;
   reg                         rlast_mc;
   reg                         rvalid_mc;
   reg [1:0]                   rresp_mc;   
   reg                         aligned_done;   
   reg                         rd_aligned_done;   
   reg                         read_sampled;
   
   wire                        bresp_error;
   wire                        rresp_error;
   wire [7:0]                  rdburst_len;
   wire [7:0]                  wrburst_len;
   wire [AXI4_DWIDTH-1:0]      rdata_sc;
   reg                         ren_sc_d1;
   reg                         ren_sc_d2;
   reg [AXI4_DWIDTH - 1:0]     WDATA_slvif_r;
   reg [7:0]                   AWLEN_slvif_r;
   reg [7:0]                   ARLEN_slvif_r;
   reg                         rdbeat_cnt_load;
   reg                         wrbeat_cnt_load;
   reg                         set_rdaligned_done;
   reg                         set_rdaligned_done_r;
   reg [AXI4_AWIDTH - 1:0]     raddr_aligned_load;
   reg [AXI4_AWIDTH - 1:0]     raddr_aligned_load_r;
   reg [AXI4_AWIDTH - 1:0]     waddr_aligned_load;
   reg [AXI4_AWIDTH - 1:0]     waddr_aligned_load_r;
   reg                         set_aligned_done;
   reg                         set_aligned_done_r;
   reg                         wr_wrap_boundary;
   reg                         wr_wrap_boundary_r;
   reg [AXI4_AWIDTH - 1:0]     w_wrap_lower_boundary;
   reg wr_req_inprog;
   reg wr_req_inprog_r;
   reg rd_req_inprog;
   reg rd_req_inprog_r;
   reg [1:0] req_curr_state;
   reg [1:0] req_next_state;
   reg wr_req_gnt;
   reg rd_req_gnt;
   reg [AXI4_AWIDTH - 1:0] wrap_raddr_calc_r;
   reg [MEM_AWIDTH - 1:0]  raddr_sc_r;
   reg set_wrap;
   reg wr_wrap_boundary_int;
   reg RREADY_slvif_f1;

   
   // --------------------------------------------------------------------------
   // ||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
   // ||                                                                      ||
   // ||                     Start - of - Code                                ||
   // ||                                                                      ||
   // ||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
   // --------------------------------------------------------------------------
   //
   always @(posedge ACLK or negedge ARESETN) begin
      if(ARESETN == 1'b0) begin
         wr_req_inprog_r <= 1'b0;         
         rd_req_inprog_r <= 1'b0;         
      end
      else begin
         wr_req_inprog_r <= wr_req_inprog;
         rd_req_inprog_r <= rd_req_inprog;
      end
   end
   
   // State machine to arbitrate between AW-channel and 
   // AR-channel
   always @(posedge ACLK or negedge ARESETN) begin
      if(ARESETN == 1'b0) begin
         req_curr_state <= REQ_IDLE_ST;         
      end
      else begin
        req_curr_state <= req_next_state;
      end
   end

   // ----------------------------- //
   // Next state and output decoder //
   // ----------------------------- //
   always @(*) begin
      req_next_state = req_curr_state;
      wr_req_inprog  = wr_req_inprog_r;
      rd_req_inprog  = rd_req_inprog_r;
      wr_req_gnt     = 1'b0;
      rd_req_gnt     = 1'b0;
      case (req_curr_state)
        REQ_IDLE_ST : begin
           // ---------------------------------------------------- //
           // ---------------------------------------------------- //
           if(AWVALID_slvif == 1'b1) begin
             req_next_state = REQ_WR_ST;
           end
           else if(ARVALID_slvif == 1'b1) begin
             req_next_state = REQ_RD_ST;
           end

           // ------- //
           // Outputs //
           // ------- //
           if(AWVALID_slvif == 1'b1) begin
              wr_req_inprog = 1'b1;
           end
           else begin
              wr_req_inprog = 1'b0;
           end
           if(ARVALID_slvif == 1'b1) begin
              rd_req_inprog = 1'b1;
           end
           else begin
              rd_req_inprog = 1'b0;
           end

        end
        REQ_WR_ST : begin
           // ---------------------------------------------------- //
           // ---------------------------------------------------- //
           if(wr_curr_state == WR_RESP_ST && wr_next_state == WR_IDLE_ST) begin
             if(rd_req_inprog) begin
               req_next_state = REQ_RD_ST;
             end
             else begin
               req_next_state = REQ_IDLE_ST;
             end
           end
       
           // ------- //
           // Outputs //
           // ------- //
           wr_req_gnt     = 1'b1;

        end
        REQ_RD_ST : begin
           // ---------------------------------------------------- //
           // ---------------------------------------------------- //
           //if(rd_curr_state == RD_LAST_ST && rd_next_state == RD_IDLE_ST) begin
           if(rvalid_mc & RREADY_slvif & rlast_mc) begin
             req_next_state = REQ_IDLE_ST;
           end
       
           // ------- //
           // Outputs //
           // ------- //
           rd_req_gnt     = 1'b1;

        end
        default: req_next_state = REQ_IDLE_ST;        
      endcase 
   end



   // ------------------------------------------------------------------------ //
   // //////////////////////////////////////////////////////////////////////// //
   //                        Write State Machine                            // //
   // //////////////////////////////////////////////////////////////////////// //
   // ------------------------------------------------------------------------ //
   always @(posedge ACLK or negedge ARESETN) begin
      if(ARESETN == 1'b0) begin
         wr_curr_state <= WR_IDLE_ST;         
      end
      else begin
         if (AXI4_IFTYPE_WR == 1'b0) begin
            wr_curr_state <= WR_IDLE_ST;
         end
         else begin
            wr_curr_state <= wr_next_state;
         end
      end
   end
   // ----------------------------- //
   // Next state and output decoder //
   // ----------------------------- //
   always @(*) begin
      awready_fsm = 1'b0;
      wready_fsm  = 1'b0;
      waddrchset  = 1'b0;
      sram_xvalid = 1'b0;
      wr_next_state = wr_curr_state;
      wrbeat_cnt_load  = 1'b0;
      set_aligned_done = 1'b0;

      bvalid_mc_fsm    = 1'b0;      
      bid_mc_fsm       = 'h0;      
      bresp_mc_fsm     = 'h0;      
      case (wr_curr_state)
        WR_IDLE_ST : begin
           // ---------------------------------------------------- //
           // Move to address latch state when AWVALID is received //
           // ---------------------------------------------------- //
           wr_next_state = (wr_req_gnt && AWVALID_slvif == 1'b1) ? WR_ADRLAT_ST : WR_IDLE_ST;

           // ------- //
           // Outputs //
           // ------- //
           if(wr_req_gnt && AWVALID_slvif) begin
              waddrchset  = 1'b1;
              awready_fsm = 1'b0;
           end

        end
        WR_ADRLAT_ST : begin
           wr_next_state = WR_DATA_ST;
           set_aligned_done = 1'b1;

           // ------- //
           // Outputs //
           // ------- //
           awready_fsm = 1'b1;
           waddrchset  = 1'b0;
           sram_xvalid = 1'b1;
           wrbeat_cnt_load = 1'b1;
        end
        WR_DATA_ST : begin
           // ------------------------------------------------------- //
           // Move to response state when the last write data is sent //
           // ------------------------------------------------------- //
           if(WVALID_slvif && WLAST_slvif) begin
              wr_next_state = WR_WAIT_ST;              
           end
           else if(WVALID_slvif) begin
              wr_next_state = WR_DATA_ST;
           end

           // ------- //
           // Outputs //
           // ------- //
           sram_xvalid = ((wrbeat_cnt == 'h0)) ? 1'b0 : 1'b1;  
      
           if(WVALID_slvif && WLAST_slvif) begin
              wready_fsm  = 1'b1;
           end
           else if(WVALID_slvif) begin
              wready_fsm = 1'b1;
           end
           else begin
              wready_fsm = 1'b0;
           end

        end
        WR_WAIT_ST : begin
           // ------------------------------------------------------------------ //
           // Check for the valid response and move accordingly based on AWVALID //
           // ------------------------------------------------------------------ //
           wr_next_state = WR_RESP_ST;
           
        end
        WR_RESP_ST : begin
           // ------------------------------------------------------------------ //
           // Check for the valid response and move accordingly based on AWVALID //
           // ------------------------------------------------------------------ //
           if(BREADY_slvif) begin              
              wr_next_state = WR_IDLE_ST;
           end

           // Outputs
           bvalid_mc_fsm = 1'b1;
           bid_mc_fsm    = AWID_slvif;
           bresp_mc_fsm  = BRESP_OK;
           
        end
        default: wr_next_state = WR_IDLE_ST;        
      endcase // case (wr_curr_state)
   end

   // ------------------------------------------------------------------------ //
   // //////////////////////////////////////////////////////////////////////// //
   //                        SRAM State Machine                             // //
   // //////////////////////////////////////////////////////////////////////// //
   // ------------------------------------------------------------------------ //
   always @(posedge ACLK or negedge ARESETN) begin
      if(ARESETN == 1'b0) begin
         sram_curr_state <= SRAM_IDLE_ST;         
      end
      else begin
         sram_curr_state <= sram_next_state;
      end
   end

   // ----------------------------- //
   // Next state and output decoder //
   // ----------------------------- //
   always @(*) begin
      sram_xdone    = 1'b0;
      rd_sram_xdone = 1'b0;
      wready        = 1'b0;
      first_data    = 1'b0;      
      sram_next_state = sram_curr_state;

      case (sram_curr_state)
        SRAM_IDLE_ST : begin
           // --------------------------------------------------- //
           // Move to sram address state when sram transaction is //
           // valid from write state machine                      //
           // --------------------------------------------------- //
           sram_next_state = (sram_xvalid == 1'b1 || rd_sram_xvalid == 1'b1) ? SRAM_ADDR_ST : SRAM_IDLE_ST;

           // ------- //
           // Outputs //
           // ------- //
           sram_xdone  = 1'b0;
           rd_sram_xdone  = 1'b0;

        end
        SRAM_ADDR_ST : begin
           if(rd_req_gnt && rd_sram_xvalid) begin
              sram_next_state = SRAM_RD_ST;
           end
           else if(wr_req_gnt && WVALID_slvif) begin
              sram_next_state = SRAM_WR_ST;
              
              wready          = (sram_xvalid && WVALID_slvif)? 1'b1 : 1'b0;
           end
           else begin
              sram_next_state = SRAM_ADDR_ST;
           end
           // ------- //
           // Outputs //
           // ------- //

        end
        SRAM_WR_ST : begin
           // --------------------------------------------------------------- //
           // Move to sram idle state when the write burst count reaches zero //
           // --------------------------------------------------------------- //
           sram_next_state = (sram_xvalid && WVALID_slvif) ? SRAM_WRWAIT_ST : ((wrbeat_cnt != 'h0) ? SRAM_WR_ST :  SRAM_IDLE_ST); 

           // ------- //
           // Outputs //
           // ------- //
           first_data = 1'b1;
           sram_xdone  = (!WVALID_slvif) ? 1'b0  : 1'b1;
           wready      = (sram_xvalid && WVALID_slvif) ? 1'b1 : ((wrbeat_cnt != 'h0) ? wready_mc : 1'b0);
        end
        SRAM_WRWAIT_ST : begin
           sram_next_state = (sram_xvalid && WVALID_slvif) ? SRAM_WR_ST : ((wrbeat_cnt != 'h0) ? SRAM_WRWAIT_ST :  SRAM_IDLE_ST);
           // ------- //
           // Outputs //
           // ------- //
           wready      = (sram_xvalid && WVALID_slvif) ? 1'b1 : ((wrbeat_cnt != 'h0) ? wready_mc : 1'b0);
           sram_xdone  = (!WVALID_slvif) ? 1'b0  : 1'b1; 
           first_data  = 1'b0;      

        end
        SRAM_RD_ST : begin
           // --------------------------------------------------------------- //
           // Move to sram read wait state when the read data is sampled      //
           // --------------------------------------------------------------- //
           sram_next_state = (rvalid_mc && RREADY_slvif) ? SRAM_RDWAIT_ST : SRAM_RD_ST;  

           // ------- //
           // Outputs //
           // ------- //
           rd_sram_xdone  = (rvalid_mc && RREADY_slvif) ? 1'b1 : 1'b0; 
        end
        SRAM_RDWAIT_ST : begin
           sram_next_state = (rdbeat_cnt != 'h0) ? SRAM_RD_ST : SRAM_IDLE_ST;           

           // ------- //
           // Outputs //
           // ------- //
        end
        default: sram_next_state = SRAM_IDLE_ST;        
      endcase // case (sram_curr_state)
   end

   always @(posedge ACLK or negedge ARESETN) begin
      if(ARESETN == 1'b0) begin
         wrburst_cnt = 'h0;
      end
      else begin
         if(wr_curr_state == WR_IDLE_ST) begin  
            wrburst_cnt = 'h0;
         end
         else if(sram_curr_state == SRAM_ADDR_ST || (sram_curr_state == SRAM_WRWAIT_ST && sram_next_state == SRAM_WR_ST)) begin
            // --------------------------------------------------------------- //
            // Each 64-bit data transaction on AXI IF is converted into 2, x32 //
            // transactions on SRAM IF. Hence this count is 1.                 //
            // --------------------------------------------------------------- //
            wrburst_cnt = 'h0;
         end
         else if(WVALID_slvif & wready_mc && wrburst_cnt != 'h0) begin
            wrburst_cnt = wrburst_cnt - 'h1;            
         end
      end
   end
   
   // ----------------------------------------------------------------------- //
   // Generate the write address and data ready output to the slave interface //
   // Outputs:                                                                //
   //         awready_mc                                                      //
   //         wready_mc                                                       //
   //         waddrchset_mc                                                   //
   // ----------------------------------------------------------------------- //
   always @(posedge ACLK or negedge ARESETN) begin
      if(ARESETN == 1'b0) begin
         wready_mc_r    <= 1'b0;
         waddrchset_mc  <= 1'b0;
         WVALID_slvif_r <= 1'b0;         
      end
      else begin
         wready_mc_r    <= wready_mc;
         waddrchset_mc  <= waddrchset;
         WVALID_slvif_r <= WVALID_slvif;         
      end
   end

   always @(*) begin
      wready_mc      = wready_fsm;
      awready_mc     = awready_fsm;
   end

   // ----------------------------------------------------------------------- //
   // Generate Write Response related outputs                                 //
   // Outputs:                                                                //
   //         BID/BRESP/BVALID                                                //
   // ----------------------------------------------------------------------- //
   always @(*) begin
      bvalid_mc = bvalid_mc_fsm;
      bresp_mc  = bresp_mc_fsm;
      bid_mc    = bid_mc_fsm;
   end 
   
   assign bresp_error = 'h0;  
   
   // --------------------------------- //
   // Assign the read/write burst value // 
   // --------------------------------- //
   assign rdburst_len = ARLEN_slvif+'h1;
   assign wrburst_len = AWLEN_slvif+'h1;
 
   // ----------------------------------------------------------------------- //
   // Generate the read address and data ready output to the slave interface  //
   // Outputs:                                                                //
   //         arready_mc                                                      //
   //         raddrchset_mc                                                   //
   // ----------------------------------------------------------------------- //
   always @(posedge ACLK or negedge ARESETN) begin
      if(ARESETN == 1'b0) begin
         arready_mc    <= 1'b0;
         raddrchset_mc <= 1'b0;
      end
      else begin
         arready_mc    <= arready_fsm;
         raddrchset_mc <= raddrchset;
      end
   end

   // ------------------------------------------------------------------------ //
   // //////////////////////////////////////////////////////////////////////// //
   //                        Read State Machine                             // //
   // //////////////////////////////////////////////////////////////////////// //
   // ------------------------------------------------------------------------ //
   always @(posedge ACLK or negedge ARESETN) begin
      if(ARESETN == 1'b0) begin
         rd_curr_state <= RD_IDLE_ST;         
      end
      else begin
         if (AXI4_IFTYPE_RD == 1'b0) begin
            rd_curr_state <= RD_IDLE_ST;
         end
         else begin
            rd_curr_state <= rd_next_state;
         end
      end
   end

   // Next state and output decoder
   always @(*) begin
      arready_fsm = 1'b0;
      raddrchset  = 1'b0;
      rd_sram_xvalid = 1'b0;
      rd_next_state = rd_curr_state;
      rdbeat_cnt_load = 1'b0;
      set_rdaligned_done = 1'b0;
      case (rd_curr_state)
        RD_IDLE_ST : begin
           // Move to address latch state when AWVALID is received
           rd_next_state = (rd_req_gnt && ARVALID_slvif == 1'b1) ? RD_ADRLAT_ST : RD_IDLE_ST;

           // Outputs
           if(rd_req_gnt && ARVALID_slvif) begin
		      raddrchset  = 1'b1;
              arready_fsm = 1'b1;
           end
        end
        RD_ADRLAT_ST : begin 
           rd_next_state = RD_DATA0_ST;

           // Outputs
           arready_fsm = 1'b0;
           raddrchset  = 1'b0;
           rd_sram_xvalid = 1'b1;
           rdbeat_cnt_load = 1'b1;
        end
        RD_DATA0_ST : begin
           // Move to read data state
           rd_next_state = RD_DATA_ST;

           // Outputs
           set_rdaligned_done = 1'b1;  
        end
        RD_DATA_ST : begin
           // Move to response state when the last write data is sent
		   //rd_next_state = (rdbeat_cnt == 'h0) ? RD_DATAWAIT_ST : RD_DATA_ST;
		   rd_next_state = (RREADY_slvif & rlast_mc) ? RD_LAST_ST : RD_DATA_ST;
           // Outputs
           //rd_sram_xvalid = (rdbeat_cnt == 'h0) ? 1'b0 : 1'b1;
		   rd_sram_xvalid = (RREADY_slvif & rlast_mc) ? 1'b0 : 1'b1;
        end
        RD_DATAWAIT_ST : begin
           // Move to response state when the last write data is sent
           rd_next_state = RD_LAST_ST;
        end
        RD_LAST_ST : begin
           rd_next_state = RD_IDLE_ST;
        end
        default: rd_next_state = RD_IDLE_ST;        
      endcase // case (rd_curr_state)
   end

   // --------------------------------------------------------------------------
   // Generate Read channel related outputs
   // Outputs:
   //         RID/RRESP/RVALID/RLAST
   // --------------------------------------------------------------------------
//   generate
//      if(PIPE == 2) begin
//         always @(posedge ACLK or negedge ARESETN) begin
//            if(ARESETN == 1'b0) begin
//               rvalid_mc <= 1'b0;
//            end
//            else begin
//               if(rvalid_mc == 1'b1 && RREADY_slvif == 1'b1) begin
//                  rvalid_mc <= 1'b0;
//               end
//               else if(ren_sc_d1 == 1'b1 && rvalid_mc == 1'b0) begin
//                  rvalid_mc <= 1'b1;
//               end
//            end
//         end
//
//         always @(posedge ACLK or negedge ARESETN) begin
//            if(ARESETN == 1'b0) begin
//               rlast_mc <= 1'b0;
//            end
//            else begin
//               if(rvalid_mc == 1'b1 && RREADY_slvif == 1'b1) begin
//                  rlast_mc <= 1'b0;
//               end
//               else if(ren_sc == 1'b1 && rdbeat_cnt == 'h1) begin
//                  rlast_mc <= 1'b1;
//               end
//            end
//         end
//
//         always @(posedge ACLK or negedge ARESETN) begin
//            if(ARESETN == 1'b0) begin
//               rid_mc    <= 'h0;         
//               rresp_mc  <= 'h0;         
//            end
//            else begin
//               if(rd_curr_state == RD_DATA_ST) begin
//                  rid_mc <= ARID_slvif;
//               end
//               else begin
//                  rid_mc <= 'h0;
//               end
//
//               if(rd_next_state == RD_LAST_ST && rd_curr_state == RD_DATA_ST) begin
//                  if(rresp_error == 1'b1) begin
//                     rresp_mc <= RRESP_ERR; // Send error response
//                  end
//                  else begin
//                     rresp_mc <= RRESP_OK; //Send okay response
//                  end
//               end
//               else begin
//                  rresp_mc <= RRESP_OK;
//               end
//            end
//         end
//
//      end // if (PIPE == 2)
//   endgenerate
//
//   generate
//      if((AXI4_DWIDTH == 64 || AXI4_DWIDTH == 128 || AXI4_DWIDTH == 256 || AXI4_DWIDTH == 512) && PIPE == 2) begin
//         always @(posedge ACLK or negedge ARESETN) begin
//            if(ARESETN == 1'b0) begin
//               rdata_mc <= 'h0;
//            end
//            else begin
//               rdata_mc <= (ren_sc_d1) ? rdata_sc : rdata_mc;
//            end
//         end
//      end // if (PIPE == 2)
//   endgenerate
//
//   generate
//      if(AXI4_DWIDTH == 32 && PIPE == 2) begin
//         always @(*) begin
//            rdata_mc = rdata_sc;
//         end
//      end
//   endgenerate

      always @(posedge ACLK or negedge ARESETN) 
         if(ARESETN == 1'b0) 
           RREADY_slvif_f1 <= 1'b0;
         else 
  		   RREADY_slvif_f1 <= RREADY_slvif;

   generate	  
	  
	  //reg [8:0] read_data_cntr;	  
	  //reg [8:0] read_req_cntr;	  
	  reg [2:0] read_cntr;	  
	  
      if(PIPE == 2 && HIGH_PERF == 1'b1) begin           

	     //When PIPELINE is enabled, data comes from the memory after two clock cycles.To maintain this latency, data is stored in to two
		 //temparory registers. Whenever valid data is available in these two temp registers, RVALID should not be driven low to achieve 
		 //high throughput. Below logic is design to fullfil the above requirement. 
		 

		 
	     always @(posedge ACLK or negedge ARESETN) 
            if(ARESETN == 1'b0) 
              read_cntr <= 0;
			else if(rlast_mc & rvalid_mc & RREADY_slvif) 
              read_cntr <= 0;
            else if(ren_sc_d1 & ~(rvalid_mc & RREADY_slvif)) 
              read_cntr <= read_cntr + 1'b1;
			else if(~ren_sc_d1 & (rvalid_mc & RREADY_slvif)) 
			  read_cntr <= read_cntr - 1'b1;
			  
         ////read_req_cntr - Counter to count number of read request sent to the Memory. Counter is incremented when read request (ren_sc) is 
		 ////sent to the memory. Counter is reset when last data read by the AXI4 bus i.e RLAST,RREADY and RVALID is high.
		 //
	     //always @(posedge ACLK or negedge ARESETN) 
         //   if(ARESETN == 1'b0) 
         //      read_req_cntr <= 0;
         //   else if(rlast_mc & rvalid_mc & RREADY_slvif) 
         //      read_req_cntr <= 0;
         //   else if((ren_sc)) 
         //      read_req_cntr <= read_req_cntr + 1'b1;
         //
         ////read_data_cntr - Counter to count number of data read by AXI4 bus. Counter is incremented when data is read (RVALID and RREADY is high)
		 ////by the AXI4 bus.Counter is reset when last data read by the AXI4 bus i.e RLAST,RREADY and RVALID is high.
         //   
	     //always @(posedge ACLK or negedge ARESETN) 
         //   if(ARESETN == 1'b0) 
         //      read_data_cntr <= 0;
         //   else if(rlast_mc & rvalid_mc & RREADY_slvif) 
         //      read_data_cntr <= 0;
         //   else if((rvalid_mc & RREADY_slvif)) 
         //      read_data_cntr <= read_data_cntr + 1'b1;
            
         //rvalid_mc - RVALID logic.It is asserted when delayed request (ren_sc_d1) of read request to the memory is high. It remains high
		 //until last data is read by the AXI4 bus or there is no data into the temp buffer register. To know wheather data is available in 
		 //temp register or not, difference of read_req_cntr and read_data_cntr is taken and compared with 1. When the difference of the counter
		 //is one and data is read by the AXI4 bus, RVALID is driven low as this condition indicates there is no data available in the temp 
		 //registers.
		 
         always @(posedge ACLK or negedge ARESETN) 
            if(ARESETN == 1'b0) 
               rvalid_mc <= 1'b0;
            else if(rlast_mc == 1'b1 && rvalid_mc == 1'b1 && RREADY_slvif) 
               rvalid_mc <= 1'b0;
            else if(ren_sc_d1) 
   	           rvalid_mc <= 1'b1;
			//else if(rvalid_mc & RREADY_slvif & ((read_req_cntr - read_data_cntr) == 1))
			else if(rvalid_mc & RREADY_slvif & (read_cntr == 1))
			   rvalid_mc <= 1'b0;
         
         always @(posedge ACLK or negedge ARESETN) begin
            if(ARESETN == 1'b0) begin
               rlast_mc <= 1'b0;
            end
            else begin
               if((rvalid_mc && RREADY_slvif && rdbeat_cnt <= 'h2) || (ARLEN_slvif == 0)) begin
                  rlast_mc <= 1'b1;
               end
               else if((rvalid_mc == 1'b1 && RREADY_slvif == 1'b1) | (ARVALID & arready_mc)) begin
                  rlast_mc <= 1'b0;
               end
            end
         end
  
      end // if (PIPE == 2 && HIGH_PERF == 1'b1)      
   endgenerate
   
   generate
      if((PIPE == 1 ) && HIGH_PERF == 1'b1) begin         
         always @(posedge ACLK or negedge ARESETN) begin
            if(ARESETN == 1'b0) begin
               rvalid_mc <= 1'b0;
            end
            else begin
               if(rdbeat_cnt == 'h0 && rlast_mc == 1'b1 && rvalid_mc == 1'b1 && RREADY_slvif) begin
                  rvalid_mc <= 1'b0;
               end
               else if(ren_sc == 1'b1) begin
                  rvalid_mc <= 1'b1;
               end
            end
         end // always @ (posedge ACLK or negedge ARESETN)

         always @(posedge ACLK or negedge ARESETN) begin
            if(ARESETN == 1'b0) begin
               rlast_mc <= 1'b0;
            end
            else begin
               if(ren_sc == 1'b1 && rdbeat_cnt == 'h1) begin
                  rlast_mc <= 1'b1;
               end
               else if(rvalid_mc == 1'b1 && RREADY_slvif == 1'b1) begin
                  rlast_mc <= 1'b0;
               end
            end
         end

      end // if ((PIPE == 1 ) && HIGH_PERF == 1'b1)      
   endgenerate

   generate
      if((PIPE == 0) && HIGH_PERF == 1'b1) begin         
         always @(*) begin
             rvalid_mc <= ren_sc;
         end // always @ (*)

         always @(*) begin
            if((rdbeat_cnt == 'h1)) begin
               rlast_mc <= 1'b1;
            end
            else 
               rlast_mc <= 1'b0;
         end
      end // if ((PIPE == 0) && HIGH_PERF == 1'b1)      
   endgenerate
   
   generate
      reg read_ctrl;
	  reg rdata_reg_en_ctrl;
	  reg rdata_mc_reg1_en;
	  reg rdata_mc_reg2_en;
	  reg rdata_mc_reg1_sel;
	  reg [AXI4_DWIDTH-1:0] rdata_mc_reg1;
	  reg [AXI4_DWIDTH-1:0] rdata_mc_reg2;
	  
	  if(PIPE == 2)
	    begin 
		
		  //When Pipeline is enabled, data from memory is available after two clock cycles. So two clock cycle data are stored in 
		  //two temp registers. There are three options to assign data to the AXI4 bus read data. 
		  //1 - Directly assign the data from the memory to the AXI4 bus read data 
		  //2 - Assign temp 1 register's to the AXI4 bus read data 
		  //3 - Assign temp 2 register's to the AXI4 bus read data 
		  //Below logic fullfil the above requirement.
		  
		  //read_ctrl - Once RVALID is high and RREAD falling edge pulse is detected, signal goes high and when 
		  //new read request is received or RVALID goes low, signal goes low. When signal is high and there is data 
		  //into the temp registers, data from the memory won't be assigned to the AXI4 read data.
		  
		
          always @(posedge ACLK or negedge ARESETN) 
            if(ARESETN == 1'b0) 
              read_ctrl <= 1'b0;
            else if((ARVALID_slvif & arready_mc) | ~rvalid_mc)
	          read_ctrl <= 1'b0;
            else if(rvalid_mc & ~RREADY_slvif & RREADY_slvif_f1)
	          read_ctrl <= 1'b1;
			  
			
          //rdata_reg_en_ctrl - Signal is used to load the data into the temp registers.It is toggled when delayed request(ren_sc_d2) 
		  //of actual read request to the memory (ren_sc) is high. It will be reset to 0 when new read request is received.
          //When low and ren_sc_d2 is high, temp 1 register will be enabled and when high and ren_sc_d2 is high, temp 2 register will 
		  //be enabled. This signal is used to enable temp register 1 and temp register 2 alternatively when valid data is available 
		  //from the memory i.e first it enables temp 1 register temp 2 regisetr and so on...
          
          always @(posedge ACLK or negedge ARESETN) 
            if(ARESETN == 1'b0) 
              rdata_reg_en_ctrl <= 1'b0;
	        else if(ARVALID & arready_mc)
	          rdata_reg_en_ctrl <= 1'b0;
            else if(ren_sc_d2)
	          rdata_reg_en_ctrl <= ~rdata_reg_en_ctrl;		  
			  
          //rdata_mc_reg1_en - Enable signal for rdata_mc_reg1 (temp register 1)			  
          
          always @(*) 
	        if(~rdata_reg_en_ctrl & ren_sc_d2)
	          rdata_mc_reg1_en <= 1'b1;
            else
	          rdata_mc_reg1_en <= 1'b0;
			  
         //rdata_mc_reg2_en - Enable signal for rdata_mc_reg2 (temp register 2)			  			  
          
          always @(*) 
            if(rdata_reg_en_ctrl & ren_sc_d2)
	          rdata_mc_reg2_en <= 1'b1;
            else
	          rdata_mc_reg2_en <= 1'b0;
			  
         //rdata_mc_reg1 - Temp data register 1. Data from the memory will be stored when enable is high
	        
          always @(posedge ACLK or negedge ARESETN) 
            if(ARESETN == 1'b0) 
              rdata_mc_reg1 <= 0;
            else if(rdata_mc_reg1_en)
	          rdata_mc_reg1 <= rdata_sc;
          
		 //rdata_mc_reg2 - Temp data register 2. Data from the memory will be stored when enable is high
		  
          always @(posedge ACLK or negedge ARESETN) 
            if(ARESETN == 1'b0) 
              rdata_mc_reg2 <= 0;
            else if(rdata_mc_reg2_en)
	          rdata_mc_reg2 <= rdata_sc;
          
		 //rdata_mc_reg1_sel - This signal is used to decide whether temp 1 register data should be assigned or temp 2 register data 
		 //should be assigned to AXI4 read data.This signal selects alterantively temp 1 register data and temp 2 register data.
		 //It is acheived by toggling this signal when there is data read from the AXI4 bus.Reset value of this signal is high and 
		 //it will be set high again when new read request is asserted. When 1, assigns temp 1 register data to AXI4 read data and 
		 //when 0, assignes temp 2 register data to AXI4 read data. 
		 
		  
          always @(posedge ACLK or negedge ARESETN) 
            if(ARESETN == 1'b0) 
              rdata_mc_reg1_sel <= 1'b1;
	        else if(ARVALID & arready_mc)
	          rdata_mc_reg1_sel <= 1'b1;
            else if(rvalid_mc & RREADY_slvif)
	          rdata_mc_reg1_sel <= ~rdata_mc_reg1_sel;	

         //rdata_mc	- Actual read data (RDATA) of AXI4 bus.Initially, data from the memory directly assigns to RDATA. If RREADY goes 
         //low when RVALID is high and there is a valid data available in the temp registers then data from the temp registers will 
         //be assigned to RDATA based on the value of rdata_mc_reg1_sel. 		 
	  
          always @(*) 
		    if((ren_sc_d2 & ~read_ctrl) | (ren_sc_d1 & ren_sc_d2))
		      rdata_mc = rdata_sc;
		    else if(rdata_mc_reg1_sel)
		      rdata_mc = rdata_mc_reg1;
		   else 
		      rdata_mc = rdata_mc_reg2;
        end
   endgenerate
   
   generate
      if(PIPE == 1) begin
         always @(*) begin
            rdata_mc = (ren_sc_d1) ? rdata_sc : rdata_mc_r;
         end
     end
   endgenerate

   generate
      if(PIPE == 0) begin
		 always @(*) begin
            //rdata_mc = (ren_sc) ? rdata_sc : rdata_mc_r;
            rdata_mc = rdata_sc;
		 end 
     end
   endgenerate


   always @(posedge ACLK or negedge ARESETN) begin
      if(ARESETN == 1'b0) begin
         rid_mc_r <= 'h0;
      end
      else begin
         if(rd_curr_state == RD_DATA_ST) begin
            rid_mc_r <= ARID_slvif;
         end
         else begin
            rid_mc_r <= 'h0;
         end
      end
   end
   
   always @(posedge ACLK or negedge ARESETN) begin
      if(ARESETN == 1'b0) begin
         rdata_mc_r <= 'h0;
      end
      else begin
         rdata_mc_r <= rdata_mc;         
      end
   end


   generate
      if(HIGH_PERF == 1'b1) begin 
         // --------------------------------------------------------------------------
         // Register the read signals to align it with the read data from SRAM
         // --------------------------------------------------------------------------
         always @(posedge ACLK or negedge ARESETN) begin
            if(ARESETN == 1'b0) begin
               rid_mc    <= 'h0;         
               rresp_mc  <= 'h0;         
            end
            else begin
               if(WRAP_SUPPORT == 1'b0 && rd_curr_state == RD_DATA_ST) begin
                  rid_mc <= ARID_slvif;
               end
               else if(WRAP_SUPPORT == 1'b1 && rd_curr_state == RD_DATA0_ST) begin
                  rid_mc <= ARID_slvif;
               end
               else if(rvalid_mc == 1'b1 && RREADY_slvif == 1'b1 && rlast_mc == 1'b1) begin
                  rid_mc <= 'h0;
               end
               
               if(rd_next_state == RD_LAST_ST && rd_curr_state == RD_DATA_ST) begin
                  if(rresp_error == 1'b1) begin
                     rresp_mc <= RRESP_ERR; // Send error response
                  end
                  else begin
                     rresp_mc <= RRESP_OK; //Send okay response
                  end
               end
               else begin
                  rresp_mc <= RRESP_OK;
               end
            end
         end

      end // if (HIGH_PERF == 1'b1)      
   endgenerate
   

   
   // SRAM signal generation

   // ren_sc:: 
   // Read enable to SRAM 
   // For 64-bit datawidth, two ren back-to-back pulses are generated on the SRAM interface for ARSIZE = 3.
   // For 64-bit datawidth, only one ren pulse is generated on the SRAM interface for ARSIZE < 3.
   // For 32-bit datawidth, only one ren pulse is generated on the SRAM interface.
   
   // The signal set_rdaligned_done_r is used here inorder to fetch the data from memory and thus assert the RVALID
   // "The slave must not wait for the master to assert RREADY before asserting RVALID" refer ARM IHI 0022F.b ID122117 A3-45
   generate
      if(PIPE != 0 && HIGH_PERF == 1'b1) begin         
         always @(*) begin
            ren_sc <= 1'b0;
            if(rvalid_mc == 1'b1 && rlast_mc == 1'b1) begin
               ren_sc <= 1'b0;
            end
            //else if(((rd_curr_state == RD_DATA_ST)) && rdbeat_cnt > 'h0 && (RREADY_slvif | set_rdaligned_done_r)) begin
			else if(((rd_curr_state == RD_DATA_ST)) && rdbeat_cnt > 'h0 && RREADY_slvif) begin
               ren_sc <= 1'b1;
            end
         end // always @ (*)         

      end // if (HIGH_PERF == 1'b1)      
   endgenerate

   generate
      if(PIPE == 0 && HIGH_PERF == 1'b1) begin         
         always @(*) begin
            ren_sc = 1'b0;
            if(rdbeat_cnt == 0) begin
               ren_sc = 1'b0;
            end
            //else if(((rd_curr_state == RD_DATA_ST)) && rdbeat_cnt > 'h0 && (RREADY_slvif | set_rdaligned_done_r)) begin
			else if(((rd_curr_state == RD_DATA_ST)) && RREADY_slvif) begin
               ren_sc = 1'b1;
            end
         end // always @ (*)         

      end // if (HIGH_PERF == 1'b1)      
   endgenerate


   // ren_active is used to generate the required number of read enable pulses based 
   // on the AXI4 datawidth.
   always @(posedge ACLK or negedge ARESETN) begin
      if(ARESETN == 1'b0) begin
         ren_active <= 1'b0;
      end
      else begin
         if(ren_active == 1'b1 && RREADY_slvif == 1'b1 && rvalid_mc) begin  
            ren_active <= 1'b0;
         end
         else if(rd_curr_state == RD_DATA_ST && ren_sc == 1'b1) begin
            ren_active <= 1'b1;
         end
      end
   end // always @ (posedge ACLK or negedge ARESETN)

   // Registered ren_sc
   always @(posedge ACLK or negedge ARESETN) begin
      if(ARESETN == 1'b0) begin
         ren_sc_d1 <= 1'b0;
      end
      else begin
         ren_sc_d1 <= ren_sc;
      end
   end // always @ (posedge ACLK or negedge ARESETN)
   
   always @(posedge ACLK or negedge ARESETN) begin
      if(ARESETN == 1'b0) begin
         ren_sc_d2 <= 1'b0;
      end
      else begin
         ren_sc_d2 <= ren_sc_d1;
      end
   end // always @ (posedge ACLK or negedge ARESETN)
   
   // ---------------------------------------------------------------------------------- //
   // raddr_sc::                                                                         //
   // Read Address generation logic to SRAM                                              //
   // For 64-bit datawidth and ARSIZE = 3, each 64-bit transaction on AXI4               //
   // interface is converted into 2, 32-bit transactions on the SRAM memory interface.   //
   // For 64-bit datawidth and ARSIZE < 3, each 64-bit transaction on AXI4 interface     //
   // is converted into corresponding 32-bit transaction on the SRAM memory interface    //
   // based on the address.                                                              //
   // For 32-bit datawidth and For ARSIZE < 3, each 32-bit transaction on AXI4 interface //
   // is converted into corresponding 32-bit transaction on the SRAM memory interface    //
   // based on the address.                                                              //
   // ---------------------------------------------------------------------------------- //
   // Register the next wrap address on every sample of 
   // WVALID_slvif & wready_mc.
   generate
      if(HIGH_PERF == 1'b1) begin         
         always @(posedge ACLK or negedge ARESETN) begin
            if(ARESETN == 1'b0) begin
               raddr_sc       <= 'h0;
               raddr_sc_dummy <= 'h0;
            end
            else begin         
               if(WRAP_SUPPORT && ARBURST_slvif == 2'b10) begin  // For burst type = WRAP 
                  if(set_rdaligned_done) begin
                     if (AXI4_DWIDTH == 512) begin
                        raddr_sc <= raddr_aligned_load >> 6;
                     end
                     else if (AXI4_DWIDTH == 256) begin
                        raddr_sc <= raddr_aligned_load >> 5;
                     end
                     else if (AXI4_DWIDTH == 128) begin
                        raddr_sc <= raddr_aligned_load >> 4;
                     end
                     else if (AXI4_DWIDTH == 64) begin
                        raddr_sc <= raddr_aligned_load >> 3;
                     end
                     else if (AXI4_DWIDTH == 32) begin
                        raddr_sc <= raddr_aligned_load >> 2;
                     end
                     // ----
                     raddr_sc_dummy <= raddr_aligned_load;                     
                  end
                  else if(ren_sc) begin
                     if (AXI4_DWIDTH == 512) begin
                        raddr_sc <= wrap_raddr_next >> 6;
                     end
                     else if (AXI4_DWIDTH == 256) begin
                        raddr_sc <= wrap_raddr_next >> 5;
                     end
                     else if (AXI4_DWIDTH == 128) begin
                        raddr_sc <= wrap_raddr_next >> 4;
                     end
                     else if (AXI4_DWIDTH == 64) begin
                        raddr_sc <= wrap_raddr_next >> 3;
                     end
                     else if (AXI4_DWIDTH == 32) begin
                        raddr_sc <= wrap_raddr_next >> 2;
                     end

                     raddr_sc_dummy <= wrap_raddr_next;                     
                  end
               end
               else begin // For burst type = INCR
                  if(sram_curr_state == SRAM_RDWAIT_ST && rdbeat_cnt == 'h0) begin
                     raddr_sc <= 'h0;
                  end
                  else if(set_rdaligned_done) begin 
                     if (AXI4_DWIDTH == 512) begin
                        raddr_sc <= raddr_aligned_load >> 6;
                     end
                     else if (AXI4_DWIDTH == 256) begin
                        raddr_sc <= raddr_aligned_load >> 5;
                     end
                     else if (AXI4_DWIDTH == 128) begin
                        raddr_sc <= raddr_aligned_load >> 4;
                     end
                     else if (AXI4_DWIDTH == 64) begin
                        raddr_sc <= raddr_aligned_load >> 3;
                     end
                     else if (AXI4_DWIDTH == 32) begin
                        raddr_sc <= raddr_aligned_load >> 2;
                     end
                  end
                  else if(ren_sc) begin 
                     if (AXI4_DWIDTH == 512) begin
                        raddr_sc <= raddr_aligned >> 6;
                     end
                     else if (AXI4_DWIDTH == 256) begin
                        raddr_sc <= raddr_aligned >> 5;
                     end
                     else if (AXI4_DWIDTH == 128) begin
                        raddr_sc <= raddr_aligned >> 4;
                     end
                     else if (AXI4_DWIDTH == 64) begin
                        raddr_sc <= raddr_aligned >> 3;
                     end
                     else if (AXI4_DWIDTH == 32) begin
                        raddr_sc <= raddr_aligned >> 2;
                     end
                  end
                  else if(rd_curr_state == RD_LAST_ST) begin
                     raddr_sc <= 'h0;
                  end
               end
            end
         end

         always @(posedge ACLK or negedge ARESETN) begin
            if(ARESETN == 1'b0) begin
               raddr_sc_r <= 'h0;
            end
            else begin
               raddr_sc_r <= raddr_sc;
            end
         end

         always @(posedge ACLK or negedge ARESETN) begin
            if(ARESETN == 1'b0) begin
               wrap_raddr_plus   <= 'h0;
            end
            else begin
               if(rd_curr_state == RD_ADRLAT_ST) begin
                  wrap_raddr_plus <= raddr_aligned_load + rd_number_bytes;
               end             
               else if(ren_sc) begin
                  wrap_raddr_plus <= wrap_raddr_next + rd_number_bytes;            
               end
            end
         end

         
      end // if (HIGH_PERF == 1'b1)
   endgenerate
   
   assign rresp_error = 'h0;
   
   
   always @(posedge ACLK or negedge ARESETN) begin
      if(ARESETN == 1'b0) begin
         rresp_mc_r <= 'h0;
      end
      else begin
         if(rd_next_state == RD_LAST_ST && rd_curr_state == RD_DATA_ST) begin
            if(rresp_error == 1'b1) begin
               rresp_mc_r <= RRESP_ERR; // Send error response
            end
            else begin
               rresp_mc_r <= RRESP_OK; //Send okay response
            end
         end
         else begin
            rresp_mc_r <= RRESP_OK;
         end
      end
   end

   
   // --------------------------------------------- //
   // Calculate the burst length based on the arlen //
   // --------------------------------------------- //
   always @(posedge ACLK or negedge ARESETN) begin
      if(ARESETN == 1'b0) begin
         wrbeat_cnt <= 'h0;
      end
      else begin
         if(wrbeat_cnt != 'h0 && WVALID_slvif && wready_mc && WLAST_slvif) begin
            wrbeat_cnt <= 'h0;
         end
         else if(wrbeat_cnt_load == 1'b1) begin  // Load
            wrbeat_cnt <= AWLEN_slvif+'h1;
         end
         else if(wrbeat_cnt != 'h0 && WVALID_slvif && wready_mc) begin
            wrbeat_cnt <= wrbeat_cnt - 'h1;
         end         
      end
   end

   // --------------------------------------------- //
   // Count the number of beats based on rvalid     //
   // and rready.                                   //
   // --------------------------------------------- //
   generate
      if(PIPE == 2 && HIGH_PERF == 1'b1) begin         

         always @(posedge ACLK or negedge ARESETN) begin
            if(ARESETN == 1'b0) begin
               rdbeat_cnt <= 'h0;
            end
            else begin
               if(rvalid_mc & RREADY_slvif & rlast_mc) begin 
                  rdbeat_cnt <= 'h0;
               end
               else if(rdbeat_cnt_load == 1'b1) begin  // Load
                  rdbeat_cnt <= ARLEN_slvif+'h1; //
               end
               else if(rvalid_mc && RREADY_slvif && rdbeat_cnt != 'h0) begin 
                  rdbeat_cnt <= rdbeat_cnt - 'h1;
               end 
            end
         end
      end // if (HIGH_PERF == 1'b1)

      else begin//if((PIPE == 1 || PIPE == 0) && HIGH_PERF == 1'b1) begin         

         always @(posedge ACLK or negedge ARESETN) begin
            if(ARESETN == 1'b0) begin
               rdbeat_cnt <= 'h0;
            end
            else begin
               if(rvalid_mc & RREADY_slvif & rlast_mc) begin 
                  rdbeat_cnt <= 'h0;
               end
               else if(rdbeat_cnt_load == 1'b1) begin  // Load
                  rdbeat_cnt <= ARLEN_slvif+'h1; //
               end
               else if(ren_sc && RREADY_slvif && rdbeat_cnt != 'h0) begin 
                  rdbeat_cnt <= rdbeat_cnt - 'h1;
               end 
            end
         end
      end // if (HIGH_PERF == 1'b1)
   endgenerate
   

   // ----------------------------------------------------------------- //
   // Generate the read aligned address based on the read size (ARSIZE) //
   // ----------------------------------------------------------------- //
   generate
      if(HIGH_PERF == 1'b1) begin         
         always @(posedge ACLK or negedge ARESETN) begin
            if(ARESETN == 1'b0) begin
               rd_aligned_done <= 1'b0;  
               raddr_aligned   <= 'h0;       
            end
            else begin
               if(rd_curr_state == RD_ADRLAT_ST) begin
                  raddr_aligned <= raddr_aligned_load;
               end
               else if(ren_sc || set_rdaligned_done) begin
                  raddr_aligned <= raddr_aligned + rd_number_bytes;
               end
            end // else: !if(ARESETN == 1'b0)      
         end // always @ (posedge ACLK or negedge ARESETN)
      end // if (HIGH_PERF == 1'b1)      
   endgenerate

   
    generate
      if(HIGH_PERF == 1'b1) begin
         always @(*) begin
            if(ARVALID && arready_mc) begin
             case(ARSIZE)  
              3'b000 : begin
                 raddr_aligned_load = ARADDR;              
                 rd_number_bytes   = 'h1;
              end
              3'b001 : begin
                 raddr_aligned_load = {ARADDR[AXI4_AWIDTH - 1: 1], 1'b0};
                 rd_number_bytes   = 'h2;
              end
              3'b010 : begin
                 raddr_aligned_load = {ARADDR[AXI4_AWIDTH - 1: 2], 2'b00};
                 rd_number_bytes   = 'h4;
              end
              3'b011 : begin
                 raddr_aligned_load = {ARADDR[AXI4_AWIDTH - 1: 3], 3'b000};
                 rd_number_bytes   = 'h8;
              end
              3'b100 : begin
                 raddr_aligned_load = {ARADDR[AXI4_AWIDTH - 1: 4], 4'b0000};
                 rd_number_bytes   = 'h10;
              end
              3'b101 : begin
                 raddr_aligned_load = {ARADDR[AXI4_AWIDTH - 1: 5], 5'b00000};
                 rd_number_bytes   = 'h20;
              end
              3'b110 : begin
                 raddr_aligned_load = {ARADDR[AXI4_AWIDTH - 1: 6], 6'b000000};
                 rd_number_bytes   = 'h40;
              end
              3'b111 : begin
                 raddr_aligned_load = {ARADDR[AXI4_AWIDTH - 1: 7], 7'b0000000};
                 rd_number_bytes   = 'h80;
              end
              default : begin
                 raddr_aligned_load = 'h0;
                 rd_number_bytes   = 'h0;
              end
            endcase // case (ARSIZE)
            end // if (ARVALID && arready_mc)
            else begin
                 raddr_aligned_load = raddr_aligned_load_r;
                 rd_number_bytes   = rd_number_bytes_r;
            end // else: !if(ARVALID && arready_mc)            
         end // always @ (*)         
      end // if (HIGH_PERF == 1'b1)      
   endgenerate

   always @(posedge ACLK or negedge ARESETN) begin
      if(ARESETN == 1'b0) begin
         raddr_aligned_load_r <= 1'b0;  
         rd_number_bytes_r   <= 'h0;       
         set_rdaligned_done_r <= 1'b0;               
      end
      else begin
         raddr_aligned_load_r <= raddr_aligned_load;  
         rd_number_bytes_r   <= rd_number_bytes;       
         set_rdaligned_done_r <= set_rdaligned_done;               
      end
   end

   // ------------------------------------------------------------------------ //
   // //////////////////////////////////////////////////////////////////////// //
   //                        SRAM Control block                             // //
   // //////////////////////////////////////////////////////////////////////// //
   // ------------------------------------------------------------------------ //

   always @(posedge ACLK or negedge ARESETN) begin
      if(ARESETN == 1'b0) begin
         sram_xdone_r   <= 'h0;
      end
      else begin
         sram_xdone_r <= sram_xdone;
      end
   end

   always @(posedge ACLK or negedge ARESETN) begin
      if(ARESETN == 1'b0) begin
         wdata_sc_r   <= 'h0;
      end
      else begin
         wdata_sc_r <= wdata_sc;
      end
   end
   
   always @(posedge ACLK or negedge ARESETN) begin
      if(ARESETN == 1'b0) begin
         wr_wrap_boundary_int   <= 'h0;
      end
      else begin
         if(WVALID_slvif && wready_mc) begin
            wr_wrap_boundary_int   <= 'h0;
         end
         else if(wr_wrap_boundary) begin
            wr_wrap_boundary_int   <= 'h1;
         end
      end
   end

   
   // Write signals to SRAM

   // ---------------------------------------------------------------------------------- //
   // waddr_sc::                                                                         //
   // Write Address generation logic to SRAM                                             //
   // For 64-bit datawidth and AWSIZE = 3, each 64-bit transaction on AXI4               //
   // interface is converted into 2, 32-bit transactions on the SRAM memory interface.   //
   // For 64-bit datawidth and AWSIZE < 3, each 64-bit transaction on AXI4 interface     //
   // is converted into corresponding 32-bit transaction on the SRAM memory interface    //
   // based on the address.                                                              //
   // For 32-bit datawidth and For AWSIZE < 3, each 32-bit transaction on AXI4 interface //
   // is converted into corresponding 32-bit transaction on the SRAM memory interface    //
   // based on the address.                                                              //
   // ---------------------------------------------------------------------------------- //
   always @(posedge ACLK or negedge ARESETN) begin
      if(ARESETN == 1'b0) begin
         waddr_sc   <= 'h0;
         waddr_sc_dummy   <= 'h0;
      end
      else begin
         // For burst type = WRAP
         // For AWSIZE = 3'b011
            if(waddrchset_mc && AWBURST == 2'b10 && WRAP_SUPPORT) begin
               if(AXI4_DWIDTH == 512) begin
                  waddr_sc <= waddr_aligned_load >> 6;                  
               end
               else if(AXI4_DWIDTH == 256) begin
                  waddr_sc <= waddr_aligned_load >> 5;                  
               end
               else if(AXI4_DWIDTH == 128) begin
                  waddr_sc <= waddr_aligned_load >> 4;                  
               end
               else if(AXI4_DWIDTH == 64) begin
                  waddr_sc <= waddr_aligned_load >> 3;                  
               end
               else if(AXI4_DWIDTH == 32) begin
                  waddr_sc <= waddr_aligned_load >> 2;                  
               end

               waddr_sc_dummy <= waddr_aligned_load;
            end
            else if(WVALID_slvif && wready_mc && AWBURST_slvif == 2'b10 && WRAP_SUPPORT) begin
               if(AXI4_DWIDTH == 512) begin
                  waddr_sc <= wrap_waddr_next >> 6;
               end
               else if(AXI4_DWIDTH == 256) begin
                  waddr_sc <= wrap_waddr_next >> 5;                  
               end
               else if(AXI4_DWIDTH == 128) begin
                  waddr_sc <= wrap_waddr_next >> 4;                  
               end
               else if(AXI4_DWIDTH == 64) begin
                  waddr_sc <= wrap_waddr_next >> 3;                  
               end
               else if(AXI4_DWIDTH == 32) begin
                  waddr_sc <= wrap_waddr_next >> 2;                  
               end
	          waddr_sc_dummy <= wrap_waddr_next;
            end
            // For burst type = INCR
            // 64-bit tansaction on AXI IF is converted into 2, 32-bit transactions on the 
            // SRAM IF to match with the SRAM Fabric memory configuration.
            else if(waddrchset_mc && AWBURST != 2'b10) begin
               if(AXI4_DWIDTH == 512) begin
                  waddr_sc <= waddr_aligned_load >> 6;
               end
               else if(AXI4_DWIDTH == 256) begin
                  waddr_sc <= waddr_aligned_load >> 5;                  
               end
               else if(AXI4_DWIDTH == 128) begin
                  waddr_sc <= waddr_aligned_load >> 4;                  
               end
               else if(AXI4_DWIDTH == 64) begin
                  waddr_sc <= waddr_aligned_load >> 3;                  
               end
               else if(AXI4_DWIDTH == 32) begin
                  waddr_sc <= waddr_aligned_load >> 2;                  
               end
               waddr_sc_dummy   <= 'h0;

            end             
            else if(wready_mc && WVALID_slvif && AWBURST_slvif != 2'b10) begin
               if(AXI4_DWIDTH == 512) begin
                  waddr_sc <= (waddr_aligned + number_bytes) >> 6;
               end
               else if(AXI4_DWIDTH == 256) begin
                  waddr_sc <= (waddr_aligned + number_bytes) >> 5;                  
               end
               else if(AXI4_DWIDTH == 128) begin
                  waddr_sc <= (waddr_aligned + number_bytes) >> 4;                  
               end
               else if(AXI4_DWIDTH == 64) begin
                  waddr_sc <= (waddr_aligned + number_bytes) >> 3;                  
               end
               else if(AXI4_DWIDTH == 32) begin
                  waddr_sc <= (waddr_aligned + number_bytes) >> 2;                  
               end
               waddr_sc_dummy   <= 'h0;
            end
      end // else: !if(ARESETN == 1'b0)
   end // always @ (posedge ACLK or negedge ARESETN)
   
   always @(posedge ACLK or negedge ARESETN) begin
      if(ARESETN == 1'b0) begin
         wrap_waddr_plus   <= 'h0;
      end
      else begin
         if(waddrchset_mc) begin
            wrap_waddr_plus <= wrap_waddr_next + number_bytes;
         end             
         else if(WVALID_slvif && wready_mc) begin
            wrap_waddr_plus <= wrap_waddr_next + number_bytes;            
         end
      end
   end
   
   // Write signals to SRAM
   always @(posedge ACLK or negedge ARESETN) begin
      if(ARESETN == 1'b0) begin
         WDATA_slvif_r   <= 'h0;            
         wen_sc_r        <= 'h0;               
         wbyteen_sc_r    <= 'h0;               
      end
      else begin
         WDATA_slvif_r   <= WDATA_slvif;
         wen_sc_r        <= wen_sc;               
         wbyteen_sc_r    <= wbyteen_sc;
      end
   end

   // wdata_sc
   always @(*) begin
      // 64-bit tansaction on AXI IF is converted into 1, 64-bit transactions on the 
      // SRAM IF to match with the SRAM Fabric memory configuration.
      wdata_sc = wdata_sc_r;                        
      if(WVALID_slvif && wready_mc) begin
         wdata_sc =  WDATA_slvif;
      end
   end

   // ------------------------------------------------------------------- //
   // wena_sc::                                                           //
   // wenb_sc::                                                           //
   // Generate the write enable signals based on sampling the write data. //
   // The write strobe is used to determine the byte enabling of the data //
   // on the SRAM interface.                                              //
   // ------------------------------------------------------------------- //
   always @(*) begin
      // 64-bit tansaction on AXI IF is converted into 1, 64-bit transactions on the 
      // SRAM IF to match with the SRAM Fabric memory configuration.
      // 32-bit tansaction on AXI IF is converted into 1, 32-bit transactions on the 
      // SRAM IF to match with the SRAM Fabric memory configuration.
      if(WVALID_slvif & wready_mc) begin
         wen_sc   <= WVALID_slvif & wready_mc;
         // Generate the byte enables according to the write strobe
         wbyteen_sc  <= WSTRB_slvif;  
      end
      else begin
         wen_sc      <= 1'b0;
         wbyteen_sc  <= 'h0;
      end
   end                 

   always @(posedge ACLK or negedge ARESETN) begin
      if(ARESETN == 1'b0) begin
         waddrchset_mc_r   <= 'h0;
      end
      else begin
         waddrchset_mc_r   <= waddrchset_mc;
      end
   end

   // --------------------------------------------------------------------------
   // Generate the aligned address based on the write size (AWSIZE)
   // --------------------------------------------------------------------------
  always @(posedge ACLK or negedge ARESETN) begin
      if(ARESETN == 1'b0) begin
         waddr_aligned   <= 'h0;      
         aligned_done <= 1'b0;         
      end
      else begin
         if(waddrchset_mc) begin
            waddr_aligned <= waddr_aligned_load;
         end 
         else begin
            waddr_aligned <= (WVALID_slvif && wready_mc)? (waddr_aligned + number_bytes) : waddr_aligned;              
         end
      end
  end // always @ (posedge ACLK or negedge ARESETN)
   
   always @(*) begin
      if(AWVALID) begin
             case(AWSIZE)
              3'b000 : begin
                 waddr_aligned_load = AWADDR;              
                 number_bytes   = 'h1;
              end
              3'b001 : begin
                 waddr_aligned_load = {AWADDR[AXI4_AWIDTH - 1: 1], 1'b0};
                 number_bytes   = 'h2;
              end
              3'b010 : begin
                 waddr_aligned_load = {AWADDR[AXI4_AWIDTH - 1: 2], 2'b00};
                 number_bytes   = 'h4;
              end
              3'b011 : begin
                 waddr_aligned_load = {AWADDR[AXI4_AWIDTH - 1: 3], 3'b000};
                 number_bytes   = 'h8;
              end
              3'b100 : begin
                 waddr_aligned_load = {AWADDR[AXI4_AWIDTH - 1: 4], 4'b0000};
                 number_bytes   = 'h10;
              end
              3'b101 : begin
                 waddr_aligned_load = {AWADDR[AXI4_AWIDTH - 1: 5], 5'b00000};
                 number_bytes   = 'h20;
              end
              3'b110 : begin
                 waddr_aligned_load = {AWADDR[AXI4_AWIDTH - 1: 6], 6'b000000};
                 number_bytes   = 'h40;
              end
              3'b111 : begin
                 waddr_aligned_load = {AWADDR[AXI4_AWIDTH - 1: 7], 7'b0000000};
                 number_bytes   = 'h80;
              end
              default : begin
                 waddr_aligned_load = 'h0;
                 number_bytes   = 'h0;
              end
            endcase // case (AWSIZE)
      end // if (AWVALID && awready_mc)
      else begin
         waddr_aligned_load = waddr_aligned_load_r;
         number_bytes   = number_bytes_r;
      end // else: !if(AWVALID)      
   end // always @ (*)
         

  always @(posedge ACLK or negedge ARESETN) begin
      if(ARESETN == 1'b0) begin
         waddr_aligned_load_r <= 'h0;         
         number_bytes_r <= 'h0;         
      end
      else begin
        waddr_aligned_load_r <= waddr_aligned_load;
        number_bytes_r <= number_bytes;
      end
   end

  always @(posedge ACLK or negedge ARESETN) begin
      if(ARESETN == 1'b0) begin
         wr_wrap_boundary_r <= 1'b0;         
      end
      else begin
        wr_wrap_boundary_r <= wr_wrap_boundary;
      end
   end

   // --------------------------------------------------------------------------
   // Generate the wrap address based on the write size (AWSIZE) and write 
   // length (AWLEN)
   // --------------------------------------------------------------------------
   // Increment the start address using the number bytes for calculation of
   // address.
   always @(*) begin
      wrap_waddr_incr = wrap_waddr_incr_r;
      if(WRAP_SUPPORT) begin
         wrap_waddr_incr = wrap_waddr_incr_r;
         if(set_aligned_done) begin
            wrap_waddr_incr = AWADDR;
         end
         else if(WVALID_slvif && wready_mc) begin  
            wrap_waddr_incr = wrap_waddr_calc + number_bytes;
         end
         else if(wr_wrap_boundary_int && (AWSIZE_slvif == 3'b011 || AWSIZE_slvif == 3'b100 || 
                                          AWSIZE_slvif == 3'b101 || AWSIZE_slvif == 3'b110)) begin  
            wrap_waddr_incr = wrap_waddr_calc;
         end
         else if(wr_curr_state == WR_DATA_ST && sram_xdone_r && (AWSIZE_slvif == 3'b011 || AWSIZE_slvif == 3'b100 || 
                                                                 AWSIZE_slvif == 3'b101 || AWSIZE_slvif == 3'b110)) begin  
            wrap_waddr_incr = wrap_waddr_calc + number_bytes;
         end
      end
   end // always @ (posedge ACLK or negedge ARESETN)
   
   
   // Calculate the next waddr for wrap transactions based 
   // on the write burst length and the write burst type.
   always @(*) begin
      wr_wrap_boundary = 1'b0;
      if(set_aligned_done) begin
         wrap_waddr_next = AWADDR;
      end
      else if(AWBURST_slvif == 2'b10 && AWSIZE_slvif == 3'b110 && WRAP_SUPPORT) begin // For Wrap burst - (512-bit)
         case (AWLEN_slvif)
           8'b0000_0000: begin
              // no wrap
              wrap_waddr_next = wrap_waddr_incr;
           end
           8'b0000_0001: begin
              // Wrap at every two locations
              // Roll-over when the wrap boundary is reached.
              if(AWADDR_slvif[6:0] == 7'b1000000 && waddrchset_mc_r) begin  
                 wrap_waddr_next = {AWADDR_slvif[AXI4_AWIDTH-1:7],7'b0000000};
		         wr_wrap_boundary = 1'b1;
              end
              else if(waddr_sc_dummy[6:0] == 7'b1000000 && WVALID_slvif && wready_mc) begin  
                 wrap_waddr_next = {waddr_sc_dummy[AXI4_AWIDTH-1:7],7'b0000000};
		         wr_wrap_boundary = 1'b1;
              end
              else begin
                 wrap_waddr_next = wrap_waddr_plus;
              end
           end
           8'b0000_0011: begin
              // Wrap at every four locations
              // Roll-over when the wrap boundary is reached.
              if(AWADDR_slvif[7:0] == 8'b11000000 && waddrchset_mc_r) begin  
                 wrap_waddr_next = {AWADDR_slvif[AXI4_AWIDTH-1:8],8'b00000000};
              end
              else if(waddr_sc_dummy [7:0] == 8'b11000000 && WVALID_slvif && wready_mc) begin  
                 wrap_waddr_next = {waddr_sc_dummy[AXI4_AWIDTH-1:8],8'b00000000};
              end
	          else begin
                 wrap_waddr_next = wrap_waddr_plus;
	          end	
           end
           8'b0000_0111: begin
              // Wrap at every eight locations
              // Roll-over when the wrap boundary is reached.
              if(AWADDR_slvif[8:0] == 9'b111000000 && waddrchset_mc_r) begin  
                 wrap_waddr_next = {AWADDR_slvif[AXI4_AWIDTH-1:9],9'b000000000};
		         wr_wrap_boundary = 1'b1;
              end
              else if(waddr_sc_dummy[8:0] == 9'b111000000 && WVALID_slvif && wready_mc) begin  
                 wrap_waddr_next = {waddr_sc_dummy[AXI4_AWIDTH-1:9],9'b000000000};
              end
	          else begin
                 wrap_waddr_next = wrap_waddr_plus;
	          end
           end
           8'b0000_1111: begin
              // Wrap at every 16 locations
              // Roll-over when the wrap boundary is reached.
              if(AWADDR_slvif[9:0] == 10'b1111000000 && waddrchset_mc_r) begin  
                 wrap_waddr_next = {AWADDR_slvif[AXI4_AWIDTH-1:10],10'b0000000000};
		         wr_wrap_boundary = 1'b1;
              end
              //else if(wr_curr_state == WR_DATA_ST && sram_xdone_r) begin
              else if(waddr_sc_dummy[9:0] == 10'b1111000000  && WVALID_slvif && wready_mc) begin
                 wrap_waddr_next = {waddr_sc_dummy[AXI4_AWIDTH-1:10],10'b0000000000};
              end
	          else begin
                 wrap_waddr_next = wrap_waddr_plus;
	          end	
           end
           default: begin
              wrap_waddr_next = wrap_waddr_next_r;
           end   
         endcase
      end
      // ---- (AWSIZE = 6 i.e. 512-bit )
      else if(AWBURST_slvif == 2'b10 && AWSIZE_slvif == 3'b101 && WRAP_SUPPORT) begin // For Wrap burst - (256-bit)
         case (AWLEN_slvif)
           8'b0000_0000: begin
              // no wrap
              wrap_waddr_next = wrap_waddr_incr;
           end
           8'b0000_0001: begin
              // Wrap at every two locations
              // Roll-over when the wrap boundary is reached.
              if(AWADDR_slvif[5:0] == 6'b100000 && waddrchset_mc_r) begin  
                 wrap_waddr_next = {AWADDR_slvif[AXI4_AWIDTH-1:6],6'b000000};
		         wr_wrap_boundary = 1'b1;
              end
              else if(waddr_sc_dummy[5:0] == 6'b100000 && WVALID_slvif && wready_mc) begin  
                 wrap_waddr_next = {waddr_sc_dummy[AXI4_AWIDTH-1:6],6'b000000};
		         wr_wrap_boundary = 1'b1;
              end
              else begin
                 wrap_waddr_next = wrap_waddr_plus;
              end
           end
           8'b0000_0011: begin
              // Wrap at every four locations
              // Roll-over when the wrap boundary is reached.
              if(AWADDR_slvif[6:0] == 7'b1100000 && waddrchset_mc_r) begin  
                 wrap_waddr_next = {AWADDR_slvif[AXI4_AWIDTH-1:7],7'b0000000};
              end
              else if(waddr_sc_dummy [6:0] == 7'b1100000 && WVALID_slvif && wready_mc) begin  
                 wrap_waddr_next = {waddr_sc_dummy[AXI4_AWIDTH-1:7],7'b0000000};
              end
	          else begin
                 wrap_waddr_next = wrap_waddr_plus;
	          end	
           end
           8'b0000_0111: begin
              // Wrap at every eight locations
              // Roll-over when the wrap boundary is reached.
              if(AWADDR_slvif[7:0] == 8'b11100000 && waddrchset_mc_r) begin  
                 wrap_waddr_next = {AWADDR_slvif[AXI4_AWIDTH-1:8],8'b00000000};
		         wr_wrap_boundary = 1'b1;
              end
              else if(waddr_sc_dummy[7:0] == 8'b11100000 && WVALID_slvif && wready_mc) begin  
                 wrap_waddr_next = {waddr_sc_dummy[AXI4_AWIDTH-1:8],8'b00000000};
              end
	          else begin
                 wrap_waddr_next = wrap_waddr_plus;
	          end
           end
           8'b0000_1111: begin
              // Wrap at every 16 locations
              // Roll-over when the wrap boundary is reached.
              if(AWADDR_slvif[8:0] == 9'b111100000 && waddrchset_mc_r) begin  
                 wrap_waddr_next = {AWADDR_slvif[AXI4_AWIDTH-1:9],9'b000000000};
		         wr_wrap_boundary = 1'b1;
              end
              //else if(wr_curr_state == WR_DATA_ST && sram_xdone_r) begin
              else if(waddr_sc_dummy[8:0] == 9'b111100000  && WVALID_slvif && wready_mc) begin
                 wrap_waddr_next = {waddr_sc_dummy[AXI4_AWIDTH-1:9],9'b000000000};
              end
	          else begin
                 wrap_waddr_next = wrap_waddr_plus;
	          end	
           end
           default: begin
              wrap_waddr_next = wrap_waddr_next_r;
           end   
         endcase
      end
      // ---- (AWSIZE = 5 i.e. 256-bit )
      else if(AWBURST_slvif == 2'b10 && AWSIZE_slvif == 3'b100 && WRAP_SUPPORT) begin // For Wrap burst - (128-bit)
         case (AWLEN_slvif)
           8'b0000_0000: begin
              // no wrap
              wrap_waddr_next = wrap_waddr_incr;
           end
           8'b0000_0001: begin
              // Wrap at every two locations
              // Roll-over when the wrap boundary is reached.
              if(AWADDR_slvif[4:0] == 5'b10000 && waddrchset_mc_r) begin  
                 wrap_waddr_next = {AWADDR_slvif[AXI4_AWIDTH-1:5],5'b00000};
		         wr_wrap_boundary = 1'b1;
              end
              else if(waddr_sc_dummy[4:0] == 5'b10000 && WVALID_slvif && wready_mc) begin  
                 wrap_waddr_next = {waddr_sc_dummy[AXI4_AWIDTH-1:5],5'b00000};
		         wr_wrap_boundary = 1'b1;
              end
              else begin
                 wrap_waddr_next = wrap_waddr_plus;
              end
           end
           8'b0000_0011: begin
              // Wrap at every four locations
              // Roll-over when the wrap boundary is reached.
              if(AWADDR_slvif[5:0] == 6'b110000 && waddrchset_mc_r) begin  
                 wrap_waddr_next = {AWADDR_slvif[AXI4_AWIDTH-1:6],6'b000000};
              end
              else if(waddr_sc_dummy [5:0] == 6'b110000 && WVALID_slvif && wready_mc) begin  
                 wrap_waddr_next = {waddr_sc_dummy[AXI4_AWIDTH-1:6],6'b000000};
              end
	          else begin
                 wrap_waddr_next = wrap_waddr_plus;
	          end	
           end
           8'b0000_0111: begin
              // Wrap at every eight locations
              // Roll-over when the wrap boundary is reached.
              if(AWADDR_slvif[6:0] == 7'b1110000 && waddrchset_mc_r) begin  
                 wrap_waddr_next = {AWADDR_slvif[AXI4_AWIDTH-1:7],7'b0000000};
		         wr_wrap_boundary = 1'b1;
              end
              else if(waddr_sc_dummy[6:0] == 7'b1110000 && WVALID_slvif && wready_mc) begin  
                 wrap_waddr_next = {waddr_sc_dummy[AXI4_AWIDTH-1:7],7'b0000000};
              end
	          else begin
                 wrap_waddr_next = wrap_waddr_plus;
	          end
           end
           8'b0000_1111: begin
              // Wrap at every 16 locations
              // Roll-over when the wrap boundary is reached.
              if(AWADDR_slvif[7:0] == 8'b11110000 && waddrchset_mc_r) begin  
                 wrap_waddr_next = {AWADDR_slvif[AXI4_AWIDTH-1:8],8'b00000000};
		         wr_wrap_boundary = 1'b1;
              end
              //else if(wr_curr_state == WR_DATA_ST && sram_xdone_r) begin
              else if(waddr_sc_dummy[7:0] == 8'b11110000  && WVALID_slvif && wready_mc) begin
                 wrap_waddr_next = {waddr_sc_dummy[AXI4_AWIDTH-1:8],8'b00000000};
              end
	          else begin
                 wrap_waddr_next = wrap_waddr_plus;
	          end	
           end
           default: begin
              wrap_waddr_next = wrap_waddr_next_r;
           end   
         endcase
      end
      // ---- (AWSIZE = 4 i.e. 128-bit )
      else if(AWBURST_slvif == 2'b10 && AWSIZE_slvif == 3'b011 && WRAP_SUPPORT) begin // For Wrap burst
         case (AWLEN_slvif)
           8'b0000_0000: begin
              // no wrap
              wrap_waddr_next = wrap_waddr_incr;
           end
           8'b0000_0001: begin
              // Wrap at every two locations
              // Roll-over when the wrap boundary is reached.
              if(AWADDR_slvif[3:0] == 4'b1000 && waddrchset_mc_r) begin  
                 wrap_waddr_next = {AWADDR_slvif[AXI4_AWIDTH-1:4],4'b0000};
		         wr_wrap_boundary = 1'b1;
              end
              else if(waddr_sc_dummy[3:0] == 4'b1000 && WVALID_slvif && wready_mc) begin  
                 wrap_waddr_next = {waddr_sc_dummy[AXI4_AWIDTH-1:4],4'b0000};
		         wr_wrap_boundary = 1'b1;
              end
              else begin
                 wrap_waddr_next = wrap_waddr_plus;
              end
           end
           8'b0000_0011: begin
              // Wrap at every four locations
              // Roll-over when the wrap boundary is reached.
              if(AWADDR_slvif[4:0] == 5'b11000 && waddrchset_mc_r) begin  
                 wrap_waddr_next = {AWADDR_slvif[AXI4_AWIDTH-1:5],5'b00000};
              end
              else if(waddr_sc_dummy[4:0] == 5'b11000 && WVALID_slvif && wready_mc) begin  
                 wrap_waddr_next = {waddr_sc_dummy[AXI4_AWIDTH-1:5],5'b00000};
              end
	          else begin
                 wrap_waddr_next = wrap_waddr_plus;
	          end	
           end
           8'b0000_0111: begin
              // Wrap at every eight locations
              // Roll-over when the wrap boundary is reached.
              if(AWADDR_slvif[5:0] == 6'b111000 && waddrchset_mc_r) begin  
                 wrap_waddr_next = {AWADDR_slvif[AXI4_AWIDTH-1:6],6'b000000};
		         wr_wrap_boundary = 1'b1;
              end
              else if(waddr_sc_dummy[5:0] == 6'b111000 && WVALID_slvif && wready_mc) begin  
                 wrap_waddr_next = {waddr_sc_dummy[AXI4_AWIDTH-1:6],6'b000000};
              end
	          else begin
                 wrap_waddr_next = wrap_waddr_plus;
	          end
           end
           8'b0000_1111: begin
              // Wrap at every 16 locations
              // Roll-over when the wrap boundary is reached.
              if(AWADDR_slvif[6:0] == 7'b1111000 && waddrchset_mc_r) begin  
                 wrap_waddr_next = {AWADDR_slvif[AXI4_AWIDTH-1:7],7'b0000000};
		         wr_wrap_boundary = 1'b1;
              end
              //else if(wr_curr_state == WR_DATA_ST && sram_xdone_r) begin
              else if(waddr_sc_dummy[6:0] == 7'b1111000  && WVALID_slvif && wready_mc) begin
                 wrap_waddr_next = {waddr_sc_dummy[AXI4_AWIDTH-1:7],7'b0000000};
              end
	          else begin
                 wrap_waddr_next = wrap_waddr_plus;
	          end	
           end
           default: begin
              wrap_waddr_next = wrap_waddr_next_r;
           end   
         endcase
      end
      // The wrap boundary for Size - Word/Halfword and Byte is defined in the
      // if-else conditions
      else if(AWBURST_slvif == 2'b10 && (AWSIZE_slvif == 3'b010) && WRAP_SUPPORT) begin // For Wrap burst 
         case (AWLEN_slvif)
           8'b0000_0000: begin
              // no wrap
              wrap_waddr_next = wrap_waddr_incr;
           end
           8'b0000_0001: begin
              // Wrap at every two locations
              // Roll-over when the wrap boundary is reached.
              if(AWADDR_slvif[2:0] == 3'b100 && waddrchset_mc_r) begin  
                 wrap_waddr_next = {AWADDR_slvif[AXI4_AWIDTH-1:3],3'b000};
		         wr_wrap_boundary = 1'b1;
              end 
              else if(waddr_sc_dummy[2:0] == 3'b100 && WVALID_slvif && wready_mc) begin  
                 wrap_waddr_next = {waddr_sc_dummy[AXI4_AWIDTH-1:3],3'b000};
              end
	          else begin
                 wrap_waddr_next = wrap_waddr_plus;
	          end	
           end
           8'b0000_0011: begin
              // Wrap at every four locations
              // Roll-over when the wrap boundary is reached.
              if(AWADDR_slvif[3:0] == 4'b1100  && waddrchset_mc_r) begin  
                 wrap_waddr_next = {AWADDR_slvif[AXI4_AWIDTH-1:4],4'b0000};
		         wr_wrap_boundary = 1'b1;
              end
              else if(waddr_sc_dummy[3:0] == 4'b1100  && WVALID_slvif && wready_mc) begin    
                 wrap_waddr_next = {waddr_sc_dummy[AXI4_AWIDTH-1:4],4'b0000};
              end
	          else begin
                 wrap_waddr_next = wrap_waddr_plus;
	          end
           end
           8'b0000_0111: begin
              // Wrap at every eight locations
              // Roll-over when the wrap boundary is reached.
              if(AWADDR_slvif[4:0] == 5'b11100 && waddrchset_mc_r) begin  
                 wrap_waddr_next = {AWADDR_slvif[AXI4_AWIDTH-1:5],5'b00000};
		         wr_wrap_boundary = 1'b1;
              end
              else if(waddr_sc_dummy[4:0] == 5'b11100 && WVALID_slvif && wready_mc) begin  
                 wrap_waddr_next = {waddr_sc_dummy[AXI4_AWIDTH-1:5],5'b00000};
              end
	          else begin
                 wrap_waddr_next = wrap_waddr_plus;
	          end	
           end
           8'b0000_1111: begin
              // Wrap at every 16 locations
              // Roll-over when the wrap boundary is reached.
              if(AWADDR_slvif[5:0] == 6'b111100 && waddrchset_mc_r) begin  
                 wrap_waddr_next = {AWADDR_slvif[AXI4_AWIDTH-1:6],6'b000000};
		         wr_wrap_boundary = 1'b1;
              end
              else if(waddr_sc_dummy[5:0] == 6'b111100 && WVALID_slvif && wready_mc) begin  
                 wrap_waddr_next = {waddr_sc_dummy[AXI4_AWIDTH-1:6],6'b000000};
              end
	          else begin
                 wrap_waddr_next = wrap_waddr_plus;
	          end	
           end
           default: begin
              wrap_waddr_next = wrap_waddr_next_r;
           end   
         endcase
      end
      else if(AWBURST_slvif == 2'b10 && (AWSIZE_slvif == 3'b001) && WRAP_SUPPORT) begin // For Wrap burst
         case (AWLEN_slvif)
           8'b0000_0000: begin
              // no wrap
              wrap_waddr_next = wrap_waddr_incr;
           end
           8'b0000_0001: begin
              // Wrap at every two locations
              // Roll-over when the wrap boundary is reached.
              if(AWADDR_slvif[1:0] == 2'b10 && waddrchset_mc_r) begin  
                 wrap_waddr_next = {AWADDR_slvif[AXI4_AWIDTH-1:2],2'b00};
		         wr_wrap_boundary = 1'b1;
              end
              else if(waddr_sc_dummy[1:0] == 2'b10 && WVALID_slvif && wready_mc) begin  
                 wrap_waddr_next = {waddr_sc_dummy[AXI4_AWIDTH-1:2],2'b00};
              end
	          else begin
                 wrap_waddr_next = wrap_waddr_plus;
	          end	
           end
           8'b0000_0011: begin
              // Wrap at every four locations
              // Roll-over when the wrap boundary is reached.
              if(AWADDR_slvif[2:0] == 3'b110  && waddrchset_mc_r) begin  
                 wrap_waddr_next = {AWADDR_slvif[AXI4_AWIDTH-1:3],3'b000};
		         wr_wrap_boundary = 1'b1;
              end
              else if(waddr_sc_dummy[2:0] == 3'b110 && WVALID_slvif && wready_mc) begin   
                 wrap_waddr_next = {waddr_sc_dummy[AXI4_AWIDTH-1:3],3'b000};
              end
	          else begin
                 wrap_waddr_next = wrap_waddr_plus;
	          end	
           end
           8'b0000_0111: begin
              // Wrap at every eight locations
              // Roll-over when the wrap boundary is reached.
              if(AWADDR_slvif[3:0] == 4'b1110 && waddrchset_mc_r) begin  
                 wrap_waddr_next = {AWADDR_slvif[AXI4_AWIDTH-1:4],4'b0000};
		         wr_wrap_boundary = 1'b1;
              end
              else if(waddr_sc_dummy[3:0] == 4'b1110 && WVALID_slvif && wready_mc) begin 
                 wrap_waddr_next = {waddr_sc_dummy[AXI4_AWIDTH-1:4],4'b0000};
              end
	          else begin
                 wrap_waddr_next = wrap_waddr_plus;
	          end	
           end
           8'b0000_1111: begin
              // Wrap at every 16 locations
              // Roll-over when the wrap boundary is reached.
              if(AWADDR_slvif[4:0] == 5'b11110 && waddrchset_mc_r) begin  
                 wrap_waddr_next = {AWADDR_slvif[AXI4_AWIDTH-1:5],5'b00000};
		         wr_wrap_boundary = 1'b1;
              end
              else if(waddr_sc_dummy[4:0] == 5'b11110 && WVALID_slvif && wready_mc) begin   
                 wrap_waddr_next = {waddr_sc_dummy[AXI4_AWIDTH-1:5],5'b00000};
              end
	          else begin
                 wrap_waddr_next = wrap_waddr_plus;
	          end	
           end
           default: begin
              wrap_waddr_next = wrap_waddr_next_r;
           end   
         endcase
      end
      else if(AWBURST_slvif == 2'b10 && (AWSIZE_slvif == 3'b000) && WRAP_SUPPORT) begin // For Wrap burst
         case (AWLEN_slvif)
           8'b0000_0000: begin
              // no wrap
              wrap_waddr_next = wrap_waddr_incr;
           end
           8'b0000_0001: begin
              // Wrap at every two locations
              // Roll-over when the wrap boundary is reached.
              if(AWADDR_slvif[0] == 1'b1 && waddrchset_mc_r) begin  
                 wrap_waddr_next = {AWADDR_slvif[AXI4_AWIDTH-1:1],1'b0};
		         wr_wrap_boundary = 1'b1;
              end
              else if(waddr_sc_dummy[0] == 1'b1 && WVALID_slvif && wready_mc) begin  
                 wrap_waddr_next = {waddr_sc_dummy[AXI4_AWIDTH-1:1],1'b0};
              end
	          else begin
                 wrap_waddr_next = wrap_waddr_plus;
	          end	
           end
           8'b0000_0011: begin
              // Wrap at every four locations
              // Roll-over when the wrap boundary is reached.
              if(AWADDR_slvif[1:0] == 2'b11 && waddrchset_mc_r) begin  
                 wrap_waddr_next = {AWADDR_slvif[AXI4_AWIDTH-1:2],2'b00};
		         wr_wrap_boundary = 1'b1;
              end
              else if(waddr_sc_dummy[1:0] == 2'b11 && WVALID_slvif && wready_mc) begin   
                 wrap_waddr_next = {waddr_sc_dummy[AXI4_AWIDTH-1:2],2'b00};
              end
	          else begin
                 wrap_waddr_next = wrap_waddr_plus;
	          end	
           end
           8'b0000_0111: begin
              // Wrap at every eight locations
              // Roll-over when the wrap boundary is reached.
              if(AWADDR_slvif[2:0] == 3'b111 && waddrchset_mc_r) begin  
                 wrap_waddr_next = {AWADDR_slvif[AXI4_AWIDTH-1:3],3'b000};
		         wr_wrap_boundary = 1'b1;
              end
              else if(waddr_sc_dummy[2:0] == 3'b111 && WVALID_slvif && wready_mc) begin  
                 wrap_waddr_next = {waddr_sc_dummy[AXI4_AWIDTH-1:3],3'b000};
              end
	          else begin
                 wrap_waddr_next = wrap_waddr_plus;
	          end	
           end
           8'b0000_1111: begin
              // Wrap at every 16 locations
              // Roll-over when the wrap boundary is reached.
              if(AWADDR_slvif[3:0] == 4'b1111 && waddrchset_mc_r) begin  
                 wrap_waddr_next = {AWADDR_slvif[AXI4_AWIDTH-1:4],4'b0000};
		         wr_wrap_boundary = 1'b1;
              end
              else if(waddr_sc_dummy[3:0] == 4'b1111) begin   
                 wrap_waddr_next = {waddr_sc_dummy[AXI4_AWIDTH-1:4],4'b0000};
              end
	          else begin
                 wrap_waddr_next = wrap_waddr_plus;
	          end	
           end
           default: begin
              wrap_waddr_next = wrap_raddr_next_r;
           end   
         endcase
      end
      else begin
         wrap_waddr_next = 'h0;
      end
   end

   // Register the next wrap address on every sample of 
   // WVALID_slvif & wready_mc.
   always @(posedge ACLK or negedge ARESETN) begin
      if(ARESETN == 1'b0) begin
         wrap_waddr_calc   <= 'h0;
      end
      else begin
         if(WRAP_SUPPORT) begin  // For burst type = WRAP
            if(wr_curr_state == WR_RESP_ST) begin
               wrap_waddr_calc   <= 'h0;
            end
	        else if(set_aligned_done) begin
               wrap_waddr_calc   <= wrap_waddr_incr; 
            end
	        else begin
               wrap_waddr_calc   <= wrap_waddr_next;
            end
         end
      end
   end

   // Register the next wrap address on every sample of 
   // WVALID_slvif & wready_mc.
   always @(*) begin 
      wrap_waddr = 'h0; 
      
      if(WRAP_SUPPORT && AWBURST_slvif == 2'b10) begin  // For burst type = WRAP
         wrap_waddr   = wrap_waddr_calc;
      end
   end

   always @(posedge ACLK or negedge ARESETN) begin
      if(ARESETN == 1'b0) begin
         wrap_waddr_incr_r   <= 'h0;
         wrap_waddr_next_r   <= 'h0;
         wrap_raddr_next_r   <= 'h0;
         set_aligned_done_r  <= 'h0;
      end
      else begin
         wrap_waddr_incr_r  <= wrap_waddr_incr;         
         wrap_waddr_next_r  <= wrap_waddr_next;         
         wrap_raddr_next_r  <= wrap_raddr_next;         
         set_aligned_done_r <= set_aligned_done;         
      end
   end

   // Registered version
   always @(posedge ACLK or negedge ARESETN) begin
      if(ARESETN == 1'b0) begin
         AWLEN_slvif_r   <= 'h0;
      end
      else begin
         if(set_aligned_done == 1'b1) begin
           AWLEN_slvif_r <= AWLEN_slvif;
         end
      end
   end

   // --------------------------------------------------------------------------
   // Generate the wrap address based on the write size (AWSIZE) and write 
   // length (AWLEN)
   // --------------------------------------------------------------------------

   // Increment the start address using the number bytes for calculation of
   // address.
   generate
      if(HIGH_PERF == 1'b1) begin // 30 Jan - Perf for Read
         always @(posedge ACLK or negedge ARESETN) begin
            if(ARESETN == 1'b0) begin
               wrap_raddr_incr   <= 'h0;
            end
            else begin         
               if(WRAP_SUPPORT) begin
                  if(ARVALID && arready_mc) begin
                     wrap_raddr_incr <= ARADDR + rd_number_bytes;
                  end
                  else if(rd_curr_state == RD_DATA0_ST && ren_sc) begin
                     wrap_raddr_incr <= wrap_raddr_next + rd_number_bytes;
                  end
                  else if(rd_curr_state == RD_DATA_ST && ren_sc) begin 
                     wrap_raddr_incr <= wrap_raddr_next + rd_number_bytes;
                  end
               end
            end // else: !if(ARESETN == 1'b0)
         end // always @ (posedge ACLK or negedge ARESETN)
      end
   endgenerate   
         
   
   // Calculate the next waddr for wrap transactions based 
   // on the write burst length and the write burst type.
   always @(*) begin
      if(rd_curr_state == RD_ADRLAT_ST) begin
         wrap_raddr_next = ARADDR;
      end
      else if(ARBURST_slvif == 2'b10  && ARSIZE_slvif == 3'b110 && WRAP_SUPPORT) begin // For Wrap burst  // 512-bit
         case (ARLEN_slvif)
           8'b0000_0000: begin
              // no wrap
              wrap_raddr_next = wrap_raddr_incr;
           end
           8'b0000_0001: begin
              // Wrap at every two locations
              // Roll-over when the wrap boundary is reached.
              if(ARADDR_slvif[6:0] == 7'b1000000 && set_rdaligned_done) begin
                 wrap_raddr_next = {ARADDR_slvif[AXI4_AWIDTH-1:7],7'b0000000};
              end
              else if(raddr_sc_dummy[6:0] == 7'b1000000 && ren_sc) begin
                 wrap_raddr_next = {raddr_sc_dummy[AXI4_AWIDTH-1:7],7'b0000000};
              end
              else begin
                 wrap_raddr_next = wrap_raddr_plus;
              end
           end
           8'b0000_0011: begin
              // Wrap at every four locations
              // Roll-over when the wrap boundary is reached.
              if(ARADDR_slvif[7:0] == 8'b11000000 && set_rdaligned_done) begin
                 wrap_raddr_next = {ARADDR_slvif[AXI4_AWIDTH-1:8],8'b00000000};
              end
              else if(raddr_sc_dummy[7:0] == 8'b11000000 && ren_sc) begin
                 wrap_raddr_next = {raddr_sc_dummy[AXI4_AWIDTH-1:8],8'b00000000};
              end
              else begin
                 wrap_raddr_next = wrap_raddr_plus;     
              end
           end
           8'b0000_0111: begin
              // Wrap at every eight locations
              // Roll-over when the wrap boundary is reached.
              if(ARADDR_slvif[8:0] == 9'b111000000 && set_rdaligned_done) begin
                 wrap_raddr_next = {ARADDR_slvif[AXI4_AWIDTH-1:9],9'b000000000};
              end
              else if(raddr_sc_dummy[8:0] == 9'b111000000 && ren_sc) begin
                 wrap_raddr_next = {raddr_sc_dummy[AXI4_AWIDTH-1:9],9'b000000000};
              end
              else begin
                 wrap_raddr_next = wrap_raddr_plus;
              end
           end
           8'b0000_1111: begin
              // Wrap at every 16 locations
              // Roll-over when the wrap boundary is reached.
              if(ARADDR_slvif[9:0] == 10'b1111000000 && set_rdaligned_done) begin
                 wrap_raddr_next = {ARADDR_slvif[AXI4_AWIDTH-1:10],10'b0000000000};
              end
              else if(raddr_sc_dummy[9:0] == 10'b1111000000 && ren_sc) begin
                 wrap_raddr_next = {raddr_sc_dummy[AXI4_AWIDTH-1:10],10'b0000000000};
              end
              else begin
                 wrap_raddr_next = wrap_raddr_plus;
              end
           end
           default: begin
              wrap_raddr_next = wrap_raddr_next_r;
           end   
         endcase
      end
      // ---- (ARSIZE = 6 i.e. 512-bit)
      else if(ARBURST_slvif == 2'b10  && ARSIZE_slvif == 3'b101 && WRAP_SUPPORT) begin // For Wrap burst  // 256-bit
         case (ARLEN_slvif)
           8'b0000_0000: begin
              // no wrap
              wrap_raddr_next = wrap_raddr_incr;
           end
           8'b0000_0001: begin
              // Wrap at every two locations
              // Roll-over when the wrap boundary is reached.
              if(ARADDR_slvif[5:0] == 6'b100000 && set_rdaligned_done) begin
                 wrap_raddr_next = {ARADDR_slvif[AXI4_AWIDTH-1:6],6'b000000};
              end
              else if(raddr_sc_dummy[5:0] == 6'b100000 && ren_sc) begin
                 wrap_raddr_next = {raddr_sc_dummy[AXI4_AWIDTH-1:6],6'b000000};
              end
              else begin
                 wrap_raddr_next = wrap_raddr_plus;
              end
           end
           8'b0000_0011: begin
              // Wrap at every four locations
              // Roll-over when the wrap boundary is reached.
              if(ARADDR_slvif[6:0] == 7'b1100000 && set_rdaligned_done) begin
                 wrap_raddr_next = {ARADDR_slvif[AXI4_AWIDTH-1:7],7'b0000000};
              end
              else if(raddr_sc_dummy[6:0] == 7'b1100000 && ren_sc) begin
                 wrap_raddr_next = {raddr_sc_dummy[AXI4_AWIDTH-1:7],7'b0000000};
              end
              else begin
                 wrap_raddr_next = wrap_raddr_plus;     
              end
           end
           8'b0000_0111: begin
              // Wrap at every eight locations
              // Roll-over when the wrap boundary is reached.
              if(ARADDR_slvif[7:0] == 8'b11100000 && set_rdaligned_done) begin
                 wrap_raddr_next = {ARADDR_slvif[AXI4_AWIDTH-1:8],8'b00000000};
              end
              else if(raddr_sc_dummy[7:0] == 8'b11100000 && ren_sc) begin
                 wrap_raddr_next = {raddr_sc_dummy[AXI4_AWIDTH-1:8],8'b00000000};
              end
              else begin
                 wrap_raddr_next = wrap_raddr_plus;
              end
           end
           8'b0000_1111: begin
              // Wrap at every 16 locations
              // Roll-over when the wrap boundary is reached.
              if(ARADDR_slvif[8:0] == 9'b111100000 && set_rdaligned_done) begin
                 wrap_raddr_next = {ARADDR_slvif[AXI4_AWIDTH-1:9],9'b000000000};
              end
              else if(raddr_sc_dummy[8:0] == 9'b111100000 && ren_sc) begin
                 wrap_raddr_next = {raddr_sc_dummy[AXI4_AWIDTH-1:9],9'b000000000};
              end
              else begin
                 wrap_raddr_next = wrap_raddr_plus;
              end
           end
           default: begin
              wrap_raddr_next = wrap_raddr_next_r;
           end   
         endcase
      end
      // ---- (ARSIZE = 5 i.e. 256-bit)
      else if(ARBURST_slvif == 2'b10  && ARSIZE_slvif == 3'b100 && WRAP_SUPPORT) begin // For Wrap burst
         case (ARLEN_slvif)
           8'b0000_0000: begin
              // no wrap
              wrap_raddr_next = wrap_raddr_incr;
           end
           8'b0000_0001: begin
              // Wrap at every two locations
              // Roll-over when the wrap boundary is reached.
              if(ARADDR_slvif[4:0] == 5'b10000 && set_rdaligned_done) begin
                 wrap_raddr_next = {ARADDR_slvif[AXI4_AWIDTH-1:5],5'b00000};
              end
              else if(raddr_sc_dummy[4:0] == 5'b10000 && ren_sc) begin
                 wrap_raddr_next = {raddr_sc_dummy[AXI4_AWIDTH-1:5],5'b00000};
              end
              else begin
                 wrap_raddr_next = wrap_raddr_plus;
              end
           end
           8'b0000_0011: begin
              // Wrap at every four locations
              // Roll-over when the wrap boundary is reached.
              if(ARADDR_slvif[5:0] == 6'b110000 && set_rdaligned_done) begin
                 wrap_raddr_next = {ARADDR_slvif[AXI4_AWIDTH-1:6],6'b000000};
              end
              else if(raddr_sc_dummy[5:0] == 6'b110000 && ren_sc) begin
                 wrap_raddr_next = {raddr_sc_dummy[AXI4_AWIDTH-1:6],6'b000000};
              end
              else begin
                 wrap_raddr_next = wrap_raddr_plus;     
              end
           end
           8'b0000_0111: begin
              // Wrap at every eight locations
              // Roll-over when the wrap boundary is reached.
              if(ARADDR_slvif[6:0] == 7'b1110000 && set_rdaligned_done) begin
                 wrap_raddr_next = {ARADDR_slvif[AXI4_AWIDTH-1:7],7'b0000000};
              end
              else if(raddr_sc_dummy[6:0] == 7'b1110000 && ren_sc) begin
                 wrap_raddr_next = {raddr_sc_dummy[AXI4_AWIDTH-1:7],7'b0000000};
              end
              else begin
                 wrap_raddr_next = wrap_raddr_plus;
              end
           end
           8'b0000_1111: begin
              // Wrap at every 16 locations
              // Roll-over when the wrap boundary is reached.
              if(ARADDR_slvif[7:0] == 8'b11110000 && set_rdaligned_done) begin
                 wrap_raddr_next = {ARADDR_slvif[AXI4_AWIDTH-1:8],8'b00000000};
              end
              else if(raddr_sc_dummy[7:0] == 8'b11110000 && ren_sc) begin
                 wrap_raddr_next = {raddr_sc_dummy[AXI4_AWIDTH-1:8],8'b00000000};
              end
              else begin
                 wrap_raddr_next = wrap_raddr_plus;
              end
           end
           default: begin
              wrap_raddr_next = wrap_raddr_next_r;
           end   
         endcase
      end
      // ---- (ARSIZE = 4 i.e. 128-bit)
      else if(ARBURST_slvif == 2'b10  && ARSIZE_slvif == 3'b011 && WRAP_SUPPORT) begin // For Wrap burst
         case (ARLEN_slvif)
           8'b0000_0000: begin
              // no wrap
              wrap_raddr_next = wrap_raddr_incr;
           end
           8'b0000_0001: begin
              // Wrap at every two locations
              // Roll-over when the wrap boundary is reached.
              if(ARADDR_slvif[3:0] == 4'b1000 && set_rdaligned_done) begin
                 wrap_raddr_next = {ARADDR_slvif[AXI4_AWIDTH-1:4],4'b0000};
              end
              else if(raddr_sc_dummy[3:0] == 4'b1000 && ren_sc) begin
                 wrap_raddr_next = {raddr_sc_dummy[AXI4_AWIDTH-1:4],4'b0000};
              end
              else begin
                 wrap_raddr_next = wrap_raddr_plus;
              end
           end
           8'b0000_0011: begin
              // Wrap at every four locations
              // Roll-over when the wrap boundary is reached.
              if(ARADDR_slvif[4:0] == 5'b11000 && set_rdaligned_done) begin
                 wrap_raddr_next = {ARADDR_slvif[AXI4_AWIDTH-1:5],5'b00000};
              end
              else if(raddr_sc_dummy[4:0] == 5'b11000 && ren_sc) begin
                 wrap_raddr_next = {raddr_sc_dummy[AXI4_AWIDTH-1:5],5'b00000};
              end
              else begin
                 wrap_raddr_next = wrap_raddr_plus;     
              end
           end
           8'b0000_0111: begin
              // Wrap at every eight locations
              // Roll-over when the wrap boundary is reached.
              if(ARADDR_slvif[5:0] == 6'b111000 && set_rdaligned_done) begin
                 wrap_raddr_next = {ARADDR_slvif[AXI4_AWIDTH-1:6],6'b000000};
              end
              else if(raddr_sc_dummy[5:0] == 6'b111000 && ren_sc) begin
                 wrap_raddr_next = {raddr_sc_dummy[AXI4_AWIDTH-1:6],6'b000000};
              end
              else begin
                 wrap_raddr_next = wrap_raddr_plus;
              end
           end
           8'b0000_1111: begin
              // Wrap at every 16 locations
              // Roll-over when the wrap boundary is reached.
              if(ARADDR_slvif[6:0] == 7'b1111000 && set_rdaligned_done) begin
                 wrap_raddr_next = {ARADDR_slvif[AXI4_AWIDTH-1:7],7'b0000000};
              end
              else if(raddr_sc_dummy[6:0] == 7'b1111000 && ren_sc) begin
                 wrap_raddr_next = {raddr_sc_dummy[AXI4_AWIDTH-1:7],7'b0000000};
              end
              else begin
                 wrap_raddr_next = wrap_raddr_plus;
              end
           end
           default: begin
              wrap_raddr_next = wrap_raddr_next_r;
           end   
         endcase
      end
      // The wrap boundary for Size - Word/Halfword and Byte is defined in the
      // if-else conditions
      else if(ARBURST_slvif == 2'b10  && (ARSIZE_slvif == 3'b010) && WRAP_SUPPORT) begin // For Wrap burst
         case (ARLEN_slvif)
           8'b0000_0000: begin
              // no wrap
              wrap_raddr_next = wrap_raddr_incr;
           end
           8'b0000_0001: begin
              // Wrap at every two locations
              // Roll-over when the wrap boundary is reached.
              if(ARADDR_slvif[2:0] == 3'b100 && set_rdaligned_done) begin
                 wrap_raddr_next = {ARADDR_slvif[AXI4_AWIDTH-1:3],3'b000};
              end
              else if(raddr_sc_dummy[2:0] == 3'b100 && ren_sc) begin
                 wrap_raddr_next = {wrap_raddr[AXI4_AWIDTH-1:3],3'b000};
              end
              else begin
                 wrap_raddr_next = wrap_raddr_plus;
              end
           end
           8'b0000_0011: begin
              // Wrap at every four locations
              // Roll-over when the wrap boundary is reached.
              if(ARADDR_slvif[3:0] == 4'b1100 && set_rdaligned_done) begin
                 wrap_raddr_next = {ARADDR_slvif[AXI4_AWIDTH-1:4],4'b0000};
              end
              else if(raddr_sc_dummy[3:0] == 4'b1100 && ren_sc) begin
                 wrap_raddr_next = {raddr_sc_dummy[AXI4_AWIDTH-1:4],4'b0000};
              end
              else begin
                 wrap_raddr_next = wrap_raddr_plus;     
              end
           end
           8'b0000_0111: begin
              // Wrap at every eight locations
              // Roll-over when the wrap boundary is reached.
              if(ARADDR_slvif[4:0] == 5'b11100 && set_rdaligned_done) begin
                 wrap_raddr_next = {ARADDR_slvif[AXI4_AWIDTH-1:5],5'b00000};
              end
              else if(raddr_sc_dummy[4:0] == 5'b11100 && ren_sc) begin
                 wrap_raddr_next = {raddr_sc_dummy[AXI4_AWIDTH-1:5],5'b00000};
              end
              else begin
                 wrap_raddr_next = wrap_raddr_plus;
              end
           end
           8'b0000_1111: begin
              // Wrap at every 16 locations
              // Roll-over when the wrap boundary is reached.
              if(ARADDR_slvif[5:0] == 6'b111100 && set_rdaligned_done) begin
                 wrap_raddr_next = {ARADDR_slvif[AXI4_AWIDTH-1:6],6'b000000};
              end
              else if(raddr_sc_dummy[5:0] == 6'b111100 && ren_sc) begin
                 wrap_raddr_next = {raddr_sc_dummy[AXI4_AWIDTH-1:6],6'b000000};
              end
              else begin
                 wrap_raddr_next = wrap_raddr_plus;
              end
           end
           default: begin
              wrap_raddr_next = wrap_raddr_next_r;
           end   
         endcase
      end
      else if(ARBURST_slvif == 2'b10  && (ARSIZE_slvif == 3'b001) && WRAP_SUPPORT) begin // For Wrap burst
         case (ARLEN_slvif)
           8'b0000_0000: begin
              // no wrap
              wrap_raddr_next = wrap_raddr_incr;
           end
           8'b0000_0001: begin
              // Wrap at every two locations
              // Roll-over when the wrap boundary is reached.
              if(ARADDR_slvif[1:0] == 2'b10 && set_rdaligned_done) begin
                 wrap_raddr_next = {ARADDR_slvif[AXI4_AWIDTH-1:2],2'b00};
              end
              else if(raddr_sc_dummy[1:0] == 2'b10 && ren_sc) begin
                 wrap_raddr_next = {raddr_sc_dummy[AXI4_AWIDTH-1:2],2'b00};
              end
              else begin
                 wrap_raddr_next = wrap_raddr_plus;
              end
           end
           8'b0000_0011: begin
              // Wrap at every four locations
              // Roll-over when the wrap boundary is reached.
              if(ARADDR_slvif[2:0] == 3'b110 && set_rdaligned_done) begin
                 wrap_raddr_next = {ARADDR_slvif[AXI4_AWIDTH-1:3],3'b000};
              end
              else if(raddr_sc_dummy[2:0] == 3'b110 && ren_sc) begin
                 wrap_raddr_next = {raddr_sc_dummy[AXI4_AWIDTH-1:3],3'b000};
              end
              else begin
                 wrap_raddr_next = wrap_raddr_plus;     
              end
           end
           8'b0000_0111: begin
              // Wrap at every eight locations
              // Roll-over when the wrap boundary is reached.
              if(ARADDR_slvif[3:0] == 4'b1110 && set_rdaligned_done) begin
                 wrap_raddr_next = {ARADDR_slvif[AXI4_AWIDTH-1:4],4'b0000};
              end
              else if(raddr_sc_dummy[3:0] == 4'b1110 && ren_sc) begin
                 wrap_raddr_next = {raddr_sc_dummy[AXI4_AWIDTH-1:4],4'b0000};
              end
              else begin
                 wrap_raddr_next = wrap_raddr_plus;
              end
           end
           8'b0000_1111: begin
              // Wrap at every 16 locations
              // Roll-over when the wrap boundary is reached.
              if(ARADDR_slvif[4:0] == 5'b11110 && set_rdaligned_done) begin
                 wrap_raddr_next = {ARADDR_slvif[AXI4_AWIDTH-1:5],5'b00000};
              end
              else if(raddr_sc_dummy[4:0] == 5'b11110 && ren_sc) begin
                 wrap_raddr_next = {raddr_sc_dummy[AXI4_AWIDTH-1:5],5'b00000};
              end
              else begin
                 wrap_raddr_next = wrap_raddr_plus;
              end
           end
           default: begin
              wrap_raddr_next = wrap_raddr_next_r;
           end   
         endcase
      end
      else if(ARBURST_slvif == 2'b10  && (ARSIZE_slvif == 3'b000) && WRAP_SUPPORT) begin // For Wrap burst
         case (ARLEN_slvif)
           8'b0000_0000: begin
              // no wrap
              wrap_raddr_next = wrap_raddr_incr;
           end
           8'b0000_0001: begin
              // Wrap at every two locations
              // Roll-over when the wrap boundary is reached.
              if(ARADDR_slvif[0] == 1'b1 && set_rdaligned_done) begin
                 wrap_raddr_next = {ARADDR_slvif[AXI4_AWIDTH-1:1],1'b0};
              end
              else if(raddr_sc_dummy[0] == 1'b1 && ren_sc) begin
                 wrap_raddr_next = {raddr_sc_dummy[AXI4_AWIDTH-1:1],1'b0};
              end
              else begin
                 wrap_raddr_next = wrap_raddr_plus;
              end
           end
           8'b0000_0011: begin
              // Wrap at every four locations
              // Roll-over when the wrap boundary is reached.
              if(ARADDR_slvif[1:0] == 2'b11 && set_rdaligned_done) begin
                 wrap_raddr_next = {ARADDR_slvif[AXI4_AWIDTH-1:2],2'b00};
              end
              else if(raddr_sc_dummy[1:0] == 2'b11 && ren_sc) begin
                 wrap_raddr_next = {raddr_sc_dummy[AXI4_AWIDTH-1:2],2'b00};
              end
              else begin
                 wrap_raddr_next = wrap_raddr_plus;     
              end
           end
           8'b0000_0111: begin
              // Wrap at every eight locations
              // Roll-over when the wrap boundary is reached.
              if(ARADDR_slvif[2:0] == 3'b111 && set_rdaligned_done) begin
                 wrap_raddr_next = {ARADDR_slvif[AXI4_AWIDTH-1:3],3'b000};
              end
              else if(raddr_sc_dummy[2:0] == 3'b111 && ren_sc) begin
                 wrap_raddr_next = {raddr_sc_dummy[AXI4_AWIDTH-1:3],3'b000};
              end
              else begin
                 wrap_raddr_next = wrap_raddr_plus;
              end
           end
           8'b0000_1111: begin
              // Wrap at every 16 locations
              // Roll-over when the wrap boundary is reached.
              if(ARADDR_slvif[3:0] == 4'b1111 && set_rdaligned_done) begin
                 wrap_raddr_next = {ARADDR_slvif[AXI4_AWIDTH-1:4],4'b0000};
              end
              else if(raddr_sc_dummy[3:0] == 4'b1111 && ren_sc) begin
                 wrap_raddr_next = {raddr_sc_dummy[AXI4_AWIDTH-1:4],4'b0000};
              end
              else begin
                 wrap_raddr_next = wrap_raddr_plus;
              end
           end
           default: begin
              wrap_raddr_next = wrap_raddr_next_r;
           end   
         endcase
      end
      else begin
         wrap_raddr_next = 'h0;
      end
   end

   // Register the next wrap address on every sample of 
   // WVALID_slvif & wready_mc.
   generate
      if(HIGH_PERF == 1'b1) begin 
         always @(posedge ACLK or negedge ARESETN) begin
            if(ARESETN == 1'b0) begin
               wrap_raddr_calc   <= 'h0;
            end
            else begin         
               if(WRAP_SUPPORT) begin
                  if(rd_curr_state == RD_LAST_ST) begin
                     wrap_raddr_calc   <= 'h0;
                  end
                  else if(RREADY_slvif && ren_sc) begin 
                     wrap_raddr_calc   <= wrap_raddr_next;
                  end
                  else if(ARVALID && arready_mc) begin  
                     wrap_raddr_calc   <= ARADDR;
                  end
               end
            end
         end // always @ (posedge ACLK or negedge ARESETN)

         always @(posedge ACLK or negedge ARESETN) begin
            if(ARESETN == 1'b0) begin
               wrap_raddr_calc_r   <= 'h0;
            end
            else begin
               wrap_raddr_calc_r <= wrap_raddr_calc;         
            end
         end

      end
   endgenerate

   always @(posedge ACLK or negedge ARESETN) begin
      if(ARESETN == 1'b0) begin
         wrap_raddr_r   <= 'h0;
      end
      else begin
         wrap_raddr_r <= wrap_raddr;         
      end
   end

   generate
      if(HIGH_PERF == 1'b1) begin

         always @(*) begin
            wrap_raddr   <= wrap_raddr_r;
            if(WRAP_SUPPORT && ARBURST_slvif == 2'b10) begin  // For burst type = WRAP
               wrap_raddr   <= ARADDR_slvif;
            end
         end   
      end 
   endgenerate
   
   always @(posedge ACLK or negedge ARESETN) begin
      if(ARESETN == 1'b0) begin
         wrap_raddr_incr_r   <= 'h0;
      end
      else begin
         wrap_raddr_incr_r <= wrap_raddr_incr;         
      end
   end

   // Registered version
   always @(posedge ACLK or negedge ARESETN) begin
      if(ARESETN == 1'b0) begin
         ARLEN_slvif_r   <= 'h0;
      end
      else begin
         if((rd_curr_state == RD_DATA0_ST) && rd_aligned_done == 'h0) begin
           ARLEN_slvif_r <= ARLEN_slvif;
         end
      end
   end

   // Registered signals
   always @(posedge ACLK or negedge ARESETN) begin
      if(ARESETN == 1'b0) begin
         rd_sram_xvalid_r <= 1'b0;         
      end
      else begin
         rd_sram_xvalid_r <= rd_sram_xvalid;         
      end
   end

   // Used to determine the state machine movement from
   // read data state to read wait state.
   // It is asserted when the read is sampled.
   always @(posedge ACLK or negedge ARESETN) begin
      if(ARESETN == 1'b0) begin
         read_sampled <= 'h0;         
      end
      else begin
         read_sampled <= rvalid_mc && RREADY_slvif;         
      end
   end      

   // Latch the second 40-bit read data from the memory 
   // when the second read enable is asserted. This is
   // used to form the 64-bit read data RDATA on the AXI4
   // interface.
   always @(posedge ACLK or negedge ARESETN) begin
      if(ARESETN == 1'b0) begin
         rdata_sc_lat <= 'h0;
      end
      else begin
         if(ren_sc == 1'b1 && ren_sc_d1 == 1'b1) begin
            rdata_sc_lat <= rdata_sc;
         end
      end
   end


   
endmodule // CoreAXI4SRAM_MAINCTRL
