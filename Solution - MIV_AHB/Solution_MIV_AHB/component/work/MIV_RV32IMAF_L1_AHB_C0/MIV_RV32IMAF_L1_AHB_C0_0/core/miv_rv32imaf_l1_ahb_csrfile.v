// Copyright (c) 2019, Microchip Corporation
// All rights reserved.
//
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided that the following conditions are met:
//     * Redistributions of source code must retain the above copyright
//       notice, this list of conditions and the following disclaimer.
//     * Redistributions in binary form must reproduce the above copyright
//       notice, this list of conditions and the following disclaimer in the
//       documentation and/or other materials provided with the distribution.
//     * Neither the name of the <organization> nor the
//       names of its contributors may be used to endorse or promote products
//       derived from this software without specific prior written permission.
//
// THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
// ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
// WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
// DISCLAIMED. IN NO EVENT SHALL MICROSEMI CORPORATIONM BE LIABLE FOR ANY
// DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
// (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
// LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
// ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
// (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
// SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
//
// APACHE LICENSE
// Copyright (c) 2019, Microchip Corporation 
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//    http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//
// Description:
//
// SVN Revision Information:
// SVN $Revision: $
// SVN $Date: $
//
// Resolved SARs
// SAR      Date     Who   Description
//
// Notes:
//
// ****************************************************************************/
`ifndef RANDOMIZE_REG_INIT 
	 `define RANDOMIZE_REG_INIT 
 `endif
`ifndef RANDOMIZE_MEM_INIT 
	 `define RANDOMIZE_MEM_INIT 
 `endif
`ifndef RANDOMIZE 
	 `define RANDOMIZE 
