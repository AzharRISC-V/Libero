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
module MIV_RV32IMAF_L1_AHB_C0_MIV_RV32IMAF_L1_AHB_C0_0_MIV_RV32IMAF_L1_AHB_MUL_ADD_REC_FNPIPE( // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107737.2]
  input         clock, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107738.4]
  input         reset, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107739.4]
  input         io_validin, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107740.4]
  input  [1:0]  io_op, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107740.4]
  input  [32:0] io_a, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107740.4]
  input  [32:0] io_b, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107740.4]
  input  [32:0] io_c, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107740.4]
  input  [2:0]  io_roundingMode, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107740.4]
  output [32:0] io_out, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107740.4]
  output [4:0]  io_exceptionFlags // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107740.4]
);
  wire [1:0] mulAddRecFNToRaw_preMul_io_op; // @[FPU.scala 565:15:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107745.4]
  wire [32:0] mulAddRecFNToRaw_preMul_io_a; // @[FPU.scala 565:15:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107745.4]
  wire [32:0] mulAddRecFNToRaw_preMul_io_b; // @[FPU.scala 565:15:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107745.4]
  wire [32:0] mulAddRecFNToRaw_preMul_io_c; // @[FPU.scala 565:15:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107745.4]
  wire [23:0] mulAddRecFNToRaw_preMul_io_mulAddA; // @[FPU.scala 565:15:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107745.4]
  wire [23:0] mulAddRecFNToRaw_preMul_io_mulAddB; // @[FPU.scala 565:15:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107745.4]
  wire [47:0] mulAddRecFNToRaw_preMul_io_mulAddC; // @[FPU.scala 565:15:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107745.4]
  wire  mulAddRecFNToRaw_preMul_io_toPostMul_isSigNaNAny; // @[FPU.scala 565:15:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107745.4]
  wire  mulAddRecFNToRaw_preMul_io_toPostMul_isNaNAOrB; // @[FPU.scala 565:15:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107745.4]
  wire  mulAddRecFNToRaw_preMul_io_toPostMul_isInfA; // @[FPU.scala 565:15:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107745.4]
  wire  mulAddRecFNToRaw_preMul_io_toPostMul_isZeroA; // @[FPU.scala 565:15:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107745.4]
  wire  mulAddRecFNToRaw_preMul_io_toPostMul_isInfB; // @[FPU.scala 565:15:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107745.4]
  wire  mulAddRecFNToRaw_preMul_io_toPostMul_isZeroB; // @[FPU.scala 565:15:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107745.4]
  wire  mulAddRecFNToRaw_preMul_io_toPostMul_signProd; // @[FPU.scala 565:15:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107745.4]
  wire  mulAddRecFNToRaw_preMul_io_toPostMul_isNaNC; // @[FPU.scala 565:15:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107745.4]
  wire  mulAddRecFNToRaw_preMul_io_toPostMul_isInfC; // @[FPU.scala 565:15:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107745.4]
  wire  mulAddRecFNToRaw_preMul_io_toPostMul_isZeroC; // @[FPU.scala 565:15:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107745.4]
  wire [9:0] mulAddRecFNToRaw_preMul_io_toPostMul_sExpSum; // @[FPU.scala 565:15:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107745.4]
  wire  mulAddRecFNToRaw_preMul_io_toPostMul_doSubMags; // @[FPU.scala 565:15:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107745.4]
  wire  mulAddRecFNToRaw_preMul_io_toPostMul_CIsDominant; // @[FPU.scala 565:15:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107745.4]
  wire [4:0] mulAddRecFNToRaw_preMul_io_toPostMul_CDom_CAlignDist; // @[FPU.scala 565:15:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107745.4]
  wire [25:0] mulAddRecFNToRaw_preMul_io_toPostMul_highAlignedSigC; // @[FPU.scala 565:15:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107745.4]
  wire  mulAddRecFNToRaw_preMul_io_toPostMul_bit0AlignedSigC; // @[FPU.scala 565:15:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107745.4]
  wire  mulAddRecFNToRaw_postMul_io_fromPreMul_isSigNaNAny; // @[FPU.scala 567:15:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107749.4]
  wire  mulAddRecFNToRaw_postMul_io_fromPreMul_isNaNAOrB; // @[FPU.scala 567:15:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107749.4]
  wire  mulAddRecFNToRaw_postMul_io_fromPreMul_isInfA; // @[FPU.scala 567:15:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107749.4]
  wire  mulAddRecFNToRaw_postMul_io_fromPreMul_isZeroA; // @[FPU.scala 567:15:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107749.4]
  wire  mulAddRecFNToRaw_postMul_io_fromPreMul_isInfB; // @[FPU.scala 567:15:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107749.4]
  wire  mulAddRecFNToRaw_postMul_io_fromPreMul_isZeroB; // @[FPU.scala 567:15:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107749.4]
  wire  mulAddRecFNToRaw_postMul_io_fromPreMul_signProd; // @[FPU.scala 567:15:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107749.4]
  wire  mulAddRecFNToRaw_postMul_io_fromPreMul_isNaNC; // @[FPU.scala 567:15:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107749.4]
  wire  mulAddRecFNToRaw_postMul_io_fromPreMul_isInfC; // @[FPU.scala 567:15:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107749.4]
  wire  mulAddRecFNToRaw_postMul_io_fromPreMul_isZeroC; // @[FPU.scala 567:15:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107749.4]
  wire [9:0] mulAddRecFNToRaw_postMul_io_fromPreMul_sExpSum; // @[FPU.scala 567:15:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107749.4]
  wire  mulAddRecFNToRaw_postMul_io_fromPreMul_doSubMags; // @[FPU.scala 567:15:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107749.4]
  wire  mulAddRecFNToRaw_postMul_io_fromPreMul_CIsDominant; // @[FPU.scala 567:15:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107749.4]
  wire [4:0] mulAddRecFNToRaw_postMul_io_fromPreMul_CDom_CAlignDist; // @[FPU.scala 567:15:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107749.4]
  wire [25:0] mulAddRecFNToRaw_postMul_io_fromPreMul_highAlignedSigC; // @[FPU.scala 567:15:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107749.4]
  wire  mulAddRecFNToRaw_postMul_io_fromPreMul_bit0AlignedSigC; // @[FPU.scala 567:15:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107749.4]
  wire [48:0] mulAddRecFNToRaw_postMul_io_mulAddResult; // @[FPU.scala 567:15:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107749.4]
  wire [2:0] mulAddRecFNToRaw_postMul_io_roundingMode; // @[FPU.scala 567:15:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107749.4]
  wire  mulAddRecFNToRaw_postMul_io_invalidExc; // @[FPU.scala 567:15:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107749.4]
  wire  mulAddRecFNToRaw_postMul_io_rawOut_isNaN; // @[FPU.scala 567:15:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107749.4]
  wire  mulAddRecFNToRaw_postMul_io_rawOut_isInf; // @[FPU.scala 567:15:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107749.4]
  wire  mulAddRecFNToRaw_postMul_io_rawOut_isZero; // @[FPU.scala 567:15:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107749.4]
  wire  mulAddRecFNToRaw_postMul_io_rawOut_sign; // @[FPU.scala 567:15:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107749.4]
  wire [9:0] mulAddRecFNToRaw_postMul_io_rawOut_sExp; // @[FPU.scala 567:15:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107749.4]
  wire [26:0] mulAddRecFNToRaw_postMul_io_rawOut_sig; // @[FPU.scala 567:15:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107749.4]
  reg  _T_20_isSigNaNAny; // @[Reg.scala 11:16:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107767.4]
  reg [31:0] _RAND_0;
  reg  _T_20_isNaNAOrB; // @[Reg.scala 11:16:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107767.4]
  reg [31:0] _RAND_1;
  reg  _T_20_isInfA; // @[Reg.scala 11:16:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107767.4]
  reg [31:0] _RAND_2;
  reg  _T_20_isZeroA; // @[Reg.scala 11:16:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107767.4]
  reg [31:0] _RAND_3;
  reg  _T_20_isInfB; // @[Reg.scala 11:16:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107767.4]
  reg [31:0] _RAND_4;
  reg  _T_20_isZeroB; // @[Reg.scala 11:16:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107767.4]
  reg [31:0] _RAND_5;
  reg  _T_20_signProd; // @[Reg.scala 11:16:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107767.4]
  reg [31:0] _RAND_6;
  reg  _T_20_isNaNC; // @[Reg.scala 11:16:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107767.4]
  reg [31:0] _RAND_7;
  reg  _T_20_isInfC; // @[Reg.scala 11:16:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107767.4]
  reg [31:0] _RAND_8;
  reg  _T_20_isZeroC; // @[Reg.scala 11:16:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107767.4]
  reg [31:0] _RAND_9;
  reg [9:0] _T_20_sExpSum; // @[Reg.scala 11:16:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107767.4]
  reg [31:0] _RAND_10;
  reg  _T_20_doSubMags; // @[Reg.scala 11:16:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107767.4]
  reg [31:0] _RAND_11;
  reg  _T_20_CIsDominant; // @[Reg.scala 11:16:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107767.4]
  reg [31:0] _RAND_12;
  reg [4:0] _T_20_CDom_CAlignDist; // @[Reg.scala 11:16:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107767.4]
  reg [31:0] _RAND_13;
  reg [25:0] _T_20_highAlignedSigC; // @[Reg.scala 11:16:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107767.4]
  reg [31:0] _RAND_14;
  reg  _T_20_bit0AlignedSigC; // @[Reg.scala 11:16:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107767.4]
  reg [31:0] _RAND_15;
  reg [48:0] _T_31; // @[Reg.scala 11:16:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107793.4]
  reg [63:0] _RAND_16;
  reg [2:0] _T_42; // @[Reg.scala 11:16:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107804.4]
  reg [31:0] _RAND_17;
  reg [2:0] roundingMode_stage0; // @[Reg.scala 11:16:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107815.4]
  reg [31:0] _RAND_18;
  reg  detectTininess_stage0; // @[Reg.scala 11:16:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107826.4]
  reg [31:0] _RAND_19;
  reg  valid_stage0; // @[Valid.scala 47:22:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107835.4]
  reg [31:0] _RAND_20;
  wire  roundRawFNToRecFN_io_invalidExc; // @[FPU.scala 593:35:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107846.4]
  wire  roundRawFNToRecFN_io_infiniteExc; // @[FPU.scala 593:35:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107846.4]
  wire  roundRawFNToRecFN_io_in_isNaN; // @[FPU.scala 593:35:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107846.4]
  wire  roundRawFNToRecFN_io_in_isInf; // @[FPU.scala 593:35:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107846.4]
  wire  roundRawFNToRecFN_io_in_isZero; // @[FPU.scala 593:35:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107846.4]
  wire  roundRawFNToRecFN_io_in_sign; // @[FPU.scala 593:35:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107846.4]
  wire [9:0] roundRawFNToRecFN_io_in_sExp; // @[FPU.scala 593:35:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107846.4]
  wire [26:0] roundRawFNToRecFN_io_in_sig; // @[FPU.scala 593:35:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107846.4]
  wire [2:0] roundRawFNToRecFN_io_roundingMode; // @[FPU.scala 593:35:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107846.4]
  wire  roundRawFNToRecFN_io_detectTininess; // @[FPU.scala 593:35:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107846.4]
  wire [32:0] roundRawFNToRecFN_io_out; // @[FPU.scala 593:35:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107846.4]
  wire [4:0] roundRawFNToRecFN_io_exceptionFlags; // @[FPU.scala 593:35:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107846.4]
  reg  _T_87; // @[Reg.scala 11:16:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107852.4]
  reg [31:0] _RAND_21;
  reg  _T_98_isNaN; // @[Reg.scala 11:16:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107863.4]
  reg [31:0] _RAND_22;
  reg  _T_98_isInf; // @[Reg.scala 11:16:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107863.4]
  reg [31:0] _RAND_23;
  reg  _T_98_isZero; // @[Reg.scala 11:16:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107863.4]
  reg [31:0] _RAND_24;
  reg  _T_98_sign; // @[Reg.scala 11:16:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107863.4]
  reg [31:0] _RAND_25;
  reg [9:0] _T_98_sExp; // @[Reg.scala 11:16:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107863.4]
  reg [31:0] _RAND_26;
  reg [26:0] _T_98_sig; // @[Reg.scala 11:16:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107863.4]
  reg [31:0] _RAND_27;
  reg [2:0] _T_109; // @[Reg.scala 11:16:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107879.4]
  reg [31:0] _RAND_28;
  reg  _T_120; // @[Reg.scala 11:16:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107890.4]
  reg [31:0] _RAND_29;
  wire [47:0] _T_12; // @[FPU.scala 575:45:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107757.4]
  wire [48:0] mulAddResult; // @[FPU.scala 576:50:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107758.4]
  wire  _GEN_0; // @[Reg.scala 12:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107768.4]
  wire [25:0] _GEN_1; // @[Reg.scala 12:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107768.4]
  wire [4:0] _GEN_2; // @[Reg.scala 12:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107768.4]
  wire  _GEN_3; // @[Reg.scala 12:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107768.4]
  wire  _GEN_4; // @[Reg.scala 12:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107768.4]
  wire [9:0] _GEN_5; // @[Reg.scala 12:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107768.4]
  wire  _GEN_6; // @[Reg.scala 12:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107768.4]
  wire  _GEN_7; // @[Reg.scala 12:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107768.4]
  wire  _GEN_8; // @[Reg.scala 12:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107768.4]
  wire  _GEN_9; // @[Reg.scala 12:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107768.4]
  wire  _GEN_10; // @[Reg.scala 12:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107768.4]
  wire  _GEN_11; // @[Reg.scala 12:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107768.4]
  wire  _GEN_12; // @[Reg.scala 12:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107768.4]
  wire  _GEN_13; // @[Reg.scala 12:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107768.4]
  wire  _GEN_14; // @[Reg.scala 12:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107768.4]
  wire  _GEN_15; // @[Reg.scala 12:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107768.4]
  wire [48:0] _GEN_16; // @[Reg.scala 12:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107794.4]
  wire [2:0] _GEN_17; // @[Reg.scala 12:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107805.4]
  wire [2:0] _GEN_18; // @[Reg.scala 12:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107816.4]
  wire  _GEN_19; // @[Reg.scala 12:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107827.4]
  wire  _GEN_21; // @[Reg.scala 12:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107853.4]
  wire [26:0] _GEN_22; // @[Reg.scala 12:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107864.4]
  wire [9:0] _GEN_23; // @[Reg.scala 12:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107864.4]
  wire  _GEN_24; // @[Reg.scala 12:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107864.4]
  wire  _GEN_25; // @[Reg.scala 12:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107864.4]
  wire  _GEN_26; // @[Reg.scala 12:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107864.4]
  wire  _GEN_27; // @[Reg.scala 12:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107864.4]
  wire [2:0] _GEN_28; // @[Reg.scala 12:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107880.4]
  wire  _GEN_29; // @[Reg.scala 12:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107891.4]
  MIV_RV32IMAF_L1_AHB_C0_MIV_RV32IMAF_L1_AHB_C0_0_MIV_RV32IMAF_L1_AHB_MUL_ADD_REC_FNTO_RAW_PRE_MUL mulAddRecFNToRaw_preMul ( // @[FPU.scala 565:15:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107745.4]
    .io_op(mulAddRecFNToRaw_preMul_io_op),
    .io_a(mulAddRecFNToRaw_preMul_io_a),
    .io_b(mulAddRecFNToRaw_preMul_io_b),
    .io_c(mulAddRecFNToRaw_preMul_io_c),
    .io_mulAddA(mulAddRecFNToRaw_preMul_io_mulAddA),
    .io_mulAddB(mulAddRecFNToRaw_preMul_io_mulAddB),
    .io_mulAddC(mulAddRecFNToRaw_preMul_io_mulAddC),
    .io_toPostMul_isSigNaNAny(mulAddRecFNToRaw_preMul_io_toPostMul_isSigNaNAny),
    .io_toPostMul_isNaNAOrB(mulAddRecFNToRaw_preMul_io_toPostMul_isNaNAOrB),
    .io_toPostMul_isInfA(mulAddRecFNToRaw_preMul_io_toPostMul_isInfA),
    .io_toPostMul_isZeroA(mulAddRecFNToRaw_preMul_io_toPostMul_isZeroA),
    .io_toPostMul_isInfB(mulAddRecFNToRaw_preMul_io_toPostMul_isInfB),
    .io_toPostMul_isZeroB(mulAddRecFNToRaw_preMul_io_toPostMul_isZeroB),
    .io_toPostMul_signProd(mulAddRecFNToRaw_preMul_io_toPostMul_signProd),
    .io_toPostMul_isNaNC(mulAddRecFNToRaw_preMul_io_toPostMul_isNaNC),
    .io_toPostMul_isInfC(mulAddRecFNToRaw_preMul_io_toPostMul_isInfC),
    .io_toPostMul_isZeroC(mulAddRecFNToRaw_preMul_io_toPostMul_isZeroC),
    .io_toPostMul_sExpSum(mulAddRecFNToRaw_preMul_io_toPostMul_sExpSum),
    .io_toPostMul_doSubMags(mulAddRecFNToRaw_preMul_io_toPostMul_doSubMags),
    .io_toPostMul_CIsDominant(mulAddRecFNToRaw_preMul_io_toPostMul_CIsDominant),
    .io_toPostMul_CDom_CAlignDist(mulAddRecFNToRaw_preMul_io_toPostMul_CDom_CAlignDist),
    .io_toPostMul_highAlignedSigC(mulAddRecFNToRaw_preMul_io_toPostMul_highAlignedSigC),
    .io_toPostMul_bit0AlignedSigC(mulAddRecFNToRaw_preMul_io_toPostMul_bit0AlignedSigC)
  );
  MIV_RV32IMAF_L1_AHB_C0_MIV_RV32IMAF_L1_AHB_C0_0_MIV_RV32IMAF_L1_AHB_MUL_ADD_REC_FNTO_RAW_POST_MUL mulAddRecFNToRaw_postMul ( // @[FPU.scala 567:15:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107749.4]
    .io_fromPreMul_isSigNaNAny(mulAddRecFNToRaw_postMul_io_fromPreMul_isSigNaNAny),
    .io_fromPreMul_isNaNAOrB(mulAddRecFNToRaw_postMul_io_fromPreMul_isNaNAOrB),
    .io_fromPreMul_isInfA(mulAddRecFNToRaw_postMul_io_fromPreMul_isInfA),
    .io_fromPreMul_isZeroA(mulAddRecFNToRaw_postMul_io_fromPreMul_isZeroA),
    .io_fromPreMul_isInfB(mulAddRecFNToRaw_postMul_io_fromPreMul_isInfB),
    .io_fromPreMul_isZeroB(mulAddRecFNToRaw_postMul_io_fromPreMul_isZeroB),
    .io_fromPreMul_signProd(mulAddRecFNToRaw_postMul_io_fromPreMul_signProd),
    .io_fromPreMul_isNaNC(mulAddRecFNToRaw_postMul_io_fromPreMul_isNaNC),
    .io_fromPreMul_isInfC(mulAddRecFNToRaw_postMul_io_fromPreMul_isInfC),
    .io_fromPreMul_isZeroC(mulAddRecFNToRaw_postMul_io_fromPreMul_isZeroC),
    .io_fromPreMul_sExpSum(mulAddRecFNToRaw_postMul_io_fromPreMul_sExpSum),
    .io_fromPreMul_doSubMags(mulAddRecFNToRaw_postMul_io_fromPreMul_doSubMags),
    .io_fromPreMul_CIsDominant(mulAddRecFNToRaw_postMul_io_fromPreMul_CIsDominant),
    .io_fromPreMul_CDom_CAlignDist(mulAddRecFNToRaw_postMul_io_fromPreMul_CDom_CAlignDist),
    .io_fromPreMul_highAlignedSigC(mulAddRecFNToRaw_postMul_io_fromPreMul_highAlignedSigC),
    .io_fromPreMul_bit0AlignedSigC(mulAddRecFNToRaw_postMul_io_fromPreMul_bit0AlignedSigC),
    .io_mulAddResult(mulAddRecFNToRaw_postMul_io_mulAddResult),
    .io_roundingMode(mulAddRecFNToRaw_postMul_io_roundingMode),
    .io_invalidExc(mulAddRecFNToRaw_postMul_io_invalidExc),
    .io_rawOut_isNaN(mulAddRecFNToRaw_postMul_io_rawOut_isNaN),
    .io_rawOut_isInf(mulAddRecFNToRaw_postMul_io_rawOut_isInf),
    .io_rawOut_isZero(mulAddRecFNToRaw_postMul_io_rawOut_isZero),
    .io_rawOut_sign(mulAddRecFNToRaw_postMul_io_rawOut_sign),
    .io_rawOut_sExp(mulAddRecFNToRaw_postMul_io_rawOut_sExp),
    .io_rawOut_sig(mulAddRecFNToRaw_postMul_io_rawOut_sig)
  );
  MIV_RV32IMAF_L1_AHB_C0_MIV_RV32IMAF_L1_AHB_C0_0_MIV_RV32IMAF_L1_AHB_ROUND_RAW_FNTO_REC_FN roundRawFNToRecFN ( // @[FPU.scala 593:35:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107846.4]
    .io_invalidExc(roundRawFNToRecFN_io_invalidExc),
    .io_infiniteExc(roundRawFNToRecFN_io_infiniteExc),
    .io_in_isNaN(roundRawFNToRecFN_io_in_isNaN),
    .io_in_isInf(roundRawFNToRecFN_io_in_isInf),
    .io_in_isZero(roundRawFNToRecFN_io_in_isZero),
    .io_in_sign(roundRawFNToRecFN_io_in_sign),
    .io_in_sExp(roundRawFNToRecFN_io_in_sExp),
    .io_in_sig(roundRawFNToRecFN_io_in_sig),
    .io_roundingMode(roundRawFNToRecFN_io_roundingMode),
    .io_detectTininess(roundRawFNToRecFN_io_detectTininess),
    .io_out(roundRawFNToRecFN_io_out),
    .io_exceptionFlags(roundRawFNToRecFN_io_exceptionFlags)
  );
  assign _T_12 = mulAddRecFNToRaw_preMul_io_mulAddA * mulAddRecFNToRaw_preMul_io_mulAddB; // @[FPU.scala 575:45:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107757.4]
  assign mulAddResult = _T_12 + mulAddRecFNToRaw_preMul_io_mulAddC; // @[FPU.scala 576:50:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107758.4]
  assign _GEN_0 = io_validin ? mulAddRecFNToRaw_preMul_io_toPostMul_bit0AlignedSigC : _T_20_bit0AlignedSigC; // @[Reg.scala 12:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107768.4]
  assign _GEN_1 = io_validin ? mulAddRecFNToRaw_preMul_io_toPostMul_highAlignedSigC : _T_20_highAlignedSigC; // @[Reg.scala 12:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107768.4]
  assign _GEN_2 = io_validin ? mulAddRecFNToRaw_preMul_io_toPostMul_CDom_CAlignDist : _T_20_CDom_CAlignDist; // @[Reg.scala 12:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107768.4]
  assign _GEN_3 = io_validin ? mulAddRecFNToRaw_preMul_io_toPostMul_CIsDominant : _T_20_CIsDominant; // @[Reg.scala 12:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107768.4]
  assign _GEN_4 = io_validin ? mulAddRecFNToRaw_preMul_io_toPostMul_doSubMags : _T_20_doSubMags; // @[Reg.scala 12:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107768.4]
  assign _GEN_5 = io_validin ? $signed(mulAddRecFNToRaw_preMul_io_toPostMul_sExpSum) : $signed(_T_20_sExpSum); // @[Reg.scala 12:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107768.4]
  assign _GEN_6 = io_validin ? mulAddRecFNToRaw_preMul_io_toPostMul_isZeroC : _T_20_isZeroC; // @[Reg.scala 12:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107768.4]
  assign _GEN_7 = io_validin ? mulAddRecFNToRaw_preMul_io_toPostMul_isInfC : _T_20_isInfC; // @[Reg.scala 12:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107768.4]
  assign _GEN_8 = io_validin ? mulAddRecFNToRaw_preMul_io_toPostMul_isNaNC : _T_20_isNaNC; // @[Reg.scala 12:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107768.4]
  assign _GEN_9 = io_validin ? mulAddRecFNToRaw_preMul_io_toPostMul_signProd : _T_20_signProd; // @[Reg.scala 12:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107768.4]
  assign _GEN_10 = io_validin ? mulAddRecFNToRaw_preMul_io_toPostMul_isZeroB : _T_20_isZeroB; // @[Reg.scala 12:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107768.4]
  assign _GEN_11 = io_validin ? mulAddRecFNToRaw_preMul_io_toPostMul_isInfB : _T_20_isInfB; // @[Reg.scala 12:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107768.4]
  assign _GEN_12 = io_validin ? mulAddRecFNToRaw_preMul_io_toPostMul_isZeroA : _T_20_isZeroA; // @[Reg.scala 12:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107768.4]
  assign _GEN_13 = io_validin ? mulAddRecFNToRaw_preMul_io_toPostMul_isInfA : _T_20_isInfA; // @[Reg.scala 12:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107768.4]
  assign _GEN_14 = io_validin ? mulAddRecFNToRaw_preMul_io_toPostMul_isNaNAOrB : _T_20_isNaNAOrB; // @[Reg.scala 12:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107768.4]
  assign _GEN_15 = io_validin ? mulAddRecFNToRaw_preMul_io_toPostMul_isSigNaNAny : _T_20_isSigNaNAny; // @[Reg.scala 12:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107768.4]
  assign _GEN_16 = io_validin ? mulAddResult : _T_31; // @[Reg.scala 12:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107794.4]
  assign _GEN_17 = io_validin ? io_roundingMode : _T_42; // @[Reg.scala 12:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107805.4]
  assign _GEN_18 = io_validin ? io_roundingMode : roundingMode_stage0; // @[Reg.scala 12:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107816.4]
  assign _GEN_19 = io_validin ? 1'h1 : detectTininess_stage0; // @[Reg.scala 12:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107827.4]
  assign _GEN_21 = valid_stage0 ? mulAddRecFNToRaw_postMul_io_invalidExc : _T_87; // @[Reg.scala 12:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107853.4]
  assign _GEN_22 = valid_stage0 ? mulAddRecFNToRaw_postMul_io_rawOut_sig : _T_98_sig; // @[Reg.scala 12:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107864.4]
  assign _GEN_23 = valid_stage0 ? $signed(mulAddRecFNToRaw_postMul_io_rawOut_sExp) : $signed(_T_98_sExp); // @[Reg.scala 12:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107864.4]
  assign _GEN_24 = valid_stage0 ? mulAddRecFNToRaw_postMul_io_rawOut_sign : _T_98_sign; // @[Reg.scala 12:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107864.4]
  assign _GEN_25 = valid_stage0 ? mulAddRecFNToRaw_postMul_io_rawOut_isZero : _T_98_isZero; // @[Reg.scala 12:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107864.4]
  assign _GEN_26 = valid_stage0 ? mulAddRecFNToRaw_postMul_io_rawOut_isInf : _T_98_isInf; // @[Reg.scala 12:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107864.4]
  assign _GEN_27 = valid_stage0 ? mulAddRecFNToRaw_postMul_io_rawOut_isNaN : _T_98_isNaN; // @[Reg.scala 12:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107864.4]
  assign _GEN_28 = valid_stage0 ? roundingMode_stage0 : _T_109; // @[Reg.scala 12:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107880.4]
  assign _GEN_29 = valid_stage0 ? detectTininess_stage0 : _T_120; // @[Reg.scala 12:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107891.4]
  assign io_out = roundRawFNToRecFN_io_out;
  assign io_exceptionFlags = roundRawFNToRecFN_io_exceptionFlags;
  assign mulAddRecFNToRaw_preMul_io_op = io_op;
  assign mulAddRecFNToRaw_preMul_io_a = io_a;
  assign mulAddRecFNToRaw_preMul_io_b = io_b;
  assign mulAddRecFNToRaw_preMul_io_c = io_c;
  assign mulAddRecFNToRaw_postMul_io_fromPreMul_isSigNaNAny = _T_20_isSigNaNAny;
  assign mulAddRecFNToRaw_postMul_io_fromPreMul_isNaNAOrB = _T_20_isNaNAOrB;
  assign mulAddRecFNToRaw_postMul_io_fromPreMul_isInfA = _T_20_isInfA;
  assign mulAddRecFNToRaw_postMul_io_fromPreMul_isZeroA = _T_20_isZeroA;
  assign mulAddRecFNToRaw_postMul_io_fromPreMul_isInfB = _T_20_isInfB;
  assign mulAddRecFNToRaw_postMul_io_fromPreMul_isZeroB = _T_20_isZeroB;
  assign mulAddRecFNToRaw_postMul_io_fromPreMul_signProd = _T_20_signProd;
  assign mulAddRecFNToRaw_postMul_io_fromPreMul_isNaNC = _T_20_isNaNC;
  assign mulAddRecFNToRaw_postMul_io_fromPreMul_isInfC = _T_20_isInfC;
  assign mulAddRecFNToRaw_postMul_io_fromPreMul_isZeroC = _T_20_isZeroC;
  assign mulAddRecFNToRaw_postMul_io_fromPreMul_sExpSum = _T_20_sExpSum;
  assign mulAddRecFNToRaw_postMul_io_fromPreMul_doSubMags = _T_20_doSubMags;
  assign mulAddRecFNToRaw_postMul_io_fromPreMul_CIsDominant = _T_20_CIsDominant;
  assign mulAddRecFNToRaw_postMul_io_fromPreMul_CDom_CAlignDist = _T_20_CDom_CAlignDist;
  assign mulAddRecFNToRaw_postMul_io_fromPreMul_highAlignedSigC = _T_20_highAlignedSigC;
  assign mulAddRecFNToRaw_postMul_io_fromPreMul_bit0AlignedSigC = _T_20_bit0AlignedSigC;
  assign mulAddRecFNToRaw_postMul_io_mulAddResult = _T_31;
  assign mulAddRecFNToRaw_postMul_io_roundingMode = _T_42;
  assign roundRawFNToRecFN_io_invalidExc = _T_87;
  assign roundRawFNToRecFN_io_infiniteExc = 1'h0;
  assign roundRawFNToRecFN_io_in_isNaN = _T_98_isNaN;
  assign roundRawFNToRecFN_io_in_isInf = _T_98_isInf;
  assign roundRawFNToRecFN_io_in_isZero = _T_98_isZero;
  assign roundRawFNToRecFN_io_in_sign = _T_98_sign;
  assign roundRawFNToRecFN_io_in_sExp = _T_98_sExp;
  assign roundRawFNToRecFN_io_in_sig = _T_98_sig;
  assign roundRawFNToRecFN_io_roundingMode = _T_109;
  assign roundRawFNToRecFN_io_detectTininess = _T_120;
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifndef verilator
      #0.002 begin end
    `endif
  `ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{$random}};
  _T_20_isSigNaNAny = _RAND_0[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{$random}};
  _T_20_isNaNAOrB = _RAND_1[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{$random}};
  _T_20_isInfA = _RAND_2[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{$random}};
  _T_20_isZeroA = _RAND_3[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{$random}};
  _T_20_isInfB = _RAND_4[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{$random}};
  _T_20_isZeroB = _RAND_5[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{$random}};
  _T_20_signProd = _RAND_6[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{$random}};
  _T_20_isNaNC = _RAND_7[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{$random}};
  _T_20_isInfC = _RAND_8[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {1{$random}};
  _T_20_isZeroC = _RAND_9[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_10 = {1{$random}};
  _T_20_sExpSum = _RAND_10[9:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_11 = {1{$random}};
  _T_20_doSubMags = _RAND_11[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_12 = {1{$random}};
  _T_20_CIsDominant = _RAND_12[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_13 = {1{$random}};
  _T_20_CDom_CAlignDist = _RAND_13[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_14 = {1{$random}};
  _T_20_highAlignedSigC = _RAND_14[25:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_15 = {1{$random}};
  _T_20_bit0AlignedSigC = _RAND_15[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_16 = {2{$random}};
  _T_31 = _RAND_16[48:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_17 = {1{$random}};
  _T_42 = _RAND_17[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_18 = {1{$random}};
  roundingMode_stage0 = _RAND_18[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_19 = {1{$random}};
  detectTininess_stage0 = _RAND_19[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_20 = {1{$random}};
  valid_stage0 = _RAND_20[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_21 = {1{$random}};
  _T_87 = _RAND_21[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_22 = {1{$random}};
  _T_98_isNaN = _RAND_22[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_23 = {1{$random}};
  _T_98_isInf = _RAND_23[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_24 = {1{$random}};
  _T_98_isZero = _RAND_24[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_25 = {1{$random}};
  _T_98_sign = _RAND_25[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_26 = {1{$random}};
  _T_98_sExp = _RAND_26[9:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_27 = {1{$random}};
  _T_98_sig = _RAND_27[26:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_28 = {1{$random}};
  _T_109 = _RAND_28[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_29 = {1{$random}};
  _T_120 = _RAND_29[0:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if (io_validin) begin
      _T_20_isSigNaNAny <= mulAddRecFNToRaw_preMul_io_toPostMul_isSigNaNAny;
    end
    if (io_validin) begin
      _T_20_isNaNAOrB <= mulAddRecFNToRaw_preMul_io_toPostMul_isNaNAOrB;
    end
    if (io_validin) begin
      _T_20_isInfA <= mulAddRecFNToRaw_preMul_io_toPostMul_isInfA;
    end
    if (io_validin) begin
      _T_20_isZeroA <= mulAddRecFNToRaw_preMul_io_toPostMul_isZeroA;
    end
    if (io_validin) begin
      _T_20_isInfB <= mulAddRecFNToRaw_preMul_io_toPostMul_isInfB;
    end
    if (io_validin) begin
      _T_20_isZeroB <= mulAddRecFNToRaw_preMul_io_toPostMul_isZeroB;
    end
    if (io_validin) begin
      _T_20_signProd <= mulAddRecFNToRaw_preMul_io_toPostMul_signProd;
    end
    if (io_validin) begin
      _T_20_isNaNC <= mulAddRecFNToRaw_preMul_io_toPostMul_isNaNC;
    end
    if (io_validin) begin
      _T_20_isInfC <= mulAddRecFNToRaw_preMul_io_toPostMul_isInfC;
    end
    if (io_validin) begin
      _T_20_isZeroC <= mulAddRecFNToRaw_preMul_io_toPostMul_isZeroC;
    end
    if (io_validin) begin
      _T_20_sExpSum <= mulAddRecFNToRaw_preMul_io_toPostMul_sExpSum;
    end
    if (io_validin) begin
      _T_20_doSubMags <= mulAddRecFNToRaw_preMul_io_toPostMul_doSubMags;
    end
    if (io_validin) begin
      _T_20_CIsDominant <= mulAddRecFNToRaw_preMul_io_toPostMul_CIsDominant;
    end
    if (io_validin) begin
      _T_20_CDom_CAlignDist <= mulAddRecFNToRaw_preMul_io_toPostMul_CDom_CAlignDist;
    end
    if (io_validin) begin
      _T_20_highAlignedSigC <= mulAddRecFNToRaw_preMul_io_toPostMul_highAlignedSigC;
    end
    if (io_validin) begin
      _T_20_bit0AlignedSigC <= mulAddRecFNToRaw_preMul_io_toPostMul_bit0AlignedSigC;
    end
    if (io_validin) begin
      _T_31 <= mulAddResult;
    end
    if (io_validin) begin
      _T_42 <= io_roundingMode;
    end
    if (io_validin) begin
      roundingMode_stage0 <= io_roundingMode;
    end
    if (io_validin) begin
      detectTininess_stage0 <= 1'h1;
    end
    if (reset) begin
      valid_stage0 <= 1'h0;
    end else begin
      valid_stage0 <= io_validin;
    end
    if (valid_stage0) begin
      _T_87 <= mulAddRecFNToRaw_postMul_io_invalidExc;
    end
    if (valid_stage0) begin
      _T_98_isNaN <= mulAddRecFNToRaw_postMul_io_rawOut_isNaN;
    end
    if (valid_stage0) begin
      _T_98_isInf <= mulAddRecFNToRaw_postMul_io_rawOut_isInf;
    end
    if (valid_stage0) begin
      _T_98_isZero <= mulAddRecFNToRaw_postMul_io_rawOut_isZero;
    end
    if (valid_stage0) begin
      _T_98_sign <= mulAddRecFNToRaw_postMul_io_rawOut_sign;
    end
    if (valid_stage0) begin
      _T_98_sExp <= mulAddRecFNToRaw_postMul_io_rawOut_sExp;
    end
    if (valid_stage0) begin
      _T_98_sig <= mulAddRecFNToRaw_postMul_io_rawOut_sig;
    end
    if (valid_stage0) begin
      _T_109 <= roundingMode_stage0;
    end
    if (valid_stage0) begin
      _T_120 <= detectTininess_stage0;
    end
  end
endmodule
