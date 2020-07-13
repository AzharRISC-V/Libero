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
module MIV_RV32IMAF_L1_AHB_C0_MIV_RV32IMAF_L1_AHB_C0_0_MIV_RV32IMAF_L1_AHB_FPUDECODER( // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106683.2]
  input  [31:0] io_inst, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106686.4]
  output        io_sigs_wen, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106686.4]
  output        io_sigs_ren1, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106686.4]
  output        io_sigs_ren2, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106686.4]
  output        io_sigs_ren3, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106686.4]
  output        io_sigs_swap12, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106686.4]
  output        io_sigs_swap23, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106686.4]
  output        io_sigs_singleOut, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106686.4]
  output        io_sigs_fromint, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106686.4]
  output        io_sigs_toint, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106686.4]
  output        io_sigs_fastpipe, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106686.4]
  output        io_sigs_fma, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106686.4]
  output        io_sigs_div, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106686.4]
  output        io_sigs_sqrt, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106686.4]
  output        io_sigs_wflags // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106686.4]
);
  wire [31:0] _T_5; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106691.4]
  wire  decoder_0; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106692.4]
  wire [31:0] _T_10; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106694.4]
  wire  _T_12; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106695.4]
  wire [31:0] _T_14; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106696.4]
  wire  _T_16; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106697.4]
  wire [31:0] _T_18; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106698.4]
  wire  _T_20; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106699.4]
  wire  _T_23; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106701.4]
  wire  decoder_1; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106702.4]
  wire [31:0] _T_25; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106703.4]
  wire  _T_27; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106704.4]
  wire [31:0] _T_29; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106705.4]
  wire  _T_31; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106706.4]
  wire [31:0] _T_33; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106707.4]
  wire  decoder_4; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106708.4]
  wire  _T_38; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106710.4]
  wire  decoder_2; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106711.4]
  wire [31:0] _T_40; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106712.4]
  wire  _T_42; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106713.4]
  wire [31:0] _T_44; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106714.4]
  wire  _T_46; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106715.4]
  wire  _T_49; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106717.4]
  wire  decoder_3; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106718.4]
  wire [31:0] _T_53; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106721.4]
  wire  decoder_6; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106722.4]
  wire [31:0] _T_79; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106737.4]
  wire  _T_81; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106738.4]
  wire [31:0] _T_83; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106739.4]
  wire  _T_85; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106740.4]
  wire [31:0] _T_87; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106741.4]
  wire  _T_89; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106742.4]
  wire  _T_92; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106744.4]
  wire  decoder_8; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106745.4]
  wire [31:0] _T_94; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106746.4]
  wire  decoder_9; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106747.4]
  wire  _T_101; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106750.4]
  wire  decoder_10; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106752.4]
  wire [31:0] _T_105; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106753.4]
  wire  decoder_11; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106754.4]
  wire [31:0] _T_110; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106756.4]
  wire  _T_112; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106757.4]
  wire [31:0] _T_114; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106758.4]
  wire  _T_116; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106759.4]
  wire  _T_119; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106761.4]
  wire  decoder_12; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106762.4]
  wire [31:0] _T_121; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106763.4]
  wire  decoder_13; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106764.4]
  wire [31:0] _T_126; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106766.4]
  wire  decoder_14; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106767.4]
  wire [31:0] _T_131; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106769.4]
  wire  _T_133; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106770.4]
  wire [31:0] _T_135; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106771.4]
  wire  _T_137; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106772.4]
  wire [31:0] _T_139; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106773.4]
  wire  _T_141; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106774.4]
  wire  _T_144; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106776.4]
  wire  _T_145; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106777.4]
  wire  decoder_15; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106778.4]
  assign _T_5 = io_inst & 32'h40; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106691.4]
  assign decoder_0 = _T_5 == 32'h0; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106692.4]
  assign _T_10 = io_inst & 32'h80000020; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106694.4]
  assign _T_12 = _T_10 == 32'h0; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106695.4]
  assign _T_14 = io_inst & 32'h30; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106696.4]
  assign _T_16 = _T_14 == 32'h0; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106697.4]
  assign _T_18 = io_inst & 32'h10000020; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106698.4]
  assign _T_20 = _T_18 == 32'h10000000; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106699.4]
  assign _T_23 = _T_12 | _T_16; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106701.4]
  assign decoder_1 = _T_23 | _T_20; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106702.4]
  assign _T_25 = io_inst & 32'h80000004; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106703.4]
  assign _T_27 = _T_25 == 32'h0; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106704.4]
  assign _T_29 = io_inst & 32'h10000004; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106705.4]
  assign _T_31 = _T_29 == 32'h0; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106706.4]
  assign _T_33 = io_inst & 32'h50; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106707.4]
  assign decoder_4 = _T_33 == 32'h40; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106708.4]
  assign _T_38 = _T_27 | _T_31; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106710.4]
  assign decoder_2 = _T_38 | decoder_4; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106711.4]
  assign _T_40 = io_inst & 32'h40000004; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106712.4]
  assign _T_42 = _T_40 == 32'h0; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106713.4]
  assign _T_44 = io_inst & 32'h20; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106714.4]
  assign _T_46 = _T_44 == 32'h20; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106715.4]
  assign _T_49 = _T_42 | _T_46; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106717.4]
  assign decoder_3 = _T_49 | decoder_4; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106718.4]
  assign _T_53 = io_inst & 32'h30000010; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106721.4]
  assign decoder_6 = _T_53 == 32'h10; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106722.4]
  assign _T_79 = io_inst & 32'h20000000; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106737.4]
  assign _T_81 = _T_79 == 32'h0; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106738.4]
  assign _T_83 = io_inst & 32'h10000000; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106739.4]
  assign _T_85 = _T_83 == 32'h0; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106740.4]
  assign _T_87 = io_inst & 32'h10; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106741.4]
  assign _T_89 = _T_87 == 32'h0; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106742.4]
  assign _T_92 = _T_81 | _T_85; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106744.4]
  assign decoder_8 = _T_92 | _T_89; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106745.4]
  assign _T_94 = io_inst & 32'h90000010; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106746.4]
  assign decoder_9 = _T_94 == 32'h90000010; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106747.4]
  assign _T_101 = _T_94 == 32'h80000010; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106750.4]
  assign decoder_10 = _T_46 | _T_101; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106752.4]
  assign _T_105 = io_inst & 32'ha0000010; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106753.4]
  assign decoder_11 = _T_105 == 32'h20000010; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106754.4]
  assign _T_110 = io_inst & 32'hb0000004; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106756.4]
  assign _T_112 = _T_110 == 32'h0; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106757.4]
  assign _T_114 = io_inst & 32'ha8000004; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106758.4]
  assign _T_116 = _T_114 == 32'h0; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106759.4]
  assign _T_119 = _T_112 | _T_116; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106761.4]
  assign decoder_12 = _T_119 | decoder_4; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106762.4]
  assign _T_121 = io_inst & 32'h58000010; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106763.4]
  assign decoder_13 = _T_121 == 32'h18000010; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106764.4]
  assign _T_126 = io_inst & 32'hc0000010; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106766.4]
  assign decoder_14 = _T_126 == 32'h40000010; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106767.4]
  assign _T_131 = io_inst & 32'h20000004; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106769.4]
  assign _T_133 = _T_131 == 32'h0; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106770.4]
  assign _T_135 = io_inst & 32'h8002000; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106771.4]
  assign _T_137 = _T_135 == 32'h8000000; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106772.4]
  assign _T_139 = io_inst & 32'hc0000004; // @[Decode.scala 14:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106773.4]
  assign _T_141 = _T_139 == 32'h80000000; // @[Decode.scala 14:121:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106774.4]
  assign _T_144 = _T_133 | decoder_4; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106776.4]
  assign _T_145 = _T_144 | _T_137; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106777.4]
  assign decoder_15 = _T_145 | _T_141; // @[Decode.scala 15:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106778.4]
  assign io_sigs_wen = decoder_1;
  assign io_sigs_ren1 = decoder_2;
  assign io_sigs_ren2 = decoder_3;
  assign io_sigs_ren3 = decoder_4;
  assign io_sigs_swap12 = decoder_0;
  assign io_sigs_swap23 = decoder_6;
  assign io_sigs_singleOut = decoder_8;
  assign io_sigs_fromint = decoder_9;
  assign io_sigs_toint = decoder_10;
  assign io_sigs_fastpipe = decoder_11;
  assign io_sigs_fma = decoder_12;
  assign io_sigs_div = decoder_13;
  assign io_sigs_sqrt = decoder_14;
  assign io_sigs_wflags = decoder_15;
endmodule