`endif

`timescale 1ns/10ps
module MIV_RV32IMAF_L1_AHB_C0_MIV_RV32IMAF_L1_AHB_C0_0_MIV_RV32IMAF_L1_AHB_CSRFILE( // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110970.2]
  input         clock, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110971.4]
  input         reset, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110972.4]
  input         io_interrupts_debug, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110973.4]
  input         io_interrupts_mtip, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110973.4]
  input         io_interrupts_msip, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110973.4]
  input         io_interrupts_meip, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110973.4]
  input  [11:0] io_rw_addr, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110973.4]
  input  [2:0]  io_rw_cmd, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110973.4]
  output [31:0] io_rw_rdata, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110973.4]
  input  [31:0] io_rw_wdata, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110973.4]
  input  [11:0] io_decode_0_csr, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110973.4]
  output        io_decode_0_fp_illegal, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110973.4]
  output        io_decode_0_read_illegal, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110973.4]
  output        io_decode_0_write_illegal, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110973.4]
  output        io_decode_0_write_flush, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110973.4]
  output        io_csr_stall, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110973.4]
  output        io_eret, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110973.4]
  output        io_singleStep, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110973.4]
  output        io_status_debug, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110973.4]
  output [31:0] io_status_isa, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110973.4]
  output [1:0]  io_status_dprv, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110973.4]
  output [1:0]  io_status_prv, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110973.4]
  output        io_status_sd, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110973.4]
  output [26:0] io_status_zero2, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110973.4]
  output [1:0]  io_status_sxl, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110973.4]
  output [1:0]  io_status_uxl, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110973.4]
  output        io_status_sd_rv32, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110973.4]
  output [7:0]  io_status_zero1, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110973.4]
  output        io_status_tsr, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110973.4]
  output        io_status_tw, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110973.4]
  output        io_status_tvm, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110973.4]
  output        io_status_mxr, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110973.4]
  output        io_status_sum, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110973.4]
  output        io_status_mprv, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110973.4]
  output [1:0]  io_status_xs, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110973.4]
  output [1:0]  io_status_fs, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110973.4]
  output [1:0]  io_status_mpp, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110973.4]
  output [1:0]  io_status_hpp, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110973.4]
  output        io_status_spp, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110973.4]
  output        io_status_mpie, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110973.4]
  output        io_status_hpie, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110973.4]
  output        io_status_spie, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110973.4]
  output        io_status_upie, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110973.4]
  output        io_status_mie, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110973.4]
  output        io_status_hie, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110973.4]
  output        io_status_sie, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110973.4]
  output        io_status_uie, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110973.4]
  output [31:0] io_evec, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110973.4]
  input         io_exception, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110973.4]
  input         io_retire, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110973.4]
  input  [31:0] io_cause, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110973.4]
  input  [31:0] io_pc, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110973.4]
  input  [31:0] io_badaddr, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110973.4]
  output [31:0] io_time, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110973.4]
  output [2:0]  io_fcsr_rm, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110973.4]
  input         io_fcsr_flags_valid, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110973.4]
  input  [4:0]  io_fcsr_flags_bits, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110973.4]
  output        io_interrupt, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110973.4]
  output [31:0] io_interrupt_cause, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110973.4]
  output        io_bp_0_control_action, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110973.4]
  output        io_bp_0_control_chain, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110973.4]
  output [1:0]  io_bp_0_control_tmatch, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110973.4]
  output        io_bp_0_control_x, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110973.4]
  output        io_bp_0_control_w, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110973.4]
  output        io_bp_0_control_r, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110973.4]
  output [31:0] io_bp_0_address, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110973.4]
  output        io_bp_1_control_action, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110973.4]
  output [1:0]  io_bp_1_control_tmatch, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110973.4]
  output        io_bp_1_control_x, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110973.4]
  output        io_bp_1_control_w, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110973.4]
  output        io_bp_1_control_r, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110973.4]
  output [31:0] io_bp_1_address, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110973.4]
  input  [31:0] io_inst_0, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110973.4]
  output        io_trace_0_valid, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110973.4]
  output [31:0] io_trace_0_iaddr, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110973.4]
  output [31:0] io_trace_0_insn, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110973.4]
  output        io_trace_0_exception // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110973.4]
);
  reg [1:0] reg_mstatus_fs; // @[CSR.scala 247:24:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111046.4]
  reg [31:0] _RAND_0;
  reg [1:0] reg_mstatus_mpp; // @[CSR.scala 247:24:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111046.4]
  reg [31:0] _RAND_1;
  reg  reg_mstatus_spp; // @[CSR.scala 247:24:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111046.4]
  reg [31:0] _RAND_2;
  reg  reg_mstatus_mpie; // @[CSR.scala 247:24:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111046.4]
  reg [31:0] _RAND_3;
  reg  reg_mstatus_mie; // @[CSR.scala 247:24:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111046.4]
  reg [31:0] _RAND_4;
  reg  reg_dcsr_ebreakm; // @[CSR.scala 255:21:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111089.4]
  reg [31:0] _RAND_5;
  reg [2:0] reg_dcsr_cause; // @[CSR.scala 255:21:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111089.4]
  reg [31:0] _RAND_6;
  reg  reg_dcsr_step; // @[CSR.scala 255:21:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111089.4]
  reg [31:0] _RAND_7;
  reg [1:0] reg_dcsr_prv; // @[CSR.scala 255:21:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111089.4]
  reg [31:0] _RAND_8;
  reg  reg_debug; // @[CSR.scala 293:22:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111145.4]
  reg [31:0] _RAND_9;
  reg [31:0] reg_dpc; // @[CSR.scala 294:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111146.4]
  reg [31:0] _RAND_10;
  reg [31:0] reg_dscratch; // @[CSR.scala 295:25:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111147.4]
  reg [31:0] _RAND_11;
  reg  reg_singleStepped; // @[CSR.scala 296:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111148.4]
  reg [31:0] _RAND_12;
  reg  reg_tselect; // @[CSR.scala 298:24:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111149.4]
  reg [31:0] _RAND_13;
  reg  reg_bp_0_control_dmode; // @[CSR.scala 299:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111150.4]
  reg [31:0] _RAND_14;
  reg  reg_bp_0_control_action; // @[CSR.scala 299:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111150.4]
  reg [31:0] _RAND_15;
  reg  reg_bp_0_control_chain; // @[CSR.scala 299:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111150.4]
  reg [31:0] _RAND_16;
  reg [1:0] reg_bp_0_control_tmatch; // @[CSR.scala 299:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111150.4]
  reg [31:0] _RAND_17;
  reg  reg_bp_0_control_x; // @[CSR.scala 299:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111150.4]
  reg [31:0] _RAND_18;
  reg  reg_bp_0_control_w; // @[CSR.scala 299:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111150.4]
  reg [31:0] _RAND_19;
  reg  reg_bp_0_control_r; // @[CSR.scala 299:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111150.4]
  reg [31:0] _RAND_20;
  reg [31:0] reg_bp_0_address; // @[CSR.scala 299:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111150.4]
  reg [31:0] _RAND_21;
  reg  reg_bp_1_control_dmode; // @[CSR.scala 299:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111150.4]
  reg [31:0] _RAND_22;
  reg  reg_bp_1_control_action; // @[CSR.scala 299:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111150.4]
  reg [31:0] _RAND_23;
  reg [1:0] reg_bp_1_control_tmatch; // @[CSR.scala 299:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111150.4]
  reg [31:0] _RAND_24;
  reg  reg_bp_1_control_x; // @[CSR.scala 299:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111150.4]
  reg [31:0] _RAND_25;
  reg  reg_bp_1_control_w; // @[CSR.scala 299:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111150.4]
  reg [31:0] _RAND_26;
  reg  reg_bp_1_control_r; // @[CSR.scala 299:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111150.4]
  reg [31:0] _RAND_27;
  reg [31:0] reg_bp_1_address; // @[CSR.scala 299:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111150.4]
  reg [31:0] _RAND_28;
  reg [31:0] reg_mie; // @[CSR.scala 302:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111152.4]
  reg [31:0] _RAND_29;
  reg [31:0] reg_mepc; // @[CSR.scala 306:21:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111156.4]
  reg [31:0] _RAND_30;
  reg [31:0] reg_mcause; // @[CSR.scala 307:23:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111157.4]
  reg [31:0] _RAND_31;
  reg [31:0] reg_mbadaddr; // @[CSR.scala 308:25:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111158.4]
  reg [31:0] _RAND_32;
  reg [31:0] reg_mscratch; // @[CSR.scala 309:25:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111159.4]
  reg [31:0] _RAND_33;
  reg [31:0] reg_mtvec; // @[CSR.scala 312:27:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111160.4]
  reg [31:0] _RAND_34;
  reg  reg_wfi; // @[CSR.scala 325:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111169.4]
  reg [31:0] _RAND_35;
  reg [4:0] reg_fflags; // @[CSR.scala 327:23:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111170.4]
  reg [31:0] _RAND_36;
  reg [2:0] reg_frm; // @[CSR.scala 328:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111171.4]
  reg [31:0] _RAND_37;
  reg [5:0] _T_278; // @[Counters.scala 46:37:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111183.4]
  reg [31:0] _RAND_38;
  reg [57:0] _T_282; // @[Counters.scala 51:27:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111186.4]
  reg [63:0] _RAND_39;
  reg [31:0] reg_misa; // @[CSR.scala 371:21:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111397.4]
  reg [31:0] _RAND_40;
  wire [6:0] _T_279; // @[Counters.scala 47:33:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111184.4]
  wire  _T_283; // @[Counters.scala 52:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111187.4]
  wire [58:0] _T_285; // @[Counters.scala 52:43:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111189.6]
  wire [57:0] _T_286; // @[Counters.scala 52:43:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111190.6]
  wire [57:0] _GEN_36; // @[Counters.scala 52:34:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111188.4]
  wire [63:0] _T_287; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111193.4]
  wire [1:0] _T_300; // @[CSR.scala 345:22:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111206.4]
  wire [3:0] _T_301; // @[CSR.scala 345:22:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111207.4]
  wire [1:0] _T_303; // @[CSR.scala 345:22:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111209.4]
  wire [3:0] _T_304; // @[CSR.scala 345:22:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111210.4]
  wire [7:0] _T_305; // @[CSR.scala 345:22:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111211.4]
  wire [1:0] _T_307; // @[CSR.scala 345:22:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111213.4]
  wire [3:0] _T_308; // @[CSR.scala 345:22:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111214.4]
  wire [7:0] _T_312; // @[CSR.scala 345:22:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111218.4]
  wire [15:0] _T_313; // @[CSR.scala 345:22:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111219.4]
  wire [15:0] read_mip; // @[CSR.scala 345:29:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111220.4]
  wire [31:0] _GEN_1; // @[CSR.scala 348:56:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111221.4]
  wire [31:0] pending_interrupts; // @[CSR.scala 348:56:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111221.4]
  wire [14:0] _GEN_2; // @[CSR.scala 349:42:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111223.4]
  wire [14:0] d_interrupts; // @[CSR.scala 349:42:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111223.4]
  wire [31:0] _T_318; // @[CSR.scala 350:73:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111226.4]
  wire [31:0] _T_320; // @[CSR.scala 350:71:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111228.4]
  wire [31:0] m_interrupts; // @[CSR.scala 350:25:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111229.4]
  wire  _T_330; // @[CSR.scala 843:76:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111236.4]
  wire  _T_331; // @[CSR.scala 843:76:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111237.4]
  wire  _T_332; // @[CSR.scala 843:76:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111238.4]
  wire  _T_333; // @[CSR.scala 843:76:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111239.4]
  wire  _T_334; // @[CSR.scala 843:76:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111240.4]
  wire  _T_335; // @[CSR.scala 843:76:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111241.4]
  wire  _T_336; // @[CSR.scala 843:76:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111242.4]
  wire  _T_337; // @[CSR.scala 843:76:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111243.4]
  wire  _T_338; // @[CSR.scala 843:76:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111244.4]
  wire  _T_339; // @[CSR.scala 843:76:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111245.4]
  wire  _T_340; // @[CSR.scala 843:76:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111246.4]
  wire  _T_341; // @[CSR.scala 843:76:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111247.4]
  wire  _T_342; // @[CSR.scala 843:76:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111248.4]
  wire  _T_343; // @[CSR.scala 843:76:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111249.4]
  wire  _T_344; // @[CSR.scala 843:76:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111250.4]
  wire  _T_345; // @[CSR.scala 843:76:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111251.4]
  wire  _T_346; // @[CSR.scala 843:76:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111252.4]
  wire  _T_347; // @[CSR.scala 843:76:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111253.4]
  wire  _T_348; // @[CSR.scala 843:76:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111254.4]
  wire  _T_349; // @[CSR.scala 843:76:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111255.4]
  wire  _T_350; // @[CSR.scala 843:76:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111256.4]
  wire  _T_351; // @[CSR.scala 843:76:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111257.4]
  wire  _T_352; // @[CSR.scala 843:76:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111258.4]
  wire  _T_353; // @[CSR.scala 843:76:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111259.4]
  wire  _T_354; // @[CSR.scala 843:76:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111260.4]
  wire  _T_368; // @[CSR.scala 843:90:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111274.4]
  wire  _T_369; // @[CSR.scala 843:90:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111275.4]
  wire  _T_370; // @[CSR.scala 843:90:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111276.4]
  wire  _T_371; // @[CSR.scala 843:90:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111277.4]
  wire  _T_372; // @[CSR.scala 843:90:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111278.4]
  wire  _T_373; // @[CSR.scala 843:90:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111279.4]
  wire  _T_374; // @[CSR.scala 843:90:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111280.4]
  wire  _T_375; // @[CSR.scala 843:90:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111281.4]
  wire  _T_376; // @[CSR.scala 843:90:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111282.4]
  wire  _T_377; // @[CSR.scala 843:90:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111283.4]
  wire  _T_378; // @[CSR.scala 843:90:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111284.4]
  wire  _T_379; // @[CSR.scala 843:90:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111285.4]
  wire  _T_380; // @[CSR.scala 843:90:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111286.4]
  wire  _T_381; // @[CSR.scala 843:90:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111287.4]
  wire  _T_382; // @[CSR.scala 843:90:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111288.4]
  wire  _T_383; // @[CSR.scala 843:90:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111289.4]
  wire  _T_384; // @[CSR.scala 843:90:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111290.4]
  wire  _T_385; // @[CSR.scala 843:90:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111291.4]
  wire  _T_386; // @[CSR.scala 843:90:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111292.4]
  wire  _T_387; // @[CSR.scala 843:90:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111293.4]
  wire  _T_388; // @[CSR.scala 843:90:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111294.4]
  wire  _T_389; // @[CSR.scala 843:90:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111295.4]
  wire  _T_390; // @[CSR.scala 843:90:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111296.4]
  wire  anyInterrupt; // @[CSR.scala 843:90:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111297.4]
  wire [3:0] _T_493; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111362.4]
  wire [3:0] _T_494; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111363.4]
  wire [3:0] _T_495; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111364.4]
  wire [3:0] _T_496; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111365.4]
  wire [3:0] _T_497; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111366.4]
  wire [3:0] _T_498; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111367.4]
  wire [3:0] _T_499; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111368.4]
  wire [3:0] _T_500; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111369.4]
  wire [3:0] _T_501; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111370.4]
  wire [3:0] _T_502; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111371.4]
  wire [3:0] _T_503; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111372.4]
  wire [3:0] _T_504; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111373.4]
  wire [3:0] _T_505; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111374.4]
  wire [3:0] _T_506; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111375.4]
  wire [3:0] _T_507; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111376.4]
  wire [3:0] _T_508; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111377.4]
  wire [3:0] _T_509; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111378.4]
  wire [3:0] _T_510; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111379.4]
  wire [3:0] _T_511; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111380.4]
  wire [3:0] _T_512; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111381.4]
  wire [3:0] _T_513; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111382.4]
  wire [3:0] _T_514; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111383.4]
  wire [3:0] _T_515; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111384.4]
  wire [3:0] whichInterrupt; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111385.4]
  wire [31:0] _GEN_3; // @[CSR.scala 354:43:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111386.4]
  wire [32:0] _T_517; // @[CSR.scala 354:43:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111386.4]
  wire [31:0] interruptCause; // @[CSR.scala 354:43:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111387.4]
  wire  _T_519; // @[CSR.scala 355:35:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111388.4]
  wire  _T_520; // @[CSR.scala 355:32:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111389.4]
  wire  _T_522; // @[CSR.scala 355:49:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111390.4]
  wire  _T_523; // @[CSR.scala 355:46:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111391.4]
  wire  _T_524; // @[CSR.scala 355:64:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111392.4]
  wire [1:0] _T_527; // @[CSR.scala 372:38:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111398.4]
  wire [2:0] _T_528; // @[CSR.scala 372:38:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111399.4]
  wire [1:0] _T_529; // @[CSR.scala 372:38:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111400.4]
  wire [1:0] _T_530; // @[CSR.scala 372:38:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111401.4]
  wire [3:0] _T_531; // @[CSR.scala 372:38:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111402.4]
  wire [6:0] _T_532; // @[CSR.scala 372:38:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111403.4]
  wire [2:0] _T_533; // @[CSR.scala 372:38:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111404.4]
  wire [3:0] _T_534; // @[CSR.scala 372:38:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111405.4]
  wire [3:0] _T_535; // @[CSR.scala 372:38:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111406.4]
  wire [2:0] _T_536; // @[CSR.scala 372:38:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111407.4]
  wire [6:0] _T_537; // @[CSR.scala 372:38:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111408.4]
  wire [10:0] _T_538; // @[CSR.scala 372:38:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111409.4]
  wire [17:0] _T_539; // @[CSR.scala 372:38:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111410.4]
  wire [1:0] _T_540; // @[CSR.scala 372:38:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111411.4]
  wire [2:0] _T_541; // @[CSR.scala 372:38:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111412.4]
  wire [1:0] _T_542; // @[CSR.scala 372:38:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111413.4]
  wire [8:0] _T_543; // @[CSR.scala 372:38:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111414.4]
  wire [10:0] _T_544; // @[CSR.scala 372:38:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111415.4]
  wire [13:0] _T_545; // @[CSR.scala 372:38:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111416.4]
  wire [3:0] _T_546; // @[CSR.scala 372:38:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111417.4]
  wire [27:0] _T_547; // @[CSR.scala 372:38:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111418.4]
  wire [31:0] _T_548; // @[CSR.scala 372:38:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111419.4]
  wire [3:0] _T_549; // @[CSR.scala 372:38:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111420.4]
  wire [32:0] _T_550; // @[CSR.scala 372:38:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111421.4]
  wire [36:0] _T_551; // @[CSR.scala 372:38:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111422.4]
  wire [68:0] _T_552; // @[CSR.scala 372:38:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111423.4]
  wire [82:0] _T_553; // @[CSR.scala 372:38:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111424.4]
  wire [100:0] _T_554; // @[CSR.scala 372:38:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111425.4]
  wire [31:0] read_mstatus; // @[CSR.scala 372:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111426.4]
  wire  _GEN_38; // @[CSR.scala 376:48:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111427.4]
  wire  _GEN_41; // @[CSR.scala 376:48:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111427.4]
  wire  _GEN_42; // @[CSR.scala 376:48:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111427.4]
  wire [1:0] _GEN_44; // @[CSR.scala 376:48:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111427.4]
  wire  _GEN_49; // @[CSR.scala 376:48:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111427.4]
  wire  _GEN_50; // @[CSR.scala 376:48:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111427.4]
  wire  _GEN_51; // @[CSR.scala 376:48:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111427.4]
  wire [31:0] _GEN_52; // @[CSR.scala 376:48:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111427.4]
  wire [1:0] _T_556; // @[CSR.scala 376:48:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111427.4]
  wire [2:0] _T_557; // @[CSR.scala 376:48:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111428.4]
  wire [6:0] _T_561; // @[CSR.scala 376:48:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111432.4]
  wire [3:0] _T_562; // @[CSR.scala 376:48:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111433.4]
  wire [1:0] _T_563; // @[CSR.scala 376:48:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111434.4]
  wire [5:0] _T_564; // @[CSR.scala 376:48:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111435.4]
  wire [4:0] _T_566; // @[CSR.scala 376:48:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111437.4]
  wire [18:0] _T_567; // @[CSR.scala 376:48:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111438.4]
  wire [24:0] _T_568; // @[CSR.scala 376:48:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111439.4]
  wire [31:0] _T_569; // @[CSR.scala 376:48:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111440.4]
  wire [3:0] _T_574; // @[CSR.scala 393:27:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111441.4]
  wire [5:0] _T_575; // @[CSR.scala 393:27:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111442.4]
  wire [3:0] _T_576; // @[CSR.scala 393:27:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111443.4]
  wire [5:0] _T_578; // @[CSR.scala 393:27:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111445.4]
  wire [11:0] _T_579; // @[CSR.scala 393:27:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111446.4]
  wire [12:0] _T_582; // @[CSR.scala 393:27:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111449.4]
  wire [16:0] _T_584; // @[CSR.scala 393:27:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111451.4]
  wire [19:0] _T_585; // @[CSR.scala 393:27:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111452.4]
  wire [31:0] _T_586; // @[CSR.scala 393:27:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111453.4]
  wire [7:0] _T_587; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111454.4]
  wire  _T_590; // @[CSR.scala 479:73:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111455.4]
  wire  _T_592; // @[CSR.scala 479:73:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111456.4]
  wire  _T_594; // @[CSR.scala 479:73:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111457.4]
  wire  _T_602; // @[CSR.scala 479:73:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111461.4]
  wire  _T_604; // @[CSR.scala 479:73:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111462.4]
  wire  _T_606; // @[CSR.scala 479:73:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111463.4]
  wire  _T_608; // @[CSR.scala 479:73:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111464.4]
  wire  _T_610; // @[CSR.scala 479:73:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111465.4]
  wire  _T_612; // @[CSR.scala 479:73:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111466.4]
  wire  _T_614; // @[CSR.scala 479:73:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111467.4]
  wire  _T_616; // @[CSR.scala 479:73:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111468.4]
  wire  _T_618; // @[CSR.scala 479:73:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111469.4]
  wire  _T_622; // @[CSR.scala 479:73:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111471.4]
  wire  _T_624; // @[CSR.scala 479:73:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111472.4]
  wire  _T_626; // @[CSR.scala 479:73:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111473.4]
  wire  _T_628; // @[CSR.scala 479:73:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111474.4]
  wire  _T_630; // @[CSR.scala 479:73:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111475.4]
  wire  _T_632; // @[CSR.scala 479:73:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111476.4]
  wire  _T_635; // @[package.scala 14:47:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111477.4]
  wire  _T_636; // @[package.scala 14:47:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111478.4]
  wire  _T_637; // @[package.scala 14:62:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111479.4]
  wire [31:0] _T_639; // @[CSR.scala 849:9:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111480.4]
  wire [31:0] _T_640; // @[CSR.scala 849:53:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111481.4]
  wire [31:0] _T_644; // @[CSR.scala 849:68:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111483.4]
  wire [31:0] _T_645; // @[CSR.scala 849:64:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111484.4]
  wire [31:0] wdata; // @[CSR.scala 849:62:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111485.4]
  wire  system_insn; // @[CSR.scala 482:31:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111486.4]
  wire [2:0] _T_648; // @[CSR.scala 483:37:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111487.4]
  wire [7:0] opcode; // @[CSR.scala 483:24:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111488.4]
  wire  _T_649; // @[CSR.scala 484:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111489.4]
  wire  insn_call; // @[CSR.scala 484:31:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111490.4]
  wire  _T_650; // @[CSR.scala 485:41:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111491.4]
  wire  insn_break; // @[CSR.scala 485:32:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111492.4]
  wire  _T_651; // @[CSR.scala 486:39:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111493.4]
  wire  insn_ret; // @[CSR.scala 486:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111494.4]
  wire  _T_652; // @[CSR.scala 487:39:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111495.4]
  wire  insn_wfi; // @[CSR.scala 487:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111496.4]
  wire  _T_675; // @[CSR.scala 494:39:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111509.4]
  wire  _T_676; // @[CSR.scala 494:57:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111510.4]
  wire  _T_678; // @[CSR.scala 494:48:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111511.4]
  wire  _T_679; // @[CSR.scala 494:45:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111512.4]
  wire  _T_689; // @[CSR.scala 490:99:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111521.4]
  wire  _T_691; // @[CSR.scala 490:99:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111522.4]
  wire  _T_693; // @[CSR.scala 490:99:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111523.4]
  wire  _T_695; // @[CSR.scala 490:99:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111524.4]
  wire  _T_697; // @[CSR.scala 490:99:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111525.4]
  wire  _T_699; // @[CSR.scala 490:99:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111526.4]
  wire  _T_701; // @[CSR.scala 490:99:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111527.4]
  wire  _T_703; // @[CSR.scala 490:99:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111528.4]
  wire  _T_705; // @[CSR.scala 490:99:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111529.4]
  wire  _T_707; // @[CSR.scala 490:99:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111530.4]
  wire  _T_709; // @[CSR.scala 490:99:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111531.4]
  wire  _T_711; // @[CSR.scala 490:99:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111532.4]
  wire  _T_713; // @[CSR.scala 490:99:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111533.4]
  wire  _T_715; // @[CSR.scala 490:99:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111534.4]
  wire  _T_717; // @[CSR.scala 490:99:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111535.4]
  wire  _T_719; // @[CSR.scala 490:99:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111536.4]
  wire  _T_721; // @[CSR.scala 490:99:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111537.4]
  wire  _T_723; // @[CSR.scala 490:99:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111538.4]
  wire  _T_725; // @[CSR.scala 490:99:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111539.4]
  wire  _T_727; // @[CSR.scala 490:99:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111540.4]
  wire  _T_729; // @[CSR.scala 490:99:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111541.4]
  wire  _T_731; // @[CSR.scala 490:99:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111542.4]
  wire  _T_732; // @[CSR.scala 490:115:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111543.4]
  wire  _T_733; // @[CSR.scala 490:115:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111544.4]
  wire  _T_734; // @[CSR.scala 490:115:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111545.4]
  wire  _T_735; // @[CSR.scala 490:115:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111546.4]
  wire  _T_736; // @[CSR.scala 490:115:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111547.4]
  wire  _T_737; // @[CSR.scala 490:115:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111548.4]
  wire  _T_738; // @[CSR.scala 490:115:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111549.4]
  wire  _T_739; // @[CSR.scala 490:115:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111550.4]
  wire  _T_740; // @[CSR.scala 490:115:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111551.4]
  wire  _T_741; // @[CSR.scala 490:115:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111552.4]
  wire  _T_742; // @[CSR.scala 490:115:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111553.4]
  wire  _T_743; // @[CSR.scala 490:115:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111554.4]
  wire  _T_744; // @[CSR.scala 490:115:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111555.4]
  wire  _T_745; // @[CSR.scala 490:115:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111556.4]
  wire  _T_746; // @[CSR.scala 490:115:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111557.4]
  wire  _T_747; // @[CSR.scala 490:115:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111558.4]
  wire  _T_748; // @[CSR.scala 490:115:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111559.4]
  wire  _T_749; // @[CSR.scala 490:115:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111560.4]
  wire  _T_750; // @[CSR.scala 490:115:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111561.4]
  wire  _T_751; // @[CSR.scala 490:115:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111562.4]
  wire  _T_752; // @[CSR.scala 490:115:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111563.4]
  wire  _T_754; // @[CSR.scala 497:7:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111564.4]
  wire  _T_788; // @[CSR.scala 490:115:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111587.4]
  wire  _T_789; // @[CSR.scala 490:115:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111588.4]
  wire  _T_793; // @[CSR.scala 500:49:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111591.4]
  wire  _T_794; // @[CSR.scala 499:210:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111592.4]
  wire  _T_802; // @[CSR.scala 490:115:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111596.4]
  wire  _T_803; // @[CSR.scala 490:115:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111597.4]
  wire  _T_805; // @[CSR.scala 501:44:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111599.4]
  wire  _T_806; // @[CSR.scala 500:63:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111600.4]
  wire [1:0] _T_807; // @[CSR.scala 502:39:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111602.4]
  wire [1:0] _T_808; // @[CSR.scala 502:47:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111603.4]
  wire  _T_810; // @[CSR.scala 502:47:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111604.4]
  wire  _T_812; // @[CSR.scala 503:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111606.4]
  wire  _T_814; // @[CSR.scala 503:71:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111607.4]
  wire  _T_815; // @[CSR.scala 503:57:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111608.4]
  wire  _T_817; // @[CSR.scala 503:102:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111609.4]
  wire  _T_819; // @[CSR.scala 503:133:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111610.4]
  wire  _T_820; // @[CSR.scala 503:119:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111611.4]
  wire  _T_821; // @[CSR.scala 503:88:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111612.4]
  wire  _T_823; // @[CSR.scala 503:27:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111613.4]
  wire [4:0] _T_850; // @[CSR.scala 511:36:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111636.4]
  wire [3:0] _T_851; // @[CSR.scala 511:36:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111637.4]
  wire [31:0] _T_853; // @[CSR.scala 512:14:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111638.4]
  wire [31:0] cause; // @[CSR.scala 511:8:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111639.4]
  wire [7:0] cause_lsbs; // @[CSR.scala 513:25:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111640.4]
  wire  _T_854; // @[CSR.scala 514:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111641.4]
  wire  _T_856; // @[CSR.scala 514:53:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111642.4]
  wire  causeIsDebugInt; // @[CSR.scala 514:39:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111643.4]
  wire  _T_859; // @[CSR.scala 515:29:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111645.4]
  wire  causeIsDebugTrigger; // @[CSR.scala 515:44:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111647.4]
  wire  _T_865; // @[CSR.scala 516:42:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111650.4]
  wire [1:0] _T_867; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111652.4]
  wire [3:0] _T_868; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111653.4]
  wire [3:0] _T_869; // @[CSR.scala 516:134:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111654.4]
  wire  _T_870; // @[CSR.scala 516:134:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111655.4]
  wire  causeIsDebugBreak; // @[CSR.scala 516:56:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111656.4]
  wire  _T_872; // @[CSR.scala 517:60:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111657.4]
  wire  _T_873; // @[CSR.scala 517:79:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111658.4]
  wire  _T_874; // @[CSR.scala 517:102:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111659.4]
  wire  trapToDebug; // @[CSR.scala 517:123:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111660.4]
  wire [11:0] _T_878; // @[CSR.scala 518:37:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111662.4]
  wire [11:0] debugTVec; // @[CSR.scala 518:22:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111663.4]
  wire [3:0] _T_894; // @[CSR.scala 524:32:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111674.4]
  wire [5:0] _GEN_4; // @[CSR.scala 524:59:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111675.4]
  wire [5:0] _T_895; // @[CSR.scala 524:59:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111675.4]
  wire [25:0] _T_896; // @[CSR.scala 525:33:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111676.4]
  wire [31:0] _T_897; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111677.4]
  wire  _T_898; // @[CSR.scala 526:24:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111678.4]
  wire  _T_900; // @[CSR.scala 526:28:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111680.4]
  wire [3:0] _T_901; // @[CSR.scala 526:70:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111681.4]
  wire  _T_903; // @[CSR.scala 526:94:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111682.4]
  wire  _T_904; // @[CSR.scala 526:55:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111683.4]
  wire [31:0] notDebugTVec; // @[CSR.scala 527:8:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111684.4]
  wire [31:0] tvec; // @[CSR.scala 529:17:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111685.4]
  wire  _T_905; // @[CSR.scala 532:24:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111688.4]
  wire  _T_906; // @[CSR.scala 532:38:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111689.4]
  wire  _T_909; // @[CSR.scala 533:34:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111692.4]
  wire [1:0] _T_910; // @[CSR.scala 535:32:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111695.4]
  wire  _T_912; // @[CSR.scala 535:32:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111696.4]
  wire [1:0] _T_913; // @[CSR.scala 535:53:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111697.4]
  wire  _T_915; // @[CSR.scala 535:53:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111698.4]
  wire  _T_916; // @[CSR.scala 535:37:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111699.4]
  wire  exception; // @[CSR.scala 544:43:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111713.4]
  wire [1:0] _T_926; // @[Bitwise.scala 48:55:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111714.4]
  wire [1:0] _T_927; // @[Bitwise.scala 48:55:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111715.4]
  wire [2:0] _T_928; // @[Bitwise.scala 48:55:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111716.4]
  wire  _T_930; // @[CSR.scala 545:79:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111717.4]
  wire  _T_932; // @[CSR.scala 545:9:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111719.4]
  wire  _T_934; // @[CSR.scala 545:9:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111720.4]
  wire  _T_937; // @[CSR.scala 547:18:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111726.4]
  wire  _T_940; // @[CSR.scala 547:36:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111728.4]
  wire  _GEN_53; // @[CSR.scala 547:51:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111729.4]
  wire  _T_943; // @[CSR.scala 548:28:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111732.4]
  wire  _T_944; // @[CSR.scala 548:32:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111733.4]
  wire  _T_945; // @[CSR.scala 548:45:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111734.4]
  wire  _GEN_54; // @[CSR.scala 548:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111735.4]
  wire  _T_948; // @[CSR.scala 549:10:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111738.4]
  wire  _T_950; // @[CSR.scala 549:32:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111739.4]
  wire  _T_951; // @[CSR.scala 549:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111740.4]
  wire  _T_953; // @[CSR.scala 549:9:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111742.4]
  wire  _T_955; // @[CSR.scala 549:9:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111743.4]
  wire  _T_957; // @[CSR.scala 551:22:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111749.4]
  wire  _GEN_55; // @[CSR.scala 551:36:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111750.4]
  wire  _GEN_56; // @[CSR.scala 552:25:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111754.4]
  wire  _T_972; // @[CSR.scala 554:10:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111767.4]
  wire  _T_975; // @[CSR.scala 554:29:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111769.4]
  wire  _T_977; // @[CSR.scala 554:9:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111771.4]
  wire  _T_979; // @[CSR.scala 554:9:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111772.4]
  wire [31:0] _T_980; // @[CSR.scala 556:15:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111777.4]
  wire [31:0] _T_982; // @[CSR.scala 556:22:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111778.4]
  wire [31:0] epc; // @[CSR.scala 556:13:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111779.4]
  wire  _T_993; // @[package.scala 14:47:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111780.4]
  wire  _T_994; // @[package.scala 14:47:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111781.4]
  wire  _T_995; // @[package.scala 14:47:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111782.4]
  wire  _T_996; // @[package.scala 14:47:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111783.4]
  wire  _T_997; // @[package.scala 14:47:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111784.4]
  wire  _T_998; // @[package.scala 14:47:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111785.4]
  wire  _T_999; // @[package.scala 14:47:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111786.4]
  wire  _T_1000; // @[package.scala 14:47:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111787.4]
  wire  _T_1001; // @[package.scala 14:47:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111788.4]
  wire  _T_1002; // @[package.scala 14:47:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111789.4]
  wire  _T_1003; // @[package.scala 14:62:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111790.4]
  wire  _T_1004; // @[package.scala 14:62:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111791.4]
  wire  _T_1005; // @[package.scala 14:62:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111792.4]
  wire  _T_1006; // @[package.scala 14:62:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111793.4]
  wire  _T_1007; // @[package.scala 14:62:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111794.4]
  wire  _T_1008; // @[package.scala 14:62:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111795.4]
  wire  _T_1009; // @[package.scala 14:62:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111796.4]
  wire  _T_1010; // @[package.scala 14:62:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111797.4]
  wire  _T_1011; // @[package.scala 14:62:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111798.4]
  wire  write_badaddr; // @[CSR.scala 557:33:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111799.4]
  wire [31:0] badaddr_value; // @[CSR.scala 561:26:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111800.4]
  wire [1:0] _T_1021; // @[CSR.scala 571:86:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111810.10]
  wire [1:0] _T_1022; // @[CSR.scala 571:56:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111811.10]
  wire [2:0] _T_1023; // @[CSR.scala 571:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111812.10]
  wire  _GEN_57; // @[CSR.scala 568:25:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111807.8]
  wire [31:0] _GEN_58; // @[CSR.scala 568:25:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111807.8]
  wire [2:0] _GEN_59; // @[CSR.scala 568:25:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111807.8]
  wire [1:0] _GEN_60; // @[CSR.scala 568:25:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111807.8]
  wire [31:0] _T_1026; // @[CSR.scala 869:28:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111820.10]
  wire  _T_1027; // @[CSR.scala 869:46:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111821.10]
  wire  _T_1029; // @[CSR.scala 869:37:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111822.10]
  wire [1:0] _T_1031; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111823.10]
  wire [31:0] _GEN_5; // @[CSR.scala 869:31:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111824.10]
  wire [31:0] _T_1032; // @[CSR.scala 869:31:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111824.10]
  wire [31:0] _T_1033; // @[CSR.scala 869:26:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111825.10]
  wire [1:0] _GEN_67; // @[CSR.scala 575:27:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111819.8]
  wire  _GEN_76; // @[CSR.scala 567:24:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111805.6]
  wire [31:0] _GEN_77; // @[CSR.scala 567:24:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111805.6]
  wire [2:0] _GEN_78; // @[CSR.scala 567:24:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111805.6]
  wire [1:0] _GEN_79; // @[CSR.scala 567:24:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111805.6]
  wire [1:0] _GEN_86; // @[CSR.scala 567:24:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111805.6]
  wire [31:0] _GEN_88; // @[CSR.scala 567:24:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111805.6]
  wire [31:0] _GEN_89; // @[CSR.scala 567:24:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111805.6]
  wire [31:0] _GEN_90; // @[CSR.scala 567:24:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111805.6]
  wire  _GEN_91; // @[CSR.scala 567:24:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111805.6]
  wire [1:0] _GEN_92; // @[CSR.scala 567:24:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111805.6]
  wire  _GEN_93; // @[CSR.scala 567:24:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111805.6]
  wire  _GEN_94; // @[CSR.scala 566:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111804.4]
  wire [31:0] _GEN_95; // @[CSR.scala 566:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111804.4]
  wire [2:0] _GEN_96; // @[CSR.scala 566:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111804.4]
  wire [1:0] _GEN_97; // @[CSR.scala 566:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111804.4]
  wire [1:0] _GEN_104; // @[CSR.scala 566:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111804.4]
  wire [31:0] _GEN_106; // @[CSR.scala 566:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111804.4]
  wire [31:0] _GEN_107; // @[CSR.scala 566:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111804.4]
  wire [31:0] _GEN_108; // @[CSR.scala 566:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111804.4]
  wire  _GEN_109; // @[CSR.scala 566:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111804.4]
  wire [1:0] _GEN_110; // @[CSR.scala 566:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111804.4]
  wire  _GEN_111; // @[CSR.scala 566:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111804.4]
  wire  _T_1087; // @[CSR.scala 619:47:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111888.8]
  wire  _GEN_113; // @[CSR.scala 619:53:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111890.8]
  wire [31:0] _GEN_114; // @[CSR.scala 619:53:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111890.8]
  wire  _GEN_115; // @[CSR.scala 619:53:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111890.8]
  wire  _GEN_116; // @[CSR.scala 619:53:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111890.8]
  wire [1:0] _GEN_117; // @[CSR.scala 619:53:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111890.8]
  wire [31:0] _GEN_131; // @[CSR.scala 612:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111876.4]
  wire  _GEN_132; // @[CSR.scala 612:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111876.4]
  wire  _GEN_133; // @[CSR.scala 612:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111876.4]
  wire  _GEN_134; // @[CSR.scala 612:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111876.4]
  wire [1:0] _GEN_135; // @[CSR.scala 612:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111876.4]
  wire  _T_1095; // @[Mux.scala 19:72:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111905.4]
  wire [31:0] _T_1097; // @[Mux.scala 19:72:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111906.4]
  wire [31:0] _T_1099; // @[Mux.scala 19:72:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111907.4]
  wire [31:0] _T_1107; // @[Mux.scala 19:72:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111911.4]
  wire [31:0] _T_1109; // @[Mux.scala 19:72:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111912.4]
  wire [31:0] _T_1111; // @[Mux.scala 19:72:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111913.4]
  wire [15:0] _T_1113; // @[Mux.scala 19:72:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111914.4]
  wire [31:0] _T_1115; // @[Mux.scala 19:72:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111915.4]
  wire [31:0] _T_1117; // @[Mux.scala 19:72:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111916.4]
  wire [31:0] _T_1119; // @[Mux.scala 19:72:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111917.4]
  wire [31:0] _T_1121; // @[Mux.scala 19:72:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111918.4]
  wire [31:0] _T_1123; // @[Mux.scala 19:72:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111919.4]
  wire [31:0] _T_1127; // @[Mux.scala 19:72:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111921.4]
  wire [31:0] _T_1129; // @[Mux.scala 19:72:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111922.4]
  wire [31:0] _T_1131; // @[Mux.scala 19:72:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111923.4]
  wire [4:0] _T_1133; // @[Mux.scala 19:72:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111924.4]
  wire [2:0] _T_1135; // @[Mux.scala 19:72:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111925.4]
  wire [7:0] _T_1137; // @[Mux.scala 19:72:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111926.4]
  wire [31:0] _GEN_7; // @[Mux.scala 19:72:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111927.4]
  wire [31:0] _T_1138; // @[Mux.scala 19:72:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111927.4]
  wire [31:0] _T_1139; // @[Mux.scala 19:72:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111928.4]
  wire [31:0] _T_1143; // @[Mux.scala 19:72:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111932.4]
  wire [31:0] _T_1144; // @[Mux.scala 19:72:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111933.4]
  wire [31:0] _T_1145; // @[Mux.scala 19:72:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111934.4]
  wire [31:0] _GEN_8; // @[Mux.scala 19:72:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111935.4]
  wire [31:0] _T_1146; // @[Mux.scala 19:72:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111935.4]
  wire [31:0] _T_1147; // @[Mux.scala 19:72:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111936.4]
  wire [31:0] _T_1148; // @[Mux.scala 19:72:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111937.4]
  wire [31:0] _T_1149; // @[Mux.scala 19:72:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111938.4]
  wire [31:0] _T_1150; // @[Mux.scala 19:72:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111939.4]
  wire [31:0] _T_1151; // @[Mux.scala 19:72:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111940.4]
  wire [31:0] _T_1153; // @[Mux.scala 19:72:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111942.4]
  wire [31:0] _T_1154; // @[Mux.scala 19:72:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111943.4]
  wire [31:0] _T_1155; // @[Mux.scala 19:72:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111944.4]
  wire [31:0] _GEN_9; // @[Mux.scala 19:72:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111945.4]
  wire [31:0] _T_1156; // @[Mux.scala 19:72:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111945.4]
  wire [31:0] _GEN_10; // @[Mux.scala 19:72:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111946.4]
  wire [31:0] _T_1157; // @[Mux.scala 19:72:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111946.4]
  wire [31:0] _GEN_11; // @[Mux.scala 19:72:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111947.4]
  wire [31:0] _T_1158; // @[Mux.scala 19:72:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111947.4]
  wire [4:0] _T_1161; // @[CSR.scala 639:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111953.6]
  wire [4:0] _GEN_136; // @[CSR.scala 638:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111952.4]
  wire  _T_1167; // @[package.scala 14:47:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111958.4]
  wire  _T_1169; // @[package.scala 14:62:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111960.4]
  wire [100:0] _T_1174; // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111965.8]
  wire  _T_1178; // @[CSR.scala 644:47:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111974.8]
  wire  _T_1182; // @[CSR.scala 644:47:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111982.8]
  wire [1:0] _T_1186; // @[CSR.scala 644:47:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111990.8]
  wire  _T_1205; // @[CSR.scala 663:73:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112028.8]
  wire [1:0] _T_1209; // @[Bitwise.scala 72:12:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112030.8]
  wire  _GEN_137; // @[CSR.scala 643:39:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111962.6]
  wire  _GEN_138; // @[CSR.scala 643:39:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111962.6]
  wire [1:0] _GEN_139; // @[CSR.scala 643:39:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111962.6]
  wire  _T_1211; // @[CSR.scala 668:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112034.8]
  wire [31:0] _T_1212; // @[CSR.scala 670:23:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112035.8]
  wire  _T_1214; // @[CSR.scala 670:33:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112036.8]
  wire [3:0] _GEN_12; // @[CSR.scala 670:36:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112037.8]
  wire [3:0] _T_1215; // @[CSR.scala 670:36:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112037.8]
  wire [31:0] _GEN_13; // @[CSR.scala 670:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112038.8]
  wire [31:0] _T_1216; // @[CSR.scala 670:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112038.8]
  wire [31:0] _T_1217; // @[CSR.scala 670:21:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112039.8]
  wire [31:0] _T_1218; // @[CSR.scala 670:53:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112040.8]
  wire [31:0] _T_1220; // @[CSR.scala 670:71:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112042.8]
  wire [31:0] _T_1221; // @[CSR.scala 670:60:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112043.8]
  wire [31:0] _GEN_140; // @[CSR.scala 666:36:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112033.6]
  wire [31:0] _T_1278; // @[CSR.scala 684:59:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112110.8]
  wire [31:0] _GEN_141; // @[CSR.scala 684:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112109.6]
  wire [31:0] _T_1285; // @[CSR.scala 869:31:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112118.8]
  wire [31:0] _T_1286; // @[CSR.scala 869:26:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112119.8]
  wire [31:0] _GEN_142; // @[CSR.scala 685:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112113.6]
  wire [31:0] _GEN_143; // @[CSR.scala 686:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112122.6]
  wire [31:0] _T_1289; // @[CSR.scala 688:64:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112127.8]
  wire  _T_1290; // @[CSR.scala 688:81:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112128.8]
  wire [5:0] _T_1293; // @[CSR.scala 688:75:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112129.8]
  wire [31:0] _GEN_15; // @[CSR.scala 688:70:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112130.8]
  wire [31:0] _T_1294; // @[CSR.scala 688:70:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112130.8]
  wire [31:0] _T_1295; // @[CSR.scala 688:55:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112131.8]
  wire [31:0] _GEN_144; // @[CSR.scala 688:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112125.6]
  wire [31:0] _T_1297; // @[CSR.scala 689:62:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112135.8]
  wire [31:0] _GEN_145; // @[CSR.scala 689:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112134.6]
  wire [31:0] _GEN_146; // @[CSR.scala 690:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112138.6]
  wire [31:0] _GEN_147; // @[CSR.scala 702:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112142.6]
  wire [31:0] _GEN_148; // @[CSR.scala 703:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112145.6]
  wire [26:0] _T_1299; // @[CSR.scala 704:80:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112150.8]
  wire [31:0] _GEN_149; // @[CSR.scala 704:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112148.6]
  wire [31:0] _GEN_150; // @[CSR.scala 704:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112148.6]
  wire  _T_1306; // @[CSR.scala 708:43:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112161.8]
  wire  _T_1311; // @[CSR.scala 708:43:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112171.8]
  wire  _T_1312; // @[CSR.scala 708:43:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112173.8]
  wire  _T_1315; // @[CSR.scala 708:43:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112179.8]
  wire  _GEN_151; // @[CSR.scala 707:38:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112153.6]
  wire  _GEN_152; // @[CSR.scala 707:38:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112153.6]
  wire [31:0] _T_1321; // @[CSR.scala 715:64:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112192.8]
  wire [31:0] _T_1322; // @[CSR.scala 715:55:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112193.8]
  wire [31:0] _GEN_153; // @[CSR.scala 715:42:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112190.6]
  wire [31:0] _GEN_154; // @[CSR.scala 716:42:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112196.6]
  wire [31:0] _GEN_155; // @[CSR.scala 757:41:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112199.6]
  wire  _T_1325; // @[CSR.scala 760:13:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112202.6]
  wire  _T_1326; // @[CSR.scala 760:31:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112203.6]
  wire  _T_1333; // @[CSR.scala 762:48:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112213.10]
  wire [1:0] _T_1339; // @[CSR.scala 762:48:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112225.10]
  wire  _T_1345; // @[CSR.scala 762:48:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112237.10]
  wire  _T_1347; // @[CSR.scala 763:36:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112241.10]
  wire  _GEN_158; // @[CSR.scala 764:22:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112242.10]
  wire  _GEN_159; // @[CSR.scala 764:22:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112242.10]
  wire  _GEN_164; // @[CSR.scala 764:22:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112242.10]
  wire  _GEN_165; // @[CSR.scala 764:22:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112242.10]
  wire  _GEN_166; // @[CSR.scala 764:22:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112242.10]
  wire [1:0] _GEN_170; // @[CSR.scala 764:22:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112242.10]
  wire [1:0] _GEN_171; // @[CSR.scala 764:22:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112242.10]
  wire  _GEN_180; // @[CSR.scala 764:22:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112242.10]
  wire  _GEN_181; // @[CSR.scala 764:22:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112242.10]
  wire  _GEN_182; // @[CSR.scala 764:22:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112242.10]
  wire  _GEN_183; // @[CSR.scala 764:22:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112242.10]
  wire  _GEN_184; // @[CSR.scala 764:22:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112242.10]
  wire  _GEN_185; // @[CSR.scala 764:22:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112242.10]
  wire  _GEN_186; // @[CSR.scala 765:28:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112243.10]
  wire  _GEN_187; // @[CSR.scala 765:28:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112243.10]
  wire  _T_1348; // @[CSR.scala 766:38:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112244.10]
  wire  _GEN_188; // @[CSR.scala 766:29:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112245.10]
  wire  _GEN_189; // @[CSR.scala 766:29:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112245.10]
  wire  _GEN_192; // @[CSR.scala 761:42:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112205.8]
  wire  _GEN_193; // @[CSR.scala 761:42:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112205.8]
  wire  _GEN_198; // @[CSR.scala 761:42:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112205.8]
  wire  _GEN_199; // @[CSR.scala 761:42:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112205.8]
  wire  _GEN_200; // @[CSR.scala 761:42:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112205.8]
  wire [1:0] _GEN_204; // @[CSR.scala 761:42:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112205.8]
  wire [1:0] _GEN_205; // @[CSR.scala 761:42:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112205.8]
  wire  _GEN_214; // @[CSR.scala 761:42:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112205.8]
  wire  _GEN_215; // @[CSR.scala 761:42:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112205.8]
  wire  _GEN_216; // @[CSR.scala 761:42:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112205.8]
  wire  _GEN_217; // @[CSR.scala 761:42:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112205.8]
  wire  _GEN_218; // @[CSR.scala 761:42:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112205.8]
  wire  _GEN_219; // @[CSR.scala 761:42:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112205.8]
  wire [31:0] _GEN_220; // @[CSR.scala 768:55:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112248.10]
  wire [31:0] _GEN_221; // @[CSR.scala 768:55:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112248.10]
  wire [31:0] _GEN_222; // @[CSR.scala 768:42:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112247.8]
  wire [31:0] _GEN_223; // @[CSR.scala 768:42:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112247.8]
  wire  _GEN_226; // @[CSR.scala 760:45:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112204.6]
  wire  _GEN_227; // @[CSR.scala 760:45:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112204.6]
  wire  _GEN_232; // @[CSR.scala 760:45:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112204.6]
  wire  _GEN_233; // @[CSR.scala 760:45:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112204.6]
  wire  _GEN_234; // @[CSR.scala 760:45:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112204.6]
  wire [1:0] _GEN_238; // @[CSR.scala 760:45:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112204.6]
  wire [1:0] _GEN_239; // @[CSR.scala 760:45:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112204.6]
  wire  _GEN_248; // @[CSR.scala 760:45:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112204.6]
  wire  _GEN_249; // @[CSR.scala 760:45:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112204.6]
  wire  _GEN_250; // @[CSR.scala 760:45:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112204.6]
  wire  _GEN_251; // @[CSR.scala 760:45:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112204.6]
  wire  _GEN_252; // @[CSR.scala 760:45:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112204.6]
  wire  _GEN_253; // @[CSR.scala 760:45:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112204.6]
  wire [31:0] _GEN_254; // @[CSR.scala 760:45:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112204.6]
  wire [31:0] _GEN_255; // @[CSR.scala 760:45:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112204.6]
  wire  _GEN_256; // @[CSR.scala 642:49:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111961.4]
  wire  _GEN_257; // @[CSR.scala 642:49:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111961.4]
  wire [1:0] _GEN_258; // @[CSR.scala 642:49:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111961.4]
  wire [31:0] _GEN_259; // @[CSR.scala 642:49:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111961.4]
  wire [31:0] _GEN_260; // @[CSR.scala 642:49:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111961.4]
  wire [31:0] _GEN_261; // @[CSR.scala 642:49:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111961.4]
  wire [31:0] _GEN_262; // @[CSR.scala 642:49:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111961.4]
  wire [31:0] _GEN_263; // @[CSR.scala 642:49:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111961.4]
  wire [31:0] _GEN_264; // @[CSR.scala 642:49:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111961.4]
  wire [31:0] _GEN_265; // @[CSR.scala 642:49:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111961.4]
  wire [31:0] _GEN_266; // @[CSR.scala 642:49:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111961.4]
  wire [31:0] _GEN_267; // @[CSR.scala 642:49:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111961.4]
  wire  _GEN_268; // @[CSR.scala 642:49:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111961.4]
  wire  _GEN_269; // @[CSR.scala 642:49:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111961.4]
  wire [31:0] _GEN_270; // @[CSR.scala 642:49:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111961.4]
  wire [31:0] _GEN_271; // @[CSR.scala 642:49:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111961.4]
  wire [31:0] _GEN_272; // @[CSR.scala 642:49:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111961.4]
  wire  _GEN_275; // @[CSR.scala 642:49:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111961.4]
  wire  _GEN_276; // @[CSR.scala 642:49:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111961.4]
  wire  _GEN_281; // @[CSR.scala 642:49:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111961.4]
  wire  _GEN_282; // @[CSR.scala 642:49:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111961.4]
  wire  _GEN_283; // @[CSR.scala 642:49:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111961.4]
  wire [1:0] _GEN_287; // @[CSR.scala 642:49:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111961.4]
  wire [1:0] _GEN_288; // @[CSR.scala 642:49:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111961.4]
  wire  _GEN_297; // @[CSR.scala 642:49:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111961.4]
  wire  _GEN_298; // @[CSR.scala 642:49:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111961.4]
  wire  _GEN_299; // @[CSR.scala 642:49:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111961.4]
  wire  _GEN_300; // @[CSR.scala 642:49:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111961.4]
  wire  _GEN_301; // @[CSR.scala 642:49:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111961.4]
  wire  _GEN_302; // @[CSR.scala 642:49:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111961.4]
  wire [31:0] _GEN_303; // @[CSR.scala 642:49:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111961.4]
  wire [31:0] _GEN_304; // @[CSR.scala 642:49:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111961.4]
  wire  _GEN_305; // @[CSR.scala 805:18:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112267.4]
  wire  _GEN_306; // @[CSR.scala 805:18:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112267.4]
  wire  _GEN_307; // @[CSR.scala 805:18:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112267.4]
  wire  _GEN_308; // @[CSR.scala 805:18:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112267.4]
  wire  _GEN_309; // @[CSR.scala 805:18:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112267.4]
  wire  _GEN_310; // @[CSR.scala 805:18:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112283.4]
  wire  _GEN_311; // @[CSR.scala 805:18:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112283.4]
  wire  _GEN_312; // @[CSR.scala 805:18:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112283.4]
  wire  _GEN_313; // @[CSR.scala 805:18:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112283.4]
  wire  _GEN_314; // @[CSR.scala 805:18:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112283.4]
  wire  _T_1387; // @[CSR.scala 825:26:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112293.4]
  wire  _T_1388; // @[CSR.scala 825:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112294.4]
  assign _T_279 = _T_278 + 6'h1; // @[Counters.scala 47:33:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111184.4]
  assign _T_283 = _T_279[6]; // @[Counters.scala 52:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111187.4]
  assign _T_285 = _T_282 + 58'h1; // @[Counters.scala 52:43:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111189.6]
  assign _T_286 = _T_285[57:0]; // @[Counters.scala 52:43:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111190.6]
  assign _GEN_36 = _T_283 ? _T_286 : _T_282; // @[Counters.scala 52:34:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111188.4]
  assign _T_287 = {_T_282,_T_278}; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111193.4]
  assign _T_300 = {io_interrupts_msip,1'h0}; // @[CSR.scala 345:22:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111206.4]
  assign _T_301 = {_T_300,2'h0}; // @[CSR.scala 345:22:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111207.4]
  assign _T_303 = {io_interrupts_mtip,1'h0}; // @[CSR.scala 345:22:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111209.4]
  assign _T_304 = {_T_303,2'h0}; // @[CSR.scala 345:22:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111210.4]
  assign _T_305 = {_T_304,_T_301}; // @[CSR.scala 345:22:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111211.4]
  assign _T_307 = {io_interrupts_meip,1'h0}; // @[CSR.scala 345:22:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111213.4]
  assign _T_308 = {_T_307,2'h0}; // @[CSR.scala 345:22:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111214.4]
  assign _T_312 = {4'h0,_T_308}; // @[CSR.scala 345:22:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111218.4]
  assign _T_313 = {_T_312,_T_305}; // @[CSR.scala 345:22:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111219.4]
  assign read_mip = _T_313 & 16'h888; // @[CSR.scala 345:29:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111220.4]
  assign _GEN_1 = {{16'd0}, read_mip}; // @[CSR.scala 348:56:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111221.4]
  assign pending_interrupts = _GEN_1 & reg_mie; // @[CSR.scala 348:56:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111221.4]
  assign _GEN_2 = {{14'd0}, io_interrupts_debug}; // @[CSR.scala 349:42:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111223.4]
  assign d_interrupts = _GEN_2 << 14; // @[CSR.scala 349:42:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111223.4]
  assign _T_318 = ~ pending_interrupts; // @[CSR.scala 350:73:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111226.4]
  assign _T_320 = ~ _T_318; // @[CSR.scala 350:71:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111228.4]
  assign m_interrupts = reg_mstatus_mie ? _T_320 : 32'h0; // @[CSR.scala 350:25:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111229.4]
  assign _T_330 = d_interrupts[14]; // @[CSR.scala 843:76:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111236.4]
  assign _T_331 = d_interrupts[13]; // @[CSR.scala 843:76:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111237.4]
  assign _T_332 = d_interrupts[12]; // @[CSR.scala 843:76:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111238.4]
  assign _T_333 = d_interrupts[11]; // @[CSR.scala 843:76:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111239.4]
  assign _T_334 = d_interrupts[3]; // @[CSR.scala 843:76:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111240.4]
  assign _T_335 = d_interrupts[7]; // @[CSR.scala 843:76:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111241.4]
  assign _T_336 = d_interrupts[9]; // @[CSR.scala 843:76:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111242.4]
  assign _T_337 = d_interrupts[1]; // @[CSR.scala 843:76:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111243.4]
  assign _T_338 = d_interrupts[5]; // @[CSR.scala 843:76:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111244.4]
  assign _T_339 = d_interrupts[8]; // @[CSR.scala 843:76:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111245.4]
  assign _T_340 = d_interrupts[0]; // @[CSR.scala 843:76:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111246.4]
  assign _T_341 = d_interrupts[4]; // @[CSR.scala 843:76:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111247.4]
  assign _T_342 = m_interrupts[15]; // @[CSR.scala 843:76:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111248.4]
  assign _T_343 = m_interrupts[14]; // @[CSR.scala 843:76:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111249.4]
  assign _T_344 = m_interrupts[13]; // @[CSR.scala 843:76:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111250.4]
  assign _T_345 = m_interrupts[12]; // @[CSR.scala 843:76:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111251.4]
  assign _T_346 = m_interrupts[11]; // @[CSR.scala 843:76:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111252.4]
  assign _T_347 = m_interrupts[3]; // @[CSR.scala 843:76:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111253.4]
  assign _T_348 = m_interrupts[7]; // @[CSR.scala 843:76:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111254.4]
  assign _T_349 = m_interrupts[9]; // @[CSR.scala 843:76:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111255.4]
  assign _T_350 = m_interrupts[1]; // @[CSR.scala 843:76:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111256.4]
  assign _T_351 = m_interrupts[5]; // @[CSR.scala 843:76:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111257.4]
  assign _T_352 = m_interrupts[8]; // @[CSR.scala 843:76:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111258.4]
  assign _T_353 = m_interrupts[0]; // @[CSR.scala 843:76:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111259.4]
  assign _T_354 = m_interrupts[4]; // @[CSR.scala 843:76:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111260.4]
  assign _T_368 = _T_330 | _T_331; // @[CSR.scala 843:90:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111274.4]
  assign _T_369 = _T_368 | _T_332; // @[CSR.scala 843:90:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111275.4]
  assign _T_370 = _T_369 | _T_333; // @[CSR.scala 843:90:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111276.4]
  assign _T_371 = _T_370 | _T_334; // @[CSR.scala 843:90:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111277.4]
  assign _T_372 = _T_371 | _T_335; // @[CSR.scala 843:90:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111278.4]
  assign _T_373 = _T_372 | _T_336; // @[CSR.scala 843:90:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111279.4]
  assign _T_374 = _T_373 | _T_337; // @[CSR.scala 843:90:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111280.4]
  assign _T_375 = _T_374 | _T_338; // @[CSR.scala 843:90:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111281.4]
  assign _T_376 = _T_375 | _T_339; // @[CSR.scala 843:90:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111282.4]
  assign _T_377 = _T_376 | _T_340; // @[CSR.scala 843:90:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111283.4]
  assign _T_378 = _T_377 | _T_341; // @[CSR.scala 843:90:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111284.4]
  assign _T_379 = _T_378 | _T_342; // @[CSR.scala 843:90:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111285.4]
  assign _T_380 = _T_379 | _T_343; // @[CSR.scala 843:90:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111286.4]
  assign _T_381 = _T_380 | _T_344; // @[CSR.scala 843:90:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111287.4]
  assign _T_382 = _T_381 | _T_345; // @[CSR.scala 843:90:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111288.4]
  assign _T_383 = _T_382 | _T_346; // @[CSR.scala 843:90:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111289.4]
  assign _T_384 = _T_383 | _T_347; // @[CSR.scala 843:90:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111290.4]
  assign _T_385 = _T_384 | _T_348; // @[CSR.scala 843:90:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111291.4]
  assign _T_386 = _T_385 | _T_349; // @[CSR.scala 843:90:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111292.4]
  assign _T_387 = _T_386 | _T_350; // @[CSR.scala 843:90:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111293.4]
  assign _T_388 = _T_387 | _T_351; // @[CSR.scala 843:90:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111294.4]
  assign _T_389 = _T_388 | _T_352; // @[CSR.scala 843:90:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111295.4]
  assign _T_390 = _T_389 | _T_353; // @[CSR.scala 843:90:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111296.4]
  assign anyInterrupt = _T_390 | _T_354; // @[CSR.scala 843:90:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111297.4]
  assign _T_493 = _T_353 ? 4'h0 : 4'h4; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111362.4]
  assign _T_494 = _T_352 ? 4'h8 : _T_493; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111363.4]
  assign _T_495 = _T_351 ? 4'h5 : _T_494; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111364.4]
  assign _T_496 = _T_350 ? 4'h1 : _T_495; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111365.4]
  assign _T_497 = _T_349 ? 4'h9 : _T_496; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111366.4]
  assign _T_498 = _T_348 ? 4'h7 : _T_497; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111367.4]
  assign _T_499 = _T_347 ? 4'h3 : _T_498; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111368.4]
  assign _T_500 = _T_346 ? 4'hb : _T_499; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111369.4]
  assign _T_501 = _T_345 ? 4'hc : _T_500; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111370.4]
  assign _T_502 = _T_344 ? 4'hd : _T_501; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111371.4]
  assign _T_503 = _T_343 ? 4'he : _T_502; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111372.4]
  assign _T_504 = _T_342 ? 4'hf : _T_503; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111373.4]
  assign _T_505 = _T_341 ? 4'h4 : _T_504; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111374.4]
  assign _T_506 = _T_340 ? 4'h0 : _T_505; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111375.4]
  assign _T_507 = _T_339 ? 4'h8 : _T_506; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111376.4]
  assign _T_508 = _T_338 ? 4'h5 : _T_507; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111377.4]
  assign _T_509 = _T_337 ? 4'h1 : _T_508; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111378.4]
  assign _T_510 = _T_336 ? 4'h9 : _T_509; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111379.4]
  assign _T_511 = _T_335 ? 4'h7 : _T_510; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111380.4]
  assign _T_512 = _T_334 ? 4'h3 : _T_511; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111381.4]
  assign _T_513 = _T_333 ? 4'hb : _T_512; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111382.4]
  assign _T_514 = _T_332 ? 4'hc : _T_513; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111383.4]
  assign _T_515 = _T_331 ? 4'hd : _T_514; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111384.4]
  assign whichInterrupt = _T_330 ? 4'he : _T_515; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111385.4]
  assign _GEN_3 = {{28'd0}, whichInterrupt}; // @[CSR.scala 354:43:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111386.4]
  assign _T_517 = 32'h80000000 + _GEN_3; // @[CSR.scala 354:43:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111386.4]
  assign interruptCause = _T_517[31:0]; // @[CSR.scala 354:43:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111387.4]
  assign _T_519 = reg_debug == 1'h0; // @[CSR.scala 355:35:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111388.4]
  assign _T_520 = anyInterrupt & _T_519; // @[CSR.scala 355:32:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111389.4]
  assign _T_522 = io_singleStep == 1'h0; // @[CSR.scala 355:49:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111390.4]
  assign _T_523 = _T_520 & _T_522; // @[CSR.scala 355:46:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111391.4]
  assign _T_524 = _T_523 | reg_singleStepped; // @[CSR.scala 355:64:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111392.4]
  assign _T_527 = {io_status_hie,io_status_sie}; // @[CSR.scala 372:38:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111398.4]
  assign _T_528 = {_T_527,io_status_uie}; // @[CSR.scala 372:38:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111399.4]
  assign _T_529 = {io_status_upie,io_status_mie}; // @[CSR.scala 372:38:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111400.4]
  assign _T_530 = {io_status_hpie,io_status_spie}; // @[CSR.scala 372:38:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111401.4]
  assign _T_531 = {_T_530,_T_529}; // @[CSR.scala 372:38:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111402.4]
  assign _T_532 = {_T_531,_T_528}; // @[CSR.scala 372:38:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111403.4]
  assign _T_533 = {io_status_hpp,io_status_spp}; // @[CSR.scala 372:38:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111404.4]
  assign _T_534 = {_T_533,io_status_mpie}; // @[CSR.scala 372:38:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111405.4]
  assign _T_535 = {io_status_fs,io_status_mpp}; // @[CSR.scala 372:38:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111406.4]
  assign _T_536 = {io_status_mprv,io_status_xs}; // @[CSR.scala 372:38:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111407.4]
  assign _T_537 = {_T_536,_T_535}; // @[CSR.scala 372:38:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111408.4]
  assign _T_538 = {_T_537,_T_534}; // @[CSR.scala 372:38:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111409.4]
  assign _T_539 = {_T_538,_T_532}; // @[CSR.scala 372:38:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111410.4]
  assign _T_540 = {io_status_tvm,io_status_mxr}; // @[CSR.scala 372:38:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111411.4]
  assign _T_541 = {_T_540,io_status_sum}; // @[CSR.scala 372:38:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111412.4]
  assign _T_542 = {io_status_tsr,io_status_tw}; // @[CSR.scala 372:38:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111413.4]
  assign _T_543 = {io_status_sd_rv32,io_status_zero1}; // @[CSR.scala 372:38:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111414.4]
  assign _T_544 = {_T_543,_T_542}; // @[CSR.scala 372:38:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111415.4]
  assign _T_545 = {_T_544,_T_541}; // @[CSR.scala 372:38:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111416.4]
  assign _T_546 = {io_status_sxl,io_status_uxl}; // @[CSR.scala 372:38:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111417.4]
  assign _T_547 = {io_status_sd,io_status_zero2}; // @[CSR.scala 372:38:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111418.4]
  assign _T_548 = {_T_547,_T_546}; // @[CSR.scala 372:38:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111419.4]
  assign _T_549 = {io_status_dprv,io_status_prv}; // @[CSR.scala 372:38:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111420.4]
  assign _T_550 = {io_status_debug,io_status_isa}; // @[CSR.scala 372:38:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111421.4]
  assign _T_551 = {_T_550,_T_549}; // @[CSR.scala 372:38:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111422.4]
  assign _T_552 = {_T_551,_T_548}; // @[CSR.scala 372:38:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111423.4]
  assign _T_553 = {_T_552,_T_545}; // @[CSR.scala 372:38:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111424.4]
  assign _T_554 = {_T_553,_T_539}; // @[CSR.scala 372:38:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111425.4]
  assign read_mstatus = _T_554[31:0]; // @[CSR.scala 372:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111426.4]
  assign _GEN_38 = reg_tselect ? reg_bp_1_control_dmode : reg_bp_0_control_dmode; // @[CSR.scala 376:48:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111427.4]
  assign _GEN_41 = reg_tselect ? reg_bp_1_control_action : reg_bp_0_control_action; // @[CSR.scala 376:48:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111427.4]
  assign _GEN_42 = reg_tselect ? 1'h0 : reg_bp_0_control_chain; // @[CSR.scala 376:48:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111427.4]
  assign _GEN_44 = reg_tselect ? reg_bp_1_control_tmatch : reg_bp_0_control_tmatch; // @[CSR.scala 376:48:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111427.4]
  assign _GEN_49 = reg_tselect ? reg_bp_1_control_x : reg_bp_0_control_x; // @[CSR.scala 376:48:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111427.4]
  assign _GEN_50 = reg_tselect ? reg_bp_1_control_w : reg_bp_0_control_w; // @[CSR.scala 376:48:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111427.4]
  assign _GEN_51 = reg_tselect ? reg_bp_1_control_r : reg_bp_0_control_r; // @[CSR.scala 376:48:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111427.4]
  assign _GEN_52 = reg_tselect ? reg_bp_1_address : reg_bp_0_address; // @[CSR.scala 376:48:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111427.4]
  assign _T_556 = {_GEN_49,_GEN_50}; // @[CSR.scala 376:48:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111427.4]
  assign _T_557 = {_T_556,_GEN_51}; // @[CSR.scala 376:48:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111428.4]
  assign _T_561 = {4'h8,_T_557}; // @[CSR.scala 376:48:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111432.4]
  assign _T_562 = {2'h0,_GEN_44}; // @[CSR.scala 376:48:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111433.4]
  assign _T_563 = {_GEN_41,_GEN_42}; // @[CSR.scala 376:48:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111434.4]
  assign _T_564 = {_T_563,_T_562}; // @[CSR.scala 376:48:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111435.4]
  assign _T_566 = {4'h2,_GEN_38}; // @[CSR.scala 376:48:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111437.4]
  assign _T_567 = {_T_566,14'h400}; // @[CSR.scala 376:48:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111438.4]
  assign _T_568 = {_T_567,_T_564}; // @[CSR.scala 376:48:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111439.4]
  assign _T_569 = {_T_568,_T_561}; // @[CSR.scala 376:48:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111440.4]
  assign _T_574 = {3'h0,reg_dcsr_step}; // @[CSR.scala 393:27:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111441.4]
  assign _T_575 = {_T_574,reg_dcsr_prv}; // @[CSR.scala 393:27:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111442.4]
  assign _T_576 = {1'h0,reg_dcsr_cause}; // @[CSR.scala 393:27:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111443.4]
  assign _T_578 = {2'h0,_T_576}; // @[CSR.scala 393:27:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111445.4]
  assign _T_579 = {_T_578,_T_575}; // @[CSR.scala 393:27:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111446.4]
  assign _T_582 = {12'h0,reg_dcsr_ebreakm}; // @[CSR.scala 393:27:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111449.4]
  assign _T_584 = {4'h4,_T_582}; // @[CSR.scala 393:27:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111451.4]
  assign _T_585 = {_T_584,3'h0}; // @[CSR.scala 393:27:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111452.4]
  assign _T_586 = {_T_585,_T_579}; // @[CSR.scala 393:27:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111453.4]
  assign _T_587 = {reg_frm,reg_fflags}; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111454.4]
  assign _T_590 = io_rw_addr == 12'h7a0; // @[CSR.scala 479:73:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111455.4]
  assign _T_592 = io_rw_addr == 12'h7a1; // @[CSR.scala 479:73:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111456.4]
  assign _T_594 = io_rw_addr == 12'h7a2; // @[CSR.scala 479:73:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111457.4]
  assign _T_602 = io_rw_addr == 12'h301; // @[CSR.scala 479:73:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111461.4]
  assign _T_604 = io_rw_addr == 12'h300; // @[CSR.scala 479:73:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111462.4]
  assign _T_606 = io_rw_addr == 12'h305; // @[CSR.scala 479:73:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111463.4]
  assign _T_608 = io_rw_addr == 12'h344; // @[CSR.scala 479:73:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111464.4]
  assign _T_610 = io_rw_addr == 12'h304; // @[CSR.scala 479:73:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111465.4]
  assign _T_612 = io_rw_addr == 12'h340; // @[CSR.scala 479:73:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111466.4]
  assign _T_614 = io_rw_addr == 12'h341; // @[CSR.scala 479:73:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111467.4]
  assign _T_616 = io_rw_addr == 12'h343; // @[CSR.scala 479:73:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111468.4]
  assign _T_618 = io_rw_addr == 12'h342; // @[CSR.scala 479:73:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111469.4]
  assign _T_622 = io_rw_addr == 12'h7b0; // @[CSR.scala 479:73:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111471.4]
  assign _T_624 = io_rw_addr == 12'h7b1; // @[CSR.scala 479:73:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111472.4]
  assign _T_626 = io_rw_addr == 12'h7b2; // @[CSR.scala 479:73:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111473.4]
  assign _T_628 = io_rw_addr == 12'h1; // @[CSR.scala 479:73:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111474.4]
  assign _T_630 = io_rw_addr == 12'h2; // @[CSR.scala 479:73:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111475.4]
  assign _T_632 = io_rw_addr == 12'h3; // @[CSR.scala 479:73:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111476.4]
  assign _T_635 = io_rw_cmd == 3'h2; // @[package.scala 14:47:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111477.4]
  assign _T_636 = io_rw_cmd == 3'h3; // @[package.scala 14:47:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111478.4]
  assign _T_637 = _T_635 | _T_636; // @[package.scala 14:62:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111479.4]
  assign _T_639 = _T_637 ? io_rw_rdata : 32'h0; // @[CSR.scala 849:9:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111480.4]
  assign _T_640 = _T_639 | io_rw_wdata; // @[CSR.scala 849:53:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111481.4]
  assign _T_644 = _T_636 ? io_rw_wdata : 32'h0; // @[CSR.scala 849:68:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111483.4]
  assign _T_645 = ~ _T_644; // @[CSR.scala 849:64:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111484.4]
  assign wdata = _T_640 & _T_645; // @[CSR.scala 849:62:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111485.4]
  assign system_insn = io_rw_cmd == 3'h4; // @[CSR.scala 482:31:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111486.4]
  assign _T_648 = io_rw_addr[2:0]; // @[CSR.scala 483:37:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111487.4]
  assign opcode = 8'h1 << _T_648; // @[CSR.scala 483:24:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111488.4]
  assign _T_649 = opcode[0]; // @[CSR.scala 484:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111489.4]
  assign insn_call = system_insn & _T_649; // @[CSR.scala 484:31:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111490.4]
  assign _T_650 = opcode[1]; // @[CSR.scala 485:41:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111491.4]
  assign insn_break = system_insn & _T_650; // @[CSR.scala 485:32:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111492.4]
  assign _T_651 = opcode[2]; // @[CSR.scala 486:39:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111493.4]
  assign insn_ret = system_insn & _T_651; // @[CSR.scala 486:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111494.4]
  assign _T_652 = opcode[5]; // @[CSR.scala 487:39:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111495.4]
  assign insn_wfi = system_insn & _T_652; // @[CSR.scala 487:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111496.4]
  assign _T_675 = io_status_fs == 2'h0; // @[CSR.scala 494:39:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111509.4]
  assign _T_676 = reg_misa[5]; // @[CSR.scala 494:57:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111510.4]
  assign _T_678 = _T_676 == 1'h0; // @[CSR.scala 494:48:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111511.4]
  assign _T_679 = _T_675 | _T_678; // @[CSR.scala 494:45:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111512.4]
  assign _T_689 = io_decode_0_csr == 12'h7a0; // @[CSR.scala 490:99:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111521.4]
  assign _T_691 = io_decode_0_csr == 12'h7a1; // @[CSR.scala 490:99:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111522.4]
  assign _T_693 = io_decode_0_csr == 12'h7a2; // @[CSR.scala 490:99:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111523.4]
  assign _T_695 = io_decode_0_csr == 12'hf13; // @[CSR.scala 490:99:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111524.4]
  assign _T_697 = io_decode_0_csr == 12'hf12; // @[CSR.scala 490:99:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111525.4]
  assign _T_699 = io_decode_0_csr == 12'hf11; // @[CSR.scala 490:99:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111526.4]
  assign _T_701 = io_decode_0_csr == 12'h301; // @[CSR.scala 490:99:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111527.4]
  assign _T_703 = io_decode_0_csr == 12'h300; // @[CSR.scala 490:99:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111528.4]
  assign _T_705 = io_decode_0_csr == 12'h305; // @[CSR.scala 490:99:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111529.4]
  assign _T_707 = io_decode_0_csr == 12'h344; // @[CSR.scala 490:99:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111530.4]
  assign _T_709 = io_decode_0_csr == 12'h304; // @[CSR.scala 490:99:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111531.4]
  assign _T_711 = io_decode_0_csr == 12'h340; // @[CSR.scala 490:99:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111532.4]
  assign _T_713 = io_decode_0_csr == 12'h341; // @[CSR.scala 490:99:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111533.4]
  assign _T_715 = io_decode_0_csr == 12'h343; // @[CSR.scala 490:99:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111534.4]
  assign _T_717 = io_decode_0_csr == 12'h342; // @[CSR.scala 490:99:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111535.4]
  assign _T_719 = io_decode_0_csr == 12'hf14; // @[CSR.scala 490:99:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111536.4]
  assign _T_721 = io_decode_0_csr == 12'h7b0; // @[CSR.scala 490:99:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111537.4]
  assign _T_723 = io_decode_0_csr == 12'h7b1; // @[CSR.scala 490:99:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111538.4]
  assign _T_725 = io_decode_0_csr == 12'h7b2; // @[CSR.scala 490:99:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111539.4]
  assign _T_727 = io_decode_0_csr == 12'h1; // @[CSR.scala 490:99:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111540.4]
  assign _T_729 = io_decode_0_csr == 12'h2; // @[CSR.scala 490:99:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111541.4]
  assign _T_731 = io_decode_0_csr == 12'h3; // @[CSR.scala 490:99:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111542.4]
  assign _T_732 = _T_689 | _T_691; // @[CSR.scala 490:115:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111543.4]
  assign _T_733 = _T_732 | _T_693; // @[CSR.scala 490:115:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111544.4]
  assign _T_734 = _T_733 | _T_695; // @[CSR.scala 490:115:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111545.4]
  assign _T_735 = _T_734 | _T_697; // @[CSR.scala 490:115:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111546.4]
  assign _T_736 = _T_735 | _T_699; // @[CSR.scala 490:115:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111547.4]
  assign _T_737 = _T_736 | _T_701; // @[CSR.scala 490:115:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111548.4]
  assign _T_738 = _T_737 | _T_703; // @[CSR.scala 490:115:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111549.4]
  assign _T_739 = _T_738 | _T_705; // @[CSR.scala 490:115:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111550.4]
  assign _T_740 = _T_739 | _T_707; // @[CSR.scala 490:115:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111551.4]
  assign _T_741 = _T_740 | _T_709; // @[CSR.scala 490:115:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111552.4]
  assign _T_742 = _T_741 | _T_711; // @[CSR.scala 490:115:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111553.4]
  assign _T_743 = _T_742 | _T_713; // @[CSR.scala 490:115:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111554.4]
  assign _T_744 = _T_743 | _T_715; // @[CSR.scala 490:115:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111555.4]
  assign _T_745 = _T_744 | _T_717; // @[CSR.scala 490:115:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111556.4]
  assign _T_746 = _T_745 | _T_719; // @[CSR.scala 490:115:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111557.4]
  assign _T_747 = _T_746 | _T_721; // @[CSR.scala 490:115:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111558.4]
  assign _T_748 = _T_747 | _T_723; // @[CSR.scala 490:115:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111559.4]
  assign _T_749 = _T_748 | _T_725; // @[CSR.scala 490:115:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111560.4]
  assign _T_750 = _T_749 | _T_727; // @[CSR.scala 490:115:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111561.4]
  assign _T_751 = _T_750 | _T_729; // @[CSR.scala 490:115:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111562.4]
  assign _T_752 = _T_751 | _T_731; // @[CSR.scala 490:115:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111563.4]
  assign _T_754 = _T_752 == 1'h0; // @[CSR.scala 497:7:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111564.4]
  assign _T_788 = _T_721 | _T_723; // @[CSR.scala 490:115:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111587.4]
  assign _T_789 = _T_788 | _T_725; // @[CSR.scala 490:115:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111588.4]
  assign _T_793 = _T_789 & _T_519; // @[CSR.scala 500:49:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111591.4]
  assign _T_794 = _T_754 | _T_793; // @[CSR.scala 499:210:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111592.4]
  assign _T_802 = _T_727 | _T_729; // @[CSR.scala 490:115:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111596.4]
  assign _T_803 = _T_802 | _T_731; // @[CSR.scala 490:115:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111597.4]
  assign _T_805 = _T_803 & io_decode_0_fp_illegal; // @[CSR.scala 501:44:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111599.4]
  assign _T_806 = _T_794 | _T_805; // @[CSR.scala 500:63:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111600.4]
  assign _T_807 = io_decode_0_csr[11:10]; // @[CSR.scala 502:39:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111602.4]
  assign _T_808 = ~ _T_807; // @[CSR.scala 502:47:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111603.4]
  assign _T_810 = _T_808 == 2'h0; // @[CSR.scala 502:47:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111604.4]
  assign _T_812 = io_decode_0_csr >= 12'h340; // @[CSR.scala 503:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111606.4]
  assign _T_814 = io_decode_0_csr <= 12'h343; // @[CSR.scala 503:71:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111607.4]
  assign _T_815 = _T_812 & _T_814; // @[CSR.scala 503:57:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111608.4]
  assign _T_817 = io_decode_0_csr >= 12'h140; // @[CSR.scala 503:102:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111609.4]
  assign _T_819 = io_decode_0_csr <= 12'h143; // @[CSR.scala 503:133:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111610.4]
  assign _T_820 = _T_817 & _T_819; // @[CSR.scala 503:119:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111611.4]
  assign _T_821 = _T_815 | _T_820; // @[CSR.scala 503:88:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111612.4]
  assign _T_823 = _T_821 == 1'h0; // @[CSR.scala 503:27:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111613.4]
  assign _T_850 = 4'h3 + 4'h8; // @[CSR.scala 511:36:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111636.4]
  assign _T_851 = _T_850[3:0]; // @[CSR.scala 511:36:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111637.4]
  assign _T_853 = insn_break ? 32'h3 : io_cause; // @[CSR.scala 512:14:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111638.4]
  assign cause = insn_call ? {{28'd0}, _T_851} : _T_853; // @[CSR.scala 511:8:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111639.4]
  assign cause_lsbs = cause[7:0]; // @[CSR.scala 513:25:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111640.4]
  assign _T_854 = cause[31]; // @[CSR.scala 514:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111641.4]
  assign _T_856 = cause_lsbs == 8'he; // @[CSR.scala 514:53:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111642.4]
  assign causeIsDebugInt = _T_854 & _T_856; // @[CSR.scala 514:39:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111643.4]
  assign _T_859 = _T_854 == 1'h0; // @[CSR.scala 515:29:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111645.4]
  assign causeIsDebugTrigger = _T_859 & _T_856; // @[CSR.scala 515:44:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111647.4]
  assign _T_865 = _T_859 & insn_break; // @[CSR.scala 516:42:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111650.4]
  assign _T_867 = {reg_dcsr_ebreakm,1'h0}; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111652.4]
  assign _T_868 = {_T_867,2'h0}; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111653.4]
  assign _T_869 = _T_868 >> 2'h3; // @[CSR.scala 516:134:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111654.4]
  assign _T_870 = _T_869[0]; // @[CSR.scala 516:134:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111655.4]
  assign causeIsDebugBreak = _T_865 & _T_870; // @[CSR.scala 516:56:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111656.4]
  assign _T_872 = reg_singleStepped | causeIsDebugInt; // @[CSR.scala 517:60:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111657.4]
  assign _T_873 = _T_872 | causeIsDebugTrigger; // @[CSR.scala 517:79:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111658.4]
  assign _T_874 = _T_873 | causeIsDebugBreak; // @[CSR.scala 517:102:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111659.4]
  assign trapToDebug = _T_874 | reg_debug; // @[CSR.scala 517:123:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111660.4]
  assign _T_878 = insn_break ? 12'h800 : 12'h808; // @[CSR.scala 518:37:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111662.4]
  assign debugTVec = reg_debug ? _T_878 : 12'h800; // @[CSR.scala 518:22:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111663.4]
  assign _T_894 = cause[3:0]; // @[CSR.scala 524:32:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111674.4]
  assign _GEN_4 = {{2'd0}, _T_894}; // @[CSR.scala 524:59:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111675.4]
  assign _T_895 = _GEN_4 << 2; // @[CSR.scala 524:59:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111675.4]
  assign _T_896 = reg_mtvec[31:6]; // @[CSR.scala 525:33:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111676.4]
  assign _T_897 = {_T_896,_T_895}; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111677.4]
  assign _T_898 = reg_mtvec[0]; // @[CSR.scala 526:24:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111678.4]
  assign _T_900 = _T_898 & _T_854; // @[CSR.scala 526:28:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111680.4]
  assign _T_901 = cause_lsbs[7:4]; // @[CSR.scala 526:70:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111681.4]
  assign _T_903 = _T_901 == 4'h0; // @[CSR.scala 526:94:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111682.4]
  assign _T_904 = _T_900 & _T_903; // @[CSR.scala 526:55:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111683.4]
  assign notDebugTVec = _T_904 ? _T_897 : reg_mtvec; // @[CSR.scala 527:8:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111684.4]
  assign tvec = trapToDebug ? {{20'd0}, debugTVec} : notDebugTVec; // @[CSR.scala 529:17:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111685.4]
  assign _T_905 = insn_call | insn_break; // @[CSR.scala 532:24:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111688.4]
  assign _T_906 = _T_905 | insn_ret; // @[CSR.scala 532:38:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111689.4]
  assign _T_909 = reg_dcsr_step & _T_519; // @[CSR.scala 533:34:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111692.4]
  assign _T_910 = ~ io_status_fs; // @[CSR.scala 535:32:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111695.4]
  assign _T_912 = _T_910 == 2'h0; // @[CSR.scala 535:32:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111696.4]
  assign _T_913 = ~ io_status_xs; // @[CSR.scala 535:53:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111697.4]
  assign _T_915 = _T_913 == 2'h0; // @[CSR.scala 535:53:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111698.4]
  assign _T_916 = _T_912 | _T_915; // @[CSR.scala 535:37:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111699.4]
  assign exception = _T_905 | io_exception; // @[CSR.scala 544:43:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111713.4]
  assign _T_926 = insn_ret + insn_call; // @[Bitwise.scala 48:55:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111714.4]
  assign _T_927 = insn_break + io_exception; // @[Bitwise.scala 48:55:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111715.4]
  assign _T_928 = _T_926 + _T_927; // @[Bitwise.scala 48:55:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111716.4]
  assign _T_930 = _T_928 <= 3'h1; // @[CSR.scala 545:79:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111717.4]
  assign _T_932 = _T_930 | reset; // @[CSR.scala 545:9:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111719.4]
  assign _T_934 = _T_932 == 1'h0; // @[CSR.scala 545:9:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111720.4]
  assign _T_937 = insn_wfi & _T_522; // @[CSR.scala 547:18:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111726.4]
  assign _T_940 = _T_937 & _T_519; // @[CSR.scala 547:36:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111728.4]
  assign _GEN_53 = _T_940 ? 1'h1 : reg_wfi; // @[CSR.scala 547:51:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111729.4]
  assign _T_943 = pending_interrupts != 32'h0; // @[CSR.scala 548:28:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111732.4]
  assign _T_944 = _T_943 | exception; // @[CSR.scala 548:32:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111733.4]
  assign _T_945 = _T_944 | io_interrupts_debug; // @[CSR.scala 548:45:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111734.4]
  assign _GEN_54 = _T_945 ? 1'h0 : _GEN_53; // @[CSR.scala 548:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111735.4]
  assign _T_948 = reg_wfi == 1'h0; // @[CSR.scala 549:10:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111738.4]
  assign _T_950 = io_retire == 1'h0; // @[CSR.scala 549:32:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111739.4]
  assign _T_951 = _T_948 | _T_950; // @[CSR.scala 549:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111740.4]
  assign _T_953 = _T_951 | reset; // @[CSR.scala 549:9:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111742.4]
  assign _T_955 = _T_953 == 1'h0; // @[CSR.scala 549:9:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111743.4]
  assign _T_957 = io_retire | exception; // @[CSR.scala 551:22:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111749.4]
  assign _GEN_55 = _T_957 ? 1'h1 : reg_singleStepped; // @[CSR.scala 551:36:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111750.4]
  assign _GEN_56 = _T_522 ? 1'h0 : _GEN_55; // @[CSR.scala 552:25:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111754.4]
  assign _T_972 = reg_singleStepped == 1'h0; // @[CSR.scala 554:10:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111767.4]
  assign _T_975 = _T_972 | _T_950; // @[CSR.scala 554:29:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111769.4]
  assign _T_977 = _T_975 | reset; // @[CSR.scala 554:9:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111771.4]
  assign _T_979 = _T_977 == 1'h0; // @[CSR.scala 554:9:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111772.4]
  assign _T_980 = ~ io_pc; // @[CSR.scala 556:15:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111777.4]
  assign _T_982 = _T_980 | 32'h3; // @[CSR.scala 556:22:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111778.4]
  assign epc = ~ _T_982; // @[CSR.scala 556:13:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111779.4]
  assign _T_993 = cause == 32'h2; // @[package.scala 14:47:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111780.4]
  assign _T_994 = cause == 32'h3; // @[package.scala 14:47:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111781.4]
  assign _T_995 = cause == 32'h4; // @[package.scala 14:47:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111782.4]
  assign _T_996 = cause == 32'h6; // @[package.scala 14:47:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111783.4]
  assign _T_997 = cause == 32'h5; // @[package.scala 14:47:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111784.4]
  assign _T_998 = cause == 32'h7; // @[package.scala 14:47:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111785.4]
  assign _T_999 = cause == 32'h1; // @[package.scala 14:47:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111786.4]
  assign _T_1000 = cause == 32'hd; // @[package.scala 14:47:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111787.4]
  assign _T_1001 = cause == 32'hf; // @[package.scala 14:47:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111788.4]
  assign _T_1002 = cause == 32'hc; // @[package.scala 14:47:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111789.4]
  assign _T_1003 = _T_993 | _T_994; // @[package.scala 14:62:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111790.4]
  assign _T_1004 = _T_1003 | _T_995; // @[package.scala 14:62:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111791.4]
  assign _T_1005 = _T_1004 | _T_996; // @[package.scala 14:62:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111792.4]
  assign _T_1006 = _T_1005 | _T_997; // @[package.scala 14:62:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111793.4]
  assign _T_1007 = _T_1006 | _T_998; // @[package.scala 14:62:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111794.4]
  assign _T_1008 = _T_1007 | _T_999; // @[package.scala 14:62:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111795.4]
  assign _T_1009 = _T_1008 | _T_1000; // @[package.scala 14:62:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111796.4]
  assign _T_1010 = _T_1009 | _T_1001; // @[package.scala 14:62:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111797.4]
  assign _T_1011 = _T_1010 | _T_1002; // @[package.scala 14:62:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111798.4]
  assign write_badaddr = exception & _T_1011; // @[CSR.scala 557:33:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111799.4]
  assign badaddr_value = write_badaddr ? io_badaddr : 32'h0; // @[CSR.scala 561:26:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111800.4]
  assign _T_1021 = causeIsDebugTrigger ? 2'h2 : 2'h1; // @[CSR.scala 571:86:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111810.10]
  assign _T_1022 = causeIsDebugInt ? 2'h3 : _T_1021; // @[CSR.scala 571:56:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111811.10]
  assign _T_1023 = reg_singleStepped ? 3'h4 : {{1'd0}, _T_1022}; // @[CSR.scala 571:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111812.10]
  assign _GEN_57 = _T_519 ? 1'h1 : reg_debug; // @[CSR.scala 568:25:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111807.8]
  assign _GEN_58 = _T_519 ? epc : reg_dpc; // @[CSR.scala 568:25:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111807.8]
  assign _GEN_59 = _T_519 ? _T_1023 : reg_dcsr_cause; // @[CSR.scala 568:25:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111807.8]
  assign _GEN_60 = _T_519 ? 2'h3 : reg_dcsr_prv; // @[CSR.scala 568:25:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111807.8]
  assign _T_1026 = ~ epc; // @[CSR.scala 869:28:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111820.10]
  assign _T_1027 = reg_misa[2]; // @[CSR.scala 869:46:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111821.10]
  assign _T_1029 = _T_1027 == 1'h0; // @[CSR.scala 869:37:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111822.10]
  assign _T_1031 = {_T_1029,1'h1}; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111823.10]
  assign _GEN_5 = {{30'd0}, _T_1031}; // @[CSR.scala 869:31:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111824.10]
  assign _T_1032 = _T_1026 | _GEN_5; // @[CSR.scala 869:31:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111824.10]
  assign _T_1033 = ~ _T_1032; // @[CSR.scala 869:26:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111825.10]
  assign _GEN_67 = {{1'd0}, reg_mstatus_spp}; // @[CSR.scala 575:27:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111819.8]
  assign _GEN_76 = trapToDebug ? _GEN_57 : reg_debug; // @[CSR.scala 567:24:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111805.6]
  assign _GEN_77 = trapToDebug ? _GEN_58 : reg_dpc; // @[CSR.scala 567:24:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111805.6]
  assign _GEN_78 = trapToDebug ? _GEN_59 : reg_dcsr_cause; // @[CSR.scala 567:24:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111805.6]
  assign _GEN_79 = trapToDebug ? _GEN_60 : reg_dcsr_prv; // @[CSR.scala 567:24:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111805.6]
  assign _GEN_86 = trapToDebug ? {{1'd0}, reg_mstatus_spp} : _GEN_67; // @[CSR.scala 567:24:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111805.6]
  assign _GEN_88 = trapToDebug ? reg_mepc : _T_1033; // @[CSR.scala 567:24:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111805.6]
  assign _GEN_89 = trapToDebug ? reg_mcause : cause; // @[CSR.scala 567:24:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111805.6]
  assign _GEN_90 = trapToDebug ? reg_mbadaddr : badaddr_value; // @[CSR.scala 567:24:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111805.6]
  assign _GEN_91 = trapToDebug ? reg_mstatus_mpie : reg_mstatus_mie; // @[CSR.scala 567:24:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111805.6]
  assign _GEN_92 = trapToDebug ? reg_mstatus_mpp : 2'h3; // @[CSR.scala 567:24:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111805.6]
  assign _GEN_93 = trapToDebug ? reg_mstatus_mie : 1'h0; // @[CSR.scala 567:24:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111805.6]
  assign _GEN_94 = exception ? _GEN_76 : reg_debug; // @[CSR.scala 566:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111804.4]
  assign _GEN_95 = exception ? _GEN_77 : reg_dpc; // @[CSR.scala 566:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111804.4]
  assign _GEN_96 = exception ? _GEN_78 : reg_dcsr_cause; // @[CSR.scala 566:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111804.4]
  assign _GEN_97 = exception ? _GEN_79 : reg_dcsr_prv; // @[CSR.scala 566:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111804.4]
  assign _GEN_104 = exception ? _GEN_86 : {{1'd0}, reg_mstatus_spp}; // @[CSR.scala 566:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111804.4]
  assign _GEN_106 = exception ? _GEN_88 : reg_mepc; // @[CSR.scala 566:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111804.4]
  assign _GEN_107 = exception ? _GEN_89 : reg_mcause; // @[CSR.scala 566:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111804.4]
  assign _GEN_108 = exception ? _GEN_90 : reg_mbadaddr; // @[CSR.scala 566:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111804.4]
  assign _GEN_109 = exception ? _GEN_91 : reg_mstatus_mpie; // @[CSR.scala 566:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111804.4]
  assign _GEN_110 = exception ? _GEN_92 : reg_mstatus_mpp; // @[CSR.scala 566:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111804.4]
  assign _GEN_111 = exception ? _GEN_93 : reg_mstatus_mie; // @[CSR.scala 566:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111804.4]
  assign _T_1087 = io_rw_addr[10]; // @[CSR.scala 619:47:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111888.8]
  assign _GEN_113 = _T_1087 ? 1'h0 : _GEN_94; // @[CSR.scala 619:53:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111890.8]
  assign _GEN_114 = _T_1087 ? reg_dpc : reg_mepc; // @[CSR.scala 619:53:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111890.8]
  assign _GEN_115 = _T_1087 ? _GEN_111 : reg_mstatus_mpie; // @[CSR.scala 619:53:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111890.8]
  assign _GEN_116 = _T_1087 ? _GEN_109 : 1'h1; // @[CSR.scala 619:53:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111890.8]
  assign _GEN_117 = _T_1087 ? _GEN_110 : 2'h3; // @[CSR.scala 619:53:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111890.8]
  assign _GEN_131 = insn_ret ? _GEN_114 : tvec; // @[CSR.scala 612:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111876.4]
  assign _GEN_132 = insn_ret ? _GEN_113 : _GEN_94; // @[CSR.scala 612:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111876.4]
  assign _GEN_133 = insn_ret ? _GEN_115 : _GEN_111; // @[CSR.scala 612:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111876.4]
  assign _GEN_134 = insn_ret ? _GEN_116 : _GEN_109; // @[CSR.scala 612:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111876.4]
  assign _GEN_135 = insn_ret ? _GEN_117 : _GEN_110; // @[CSR.scala 612:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111876.4]
  assign _T_1095 = _T_590 ? reg_tselect : 1'h0; // @[Mux.scala 19:72:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111905.4]
  assign _T_1097 = _T_592 ? _T_569 : 32'h0; // @[Mux.scala 19:72:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111906.4]
  assign _T_1099 = _T_594 ? _GEN_52 : 32'h0; // @[Mux.scala 19:72:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111907.4]
  assign _T_1107 = _T_602 ? reg_misa : 32'h0; // @[Mux.scala 19:72:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111911.4]
  assign _T_1109 = _T_604 ? read_mstatus : 32'h0; // @[Mux.scala 19:72:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111912.4]
  assign _T_1111 = _T_606 ? reg_mtvec : 32'h0; // @[Mux.scala 19:72:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111913.4]
  assign _T_1113 = _T_608 ? read_mip : 16'h0; // @[Mux.scala 19:72:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111914.4]
  assign _T_1115 = _T_610 ? reg_mie : 32'h0; // @[Mux.scala 19:72:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111915.4]
  assign _T_1117 = _T_612 ? reg_mscratch : 32'h0; // @[Mux.scala 19:72:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111916.4]
  assign _T_1119 = _T_614 ? reg_mepc : 32'h0; // @[Mux.scala 19:72:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111917.4]
  assign _T_1121 = _T_616 ? reg_mbadaddr : 32'h0; // @[Mux.scala 19:72:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111918.4]
  assign _T_1123 = _T_618 ? reg_mcause : 32'h0; // @[Mux.scala 19:72:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111919.4]
  assign _T_1127 = _T_622 ? _T_586 : 32'h0; // @[Mux.scala 19:72:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111921.4]
  assign _T_1129 = _T_624 ? reg_dpc : 32'h0; // @[Mux.scala 19:72:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111922.4]
  assign _T_1131 = _T_626 ? reg_dscratch : 32'h0; // @[Mux.scala 19:72:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111923.4]
  assign _T_1133 = _T_628 ? reg_fflags : 5'h0; // @[Mux.scala 19:72:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111924.4]
  assign _T_1135 = _T_630 ? reg_frm : 3'h0; // @[Mux.scala 19:72:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111925.4]
  assign _T_1137 = _T_632 ? _T_587 : 8'h0; // @[Mux.scala 19:72:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111926.4]
  assign _GEN_7 = {{31'd0}, _T_1095}; // @[Mux.scala 19:72:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111927.4]
  assign _T_1138 = _GEN_7 | _T_1097; // @[Mux.scala 19:72:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111927.4]
  assign _T_1139 = _T_1138 | _T_1099; // @[Mux.scala 19:72:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111928.4]
  assign _T_1143 = _T_1139 | _T_1107; // @[Mux.scala 19:72:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111932.4]
  assign _T_1144 = _T_1143 | _T_1109; // @[Mux.scala 19:72:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111933.4]
  assign _T_1145 = _T_1144 | _T_1111; // @[Mux.scala 19:72:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111934.4]
  assign _GEN_8 = {{16'd0}, _T_1113}; // @[Mux.scala 19:72:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111935.4]
  assign _T_1146 = _T_1145 | _GEN_8; // @[Mux.scala 19:72:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111935.4]
  assign _T_1147 = _T_1146 | _T_1115; // @[Mux.scala 19:72:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111936.4]
  assign _T_1148 = _T_1147 | _T_1117; // @[Mux.scala 19:72:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111937.4]
  assign _T_1149 = _T_1148 | _T_1119; // @[Mux.scala 19:72:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111938.4]
  assign _T_1150 = _T_1149 | _T_1121; // @[Mux.scala 19:72:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111939.4]
  assign _T_1151 = _T_1150 | _T_1123; // @[Mux.scala 19:72:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111940.4]
  assign _T_1153 = _T_1151 | _T_1127; // @[Mux.scala 19:72:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111942.4]
  assign _T_1154 = _T_1153 | _T_1129; // @[Mux.scala 19:72:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111943.4]
  assign _T_1155 = _T_1154 | _T_1131; // @[Mux.scala 19:72:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111944.4]
  assign _GEN_9 = {{27'd0}, _T_1133}; // @[Mux.scala 19:72:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111945.4]
  assign _T_1156 = _T_1155 | _GEN_9; // @[Mux.scala 19:72:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111945.4]
  assign _GEN_10 = {{29'd0}, _T_1135}; // @[Mux.scala 19:72:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111946.4]
  assign _T_1157 = _T_1156 | _GEN_10; // @[Mux.scala 19:72:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111946.4]
  assign _GEN_11 = {{24'd0}, _T_1137}; // @[Mux.scala 19:72:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111947.4]
  assign _T_1158 = _T_1157 | _GEN_11; // @[Mux.scala 19:72:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111947.4]
  assign _T_1161 = reg_fflags | io_fcsr_flags_bits; // @[CSR.scala 639:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111953.6]
  assign _GEN_136 = io_fcsr_flags_valid ? _T_1161 : reg_fflags; // @[CSR.scala 638:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111952.4]
  assign _T_1167 = io_rw_cmd == 3'h1; // @[package.scala 14:47:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111958.4]
  assign _T_1169 = _T_637 | _T_1167; // @[package.scala 14:62:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111960.4]
  assign _T_1174 = {{69'd0}, wdata}; // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111965.8]
  assign _T_1178 = _T_1174[3]; // @[CSR.scala 644:47:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111974.8]
  assign _T_1182 = _T_1174[7]; // @[CSR.scala 644:47:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111982.8]
  assign _T_1186 = _T_1174[14:13]; // @[CSR.scala 644:47:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111990.8]
  assign _T_1205 = _T_1186 != 2'h0; // @[CSR.scala 663:73:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112028.8]
  assign _T_1209 = _T_1205 ? 2'h3 : 2'h0; // @[Bitwise.scala 72:12:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112030.8]
  assign _GEN_137 = _T_604 ? _T_1178 : _GEN_133; // @[CSR.scala 643:39:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111962.6]
  assign _GEN_138 = _T_604 ? _T_1182 : _GEN_134; // @[CSR.scala 643:39:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111962.6]
  assign _GEN_139 = _T_604 ? _T_1209 : reg_mstatus_fs; // @[CSR.scala 643:39:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111962.6]
  assign _T_1211 = wdata[5]; // @[CSR.scala 668:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112034.8]
  assign _T_1212 = ~ wdata; // @[CSR.scala 670:23:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112035.8]
  assign _T_1214 = _T_1211 == 1'h0; // @[CSR.scala 670:33:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112036.8]
  assign _GEN_12 = {{3'd0}, _T_1214}; // @[CSR.scala 670:36:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112037.8]
  assign _T_1215 = _GEN_12 << 3; // @[CSR.scala 670:36:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112037.8]
  assign _GEN_13 = {{28'd0}, _T_1215}; // @[CSR.scala 670:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112038.8]
  assign _T_1216 = _T_1212 | _GEN_13; // @[CSR.scala 670:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112038.8]
  assign _T_1217 = ~ _T_1216; // @[CSR.scala 670:21:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112039.8]
  assign _T_1218 = _T_1217 & 32'h1021; // @[CSR.scala 670:53:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112040.8]
  assign _T_1220 = reg_misa & 32'hffffefde; // @[CSR.scala 670:71:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112042.8]
  assign _T_1221 = _T_1218 | _T_1220; // @[CSR.scala 670:60:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112043.8]
  assign _GEN_140 = _T_602 ? _T_1221 : reg_misa; // @[CSR.scala 666:36:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112033.6]
  assign _T_1278 = wdata & 32'h888; // @[CSR.scala 684:59:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112110.8]
  assign _GEN_141 = _T_610 ? _T_1278 : reg_mie; // @[CSR.scala 684:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112109.6]
  assign _T_1285 = _T_1212 | _GEN_5; // @[CSR.scala 869:31:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112118.8]
  assign _T_1286 = ~ _T_1285; // @[CSR.scala 869:26:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112119.8]
  assign _GEN_142 = _T_614 ? _T_1286 : _GEN_106; // @[CSR.scala 685:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112113.6]
  assign _GEN_143 = _T_612 ? wdata : reg_mscratch; // @[CSR.scala 686:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112122.6]
  assign _T_1289 = _T_1212 | 32'h2; // @[CSR.scala 688:64:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112127.8]
  assign _T_1290 = wdata[0]; // @[CSR.scala 688:81:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112128.8]
  assign _T_1293 = _T_1290 ? 6'h3c : 6'h0; // @[CSR.scala 688:75:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112129.8]
  assign _GEN_15 = {{26'd0}, _T_1293}; // @[CSR.scala 688:70:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112130.8]
  assign _T_1294 = _T_1289 | _GEN_15; // @[CSR.scala 688:70:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112130.8]
  assign _T_1295 = ~ _T_1294; // @[CSR.scala 688:55:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112131.8]
  assign _GEN_144 = _T_606 ? _T_1295 : reg_mtvec; // @[CSR.scala 688:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112125.6]
  assign _T_1297 = wdata & 32'h8000000f; // @[CSR.scala 689:62:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112135.8]
  assign _GEN_145 = _T_618 ? _T_1297 : _GEN_107; // @[CSR.scala 689:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112134.6]
  assign _GEN_146 = _T_616 ? wdata : _GEN_108; // @[CSR.scala 690:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112138.6]
  assign _GEN_147 = _T_628 ? wdata : {{27'd0}, _GEN_136}; // @[CSR.scala 702:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112142.6]
  assign _GEN_148 = _T_630 ? wdata : {{29'd0}, reg_frm}; // @[CSR.scala 703:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112145.6]
  assign _T_1299 = wdata[31:5]; // @[CSR.scala 704:80:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112150.8]
  assign _GEN_149 = _T_632 ? wdata : _GEN_147; // @[CSR.scala 704:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112148.6]
  assign _GEN_150 = _T_632 ? {{5'd0}, _T_1299} : _GEN_148; // @[CSR.scala 704:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112148.6]
  assign _T_1306 = wdata[2]; // @[CSR.scala 708:43:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112161.8]
  assign _T_1311 = wdata[11]; // @[CSR.scala 708:43:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112171.8]
  assign _T_1312 = wdata[12]; // @[CSR.scala 708:43:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112173.8]
  assign _T_1315 = wdata[15]; // @[CSR.scala 708:43:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112179.8]
  assign _GEN_151 = _T_622 ? _T_1306 : reg_dcsr_step; // @[CSR.scala 707:38:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112153.6]
  assign _GEN_152 = _T_622 ? _T_1315 : reg_dcsr_ebreakm; // @[CSR.scala 707:38:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112153.6]
  assign _T_1321 = _T_1212 | 32'h3; // @[CSR.scala 715:64:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112192.8]
  assign _T_1322 = ~ _T_1321; // @[CSR.scala 715:55:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112193.8]
  assign _GEN_153 = _T_624 ? _T_1322 : _GEN_95; // @[CSR.scala 715:42:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112190.6]
  assign _GEN_154 = _T_626 ? wdata : reg_dscratch; // @[CSR.scala 716:42:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112196.6]
  assign _GEN_155 = _T_590 ? wdata : {{31'd0}, reg_tselect}; // @[CSR.scala 757:41:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112199.6]
  assign _T_1325 = _GEN_38 == 1'h0; // @[CSR.scala 760:13:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112202.6]
  assign _T_1326 = _T_1325 | reg_debug; // @[CSR.scala 760:31:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112203.6]
  assign _T_1333 = wdata[1]; // @[CSR.scala 762:48:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112213.10]
  assign _T_1339 = wdata[8:7]; // @[CSR.scala 762:48:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112225.10]
  assign _T_1345 = wdata[27]; // @[CSR.scala 762:48:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112237.10]
  assign _T_1347 = _T_1345 & reg_debug; // @[CSR.scala 763:36:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112241.10]
  assign _GEN_158 = 1'h0 == reg_tselect ? _T_1345 : reg_bp_0_control_dmode; // @[CSR.scala 764:22:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112242.10]
  assign _GEN_159 = reg_tselect ? _T_1345 : reg_bp_1_control_dmode; // @[CSR.scala 764:22:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112242.10]
  assign _GEN_164 = 1'h0 == reg_tselect ? _T_1312 : reg_bp_0_control_action; // @[CSR.scala 764:22:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112242.10]
  assign _GEN_165 = reg_tselect ? _T_1312 : reg_bp_1_control_action; // @[CSR.scala 764:22:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112242.10]
  assign _GEN_166 = 1'h0 == reg_tselect ? _T_1311 : reg_bp_0_control_chain; // @[CSR.scala 764:22:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112242.10]
  assign _GEN_170 = 1'h0 == reg_tselect ? _T_1339 : reg_bp_0_control_tmatch; // @[CSR.scala 764:22:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112242.10]
  assign _GEN_171 = reg_tselect ? _T_1339 : reg_bp_1_control_tmatch; // @[CSR.scala 764:22:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112242.10]
  assign _GEN_180 = 1'h0 == reg_tselect ? _T_1306 : reg_bp_0_control_x; // @[CSR.scala 764:22:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112242.10]
  assign _GEN_181 = reg_tselect ? _T_1306 : reg_bp_1_control_x; // @[CSR.scala 764:22:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112242.10]
  assign _GEN_182 = 1'h0 == reg_tselect ? _T_1333 : reg_bp_0_control_w; // @[CSR.scala 764:22:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112242.10]
  assign _GEN_183 = reg_tselect ? _T_1333 : reg_bp_1_control_w; // @[CSR.scala 764:22:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112242.10]
  assign _GEN_184 = 1'h0 == reg_tselect ? _T_1290 : reg_bp_0_control_r; // @[CSR.scala 764:22:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112242.10]
  assign _GEN_185 = reg_tselect ? _T_1290 : reg_bp_1_control_r; // @[CSR.scala 764:22:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112242.10]
  assign _GEN_186 = 1'h0 == reg_tselect ? _T_1347 : _GEN_158; // @[CSR.scala 765:28:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112243.10]
  assign _GEN_187 = reg_tselect ? _T_1347 : _GEN_159; // @[CSR.scala 765:28:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112243.10]
  assign _T_1348 = _T_1347 & _T_1312; // @[CSR.scala 766:38:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112244.10]
  assign _GEN_188 = 1'h0 == reg_tselect ? _T_1348 : _GEN_164; // @[CSR.scala 766:29:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112245.10]
  assign _GEN_189 = reg_tselect ? _T_1348 : _GEN_165; // @[CSR.scala 766:29:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112245.10]
  assign _GEN_192 = _T_592 ? _GEN_186 : reg_bp_0_control_dmode; // @[CSR.scala 761:42:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112205.8]
  assign _GEN_193 = _T_592 ? _GEN_187 : reg_bp_1_control_dmode; // @[CSR.scala 761:42:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112205.8]
  assign _GEN_198 = _T_592 ? _GEN_188 : reg_bp_0_control_action; // @[CSR.scala 761:42:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112205.8]
  assign _GEN_199 = _T_592 ? _GEN_189 : reg_bp_1_control_action; // @[CSR.scala 761:42:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112205.8]
  assign _GEN_200 = _T_592 ? _GEN_166 : reg_bp_0_control_chain; // @[CSR.scala 761:42:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112205.8]
  assign _GEN_204 = _T_592 ? _GEN_170 : reg_bp_0_control_tmatch; // @[CSR.scala 761:42:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112205.8]
  assign _GEN_205 = _T_592 ? _GEN_171 : reg_bp_1_control_tmatch; // @[CSR.scala 761:42:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112205.8]
  assign _GEN_214 = _T_592 ? _GEN_180 : reg_bp_0_control_x; // @[CSR.scala 761:42:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112205.8]
  assign _GEN_215 = _T_592 ? _GEN_181 : reg_bp_1_control_x; // @[CSR.scala 761:42:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112205.8]
  assign _GEN_216 = _T_592 ? _GEN_182 : reg_bp_0_control_w; // @[CSR.scala 761:42:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112205.8]
  assign _GEN_217 = _T_592 ? _GEN_183 : reg_bp_1_control_w; // @[CSR.scala 761:42:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112205.8]
  assign _GEN_218 = _T_592 ? _GEN_184 : reg_bp_0_control_r; // @[CSR.scala 761:42:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112205.8]
  assign _GEN_219 = _T_592 ? _GEN_185 : reg_bp_1_control_r; // @[CSR.scala 761:42:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112205.8]
  assign _GEN_220 = 1'h0 == reg_tselect ? wdata : reg_bp_0_address; // @[CSR.scala 768:55:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112248.10]
  assign _GEN_221 = reg_tselect ? wdata : reg_bp_1_address; // @[CSR.scala 768:55:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112248.10]
  assign _GEN_222 = _T_594 ? _GEN_220 : reg_bp_0_address; // @[CSR.scala 768:42:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112247.8]
  assign _GEN_223 = _T_594 ? _GEN_221 : reg_bp_1_address; // @[CSR.scala 768:42:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112247.8]
  assign _GEN_226 = _T_1326 ? _GEN_192 : reg_bp_0_control_dmode; // @[CSR.scala 760:45:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112204.6]
  assign _GEN_227 = _T_1326 ? _GEN_193 : reg_bp_1_control_dmode; // @[CSR.scala 760:45:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112204.6]
  assign _GEN_232 = _T_1326 ? _GEN_198 : reg_bp_0_control_action; // @[CSR.scala 760:45:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112204.6]
  assign _GEN_233 = _T_1326 ? _GEN_199 : reg_bp_1_control_action; // @[CSR.scala 760:45:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112204.6]
  assign _GEN_234 = _T_1326 ? _GEN_200 : reg_bp_0_control_chain; // @[CSR.scala 760:45:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112204.6]
  assign _GEN_238 = _T_1326 ? _GEN_204 : reg_bp_0_control_tmatch; // @[CSR.scala 760:45:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112204.6]
  assign _GEN_239 = _T_1326 ? _GEN_205 : reg_bp_1_control_tmatch; // @[CSR.scala 760:45:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112204.6]
  assign _GEN_248 = _T_1326 ? _GEN_214 : reg_bp_0_control_x; // @[CSR.scala 760:45:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112204.6]
  assign _GEN_249 = _T_1326 ? _GEN_215 : reg_bp_1_control_x; // @[CSR.scala 760:45:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112204.6]
  assign _GEN_250 = _T_1326 ? _GEN_216 : reg_bp_0_control_w; // @[CSR.scala 760:45:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112204.6]
  assign _GEN_251 = _T_1326 ? _GEN_217 : reg_bp_1_control_w; // @[CSR.scala 760:45:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112204.6]
  assign _GEN_252 = _T_1326 ? _GEN_218 : reg_bp_0_control_r; // @[CSR.scala 760:45:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112204.6]
  assign _GEN_253 = _T_1326 ? _GEN_219 : reg_bp_1_control_r; // @[CSR.scala 760:45:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112204.6]
  assign _GEN_254 = _T_1326 ? _GEN_222 : reg_bp_0_address; // @[CSR.scala 760:45:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112204.6]
  assign _GEN_255 = _T_1326 ? _GEN_223 : reg_bp_1_address; // @[CSR.scala 760:45:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112204.6]
  assign _GEN_256 = _T_1169 ? _GEN_137 : _GEN_133; // @[CSR.scala 642:49:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111961.4]
  assign _GEN_257 = _T_1169 ? _GEN_138 : _GEN_134; // @[CSR.scala 642:49:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111961.4]
  assign _GEN_258 = _T_1169 ? _GEN_139 : reg_mstatus_fs; // @[CSR.scala 642:49:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111961.4]
  assign _GEN_259 = _T_1169 ? _GEN_140 : reg_misa; // @[CSR.scala 642:49:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111961.4]
  assign _GEN_260 = _T_1169 ? _GEN_141 : reg_mie; // @[CSR.scala 642:49:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111961.4]
  assign _GEN_261 = _T_1169 ? _GEN_142 : _GEN_106; // @[CSR.scala 642:49:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111961.4]
  assign _GEN_262 = _T_1169 ? _GEN_143 : reg_mscratch; // @[CSR.scala 642:49:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111961.4]
  assign _GEN_263 = _T_1169 ? _GEN_144 : reg_mtvec; // @[CSR.scala 642:49:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111961.4]
  assign _GEN_264 = _T_1169 ? _GEN_145 : _GEN_107; // @[CSR.scala 642:49:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111961.4]
  assign _GEN_265 = _T_1169 ? _GEN_146 : _GEN_108; // @[CSR.scala 642:49:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111961.4]
  assign _GEN_266 = _T_1169 ? _GEN_149 : {{27'd0}, _GEN_136}; // @[CSR.scala 642:49:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111961.4]
  assign _GEN_267 = _T_1169 ? _GEN_150 : {{29'd0}, reg_frm}; // @[CSR.scala 642:49:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111961.4]
  assign _GEN_268 = _T_1169 ? _GEN_151 : reg_dcsr_step; // @[CSR.scala 642:49:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111961.4]
  assign _GEN_269 = _T_1169 ? _GEN_152 : reg_dcsr_ebreakm; // @[CSR.scala 642:49:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111961.4]
  assign _GEN_270 = _T_1169 ? _GEN_153 : _GEN_95; // @[CSR.scala 642:49:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111961.4]
  assign _GEN_271 = _T_1169 ? _GEN_154 : reg_dscratch; // @[CSR.scala 642:49:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111961.4]
  assign _GEN_272 = _T_1169 ? _GEN_155 : {{31'd0}, reg_tselect}; // @[CSR.scala 642:49:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111961.4]
  assign _GEN_275 = _T_1169 ? _GEN_226 : reg_bp_0_control_dmode; // @[CSR.scala 642:49:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111961.4]
  assign _GEN_276 = _T_1169 ? _GEN_227 : reg_bp_1_control_dmode; // @[CSR.scala 642:49:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111961.4]
  assign _GEN_281 = _T_1169 ? _GEN_232 : reg_bp_0_control_action; // @[CSR.scala 642:49:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111961.4]
  assign _GEN_282 = _T_1169 ? _GEN_233 : reg_bp_1_control_action; // @[CSR.scala 642:49:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111961.4]
  assign _GEN_283 = _T_1169 ? _GEN_234 : reg_bp_0_control_chain; // @[CSR.scala 642:49:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111961.4]
  assign _GEN_287 = _T_1169 ? _GEN_238 : reg_bp_0_control_tmatch; // @[CSR.scala 642:49:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111961.4]
  assign _GEN_288 = _T_1169 ? _GEN_239 : reg_bp_1_control_tmatch; // @[CSR.scala 642:49:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111961.4]
  assign _GEN_297 = _T_1169 ? _GEN_248 : reg_bp_0_control_x; // @[CSR.scala 642:49:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111961.4]
  assign _GEN_298 = _T_1169 ? _GEN_249 : reg_bp_1_control_x; // @[CSR.scala 642:49:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111961.4]
  assign _GEN_299 = _T_1169 ? _GEN_250 : reg_bp_0_control_w; // @[CSR.scala 642:49:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111961.4]
  assign _GEN_300 = _T_1169 ? _GEN_251 : reg_bp_1_control_w; // @[CSR.scala 642:49:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111961.4]
  assign _GEN_301 = _T_1169 ? _GEN_252 : reg_bp_0_control_r; // @[CSR.scala 642:49:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111961.4]
  assign _GEN_302 = _T_1169 ? _GEN_253 : reg_bp_1_control_r; // @[CSR.scala 642:49:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111961.4]
  assign _GEN_303 = _T_1169 ? _GEN_254 : reg_bp_0_address; // @[CSR.scala 642:49:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111961.4]
  assign _GEN_304 = _T_1169 ? _GEN_255 : reg_bp_1_address; // @[CSR.scala 642:49:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111961.4]
  assign _GEN_305 = reset ? 1'h0 : _GEN_281; // @[CSR.scala 805:18:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112267.4]
  assign _GEN_306 = reset ? 1'h0 : _GEN_275; // @[CSR.scala 805:18:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112267.4]
  assign _GEN_307 = reset ? 1'h0 : _GEN_301; // @[CSR.scala 805:18:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112267.4]
  assign _GEN_308 = reset ? 1'h0 : _GEN_299; // @[CSR.scala 805:18:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112267.4]
  assign _GEN_309 = reset ? 1'h0 : _GEN_297; // @[CSR.scala 805:18:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112267.4]
  assign _GEN_310 = reset ? 1'h0 : _GEN_282; // @[CSR.scala 805:18:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112283.4]
  assign _GEN_311 = reset ? 1'h0 : _GEN_276; // @[CSR.scala 805:18:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112283.4]
  assign _GEN_312 = reset ? 1'h0 : _GEN_302; // @[CSR.scala 805:18:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112283.4]
  assign _GEN_313 = reset ? 1'h0 : _GEN_300; // @[CSR.scala 805:18:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112283.4]
  assign _GEN_314 = reset ? 1'h0 : _GEN_298; // @[CSR.scala 805:18:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112283.4]
  assign _T_1387 = io_retire > 1'h0; // @[CSR.scala 825:26:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112293.4]
  assign _T_1388 = _T_1387 | io_trace_0_exception; // @[CSR.scala 825:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112294.4]
  assign io_rw_rdata = _T_1158;
  assign io_decode_0_fp_illegal = _T_679;
  assign io_decode_0_read_illegal = _T_806;
  assign io_decode_0_write_illegal = _T_810;
  assign io_decode_0_write_flush = _T_823;
  assign io_csr_stall = reg_wfi;
  assign io_eret = _T_906;
  assign io_singleStep = _T_909;
  assign io_status_debug = reg_debug;
  assign io_status_isa = reg_misa;
  assign io_status_dprv = 2'h3;
  assign io_status_prv = 2'h3;
  assign io_status_sd = _T_916;
  assign io_status_zero2 = 27'h0;
  assign io_status_sxl = 2'h0;
  assign io_status_uxl = 2'h0;
  assign io_status_sd_rv32 = io_status_sd;
  assign io_status_zero1 = 8'h0;
  assign io_status_tsr = 1'h0;
  assign io_status_tw = 1'h0;
  assign io_status_tvm = 1'h0;
  assign io_status_mxr = 1'h0;
  assign io_status_sum = 1'h0;
  assign io_status_mprv = 1'h0;
  assign io_status_xs = 2'h0;
  assign io_status_fs = reg_mstatus_fs;
  assign io_status_mpp = reg_mstatus_mpp;
  assign io_status_hpp = 2'h0;
  assign io_status_spp = reg_mstatus_spp;
  assign io_status_mpie = reg_mstatus_mpie;
  assign io_status_hpie = 1'h0;
  assign io_status_spie = 1'h0;
  assign io_status_upie = 1'h0;
  assign io_status_mie = reg_mstatus_mie;
  assign io_status_hie = 1'h0;
  assign io_status_sie = 1'h0;
  assign io_status_uie = 1'h0;
  assign io_evec = _GEN_131;
  assign io_time = _T_287[31:0];
  assign io_fcsr_rm = reg_frm;
  assign io_interrupt = _T_524;
  assign io_interrupt_cause = interruptCause;
  assign io_bp_0_control_action = reg_bp_0_control_action;
  assign io_bp_0_control_chain = reg_bp_0_control_chain;
  assign io_bp_0_control_tmatch = reg_bp_0_control_tmatch;
  assign io_bp_0_control_x = reg_bp_0_control_x;
  assign io_bp_0_control_w = reg_bp_0_control_w;
  assign io_bp_0_control_r = reg_bp_0_control_r;
  assign io_bp_0_address = reg_bp_0_address;
  assign io_bp_1_control_action = reg_bp_1_control_action;
  assign io_bp_1_control_tmatch = reg_bp_1_control_tmatch;
  assign io_bp_1_control_x = reg_bp_1_control_x;
  assign io_bp_1_control_w = reg_bp_1_control_w;
  assign io_bp_1_control_r = reg_bp_1_control_r;
  assign io_bp_1_address = reg_bp_1_address;
  assign io_trace_0_valid = _T_1388;
  assign io_trace_0_iaddr = io_pc;
  assign io_trace_0_insn = io_inst_0;
  assign io_trace_0_exception = exception;
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifndef verilator
      #0.002 begin end
    `endif
  `ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{$random}};
  reg_mstatus_fs = _RAND_0[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{$random}};
  reg_mstatus_mpp = _RAND_1[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{$random}};
  reg_mstatus_spp = _RAND_2[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{$random}};
  reg_mstatus_mpie = _RAND_3[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{$random}};
  reg_mstatus_mie = _RAND_4[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{$random}};
  reg_dcsr_ebreakm = _RAND_5[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{$random}};
  reg_dcsr_cause = _RAND_6[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{$random}};
  reg_dcsr_step = _RAND_7[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{$random}};
  reg_dcsr_prv = _RAND_8[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {1{$random}};
  reg_debug = _RAND_9[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_10 = {1{$random}};
  reg_dpc = _RAND_10[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_11 = {1{$random}};
  reg_dscratch = _RAND_11[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_12 = {1{$random}};
  reg_singleStepped = _RAND_12[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_13 = {1{$random}};
  reg_tselect = _RAND_13[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_14 = {1{$random}};
  reg_bp_0_control_dmode = _RAND_14[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_15 = {1{$random}};
  reg_bp_0_control_action = _RAND_15[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_16 = {1{$random}};
  reg_bp_0_control_chain = _RAND_16[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_17 = {1{$random}};
  reg_bp_0_control_tmatch = _RAND_17[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_18 = {1{$random}};
  reg_bp_0_control_x = _RAND_18[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_19 = {1{$random}};
  reg_bp_0_control_w = _RAND_19[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_20 = {1{$random}};
  reg_bp_0_control_r = _RAND_20[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_21 = {1{$random}};
  reg_bp_0_address = _RAND_21[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_22 = {1{$random}};
  reg_bp_1_control_dmode = _RAND_22[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_23 = {1{$random}};
  reg_bp_1_control_action = _RAND_23[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_24 = {1{$random}};
  reg_bp_1_control_tmatch = _RAND_24[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_25 = {1{$random}};
  reg_bp_1_control_x = _RAND_25[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_26 = {1{$random}};
  reg_bp_1_control_w = _RAND_26[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_27 = {1{$random}};
  reg_bp_1_control_r = _RAND_27[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_28 = {1{$random}};
  reg_bp_1_address = _RAND_28[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_29 = {1{$random}};
  reg_mie = _RAND_29[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_30 = {1{$random}};
  reg_mepc = _RAND_30[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_31 = {1{$random}};
  reg_mcause = _RAND_31[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_32 = {1{$random}};
  reg_mbadaddr = _RAND_32[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_33 = {1{$random}};
  reg_mscratch = _RAND_33[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_34 = {1{$random}};
  reg_mtvec = _RAND_34[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_35 = {1{$random}};
  reg_wfi = _RAND_35[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_36 = {1{$random}};
  reg_fflags = _RAND_36[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_37 = {1{$random}};
  reg_frm = _RAND_37[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_38 = {1{$random}};
  _T_278 = _RAND_38[5:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_39 = {2{$random}};
  _T_282 = _RAND_39[57:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_40 = {1{$random}};
  reg_misa = _RAND_40[31:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if (reset) begin
      reg_mstatus_fs <= 2'h0;
    end else begin
      if (_T_1169) begin
        if (_T_604) begin
          if (_T_1205) begin
            reg_mstatus_fs <= 2'h3;
          end else begin
            reg_mstatus_fs <= 2'h0;
          end
        end
      end
    end
    if (reset) begin
      reg_mstatus_mpp <= 2'h3;
    end else begin
      if (insn_ret) begin
        if (_T_1087) begin
          if (exception) begin
            if (!(trapToDebug)) begin
              reg_mstatus_mpp <= 2'h3;
            end
          end
        end else begin
          reg_mstatus_mpp <= 2'h3;
        end
      end else begin
        if (exception) begin
          if (!(trapToDebug)) begin
            reg_mstatus_mpp <= 2'h3;
          end
        end
      end
    end
    if (reset) begin
      reg_mstatus_spp <= 1'h0;
    end else begin
      reg_mstatus_spp <= _GEN_104[0];
    end
    if (reset) begin
      reg_mstatus_mpie <= 1'h0;
    end else begin
      if (_T_1169) begin
        if (_T_604) begin
          reg_mstatus_mpie <= _T_1182;
        end else begin
          if (insn_ret) begin
            if (_T_1087) begin
              if (exception) begin
                if (!(trapToDebug)) begin
                  reg_mstatus_mpie <= reg_mstatus_mie;
                end
              end
            end else begin
              reg_mstatus_mpie <= 1'h1;
            end
          end else begin
            if (exception) begin
              if (!(trapToDebug)) begin
                reg_mstatus_mpie <= reg_mstatus_mie;
              end
            end
          end
        end
      end else begin
        if (insn_ret) begin
          if (_T_1087) begin
            if (exception) begin
              if (!(trapToDebug)) begin
                reg_mstatus_mpie <= reg_mstatus_mie;
              end
            end
          end else begin
            reg_mstatus_mpie <= 1'h1;
          end
        end else begin
          if (exception) begin
            if (!(trapToDebug)) begin
              reg_mstatus_mpie <= reg_mstatus_mie;
            end
          end
        end
      end
    end
    if (reset) begin
      reg_mstatus_mie <= 1'h0;
    end else begin
      if (_T_1169) begin
        if (_T_604) begin
          reg_mstatus_mie <= _T_1178;
        end else begin
          if (insn_ret) begin
            if (_T_1087) begin
              if (exception) begin
                if (!(trapToDebug)) begin
                  reg_mstatus_mie <= 1'h0;
                end
              end
            end else begin
              reg_mstatus_mie <= reg_mstatus_mpie;
            end
          end else begin
            if (exception) begin
              if (!(trapToDebug)) begin
                reg_mstatus_mie <= 1'h0;
              end
            end
          end
        end
      end else begin
        if (insn_ret) begin
          if (_T_1087) begin
            if (exception) begin
              if (!(trapToDebug)) begin
                reg_mstatus_mie <= 1'h0;
              end
            end
          end else begin
            reg_mstatus_mie <= reg_mstatus_mpie;
          end
        end else begin
          if (exception) begin
            if (!(trapToDebug)) begin
              reg_mstatus_mie <= 1'h0;
            end
          end
        end
      end
    end
    if (reset) begin
      reg_dcsr_ebreakm <= 1'h0;
    end else begin
      if (_T_1169) begin
        if (_T_622) begin
          reg_dcsr_ebreakm <= _T_1315;
        end
      end
    end
    if (reset) begin
      reg_dcsr_cause <= 3'h0;
    end else begin
      if (exception) begin
        if (trapToDebug) begin
          if (_T_519) begin
            if (reg_singleStepped) begin
              reg_dcsr_cause <= 3'h4;
            end else begin
              reg_dcsr_cause <= {{1'd0}, _T_1022};
            end
          end
        end
      end
    end
    if (reset) begin
      reg_dcsr_step <= 1'h0;
    end else begin
      if (_T_1169) begin
        if (_T_622) begin
          reg_dcsr_step <= _T_1306;
        end
      end
    end
    if (reset) begin
      reg_dcsr_prv <= 2'h3;
    end else begin
      if (exception) begin
        if (trapToDebug) begin
          if (_T_519) begin
            reg_dcsr_prv <= 2'h3;
          end
        end
      end
    end
    if (reset) begin
      reg_debug <= 1'h0;
    end else begin
      if (insn_ret) begin
        if (_T_1087) begin
          reg_debug <= 1'h0;
        end else begin
          if (exception) begin
            if (trapToDebug) begin
              if (_T_519) begin
                reg_debug <= 1'h1;
              end
            end
          end
        end
      end else begin
        if (exception) begin
          if (trapToDebug) begin
            if (_T_519) begin
              reg_debug <= 1'h1;
            end
          end
        end
      end
    end
    if (_T_1169) begin
      if (_T_624) begin
        reg_dpc <= _T_1322;
      end else begin
        if (exception) begin
          if (trapToDebug) begin
            if (_T_519) begin
              reg_dpc <= epc;
            end
          end
        end
      end
    end else begin
      if (exception) begin
        if (trapToDebug) begin
          if (_T_519) begin
            reg_dpc <= epc;
          end
        end
      end
    end
    if (_T_1169) begin
      if (_T_626) begin
        reg_dscratch <= wdata;
      end
    end
    if (_T_522) begin
      reg_singleStepped <= 1'h0;
    end else begin
      if (_T_957) begin
        reg_singleStepped <= 1'h1;
      end
    end
    reg_tselect <= _GEN_272[0];
    if (reset) begin
      reg_bp_0_control_dmode <= 1'h0;
    end else begin
      if (_T_1169) begin
        if (_T_1326) begin
          if (_T_592) begin
            if (1'h0 == reg_tselect) begin
              reg_bp_0_control_dmode <= _T_1347;
            end else begin
              if (1'h0 == reg_tselect) begin
                reg_bp_0_control_dmode <= _T_1345;
              end
            end
          end
        end
      end
    end
    if (reset) begin
      reg_bp_0_control_action <= 1'h0;
    end else begin
      if (_T_1169) begin
        if (_T_1326) begin
          if (_T_592) begin
            if (1'h0 == reg_tselect) begin
              reg_bp_0_control_action <= _T_1348;
            end else begin
              if (1'h0 == reg_tselect) begin
                reg_bp_0_control_action <= _T_1312;
              end
            end
          end
        end
      end
    end
    if (_T_1169) begin
      if (_T_1326) begin
        if (_T_592) begin
          if (1'h0 == reg_tselect) begin
            reg_bp_0_control_chain <= _T_1311;
          end
        end
      end
    end
    if (_T_1169) begin
      if (_T_1326) begin
        if (_T_592) begin
          if (1'h0 == reg_tselect) begin
            reg_bp_0_control_tmatch <= _T_1339;
          end
        end
      end
    end
    if (reset) begin
      reg_bp_0_control_x <= 1'h0;
    end else begin
      if (_T_1169) begin
        if (_T_1326) begin
          if (_T_592) begin
            if (1'h0 == reg_tselect) begin
              reg_bp_0_control_x <= _T_1306;
            end
          end
        end
      end
    end
    if (reset) begin
      reg_bp_0_control_w <= 1'h0;
    end else begin
      if (_T_1169) begin
        if (_T_1326) begin
          if (_T_592) begin
            if (1'h0 == reg_tselect) begin
              reg_bp_0_control_w <= _T_1333;
            end
          end
        end
      end
    end
    if (reset) begin
      reg_bp_0_control_r <= 1'h0;
    end else begin
      if (_T_1169) begin
        if (_T_1326) begin
          if (_T_592) begin
            if (1'h0 == reg_tselect) begin
              reg_bp_0_control_r <= _T_1290;
            end
          end
        end
      end
    end
    if (_T_1169) begin
      if (_T_1326) begin
        if (_T_594) begin
          if (1'h0 == reg_tselect) begin
            reg_bp_0_address <= wdata;
          end
        end
      end
    end
    if (reset) begin
      reg_bp_1_control_dmode <= 1'h0;
    end else begin
      if (_T_1169) begin
        if (_T_1326) begin
          if (_T_592) begin
            if (reg_tselect) begin
              reg_bp_1_control_dmode <= _T_1347;
            end else begin
              if (reg_tselect) begin
                reg_bp_1_control_dmode <= _T_1345;
              end
            end
          end
        end
      end
    end
    if (reset) begin
      reg_bp_1_control_action <= 1'h0;
    end else begin
      if (_T_1169) begin
        if (_T_1326) begin
          if (_T_592) begin
            if (reg_tselect) begin
              reg_bp_1_control_action <= _T_1348;
            end else begin
              if (reg_tselect) begin
                reg_bp_1_control_action <= _T_1312;
              end
            end
          end
        end
      end
    end
    if (_T_1169) begin
      if (_T_1326) begin
        if (_T_592) begin
          if (reg_tselect) begin
            reg_bp_1_control_tmatch <= _T_1339;
          end
        end
      end
    end
    if (reset) begin
      reg_bp_1_control_x <= 1'h0;
    end else begin
      if (_T_1169) begin
        if (_T_1326) begin
          if (_T_592) begin
            if (reg_tselect) begin
              reg_bp_1_control_x <= _T_1306;
            end
          end
        end
      end
    end
    if (reset) begin
      reg_bp_1_control_w <= 1'h0;
    end else begin
      if (_T_1169) begin
        if (_T_1326) begin
          if (_T_592) begin
            if (reg_tselect) begin
              reg_bp_1_control_w <= _T_1333;
            end
          end
        end
      end
    end
    if (reset) begin
      reg_bp_1_control_r <= 1'h0;
    end else begin
      if (_T_1169) begin
        if (_T_1326) begin
          if (_T_592) begin
            if (reg_tselect) begin
              reg_bp_1_control_r <= _T_1290;
            end
          end
        end
      end
    end
    if (_T_1169) begin
      if (_T_1326) begin
        if (_T_594) begin
          if (reg_tselect) begin
            reg_bp_1_address <= wdata;
          end
        end
      end
    end
    if (_T_1169) begin
      if (_T_610) begin
        reg_mie <= _T_1278;
      end
    end
    if (_T_1169) begin
      if (_T_614) begin
        reg_mepc <= _T_1286;
      end else begin
        if (exception) begin
          if (!(trapToDebug)) begin
            reg_mepc <= _T_1033;
          end
        end
      end
    end else begin
      if (exception) begin
        if (!(trapToDebug)) begin
          reg_mepc <= _T_1033;
        end
      end
    end
    if (_T_1169) begin
      if (_T_618) begin
        reg_mcause <= _T_1297;
      end else begin
        if (exception) begin
          if (!(trapToDebug)) begin
            if (insn_call) begin
              reg_mcause <= {{28'd0}, _T_851};
            end else begin
              if (insn_break) begin
                reg_mcause <= 32'h3;
              end else begin
                reg_mcause <= io_cause;
              end
            end
          end
        end
      end
    end else begin
      if (exception) begin
        if (!(trapToDebug)) begin
          if (insn_call) begin
            reg_mcause <= {{28'd0}, _T_851};
          end else begin
            if (insn_break) begin
              reg_mcause <= 32'h3;
            end else begin
              reg_mcause <= io_cause;
            end
          end
        end
      end
    end
    if (_T_1169) begin
      if (_T_616) begin
        reg_mbadaddr <= wdata;
      end else begin
        if (exception) begin
          if (!(trapToDebug)) begin
            if (write_badaddr) begin
              reg_mbadaddr <= io_badaddr;
            end else begin
              reg_mbadaddr <= 32'h0;
            end
          end
        end
      end
    end else begin
      if (exception) begin
        if (!(trapToDebug)) begin
          if (write_badaddr) begin
            reg_mbadaddr <= io_badaddr;
          end else begin
            reg_mbadaddr <= 32'h0;
          end
        end
      end
    end
    if (_T_1169) begin
      if (_T_612) begin
        reg_mscratch <= wdata;
      end
    end
    if (reset) begin
      reg_mtvec <= 32'h0;
    end else begin
      if (_T_1169) begin
        if (_T_606) begin
          reg_mtvec <= _T_1295;
        end
      end
    end
    if (reset) begin
      reg_wfi <= 1'h0;
    end else begin
      if (_T_945) begin
        reg_wfi <= 1'h0;
      end else begin
        if (_T_940) begin
          reg_wfi <= 1'h1;
        end
      end
    end
    reg_fflags <= _GEN_266[4:0];
    reg_frm <= _GEN_267[2:0];
    if (reset) begin
      _T_278 <= 6'h0;
    end else begin
      _T_278 <= _T_279[5:0];
    end
    if (reset) begin
      _T_282 <= 58'h0;
    end else begin
      if (_T_283) begin
        _T_282 <= _T_286;
      end
    end
    if (reset) begin
      reg_misa <= 32'h40001121;
    end else begin
      if (_T_1169) begin
        if (_T_602) begin
          reg_misa <= _T_1221;
        end
      end
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_934) begin
          $fwrite(32'h80000002,"Assertion failed: these conditions must be mutually exclusive\n    at CSR.scala:545 assert(PopCount(insn_ret :: insn_call :: insn_break :: io.exception :: Nil) <= 1, \"these conditions must be mutually exclusive\")\n"); // @[CSR.scala 545:9:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111722.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_934) begin
          $fatal; // @[CSR.scala 545:9:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111723.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_955) begin
          $fwrite(32'h80000002,"Assertion failed\n    at CSR.scala:549 assert(!reg_wfi || io.retire === UInt(0))\n"); // @[CSR.scala 549:9:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111745.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_955) begin
          $fatal; // @[CSR.scala 549:9:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111746.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (1'h0) begin
          $fwrite(32'h80000002,"Assertion failed\n    at CSR.scala:553 assert(!io.singleStep || io.retire <= UInt(1))\n"); // @[CSR.scala 553:9:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111764.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (1'h0) begin
          $fatal; // @[CSR.scala 553:9:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111765.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_979) begin
          $fwrite(32'h80000002,"Assertion failed\n    at CSR.scala:554 assert(!reg_singleStepped || io.retire === UInt(0))\n"); // @[CSR.scala 554:9:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111774.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_979) begin
          $fatal; // @[CSR.scala 554:9:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@111775.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
