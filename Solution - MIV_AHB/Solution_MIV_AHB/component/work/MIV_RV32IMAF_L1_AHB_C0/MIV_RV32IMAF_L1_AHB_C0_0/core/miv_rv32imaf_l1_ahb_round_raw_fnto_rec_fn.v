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
module MIV_RV32IMAF_L1_AHB_C0_MIV_RV32IMAF_L1_AHB_C0_0_MIV_RV32IMAF_L1_AHB_ROUND_RAW_FNTO_REC_FN( // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107717.2]
  input         io_invalidExc, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107720.4]
  input         io_infiniteExc, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107720.4]
  input         io_in_isNaN, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107720.4]
  input         io_in_isInf, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107720.4]
  input         io_in_isZero, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107720.4]
  input         io_in_sign, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107720.4]
  input  [9:0]  io_in_sExp, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107720.4]
  input  [26:0] io_in_sig, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107720.4]
  input  [2:0]  io_roundingMode, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107720.4]
  input         io_detectTininess, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107720.4]
  output [32:0] io_out, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107720.4]
  output [4:0]  io_exceptionFlags // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107720.4]
);
  wire  roundAnyRawFNToRecFN_io_invalidExc; // @[RoundAnyRawFNToRecFN.scala 307:15:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107725.4]
  wire  roundAnyRawFNToRecFN_io_infiniteExc; // @[RoundAnyRawFNToRecFN.scala 307:15:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107725.4]
  wire  roundAnyRawFNToRecFN_io_in_isNaN; // @[RoundAnyRawFNToRecFN.scala 307:15:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107725.4]
  wire  roundAnyRawFNToRecFN_io_in_isInf; // @[RoundAnyRawFNToRecFN.scala 307:15:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107725.4]
  wire  roundAnyRawFNToRecFN_io_in_isZero; // @[RoundAnyRawFNToRecFN.scala 307:15:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107725.4]
  wire  roundAnyRawFNToRecFN_io_in_sign; // @[RoundAnyRawFNToRecFN.scala 307:15:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107725.4]
  wire [9:0] roundAnyRawFNToRecFN_io_in_sExp; // @[RoundAnyRawFNToRecFN.scala 307:15:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107725.4]
  wire [26:0] roundAnyRawFNToRecFN_io_in_sig; // @[RoundAnyRawFNToRecFN.scala 307:15:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107725.4]
  wire [2:0] roundAnyRawFNToRecFN_io_roundingMode; // @[RoundAnyRawFNToRecFN.scala 307:15:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107725.4]
  wire  roundAnyRawFNToRecFN_io_detectTininess; // @[RoundAnyRawFNToRecFN.scala 307:15:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107725.4]
  wire [32:0] roundAnyRawFNToRecFN_io_out; // @[RoundAnyRawFNToRecFN.scala 307:15:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107725.4]
  wire [4:0] roundAnyRawFNToRecFN_io_exceptionFlags; // @[RoundAnyRawFNToRecFN.scala 307:15:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107725.4]
  MIV_RV32IMAF_L1_AHB_C0_MIV_RV32IMAF_L1_AHB_C0_0_MIV_RV32IMAF_L1_AHB_ROUND_ANY_RAW_FNTO_REC_FN roundAnyRawFNToRecFN ( // @[RoundAnyRawFNToRecFN.scala 307:15:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107725.4]
    .io_invalidExc(roundAnyRawFNToRecFN_io_invalidExc),
    .io_infiniteExc(roundAnyRawFNToRecFN_io_infiniteExc),
    .io_in_isNaN(roundAnyRawFNToRecFN_io_in_isNaN),
    .io_in_isInf(roundAnyRawFNToRecFN_io_in_isInf),
    .io_in_isZero(roundAnyRawFNToRecFN_io_in_isZero),
    .io_in_sign(roundAnyRawFNToRecFN_io_in_sign),
    .io_in_sExp(roundAnyRawFNToRecFN_io_in_sExp),
    .io_in_sig(roundAnyRawFNToRecFN_io_in_sig),
    .io_roundingMode(roundAnyRawFNToRecFN_io_roundingMode),
    .io_detectTininess(roundAnyRawFNToRecFN_io_detectTininess),
    .io_out(roundAnyRawFNToRecFN_io_out),
    .io_exceptionFlags(roundAnyRawFNToRecFN_io_exceptionFlags)
  );
  assign io_out = roundAnyRawFNToRecFN_io_out;
  assign io_exceptionFlags = roundAnyRawFNToRecFN_io_exceptionFlags;
  assign roundAnyRawFNToRecFN_io_invalidExc = io_invalidExc;
  assign roundAnyRawFNToRecFN_io_infiniteExc = io_infiniteExc;
  assign roundAnyRawFNToRecFN_io_in_isNaN = io_in_isNaN;
  assign roundAnyRawFNToRecFN_io_in_isInf = io_in_isInf;
  assign roundAnyRawFNToRecFN_io_in_isZero = io_in_isZero;
  assign roundAnyRawFNToRecFN_io_in_sign = io_in_sign;
  assign roundAnyRawFNToRecFN_io_in_sExp = io_in_sExp;
  assign roundAnyRawFNToRecFN_io_in_sig = io_in_sig;
  assign roundAnyRawFNToRecFN_io_roundingMode = io_roundingMode;
  assign roundAnyRawFNToRecFN_io_detectTininess = io_detectTininess;
endmodule
