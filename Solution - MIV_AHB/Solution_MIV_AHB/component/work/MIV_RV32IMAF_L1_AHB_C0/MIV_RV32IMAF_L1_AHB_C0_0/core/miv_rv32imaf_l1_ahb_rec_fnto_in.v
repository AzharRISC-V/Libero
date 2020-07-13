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
module MIV_RV32IMAF_L1_AHB_C0_MIV_RV32IMAF_L1_AHB_C0_0_MIV_RV32IMAF_L1_AHB_REC_FNTO_IN( // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108069.2]
  input  [32:0] io_in, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108072.4]
  input  [2:0]  io_roundingMode, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108072.4]
  input         io_signedOut, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108072.4]
  output [31:0] io_out, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108072.4]
  output [2:0]  io_intExceptionFlags // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108072.4]
);
  wire [8:0] _T_7; // @[rawFloatFromRecFN.scala 50:21:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108077.4]
  wire [2:0] _T_8; // @[rawFloatFromRecFN.scala 51:29:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108078.4]
  wire  rawIn_isZero; // @[rawFloatFromRecFN.scala 51:54:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108079.4]
  wire [1:0] _T_11; // @[rawFloatFromRecFN.scala 52:29:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108080.4]
  wire  _T_13; // @[rawFloatFromRecFN.scala 52:54:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108081.4]
  wire  _T_15; // @[rawFloatFromRecFN.scala 55:41:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108084.4]
  wire  rawIn_isNaN; // @[rawFloatFromRecFN.scala 55:33:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108085.4]
  wire  _T_19; // @[rawFloatFromRecFN.scala 56:36:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108088.4]
  wire  rawIn_isInf; // @[rawFloatFromRecFN.scala 56:33:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108089.4]
  wire  rawIn_sign; // @[rawFloatFromRecFN.scala 58:25:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108092.4]
  wire [9:0] rawIn_sExp; // @[rawFloatFromRecFN.scala 59:27:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108094.4]
  wire  _T_25; // @[rawFloatFromRecFN.scala 60:39:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108096.4]
  wire [22:0] _T_26; // @[rawFloatFromRecFN.scala 60:51:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108097.4]
  wire [1:0] _T_27; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108098.4]
  wire [24:0] rawIn_sig; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108099.4]
  wire  magGeOne; // @[RecFNToIN.scala 58:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108101.4]
  wire [7:0] posExp; // @[RecFNToIN.scala 59:28:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108102.4]
  wire  _T_30; // @[RecFNToIN.scala 60:27:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108103.4]
  wire [7:0] _T_31; // @[RecFNToIN.scala 60:48:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108104.4]
  wire  _T_33; // @[RecFNToIN.scala 60:48:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108105.4]
  wire  magJustBelowOne; // @[RecFNToIN.scala 60:38:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108106.4]
  wire  roundingMode_near_even; // @[RecFNToIN.scala 64:53:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108107.4]
  wire  roundingMode_min; // @[RecFNToIN.scala 67:53:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108111.4]
  wire  roundingMode_max; // @[RecFNToIN.scala 68:53:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108112.4]
  wire  roundingMode_near_maxMag; // @[RecFNToIN.scala 69:53:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108113.4]
  wire [22:0] _T_42; // @[RecFNToIN.scala 80:32:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108114.4]
  wire [23:0] _T_43; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108115.4]
  wire [4:0] _T_44; // @[RecFNToIN.scala 82:27:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108116.4]
  wire [4:0] _T_46; // @[RecFNToIN.scala 81:16:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108117.4]
  wire [54:0] _GEN_0; // @[RecFNToIN.scala 80:50:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108118.4]
  wire [54:0] shiftedSig; // @[RecFNToIN.scala 80:50:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108118.4]
  wire [32:0] _T_47; // @[RecFNToIN.scala 86:23:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108119.4]
  wire [21:0] _T_48; // @[RecFNToIN.scala 86:51:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108120.4]
  wire  _T_50; // @[RecFNToIN.scala 86:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108121.4]
  wire [33:0] alignedSig; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108122.4]
  wire [31:0] unroundedInt; // @[RecFNToIN.scala 87:54:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108123.4]
  wire [1:0] _T_53; // @[RecFNToIN.scala 89:50:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108125.4]
  wire  _T_55; // @[RecFNToIN.scala 89:57:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108126.4]
  wire  common_inexact; // @[RecFNToIN.scala 89:29:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108128.4]
  wire [1:0] _T_58; // @[RecFNToIN.scala 91:39:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108129.4]
  wire [1:0] _T_59; // @[RecFNToIN.scala 91:46:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108130.4]
  wire  _T_61; // @[RecFNToIN.scala 91:46:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108131.4]
  wire [1:0] _T_63; // @[RecFNToIN.scala 91:71:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108133.4]
  wire  _T_65; // @[RecFNToIN.scala 91:71:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108134.4]
  wire  _T_66; // @[RecFNToIN.scala 91:51:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108135.4]
  wire  _T_67; // @[RecFNToIN.scala 91:25:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108136.4]
  wire  _T_71; // @[RecFNToIN.scala 92:26:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108139.4]
  wire  roundIncr_near_even; // @[RecFNToIN.scala 91:78:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108140.4]
  wire  _T_72; // @[RecFNToIN.scala 93:56:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108141.4]
  wire  _T_73; // @[RecFNToIN.scala 93:43:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108142.4]
  wire  roundIncr_near_maxMag; // @[RecFNToIN.scala 93:61:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108143.4]
  wire  _T_74; // @[RecFNToIN.scala 95:35:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108144.4]
  wire  _T_75; // @[RecFNToIN.scala 96:35:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108145.4]
  wire  _T_76; // @[RecFNToIN.scala 95:72:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108146.4]
  wire  _T_77; // @[RecFNToIN.scala 97:52:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108147.4]
  wire  _T_78; // @[RecFNToIN.scala 97:35:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108148.4]
  wire  _T_79; // @[RecFNToIN.scala 96:72:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108149.4]
  wire  _T_81; // @[RecFNToIN.scala 98:39:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108150.4]
  wire  _T_82; // @[RecFNToIN.scala 98:52:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108151.4]
  wire  _T_83; // @[RecFNToIN.scala 98:35:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108152.4]
  wire  roundIncr; // @[RecFNToIN.scala 97:72:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108153.4]
  wire [31:0] _T_84; // @[RecFNToIN.scala 99:45:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108154.4]
  wire [31:0] complUnroundedInt; // @[RecFNToIN.scala 99:32:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108155.4]
  wire  _T_85; // @[RecFNToIN.scala 101:23:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108156.4]
  wire [32:0] _T_87; // @[RecFNToIN.scala 102:31:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108157.4]
  wire [31:0] _T_88; // @[RecFNToIN.scala 102:31:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108158.4]
  wire [31:0] roundedInt; // @[RecFNToIN.scala 101:12:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108159.4]
  wire  magGeOne_atOverflowEdge; // @[RecFNToIN.scala 106:43:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108160.4]
  wire [29:0] _T_90; // @[RecFNToIN.scala 109:38:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108161.4]
  wire [29:0] _T_91; // @[RecFNToIN.scala 109:56:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108162.4]
  wire  _T_93; // @[RecFNToIN.scala 109:56:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108163.4]
  wire  roundCarryBut2; // @[RecFNToIN.scala 109:61:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108164.4]
  wire  _T_95; // @[RecFNToIN.scala 112:21:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108165.4]
  wire [30:0] _T_96; // @[RecFNToIN.scala 116:42:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108166.4]
  wire  _T_98; // @[RecFNToIN.scala 116:60:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108167.4]
  wire  _T_99; // @[RecFNToIN.scala 116:64:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108168.4]
  wire  _T_100; // @[RecFNToIN.scala 115:49:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108169.4]
  wire  _T_102; // @[RecFNToIN.scala 118:38:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108170.4]
  wire  _T_103; // @[RecFNToIN.scala 118:62:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108171.4]
  wire  _T_104; // @[RecFNToIN.scala 117:49:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108172.4]
  wire  _T_105; // @[RecFNToIN.scala 114:24:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108173.4]
  wire  _T_106; // @[RecFNToIN.scala 122:42:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108174.4]
  wire  _T_107; // @[RecFNToIN.scala 121:50:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108175.4]
  wire  _T_108; // @[RecFNToIN.scala 122:57:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108176.4]
  wire  _T_109; // @[RecFNToIN.scala 120:32:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108177.4]
  wire  _T_110; // @[RecFNToIN.scala 113:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108178.4]
  wire  _T_111; // @[RecFNToIN.scala 112:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108179.4]
  wire  _T_113; // @[RecFNToIN.scala 124:13:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108180.4]
  wire  _T_114; // @[RecFNToIN.scala 124:28:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108181.4]
  wire  _T_115; // @[RecFNToIN.scala 124:42:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108182.4]
  wire  common_overflow; // @[RecFNToIN.scala 111:12:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108183.4]
  wire  invalidExc; // @[RecFNToIN.scala 129:34:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108184.4]
  wire  _T_117; // @[RecFNToIN.scala 130:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108185.4]
  wire  overflow; // @[RecFNToIN.scala 130:33:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108186.4]
  wire  _T_121; // @[RecFNToIN.scala 131:36:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108188.4]
  wire  _T_122; // @[RecFNToIN.scala 131:33:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108189.4]
  wire  inexact; // @[RecFNToIN.scala 131:54:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108190.4]
  wire  _T_124; // @[RecFNToIN.scala 133:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108191.4]
  wire  excSign; // @[RecFNToIN.scala 133:33:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108192.4]
  wire  _T_125; // @[RecFNToIN.scala 135:27:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108193.4]
  wire [31:0] _T_128; // @[RecFNToIN.scala 135:12:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108194.4]
  wire  _T_130; // @[RecFNToIN.scala 139:13:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108195.4]
  wire [30:0] _T_133; // @[RecFNToIN.scala 139:12:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108196.4]
  wire [31:0] _GEN_1; // @[RecFNToIN.scala 138:11:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108197.4]
  wire [31:0] excOut; // @[RecFNToIN.scala 138:11:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108197.4]
  wire  _T_134; // @[RecFNToIN.scala 141:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108198.4]
  wire [31:0] _T_135; // @[RecFNToIN.scala 141:18:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108199.4]
  wire [1:0] _T_136; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108201.4]
  wire [2:0] _T_137; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108202.4]
  assign _T_7 = io_in[31:23]; // @[rawFloatFromRecFN.scala 50:21:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108077.4]
  assign _T_8 = _T_7[8:6]; // @[rawFloatFromRecFN.scala 51:29:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108078.4]
  assign rawIn_isZero = _T_8 == 3'h0; // @[rawFloatFromRecFN.scala 51:54:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108079.4]
  assign _T_11 = _T_7[8:7]; // @[rawFloatFromRecFN.scala 52:29:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108080.4]
  assign _T_13 = _T_11 == 2'h3; // @[rawFloatFromRecFN.scala 52:54:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108081.4]
  assign _T_15 = _T_7[6]; // @[rawFloatFromRecFN.scala 55:41:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108084.4]
  assign rawIn_isNaN = _T_13 & _T_15; // @[rawFloatFromRecFN.scala 55:33:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108085.4]
  assign _T_19 = _T_15 == 1'h0; // @[rawFloatFromRecFN.scala 56:36:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108088.4]
  assign rawIn_isInf = _T_13 & _T_19; // @[rawFloatFromRecFN.scala 56:33:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108089.4]
  assign rawIn_sign = io_in[32]; // @[rawFloatFromRecFN.scala 58:25:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108092.4]
  assign rawIn_sExp = {1'b0,$signed(_T_7)}; // @[rawFloatFromRecFN.scala 59:27:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108094.4]
  assign _T_25 = rawIn_isZero == 1'h0; // @[rawFloatFromRecFN.scala 60:39:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108096.4]
  assign _T_26 = io_in[22:0]; // @[rawFloatFromRecFN.scala 60:51:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108097.4]
  assign _T_27 = {1'h0,_T_25}; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108098.4]
  assign rawIn_sig = {_T_27,_T_26}; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108099.4]
  assign magGeOne = rawIn_sExp[8]; // @[RecFNToIN.scala 58:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108101.4]
  assign posExp = rawIn_sExp[7:0]; // @[RecFNToIN.scala 59:28:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108102.4]
  assign _T_30 = magGeOne == 1'h0; // @[RecFNToIN.scala 60:27:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108103.4]
  assign _T_31 = ~ posExp; // @[RecFNToIN.scala 60:48:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108104.4]
  assign _T_33 = _T_31 == 8'h0; // @[RecFNToIN.scala 60:48:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108105.4]
  assign magJustBelowOne = _T_30 & _T_33; // @[RecFNToIN.scala 60:38:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108106.4]
  assign roundingMode_near_even = io_roundingMode == 3'h0; // @[RecFNToIN.scala 64:53:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108107.4]
  assign roundingMode_min = io_roundingMode == 3'h2; // @[RecFNToIN.scala 67:53:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108111.4]
  assign roundingMode_max = io_roundingMode == 3'h3; // @[RecFNToIN.scala 68:53:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108112.4]
  assign roundingMode_near_maxMag = io_roundingMode == 3'h4; // @[RecFNToIN.scala 69:53:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108113.4]
  assign _T_42 = rawIn_sig[22:0]; // @[RecFNToIN.scala 80:32:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108114.4]
  assign _T_43 = {magGeOne,_T_42}; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108115.4]
  assign _T_44 = rawIn_sExp[4:0]; // @[RecFNToIN.scala 82:27:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108116.4]
  assign _T_46 = magGeOne ? _T_44 : 5'h0; // @[RecFNToIN.scala 81:16:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108117.4]
  assign _GEN_0 = {{31'd0}, _T_43}; // @[RecFNToIN.scala 80:50:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108118.4]
  assign shiftedSig = _GEN_0 << _T_46; // @[RecFNToIN.scala 80:50:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108118.4]
  assign _T_47 = shiftedSig[54:22]; // @[RecFNToIN.scala 86:23:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108119.4]
  assign _T_48 = shiftedSig[21:0]; // @[RecFNToIN.scala 86:51:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108120.4]
  assign _T_50 = _T_48 != 22'h0; // @[RecFNToIN.scala 86:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108121.4]
  assign alignedSig = {_T_47,_T_50}; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108122.4]
  assign unroundedInt = alignedSig[33:2]; // @[RecFNToIN.scala 87:54:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108123.4]
  assign _T_53 = alignedSig[1:0]; // @[RecFNToIN.scala 89:50:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108125.4]
  assign _T_55 = _T_53 != 2'h0; // @[RecFNToIN.scala 89:57:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108126.4]
  assign common_inexact = magGeOne ? _T_55 : _T_25; // @[RecFNToIN.scala 89:29:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108128.4]
  assign _T_58 = alignedSig[2:1]; // @[RecFNToIN.scala 91:39:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108129.4]
  assign _T_59 = ~ _T_58; // @[RecFNToIN.scala 91:46:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108130.4]
  assign _T_61 = _T_59 == 2'h0; // @[RecFNToIN.scala 91:46:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108131.4]
  assign _T_63 = ~ _T_53; // @[RecFNToIN.scala 91:71:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108133.4]
  assign _T_65 = _T_63 == 2'h0; // @[RecFNToIN.scala 91:71:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108134.4]
  assign _T_66 = _T_61 | _T_65; // @[RecFNToIN.scala 91:51:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108135.4]
  assign _T_67 = magGeOne & _T_66; // @[RecFNToIN.scala 91:25:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108136.4]
  assign _T_71 = magJustBelowOne & _T_55; // @[RecFNToIN.scala 92:26:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108139.4]
  assign roundIncr_near_even = _T_67 | _T_71; // @[RecFNToIN.scala 91:78:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108140.4]
  assign _T_72 = alignedSig[1]; // @[RecFNToIN.scala 93:56:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108141.4]
  assign _T_73 = magGeOne & _T_72; // @[RecFNToIN.scala 93:43:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108142.4]
  assign roundIncr_near_maxMag = _T_73 | magJustBelowOne; // @[RecFNToIN.scala 93:61:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108143.4]
  assign _T_74 = roundingMode_near_even & roundIncr_near_even; // @[RecFNToIN.scala 95:35:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108144.4]
  assign _T_75 = roundingMode_near_maxMag & roundIncr_near_maxMag; // @[RecFNToIN.scala 96:35:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108145.4]
  assign _T_76 = _T_74 | _T_75; // @[RecFNToIN.scala 95:72:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108146.4]
  assign _T_77 = rawIn_sign & common_inexact; // @[RecFNToIN.scala 97:52:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108147.4]
  assign _T_78 = roundingMode_min & _T_77; // @[RecFNToIN.scala 97:35:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108148.4]
  assign _T_79 = _T_76 | _T_78; // @[RecFNToIN.scala 96:72:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108149.4]
  assign _T_81 = rawIn_sign == 1'h0; // @[RecFNToIN.scala 98:39:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108150.4]
  assign _T_82 = _T_81 & common_inexact; // @[RecFNToIN.scala 98:52:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108151.4]
  assign _T_83 = roundingMode_max & _T_82; // @[RecFNToIN.scala 98:35:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108152.4]
  assign roundIncr = _T_79 | _T_83; // @[RecFNToIN.scala 97:72:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108153.4]
  assign _T_84 = ~ unroundedInt; // @[RecFNToIN.scala 99:45:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108154.4]
  assign complUnroundedInt = rawIn_sign ? _T_84 : unroundedInt; // @[RecFNToIN.scala 99:32:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108155.4]
  assign _T_85 = roundIncr ^ rawIn_sign; // @[RecFNToIN.scala 101:23:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108156.4]
  assign _T_87 = complUnroundedInt + 32'h1; // @[RecFNToIN.scala 102:31:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108157.4]
  assign _T_88 = _T_87[31:0]; // @[RecFNToIN.scala 102:31:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108158.4]
  assign roundedInt = _T_85 ? _T_88 : complUnroundedInt; // @[RecFNToIN.scala 101:12:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108159.4]
  assign magGeOne_atOverflowEdge = posExp == 8'h1f; // @[RecFNToIN.scala 106:43:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108160.4]
  assign _T_90 = unroundedInt[29:0]; // @[RecFNToIN.scala 109:38:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108161.4]
  assign _T_91 = ~ _T_90; // @[RecFNToIN.scala 109:56:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108162.4]
  assign _T_93 = _T_91 == 30'h0; // @[RecFNToIN.scala 109:56:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108163.4]
  assign roundCarryBut2 = _T_93 & roundIncr; // @[RecFNToIN.scala 109:61:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108164.4]
  assign _T_95 = posExp >= 8'h20; // @[RecFNToIN.scala 112:21:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108165.4]
  assign _T_96 = unroundedInt[30:0]; // @[RecFNToIN.scala 116:42:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108166.4]
  assign _T_98 = _T_96 != 31'h0; // @[RecFNToIN.scala 116:60:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108167.4]
  assign _T_99 = _T_98 | roundIncr; // @[RecFNToIN.scala 116:64:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108168.4]
  assign _T_100 = magGeOne_atOverflowEdge & _T_99; // @[RecFNToIN.scala 115:49:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108169.4]
  assign _T_102 = posExp == 8'h1e; // @[RecFNToIN.scala 118:38:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108170.4]
  assign _T_103 = _T_102 & roundCarryBut2; // @[RecFNToIN.scala 118:62:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108171.4]
  assign _T_104 = magGeOne_atOverflowEdge | _T_103; // @[RecFNToIN.scala 117:49:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108172.4]
  assign _T_105 = rawIn_sign ? _T_100 : _T_104; // @[RecFNToIN.scala 114:24:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108173.4]
  assign _T_106 = unroundedInt[30]; // @[RecFNToIN.scala 122:42:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108174.4]
  assign _T_107 = magGeOne_atOverflowEdge & _T_106; // @[RecFNToIN.scala 121:50:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108175.4]
  assign _T_108 = _T_107 & roundCarryBut2; // @[RecFNToIN.scala 122:57:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108176.4]
  assign _T_109 = rawIn_sign | _T_108; // @[RecFNToIN.scala 120:32:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108177.4]
  assign _T_110 = io_signedOut ? _T_105 : _T_109; // @[RecFNToIN.scala 113:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108178.4]
  assign _T_111 = _T_95 | _T_110; // @[RecFNToIN.scala 112:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108179.4]
  assign _T_113 = io_signedOut == 1'h0; // @[RecFNToIN.scala 124:13:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108180.4]
  assign _T_114 = _T_113 & rawIn_sign; // @[RecFNToIN.scala 124:28:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108181.4]
  assign _T_115 = _T_114 & roundIncr; // @[RecFNToIN.scala 124:42:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108182.4]
  assign common_overflow = magGeOne ? _T_111 : _T_115; // @[RecFNToIN.scala 111:12:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108183.4]
  assign invalidExc = rawIn_isNaN | rawIn_isInf; // @[RecFNToIN.scala 129:34:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108184.4]
  assign _T_117 = invalidExc == 1'h0; // @[RecFNToIN.scala 130:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108185.4]
  assign overflow = _T_117 & common_overflow; // @[RecFNToIN.scala 130:33:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108186.4]
  assign _T_121 = common_overflow == 1'h0; // @[RecFNToIN.scala 131:36:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108188.4]
  assign _T_122 = _T_117 & _T_121; // @[RecFNToIN.scala 131:33:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108189.4]
  assign inexact = _T_122 & common_inexact; // @[RecFNToIN.scala 131:54:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108190.4]
  assign _T_124 = rawIn_isNaN == 1'h0; // @[RecFNToIN.scala 133:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108191.4]
  assign excSign = _T_124 & rawIn_sign; // @[RecFNToIN.scala 133:33:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108192.4]
  assign _T_125 = io_signedOut == excSign; // @[RecFNToIN.scala 135:27:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108193.4]
  assign _T_128 = _T_125 ? 32'h80000000 : 32'h0; // @[RecFNToIN.scala 135:12:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108194.4]
  assign _T_130 = excSign == 1'h0; // @[RecFNToIN.scala 139:13:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108195.4]
  assign _T_133 = _T_130 ? 31'h7fffffff : 31'h0; // @[RecFNToIN.scala 139:12:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108196.4]
  assign _GEN_1 = {{1'd0}, _T_133}; // @[RecFNToIN.scala 138:11:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108197.4]
  assign excOut = _T_128 | _GEN_1; // @[RecFNToIN.scala 138:11:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108197.4]
  assign _T_134 = invalidExc | common_overflow; // @[RecFNToIN.scala 141:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108198.4]
  assign _T_135 = _T_134 ? excOut : roundedInt; // @[RecFNToIN.scala 141:18:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108199.4]
  assign _T_136 = {invalidExc,overflow}; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108201.4]
  assign _T_137 = {_T_136,inexact}; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108202.4]
  assign io_out = _T_135;
  assign io_intExceptionFlags = _T_137;
endmodule
