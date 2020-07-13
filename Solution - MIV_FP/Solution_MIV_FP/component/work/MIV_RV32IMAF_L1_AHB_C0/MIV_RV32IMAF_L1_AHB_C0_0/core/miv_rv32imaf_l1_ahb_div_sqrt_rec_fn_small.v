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
module MIV_RV32IMAF_L1_AHB_C0_MIV_RV32IMAF_L1_AHB_C0_0_MIV_RV32IMAF_L1_AHB_DIV_SQRT_REC_FN_SMALL( // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109616.2]
  input         clock, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109617.4]
  input         reset, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109618.4]
  output        io_inReady, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109619.4]
  input         io_inValid, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109619.4]
  input         io_sqrtOp, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109619.4]
  input  [32:0] io_a, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109619.4]
  input  [32:0] io_b, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109619.4]
  input  [2:0]  io_roundingMode, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109619.4]
  output        io_outValid_div, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109619.4]
  output        io_outValid_sqrt, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109619.4]
  output [32:0] io_out, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109619.4]
  output [4:0]  io_exceptionFlags // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109619.4]
);
  wire  divSqrtRecFNToRaw_clock; // @[DivSqrtRecFN_small.scala 267:15:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109624.4]
  wire  divSqrtRecFNToRaw_reset; // @[DivSqrtRecFN_small.scala 267:15:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109624.4]
  wire  divSqrtRecFNToRaw_io_inReady; // @[DivSqrtRecFN_small.scala 267:15:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109624.4]
  wire  divSqrtRecFNToRaw_io_inValid; // @[DivSqrtRecFN_small.scala 267:15:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109624.4]
  wire  divSqrtRecFNToRaw_io_sqrtOp; // @[DivSqrtRecFN_small.scala 267:15:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109624.4]
  wire [32:0] divSqrtRecFNToRaw_io_a; // @[DivSqrtRecFN_small.scala 267:15:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109624.4]
  wire [32:0] divSqrtRecFNToRaw_io_b; // @[DivSqrtRecFN_small.scala 267:15:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109624.4]
  wire [2:0] divSqrtRecFNToRaw_io_roundingMode; // @[DivSqrtRecFN_small.scala 267:15:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109624.4]
  wire  divSqrtRecFNToRaw_io_rawOutValid_div; // @[DivSqrtRecFN_small.scala 267:15:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109624.4]
  wire  divSqrtRecFNToRaw_io_rawOutValid_sqrt; // @[DivSqrtRecFN_small.scala 267:15:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109624.4]
  wire [2:0] divSqrtRecFNToRaw_io_roundingModeOut; // @[DivSqrtRecFN_small.scala 267:15:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109624.4]
  wire  divSqrtRecFNToRaw_io_invalidExc; // @[DivSqrtRecFN_small.scala 267:15:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109624.4]
  wire  divSqrtRecFNToRaw_io_infiniteExc; // @[DivSqrtRecFN_small.scala 267:15:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109624.4]
  wire  divSqrtRecFNToRaw_io_rawOut_isNaN; // @[DivSqrtRecFN_small.scala 267:15:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109624.4]
  wire  divSqrtRecFNToRaw_io_rawOut_isInf; // @[DivSqrtRecFN_small.scala 267:15:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109624.4]
  wire  divSqrtRecFNToRaw_io_rawOut_isZero; // @[DivSqrtRecFN_small.scala 267:15:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109624.4]
  wire  divSqrtRecFNToRaw_io_rawOut_sign; // @[DivSqrtRecFN_small.scala 267:15:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109624.4]
  wire [9:0] divSqrtRecFNToRaw_io_rawOut_sExp; // @[DivSqrtRecFN_small.scala 267:15:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109624.4]
  wire [26:0] divSqrtRecFNToRaw_io_rawOut_sig; // @[DivSqrtRecFN_small.scala 267:15:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109624.4]
  wire  roundRawFNToRecFN_io_invalidExc; // @[DivSqrtRecFN_small.scala 282:15:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109636.4]
  wire  roundRawFNToRecFN_io_infiniteExc; // @[DivSqrtRecFN_small.scala 282:15:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109636.4]
  wire  roundRawFNToRecFN_io_in_isNaN; // @[DivSqrtRecFN_small.scala 282:15:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109636.4]
  wire  roundRawFNToRecFN_io_in_isInf; // @[DivSqrtRecFN_small.scala 282:15:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109636.4]
  wire  roundRawFNToRecFN_io_in_isZero; // @[DivSqrtRecFN_small.scala 282:15:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109636.4]
  wire  roundRawFNToRecFN_io_in_sign; // @[DivSqrtRecFN_small.scala 282:15:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109636.4]
  wire [9:0] roundRawFNToRecFN_io_in_sExp; // @[DivSqrtRecFN_small.scala 282:15:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109636.4]
  wire [26:0] roundRawFNToRecFN_io_in_sig; // @[DivSqrtRecFN_small.scala 282:15:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109636.4]
  wire [2:0] roundRawFNToRecFN_io_roundingMode; // @[DivSqrtRecFN_small.scala 282:15:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109636.4]
  wire  roundRawFNToRecFN_io_detectTininess; // @[DivSqrtRecFN_small.scala 282:15:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109636.4]
  wire [32:0] roundRawFNToRecFN_io_out; // @[DivSqrtRecFN_small.scala 282:15:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109636.4]
  wire [4:0] roundRawFNToRecFN_io_exceptionFlags; // @[DivSqrtRecFN_small.scala 282:15:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109636.4]
  MIV_RV32IMAF_L1_AHB_C0_MIV_RV32IMAF_L1_AHB_C0_0_MIV_RV32IMAF_L1_AHB_DIV_SQRT_REC_FNTO_RAW_SMALL divSqrtRecFNToRaw ( // @[DivSqrtRecFN_small.scala 267:15:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109624.4]
    .clock(divSqrtRecFNToRaw_clock),
    .reset(divSqrtRecFNToRaw_reset),
    .io_inReady(divSqrtRecFNToRaw_io_inReady),
    .io_inValid(divSqrtRecFNToRaw_io_inValid),
    .io_sqrtOp(divSqrtRecFNToRaw_io_sqrtOp),
    .io_a(divSqrtRecFNToRaw_io_a),
    .io_b(divSqrtRecFNToRaw_io_b),
    .io_roundingMode(divSqrtRecFNToRaw_io_roundingMode),
    .io_rawOutValid_div(divSqrtRecFNToRaw_io_rawOutValid_div),
    .io_rawOutValid_sqrt(divSqrtRecFNToRaw_io_rawOutValid_sqrt),
    .io_roundingModeOut(divSqrtRecFNToRaw_io_roundingModeOut),
    .io_invalidExc(divSqrtRecFNToRaw_io_invalidExc),
    .io_infiniteExc(divSqrtRecFNToRaw_io_infiniteExc),
    .io_rawOut_isNaN(divSqrtRecFNToRaw_io_rawOut_isNaN),
    .io_rawOut_isInf(divSqrtRecFNToRaw_io_rawOut_isInf),
    .io_rawOut_isZero(divSqrtRecFNToRaw_io_rawOut_isZero),
    .io_rawOut_sign(divSqrtRecFNToRaw_io_rawOut_sign),
    .io_rawOut_sExp(divSqrtRecFNToRaw_io_rawOut_sExp),
    .io_rawOut_sig(divSqrtRecFNToRaw_io_rawOut_sig)
  );
  MIV_RV32IMAF_L1_AHB_C0_MIV_RV32IMAF_L1_AHB_C0_0_MIV_RV32IMAF_L1_AHB_ROUND_RAW_FNTO_REC_FN roundRawFNToRecFN ( // @[DivSqrtRecFN_small.scala 282:15:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109636.4]
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
  assign io_inReady = divSqrtRecFNToRaw_io_inReady;
  assign io_outValid_div = divSqrtRecFNToRaw_io_rawOutValid_div;
  assign io_outValid_sqrt = divSqrtRecFNToRaw_io_rawOutValid_sqrt;
  assign io_out = roundRawFNToRecFN_io_out;
  assign io_exceptionFlags = roundRawFNToRecFN_io_exceptionFlags;
  assign divSqrtRecFNToRaw_clock = clock;
  assign divSqrtRecFNToRaw_reset = reset;
  assign divSqrtRecFNToRaw_io_inValid = io_inValid;
  assign divSqrtRecFNToRaw_io_sqrtOp = io_sqrtOp;
  assign divSqrtRecFNToRaw_io_a = io_a;
  assign divSqrtRecFNToRaw_io_b = io_b;
  assign divSqrtRecFNToRaw_io_roundingMode = io_roundingMode;
  assign roundRawFNToRecFN_io_invalidExc = divSqrtRecFNToRaw_io_invalidExc;
  assign roundRawFNToRecFN_io_infiniteExc = divSqrtRecFNToRaw_io_infiniteExc;
  assign roundRawFNToRecFN_io_in_isNaN = divSqrtRecFNToRaw_io_rawOut_isNaN;
  assign roundRawFNToRecFN_io_in_isInf = divSqrtRecFNToRaw_io_rawOut_isInf;
  assign roundRawFNToRecFN_io_in_isZero = divSqrtRecFNToRaw_io_rawOut_isZero;
  assign roundRawFNToRecFN_io_in_sign = divSqrtRecFNToRaw_io_rawOut_sign;
  assign roundRawFNToRecFN_io_in_sExp = divSqrtRecFNToRaw_io_rawOut_sExp;
  assign roundRawFNToRecFN_io_in_sig = divSqrtRecFNToRaw_io_rawOut_sig;
  assign roundRawFNToRecFN_io_roundingMode = divSqrtRecFNToRaw_io_roundingModeOut;
  assign roundRawFNToRecFN_io_detectTininess = 1'h1;
endmodule
