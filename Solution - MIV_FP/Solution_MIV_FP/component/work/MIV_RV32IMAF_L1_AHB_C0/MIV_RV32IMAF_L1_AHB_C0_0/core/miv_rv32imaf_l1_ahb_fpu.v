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
module MIV_RV32IMAF_L1_AHB_C0_MIV_RV32IMAF_L1_AHB_C0_0_MIV_RV32IMAF_L1_AHB_FPU( // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109648.2]
  input         clock, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109649.4]
  input         reset, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109650.4]
  input  [31:0] io_inst, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109651.4]
  input  [31:0] io_fromint_data, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109651.4]
  input  [2:0]  io_fcsr_rm, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109651.4]
  output        io_fcsr_flags_valid, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109651.4]
  output [4:0]  io_fcsr_flags_bits, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109651.4]
  output [31:0] io_store_data, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109651.4]
  output [31:0] io_toint_data, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109651.4]
  input         io_dmem_resp_val, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109651.4]
  input  [4:0]  io_dmem_resp_tag, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109651.4]
  input  [31:0] io_dmem_resp_data, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109651.4]
  input         io_valid, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109651.4]
  output        io_fcsr_rdy, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109651.4]
  output        io_nack_mem, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109651.4]
  output        io_illegal_rm, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109651.4]
  input         io_killx, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109651.4]
  input         io_killm, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109651.4]
  output        io_dec_wen, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109651.4]
  output        io_dec_ren1, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109651.4]
  output        io_dec_ren2, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109651.4]
  output        io_dec_ren3, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109651.4]
  output        io_sboard_set, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109651.4]
  output        io_sboard_clr, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109651.4]
  output [4:0]  io_sboard_clra // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109651.4]
);
  
  reg  ex_reg_valid; // @[FPU.scala 647:25:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109656.4]
  reg [31:0] _RAND_0;
  reg [31:0] ex_reg_inst; // @[Reg.scala 11:16:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109659.4]
  reg [31:0] _RAND_1;
  reg  mem_reg_valid; // @[FPU.scala 653:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109668.4]
  reg [31:0] _RAND_2;
  reg [31:0] mem_reg_inst; // @[Reg.scala 11:16:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109678.4]
  reg [31:0] _RAND_3;
  reg  wb_reg_valid; // @[FPU.scala 661:25:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109685.4]
  reg [31:0] _RAND_4;
  wire [31:0] fp_decoder_io_inst; // @[FPU.scala 663:26:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109687.4]
  wire  fp_decoder_io_sigs_wen; // @[FPU.scala 663:26:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109687.4]
  wire  fp_decoder_io_sigs_ren1; // @[FPU.scala 663:26:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109687.4]
  wire  fp_decoder_io_sigs_ren2; // @[FPU.scala 663:26:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109687.4]
  wire  fp_decoder_io_sigs_ren3; // @[FPU.scala 663:26:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109687.4]
  wire  fp_decoder_io_sigs_swap12; // @[FPU.scala 663:26:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109687.4]
  wire  fp_decoder_io_sigs_swap23; // @[FPU.scala 663:26:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109687.4]
  wire  fp_decoder_io_sigs_singleOut; // @[FPU.scala 663:26:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109687.4]
  wire  fp_decoder_io_sigs_fromint; // @[FPU.scala 663:26:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109687.4]
  wire  fp_decoder_io_sigs_toint; // @[FPU.scala 663:26:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109687.4]
  wire  fp_decoder_io_sigs_fastpipe; // @[FPU.scala 663:26:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109687.4]
  wire  fp_decoder_io_sigs_fma; // @[FPU.scala 663:26:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109687.4]
  wire  fp_decoder_io_sigs_div; // @[FPU.scala 663:26:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109687.4]
  wire  fp_decoder_io_sigs_sqrt; // @[FPU.scala 663:26:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109687.4]
  wire  fp_decoder_io_sigs_wflags; // @[FPU.scala 663:26:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109687.4]
  reg  ex_ctrl_ren2; // @[Reg.scala 11:16:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109697.4]
  reg [31:0] _RAND_5;
  reg  ex_ctrl_ren3; // @[Reg.scala 11:16:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109697.4]
  reg [31:0] _RAND_6;
  reg  ex_ctrl_swap23; // @[Reg.scala 11:16:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109697.4]
  reg [31:0] _RAND_7;
  reg  ex_ctrl_singleOut; // @[Reg.scala 11:16:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109697.4]
  reg [31:0] _RAND_8;
  reg  ex_ctrl_fromint; // @[Reg.scala 11:16:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109697.4]
  reg [31:0] _RAND_9;
  reg  ex_ctrl_toint; // @[Reg.scala 11:16:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109697.4]
  reg [31:0] _RAND_10;
  reg  ex_ctrl_fastpipe; // @[Reg.scala 11:16:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109697.4]
  reg [31:0] _RAND_11;
  reg  ex_ctrl_fma; // @[Reg.scala 11:16:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109697.4]
  reg [31:0] _RAND_12;
  reg  ex_ctrl_div; // @[Reg.scala 11:16:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109697.4]
  reg [31:0] _RAND_13;
  reg  ex_ctrl_sqrt; // @[Reg.scala 11:16:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109697.4]
  reg [31:0] _RAND_14;
  reg  ex_ctrl_wflags; // @[Reg.scala 11:16:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109697.4]
  reg [31:0] _RAND_15;
  reg  mem_ctrl_singleOut; // @[Reg.scala 11:16:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109717.4]
  reg [31:0] _RAND_16;
  reg  mem_ctrl_fromint; // @[Reg.scala 11:16:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109717.4]
  reg [31:0] _RAND_17;
  reg  mem_ctrl_toint; // @[Reg.scala 11:16:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109717.4]
  reg [31:0] _RAND_18;
  reg  mem_ctrl_fastpipe; // @[Reg.scala 11:16:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109717.4]
  reg [31:0] _RAND_19;
  reg  mem_ctrl_fma; // @[Reg.scala 11:16:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109717.4]
  reg [31:0] _RAND_20;
  reg  mem_ctrl_div; // @[Reg.scala 11:16:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109717.4]
  reg [31:0] _RAND_21;
  reg  mem_ctrl_sqrt; // @[Reg.scala 11:16:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109717.4]
  reg [31:0] _RAND_22;
  reg  mem_ctrl_wflags; // @[Reg.scala 11:16:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109717.4]
  reg [31:0] _RAND_23;
  reg  wb_ctrl_toint; // @[Reg.scala 11:16:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109736.4]
  reg [31:0] _RAND_24;
  reg  load_wb; // @[FPU.scala 677:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109755.4]
  reg [31:0] _RAND_25;
  reg [31:0] load_wb_data; // @[Reg.scala 11:16:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109762.4]
  reg [31:0] _RAND_26;
  reg [4:0] load_wb_tag; // @[Reg.scala 11:16:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109766.4]
  reg [31:0] _RAND_27;
  reg [32:0] regfile [0:31] /* synthesis syn_ramstyle = "registers" */; // @[FPU.scala 683:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109770.4]
  reg [63:0] _RAND_28;
  wire [32:0] regfile_ex_rs_0_data; // @[FPU.scala 683:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109770.4]
  wire [4:0] regfile_ex_rs_0_addr; // @[FPU.scala 683:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109770.4]
  wire [32:0] regfile_ex_rs_1_data; // @[FPU.scala 683:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109770.4]
  wire [4:0] regfile_ex_rs_1_addr; // @[FPU.scala 683:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109770.4]
  wire [32:0] regfile_ex_rs_2_data; // @[FPU.scala 683:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109770.4]
  wire [4:0] regfile_ex_rs_2_addr; // @[FPU.scala 683:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109770.4]
  wire [32:0] regfile__T_256_data; // @[FPU.scala 683:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109770.4]
  wire [4:0] regfile__T_256_addr; // @[FPU.scala 683:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109770.4]
  wire  regfile__T_256_mask; // @[FPU.scala 683:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109770.4]
  wire  regfile__T_256_en; // @[FPU.scala 683:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109770.4]
  wire [32:0] regfile__T_476_data; // @[FPU.scala 683:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109770.4]
  wire [4:0] regfile__T_476_addr; // @[FPU.scala 683:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109770.4]
  wire  regfile__T_476_mask; // @[FPU.scala 683:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109770.4]
  wire  regfile__T_476_en; // @[FPU.scala 683:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109770.4]
  reg [4:0] ex_ra_0; // @[FPU.scala 692:31:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109931.4]
  reg [31:0] _RAND_29;
  reg [4:0] ex_ra_1; // @[FPU.scala 692:31:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109932.4]
  reg [31:0] _RAND_30;
  reg [4:0] ex_ra_2; // @[FPU.scala 692:31:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109933.4]
  reg [31:0] _RAND_31;
  wire  sfma_clock; // @[FPU.scala 708:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109981.4]
  wire  sfma_reset; // @[FPU.scala 708:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109981.4]
  wire  sfma_io_in_valid; // @[FPU.scala 708:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109981.4]
  wire  sfma_io_in_bits_ren3; // @[FPU.scala 708:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109981.4]
  wire  sfma_io_in_bits_swap23; // @[FPU.scala 708:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109981.4]
  wire [2:0] sfma_io_in_bits_rm; // @[FPU.scala 708:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109981.4]
  wire [1:0] sfma_io_in_bits_fmaCmd; // @[FPU.scala 708:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109981.4]
  wire [32:0] sfma_io_in_bits_in1; // @[FPU.scala 708:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109981.4]
  wire [32:0] sfma_io_in_bits_in2; // @[FPU.scala 708:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109981.4]
  wire [32:0] sfma_io_in_bits_in3; // @[FPU.scala 708:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109981.4]
  wire [32:0] sfma_io_out_bits_data; // @[FPU.scala 708:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109981.4]
  wire [4:0] sfma_io_out_bits_exc; // @[FPU.scala 708:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109981.4]
  wire  fpiu_clock; // @[FPU.scala 712:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110015.4]
  wire  fpiu_io_in_valid; // @[FPU.scala 712:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110015.4]
  wire  fpiu_io_in_bits_ren2; // @[FPU.scala 712:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110015.4]
  wire  fpiu_io_in_bits_wflags; // @[FPU.scala 712:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110015.4]
  wire [2:0] fpiu_io_in_bits_rm; // @[FPU.scala 712:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110015.4]
  wire [1:0] fpiu_io_in_bits_typ; // @[FPU.scala 712:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110015.4]
  wire [32:0] fpiu_io_in_bits_in1; // @[FPU.scala 712:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110015.4]
  wire [32:0] fpiu_io_in_bits_in2; // @[FPU.scala 712:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110015.4]
  wire [2:0] fpiu_io_out_bits_in_rm; // @[FPU.scala 712:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110015.4]
  wire [32:0] fpiu_io_out_bits_in_in1; // @[FPU.scala 712:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110015.4]
  wire [32:0] fpiu_io_out_bits_in_in2; // @[FPU.scala 712:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110015.4]
  wire  fpiu_io_out_bits_lt; // @[FPU.scala 712:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110015.4]
  wire [31:0] fpiu_io_out_bits_store; // @[FPU.scala 712:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110015.4]
  wire [31:0] fpiu_io_out_bits_toint; // @[FPU.scala 712:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110015.4]
  wire [4:0] fpiu_io_out_bits_exc; // @[FPU.scala 712:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110015.4]
  wire  ifpu_clock; // @[FPU.scala 722:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110060.4]
  wire  ifpu_reset; // @[FPU.scala 722:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110060.4]
  wire  ifpu_io_in_valid; // @[FPU.scala 722:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110060.4]
  wire  ifpu_io_in_bits_wflags; // @[FPU.scala 722:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110060.4]
  wire [2:0] ifpu_io_in_bits_rm; // @[FPU.scala 722:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110060.4]
  wire [1:0] ifpu_io_in_bits_typ; // @[FPU.scala 722:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110060.4]
  wire [32:0] ifpu_io_in_bits_in1; // @[FPU.scala 722:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110060.4]
  wire [32:0] ifpu_io_out_bits_data; // @[FPU.scala 722:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110060.4]
  wire [4:0] ifpu_io_out_bits_exc; // @[FPU.scala 722:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110060.4]
  wire  fpmu_clock; // @[FPU.scala 727:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110069.4]
  wire  fpmu_reset; // @[FPU.scala 727:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110069.4]
  wire  fpmu_io_in_valid; // @[FPU.scala 727:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110069.4]
  wire  fpmu_io_in_bits_wflags; // @[FPU.scala 727:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110069.4]
  wire [2:0] fpmu_io_in_bits_rm; // @[FPU.scala 727:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110069.4]
  wire [32:0] fpmu_io_in_bits_in1; // @[FPU.scala 727:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110069.4]
  wire [32:0] fpmu_io_in_bits_in2; // @[FPU.scala 727:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110069.4]
  wire [32:0] fpmu_io_out_bits_data; // @[FPU.scala 727:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110069.4]
  wire [4:0] fpmu_io_out_bits_exc; // @[FPU.scala 727:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110069.4]
  wire  fpmu_io_lt; // @[FPU.scala 727:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110069.4]
  reg [4:0] divSqrt_waddr; // @[FPU.scala 734:26:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110083.4]
  reg [31:0] _RAND_32;
  reg [1:0] wen; // @[FPU.scala 767:16:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110096.4]
  reg [31:0] _RAND_33;
  reg [4:0] wbInfo_0_rd; // @[FPU.scala 768:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110097.4]
  reg [31:0] _RAND_34;
  reg  wbInfo_0_cp; // @[FPU.scala 768:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110097.4]
  reg [31:0] _RAND_35;
  reg [1:0] wbInfo_0_pipeid; // @[FPU.scala 768:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110097.4]
  reg [31:0] _RAND_36;
  reg [4:0] wbInfo_1_rd; // @[FPU.scala 768:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110097.4]
  reg [31:0] _RAND_37;
  reg  wbInfo_1_cp; // @[FPU.scala 768:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110097.4]
  reg [31:0] _RAND_38;
  reg [1:0] wbInfo_1_pipeid; // @[FPU.scala 768:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110097.4]
  reg [31:0] _RAND_39;
  reg  write_port_busy; // @[Reg.scala 11:16:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110119.4]
  reg [31:0] _RAND_40;
  reg [4:0] wb_toint_exc; // @[Reg.scala 11:16:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110209.4]
  reg [31:0] _RAND_41;
  reg  _T_518; // @[FPU.scala 820:55:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110245.4]
  reg [31:0] _RAND_42;
  reg  _T_541; // @[FPU.scala 827:29:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110266.4]
  reg [31:0] _RAND_43;
  wire  DivSqrtRecFN_small_clock; // @[FPU.scala 831:27:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110268.4]
  wire  DivSqrtRecFN_small_reset; // @[FPU.scala 831:27:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110268.4]
  wire  DivSqrtRecFN_small_io_inReady; // @[FPU.scala 831:27:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110268.4]
  wire  DivSqrtRecFN_small_io_inValid; // @[FPU.scala 831:27:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110268.4]
  wire  DivSqrtRecFN_small_io_sqrtOp; // @[FPU.scala 831:27:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110268.4]
  wire [32:0] DivSqrtRecFN_small_io_a; // @[FPU.scala 831:27:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110268.4]
  wire [32:0] DivSqrtRecFN_small_io_b; // @[FPU.scala 831:27:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110268.4]
  wire [2:0] DivSqrtRecFN_small_io_roundingMode; // @[FPU.scala 831:27:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110268.4]
  wire  DivSqrtRecFN_small_io_outValid_div; // @[FPU.scala 831:27:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110268.4]
  wire  DivSqrtRecFN_small_io_outValid_sqrt; // @[FPU.scala 831:27:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110268.4]
  wire [32:0] DivSqrtRecFN_small_io_out; // @[FPU.scala 831:27:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110268.4]
  wire [4:0] DivSqrtRecFN_small_io_exceptionFlags; // @[FPU.scala 831:27:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110268.4]
  wire [31:0] _GEN_0; // @[Reg.scala 12:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109660.4]
  wire  killm; // @[FPU.scala 654:25:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109669.4]
  wire  _T_48; // @[FPU.scala 658:41:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109672.4]
  wire  killx; // @[FPU.scala 658:24:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109673.4]
  wire  _T_50; // @[FPU.scala 659:36:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109674.4]
  wire  _T_51; // @[FPU.scala 659:33:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109675.4]
  wire [31:0] _GEN_1; // @[Reg.scala 12:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109679.4]
  wire  _T_55; // @[FPU.scala 661:49:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109682.4]
  wire  _T_57; // @[FPU.scala 661:45:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109684.4]
  wire  _GEN_2; // @[Reg.scala 12:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109698.4]
  wire  _GEN_3; // @[Reg.scala 12:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109698.4]
  wire  _GEN_4; // @[Reg.scala 12:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109698.4]
  wire  _GEN_5; // @[Reg.scala 12:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109698.4]
  wire  _GEN_6; // @[Reg.scala 12:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109698.4]
  wire  _GEN_7; // @[Reg.scala 12:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109698.4]
  wire  _GEN_8; // @[Reg.scala 12:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109698.4]
  wire  _GEN_9; // @[Reg.scala 12:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109698.4]
  wire  _GEN_11; // @[Reg.scala 12:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109698.4]
  wire  _GEN_13; // @[Reg.scala 12:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109698.4]
  wire  _GEN_14; // @[Reg.scala 12:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109698.4]
  wire  _GEN_18; // @[Reg.scala 12:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109718.4]
  wire  _GEN_19; // @[Reg.scala 12:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109718.4]
  wire  _GEN_20; // @[Reg.scala 12:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109718.4]
  wire  _GEN_21; // @[Reg.scala 12:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109718.4]
  wire  _GEN_22; // @[Reg.scala 12:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109718.4]
  wire  _GEN_23; // @[Reg.scala 12:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109718.4]
  wire  _GEN_24; // @[Reg.scala 12:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109718.4]
  wire  _GEN_25; // @[Reg.scala 12:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109718.4]
  wire  _GEN_39; // @[Reg.scala 12:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109737.4]
  wire [31:0] _GEN_51; // @[Reg.scala 12:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109763.4]
  wire [4:0] _GEN_52; // @[Reg.scala 12:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109767.4]
  wire  _T_76; // @[rawFloatFromFN.scala 46:22:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109773.6]
  wire [7:0] _T_77; // @[rawFloatFromFN.scala 47:23:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109774.6]
  wire [22:0] _T_78; // @[rawFloatFromFN.scala 48:25:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109775.6]
  wire  _T_80; // @[rawFloatFromFN.scala 50:34:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109776.6]
  wire  _T_82; // @[rawFloatFromFN.scala 51:38:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109777.6]
  wire [15:0] _T_83; // @[Bitwise.scala 109:18:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109778.6]
  wire [7:0] _T_88; // @[Bitwise.scala 103:21:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109781.6]
  wire [15:0] _T_89; // @[Bitwise.scala 103:31:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109782.6]
  wire [7:0] _T_90; // @[Bitwise.scala 103:46:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109783.6]
  wire [15:0] _GEN_153; // @[Bitwise.scala 103:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109784.6]
  wire [15:0] _T_91; // @[Bitwise.scala 103:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109784.6]
  wire [15:0] _T_93; // @[Bitwise.scala 103:75:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109786.6]
  wire [15:0] _T_94; // @[Bitwise.scala 103:39:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109787.6]
  wire [11:0] _T_98; // @[Bitwise.scala 103:21:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109791.6]
  wire [15:0] _GEN_154; // @[Bitwise.scala 103:31:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109792.6]
  wire [15:0] _T_99; // @[Bitwise.scala 103:31:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109792.6]
  wire [11:0] _T_100; // @[Bitwise.scala 103:46:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109793.6]
  wire [15:0] _GEN_155; // @[Bitwise.scala 103:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109794.6]
  wire [15:0] _T_101; // @[Bitwise.scala 103:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109794.6]
  wire [15:0] _T_103; // @[Bitwise.scala 103:75:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109796.6]
  wire [15:0] _T_104; // @[Bitwise.scala 103:39:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109797.6]
  wire [13:0] _T_108; // @[Bitwise.scala 103:21:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109801.6]
  wire [15:0] _GEN_156; // @[Bitwise.scala 103:31:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109802.6]
  wire [15:0] _T_109; // @[Bitwise.scala 103:31:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109802.6]
  wire [13:0] _T_110; // @[Bitwise.scala 103:46:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109803.6]
  wire [15:0] _GEN_157; // @[Bitwise.scala 103:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109804.6]
  wire [15:0] _T_111; // @[Bitwise.scala 103:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109804.6]
  wire [15:0] _T_113; // @[Bitwise.scala 103:75:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109806.6]
  wire [15:0] _T_114; // @[Bitwise.scala 103:39:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109807.6]
  wire [14:0] _T_118; // @[Bitwise.scala 103:21:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109811.6]
  wire [15:0] _GEN_158; // @[Bitwise.scala 103:31:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109812.6]
  wire [15:0] _T_119; // @[Bitwise.scala 103:31:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109812.6]
  wire [14:0] _T_120; // @[Bitwise.scala 103:46:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109813.6]
  wire [15:0] _GEN_159; // @[Bitwise.scala 103:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109814.6]
  wire [15:0] _T_121; // @[Bitwise.scala 103:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109814.6]
  wire [15:0] _T_123; // @[Bitwise.scala 103:75:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109816.6]
  wire [15:0] _T_124; // @[Bitwise.scala 103:39:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109817.6]
  wire [6:0] _T_125; // @[Bitwise.scala 109:44:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109818.6]
  wire [3:0] _T_126; // @[Bitwise.scala 109:18:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109819.6]
  wire [1:0] _T_127; // @[Bitwise.scala 109:18:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109820.6]
  wire  _T_128; // @[Bitwise.scala 109:18:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109821.6]
  wire  _T_129; // @[Bitwise.scala 109:44:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109822.6]
  wire [1:0] _T_130; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109823.6]
  wire [1:0] _T_131; // @[Bitwise.scala 109:44:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109824.6]
  wire  _T_132; // @[Bitwise.scala 109:18:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109825.6]
  wire  _T_133; // @[Bitwise.scala 109:44:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109826.6]
  wire [1:0] _T_134; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109827.6]
  wire [3:0] _T_135; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109828.6]
  wire [2:0] _T_136; // @[Bitwise.scala 109:44:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109829.6]
  wire [1:0] _T_137; // @[Bitwise.scala 109:18:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109830.6]
  wire  _T_138; // @[Bitwise.scala 109:18:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109831.6]
  wire  _T_139; // @[Bitwise.scala 109:44:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109832.6]
  wire [1:0] _T_140; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109833.6]
  wire  _T_141; // @[Bitwise.scala 109:44:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109834.6]
  wire [2:0] _T_142; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109835.6]
  wire [6:0] _T_143; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109836.6]
  wire [22:0] _T_144; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109837.6]
  wire  _T_145; // @[OneHot.scala 39:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109838.6]
  wire  _T_146; // @[OneHot.scala 39:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109839.6]
  wire  _T_147; // @[OneHot.scala 39:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109840.6]
  wire  _T_148; // @[OneHot.scala 39:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109841.6]
  wire  _T_149; // @[OneHot.scala 39:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109842.6]
  wire  _T_150; // @[OneHot.scala 39:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109843.6]
  wire  _T_151; // @[OneHot.scala 39:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109844.6]
  wire  _T_152; // @[OneHot.scala 39:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109845.6]
  wire  _T_153; // @[OneHot.scala 39:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109846.6]
  wire  _T_154; // @[OneHot.scala 39:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109847.6]
  wire  _T_155; // @[OneHot.scala 39:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109848.6]
  wire  _T_156; // @[OneHot.scala 39:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109849.6]
  wire  _T_157; // @[OneHot.scala 39:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109850.6]
  wire  _T_158; // @[OneHot.scala 39:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109851.6]
  wire  _T_159; // @[OneHot.scala 39:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109852.6]
  wire  _T_160; // @[OneHot.scala 39:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109853.6]
  wire  _T_161; // @[OneHot.scala 39:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109854.6]
  wire  _T_162; // @[OneHot.scala 39:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109855.6]
  wire  _T_163; // @[OneHot.scala 39:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109856.6]
  wire  _T_164; // @[OneHot.scala 39:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109857.6]
  wire  _T_165; // @[OneHot.scala 39:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109858.6]
  wire  _T_166; // @[OneHot.scala 39:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109859.6]
  wire [4:0] _T_191; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109861.6]
  wire [4:0] _T_192; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109862.6]
  wire [4:0] _T_193; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109863.6]
  wire [4:0] _T_194; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109864.6]
  wire [4:0] _T_195; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109865.6]
  wire [4:0] _T_196; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109866.6]
  wire [4:0] _T_197; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109867.6]
  wire [4:0] _T_198; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109868.6]
  wire [4:0] _T_199; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109869.6]
  wire [4:0] _T_200; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109870.6]
  wire [4:0] _T_201; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109871.6]
  wire [4:0] _T_202; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109872.6]
  wire [4:0] _T_203; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109873.6]
  wire [4:0] _T_204; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109874.6]
  wire [4:0] _T_205; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109875.6]
  wire [4:0] _T_206; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109876.6]
  wire [4:0] _T_207; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109877.6]
  wire [4:0] _T_208; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109878.6]
  wire [4:0] _T_209; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109879.6]
  wire [4:0] _T_210; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109880.6]
  wire [4:0] _T_211; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109881.6]
  wire [4:0] _T_212; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109882.6]
  wire [53:0] _GEN_160; // @[rawFloatFromFN.scala 54:36:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109883.6]
  wire [53:0] _T_213; // @[rawFloatFromFN.scala 54:36:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109883.6]
  wire [21:0] _T_214; // @[rawFloatFromFN.scala 54:47:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109884.6]
  wire [22:0] _GEN_161; // @[rawFloatFromFN.scala 54:64:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109885.6]
  wire [22:0] _T_215; // @[rawFloatFromFN.scala 54:64:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109885.6]
  wire [8:0] _GEN_162; // @[rawFloatFromFN.scala 57:26:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109886.6]
  wire [8:0] _T_217; // @[rawFloatFromFN.scala 57:26:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109886.6]
  wire [8:0] _T_218; // @[rawFloatFromFN.scala 56:16:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109887.6]
  wire [1:0] _T_222; // @[rawFloatFromFN.scala 60:27:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109888.6]
  wire [7:0] _GEN_163; // @[rawFloatFromFN.scala 60:22:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109889.6]
  wire [7:0] _T_223; // @[rawFloatFromFN.scala 60:22:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109889.6]
  wire [8:0] _GEN_164; // @[rawFloatFromFN.scala 59:15:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109890.6]
  wire [9:0] _T_224; // @[rawFloatFromFN.scala 59:15:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109890.6]
  wire [8:0] _T_225; // @[rawFloatFromFN.scala 59:15:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109891.6]
  wire  _T_226; // @[rawFloatFromFN.scala 62:34:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109892.6]
  wire [1:0] _T_227; // @[rawFloatFromFN.scala 63:37:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109893.6]
  wire  _T_229; // @[rawFloatFromFN.scala 63:62:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109894.6]
  wire  _T_233; // @[rawFloatFromFN.scala 66:36:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109897.6]
  wire  _T_234; // @[rawFloatFromFN.scala 66:33:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109898.6]
  wire [9:0] _T_237; // @[rawFloatFromFN.scala 70:48:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109905.6]
  wire  _T_240; // @[rawFloatFromFN.scala 72:29:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109907.6]
  wire [22:0] _T_241; // @[rawFloatFromFN.scala 72:42:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109908.6]
  wire [1:0] _T_242; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109909.6]
  wire [24:0] _T_243; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109910.6]
  wire [2:0] _T_245; // @[recFNFromFN.scala 48:53:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109912.6]
  wire [2:0] _T_246; // @[recFNFromFN.scala 48:16:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109913.6]
  wire [2:0] _GEN_165; // @[recFNFromFN.scala 48:79:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109915.6]
  wire [2:0] _T_250; // @[recFNFromFN.scala 48:79:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109915.6]
  wire [5:0] _T_251; // @[recFNFromFN.scala 50:23:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109916.6]
  wire [22:0] _T_252; // @[recFNFromFN.scala 51:22:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109917.6]
  wire [28:0] _T_253; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109918.6]
  wire [3:0] _T_254; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109919.6]
  wire [32:0] _T_255; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109920.6]
  wire  _T_275; // @[FPU.scala 696:13:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109945.8]
  wire [4:0] _T_276; // @[FPU.scala 696:51:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109947.10]
  wire [4:0] _GEN_57; // @[FPU.scala 696:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109946.8]
  wire [4:0] _GEN_58; // @[FPU.scala 697:29:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109950.8]
  wire [4:0] _GEN_59; // @[FPU.scala 695:25:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109944.6]
  wire [4:0] _GEN_60; // @[FPU.scala 695:25:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109944.6]
  wire [4:0] _T_278; // @[FPU.scala 700:50:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109957.10]
  wire [4:0] _GEN_61; // @[FPU.scala 700:29:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109956.8]
  wire [4:0] _GEN_62; // @[FPU.scala 701:29:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109960.8]
  wire  _T_283; // @[FPU.scala 702:32:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109965.8]
  wire  _T_284; // @[FPU.scala 702:29:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109966.8]
  wire [4:0] _GEN_63; // @[FPU.scala 702:49:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109967.8]
  wire [4:0] _GEN_64; // @[FPU.scala 699:25:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109955.6]
  wire [4:0] _GEN_65; // @[FPU.scala 699:25:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109955.6]
  wire [4:0] _GEN_66; // @[FPU.scala 699:25:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109955.6]
  wire [4:0] _T_286; // @[FPU.scala 704:46:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109973.8]
  wire [4:0] _GEN_67; // @[FPU.scala 704:25:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109972.6]
  wire [4:0] _GEN_68; // @[FPU.scala 694:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109943.4]
  wire [4:0] _GEN_69; // @[FPU.scala 694:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109943.4]
  wire [4:0] _GEN_70; // @[FPU.scala 694:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109943.4]
  wire [2:0] _T_287; // @[FPU.scala 706:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109977.4]
  wire  _T_289; // @[FPU.scala 706:38:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109978.4]
  wire [2:0] ex_rm; // @[FPU.scala 706:18:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109980.4]
  wire  _T_291; // @[FPU.scala 709:33:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109985.4]
  wire  _T_292; // @[FPU.scala 709:48:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109986.4]
  wire [32:0] _T_299; // @[FPU.scala 283:10:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109993.4]
  wire [32:0] _T_302; // @[FPU.scala 283:10:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109995.4]
  wire [32:0] _T_305; // @[FPU.scala 283:10:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109997.4]
  wire [1:0] _T_306; // @[FPU.scala 865:27:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109999.4]
  wire [1:0] _T_307; // @[FPU.scala 866:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110001.4]
  wire  _T_309; // @[FPU.scala 866:39:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110002.4]
  wire  _T_310; // @[FPU.scala 866:67:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110003.4]
  wire  _T_311; // @[FPU.scala 866:53:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110004.4]
  wire [1:0] _GEN_166; // @[FPU.scala 866:36:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110005.4]
  wire [1:0] _T_312; // @[FPU.scala 866:36:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110005.4]
  wire  _T_313; // @[FPU.scala 713:51:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110019.4]
  wire  _T_314; // @[FPU.scala 713:66:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110020.4]
  wire  _T_315; // @[FPU.scala 713:103:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110021.4]
  wire  _T_316; // @[FPU.scala 713:82:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110022.4]
  wire  _T_317; // @[FPU.scala 713:33:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110023.4]
  wire  _T_341; // @[FPU.scala 723:33:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110064.4]
  wire [32:0] _T_342; // @[FPU.scala 725:29:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110067.4]
  wire  _T_343; // @[FPU.scala 728:33:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110073.4]
  wire  _T_358; // @[FPU.scala 744:56:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110092.4]
  wire [1:0] _T_361; // @[FPU.scala 753:23:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110093.4]
  wire  _T_362; // @[FPU.scala 753:78:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110094.4]
  wire [1:0] _GEN_168; // @[FPU.scala 753:78:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110095.4]
  wire [1:0] memLatencyMask; // @[FPU.scala 753:78:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110095.4]
  wire  _T_372; // @[FPU.scala 769:48:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110098.4]
  wire  _T_373; // @[FPU.scala 769:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110099.4]
  wire  mem_wen; // @[FPU.scala 769:31:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110100.4]
  wire [1:0] _T_376; // @[FPU.scala 753:23:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110101.4]
  wire [1:0] _T_379; // @[FPU.scala 753:23:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110102.4]
  wire  _T_380; // @[FPU.scala 744:56:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110103.4]
  wire [2:0] _T_383; // @[FPU.scala 753:23:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110104.4]
  wire [1:0] _T_384; // @[FPU.scala 753:78:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110105.4]
  wire [2:0] _GEN_169; // @[FPU.scala 753:78:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110106.4]
  wire [2:0] _T_385; // @[FPU.scala 753:78:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110106.4]
  wire [2:0] _GEN_170; // @[FPU.scala 770:62:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110107.4]
  wire [2:0] _T_386; // @[FPU.scala 770:62:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110107.4]
  wire  _T_388; // @[FPU.scala 770:89:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110108.4]
  wire  _T_389; // @[FPU.scala 770:43:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110109.4]
  wire [2:0] _T_392; // @[FPU.scala 753:23:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110110.4]
  wire [2:0] _T_395; // @[FPU.scala 753:23:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110111.4]
  wire [3:0] _T_399; // @[FPU.scala 753:23:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110113.4]
  wire [2:0] _T_400; // @[FPU.scala 753:78:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110114.4]
  wire [3:0] _GEN_171; // @[FPU.scala 753:78:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110115.4]
  wire [3:0] _T_401; // @[FPU.scala 753:78:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110115.4]
  wire [3:0] _GEN_172; // @[FPU.scala 770:101:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110116.4]
  wire [3:0] _T_402; // @[FPU.scala 770:101:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110116.4]
  wire  _T_404; // @[FPU.scala 770:128:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110117.4]
  wire  _T_405; // @[FPU.scala 770:93:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110118.4]
  wire  _GEN_102; // @[Reg.scala 12:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110120.4]
  wire  _T_407; // @[FPU.scala 773:14:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110123.4]
  wire [4:0] _GEN_103; // @[FPU.scala 773:21:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110124.4]
  wire  _GEN_105; // @[FPU.scala 773:21:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110124.4]
  wire [1:0] _GEN_106; // @[FPU.scala 773:21:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110124.4]
  wire  _T_408; // @[FPU.scala 775:14:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110127.4]
  wire [1:0] _GEN_173; // @[FPU.scala 778:23:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110133.8]
  wire [1:0] _T_412; // @[FPU.scala 778:23:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110133.8]
  wire [1:0] _GEN_107; // @[FPU.scala 777:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110131.6]
  wire  _T_414; // @[FPU.scala 781:13:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110136.6]
  wire  _T_415; // @[FPU.scala 781:47:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110137.6]
  wire  _T_416; // @[FPU.scala 781:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110138.6]
  wire [1:0] _GEN_174; // @[FPU.scala 755:108:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110147.8]
  wire [1:0] _T_428; // @[FPU.scala 755:108:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110147.8]
  wire [4:0] _T_429; // @[FPU.scala 785:37:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110149.8]
  wire  _GEN_108; // @[FPU.scala 781:52:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110139.6]
  wire [1:0] _GEN_110; // @[FPU.scala 781:52:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110139.6]
  wire [4:0] _GEN_111; // @[FPU.scala 781:52:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110139.6]
  wire  _T_432; // @[FPU.scala 781:47:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110153.6]
  wire  _T_433; // @[FPU.scala 781:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110154.6]
  wire  _GEN_112; // @[FPU.scala 781:52:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110155.6]
  wire [1:0] _GEN_114; // @[FPU.scala 781:52:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110155.6]
  wire [4:0] _GEN_115; // @[FPU.scala 781:52:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110155.6]
  wire [1:0] _GEN_116; // @[FPU.scala 776:18:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110129.4]
  wire  _GEN_117; // @[FPU.scala 776:18:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110129.4]
  wire [1:0] _GEN_119; // @[FPU.scala 776:18:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110129.4]
  wire [4:0] _GEN_120; // @[FPU.scala 776:18:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110129.4]
  wire  _GEN_121; // @[FPU.scala 776:18:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110129.4]
  wire [1:0] _GEN_123; // @[FPU.scala 776:18:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110129.4]
  wire [4:0] _GEN_124; // @[FPU.scala 776:18:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110129.4]
  wire  _T_558; // @[FPU.scala 846:37:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110294.4]
  wire  _T_560; // @[FPU.scala 847:24:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110296.6]
  wire  divSqrt_wen; // @[FPU.scala 846:66:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110295.4]
  wire [4:0] waddr; // @[FPU.scala 790:18:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110169.4]
  wire  _T_450; // @[package.scala 31:81:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110172.4]
  wire [32:0] _T_451; // @[package.scala 31:71:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110173.4]
  wire  _T_453; // @[package.scala 31:81:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110174.4]
  wire [32:0] _T_454; // @[package.scala 31:71:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110175.4]
  wire  _T_456; // @[package.scala 31:81:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110176.4]
  wire [32:0] _T_457; // @[package.scala 31:71:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110177.4]
  wire [32:0] divSqrt_wdata; // @[FPU.scala 846:66:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110295.4]
  wire [32:0] wdata; // @[FPU.scala 792:22:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110178.4]
  wire [4:0] _T_460; // @[package.scala 31:71:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110180.4]
  wire [4:0] _T_463; // @[package.scala 31:71:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110182.4]
  wire [4:0] wexc; // @[package.scala 31:71:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110184.4]
  wire  _T_467; // @[FPU.scala 794:10:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110185.4]
  wire  _T_468; // @[FPU.scala 794:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110186.4]
  wire  _T_469; // @[FPU.scala 794:24:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110187.4]
  wire  _T_470; // @[FPU.scala 794:35:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110188.4]
  wire  wb_toint_valid; // @[FPU.scala 807:37:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110208.4]
  wire [4:0] _GEN_131; // @[Reg.scala 12:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110210.4]
  wire  _T_483; // @[FPU.scala 809:41:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110213.4]
  wire  _T_485; // @[FPU.scala 809:56:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110215.4]
  wire [4:0] _T_487; // @[FPU.scala 811:8:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110217.4]
  wire [4:0] divSqrt_flags; // @[FPU.scala 846:66:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110295.4]
  wire [4:0] _T_489; // @[FPU.scala 812:8:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110218.4]
  wire [4:0] _T_490; // @[FPU.scala 811:48:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110219.4]
  wire [4:0] _T_493; // @[FPU.scala 813:8:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110221.4]
  wire [4:0] _T_494; // @[FPU.scala 812:46:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110222.4]
  wire  _T_495; // @[FPU.scala 815:47:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110224.4]
  wire  _T_497; // @[FPU.scala 815:72:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110225.4]
  wire  divSqrt_write_port_busy; // @[FPU.scala 815:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110226.4]
  wire  _T_498; // @[FPU.scala 816:33:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110227.4]
  wire  _T_499; // @[FPU.scala 816:68:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110228.4]
  wire  _T_500; // @[FPU.scala 816:51:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110229.4]
  wire  _T_502; // @[FPU.scala 816:87:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110231.4]
  wire  _T_505; // @[FPU.scala 816:120:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110233.4]
  wire  divSqrt_inFlight; // @[FPU.scala 839:13:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110284.4]
  wire  _T_506; // @[FPU.scala 816:131:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110234.4]
  wire  _T_508; // @[FPU.scala 816:18:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110235.4]
  wire  _T_509; // @[FPU.scala 817:34:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110237.4]
  wire  _T_510; // @[FPU.scala 817:61:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110238.4]
  wire  _T_519; // @[FPU.scala 820:49:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110247.4]
  wire [2:0] _T_527; // @[FPU.scala 824:27:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110256.4]
  wire  _T_530; // @[package.scala 14:47:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110257.4]
  wire  _T_531; // @[package.scala 14:47:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110258.4]
  wire  _T_532; // @[package.scala 14:62:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110259.4]
  wire  _T_535; // @[FPU.scala 824:67:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110261.4]
  wire  _T_537; // @[FPU.scala 824:87:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110262.4]
  wire  _T_538; // @[FPU.scala 824:73:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110263.4]
  wire  _T_539; // @[FPU.scala 824:49:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110264.4]
  wire  _T_543; // @[FPU.scala 830:17:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110267.4]
  wire  _T_545; // @[FPU.scala 832:50:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110272.4]
  wire  _T_546; // @[FPU.scala 832:43:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110273.4]
  wire  _T_548; // @[FPU.scala 832:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110275.4]
  wire  _T_550; // @[FPU.scala 832:103:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110276.4]
  wire  _T_551; // @[FPU.scala 832:100:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110277.4]
  wire  _T_556; // @[FPU.scala 841:32:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110288.4]
  wire  _GEN_133; // @[FPU.scala 841:55:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110289.4]
  wire [4:0] _GEN_134; // @[FPU.scala 841:55:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110289.4]
  MIV_RV32IMAF_L1_AHB_C0_MIV_RV32IMAF_L1_AHB_C0_0_MIV_RV32IMAF_L1_AHB_FPUDECODER fp_decoder ( // @[FPU.scala 663:26:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109687.4]
    .io_inst(fp_decoder_io_inst),
    .io_sigs_wen(fp_decoder_io_sigs_wen),
    .io_sigs_ren1(fp_decoder_io_sigs_ren1),
    .io_sigs_ren2(fp_decoder_io_sigs_ren2),
    .io_sigs_ren3(fp_decoder_io_sigs_ren3),
    .io_sigs_swap12(fp_decoder_io_sigs_swap12),
    .io_sigs_swap23(fp_decoder_io_sigs_swap23),
    .io_sigs_singleOut(fp_decoder_io_sigs_singleOut),
    .io_sigs_fromint(fp_decoder_io_sigs_fromint),
    .io_sigs_toint(fp_decoder_io_sigs_toint),
    .io_sigs_fastpipe(fp_decoder_io_sigs_fastpipe),
    .io_sigs_fma(fp_decoder_io_sigs_fma),
    .io_sigs_div(fp_decoder_io_sigs_div),
    .io_sigs_sqrt(fp_decoder_io_sigs_sqrt),
    .io_sigs_wflags(fp_decoder_io_sigs_wflags)
  );
  MIV_RV32IMAF_L1_AHB_C0_MIV_RV32IMAF_L1_AHB_C0_0_MIV_RV32IMAF_L1_AHB_FPUFMAPIPE sfma ( // @[FPU.scala 708:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109981.4]
    .clock(sfma_clock),
    .reset(sfma_reset),
    .io_in_valid(sfma_io_in_valid),
    .io_in_bits_ren3(sfma_io_in_bits_ren3),
    .io_in_bits_swap23(sfma_io_in_bits_swap23),
    .io_in_bits_rm(sfma_io_in_bits_rm),
    .io_in_bits_fmaCmd(sfma_io_in_bits_fmaCmd),
    .io_in_bits_in1(sfma_io_in_bits_in1),
    .io_in_bits_in2(sfma_io_in_bits_in2),
    .io_in_bits_in3(sfma_io_in_bits_in3),
    .io_out_bits_data(sfma_io_out_bits_data),
    .io_out_bits_exc(sfma_io_out_bits_exc)
  );
  MIV_RV32IMAF_L1_AHB_C0_MIV_RV32IMAF_L1_AHB_C0_0_MIV_RV32IMAF_L1_AHB_FPTO_INT fpiu ( // @[FPU.scala 712:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110015.4]
    .clock(fpiu_clock),
    .io_in_valid(fpiu_io_in_valid),
    .io_in_bits_ren2(fpiu_io_in_bits_ren2),
    .io_in_bits_wflags(fpiu_io_in_bits_wflags),
    .io_in_bits_rm(fpiu_io_in_bits_rm),
    .io_in_bits_typ(fpiu_io_in_bits_typ),
    .io_in_bits_in1(fpiu_io_in_bits_in1),
    .io_in_bits_in2(fpiu_io_in_bits_in2),
    .io_out_bits_in_rm(fpiu_io_out_bits_in_rm),
    .io_out_bits_in_in1(fpiu_io_out_bits_in_in1),
    .io_out_bits_in_in2(fpiu_io_out_bits_in_in2),
    .io_out_bits_lt(fpiu_io_out_bits_lt),
    .io_out_bits_store(fpiu_io_out_bits_store),
    .io_out_bits_toint(fpiu_io_out_bits_toint),
    .io_out_bits_exc(fpiu_io_out_bits_exc)
  );
  MIV_RV32IMAF_L1_AHB_C0_MIV_RV32IMAF_L1_AHB_C0_0_MIV_RV32IMAF_L1_AHB_INT_TO_FP ifpu ( // @[FPU.scala 722:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110060.4]
    .clock(ifpu_clock),
    .reset(ifpu_reset),
    .io_in_valid(ifpu_io_in_valid),
    .io_in_bits_wflags(ifpu_io_in_bits_wflags),
    .io_in_bits_rm(ifpu_io_in_bits_rm),
    .io_in_bits_typ(ifpu_io_in_bits_typ),
    .io_in_bits_in1(ifpu_io_in_bits_in1),
    .io_out_bits_data(ifpu_io_out_bits_data),
    .io_out_bits_exc(ifpu_io_out_bits_exc)
  );
  MIV_RV32IMAF_L1_AHB_C0_MIV_RV32IMAF_L1_AHB_C0_0_MIV_RV32IMAF_L1_AHB_FPTO_FP fpmu ( // @[FPU.scala 727:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110069.4]
    .clock(fpmu_clock),
    .reset(fpmu_reset),
    .io_in_valid(fpmu_io_in_valid),
    .io_in_bits_wflags(fpmu_io_in_bits_wflags),
    .io_in_bits_rm(fpmu_io_in_bits_rm),
    .io_in_bits_in1(fpmu_io_in_bits_in1),
    .io_in_bits_in2(fpmu_io_in_bits_in2),
    .io_out_bits_data(fpmu_io_out_bits_data),
    .io_out_bits_exc(fpmu_io_out_bits_exc),
    .io_lt(fpmu_io_lt)
  );
  MIV_RV32IMAF_L1_AHB_C0_MIV_RV32IMAF_L1_AHB_C0_0_MIV_RV32IMAF_L1_AHB_DIV_SQRT_REC_FN_SMALL MIV_RV32IMAF_L1_AHB_C0_MIV_RV32IMAF_L1_AHB_C0_0_MIV_RV32IMAF_L1_AHB_DIV_SQRT_REC_FN_SMALL ( // @[FPU.scala 831:27:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110268.4]
    .clock(DivSqrtRecFN_small_clock),
    .reset(DivSqrtRecFN_small_reset),
    .io_inReady(DivSqrtRecFN_small_io_inReady),
    .io_inValid(DivSqrtRecFN_small_io_inValid),
    .io_sqrtOp(DivSqrtRecFN_small_io_sqrtOp),
    .io_a(DivSqrtRecFN_small_io_a),
    .io_b(DivSqrtRecFN_small_io_b),
    .io_roundingMode(DivSqrtRecFN_small_io_roundingMode),
    .io_outValid_div(DivSqrtRecFN_small_io_outValid_div),
    .io_outValid_sqrt(DivSqrtRecFN_small_io_outValid_sqrt),
    .io_out(DivSqrtRecFN_small_io_out),
    .io_exceptionFlags(DivSqrtRecFN_small_io_exceptionFlags)
  );
  assign regfile_ex_rs_0_addr = ex_ra_0;
  assign regfile_ex_rs_0_data = regfile[regfile_ex_rs_0_addr]; // @[FPU.scala 683:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109770.4]
  assign regfile_ex_rs_1_addr = ex_ra_1;
  assign regfile_ex_rs_1_data = regfile[regfile_ex_rs_1_addr]; // @[FPU.scala 683:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109770.4]
  assign regfile_ex_rs_2_addr = ex_ra_2;
  assign regfile_ex_rs_2_data = regfile[regfile_ex_rs_2_addr]; // @[FPU.scala 683:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109770.4]
  assign regfile__T_256_data = _T_255;
  assign regfile__T_256_addr = load_wb_tag;
  assign regfile__T_256_mask = load_wb;
  assign regfile__T_256_en = load_wb;
  assign regfile__T_476_data = wdata;
  assign regfile__T_476_addr = waddr;
  assign regfile__T_476_mask = _T_470;
  assign regfile__T_476_en = _T_470;
  assign _GEN_0 = io_valid ? io_inst : ex_reg_inst; // @[Reg.scala 12:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109660.4]
  assign killm = io_killm | io_nack_mem; // @[FPU.scala 654:25:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109669.4]
  assign _T_48 = mem_reg_valid & killm; // @[FPU.scala 658:41:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109672.4]
  assign killx = io_killx | _T_48; // @[FPU.scala 658:24:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109673.4]
  assign _T_50 = killx == 1'h0; // @[FPU.scala 659:36:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109674.4]
  assign _T_51 = ex_reg_valid & _T_50; // @[FPU.scala 659:33:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109675.4]
  assign _GEN_1 = ex_reg_valid ? ex_reg_inst : mem_reg_inst; // @[Reg.scala 12:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109679.4]
  assign _T_55 = killm == 1'h0; // @[FPU.scala 661:49:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109682.4]
  assign _T_57 = mem_reg_valid & _T_55; // @[FPU.scala 661:45:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109684.4]
  assign _GEN_2 = io_valid ? fp_decoder_io_sigs_wflags : ex_ctrl_wflags; // @[Reg.scala 12:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109698.4]
  assign _GEN_3 = io_valid ? fp_decoder_io_sigs_sqrt : ex_ctrl_sqrt; // @[Reg.scala 12:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109698.4]
  assign _GEN_4 = io_valid ? fp_decoder_io_sigs_div : ex_ctrl_div; // @[Reg.scala 12:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109698.4]
  assign _GEN_5 = io_valid ? fp_decoder_io_sigs_fma : ex_ctrl_fma; // @[Reg.scala 12:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109698.4]
  assign _GEN_6 = io_valid ? fp_decoder_io_sigs_fastpipe : ex_ctrl_fastpipe; // @[Reg.scala 12:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109698.4]
  assign _GEN_7 = io_valid ? fp_decoder_io_sigs_toint : ex_ctrl_toint; // @[Reg.scala 12:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109698.4]
  assign _GEN_8 = io_valid ? fp_decoder_io_sigs_fromint : ex_ctrl_fromint; // @[Reg.scala 12:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109698.4]
  assign _GEN_9 = io_valid ? fp_decoder_io_sigs_singleOut : ex_ctrl_singleOut; // @[Reg.scala 12:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109698.4]
  assign _GEN_11 = io_valid ? fp_decoder_io_sigs_swap23 : ex_ctrl_swap23; // @[Reg.scala 12:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109698.4]
  assign _GEN_13 = io_valid ? fp_decoder_io_sigs_ren3 : ex_ctrl_ren3; // @[Reg.scala 12:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109698.4]
  assign _GEN_14 = io_valid ? fp_decoder_io_sigs_ren2 : ex_ctrl_ren2; // @[Reg.scala 12:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109698.4]
  assign _GEN_18 = ex_reg_valid ? ex_ctrl_wflags : mem_ctrl_wflags; // @[Reg.scala 12:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109718.4]
  assign _GEN_19 = ex_reg_valid ? ex_ctrl_sqrt : mem_ctrl_sqrt; // @[Reg.scala 12:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109718.4]
  assign _GEN_20 = ex_reg_valid ? ex_ctrl_div : mem_ctrl_div; // @[Reg.scala 12:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109718.4]
  assign _GEN_21 = ex_reg_valid ? ex_ctrl_fma : mem_ctrl_fma; // @[Reg.scala 12:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109718.4]
  assign _GEN_22 = ex_reg_valid ? ex_ctrl_fastpipe : mem_ctrl_fastpipe; // @[Reg.scala 12:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109718.4]
  assign _GEN_23 = ex_reg_valid ? ex_ctrl_toint : mem_ctrl_toint; // @[Reg.scala 12:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109718.4]
  assign _GEN_24 = ex_reg_valid ? ex_ctrl_fromint : mem_ctrl_fromint; // @[Reg.scala 12:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109718.4]
  assign _GEN_25 = ex_reg_valid ? ex_ctrl_singleOut : mem_ctrl_singleOut; // @[Reg.scala 12:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109718.4]
  assign _GEN_39 = mem_reg_valid ? mem_ctrl_toint : wb_ctrl_toint; // @[Reg.scala 12:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109737.4]
  assign _GEN_51 = io_dmem_resp_val ? io_dmem_resp_data : load_wb_data; // @[Reg.scala 12:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109763.4]
  assign _GEN_52 = io_dmem_resp_val ? io_dmem_resp_tag : load_wb_tag; // @[Reg.scala 12:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109767.4]
  assign _T_76 = load_wb_data[31]; // @[rawFloatFromFN.scala 46:22:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109773.6]
  assign _T_77 = load_wb_data[30:23]; // @[rawFloatFromFN.scala 47:23:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109774.6]
  assign _T_78 = load_wb_data[22:0]; // @[rawFloatFromFN.scala 48:25:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109775.6]
  assign _T_80 = _T_77 == 8'h0; // @[rawFloatFromFN.scala 50:34:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109776.6]
  assign _T_82 = _T_78 == 23'h0; // @[rawFloatFromFN.scala 51:38:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109777.6]
  assign _T_83 = _T_78[15:0]; // @[Bitwise.scala 109:18:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109778.6]
  assign _T_88 = _T_83[15:8]; // @[Bitwise.scala 103:21:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109781.6]
  assign _T_89 = {{8'd0}, _T_88}; // @[Bitwise.scala 103:31:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109782.6]
  assign _T_90 = _T_83[7:0]; // @[Bitwise.scala 103:46:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109783.6]
  assign _GEN_153 = {{8'd0}, _T_90}; // @[Bitwise.scala 103:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109784.6]
  assign _T_91 = _GEN_153 << 8; // @[Bitwise.scala 103:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109784.6]
  assign _T_93 = _T_91 & 16'hff00; // @[Bitwise.scala 103:75:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109786.6]
  assign _T_94 = _T_89 | _T_93; // @[Bitwise.scala 103:39:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109787.6]
  assign _T_98 = _T_94[15:4]; // @[Bitwise.scala 103:21:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109791.6]
  assign _GEN_154 = {{4'd0}, _T_98}; // @[Bitwise.scala 103:31:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109792.6]
  assign _T_99 = _GEN_154 & 16'hf0f; // @[Bitwise.scala 103:31:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109792.6]
  assign _T_100 = _T_94[11:0]; // @[Bitwise.scala 103:46:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109793.6]
  assign _GEN_155 = {{4'd0}, _T_100}; // @[Bitwise.scala 103:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109794.6]
  assign _T_101 = _GEN_155 << 4; // @[Bitwise.scala 103:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109794.6]
  assign _T_103 = _T_101 & 16'hf0f0; // @[Bitwise.scala 103:75:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109796.6]
  assign _T_104 = _T_99 | _T_103; // @[Bitwise.scala 103:39:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109797.6]
  assign _T_108 = _T_104[15:2]; // @[Bitwise.scala 103:21:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109801.6]
  assign _GEN_156 = {{2'd0}, _T_108}; // @[Bitwise.scala 103:31:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109802.6]
  assign _T_109 = _GEN_156 & 16'h3333; // @[Bitwise.scala 103:31:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109802.6]
  assign _T_110 = _T_104[13:0]; // @[Bitwise.scala 103:46:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109803.6]
  assign _GEN_157 = {{2'd0}, _T_110}; // @[Bitwise.scala 103:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109804.6]
  assign _T_111 = _GEN_157 << 2; // @[Bitwise.scala 103:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109804.6]
  assign _T_113 = _T_111 & 16'hcccc; // @[Bitwise.scala 103:75:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109806.6]
  assign _T_114 = _T_109 | _T_113; // @[Bitwise.scala 103:39:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109807.6]
  assign _T_118 = _T_114[15:1]; // @[Bitwise.scala 103:21:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109811.6]
  assign _GEN_158 = {{1'd0}, _T_118}; // @[Bitwise.scala 103:31:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109812.6]
  assign _T_119 = _GEN_158 & 16'h5555; // @[Bitwise.scala 103:31:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109812.6]
  assign _T_120 = _T_114[14:0]; // @[Bitwise.scala 103:46:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109813.6]
  assign _GEN_159 = {{1'd0}, _T_120}; // @[Bitwise.scala 103:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109814.6]
  assign _T_121 = _GEN_159 << 1; // @[Bitwise.scala 103:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109814.6]
  assign _T_123 = _T_121 & 16'haaaa; // @[Bitwise.scala 103:75:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109816.6]
  assign _T_124 = _T_119 | _T_123; // @[Bitwise.scala 103:39:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109817.6]
  assign _T_125 = _T_78[22:16]; // @[Bitwise.scala 109:44:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109818.6]
  assign _T_126 = _T_125[3:0]; // @[Bitwise.scala 109:18:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109819.6]
  assign _T_127 = _T_126[1:0]; // @[Bitwise.scala 109:18:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109820.6]
  assign _T_128 = _T_127[0]; // @[Bitwise.scala 109:18:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109821.6]
  assign _T_129 = _T_127[1]; // @[Bitwise.scala 109:44:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109822.6]
  assign _T_130 = {_T_128,_T_129}; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109823.6]
  assign _T_131 = _T_126[3:2]; // @[Bitwise.scala 109:44:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109824.6]
  assign _T_132 = _T_131[0]; // @[Bitwise.scala 109:18:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109825.6]
  assign _T_133 = _T_131[1]; // @[Bitwise.scala 109:44:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109826.6]
  assign _T_134 = {_T_132,_T_133}; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109827.6]
  assign _T_135 = {_T_130,_T_134}; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109828.6]
  assign _T_136 = _T_125[6:4]; // @[Bitwise.scala 109:44:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109829.6]
  assign _T_137 = _T_136[1:0]; // @[Bitwise.scala 109:18:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109830.6]
  assign _T_138 = _T_137[0]; // @[Bitwise.scala 109:18:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109831.6]
  assign _T_139 = _T_137[1]; // @[Bitwise.scala 109:44:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109832.6]
  assign _T_140 = {_T_138,_T_139}; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109833.6]
  assign _T_141 = _T_136[2]; // @[Bitwise.scala 109:44:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109834.6]
  assign _T_142 = {_T_140,_T_141}; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109835.6]
  assign _T_143 = {_T_135,_T_142}; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109836.6]
  assign _T_144 = {_T_124,_T_143}; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109837.6]
  assign _T_145 = _T_144[0]; // @[OneHot.scala 39:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109838.6]
  assign _T_146 = _T_144[1]; // @[OneHot.scala 39:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109839.6]
  assign _T_147 = _T_144[2]; // @[OneHot.scala 39:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109840.6]
  assign _T_148 = _T_144[3]; // @[OneHot.scala 39:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109841.6]
  assign _T_149 = _T_144[4]; // @[OneHot.scala 39:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109842.6]
  assign _T_150 = _T_144[5]; // @[OneHot.scala 39:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109843.6]
  assign _T_151 = _T_144[6]; // @[OneHot.scala 39:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109844.6]
  assign _T_152 = _T_144[7]; // @[OneHot.scala 39:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109845.6]
  assign _T_153 = _T_144[8]; // @[OneHot.scala 39:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109846.6]
  assign _T_154 = _T_144[9]; // @[OneHot.scala 39:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109847.6]
  assign _T_155 = _T_144[10]; // @[OneHot.scala 39:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109848.6]
  assign _T_156 = _T_144[11]; // @[OneHot.scala 39:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109849.6]
  assign _T_157 = _T_144[12]; // @[OneHot.scala 39:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109850.6]
  assign _T_158 = _T_144[13]; // @[OneHot.scala 39:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109851.6]
  assign _T_159 = _T_144[14]; // @[OneHot.scala 39:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109852.6]
  assign _T_160 = _T_144[15]; // @[OneHot.scala 39:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109853.6]
  assign _T_161 = _T_144[16]; // @[OneHot.scala 39:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109854.6]
  assign _T_162 = _T_144[17]; // @[OneHot.scala 39:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109855.6]
  assign _T_163 = _T_144[18]; // @[OneHot.scala 39:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109856.6]
  assign _T_164 = _T_144[19]; // @[OneHot.scala 39:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109857.6]
  assign _T_165 = _T_144[20]; // @[OneHot.scala 39:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109858.6]
  assign _T_166 = _T_144[21]; // @[OneHot.scala 39:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109859.6]
  assign _T_191 = _T_166 ? 5'h15 : 5'h16; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109861.6]
  assign _T_192 = _T_165 ? 5'h14 : _T_191; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109862.6]
  assign _T_193 = _T_164 ? 5'h13 : _T_192; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109863.6]
  assign _T_194 = _T_163 ? 5'h12 : _T_193; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109864.6]
  assign _T_195 = _T_162 ? 5'h11 : _T_194; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109865.6]
  assign _T_196 = _T_161 ? 5'h10 : _T_195; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109866.6]
  assign _T_197 = _T_160 ? 5'hf : _T_196; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109867.6]
  assign _T_198 = _T_159 ? 5'he : _T_197; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109868.6]
  assign _T_199 = _T_158 ? 5'hd : _T_198; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109869.6]
  assign _T_200 = _T_157 ? 5'hc : _T_199; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109870.6]
  assign _T_201 = _T_156 ? 5'hb : _T_200; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109871.6]
  assign _T_202 = _T_155 ? 5'ha : _T_201; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109872.6]
  assign _T_203 = _T_154 ? 5'h9 : _T_202; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109873.6]
  assign _T_204 = _T_153 ? 5'h8 : _T_203; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109874.6]
  assign _T_205 = _T_152 ? 5'h7 : _T_204; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109875.6]
  assign _T_206 = _T_151 ? 5'h6 : _T_205; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109876.6]
  assign _T_207 = _T_150 ? 5'h5 : _T_206; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109877.6]
  assign _T_208 = _T_149 ? 5'h4 : _T_207; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109878.6]
  assign _T_209 = _T_148 ? 5'h3 : _T_208; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109879.6]
  assign _T_210 = _T_147 ? 5'h2 : _T_209; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109880.6]
  assign _T_211 = _T_146 ? 5'h1 : _T_210; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109881.6]
  assign _T_212 = _T_145 ? 5'h0 : _T_211; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109882.6]
  assign _GEN_160 = {{31'd0}, _T_78}; // @[rawFloatFromFN.scala 54:36:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109883.6]
  assign _T_213 = _GEN_160 << _T_212; // @[rawFloatFromFN.scala 54:36:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109883.6]
  assign _T_214 = _T_213[21:0]; // @[rawFloatFromFN.scala 54:47:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109884.6]
  assign _GEN_161 = {{1'd0}, _T_214}; // @[rawFloatFromFN.scala 54:64:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109885.6]
  assign _T_215 = _GEN_161 << 1; // @[rawFloatFromFN.scala 54:64:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109885.6]
  assign _GEN_162 = {{4'd0}, _T_212}; // @[rawFloatFromFN.scala 57:26:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109886.6]
  assign _T_217 = _GEN_162 ^ 9'h1ff; // @[rawFloatFromFN.scala 57:26:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109886.6]
  assign _T_218 = _T_80 ? _T_217 : {{1'd0}, _T_77}; // @[rawFloatFromFN.scala 56:16:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109887.6]
  assign _T_222 = _T_80 ? 2'h2 : 2'h1; // @[rawFloatFromFN.scala 60:27:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109888.6]
  assign _GEN_163 = {{6'd0}, _T_222}; // @[rawFloatFromFN.scala 60:22:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109889.6]
  assign _T_223 = 8'h80 | _GEN_163; // @[rawFloatFromFN.scala 60:22:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109889.6]
  assign _GEN_164 = {{1'd0}, _T_223}; // @[rawFloatFromFN.scala 59:15:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109890.6]
  assign _T_224 = _T_218 + _GEN_164; // @[rawFloatFromFN.scala 59:15:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109890.6]
  assign _T_225 = _T_224[8:0]; // @[rawFloatFromFN.scala 59:15:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109891.6]
  assign _T_226 = _T_80 & _T_82; // @[rawFloatFromFN.scala 62:34:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109892.6]
  assign _T_227 = _T_225[8:7]; // @[rawFloatFromFN.scala 63:37:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109893.6]
  assign _T_229 = _T_227 == 2'h3; // @[rawFloatFromFN.scala 63:62:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109894.6]
  assign _T_233 = _T_82 == 1'h0; // @[rawFloatFromFN.scala 66:36:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109897.6]
  assign _T_234 = _T_229 & _T_233; // @[rawFloatFromFN.scala 66:33:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109898.6]
  assign _T_237 = {1'b0,$signed(_T_225)}; // @[rawFloatFromFN.scala 70:48:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109905.6]
  assign _T_240 = _T_226 == 1'h0; // @[rawFloatFromFN.scala 72:29:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109907.6]
  assign _T_241 = _T_80 ? _T_215 : _T_78; // @[rawFloatFromFN.scala 72:42:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109908.6]
  assign _T_242 = {1'h0,_T_240}; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109909.6]
  assign _T_243 = {_T_242,_T_241}; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109910.6]
  assign _T_245 = _T_237[8:6]; // @[recFNFromFN.scala 48:53:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109912.6]
  assign _T_246 = _T_226 ? 3'h0 : _T_245; // @[recFNFromFN.scala 48:16:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109913.6]
  assign _GEN_165 = {{2'd0}, _T_234}; // @[recFNFromFN.scala 48:79:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109915.6]
  assign _T_250 = _T_246 | _GEN_165; // @[recFNFromFN.scala 48:79:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109915.6]
  assign _T_251 = _T_237[5:0]; // @[recFNFromFN.scala 50:23:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109916.6]
  assign _T_252 = _T_243[22:0]; // @[recFNFromFN.scala 51:22:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109917.6]
  assign _T_253 = {_T_251,_T_252}; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109918.6]
  assign _T_254 = {_T_76,_T_250}; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109919.6]
  assign _T_255 = {_T_254,_T_253}; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109920.6]
  assign _T_275 = fp_decoder_io_sigs_swap12 == 1'h0; // @[FPU.scala 696:13:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109945.8]
  assign _T_276 = io_inst[19:15]; // @[FPU.scala 696:51:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109947.10]
  assign _GEN_57 = _T_275 ? _T_276 : ex_ra_0; // @[FPU.scala 696:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109946.8]
  assign _GEN_58 = fp_decoder_io_sigs_swap12 ? _T_276 : ex_ra_1; // @[FPU.scala 697:29:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109950.8]
  assign _GEN_59 = fp_decoder_io_sigs_ren1 ? _GEN_57 : ex_ra_0; // @[FPU.scala 695:25:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109944.6]
  assign _GEN_60 = fp_decoder_io_sigs_ren1 ? _GEN_58 : ex_ra_1; // @[FPU.scala 695:25:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109944.6]
  assign _T_278 = io_inst[24:20]; // @[FPU.scala 700:50:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109957.10]
  assign _GEN_61 = fp_decoder_io_sigs_swap12 ? _T_278 : _GEN_59; // @[FPU.scala 700:29:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109956.8]
  assign _GEN_62 = fp_decoder_io_sigs_swap23 ? _T_278 : ex_ra_2; // @[FPU.scala 701:29:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109960.8]
  assign _T_283 = fp_decoder_io_sigs_swap23 == 1'h0; // @[FPU.scala 702:32:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109965.8]
  assign _T_284 = _T_275 & _T_283; // @[FPU.scala 702:29:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109966.8]
  assign _GEN_63 = _T_284 ? _T_278 : _GEN_60; // @[FPU.scala 702:49:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109967.8]
  assign _GEN_64 = fp_decoder_io_sigs_ren2 ? _GEN_61 : _GEN_59; // @[FPU.scala 699:25:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109955.6]
  assign _GEN_65 = fp_decoder_io_sigs_ren2 ? _GEN_62 : ex_ra_2; // @[FPU.scala 699:25:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109955.6]
  assign _GEN_66 = fp_decoder_io_sigs_ren2 ? _GEN_63 : _GEN_60; // @[FPU.scala 699:25:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109955.6]
  assign _T_286 = io_inst[31:27]; // @[FPU.scala 704:46:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109973.8]
  assign _GEN_67 = fp_decoder_io_sigs_ren3 ? _T_286 : _GEN_65; // @[FPU.scala 704:25:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109972.6]
  assign _GEN_68 = io_valid ? _GEN_64 : ex_ra_0; // @[FPU.scala 694:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109943.4]
  assign _GEN_69 = io_valid ? _GEN_66 : ex_ra_1; // @[FPU.scala 694:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109943.4]
  assign _GEN_70 = io_valid ? _GEN_67 : ex_ra_2; // @[FPU.scala 694:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109943.4]
  assign _T_287 = ex_reg_inst[14:12]; // @[FPU.scala 706:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109977.4]
  assign _T_289 = _T_287 == 3'h7; // @[FPU.scala 706:38:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109978.4]
  assign ex_rm = _T_289 ? io_fcsr_rm : _T_287; // @[FPU.scala 706:18:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109980.4]
  assign _T_291 = ex_reg_valid & ex_ctrl_fma; // @[FPU.scala 709:33:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109985.4]
  assign _T_292 = _T_291 & ex_ctrl_singleOut; // @[FPU.scala 709:48:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109986.4]
  assign _T_299 = regfile_ex_rs_0_data; // @[FPU.scala 283:10:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109993.4]
  assign _T_302 = regfile_ex_rs_1_data; // @[FPU.scala 283:10:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109995.4]
  assign _T_305 = regfile_ex_rs_2_data; // @[FPU.scala 283:10:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109997.4]
  assign _T_306 = ex_reg_inst[21:20]; // @[FPU.scala 865:27:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109999.4]
  assign _T_307 = ex_reg_inst[3:2]; // @[FPU.scala 866:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110001.4]
  assign _T_309 = ex_ctrl_ren3 == 1'h0; // @[FPU.scala 866:39:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110002.4]
  assign _T_310 = ex_reg_inst[27]; // @[FPU.scala 866:67:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110003.4]
  assign _T_311 = _T_309 & _T_310; // @[FPU.scala 866:53:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110004.4]
  assign _GEN_166 = {{1'd0}, _T_311}; // @[FPU.scala 866:36:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110005.4]
  assign _T_312 = _T_307 | _GEN_166; // @[FPU.scala 866:36:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110005.4]
  assign _T_313 = ex_ctrl_toint | ex_ctrl_div; // @[FPU.scala 713:51:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110019.4]
  assign _T_314 = _T_313 | ex_ctrl_sqrt; // @[FPU.scala 713:66:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110020.4]
  assign _T_315 = ex_ctrl_fastpipe & ex_ctrl_wflags; // @[FPU.scala 713:103:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110021.4]
  assign _T_316 = _T_314 | _T_315; // @[FPU.scala 713:82:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110022.4]
  assign _T_317 = ex_reg_valid & _T_316; // @[FPU.scala 713:33:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110023.4]
  assign _T_341 = ex_reg_valid & ex_ctrl_fromint; // @[FPU.scala 723:33:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110064.4]
  assign _T_342 = {{1'd0}, io_fromint_data}; // @[FPU.scala 725:29:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110067.4]
  assign _T_343 = ex_reg_valid & ex_ctrl_fastpipe; // @[FPU.scala 728:33:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110073.4]
  assign _T_358 = mem_ctrl_fma & mem_ctrl_singleOut; // @[FPU.scala 744:56:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110092.4]
  assign _T_361 = _T_358 ? 2'h2 : 2'h0; // @[FPU.scala 753:23:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110093.4]
  assign _T_362 = mem_ctrl_fastpipe | mem_ctrl_fromint; // @[FPU.scala 753:78:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110094.4]
  assign _GEN_168 = {{1'd0}, _T_362}; // @[FPU.scala 753:78:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110095.4]
  assign memLatencyMask = _GEN_168 | _T_361; // @[FPU.scala 753:78:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110095.4]
  assign _T_372 = mem_ctrl_fma | mem_ctrl_fastpipe; // @[FPU.scala 769:48:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110098.4]
  assign _T_373 = _T_372 | mem_ctrl_fromint; // @[FPU.scala 769:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110099.4]
  assign mem_wen = mem_reg_valid & _T_373; // @[FPU.scala 769:31:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110100.4]
  assign _T_376 = ex_ctrl_fastpipe ? 2'h2 : 2'h0; // @[FPU.scala 753:23:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110101.4]
  assign _T_379 = ex_ctrl_fromint ? 2'h2 : 2'h0; // @[FPU.scala 753:23:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110102.4]
  assign _T_380 = ex_ctrl_fma & ex_ctrl_singleOut; // @[FPU.scala 744:56:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110103.4]
  assign _T_383 = _T_380 ? 3'h4 : 3'h0; // @[FPU.scala 753:23:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110104.4]
  assign _T_384 = _T_376 | _T_379; // @[FPU.scala 753:78:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110105.4]
  assign _GEN_169 = {{1'd0}, _T_384}; // @[FPU.scala 753:78:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110106.4]
  assign _T_385 = _GEN_169 | _T_383; // @[FPU.scala 753:78:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110106.4]
  assign _GEN_170 = {{1'd0}, memLatencyMask}; // @[FPU.scala 770:62:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110107.4]
  assign _T_386 = _GEN_170 & _T_385; // @[FPU.scala 770:62:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110107.4]
  assign _T_388 = _T_386 != 3'h0; // @[FPU.scala 770:89:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110108.4]
  assign _T_389 = mem_wen & _T_388; // @[FPU.scala 770:43:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110109.4]
  assign _T_392 = ex_ctrl_fastpipe ? 3'h4 : 3'h0; // @[FPU.scala 753:23:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110110.4]
  assign _T_395 = ex_ctrl_fromint ? 3'h4 : 3'h0; // @[FPU.scala 753:23:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110111.4]
  assign _T_399 = _T_380 ? 4'h8 : 4'h0; // @[FPU.scala 753:23:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110113.4]
  assign _T_400 = _T_392 | _T_395; // @[FPU.scala 753:78:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110114.4]
  assign _GEN_171 = {{1'd0}, _T_400}; // @[FPU.scala 753:78:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110115.4]
  assign _T_401 = _GEN_171 | _T_399; // @[FPU.scala 753:78:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110115.4]
  assign _GEN_172 = {{2'd0}, wen}; // @[FPU.scala 770:101:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110116.4]
  assign _T_402 = _GEN_172 & _T_401; // @[FPU.scala 770:101:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110116.4]
  assign _T_404 = _T_402 != 4'h0; // @[FPU.scala 770:128:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110117.4]
  assign _T_405 = _T_389 | _T_404; // @[FPU.scala 770:93:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110118.4]
  assign _GEN_102 = ex_reg_valid ? _T_405 : write_port_busy; // @[Reg.scala 12:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110120.4]
  assign _T_407 = wen[1]; // @[FPU.scala 773:14:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110123.4]
  assign _GEN_103 = _T_407 ? wbInfo_1_rd : wbInfo_0_rd; // @[FPU.scala 773:21:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110124.4]
  assign _GEN_105 = _T_407 ? wbInfo_1_cp : wbInfo_0_cp; // @[FPU.scala 773:21:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110124.4]
  assign _GEN_106 = _T_407 ? wbInfo_1_pipeid : wbInfo_0_pipeid; // @[FPU.scala 773:21:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110124.4]
  assign _T_408 = wen[1:1]; // @[FPU.scala 775:14:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110127.4]
  assign _GEN_173 = {{1'd0}, _T_408}; // @[FPU.scala 778:23:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110133.8]
  assign _T_412 = _GEN_173 | memLatencyMask; // @[FPU.scala 778:23:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110133.8]
  assign _GEN_107 = _T_55 ? _T_412 : {{1'd0}, _T_408}; // @[FPU.scala 777:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110131.6]
  assign _T_414 = write_port_busy == 1'h0; // @[FPU.scala 781:13:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110136.6]
  assign _T_415 = memLatencyMask[0]; // @[FPU.scala 781:47:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110137.6]
  assign _T_416 = _T_414 & _T_415; // @[FPU.scala 781:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110138.6]
  assign _GEN_174 = {{1'd0}, mem_ctrl_fromint}; // @[FPU.scala 755:108:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110147.8]
  assign _T_428 = _GEN_174 | _T_361; // @[FPU.scala 755:108:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110147.8]
  assign _T_429 = mem_reg_inst[11:7]; // @[FPU.scala 785:37:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110149.8]
  assign _GEN_108 = _T_416 ? 1'h0 : _GEN_105; // @[FPU.scala 781:52:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110139.6]
  assign _GEN_110 = _T_416 ? _T_428 : _GEN_106; // @[FPU.scala 781:52:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110139.6]
  assign _GEN_111 = _T_416 ? _T_429 : _GEN_103; // @[FPU.scala 781:52:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110139.6]
  assign _T_432 = memLatencyMask[1]; // @[FPU.scala 781:47:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110153.6]
  assign _T_433 = _T_414 & _T_432; // @[FPU.scala 781:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110154.6]
  assign _GEN_112 = _T_433 ? 1'h0 : wbInfo_1_cp; // @[FPU.scala 781:52:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110155.6]
  assign _GEN_114 = _T_433 ? _T_428 : wbInfo_1_pipeid; // @[FPU.scala 781:52:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110155.6]
  assign _GEN_115 = _T_433 ? _T_429 : wbInfo_1_rd; // @[FPU.scala 781:52:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110155.6]
  assign _GEN_116 = mem_wen ? _GEN_107 : {{1'd0}, _T_408}; // @[FPU.scala 776:18:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110129.4]
  assign _GEN_117 = mem_wen ? _GEN_108 : _GEN_105; // @[FPU.scala 776:18:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110129.4]
  assign _GEN_119 = mem_wen ? _GEN_110 : _GEN_106; // @[FPU.scala 776:18:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110129.4]
  assign _GEN_120 = mem_wen ? _GEN_111 : _GEN_103; // @[FPU.scala 776:18:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110129.4]
  assign _GEN_121 = mem_wen ? _GEN_112 : wbInfo_1_cp; // @[FPU.scala 776:18:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110129.4]
  assign _GEN_123 = mem_wen ? _GEN_114 : wbInfo_1_pipeid; // @[FPU.scala 776:18:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110129.4]
  assign _GEN_124 = mem_wen ? _GEN_115 : wbInfo_1_rd; // @[FPU.scala 776:18:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110129.4]
  assign _T_558 = DivSqrtRecFN_small_io_outValid_div | DivSqrtRecFN_small_io_outValid_sqrt; // @[FPU.scala 846:37:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110294.4]
  assign _T_560 = _T_541 == 1'h0; // @[FPU.scala 847:24:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110296.6]
  assign divSqrt_wen = _T_558 ? _T_560 : 1'h0; // @[FPU.scala 846:66:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110295.4]
  assign waddr = divSqrt_wen ? divSqrt_waddr : wbInfo_0_rd; // @[FPU.scala 790:18:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110169.4]
  assign _T_450 = wbInfo_0_pipeid == 2'h1; // @[package.scala 31:81:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110172.4]
  assign _T_451 = _T_450 ? ifpu_io_out_bits_data : fpmu_io_out_bits_data; // @[package.scala 31:71:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110173.4]
  assign _T_453 = wbInfo_0_pipeid == 2'h2; // @[package.scala 31:81:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110174.4]
  assign _T_454 = _T_453 ? sfma_io_out_bits_data : _T_451; // @[package.scala 31:71:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110175.4]
  assign _T_456 = wbInfo_0_pipeid == 2'h3; // @[package.scala 31:81:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110176.4]
  assign _T_457 = _T_456 ? sfma_io_out_bits_data : _T_454; // @[package.scala 31:71:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110177.4]
  assign divSqrt_wdata = DivSqrtRecFN_small_io_out; // @[FPU.scala 846:66:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110295.4]
  assign wdata = divSqrt_wen ? divSqrt_wdata : _T_457; // @[FPU.scala 792:22:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110178.4]
  assign _T_460 = _T_450 ? ifpu_io_out_bits_exc : fpmu_io_out_bits_exc; // @[package.scala 31:71:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110180.4]
  assign _T_463 = _T_453 ? sfma_io_out_bits_exc : _T_460; // @[package.scala 31:71:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110182.4]
  assign wexc = _T_456 ? sfma_io_out_bits_exc : _T_463; // @[package.scala 31:71:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110184.4]
  assign _T_467 = wbInfo_0_cp == 1'h0; // @[FPU.scala 794:10:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110185.4]
  assign _T_468 = wen[0]; // @[FPU.scala 794:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110186.4]
  assign _T_469 = _T_467 & _T_468; // @[FPU.scala 794:24:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110187.4]
  assign _T_470 = _T_469 | divSqrt_wen; // @[FPU.scala 794:35:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110188.4]
  assign wb_toint_valid = wb_reg_valid & wb_ctrl_toint; // @[FPU.scala 807:37:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110208.4]
  assign _GEN_131 = mem_ctrl_toint ? fpiu_io_out_bits_exc : wb_toint_exc; // @[Reg.scala 12:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110210.4]
  assign _T_483 = wb_toint_valid | divSqrt_wen; // @[FPU.scala 809:41:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110213.4]
  assign _T_485 = _T_483 | _T_468; // @[FPU.scala 809:56:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110215.4]
  assign _T_487 = wb_toint_valid ? wb_toint_exc : 5'h0; // @[FPU.scala 811:8:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110217.4]
  assign divSqrt_flags = DivSqrtRecFN_small_io_exceptionFlags; // @[FPU.scala 846:66:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110295.4]
  assign _T_489 = divSqrt_wen ? divSqrt_flags : 5'h0; // @[FPU.scala 812:8:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110218.4]
  assign _T_490 = _T_487 | _T_489; // @[FPU.scala 811:48:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110219.4]
  assign _T_493 = _T_468 ? wexc : 5'h0; // @[FPU.scala 813:8:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110221.4]
  assign _T_494 = _T_490 | _T_493; // @[FPU.scala 812:46:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110222.4]
  assign _T_495 = mem_ctrl_div | mem_ctrl_sqrt; // @[FPU.scala 815:47:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110224.4]
  assign _T_497 = wen != 2'h0; // @[FPU.scala 815:72:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110225.4]
  assign divSqrt_write_port_busy = _T_495 & _T_497; // @[FPU.scala 815:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110226.4]
  assign _T_498 = ex_reg_valid & ex_ctrl_wflags; // @[FPU.scala 816:33:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110227.4]
  assign _T_499 = mem_reg_valid & mem_ctrl_wflags; // @[FPU.scala 816:68:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110228.4]
  assign _T_500 = _T_498 | _T_499; // @[FPU.scala 816:51:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110229.4]
  assign _T_502 = _T_500 | wb_toint_valid; // @[FPU.scala 816:87:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110231.4]
  assign _T_505 = _T_502 | _T_497; // @[FPU.scala 816:120:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110233.4]
  assign divSqrt_inFlight = DivSqrtRecFN_small_io_inReady == 1'h0; // @[FPU.scala 839:13:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110284.4]
  assign _T_506 = _T_505 | divSqrt_inFlight; // @[FPU.scala 816:131:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110234.4]
  assign _T_508 = _T_506 == 1'h0; // @[FPU.scala 816:18:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110235.4]
  assign _T_509 = write_port_busy | divSqrt_write_port_busy; // @[FPU.scala 817:34:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110237.4]
  assign _T_510 = _T_509 | divSqrt_inFlight; // @[FPU.scala 817:61:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110238.4]
  assign _T_519 = wb_reg_valid & _T_518; // @[FPU.scala 820:49:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110247.4]
  assign _T_527 = io_inst[14:12]; // @[FPU.scala 824:27:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110256.4]
  assign _T_530 = _T_527 == 3'h5; // @[package.scala 14:47:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110257.4]
  assign _T_531 = _T_527 == 3'h6; // @[package.scala 14:47:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110258.4]
  assign _T_532 = _T_530 | _T_531; // @[package.scala 14:62:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110259.4]
  assign _T_535 = _T_527 == 3'h7; // @[FPU.scala 824:67:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110261.4]
  assign _T_537 = io_fcsr_rm >= 3'h5; // @[FPU.scala 824:87:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110262.4]
  assign _T_538 = _T_535 & _T_537; // @[FPU.scala 824:73:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110263.4]
  assign _T_539 = _T_532 | _T_538; // @[FPU.scala 824:49:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110264.4]
  assign _T_543 = mem_ctrl_singleOut == 1'h0; // @[FPU.scala 830:17:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110267.4]
  assign _T_545 = _T_543 == 1'h0; // @[FPU.scala 832:50:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110272.4]
  assign _T_546 = mem_reg_valid & _T_545; // @[FPU.scala 832:43:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110273.4]
  assign _T_548 = _T_546 & _T_495; // @[FPU.scala 832:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110275.4]
  assign _T_550 = divSqrt_inFlight == 1'h0; // @[FPU.scala 832:103:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110276.4]
  assign _T_551 = _T_548 & _T_550; // @[FPU.scala 832:100:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110277.4]
  assign _T_556 = DivSqrtRecFN_small_io_inValid & DivSqrtRecFN_small_io_inReady; // @[FPU.scala 841:32:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110288.4]
  assign _GEN_133 = _T_556 ? killm : _T_541; // @[FPU.scala 841:55:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110289.4]
  assign _GEN_134 = _T_556 ? _T_429 : divSqrt_waddr; // @[FPU.scala 841:55:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110289.4]
  assign io_fcsr_flags_valid = _T_485;
  assign io_fcsr_flags_bits = _T_494;
  assign io_store_data = fpiu_io_out_bits_store;
  assign io_toint_data = fpiu_io_out_bits_toint;
  assign io_fcsr_rdy = _T_508;
  assign io_nack_mem = _T_510;
  assign io_illegal_rm = _T_539;
  assign io_dec_wen = fp_decoder_io_sigs_wen;
  assign io_dec_ren1 = fp_decoder_io_sigs_ren1;
  assign io_dec_ren2 = fp_decoder_io_sigs_ren2;
  assign io_dec_ren3 = fp_decoder_io_sigs_ren3;
  assign io_sboard_set = _T_519;
  assign io_sboard_clr = divSqrt_wen;
  assign io_sboard_clra = waddr;
  assign fp_decoder_io_inst = io_inst;
  assign sfma_clock = clock;
  assign sfma_reset = reset;
  assign sfma_io_in_valid = _T_292;
  assign sfma_io_in_bits_ren3 = ex_ctrl_ren3;
  assign sfma_io_in_bits_swap23 = ex_ctrl_swap23;
  assign sfma_io_in_bits_rm = ex_rm;
  assign sfma_io_in_bits_fmaCmd = _T_312;
  assign sfma_io_in_bits_in1 = _T_299;
  assign sfma_io_in_bits_in2 = _T_302;
  assign sfma_io_in_bits_in3 = _T_305;
  assign fpiu_clock = clock;
  assign fpiu_io_in_valid = _T_317;
  assign fpiu_io_in_bits_ren2 = ex_ctrl_ren2;
  assign fpiu_io_in_bits_wflags = ex_ctrl_wflags;
  assign fpiu_io_in_bits_rm = ex_rm;
  assign fpiu_io_in_bits_typ = _T_306;
  assign fpiu_io_in_bits_in1 = _T_299;
  assign fpiu_io_in_bits_in2 = _T_302;
  assign ifpu_clock = clock;
  assign ifpu_reset = reset;
  assign ifpu_io_in_valid = _T_341;
  assign ifpu_io_in_bits_wflags = fpiu_io_in_bits_wflags;
  assign ifpu_io_in_bits_rm = fpiu_io_in_bits_rm;
  assign ifpu_io_in_bits_typ = fpiu_io_in_bits_typ;
  assign ifpu_io_in_bits_in1 = _T_342;
  assign fpmu_clock = clock;
  assign fpmu_reset = reset;
  assign fpmu_io_in_valid = _T_343;
  assign fpmu_io_in_bits_wflags = fpiu_io_in_bits_wflags;
  assign fpmu_io_in_bits_rm = fpiu_io_in_bits_rm;
  assign fpmu_io_in_bits_in1 = fpiu_io_in_bits_in1;
  assign fpmu_io_in_bits_in2 = fpiu_io_in_bits_in2;
  assign fpmu_io_lt = fpiu_io_out_bits_lt;
  assign DivSqrtRecFN_small_clock = clock;
  assign DivSqrtRecFN_small_reset = reset;
  assign DivSqrtRecFN_small_io_inValid = _T_551;
  assign DivSqrtRecFN_small_io_sqrtOp = mem_ctrl_sqrt;
  assign DivSqrtRecFN_small_io_a = fpiu_io_out_bits_in_in1;
  assign DivSqrtRecFN_small_io_b = fpiu_io_out_bits_in_in2;
  assign DivSqrtRecFN_small_io_roundingMode = fpiu_io_out_bits_in_rm;
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifndef verilator
      #0.002 begin end
    `endif
  `ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{$random}};
  ex_reg_valid = _RAND_0[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{$random}};
  ex_reg_inst = _RAND_1[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{$random}};
  mem_reg_valid = _RAND_2[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{$random}};
  mem_reg_inst = _RAND_3[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{$random}};
  wb_reg_valid = _RAND_4[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{$random}};
  ex_ctrl_ren2 = _RAND_5[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{$random}};
  ex_ctrl_ren3 = _RAND_6[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{$random}};
  ex_ctrl_swap23 = _RAND_7[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{$random}};
  ex_ctrl_singleOut = _RAND_8[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {1{$random}};
  ex_ctrl_fromint = _RAND_9[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_10 = {1{$random}};
  ex_ctrl_toint = _RAND_10[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_11 = {1{$random}};
  ex_ctrl_fastpipe = _RAND_11[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_12 = {1{$random}};
  ex_ctrl_fma = _RAND_12[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_13 = {1{$random}};
  ex_ctrl_div = _RAND_13[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_14 = {1{$random}};
  ex_ctrl_sqrt = _RAND_14[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_15 = {1{$random}};
  ex_ctrl_wflags = _RAND_15[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_16 = {1{$random}};
  mem_ctrl_singleOut = _RAND_16[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_17 = {1{$random}};
  mem_ctrl_fromint = _RAND_17[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_18 = {1{$random}};
  mem_ctrl_toint = _RAND_18[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_19 = {1{$random}};
  mem_ctrl_fastpipe = _RAND_19[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_20 = {1{$random}};
  mem_ctrl_fma = _RAND_20[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_21 = {1{$random}};
  mem_ctrl_div = _RAND_21[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_22 = {1{$random}};
  mem_ctrl_sqrt = _RAND_22[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_23 = {1{$random}};
  mem_ctrl_wflags = _RAND_23[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_24 = {1{$random}};
  wb_ctrl_toint = _RAND_24[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_25 = {1{$random}};
  load_wb = _RAND_25[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_26 = {1{$random}};
  load_wb_data = _RAND_26[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_27 = {1{$random}};
  load_wb_tag = _RAND_27[4:0];
  `endif // RANDOMIZE_REG_INIT
  _RAND_28 = {2{$random}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 32; initvar = initvar+1)
    regfile[initvar] = _RAND_28[32:0];
  `endif // RANDOMIZE_MEM_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_29 = {1{$random}};
  ex_ra_0 = _RAND_29[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_30 = {1{$random}};
  ex_ra_1 = _RAND_30[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_31 = {1{$random}};
  ex_ra_2 = _RAND_31[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_32 = {1{$random}};
  divSqrt_waddr = _RAND_32[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_33 = {1{$random}};
  wen = _RAND_33[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_34 = {1{$random}};
  wbInfo_0_rd = _RAND_34[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_35 = {1{$random}};
  wbInfo_0_cp = _RAND_35[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_36 = {1{$random}};
  wbInfo_0_pipeid = _RAND_36[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_37 = {1{$random}};
  wbInfo_1_rd = _RAND_37[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_38 = {1{$random}};
  wbInfo_1_cp = _RAND_38[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_39 = {1{$random}};
  wbInfo_1_pipeid = _RAND_39[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_40 = {1{$random}};
  write_port_busy = _RAND_40[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_41 = {1{$random}};
  wb_toint_exc = _RAND_41[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_42 = {1{$random}};
  _T_518 = _RAND_42[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_43 = {1{$random}};
  _T_541 = _RAND_43[0:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if (reset) begin
      ex_reg_valid <= 1'h0;
    end else begin
      ex_reg_valid <= io_valid;
    end
    if (io_valid) begin
      ex_reg_inst <= io_inst;
    end
    if (reset) begin
      mem_reg_valid <= 1'h0;
    end else begin
      mem_reg_valid <= _T_51;
    end
    if (ex_reg_valid) begin
      mem_reg_inst <= ex_reg_inst;
    end
    if (reset) begin
      wb_reg_valid <= 1'h0;
    end else begin
      wb_reg_valid <= _T_57;
    end
    if (io_valid) begin
      ex_ctrl_ren2 <= fp_decoder_io_sigs_ren2;
    end
    if (io_valid) begin
      ex_ctrl_ren3 <= fp_decoder_io_sigs_ren3;
    end
    if (io_valid) begin
      ex_ctrl_swap23 <= fp_decoder_io_sigs_swap23;
    end
    if (io_valid) begin
      ex_ctrl_singleOut <= fp_decoder_io_sigs_singleOut;
    end
    if (io_valid) begin
      ex_ctrl_fromint <= fp_decoder_io_sigs_fromint;
    end
    if (io_valid) begin
      ex_ctrl_toint <= fp_decoder_io_sigs_toint;
    end
    if (io_valid) begin
      ex_ctrl_fastpipe <= fp_decoder_io_sigs_fastpipe;
    end
    if (io_valid) begin
      ex_ctrl_fma <= fp_decoder_io_sigs_fma;
    end
    if (io_valid) begin
      ex_ctrl_div <= fp_decoder_io_sigs_div;
    end
    if (io_valid) begin
      ex_ctrl_sqrt <= fp_decoder_io_sigs_sqrt;
    end
    if (io_valid) begin
      ex_ctrl_wflags <= fp_decoder_io_sigs_wflags;
    end
    if (ex_reg_valid) begin
      mem_ctrl_singleOut <= ex_ctrl_singleOut;
    end
    if (ex_reg_valid) begin
      mem_ctrl_fromint <= ex_ctrl_fromint;
    end
    if (ex_reg_valid) begin
      mem_ctrl_toint <= ex_ctrl_toint;
    end
    if (ex_reg_valid) begin
      mem_ctrl_fastpipe <= ex_ctrl_fastpipe;
    end
    if (ex_reg_valid) begin
      mem_ctrl_fma <= ex_ctrl_fma;
    end
    if (ex_reg_valid) begin
      mem_ctrl_div <= ex_ctrl_div;
    end
    if (ex_reg_valid) begin
      mem_ctrl_sqrt <= ex_ctrl_sqrt;
    end
    if (ex_reg_valid) begin
      mem_ctrl_wflags <= ex_ctrl_wflags;
    end
    if (mem_reg_valid) begin
      wb_ctrl_toint <= mem_ctrl_toint;
    end
    load_wb <= io_dmem_resp_val;
    if (io_dmem_resp_val) begin
      load_wb_data <= io_dmem_resp_data;
    end
    if (io_dmem_resp_val) begin
      load_wb_tag <= io_dmem_resp_tag;
    end
    if(regfile__T_256_en & regfile__T_256_mask) begin
      regfile[regfile__T_256_addr] <= regfile__T_256_data; // @[FPU.scala 683:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109770.4]
    end
    if(regfile__T_476_en & regfile__T_476_mask) begin
      regfile[regfile__T_476_addr] <= regfile__T_476_data; // @[FPU.scala 683:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109770.4]
    end
    if (io_valid) begin
      if (fp_decoder_io_sigs_ren2) begin
        if (fp_decoder_io_sigs_swap12) begin
          ex_ra_0 <= _T_278;
        end else begin
          if (fp_decoder_io_sigs_ren1) begin
            if (_T_275) begin
              ex_ra_0 <= _T_276;
            end
          end
        end
      end else begin
        if (fp_decoder_io_sigs_ren1) begin
          if (_T_275) begin
            ex_ra_0 <= _T_276;
          end
        end
      end
    end
    if (io_valid) begin
      if (fp_decoder_io_sigs_ren2) begin
        if (_T_284) begin
          ex_ra_1 <= _T_278;
        end else begin
          if (fp_decoder_io_sigs_ren1) begin
            if (fp_decoder_io_sigs_swap12) begin
              ex_ra_1 <= _T_276;
            end
          end
        end
      end else begin
        if (fp_decoder_io_sigs_ren1) begin
          if (fp_decoder_io_sigs_swap12) begin
            ex_ra_1 <= _T_276;
          end
        end
      end
    end
    if (io_valid) begin
      if (fp_decoder_io_sigs_ren3) begin
        ex_ra_2 <= _T_286;
      end else begin
        if (fp_decoder_io_sigs_ren2) begin
          if (fp_decoder_io_sigs_swap23) begin
            ex_ra_2 <= _T_278;
          end
        end
      end
    end
    if (_T_556) begin
      divSqrt_waddr <= _T_429;
    end
    if (reset) begin
      wen <= 2'h0;
    end else begin
      if (mem_wen) begin
        if (_T_55) begin
          wen <= _T_412;
        end else begin
          wen <= {{1'd0}, _T_408};
        end
      end else begin
        wen <= {{1'd0}, _T_408};
      end
    end
    if (mem_wen) begin
      if (_T_416) begin
        wbInfo_0_rd <= _T_429;
      end else begin
        if (_T_407) begin
          wbInfo_0_rd <= wbInfo_1_rd;
        end
      end
    end else begin
      if (_T_407) begin
        wbInfo_0_rd <= wbInfo_1_rd;
      end
    end
    if (mem_wen) begin
      if (_T_416) begin
        wbInfo_0_cp <= 1'h0;
      end else begin
        if (_T_407) begin
          wbInfo_0_cp <= wbInfo_1_cp;
        end
      end
    end else begin
      if (_T_407) begin
        wbInfo_0_cp <= wbInfo_1_cp;
      end
    end
    if (mem_wen) begin
      if (_T_416) begin
        wbInfo_0_pipeid <= _T_428;
      end else begin
        if (_T_407) begin
          wbInfo_0_pipeid <= wbInfo_1_pipeid;
        end
      end
    end else begin
      if (_T_407) begin
        wbInfo_0_pipeid <= wbInfo_1_pipeid;
      end
    end
    if (mem_wen) begin
      if (_T_433) begin
        wbInfo_1_rd <= _T_429;
      end
    end
    if (mem_wen) begin
      if (_T_433) begin
        wbInfo_1_cp <= 1'h0;
      end
    end
    if (mem_wen) begin
      if (_T_433) begin
        wbInfo_1_pipeid <= _T_428;
      end
    end
    if (ex_reg_valid) begin
      write_port_busy <= _T_405;
    end
    if (mem_ctrl_toint) begin
      wb_toint_exc <= fpiu_io_out_bits_exc;
    end
    _T_518 <= _T_495;
    if (_T_556) begin
      _T_541 <= killm;
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (1'h0) begin
          $fwrite(32'h80000002,"Assertion failed\n    at FPU.scala:687 assert(consistent(wdata))\n"); // @[FPU.scala 687:11:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109927.8]
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
          $fatal; // @[FPU.scala 687:11:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109928.8]
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
          $fwrite(32'h80000002,"Assertion failed\n    at FPU.scala:795 assert(consistent(wdata))\n"); // @[FPU.scala 795:11:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110194.8]
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
          $fatal; // @[FPU.scala 795:11:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@110195.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
