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
module MIV_RV32IMAF_L1_AHB_C0_MIV_RV32IMAF_L1_AHB_C0_0_MIV_RV32IMAF_L1_AHB_ROCKET( // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112995.2]
  input         clock, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112996.4]
  input         reset, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112997.4]
  input         io_interrupts_debug, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112998.4]
  input         io_interrupts_mtip, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112998.4]
  input         io_interrupts_msip, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112998.4]
  input         io_interrupts_meip, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112998.4]
  output        io_imem_req_valid, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112998.4]
  output [31:0] io_imem_req_bits_pc, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112998.4]
  output        io_imem_req_bits_speculative, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112998.4]
  output        io_imem_resp_ready, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112998.4]
  input         io_imem_resp_valid, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112998.4]
  input         io_imem_resp_bits_btb_taken, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112998.4]
  input         io_imem_resp_bits_btb_bridx, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112998.4]
  input  [31:0] io_imem_resp_bits_pc, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112998.4]
  input  [31:0] io_imem_resp_bits_data, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112998.4]
  input         io_imem_resp_bits_xcpt_pf_inst, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112998.4]
  input         io_imem_resp_bits_xcpt_ae_inst, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112998.4]
  input         io_imem_resp_bits_replay, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112998.4]
  output        io_imem_flush_icache, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112998.4]
  input         io_dmem_req_ready, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112998.4]
  output        io_dmem_req_valid, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112998.4]
  output [31:0] io_dmem_req_bits_addr, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112998.4]
  output [5:0]  io_dmem_req_bits_tag, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112998.4]
  output [4:0]  io_dmem_req_bits_cmd, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112998.4]
  output [2:0]  io_dmem_req_bits_typ, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112998.4]
  output        io_dmem_s1_kill, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112998.4]
  output [31:0] io_dmem_s1_data_data, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112998.4]
  input         io_dmem_s2_nack, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112998.4]
  input         io_dmem_resp_valid, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112998.4]
  input  [5:0]  io_dmem_resp_bits_tag, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112998.4]
  input  [31:0] io_dmem_resp_bits_data, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112998.4]
  input         io_dmem_resp_bits_replay, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112998.4]
  input         io_dmem_resp_bits_has_data, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112998.4]
  input  [31:0] io_dmem_resp_bits_data_word_bypass, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112998.4]
  input         io_dmem_replay_next, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112998.4]
  input         io_dmem_s2_xcpt_ma_ld, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112998.4]
  input         io_dmem_s2_xcpt_ma_st, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112998.4]
  input         io_dmem_s2_xcpt_pf_ld, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112998.4]
  input         io_dmem_s2_xcpt_pf_st, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112998.4]
  input         io_dmem_s2_xcpt_ae_ld, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112998.4]
  input         io_dmem_s2_xcpt_ae_st, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112998.4]
  output        io_dmem_invalidate_lr, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112998.4]
  input         io_dmem_ordered, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112998.4]
  output [31:0] io_fpu_inst, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112998.4]
  output [31:0] io_fpu_fromint_data, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112998.4]
  output [2:0]  io_fpu_fcsr_rm, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112998.4]
  input         io_fpu_fcsr_flags_valid, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112998.4]
  input  [4:0]  io_fpu_fcsr_flags_bits, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112998.4]
  input  [31:0] io_fpu_store_data, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112998.4]
  input  [31:0] io_fpu_toint_data, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112998.4]
  output        io_fpu_dmem_resp_val, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112998.4]
  output [4:0]  io_fpu_dmem_resp_tag, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112998.4]
  output [31:0] io_fpu_dmem_resp_data, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112998.4]
  output        io_fpu_valid, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112998.4]
  input         io_fpu_fcsr_rdy, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112998.4]
  input         io_fpu_nack_mem, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112998.4]
  input         io_fpu_illegal_rm, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112998.4]
  output        io_fpu_killx, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112998.4]
  output        io_fpu_killm, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112998.4]
  input         io_fpu_dec_wen, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112998.4]
  input         io_fpu_dec_ren1, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112998.4]
  input         io_fpu_dec_ren2, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112998.4]
  input         io_fpu_dec_ren3, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112998.4]
  input         io_fpu_sboard_set, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112998.4]
  input         io_fpu_sboard_clr, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112998.4]
  input  [4:0]  io_fpu_sboard_clra // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@112998.4]
);
  reg  ex_ctrl_fp; // @[RocketCore.scala 120:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113003.4]
  reg [31:0] _RAND_0;
  reg  ex_ctrl_rocc; // @[RocketCore.scala 120:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113003.4]
  reg [31:0] _RAND_1;
  reg  ex_ctrl_branch; // @[RocketCore.scala 120:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113003.4]
  reg [31:0] _RAND_2;
  reg  ex_ctrl_jal; // @[RocketCore.scala 120:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113003.4]
  reg [31:0] _RAND_3;
  reg  ex_ctrl_jalr; // @[RocketCore.scala 120:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113003.4]
  reg [31:0] _RAND_4;
  reg  ex_ctrl_rxs2; // @[RocketCore.scala 120:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113003.4]
  reg [31:0] _RAND_5;
  reg [1:0] ex_ctrl_sel_alu2; // @[RocketCore.scala 120:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113003.4]
  reg [31:0] _RAND_6;
  reg [1:0] ex_ctrl_sel_alu1; // @[RocketCore.scala 120:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113003.4]
  reg [31:0] _RAND_7;
  reg [2:0] ex_ctrl_sel_imm; // @[RocketCore.scala 120:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113003.4]
  reg [31:0] _RAND_8;
  reg [3:0] ex_ctrl_alu_fn; // @[RocketCore.scala 120:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113003.4]
  reg [31:0] _RAND_9;
  reg  ex_ctrl_mem; // @[RocketCore.scala 120:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113003.4]
  reg [31:0] _RAND_10;
  reg [4:0] ex_ctrl_mem_cmd; // @[RocketCore.scala 120:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113003.4]
  reg [31:0] _RAND_11;
  reg [2:0] ex_ctrl_mem_type; // @[RocketCore.scala 120:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113003.4]
  reg [31:0] _RAND_12;
  reg  ex_ctrl_wfd; // @[RocketCore.scala 120:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113003.4]
  reg [31:0] _RAND_13;
  reg  ex_ctrl_div; // @[RocketCore.scala 120:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113003.4]
  reg [31:0] _RAND_14;
  reg  ex_ctrl_wxd; // @[RocketCore.scala 120:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113003.4]
  reg [31:0] _RAND_15;
  reg [2:0] ex_ctrl_csr; // @[RocketCore.scala 120:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113003.4]
  reg [31:0] _RAND_16;
  reg  ex_ctrl_fence_i; // @[RocketCore.scala 120:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113003.4]
  reg [31:0] _RAND_17;
  reg  mem_ctrl_fp; // @[RocketCore.scala 121:21:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113004.4]
  reg [31:0] _RAND_18;
  reg  mem_ctrl_rocc; // @[RocketCore.scala 121:21:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113004.4]
  reg [31:0] _RAND_19;
  reg  mem_ctrl_branch; // @[RocketCore.scala 121:21:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113004.4]
  reg [31:0] _RAND_20;
  reg  mem_ctrl_jal; // @[RocketCore.scala 121:21:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113004.4]
  reg [31:0] _RAND_21;
  reg  mem_ctrl_jalr; // @[RocketCore.scala 121:21:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113004.4]
  reg [31:0] _RAND_22;
  reg  mem_ctrl_mem; // @[RocketCore.scala 121:21:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113004.4]
  reg [31:0] _RAND_23;
  reg  mem_ctrl_wfd; // @[RocketCore.scala 121:21:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113004.4]
  reg [31:0] _RAND_24;
  reg  mem_ctrl_div; // @[RocketCore.scala 121:21:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113004.4]
  reg [31:0] _RAND_25;
  reg  mem_ctrl_wxd; // @[RocketCore.scala 121:21:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113004.4]
  reg [31:0] _RAND_26;
  reg [2:0] mem_ctrl_csr; // @[RocketCore.scala 121:21:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113004.4]
  reg [31:0] _RAND_27;
  reg  mem_ctrl_fence_i; // @[RocketCore.scala 121:21:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113004.4]
  reg [31:0] _RAND_28;
  reg  wb_ctrl_rocc; // @[RocketCore.scala 122:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113005.4]
  reg [31:0] _RAND_29;
  reg  wb_ctrl_mem; // @[RocketCore.scala 122:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113005.4]
  reg [31:0] _RAND_30;
  reg  wb_ctrl_wfd; // @[RocketCore.scala 122:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113005.4]
  reg [31:0] _RAND_31;
  reg  wb_ctrl_div; // @[RocketCore.scala 122:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113005.4]
  reg [31:0] _RAND_32;
  reg  wb_ctrl_wxd; // @[RocketCore.scala 122:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113005.4]
  reg [31:0] _RAND_33;
  reg [2:0] wb_ctrl_csr; // @[RocketCore.scala 122:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113005.4]
  reg [31:0] _RAND_34;
  reg  wb_ctrl_fence_i; // @[RocketCore.scala 122:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113005.4]
  reg [31:0] _RAND_35;
  reg  ex_reg_xcpt_interrupt; // @[RocketCore.scala 124:35:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113006.4]
  reg [31:0] _RAND_36;
  reg  ex_reg_valid; // @[RocketCore.scala 125:35:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113007.4]
  reg [31:0] _RAND_37;
  reg  ex_reg_rvc; // @[RocketCore.scala 126:35:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113008.4]
  reg [31:0] _RAND_38;
  reg  ex_reg_xcpt; // @[RocketCore.scala 128:35:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113010.4]
  reg [31:0] _RAND_39;
  reg  ex_reg_flush_pipe; // @[RocketCore.scala 129:35:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113011.4]
  reg [31:0] _RAND_40;
  reg  ex_reg_load_use; // @[RocketCore.scala 130:35:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113012.4]
  reg [31:0] _RAND_41;
  reg [31:0] ex_cause; // @[RocketCore.scala 131:35:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113013.4]
  reg [31:0] _RAND_42;
  reg  ex_reg_replay; // @[RocketCore.scala 132:26:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113014.4]
  reg [31:0] _RAND_43;
  reg [31:0] ex_reg_pc; // @[RocketCore.scala 133:22:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113015.4]
  reg [31:0] _RAND_44;
  reg [31:0] ex_reg_inst; // @[RocketCore.scala 134:24:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113016.4]
  reg [31:0] _RAND_45;
  reg  mem_reg_xcpt_interrupt; // @[RocketCore.scala 137:36:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113018.4]
  reg [31:0] _RAND_46;
  reg  mem_reg_valid; // @[RocketCore.scala 138:36:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113019.4]
  reg [31:0] _RAND_47;
  reg  mem_reg_rvc; // @[RocketCore.scala 139:36:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113020.4]
  reg [31:0] _RAND_48;
  reg  mem_reg_xcpt; // @[RocketCore.scala 141:36:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113022.4]
  reg [31:0] _RAND_49;
  reg  mem_reg_replay; // @[RocketCore.scala 142:36:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113023.4]
  reg [31:0] _RAND_50;
  reg  mem_reg_flush_pipe; // @[RocketCore.scala 143:36:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113024.4]
  reg [31:0] _RAND_51;
  reg [31:0] mem_reg_cause; // @[RocketCore.scala 144:36:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113025.4]
  reg [31:0] _RAND_52;
  reg  mem_reg_slow_bypass; // @[RocketCore.scala 145:36:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113026.4]
  reg [31:0] _RAND_53;
  reg  mem_reg_load; // @[RocketCore.scala 146:36:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113027.4]
  reg [31:0] _RAND_54;
  reg  mem_reg_store; // @[RocketCore.scala 147:36:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113028.4]
  reg [31:0] _RAND_55;
  reg  mem_reg_sfence; // @[RocketCore.scala 148:27:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113029.4]
  reg [31:0] _RAND_56;
  reg [31:0] mem_reg_pc; // @[RocketCore.scala 149:23:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113030.4]
  reg [31:0] _RAND_57;
  reg [31:0] mem_reg_inst; // @[RocketCore.scala 150:25:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113031.4]
  reg [31:0] _RAND_58;
  reg [31:0] bypass_mux_1; // @[RocketCore.scala 152:26:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113033.4]
  reg [31:0] _RAND_59;
  reg [31:0] mem_reg_rs2; // @[RocketCore.scala 153:24:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113034.4]
  reg [31:0] _RAND_60;
  reg  mem_br_taken; // @[RocketCore.scala 154:25:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113035.4]
  reg [31:0] _RAND_61;
  reg  wb_reg_valid; // @[RocketCore.scala 157:35:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113038.4]
  reg [31:0] _RAND_62;
  reg  wb_reg_xcpt; // @[RocketCore.scala 158:35:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113039.4]
  reg [31:0] _RAND_63;
  reg  wb_reg_replay; // @[RocketCore.scala 159:35:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113040.4]
  reg [31:0] _RAND_64;
  reg  wb_reg_flush_pipe; // @[RocketCore.scala 160:35:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113041.4]
  reg [31:0] _RAND_65;
  reg [31:0] wb_reg_cause; // @[RocketCore.scala 161:35:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113042.4]
  reg [31:0] _RAND_66;
  reg [31:0] wb_reg_pc; // @[RocketCore.scala 163:22:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113044.4]
  reg [31:0] _RAND_67;
  reg [31:0] wb_reg_inst; // @[RocketCore.scala 164:24:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113045.4]
  reg [31:0] _RAND_68;
  reg [31:0] bypass_mux_2; // @[RocketCore.scala 166:25:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113047.4]
  reg [31:0] _RAND_69;
  wire  ibuf_clock; // @[RocketCore.scala 174:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113052.4]
  wire  ibuf_io_imem_ready; // @[RocketCore.scala 174:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113052.4]
  wire  ibuf_io_imem_valid; // @[RocketCore.scala 174:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113052.4]
  wire  ibuf_io_imem_bits_btb_taken; // @[RocketCore.scala 174:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113052.4]
  wire  ibuf_io_imem_bits_btb_bridx; // @[RocketCore.scala 174:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113052.4]
  wire [31:0] ibuf_io_imem_bits_pc; // @[RocketCore.scala 174:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113052.4]
  wire [31:0] ibuf_io_imem_bits_data; // @[RocketCore.scala 174:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113052.4]
  wire  ibuf_io_imem_bits_xcpt_pf_inst; // @[RocketCore.scala 174:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113052.4]
  wire  ibuf_io_imem_bits_xcpt_ae_inst; // @[RocketCore.scala 174:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113052.4]
  wire  ibuf_io_imem_bits_replay; // @[RocketCore.scala 174:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113052.4]
  wire [31:0] ibuf_io_pc; // @[RocketCore.scala 174:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113052.4]
  wire  ibuf_io_inst_0_ready; // @[RocketCore.scala 174:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113052.4]
  wire  ibuf_io_inst_0_valid; // @[RocketCore.scala 174:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113052.4]
  wire  ibuf_io_inst_0_bits_xcpt0_pf_inst; // @[RocketCore.scala 174:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113052.4]
  wire  ibuf_io_inst_0_bits_xcpt0_ae_inst; // @[RocketCore.scala 174:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113052.4]
  wire  ibuf_io_inst_0_bits_replay; // @[RocketCore.scala 174:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113052.4]
  wire [31:0] ibuf_io_inst_0_bits_inst_bits; // @[RocketCore.scala 174:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113052.4]
  wire [4:0] ibuf_io_inst_0_bits_inst_rd; // @[RocketCore.scala 174:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113052.4]
  wire [4:0] ibuf_io_inst_0_bits_inst_rs1; // @[RocketCore.scala 174:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113052.4]
  wire [4:0] ibuf_io_inst_0_bits_inst_rs2; // @[RocketCore.scala 174:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113052.4]
  wire [4:0] ibuf_io_inst_0_bits_inst_rs3; // @[RocketCore.scala 174:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113052.4]
  wire [31:0] ibuf_io_inst_0_bits_raw; // @[RocketCore.scala 174:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113052.4]
  reg  id_reg_fence; // @[RocketCore.scala 188:25:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113464.4]
  reg [31:0] _RAND_70;
  reg [31:0] _T_1319 [0:30]; // @[RocketCore.scala 798:23:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113465.4]
  reg [31:0] _RAND_71;
  wire [31:0] _T_1319__T_1328_data; // @[RocketCore.scala 798:23:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113465.4]
  wire [4:0] _T_1319__T_1328_addr; // @[RocketCore.scala 798:23:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113465.4]
  reg [31:0] _RAND_72;
  wire [31:0] _T_1319__T_1338_data; // @[RocketCore.scala 798:23:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113465.4]
  wire [4:0] _T_1319__T_1338_addr; // @[RocketCore.scala 798:23:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113465.4]
  reg [31:0] _RAND_73;
  wire [31:0] _T_1319__T_2301_data; // @[RocketCore.scala 798:23:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113465.4]
  wire [4:0] _T_1319__T_2301_addr; // @[RocketCore.scala 798:23:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113465.4]
  wire  _T_1319__T_2301_mask; // @[RocketCore.scala 798:23:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113465.4]
  wire  _T_1319__T_2301_en; // @[RocketCore.scala 798:23:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113465.4]
  wire  csr_clock; // @[RocketCore.scala 196:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113553.4]
  wire  csr_reset; // @[RocketCore.scala 196:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113553.4]
  wire  csr_io_interrupts_debug; // @[RocketCore.scala 196:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113553.4]
  wire  csr_io_interrupts_mtip; // @[RocketCore.scala 196:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113553.4]
  wire  csr_io_interrupts_msip; // @[RocketCore.scala 196:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113553.4]
  wire  csr_io_interrupts_meip; // @[RocketCore.scala 196:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113553.4]
  wire [11:0] csr_io_rw_addr; // @[RocketCore.scala 196:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113553.4]
  wire [2:0] csr_io_rw_cmd; // @[RocketCore.scala 196:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113553.4]
  wire [31:0] csr_io_rw_rdata; // @[RocketCore.scala 196:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113553.4]
  wire [31:0] csr_io_rw_wdata; // @[RocketCore.scala 196:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113553.4]
  wire [11:0] csr_io_decode_0_csr; // @[RocketCore.scala 196:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113553.4]
  wire  csr_io_decode_0_fp_illegal; // @[RocketCore.scala 196:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113553.4]
  wire  csr_io_decode_0_read_illegal; // @[RocketCore.scala 196:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113553.4]
  wire  csr_io_decode_0_write_illegal; // @[RocketCore.scala 196:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113553.4]
  wire  csr_io_decode_0_write_flush; // @[RocketCore.scala 196:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113553.4]
  wire  csr_io_csr_stall; // @[RocketCore.scala 196:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113553.4]
  wire  csr_io_eret; // @[RocketCore.scala 196:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113553.4]
  wire  csr_io_singleStep; // @[RocketCore.scala 196:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113553.4]
  wire  csr_io_status_debug; // @[RocketCore.scala 196:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113553.4]
  wire [31:0] csr_io_status_isa; // @[RocketCore.scala 196:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113553.4]
  wire [1:0] csr_io_status_dprv; // @[RocketCore.scala 196:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113553.4]
  wire [1:0] csr_io_status_prv; // @[RocketCore.scala 196:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113553.4]
  wire  csr_io_status_sd; // @[RocketCore.scala 196:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113553.4]
  wire [26:0] csr_io_status_zero2; // @[RocketCore.scala 196:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113553.4]
  wire [1:0] csr_io_status_sxl; // @[RocketCore.scala 196:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113553.4]
  wire [1:0] csr_io_status_uxl; // @[RocketCore.scala 196:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113553.4]
  wire  csr_io_status_sd_rv32; // @[RocketCore.scala 196:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113553.4]
  wire [7:0] csr_io_status_zero1; // @[RocketCore.scala 196:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113553.4]
  wire  csr_io_status_tsr; // @[RocketCore.scala 196:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113553.4]
  wire  csr_io_status_tw; // @[RocketCore.scala 196:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113553.4]
  wire  csr_io_status_tvm; // @[RocketCore.scala 196:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113553.4]
  wire  csr_io_status_mxr; // @[RocketCore.scala 196:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113553.4]
  wire  csr_io_status_sum; // @[RocketCore.scala 196:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113553.4]
  wire  csr_io_status_mprv; // @[RocketCore.scala 196:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113553.4]
  wire [1:0] csr_io_status_xs; // @[RocketCore.scala 196:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113553.4]
  wire [1:0] csr_io_status_fs; // @[RocketCore.scala 196:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113553.4]
  wire [1:0] csr_io_status_mpp; // @[RocketCore.scala 196:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113553.4]
  wire [1:0] csr_io_status_hpp; // @[RocketCore.scala 196:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113553.4]
  wire  csr_io_status_spp; // @[RocketCore.scala 196:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113553.4]
  wire  csr_io_status_mpie; // @[RocketCore.scala 196:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113553.4]
  wire  csr_io_status_hpie; // @[RocketCore.scala 196:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113553.4]
  wire  csr_io_status_spie; // @[RocketCore.scala 196:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113553.4]
  wire  csr_io_status_upie; // @[RocketCore.scala 196:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113553.4]
  wire  csr_io_status_mie; // @[RocketCore.scala 196:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113553.4]
  wire  csr_io_status_hie; // @[RocketCore.scala 196:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113553.4]
  wire  csr_io_status_sie; // @[RocketCore.scala 196:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113553.4]
  wire  csr_io_status_uie; // @[RocketCore.scala 196:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113553.4]
  wire [31:0] csr_io_evec; // @[RocketCore.scala 196:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113553.4]
  wire  csr_io_exception; // @[RocketCore.scala 196:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113553.4]
  wire  csr_io_retire; // @[RocketCore.scala 196:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113553.4]
  wire [31:0] csr_io_cause; // @[RocketCore.scala 196:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113553.4]
  wire [31:0] csr_io_pc; // @[RocketCore.scala 196:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113553.4]
  wire [31:0] csr_io_badaddr; // @[RocketCore.scala 196:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113553.4]
  wire [31:0] csr_io_time; // @[RocketCore.scala 196:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113553.4]
  wire [2:0] csr_io_fcsr_rm; // @[RocketCore.scala 196:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113553.4]
  wire  csr_io_fcsr_flags_valid; // @[RocketCore.scala 196:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113553.4]
  wire [4:0] csr_io_fcsr_flags_bits; // @[RocketCore.scala 196:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113553.4]
  wire  csr_io_interrupt; // @[RocketCore.scala 196:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113553.4]
  wire [31:0] csr_io_interrupt_cause; // @[RocketCore.scala 196:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113553.4]
  wire  csr_io_bp_0_control_action; // @[RocketCore.scala 196:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113553.4]
  wire  csr_io_bp_0_control_chain; // @[RocketCore.scala 196:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113553.4]
  wire [1:0] csr_io_bp_0_control_tmatch; // @[RocketCore.scala 196:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113553.4]
  wire  csr_io_bp_0_control_x; // @[RocketCore.scala 196:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113553.4]
  wire  csr_io_bp_0_control_w; // @[RocketCore.scala 196:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113553.4]
  wire  csr_io_bp_0_control_r; // @[RocketCore.scala 196:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113553.4]
  wire [31:0] csr_io_bp_0_address; // @[RocketCore.scala 196:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113553.4]
  wire  csr_io_bp_1_control_action; // @[RocketCore.scala 196:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113553.4]
  wire [1:0] csr_io_bp_1_control_tmatch; // @[RocketCore.scala 196:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113553.4]
  wire  csr_io_bp_1_control_x; // @[RocketCore.scala 196:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113553.4]
  wire  csr_io_bp_1_control_w; // @[RocketCore.scala 196:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113553.4]
  wire  csr_io_bp_1_control_r; // @[RocketCore.scala 196:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113553.4]
  wire [31:0] csr_io_bp_1_address; // @[RocketCore.scala 196:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113553.4]
  wire [31:0] csr_io_inst_0; // @[RocketCore.scala 196:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113553.4]
  wire  csr_io_trace_0_valid; // @[RocketCore.scala 196:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113553.4]
  wire [31:0] csr_io_trace_0_iaddr; // @[RocketCore.scala 196:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113553.4]
  wire [31:0] csr_io_trace_0_insn; // @[RocketCore.scala 196:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113553.4]
  wire  csr_io_trace_0_exception; // @[RocketCore.scala 196:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113553.4]
  wire  bpu_io_status_debug; // @[RocketCore.scala 225:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113636.4]
  wire  bpu_io_bp_0_control_action; // @[RocketCore.scala 225:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113636.4]
  wire  bpu_io_bp_0_control_chain; // @[RocketCore.scala 225:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113636.4]
  wire [1:0] bpu_io_bp_0_control_tmatch; // @[RocketCore.scala 225:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113636.4]
  wire  bpu_io_bp_0_control_x; // @[RocketCore.scala 225:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113636.4]
  wire  bpu_io_bp_0_control_w; // @[RocketCore.scala 225:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113636.4]
  wire  bpu_io_bp_0_control_r; // @[RocketCore.scala 225:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113636.4]
  wire [31:0] bpu_io_bp_0_address; // @[RocketCore.scala 225:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113636.4]
  wire  bpu_io_bp_1_control_action; // @[RocketCore.scala 225:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113636.4]
  wire [1:0] bpu_io_bp_1_control_tmatch; // @[RocketCore.scala 225:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113636.4]
  wire  bpu_io_bp_1_control_x; // @[RocketCore.scala 225:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113636.4]
  wire  bpu_io_bp_1_control_w; // @[RocketCore.scala 225:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113636.4]
  wire  bpu_io_bp_1_control_r; // @[RocketCore.scala 225:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113636.4]
  wire [31:0] bpu_io_bp_1_address; // @[RocketCore.scala 225:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113636.4]
  wire [31:0] bpu_io_pc; // @[RocketCore.scala 225:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113636.4]
  wire [31:0] bpu_io_ea; // @[RocketCore.scala 225:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113636.4]
  wire  bpu_io_xcpt_if; // @[RocketCore.scala 225:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113636.4]
  wire  bpu_io_xcpt_ld; // @[RocketCore.scala 225:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113636.4]
  wire  bpu_io_xcpt_st; // @[RocketCore.scala 225:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113636.4]
  wire  bpu_io_debug_if; // @[RocketCore.scala 225:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113636.4]
  wire  bpu_io_debug_ld; // @[RocketCore.scala 225:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113636.4]
  wire  bpu_io_debug_st; // @[RocketCore.scala 225:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113636.4]
  reg  ex_reg_rs_bypass_0; // @[RocketCore.scala 270:29:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113692.4]
  reg [31:0] _RAND_74;
  reg  ex_reg_rs_bypass_1; // @[RocketCore.scala 270:29:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113692.4]
  reg [31:0] _RAND_75;
  reg [1:0] ex_reg_rs_lsb_0; // @[RocketCore.scala 271:26:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113693.4]
  reg [31:0] _RAND_76;
  reg [1:0] ex_reg_rs_lsb_1; // @[RocketCore.scala 271:26:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113693.4]
  reg [31:0] _RAND_77;
  reg [29:0] ex_reg_rs_msb_0; // @[RocketCore.scala 272:26:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113694.4]
  reg [31:0] _RAND_78;
  reg [29:0] ex_reg_rs_msb_1; // @[RocketCore.scala 272:26:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113694.4]
  reg [31:0] _RAND_79;
  wire [3:0] alu_io_fn; // @[RocketCore.scala 284:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113787.4]
  wire [31:0] alu_io_in2; // @[RocketCore.scala 284:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113787.4]
  wire [31:0] alu_io_in1; // @[RocketCore.scala 284:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113787.4]
  wire [31:0] alu_io_out; // @[RocketCore.scala 284:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113787.4]
  wire [31:0] alu_io_adder_out; // @[RocketCore.scala 284:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113787.4]
  wire  alu_io_cmp_out; // @[RocketCore.scala 284:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113787.4]
  wire  div_clock; // @[RocketCore.scala 291:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113797.4]
  wire  div_reset; // @[RocketCore.scala 291:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113797.4]
  wire  div_io_req_ready; // @[RocketCore.scala 291:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113797.4]
  wire  div_io_req_valid; // @[RocketCore.scala 291:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113797.4]
  wire [3:0] div_io_req_bits_fn; // @[RocketCore.scala 291:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113797.4]
  wire [31:0] div_io_req_bits_in1; // @[RocketCore.scala 291:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113797.4]
  wire [31:0] div_io_req_bits_in2; // @[RocketCore.scala 291:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113797.4]
  wire [4:0] div_io_req_bits_tag; // @[RocketCore.scala 291:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113797.4]
  wire  div_io_kill; // @[RocketCore.scala 291:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113797.4]
  wire  div_io_resp_ready; // @[RocketCore.scala 291:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113797.4]
  wire  div_io_resp_valid; // @[RocketCore.scala 291:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113797.4]
  wire [31:0] div_io_resp_bits_data; // @[RocketCore.scala 291:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113797.4]
  wire [4:0] div_io_resp_bits_tag; // @[RocketCore.scala 291:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113797.4]
  reg  _T_2201; // @[RocketCore.scala 450:37:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114263.4]
  reg [31:0] _RAND_80;
  reg [31:0] _T_2319; // @[RocketCore.scala 784:25:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114428.4]
  reg [31:0] _RAND_81;
  reg [31:0] _T_2442; // @[RocketCore.scala 784:25:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114558.4]
  reg [31:0] _RAND_82;
  reg  dcache_blocked; // @[RocketCore.scala 605:27:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114604.4]
  reg [31:0] _RAND_83;
  reg [31:0] _T_2619; // @[RocketCore.scala 745:42:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114771.4]
  reg [31:0] _RAND_84;
  reg [31:0] _T_2621; // @[RocketCore.scala 745:33:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114773.4]
  reg [31:0] _RAND_85;
  reg [31:0] _T_2624; // @[RocketCore.scala 746:42:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114776.4]
  reg [31:0] _RAND_86;
  reg [31:0] _T_2626; // @[RocketCore.scala 746:33:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114778.4]
  reg [31:0] _RAND_87;
  wire [31:0] plusarg_reader_out; // @[PlusArg.scala 24:11:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114785.4]
  wire  replay_wb_common; // @[RocketCore.scala 493:42:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114336.4]
  wire  replay_wb_rocc; // @[RocketCore.scala 494:37:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114337.4]
  wire  replay_wb; // @[RocketCore.scala 495:36:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114340.4]
  wire  _T_2221; // @[RocketCore.scala 473:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114297.4]
  wire  _T_2222; // @[RocketCore.scala 473:34:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114298.4]
  wire  _T_2239; // @[RocketCore.scala 758:26:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114309.4]
  wire  _T_2225; // @[RocketCore.scala 474:34:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114300.4]
  wire  _T_2240; // @[RocketCore.scala 758:26:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114310.4]
  wire  _T_2228; // @[RocketCore.scala 475:34:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114302.4]
  wire  _T_2241; // @[RocketCore.scala 758:26:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114311.4]
  wire  _T_2231; // @[RocketCore.scala 476:34:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114304.4]
  wire  _T_2242; // @[RocketCore.scala 758:26:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114312.4]
  wire  _T_2234; // @[RocketCore.scala 477:34:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114306.4]
  wire  _T_2243; // @[RocketCore.scala 758:26:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114313.4]
  wire  _T_2237; // @[RocketCore.scala 478:34:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114308.4]
  wire  wb_xcpt; // @[RocketCore.scala 758:26:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114314.4]
  wire  _T_2271; // @[RocketCore.scala 496:27:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114341.4]
  wire  _T_2272; // @[RocketCore.scala 496:38:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114342.4]
  wire  take_pc_wb; // @[RocketCore.scala 496:53:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114343.4]
  wire  _T_2050; // @[RocketCore.scala 386:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114115.4]
  wire  _T_2051; // @[RocketCore.scala 386:57:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114116.4]
  wire  mem_cfi_taken; // @[RocketCore.scala 386:74:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114117.4]
  wire  _T_2055; // @[RocketCore.scala 389:54:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114121.4]
  wire  take_pc_mem; // @[RocketCore.scala 389:32:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114122.4]
  wire  take_pc; // @[RocketCore.scala 170:35:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113051.4]
  wire [31:0] _T_671; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113060.4]
  wire  _T_673; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113061.4]
  wire [31:0] _T_675; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113062.4]
  wire  _T_677; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113063.4]
  wire [31:0] _T_679; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113064.4]
  wire  _T_681; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113065.4]
  wire [31:0] _T_683; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113066.4]
  wire  _T_685; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113067.4]
  wire [31:0] _T_687; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113068.4]
  wire  _T_689; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113069.4]
  wire [31:0] _T_691; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113070.4]
  wire  _T_693; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113071.4]
  wire [31:0] _T_695; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113072.4]
  wire  _T_697; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113073.4]
  wire [31:0] _T_699; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113074.4]
  wire  _T_701; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113075.4]
  wire [31:0] _T_703; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113076.4]
  wire  _T_705; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113077.4]
  wire [31:0] _T_707; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113078.4]
  wire  _T_709; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113079.4]
  wire [31:0] _T_711; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113080.4]
  wire  _T_713; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113081.4]
  wire [31:0] _T_715; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113082.4]
  wire  _T_717; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113083.4]
  wire  _T_721; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113085.4]
  wire [31:0] _T_723; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113086.4]
  wire  _T_725; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113087.4]
  wire  _T_729; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113089.4]
  wire [31:0] _T_731; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113090.4]
  wire  _T_733; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113091.4]
  wire  _T_737; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113093.4]
  wire [31:0] _T_739; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113094.4]
  wire  _T_741; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113095.4]
  wire [31:0] _T_743; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113096.4]
  wire  _T_745; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113097.4]
  wire  _T_747; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113098.4]
  wire [31:0] _T_749; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113099.4]
  wire  _T_751; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113100.4]
  wire [31:0] _T_753; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113101.4]
  wire  _T_755; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113102.4]
  wire [31:0] _T_757; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113103.4]
  wire  _T_759; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113104.4]
  wire  _T_761; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113105.4]
  wire [31:0] _T_763; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113106.4]
  wire  _T_765; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113107.4]
  wire  _T_767; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113108.4]
  wire [31:0] _T_769; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113109.4]
  wire  _T_771; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113110.4]
  wire [31:0] _T_773; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113111.4]
  wire  _T_775; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113112.4]
  wire [31:0] _T_777; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113113.4]
  wire  _T_779; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113114.4]
  wire [31:0] _T_781; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113115.4]
  wire  _T_783; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113116.4]
  wire [31:0] _T_785; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113117.4]
  wire  _T_787; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113118.4]
  wire [31:0] _T_789; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113119.4]
  wire  _T_791; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113120.4]
  wire  _T_795; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113122.4]
  wire  _T_798; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113124.4]
  wire  _T_799; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113125.4]
  wire  _T_800; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113126.4]
  wire  _T_801; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113127.4]
  wire  _T_802; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113128.4]
  wire  _T_803; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113129.4]
  wire  _T_804; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113130.4]
  wire  _T_805; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113131.4]
  wire  _T_806; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113132.4]
  wire  _T_807; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113133.4]
  wire  _T_808; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113134.4]
  wire  _T_809; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113135.4]
  wire  _T_810; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113136.4]
  wire  _T_811; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113137.4]
  wire  _T_812; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113138.4]
  wire  _T_813; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113139.4]
  wire  _T_814; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113140.4]
  wire  _T_815; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113141.4]
  wire  _T_816; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113142.4]
  wire  _T_817; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113143.4]
  wire  _T_818; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113144.4]
  wire  _T_819; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113145.4]
  wire  _T_820; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113146.4]
  wire  _T_821; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113147.4]
  wire  _T_822; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113148.4]
  wire  _T_823; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113149.4]
  wire  _T_824; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113150.4]
  wire  _T_825; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113151.4]
  wire  _T_826; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113152.4]
  wire  _T_827; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113153.4]
  wire  _T_828; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113154.4]
  wire  id_ctrl_legal; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113155.4]
  wire [31:0] _T_831; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113156.4]
  wire  _T_833; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113157.4]
  wire [31:0] _T_835; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113158.4]
  wire  _T_837; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113159.4]
  wire  id_ctrl_fp; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113161.4]
  wire [31:0] _T_843; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113162.4]
  wire  id_ctrl_branch; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113163.4]
  wire [31:0] _T_849; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113165.4]
  wire  id_ctrl_jal; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113166.4]
  wire [31:0] _T_855; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113168.4]
  wire  id_ctrl_jalr; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113169.4]
  wire [31:0] _T_861; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113171.4]
  wire  _T_863; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113172.4]
  wire [31:0] _T_865; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113173.4]
  wire  _T_867; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113174.4]
  wire [31:0] _T_869; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113175.4]
  wire  id_ctrl_amo; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113176.4]
  wire  _T_874; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113178.4]
  wire  id_ctrl_rxs2; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113179.4]
  wire [31:0] _T_877; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113180.4]
  wire  _T_879; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113181.4]
  wire [31:0] _T_881; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113182.4]
  wire  _T_883; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113183.4]
  wire [31:0] _T_885; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113184.4]
  wire  _T_887; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113185.4]
  wire [31:0] _T_889; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113186.4]
  wire  _T_891; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113187.4]
  wire [31:0] _T_893; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113188.4]
  wire  _T_895; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113189.4]
  wire  _T_898; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113191.4]
  wire  _T_899; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113192.4]
  wire  _T_900; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113193.4]
  wire  id_ctrl_rxs1; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113194.4]
  wire [31:0] _T_903; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113195.4]
  wire  _T_905; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113196.4]
  wire [31:0] _T_907; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113197.4]
  wire  _T_909; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113198.4]
  wire [31:0] _T_911; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113199.4]
  wire  _T_913; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113200.4]
  wire [31:0] _T_915; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113201.4]
  wire  _T_917; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113202.4]
  wire [31:0] _T_919; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113203.4]
  wire  _T_921; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113204.4]
  wire  _T_924; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113206.4]
  wire  _T_925; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113207.4]
  wire  _T_926; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113208.4]
  wire  _T_927; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113209.4]
  wire  _T_931; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113211.4]
  wire [31:0] _T_933; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113212.4]
  wire  _T_935; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113213.4]
  wire [31:0] _T_937; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113214.4]
  wire  _T_939; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113215.4]
  wire  _T_942; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113217.4]
  wire  _T_943; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113218.4]
  wire [1:0] id_ctrl_sel_alu2; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113219.4]
  wire [31:0] _T_946; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113220.4]
  wire  _T_948; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113221.4]
  wire [31:0] _T_950; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113222.4]
  wire  _T_952; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113223.4]
  wire [31:0] _T_954; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113224.4]
  wire  _T_956; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113225.4]
  wire  _T_959; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113227.4]
  wire  _T_960; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113228.4]
  wire  _T_961; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113229.4]
  wire  _T_962; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113230.4]
  wire  _T_966; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113232.4]
  wire  _T_969; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113234.4]
  wire [1:0] id_ctrl_sel_alu1; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113235.4]
  wire [31:0] _T_972; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113236.4]
  wire  _T_974; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113237.4]
  wire  _T_978; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113239.4]
  wire  _T_981; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113241.4]
  wire [31:0] _T_983; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113242.4]
  wire  _T_985; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113243.4]
  wire  _T_988; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113245.4]
  wire [31:0] _T_990; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113246.4]
  wire  _T_992; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113247.4]
  wire [31:0] _T_994; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113248.4]
  wire  _T_996; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113249.4]
  wire  _T_1000; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113251.4]
  wire  _T_1003; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113253.4]
  wire  _T_1004; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113254.4]
  wire [1:0] _T_1005; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113255.4]
  wire [2:0] id_ctrl_sel_imm; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113256.4]
  wire [31:0] _T_1014; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113260.4]
  wire  _T_1016; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113261.4]
  wire [31:0] _T_1018; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113262.4]
  wire  _T_1020; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113263.4]
  wire [31:0] _T_1022; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113264.4]
  wire  _T_1024; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113265.4]
  wire  _T_1027; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113267.4]
  wire  _T_1028; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113268.4]
  wire [31:0] _T_1030; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113269.4]
  wire  _T_1032; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113270.4]
  wire [31:0] _T_1034; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113271.4]
  wire  _T_1036; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113272.4]
  wire [31:0] _T_1038; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113273.4]
  wire  _T_1040; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113274.4]
  wire [31:0] _T_1042; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113275.4]
  wire  _T_1044; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113276.4]
  wire [31:0] _T_1046; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113277.4]
  wire  _T_1048; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113278.4]
  wire [31:0] _T_1050; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113279.4]
  wire  _T_1052; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113280.4]
  wire  _T_1055; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113282.4]
  wire  _T_1056; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113283.4]
  wire  _T_1057; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113284.4]
  wire  _T_1058; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113285.4]
  wire  _T_1059; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113286.4]
  wire [31:0] _T_1061; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113287.4]
  wire  _T_1063; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113288.4]
  wire [31:0] _T_1065; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113289.4]
  wire  _T_1067; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113290.4]
  wire [31:0] _T_1069; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113291.4]
  wire  _T_1071; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113292.4]
  wire [31:0] _T_1073; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113293.4]
  wire  _T_1075; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113294.4]
  wire  _T_1078; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113296.4]
  wire  _T_1079; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113297.4]
  wire  _T_1080; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113298.4]
  wire [31:0] _T_1082; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113299.4]
  wire  _T_1084; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113300.4]
  wire [31:0] _T_1086; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113301.4]
  wire  _T_1088; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113302.4]
  wire  _T_1091; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113304.4]
  wire  _T_1092; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113305.4]
  wire  _T_1093; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113306.4]
  wire [1:0] _T_1094; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113307.4]
  wire [1:0] _T_1095; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113308.4]
  wire [3:0] id_ctrl_alu_fn; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113309.4]
  wire [31:0] _T_1098; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113310.4]
  wire  _T_1100; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113311.4]
  wire [31:0] _T_1102; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113312.4]
  wire  _T_1104; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113313.4]
  wire  _T_1107; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113315.4]
  wire  _T_1108; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113316.4]
  wire  _T_1109; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113317.4]
  wire  _T_1110; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113318.4]
  wire  _T_1111; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113319.4]
  wire  id_ctrl_mem; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113320.4]
  wire [31:0] _T_1114; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113321.4]
  wire  _T_1116; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113322.4]
  wire [31:0] _T_1118; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113323.4]
  wire  _T_1120; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113324.4]
  wire [31:0] _T_1122; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113325.4]
  wire  _T_1124; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113326.4]
  wire [31:0] _T_1126; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113327.4]
  wire  _T_1128; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113328.4]
  wire  _T_1131; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113330.4]
  wire  _T_1132; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113331.4]
  wire  _T_1133; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113332.4]
  wire [31:0] _T_1135; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113333.4]
  wire  _T_1137; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113334.4]
  wire [31:0] _T_1139; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113335.4]
  wire  _T_1141; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113336.4]
  wire  _T_1144; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113338.4]
  wire [31:0] _T_1146; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113339.4]
  wire  _T_1148; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113340.4]
  wire [31:0] _T_1150; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113341.4]
  wire  _T_1152; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113342.4]
  wire [31:0] _T_1154; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113343.4]
  wire  _T_1156; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113344.4]
  wire  _T_1159; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113346.4]
  wire  _T_1160; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113347.4]
  wire  _T_1161; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113348.4]
  wire [31:0] _T_1163; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113349.4]
  wire  _T_1165; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113350.4]
  wire [1:0] _T_1169; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113352.4]
  wire [1:0] _T_1170; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113353.4]
  wire [2:0] _T_1171; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113354.4]
  wire [4:0] id_ctrl_mem_cmd; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113355.4]
  wire [31:0] _T_1174; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113356.4]
  wire  _T_1176; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113357.4]
  wire [31:0] _T_1180; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113359.4]
  wire  _T_1182; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113360.4]
  wire [31:0] _T_1186; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113362.4]
  wire  _T_1188; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113363.4]
  wire [1:0] _T_1191; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113365.4]
  wire [2:0] id_ctrl_mem_type; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113366.4]
  wire [31:0] _T_1194; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113367.4]
  wire  _T_1196; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113368.4]
  wire [31:0] _T_1198; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113369.4]
  wire [31:0] _T_1202; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113371.4]
  wire  id_ctrl_rfs3; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113372.4]
  wire [31:0] _T_1225; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113385.4]
  wire  _T_1227; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113386.4]
  wire  _T_1231; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113388.4]
  wire  _T_1234; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113390.4]
  wire  _T_1235; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113391.4]
  wire  id_ctrl_wfd; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113392.4]
  wire [31:0] _T_1238; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113393.4]
  wire  id_ctrl_div; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113394.4]
  wire  _T_1246; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113397.4]
  wire  _T_1250; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113399.4]
  wire [31:0] _T_1252; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113400.4]
  wire  _T_1254; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113401.4]
  wire  _T_1258; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113403.4]
  wire [31:0] _T_1260; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113404.4]
  wire  _T_1262; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113405.4]
  wire [31:0] _T_1264; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113406.4]
  wire  _T_1266; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113407.4]
  wire [31:0] _T_1268; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113408.4]
  wire  _T_1270; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113409.4]
  wire  _T_1273; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113411.4]
  wire  _T_1274; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113412.4]
  wire  _T_1275; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113413.4]
  wire  _T_1276; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113414.4]
  wire  _T_1277; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113415.4]
  wire  id_ctrl_wxd; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113416.4]
  wire [31:0] _T_1280; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113417.4]
  wire  _T_1282; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113418.4]
  wire [31:0] _T_1286; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113420.4]
  wire  _T_1288; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113421.4]
  wire [31:0] _T_1292; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113423.4]
  wire  _T_1294; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113424.4]
  wire [1:0] _T_1297; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113426.4]
  wire [2:0] id_ctrl_csr; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113427.4]
  wire [31:0] _T_1300; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113428.4]
  wire  id_ctrl_fence_i; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113429.4]
  wire [31:0] _T_1306; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113431.4]
  wire  id_ctrl_fence; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113432.4]
  wire  _T_1323; // @[RocketCore.scala 805:45:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113468.4]
  wire [4:0] _T_1326; // @[RocketCore.scala 799:44:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113470.4]
  wire [4:0] _T_1327; // @[RocketCore.scala 799:39:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113471.4]
  wire [31:0] _T_1329; // @[RocketCore.scala 805:25:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113473.4]
  wire [4:0] _T_1336; // @[RocketCore.scala 799:44:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113479.4]
  wire [4:0] _T_1337; // @[RocketCore.scala 799:39:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113480.4]
  wire [31:0] _T_1339; // @[RocketCore.scala 805:25:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113482.4]
  wire  _T_1433; // @[package.scala 14:47:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113557.4]
  wire  _T_1434; // @[package.scala 14:47:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113558.4]
  wire  _T_1435; // @[package.scala 14:47:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113559.4]
  wire  _T_1436; // @[package.scala 14:62:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113560.4]
  wire  id_csr_en; // @[package.scala 14:62:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113561.4]
  wire  id_system_insn; // @[RocketCore.scala 198:36:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113562.4]
  wire  id_csr_ren; // @[RocketCore.scala 199:54:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113567.4]
  wire [2:0] id_csr; // @[RocketCore.scala 200:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113568.4]
  wire  _T_1447; // @[RocketCore.scala 201:50:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113569.4]
  wire  id_sfence; // @[RocketCore.scala 201:31:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113570.4]
  wire  _T_1448; // @[RocketCore.scala 202:32:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113571.4]
  wire  _T_1450; // @[RocketCore.scala 202:67:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113572.4]
  wire  _T_1451; // @[RocketCore.scala 202:64:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113573.4]
  wire  _T_1452; // @[RocketCore.scala 202:79:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113574.4]
  wire  id_csr_flush; // @[RocketCore.scala 202:50:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113575.4]
  wire  _T_1454; // @[RocketCore.scala 204:25:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113576.4]
  wire  _T_1455; // @[RocketCore.scala 205:38:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113577.4]
  wire  _T_1457; // @[RocketCore.scala 205:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113578.4]
  wire  _T_1458; // @[RocketCore.scala 205:17:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113579.4]
  wire  _T_1459; // @[RocketCore.scala 204:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113580.4]
  wire  _T_1460; // @[RocketCore.scala 206:38:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113581.4]
  wire  _T_1462; // @[RocketCore.scala 206:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113582.4]
  wire  _T_1463; // @[RocketCore.scala 206:17:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113583.4]
  wire  _T_1464; // @[RocketCore.scala 205:48:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113584.4]
  wire  _T_1465; // @[RocketCore.scala 207:48:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113585.4]
  wire  _T_1466; // @[RocketCore.scala 207:16:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113586.4]
  wire  _T_1467; // @[RocketCore.scala 206:48:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113587.4]
  wire  _T_1473; // @[RocketCore.scala 209:51:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113592.4]
  wire  _T_1475; // @[RocketCore.scala 209:33:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113593.4]
  wire  _T_1482; // @[RocketCore.scala 211:64:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113599.4]
  wire  _T_1483; // @[RocketCore.scala 211:49:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113600.4]
  wire  _T_1484; // @[RocketCore.scala 211:15:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113601.4]
  wire  id_illegal_insn; // @[RocketCore.scala 210:51:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113602.4]
  wire  id_amo_aq; // @[RocketCore.scala 214:29:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113608.4]
  wire  id_amo_rl; // @[RocketCore.scala 215:29:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113609.4]
  wire  _T_1491; // @[RocketCore.scala 216:52:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113610.4]
  wire  id_fence_next; // @[RocketCore.scala 216:37:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113611.4]
  wire  _T_1493; // @[RocketCore.scala 217:21:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113612.4]
  wire  id_mem_busy; // @[RocketCore.scala 217:38:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113613.4]
  wire  _T_1495; // @[RocketCore.scala 218:9:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113614.4]
  wire  _GEN_0; // @[RocketCore.scala 218:23:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113615.4]
  wire  _T_1505; // @[RocketCore.scala 223:33:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113626.4]
  wire  _T_1506; // @[RocketCore.scala 223:46:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113627.4]
  wire  _T_1508; // @[RocketCore.scala 223:81:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113629.4]
  wire  _T_1509; // @[RocketCore.scala 223:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113630.4]
  wire  id_do_fence; // @[RocketCore.scala 223:17:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113631.4]
  wire  _T_1520; // @[RocketCore.scala 758:26:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113644.4]
  wire  _T_1521; // @[RocketCore.scala 758:26:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113645.4]
  wire  _T_1522; // @[RocketCore.scala 758:26:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113646.4]
  wire  _T_1523; // @[RocketCore.scala 758:26:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113647.4]
  wire  id_xcpt; // @[RocketCore.scala 758:26:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113650.4]
  wire [3:0] _T_1528; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113653.4]
  wire [3:0] _T_1529; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113654.4]
  wire [3:0] _T_1530; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113655.4]
  wire [3:0] _T_1531; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113656.4]
  wire [31:0] id_cause; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113657.4]
  wire [4:0] ex_waddr; // @[RocketCore.scala 258:29:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113668.4]
  wire [4:0] mem_waddr; // @[RocketCore.scala 259:31:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113669.4]
  wire [4:0] wb_waddr; // @[RocketCore.scala 260:29:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113670.4]
  wire  _T_1549; // @[RocketCore.scala 263:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113671.4]
  wire  _T_1550; // @[RocketCore.scala 264:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113672.4]
  wire  _T_1552; // @[RocketCore.scala 264:39:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113673.4]
  wire  _T_1553; // @[RocketCore.scala 264:36:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113674.4]
  wire  id_bypass_src_0_0; // @[RocketCore.scala 266:82:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113676.4]
  wire  _T_1556; // @[RocketCore.scala 266:82:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113678.4]
  wire  id_bypass_src_0_1; // @[RocketCore.scala 266:74:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113679.4]
  wire  _T_1557; // @[RocketCore.scala 266:82:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113680.4]
  wire  id_bypass_src_0_2; // @[RocketCore.scala 266:74:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113681.4]
  wire  id_bypass_src_0_3; // @[RocketCore.scala 266:74:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113683.4]
  wire  id_bypass_src_1_0; // @[RocketCore.scala 266:82:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113684.4]
  wire  _T_1560; // @[RocketCore.scala 266:82:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113686.4]
  wire  id_bypass_src_1_1; // @[RocketCore.scala 266:74:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113687.4]
  wire  _T_1561; // @[RocketCore.scala 266:82:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113688.4]
  wire  id_bypass_src_1_2; // @[RocketCore.scala 266:74:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113689.4]
  wire  id_bypass_src_1_3; // @[RocketCore.scala 266:74:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113691.4]
  wire  _T_1585; // @[package.scala 31:81:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113695.4]
  wire [31:0] _T_1586; // @[package.scala 31:71:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113696.4]
  wire  _T_1588; // @[package.scala 31:81:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113697.4]
  wire [31:0] _T_1589; // @[package.scala 31:71:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113698.4]
  wire  _T_1591; // @[package.scala 31:81:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113699.4]
  wire [31:0] _T_1592; // @[package.scala 31:71:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113700.4]
  wire [31:0] _T_1593; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113701.4]
  wire [31:0] ex_rs_0; // @[RocketCore.scala 274:14:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113702.4]
  wire  _T_1595; // @[package.scala 31:81:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113703.4]
  wire [31:0] _T_1596; // @[package.scala 31:71:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113704.4]
  wire  _T_1598; // @[package.scala 31:81:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113705.4]
  wire [31:0] _T_1599; // @[package.scala 31:71:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113706.4]
  wire  _T_1601; // @[package.scala 31:81:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113707.4]
  wire [31:0] _T_1602; // @[package.scala 31:71:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113708.4]
  wire [31:0] _T_1603; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113709.4]
  wire [31:0] ex_rs_1; // @[RocketCore.scala 274:14:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113710.4]
  wire  _T_1605; // @[RocketCore.scala 820:24:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113711.4]
  wire  _T_1607; // @[RocketCore.scala 820:48:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113712.4]
  wire  _T_1608; // @[RocketCore.scala 820:53:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113713.4]
  wire  _T_1609; // @[RocketCore.scala 820:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113714.4]
  wire  _T_1611; // @[RocketCore.scala 821:26:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113715.4]
  wire [10:0] _T_1612; // @[RocketCore.scala 821:41:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113716.4]
  wire [10:0] _T_1613; // @[RocketCore.scala 821:49:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113717.4]
  wire [10:0] _T_1614; // @[RocketCore.scala 821:21:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113718.4]
  wire  _T_1616; // @[RocketCore.scala 822:26:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113719.4]
  wire  _T_1618; // @[RocketCore.scala 822:43:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113720.4]
  wire  _T_1619; // @[RocketCore.scala 822:36:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113721.4]
  wire [7:0] _T_1620; // @[RocketCore.scala 822:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113722.4]
  wire [7:0] _T_1621; // @[RocketCore.scala 822:73:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113723.4]
  wire [7:0] _T_1622; // @[RocketCore.scala 822:21:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113724.4]
  wire  _T_1627; // @[RocketCore.scala 823:33:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113727.4]
  wire  _T_1630; // @[RocketCore.scala 824:23:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113728.4]
  wire  _T_1631; // @[RocketCore.scala 824:39:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113729.4]
  wire  _T_1632; // @[RocketCore.scala 824:44:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113730.4]
  wire  _T_1634; // @[RocketCore.scala 825:23:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113731.4]
  wire  _T_1635; // @[RocketCore.scala 825:39:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113732.4]
  wire  _T_1636; // @[RocketCore.scala 825:43:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113733.4]
  wire  _T_1637; // @[RocketCore.scala 825:18:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113734.4]
  wire  _T_1638; // @[RocketCore.scala 824:18:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113735.4]
  wire  _T_1639; // @[RocketCore.scala 823:18:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113736.4]
  wire [5:0] _T_1646; // @[RocketCore.scala 826:66:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113740.4]
  wire [5:0] _T_1647; // @[RocketCore.scala 826:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113741.4]
  wire  _T_1652; // @[RocketCore.scala 828:24:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113743.4]
  wire  _T_1655; // @[RocketCore.scala 828:34:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113745.4]
  wire [3:0] _T_1656; // @[RocketCore.scala 828:57:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113746.4]
  wire [3:0] _T_1659; // @[RocketCore.scala 829:39:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113748.4]
  wire [3:0] _T_1660; // @[RocketCore.scala 829:52:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113749.4]
  wire [3:0] _T_1661; // @[RocketCore.scala 829:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113750.4]
  wire [3:0] _T_1662; // @[RocketCore.scala 828:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113751.4]
  wire [3:0] _T_1663; // @[RocketCore.scala 827:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113752.4]
  wire  _T_1668; // @[RocketCore.scala 831:22:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113755.4]
  wire  _T_1672; // @[RocketCore.scala 832:37:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113758.4]
  wire  _T_1674; // @[RocketCore.scala 832:17:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113759.4]
  wire  _T_1675; // @[RocketCore.scala 831:17:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113760.4]
  wire  _T_1676; // @[RocketCore.scala 830:17:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113761.4]
  wire [9:0] _T_1677; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113762.4]
  wire [10:0] _T_1678; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113763.4]
  wire  _T_1679; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113764.4]
  wire [7:0] _T_1680; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113765.4]
  wire [8:0] _T_1681; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113766.4]
  wire [10:0] _T_1682; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113767.4]
  wire  _T_1683; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113768.4]
  wire [11:0] _T_1684; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113769.4]
  wire [20:0] _T_1685; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113770.4]
  wire [31:0] _T_1686; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113771.4]
  wire [31:0] ex_imm; // @[RocketCore.scala 834:53:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113772.4]
  wire [31:0] _T_1689; // @[RocketCore.scala 277:24:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113773.4]
  wire [31:0] _T_1691; // @[RocketCore.scala 278:24:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113774.4]
  wire  _T_1692; // @[Mux.scala 46:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113775.4]
  wire [31:0] _T_1693; // @[Mux.scala 46:16:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113776.4]
  wire  _T_1694; // @[Mux.scala 46:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113777.4]
  wire [31:0] ex_op1; // @[Mux.scala 46:16:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113778.4]
  wire [31:0] _T_1697; // @[RocketCore.scala 280:24:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113779.4]
  wire [3:0] _T_1702; // @[RocketCore.scala 282:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113780.4]
  wire  _T_1703; // @[Mux.scala 46:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113781.4]
  wire [3:0] _T_1704; // @[Mux.scala 46:16:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113782.4]
  wire  _T_1705; // @[Mux.scala 46:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113783.4]
  wire [31:0] _T_1706; // @[Mux.scala 46:16:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113784.4]
  wire  _T_1707; // @[Mux.scala 46:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113785.4]
  wire [31:0] ex_op2; // @[Mux.scala 46:16:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113786.4]
  wire [31:0] _T_1708; // @[RocketCore.scala 287:24:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113793.4]
  wire [31:0] _T_1709; // @[RocketCore.scala 288:24:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113795.4]
  wire  _T_1710; // @[RocketCore.scala 292:36:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113801.4]
  wire  _T_2523; // @[RocketCore.scala 619:17:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114638.4]
  wire  _T_2524; // @[RocketCore.scala 619:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114639.4]
  wire  _T_2525; // @[RocketCore.scala 619:71:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114640.4]
  wire  _T_2309; // @[RocketCore.scala 557:55:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114422.4]
  wire  _T_2310; // @[RocketCore.scala 557:42:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114423.4]
  wire  _T_2368; // @[RocketCore.scala 577:70:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114476.4]
  wire  _T_2369; // @[RocketCore.scala 767:27:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114477.4]
  wire  _T_2312; // @[RocketCore.scala 558:55:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114424.4]
  wire  _T_2313; // @[RocketCore.scala 558:42:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114425.4]
  wire  _T_2370; // @[RocketCore.scala 577:70:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114478.4]
  wire  _T_2371; // @[RocketCore.scala 767:27:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114479.4]
  wire  _T_2374; // @[RocketCore.scala 767:50:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114482.4]
  wire  _T_2315; // @[RocketCore.scala 559:55:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114426.4]
  wire  _T_2316; // @[RocketCore.scala 559:42:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114427.4]
  wire  _T_2372; // @[RocketCore.scala 577:70:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114480.4]
  wire  _T_2373; // @[RocketCore.scala 767:27:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114481.4]
  wire  _T_2375; // @[RocketCore.scala 767:50:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114483.4]
  wire  data_hazard_ex; // @[RocketCore.scala 577:36:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114484.4]
  wire  _T_2363; // @[RocketCore.scala 576:38:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114470.4]
  wire  _T_2364; // @[RocketCore.scala 576:48:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114471.4]
  wire  _T_2365; // @[RocketCore.scala 576:64:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114472.4]
  wire  _T_2366; // @[RocketCore.scala 576:79:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114473.4]
  wire  _T_2367; // @[RocketCore.scala 576:94:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114474.4]
  wire  ex_cannot_bypass; // @[RocketCore.scala 576:108:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114475.4]
  wire  _T_2387; // @[RocketCore.scala 579:54:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114497.4]
  wire  _T_2377; // @[RocketCore.scala 767:27:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114486.4]
  wire  _T_2379; // @[RocketCore.scala 767:27:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114488.4]
  wire  _T_2384; // @[RocketCore.scala 767:50:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114493.4]
  wire  _T_2380; // @[RocketCore.scala 578:76:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114489.4]
  wire  _T_2381; // @[RocketCore.scala 767:27:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114490.4]
  wire  _T_2385; // @[RocketCore.scala 767:50:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114494.4]
  wire  _T_2383; // @[RocketCore.scala 767:27:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114492.4]
  wire  _T_2386; // @[RocketCore.scala 767:50:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114495.4]
  wire  fp_data_hazard_ex; // @[RocketCore.scala 578:39:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114496.4]
  wire  _T_2388; // @[RocketCore.scala 579:74:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114498.4]
  wire  id_ex_hazard; // @[RocketCore.scala 579:35:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114499.4]
  wire  _T_2396; // @[RocketCore.scala 586:72:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114507.4]
  wire  _T_2397; // @[RocketCore.scala 767:27:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114508.4]
  wire  _T_2398; // @[RocketCore.scala 586:72:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114509.4]
  wire  _T_2399; // @[RocketCore.scala 767:27:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114510.4]
  wire  _T_2402; // @[RocketCore.scala 767:50:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114513.4]
  wire  _T_2400; // @[RocketCore.scala 586:72:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114511.4]
  wire  _T_2401; // @[RocketCore.scala 767:27:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114512.4]
  wire  _T_2403; // @[RocketCore.scala 767:50:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114514.4]
  wire  data_hazard_mem; // @[RocketCore.scala 586:38:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114515.4]
  wire  _T_2391; // @[RocketCore.scala 585:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114501.4]
  wire  _T_2392; // @[RocketCore.scala 585:66:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114502.4]
  wire  _T_2393; // @[RocketCore.scala 585:50:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114503.4]
  wire  _T_2394; // @[RocketCore.scala 585:84:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114504.4]
  wire  _T_2395; // @[RocketCore.scala 585:100:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114505.4]
  wire  mem_cannot_bypass; // @[RocketCore.scala 585:115:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114506.4]
  wire  _T_2415; // @[RocketCore.scala 588:57:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114528.4]
  wire  _T_2405; // @[RocketCore.scala 767:27:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114517.4]
  wire  _T_2407; // @[RocketCore.scala 767:27:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114519.4]
  wire  _T_2412; // @[RocketCore.scala 767:50:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114524.4]
  wire  _T_2408; // @[RocketCore.scala 587:78:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114520.4]
  wire  _T_2409; // @[RocketCore.scala 767:27:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114521.4]
  wire  _T_2413; // @[RocketCore.scala 767:50:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114525.4]
  wire  _T_2411; // @[RocketCore.scala 767:27:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114523.4]
  wire  _T_2414; // @[RocketCore.scala 767:50:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114526.4]
  wire  fp_data_hazard_mem; // @[RocketCore.scala 587:41:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114527.4]
  wire  _T_2416; // @[RocketCore.scala 588:78:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114529.4]
  wire  id_mem_hazard; // @[RocketCore.scala 588:37:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114530.4]
  wire  _T_2499; // @[RocketCore.scala 611:18:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114616.4]
  wire  _T_2419; // @[RocketCore.scala 592:70:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114534.4]
  wire  _T_2420; // @[RocketCore.scala 767:27:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114535.4]
  wire  _T_2421; // @[RocketCore.scala 592:70:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114536.4]
  wire  _T_2422; // @[RocketCore.scala 767:27:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114537.4]
  wire  _T_2425; // @[RocketCore.scala 767:50:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114540.4]
  wire  _T_2423; // @[RocketCore.scala 592:70:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114538.4]
  wire  _T_2424; // @[RocketCore.scala 767:27:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114539.4]
  wire  _T_2426; // @[RocketCore.scala 767:50:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114541.4]
  wire  data_hazard_wb; // @[RocketCore.scala 592:36:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114542.4]
  wire  _T_1790; // @[RocketCore.scala 357:39:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113912.4]
  wire  wb_dcache_miss; // @[RocketCore.scala 357:36:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113913.4]
  wire  _T_2267; // @[RocketCore.scala 492:35:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114334.4]
  wire  wb_set_sboard; // @[RocketCore.scala 492:53:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114335.4]
  wire  _T_2438; // @[RocketCore.scala 594:54:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114555.4]
  wire  _T_2428; // @[RocketCore.scala 767:27:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114544.4]
  wire  _T_2430; // @[RocketCore.scala 767:27:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114546.4]
  wire  _T_2435; // @[RocketCore.scala 767:50:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114551.4]
  wire  _T_2431; // @[RocketCore.scala 593:76:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114547.4]
  wire  _T_2432; // @[RocketCore.scala 767:27:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114548.4]
  wire  _T_2436; // @[RocketCore.scala 767:50:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114552.4]
  wire  _T_2434; // @[RocketCore.scala 767:27:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114550.4]
  wire  _T_2437; // @[RocketCore.scala 767:50:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114553.4]
  wire  fp_data_hazard_wb; // @[RocketCore.scala 593:39:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114554.4]
  wire  _T_2439; // @[RocketCore.scala 594:71:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114556.4]
  wire  id_wb_hazard; // @[RocketCore.scala 594:35:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114557.4]
  wire  _T_2500; // @[RocketCore.scala 611:35:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114617.4]
  wire [30:0] _T_2320; // @[RocketCore.scala 785:35:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114429.4]
  wire [31:0] _GEN_233; // @[RocketCore.scala 785:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114430.4]
  wire [31:0] _T_2321; // @[RocketCore.scala 785:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114430.4]
  wire [31:0] _T_2330; // @[RocketCore.scala 781:35:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114439.4]
  wire  _T_2331; // @[RocketCore.scala 781:35:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114440.4]
  wire  dmem_resp_valid; // @[RocketCore.scala 502:44:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114351.4]
  wire  dmem_resp_replay; // @[RocketCore.scala 503:42:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114352.4]
  wire  _T_2274; // @[RocketCore.scala 499:45:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114345.4]
  wire  dmem_resp_xpu; // @[RocketCore.scala 499:23:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114347.4]
  wire  _T_2284; // @[RocketCore.scala 518:26:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114365.4]
  wire  _T_2282; // @[Decoupled.scala 30:37:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114361.4]
  wire  ll_wen; // @[RocketCore.scala 518:44:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114366.4]
  wire [4:0] dmem_resp_waddr; // @[RocketCore.scala 501:46:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114350.4]
  wire [4:0] ll_waddr; // @[RocketCore.scala 518:44:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114366.4]
  wire  _T_2332; // @[RocketCore.scala 569:86:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114441.4]
  wire  _T_2333; // @[RocketCore.scala 569:74:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114442.4]
  wire  _T_2335; // @[RocketCore.scala 572:80:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114443.4]
  wire  _T_2336; // @[RocketCore.scala 572:77:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114444.4]
  wire  _T_2337; // @[RocketCore.scala 767:27:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114445.4]
  wire [31:0] _T_2338; // @[RocketCore.scala 781:35:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114446.4]
  wire  _T_2339; // @[RocketCore.scala 781:35:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114447.4]
  wire  _T_2340; // @[RocketCore.scala 569:86:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114448.4]
  wire  _T_2341; // @[RocketCore.scala 569:74:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114449.4]
  wire  _T_2343; // @[RocketCore.scala 572:80:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114450.4]
  wire  _T_2344; // @[RocketCore.scala 572:77:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114451.4]
  wire  _T_2345; // @[RocketCore.scala 767:27:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114452.4]
  wire  _T_2354; // @[RocketCore.scala 767:50:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114460.4]
  wire [31:0] _T_2346; // @[RocketCore.scala 781:35:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114453.4]
  wire  _T_2347; // @[RocketCore.scala 781:35:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114454.4]
  wire  _T_2348; // @[RocketCore.scala 569:86:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114455.4]
  wire  _T_2349; // @[RocketCore.scala 569:74:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114456.4]
  wire  _T_2351; // @[RocketCore.scala 572:80:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114457.4]
  wire  _T_2352; // @[RocketCore.scala 572:77:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114458.4]
  wire  _T_2353; // @[RocketCore.scala 767:27:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114459.4]
  wire  id_sboard_hazard; // @[RocketCore.scala 767:50:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114461.4]
  wire  _T_2501; // @[RocketCore.scala 611:51:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114618.4]
  wire  _T_2502; // @[RocketCore.scala 612:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114619.4]
  wire  _T_2503; // @[RocketCore.scala 612:57:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114620.4]
  wire  _T_2504; // @[RocketCore.scala 612:23:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114621.4]
  wire  _T_2505; // @[RocketCore.scala 611:71:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114622.4]
  wire  _T_2469; // @[RocketCore.scala 602:18:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114586.4]
  wire  _T_2470; // @[RocketCore.scala 602:15:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114587.4]
  wire [31:0] _T_2471; // @[RocketCore.scala 781:35:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114588.4]
  wire  _T_2472; // @[RocketCore.scala 781:35:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114589.4]
  wire  _T_2473; // @[RocketCore.scala 767:27:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114590.4]
  wire [31:0] _T_2474; // @[RocketCore.scala 781:35:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114591.4]
  wire  _T_2475; // @[RocketCore.scala 781:35:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114592.4]
  wire  _T_2476; // @[RocketCore.scala 767:27:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114593.4]
  wire  _T_2483; // @[RocketCore.scala 767:50:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114600.4]
  wire [31:0] _T_2477; // @[RocketCore.scala 781:35:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114594.4]
  wire  _T_2478; // @[RocketCore.scala 781:35:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114595.4]
  wire  _T_2479; // @[RocketCore.scala 767:27:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114596.4]
  wire  _T_2484; // @[RocketCore.scala 767:50:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114601.4]
  wire [31:0] _T_2480; // @[RocketCore.scala 781:35:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114597.4]
  wire  _T_2481; // @[RocketCore.scala 781:35:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114598.4]
  wire  _T_2482; // @[RocketCore.scala 767:27:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114599.4]
  wire  _T_2485; // @[RocketCore.scala 767:50:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114602.4]
  wire  id_stall_fpu; // @[RocketCore.scala 602:35:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114603.4]
  wire  _T_2506; // @[RocketCore.scala 613:16:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114623.4]
  wire  _T_2507; // @[RocketCore.scala 612:74:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114624.4]
  wire  _T_2508; // @[RocketCore.scala 614:17:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114625.4]
  wire  _T_2509; // @[RocketCore.scala 613:32:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114626.4]
  wire  wb_wxd; // @[RocketCore.scala 491:29:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114333.4]
  wire  _T_2513; // @[RocketCore.scala 616:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114629.4]
  wire  _T_2514; // @[RocketCore.scala 616:62:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114630.4]
  wire  _T_2515; // @[RocketCore.scala 616:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114631.4]
  wire  _T_2517; // @[RocketCore.scala 616:21:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114632.4]
  wire  _T_2518; // @[RocketCore.scala 616:75:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114633.4]
  wire  _T_2519; // @[RocketCore.scala 616:17:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114634.4]
  wire  _T_2520; // @[RocketCore.scala 615:34:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114635.4]
  wire  _T_2521; // @[RocketCore.scala 616:96:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114636.4]
  wire  ctrl_stalld; // @[RocketCore.scala 617:17:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114637.4]
  wire  _T_2526; // @[RocketCore.scala 619:89:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114641.4]
  wire  ctrl_killd; // @[RocketCore.scala 619:104:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114642.4]
  wire  _T_1712; // @[RocketCore.scala 299:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113808.4]
  wire  _T_1714; // @[RocketCore.scala 300:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113810.4]
  wire  _T_1715; // @[RocketCore.scala 300:29:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113811.4]
  wire  _T_1716; // @[RocketCore.scala 300:54:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113812.4]
  wire  _T_1719; // @[RocketCore.scala 301:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113815.4]
  wire  _T_1723; // @[RocketCore.scala 302:62:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113819.4]
  wire  _GEN_1; // @[RocketCore.scala 308:26:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113826.6]
  wire [1:0] _T_1737; // @[RocketCore.scala 319:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113841.8]
  wire  _T_1739; // @[RocketCore.scala 319:47:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113842.8]
  wire  _T_1740; // @[RocketCore.scala 319:28:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113843.8]
  wire [1:0] _GEN_5; // @[RocketCore.scala 319:52:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113844.8]
  wire [3:0] _GEN_7; // @[RocketCore.scala 309:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113829.6]
  wire [1:0] _GEN_9; // @[RocketCore.scala 309:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113829.6]
  wire [1:0] _GEN_10; // @[RocketCore.scala 309:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113829.6]
  wire  _T_1743; // @[RocketCore.scala 324:42:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113849.6]
  wire [1:0] _T_1748; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113855.8]
  wire [2:0] _GEN_12; // @[RocketCore.scala 326:22:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113852.6]
  wire  _T_1749; // @[RocketCore.scala 331:48:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113858.6]
  wire  _T_1750; // @[RocketCore.scala 331:48:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113859.6]
  wire  _T_1751; // @[RocketCore.scala 331:48:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113860.6]
  wire [1:0] _T_1756; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113861.6]
  wire [1:0] _T_1757; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113862.6]
  wire [1:0] _T_1758; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113863.6]
  wire  _T_1760; // @[RocketCore.scala 335:26:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113866.6]
  wire  _T_1761; // @[RocketCore.scala 335:23:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113867.6]
  wire  _T_2288; // @[RocketCore.scala 526:34:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114371.4]
  wire  _T_2289; // @[RocketCore.scala 526:31:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114372.4]
  wire  _T_2291; // @[RocketCore.scala 526:48:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114373.4]
  wire  wb_valid; // @[RocketCore.scala 526:45:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114374.4]
  wire  wb_wen; // @[RocketCore.scala 527:25:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114375.4]
  wire  rf_wen; // @[RocketCore.scala 528:23:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114376.4]
  wire [4:0] rf_waddr; // @[RocketCore.scala 529:21:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114377.4]
  wire  _T_2298; // @[RocketCore.scala 810:16:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114384.6]
  wire  _T_2302; // @[RocketCore.scala 813:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114390.8]
  wire  _T_2292; // @[RocketCore.scala 530:38:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114378.4]
  wire [31:0] ll_wdata; // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114355.4]
  wire  _T_2294; // @[RocketCore.scala 532:34:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114379.4]
  wire [31:0] _T_2295; // @[RocketCore.scala 532:21:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114380.4]
  wire [31:0] _T_2296; // @[RocketCore.scala 531:21:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114381.4]
  wire [31:0] rf_wdata; // @[RocketCore.scala 530:21:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114382.4]
  wire [31:0] _GEN_206; // @[RocketCore.scala 813:31:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114391.8]
  wire [31:0] _GEN_212; // @[RocketCore.scala 810:29:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114385.6]
  wire [31:0] id_rs_0; // @[RocketCore.scala 534:17:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114383.4]
  wire [1:0] _T_1762; // @[RocketCore.scala 336:37:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113869.8]
  wire [29:0] _T_1763; // @[RocketCore.scala 337:38:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113871.8]
  wire [1:0] _GEN_13; // @[RocketCore.scala 335:38:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113868.6]
  wire [29:0] _GEN_14; // @[RocketCore.scala 335:38:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113868.6]
  wire  _T_1764; // @[RocketCore.scala 331:48:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113874.6]
  wire  _T_1765; // @[RocketCore.scala 331:48:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113875.6]
  wire  _T_1766; // @[RocketCore.scala 331:48:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113876.6]
  wire [1:0] _T_1771; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113877.6]
  wire [1:0] _T_1772; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113878.6]
  wire [1:0] _T_1773; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113879.6]
  wire  _T_1775; // @[RocketCore.scala 335:26:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113882.6]
  wire  _T_1776; // @[RocketCore.scala 335:23:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113883.6]
  wire  _T_2303; // @[RocketCore.scala 813:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114394.8]
  wire [31:0] _GEN_207; // @[RocketCore.scala 813:31:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114395.8]
  wire [31:0] _GEN_213; // @[RocketCore.scala 810:29:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114385.6]
  wire [31:0] id_rs_1; // @[RocketCore.scala 534:17:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114383.4]
  wire [1:0] _T_1777; // @[RocketCore.scala 336:37:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113885.8]
  wire [29:0] _T_1778; // @[RocketCore.scala 337:38:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113887.8]
  wire [1:0] _GEN_15; // @[RocketCore.scala 335:38:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113884.6]
  wire [29:0] _GEN_16; // @[RocketCore.scala 335:38:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113884.6]
  wire [31:0] _T_1780; // @[RocketCore.scala 341:21:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113892.8]
  wire [1:0] _T_1782; // @[RocketCore.scala 343:31:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113894.8]
  wire [29:0] _T_1783; // @[RocketCore.scala 344:32:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113896.8]
  wire  _GEN_17; // @[RocketCore.scala 340:28:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113890.6]
  wire [1:0] _GEN_18; // @[RocketCore.scala 340:28:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113890.6]
  wire [29:0] _GEN_19; // @[RocketCore.scala 340:28:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113890.6]
  wire  _GEN_21; // @[RocketCore.scala 304:22:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113822.4]
  wire  _GEN_22; // @[RocketCore.scala 304:22:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113822.4]
  wire  _GEN_23; // @[RocketCore.scala 304:22:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113822.4]
  wire  _GEN_24; // @[RocketCore.scala 304:22:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113822.4]
  wire  _GEN_25; // @[RocketCore.scala 304:22:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113822.4]
  wire  _GEN_26; // @[RocketCore.scala 304:22:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113822.4]
  wire [1:0] _GEN_28; // @[RocketCore.scala 304:22:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113822.4]
  wire [1:0] _GEN_29; // @[RocketCore.scala 304:22:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113822.4]
  wire [2:0] _GEN_30; // @[RocketCore.scala 304:22:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113822.4]
  wire [3:0] _GEN_32; // @[RocketCore.scala 304:22:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113822.4]
  wire  _GEN_33; // @[RocketCore.scala 304:22:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113822.4]
  wire [4:0] _GEN_34; // @[RocketCore.scala 304:22:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113822.4]
  wire [2:0] _GEN_35; // @[RocketCore.scala 304:22:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113822.4]
  wire  _GEN_39; // @[RocketCore.scala 304:22:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113822.4]
  wire  _GEN_40; // @[RocketCore.scala 304:22:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113822.4]
  wire  _GEN_41; // @[RocketCore.scala 304:22:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113822.4]
  wire [2:0] _GEN_42; // @[RocketCore.scala 304:22:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113822.4]
  wire  _GEN_43; // @[RocketCore.scala 304:22:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113822.4]
  wire  _GEN_47; // @[RocketCore.scala 304:22:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113822.4]
  wire  _GEN_48; // @[RocketCore.scala 304:22:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113822.4]
  wire  _GEN_49; // @[RocketCore.scala 304:22:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113822.4]
  wire  _T_2417; // @[RocketCore.scala 589:32:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114531.4]
  wire  id_load_use; // @[RocketCore.scala 589:51:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114532.4]
  wire  _GEN_50; // @[RocketCore.scala 304:22:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113822.4]
  wire  _GEN_51; // @[RocketCore.scala 304:22:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113822.4]
  wire [1:0] _GEN_52; // @[RocketCore.scala 304:22:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113822.4]
  wire [29:0] _GEN_53; // @[RocketCore.scala 304:22:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113822.4]
  wire  _GEN_54; // @[RocketCore.scala 304:22:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113822.4]
  wire [1:0] _GEN_55; // @[RocketCore.scala 304:22:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113822.4]
  wire [29:0] _GEN_56; // @[RocketCore.scala 304:22:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113822.4]
  wire  _T_1786; // @[RocketCore.scala 347:21:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113901.4]
  wire  _T_1787; // @[RocketCore.scala 347:41:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113902.4]
  wire [31:0] _GEN_57; // @[RocketCore.scala 347:73:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113903.4]
  wire [31:0] _GEN_58; // @[RocketCore.scala 347:73:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113903.4]
  wire [31:0] _GEN_60; // @[RocketCore.scala 347:73:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113903.4]
  wire  _T_1788; // @[RocketCore.scala 356:34:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113910.4]
  wire  ex_pc_valid; // @[RocketCore.scala 356:51:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113911.4]
  wire  _T_1792; // @[RocketCore.scala 358:45:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113914.4]
  wire  _T_1793; // @[RocketCore.scala 358:42:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113915.4]
  wire  _T_1795; // @[RocketCore.scala 359:45:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113916.4]
  wire  _T_1796; // @[RocketCore.scala 359:42:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113917.4]
  wire  replay_ex_structural; // @[RocketCore.scala 358:64:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113918.4]
  wire  replay_ex_load_use; // @[RocketCore.scala 360:43:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113919.4]
  wire  _T_1797; // @[RocketCore.scala 361:75:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113920.4]
  wire  _T_1798; // @[RocketCore.scala 361:50:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113921.4]
  wire  replay_ex; // @[RocketCore.scala 361:33:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113922.4]
  wire  _T_1799; // @[RocketCore.scala 362:35:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113923.4]
  wire  _T_1801; // @[RocketCore.scala 362:51:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113924.4]
  wire  ctrl_killx; // @[RocketCore.scala 362:48:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113925.4]
  wire  _T_1803; // @[RocketCore.scala 364:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113926.4]
  wire  _T_1817; // @[RocketCore.scala 364:91:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113933.4]
  wire  _T_1818; // @[RocketCore.scala 364:91:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113934.4]
  wire  _T_1819; // @[RocketCore.scala 364:91:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113935.4]
  wire  _T_1820; // @[RocketCore.scala 364:91:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113936.4]
  wire  _T_1823; // @[RocketCore.scala 364:91:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113938.4]
  wire  _T_1824; // @[RocketCore.scala 364:91:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113939.4]
  wire  _T_1825; // @[RocketCore.scala 364:91:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113940.4]
  wire  ex_slow_bypass; // @[RocketCore.scala 364:50:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113941.4]
  wire  ex_xcpt; // @[RocketCore.scala 368:28:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113945.4]
  wire  _T_1845; // @[RocketCore.scala 374:36:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113956.4]
  wire  mem_pc_valid; // @[RocketCore.scala 374:54:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113957.4]
  wire [31:0] _T_1846; // @[RocketCore.scala 375:34:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113958.4]
  wire  _T_1852; // @[RocketCore.scala 820:48:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113961.4]
  wire  _T_1853; // @[RocketCore.scala 820:53:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113962.4]
  wire [10:0] _T_1859; // @[RocketCore.scala 821:21:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113967.4]
  wire [7:0] _T_1865; // @[RocketCore.scala 822:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113971.4]
  wire [7:0] _T_1866; // @[RocketCore.scala 822:73:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113972.4]
  wire [7:0] _T_1867; // @[RocketCore.scala 822:21:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113973.4]
  wire  _T_1876; // @[RocketCore.scala 824:39:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113978.4]
  wire  _T_1877; // @[RocketCore.scala 824:44:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113979.4]
  wire  _T_1880; // @[RocketCore.scala 825:39:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113981.4]
  wire  _T_1881; // @[RocketCore.scala 825:43:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113982.4]
  wire [5:0] _T_1891; // @[RocketCore.scala 826:66:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113989.4]
  wire [3:0] _T_1901; // @[RocketCore.scala 828:57:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113995.4]
  wire [3:0] _T_1905; // @[RocketCore.scala 829:52:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113998.4]
  wire [9:0] _T_1922; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114011.4]
  wire [10:0] _T_1923; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114012.4]
  wire  _T_1924; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114013.4]
  wire [7:0] _T_1925; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114014.4]
  wire [8:0] _T_1926; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114015.4]
  wire [10:0] _T_1927; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114016.4]
  wire  _T_1928; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114017.4]
  wire [11:0] _T_1929; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114018.4]
  wire [20:0] _T_1930; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114019.4]
  wire [31:0] _T_1931; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114020.4]
  wire [31:0] _T_1932; // @[RocketCore.scala 834:53:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114021.4]
  wire [9:0] _T_2007; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114073.4]
  wire [10:0] _T_2008; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114074.4]
  wire  _T_2009; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114075.4]
  wire [7:0] _T_2010; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114076.4]
  wire [8:0] _T_2011; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114077.4]
  wire [20:0] _T_2015; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114081.4]
  wire [31:0] _T_2016; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114082.4]
  wire [31:0] _T_2017; // @[RocketCore.scala 834:53:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114083.4]
  wire [3:0] _T_2020; // @[RocketCore.scala 378:8:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114084.4]
  wire [31:0] _T_2021; // @[RocketCore.scala 377:8:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114085.4]
  wire [31:0] _T_2022; // @[RocketCore.scala 376:8:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114086.4]
  wire [32:0] _T_2023; // @[RocketCore.scala 375:41:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114087.4]
  wire [31:0] _T_2024; // @[RocketCore.scala 375:41:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114088.4]
  wire [31:0] mem_br_target; // @[RocketCore.scala 375:41:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114089.4]
  wire  _T_2025; // @[RocketCore.scala 379:36:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114090.4]
  wire [31:0] _T_2026; // @[RocketCore.scala 379:106:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114091.4]
  wire [31:0] _T_2027; // @[RocketCore.scala 379:21:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114092.4]
  wire [31:0] _T_2029; // @[RocketCore.scala 379:129:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114093.4]
  wire [31:0] _T_2030; // @[RocketCore.scala 379:129:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114094.4]
  wire [31:0] mem_npc; // @[RocketCore.scala 379:141:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114095.4]
  wire  _T_2039; // @[RocketCore.scala 383:66:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114103.4]
  wire  _T_2040; // @[RocketCore.scala 383:56:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114104.4]
  wire  _T_2042; // @[RocketCore.scala 383:73:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114105.4]
  wire  mem_npc_misaligned; // @[RocketCore.scala 383:70:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114106.4]
  wire  _T_2044; // @[RocketCore.scala 384:27:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114107.4]
  wire  _T_2045; // @[RocketCore.scala 384:59:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114108.4]
  wire  _T_2046; // @[RocketCore.scala 384:41:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114109.4]
  wire [31:0] _T_2048; // @[RocketCore.scala 384:26:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114111.4]
  wire [31:0] mem_int_wdata; // @[RocketCore.scala 384:119:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114112.4]
  wire  _T_2058; // @[RocketCore.scala 391:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114124.4]
  wire  _T_2061; // @[RocketCore.scala 392:37:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114127.4]
  wire  _T_2064; // @[RocketCore.scala 393:31:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114130.4]
  wire  _T_2067; // @[RocketCore.scala 394:45:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114133.4]
  wire  _T_2068; // @[RocketCore.scala 398:23:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114135.4]
  wire  _T_2071; // @[Consts.scala 93:31:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114143.8]
  wire  _T_2073; // @[Consts.scala 93:48:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114144.8]
  wire  _T_2074; // @[Consts.scala 93:41:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114145.8]
  wire  _T_2077; // @[Consts.scala 93:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114147.8]
  wire  _T_2082; // @[package.scala 14:47:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114148.8]
  wire  _T_2083; // @[package.scala 14:47:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114149.8]
  wire  _T_2084; // @[package.scala 14:47:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114150.8]
  wire  _T_2085; // @[package.scala 14:47:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114151.8]
  wire  _T_2086; // @[package.scala 14:62:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114152.8]
  wire  _T_2087; // @[package.scala 14:62:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114153.8]
  wire  _T_2088; // @[package.scala 14:62:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114154.8]
  wire  _T_2094; // @[package.scala 14:47:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114155.8]
  wire  _T_2095; // @[package.scala 14:47:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114156.8]
  wire  _T_2096; // @[package.scala 14:47:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114157.8]
  wire  _T_2097; // @[package.scala 14:47:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114158.8]
  wire  _T_2098; // @[package.scala 14:47:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114159.8]
  wire  _T_2099; // @[package.scala 14:62:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114160.8]
  wire  _T_2100; // @[package.scala 14:62:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114161.8]
  wire  _T_2101; // @[package.scala 14:62:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114162.8]
  wire  _T_2102; // @[package.scala 14:62:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114163.8]
  wire  _T_2103; // @[Consts.scala 91:44:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114164.8]
  wire  _T_2104; // @[Consts.scala 93:75:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114165.8]
  wire  _T_2105; // @[RocketCore.scala 403:33:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114166.8]
  wire  _T_2107; // @[Consts.scala 94:32:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114168.8]
  wire  _T_2109; // @[Consts.scala 94:49:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114169.8]
  wire  _T_2110; // @[Consts.scala 94:42:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114170.8]
  wire  _T_2113; // @[Consts.scala 94:59:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114172.8]
  wire  _T_2140; // @[Consts.scala 94:76:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114190.8]
  wire  _T_2141; // @[RocketCore.scala 404:34:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114191.8]
  wire  _T_2142; // @[RocketCore.scala 417:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114203.8]
  wire  _T_2144; // @[RocketCore.scala 417:24:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114205.8]
  wire [2:0] _T_2146; // @[RocketCore.scala 418:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114207.10]
  wire [1:0] _T_2148; // @[AMOALU.scala 10:17:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114208.10]
  wire  _T_2150; // @[AMOALU.scala 26:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114209.10]
  wire [7:0] _T_2151; // @[AMOALU.scala 26:66:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114210.10]
  wire [15:0] _T_2152; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114211.10]
  wire [31:0] _T_2153; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114212.10]
  wire  _T_2155; // @[AMOALU.scala 26:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114213.10]
  wire [15:0] _T_2156; // @[AMOALU.scala 26:66:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114214.10]
  wire [31:0] _T_2157; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114215.10]
  wire [31:0] _T_2158; // @[AMOALU.scala 26:13:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114216.10]
  wire [31:0] _T_2159; // @[AMOALU.scala 26:13:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114217.10]
  wire [31:0] _GEN_69; // @[RocketCore.scala 417:71:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114206.8]
  wire  _T_2160; // @[RocketCore.scala 421:24:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114220.8]
  wire  _GEN_70; // @[RocketCore.scala 421:48:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114221.8]
  wire  _GEN_71; // @[RocketCore.scala 421:48:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114221.8]
  wire  _GEN_73; // @[RocketCore.scala 400:28:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114140.6]
  wire  _GEN_74; // @[RocketCore.scala 400:28:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114140.6]
  wire  _GEN_75; // @[RocketCore.scala 400:28:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114140.6]
  wire  _GEN_76; // @[RocketCore.scala 400:28:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114140.6]
  wire  _GEN_77; // @[RocketCore.scala 400:28:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114140.6]
  wire  _GEN_85; // @[RocketCore.scala 400:28:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114140.6]
  wire  _GEN_91; // @[RocketCore.scala 400:28:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114140.6]
  wire  _GEN_92; // @[RocketCore.scala 400:28:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114140.6]
  wire  _GEN_93; // @[RocketCore.scala 400:28:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114140.6]
  wire [2:0] _GEN_94; // @[RocketCore.scala 400:28:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114140.6]
  wire  _GEN_95; // @[RocketCore.scala 400:28:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114140.6]
  wire  _GEN_99; // @[RocketCore.scala 400:28:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114140.6]
  wire  _GEN_100; // @[RocketCore.scala 400:28:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114140.6]
  wire  _GEN_101; // @[RocketCore.scala 400:28:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114140.6]
  wire  _GEN_102; // @[RocketCore.scala 400:28:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114140.6]
  wire  _GEN_111; // @[RocketCore.scala 400:28:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114140.6]
  wire  _GEN_112; // @[RocketCore.scala 400:28:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114140.6]
  wire [31:0] _GEN_113; // @[RocketCore.scala 400:28:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114140.6]
  wire [31:0] _GEN_114; // @[RocketCore.scala 400:28:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114140.6]
  wire [31:0] _GEN_116; // @[RocketCore.scala 400:28:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114140.6]
  wire [31:0] _GEN_117; // @[RocketCore.scala 400:28:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114140.6]
  wire  _GEN_118; // @[RocketCore.scala 400:28:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114140.6]
  wire [31:0] _GEN_119; // @[RocketCore.scala 400:28:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114140.6]
  wire  _GEN_120; // @[RocketCore.scala 398:46:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114136.4]
  wire  _GEN_122; // @[RocketCore.scala 398:46:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114136.4]
  wire  _GEN_123; // @[RocketCore.scala 398:46:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114136.4]
  wire  _GEN_124; // @[RocketCore.scala 398:46:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114136.4]
  wire  _GEN_125; // @[RocketCore.scala 398:46:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114136.4]
  wire  _GEN_126; // @[RocketCore.scala 398:46:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114136.4]
  wire  _GEN_134; // @[RocketCore.scala 398:46:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114136.4]
  wire  _GEN_140; // @[RocketCore.scala 398:46:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114136.4]
  wire  _GEN_141; // @[RocketCore.scala 398:46:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114136.4]
  wire  _GEN_142; // @[RocketCore.scala 398:46:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114136.4]
  wire [2:0] _GEN_143; // @[RocketCore.scala 398:46:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114136.4]
  wire  _GEN_144; // @[RocketCore.scala 398:46:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114136.4]
  wire  _GEN_148; // @[RocketCore.scala 398:46:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114136.4]
  wire  _GEN_149; // @[RocketCore.scala 398:46:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114136.4]
  wire  _GEN_150; // @[RocketCore.scala 398:46:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114136.4]
  wire  _GEN_159; // @[RocketCore.scala 398:46:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114136.4]
  wire  _GEN_160; // @[RocketCore.scala 398:46:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114136.4]
  wire [31:0] _GEN_161; // @[RocketCore.scala 398:46:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114136.4]
  wire [31:0] _GEN_162; // @[RocketCore.scala 398:46:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114136.4]
  wire [31:0] _GEN_164; // @[RocketCore.scala 398:46:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114136.4]
  wire [31:0] _GEN_165; // @[RocketCore.scala 398:46:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114136.4]
  wire  _GEN_166; // @[RocketCore.scala 398:46:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114136.4]
  wire [31:0] _GEN_167; // @[RocketCore.scala 398:46:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114136.4]
  wire  _T_2163; // @[RocketCore.scala 428:38:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114226.4]
  wire  _T_2164; // @[RocketCore.scala 428:75:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114227.4]
  wire  mem_breakpoint; // @[RocketCore.scala 428:57:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114228.4]
  wire  _T_2165; // @[RocketCore.scala 429:44:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114229.4]
  wire  _T_2166; // @[RocketCore.scala 429:82:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114230.4]
  wire  mem_debug_breakpoint; // @[RocketCore.scala 429:64:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114231.4]
  wire  _T_2170; // @[RocketCore.scala 758:26:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114232.4]
  wire  mem_new_xcpt; // @[RocketCore.scala 758:26:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114233.4]
  wire [1:0] _T_2171; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114234.4]
  wire [3:0] mem_new_cause; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114235.4]
  wire  _T_2172; // @[RocketCore.scala 436:29:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114236.4]
  wire  _T_2173; // @[RocketCore.scala 437:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114237.4]
  wire  mem_xcpt; // @[RocketCore.scala 758:26:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114238.4]
  wire [31:0] mem_cause; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114239.4]
  wire  dcache_kill_mem; // @[RocketCore.scala 446:55:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114253.4]
  wire  _T_2193; // @[RocketCore.scala 447:36:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114254.4]
  wire  fpu_kill_mem; // @[RocketCore.scala 447:51:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114255.4]
  wire  _T_2194; // @[RocketCore.scala 448:37:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114256.4]
  wire  replay_mem; // @[RocketCore.scala 448:55:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114257.4]
  wire  _T_2195; // @[RocketCore.scala 449:38:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114258.4]
  wire  _T_2196; // @[RocketCore.scala 449:52:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114259.4]
  wire  _T_2198; // @[RocketCore.scala 449:71:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114260.4]
  wire  killm_common; // @[RocketCore.scala 449:68:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114261.4]
  wire  _T_2199; // @[Decoupled.scala 30:37:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114262.4]
  wire  _T_2202; // @[RocketCore.scala 450:31:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114265.4]
  wire  _T_2203; // @[RocketCore.scala 451:33:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114267.4]
  wire  ctrl_killm; // @[RocketCore.scala 451:45:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114268.4]
  wire  _T_2205; // @[RocketCore.scala 454:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114269.4]
  wire  _T_2207; // @[RocketCore.scala 455:34:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114271.4]
  wire  _T_2208; // @[RocketCore.scala 455:31:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114272.4]
  wire  _T_2211; // @[RocketCore.scala 456:27:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114275.4]
  wire  _T_2214; // @[RocketCore.scala 457:36:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114278.4]
  wire  _T_2217; // @[RocketCore.scala 461:39:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114284.6]
  wire  _T_2218; // @[RocketCore.scala 461:54:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114285.6]
  wire [31:0] _T_2219; // @[RocketCore.scala 461:24:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114286.6]
  wire  _GEN_171; // @[RocketCore.scala 458:23:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114280.4]
  wire  _GEN_182; // @[RocketCore.scala 458:23:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114280.4]
  wire  _GEN_188; // @[RocketCore.scala 458:23:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114280.4]
  wire  _GEN_189; // @[RocketCore.scala 458:23:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114280.4]
  wire  _GEN_190; // @[RocketCore.scala 458:23:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114280.4]
  wire [2:0] _GEN_191; // @[RocketCore.scala 458:23:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114280.4]
  wire  _GEN_192; // @[RocketCore.scala 458:23:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114280.4]
  wire [31:0] _GEN_197; // @[RocketCore.scala 458:23:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114280.4]
  wire [31:0] _GEN_199; // @[RocketCore.scala 458:23:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114280.4]
  wire [31:0] _GEN_200; // @[RocketCore.scala 458:23:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114280.4]
  wire [31:0] _GEN_202; // @[RocketCore.scala 458:23:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114280.4]
  wire [2:0] _T_2244; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114315.4]
  wire [3:0] _T_2245; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114316.4]
  wire [3:0] _T_2246; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114317.4]
  wire [3:0] _T_2247; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114318.4]
  wire [3:0] _T_2248; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114319.4]
  wire [31:0] wb_cause; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114320.4]
  wire  _GEN_203; // @[RocketCore.scala 518:44:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114366.4]
  wire [4:0] _T_2300; // @[RocketCore.scala 799:39:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114387.8]
  wire  _GEN_216; // @[RocketCore.scala 534:17:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114383.4]
  wire [11:0] _T_2304; // @[RocketCore.scala 537:41:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114400.4]
  wire [11:0] _T_2305; // @[RocketCore.scala 552:32:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114416.4]
  wire [2:0] _T_2307; // @[RocketCore.scala 553:23:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114418.4]
  wire [31:0] _T_2324; // @[RocketCore.scala 788:62:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114431.4]
  wire [31:0] _T_2326; // @[RocketCore.scala 788:49:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114432.4]
  wire [31:0] _T_2327; // @[RocketCore.scala 780:64:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114433.4]
  wire [31:0] _T_2328; // @[RocketCore.scala 780:62:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114434.4]
  wire [31:0] _GEN_220; // @[RocketCore.scala 792:18:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114436.4]
  wire  _T_2355; // @[RocketCore.scala 573:28:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114462.4]
  wire [31:0] _T_2357; // @[RocketCore.scala 788:62:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114463.4]
  wire [31:0] _T_2359; // @[RocketCore.scala 788:49:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114464.4]
  wire [31:0] _T_2360; // @[RocketCore.scala 779:60:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114465.4]
  wire  _T_2361; // @[RocketCore.scala 791:17:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114466.4]
  wire [31:0] _GEN_221; // @[RocketCore.scala 792:18:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114467.4]
  wire  _T_2444; // @[RocketCore.scala 598:35:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114559.4]
  wire  _T_2445; // @[RocketCore.scala 598:50:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114560.4]
  wire  _T_2446; // @[RocketCore.scala 598:72:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114561.4]
  wire [31:0] _T_2450; // @[RocketCore.scala 788:49:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114563.4]
  wire [31:0] _T_2451; // @[RocketCore.scala 779:60:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114564.4]
  wire [31:0] _GEN_222; // @[RocketCore.scala 792:18:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114566.4]
  wire  _T_2453; // @[RocketCore.scala 599:38:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114569.4]
  wire [31:0] _T_2455; // @[RocketCore.scala 788:62:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114570.4]
  wire [31:0] _T_2457; // @[RocketCore.scala 788:49:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114571.4]
  wire [31:0] _T_2458; // @[RocketCore.scala 780:64:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114572.4]
  wire [31:0] _T_2459; // @[RocketCore.scala 780:62:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114573.4]
  wire  _T_2460; // @[RocketCore.scala 791:17:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114574.4]
  wire [31:0] _GEN_223; // @[RocketCore.scala 792:18:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114575.4]
  wire [31:0] _T_2462; // @[RocketCore.scala 788:62:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114578.4]
  wire [31:0] _T_2464; // @[RocketCore.scala 788:49:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114579.4]
  wire [31:0] _T_2465; // @[RocketCore.scala 780:64:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114580.4]
  wire [31:0] _T_2466; // @[RocketCore.scala 780:62:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114581.4]
  wire  _T_2467; // @[RocketCore.scala 791:17:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114582.4]
  wire [31:0] _GEN_224; // @[RocketCore.scala 792:18:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114583.4]
  wire  _T_2489; // @[RocketCore.scala 606:62:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114606.4]
  wire  _T_2490; // @[RocketCore.scala 606:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114607.4]
  wire  _T_2530; // @[RocketCore.scala 624:17:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114647.4]
  wire [31:0] _T_2531; // @[RocketCore.scala 625:8:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114648.4]
  wire [31:0] _T_2532; // @[RocketCore.scala 624:8:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114649.4]
  wire  _T_2533; // @[RocketCore.scala 627:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114651.4]
  wire  _T_2535; // @[RocketCore.scala 627:62:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114652.4]
  wire  _T_2536; // @[RocketCore.scala 627:59:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114653.4]
  wire  _T_2541; // @[RocketCore.scala 635:28:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114664.4]
  wire  _T_2576; // @[RocketCore.scala 656:31:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114702.4]
  wire  _T_2577; // @[RocketCore.scala 661:43:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114708.4]
  wire  _T_2578; // @[RocketCore.scala 666:41:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114713.4]
  wire [5:0] ex_dcache_tag; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114715.4]
  wire [31:0] _T_2580; // @[RocketCore.scala 675:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114722.4]
  wire  _T_2581; // @[RocketCore.scala 676:35:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114724.4]
  wire [4:0] _T_2599; // @[RocketCore.scala 681:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114749.4]
  wire [4:0] _T_2600; // @[RocketCore.scala 681:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114751.4]
  wire [31:0] _T_2606; // @[RocketCore.scala 742:32:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114762.4]
  wire  _T_2608; // @[RocketCore.scala 742:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114763.4]
  wire  _T_2609; // @[RocketCore.scala 742:62:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114764.4]
  wire [31:0] _T_2610; // @[RocketCore.scala 743:31:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114765.4]
  wire  _T_2613; // @[RocketCore.scala 744:24:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114767.4]
  wire  _T_2614; // @[RocketCore.scala 744:21:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114768.4]
  wire [4:0] _T_2616; // @[RocketCore.scala 744:13:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114769.4]
  wire  _T_2629; // @[RocketCore.scala 741:11:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114781.4]
  wire  _T_2631; // @[RocketCore.scala 753:25:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114787.4]
  wire  _T_2632; // @[RocketCore.scala 754:25:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114789.6]
  wire  _T_2634; // @[RocketCore.scala 754:12:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114791.6]
  wire  _T_2636; // @[RocketCore.scala 754:12:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114792.6]
  MIV_RV32IMAF_L1_AHB_C0_MIV_RV32IMAF_L1_AHB_C0_0_MIV_RV32IMAF_L1_AHB_IBUF ibuf ( // @[RocketCore.scala 174:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113052.4]
    .clock(ibuf_clock),
    .io_imem_ready(ibuf_io_imem_ready),
    .io_imem_valid(ibuf_io_imem_valid),
    .io_imem_bits_btb_taken(ibuf_io_imem_bits_btb_taken),
    .io_imem_bits_btb_bridx(ibuf_io_imem_bits_btb_bridx),
    .io_imem_bits_pc(ibuf_io_imem_bits_pc),
    .io_imem_bits_data(ibuf_io_imem_bits_data),
    .io_imem_bits_xcpt_pf_inst(ibuf_io_imem_bits_xcpt_pf_inst),
    .io_imem_bits_xcpt_ae_inst(ibuf_io_imem_bits_xcpt_ae_inst),
    .io_imem_bits_replay(ibuf_io_imem_bits_replay),
    .io_pc(ibuf_io_pc),
    .io_inst_0_ready(ibuf_io_inst_0_ready),
    .io_inst_0_valid(ibuf_io_inst_0_valid),
    .io_inst_0_bits_xcpt0_pf_inst(ibuf_io_inst_0_bits_xcpt0_pf_inst),
    .io_inst_0_bits_xcpt0_ae_inst(ibuf_io_inst_0_bits_xcpt0_ae_inst),
    .io_inst_0_bits_replay(ibuf_io_inst_0_bits_replay),
    .io_inst_0_bits_inst_bits(ibuf_io_inst_0_bits_inst_bits),
    .io_inst_0_bits_inst_rd(ibuf_io_inst_0_bits_inst_rd),
    .io_inst_0_bits_inst_rs1(ibuf_io_inst_0_bits_inst_rs1),
    .io_inst_0_bits_inst_rs2(ibuf_io_inst_0_bits_inst_rs2),
    .io_inst_0_bits_inst_rs3(ibuf_io_inst_0_bits_inst_rs3),
    .io_inst_0_bits_raw(ibuf_io_inst_0_bits_raw)
  );
  MIV_RV32IMAF_L1_AHB_C0_MIV_RV32IMAF_L1_AHB_C0_0_MIV_RV32IMAF_L1_AHB_CSRFILE csr ( // @[RocketCore.scala 196:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113553.4]
    .clock(csr_clock),
    .reset(csr_reset),
    .io_interrupts_debug(csr_io_interrupts_debug),
    .io_interrupts_mtip(csr_io_interrupts_mtip),
    .io_interrupts_msip(csr_io_interrupts_msip),
    .io_interrupts_meip(csr_io_interrupts_meip),
    .io_rw_addr(csr_io_rw_addr),
    .io_rw_cmd(csr_io_rw_cmd),
    .io_rw_rdata(csr_io_rw_rdata),
    .io_rw_wdata(csr_io_rw_wdata),
    .io_decode_0_csr(csr_io_decode_0_csr),
    .io_decode_0_fp_illegal(csr_io_decode_0_fp_illegal),
    .io_decode_0_read_illegal(csr_io_decode_0_read_illegal),
    .io_decode_0_write_illegal(csr_io_decode_0_write_illegal),
    .io_decode_0_write_flush(csr_io_decode_0_write_flush),
    .io_csr_stall(csr_io_csr_stall),
    .io_eret(csr_io_eret),
    .io_singleStep(csr_io_singleStep),
    .io_status_debug(csr_io_status_debug),
    .io_status_isa(csr_io_status_isa),
    .io_status_dprv(csr_io_status_dprv),
    .io_status_prv(csr_io_status_prv),
    .io_status_sd(csr_io_status_sd),
    .io_status_zero2(csr_io_status_zero2),
    .io_status_sxl(csr_io_status_sxl),
    .io_status_uxl(csr_io_status_uxl),
    .io_status_sd_rv32(csr_io_status_sd_rv32),
    .io_status_zero1(csr_io_status_zero1),
    .io_status_tsr(csr_io_status_tsr),
    .io_status_tw(csr_io_status_tw),
    .io_status_tvm(csr_io_status_tvm),
    .io_status_mxr(csr_io_status_mxr),
    .io_status_sum(csr_io_status_sum),
    .io_status_mprv(csr_io_status_mprv),
    .io_status_xs(csr_io_status_xs),
    .io_status_fs(csr_io_status_fs),
    .io_status_mpp(csr_io_status_mpp),
    .io_status_hpp(csr_io_status_hpp),
    .io_status_spp(csr_io_status_spp),
    .io_status_mpie(csr_io_status_mpie),
    .io_status_hpie(csr_io_status_hpie),
    .io_status_spie(csr_io_status_spie),
    .io_status_upie(csr_io_status_upie),
    .io_status_mie(csr_io_status_mie),
    .io_status_hie(csr_io_status_hie),
    .io_status_sie(csr_io_status_sie),
    .io_status_uie(csr_io_status_uie),
    .io_evec(csr_io_evec),
    .io_exception(csr_io_exception),
    .io_retire(csr_io_retire),
    .io_cause(csr_io_cause),
    .io_pc(csr_io_pc),
    .io_badaddr(csr_io_badaddr),
    .io_time(csr_io_time),
    .io_fcsr_rm(csr_io_fcsr_rm),
    .io_fcsr_flags_valid(csr_io_fcsr_flags_valid),
    .io_fcsr_flags_bits(csr_io_fcsr_flags_bits),
    .io_interrupt(csr_io_interrupt),
    .io_interrupt_cause(csr_io_interrupt_cause),
    .io_bp_0_control_action(csr_io_bp_0_control_action),
    .io_bp_0_control_chain(csr_io_bp_0_control_chain),
    .io_bp_0_control_tmatch(csr_io_bp_0_control_tmatch),
    .io_bp_0_control_x(csr_io_bp_0_control_x),
    .io_bp_0_control_w(csr_io_bp_0_control_w),
    .io_bp_0_control_r(csr_io_bp_0_control_r),
    .io_bp_0_address(csr_io_bp_0_address),
    .io_bp_1_control_action(csr_io_bp_1_control_action),
    .io_bp_1_control_tmatch(csr_io_bp_1_control_tmatch),
    .io_bp_1_control_x(csr_io_bp_1_control_x),
    .io_bp_1_control_w(csr_io_bp_1_control_w),
    .io_bp_1_control_r(csr_io_bp_1_control_r),
    .io_bp_1_address(csr_io_bp_1_address),
    .io_inst_0(csr_io_inst_0),
    .io_trace_0_valid(csr_io_trace_0_valid),
    .io_trace_0_iaddr(csr_io_trace_0_iaddr),
    .io_trace_0_insn(csr_io_trace_0_insn),
    .io_trace_0_exception(csr_io_trace_0_exception)
  );
  MIV_RV32IMAF_L1_AHB_C0_MIV_RV32IMAF_L1_AHB_C0_0_MIV_RV32IMAF_L1_AHB_BREAKPOINT_UNIT bpu ( // @[RocketCore.scala 225:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113636.4]
    .io_status_debug(bpu_io_status_debug),
    .io_bp_0_control_action(bpu_io_bp_0_control_action),
    .io_bp_0_control_chain(bpu_io_bp_0_control_chain),
    .io_bp_0_control_tmatch(bpu_io_bp_0_control_tmatch),
    .io_bp_0_control_x(bpu_io_bp_0_control_x),
    .io_bp_0_control_w(bpu_io_bp_0_control_w),
    .io_bp_0_control_r(bpu_io_bp_0_control_r),
    .io_bp_0_address(bpu_io_bp_0_address),
    .io_bp_1_control_action(bpu_io_bp_1_control_action),
    .io_bp_1_control_tmatch(bpu_io_bp_1_control_tmatch),
    .io_bp_1_control_x(bpu_io_bp_1_control_x),
    .io_bp_1_control_w(bpu_io_bp_1_control_w),
    .io_bp_1_control_r(bpu_io_bp_1_control_r),
    .io_bp_1_address(bpu_io_bp_1_address),
    .io_pc(bpu_io_pc),
    .io_ea(bpu_io_ea),
    .io_xcpt_if(bpu_io_xcpt_if),
    .io_xcpt_ld(bpu_io_xcpt_ld),
    .io_xcpt_st(bpu_io_xcpt_st),
    .io_debug_if(bpu_io_debug_if),
    .io_debug_ld(bpu_io_debug_ld),
    .io_debug_st(bpu_io_debug_st)
  );
  MIV_RV32IMAF_L1_AHB_C0_MIV_RV32IMAF_L1_AHB_C0_0_MIV_RV32IMAF_L1_AHB_ALU alu ( // @[RocketCore.scala 284:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113787.4]
    .io_fn(alu_io_fn),
    .io_in2(alu_io_in2),
    .io_in1(alu_io_in1),
    .io_out(alu_io_out),
    .io_adder_out(alu_io_adder_out),
    .io_cmp_out(alu_io_cmp_out)
  );
  MIV_RV32IMAF_L1_AHB_C0_MIV_RV32IMAF_L1_AHB_C0_0_MIV_RV32IMAF_L1_AHB_MUL_DIV div ( // @[RocketCore.scala 291:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113797.4]
    .clock(div_clock),
    .reset(div_reset),
    .io_req_ready(div_io_req_ready),
    .io_req_valid(div_io_req_valid),
    .io_req_bits_fn(div_io_req_bits_fn),
    .io_req_bits_in1(div_io_req_bits_in1),
    .io_req_bits_in2(div_io_req_bits_in2),
    .io_req_bits_tag(div_io_req_bits_tag),
    .io_kill(div_io_kill),
    .io_resp_ready(div_io_resp_ready),
    .io_resp_valid(div_io_resp_valid),
    .io_resp_bits_data(div_io_resp_bits_data),
    .io_resp_bits_tag(div_io_resp_bits_tag)
  );
  MIV_RV32IMAF_L1_AHB_C0_MIV_RV32IMAF_L1_AHB_C0_0_MIV_RV32IMAF_L1_AHB_PLUSARG_READER #(.FORMAT("max-core-cycles=%d"), .DEFAULT(0)) plusarg_reader ( // @[PlusArg.scala 24:11:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114785.4]
    .out(plusarg_reader_out)
  );
  assign _T_1319__T_1328_addr = _T_1327;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign _T_1319__T_1328_data = _T_1319[_T_1319__T_1328_addr]; // @[RocketCore.scala 798:23:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113465.4]
  `else
  assign _T_1319__T_1328_data = _T_1319__T_1328_addr >= 5'h1f ? _RAND_72[31:0] : _T_1319[_T_1319__T_1328_addr]; // @[RocketCore.scala 798:23:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113465.4]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign _T_1319__T_1338_addr = _T_1337;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign _T_1319__T_1338_data = _T_1319[_T_1319__T_1338_addr]; // @[RocketCore.scala 798:23:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113465.4]
  `else
  assign _T_1319__T_1338_data = _T_1319__T_1338_addr >= 5'h1f ? _RAND_73[31:0] : _T_1319[_T_1319__T_1338_addr]; // @[RocketCore.scala 798:23:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113465.4]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign _T_1319__T_2301_data = rf_wdata;
  assign _T_1319__T_2301_addr = _T_2300;
  assign _T_1319__T_2301_mask = _GEN_216;
  assign _T_1319__T_2301_en = _GEN_216;
  assign replay_wb_common = io_dmem_s2_nack | wb_reg_replay; // @[RocketCore.scala 493:42:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114336.4]
  assign replay_wb_rocc = wb_reg_valid & wb_ctrl_rocc; // @[RocketCore.scala 494:37:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114337.4]
  assign replay_wb = replay_wb_common | replay_wb_rocc; // @[RocketCore.scala 495:36:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114340.4]
  assign _T_2221 = wb_reg_valid & wb_ctrl_mem; // @[RocketCore.scala 473:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114297.4]
  assign _T_2222 = _T_2221 & io_dmem_s2_xcpt_ma_st; // @[RocketCore.scala 473:34:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114298.4]
  assign _T_2239 = wb_reg_xcpt | _T_2222; // @[RocketCore.scala 758:26:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114309.4]
  assign _T_2225 = _T_2221 & io_dmem_s2_xcpt_ma_ld; // @[RocketCore.scala 474:34:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114300.4]
  assign _T_2240 = _T_2239 | _T_2225; // @[RocketCore.scala 758:26:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114310.4]
  assign _T_2228 = _T_2221 & io_dmem_s2_xcpt_pf_st; // @[RocketCore.scala 475:34:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114302.4]
  assign _T_2241 = _T_2240 | _T_2228; // @[RocketCore.scala 758:26:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114311.4]
  assign _T_2231 = _T_2221 & io_dmem_s2_xcpt_pf_ld; // @[RocketCore.scala 476:34:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114304.4]
  assign _T_2242 = _T_2241 | _T_2231; // @[RocketCore.scala 758:26:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114312.4]
  assign _T_2234 = _T_2221 & io_dmem_s2_xcpt_ae_st; // @[RocketCore.scala 477:34:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114306.4]
  assign _T_2243 = _T_2242 | _T_2234; // @[RocketCore.scala 758:26:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114313.4]
  assign _T_2237 = _T_2221 & io_dmem_s2_xcpt_ae_ld; // @[RocketCore.scala 478:34:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114308.4]
  assign wb_xcpt = _T_2243 | _T_2237; // @[RocketCore.scala 758:26:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114314.4]
  assign _T_2271 = replay_wb | wb_xcpt; // @[RocketCore.scala 496:27:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114341.4]
  assign _T_2272 = _T_2271 | csr_io_eret; // @[RocketCore.scala 496:38:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114342.4]
  assign take_pc_wb = _T_2272 | wb_reg_flush_pipe; // @[RocketCore.scala 496:53:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114343.4]
  assign _T_2050 = mem_ctrl_branch & mem_br_taken; // @[RocketCore.scala 386:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114115.4]
  assign _T_2051 = _T_2050 | mem_ctrl_jalr; // @[RocketCore.scala 386:57:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114116.4]
  assign mem_cfi_taken = _T_2051 | mem_ctrl_jal; // @[RocketCore.scala 386:74:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114117.4]
  assign _T_2055 = mem_cfi_taken | mem_reg_sfence; // @[RocketCore.scala 389:54:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114121.4]
  assign take_pc_mem = mem_reg_valid & _T_2055; // @[RocketCore.scala 389:32:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114122.4]
  assign take_pc = take_pc_wb | take_pc_mem; // @[RocketCore.scala 170:35:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113051.4]
  assign _T_671 = ibuf_io_inst_0_bits_inst_bits & 32'h207f; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113060.4]
  assign _T_673 = _T_671 == 32'h3; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113061.4]
  assign _T_675 = ibuf_io_inst_0_bits_inst_bits & 32'h607f; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113062.4]
  assign _T_677 = _T_675 == 32'hf; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113063.4]
  assign _T_679 = ibuf_io_inst_0_bits_inst_bits & 32'h5f; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113064.4]
  assign _T_681 = _T_679 == 32'h17; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113065.4]
  assign _T_683 = ibuf_io_inst_0_bits_inst_bits & 32'hfc00007f; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113066.4]
  assign _T_685 = _T_683 == 32'h33; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113067.4]
  assign _T_687 = ibuf_io_inst_0_bits_inst_bits & 32'hbe00707f; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113068.4]
  assign _T_689 = _T_687 == 32'h33; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113069.4]
  assign _T_691 = ibuf_io_inst_0_bits_inst_bits & 32'h6000073; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113070.4]
  assign _T_693 = _T_691 == 32'h43; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113071.4]
  assign _T_695 = ibuf_io_inst_0_bits_inst_bits & 32'he600007f; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113072.4]
  assign _T_697 = _T_695 == 32'h53; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113073.4]
  assign _T_699 = ibuf_io_inst_0_bits_inst_bits & 32'h707b; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113074.4]
  assign _T_701 = _T_699 == 32'h63; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113075.4]
  assign _T_703 = ibuf_io_inst_0_bits_inst_bits & 32'h7f; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113076.4]
  assign _T_705 = _T_703 == 32'h6f; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113077.4]
  assign _T_707 = ibuf_io_inst_0_bits_inst_bits & 32'hffefffff; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113078.4]
  assign _T_709 = _T_707 == 32'h73; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113079.4]
  assign _T_711 = ibuf_io_inst_0_bits_inst_bits & 32'hfc00305f; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113080.4]
  assign _T_713 = _T_711 == 32'h1013; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113081.4]
  assign _T_715 = ibuf_io_inst_0_bits_inst_bits & 32'h705b; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113082.4]
  assign _T_717 = _T_715 == 32'h2003; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113083.4]
  assign _T_721 = _T_671 == 32'h2013; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113085.4]
  assign _T_723 = ibuf_io_inst_0_bits_inst_bits & 32'h1800707f; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113086.4]
  assign _T_725 = _T_723 == 32'h202f; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113087.4]
  assign _T_729 = _T_671 == 32'h2073; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113089.4]
  assign _T_731 = ibuf_io_inst_0_bits_inst_bits & 32'hbc00707f; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113090.4]
  assign _T_733 = _T_731 == 32'h5013; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113091.4]
  assign _T_737 = _T_687 == 32'h5033; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113093.4]
  assign _T_739 = ibuf_io_inst_0_bits_inst_bits & 32'he800707f; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113094.4]
  assign _T_741 = _T_739 == 32'h800202f; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113095.4]
  assign _T_743 = ibuf_io_inst_0_bits_inst_bits & 32'hf9f0707f; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113096.4]
  assign _T_745 = _T_743 == 32'h1000202f; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113097.4]
  assign _T_747 = ibuf_io_inst_0_bits_inst_bits == 32'h10500073; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113098.4]
  assign _T_749 = ibuf_io_inst_0_bits_inst_bits & 32'hf600607f; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113099.4]
  assign _T_751 = _T_749 == 32'h20000053; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113100.4]
  assign _T_753 = ibuf_io_inst_0_bits_inst_bits & 32'h7e00607f; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113101.4]
  assign _T_755 = _T_753 == 32'h20000053; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113102.4]
  assign _T_757 = ibuf_io_inst_0_bits_inst_bits & 32'h7e00507f; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113103.4]
  assign _T_759 = _T_757 == 32'h20000053; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113104.4]
  assign _T_761 = ibuf_io_inst_0_bits_inst_bits == 32'h30200073; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113105.4]
  assign _T_763 = ibuf_io_inst_0_bits_inst_bits & 32'hfff0007f; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113106.4]
  assign _T_765 = _T_763 == 32'h58000053; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113107.4]
  assign _T_767 = ibuf_io_inst_0_bits_inst_bits == 32'h7b200073; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113108.4]
  assign _T_769 = ibuf_io_inst_0_bits_inst_bits & 32'hefe0007f; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113109.4]
  assign _T_771 = _T_769 == 32'hc0000053; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113110.4]
  assign _T_773 = ibuf_io_inst_0_bits_inst_bits & 32'hfff0607f; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113111.4]
  assign _T_775 = _T_773 == 32'he0000053; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113112.4]
  assign _T_777 = ibuf_io_inst_0_bits_inst_bits & 32'heff0707f; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113113.4]
  assign _T_779 = _T_777 == 32'he0000053; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113114.4]
  assign _T_781 = ibuf_io_inst_0_bits_inst_bits & 32'h603f; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113115.4]
  assign _T_783 = _T_781 == 32'h23; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113116.4]
  assign _T_785 = ibuf_io_inst_0_bits_inst_bits & 32'h306f; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113117.4]
  assign _T_787 = _T_785 == 32'h1063; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113118.4]
  assign _T_789 = ibuf_io_inst_0_bits_inst_bits & 32'h407f; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113119.4]
  assign _T_791 = _T_789 == 32'h4063; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113120.4]
  assign _T_795 = _T_785 == 32'h3; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113122.4]
  assign _T_798 = _T_673 | _T_677; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113124.4]
  assign _T_799 = _T_798 | _T_681; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113125.4]
  assign _T_800 = _T_799 | _T_685; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113126.4]
  assign _T_801 = _T_800 | _T_689; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113127.4]
  assign _T_802 = _T_801 | _T_693; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113128.4]
  assign _T_803 = _T_802 | _T_697; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113129.4]
  assign _T_804 = _T_803 | _T_701; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113130.4]
  assign _T_805 = _T_804 | _T_705; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113131.4]
  assign _T_806 = _T_805 | _T_709; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113132.4]
  assign _T_807 = _T_806 | _T_713; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113133.4]
  assign _T_808 = _T_807 | _T_717; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113134.4]
  assign _T_809 = _T_808 | _T_721; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113135.4]
  assign _T_810 = _T_809 | _T_725; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113136.4]
  assign _T_811 = _T_810 | _T_729; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113137.4]
  assign _T_812 = _T_811 | _T_733; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113138.4]
  assign _T_813 = _T_812 | _T_737; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113139.4]
  assign _T_814 = _T_813 | _T_741; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113140.4]
  assign _T_815 = _T_814 | _T_745; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113141.4]
  assign _T_816 = _T_815 | _T_747; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113142.4]
  assign _T_817 = _T_816 | _T_751; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113143.4]
  assign _T_818 = _T_817 | _T_755; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113144.4]
  assign _T_819 = _T_818 | _T_759; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113145.4]
  assign _T_820 = _T_819 | _T_761; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113146.4]
  assign _T_821 = _T_820 | _T_765; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113147.4]
  assign _T_822 = _T_821 | _T_767; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113148.4]
  assign _T_823 = _T_822 | _T_771; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113149.4]
  assign _T_824 = _T_823 | _T_775; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113150.4]
  assign _T_825 = _T_824 | _T_779; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113151.4]
  assign _T_826 = _T_825 | _T_783; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113152.4]
  assign _T_827 = _T_826 | _T_787; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113153.4]
  assign _T_828 = _T_827 | _T_791; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113154.4]
  assign id_ctrl_legal = _T_828 | _T_795; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113155.4]
  assign _T_831 = ibuf_io_inst_0_bits_inst_bits & 32'h5c; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113156.4]
  assign _T_833 = _T_831 == 32'h4; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113157.4]
  assign _T_835 = ibuf_io_inst_0_bits_inst_bits & 32'h60; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113158.4]
  assign _T_837 = _T_835 == 32'h40; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113159.4]
  assign id_ctrl_fp = _T_833 | _T_837; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113161.4]
  assign _T_843 = ibuf_io_inst_0_bits_inst_bits & 32'h74; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113162.4]
  assign id_ctrl_branch = _T_843 == 32'h60; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113163.4]
  assign _T_849 = ibuf_io_inst_0_bits_inst_bits & 32'h68; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113165.4]
  assign id_ctrl_jal = _T_849 == 32'h68; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113166.4]
  assign _T_855 = ibuf_io_inst_0_bits_inst_bits & 32'h203c; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113168.4]
  assign id_ctrl_jalr = _T_855 == 32'h24; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113169.4]
  assign _T_861 = ibuf_io_inst_0_bits_inst_bits & 32'h64; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113171.4]
  assign _T_863 = _T_861 == 32'h20; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113172.4]
  assign _T_865 = ibuf_io_inst_0_bits_inst_bits & 32'h34; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113173.4]
  assign _T_867 = _T_865 == 32'h20; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113174.4]
  assign _T_869 = ibuf_io_inst_0_bits_inst_bits & 32'h2048; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113175.4]
  assign id_ctrl_amo = _T_869 == 32'h2008; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113176.4]
  assign _T_874 = _T_863 | _T_867; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113178.4]
  assign id_ctrl_rxs2 = _T_874 | id_ctrl_amo; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113179.4]
  assign _T_877 = ibuf_io_inst_0_bits_inst_bits & 32'h44; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113180.4]
  assign _T_879 = _T_877 == 32'h0; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113181.4]
  assign _T_881 = ibuf_io_inst_0_bits_inst_bits & 32'h4024; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113182.4]
  assign _T_883 = _T_881 == 32'h20; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113183.4]
  assign _T_885 = ibuf_io_inst_0_bits_inst_bits & 32'h38; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113184.4]
  assign _T_887 = _T_885 == 32'h20; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113185.4]
  assign _T_889 = ibuf_io_inst_0_bits_inst_bits & 32'h2050; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113186.4]
  assign _T_891 = _T_889 == 32'h2000; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113187.4]
  assign _T_893 = ibuf_io_inst_0_bits_inst_bits & 32'h90000034; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113188.4]
  assign _T_895 = _T_893 == 32'h90000010; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113189.4]
  assign _T_898 = _T_879 | _T_883; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113191.4]
  assign _T_899 = _T_898 | _T_887; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113192.4]
  assign _T_900 = _T_899 | _T_891; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113193.4]
  assign id_ctrl_rxs1 = _T_900 | _T_895; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113194.4]
  assign _T_903 = ibuf_io_inst_0_bits_inst_bits & 32'h58; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113195.4]
  assign _T_905 = _T_903 == 32'h0; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113196.4]
  assign _T_907 = ibuf_io_inst_0_bits_inst_bits & 32'h20; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113197.4]
  assign _T_909 = _T_907 == 32'h0; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113198.4]
  assign _T_911 = ibuf_io_inst_0_bits_inst_bits & 32'hc; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113199.4]
  assign _T_913 = _T_911 == 32'h4; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113200.4]
  assign _T_915 = ibuf_io_inst_0_bits_inst_bits & 32'h48; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113201.4]
  assign _T_917 = _T_915 == 32'h48; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113202.4]
  assign _T_919 = ibuf_io_inst_0_bits_inst_bits & 32'h4050; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113203.4]
  assign _T_921 = _T_919 == 32'h4050; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113204.4]
  assign _T_924 = _T_905 | _T_909; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113206.4]
  assign _T_925 = _T_924 | _T_913; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113207.4]
  assign _T_926 = _T_925 | _T_917; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113208.4]
  assign _T_927 = _T_926 | _T_921; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113209.4]
  assign _T_931 = _T_915 == 32'h0; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113211.4]
  assign _T_933 = ibuf_io_inst_0_bits_inst_bits & 32'h18; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113212.4]
  assign _T_935 = _T_933 == 32'h0; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113213.4]
  assign _T_937 = ibuf_io_inst_0_bits_inst_bits & 32'h4008; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113214.4]
  assign _T_939 = _T_937 == 32'h4000; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113215.4]
  assign _T_942 = _T_931 | _T_935; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113217.4]
  assign _T_943 = _T_942 | _T_939; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113218.4]
  assign id_ctrl_sel_alu2 = {_T_943,_T_927}; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113219.4]
  assign _T_946 = ibuf_io_inst_0_bits_inst_bits & 32'h4004; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113220.4]
  assign _T_948 = _T_946 == 32'h0; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113221.4]
  assign _T_950 = ibuf_io_inst_0_bits_inst_bits & 32'h50; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113222.4]
  assign _T_952 = _T_950 == 32'h0; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113223.4]
  assign _T_954 = ibuf_io_inst_0_bits_inst_bits & 32'h24; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113224.4]
  assign _T_956 = _T_954 == 32'h0; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113225.4]
  assign _T_959 = _T_948 | _T_952; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113227.4]
  assign _T_960 = _T_959 | _T_879; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113228.4]
  assign _T_961 = _T_960 | _T_956; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113229.4]
  assign _T_962 = _T_961 | _T_935; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113230.4]
  assign _T_966 = _T_865 == 32'h14; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113232.4]
  assign _T_969 = _T_966 | _T_917; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113234.4]
  assign id_ctrl_sel_alu1 = {_T_969,_T_962}; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113235.4]
  assign _T_972 = ibuf_io_inst_0_bits_inst_bits & 32'h8; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113236.4]
  assign _T_974 = _T_972 == 32'h8; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113237.4]
  assign _T_978 = _T_877 == 32'h40; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113239.4]
  assign _T_981 = _T_974 | _T_978; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113241.4]
  assign _T_983 = ibuf_io_inst_0_bits_inst_bits & 32'h14; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113242.4]
  assign _T_985 = _T_983 == 32'h14; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113243.4]
  assign _T_988 = _T_974 | _T_985; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113245.4]
  assign _T_990 = ibuf_io_inst_0_bits_inst_bits & 32'h30; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113246.4]
  assign _T_992 = _T_990 == 32'h0; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113247.4]
  assign _T_994 = ibuf_io_inst_0_bits_inst_bits & 32'h201c; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113248.4]
  assign _T_996 = _T_994 == 32'h4; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113249.4]
  assign _T_1000 = _T_983 == 32'h10; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113251.4]
  assign _T_1003 = _T_992 | _T_996; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113253.4]
  assign _T_1004 = _T_1003 | _T_1000; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113254.4]
  assign _T_1005 = {_T_1004,_T_988}; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113255.4]
  assign id_ctrl_sel_imm = {_T_1005,_T_981}; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113256.4]
  assign _T_1014 = ibuf_io_inst_0_bits_inst_bits & 32'h3054; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113260.4]
  assign _T_1016 = _T_1014 == 32'h1010; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113261.4]
  assign _T_1018 = ibuf_io_inst_0_bits_inst_bits & 32'h1058; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113262.4]
  assign _T_1020 = _T_1018 == 32'h1040; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113263.4]
  assign _T_1022 = ibuf_io_inst_0_bits_inst_bits & 32'h7044; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113264.4]
  assign _T_1024 = _T_1022 == 32'h7000; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113265.4]
  assign _T_1027 = _T_1016 | _T_1020; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113267.4]
  assign _T_1028 = _T_1027 | _T_1024; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113268.4]
  assign _T_1030 = ibuf_io_inst_0_bits_inst_bits & 32'h4054; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113269.4]
  assign _T_1032 = _T_1030 == 32'h40; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113270.4]
  assign _T_1034 = ibuf_io_inst_0_bits_inst_bits & 32'h3044; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113271.4]
  assign _T_1036 = _T_1034 == 32'h3000; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113272.4]
  assign _T_1038 = ibuf_io_inst_0_bits_inst_bits & 32'h6044; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113273.4]
  assign _T_1040 = _T_1038 == 32'h6000; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113274.4]
  assign _T_1042 = ibuf_io_inst_0_bits_inst_bits & 32'h6018; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113275.4]
  assign _T_1044 = _T_1042 == 32'h6000; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113276.4]
  assign _T_1046 = ibuf_io_inst_0_bits_inst_bits & 32'h40003034; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113277.4]
  assign _T_1048 = _T_1046 == 32'h40000030; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113278.4]
  assign _T_1050 = ibuf_io_inst_0_bits_inst_bits & 32'h40001054; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113279.4]
  assign _T_1052 = _T_1050 == 32'h40001010; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113280.4]
  assign _T_1055 = _T_1032 | _T_1036; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113282.4]
  assign _T_1056 = _T_1055 | _T_1040; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113283.4]
  assign _T_1057 = _T_1056 | _T_1044; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113284.4]
  assign _T_1058 = _T_1057 | _T_1048; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113285.4]
  assign _T_1059 = _T_1058 | _T_1052; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113286.4]
  assign _T_1061 = ibuf_io_inst_0_bits_inst_bits & 32'h2054; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113287.4]
  assign _T_1063 = _T_1061 == 32'h2010; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113288.4]
  assign _T_1065 = ibuf_io_inst_0_bits_inst_bits & 32'h40004054; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113289.4]
  assign _T_1067 = _T_1065 == 32'h4010; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113290.4]
  assign _T_1069 = ibuf_io_inst_0_bits_inst_bits & 32'h5054; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113291.4]
  assign _T_1071 = _T_1069 == 32'h4010; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113292.4]
  assign _T_1073 = ibuf_io_inst_0_bits_inst_bits & 32'h4058; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113293.4]
  assign _T_1075 = _T_1073 == 32'h4040; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113294.4]
  assign _T_1078 = _T_1063 | _T_1067; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113296.4]
  assign _T_1079 = _T_1078 | _T_1071; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113297.4]
  assign _T_1080 = _T_1079 | _T_1075; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113298.4]
  assign _T_1082 = ibuf_io_inst_0_bits_inst_bits & 32'h6054; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113299.4]
  assign _T_1084 = _T_1082 == 32'h2010; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113300.4]
  assign _T_1086 = ibuf_io_inst_0_bits_inst_bits & 32'h40003054; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113301.4]
  assign _T_1088 = _T_1086 == 32'h40001010; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113302.4]
  assign _T_1091 = _T_1084 | _T_1075; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113304.4]
  assign _T_1092 = _T_1091 | _T_1048; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113305.4]
  assign _T_1093 = _T_1092 | _T_1088; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113306.4]
  assign _T_1094 = {_T_1059,_T_1028}; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113307.4]
  assign _T_1095 = {_T_1093,_T_1080}; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113308.4]
  assign id_ctrl_alu_fn = {_T_1095,_T_1094}; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113309.4]
  assign _T_1098 = ibuf_io_inst_0_bits_inst_bits & 32'h605f; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113310.4]
  assign _T_1100 = _T_1098 == 32'h3; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113311.4]
  assign _T_1102 = ibuf_io_inst_0_bits_inst_bits & 32'h707f; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113312.4]
  assign _T_1104 = _T_1102 == 32'h100f; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113313.4]
  assign _T_1107 = _T_1100 | _T_673; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113315.4]
  assign _T_1108 = _T_1107 | _T_1104; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113316.4]
  assign _T_1109 = _T_1108 | _T_717; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113317.4]
  assign _T_1110 = _T_1109 | _T_725; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113318.4]
  assign _T_1111 = _T_1110 | _T_741; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113319.4]
  assign id_ctrl_mem = _T_1111 | _T_745; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113320.4]
  assign _T_1114 = ibuf_io_inst_0_bits_inst_bits & 32'h2008; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113321.4]
  assign _T_1116 = _T_1114 == 32'h8; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113322.4]
  assign _T_1118 = ibuf_io_inst_0_bits_inst_bits & 32'h28; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113323.4]
  assign _T_1120 = _T_1118 == 32'h20; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113324.4]
  assign _T_1122 = ibuf_io_inst_0_bits_inst_bits & 32'h18000020; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113325.4]
  assign _T_1124 = _T_1122 == 32'h18000020; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113326.4]
  assign _T_1126 = ibuf_io_inst_0_bits_inst_bits & 32'h20000020; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113327.4]
  assign _T_1128 = _T_1126 == 32'h20000020; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113328.4]
  assign _T_1131 = _T_1116 | _T_1120; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113330.4]
  assign _T_1132 = _T_1131 | _T_1124; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113331.4]
  assign _T_1133 = _T_1132 | _T_1128; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113332.4]
  assign _T_1135 = ibuf_io_inst_0_bits_inst_bits & 32'h10001008; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113333.4]
  assign _T_1137 = _T_1135 == 32'h10000008; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113334.4]
  assign _T_1139 = ibuf_io_inst_0_bits_inst_bits & 32'h40001008; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113335.4]
  assign _T_1141 = _T_1139 == 32'h40000008; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113336.4]
  assign _T_1144 = _T_1137 | _T_1141; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113338.4]
  assign _T_1146 = ibuf_io_inst_0_bits_inst_bits & 32'h8000008; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113339.4]
  assign _T_1148 = _T_1146 == 32'h8000008; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113340.4]
  assign _T_1150 = ibuf_io_inst_0_bits_inst_bits & 32'h10000008; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113341.4]
  assign _T_1152 = _T_1150 == 32'h10000008; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113342.4]
  assign _T_1154 = ibuf_io_inst_0_bits_inst_bits & 32'h80000008; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113343.4]
  assign _T_1156 = _T_1154 == 32'h80000008; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113344.4]
  assign _T_1159 = _T_1116 | _T_1148; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113346.4]
  assign _T_1160 = _T_1159 | _T_1152; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113347.4]
  assign _T_1161 = _T_1160 | _T_1156; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113348.4]
  assign _T_1163 = ibuf_io_inst_0_bits_inst_bits & 32'h18001008; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113349.4]
  assign _T_1165 = _T_1163 == 32'h8; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113350.4]
  assign _T_1169 = {_T_1144,_T_1133}; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113352.4]
  assign _T_1170 = {1'h0,_T_1165}; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113353.4]
  assign _T_1171 = {_T_1170,_T_1161}; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113354.4]
  assign id_ctrl_mem_cmd = {_T_1171,_T_1169}; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113355.4]
  assign _T_1174 = ibuf_io_inst_0_bits_inst_bits & 32'h1000; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113356.4]
  assign _T_1176 = _T_1174 == 32'h1000; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113357.4]
  assign _T_1180 = ibuf_io_inst_0_bits_inst_bits & 32'h2000; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113359.4]
  assign _T_1182 = _T_1180 == 32'h2000; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113360.4]
  assign _T_1186 = ibuf_io_inst_0_bits_inst_bits & 32'h4000; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113362.4]
  assign _T_1188 = _T_1186 == 32'h4000; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113363.4]
  assign _T_1191 = {_T_1188,_T_1182}; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113365.4]
  assign id_ctrl_mem_type = {_T_1191,_T_1176}; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113366.4]
  assign _T_1194 = ibuf_io_inst_0_bits_inst_bits & 32'h80000060; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113367.4]
  assign _T_1196 = _T_1194 == 32'h40; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113368.4]
  assign _T_1198 = ibuf_io_inst_0_bits_inst_bits & 32'h10000060; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113369.4]
  assign _T_1202 = ibuf_io_inst_0_bits_inst_bits & 32'h70; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113371.4]
  assign id_ctrl_rfs3 = _T_1202 == 32'h40; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113372.4]
  assign _T_1225 = ibuf_io_inst_0_bits_inst_bits & 32'h3c; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113385.4]
  assign _T_1227 = _T_1225 == 32'h4; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113386.4]
  assign _T_1231 = _T_1198 == 32'h10000040; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113388.4]
  assign _T_1234 = _T_1227 | _T_1196; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113390.4]
  assign _T_1235 = _T_1234 | id_ctrl_rfs3; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113391.4]
  assign id_ctrl_wfd = _T_1235 | _T_1231; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113392.4]
  assign _T_1238 = ibuf_io_inst_0_bits_inst_bits & 32'h2000074; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113393.4]
  assign id_ctrl_div = _T_1238 == 32'h2000030; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113394.4]
  assign _T_1246 = _T_861 == 32'h0; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113397.4]
  assign _T_1250 = _T_950 == 32'h10; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113399.4]
  assign _T_1252 = ibuf_io_inst_0_bits_inst_bits & 32'h2024; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113400.4]
  assign _T_1254 = _T_1252 == 32'h24; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113401.4]
  assign _T_1258 = _T_1118 == 32'h28; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113403.4]
  assign _T_1260 = ibuf_io_inst_0_bits_inst_bits & 32'h1030; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113404.4]
  assign _T_1262 = _T_1260 == 32'h1030; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113405.4]
  assign _T_1264 = ibuf_io_inst_0_bits_inst_bits & 32'h2030; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113406.4]
  assign _T_1266 = _T_1264 == 32'h2030; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113407.4]
  assign _T_1268 = ibuf_io_inst_0_bits_inst_bits & 32'h90000010; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113408.4]
  assign _T_1270 = _T_1268 == 32'h80000010; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113409.4]
  assign _T_1273 = _T_1246 | _T_1250; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113411.4]
  assign _T_1274 = _T_1273 | _T_1254; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113412.4]
  assign _T_1275 = _T_1274 | _T_1258; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113413.4]
  assign _T_1276 = _T_1275 | _T_1262; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113414.4]
  assign _T_1277 = _T_1276 | _T_1266; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113415.4]
  assign id_ctrl_wxd = _T_1277 | _T_1270; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113416.4]
  assign _T_1280 = ibuf_io_inst_0_bits_inst_bits & 32'h1070; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113417.4]
  assign _T_1282 = _T_1280 == 32'h1070; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113418.4]
  assign _T_1286 = ibuf_io_inst_0_bits_inst_bits & 32'h2070; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113420.4]
  assign _T_1288 = _T_1286 == 32'h2070; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113421.4]
  assign _T_1292 = ibuf_io_inst_0_bits_inst_bits & 32'h3070; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113423.4]
  assign _T_1294 = _T_1292 == 32'h70; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113424.4]
  assign _T_1297 = {_T_1294,_T_1288}; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113426.4]
  assign id_ctrl_csr = {_T_1297,_T_1282}; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113427.4]
  assign _T_1300 = ibuf_io_inst_0_bits_inst_bits & 32'h1048; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113428.4]
  assign id_ctrl_fence_i = _T_1300 == 32'h1008; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113429.4]
  assign _T_1306 = ibuf_io_inst_0_bits_inst_bits & 32'h3048; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113431.4]
  assign id_ctrl_fence = _T_1306 == 32'h8; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113432.4]
  assign _T_1323 = ibuf_io_inst_0_bits_inst_rs1 == 5'h0; // @[RocketCore.scala 805:45:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113468.4]
  assign _T_1326 = ibuf_io_inst_0_bits_inst_rs1; // @[RocketCore.scala 799:44:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113470.4]
  assign _T_1327 = ~ _T_1326; // @[RocketCore.scala 799:39:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113471.4]
  assign _T_1329 = _T_1319__T_1328_data; // @[RocketCore.scala 805:25:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113473.4]
  assign _T_1336 = ibuf_io_inst_0_bits_inst_rs2; // @[RocketCore.scala 799:44:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113479.4]
  assign _T_1337 = ~ _T_1336; // @[RocketCore.scala 799:39:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113480.4]
  assign _T_1339 = _T_1319__T_1338_data; // @[RocketCore.scala 805:25:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113482.4]
  assign _T_1433 = id_ctrl_csr == 3'h2; // @[package.scala 14:47:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113557.4]
  assign _T_1434 = id_ctrl_csr == 3'h3; // @[package.scala 14:47:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113558.4]
  assign _T_1435 = id_ctrl_csr == 3'h1; // @[package.scala 14:47:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113559.4]
  assign _T_1436 = _T_1433 | _T_1434; // @[package.scala 14:62:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113560.4]
  assign id_csr_en = _T_1436 | _T_1435; // @[package.scala 14:62:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113561.4]
  assign id_system_insn = id_ctrl_csr >= 3'h4; // @[RocketCore.scala 198:36:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113562.4]
  assign id_csr_ren = _T_1436 & _T_1323; // @[RocketCore.scala 199:54:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113567.4]
  assign id_csr = id_csr_ren ? 3'h5 : id_ctrl_csr; // @[RocketCore.scala 200:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113568.4]
  assign _T_1447 = id_ctrl_mem_cmd == 5'h14; // @[RocketCore.scala 201:50:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113569.4]
  assign id_sfence = id_ctrl_mem & _T_1447; // @[RocketCore.scala 201:31:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113570.4]
  assign _T_1448 = id_sfence | id_system_insn; // @[RocketCore.scala 202:32:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113571.4]
  assign _T_1450 = id_csr_ren == 1'h0; // @[RocketCore.scala 202:67:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113572.4]
  assign _T_1451 = id_csr_en & _T_1450; // @[RocketCore.scala 202:64:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113573.4]
  assign _T_1452 = _T_1451 & csr_io_decode_0_write_flush; // @[RocketCore.scala 202:79:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113574.4]
  assign id_csr_flush = _T_1448 | _T_1452; // @[RocketCore.scala 202:50:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113575.4]
  assign _T_1454 = id_ctrl_legal == 1'h0; // @[RocketCore.scala 204:25:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113576.4]
  assign _T_1455 = csr_io_status_isa[12]; // @[RocketCore.scala 205:38:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113577.4]
  assign _T_1457 = _T_1455 == 1'h0; // @[RocketCore.scala 205:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113578.4]
  assign _T_1458 = id_ctrl_div & _T_1457; // @[RocketCore.scala 205:17:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113579.4]
  assign _T_1459 = _T_1454 | _T_1458; // @[RocketCore.scala 204:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113580.4]
  assign _T_1460 = csr_io_status_isa[0]; // @[RocketCore.scala 206:38:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113581.4]
  assign _T_1462 = _T_1460 == 1'h0; // @[RocketCore.scala 206:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113582.4]
  assign _T_1463 = id_ctrl_amo & _T_1462; // @[RocketCore.scala 206:17:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113583.4]
  assign _T_1464 = _T_1459 | _T_1463; // @[RocketCore.scala 205:48:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113584.4]
  assign _T_1465 = csr_io_decode_0_fp_illegal | io_fpu_illegal_rm; // @[RocketCore.scala 207:48:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113585.4]
  assign _T_1466 = id_ctrl_fp & _T_1465; // @[RocketCore.scala 207:16:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113586.4]
  assign _T_1467 = _T_1464 | _T_1466; // @[RocketCore.scala 206:48:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113587.4]
  assign _T_1473 = csr_io_status_isa[2]; // @[RocketCore.scala 209:51:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113592.4]
  assign _T_1475 = _T_1473 == 1'h0; // @[RocketCore.scala 209:33:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113593.4]
  assign _T_1482 = _T_1450 & csr_io_decode_0_write_illegal; // @[RocketCore.scala 211:64:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113599.4]
  assign _T_1483 = csr_io_decode_0_read_illegal | _T_1482; // @[RocketCore.scala 211:49:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113600.4]
  assign _T_1484 = id_csr_en & _T_1483; // @[RocketCore.scala 211:15:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113601.4]
  assign id_illegal_insn = _T_1467 | _T_1484; // @[RocketCore.scala 210:51:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113602.4]
  assign id_amo_aq = ibuf_io_inst_0_bits_inst_bits[26]; // @[RocketCore.scala 214:29:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113608.4]
  assign id_amo_rl = ibuf_io_inst_0_bits_inst_bits[25]; // @[RocketCore.scala 215:29:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113609.4]
  assign _T_1491 = id_ctrl_amo & id_amo_rl; // @[RocketCore.scala 216:52:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113610.4]
  assign id_fence_next = id_ctrl_fence | _T_1491; // @[RocketCore.scala 216:37:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113611.4]
  assign _T_1493 = io_dmem_ordered == 1'h0; // @[RocketCore.scala 217:21:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113612.4]
  assign id_mem_busy = _T_1493 | io_dmem_req_valid; // @[RocketCore.scala 217:38:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113613.4]
  assign _T_1495 = id_mem_busy == 1'h0; // @[RocketCore.scala 218:9:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113614.4]
  assign _GEN_0 = _T_1495 ? 1'h0 : id_reg_fence; // @[RocketCore.scala 218:23:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113615.4]
  assign _T_1505 = id_ctrl_amo & id_amo_aq; // @[RocketCore.scala 223:33:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113626.4]
  assign _T_1506 = _T_1505 | id_ctrl_fence_i; // @[RocketCore.scala 223:46:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113627.4]
  assign _T_1508 = id_reg_fence & id_ctrl_mem; // @[RocketCore.scala 223:81:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113629.4]
  assign _T_1509 = _T_1506 | _T_1508; // @[RocketCore.scala 223:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113630.4]
  assign id_do_fence = id_mem_busy & _T_1509; // @[RocketCore.scala 223:17:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113631.4]
  assign _T_1520 = csr_io_interrupt | bpu_io_debug_if; // @[RocketCore.scala 758:26:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113644.4]
  assign _T_1521 = _T_1520 | bpu_io_xcpt_if; // @[RocketCore.scala 758:26:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113645.4]
  assign _T_1522 = _T_1521 | ibuf_io_inst_0_bits_xcpt0_pf_inst; // @[RocketCore.scala 758:26:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113646.4]
  assign _T_1523 = _T_1522 | ibuf_io_inst_0_bits_xcpt0_ae_inst; // @[RocketCore.scala 758:26:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113647.4]
  assign id_xcpt = _T_1523 | id_illegal_insn; // @[RocketCore.scala 758:26:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113650.4]
  assign _T_1528 = ibuf_io_inst_0_bits_xcpt0_ae_inst ? 4'h1 : 4'h2; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113653.4]
  assign _T_1529 = ibuf_io_inst_0_bits_xcpt0_pf_inst ? 4'hc : _T_1528; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113654.4]
  assign _T_1530 = bpu_io_xcpt_if ? 4'h3 : _T_1529; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113655.4]
  assign _T_1531 = bpu_io_debug_if ? 4'he : _T_1530; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113656.4]
  assign id_cause = csr_io_interrupt ? csr_io_interrupt_cause : {{28'd0}, _T_1531}; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113657.4]
  assign ex_waddr = ex_reg_inst[11:7]; // @[RocketCore.scala 258:29:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113668.4]
  assign mem_waddr = mem_reg_inst[11:7]; // @[RocketCore.scala 259:31:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113669.4]
  assign wb_waddr = wb_reg_inst[11:7]; // @[RocketCore.scala 260:29:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113670.4]
  assign _T_1549 = ex_reg_valid & ex_ctrl_wxd; // @[RocketCore.scala 263:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113671.4]
  assign _T_1550 = mem_reg_valid & mem_ctrl_wxd; // @[RocketCore.scala 264:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113672.4]
  assign _T_1552 = mem_ctrl_mem == 1'h0; // @[RocketCore.scala 264:39:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113673.4]
  assign _T_1553 = _T_1550 & _T_1552; // @[RocketCore.scala 264:36:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113674.4]
  assign id_bypass_src_0_0 = 5'h0 == ibuf_io_inst_0_bits_inst_rs1; // @[RocketCore.scala 266:82:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113676.4]
  assign _T_1556 = ex_waddr == ibuf_io_inst_0_bits_inst_rs1; // @[RocketCore.scala 266:82:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113678.4]
  assign id_bypass_src_0_1 = _T_1549 & _T_1556; // @[RocketCore.scala 266:74:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113679.4]
  assign _T_1557 = mem_waddr == ibuf_io_inst_0_bits_inst_rs1; // @[RocketCore.scala 266:82:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113680.4]
  assign id_bypass_src_0_2 = _T_1553 & _T_1557; // @[RocketCore.scala 266:74:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113681.4]
  assign id_bypass_src_0_3 = _T_1550 & _T_1557; // @[RocketCore.scala 266:74:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113683.4]
  assign id_bypass_src_1_0 = 5'h0 == ibuf_io_inst_0_bits_inst_rs2; // @[RocketCore.scala 266:82:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113684.4]
  assign _T_1560 = ex_waddr == ibuf_io_inst_0_bits_inst_rs2; // @[RocketCore.scala 266:82:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113686.4]
  assign id_bypass_src_1_1 = _T_1549 & _T_1560; // @[RocketCore.scala 266:74:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113687.4]
  assign _T_1561 = mem_waddr == ibuf_io_inst_0_bits_inst_rs2; // @[RocketCore.scala 266:82:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113688.4]
  assign id_bypass_src_1_2 = _T_1553 & _T_1561; // @[RocketCore.scala 266:74:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113689.4]
  assign id_bypass_src_1_3 = _T_1550 & _T_1561; // @[RocketCore.scala 266:74:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113691.4]
  assign _T_1585 = ex_reg_rs_lsb_0 == 2'h1; // @[package.scala 31:81:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113695.4]
  assign _T_1586 = _T_1585 ? bypass_mux_1 : 32'h0; // @[package.scala 31:71:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113696.4]
  assign _T_1588 = ex_reg_rs_lsb_0 == 2'h2; // @[package.scala 31:81:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113697.4]
  assign _T_1589 = _T_1588 ? bypass_mux_2 : _T_1586; // @[package.scala 31:71:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113698.4]
  assign _T_1591 = ex_reg_rs_lsb_0 == 2'h3; // @[package.scala 31:81:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113699.4]
  assign _T_1592 = _T_1591 ? io_dmem_resp_bits_data_word_bypass : _T_1589; // @[package.scala 31:71:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113700.4]
  assign _T_1593 = {ex_reg_rs_msb_0,ex_reg_rs_lsb_0}; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113701.4]
  assign ex_rs_0 = ex_reg_rs_bypass_0 ? _T_1592 : _T_1593; // @[RocketCore.scala 274:14:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113702.4]
  assign _T_1595 = ex_reg_rs_lsb_1 == 2'h1; // @[package.scala 31:81:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113703.4]
  assign _T_1596 = _T_1595 ? bypass_mux_1 : 32'h0; // @[package.scala 31:71:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113704.4]
  assign _T_1598 = ex_reg_rs_lsb_1 == 2'h2; // @[package.scala 31:81:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113705.4]
  assign _T_1599 = _T_1598 ? bypass_mux_2 : _T_1596; // @[package.scala 31:71:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113706.4]
  assign _T_1601 = ex_reg_rs_lsb_1 == 2'h3; // @[package.scala 31:81:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113707.4]
  assign _T_1602 = _T_1601 ? io_dmem_resp_bits_data_word_bypass : _T_1599; // @[package.scala 31:71:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113708.4]
  assign _T_1603 = {ex_reg_rs_msb_1,ex_reg_rs_lsb_1}; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113709.4]
  assign ex_rs_1 = ex_reg_rs_bypass_1 ? _T_1602 : _T_1603; // @[RocketCore.scala 274:14:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113710.4]
  assign _T_1605 = ex_ctrl_sel_imm == 3'h5; // @[RocketCore.scala 820:24:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113711.4]
  assign _T_1607 = ex_reg_inst[31]; // @[RocketCore.scala 820:48:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113712.4]
  assign _T_1608 = $signed(_T_1607); // @[RocketCore.scala 820:53:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113713.4]
  assign _T_1609 = _T_1605 ? $signed(1'sh0) : $signed(_T_1608); // @[RocketCore.scala 820:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113714.4]
  assign _T_1611 = ex_ctrl_sel_imm == 3'h2; // @[RocketCore.scala 821:26:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113715.4]
  assign _T_1612 = ex_reg_inst[30:20]; // @[RocketCore.scala 821:41:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113716.4]
  assign _T_1613 = $signed(_T_1612); // @[RocketCore.scala 821:49:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113717.4]
  assign _T_1614 = _T_1611 ? $signed(_T_1613) : $signed({11{_T_1609}}); // @[RocketCore.scala 821:21:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113718.4]
  assign _T_1616 = ex_ctrl_sel_imm != 3'h2; // @[RocketCore.scala 822:26:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113719.4]
  assign _T_1618 = ex_ctrl_sel_imm != 3'h3; // @[RocketCore.scala 822:43:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113720.4]
  assign _T_1619 = _T_1616 & _T_1618; // @[RocketCore.scala 822:36:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113721.4]
  assign _T_1620 = ex_reg_inst[19:12]; // @[RocketCore.scala 822:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113722.4]
  assign _T_1621 = $signed(_T_1620); // @[RocketCore.scala 822:73:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113723.4]
  assign _T_1622 = _T_1619 ? $signed({8{_T_1609}}) : $signed(_T_1621); // @[RocketCore.scala 822:21:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113724.4]
  assign _T_1627 = _T_1611 | _T_1605; // @[RocketCore.scala 823:33:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113727.4]
  assign _T_1630 = ex_ctrl_sel_imm == 3'h3; // @[RocketCore.scala 824:23:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113728.4]
  assign _T_1631 = ex_reg_inst[20]; // @[RocketCore.scala 824:39:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113729.4]
  assign _T_1632 = $signed(_T_1631); // @[RocketCore.scala 824:44:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113730.4]
  assign _T_1634 = ex_ctrl_sel_imm == 3'h1; // @[RocketCore.scala 825:23:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113731.4]
  assign _T_1635 = ex_reg_inst[7]; // @[RocketCore.scala 825:39:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113732.4]
  assign _T_1636 = $signed(_T_1635); // @[RocketCore.scala 825:43:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113733.4]
  assign _T_1637 = _T_1634 ? $signed(_T_1636) : $signed(_T_1609); // @[RocketCore.scala 825:18:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113734.4]
  assign _T_1638 = _T_1630 ? $signed(_T_1632) : $signed(_T_1637); // @[RocketCore.scala 824:18:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113735.4]
  assign _T_1639 = _T_1627 ? $signed(1'sh0) : $signed(_T_1638); // @[RocketCore.scala 823:18:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113736.4]
  assign _T_1646 = ex_reg_inst[30:25]; // @[RocketCore.scala 826:66:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113740.4]
  assign _T_1647 = _T_1627 ? 6'h0 : _T_1646; // @[RocketCore.scala 826:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113741.4]
  assign _T_1652 = ex_ctrl_sel_imm == 3'h0; // @[RocketCore.scala 828:24:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113743.4]
  assign _T_1655 = _T_1652 | _T_1634; // @[RocketCore.scala 828:34:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113745.4]
  assign _T_1656 = ex_reg_inst[11:8]; // @[RocketCore.scala 828:57:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113746.4]
  assign _T_1659 = ex_reg_inst[19:16]; // @[RocketCore.scala 829:39:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113748.4]
  assign _T_1660 = ex_reg_inst[24:21]; // @[RocketCore.scala 829:52:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113749.4]
  assign _T_1661 = _T_1605 ? _T_1659 : _T_1660; // @[RocketCore.scala 829:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113750.4]
  assign _T_1662 = _T_1655 ? _T_1656 : _T_1661; // @[RocketCore.scala 828:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113751.4]
  assign _T_1663 = _T_1611 ? 4'h0 : _T_1662; // @[RocketCore.scala 827:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113752.4]
  assign _T_1668 = ex_ctrl_sel_imm == 3'h4; // @[RocketCore.scala 831:22:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113755.4]
  assign _T_1672 = ex_reg_inst[15]; // @[RocketCore.scala 832:37:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113758.4]
  assign _T_1674 = _T_1605 ? _T_1672 : 1'h0; // @[RocketCore.scala 832:17:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113759.4]
  assign _T_1675 = _T_1668 ? _T_1631 : _T_1674; // @[RocketCore.scala 831:17:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113760.4]
  assign _T_1676 = _T_1652 ? _T_1635 : _T_1675; // @[RocketCore.scala 830:17:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113761.4]
  assign _T_1677 = {_T_1647,_T_1663}; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113762.4]
  assign _T_1678 = {_T_1677,_T_1676}; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113763.4]
  assign _T_1679 = $unsigned(_T_1639); // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113764.4]
  assign _T_1680 = $unsigned(_T_1622); // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113765.4]
  assign _T_1681 = {_T_1680,_T_1679}; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113766.4]
  assign _T_1682 = $unsigned(_T_1614); // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113767.4]
  assign _T_1683 = $unsigned(_T_1609); // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113768.4]
  assign _T_1684 = {_T_1683,_T_1682}; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113769.4]
  assign _T_1685 = {_T_1684,_T_1681}; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113770.4]
  assign _T_1686 = {_T_1685,_T_1678}; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113771.4]
  assign ex_imm = $signed(_T_1686); // @[RocketCore.scala 834:53:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113772.4]
  assign _T_1689 = $signed(ex_rs_0); // @[RocketCore.scala 277:24:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113773.4]
  assign _T_1691 = $signed(ex_reg_pc); // @[RocketCore.scala 278:24:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113774.4]
  assign _T_1692 = 2'h2 == ex_ctrl_sel_alu1; // @[Mux.scala 46:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113775.4]
  assign _T_1693 = _T_1692 ? $signed(_T_1691) : $signed(32'sh0); // @[Mux.scala 46:16:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113776.4]
  assign _T_1694 = 2'h1 == ex_ctrl_sel_alu1; // @[Mux.scala 46:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113777.4]
  assign ex_op1 = _T_1694 ? $signed(_T_1689) : $signed(_T_1693); // @[Mux.scala 46:16:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113778.4]
  assign _T_1697 = $signed(ex_rs_1); // @[RocketCore.scala 280:24:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113779.4]
  assign _T_1702 = ex_reg_rvc ? $signed(4'sh2) : $signed(4'sh4); // @[RocketCore.scala 282:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113780.4]
  assign _T_1703 = 2'h1 == ex_ctrl_sel_alu2; // @[Mux.scala 46:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113781.4]
  assign _T_1704 = _T_1703 ? $signed(_T_1702) : $signed(4'sh0); // @[Mux.scala 46:16:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113782.4]
  assign _T_1705 = 2'h3 == ex_ctrl_sel_alu2; // @[Mux.scala 46:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113783.4]
  assign _T_1706 = _T_1705 ? $signed(ex_imm) : $signed({{28{_T_1704[3]}},_T_1704}); // @[Mux.scala 46:16:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113784.4]
  assign _T_1707 = 2'h2 == ex_ctrl_sel_alu2; // @[Mux.scala 46:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113785.4]
  assign ex_op2 = _T_1707 ? $signed(_T_1697) : $signed(_T_1706); // @[Mux.scala 46:16:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113786.4]
  assign _T_1708 = $unsigned(ex_op2); // @[RocketCore.scala 287:24:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113793.4]
  assign _T_1709 = $unsigned(ex_op1); // @[RocketCore.scala 288:24:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113795.4]
  assign _T_1710 = ex_reg_valid & ex_ctrl_div; // @[RocketCore.scala 292:36:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113801.4]
  assign _T_2523 = ibuf_io_inst_0_valid == 1'h0; // @[RocketCore.scala 619:17:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114638.4]
  assign _T_2524 = _T_2523 | ibuf_io_inst_0_bits_replay; // @[RocketCore.scala 619:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114639.4]
  assign _T_2525 = _T_2524 | take_pc; // @[RocketCore.scala 619:71:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114640.4]
  assign _T_2309 = ibuf_io_inst_0_bits_inst_rs1 != 5'h0; // @[RocketCore.scala 557:55:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114422.4]
  assign _T_2310 = id_ctrl_rxs1 & _T_2309; // @[RocketCore.scala 557:42:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114423.4]
  assign _T_2368 = ibuf_io_inst_0_bits_inst_rs1 == ex_waddr; // @[RocketCore.scala 577:70:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114476.4]
  assign _T_2369 = _T_2310 & _T_2368; // @[RocketCore.scala 767:27:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114477.4]
  assign _T_2312 = ibuf_io_inst_0_bits_inst_rs2 != 5'h0; // @[RocketCore.scala 558:55:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114424.4]
  assign _T_2313 = id_ctrl_rxs2 & _T_2312; // @[RocketCore.scala 558:42:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114425.4]
  assign _T_2370 = ibuf_io_inst_0_bits_inst_rs2 == ex_waddr; // @[RocketCore.scala 577:70:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114478.4]
  assign _T_2371 = _T_2313 & _T_2370; // @[RocketCore.scala 767:27:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114479.4]
  assign _T_2374 = _T_2369 | _T_2371; // @[RocketCore.scala 767:50:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114482.4]
  assign _T_2315 = ibuf_io_inst_0_bits_inst_rd != 5'h0; // @[RocketCore.scala 559:55:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114426.4]
  assign _T_2316 = id_ctrl_wxd & _T_2315; // @[RocketCore.scala 559:42:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114427.4]
  assign _T_2372 = ibuf_io_inst_0_bits_inst_rd == ex_waddr; // @[RocketCore.scala 577:70:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114480.4]
  assign _T_2373 = _T_2316 & _T_2372; // @[RocketCore.scala 767:27:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114481.4]
  assign _T_2375 = _T_2374 | _T_2373; // @[RocketCore.scala 767:50:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114483.4]
  assign data_hazard_ex = ex_ctrl_wxd & _T_2375; // @[RocketCore.scala 577:36:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114484.4]
  assign _T_2363 = ex_ctrl_csr != 3'h0; // @[RocketCore.scala 576:38:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114470.4]
  assign _T_2364 = _T_2363 | ex_ctrl_jalr; // @[RocketCore.scala 576:48:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114471.4]
  assign _T_2365 = _T_2364 | ex_ctrl_mem; // @[RocketCore.scala 576:64:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114472.4]
  assign _T_2366 = _T_2365 | ex_ctrl_div; // @[RocketCore.scala 576:79:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114473.4]
  assign _T_2367 = _T_2366 | ex_ctrl_fp; // @[RocketCore.scala 576:94:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114474.4]
  assign ex_cannot_bypass = _T_2367 | ex_ctrl_rocc; // @[RocketCore.scala 576:108:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114475.4]
  assign _T_2387 = data_hazard_ex & ex_cannot_bypass; // @[RocketCore.scala 579:54:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114497.4]
  assign _T_2377 = io_fpu_dec_ren1 & _T_2368; // @[RocketCore.scala 767:27:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114486.4]
  assign _T_2379 = io_fpu_dec_ren2 & _T_2370; // @[RocketCore.scala 767:27:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114488.4]
  assign _T_2384 = _T_2377 | _T_2379; // @[RocketCore.scala 767:50:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114493.4]
  assign _T_2380 = ibuf_io_inst_0_bits_inst_rs3 == ex_waddr; // @[RocketCore.scala 578:76:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114489.4]
  assign _T_2381 = io_fpu_dec_ren3 & _T_2380; // @[RocketCore.scala 767:27:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114490.4]
  assign _T_2385 = _T_2384 | _T_2381; // @[RocketCore.scala 767:50:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114494.4]
  assign _T_2383 = io_fpu_dec_wen & _T_2372; // @[RocketCore.scala 767:27:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114492.4]
  assign _T_2386 = _T_2385 | _T_2383; // @[RocketCore.scala 767:50:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114495.4]
  assign fp_data_hazard_ex = ex_ctrl_wfd & _T_2386; // @[RocketCore.scala 578:39:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114496.4]
  assign _T_2388 = _T_2387 | fp_data_hazard_ex; // @[RocketCore.scala 579:74:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114498.4]
  assign id_ex_hazard = ex_reg_valid & _T_2388; // @[RocketCore.scala 579:35:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114499.4]
  assign _T_2396 = ibuf_io_inst_0_bits_inst_rs1 == mem_waddr; // @[RocketCore.scala 586:72:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114507.4]
  assign _T_2397 = _T_2310 & _T_2396; // @[RocketCore.scala 767:27:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114508.4]
  assign _T_2398 = ibuf_io_inst_0_bits_inst_rs2 == mem_waddr; // @[RocketCore.scala 586:72:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114509.4]
  assign _T_2399 = _T_2313 & _T_2398; // @[RocketCore.scala 767:27:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114510.4]
  assign _T_2402 = _T_2397 | _T_2399; // @[RocketCore.scala 767:50:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114513.4]
  assign _T_2400 = ibuf_io_inst_0_bits_inst_rd == mem_waddr; // @[RocketCore.scala 586:72:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114511.4]
  assign _T_2401 = _T_2316 & _T_2400; // @[RocketCore.scala 767:27:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114512.4]
  assign _T_2403 = _T_2402 | _T_2401; // @[RocketCore.scala 767:50:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114514.4]
  assign data_hazard_mem = mem_ctrl_wxd & _T_2403; // @[RocketCore.scala 586:38:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114515.4]
  assign _T_2391 = mem_ctrl_csr != 3'h0; // @[RocketCore.scala 585:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114501.4]
  assign _T_2392 = mem_ctrl_mem & mem_reg_slow_bypass; // @[RocketCore.scala 585:66:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114502.4]
  assign _T_2393 = _T_2391 | _T_2392; // @[RocketCore.scala 585:50:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114503.4]
  assign _T_2394 = _T_2393 | mem_ctrl_div; // @[RocketCore.scala 585:84:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114504.4]
  assign _T_2395 = _T_2394 | mem_ctrl_fp; // @[RocketCore.scala 585:100:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114505.4]
  assign mem_cannot_bypass = _T_2395 | mem_ctrl_rocc; // @[RocketCore.scala 585:115:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114506.4]
  assign _T_2415 = data_hazard_mem & mem_cannot_bypass; // @[RocketCore.scala 588:57:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114528.4]
  assign _T_2405 = io_fpu_dec_ren1 & _T_2396; // @[RocketCore.scala 767:27:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114517.4]
  assign _T_2407 = io_fpu_dec_ren2 & _T_2398; // @[RocketCore.scala 767:27:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114519.4]
  assign _T_2412 = _T_2405 | _T_2407; // @[RocketCore.scala 767:50:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114524.4]
  assign _T_2408 = ibuf_io_inst_0_bits_inst_rs3 == mem_waddr; // @[RocketCore.scala 587:78:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114520.4]
  assign _T_2409 = io_fpu_dec_ren3 & _T_2408; // @[RocketCore.scala 767:27:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114521.4]
  assign _T_2413 = _T_2412 | _T_2409; // @[RocketCore.scala 767:50:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114525.4]
  assign _T_2411 = io_fpu_dec_wen & _T_2400; // @[RocketCore.scala 767:27:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114523.4]
  assign _T_2414 = _T_2413 | _T_2411; // @[RocketCore.scala 767:50:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114526.4]
  assign fp_data_hazard_mem = mem_ctrl_wfd & _T_2414; // @[RocketCore.scala 587:41:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114527.4]
  assign _T_2416 = _T_2415 | fp_data_hazard_mem; // @[RocketCore.scala 588:78:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114529.4]
  assign id_mem_hazard = mem_reg_valid & _T_2416; // @[RocketCore.scala 588:37:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114530.4]
  assign _T_2499 = id_ex_hazard | id_mem_hazard; // @[RocketCore.scala 611:18:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114616.4]
  assign _T_2419 = ibuf_io_inst_0_bits_inst_rs1 == wb_waddr; // @[RocketCore.scala 592:70:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114534.4]
  assign _T_2420 = _T_2310 & _T_2419; // @[RocketCore.scala 767:27:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114535.4]
  assign _T_2421 = ibuf_io_inst_0_bits_inst_rs2 == wb_waddr; // @[RocketCore.scala 592:70:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114536.4]
  assign _T_2422 = _T_2313 & _T_2421; // @[RocketCore.scala 767:27:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114537.4]
  assign _T_2425 = _T_2420 | _T_2422; // @[RocketCore.scala 767:50:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114540.4]
  assign _T_2423 = ibuf_io_inst_0_bits_inst_rd == wb_waddr; // @[RocketCore.scala 592:70:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114538.4]
  assign _T_2424 = _T_2316 & _T_2423; // @[RocketCore.scala 767:27:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114539.4]
  assign _T_2426 = _T_2425 | _T_2424; // @[RocketCore.scala 767:50:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114541.4]
  assign data_hazard_wb = wb_ctrl_wxd & _T_2426; // @[RocketCore.scala 592:36:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114542.4]
  assign _T_1790 = io_dmem_resp_valid == 1'h0; // @[RocketCore.scala 357:39:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113912.4]
  assign wb_dcache_miss = wb_ctrl_mem & _T_1790; // @[RocketCore.scala 357:36:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113913.4]
  assign _T_2267 = wb_ctrl_div | wb_dcache_miss; // @[RocketCore.scala 492:35:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114334.4]
  assign wb_set_sboard = _T_2267 | wb_ctrl_rocc; // @[RocketCore.scala 492:53:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114335.4]
  assign _T_2438 = data_hazard_wb & wb_set_sboard; // @[RocketCore.scala 594:54:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114555.4]
  assign _T_2428 = io_fpu_dec_ren1 & _T_2419; // @[RocketCore.scala 767:27:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114544.4]
  assign _T_2430 = io_fpu_dec_ren2 & _T_2421; // @[RocketCore.scala 767:27:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114546.4]
  assign _T_2435 = _T_2428 | _T_2430; // @[RocketCore.scala 767:50:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114551.4]
  assign _T_2431 = ibuf_io_inst_0_bits_inst_rs3 == wb_waddr; // @[RocketCore.scala 593:76:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114547.4]
  assign _T_2432 = io_fpu_dec_ren3 & _T_2431; // @[RocketCore.scala 767:27:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114548.4]
  assign _T_2436 = _T_2435 | _T_2432; // @[RocketCore.scala 767:50:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114552.4]
  assign _T_2434 = io_fpu_dec_wen & _T_2423; // @[RocketCore.scala 767:27:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114550.4]
  assign _T_2437 = _T_2436 | _T_2434; // @[RocketCore.scala 767:50:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114553.4]
  assign fp_data_hazard_wb = wb_ctrl_wfd & _T_2437; // @[RocketCore.scala 593:39:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114554.4]
  assign _T_2439 = _T_2438 | fp_data_hazard_wb; // @[RocketCore.scala 594:71:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114556.4]
  assign id_wb_hazard = wb_reg_valid & _T_2439; // @[RocketCore.scala 594:35:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114557.4]
  assign _T_2500 = _T_2499 | id_wb_hazard; // @[RocketCore.scala 611:35:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114617.4]
  assign _T_2320 = _T_2319[31:1]; // @[RocketCore.scala 785:35:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114429.4]
  assign _GEN_233 = {{1'd0}, _T_2320}; // @[RocketCore.scala 785:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114430.4]
  assign _T_2321 = _GEN_233 << 1; // @[RocketCore.scala 785:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114430.4]
  assign _T_2330 = _T_2321 >> ibuf_io_inst_0_bits_inst_rs1; // @[RocketCore.scala 781:35:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114439.4]
  assign _T_2331 = _T_2330[0]; // @[RocketCore.scala 781:35:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114440.4]
  assign dmem_resp_valid = io_dmem_resp_valid & io_dmem_resp_bits_has_data; // @[RocketCore.scala 502:44:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114351.4]
  assign dmem_resp_replay = dmem_resp_valid & io_dmem_resp_bits_replay; // @[RocketCore.scala 503:42:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114352.4]
  assign _T_2274 = io_dmem_resp_bits_tag[0]; // @[RocketCore.scala 499:45:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114345.4]
  assign dmem_resp_xpu = _T_2274 == 1'h0; // @[RocketCore.scala 499:23:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114347.4]
  assign _T_2284 = dmem_resp_replay & dmem_resp_xpu; // @[RocketCore.scala 518:26:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114365.4]
  assign _T_2282 = div_io_resp_ready & div_io_resp_valid; // @[Decoupled.scala 30:37:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114361.4]
  assign ll_wen = _T_2284 ? 1'h1 : _T_2282; // @[RocketCore.scala 518:44:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114366.4]
  assign dmem_resp_waddr = io_dmem_resp_bits_tag[5:1]; // @[RocketCore.scala 501:46:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114350.4]
  assign ll_waddr = _T_2284 ? dmem_resp_waddr : div_io_resp_bits_tag; // @[RocketCore.scala 518:44:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114366.4]
  assign _T_2332 = ll_waddr == ibuf_io_inst_0_bits_inst_rs1; // @[RocketCore.scala 569:86:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114441.4]
  assign _T_2333 = ll_wen & _T_2332; // @[RocketCore.scala 569:74:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114442.4]
  assign _T_2335 = _T_2333 == 1'h0; // @[RocketCore.scala 572:80:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114443.4]
  assign _T_2336 = _T_2331 & _T_2335; // @[RocketCore.scala 572:77:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114444.4]
  assign _T_2337 = _T_2310 & _T_2336; // @[RocketCore.scala 767:27:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114445.4]
  assign _T_2338 = _T_2321 >> ibuf_io_inst_0_bits_inst_rs2; // @[RocketCore.scala 781:35:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114446.4]
  assign _T_2339 = _T_2338[0]; // @[RocketCore.scala 781:35:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114447.4]
  assign _T_2340 = ll_waddr == ibuf_io_inst_0_bits_inst_rs2; // @[RocketCore.scala 569:86:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114448.4]
  assign _T_2341 = ll_wen & _T_2340; // @[RocketCore.scala 569:74:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114449.4]
  assign _T_2343 = _T_2341 == 1'h0; // @[RocketCore.scala 572:80:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114450.4]
  assign _T_2344 = _T_2339 & _T_2343; // @[RocketCore.scala 572:77:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114451.4]
  assign _T_2345 = _T_2313 & _T_2344; // @[RocketCore.scala 767:27:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114452.4]
  assign _T_2354 = _T_2337 | _T_2345; // @[RocketCore.scala 767:50:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114460.4]
  assign _T_2346 = _T_2321 >> ibuf_io_inst_0_bits_inst_rd; // @[RocketCore.scala 781:35:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114453.4]
  assign _T_2347 = _T_2346[0]; // @[RocketCore.scala 781:35:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114454.4]
  assign _T_2348 = ll_waddr == ibuf_io_inst_0_bits_inst_rd; // @[RocketCore.scala 569:86:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114455.4]
  assign _T_2349 = ll_wen & _T_2348; // @[RocketCore.scala 569:74:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114456.4]
  assign _T_2351 = _T_2349 == 1'h0; // @[RocketCore.scala 572:80:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114457.4]
  assign _T_2352 = _T_2347 & _T_2351; // @[RocketCore.scala 572:77:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114458.4]
  assign _T_2353 = _T_2316 & _T_2352; // @[RocketCore.scala 767:27:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114459.4]
  assign id_sboard_hazard = _T_2354 | _T_2353; // @[RocketCore.scala 767:50:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114461.4]
  assign _T_2501 = _T_2500 | id_sboard_hazard; // @[RocketCore.scala 611:51:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114618.4]
  assign _T_2502 = ex_reg_valid | mem_reg_valid; // @[RocketCore.scala 612:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114619.4]
  assign _T_2503 = _T_2502 | wb_reg_valid; // @[RocketCore.scala 612:57:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114620.4]
  assign _T_2504 = csr_io_singleStep & _T_2503; // @[RocketCore.scala 612:23:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114621.4]
  assign _T_2505 = _T_2501 | _T_2504; // @[RocketCore.scala 611:71:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114622.4]
  assign _T_2469 = io_fpu_fcsr_rdy == 1'h0; // @[RocketCore.scala 602:18:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114586.4]
  assign _T_2470 = id_csr_en & _T_2469; // @[RocketCore.scala 602:15:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114587.4]
  assign _T_2471 = _T_2442 >> ibuf_io_inst_0_bits_inst_rs1; // @[RocketCore.scala 781:35:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114588.4]
  assign _T_2472 = _T_2471[0]; // @[RocketCore.scala 781:35:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114589.4]
  assign _T_2473 = io_fpu_dec_ren1 & _T_2472; // @[RocketCore.scala 767:27:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114590.4]
  assign _T_2474 = _T_2442 >> ibuf_io_inst_0_bits_inst_rs2; // @[RocketCore.scala 781:35:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114591.4]
  assign _T_2475 = _T_2474[0]; // @[RocketCore.scala 781:35:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114592.4]
  assign _T_2476 = io_fpu_dec_ren2 & _T_2475; // @[RocketCore.scala 767:27:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114593.4]
  assign _T_2483 = _T_2473 | _T_2476; // @[RocketCore.scala 767:50:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114600.4]
  assign _T_2477 = _T_2442 >> ibuf_io_inst_0_bits_inst_rs3; // @[RocketCore.scala 781:35:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114594.4]
  assign _T_2478 = _T_2477[0]; // @[RocketCore.scala 781:35:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114595.4]
  assign _T_2479 = io_fpu_dec_ren3 & _T_2478; // @[RocketCore.scala 767:27:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114596.4]
  assign _T_2484 = _T_2483 | _T_2479; // @[RocketCore.scala 767:50:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114601.4]
  assign _T_2480 = _T_2442 >> ibuf_io_inst_0_bits_inst_rd; // @[RocketCore.scala 781:35:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114597.4]
  assign _T_2481 = _T_2480[0]; // @[RocketCore.scala 781:35:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114598.4]
  assign _T_2482 = io_fpu_dec_wen & _T_2481; // @[RocketCore.scala 767:27:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114599.4]
  assign _T_2485 = _T_2484 | _T_2482; // @[RocketCore.scala 767:50:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114602.4]
  assign id_stall_fpu = _T_2470 | _T_2485; // @[RocketCore.scala 602:35:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114603.4]
  assign _T_2506 = id_ctrl_fp & id_stall_fpu; // @[RocketCore.scala 613:16:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114623.4]
  assign _T_2507 = _T_2505 | _T_2506; // @[RocketCore.scala 612:74:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114624.4]
  assign _T_2508 = id_ctrl_mem & dcache_blocked; // @[RocketCore.scala 614:17:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114625.4]
  assign _T_2509 = _T_2507 | _T_2508; // @[RocketCore.scala 613:32:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114626.4]
  assign wb_wxd = wb_reg_valid & wb_ctrl_wxd; // @[RocketCore.scala 491:29:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114333.4]
  assign _T_2513 = wb_wxd == 1'h0; // @[RocketCore.scala 616:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114629.4]
  assign _T_2514 = div_io_resp_valid & _T_2513; // @[RocketCore.scala 616:62:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114630.4]
  assign _T_2515 = div_io_req_ready | _T_2514; // @[RocketCore.scala 616:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114631.4]
  assign _T_2517 = _T_2515 == 1'h0; // @[RocketCore.scala 616:21:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114632.4]
  assign _T_2518 = _T_2517 | div_io_req_valid; // @[RocketCore.scala 616:75:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114633.4]
  assign _T_2519 = id_ctrl_div & _T_2518; // @[RocketCore.scala 616:17:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114634.4]
  assign _T_2520 = _T_2509 | _T_2519; // @[RocketCore.scala 615:34:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114635.4]
  assign _T_2521 = _T_2520 | id_do_fence; // @[RocketCore.scala 616:96:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114636.4]
  assign ctrl_stalld = _T_2521 | csr_io_csr_stall; // @[RocketCore.scala 617:17:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114637.4]
  assign _T_2526 = _T_2525 | ctrl_stalld; // @[RocketCore.scala 619:89:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114641.4]
  assign ctrl_killd = _T_2526 | csr_io_interrupt; // @[RocketCore.scala 619:104:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114642.4]
  assign _T_1712 = ctrl_killd == 1'h0; // @[RocketCore.scala 299:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113808.4]
  assign _T_1714 = take_pc == 1'h0; // @[RocketCore.scala 300:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113810.4]
  assign _T_1715 = _T_1714 & ibuf_io_inst_0_valid; // @[RocketCore.scala 300:29:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113811.4]
  assign _T_1716 = _T_1715 & ibuf_io_inst_0_bits_replay; // @[RocketCore.scala 300:54:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113812.4]
  assign _T_1719 = _T_1712 & id_xcpt; // @[RocketCore.scala 301:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113815.4]
  assign _T_1723 = _T_1715 & csr_io_interrupt; // @[RocketCore.scala 302:62:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113819.4]
  assign _GEN_1 = id_fence_next ? 1'h1 : _GEN_0; // @[RocketCore.scala 308:26:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113826.6]
  assign _T_1737 = {ibuf_io_inst_0_bits_xcpt0_pf_inst,ibuf_io_inst_0_bits_xcpt0_ae_inst}; // @[RocketCore.scala 319:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113841.8]
  assign _T_1739 = _T_1737 != 2'h0; // @[RocketCore.scala 319:47:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113842.8]
  assign _T_1740 = bpu_io_xcpt_if | _T_1739; // @[RocketCore.scala 319:28:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113843.8]
  assign _GEN_5 = _T_1740 ? 2'h2 : 2'h1; // @[RocketCore.scala 319:52:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113844.8]
  assign _GEN_7 = id_xcpt ? 4'h0 : id_ctrl_alu_fn; // @[RocketCore.scala 309:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113829.6]
  assign _GEN_9 = id_xcpt ? _GEN_5 : id_ctrl_sel_alu1; // @[RocketCore.scala 309:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113829.6]
  assign _GEN_10 = id_xcpt ? 2'h0 : id_ctrl_sel_alu2; // @[RocketCore.scala 309:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113829.6]
  assign _T_1743 = id_ctrl_fence_i | id_csr_flush; // @[RocketCore.scala 324:42:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113849.6]
  assign _T_1748 = {_T_2312,_T_2309}; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113855.8]
  assign _GEN_12 = id_sfence ? {{1'd0}, _T_1748} : id_ctrl_mem_type; // @[RocketCore.scala 326:22:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113852.6]
  assign _T_1749 = id_bypass_src_0_0 | id_bypass_src_0_1; // @[RocketCore.scala 331:48:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113858.6]
  assign _T_1750 = _T_1749 | id_bypass_src_0_2; // @[RocketCore.scala 331:48:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113859.6]
  assign _T_1751 = _T_1750 | id_bypass_src_0_3; // @[RocketCore.scala 331:48:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113860.6]
  assign _T_1756 = id_bypass_src_0_2 ? 2'h2 : 2'h3; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113861.6]
  assign _T_1757 = id_bypass_src_0_1 ? 2'h1 : _T_1756; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113862.6]
  assign _T_1758 = id_bypass_src_0_0 ? 2'h0 : _T_1757; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113863.6]
  assign _T_1760 = _T_1751 == 1'h0; // @[RocketCore.scala 335:26:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113866.6]
  assign _T_1761 = id_ctrl_rxs1 & _T_1760; // @[RocketCore.scala 335:23:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113867.6]
  assign _T_2288 = replay_wb == 1'h0; // @[RocketCore.scala 526:34:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114371.4]
  assign _T_2289 = wb_reg_valid & _T_2288; // @[RocketCore.scala 526:31:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114372.4]
  assign _T_2291 = wb_xcpt == 1'h0; // @[RocketCore.scala 526:48:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114373.4]
  assign wb_valid = _T_2289 & _T_2291; // @[RocketCore.scala 526:45:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114374.4]
  assign wb_wen = wb_valid & wb_ctrl_wxd; // @[RocketCore.scala 527:25:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114375.4]
  assign rf_wen = wb_wen | ll_wen; // @[RocketCore.scala 528:23:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114376.4]
  assign rf_waddr = ll_wen ? ll_waddr : wb_waddr; // @[RocketCore.scala 529:21:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114377.4]
  assign _T_2298 = rf_waddr != 5'h0; // @[RocketCore.scala 810:16:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114384.6]
  assign _T_2302 = rf_waddr == ibuf_io_inst_0_bits_inst_rs1; // @[RocketCore.scala 813:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114390.8]
  assign _T_2292 = dmem_resp_valid & dmem_resp_xpu; // @[RocketCore.scala 530:38:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114378.4]
  assign ll_wdata = div_io_resp_bits_data; // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114355.4]
  assign _T_2294 = wb_ctrl_csr != 3'h0; // @[RocketCore.scala 532:34:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114379.4]
  assign _T_2295 = _T_2294 ? csr_io_rw_rdata : bypass_mux_2; // @[RocketCore.scala 532:21:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114380.4]
  assign _T_2296 = ll_wen ? ll_wdata : _T_2295; // @[RocketCore.scala 531:21:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114381.4]
  assign rf_wdata = _T_2292 ? io_dmem_resp_bits_data : _T_2296; // @[RocketCore.scala 530:21:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114382.4]
  assign _GEN_206 = _T_2302 ? rf_wdata : _T_1329; // @[RocketCore.scala 813:31:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114391.8]
  assign _GEN_212 = _T_2298 ? _GEN_206 : _T_1329; // @[RocketCore.scala 810:29:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114385.6]
  assign id_rs_0 = rf_wen ? _GEN_212 : _T_1329; // @[RocketCore.scala 534:17:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114383.4]
  assign _T_1762 = id_rs_0[1:0]; // @[RocketCore.scala 336:37:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113869.8]
  assign _T_1763 = id_rs_0[31:2]; // @[RocketCore.scala 337:38:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113871.8]
  assign _GEN_13 = _T_1761 ? _T_1762 : _T_1758; // @[RocketCore.scala 335:38:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113868.6]
  assign _GEN_14 = _T_1761 ? _T_1763 : ex_reg_rs_msb_0; // @[RocketCore.scala 335:38:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113868.6]
  assign _T_1764 = id_bypass_src_1_0 | id_bypass_src_1_1; // @[RocketCore.scala 331:48:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113874.6]
  assign _T_1765 = _T_1764 | id_bypass_src_1_2; // @[RocketCore.scala 331:48:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113875.6]
  assign _T_1766 = _T_1765 | id_bypass_src_1_3; // @[RocketCore.scala 331:48:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113876.6]
  assign _T_1771 = id_bypass_src_1_2 ? 2'h2 : 2'h3; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113877.6]
  assign _T_1772 = id_bypass_src_1_1 ? 2'h1 : _T_1771; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113878.6]
  assign _T_1773 = id_bypass_src_1_0 ? 2'h0 : _T_1772; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113879.6]
  assign _T_1775 = _T_1766 == 1'h0; // @[RocketCore.scala 335:26:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113882.6]
  assign _T_1776 = id_ctrl_rxs2 & _T_1775; // @[RocketCore.scala 335:23:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113883.6]
  assign _T_2303 = rf_waddr == ibuf_io_inst_0_bits_inst_rs2; // @[RocketCore.scala 813:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114394.8]
  assign _GEN_207 = _T_2303 ? rf_wdata : _T_1339; // @[RocketCore.scala 813:31:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114395.8]
  assign _GEN_213 = _T_2298 ? _GEN_207 : _T_1339; // @[RocketCore.scala 810:29:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114385.6]
  assign id_rs_1 = rf_wen ? _GEN_213 : _T_1339; // @[RocketCore.scala 534:17:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114383.4]
  assign _T_1777 = id_rs_1[1:0]; // @[RocketCore.scala 336:37:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113885.8]
  assign _T_1778 = id_rs_1[31:2]; // @[RocketCore.scala 337:38:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113887.8]
  assign _GEN_15 = _T_1776 ? _T_1777 : _T_1773; // @[RocketCore.scala 335:38:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113884.6]
  assign _GEN_16 = _T_1776 ? _T_1778 : ex_reg_rs_msb_1; // @[RocketCore.scala 335:38:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113884.6]
  assign _T_1780 = ibuf_io_inst_0_bits_raw; // @[RocketCore.scala 341:21:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113892.8]
  assign _T_1782 = _T_1780[1:0]; // @[RocketCore.scala 343:31:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113894.8]
  assign _T_1783 = _T_1780[31:2]; // @[RocketCore.scala 344:32:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113896.8]
  assign _GEN_17 = id_illegal_insn ? 1'h0 : _T_1751; // @[RocketCore.scala 340:28:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113890.6]
  assign _GEN_18 = id_illegal_insn ? _T_1782 : _GEN_13; // @[RocketCore.scala 340:28:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113890.6]
  assign _GEN_19 = id_illegal_insn ? _T_1783 : _GEN_14; // @[RocketCore.scala 340:28:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113890.6]
  assign _GEN_21 = _T_1712 ? id_ctrl_fp : ex_ctrl_fp; // @[RocketCore.scala 304:22:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113822.4]
  assign _GEN_22 = _T_1712 ? 1'h0 : ex_ctrl_rocc; // @[RocketCore.scala 304:22:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113822.4]
  assign _GEN_23 = _T_1712 ? id_ctrl_branch : ex_ctrl_branch; // @[RocketCore.scala 304:22:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113822.4]
  assign _GEN_24 = _T_1712 ? id_ctrl_jal : ex_ctrl_jal; // @[RocketCore.scala 304:22:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113822.4]
  assign _GEN_25 = _T_1712 ? id_ctrl_jalr : ex_ctrl_jalr; // @[RocketCore.scala 304:22:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113822.4]
  assign _GEN_26 = _T_1712 ? id_ctrl_rxs2 : ex_ctrl_rxs2; // @[RocketCore.scala 304:22:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113822.4]
  assign _GEN_28 = _T_1712 ? _GEN_10 : ex_ctrl_sel_alu2; // @[RocketCore.scala 304:22:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113822.4]
  assign _GEN_29 = _T_1712 ? _GEN_9 : ex_ctrl_sel_alu1; // @[RocketCore.scala 304:22:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113822.4]
  assign _GEN_30 = _T_1712 ? id_ctrl_sel_imm : ex_ctrl_sel_imm; // @[RocketCore.scala 304:22:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113822.4]
  assign _GEN_32 = _T_1712 ? _GEN_7 : ex_ctrl_alu_fn; // @[RocketCore.scala 304:22:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113822.4]
  assign _GEN_33 = _T_1712 ? id_ctrl_mem : ex_ctrl_mem; // @[RocketCore.scala 304:22:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113822.4]
  assign _GEN_34 = _T_1712 ? id_ctrl_mem_cmd : ex_ctrl_mem_cmd; // @[RocketCore.scala 304:22:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113822.4]
  assign _GEN_35 = _T_1712 ? _GEN_12 : ex_ctrl_mem_type; // @[RocketCore.scala 304:22:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113822.4]
  assign _GEN_39 = _T_1712 ? id_ctrl_wfd : ex_ctrl_wfd; // @[RocketCore.scala 304:22:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113822.4]
  assign _GEN_40 = _T_1712 ? id_ctrl_div : ex_ctrl_div; // @[RocketCore.scala 304:22:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113822.4]
  assign _GEN_41 = _T_1712 ? id_ctrl_wxd : ex_ctrl_wxd; // @[RocketCore.scala 304:22:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113822.4]
  assign _GEN_42 = _T_1712 ? id_csr : ex_ctrl_csr; // @[RocketCore.scala 304:22:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113822.4]
  assign _GEN_43 = _T_1712 ? id_ctrl_fence_i : ex_ctrl_fence_i; // @[RocketCore.scala 304:22:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113822.4]
  assign _GEN_47 = _T_1712 ? 1'h0 : ex_reg_rvc; // @[RocketCore.scala 304:22:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113822.4]
  assign _GEN_48 = _T_1712 ? _GEN_1 : _GEN_0; // @[RocketCore.scala 304:22:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113822.4]
  assign _GEN_49 = _T_1712 ? _T_1743 : ex_reg_flush_pipe; // @[RocketCore.scala 304:22:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113822.4]
  assign _T_2417 = mem_reg_valid & data_hazard_mem; // @[RocketCore.scala 589:32:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114531.4]
  assign id_load_use = _T_2417 & mem_ctrl_mem; // @[RocketCore.scala 589:51:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114532.4]
  assign _GEN_50 = _T_1712 ? id_load_use : ex_reg_load_use; // @[RocketCore.scala 304:22:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113822.4]
  assign _GEN_51 = _T_1712 ? _GEN_17 : ex_reg_rs_bypass_0; // @[RocketCore.scala 304:22:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113822.4]
  assign _GEN_52 = _T_1712 ? _GEN_18 : ex_reg_rs_lsb_0; // @[RocketCore.scala 304:22:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113822.4]
  assign _GEN_53 = _T_1712 ? _GEN_19 : ex_reg_rs_msb_0; // @[RocketCore.scala 304:22:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113822.4]
  assign _GEN_54 = _T_1712 ? _T_1766 : ex_reg_rs_bypass_1; // @[RocketCore.scala 304:22:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113822.4]
  assign _GEN_55 = _T_1712 ? _GEN_15 : ex_reg_rs_lsb_1; // @[RocketCore.scala 304:22:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113822.4]
  assign _GEN_56 = _T_1712 ? _GEN_16 : ex_reg_rs_msb_1; // @[RocketCore.scala 304:22:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113822.4]
  assign _T_1786 = _T_1712 | csr_io_interrupt; // @[RocketCore.scala 347:21:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113901.4]
  assign _T_1787 = _T_1786 | ibuf_io_inst_0_bits_replay; // @[RocketCore.scala 347:41:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113902.4]
  assign _GEN_57 = _T_1787 ? id_cause : ex_cause; // @[RocketCore.scala 347:73:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113903.4]
  assign _GEN_58 = _T_1787 ? ibuf_io_inst_0_bits_inst_bits : ex_reg_inst; // @[RocketCore.scala 347:73:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113903.4]
  assign _GEN_60 = _T_1787 ? ibuf_io_pc : ex_reg_pc; // @[RocketCore.scala 347:73:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113903.4]
  assign _T_1788 = ex_reg_valid | ex_reg_replay; // @[RocketCore.scala 356:34:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113910.4]
  assign ex_pc_valid = _T_1788 | ex_reg_xcpt_interrupt; // @[RocketCore.scala 356:51:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113911.4]
  assign _T_1792 = io_dmem_req_ready == 1'h0; // @[RocketCore.scala 358:45:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113914.4]
  assign _T_1793 = ex_ctrl_mem & _T_1792; // @[RocketCore.scala 358:42:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113915.4]
  assign _T_1795 = div_io_req_ready == 1'h0; // @[RocketCore.scala 359:45:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113916.4]
  assign _T_1796 = ex_ctrl_div & _T_1795; // @[RocketCore.scala 359:42:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113917.4]
  assign replay_ex_structural = _T_1793 | _T_1796; // @[RocketCore.scala 358:64:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113918.4]
  assign replay_ex_load_use = wb_dcache_miss & ex_reg_load_use; // @[RocketCore.scala 360:43:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113919.4]
  assign _T_1797 = replay_ex_structural | replay_ex_load_use; // @[RocketCore.scala 361:75:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113920.4]
  assign _T_1798 = ex_reg_valid & _T_1797; // @[RocketCore.scala 361:50:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113921.4]
  assign replay_ex = ex_reg_replay | _T_1798; // @[RocketCore.scala 361:33:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113922.4]
  assign _T_1799 = take_pc | replay_ex; // @[RocketCore.scala 362:35:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113923.4]
  assign _T_1801 = ex_reg_valid == 1'h0; // @[RocketCore.scala 362:51:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113924.4]
  assign ctrl_killx = _T_1799 | _T_1801; // @[RocketCore.scala 362:48:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113925.4]
  assign _T_1803 = ex_ctrl_mem_cmd == 5'h7; // @[RocketCore.scala 364:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113926.4]
  assign _T_1817 = 3'h0 == ex_ctrl_mem_type; // @[RocketCore.scala 364:91:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113933.4]
  assign _T_1818 = 3'h4 == ex_ctrl_mem_type; // @[RocketCore.scala 364:91:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113934.4]
  assign _T_1819 = 3'h1 == ex_ctrl_mem_type; // @[RocketCore.scala 364:91:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113935.4]
  assign _T_1820 = 3'h5 == ex_ctrl_mem_type; // @[RocketCore.scala 364:91:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113936.4]
  assign _T_1823 = _T_1817 | _T_1818; // @[RocketCore.scala 364:91:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113938.4]
  assign _T_1824 = _T_1823 | _T_1819; // @[RocketCore.scala 364:91:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113939.4]
  assign _T_1825 = _T_1824 | _T_1820; // @[RocketCore.scala 364:91:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113940.4]
  assign ex_slow_bypass = _T_1803 | _T_1825; // @[RocketCore.scala 364:50:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113941.4]
  assign ex_xcpt = ex_reg_xcpt_interrupt | ex_reg_xcpt; // @[RocketCore.scala 368:28:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113945.4]
  assign _T_1845 = mem_reg_valid | mem_reg_replay; // @[RocketCore.scala 374:36:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113956.4]
  assign mem_pc_valid = _T_1845 | mem_reg_xcpt_interrupt; // @[RocketCore.scala 374:54:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113957.4]
  assign _T_1846 = $signed(mem_reg_pc); // @[RocketCore.scala 375:34:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113958.4]
  assign _T_1852 = mem_reg_inst[31]; // @[RocketCore.scala 820:48:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113961.4]
  assign _T_1853 = $signed(_T_1852); // @[RocketCore.scala 820:53:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113962.4]
  assign _T_1859 = {11{_T_1853}}; // @[RocketCore.scala 821:21:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113967.4]
  assign _T_1865 = mem_reg_inst[19:12]; // @[RocketCore.scala 822:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113971.4]
  assign _T_1866 = $signed(_T_1865); // @[RocketCore.scala 822:73:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113972.4]
  assign _T_1867 = {8{_T_1853}}; // @[RocketCore.scala 822:21:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113973.4]
  assign _T_1876 = mem_reg_inst[20]; // @[RocketCore.scala 824:39:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113978.4]
  assign _T_1877 = $signed(_T_1876); // @[RocketCore.scala 824:44:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113979.4]
  assign _T_1880 = mem_reg_inst[7]; // @[RocketCore.scala 825:39:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113981.4]
  assign _T_1881 = $signed(_T_1880); // @[RocketCore.scala 825:43:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113982.4]
  assign _T_1891 = mem_reg_inst[30:25]; // @[RocketCore.scala 826:66:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113989.4]
  assign _T_1901 = mem_reg_inst[11:8]; // @[RocketCore.scala 828:57:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113995.4]
  assign _T_1905 = mem_reg_inst[24:21]; // @[RocketCore.scala 829:52:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113998.4]
  assign _T_1922 = {_T_1891,_T_1901}; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114011.4]
  assign _T_1923 = {_T_1922,1'h0}; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114012.4]
  assign _T_1924 = $unsigned(_T_1881); // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114013.4]
  assign _T_1925 = $unsigned(_T_1867); // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114014.4]
  assign _T_1926 = {_T_1925,_T_1924}; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114015.4]
  assign _T_1927 = $unsigned(_T_1859); // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114016.4]
  assign _T_1928 = $unsigned(_T_1853); // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114017.4]
  assign _T_1929 = {_T_1928,_T_1927}; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114018.4]
  assign _T_1930 = {_T_1929,_T_1926}; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114019.4]
  assign _T_1931 = {_T_1930,_T_1923}; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114020.4]
  assign _T_1932 = $signed(_T_1931); // @[RocketCore.scala 834:53:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114021.4]
  assign _T_2007 = {_T_1891,_T_1905}; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114073.4]
  assign _T_2008 = {_T_2007,1'h0}; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114074.4]
  assign _T_2009 = $unsigned(_T_1877); // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114075.4]
  assign _T_2010 = $unsigned(_T_1866); // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114076.4]
  assign _T_2011 = {_T_2010,_T_2009}; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114077.4]
  assign _T_2015 = {_T_1929,_T_2011}; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114081.4]
  assign _T_2016 = {_T_2015,_T_2008}; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114082.4]
  assign _T_2017 = $signed(_T_2016); // @[RocketCore.scala 834:53:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114083.4]
  assign _T_2020 = mem_reg_rvc ? $signed(4'sh2) : $signed(4'sh4); // @[RocketCore.scala 378:8:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114084.4]
  assign _T_2021 = mem_ctrl_jal ? $signed(_T_2017) : $signed({{28{_T_2020[3]}},_T_2020}); // @[RocketCore.scala 377:8:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114085.4]
  assign _T_2022 = _T_2050 ? $signed(_T_1932) : $signed(_T_2021); // @[RocketCore.scala 376:8:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114086.4]
  assign _T_2023 = $signed(_T_1846) + $signed(_T_2022); // @[RocketCore.scala 375:41:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114087.4]
  assign _T_2024 = _T_2023[31:0]; // @[RocketCore.scala 375:41:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114088.4]
  assign mem_br_target = $signed(_T_2024); // @[RocketCore.scala 375:41:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114089.4]
  assign _T_2025 = mem_ctrl_jalr | mem_reg_sfence; // @[RocketCore.scala 379:36:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114090.4]
  assign _T_2026 = $signed(bypass_mux_1); // @[RocketCore.scala 379:106:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114091.4]
  assign _T_2027 = _T_2025 ? $signed(_T_2026) : $signed(mem_br_target); // @[RocketCore.scala 379:21:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114092.4]
  assign _T_2029 = $signed(_T_2027) & $signed(-32'sh2); // @[RocketCore.scala 379:129:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114093.4]
  assign _T_2030 = $signed(_T_2029); // @[RocketCore.scala 379:129:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114094.4]
  assign mem_npc = $unsigned(_T_2030); // @[RocketCore.scala 379:141:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114095.4]
  assign _T_2039 = mem_npc[1]; // @[RocketCore.scala 383:66:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114103.4]
  assign _T_2040 = _T_1475 & _T_2039; // @[RocketCore.scala 383:56:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114104.4]
  assign _T_2042 = mem_reg_sfence == 1'h0; // @[RocketCore.scala 383:73:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114105.4]
  assign mem_npc_misaligned = _T_2040 & _T_2042; // @[RocketCore.scala 383:70:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114106.4]
  assign _T_2044 = mem_reg_xcpt == 1'h0; // @[RocketCore.scala 384:27:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114107.4]
  assign _T_2045 = mem_ctrl_jalr ^ mem_npc_misaligned; // @[RocketCore.scala 384:59:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114108.4]
  assign _T_2046 = _T_2044 & _T_2045; // @[RocketCore.scala 384:41:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114109.4]
  assign _T_2048 = _T_2046 ? $signed(mem_br_target) : $signed(_T_2026); // @[RocketCore.scala 384:26:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114111.4]
  assign mem_int_wdata = $unsigned(_T_2048); // @[RocketCore.scala 384:119:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114112.4]
  assign _T_2058 = ctrl_killx == 1'h0; // @[RocketCore.scala 391:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114124.4]
  assign _T_2061 = _T_1714 & replay_ex; // @[RocketCore.scala 392:37:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114127.4]
  assign _T_2064 = _T_2058 & ex_xcpt; // @[RocketCore.scala 393:31:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114130.4]
  assign _T_2067 = _T_1714 & ex_reg_xcpt_interrupt; // @[RocketCore.scala 394:45:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114133.4]
  assign _T_2068 = mem_reg_valid & mem_reg_flush_pipe; // @[RocketCore.scala 398:23:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114135.4]
  assign _T_2071 = ex_ctrl_mem_cmd == 5'h0; // @[Consts.scala 93:31:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114143.8]
  assign _T_2073 = ex_ctrl_mem_cmd == 5'h6; // @[Consts.scala 93:48:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114144.8]
  assign _T_2074 = _T_2071 | _T_2073; // @[Consts.scala 93:41:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114145.8]
  assign _T_2077 = _T_2074 | _T_1803; // @[Consts.scala 93:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114147.8]
  assign _T_2082 = ex_ctrl_mem_cmd == 5'h4; // @[package.scala 14:47:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114148.8]
  assign _T_2083 = ex_ctrl_mem_cmd == 5'h9; // @[package.scala 14:47:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114149.8]
  assign _T_2084 = ex_ctrl_mem_cmd == 5'ha; // @[package.scala 14:47:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114150.8]
  assign _T_2085 = ex_ctrl_mem_cmd == 5'hb; // @[package.scala 14:47:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114151.8]
  assign _T_2086 = _T_2082 | _T_2083; // @[package.scala 14:62:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114152.8]
  assign _T_2087 = _T_2086 | _T_2084; // @[package.scala 14:62:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114153.8]
  assign _T_2088 = _T_2087 | _T_2085; // @[package.scala 14:62:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114154.8]
  assign _T_2094 = ex_ctrl_mem_cmd == 5'h8; // @[package.scala 14:47:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114155.8]
  assign _T_2095 = ex_ctrl_mem_cmd == 5'hc; // @[package.scala 14:47:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114156.8]
  assign _T_2096 = ex_ctrl_mem_cmd == 5'hd; // @[package.scala 14:47:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114157.8]
  assign _T_2097 = ex_ctrl_mem_cmd == 5'he; // @[package.scala 14:47:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114158.8]
  assign _T_2098 = ex_ctrl_mem_cmd == 5'hf; // @[package.scala 14:47:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114159.8]
  assign _T_2099 = _T_2094 | _T_2095; // @[package.scala 14:62:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114160.8]
  assign _T_2100 = _T_2099 | _T_2096; // @[package.scala 14:62:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114161.8]
  assign _T_2101 = _T_2100 | _T_2097; // @[package.scala 14:62:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114162.8]
  assign _T_2102 = _T_2101 | _T_2098; // @[package.scala 14:62:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114163.8]
  assign _T_2103 = _T_2088 | _T_2102; // @[Consts.scala 91:44:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114164.8]
  assign _T_2104 = _T_2077 | _T_2103; // @[Consts.scala 93:75:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114165.8]
  assign _T_2105 = ex_ctrl_mem & _T_2104; // @[RocketCore.scala 403:33:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114166.8]
  assign _T_2107 = ex_ctrl_mem_cmd == 5'h1; // @[Consts.scala 94:32:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114168.8]
  assign _T_2109 = ex_ctrl_mem_cmd == 5'h11; // @[Consts.scala 94:49:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114169.8]
  assign _T_2110 = _T_2107 | _T_2109; // @[Consts.scala 94:42:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114170.8]
  assign _T_2113 = _T_2110 | _T_1803; // @[Consts.scala 94:59:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114172.8]
  assign _T_2140 = _T_2113 | _T_2103; // @[Consts.scala 94:76:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114190.8]
  assign _T_2141 = ex_ctrl_mem & _T_2140; // @[RocketCore.scala 404:34:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114191.8]
  assign _T_2142 = ex_ctrl_mem | ex_ctrl_rocc; // @[RocketCore.scala 417:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114203.8]
  assign _T_2144 = ex_ctrl_rxs2 & _T_2142; // @[RocketCore.scala 417:24:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114205.8]
  assign _T_2146 = ex_ctrl_rocc ? 3'h2 : ex_ctrl_mem_type; // @[RocketCore.scala 418:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114207.10]
  assign _T_2148 = _T_2146[1:0]; // @[AMOALU.scala 10:17:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114208.10]
  assign _T_2150 = _T_2148 == 2'h0; // @[AMOALU.scala 26:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114209.10]
  assign _T_2151 = ex_rs_1[7:0]; // @[AMOALU.scala 26:66:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114210.10]
  assign _T_2152 = {_T_2151,_T_2151}; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114211.10]
  assign _T_2153 = {_T_2152,_T_2152}; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114212.10]
  assign _T_2155 = _T_2148 == 2'h1; // @[AMOALU.scala 26:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114213.10]
  assign _T_2156 = ex_rs_1[15:0]; // @[AMOALU.scala 26:66:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114214.10]
  assign _T_2157 = {_T_2156,_T_2156}; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114215.10]
  assign _T_2158 = _T_2155 ? _T_2157 : ex_rs_1; // @[AMOALU.scala 26:13:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114216.10]
  assign _T_2159 = _T_2150 ? _T_2153 : _T_2158; // @[AMOALU.scala 26:13:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114217.10]
  assign _GEN_69 = _T_2144 ? _T_2159 : mem_reg_rs2; // @[RocketCore.scala 417:71:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114206.8]
  assign _T_2160 = ex_ctrl_jalr & csr_io_status_debug; // @[RocketCore.scala 421:24:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114220.8]
  assign _GEN_70 = _T_2160 ? 1'h1 : ex_ctrl_fence_i; // @[RocketCore.scala 421:48:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114221.8]
  assign _GEN_71 = _T_2160 ? 1'h1 : ex_reg_flush_pipe; // @[RocketCore.scala 421:48:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114221.8]
  assign _GEN_73 = ex_pc_valid ? ex_ctrl_fp : mem_ctrl_fp; // @[RocketCore.scala 400:28:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114140.6]
  assign _GEN_74 = ex_pc_valid ? ex_ctrl_rocc : mem_ctrl_rocc; // @[RocketCore.scala 400:28:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114140.6]
  assign _GEN_75 = ex_pc_valid ? ex_ctrl_branch : mem_ctrl_branch; // @[RocketCore.scala 400:28:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114140.6]
  assign _GEN_76 = ex_pc_valid ? ex_ctrl_jal : mem_ctrl_jal; // @[RocketCore.scala 400:28:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114140.6]
  assign _GEN_77 = ex_pc_valid ? ex_ctrl_jalr : mem_ctrl_jalr; // @[RocketCore.scala 400:28:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114140.6]
  assign _GEN_85 = ex_pc_valid ? ex_ctrl_mem : mem_ctrl_mem; // @[RocketCore.scala 400:28:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114140.6]
  assign _GEN_91 = ex_pc_valid ? ex_ctrl_wfd : mem_ctrl_wfd; // @[RocketCore.scala 400:28:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114140.6]
  assign _GEN_92 = ex_pc_valid ? ex_ctrl_div : mem_ctrl_div; // @[RocketCore.scala 400:28:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114140.6]
  assign _GEN_93 = ex_pc_valid ? ex_ctrl_wxd : mem_ctrl_wxd; // @[RocketCore.scala 400:28:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114140.6]
  assign _GEN_94 = ex_pc_valid ? ex_ctrl_csr : mem_ctrl_csr; // @[RocketCore.scala 400:28:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114140.6]
  assign _GEN_95 = ex_pc_valid ? _GEN_70 : mem_ctrl_fence_i; // @[RocketCore.scala 400:28:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114140.6]
  assign _GEN_99 = ex_pc_valid ? ex_reg_rvc : mem_reg_rvc; // @[RocketCore.scala 400:28:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114140.6]
  assign _GEN_100 = ex_pc_valid ? _T_2105 : mem_reg_load; // @[RocketCore.scala 400:28:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114140.6]
  assign _GEN_101 = ex_pc_valid ? _T_2141 : mem_reg_store; // @[RocketCore.scala 400:28:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114140.6]
  assign _GEN_102 = ex_pc_valid ? 1'h0 : mem_reg_sfence; // @[RocketCore.scala 400:28:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114140.6]
  assign _GEN_111 = ex_pc_valid ? _GEN_71 : mem_reg_flush_pipe; // @[RocketCore.scala 400:28:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114140.6]
  assign _GEN_112 = ex_pc_valid ? ex_slow_bypass : mem_reg_slow_bypass; // @[RocketCore.scala 400:28:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114140.6]
  assign _GEN_113 = ex_pc_valid ? ex_cause : mem_reg_cause; // @[RocketCore.scala 400:28:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114140.6]
  assign _GEN_114 = ex_pc_valid ? ex_reg_inst : mem_reg_inst; // @[RocketCore.scala 400:28:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114140.6]
  assign _GEN_116 = ex_pc_valid ? ex_reg_pc : mem_reg_pc; // @[RocketCore.scala 400:28:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114140.6]
  assign _GEN_117 = ex_pc_valid ? alu_io_out : bypass_mux_1; // @[RocketCore.scala 400:28:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114140.6]
  assign _GEN_118 = ex_pc_valid ? alu_io_cmp_out : mem_br_taken; // @[RocketCore.scala 400:28:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114140.6]
  assign _GEN_119 = ex_pc_valid ? _GEN_69 : mem_reg_rs2; // @[RocketCore.scala 400:28:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114140.6]
  assign _GEN_120 = _T_2068 ? 1'h0 : _GEN_102; // @[RocketCore.scala 398:46:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114136.4]
  assign _GEN_122 = _T_2068 ? mem_ctrl_fp : _GEN_73; // @[RocketCore.scala 398:46:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114136.4]
  assign _GEN_123 = _T_2068 ? mem_ctrl_rocc : _GEN_74; // @[RocketCore.scala 398:46:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114136.4]
  assign _GEN_124 = _T_2068 ? mem_ctrl_branch : _GEN_75; // @[RocketCore.scala 398:46:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114136.4]
  assign _GEN_125 = _T_2068 ? mem_ctrl_jal : _GEN_76; // @[RocketCore.scala 398:46:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114136.4]
  assign _GEN_126 = _T_2068 ? mem_ctrl_jalr : _GEN_77; // @[RocketCore.scala 398:46:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114136.4]
  assign _GEN_134 = _T_2068 ? mem_ctrl_mem : _GEN_85; // @[RocketCore.scala 398:46:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114136.4]
  assign _GEN_140 = _T_2068 ? mem_ctrl_wfd : _GEN_91; // @[RocketCore.scala 398:46:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114136.4]
  assign _GEN_141 = _T_2068 ? mem_ctrl_div : _GEN_92; // @[RocketCore.scala 398:46:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114136.4]
  assign _GEN_142 = _T_2068 ? mem_ctrl_wxd : _GEN_93; // @[RocketCore.scala 398:46:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114136.4]
  assign _GEN_143 = _T_2068 ? mem_ctrl_csr : _GEN_94; // @[RocketCore.scala 398:46:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114136.4]
  assign _GEN_144 = _T_2068 ? mem_ctrl_fence_i : _GEN_95; // @[RocketCore.scala 398:46:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114136.4]
  assign _GEN_148 = _T_2068 ? mem_reg_rvc : _GEN_99; // @[RocketCore.scala 398:46:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114136.4]
  assign _GEN_149 = _T_2068 ? mem_reg_load : _GEN_100; // @[RocketCore.scala 398:46:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114136.4]
  assign _GEN_150 = _T_2068 ? mem_reg_store : _GEN_101; // @[RocketCore.scala 398:46:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114136.4]
  assign _GEN_159 = _T_2068 ? mem_reg_flush_pipe : _GEN_111; // @[RocketCore.scala 398:46:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114136.4]
  assign _GEN_160 = _T_2068 ? mem_reg_slow_bypass : _GEN_112; // @[RocketCore.scala 398:46:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114136.4]
  assign _GEN_161 = _T_2068 ? mem_reg_cause : _GEN_113; // @[RocketCore.scala 398:46:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114136.4]
  assign _GEN_162 = _T_2068 ? mem_reg_inst : _GEN_114; // @[RocketCore.scala 398:46:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114136.4]
  assign _GEN_164 = _T_2068 ? mem_reg_pc : _GEN_116; // @[RocketCore.scala 398:46:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114136.4]
  assign _GEN_165 = _T_2068 ? bypass_mux_1 : _GEN_117; // @[RocketCore.scala 398:46:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114136.4]
  assign _GEN_166 = _T_2068 ? mem_br_taken : _GEN_118; // @[RocketCore.scala 398:46:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114136.4]
  assign _GEN_167 = _T_2068 ? mem_reg_rs2 : _GEN_119; // @[RocketCore.scala 398:46:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114136.4]
  assign _T_2163 = mem_reg_load & bpu_io_xcpt_ld; // @[RocketCore.scala 428:38:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114226.4]
  assign _T_2164 = mem_reg_store & bpu_io_xcpt_st; // @[RocketCore.scala 428:75:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114227.4]
  assign mem_breakpoint = _T_2163 | _T_2164; // @[RocketCore.scala 428:57:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114228.4]
  assign _T_2165 = mem_reg_load & bpu_io_debug_ld; // @[RocketCore.scala 429:44:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114229.4]
  assign _T_2166 = mem_reg_store & bpu_io_debug_st; // @[RocketCore.scala 429:82:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114230.4]
  assign mem_debug_breakpoint = _T_2165 | _T_2166; // @[RocketCore.scala 429:64:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114231.4]
  assign _T_2170 = mem_debug_breakpoint | mem_breakpoint; // @[RocketCore.scala 758:26:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114232.4]
  assign mem_new_xcpt = _T_2170 | mem_npc_misaligned; // @[RocketCore.scala 758:26:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114233.4]
  assign _T_2171 = mem_breakpoint ? 2'h3 : 2'h0; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114234.4]
  assign mem_new_cause = mem_debug_breakpoint ? 4'he : {{2'd0}, _T_2171}; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114235.4]
  assign _T_2172 = mem_reg_xcpt_interrupt | mem_reg_xcpt; // @[RocketCore.scala 436:29:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114236.4]
  assign _T_2173 = mem_reg_valid & mem_new_xcpt; // @[RocketCore.scala 437:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114237.4]
  assign mem_xcpt = _T_2172 | _T_2173; // @[RocketCore.scala 758:26:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114238.4]
  assign mem_cause = _T_2172 ? mem_reg_cause : {{28'd0}, mem_new_cause}; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114239.4]
  assign dcache_kill_mem = _T_1550 & io_dmem_replay_next; // @[RocketCore.scala 446:55:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114253.4]
  assign _T_2193 = mem_reg_valid & mem_ctrl_fp; // @[RocketCore.scala 447:36:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114254.4]
  assign fpu_kill_mem = _T_2193 & io_fpu_nack_mem; // @[RocketCore.scala 447:51:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114255.4]
  assign _T_2194 = dcache_kill_mem | mem_reg_replay; // @[RocketCore.scala 448:37:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114256.4]
  assign replay_mem = _T_2194 | fpu_kill_mem; // @[RocketCore.scala 448:55:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114257.4]
  assign _T_2195 = dcache_kill_mem | take_pc_wb; // @[RocketCore.scala 449:38:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114258.4]
  assign _T_2196 = _T_2195 | mem_reg_xcpt; // @[RocketCore.scala 449:52:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114259.4]
  assign _T_2198 = mem_reg_valid == 1'h0; // @[RocketCore.scala 449:71:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114260.4]
  assign killm_common = _T_2196 | _T_2198; // @[RocketCore.scala 449:68:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114261.4]
  assign _T_2199 = div_io_req_ready & div_io_req_valid; // @[Decoupled.scala 30:37:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114262.4]
  assign _T_2202 = killm_common & _T_2201; // @[RocketCore.scala 450:31:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114265.4]
  assign _T_2203 = killm_common | mem_xcpt; // @[RocketCore.scala 451:33:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114267.4]
  assign ctrl_killm = _T_2203 | fpu_kill_mem; // @[RocketCore.scala 451:45:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114268.4]
  assign _T_2205 = ctrl_killm == 1'h0; // @[RocketCore.scala 454:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114269.4]
  assign _T_2207 = take_pc_wb == 1'h0; // @[RocketCore.scala 455:34:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114271.4]
  assign _T_2208 = replay_mem & _T_2207; // @[RocketCore.scala 455:31:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114272.4]
  assign _T_2211 = mem_xcpt & _T_2207; // @[RocketCore.scala 456:27:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114275.4]
  assign _T_2214 = _T_2205 & mem_reg_flush_pipe; // @[RocketCore.scala 457:36:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114278.4]
  assign _T_2217 = _T_2044 & mem_ctrl_fp; // @[RocketCore.scala 461:39:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114284.6]
  assign _T_2218 = _T_2217 & mem_ctrl_wxd; // @[RocketCore.scala 461:54:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114285.6]
  assign _T_2219 = _T_2218 ? io_fpu_toint_data : mem_int_wdata; // @[RocketCore.scala 461:24:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114286.6]
  assign _GEN_171 = mem_pc_valid ? mem_ctrl_rocc : wb_ctrl_rocc; // @[RocketCore.scala 458:23:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114280.4]
  assign _GEN_182 = mem_pc_valid ? mem_ctrl_mem : wb_ctrl_mem; // @[RocketCore.scala 458:23:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114280.4]
  assign _GEN_188 = mem_pc_valid ? mem_ctrl_wfd : wb_ctrl_wfd; // @[RocketCore.scala 458:23:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114280.4]
  assign _GEN_189 = mem_pc_valid ? mem_ctrl_div : wb_ctrl_div; // @[RocketCore.scala 458:23:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114280.4]
  assign _GEN_190 = mem_pc_valid ? mem_ctrl_wxd : wb_ctrl_wxd; // @[RocketCore.scala 458:23:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114280.4]
  assign _GEN_191 = mem_pc_valid ? mem_ctrl_csr : wb_ctrl_csr; // @[RocketCore.scala 458:23:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114280.4]
  assign _GEN_192 = mem_pc_valid ? mem_ctrl_fence_i : wb_ctrl_fence_i; // @[RocketCore.scala 458:23:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114280.4]
  assign _GEN_197 = mem_pc_valid ? _T_2219 : bypass_mux_2; // @[RocketCore.scala 458:23:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114280.4]
  assign _GEN_199 = mem_pc_valid ? mem_cause : wb_reg_cause; // @[RocketCore.scala 458:23:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114280.4]
  assign _GEN_200 = mem_pc_valid ? mem_reg_inst : wb_reg_inst; // @[RocketCore.scala 458:23:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114280.4]
  assign _GEN_202 = mem_pc_valid ? mem_reg_pc : wb_reg_pc; // @[RocketCore.scala 458:23:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114280.4]
  assign _T_2244 = _T_2234 ? 3'h7 : 3'h5; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114315.4]
  assign _T_2245 = _T_2231 ? 4'hd : {{1'd0}, _T_2244}; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114316.4]
  assign _T_2246 = _T_2228 ? 4'hf : _T_2245; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114317.4]
  assign _T_2247 = _T_2225 ? 4'h4 : _T_2246; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114318.4]
  assign _T_2248 = _T_2222 ? 4'h6 : _T_2247; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114319.4]
  assign wb_cause = wb_reg_xcpt ? wb_reg_cause : {{28'd0}, _T_2248}; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114320.4]
  assign _GEN_203 = _T_2284 ? 1'h0 : _T_2513; // @[RocketCore.scala 518:44:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114366.4]
  assign _T_2300 = ~ rf_waddr; // @[RocketCore.scala 799:39:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114387.8]
  assign _GEN_216 = rf_wen ? _T_2298 : 1'h0; // @[RocketCore.scala 534:17:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114383.4]
  assign _T_2304 = ibuf_io_inst_0_bits_raw[31:20]; // @[RocketCore.scala 537:41:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114400.4]
  assign _T_2305 = wb_reg_inst[31:20]; // @[RocketCore.scala 552:32:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114416.4]
  assign _T_2307 = wb_reg_valid ? wb_ctrl_csr : 3'h0; // @[RocketCore.scala 553:23:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114418.4]
  assign _T_2324 = 32'h1 << ll_waddr; // @[RocketCore.scala 788:62:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114431.4]
  assign _T_2326 = ll_wen ? _T_2324 : 32'h0; // @[RocketCore.scala 788:49:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114432.4]
  assign _T_2327 = ~ _T_2326; // @[RocketCore.scala 780:64:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114433.4]
  assign _T_2328 = _T_2321 & _T_2327; // @[RocketCore.scala 780:62:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114434.4]
  assign _GEN_220 = ll_wen ? _T_2328 : _T_2319; // @[RocketCore.scala 792:18:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114436.4]
  assign _T_2355 = wb_set_sboard & wb_wen; // @[RocketCore.scala 573:28:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114462.4]
  assign _T_2357 = 32'h1 << wb_waddr; // @[RocketCore.scala 788:62:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114463.4]
  assign _T_2359 = _T_2355 ? _T_2357 : 32'h0; // @[RocketCore.scala 788:49:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114464.4]
  assign _T_2360 = _T_2328 | _T_2359; // @[RocketCore.scala 779:60:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114465.4]
  assign _T_2361 = ll_wen | _T_2355; // @[RocketCore.scala 791:17:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114466.4]
  assign _GEN_221 = _T_2361 ? _T_2360 : _GEN_220; // @[RocketCore.scala 792:18:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114467.4]
  assign _T_2444 = wb_dcache_miss & wb_ctrl_wfd; // @[RocketCore.scala 598:35:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114559.4]
  assign _T_2445 = _T_2444 | io_fpu_sboard_set; // @[RocketCore.scala 598:50:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114560.4]
  assign _T_2446 = _T_2445 & wb_valid; // @[RocketCore.scala 598:72:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114561.4]
  assign _T_2450 = _T_2446 ? _T_2357 : 32'h0; // @[RocketCore.scala 788:49:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114563.4]
  assign _T_2451 = _T_2442 | _T_2450; // @[RocketCore.scala 779:60:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114564.4]
  assign _GEN_222 = _T_2446 ? _T_2451 : _T_2442; // @[RocketCore.scala 792:18:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114566.4]
  assign _T_2453 = dmem_resp_replay & _T_2274; // @[RocketCore.scala 599:38:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114569.4]
  assign _T_2455 = 32'h1 << dmem_resp_waddr; // @[RocketCore.scala 788:62:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114570.4]
  assign _T_2457 = _T_2453 ? _T_2455 : 32'h0; // @[RocketCore.scala 788:49:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114571.4]
  assign _T_2458 = ~ _T_2457; // @[RocketCore.scala 780:64:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114572.4]
  assign _T_2459 = _T_2451 & _T_2458; // @[RocketCore.scala 780:62:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114573.4]
  assign _T_2460 = _T_2446 | _T_2453; // @[RocketCore.scala 791:17:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114574.4]
  assign _GEN_223 = _T_2460 ? _T_2459 : _GEN_222; // @[RocketCore.scala 792:18:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114575.4]
  assign _T_2462 = 32'h1 << io_fpu_sboard_clra; // @[RocketCore.scala 788:62:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114578.4]
  assign _T_2464 = io_fpu_sboard_clr ? _T_2462 : 32'h0; // @[RocketCore.scala 788:49:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114579.4]
  assign _T_2465 = ~ _T_2464; // @[RocketCore.scala 780:64:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114580.4]
  assign _T_2466 = _T_2459 & _T_2465; // @[RocketCore.scala 780:62:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114581.4]
  assign _T_2467 = _T_2460 | io_fpu_sboard_clr; // @[RocketCore.scala 791:17:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114582.4]
  assign _GEN_224 = _T_2467 ? _T_2466 : _GEN_223; // @[RocketCore.scala 792:18:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114583.4]
  assign _T_2489 = io_dmem_req_valid | dcache_blocked; // @[RocketCore.scala 606:62:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114606.4]
  assign _T_2490 = _T_1792 & _T_2489; // @[RocketCore.scala 606:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114607.4]
  assign _T_2530 = wb_xcpt | csr_io_eret; // @[RocketCore.scala 624:17:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114647.4]
  assign _T_2531 = replay_wb ? wb_reg_pc : mem_npc; // @[RocketCore.scala 625:8:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114648.4]
  assign _T_2532 = _T_2530 ? csr_io_evec : _T_2531; // @[RocketCore.scala 624:8:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114649.4]
  assign _T_2533 = wb_reg_valid & wb_ctrl_fence_i; // @[RocketCore.scala 627:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114651.4]
  assign _T_2535 = io_dmem_s2_nack == 1'h0; // @[RocketCore.scala 627:62:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114652.4]
  assign _T_2536 = _T_2533 & _T_2535; // @[RocketCore.scala 627:59:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114653.4]
  assign _T_2541 = ctrl_stalld == 1'h0; // @[RocketCore.scala 635:28:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114664.4]
  assign _T_2576 = _T_1712 & id_ctrl_fp; // @[RocketCore.scala 656:31:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114702.4]
  assign _T_2577 = dmem_resp_valid & _T_2274; // @[RocketCore.scala 661:43:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114708.4]
  assign _T_2578 = ex_reg_valid & ex_ctrl_mem; // @[RocketCore.scala 666:41:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114713.4]
  assign ex_dcache_tag = {ex_waddr,ex_ctrl_fp}; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114715.4]
  assign _T_2580 = mem_ctrl_fp ? io_fpu_store_data : mem_reg_rs2; // @[RocketCore.scala 675:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114722.4]
  assign _T_2581 = killm_common | mem_breakpoint; // @[RocketCore.scala 676:35:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114724.4]
  assign _T_2599 = wb_reg_inst[19:15]; // @[RocketCore.scala 681:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114749.4]
  assign _T_2600 = wb_reg_inst[24:20]; // @[RocketCore.scala 681:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114751.4]
  assign _T_2606 = csr_io_time; // @[RocketCore.scala 742:32:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114762.4]
  assign _T_2608 = csr_io_trace_0_exception == 1'h0; // @[RocketCore.scala 742:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114763.4]
  assign _T_2609 = csr_io_trace_0_valid & _T_2608; // @[RocketCore.scala 742:62:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114764.4]
  assign _T_2610 = csr_io_trace_0_iaddr; // @[RocketCore.scala 743:31:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114765.4]
  assign _T_2613 = _T_2355 == 1'h0; // @[RocketCore.scala 744:24:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114767.4]
  assign _T_2614 = rf_wen & _T_2613; // @[RocketCore.scala 744:21:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114768.4]
  assign _T_2616 = _T_2614 ? rf_waddr : 5'h0; // @[RocketCore.scala 744:13:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114769.4]
  assign _T_2629 = reset == 1'h0; // @[RocketCore.scala 741:11:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114781.4]
  assign _T_2631 = plusarg_reader_out > 32'h0; // @[RocketCore.scala 753:25:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114787.4]
  assign _T_2632 = csr_io_time < plusarg_reader_out; // @[RocketCore.scala 754:25:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114789.6]
  assign _T_2634 = _T_2632 | reset; // @[RocketCore.scala 754:12:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114791.6]
  assign _T_2636 = _T_2634 == 1'h0; // @[RocketCore.scala 754:12:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114792.6]
  assign io_imem_req_valid = take_pc;
  assign io_imem_req_bits_pc = _T_2532;
  assign io_imem_req_bits_speculative = _T_2207;
  assign io_imem_resp_ready = ibuf_io_imem_ready;
  assign io_imem_flush_icache = _T_2536;
  assign io_dmem_req_valid = _T_2578;
  assign io_dmem_req_bits_addr = alu_io_adder_out;
  assign io_dmem_req_bits_tag = ex_dcache_tag;
  assign io_dmem_req_bits_cmd = ex_ctrl_mem_cmd;
  assign io_dmem_req_bits_typ = ex_ctrl_mem_type;
  assign io_dmem_s1_kill = _T_2581;
  assign io_dmem_s1_data_data = _T_2580;
  assign io_dmem_invalidate_lr = wb_xcpt;
  assign io_fpu_inst = ibuf_io_inst_0_bits_inst_bits;
  assign io_fpu_fromint_data = ex_rs_0;
  assign io_fpu_fcsr_rm = csr_io_fcsr_rm;
  assign io_fpu_dmem_resp_val = _T_2577;
  assign io_fpu_dmem_resp_tag = dmem_resp_waddr;
  assign io_fpu_dmem_resp_data = io_dmem_resp_bits_data_word_bypass;
  assign io_fpu_valid = _T_2576;
  assign io_fpu_killx = ctrl_killx;
  assign io_fpu_killm = killm_common;
  assign ibuf_clock = clock;
  assign ibuf_io_imem_valid = io_imem_resp_valid;
  assign ibuf_io_imem_bits_btb_taken = io_imem_resp_bits_btb_taken;
  assign ibuf_io_imem_bits_btb_bridx = io_imem_resp_bits_btb_bridx;
  assign ibuf_io_imem_bits_pc = io_imem_resp_bits_pc;
  assign ibuf_io_imem_bits_data = io_imem_resp_bits_data;
  assign ibuf_io_imem_bits_xcpt_pf_inst = io_imem_resp_bits_xcpt_pf_inst;
  assign ibuf_io_imem_bits_xcpt_ae_inst = io_imem_resp_bits_xcpt_ae_inst;
  assign ibuf_io_imem_bits_replay = io_imem_resp_bits_replay;
  assign ibuf_io_inst_0_ready = _T_2541;
  assign csr_clock = clock;
  assign csr_reset = reset;
  assign csr_io_interrupts_debug = io_interrupts_debug;
  assign csr_io_interrupts_mtip = io_interrupts_mtip;
  assign csr_io_interrupts_msip = io_interrupts_msip;
  assign csr_io_interrupts_meip = io_interrupts_meip;
  assign csr_io_rw_addr = _T_2305;
  assign csr_io_rw_cmd = _T_2307;
  assign csr_io_rw_wdata = bypass_mux_2;
  assign csr_io_decode_0_csr = _T_2304;
  assign csr_io_exception = wb_xcpt;
  assign csr_io_retire = wb_valid;
  assign csr_io_cause = wb_cause;
  assign csr_io_pc = wb_reg_pc;
  assign csr_io_badaddr = bypass_mux_2;
  assign csr_io_fcsr_flags_valid = io_fpu_fcsr_flags_valid;
  assign csr_io_fcsr_flags_bits = io_fpu_fcsr_flags_bits;
  assign csr_io_inst_0 = wb_reg_inst;
  assign bpu_io_status_debug = csr_io_status_debug;
  assign bpu_io_bp_0_control_action = csr_io_bp_0_control_action;
  assign bpu_io_bp_0_control_chain = csr_io_bp_0_control_chain;
  assign bpu_io_bp_0_control_tmatch = csr_io_bp_0_control_tmatch;
  assign bpu_io_bp_0_control_x = csr_io_bp_0_control_x;
  assign bpu_io_bp_0_control_w = csr_io_bp_0_control_w;
  assign bpu_io_bp_0_control_r = csr_io_bp_0_control_r;
  assign bpu_io_bp_0_address = csr_io_bp_0_address;
  assign bpu_io_bp_1_control_action = csr_io_bp_1_control_action;
  assign bpu_io_bp_1_control_tmatch = csr_io_bp_1_control_tmatch;
  assign bpu_io_bp_1_control_x = csr_io_bp_1_control_x;
  assign bpu_io_bp_1_control_w = csr_io_bp_1_control_w;
  assign bpu_io_bp_1_control_r = csr_io_bp_1_control_r;
  assign bpu_io_bp_1_address = csr_io_bp_1_address;
  assign bpu_io_pc = ibuf_io_pc;
  assign bpu_io_ea = bypass_mux_1;
  assign alu_io_fn = ex_ctrl_alu_fn;
  assign alu_io_in2 = _T_1708;
  assign alu_io_in1 = _T_1709;
  assign div_clock = clock;
  assign div_reset = reset;
  assign div_io_req_valid = _T_1710;
  assign div_io_req_bits_fn = ex_ctrl_alu_fn;
  assign div_io_req_bits_in1 = ex_rs_0;
  assign div_io_req_bits_in2 = ex_rs_1;
  assign div_io_req_bits_tag = ex_waddr;
  assign div_io_kill = _T_2202;
  assign div_io_resp_ready = _GEN_203;
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifndef verilator
      #0.002 begin end
    `endif
  `ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{$random}};
  ex_ctrl_fp = _RAND_0[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{$random}};
  ex_ctrl_rocc = _RAND_1[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{$random}};
  ex_ctrl_branch = _RAND_2[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{$random}};
  ex_ctrl_jal = _RAND_3[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{$random}};
  ex_ctrl_jalr = _RAND_4[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{$random}};
  ex_ctrl_rxs2 = _RAND_5[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{$random}};
  ex_ctrl_sel_alu2 = _RAND_6[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{$random}};
  ex_ctrl_sel_alu1 = _RAND_7[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{$random}};
  ex_ctrl_sel_imm = _RAND_8[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {1{$random}};
  ex_ctrl_alu_fn = _RAND_9[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_10 = {1{$random}};
  ex_ctrl_mem = _RAND_10[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_11 = {1{$random}};
  ex_ctrl_mem_cmd = _RAND_11[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_12 = {1{$random}};
  ex_ctrl_mem_type = _RAND_12[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_13 = {1{$random}};
  ex_ctrl_wfd = _RAND_13[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_14 = {1{$random}};
  ex_ctrl_div = _RAND_14[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_15 = {1{$random}};
  ex_ctrl_wxd = _RAND_15[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_16 = {1{$random}};
  ex_ctrl_csr = _RAND_16[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_17 = {1{$random}};
  ex_ctrl_fence_i = _RAND_17[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_18 = {1{$random}};
  mem_ctrl_fp = _RAND_18[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_19 = {1{$random}};
  mem_ctrl_rocc = _RAND_19[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_20 = {1{$random}};
  mem_ctrl_branch = _RAND_20[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_21 = {1{$random}};
  mem_ctrl_jal = _RAND_21[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_22 = {1{$random}};
  mem_ctrl_jalr = _RAND_22[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_23 = {1{$random}};
  mem_ctrl_mem = _RAND_23[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_24 = {1{$random}};
  mem_ctrl_wfd = _RAND_24[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_25 = {1{$random}};
  mem_ctrl_div = _RAND_25[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_26 = {1{$random}};
  mem_ctrl_wxd = _RAND_26[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_27 = {1{$random}};
  mem_ctrl_csr = _RAND_27[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_28 = {1{$random}};
  mem_ctrl_fence_i = _RAND_28[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_29 = {1{$random}};
  wb_ctrl_rocc = _RAND_29[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_30 = {1{$random}};
  wb_ctrl_mem = _RAND_30[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_31 = {1{$random}};
  wb_ctrl_wfd = _RAND_31[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_32 = {1{$random}};
  wb_ctrl_div = _RAND_32[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_33 = {1{$random}};
  wb_ctrl_wxd = _RAND_33[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_34 = {1{$random}};
  wb_ctrl_csr = _RAND_34[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_35 = {1{$random}};
  wb_ctrl_fence_i = _RAND_35[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_36 = {1{$random}};
  ex_reg_xcpt_interrupt = _RAND_36[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_37 = {1{$random}};
  ex_reg_valid = _RAND_37[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_38 = {1{$random}};
  ex_reg_rvc = _RAND_38[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_39 = {1{$random}};
  ex_reg_xcpt = _RAND_39[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_40 = {1{$random}};
  ex_reg_flush_pipe = _RAND_40[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_41 = {1{$random}};
  ex_reg_load_use = _RAND_41[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_42 = {1{$random}};
  ex_cause = _RAND_42[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_43 = {1{$random}};
  ex_reg_replay = _RAND_43[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_44 = {1{$random}};
  ex_reg_pc = _RAND_44[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_45 = {1{$random}};
  ex_reg_inst = _RAND_45[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_46 = {1{$random}};
  mem_reg_xcpt_interrupt = _RAND_46[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_47 = {1{$random}};
  mem_reg_valid = _RAND_47[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_48 = {1{$random}};
  mem_reg_rvc = _RAND_48[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_49 = {1{$random}};
  mem_reg_xcpt = _RAND_49[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_50 = {1{$random}};
  mem_reg_replay = _RAND_50[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_51 = {1{$random}};
  mem_reg_flush_pipe = _RAND_51[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_52 = {1{$random}};
  mem_reg_cause = _RAND_52[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_53 = {1{$random}};
  mem_reg_slow_bypass = _RAND_53[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_54 = {1{$random}};
  mem_reg_load = _RAND_54[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_55 = {1{$random}};
  mem_reg_store = _RAND_55[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_56 = {1{$random}};
  mem_reg_sfence = _RAND_56[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_57 = {1{$random}};
  mem_reg_pc = _RAND_57[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_58 = {1{$random}};
  mem_reg_inst = _RAND_58[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_59 = {1{$random}};
  bypass_mux_1 = _RAND_59[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_60 = {1{$random}};
  mem_reg_rs2 = _RAND_60[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_61 = {1{$random}};
  mem_br_taken = _RAND_61[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_62 = {1{$random}};
  wb_reg_valid = _RAND_62[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_63 = {1{$random}};
  wb_reg_xcpt = _RAND_63[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_64 = {1{$random}};
  wb_reg_replay = _RAND_64[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_65 = {1{$random}};
  wb_reg_flush_pipe = _RAND_65[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_66 = {1{$random}};
  wb_reg_cause = _RAND_66[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_67 = {1{$random}};
  wb_reg_pc = _RAND_67[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_68 = {1{$random}};
  wb_reg_inst = _RAND_68[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_69 = {1{$random}};
  bypass_mux_2 = _RAND_69[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_70 = {1{$random}};
  id_reg_fence = _RAND_70[0:0];
  `endif // RANDOMIZE_REG_INIT
  _RAND_71 = {1{$random}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 31; initvar = initvar+1)
    _T_1319[initvar] = _RAND_71[31:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_72 = {1{$random}};
  _RAND_73 = {1{$random}};
  `ifdef RANDOMIZE_REG_INIT
  _RAND_74 = {1{$random}};
  ex_reg_rs_bypass_0 = _RAND_74[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_75 = {1{$random}};
  ex_reg_rs_bypass_1 = _RAND_75[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_76 = {1{$random}};
  ex_reg_rs_lsb_0 = _RAND_76[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_77 = {1{$random}};
  ex_reg_rs_lsb_1 = _RAND_77[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_78 = {1{$random}};
  ex_reg_rs_msb_0 = _RAND_78[29:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_79 = {1{$random}};
  ex_reg_rs_msb_1 = _RAND_79[29:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_80 = {1{$random}};
  _T_2201 = _RAND_80[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_81 = {1{$random}};
  _T_2319 = _RAND_81[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_82 = {1{$random}};
  _T_2442 = _RAND_82[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_83 = {1{$random}};
  dcache_blocked = _RAND_83[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_84 = {1{$random}};
  _T_2619 = _RAND_84[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_85 = {1{$random}};
  _T_2621 = _RAND_85[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_86 = {1{$random}};
  _T_2624 = _RAND_86[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_87 = {1{$random}};
  _T_2626 = _RAND_87[31:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if (_T_1712) begin
      ex_ctrl_fp <= id_ctrl_fp;
    end
    if (_T_1712) begin
      ex_ctrl_rocc <= 1'h0;
    end
    if (_T_1712) begin
      ex_ctrl_branch <= id_ctrl_branch;
    end
    if (_T_1712) begin
      ex_ctrl_jal <= id_ctrl_jal;
    end
    if (_T_1712) begin
      ex_ctrl_jalr <= id_ctrl_jalr;
    end
    if (_T_1712) begin
      ex_ctrl_rxs2 <= id_ctrl_rxs2;
    end
    if (_T_1712) begin
      if (id_xcpt) begin
        ex_ctrl_sel_alu2 <= 2'h0;
      end else begin
        ex_ctrl_sel_alu2 <= id_ctrl_sel_alu2;
      end
    end
    if (_T_1712) begin
      if (id_xcpt) begin
        if (_T_1740) begin
          ex_ctrl_sel_alu1 <= 2'h2;
        end else begin
          ex_ctrl_sel_alu1 <= 2'h1;
        end
      end else begin
        ex_ctrl_sel_alu1 <= id_ctrl_sel_alu1;
      end
    end
    if (_T_1712) begin
      ex_ctrl_sel_imm <= id_ctrl_sel_imm;
    end
    if (_T_1712) begin
      if (id_xcpt) begin
        ex_ctrl_alu_fn <= 4'h0;
      end else begin
        ex_ctrl_alu_fn <= id_ctrl_alu_fn;
      end
    end
    if (_T_1712) begin
      ex_ctrl_mem <= id_ctrl_mem;
    end
    if (_T_1712) begin
      ex_ctrl_mem_cmd <= id_ctrl_mem_cmd;
    end
    if (_T_1712) begin
      if (id_sfence) begin
        ex_ctrl_mem_type <= {{1'd0}, _T_1748};
      end else begin
        ex_ctrl_mem_type <= id_ctrl_mem_type;
      end
    end
    if (_T_1712) begin
      ex_ctrl_wfd <= id_ctrl_wfd;
    end
    if (_T_1712) begin
      ex_ctrl_div <= id_ctrl_div;
    end
    if (_T_1712) begin
      ex_ctrl_wxd <= id_ctrl_wxd;
    end
    if (_T_1712) begin
      if (id_csr_ren) begin
        ex_ctrl_csr <= 3'h5;
      end else begin
        ex_ctrl_csr <= id_ctrl_csr;
      end
    end
    if (_T_1712) begin
      ex_ctrl_fence_i <= id_ctrl_fence_i;
    end
    if (!(_T_2068)) begin
      if (ex_pc_valid) begin
        mem_ctrl_fp <= ex_ctrl_fp;
      end
    end
    if (!(_T_2068)) begin
      if (ex_pc_valid) begin
        mem_ctrl_rocc <= ex_ctrl_rocc;
      end
    end
    if (!(_T_2068)) begin
      if (ex_pc_valid) begin
        mem_ctrl_branch <= ex_ctrl_branch;
      end
    end
    if (!(_T_2068)) begin
      if (ex_pc_valid) begin
        mem_ctrl_jal <= ex_ctrl_jal;
      end
    end
    if (!(_T_2068)) begin
      if (ex_pc_valid) begin
        mem_ctrl_jalr <= ex_ctrl_jalr;
      end
    end
    if (!(_T_2068)) begin
      if (ex_pc_valid) begin
        mem_ctrl_mem <= ex_ctrl_mem;
      end
    end
    if (!(_T_2068)) begin
      if (ex_pc_valid) begin
        mem_ctrl_wfd <= ex_ctrl_wfd;
      end
    end
    if (!(_T_2068)) begin
      if (ex_pc_valid) begin
        mem_ctrl_div <= ex_ctrl_div;
      end
    end
    if (!(_T_2068)) begin
      if (ex_pc_valid) begin
        mem_ctrl_wxd <= ex_ctrl_wxd;
      end
    end
    if (!(_T_2068)) begin
      if (ex_pc_valid) begin
        mem_ctrl_csr <= ex_ctrl_csr;
      end
    end
    if (!(_T_2068)) begin
      if (ex_pc_valid) begin
        if (_T_2160) begin
          mem_ctrl_fence_i <= 1'h1;
        end else begin
          mem_ctrl_fence_i <= ex_ctrl_fence_i;
        end
      end
    end
    if (mem_pc_valid) begin
      wb_ctrl_rocc <= mem_ctrl_rocc;
    end
    if (mem_pc_valid) begin
      wb_ctrl_mem <= mem_ctrl_mem;
    end
    if (mem_pc_valid) begin
      wb_ctrl_wfd <= mem_ctrl_wfd;
    end
    if (mem_pc_valid) begin
      wb_ctrl_div <= mem_ctrl_div;
    end
    if (mem_pc_valid) begin
      wb_ctrl_wxd <= mem_ctrl_wxd;
    end
    if (mem_pc_valid) begin
      wb_ctrl_csr <= mem_ctrl_csr;
    end
    if (mem_pc_valid) begin
      wb_ctrl_fence_i <= mem_ctrl_fence_i;
    end
    ex_reg_xcpt_interrupt <= _T_1723;
    ex_reg_valid <= _T_1712;
    if (_T_1712) begin
      ex_reg_rvc <= 1'h0;
    end
    ex_reg_xcpt <= _T_1719;
    if (_T_1712) begin
      ex_reg_flush_pipe <= _T_1743;
    end
    if (_T_1712) begin
      ex_reg_load_use <= id_load_use;
    end
    if (_T_1787) begin
      if (csr_io_interrupt) begin
        ex_cause <= csr_io_interrupt_cause;
      end else begin
        ex_cause <= {{28'd0}, _T_1531};
      end
    end
    ex_reg_replay <= _T_1716;
    if (_T_1787) begin
      ex_reg_pc <= ibuf_io_pc;
    end
    if (_T_1787) begin
      ex_reg_inst <= ibuf_io_inst_0_bits_inst_bits;
    end
    mem_reg_xcpt_interrupt <= _T_2067;
    mem_reg_valid <= _T_2058;
    if (!(_T_2068)) begin
      if (ex_pc_valid) begin
        mem_reg_rvc <= ex_reg_rvc;
      end
    end
    mem_reg_xcpt <= _T_2064;
    mem_reg_replay <= _T_2061;
    if (!(_T_2068)) begin
      if (ex_pc_valid) begin
        if (_T_2160) begin
          mem_reg_flush_pipe <= 1'h1;
        end else begin
          mem_reg_flush_pipe <= ex_reg_flush_pipe;
        end
      end
    end
    if (!(_T_2068)) begin
      if (ex_pc_valid) begin
        mem_reg_cause <= ex_cause;
      end
    end
    if (!(_T_2068)) begin
      if (ex_pc_valid) begin
        mem_reg_slow_bypass <= ex_slow_bypass;
      end
    end
    if (!(_T_2068)) begin
      if (ex_pc_valid) begin
        mem_reg_load <= _T_2105;
      end
    end
    if (!(_T_2068)) begin
      if (ex_pc_valid) begin
        mem_reg_store <= _T_2141;
      end
    end
    if (_T_2068) begin
      mem_reg_sfence <= 1'h0;
    end else begin
      if (ex_pc_valid) begin
        mem_reg_sfence <= 1'h0;
      end
    end
    if (!(_T_2068)) begin
      if (ex_pc_valid) begin
        mem_reg_pc <= ex_reg_pc;
      end
    end
    if (!(_T_2068)) begin
      if (ex_pc_valid) begin
        mem_reg_inst <= ex_reg_inst;
      end
    end
    if (!(_T_2068)) begin
      if (ex_pc_valid) begin
        bypass_mux_1 <= alu_io_out;
      end
    end
    if (!(_T_2068)) begin
      if (ex_pc_valid) begin
        if (_T_2144) begin
          if (_T_2150) begin
            mem_reg_rs2 <= _T_2153;
          end else begin
            if (_T_2155) begin
              mem_reg_rs2 <= _T_2157;
            end else begin
              if (ex_reg_rs_bypass_1) begin
                if (_T_1601) begin
                  mem_reg_rs2 <= io_dmem_resp_bits_data_word_bypass;
                end else begin
                  if (_T_1598) begin
                    mem_reg_rs2 <= bypass_mux_2;
                  end else begin
                    if (_T_1595) begin
                      mem_reg_rs2 <= bypass_mux_1;
                    end else begin
                      mem_reg_rs2 <= 32'h0;
                    end
                  end
                end
              end else begin
                mem_reg_rs2 <= _T_1603;
              end
            end
          end
        end
      end
    end
    if (!(_T_2068)) begin
      if (ex_pc_valid) begin
        mem_br_taken <= alu_io_cmp_out;
      end
    end
    wb_reg_valid <= _T_2205;
    wb_reg_xcpt <= _T_2211;
    wb_reg_replay <= _T_2208;
    wb_reg_flush_pipe <= _T_2214;
    if (mem_pc_valid) begin
      if (_T_2172) begin
        wb_reg_cause <= mem_reg_cause;
      end else begin
        wb_reg_cause <= {{28'd0}, mem_new_cause};
      end
    end
    if (mem_pc_valid) begin
      wb_reg_pc <= mem_reg_pc;
    end
    if (mem_pc_valid) begin
      wb_reg_inst <= mem_reg_inst;
    end
    if (mem_pc_valid) begin
      if (_T_2218) begin
        bypass_mux_2 <= io_fpu_toint_data;
      end else begin
        bypass_mux_2 <= mem_int_wdata;
      end
    end
    if (reset) begin
      id_reg_fence <= 1'h0;
    end else begin
      if (_T_1712) begin
        if (id_fence_next) begin
          id_reg_fence <= 1'h1;
        end else begin
          if (_T_1495) begin
            id_reg_fence <= 1'h0;
          end
        end
      end else begin
        if (_T_1495) begin
          id_reg_fence <= 1'h0;
        end
      end
    end
    if(_T_1319__T_2301_en & _T_1319__T_2301_mask) begin
      _T_1319[_T_1319__T_2301_addr] <= _T_1319__T_2301_data; // @[RocketCore.scala 798:23:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@113465.4]
    end
    if (_T_1712) begin
      if (id_illegal_insn) begin
        ex_reg_rs_bypass_0 <= 1'h0;
      end else begin
        ex_reg_rs_bypass_0 <= _T_1751;
      end
    end
    if (_T_1712) begin
      ex_reg_rs_bypass_1 <= _T_1766;
    end
    if (_T_1712) begin
      if (id_illegal_insn) begin
        ex_reg_rs_lsb_0 <= _T_1782;
      end else begin
        if (_T_1761) begin
          ex_reg_rs_lsb_0 <= _T_1762;
        end else begin
          if (id_bypass_src_0_0) begin
            ex_reg_rs_lsb_0 <= 2'h0;
          end else begin
            if (id_bypass_src_0_1) begin
              ex_reg_rs_lsb_0 <= 2'h1;
            end else begin
              if (id_bypass_src_0_2) begin
                ex_reg_rs_lsb_0 <= 2'h2;
              end else begin
                ex_reg_rs_lsb_0 <= 2'h3;
              end
            end
          end
        end
      end
    end
    if (_T_1712) begin
      if (_T_1776) begin
        ex_reg_rs_lsb_1 <= _T_1777;
      end else begin
        if (id_bypass_src_1_0) begin
          ex_reg_rs_lsb_1 <= 2'h0;
        end else begin
          if (id_bypass_src_1_1) begin
            ex_reg_rs_lsb_1 <= 2'h1;
          end else begin
            if (id_bypass_src_1_2) begin
              ex_reg_rs_lsb_1 <= 2'h2;
            end else begin
              ex_reg_rs_lsb_1 <= 2'h3;
            end
          end
        end
      end
    end
    if (_T_1712) begin
      if (id_illegal_insn) begin
        ex_reg_rs_msb_0 <= _T_1783;
      end else begin
        if (_T_1761) begin
          ex_reg_rs_msb_0 <= _T_1763;
        end
      end
    end
    if (_T_1712) begin
      if (_T_1776) begin
        ex_reg_rs_msb_1 <= _T_1778;
      end
    end
    _T_2201 <= _T_2199;
    if (reset) begin
      _T_2319 <= 32'h0;
    end else begin
      if (_T_2361) begin
        _T_2319 <= _T_2360;
      end else begin
        if (ll_wen) begin
          _T_2319 <= _T_2328;
        end
      end
    end
    if (reset) begin
      _T_2442 <= 32'h0;
    end else begin
      if (_T_2467) begin
        _T_2442 <= _T_2466;
      end else begin
        if (_T_2460) begin
          _T_2442 <= _T_2459;
        end else begin
          if (_T_2446) begin
            _T_2442 <= _T_2451;
          end
        end
      end
    end
    dcache_blocked <= _T_2490;
    if (ex_reg_rs_bypass_0) begin
      if (_T_1591) begin
        _T_2619 <= io_dmem_resp_bits_data_word_bypass;
      end else begin
        if (_T_1588) begin
          _T_2619 <= bypass_mux_2;
        end else begin
          if (_T_1585) begin
            _T_2619 <= bypass_mux_1;
          end else begin
            _T_2619 <= 32'h0;
          end
        end
      end
    end else begin
      _T_2619 <= _T_1593;
    end
    _T_2621 <= _T_2619;
    if (ex_reg_rs_bypass_1) begin
      if (_T_1601) begin
        _T_2624 <= io_dmem_resp_bits_data_word_bypass;
      end else begin
        if (_T_1598) begin
          _T_2624 <= bypass_mux_2;
        end else begin
          if (_T_1595) begin
            _T_2624 <= bypass_mux_1;
          end else begin
            _T_2624 <= 32'h0;
          end
        end
      end
    end else begin
      _T_2624 <= _T_1603;
    end
    _T_2626 <= _T_2624;
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_2629) begin
          $fwrite(32'h80000002,"C%d: %d [%d] pc=[%h] W[r%d=%h][%d] R[r%d=%h] R[r%d=%h] inst=[%h] DASM(%h)\n",1'h0,_T_2606,_T_2609,_T_2610,_T_2616,rf_wdata,rf_wen,_T_2599,_T_2621,_T_2600,_T_2626,csr_io_trace_0_insn,csr_io_trace_0_insn); // @[RocketCore.scala 741:11:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114783.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_2631 & _T_2636) begin
          $fwrite(32'h80000002,"Assertion failed: Maximum Core Cycles reached.\n    at RocketCore.scala:754 assert (csr.io.time < max_core_cycles, \"Maximum Core Cycles reached.\")\n"); // @[RocketCore.scala 754:12:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114794.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_2631 & _T_2636) begin
          $fatal; // @[RocketCore.scala 754:12:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@114795.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
