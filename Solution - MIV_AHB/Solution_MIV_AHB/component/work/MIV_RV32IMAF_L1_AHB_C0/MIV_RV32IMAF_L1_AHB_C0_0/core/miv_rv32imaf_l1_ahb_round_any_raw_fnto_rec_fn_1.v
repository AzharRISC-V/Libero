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
module MIV_RV32IMAF_L1_AHB_C0_MIV_RV32IMAF_L1_AHB_C0_0_MIV_RV32IMAF_L1_AHB_ROUND_ANY_RAW_FNTO_REC_FN_1( // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108404.2]
  input         io_in_isZero, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108407.4]
  input         io_in_sign, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108407.4]
  input  [6:0]  io_in_sExp, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108407.4]
  input  [32:0] io_in_sig, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108407.4]
  input  [2:0]  io_roundingMode, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108407.4]
  output [32:0] io_out, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108407.4]
  output [4:0]  io_exceptionFlags // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108407.4]
);
  wire  roundingMode_near_even; // @[RoundAnyRawFNToRecFN.scala 88:53:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108412.4]
  wire  roundingMode_min; // @[RoundAnyRawFNToRecFN.scala 90:53:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108414.4]
  wire  roundingMode_max; // @[RoundAnyRawFNToRecFN.scala 91:53:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108415.4]
  wire  roundingMode_near_maxMag; // @[RoundAnyRawFNToRecFN.scala 92:53:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108416.4]
  wire  roundingMode_odd; // @[RoundAnyRawFNToRecFN.scala 93:53:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108417.4]
  wire  _T_15; // @[RoundAnyRawFNToRecFN.scala 96:27:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108418.4]
  wire  _T_17; // @[RoundAnyRawFNToRecFN.scala 96:66:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108419.4]
  wire  _T_18; // @[RoundAnyRawFNToRecFN.scala 96:63:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108420.4]
  wire  roundMagUp; // @[RoundAnyRawFNToRecFN.scala 96:42:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108421.4]
  wire [8:0] _GEN_0; // @[RoundAnyRawFNToRecFN.scala 102:25:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108422.4]
  wire [9:0] _T_20; // @[RoundAnyRawFNToRecFN.scala 102:25:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108422.4]
  wire [8:0] _T_21; // @[RoundAnyRawFNToRecFN.scala 104:14:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108423.4]
  wire [9:0] sAdjustedExp; // @[RoundAnyRawFNToRecFN.scala 104:31:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108424.4]
  wire [25:0] _T_22; // @[RoundAnyRawFNToRecFN.scala 114:26:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108425.4]
  wire [6:0] _T_23; // @[RoundAnyRawFNToRecFN.scala 115:26:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108426.4]
  wire  _T_25; // @[RoundAnyRawFNToRecFN.scala 115:60:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108427.4]
  wire [26:0] adjustedSig; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108428.4]
  wire [26:0] _T_41; // @[RoundAnyRawFNToRecFN.scala 162:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108447.4]
  wire  _T_43; // @[RoundAnyRawFNToRecFN.scala 162:56:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108448.4]
  wire [26:0] _T_44; // @[RoundAnyRawFNToRecFN.scala 163:42:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108449.4]
  wire  _T_46; // @[RoundAnyRawFNToRecFN.scala 163:62:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108450.4]
  wire  common_inexact; // @[RoundAnyRawFNToRecFN.scala 164:36:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108451.4]
  wire  _T_48; // @[RoundAnyRawFNToRecFN.scala 167:38:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108452.4]
  wire  _T_49; // @[RoundAnyRawFNToRecFN.scala 167:67:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108453.4]
  wire  _T_50; // @[RoundAnyRawFNToRecFN.scala 169:29:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108454.4]
  wire  _T_51; // @[RoundAnyRawFNToRecFN.scala 168:31:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108455.4]
  wire [26:0] _T_52; // @[RoundAnyRawFNToRecFN.scala 172:32:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108456.4]
  wire [24:0] _T_53; // @[RoundAnyRawFNToRecFN.scala 172:44:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108457.4]
  wire [25:0] _T_55; // @[RoundAnyRawFNToRecFN.scala 172:49:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108458.4]
  wire  _T_56; // @[RoundAnyRawFNToRecFN.scala 173:49:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108459.4]
  wire  _T_58; // @[RoundAnyRawFNToRecFN.scala 174:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108460.4]
  wire  _T_59; // @[RoundAnyRawFNToRecFN.scala 173:64:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108461.4]
  wire [25:0] _T_62; // @[RoundAnyRawFNToRecFN.scala 173:25:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108463.4]
  wire [25:0] _T_63; // @[RoundAnyRawFNToRecFN.scala 173:21:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108464.4]
  wire [25:0] _T_64; // @[RoundAnyRawFNToRecFN.scala 172:61:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108465.4]
  wire [26:0] _T_66; // @[RoundAnyRawFNToRecFN.scala 178:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108467.4]
  wire [24:0] _T_67; // @[RoundAnyRawFNToRecFN.scala 178:43:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108468.4]
  wire  _T_68; // @[RoundAnyRawFNToRecFN.scala 179:42:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108469.4]
  wire [25:0] _T_71; // @[RoundAnyRawFNToRecFN.scala 179:24:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108471.4]
  wire [25:0] _GEN_1; // @[RoundAnyRawFNToRecFN.scala 178:47:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108472.4]
  wire [25:0] _T_72; // @[RoundAnyRawFNToRecFN.scala 178:47:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108472.4]
  wire [25:0] _T_73; // @[RoundAnyRawFNToRecFN.scala 171:16:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108473.4]
  wire [1:0] _T_74; // @[RoundAnyRawFNToRecFN.scala 183:54:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108474.4]
  wire [2:0] _T_75; // @[RoundAnyRawFNToRecFN.scala 183:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108475.4]
  wire [9:0] _GEN_2; // @[RoundAnyRawFNToRecFN.scala 183:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108476.4]
  wire [10:0] _T_76; // @[RoundAnyRawFNToRecFN.scala 183:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108476.4]
  wire [8:0] common_expOut; // @[RoundAnyRawFNToRecFN.scala 185:37:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108477.4]
  wire [22:0] common_fractOut; // @[RoundAnyRawFNToRecFN.scala 189:27:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108480.4]
  wire  commonCase; // @[RoundAnyRawFNToRecFN.scala 235:64:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108508.4]
  wire  inexact; // @[RoundAnyRawFNToRecFN.scala 238:43:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108512.4]
  wire [8:0] _T_119; // @[RoundAnyRawFNToRecFN.scala 251:18:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108525.4]
  wire [8:0] _T_120; // @[RoundAnyRawFNToRecFN.scala 251:14:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108526.4]
  wire [8:0] expOut; // @[RoundAnyRawFNToRecFN.scala 250:24:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108527.4]
  wire [22:0] fractOut; // @[RoundAnyRawFNToRecFN.scala 278:12:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108549.4]
  wire [9:0] _T_163; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108553.4]
  wire [32:0] _T_164; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108554.4]
  wire [1:0] _T_165; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108556.4]
  wire [4:0] _T_168; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108559.4]
  assign roundingMode_near_even = io_roundingMode == 3'h0; // @[RoundAnyRawFNToRecFN.scala 88:53:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108412.4]
  assign roundingMode_min = io_roundingMode == 3'h2; // @[RoundAnyRawFNToRecFN.scala 90:53:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108414.4]
  assign roundingMode_max = io_roundingMode == 3'h3; // @[RoundAnyRawFNToRecFN.scala 91:53:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108415.4]
  assign roundingMode_near_maxMag = io_roundingMode == 3'h4; // @[RoundAnyRawFNToRecFN.scala 92:53:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108416.4]
  assign roundingMode_odd = io_roundingMode == 3'h5; // @[RoundAnyRawFNToRecFN.scala 93:53:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108417.4]
  assign _T_15 = roundingMode_min & io_in_sign; // @[RoundAnyRawFNToRecFN.scala 96:27:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108418.4]
  assign _T_17 = io_in_sign == 1'h0; // @[RoundAnyRawFNToRecFN.scala 96:66:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108419.4]
  assign _T_18 = roundingMode_max & _T_17; // @[RoundAnyRawFNToRecFN.scala 96:63:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108420.4]
  assign roundMagUp = _T_15 | _T_18; // @[RoundAnyRawFNToRecFN.scala 96:42:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108421.4]
  assign _GEN_0 = {{2{io_in_sExp[6]}},io_in_sExp}; // @[RoundAnyRawFNToRecFN.scala 102:25:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108422.4]
  assign _T_20 = $signed(_GEN_0) + $signed(9'she0); // @[RoundAnyRawFNToRecFN.scala 102:25:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108422.4]
  assign _T_21 = _T_20[8:0]; // @[RoundAnyRawFNToRecFN.scala 104:14:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108423.4]
  assign sAdjustedExp = {1'b0,$signed(_T_21)}; // @[RoundAnyRawFNToRecFN.scala 104:31:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108424.4]
  assign _T_22 = io_in_sig[32:7]; // @[RoundAnyRawFNToRecFN.scala 114:26:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108425.4]
  assign _T_23 = io_in_sig[6:0]; // @[RoundAnyRawFNToRecFN.scala 115:26:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108426.4]
  assign _T_25 = _T_23 != 7'h0; // @[RoundAnyRawFNToRecFN.scala 115:60:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108427.4]
  assign adjustedSig = {_T_22,_T_25}; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108428.4]
  assign _T_41 = adjustedSig & 27'h2; // @[RoundAnyRawFNToRecFN.scala 162:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108447.4]
  assign _T_43 = _T_41 != 27'h0; // @[RoundAnyRawFNToRecFN.scala 162:56:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108448.4]
  assign _T_44 = adjustedSig & 27'h1; // @[RoundAnyRawFNToRecFN.scala 163:42:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108449.4]
  assign _T_46 = _T_44 != 27'h0; // @[RoundAnyRawFNToRecFN.scala 163:62:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108450.4]
  assign common_inexact = _T_43 | _T_46; // @[RoundAnyRawFNToRecFN.scala 164:36:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108451.4]
  assign _T_48 = roundingMode_near_even | roundingMode_near_maxMag; // @[RoundAnyRawFNToRecFN.scala 167:38:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108452.4]
  assign _T_49 = _T_48 & _T_43; // @[RoundAnyRawFNToRecFN.scala 167:67:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108453.4]
  assign _T_50 = roundMagUp & common_inexact; // @[RoundAnyRawFNToRecFN.scala 169:29:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108454.4]
  assign _T_51 = _T_49 | _T_50; // @[RoundAnyRawFNToRecFN.scala 168:31:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108455.4]
  assign _T_52 = adjustedSig | 27'h3; // @[RoundAnyRawFNToRecFN.scala 172:32:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108456.4]
  assign _T_53 = _T_52[26:2]; // @[RoundAnyRawFNToRecFN.scala 172:44:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108457.4]
  assign _T_55 = _T_53 + 25'h1; // @[RoundAnyRawFNToRecFN.scala 172:49:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108458.4]
  assign _T_56 = roundingMode_near_even & _T_43; // @[RoundAnyRawFNToRecFN.scala 173:49:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108459.4]
  assign _T_58 = _T_46 == 1'h0; // @[RoundAnyRawFNToRecFN.scala 174:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108460.4]
  assign _T_59 = _T_56 & _T_58; // @[RoundAnyRawFNToRecFN.scala 173:64:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108461.4]
  assign _T_62 = _T_59 ? 26'h1 : 26'h0; // @[RoundAnyRawFNToRecFN.scala 173:25:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108463.4]
  assign _T_63 = ~ _T_62; // @[RoundAnyRawFNToRecFN.scala 173:21:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108464.4]
  assign _T_64 = _T_55 & _T_63; // @[RoundAnyRawFNToRecFN.scala 172:61:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108465.4]
  assign _T_66 = adjustedSig & 27'h7fffffc; // @[RoundAnyRawFNToRecFN.scala 178:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108467.4]
  assign _T_67 = _T_66[26:2]; // @[RoundAnyRawFNToRecFN.scala 178:43:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108468.4]
  assign _T_68 = roundingMode_odd & common_inexact; // @[RoundAnyRawFNToRecFN.scala 179:42:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108469.4]
  assign _T_71 = _T_68 ? 26'h1 : 26'h0; // @[RoundAnyRawFNToRecFN.scala 179:24:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108471.4]
  assign _GEN_1 = {{1'd0}, _T_67}; // @[RoundAnyRawFNToRecFN.scala 178:47:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108472.4]
  assign _T_72 = _GEN_1 | _T_71; // @[RoundAnyRawFNToRecFN.scala 178:47:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108472.4]
  assign _T_73 = _T_51 ? _T_64 : _T_72; // @[RoundAnyRawFNToRecFN.scala 171:16:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108473.4]
  assign _T_74 = _T_73[25:24]; // @[RoundAnyRawFNToRecFN.scala 183:54:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108474.4]
  assign _T_75 = {1'b0,$signed(_T_74)}; // @[RoundAnyRawFNToRecFN.scala 183:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108475.4]
  assign _GEN_2 = {{7{_T_75[2]}},_T_75}; // @[RoundAnyRawFNToRecFN.scala 183:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108476.4]
  assign _T_76 = $signed(sAdjustedExp) + $signed(_GEN_2); // @[RoundAnyRawFNToRecFN.scala 183:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108476.4]
  assign common_expOut = _T_76[8:0]; // @[RoundAnyRawFNToRecFN.scala 185:37:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108477.4]
  assign common_fractOut = _T_73[22:0]; // @[RoundAnyRawFNToRecFN.scala 189:27:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108480.4]
  assign commonCase = io_in_isZero == 1'h0; // @[RoundAnyRawFNToRecFN.scala 235:64:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108508.4]
  assign inexact = commonCase & common_inexact; // @[RoundAnyRawFNToRecFN.scala 238:43:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108512.4]
  assign _T_119 = io_in_isZero ? 9'h1c0 : 9'h0; // @[RoundAnyRawFNToRecFN.scala 251:18:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108525.4]
  assign _T_120 = ~ _T_119; // @[RoundAnyRawFNToRecFN.scala 251:14:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108526.4]
  assign expOut = common_expOut & _T_120; // @[RoundAnyRawFNToRecFN.scala 250:24:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108527.4]
  assign fractOut = io_in_isZero ? 23'h0 : common_fractOut; // @[RoundAnyRawFNToRecFN.scala 278:12:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108549.4]
  assign _T_163 = {io_in_sign,expOut}; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108553.4]
  assign _T_164 = {_T_163,fractOut}; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108554.4]
  assign _T_165 = {1'h0,inexact}; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108556.4]
  assign _T_168 = {3'h0,_T_165}; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108559.4]
  assign io_out = _T_164;
  assign io_exceptionFlags = _T_168;
endmodule
