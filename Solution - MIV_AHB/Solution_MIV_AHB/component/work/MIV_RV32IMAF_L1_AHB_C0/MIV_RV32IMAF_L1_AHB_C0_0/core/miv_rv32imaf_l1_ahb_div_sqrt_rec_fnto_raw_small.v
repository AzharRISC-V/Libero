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
module MIV_RV32IMAF_L1_AHB_C0_MIV_RV32IMAF_L1_AHB_C0_0_MIV_RV32IMAF_L1_AHB_DIV_SQRT_REC_FNTO_RAW_SMALL( // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109050.2]
  input         clock, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109051.4]
  input         reset, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109052.4]
  output        io_inReady, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109053.4]
  input         io_inValid, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109053.4]
  input         io_sqrtOp, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109053.4]
  input  [32:0] io_a, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109053.4]
  input  [32:0] io_b, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109053.4]
  input  [2:0]  io_roundingMode, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109053.4]
  output        io_rawOutValid_div, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109053.4]
  output        io_rawOutValid_sqrt, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109053.4]
  output [2:0]  io_roundingModeOut, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109053.4]
  output        io_invalidExc, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109053.4]
  output        io_infiniteExc, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109053.4]
  output        io_rawOut_isNaN, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109053.4]
  output        io_rawOut_isInf, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109053.4]
  output        io_rawOut_isZero, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109053.4]
  output        io_rawOut_sign, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109053.4]
  output [9:0]  io_rawOut_sExp, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109053.4]
  output [26:0] io_rawOut_sig // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109053.4]
);
  reg [4:0] cycleNum; // @[DivSqrtRecFN_small.scala 73:29:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109058.4]
  reg [31:0] _RAND_0;
  reg  sqrtOp_Z; // @[DivSqrtRecFN_small.scala 75:29:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109059.4]
  reg [31:0] _RAND_1;
  reg  majorExc_Z; // @[DivSqrtRecFN_small.scala 76:29:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109060.4]
  reg [31:0] _RAND_2;
  reg  isNaN_Z; // @[DivSqrtRecFN_small.scala 78:29:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109061.4]
  reg [31:0] _RAND_3;
  reg  isInf_Z; // @[DivSqrtRecFN_small.scala 79:29:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109062.4]
  reg [31:0] _RAND_4;
  reg  isZero_Z; // @[DivSqrtRecFN_small.scala 80:29:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109063.4]
  reg [31:0] _RAND_5;
  reg  sign_Z; // @[DivSqrtRecFN_small.scala 81:29:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109064.4]
  reg [31:0] _RAND_6;
  reg [9:0] sExp_Z; // @[DivSqrtRecFN_small.scala 82:29:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109065.4]
  reg [31:0] _RAND_7;
  reg [22:0] fractB_Z; // @[DivSqrtRecFN_small.scala 83:29:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109066.4]
  reg [31:0] _RAND_8;
  reg [2:0] roundingMode_Z; // @[DivSqrtRecFN_small.scala 84:29:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109067.4]
  reg [31:0] _RAND_9;
  reg [25:0] rem_Z; // @[DivSqrtRecFN_small.scala 90:29:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109068.4]
  reg [31:0] _RAND_10;
  reg  notZeroRem_Z; // @[DivSqrtRecFN_small.scala 91:29:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109069.4]
  reg [31:0] _RAND_11;
  reg [25:0] sigX_Z; // @[DivSqrtRecFN_small.scala 92:29:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109070.4]
  reg [31:0] _RAND_12;
  wire [8:0] _T_28; // @[rawFloatFromRecFN.scala 50:21:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109071.4]
  wire [2:0] _T_29; // @[rawFloatFromRecFN.scala 51:29:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109072.4]
  wire  rawA_S_isZero; // @[rawFloatFromRecFN.scala 51:54:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109073.4]
  wire [1:0] _T_32; // @[rawFloatFromRecFN.scala 52:29:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109074.4]
  wire  _T_34; // @[rawFloatFromRecFN.scala 52:54:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109075.4]
  wire  _T_36; // @[rawFloatFromRecFN.scala 55:41:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109078.4]
  wire  rawA_S_isNaN; // @[rawFloatFromRecFN.scala 55:33:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109079.4]
  wire  _T_40; // @[rawFloatFromRecFN.scala 56:36:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109082.4]
  wire  rawA_S_isInf; // @[rawFloatFromRecFN.scala 56:33:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109083.4]
  wire  rawA_S_sign; // @[rawFloatFromRecFN.scala 58:25:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109086.4]
  wire [9:0] rawA_S_sExp; // @[rawFloatFromRecFN.scala 59:27:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109088.4]
  wire  _T_46; // @[rawFloatFromRecFN.scala 60:39:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109090.4]
  wire [22:0] _T_47; // @[rawFloatFromRecFN.scala 60:51:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109091.4]
  wire [1:0] _T_48; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109092.4]
  wire [24:0] rawA_S_sig; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109093.4]
  wire [8:0] _T_50; // @[rawFloatFromRecFN.scala 50:21:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109095.4]
  wire [2:0] _T_51; // @[rawFloatFromRecFN.scala 51:29:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109096.4]
  wire  rawB_S_isZero; // @[rawFloatFromRecFN.scala 51:54:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109097.4]
  wire [1:0] _T_54; // @[rawFloatFromRecFN.scala 52:29:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109098.4]
  wire  _T_56; // @[rawFloatFromRecFN.scala 52:54:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109099.4]
  wire  _T_58; // @[rawFloatFromRecFN.scala 55:41:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109102.4]
  wire  rawB_S_isNaN; // @[rawFloatFromRecFN.scala 55:33:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109103.4]
  wire  _T_62; // @[rawFloatFromRecFN.scala 56:36:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109106.4]
  wire  rawB_S_isInf; // @[rawFloatFromRecFN.scala 56:33:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109107.4]
  wire  rawB_S_sign; // @[rawFloatFromRecFN.scala 58:25:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109110.4]
  wire [9:0] rawB_S_sExp; // @[rawFloatFromRecFN.scala 59:27:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109112.4]
  wire  _T_68; // @[rawFloatFromRecFN.scala 60:39:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109114.4]
  wire [22:0] _T_69; // @[rawFloatFromRecFN.scala 60:51:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109115.4]
  wire [1:0] _T_70; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109116.4]
  wire [24:0] rawB_S_sig; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109117.4]
  wire  _T_72; // @[DivSqrtRecFN_small.scala 101:24:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109119.4]
  wire  _T_73; // @[DivSqrtRecFN_small.scala 101:59:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109120.4]
  wire  notSigNaNIn_invalidExc_S_div; // @[DivSqrtRecFN_small.scala 101:42:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109121.4]
  wire  _T_75; // @[DivSqrtRecFN_small.scala 103:9:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109122.4]
  wire  _T_78; // @[DivSqrtRecFN_small.scala 103:24:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109124.4]
  wire  notSigNaNIn_invalidExc_S_sqrt; // @[DivSqrtRecFN_small.scala 103:43:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109125.4]
  wire  _T_79; // @[common.scala 81:57:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109126.4]
  wire  _T_81; // @[common.scala 81:49:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109127.4]
  wire  _T_82; // @[common.scala 81:46:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109128.4]
  wire  _T_83; // @[DivSqrtRecFN_small.scala 106:38:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109129.4]
  wire  _T_88; // @[common.scala 81:57:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109133.4]
  wire  _T_90; // @[common.scala 81:49:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109134.4]
  wire  _T_91; // @[common.scala 81:46:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109135.4]
  wire  _T_92; // @[DivSqrtRecFN_small.scala 107:38:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109136.4]
  wire  _T_93; // @[DivSqrtRecFN_small.scala 107:66:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109137.4]
  wire  _T_97; // @[DivSqrtRecFN_small.scala 109:36:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109139.4]
  wire  _T_98; // @[DivSqrtRecFN_small.scala 109:33:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109140.4]
  wire  _T_99; // @[DivSqrtRecFN_small.scala 109:51:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109141.4]
  wire  _T_100; // @[DivSqrtRecFN_small.scala 108:46:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109142.4]
  wire  majorExc_S; // @[DivSqrtRecFN_small.scala 105:12:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109143.4]
  wire  _T_101; // @[DivSqrtRecFN_small.scala 113:26:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109144.4]
  wire  _T_102; // @[DivSqrtRecFN_small.scala 114:26:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109145.4]
  wire  _T_103; // @[DivSqrtRecFN_small.scala 114:42:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109146.4]
  wire  isNaN_S; // @[DivSqrtRecFN_small.scala 112:12:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109147.4]
  wire  _T_104; // @[DivSqrtRecFN_small.scala 116:63:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109148.4]
  wire  isInf_S; // @[DivSqrtRecFN_small.scala 116:23:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109149.4]
  wire  _T_105; // @[DivSqrtRecFN_small.scala 117:64:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109150.4]
  wire  isZero_S; // @[DivSqrtRecFN_small.scala 117:23:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109151.4]
  wire  _T_107; // @[DivSqrtRecFN_small.scala 118:33:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109152.4]
  wire  _T_108; // @[DivSqrtRecFN_small.scala 118:45:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109153.4]
  wire  sign_S; // @[DivSqrtRecFN_small.scala 118:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109154.4]
  wire  _T_109; // @[DivSqrtRecFN_small.scala 120:39:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109155.4]
  wire  specialCaseA_S; // @[DivSqrtRecFN_small.scala 120:55:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109156.4]
  wire  _T_110; // @[DivSqrtRecFN_small.scala 121:39:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109157.4]
  wire  specialCaseB_S; // @[DivSqrtRecFN_small.scala 121:55:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109158.4]
  wire  _T_112; // @[DivSqrtRecFN_small.scala 122:28:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109159.4]
  wire  _T_114; // @[DivSqrtRecFN_small.scala 122:48:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109160.4]
  wire  normalCase_S_div; // @[DivSqrtRecFN_small.scala 122:45:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109161.4]
  wire  _T_118; // @[DivSqrtRecFN_small.scala 123:49:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109163.4]
  wire  normalCase_S_sqrt; // @[DivSqrtRecFN_small.scala 123:46:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109164.4]
  wire  normalCase_S; // @[DivSqrtRecFN_small.scala 124:27:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109165.4]
  wire  _T_119; // @[DivSqrtRecFN_small.scala 128:28:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109166.4]
  wire [7:0] _T_120; // @[DivSqrtRecFN_small.scala 128:52:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109167.4]
  wire [7:0] _T_121; // @[DivSqrtRecFN_small.scala 128:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109168.4]
  wire [8:0] _T_122; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109169.4]
  wire [8:0] _T_123; // @[DivSqrtRecFN_small.scala 128:71:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109170.4]
  wire [9:0] _GEN_13; // @[DivSqrtRecFN_small.scala 127:21:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109171.4]
  wire [10:0] sExpQuot_S_div; // @[DivSqrtRecFN_small.scala 127:21:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109171.4]
  wire  _T_125; // @[DivSqrtRecFN_small.scala 131:50:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109172.4]
  wire [3:0] _T_127; // @[DivSqrtRecFN_small.scala 133:31:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109173.4]
  wire [3:0] _T_128; // @[DivSqrtRecFN_small.scala 131:16:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109174.4]
  wire [5:0] _T_129; // @[DivSqrtRecFN_small.scala 135:27:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109175.4]
  wire [9:0] _T_130; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109176.4]
  wire [9:0] sSatExpQuot_S_div; // @[DivSqrtRecFN_small.scala 136:11:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109177.4]
  wire  _T_131; // @[DivSqrtRecFN_small.scala 138:48:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109178.4]
  wire  _T_133; // @[DivSqrtRecFN_small.scala 138:35:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109179.4]
  wire  evenSqrt_S; // @[DivSqrtRecFN_small.scala 138:32:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109180.4]
  wire  oddSqrt_S; // @[DivSqrtRecFN_small.scala 139:32:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109182.4]
  wire  idle; // @[DivSqrtRecFN_small.scala 143:26:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109183.4]
  wire  inReady; // @[DivSqrtRecFN_small.scala 144:29:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109184.4]
  wire  entering; // @[DivSqrtRecFN_small.scala 145:28:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109185.4]
  wire  entering_normalCase; // @[DivSqrtRecFN_small.scala 146:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109186.4]
  wire  _T_138; // @[DivSqrtRecFN_small.scala 148:32:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109187.4]
  wire  _T_139; // @[DivSqrtRecFN_small.scala 148:54:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109188.4]
  wire  skipCycle2; // @[DivSqrtRecFN_small.scala 148:45:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109189.4]
  wire  _T_141; // @[DivSqrtRecFN_small.scala 150:11:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109190.4]
  wire  _T_142; // @[DivSqrtRecFN_small.scala 150:18:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109191.4]
  wire  _T_144; // @[DivSqrtRecFN_small.scala 152:28:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109193.6]
  wire  _T_145; // @[DivSqrtRecFN_small.scala 152:26:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109194.6]
  wire [4:0] _T_152; // @[DivSqrtRecFN_small.scala 155:24:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109197.6]
  wire [4:0] _T_154; // @[DivSqrtRecFN_small.scala 154:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109198.6]
  wire [4:0] _T_156; // @[DivSqrtRecFN_small.scala 153:16:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109199.6]
  wire [4:0] _GEN_14; // @[DivSqrtRecFN_small.scala 152:62:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109200.6]
  wire [4:0] _T_157; // @[DivSqrtRecFN_small.scala 152:62:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109200.6]
  wire  _T_161; // @[DivSqrtRecFN_small.scala 160:27:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109202.6]
  wire  _T_162; // @[DivSqrtRecFN_small.scala 160:24:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109203.6]
  wire [5:0] _T_164; // @[DivSqrtRecFN_small.scala 160:50:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109204.6]
  wire [5:0] _T_165; // @[DivSqrtRecFN_small.scala 160:50:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109205.6]
  wire [4:0] _T_166; // @[DivSqrtRecFN_small.scala 160:50:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109206.6]
  wire [4:0] _T_168; // @[DivSqrtRecFN_small.scala 160:16:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109207.6]
  wire [4:0] _T_169; // @[DivSqrtRecFN_small.scala 159:15:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109208.6]
  wire  _T_172; // @[DivSqrtRecFN_small.scala 161:24:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109210.6]
  wire [4:0] _GEN_15; // @[DivSqrtRecFN_small.scala 160:70:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109212.6]
  wire [4:0] _T_176; // @[DivSqrtRecFN_small.scala 160:70:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109212.6]
  wire [4:0] _GEN_0; // @[DivSqrtRecFN_small.scala 150:33:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109192.4]
  wire  _GEN_1; // @[DivSqrtRecFN_small.scala 168:21:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109216.4]
  wire  _GEN_2; // @[DivSqrtRecFN_small.scala 168:21:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109216.4]
  wire  _GEN_3; // @[DivSqrtRecFN_small.scala 168:21:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109216.4]
  wire  _GEN_4; // @[DivSqrtRecFN_small.scala 168:21:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109216.4]
  wire  _GEN_5; // @[DivSqrtRecFN_small.scala 168:21:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109216.4]
  wire  _GEN_6; // @[DivSqrtRecFN_small.scala 168:21:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109216.4]
  wire [8:0] _T_177; // @[DivSqrtRecFN_small.scala 179:29:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109225.6]
  wire [9:0] _T_179; // @[DivSqrtRecFN_small.scala 179:34:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109226.6]
  wire [9:0] _T_180; // @[DivSqrtRecFN_small.scala 178:16:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109227.6]
  wire [9:0] _GEN_7; // @[DivSqrtRecFN_small.scala 176:32:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109224.4]
  wire [2:0] _GEN_8; // @[DivSqrtRecFN_small.scala 176:32:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109224.4]
  wire  _T_183; // @[DivSqrtRecFN_small.scala 184:31:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109232.4]
  wire [22:0] _T_184; // @[DivSqrtRecFN_small.scala 185:31:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109234.6]
  wire [22:0] _GEN_9; // @[DivSqrtRecFN_small.scala 184:47:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109233.4]
  wire  _T_186; // @[DivSqrtRecFN_small.scala 191:24:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109237.4]
  wire  _T_187; // @[DivSqrtRecFN_small.scala 191:21:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109238.4]
  wire [25:0] _GEN_16; // @[DivSqrtRecFN_small.scala 191:47:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109239.4]
  wire [25:0] _T_188; // @[DivSqrtRecFN_small.scala 191:47:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109239.4]
  wire [25:0] _T_190; // @[DivSqrtRecFN_small.scala 191:12:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109240.4]
  wire  _T_191; // @[DivSqrtRecFN_small.scala 192:21:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109241.4]
  wire [1:0] _T_192; // @[DivSqrtRecFN_small.scala 193:27:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109242.4]
  wire [2:0] _T_194; // @[DivSqrtRecFN_small.scala 193:56:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109243.4]
  wire [2:0] _T_195; // @[DivSqrtRecFN_small.scala 193:56:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109244.4]
  wire [1:0] _T_196; // @[DivSqrtRecFN_small.scala 193:56:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109245.4]
  wire [21:0] _T_197; // @[DivSqrtRecFN_small.scala 194:27:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109246.4]
  wire [24:0] _GEN_17; // @[DivSqrtRecFN_small.scala 194:44:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109247.4]
  wire [24:0] _T_198; // @[DivSqrtRecFN_small.scala 194:44:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109247.4]
  wire [26:0] _T_199; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109248.4]
  wire [26:0] _T_201; // @[DivSqrtRecFN_small.scala 192:12:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109249.4]
  wire [26:0] _GEN_18; // @[DivSqrtRecFN_small.scala 191:61:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109250.4]
  wire [26:0] _T_202; // @[DivSqrtRecFN_small.scala 191:61:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109250.4]
  wire  _T_204; // @[DivSqrtRecFN_small.scala 198:13:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109251.4]
  wire [26:0] _GEN_19; // @[DivSqrtRecFN_small.scala 198:29:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109252.4]
  wire [26:0] _T_205; // @[DivSqrtRecFN_small.scala 198:29:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109252.4]
  wire [26:0] _T_207; // @[DivSqrtRecFN_small.scala 198:12:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109253.4]
  wire [26:0] rem; // @[DivSqrtRecFN_small.scala 197:11:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109254.4]
  wire [31:0] _T_209; // @[DivSqrtRecFN_small.scala 199:27:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109255.4]
  wire [29:0] bitMask; // @[DivSqrtRecFN_small.scala 199:38:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109256.4]
  wire  _T_212; // @[DivSqrtRecFN_small.scala 201:21:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109258.4]
  wire [25:0] _GEN_20; // @[DivSqrtRecFN_small.scala 201:47:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109259.4]
  wire [25:0] _T_213; // @[DivSqrtRecFN_small.scala 201:47:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109259.4]
  wire [25:0] _T_215; // @[DivSqrtRecFN_small.scala 201:12:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109260.4]
  wire  _T_216; // @[DivSqrtRecFN_small.scala 202:21:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109261.4]
  wire [24:0] _T_219; // @[DivSqrtRecFN_small.scala 202:12:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109262.4]
  wire [25:0] _GEN_21; // @[DivSqrtRecFN_small.scala 201:79:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109263.4]
  wire [25:0] _T_220; // @[DivSqrtRecFN_small.scala 201:79:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109263.4]
  wire [25:0] _T_224; // @[DivSqrtRecFN_small.scala 203:12:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109265.4]
  wire [25:0] _T_225; // @[DivSqrtRecFN_small.scala 202:79:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109266.4]
  wire  _T_229; // @[DivSqrtRecFN_small.scala 204:26:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109268.4]
  wire  _T_230; // @[DivSqrtRecFN_small.scala 204:23:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109269.4]
  wire [23:0] _T_232; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109270.4]
  wire [24:0] _GEN_22; // @[DivSqrtRecFN_small.scala 204:63:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109271.4]
  wire [24:0] _T_233; // @[DivSqrtRecFN_small.scala 204:63:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109271.4]
  wire [24:0] _T_235; // @[DivSqrtRecFN_small.scala 204:12:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109272.4]
  wire [25:0] _GEN_23; // @[DivSqrtRecFN_small.scala 203:79:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109273.4]
  wire [25:0] _T_236; // @[DivSqrtRecFN_small.scala 203:79:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109273.4]
  wire  _T_239; // @[DivSqrtRecFN_small.scala 205:23:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109275.4]
  wire [26:0] _GEN_24; // @[DivSqrtRecFN_small.scala 205:44:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109276.4]
  wire [26:0] _T_240; // @[DivSqrtRecFN_small.scala 205:44:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109276.4]
  wire [29:0] _GEN_25; // @[DivSqrtRecFN_small.scala 205:48:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109277.4]
  wire [29:0] _T_241; // @[DivSqrtRecFN_small.scala 205:48:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109277.4]
  wire [29:0] _T_243; // @[DivSqrtRecFN_small.scala 205:12:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109278.4]
  wire [29:0] _GEN_26; // @[DivSqrtRecFN_small.scala 204:79:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109279.4]
  wire [29:0] trialTerm; // @[DivSqrtRecFN_small.scala 204:79:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109279.4]
  wire [27:0] _T_244; // @[DivSqrtRecFN_small.scala 206:24:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109280.4]
  wire [30:0] _T_245; // @[DivSqrtRecFN_small.scala 206:41:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109281.4]
  wire [30:0] _GEN_27; // @[DivSqrtRecFN_small.scala 206:29:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109282.4]
  wire [31:0] _T_246; // @[DivSqrtRecFN_small.scala 206:29:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109282.4]
  wire [30:0] _T_247; // @[DivSqrtRecFN_small.scala 206:29:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109283.4]
  wire [30:0] trialRem; // @[DivSqrtRecFN_small.scala 206:29:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109284.4]
  wire  newBit; // @[DivSqrtRecFN_small.scala 207:27:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109285.4]
  wire  _T_250; // @[DivSqrtRecFN_small.scala 209:44:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109286.4]
  wire  _T_251; // @[DivSqrtRecFN_small.scala 209:31:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109287.4]
  wire [30:0] _T_252; // @[DivSqrtRecFN_small.scala 210:39:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109289.6]
  wire [30:0] _T_253; // @[DivSqrtRecFN_small.scala 210:21:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109290.6]
  wire [30:0] _GEN_10; // @[DivSqrtRecFN_small.scala 209:56:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109288.4]
  wire  _T_256; // @[DivSqrtRecFN_small.scala 212:45:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109294.4]
  wire  _T_257; // @[DivSqrtRecFN_small.scala 212:31:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109295.4]
  wire  _T_259; // @[DivSqrtRecFN_small.scala 213:35:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109297.6]
  wire [25:0] _GEN_28; // @[DivSqrtRecFN_small.scala 215:47:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109301.6]
  wire [25:0] _T_263; // @[DivSqrtRecFN_small.scala 215:47:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109301.6]
  wire [25:0] _T_265; // @[DivSqrtRecFN_small.scala 215:16:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109302.6]
  wire  _T_266; // @[DivSqrtRecFN_small.scala 216:25:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109303.6]
  wire [24:0] _T_269; // @[DivSqrtRecFN_small.scala 216:16:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109304.6]
  wire [25:0] _GEN_29; // @[DivSqrtRecFN_small.scala 215:77:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109305.6]
  wire [25:0] _T_270; // @[DivSqrtRecFN_small.scala 215:77:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109305.6]
  wire [23:0] _GEN_30; // @[DivSqrtRecFN_small.scala 217:47:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109307.6]
  wire [23:0] _T_272; // @[DivSqrtRecFN_small.scala 217:47:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109307.6]
  wire [23:0] _T_274; // @[DivSqrtRecFN_small.scala 217:16:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109308.6]
  wire [25:0] _GEN_31; // @[DivSqrtRecFN_small.scala 216:77:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109309.6]
  wire [25:0] _T_275; // @[DivSqrtRecFN_small.scala 216:77:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109309.6]
  wire [29:0] _GEN_32; // @[DivSqrtRecFN_small.scala 218:48:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109311.6]
  wire [29:0] _T_278; // @[DivSqrtRecFN_small.scala 218:48:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109311.6]
  wire [29:0] _T_280; // @[DivSqrtRecFN_small.scala 218:16:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109312.6]
  wire [29:0] _GEN_33; // @[DivSqrtRecFN_small.scala 217:77:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109313.6]
  wire [29:0] _T_281; // @[DivSqrtRecFN_small.scala 217:77:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109313.6]
  wire  _GEN_11; // @[DivSqrtRecFN_small.scala 212:57:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109296.4]
  wire [29:0] _GEN_12; // @[DivSqrtRecFN_small.scala 212:57:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109296.4]
  wire  rawOutValid; // @[DivSqrtRecFN_small.scala 223:33:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109316.4]
  wire  _T_285; // @[DivSqrtRecFN_small.scala 225:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109318.4]
  wire  _T_286; // @[DivSqrtRecFN_small.scala 226:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109320.4]
  wire  _T_287; // @[DivSqrtRecFN_small.scala 228:36:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109323.4]
  wire  _T_289; // @[DivSqrtRecFN_small.scala 229:39:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109325.4]
  wire  _T_290; // @[DivSqrtRecFN_small.scala 229:36:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109326.4]
  wire [26:0] _GEN_35; // @[DivSqrtRecFN_small.scala 235:35:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109334.4]
  wire [26:0] _T_292; // @[DivSqrtRecFN_small.scala 235:35:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109334.4]
  assign _T_28 = io_a[31:23]; // @[rawFloatFromRecFN.scala 50:21:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109071.4]
  assign _T_29 = _T_28[8:6]; // @[rawFloatFromRecFN.scala 51:29:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109072.4]
  assign rawA_S_isZero = _T_29 == 3'h0; // @[rawFloatFromRecFN.scala 51:54:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109073.4]
  assign _T_32 = _T_28[8:7]; // @[rawFloatFromRecFN.scala 52:29:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109074.4]
  assign _T_34 = _T_32 == 2'h3; // @[rawFloatFromRecFN.scala 52:54:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109075.4]
  assign _T_36 = _T_28[6]; // @[rawFloatFromRecFN.scala 55:41:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109078.4]
  assign rawA_S_isNaN = _T_34 & _T_36; // @[rawFloatFromRecFN.scala 55:33:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109079.4]
  assign _T_40 = _T_36 == 1'h0; // @[rawFloatFromRecFN.scala 56:36:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109082.4]
  assign rawA_S_isInf = _T_34 & _T_40; // @[rawFloatFromRecFN.scala 56:33:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109083.4]
  assign rawA_S_sign = io_a[32]; // @[rawFloatFromRecFN.scala 58:25:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109086.4]
  assign rawA_S_sExp = {1'b0,$signed(_T_28)}; // @[rawFloatFromRecFN.scala 59:27:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109088.4]
  assign _T_46 = rawA_S_isZero == 1'h0; // @[rawFloatFromRecFN.scala 60:39:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109090.4]
  assign _T_47 = io_a[22:0]; // @[rawFloatFromRecFN.scala 60:51:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109091.4]
  assign _T_48 = {1'h0,_T_46}; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109092.4]
  assign rawA_S_sig = {_T_48,_T_47}; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109093.4]
  assign _T_50 = io_b[31:23]; // @[rawFloatFromRecFN.scala 50:21:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109095.4]
  assign _T_51 = _T_50[8:6]; // @[rawFloatFromRecFN.scala 51:29:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109096.4]
  assign rawB_S_isZero = _T_51 == 3'h0; // @[rawFloatFromRecFN.scala 51:54:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109097.4]
  assign _T_54 = _T_50[8:7]; // @[rawFloatFromRecFN.scala 52:29:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109098.4]
  assign _T_56 = _T_54 == 2'h3; // @[rawFloatFromRecFN.scala 52:54:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109099.4]
  assign _T_58 = _T_50[6]; // @[rawFloatFromRecFN.scala 55:41:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109102.4]
  assign rawB_S_isNaN = _T_56 & _T_58; // @[rawFloatFromRecFN.scala 55:33:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109103.4]
  assign _T_62 = _T_58 == 1'h0; // @[rawFloatFromRecFN.scala 56:36:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109106.4]
  assign rawB_S_isInf = _T_56 & _T_62; // @[rawFloatFromRecFN.scala 56:33:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109107.4]
  assign rawB_S_sign = io_b[32]; // @[rawFloatFromRecFN.scala 58:25:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109110.4]
  assign rawB_S_sExp = {1'b0,$signed(_T_50)}; // @[rawFloatFromRecFN.scala 59:27:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109112.4]
  assign _T_68 = rawB_S_isZero == 1'h0; // @[rawFloatFromRecFN.scala 60:39:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109114.4]
  assign _T_69 = io_b[22:0]; // @[rawFloatFromRecFN.scala 60:51:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109115.4]
  assign _T_70 = {1'h0,_T_68}; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109116.4]
  assign rawB_S_sig = {_T_70,_T_69}; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109117.4]
  assign _T_72 = rawA_S_isZero & rawB_S_isZero; // @[DivSqrtRecFN_small.scala 101:24:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109119.4]
  assign _T_73 = rawA_S_isInf & rawB_S_isInf; // @[DivSqrtRecFN_small.scala 101:59:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109120.4]
  assign notSigNaNIn_invalidExc_S_div = _T_72 | _T_73; // @[DivSqrtRecFN_small.scala 101:42:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109121.4]
  assign _T_75 = rawA_S_isNaN == 1'h0; // @[DivSqrtRecFN_small.scala 103:9:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109122.4]
  assign _T_78 = _T_75 & _T_46; // @[DivSqrtRecFN_small.scala 103:24:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109124.4]
  assign notSigNaNIn_invalidExc_S_sqrt = _T_78 & rawA_S_sign; // @[DivSqrtRecFN_small.scala 103:43:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109125.4]
  assign _T_79 = rawA_S_sig[22]; // @[common.scala 81:57:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109126.4]
  assign _T_81 = _T_79 == 1'h0; // @[common.scala 81:49:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109127.4]
  assign _T_82 = rawA_S_isNaN & _T_81; // @[common.scala 81:46:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109128.4]
  assign _T_83 = _T_82 | notSigNaNIn_invalidExc_S_sqrt; // @[DivSqrtRecFN_small.scala 106:38:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109129.4]
  assign _T_88 = rawB_S_sig[22]; // @[common.scala 81:57:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109133.4]
  assign _T_90 = _T_88 == 1'h0; // @[common.scala 81:49:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109134.4]
  assign _T_91 = rawB_S_isNaN & _T_90; // @[common.scala 81:46:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109135.4]
  assign _T_92 = _T_82 | _T_91; // @[DivSqrtRecFN_small.scala 107:38:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109136.4]
  assign _T_93 = _T_92 | notSigNaNIn_invalidExc_S_div; // @[DivSqrtRecFN_small.scala 107:66:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109137.4]
  assign _T_97 = rawA_S_isInf == 1'h0; // @[DivSqrtRecFN_small.scala 109:36:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109139.4]
  assign _T_98 = _T_75 & _T_97; // @[DivSqrtRecFN_small.scala 109:33:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109140.4]
  assign _T_99 = _T_98 & rawB_S_isZero; // @[DivSqrtRecFN_small.scala 109:51:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109141.4]
  assign _T_100 = _T_93 | _T_99; // @[DivSqrtRecFN_small.scala 108:46:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109142.4]
  assign majorExc_S = io_sqrtOp ? _T_83 : _T_100; // @[DivSqrtRecFN_small.scala 105:12:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109143.4]
  assign _T_101 = rawA_S_isNaN | notSigNaNIn_invalidExc_S_sqrt; // @[DivSqrtRecFN_small.scala 113:26:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109144.4]
  assign _T_102 = rawA_S_isNaN | rawB_S_isNaN; // @[DivSqrtRecFN_small.scala 114:26:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109145.4]
  assign _T_103 = _T_102 | notSigNaNIn_invalidExc_S_div; // @[DivSqrtRecFN_small.scala 114:42:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109146.4]
  assign isNaN_S = io_sqrtOp ? _T_101 : _T_103; // @[DivSqrtRecFN_small.scala 112:12:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109147.4]
  assign _T_104 = rawA_S_isInf | rawB_S_isZero; // @[DivSqrtRecFN_small.scala 116:63:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109148.4]
  assign isInf_S = io_sqrtOp ? rawA_S_isInf : _T_104; // @[DivSqrtRecFN_small.scala 116:23:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109149.4]
  assign _T_105 = rawA_S_isZero | rawB_S_isInf; // @[DivSqrtRecFN_small.scala 117:64:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109150.4]
  assign isZero_S = io_sqrtOp ? rawA_S_isZero : _T_105; // @[DivSqrtRecFN_small.scala 117:23:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109151.4]
  assign _T_107 = io_sqrtOp == 1'h0; // @[DivSqrtRecFN_small.scala 118:33:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109152.4]
  assign _T_108 = _T_107 & rawB_S_sign; // @[DivSqrtRecFN_small.scala 118:45:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109153.4]
  assign sign_S = rawA_S_sign ^ _T_108; // @[DivSqrtRecFN_small.scala 118:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109154.4]
  assign _T_109 = rawA_S_isNaN | rawA_S_isInf; // @[DivSqrtRecFN_small.scala 120:39:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109155.4]
  assign specialCaseA_S = _T_109 | rawA_S_isZero; // @[DivSqrtRecFN_small.scala 120:55:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109156.4]
  assign _T_110 = rawB_S_isNaN | rawB_S_isInf; // @[DivSqrtRecFN_small.scala 121:39:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109157.4]
  assign specialCaseB_S = _T_110 | rawB_S_isZero; // @[DivSqrtRecFN_small.scala 121:55:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109158.4]
  assign _T_112 = specialCaseA_S == 1'h0; // @[DivSqrtRecFN_small.scala 122:28:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109159.4]
  assign _T_114 = specialCaseB_S == 1'h0; // @[DivSqrtRecFN_small.scala 122:48:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109160.4]
  assign normalCase_S_div = _T_112 & _T_114; // @[DivSqrtRecFN_small.scala 122:45:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109161.4]
  assign _T_118 = rawA_S_sign == 1'h0; // @[DivSqrtRecFN_small.scala 123:49:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109163.4]
  assign normalCase_S_sqrt = _T_112 & _T_118; // @[DivSqrtRecFN_small.scala 123:46:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109164.4]
  assign normalCase_S = io_sqrtOp ? normalCase_S_sqrt : normalCase_S_div; // @[DivSqrtRecFN_small.scala 124:27:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109165.4]
  assign _T_119 = rawB_S_sExp[8]; // @[DivSqrtRecFN_small.scala 128:28:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109166.4]
  assign _T_120 = rawB_S_sExp[7:0]; // @[DivSqrtRecFN_small.scala 128:52:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109167.4]
  assign _T_121 = ~ _T_120; // @[DivSqrtRecFN_small.scala 128:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109168.4]
  assign _T_122 = {_T_119,_T_121}; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109169.4]
  assign _T_123 = $signed(_T_122); // @[DivSqrtRecFN_small.scala 128:71:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109170.4]
  assign _GEN_13 = {{1{_T_123[8]}},_T_123}; // @[DivSqrtRecFN_small.scala 127:21:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109171.4]
  assign sExpQuot_S_div = $signed(rawA_S_sExp) + $signed(_GEN_13); // @[DivSqrtRecFN_small.scala 127:21:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109171.4]
  assign _T_125 = $signed(11'sh1c0) <= $signed(sExpQuot_S_div); // @[DivSqrtRecFN_small.scala 131:50:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109172.4]
  assign _T_127 = sExpQuot_S_div[9:6]; // @[DivSqrtRecFN_small.scala 133:31:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109173.4]
  assign _T_128 = _T_125 ? 4'h6 : _T_127; // @[DivSqrtRecFN_small.scala 131:16:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109174.4]
  assign _T_129 = sExpQuot_S_div[5:0]; // @[DivSqrtRecFN_small.scala 135:27:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109175.4]
  assign _T_130 = {_T_128,_T_129}; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109176.4]
  assign sSatExpQuot_S_div = $signed(_T_130); // @[DivSqrtRecFN_small.scala 136:11:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109177.4]
  assign _T_131 = rawA_S_sExp[0]; // @[DivSqrtRecFN_small.scala 138:48:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109178.4]
  assign _T_133 = _T_131 == 1'h0; // @[DivSqrtRecFN_small.scala 138:35:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109179.4]
  assign evenSqrt_S = io_sqrtOp & _T_133; // @[DivSqrtRecFN_small.scala 138:32:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109180.4]
  assign oddSqrt_S = io_sqrtOp & _T_131; // @[DivSqrtRecFN_small.scala 139:32:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109182.4]
  assign idle = cycleNum == 5'h0; // @[DivSqrtRecFN_small.scala 143:26:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109183.4]
  assign inReady = cycleNum <= 5'h1; // @[DivSqrtRecFN_small.scala 144:29:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109184.4]
  assign entering = inReady & io_inValid; // @[DivSqrtRecFN_small.scala 145:28:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109185.4]
  assign entering_normalCase = entering & normalCase_S; // @[DivSqrtRecFN_small.scala 146:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109186.4]
  assign _T_138 = cycleNum == 5'h3; // @[DivSqrtRecFN_small.scala 148:32:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109187.4]
  assign _T_139 = sigX_Z[25]; // @[DivSqrtRecFN_small.scala 148:54:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109188.4]
  assign skipCycle2 = _T_138 & _T_139; // @[DivSqrtRecFN_small.scala 148:45:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109189.4]
  assign _T_141 = idle == 1'h0; // @[DivSqrtRecFN_small.scala 150:11:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109190.4]
  assign _T_142 = _T_141 | io_inValid; // @[DivSqrtRecFN_small.scala 150:18:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109191.4]
  assign _T_144 = normalCase_S == 1'h0; // @[DivSqrtRecFN_small.scala 152:28:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109193.6]
  assign _T_145 = entering & _T_144; // @[DivSqrtRecFN_small.scala 152:26:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109194.6]
  assign _T_152 = _T_131 ? 5'h18 : 5'h19; // @[DivSqrtRecFN_small.scala 155:24:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109197.6]
  assign _T_154 = io_sqrtOp ? _T_152 : 5'h1a; // @[DivSqrtRecFN_small.scala 154:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109198.6]
  assign _T_156 = entering_normalCase ? _T_154 : 5'h0; // @[DivSqrtRecFN_small.scala 153:16:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109199.6]
  assign _GEN_14 = {{4'd0}, _T_145}; // @[DivSqrtRecFN_small.scala 152:62:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109200.6]
  assign _T_157 = _GEN_14 | _T_156; // @[DivSqrtRecFN_small.scala 152:62:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109200.6]
  assign _T_161 = skipCycle2 == 1'h0; // @[DivSqrtRecFN_small.scala 160:27:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109202.6]
  assign _T_162 = _T_141 & _T_161; // @[DivSqrtRecFN_small.scala 160:24:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109203.6]
  assign _T_164 = cycleNum - 5'h1; // @[DivSqrtRecFN_small.scala 160:50:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109204.6]
  assign _T_165 = $unsigned(_T_164); // @[DivSqrtRecFN_small.scala 160:50:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109205.6]
  assign _T_166 = _T_165[4:0]; // @[DivSqrtRecFN_small.scala 160:50:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109206.6]
  assign _T_168 = _T_162 ? _T_166 : 5'h0; // @[DivSqrtRecFN_small.scala 160:16:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109207.6]
  assign _T_169 = _T_157 | _T_168; // @[DivSqrtRecFN_small.scala 159:15:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109208.6]
  assign _T_172 = _T_141 & skipCycle2; // @[DivSqrtRecFN_small.scala 161:24:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109210.6]
  assign _GEN_15 = {{4'd0}, _T_172}; // @[DivSqrtRecFN_small.scala 160:70:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109212.6]
  assign _T_176 = _T_169 | _GEN_15; // @[DivSqrtRecFN_small.scala 160:70:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109212.6]
  assign _GEN_0 = _T_142 ? _T_176 : cycleNum; // @[DivSqrtRecFN_small.scala 150:33:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109192.4]
  assign _GEN_1 = entering ? io_sqrtOp : sqrtOp_Z; // @[DivSqrtRecFN_small.scala 168:21:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109216.4]
  assign _GEN_2 = entering ? majorExc_S : majorExc_Z; // @[DivSqrtRecFN_small.scala 168:21:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109216.4]
  assign _GEN_3 = entering ? isNaN_S : isNaN_Z; // @[DivSqrtRecFN_small.scala 168:21:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109216.4]
  assign _GEN_4 = entering ? isInf_S : isInf_Z; // @[DivSqrtRecFN_small.scala 168:21:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109216.4]
  assign _GEN_5 = entering ? isZero_S : isZero_Z; // @[DivSqrtRecFN_small.scala 168:21:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109216.4]
  assign _GEN_6 = entering ? sign_S : sign_Z; // @[DivSqrtRecFN_small.scala 168:21:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109216.4]
  assign _T_177 = rawA_S_sExp[9:1]; // @[DivSqrtRecFN_small.scala 179:29:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109225.6]
  assign _T_179 = $signed(_T_177) + $signed(9'sh80); // @[DivSqrtRecFN_small.scala 179:34:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109226.6]
  assign _T_180 = io_sqrtOp ? $signed(_T_179) : $signed(sSatExpQuot_S_div); // @[DivSqrtRecFN_small.scala 178:16:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109227.6]
  assign _GEN_7 = entering_normalCase ? $signed(_T_180) : $signed(sExp_Z); // @[DivSqrtRecFN_small.scala 176:32:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109224.4]
  assign _GEN_8 = entering_normalCase ? io_roundingMode : roundingMode_Z; // @[DivSqrtRecFN_small.scala 176:32:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109224.4]
  assign _T_183 = entering_normalCase & _T_107; // @[DivSqrtRecFN_small.scala 184:31:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109232.4]
  assign _T_184 = rawB_S_sig[22:0]; // @[DivSqrtRecFN_small.scala 185:31:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109234.6]
  assign _GEN_9 = _T_183 ? _T_184 : fractB_Z; // @[DivSqrtRecFN_small.scala 184:47:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109233.4]
  assign _T_186 = oddSqrt_S == 1'h0; // @[DivSqrtRecFN_small.scala 191:24:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109237.4]
  assign _T_187 = inReady & _T_186; // @[DivSqrtRecFN_small.scala 191:21:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109238.4]
  assign _GEN_16 = {{1'd0}, rawA_S_sig}; // @[DivSqrtRecFN_small.scala 191:47:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109239.4]
  assign _T_188 = _GEN_16 << 1; // @[DivSqrtRecFN_small.scala 191:47:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109239.4]
  assign _T_190 = _T_187 ? _T_188 : 26'h0; // @[DivSqrtRecFN_small.scala 191:12:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109240.4]
  assign _T_191 = inReady & oddSqrt_S; // @[DivSqrtRecFN_small.scala 192:21:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109241.4]
  assign _T_192 = rawA_S_sig[23:22]; // @[DivSqrtRecFN_small.scala 193:27:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109242.4]
  assign _T_194 = _T_192 - 2'h1; // @[DivSqrtRecFN_small.scala 193:56:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109243.4]
  assign _T_195 = $unsigned(_T_194); // @[DivSqrtRecFN_small.scala 193:56:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109244.4]
  assign _T_196 = _T_195[1:0]; // @[DivSqrtRecFN_small.scala 193:56:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109245.4]
  assign _T_197 = rawA_S_sig[21:0]; // @[DivSqrtRecFN_small.scala 194:27:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109246.4]
  assign _GEN_17 = {{3'd0}, _T_197}; // @[DivSqrtRecFN_small.scala 194:44:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109247.4]
  assign _T_198 = _GEN_17 << 3; // @[DivSqrtRecFN_small.scala 194:44:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109247.4]
  assign _T_199 = {_T_196,_T_198}; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109248.4]
  assign _T_201 = _T_191 ? _T_199 : 27'h0; // @[DivSqrtRecFN_small.scala 192:12:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109249.4]
  assign _GEN_18 = {{1'd0}, _T_190}; // @[DivSqrtRecFN_small.scala 191:61:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109250.4]
  assign _T_202 = _GEN_18 | _T_201; // @[DivSqrtRecFN_small.scala 191:61:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109250.4]
  assign _T_204 = inReady == 1'h0; // @[DivSqrtRecFN_small.scala 198:13:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109251.4]
  assign _GEN_19 = {{1'd0}, rem_Z}; // @[DivSqrtRecFN_small.scala 198:29:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109252.4]
  assign _T_205 = _GEN_19 << 1; // @[DivSqrtRecFN_small.scala 198:29:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109252.4]
  assign _T_207 = _T_204 ? _T_205 : 27'h0; // @[DivSqrtRecFN_small.scala 198:12:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109253.4]
  assign rem = _T_202 | _T_207; // @[DivSqrtRecFN_small.scala 197:11:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109254.4]
  assign _T_209 = 32'h1 << cycleNum; // @[DivSqrtRecFN_small.scala 199:27:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109255.4]
  assign bitMask = _T_209[31:2]; // @[DivSqrtRecFN_small.scala 199:38:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109256.4]
  assign _T_212 = inReady & _T_107; // @[DivSqrtRecFN_small.scala 201:21:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109258.4]
  assign _GEN_20 = {{1'd0}, rawB_S_sig}; // @[DivSqrtRecFN_small.scala 201:47:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109259.4]
  assign _T_213 = _GEN_20 << 1; // @[DivSqrtRecFN_small.scala 201:47:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109259.4]
  assign _T_215 = _T_212 ? _T_213 : 26'h0; // @[DivSqrtRecFN_small.scala 201:12:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109260.4]
  assign _T_216 = inReady & evenSqrt_S; // @[DivSqrtRecFN_small.scala 202:21:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109261.4]
  assign _T_219 = _T_216 ? 25'h1000000 : 25'h0; // @[DivSqrtRecFN_small.scala 202:12:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109262.4]
  assign _GEN_21 = {{1'd0}, _T_219}; // @[DivSqrtRecFN_small.scala 201:79:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109263.4]
  assign _T_220 = _T_215 | _GEN_21; // @[DivSqrtRecFN_small.scala 201:79:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109263.4]
  assign _T_224 = _T_191 ? 26'h2800000 : 26'h0; // @[DivSqrtRecFN_small.scala 203:12:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109265.4]
  assign _T_225 = _T_220 | _T_224; // @[DivSqrtRecFN_small.scala 202:79:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109266.4]
  assign _T_229 = sqrtOp_Z == 1'h0; // @[DivSqrtRecFN_small.scala 204:26:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109268.4]
  assign _T_230 = _T_204 & _T_229; // @[DivSqrtRecFN_small.scala 204:23:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109269.4]
  assign _T_232 = {1'h1,fractB_Z}; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109270.4]
  assign _GEN_22 = {{1'd0}, _T_232}; // @[DivSqrtRecFN_small.scala 204:63:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109271.4]
  assign _T_233 = _GEN_22 << 1; // @[DivSqrtRecFN_small.scala 204:63:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109271.4]
  assign _T_235 = _T_230 ? _T_233 : 25'h0; // @[DivSqrtRecFN_small.scala 204:12:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109272.4]
  assign _GEN_23 = {{1'd0}, _T_235}; // @[DivSqrtRecFN_small.scala 203:79:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109273.4]
  assign _T_236 = _T_225 | _GEN_23; // @[DivSqrtRecFN_small.scala 203:79:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109273.4]
  assign _T_239 = _T_204 & sqrtOp_Z; // @[DivSqrtRecFN_small.scala 205:23:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109275.4]
  assign _GEN_24 = {{1'd0}, sigX_Z}; // @[DivSqrtRecFN_small.scala 205:44:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109276.4]
  assign _T_240 = _GEN_24 << 1; // @[DivSqrtRecFN_small.scala 205:44:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109276.4]
  assign _GEN_25 = {{3'd0}, _T_240}; // @[DivSqrtRecFN_small.scala 205:48:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109277.4]
  assign _T_241 = _GEN_25 | bitMask; // @[DivSqrtRecFN_small.scala 205:48:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109277.4]
  assign _T_243 = _T_239 ? _T_241 : 30'h0; // @[DivSqrtRecFN_small.scala 205:12:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109278.4]
  assign _GEN_26 = {{4'd0}, _T_236}; // @[DivSqrtRecFN_small.scala 204:79:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109279.4]
  assign trialTerm = _GEN_26 | _T_243; // @[DivSqrtRecFN_small.scala 204:79:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109279.4]
  assign _T_244 = {1'b0,$signed(rem)}; // @[DivSqrtRecFN_small.scala 206:24:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109280.4]
  assign _T_245 = {1'b0,$signed(trialTerm)}; // @[DivSqrtRecFN_small.scala 206:41:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109281.4]
  assign _GEN_27 = {{3{_T_244[27]}},_T_244}; // @[DivSqrtRecFN_small.scala 206:29:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109282.4]
  assign _T_246 = $signed(_GEN_27) - $signed(_T_245); // @[DivSqrtRecFN_small.scala 206:29:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109282.4]
  assign _T_247 = _T_246[30:0]; // @[DivSqrtRecFN_small.scala 206:29:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109283.4]
  assign trialRem = $signed(_T_247); // @[DivSqrtRecFN_small.scala 206:29:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109284.4]
  assign newBit = $signed(31'sh0) <= $signed(trialRem); // @[DivSqrtRecFN_small.scala 207:27:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109285.4]
  assign _T_250 = cycleNum > 5'h2; // @[DivSqrtRecFN_small.scala 209:44:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109286.4]
  assign _T_251 = entering_normalCase | _T_250; // @[DivSqrtRecFN_small.scala 209:31:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109287.4]
  assign _T_252 = $unsigned(trialRem); // @[DivSqrtRecFN_small.scala 210:39:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109289.6]
  assign _T_253 = newBit ? _T_252 : {{4'd0}, rem}; // @[DivSqrtRecFN_small.scala 210:21:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109290.6]
  assign _GEN_10 = _T_251 ? _T_253 : {{5'd0}, rem_Z}; // @[DivSqrtRecFN_small.scala 209:56:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109288.4]
  assign _T_256 = _T_204 & newBit; // @[DivSqrtRecFN_small.scala 212:45:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109294.4]
  assign _T_257 = entering_normalCase | _T_256; // @[DivSqrtRecFN_small.scala 212:31:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109295.4]
  assign _T_259 = $signed(trialRem) != $signed(31'sh0); // @[DivSqrtRecFN_small.scala 213:35:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109297.6]
  assign _GEN_28 = {{25'd0}, newBit}; // @[DivSqrtRecFN_small.scala 215:47:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109301.6]
  assign _T_263 = _GEN_28 << 25; // @[DivSqrtRecFN_small.scala 215:47:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109301.6]
  assign _T_265 = _T_212 ? _T_263 : 26'h0; // @[DivSqrtRecFN_small.scala 215:16:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109302.6]
  assign _T_266 = inReady & io_sqrtOp; // @[DivSqrtRecFN_small.scala 216:25:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109303.6]
  assign _T_269 = _T_266 ? 25'h1000000 : 25'h0; // @[DivSqrtRecFN_small.scala 216:16:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109304.6]
  assign _GEN_29 = {{1'd0}, _T_269}; // @[DivSqrtRecFN_small.scala 215:77:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109305.6]
  assign _T_270 = _T_265 | _GEN_29; // @[DivSqrtRecFN_small.scala 215:77:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109305.6]
  assign _GEN_30 = {{23'd0}, newBit}; // @[DivSqrtRecFN_small.scala 217:47:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109307.6]
  assign _T_272 = _GEN_30 << 23; // @[DivSqrtRecFN_small.scala 217:47:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109307.6]
  assign _T_274 = _T_191 ? _T_272 : 24'h0; // @[DivSqrtRecFN_small.scala 217:16:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109308.6]
  assign _GEN_31 = {{2'd0}, _T_274}; // @[DivSqrtRecFN_small.scala 216:77:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109309.6]
  assign _T_275 = _T_270 | _GEN_31; // @[DivSqrtRecFN_small.scala 216:77:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109309.6]
  assign _GEN_32 = {{4'd0}, sigX_Z}; // @[DivSqrtRecFN_small.scala 218:48:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109311.6]
  assign _T_278 = _GEN_32 | bitMask; // @[DivSqrtRecFN_small.scala 218:48:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109311.6]
  assign _T_280 = _T_204 ? _T_278 : 30'h0; // @[DivSqrtRecFN_small.scala 218:16:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109312.6]
  assign _GEN_33 = {{4'd0}, _T_275}; // @[DivSqrtRecFN_small.scala 217:77:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109313.6]
  assign _T_281 = _GEN_33 | _T_280; // @[DivSqrtRecFN_small.scala 217:77:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109313.6]
  assign _GEN_11 = _T_257 ? _T_259 : notZeroRem_Z; // @[DivSqrtRecFN_small.scala 212:57:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109296.4]
  assign _GEN_12 = _T_257 ? _T_281 : {{4'd0}, sigX_Z}; // @[DivSqrtRecFN_small.scala 212:57:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109296.4]
  assign rawOutValid = cycleNum == 5'h1; // @[DivSqrtRecFN_small.scala 223:33:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109316.4]
  assign _T_285 = rawOutValid & _T_229; // @[DivSqrtRecFN_small.scala 225:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109318.4]
  assign _T_286 = rawOutValid & sqrtOp_Z; // @[DivSqrtRecFN_small.scala 226:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109320.4]
  assign _T_287 = majorExc_Z & isNaN_Z; // @[DivSqrtRecFN_small.scala 228:36:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109323.4]
  assign _T_289 = isNaN_Z == 1'h0; // @[DivSqrtRecFN_small.scala 229:39:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109325.4]
  assign _T_290 = majorExc_Z & _T_289; // @[DivSqrtRecFN_small.scala 229:36:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109326.4]
  assign _GEN_35 = {{26'd0}, notZeroRem_Z}; // @[DivSqrtRecFN_small.scala 235:35:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109334.4]
  assign _T_292 = _T_240 | _GEN_35; // @[DivSqrtRecFN_small.scala 235:35:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109334.4]
  assign io_inReady = inReady;
  assign io_rawOutValid_div = _T_285;
  assign io_rawOutValid_sqrt = _T_286;
  assign io_roundingModeOut = roundingMode_Z;
  assign io_invalidExc = _T_287;
  assign io_infiniteExc = _T_290;
  assign io_rawOut_isNaN = isNaN_Z;
  assign io_rawOut_isInf = isInf_Z;
  assign io_rawOut_isZero = isZero_Z;
  assign io_rawOut_sign = sign_Z;
  assign io_rawOut_sExp = sExp_Z;
  assign io_rawOut_sig = _T_292;
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifndef verilator
      #0.002 begin end
    `endif
  `ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{$random}};
  cycleNum = _RAND_0[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{$random}};
  sqrtOp_Z = _RAND_1[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{$random}};
  majorExc_Z = _RAND_2[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{$random}};
  isNaN_Z = _RAND_3[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{$random}};
  isInf_Z = _RAND_4[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{$random}};
  isZero_Z = _RAND_5[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{$random}};
  sign_Z = _RAND_6[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{$random}};
  sExp_Z = _RAND_7[9:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{$random}};
  fractB_Z = _RAND_8[22:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {1{$random}};
  roundingMode_Z = _RAND_9[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_10 = {1{$random}};
  rem_Z = _RAND_10[25:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_11 = {1{$random}};
  notZeroRem_Z = _RAND_11[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_12 = {1{$random}};
  sigX_Z = _RAND_12[25:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if (reset) begin
      cycleNum <= 5'h0;
    end else begin
      if (_T_142) begin
        cycleNum <= _T_176;
      end
    end
    if (entering) begin
      sqrtOp_Z <= io_sqrtOp;
    end
    if (entering) begin
      if (io_sqrtOp) begin
        majorExc_Z <= _T_83;
      end else begin
        majorExc_Z <= _T_100;
      end
    end
    if (entering) begin
      if (io_sqrtOp) begin
        isNaN_Z <= _T_101;
      end else begin
        isNaN_Z <= _T_103;
      end
    end
    if (entering) begin
      if (io_sqrtOp) begin
        isInf_Z <= rawA_S_isInf;
      end else begin
        isInf_Z <= _T_104;
      end
    end
    if (entering) begin
      if (io_sqrtOp) begin
        isZero_Z <= rawA_S_isZero;
      end else begin
        isZero_Z <= _T_105;
      end
    end
    if (entering) begin
      sign_Z <= sign_S;
    end
    if (entering_normalCase) begin
      if (io_sqrtOp) begin
        sExp_Z <= _T_179;
      end else begin
        sExp_Z <= sSatExpQuot_S_div;
      end
    end
    if (_T_183) begin
      fractB_Z <= _T_184;
    end
    if (entering_normalCase) begin
      roundingMode_Z <= io_roundingMode;
    end
    rem_Z <= _GEN_10[25:0];
    if (_T_257) begin
      notZeroRem_Z <= _T_259;
    end
    sigX_Z <= _GEN_12[25:0];
  end
endmodule
